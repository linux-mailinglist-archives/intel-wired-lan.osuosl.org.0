Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1A521E1C5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2020 22:57:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1B85023735;
	Mon, 13 Jul 2020 20:57:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8lEwo3rK0AL9; Mon, 13 Jul 2020 20:57:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B2E5527D27;
	Mon, 13 Jul 2020 20:57:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9FDA01BF976
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 95BD8876C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h2K20Ou_PZYO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jul 2020 20:57:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C33928773D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:10 +0000 (UTC)
IronPort-SDR: rhZvACvM6Hy7gv2oUALZHhTwDn7rPHJ/9CHa/QMpOwtgjD+rO/QSxBtVwWYIvSDWzj6c1NI2xJ
 lC0f+xEBNk6Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="213545916"
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="213545916"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2020 13:57:08 -0700
IronPort-SDR: ZsJDwxhREYf5BDyrneWRio3hvIPJ4qJ2Oj90OOMmn2nhH6ixrAA9UVKdPjwUs4V5d6aNWQLMyU
 k1+7zfS/Wy8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="285526691"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga006.jf.intel.com with ESMTP; 13 Jul 2020 13:57:08 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Jul 2020 13:53:13 -0700
Message-Id: <20200713205318.32425-10-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
References: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S50 10/15] ice: need_wakeup flag might not
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>

This is a port of i40e commit 705639572e8c ("i40e: need_wakeup flag might
not be set for Tx").

Quoting the original commit message:

"The need_wakeup flag for Tx might not be set for AF_XDP sockets that
are only used to send packets. This happens if there is at least one
outstanding packet that has not been completed by the hardware and we
get that corresponding completion (which will not generate an interrupt
since interrupts are disabled in the napi poll loop) between the time we
stopped processing the Tx completions and interrupts are enabled again.
In this case, the need_wakeup flag will have been cleared at the end of
the Tx completion processing as we believe we will get an interrupt from
the outstanding completion at a later point in time. But if this
completion interrupt occurs before interrupts are enable, we lose it and
should at that point really have set the need_wakeup flag since there
are no more outstanding completions that can generate an interrupt to
continue the processing. When this happens, user space will see a Tx
queue need_wakeup of 0 and skip issuing a syscall, which means will
never get into the Tx processing again and we have a deadlock."

As a result, packet processing stops. This patch introduces a fix for
this issue, by always setting the need_wakeup flag at the end of an
interrupt processing. This ensures that the deadlock will not happen.

Signed-off-by: Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 6badfd62dc63..87862918bc7a 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -706,8 +706,6 @@ static bool ice_xmit_zc(struct ice_ring *xdp_ring, int budget)
 	if (tx_desc) {
 		ice_xdp_ring_update_tail(xdp_ring);
 		xsk_umem_consume_tx_done(xdp_ring->xsk_umem);
-		if (xsk_umem_uses_need_wakeup(xdp_ring->xsk_umem))
-			xsk_clear_tx_need_wakeup(xdp_ring->xsk_umem);
 	}
 
 	return budget > 0 && work_done;
@@ -783,12 +781,8 @@ bool ice_clean_tx_irq_zc(struct ice_ring *xdp_ring, int budget)
 	if (xsk_frames)
 		xsk_umem_complete_tx(xdp_ring->xsk_umem, xsk_frames);
 
-	if (xsk_umem_uses_need_wakeup(xdp_ring->xsk_umem)) {
-		if (xdp_ring->next_to_clean == xdp_ring->next_to_use)
-			xsk_set_tx_need_wakeup(xdp_ring->xsk_umem);
-		else
-			xsk_clear_tx_need_wakeup(xdp_ring->xsk_umem);
-	}
+	if (xsk_umem_uses_need_wakeup(xdp_ring->xsk_umem))
+		xsk_set_tx_need_wakeup(xdp_ring->xsk_umem);
 
 	ice_update_tx_ring_stats(xdp_ring, total_packets, total_bytes);
 	xmit_done = ice_xmit_zc(xdp_ring, ICE_DFLT_IRQ_WORK);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
