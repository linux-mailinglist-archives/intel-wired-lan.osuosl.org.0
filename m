Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FE9F54B1
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Nov 2019 20:58:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DD74522658;
	Fri,  8 Nov 2019 19:58:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AA7rDDvlqSzz; Fri,  8 Nov 2019 19:58:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 03BC423543;
	Fri,  8 Nov 2019 19:58:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B43201BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 19:58:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9AD7B22658
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 19:58:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XtyjQVH8oV6x for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Nov 2019 19:58:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 1B64323509
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 19:58:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 11:58:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,283,1569308400"; d="scan'208";a="354188895"
Received: from unknown (HELO VM.ch.intel.com) ([10.78.3.78])
 by orsmga004.jf.intel.com with ESMTP; 08 Nov 2019 11:58:17 -0800
From: Magnus Karlsson <magnus.karlsson@intel.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com,
 intel-wired-lan@lists.osuosl.org
Date: Fri,  8 Nov 2019 20:58:10 +0100
Message-Id: <1573243090-2721-2-git-send-email-magnus.karlsson@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573243090-2721-1-git-send-email-magnus.karlsson@intel.com>
References: <1573243090-2721-1-git-send-email-magnus.karlsson@intel.com>
Subject: [Intel-wired-lan] [PATCH net 2/2] ixgbe: need_wakeup flag might not
 be set for Tx
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: maciejromanfijalkowski@gmail.com, maciej.fijalkowski@intel.com,
 netdev@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The need_wakeup flag for Tx might not be set for AF_XDP sockets that
are only used to send packets. This happens if there is at least one
outstanding packet that has not been completed by the hardware and we
get that corresponding completion (which will not generate an
interrupt since interrupts are disabled in the napi poll loop) between
the time we stopped processing the Tx completions and interrupts are
enabled again. In this case, the need_wakeup flag will have been
cleared at the end of the Tx completion processing as we believe we
will get an interrupt from the outstanding completion at a later point
in time. But if this completion interrupt occurs before interrupts
are enable, we lose it and should at that point really have set the
need_wakeup flag since there are no more outstanding completions that
can generate an interrupt to continue the processing. When this
happens, user space will see a Tx queue need_wakeup of 0 and skip
issuing a syscall, which means will never get into the Tx processing
again and we have a deadlock.

This patch introduces a quick fix for this issue by just setting the
need_wakeup flag for Tx to 1 all the time. I am working on a proper
fix for this that will toggle the flag appropriately, but it is more
challenging than I anticipated and I am afraid that this patch will
not be completed before the merge window closes, therefore this easier
fix for now. This fix has a negative performance impact in the range
of 0% to 4%. Towards the higher end of the scale if you have driver
and application on the same core and issue a lot of packets, and
towards no negative impact if you use two cores, lower transmission
speeds and/or a workload that also receives packets.

Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
index 100ac89..d6feaac 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -622,8 +622,6 @@ static bool ixgbe_xmit_zc(struct ixgbe_ring *xdp_ring, unsigned int budget)
 	if (tx_desc) {
 		ixgbe_xdp_ring_update_tail(xdp_ring);
 		xsk_umem_consume_tx_done(xdp_ring->xsk_umem);
-		if (xsk_umem_uses_need_wakeup(xdp_ring->xsk_umem))
-			xsk_clear_tx_need_wakeup(xdp_ring->xsk_umem);
 	}
 
 	return !!budget && work_done;
@@ -691,12 +689,8 @@ bool ixgbe_clean_xdp_tx_irq(struct ixgbe_q_vector *q_vector,
 	if (xsk_frames)
 		xsk_umem_complete_tx(umem, xsk_frames);
 
-	if (xsk_umem_uses_need_wakeup(tx_ring->xsk_umem)) {
-		if (tx_ring->next_to_clean == tx_ring->next_to_use)
-			xsk_set_tx_need_wakeup(tx_ring->xsk_umem);
-		else
-			xsk_clear_tx_need_wakeup(tx_ring->xsk_umem);
-	}
+	if (xsk_umem_uses_need_wakeup(tx_ring->xsk_umem))
+		xsk_set_tx_need_wakeup(tx_ring->xsk_umem);
 
 	return ixgbe_xmit_zc(tx_ring, q_vector->tx.work_limit);
 }
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
