Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C2560FC03
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Oct 2022 17:32:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E26DE40491;
	Thu, 27 Oct 2022 15:32:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E26DE40491
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666884720;
	bh=uoM035GhQ1aZebJkHWVGSOkc/VpHA4DgM0A6VyiDU1I=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0mHMg3mKUeOB21RnC4vOHmNNCu11xhfP9hiIaX0FrDf5y4isU2jGHo+fV6y8+2VRy
	 hdNC3coTivivR1LvO2FiowqKqREFZXvVbeLVRbL8zuiPHh2shIiU6Q3o6tLF+//wNT
	 TPtBIIeCwCJs2zrwErrF42SO54olnZMm0Z7gtnJTdGi4puE3whCSp/qUYNukAmwH0k
	 RGlU53R2oXKETz0J+oRw0jaSkSFi2rMsU8wsoj9pEWrZp4Cn3wt66s0rEgQwvPDb47
	 z4nH7V+OBNeSW3gOzET+juTjEnqvY/M+op6Fahs9pnVeN0IXXundA9WYkY2753MF0a
	 zfaipm5zZQQTw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GhZFKiHDIt89; Thu, 27 Oct 2022 15:31:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 62DDA40360;
	Thu, 27 Oct 2022 15:31:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 62DDA40360
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E58AA1BF318
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Oct 2022 15:31:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C96EA400EA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Oct 2022 15:31:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C96EA400EA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id otMv6KENHfDZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Oct 2022 15:31:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ECC8640360
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ECC8640360
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Oct 2022 15:31:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="309344589"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800"; d="scan'208";a="309344589"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 08:31:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="583593802"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800"; d="scan'208";a="583593802"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.232.13])
 by orsmga003.jf.intel.com with ESMTP; 27 Oct 2022 08:31:44 -0700
From: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Oct 2022 11:24:01 -0400
Message-Id: <20221027152401.30801-3-benjamin.mikailenko@intel.com>
X-Mailer: git-send-email 2.34.3
In-Reply-To: <20221027152401.30801-1-benjamin.mikailenko@intel.com>
References: <20221027152401.30801-1-benjamin.mikailenko@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666884704; x=1698420704;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=m6MfGPggpCfhkQ0WF+cFrhORuCrZcWVny/rp79g66JM=;
 b=PqgpJEcMqfCmnvR1UQuvq71RJumhvh4OWISsK/KSTyHDuEldRbedNihN
 k78NUOnfccc/a3WBMJE/XvZYcPHgecgYtV5n3K80VIuKIvvSVSGQAh7Kv
 1fWvIQPqgiwc5JFtGyCGAmyCIUzuaL0cyE17WTZlz0rX5Hkswv5HTQA9F
 XDRJVVvhc4NAJx2H/8xvPtRG6wMjj1M8O77giIZSRCY5O1SeS5sD4rI5d
 8FdGaqpdg64OvOrYY2uBLTZdQn7uR0miA3BlVVC9pqsuXH3oHwz8qNWxK
 mVa5U/RDecA00t0z9J71W17RgWPTy/Fgaj6B/WlsMMfAkU1/AmNXbZHSo
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PqgpJEcM
Subject: [Intel-wired-lan] [net-next,
 v3 2/2] ice: Accumulate ring statistics over reset
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
Cc: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Resets may occur with or without user interaction. For example, a TX hang
or reconfiguration of parameters will result in a reset. During reset, the
VSI is freed, freeing any statistics structures inside as well. This would
create an issue for the user where a reset happens in the background,
statistics set to zero, and the user checks ring statistics expecting them
to be populated.

To ensure this doesn't happen, accumulate ring statistics over reset.

Define a new ring statistics structure, ice_ring_stats. The new structure
lives in the VSI's parent, preserving ring statistics when VSI is freed.

1. Define a new structure vsi_ring_stats in the PF scope
2. Allocate/free stats only during probe, unload, or change in ring size
3. Replace previous ring statistics functionality with new structure

Signed-off-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |   6 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  12 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      | 256 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_main.c     |  68 ++++-
 drivers/net/ethernet/intel/ice/ice_repr.c     |  10 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c     |  40 ++-
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  18 +-
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |   2 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c      |  25 +-
 9 files changed, 377 insertions(+), 60 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index e0ed2f1cc434..cdc4e9f97ba0 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -305,6 +305,11 @@ enum ice_vsi_state {
 	ICE_VSI_STATE_NBITS		/* must be last */
 };
 
