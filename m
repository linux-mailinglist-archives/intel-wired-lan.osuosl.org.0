Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD2C44F063
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Nov 2021 02:06:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A5602827D9;
	Sat, 13 Nov 2021 01:06:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jrZtjzCXSbHL; Sat, 13 Nov 2021 01:06:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9315D827C6;
	Sat, 13 Nov 2021 01:06:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3437F1BF38C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Nov 2021 01:06:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2FB484062C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Nov 2021 01:06:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sPRzRX3rVp9z for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Nov 2021 01:06:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6F17D4062B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Nov 2021 01:06:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10166"; a="319435423"
X-IronPort-AV: E=Sophos;i="5.87,230,1631602800"; d="scan'208";a="319435423"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2021 17:06:12 -0800
X-IronPort-AV: E=Sophos;i="5.87,230,1631602800"; d="scan'208";a="670844026"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2021 17:06:12 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Nov 2021 17:06:02 -0800
Message-Id: <20211113010602.795866-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v3] ice: safer stats processing
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

The driver was zeroing live stats that could be fetched by
ndo_get_stats64 at any time. This could result in inconsistent
statistics, and the telltale sign was when reading stats frequently from
/proc/net/dev, the stats would go backwards.

Fix by collecting stats into a local, and delaying when we write to the
structure so it's not incremental.

Fixes: fcea6f3da546 ("ice: Add stats and ethtool support")
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
v3: change to use GFP_ATOMIC to prevent BUG due to sleeping alloc
v2: changed to use kzalloc instead of stack variable
---
 drivers/net/ethernet/intel/ice/ice_main.c | 31 +++++++++++++++--------
 1 file changed, 20 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index d97385205485..0864638b6133 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5924,14 +5924,15 @@ ice_fetch_u64_stats_per_ring(struct u64_stats_sync *syncp, struct ice_q_stats st
 /**
  * ice_update_vsi_tx_ring_stats - Update VSI Tx ring stats counters
  * @vsi: the VSI to be updated
+ * @vsi_stats: the stats struct to be updated
  * @rings: rings to work on
  * @count: number of rings
  */
 static void
-ice_update_vsi_tx_ring_stats(struct ice_vsi *vsi, struct ice_tx_ring **rings,
-			     u16 count)
+ice_update_vsi_tx_ring_stats(struct ice_vsi *vsi,
+			     struct rtnl_link_stats64 *vsi_stats,
+			     struct ice_tx_ring **rings, u16 count)
 {
-	struct rtnl_link_stats64 *vsi_stats = &vsi->net_stats;
 	u16 i;
 
 	for (i = 0; i < count; i++) {
@@ -5943,6 +5944,7 @@ ice_update_vsi_tx_ring_stats(struct ice_vsi *vsi, struct ice_tx_ring **rings,
 			ice_fetch_u64_stats_per_ring(&ring->syncp, ring->stats, &pkts, &bytes);
 		vsi_stats->tx_packets += pkts;
 		vsi_stats->tx_bytes += bytes;
+
 		vsi->tx_restart += ring->tx_stats.restart_q;
 		vsi->tx_busy += ring->tx_stats.tx_busy;
 		vsi->tx_linearize += ring->tx_stats.tx_linearize;
@@ -5955,15 +5957,13 @@ ice_update_vsi_tx_ring_stats(struct ice_vsi *vsi, struct ice_tx_ring **rings,
  */
 static void ice_update_vsi_ring_stats(struct ice_vsi *vsi)
 {
-	struct rtnl_link_stats64 *vsi_stats = &vsi->net_stats;
+	struct rtnl_link_stats64 *vsi_stats;
 	u64 pkts, bytes;
 	int i;
 
-	/* reset netdev stats */
-	vsi_stats->tx_packets = 0;
-	vsi_stats->tx_bytes = 0;
-	vsi_stats->rx_packets = 0;
-	vsi_stats->rx_bytes = 0;
+	vsi_stats = kzalloc(sizeof(*vsi_stats), GFP_ATOMIC);
+	if (!vsi_stats)
+		return;
 
 	/* reset non-netdev (extended) stats */
 	vsi->tx_restart = 0;
@@ -5975,7 +5975,8 @@ static void ice_update_vsi_ring_stats(struct ice_vsi *vsi)
 	rcu_read_lock();
 
 	/* update Tx rings counters */
-	ice_update_vsi_tx_ring_stats(vsi, vsi->tx_rings, vsi->num_txq);
+	ice_update_vsi_tx_ring_stats(vsi, vsi_stats, vsi->tx_rings,
+				     vsi->num_txq);
 
 	/* update Rx rings counters */
 	ice_for_each_rxq(vsi, i) {
@@ -5990,10 +5991,17 @@ static void ice_update_vsi_ring_stats(struct ice_vsi *vsi)
 
 	/* update XDP Tx rings counters */
 	if (ice_is_xdp_ena_vsi(vsi))
-		ice_update_vsi_tx_ring_stats(vsi, vsi->xdp_rings,
+		ice_update_vsi_tx_ring_stats(vsi, vsi_stats, vsi->xdp_rings,
 					     vsi->num_xdp_txq);
 
 	rcu_read_unlock();
+
+	vsi->net_stats.tx_packets = vsi_stats->tx_packets;
+	vsi->net_stats.tx_bytes = vsi_stats->tx_bytes;
+	vsi->net_stats.rx_packets = vsi_stats->rx_packets;
+	vsi->net_stats.rx_bytes = vsi_stats->rx_bytes;
+
+	kfree(vsi_stats);
 }
 
 /**
@@ -6213,6 +6221,7 @@ void ice_get_stats64(struct net_device *netdev, struct rtnl_link_stats64 *stats)
 	 */
 	if (!test_bit(ICE_VSI_DOWN, vsi->state))
 		ice_update_vsi_ring_stats(vsi);
+
 	stats->tx_packets = vsi_stats->tx_packets;
 	stats->tx_bytes = vsi_stats->tx_bytes;
 	stats->rx_packets = vsi_stats->rx_packets;
-- 
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
