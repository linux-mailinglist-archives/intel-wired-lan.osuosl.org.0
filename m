Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A18EE6D7
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2019 19:01:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EC376203ED;
	Mon,  4 Nov 2019 18:01:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3Ur+C5Lj6B2t; Mon,  4 Nov 2019 18:01:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8FDF420426;
	Mon,  4 Nov 2019 18:01:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4B99A1BF97D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2019 18:01:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 41A548A9EC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2019 18:01:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KOkbgfyz6kyL for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2019 18:01:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6709E8A9EA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2019 18:01:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Nov 2019 10:01:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,267,1569308400"; d="scan'208";a="200098400"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga008.fm.intel.com with ESMTP; 04 Nov 2019 10:01:25 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 Nov 2019 01:30:58 -0800
Message-Id: <20191104093108.21542-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191104093108.21542-1-anthony.l.nguyen@intel.com>
References: <20191104093108.21542-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S32 v2 05/15] ice: Fix to change Rx/Tx
 ring descriptor size via ethtool with DCBx
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

From: Usha Ketineni <usha.k.ketineni@intel.com>

This patch fixes the call trace caused by the kernel when the Rx/Tx
descriptor size change request is initiated via ethtool when DCB is
configured. ice_set_ringparam() should use vsi->num_txq instead of
vsi->alloc_txq as it represents the queues that are enabled in the
driver when DCB is enabled/disabled. Otherwise, queue index being
used can go out of range.

For example, when vsi->alloc_txq has 104 queues and with 3 TCS enabled
via DCB, each TC gets 34 queues, vsi->num_txq will be 102 and only 102
queues will be enabled.

Signed-off-by: Usha Ketineni <usha.k.ketineni@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 67d884e27ea4..3b9d33ad23d8 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -2743,14 +2743,14 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring)
 	netdev_info(netdev, "Changing Tx descriptor count from %d to %d\n",
 		    vsi->tx_rings[0]->count, new_tx_cnt);
 
-	tx_rings = devm_kcalloc(&pf->pdev->dev, vsi->alloc_txq,
+	tx_rings = devm_kcalloc(&pf->pdev->dev, vsi->num_txq,
 				sizeof(*tx_rings), GFP_KERNEL);
 	if (!tx_rings) {
 		err = -ENOMEM;
 		goto done;
 	}
 
-	for (i = 0; i < vsi->alloc_txq; i++) {
+	ice_for_each_txq(vsi, i) {
 		/* clone ring and setup updated count */
 		tx_rings[i] = *vsi->tx_rings[i];
 		tx_rings[i].count = new_tx_cnt;
@@ -2803,14 +2803,14 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring)
 	netdev_info(netdev, "Changing Rx descriptor count from %d to %d\n",
 		    vsi->rx_rings[0]->count, new_rx_cnt);
 
-	rx_rings = devm_kcalloc(&pf->pdev->dev, vsi->alloc_rxq,
+	rx_rings = devm_kcalloc(&pf->pdev->dev, vsi->num_rxq,
 				sizeof(*rx_rings), GFP_KERNEL);
 	if (!rx_rings) {
 		err = -ENOMEM;
 		goto done;
 	}
 
-	for (i = 0; i < vsi->alloc_rxq; i++) {
+	ice_for_each_rxq(vsi, i) {
 		/* clone ring and setup updated count */
 		rx_rings[i] = *vsi->rx_rings[i];
 		rx_rings[i].count = new_rx_cnt;
@@ -2848,7 +2848,7 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring)
 		ice_down(vsi);
 
 		if (tx_rings) {
-			for (i = 0; i < vsi->alloc_txq; i++) {
+			ice_for_each_txq(vsi, i) {
 				ice_free_tx_ring(vsi->tx_rings[i]);
 				*vsi->tx_rings[i] = tx_rings[i];
 			}
@@ -2856,7 +2856,7 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring)
 		}
 
 		if (rx_rings) {
-			for (i = 0; i < vsi->alloc_rxq; i++) {
+			ice_for_each_rxq(vsi, i) {
 				ice_free_rx_ring(vsi->rx_rings[i]);
 				/* copy the real tail offset */
 				rx_rings[i].tail = vsi->rx_rings[i]->tail;
@@ -2890,7 +2890,7 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring)
 free_tx:
 	/* error cleanup if the Rx allocations failed after getting Tx */
 	if (tx_rings) {
-		for (i = 0; i < vsi->alloc_txq; i++)
+		ice_for_each_txq(vsi, i)
 			ice_free_tx_ring(&tx_rings[i]);
 		devm_kfree(&pf->pdev->dev, tx_rings);
 	}
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