+struct ice_vsi_stats {
+	struct ice_ring_stats **tx_ring_stats;  /* Tx ring stats array */
+	struct ice_ring_stats **rx_ring_stats;  /* Rx ring stats array */
+};
+
 /* struct that defines a VSI, associated with a dev */
 struct ice_vsi {
 	struct net_device *netdev;
@@ -526,6 +531,7 @@ struct ice_pf {
 	u16 ctrl_vsi_idx;		/* control VSI index in pf->vsi array */
 
 	struct ice_vsi **vsi;		/* VSIs created by the driver */
+	struct ice_vsi_stats **vsi_stats;
 	struct ice_sw *first_sw;	/* first switch created by firmware */
 	u16 eswitch_mode;		/* current mode of eswitch */
 	struct ice_vfs vfs;
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index b7be84bbe72d..6c2ad100c3f7 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1375,9 +1375,9 @@ __ice_get_ethtool_stats(struct net_device *netdev,
 
 	ice_for_each_alloc_txq(vsi, j) {
 		tx_ring = READ_ONCE(vsi->tx_rings[j]);
-		if (tx_ring) {
-			data[i++] = tx_ring->stats.pkts;
-			data[i++] = tx_ring->stats.bytes;
+		if (tx_ring && tx_ring->ring_stats) {
+			data[i++] = tx_ring->ring_stats->stats.pkts;
+			data[i++] = tx_ring->ring_stats->stats.bytes;
 		} else {
 			data[i++] = 0;
 			data[i++] = 0;
@@ -1386,9 +1386,9 @@ __ice_get_ethtool_stats(struct net_device *netdev,
 
 	ice_for_each_alloc_rxq(vsi, j) {
 		rx_ring = READ_ONCE(vsi->rx_rings[j]);
-		if (rx_ring) {
-			data[i++] = rx_ring->stats.pkts;
-			data[i++] = rx_ring->stats.bytes;
+		if (rx_ring && rx_ring->ring_stats) {
+			data[i++] = rx_ring->ring_stats->stats.pkts;
+			data[i++] = rx_ring->ring_stats->stats.bytes;
 		} else {
 			data[i++] = 0;
 			data[i++] = 0;
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index a5945319b62e..2de5b007993b 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -447,6 +447,52 @@ static irqreturn_t ice_eswitch_msix_clean_rings(int __always_unused irq, void *d
 	return IRQ_HANDLED;
 }
 
+/**
+ * ice_vsi_alloc_stat_arrays - Allocate statistics arrays
+ * @vsi: VSI pointer
+ */
+static int ice_vsi_alloc_stat_arrays(struct ice_vsi *vsi)
+{
+	struct ice_vsi_stats *vsi_stat;
+	struct ice_pf *pf = vsi->back;
+	struct device *dev;
+
+	dev = ice_pf_to_dev(pf);
+
+	if (vsi->type == ICE_VSI_CHNL)
+		return 0;
+	if (!pf->vsi_stats)
+		return -ENOENT;
+
+	vsi_stat = devm_kzalloc(dev, sizeof(*vsi_stat), GFP_KERNEL);
+	if (!vsi_stat)
+		return -ENOMEM;
+
+	vsi_stat->tx_ring_stats =
+		devm_kcalloc(dev, vsi->alloc_txq,
+			     sizeof(*vsi_stat->tx_ring_stats), GFP_KERNEL);
+
+	vsi_stat->rx_ring_stats =
+		devm_kcalloc(dev, vsi->alloc_rxq,
+			     sizeof(*vsi_stat->rx_ring_stats), GFP_KERNEL);
+
+	if (!vsi_stat->tx_ring_stats || !vsi_stat->rx_ring_stats)
+		goto err_alloc;
+
+	pf->vsi_stats[vsi->idx] = vsi_stat;
+
+	return 0;
+
+err_alloc:
+	devm_kfree(dev, vsi_stat->tx_ring_stats);
+	vsi_stat->tx_ring_stats = NULL;
+	devm_kfree(dev, vsi_stat->rx_ring_stats);
+	vsi_stat->rx_ring_stats = NULL;
+	devm_kfree(dev, vsi_stat);
+	pf->vsi_stats[vsi->idx] = NULL;
+	return -ENOMEM;
+}
+
 /**
  * ice_vsi_alloc - Allocates the next available struct VSI in the PF
  * @pf: board private structure
@@ -560,6 +606,11 @@ ice_vsi_alloc(struct ice_pf *pf, enum ice_vsi_type vsi_type,
 
 	if (vsi->type == ICE_VSI_CTRL && vf)
 		vf->ctrl_vsi_idx = vsi->idx;
+
+	/* allocate memory for Tx/Rx ring stat pointers */
+	if (ice_vsi_alloc_stat_arrays(vsi))
+		goto err_rings;
+
 	goto unlock_pf;
 
 err_rings:
@@ -1535,6 +1586,122 @@ static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
 	return -ENOMEM;
 }
 
+/**
+ * ice_vsi_free_stats - Free the ring statistics structures
+ * @vsi: VSI pointer
+ */
+static void ice_vsi_free_stats(struct ice_vsi *vsi)
+{
+	struct ice_vsi_stats *vsi_stat;
+	struct ice_pf *pf = vsi->back;
+	struct device *dev;
+	int i;
+
+	dev = ice_pf_to_dev(pf);
+
+	if (vsi->type == ICE_VSI_CHNL)
+		return;
+	if (!pf->vsi_stats)
+		return;
+
+	vsi_stat = pf->vsi_stats[vsi->idx];
+	if (!vsi_stat)
+		return;
+
+	ice_for_each_alloc_txq(vsi, i) {
+		if (vsi_stat->tx_ring_stats[i]) {
+			kfree_rcu(vsi_stat->tx_ring_stats[i], rcu);
+			WRITE_ONCE(vsi_stat->tx_ring_stats[i], NULL);
+		}
+	}
+
+	ice_for_each_alloc_rxq(vsi, i) {
+		if (vsi_stat->rx_ring_stats[i]) {
+			kfree_rcu(vsi_stat->rx_ring_stats[i], rcu);
+			WRITE_ONCE(vsi_stat->rx_ring_stats[i], NULL);
+		}
+	}
+
+	devm_kfree(dev, vsi_stat->tx_ring_stats);
+	vsi_stat->tx_ring_stats = NULL;
+	devm_kfree(dev, vsi_stat->rx_ring_stats);
+	vsi_stat->rx_ring_stats = NULL;
+	devm_kfree(dev, vsi_stat);
+	pf->vsi_stats[vsi->idx] = NULL;
+}
+
+/**
+ * ice_vsi_alloc_ring_stats - Allocates Tx and Rx ring stats for the VSI
+ * @vsi: VSI which is having stats allocated
+ */
+static int ice_vsi_alloc_ring_stats(struct ice_vsi *vsi)
+{
+	struct ice_ring_stats **tx_ring_stats;
+	struct ice_ring_stats **rx_ring_stats;
+	struct ice_vsi_stats *vsi_stats;
+	struct ice_pf *pf = vsi->back;
+	u16 i;
+
+	if (!pf->vsi_stats)
+		return -ENOENT;
+
+	vsi_stats = pf->vsi_stats[vsi->idx];
+	if (!vsi_stats)
+		return -ENOENT;
+
+	tx_ring_stats = vsi_stats->tx_ring_stats;
+	if (!tx_ring_stats)
+		return -ENOENT;
+
+	rx_ring_stats = vsi_stats->rx_ring_stats;
+	if (!rx_ring_stats)
+		return -ENOENT;
+
+	/* Allocate Tx ring stats */
+	ice_for_each_alloc_txq(vsi, i) {
+		struct ice_ring_stats *ring_stats;
+		struct ice_tx_ring *ring;
+
+		ring = vsi->tx_rings[i];
+		ring_stats = tx_ring_stats[i];
+
+		if (!ring_stats) {
+			ring_stats = kzalloc(sizeof(*ring_stats), GFP_KERNEL);
+			if (!ring_stats)
+				goto err_out;
+
+			WRITE_ONCE(tx_ring_stats[i], ring_stats);
+		}
+
+		ring->ring_stats = ring_stats;
+	}
+
+	/* Allocate Rx ring stats */
+	ice_for_each_alloc_rxq(vsi, i) {
+		struct ice_ring_stats *ring_stats;
+		struct ice_rx_ring *ring;
+
+		ring = vsi->rx_rings[i];
+		ring_stats = rx_ring_stats[i];
+
+		if (!ring_stats) {
+			ring_stats = kzalloc(sizeof(*ring_stats), GFP_KERNEL);
+			if (!ring_stats)
+				goto err_out;
+
+			 WRITE_ONCE(rx_ring_stats[i], ring_stats);
+		}
+
+		ring->ring_stats = ring_stats;
+	}
+
+	return 0;
+
+err_out:
+	ice_vsi_free_stats(vsi);
+	return -ENOMEM;
+}
+
 /**
  * ice_vsi_manage_rss_lut - disable/enable RSS
  * @vsi: the VSI being changed
@@ -2555,6 +2722,10 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 		if (ret)
 			goto unroll_vector_base;
 
+		ret = ice_vsi_alloc_ring_stats(vsi);
+		if (ret)
+			goto unroll_vector_base;
+
 		ice_vsi_map_rings_to_vectors(vsi);
 
 		/* ICE_VSI_CTRL does not need RSS so skip RSS processing */
@@ -2593,6 +2764,9 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 		if (ret)
 			goto unroll_vector_base;
 
+		ret = ice_vsi_alloc_ring_stats(vsi);
+		if (ret)
+			goto unroll_vector_base;
 		/* Do not exit if configuring RSS had an issue, at least
 		 * receive traffic on first queue. Hence no need to capture
 		 * return value
@@ -2606,6 +2780,11 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 		ret = ice_vsi_alloc_rings(vsi);
 		if (ret)
 			goto unroll_vsi_init;
+
+		ret = ice_vsi_alloc_ring_stats(vsi);
+		if (ret)
+			goto unroll_vector_base;
+
 		break;
 	default:
 		/* clean up the resources and exit */
@@ -2665,6 +2844,7 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 unroll_alloc_q_vector:
 	ice_vsi_free_q_vectors(vsi);
 unroll_vsi_init:
+	ice_vsi_free_stats(vsi);
 	ice_vsi_delete(vsi);
 unroll_get_qs:
 	ice_vsi_put_qs(vsi);
@@ -3056,7 +3236,7 @@ int ice_vsi_release(struct ice_vsi *vsi)
 	    vsi->agg_node && vsi->agg_node->valid)
 		vsi->agg_node->num_vsis--;
 	ice_vsi_clear_rings(vsi);
-
+	ice_vsi_free_stats(vsi);
 	ice_vsi_put_qs(vsi);
 
 	/* retain SW VSI data structure since it is needed to unregister and
@@ -3183,6 +3363,51 @@ ice_vsi_rebuild_set_coalesce(struct ice_vsi *vsi,
 	}
 }
 
+/**
+ * ice_vsi_realloc_stat_arrays - Frees unused stat structures
+ * @vsi: VSI pointer
+ * @prev_txq: Number of Tx rings before ring reallocation
+ * @prev_rxq: Number of Rx rings before ring reallocation
+ */
+static int
+ice_vsi_realloc_stat_arrays(struct ice_vsi *vsi, int prev_txq, int prev_rxq)
+{
+	struct ice_vsi_stats *vsi_stat;
+	struct ice_pf *pf = vsi->back;
+	int i;
+
+	if (!prev_txq || !prev_rxq)
+		return 0;
+	if (vsi->type == ICE_VSI_CHNL)
+		return 0;
+	if (!pf->vsi_stats)
+		return -ENOENT;
+
+	vsi_stat = pf->vsi_stats[vsi->idx];
+	if (!vsi_stat)
+		return -ENOENT;
+
+	if (vsi->num_txq < prev_txq) {
+		for (i = vsi->num_txq; i < prev_txq; i++) {
+			if (vsi_stat->tx_ring_stats[i]) {
+				kfree_rcu(vsi_stat->tx_ring_stats[i], rcu);
+				WRITE_ONCE(vsi_stat->tx_ring_stats[i], NULL);
+			}
+		}
+	}
+
+	if (vsi->num_rxq < prev_rxq) {
+		for (i = vsi->num_rxq; i < prev_rxq; i++) {
+			if (vsi_stat->rx_ring_stats[i]) {
+				kfree_rcu(vsi_stat->rx_ring_stats[i], rcu);
+				WRITE_ONCE(vsi_stat->rx_ring_stats[i], NULL);
+			}
+		}
+	}
+
+	return 0;
+}
+
 /**
  * ice_vsi_rebuild - Rebuild VSI after reset
  * @vsi: VSI to be rebuild
@@ -3194,10 +3419,10 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 {
 	u16 max_txqs[ICE_MAX_TRAFFIC_CLASS] = { 0 };
 	struct ice_coalesce_stored *coalesce;
+	int ret, i, prev_txq, prev_rxq;
 	int prev_num_q_vectors = 0;
 	enum ice_vsi_type vtype;
 	struct ice_pf *pf;
-	int ret, i;
 
 	if (!vsi)
 		return -EINVAL;
@@ -3216,6 +3441,9 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 
 	prev_num_q_vectors = ice_vsi_rebuild_get_coalesce(vsi, coalesce);
 
+	prev_txq = vsi->num_txq;
+	prev_rxq = vsi->num_rxq;
+
 	ice_rm_vsi_lan_cfg(vsi->port_info, vsi->idx);
 	ret = ice_rm_vsi_rdma_cfg(vsi->port_info, vsi->idx);
 	if (ret)
@@ -3282,6 +3510,10 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 		if (ret)
 			goto err_vectors;
 
+		ret = ice_vsi_alloc_ring_stats(vsi);
+		if (ret)
+			goto err_vectors;
+
 		ice_vsi_map_rings_to_vectors(vsi);
 
 		vsi->stat_offsets_loaded = false;
@@ -3321,6 +3553,10 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 		if (ret)
 			goto err_vectors;
 
+		ret = ice_vsi_alloc_ring_stats(vsi);
+		if (ret)
+			goto err_vectors;
+
 		vsi->stat_offsets_loaded = false;
 		break;
 	case ICE_VSI_CHNL:
@@ -3369,6 +3605,10 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 			return ice_schedule_reset(pf, ICE_RESET_PFR);
 		}
 	}
+
+	if (ice_vsi_realloc_stat_arrays(vsi, prev_txq, prev_rxq))
+		goto err_vectors;
+
 	ice_vsi_rebuild_set_coalesce(vsi, coalesce, prev_num_q_vectors);
 	kfree(coalesce);
 
@@ -3710,9 +3950,9 @@ static void ice_update_ring_stats(struct ice_q_stats *stats, u64 pkts, u64 bytes
  */
 void ice_update_tx_ring_stats(struct ice_tx_ring *tx_ring, u64 pkts, u64 bytes)
 {
-	u64_stats_update_begin(&tx_ring->syncp);
-	ice_update_ring_stats(&tx_ring->stats, pkts, bytes);
-	u64_stats_update_end(&tx_ring->syncp);
+	u64_stats_update_begin(&tx_ring->ring_stats->syncp);
+	ice_update_ring_stats(&tx_ring->ring_stats->stats, pkts, bytes);
+	u64_stats_update_end(&tx_ring->ring_stats->syncp);
 }
 
 /**
@@ -3723,9 +3963,9 @@ void ice_update_tx_ring_stats(struct ice_tx_ring *tx_ring, u64 pkts, u64 bytes)
  */
 void ice_update_rx_ring_stats(struct ice_rx_ring *rx_ring, u64 pkts, u64 bytes)
 {
-	u64_stats_update_begin(&rx_ring->syncp);
-	ice_update_ring_stats(&rx_ring->stats, pkts, bytes);
-	u64_stats_update_end(&rx_ring->syncp);
+	u64_stats_update_begin(&rx_ring->ring_stats->syncp);
+	ice_update_ring_stats(&rx_ring->ring_stats->stats, pkts, bytes);
+	u64_stats_update_end(&rx_ring->ring_stats->syncp);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index ac893ce39e5e..77e5374951c6 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -130,12 +130,17 @@ static void ice_check_for_hang_subtask(struct ice_pf *pf)
 
 	ice_for_each_txq(vsi, i) {
 		struct ice_tx_ring *tx_ring = vsi->tx_rings[i];
+		struct ice_ring_stats *ring_stats;
 
 		if (!tx_ring)
 			continue;
 		if (ice_ring_ch_enabled(tx_ring))
 			continue;
 
+		ring_stats = tx_ring->ring_stats;
+		if (!ring_stats)
+			continue;
+
 		if (tx_ring->desc) {
 			/* If packet counter has not changed the queue is
 			 * likely stalled, so force an interrupt for this
@@ -144,8 +149,8 @@ static void ice_check_for_hang_subtask(struct ice_pf *pf)
 			 * prev_pkt would be negative if there was no
 			 * pending work.
 			 */
-			packets = tx_ring->stats.pkts & INT_MAX;
-			if (tx_ring->tx_stats.prev_pkt == packets) {
+			packets = ring_stats->stats.pkts & INT_MAX;
+			if (ring_stats->tx_stats.prev_pkt == packets) {
 				/* Trigger sw interrupt to revive the queue */
 				ice_trigger_sw_intr(hw, tx_ring->q_vector);
 				continue;
@@ -155,7 +160,7 @@ static void ice_check_for_hang_subtask(struct ice_pf *pf)
 			 * to ice_get_tx_pending()
 			 */
 			smp_rmb();
-			tx_ring->tx_stats.prev_pkt =
+			ring_stats->tx_stats.prev_pkt =
 			    ice_get_tx_pending(tx_ring) ? packets : -1;
 		}
 	}
@@ -2560,6 +2565,7 @@ static int ice_xdp_alloc_setup_rings(struct ice_vsi *vsi)
 
 	ice_for_each_xdp_txq(vsi, i) {
 		u16 xdp_q_idx = vsi->alloc_txq + i;
+		struct ice_ring_stats *ring_stats;
 		struct ice_tx_ring *xdp_ring;
 
 		xdp_ring = kzalloc(sizeof(*xdp_ring), GFP_KERNEL);
@@ -2567,6 +2573,15 @@ static int ice_xdp_alloc_setup_rings(struct ice_vsi *vsi)
 		if (!xdp_ring)
 			goto free_xdp_rings;
 
+		ring_stats = (struct ice_ring_stats *)
+			kzalloc(sizeof(*ring_stats), GFP_KERNEL);
+
+		if (!ring_stats) {
+			ice_free_tx_ring(xdp_ring);
+			goto free_xdp_rings;
+		}
+
+		xdp_ring->ring_stats = ring_stats;
 		xdp_ring->q_index = xdp_q_idx;
 		xdp_ring->reg_idx = vsi->txq_map[xdp_q_idx];
 		xdp_ring->vsi = vsi;
@@ -2589,9 +2604,13 @@ static int ice_xdp_alloc_setup_rings(struct ice_vsi *vsi)
 	return 0;
 
 free_xdp_rings:
-	for (; i >= 0; i--)
-		if (vsi->xdp_rings[i] && vsi->xdp_rings[i]->desc)
+	for (; i >= 0; i--) {
+		if (vsi->xdp_rings[i] && vsi->xdp_rings[i]->desc) {
+			kfree_rcu(vsi->xdp_rings[i]->ring_stats, rcu);
+			vsi->xdp_rings[i]->ring_stats = NULL;
 			ice_free_tx_ring(vsi->xdp_rings[i]);
+		}
+	}
 	return -ENOMEM;
 }
 
@@ -2792,6 +2811,8 @@ int ice_destroy_xdp_rings(struct ice_vsi *vsi)
 				synchronize_rcu();
 				ice_free_tx_ring(vsi->xdp_rings[i]);
 			}
+			kfree_rcu(vsi->xdp_rings[i]->ring_stats, rcu);
+			vsi->xdp_rings[i]->ring_stats = NULL;
 			kfree_rcu(vsi->xdp_rings[i], rcu);
 			vsi->xdp_rings[i] = NULL;
 		}
@@ -4846,11 +4867,19 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		goto err_init_pf_unroll;
 	}
 
+	pf->vsi_stats = devm_kcalloc(dev, pf->num_alloc_vsi,
+				     sizeof(*pf->vsi_stats), GFP_KERNEL);
+
+	if (!pf->vsi_stats) {
+		err = -ENOMEM;
+		goto err_init_vsi_unroll;
+	}
+
 	err = ice_init_interrupt_scheme(pf);
 	if (err) {
 		dev_err(dev, "ice_init_interrupt_scheme failed: %d\n", err);
 		err = -EIO;
-		goto err_init_vsi_unroll;
+		goto err_init_vsi_stats_unroll;
 	}
 
 	/* In case of MSIX we are going to setup the misc vector right here
@@ -5031,6 +5060,9 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	ice_free_irq_msix_misc(pf);
 err_init_interrupt_unroll:
 	ice_clear_interrupt_scheme(pf);
+err_init_vsi_stats_unroll:
+	devm_kfree(dev, pf->vsi_stats);
+	pf->vsi_stats = NULL;
 err_init_vsi_unroll:
 	devm_kfree(dev, pf->vsi);
 err_init_pf_unroll:
@@ -5153,6 +5185,8 @@ static void ice_remove(struct pci_dev *pdev)
 			continue;
 		ice_vsi_free_q_vectors(pf->vsi[i]);
 	}
+	devm_kfree(&pdev->dev, pf->vsi_stats);
+	pf->vsi_stats = NULL;
 	ice_deinit_pf(pf);
 	ice_devlink_destroy_regions(pf);
 	ice_deinit_hw(&pf->hw);
@@ -6470,14 +6504,16 @@ ice_update_vsi_tx_ring_stats(struct ice_vsi *vsi,
 		u64 pkts = 0, bytes = 0;
 
 		ring = READ_ONCE(rings[i]);
-		if (!ring)
+		if (!ring || !ring->ring_stats)
 			continue;
-		ice_fetch_u64_stats_per_ring(&ring->syncp, ring->stats, &pkts, &bytes);
+		ice_fetch_u64_stats_per_ring(&ring->ring_stats->syncp,
+					     ring->ring_stats->stats, &pkts,
+					     &bytes);
 		vsi_stats->tx_packets += pkts;
 		vsi_stats->tx_bytes += bytes;
-		vsi->tx_restart += ring->tx_stats.restart_q;
-		vsi->tx_busy += ring->tx_stats.tx_busy;
-		vsi->tx_linearize += ring->tx_stats.tx_linearize;
+		vsi->tx_restart += ring->ring_stats->tx_stats.restart_q;
+		vsi->tx_busy += ring->ring_stats->tx_stats.tx_busy;
+		vsi->tx_linearize += ring->ring_stats->tx_stats.tx_linearize;
 	}
 }
 
@@ -6512,12 +6548,16 @@ static void ice_update_vsi_ring_stats(struct ice_vsi *vsi)
 	/* update Rx rings counters */
 	ice_for_each_rxq(vsi, i) {
 		struct ice_rx_ring *ring = READ_ONCE(vsi->rx_rings[i]);
+		struct ice_ring_stats *ring_stats;
 
-		ice_fetch_u64_stats_per_ring(&ring->syncp, ring->stats, &pkts, &bytes);
+		ring_stats = ring->ring_stats;
+		ice_fetch_u64_stats_per_ring(&ring_stats->syncp,
+					     ring_stats->stats, &pkts,
+					     &bytes);
 		vsi_stats->rx_packets += pkts;
 		vsi_stats->rx_bytes += bytes;
-		vsi->rx_buf_failed += ring->rx_stats.alloc_buf_failed;
-		vsi->rx_page_failed += ring->rx_stats.alloc_page_failed;
+		vsi->rx_buf_failed += ring_stats->rx_stats.alloc_buf_failed;
+		vsi->rx_page_failed += ring_stats->rx_stats.alloc_page_failed;
 	}
 
 	/* update XDP Tx rings counters */
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index bd31748aae1b..05f1c2276b48 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -163,18 +163,20 @@ ice_repr_sp_stats64(const struct net_device *dev,
 	u64 pkts, bytes;
 
 	tx_ring = np->vsi->tx_rings[vf_id];
-	ice_fetch_u64_stats_per_ring(&tx_ring->syncp, tx_ring->stats,
+	ice_fetch_u64_stats_per_ring(&tx_ring->ring_stats->syncp,
+				     tx_ring->ring_stats->stats,
 				     &pkts, &bytes);
 	stats->rx_packets = pkts;
 	stats->rx_bytes = bytes;
 
 	rx_ring = np->vsi->rx_rings[vf_id];
-	ice_fetch_u64_stats_per_ring(&rx_ring->syncp, rx_ring->stats,
+	ice_fetch_u64_stats_per_ring(&rx_ring->ring_stats->syncp,
+				     rx_ring->ring_stats->stats,
 				     &pkts, &bytes);
 	stats->tx_packets = pkts;
 	stats->tx_bytes = bytes;
-	stats->tx_dropped = rx_ring->rx_stats.alloc_page_failed +
-			    rx_ring->rx_stats.alloc_buf_failed;
+	stats->tx_dropped = rx_ring->ring_stats->rx_stats.alloc_page_failed +
+			    rx_ring->ring_stats->rx_stats.alloc_buf_failed;
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index dbe80e5053a8..086f0b3ab68d 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -325,7 +325,7 @@ static bool ice_clean_tx_irq(struct ice_tx_ring *tx_ring, int napi_budget)
 		if (netif_tx_queue_stopped(txring_txq(tx_ring)) &&
 		    !test_bit(ICE_VSI_DOWN, vsi->state)) {
 			netif_tx_wake_queue(txring_txq(tx_ring));
-			++tx_ring->tx_stats.restart_q;
+			++tx_ring->ring_stats->tx_stats.restart_q;
 		}
 	}
 
@@ -367,7 +367,7 @@ int ice_setup_tx_ring(struct ice_tx_ring *tx_ring)
 
 	tx_ring->next_to_use = 0;
 	tx_ring->next_to_clean = 0;
-	tx_ring->tx_stats.prev_pkt = -1;
+	tx_ring->ring_stats->tx_stats.prev_pkt = -1;
 	return 0;
 
 err:
@@ -667,7 +667,7 @@ ice_alloc_mapped_page(struct ice_rx_ring *rx_ring, struct ice_rx_buf *bi)
 	/* alloc new page for storage */
 	page = dev_alloc_pages(ice_rx_pg_order(rx_ring));
 	if (unlikely(!page)) {
-		rx_ring->rx_stats.alloc_page_failed++;
+		rx_ring->ring_stats->rx_stats.alloc_page_failed++;
 		return false;
 	}
 
@@ -680,7 +680,7 @@ ice_alloc_mapped_page(struct ice_rx_ring *rx_ring, struct ice_rx_buf *bi)
 	 */
 	if (dma_mapping_error(rx_ring->dev, dma)) {
 		__free_pages(page, ice_rx_pg_order(rx_ring));
-		rx_ring->rx_stats.alloc_page_failed++;
+		rx_ring->ring_stats->rx_stats.alloc_page_failed++;
 		return false;
 	}
 
@@ -1091,7 +1091,7 @@ ice_is_non_eop(struct ice_rx_ring *rx_ring, union ice_32b_rx_flex_desc *rx_desc)
 	if (likely(ice_test_staterr(rx_desc->wb.status_error0, ICE_RXD_EOF)))
 		return false;
 
-	rx_ring->rx_stats.non_eop_descs++;
+	rx_ring->ring_stats->rx_stats.non_eop_descs++;
 
 	return true;
 }
@@ -1222,7 +1222,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 		}
 		/* exit if we failed to retrieve a buffer */
 		if (!skb) {
-			rx_ring->rx_stats.alloc_buf_failed++;
+			rx_ring->ring_stats->rx_stats.alloc_buf_failed++;
 			if (rx_buf)
 				rx_buf->pagecnt_bias++;
 			break;
@@ -1275,7 +1275,9 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 		ice_finalize_xdp_rx(xdp_ring, xdp_xmit);
 	rx_ring->skb = skb;
 
-	ice_update_rx_ring_stats(rx_ring, total_rx_pkts, total_rx_bytes);
+	if (rx_ring->ring_stats)
+		ice_update_rx_ring_stats(rx_ring, total_rx_pkts,
+					 total_rx_bytes);
 
 	/* guarantee a trip back through this routine if there was a failure */
 	return failure ? budget : (int)total_rx_pkts;
@@ -1292,15 +1294,25 @@ static void __ice_update_sample(struct ice_q_vector *q_vector,
 		struct ice_tx_ring *tx_ring;
 
 		ice_for_each_tx_ring(tx_ring, *rc) {
-			packets += tx_ring->stats.pkts;
-			bytes += tx_ring->stats.bytes;
+			struct ice_ring_stats *ring_stats;
+
+			ring_stats = tx_ring->ring_stats;
+			if (!ring_stats)
+				continue;
+			packets += ring_stats->stats.pkts;
+			bytes += ring_stats->stats.bytes;
 		}
 	} else {
 		struct ice_rx_ring *rx_ring;
 
 		ice_for_each_rx_ring(rx_ring, *rc) {
-			packets += rx_ring->stats.pkts;
-			bytes += rx_ring->stats.bytes;
+			struct ice_ring_stats *ring_stats;
+
+			ring_stats = rx_ring->ring_stats;
+			if (!ring_stats)
+				continue;
+			packets += ring_stats->stats.pkts;
+			bytes += ring_stats->stats.bytes;
 		}
 	}
 
@@ -1549,7 +1561,7 @@ static int __ice_maybe_stop_tx(struct ice_tx_ring *tx_ring, unsigned int size)
 
 	/* A reprieve! - use start_queue because it doesn't call schedule */
 	netif_tx_start_queue(txring_txq(tx_ring));
-	++tx_ring->tx_stats.restart_q;
+	++tx_ring->ring_stats->tx_stats.restart_q;
 	return 0;
 }
 
@@ -2293,7 +2305,7 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct ice_tx_ring *tx_ring)
 		if (__skb_linearize(skb))
 			goto out_drop;
 		count = ice_txd_use_count(skb->len);
-		tx_ring->tx_stats.tx_linearize++;
+		tx_ring->ring_stats->tx_stats.tx_linearize++;
 	}
 
 	/* need: 1 descriptor per page * PAGE_SIZE/ICE_MAX_DATA_PER_TXD,
@@ -2304,7 +2316,7 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct ice_tx_ring *tx_ring)
 	 */
 	if (ice_maybe_stop_tx(tx_ring, count + ICE_DESCS_PER_CACHE_LINE +
 			      ICE_DESCS_FOR_CTX_DESC)) {
-		tx_ring->tx_stats.tx_busy++;
+		tx_ring->ring_stats->tx_stats.tx_busy++;
 		return NETDEV_TX_BUSY;
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index 932b5661ec4d..4fd0e5d0a313 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -191,6 +191,16 @@ struct ice_rxq_stats {
 	u64 alloc_buf_failed;
 };
 
+struct ice_ring_stats {
+	struct rcu_head rcu;	/* to avoid race on free */
+	struct ice_q_stats stats;
+	struct u64_stats_sync syncp;
+	union {
+		struct ice_txq_stats tx_stats;
+		struct ice_rxq_stats rx_stats;
+	};
+};
+
 enum ice_ring_state_t {
 	ICE_TX_XPS_INIT_DONE,
 	ICE_TX_NBITS,
@@ -283,9 +293,7 @@ struct ice_rx_ring {
 	u16 rx_buf_len;
 
 	/* stats structs */
-	struct ice_rxq_stats rx_stats;
-	struct ice_q_stats	stats;
-	struct u64_stats_sync syncp;
+	struct ice_ring_stats *ring_stats;
 
 	struct rcu_head rcu;		/* to avoid race on free */
 	/* CL4 - 3rd cacheline starts here */
@@ -325,10 +333,8 @@ struct ice_tx_ring {
 	u16 count;			/* Number of descriptors */
 	u16 q_index;			/* Queue number of ring */
 	/* stats structs */
-	struct ice_txq_stats tx_stats;
+	struct ice_ring_stats *ring_stats;
 	/* CL3 - 3rd cacheline starts here */
-	struct ice_q_stats	stats;
-	struct u64_stats_sync syncp;
 	struct rcu_head rcu;		/* to avoid race on free */
 	DECLARE_BITMAP(xps_state, ICE_TX_NBITS);	/* XPS Config State */
 	struct ice_channel *ch;
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index 7ee38d02d1e5..25f04266c668 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -285,7 +285,7 @@ int ice_xmit_xdp_ring(void *data, u16 size, struct ice_tx_ring *xdp_ring)
 		ice_clean_xdp_irq(xdp_ring);
 
 	if (!unlikely(ICE_DESC_UNUSED(xdp_ring))) {
-		xdp_ring->tx_stats.tx_busy++;
+		xdp_ring->ring_stats->tx_stats.tx_busy++;
 		return ICE_XDP_CONSUMED;
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 056c904b83cc..907055b77af0 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -24,13 +24,24 @@ static struct xdp_buff **ice_xdp_buf(struct ice_rx_ring *rx_ring, u32 idx)
  */
 static void ice_qp_reset_stats(struct ice_vsi *vsi, u16 q_idx)
 {
-	memset(&vsi->rx_rings[q_idx]->rx_stats, 0,
-	       sizeof(vsi->rx_rings[q_idx]->rx_stats));
-	memset(&vsi->tx_rings[q_idx]->stats, 0,
-	       sizeof(vsi->tx_rings[q_idx]->stats));
+	struct ice_vsi_stats *vsi_stat;
+	struct ice_pf *pf;
+
+	pf = vsi->back;
+	if (!pf->vsi_stats)
+		return;
+
+	vsi_stat = pf->vsi_stats[vsi->idx];
+	if (!vsi_stat)
+		return;
+
+	memset(&vsi_stat->rx_ring_stats[q_idx]->rx_stats, 0,
+	       sizeof(vsi_stat->rx_ring_stats[q_idx]->rx_stats));
+	memset(&vsi_stat->tx_ring_stats[q_idx]->stats, 0,
+	       sizeof(vsi_stat->tx_ring_stats[q_idx]->stats));
 	if (ice_is_xdp_ena_vsi(vsi))
-		memset(&vsi->xdp_rings[q_idx]->stats, 0,
-		       sizeof(vsi->xdp_rings[q_idx]->stats));
+		memset(&vsi->xdp_rings[q_idx]->ring_stats->stats, 0,
+		       sizeof(vsi->xdp_rings[q_idx]->ring_stats->stats));
 }
 
 /**
@@ -722,7 +733,7 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
 		/* XDP_PASS path */
 		skb = ice_construct_skb_zc(rx_ring, xdp);
 		if (!skb) {
-			rx_ring->rx_stats.alloc_buf_failed++;
+			rx_ring->ring_stats->rx_stats.alloc_buf_failed++;
 			break;
 		}
 
-- 
2.34.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
