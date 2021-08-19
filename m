Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D8F3F1902
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Aug 2021 14:16:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ED9F6407D7;
	Thu, 19 Aug 2021 12:16:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O5exvWTXkmrL; Thu, 19 Aug 2021 12:16:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C5A2407CA;
	Thu, 19 Aug 2021 12:16:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DC8E11BF280
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 12:15:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D8EC7606EF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 12:15:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WatHn0WIO0QH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Aug 2021 12:15:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 00A7A606C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 12:15:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="280275762"
X-IronPort-AV: E=Sophos;i="5.84,334,1620716400"; d="scan'208";a="280275762"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 05:15:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,334,1620716400"; d="scan'208";a="532195271"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga002.fm.intel.com with ESMTP; 19 Aug 2021 05:15:39 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 19 Aug 2021 14:00:04 +0200
Message-Id: <20210819120004.34392-10-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210819120004.34392-1-maciej.fijalkowski@intel.com>
References: <20210819120004.34392-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v7 intel-next 9/9] ice: make use of
 ice_for_each_* macros
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
Cc: joamaki@gmail.com, alexandr.lobakin@intel.com, netdev@vger.kernel.org,
 toke@redhat.com, bjorn@kernel.org, kuba@kernel.org, bpf@vger.kernel.org,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Go through the code base and use ice_for_each_* macros.  While at it,
introduce ice_for_each_xdp_txq() macro that can be used for looping over
xdp_rings array.

Commit is not introducing any new functionality.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |  5 ++++-
 drivers/net/ethernet/intel/ice/ice_arfs.c    |  2 +-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c |  4 ++--
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 10 ++++-----
 drivers/net/ethernet/intel/ice/ice_lib.c     | 22 ++++++++++----------
 drivers/net/ethernet/intel/ice/ice_main.c    | 14 ++++++-------
 6 files changed, 30 insertions(+), 27 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 7a489381dbe2..62d00c82cf2d 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -125,10 +125,13 @@
 #define ice_for_each_vsi(pf, i) \
 	for ((i) = 0; (i) < (pf)->num_alloc_vsi; (i)++)
 
-/* Macros for each Tx/Rx ring in a VSI */
+/* Macros for each Tx/Xdp/Rx ring in a VSI */
 #define ice_for_each_txq(vsi, i) \
 	for ((i) = 0; (i) < (vsi)->num_txq; (i)++)
 
+#define ice_for_each_xdp_txq(vsi, i) \
+	for ((i) = 0; (i) < (vsi)->num_xdp_txq; (i)++)
+
 #define ice_for_each_rxq(vsi, i) \
 	for ((i) = 0; (i) < (vsi)->num_rxq; (i)++)
 
diff --git a/drivers/net/ethernet/intel/ice/ice_arfs.c b/drivers/net/ethernet/intel/ice/ice_arfs.c
index 88d98c9e5f91..87f630b73b2b 100644
--- a/drivers/net/ethernet/intel/ice/ice_arfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_arfs.c
@@ -614,7 +614,7 @@ int ice_set_cpu_rx_rmap(struct ice_vsi *vsi)
 		return -EINVAL;
 
 	base_idx = vsi->base_vector;
