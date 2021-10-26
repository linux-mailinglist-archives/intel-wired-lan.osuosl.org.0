Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2479F43A921
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Oct 2021 02:08:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8004F608A7;
	Tue, 26 Oct 2021 00:08:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7DusqxFD0jJ4; Tue, 26 Oct 2021 00:08:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 824266084F;
	Tue, 26 Oct 2021 00:08:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 33A7E1BF25F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 00:08:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 130D840247
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 00:08:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fDpV2N-uJcVc for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Oct 2021 00:08:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 557994028F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 00:08:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10148"; a="253323614"
X-IronPort-AV: E=Sophos;i="5.87,181,1631602800"; d="scan'208";a="253323614"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2021 17:08:37 -0700
X-IronPort-AV: E=Sophos;i="5.87,181,1631602800"; d="scan'208";a="485915398"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2021 17:08:36 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 25 Oct 2021 17:08:26 -0700
Message-Id: <20211026000826.156803-5-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211026000826.156803-1-jesse.brandeburg@intel.com>
References: <20211026000826.156803-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 4/4] ice: use modern kernel
 API for kick
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

The kernel gained a new interface for drivers to use to combine tail
bump (doorbell) and BQL updates, attempt to use those new interfaces.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index de9247d45c39..3987a0dd0e11 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1576,6 +1576,7 @@ ice_tx_map(struct ice_tx_ring *tx_ring, struct ice_tx_buf *first,
 	struct sk_buff *skb;
 	skb_frag_t *frag;
 	dma_addr_t dma;
+	bool kick;
 
 	td_tag = off->td_l2tag1;
 	td_cmd = off->td_cmd;
@@ -1657,9 +1658,6 @@ ice_tx_map(struct ice_tx_ring *tx_ring, struct ice_tx_buf *first,
 		tx_buf = &tx_ring->tx_buf[i];
 	}
 
-	/* record bytecount for BQL */
-	netdev_tx_sent_queue(txring_txq(tx_ring), first->bytecount);
-
 	/* record SW timestamp if HW timestamp is not available */
 	skb_tx_timestamp(first->skb);
 
@@ -1688,7 +1686,10 @@ ice_tx_map(struct ice_tx_ring *tx_ring, struct ice_tx_buf *first,
 	ice_maybe_stop_tx(tx_ring, DESC_NEEDED);
 
 	/* notify HW of packet */
-	if (netif_xmit_stopped(txring_txq(tx_ring)) || !netdev_xmit_more())
+	kick = __netdev_tx_sent_queue(txring_txq(tx_ring), first->bytecount,
+				      netdev_xmit_more());
+	if (kick)
+		/* notify HW of packet */
 		writel(i, tx_ring->tail);
 
 	return;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
