Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BC18343B2CB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Oct 2021 14:59:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6369140449;
	Tue, 26 Oct 2021 12:59:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qTQch5RKiMN5; Tue, 26 Oct 2021 12:59:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5DD1B401C4;
	Tue, 26 Oct 2021 12:59:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 28BC81BF20D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 12:59:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2056F80C24
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 12:59:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LL51c7aZg8Mp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Oct 2021 12:59:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6E42480C06
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 12:59:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10148"; a="290730655"
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="290730655"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 05:59:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="447095746"
Received: from amlin-019-242.igk.intel.com ([10.102.19.242])
 by orsmga003.jf.intel.com with ESMTP; 26 Oct 2021 05:59:05 -0700
From: Michal Maloszewski <michal.maloszewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Oct 2021 12:59:09 +0000
Message-Id: <20211026125909.28459-1-michal.maloszewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] iavf: Fix reporting when setting
 descriptor count
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
Cc: Michal Maloszewski <michal.maloszewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

iavf_set_ringparams doesn't communicate to the user that

1. The user requested descriptor count is out of range. Instead it
   just quietly sets descriptors to the "clamped" value and calls it
   done. This makes it look an invalid value was successfully set as
   the descriptor count when this isn't actually true.

2. The user provided descriptor count needs to be inflated for alignment
   reasons.

This behavior is confusing. The ice driver has already addressed this
by rejecting invalid values for descriptor count and
messaging for alignment adjustments.
Do the same thing here by adding the error and info messages.

Fixes: fbb7ddfef253 ("i40evf: core ethtool functionality")
Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Michal Maloszewski <michal.maloszewski@intel.com>
---
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 43 ++++++++++++++-----
 1 file changed, 32 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 30b125d6f5..9522bce3d9 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -623,23 +623,44 @@ static int iavf_set_ringparam(struct net_device *netdev,
 	if ((ring->rx_mini_pending) || (ring->rx_jumbo_pending))
 		return -EINVAL;
 
-	new_tx_count = clamp_t(u32, ring->tx_pending,
-			       IAVF_MIN_TXD,
-			       IAVF_MAX_TXD);
-	new_tx_count = ALIGN(new_tx_count, IAVF_REQ_DESCRIPTOR_MULTIPLE);
+	if (ring->tx_pending > IAVF_MAX_TXD ||
+	    ring->tx_pending < IAVF_MIN_TXD ||
+	    ring->rx_pending > IAVF_MAX_RXD ||
+	    ring->rx_pending < IAVF_MIN_RXD) {
+		netdev_err(netdev, "Descriptors requested (Tx: %d / Rx: %d) out of range [%d-%d] (increment %d)\n",
+			   ring->tx_pending, ring->rx_pending, IAVF_MIN_TXD,
+			   IAVF_MAX_RXD, IAVF_REQ_DESCRIPTOR_MULTIPLE);
+		return -EINVAL;
+	}
 
-	new_rx_count = clamp_t(u32, ring->rx_pending,
-			       IAVF_MIN_RXD,
-			       IAVF_MAX_RXD);
-	new_rx_count = ALIGN(new_rx_count, IAVF_REQ_DESCRIPTOR_MULTIPLE);
+	new_tx_count = ALIGN(ring->tx_pending, IAVF_REQ_DESCRIPTOR_MULTIPLE);
+	if (new_tx_count != ring->tx_pending)
+		netdev_info(netdev, "Requested Tx descriptor count rounded up to %d\n",
+			    new_tx_count);
+
+	new_rx_count = ALIGN(ring->rx_pending, IAVF_REQ_DESCRIPTOR_MULTIPLE);
+	if (new_rx_count != ring->rx_pending)
+		netdev_info(netdev, "Requested Rx descriptor count rounded up to %d\n",
+			    new_rx_count);
 
 	/* if nothing to do return success */
 	if ((new_tx_count == adapter->tx_desc_count) &&
-	    (new_rx_count == adapter->rx_desc_count))
+	    (new_rx_count == adapter->rx_desc_count)) {
+		netdev_dbg(netdev, "Nothing to change, descriptor count is same as requested\n");
 		return 0;
+	}
 
-	adapter->tx_desc_count = new_tx_count;
-	adapter->rx_desc_count = new_rx_count;
+	if (new_tx_count != adapter->tx_desc_count) {
+		netdev_info(netdev, "Changing Tx descriptor count from %d to %d\n",
+			    adapter->tx_desc_count, new_tx_count);
+		adapter->tx_desc_count = new_tx_count;
+	}
+
+	if (new_rx_count != adapter->rx_desc_count) {
+		netdev_info(netdev, "Changing Rx descriptor count from %d to %d\n",
+			    adapter->rx_desc_count, new_rx_count);
+		adapter->rx_desc_count = new_rx_count;
+	}
 
 	if (netif_running(netdev)) {
 		adapter->flags |= IAVF_FLAG_RESET_NEEDED;
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
