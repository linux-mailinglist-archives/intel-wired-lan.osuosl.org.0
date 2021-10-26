Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4BF43A920
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Oct 2021 02:08:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 539914024A;
	Tue, 26 Oct 2021 00:08:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9lPASwGZ2h84; Tue, 26 Oct 2021 00:08:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4FC3740247;
	Tue, 26 Oct 2021 00:08:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 234171BF25F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 00:08:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 13E1140235
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 00:08:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NikH_EOIyai8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Oct 2021 00:08:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2E94940247
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 00:08:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10148"; a="253323611"
X-IronPort-AV: E=Sophos;i="5.87,181,1631602800"; d="scan'208";a="253323611"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2021 17:08:36 -0700
X-IronPort-AV: E=Sophos;i="5.87,181,1631602800"; d="scan'208";a="485915392"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2021 17:08:36 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 25 Oct 2021 17:08:23 -0700
Message-Id: <20211026000826.156803-2-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211026000826.156803-1-jesse.brandeburg@intel.com>
References: <20211026000826.156803-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 1/4] ice: update to newer
 kernel API
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

Use the netif_tx_* API from netdevice.h which has simpler parameters.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
Testing Hints: test transmit performance and queue
start/stop tests which increment tx_restart counter.
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index bc3ba19dc88f..12a2edd13877 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -304,8 +304,10 @@ static bool ice_clean_tx_irq(struct ice_tx_ring *tx_ring, int napi_budget)
 
 	ice_update_tx_ring_stats(tx_ring, total_pkts, total_bytes);
 
-	netdev_tx_completed_queue(txring_txq(tx_ring), total_pkts,
-				  total_bytes);
+	if (ice_ring_is_xdp(tx_ring))
+		return !!budget;
+
+	netdev_tx_completed_queue(txring_txq(tx_ring), total_pkts, total_bytes);
 
 #define TX_WAKE_THRESHOLD ((s16)(DESC_NEEDED * 2))
 	if (unlikely(total_pkts && netif_carrier_ok(tx_ring->netdev) &&
@@ -314,11 +316,9 @@ static bool ice_clean_tx_irq(struct ice_tx_ring *tx_ring, int napi_budget)
 		 * sees the new next_to_clean.
 		 */
 		smp_mb();
-		if (__netif_subqueue_stopped(tx_ring->netdev,
-					     tx_ring->q_index) &&
+		if (netif_tx_queue_stopped(txring_txq(tx_ring)) &&
 		    !test_bit(ICE_VSI_DOWN, vsi->state)) {
-			netif_wake_subqueue(tx_ring->netdev,
-					    tx_ring->q_index);
+			netif_tx_wake_queue(txring_txq(tx_ring));
 			++tx_ring->tx_stats.restart_q;
 		}
 	}
@@ -1517,7 +1517,7 @@ int ice_napi_poll(struct napi_struct *napi, int budget)
  */
 static int __ice_maybe_stop_tx(struct ice_tx_ring *tx_ring, unsigned int size)
 {
-	netif_stop_subqueue(tx_ring->netdev, tx_ring->q_index);
+	netif_tx_stop_queue(txring_txq(tx_ring));
 	/* Memory barrier before checking head and tail */
 	smp_mb();
 
@@ -1525,8 +1525,8 @@ static int __ice_maybe_stop_tx(struct ice_tx_ring *tx_ring, unsigned int size)
 	if (likely(ICE_DESC_UNUSED(tx_ring) < size))
 		return -EBUSY;
 
-	/* A reprieve! - use start_subqueue because it doesn't call schedule */
-	netif_start_subqueue(tx_ring->netdev, tx_ring->q_index);
+	/* A reprieve! - use start_queue because it doesn't call schedule */
+	netif_tx_start_queue(txring_txq(tx_ring));
 	++tx_ring->tx_stats.restart_q;
 	return 0;
 }
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