-	for (i = 0; i < vsi->num_q_vectors; i++)
+	ice_for_each_q_vector(vsi, i)
 		if (irq_cpu_rmap_add(netdev->rx_cpu_rmap,
 				     pf->msix_entries[base_idx + i].vector)) {
 			ice_free_cpu_rx_rmap(vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 4366626e0eb4..4284526e9e24 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -201,11 +201,11 @@ void ice_vsi_cfg_dcb_rings(struct ice_vsi *vsi)
 
 	if (!test_bit(ICE_FLAG_DCB_ENA, vsi->back->flags)) {
 		/* Reset the TC information */
-		for (i = 0; i < vsi->num_txq; i++) {
+		ice_for_each_txq(vsi, i) {
 			tx_ring = vsi->tx_rings[i];
 			tx_ring->dcb_tc = 0;
 		}
-		for (i = 0; i < vsi->num_rxq; i++) {
+		ice_for_each_rxq(vsi, i) {
 			rx_ring = vsi->rx_rings[i];
 			rx_ring->dcb_tc = 0;
 		}
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 746e0faf5501..cf6b1fbef584 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -2756,12 +2756,12 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring)
 
 	/* set for the next time the netdev is started */
 	if (!netif_running(vsi->netdev)) {
-		for (i = 0; i < vsi->alloc_txq; i++)
+		ice_for_each_alloc_txq(vsi, i)
 			vsi->tx_rings[i]->count = new_tx_cnt;
-		for (i = 0; i < vsi->alloc_rxq; i++)
+		ice_for_each_alloc_rxq(vsi, i)
 			vsi->rx_rings[i]->count = new_rx_cnt;
 		if (ice_is_xdp_ena_vsi(vsi))
-			for (i = 0; i < vsi->num_xdp_txq; i++)
+			ice_for_each_xdp_txq(vsi, i)
 				vsi->xdp_rings[i]->count = new_tx_cnt;
 		vsi->num_tx_desc = (u16)new_tx_cnt;
 		vsi->num_rx_desc = (u16)new_rx_cnt;
@@ -2810,7 +2810,7 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring)
 		goto free_tx;
 	}
 
-	for (i = 0; i < vsi->num_xdp_txq; i++) {
+	ice_for_each_xdp_txq(vsi, i) {
 		/* clone ring and setup updated count */
 		xdp_rings[i] = *vsi->xdp_rings[i];
 		xdp_rings[i].count = new_tx_cnt;
@@ -2904,7 +2904,7 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring)
 		}
 
 		if (xdp_rings) {
-			for (i = 0; i < vsi->num_xdp_txq; i++) {
+			ice_for_each_xdp_txq(vsi, i) {
 				ice_free_tx_ring(vsi->xdp_rings[i]);
 				*vsi->xdp_rings[i] = xdp_rings[i];
 			}
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 61152fc78773..f9f060da3f04 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -46,12 +46,12 @@ static int ice_vsi_ctrl_all_rx_rings(struct ice_vsi *vsi, bool ena)
 	int ret = 0;
 	u16 i;
 
-	for (i = 0; i < vsi->num_rxq; i++)
+	ice_for_each_rxq(vsi, i)
 		ice_vsi_ctrl_one_rx_ring(vsi, ena, i, false);
 
 	ice_flush(&vsi->back->hw);
 
-	for (i = 0; i < vsi->num_rxq; i++) {
+	ice_for_each_rxq(vsi, i) {
 		ret = ice_vsi_wait_one_rx_ring(vsi, ena, i);
 		if (ret)
 			break;
@@ -639,12 +639,12 @@ static void ice_vsi_put_qs(struct ice_vsi *vsi)
 
 	mutex_lock(&pf->avail_q_mutex);
 
-	for (i = 0; i < vsi->alloc_txq; i++) {
+	ice_for_each_alloc_txq(vsi, i) {
 		clear_bit(vsi->txq_map[i], pf->avail_txqs);
 		vsi->txq_map[i] = ICE_INVAL_Q_INDEX;
 	}
 
-	for (i = 0; i < vsi->alloc_rxq; i++) {
+	ice_for_each_alloc_rxq(vsi, i) {
 		clear_bit(vsi->rxq_map[i], pf->avail_rxqs);
 		vsi->rxq_map[i] = ICE_INVAL_Q_INDEX;
 	}
@@ -1298,7 +1298,7 @@ static void ice_vsi_clear_rings(struct ice_vsi *vsi)
 	}
 
 	if (vsi->tx_rings) {
-		for (i = 0; i < vsi->alloc_txq; i++) {
+		ice_for_each_alloc_txq(vsi, i) {
 			if (vsi->tx_rings[i]) {
 				kfree_rcu(vsi->tx_rings[i], rcu);
 				WRITE_ONCE(vsi->tx_rings[i], NULL);
@@ -1306,7 +1306,7 @@ static void ice_vsi_clear_rings(struct ice_vsi *vsi)
 		}
 	}
 	if (vsi->rx_rings) {
-		for (i = 0; i < vsi->alloc_rxq; i++) {
+		ice_for_each_alloc_rxq(vsi, i) {
 			if (vsi->rx_rings[i]) {
 				kfree_rcu(vsi->rx_rings[i], rcu);
 				WRITE_ONCE(vsi->rx_rings[i], NULL);
@@ -1327,7 +1327,7 @@ static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
 
 	dev = ice_pf_to_dev(pf);
 	/* Allocate Tx rings */
-	for (i = 0; i < vsi->alloc_txq; i++) {
+	ice_for_each_alloc_txq(vsi, i) {
 		struct ice_tx_ring *ring;
 
 		/* allocate with kzalloc(), free with kfree_rcu() */
@@ -1346,7 +1346,7 @@ static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
 	}
 
 	/* Allocate Rx rings */
-	for (i = 0; i < vsi->alloc_rxq; i++) {
+	ice_for_each_alloc_rxq(vsi, i) {
 		struct ice_rx_ring *ring;
 
 		/* allocate with kzalloc(), free with kfree_rcu() */
@@ -1857,7 +1857,7 @@ int ice_vsi_cfg_xdp_txqs(struct ice_vsi *vsi)
 	if (ret)
 		return ret;
 
-	for (i = 0; i < vsi->num_xdp_txq; i++)
+	ice_for_each_xdp_txq(vsi, i)
 		vsi->xdp_rings[i]->xsk_pool = ice_tx_xsk_pool(vsi->xdp_rings[i]);
 
 	return ret;
@@ -1955,7 +1955,7 @@ void ice_vsi_cfg_msix(struct ice_vsi *vsi)
 	u16 txq = 0, rxq = 0;
 	int i, q;
 
-	for (i = 0; i < vsi->num_q_vectors; i++) {
+	ice_for_each_q_vector(vsi, i) {
 		struct ice_q_vector *q_vector = vsi->q_vectors[i];
 		u16 reg_idx = q_vector->reg_idx;
 
@@ -2646,7 +2646,7 @@ static void ice_vsi_release_msix(struct ice_vsi *vsi)
 	u32 rxq = 0;
 	int i, q;
 
-	for (i = 0; i < vsi->num_q_vectors; i++) {
+	ice_for_each_q_vector(vsi, i) {
 		struct ice_q_vector *q_vector = vsi->q_vectors[i];
 
 		ice_write_intrl(q_vector, 0);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 014762048fcb..59cc7d04ab27 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -103,7 +103,7 @@ static void ice_check_for_hang_subtask(struct ice_pf *pf)
 
 	hw = &vsi->back->hw;
 
-	for (i = 0; i < vsi->num_txq; i++) {
+	ice_for_each_txq(vsi, i) {
 		struct ice_tx_ring *tx_ring = vsi->tx_rings[i];
 
 		if (tx_ring && tx_ring->desc) {
@@ -2433,7 +2433,7 @@ static int ice_xdp_alloc_setup_rings(struct ice_vsi *vsi)
 	struct ice_tx_desc *tx_desc;
 	int i, j;
 
-	for (i = 0; i < vsi->num_xdp_txq; i++) {
+	ice_for_each_xdp_txq(vsi, i) {
 		u16 xdp_q_idx = vsi->alloc_txq + i;
 		struct ice_tx_ring *xdp_ring;
 
@@ -2582,7 +2582,7 @@ int ice_prepare_xdp_rings(struct ice_vsi *vsi, struct bpf_prog *prog)
 
 	return 0;
 clear_xdp_rings:
-	for (i = 0; i < vsi->num_xdp_txq; i++)
+	ice_for_each_xdp_txq(vsi, i)
 		if (vsi->xdp_rings[i]) {
 			kfree_rcu(vsi->xdp_rings[i], rcu);
 			vsi->xdp_rings[i] = NULL;
@@ -2590,7 +2590,7 @@ int ice_prepare_xdp_rings(struct ice_vsi *vsi, struct bpf_prog *prog)
 
 err_map_xdp:
 	mutex_lock(&pf->avail_q_mutex);
-	for (i = 0; i < vsi->num_xdp_txq; i++) {
+	ice_for_each_xdp_txq(vsi, i) {
 		clear_bit(vsi->txq_map[i + vsi->alloc_txq], pf->avail_txqs);
 		vsi->txq_map[i + vsi->alloc_txq] = ICE_INVAL_Q_INDEX;
 	}
@@ -2635,13 +2635,13 @@ int ice_destroy_xdp_rings(struct ice_vsi *vsi)
 
 free_qmap:
 	mutex_lock(&pf->avail_q_mutex);
-	for (i = 0; i < vsi->num_xdp_txq; i++) {
+	ice_for_each_xdp_txq(vsi, i) {
 		clear_bit(vsi->txq_map[i + vsi->alloc_txq], pf->avail_txqs);
 		vsi->txq_map[i + vsi->alloc_txq] = ICE_INVAL_Q_INDEX;
 	}
 	mutex_unlock(&pf->avail_q_mutex);
 
-	for (i = 0; i < vsi->num_xdp_txq; i++)
+	ice_for_each_xdp_txq(vsi, i)
 		if (vsi->xdp_rings[i]) {
 			if (vsi->xdp_rings[i]->desc)
 				ice_free_tx_ring(vsi->xdp_rings[i]);
@@ -7131,7 +7131,7 @@ static void ice_tx_timeout(struct net_device *netdev, unsigned int txqueue)
 	}
 
 	/* now that we have an index, find the tx_ring struct */
-	for (i = 0; i < vsi->num_txq; i++)
+	ice_for_each_txq(vsi, i)
 		if (vsi->tx_rings[i] && vsi->tx_rings[i]->desc)
 			if (txqueue == vsi->tx_rings[i]->q_index) {
 				tx_ring = vsi->tx_rings[i];
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
