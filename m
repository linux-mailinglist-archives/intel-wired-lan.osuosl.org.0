Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 379DF3B4167
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Jun 2021 12:19:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 379F8404BB;
	Fri, 25 Jun 2021 10:19:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rxO3-qs8_o0r; Fri, 25 Jun 2021 10:19:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F0B03400EC;
	Fri, 25 Jun 2021 10:19:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 11A941BF2A4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 10:18:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4978260716
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 10:18:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xmNdnShCWKxW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Jun 2021 10:18:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2E3E260707
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 10:18:52 +0000 (UTC)
IronPort-SDR: QGrF3wPHOf2bu/jZtp5iMD0CAFA6KmRGtEJXkYMIIcqP28kFFOUUkeQve8ll8Xub4Z8WK3VJDc
 rRU1QdsqwQQw==
X-IronPort-AV: E=McAfee;i="6200,9189,10025"; a="188026851"
X-IronPort-AV: E=Sophos;i="5.83,298,1616482800"; d="scan'208";a="188026851"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 03:18:51 -0700
IronPort-SDR: QCFxyfdd85CCsBUGPBqWaTGXUAykytd2rphNjhYpM7+jxbi8hZPCUUK7tfcKOhb1oNOAIYtCMe
 tjH3MWvhVgQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,298,1616482800"; d="scan'208";a="474832811"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga004.fm.intel.com with ESMTP; 25 Jun 2021 03:18:51 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 25 Jun 2021 04:44:57 +0200
Message-Id: <20210625024501.6126-9-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210625024501.6126-1-michal.swiatkowski@linux.intel.com>
References: <20210625024501.6126-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v3 08/12] ice: introduce new type
 of VSI for switchdev
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

From: Grzegorz Nitka <grzegorz.nitka@intel.com>

New type of VSI has to be defined for switchdev control plane
VSI. Number of allocated Tx and Rx queue has to be equeal to
amount of VFs, because each port representor should have one
Tx and Rx queue.

Also to not increase number of used irqs too much, control plane
VSI uses only one q_vector and handle all queues in one irq.
To allow handling all queues in one irq , new function to clean
msix for eswitch was introduced. This function will shedule napi
for each representor instead of sheduling it only for one like in
normal clean irq function.

Only one additional msix has to be requested. Always try to request
it in ice_ena_msix_range function.

Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |  1 +
 drivers/net/ethernet/intel/ice/ice_base.c    | 37 ++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_eswitch.c |  2 +-
 drivers/net/ethernet/intel/ice/ice_lib.c     | 48 +++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_main.c    |  7 +++
 drivers/net/ethernet/intel/ice/ice_type.h    |  1 +
 6 files changed, 93 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 14f3da0a8a82..fcddec1c1849 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -85,6 +85,7 @@
 #define ICE_FDIR_MSIX		2
 #define ICE_RDMA_NUM_AEQ_MSIX	4
 #define ICE_MIN_RDMA_MSIX	2
+#define ICE_ESWITCH_MSIX	1
 #define ICE_NO_VSI		0xffff
 #define ICE_VSI_MAP_CONTIG	0
 #define ICE_VSI_MAP_SCATTER	1
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index c36057efc7ae..59a0f312dab9 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -217,6 +217,31 @@ static u16 ice_calc_q_handle(struct ice_vsi *vsi, struct ice_ring *ring, u8 tc)
 	return ring->q_index - vsi->tc_cfg.tc_info[tc].qoffset;
 }
 
+/**
+ * ice_eswitch_calc_q_handle
+ * @ring: pointer to ring which unique index is needed
+ *
+ * To correctly work with many netdevs
+ * ring->q_index of Tx rings on switchdev VSI can repeat. Hardware ring setup
+ * requires unique q_index. Calculate it here by finding index in vsi->tx_rings
+ * of this ring.
+ *
+ * Return ICE_INVAL_Q_INDEX when index wasn't found. Should never happen, because VSI is get
+ * from ring->vsi, so it has to be present in this VSI.
+ */
+static u16 ice_eswitch_calc_q_handle(struct ice_ring *ring)
+{
+	struct ice_vsi *vsi = ring->vsi;
+	int i;
+
+	ice_for_each_txq(vsi, i) {
+		if (vsi->tx_rings[i] == ring)
+			return i;
+	}
+
+	return ICE_INVAL_Q_INDEX;
+}
+
 /**
  * ice_cfg_xps_tx_ring - Configure XPS for a Tx ring
  * @ring: The Tx ring to configure
@@ -280,6 +305,9 @@ ice_setup_tx_ctx(struct ice_ring *ring, struct ice_tlan_ctx *tlan_ctx, u16 pf_q)
 		tlan_ctx->vmvf_num = hw->func_caps.vf_base_id + vsi->vf_id;
 		tlan_ctx->vmvf_type = ICE_TLAN_CTX_VMVF_TYPE_VF;
 		break;
+	case ICE_VSI_SWITCHDEV_CTRL:
+		tlan_ctx->vmvf_type = ICE_TLAN_CTX_VMVF_TYPE_VMQ;
+		break;
 	default:
 		return;
 	}
@@ -746,7 +774,14 @@ ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_ring *ring,
 	/* Add unique software queue handle of the Tx queue per
 	 * TC into the VSI Tx ring
 	 */
-	ring->q_handle = ice_calc_q_handle(vsi, ring, tc);
+	if (vsi->type == ICE_VSI_SWITCHDEV_CTRL) {
+		ring->q_handle = ice_eswitch_calc_q_handle(ring);
+
+		if (ring->q_handle == ICE_INVAL_Q_INDEX)
+			return -ENODEV;
+	} else {
+		ring->q_handle = ice_calc_q_handle(vsi, ring, tc);
+	}
 
 	status = ice_ena_vsi_txq(vsi->port_info, vsi->idx, tc, ring->q_handle,
 				 1, qg_buf, buf_len, NULL);
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 90c5f8974279..d8299f34245e 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -260,7 +260,7 @@ ice_eswitch_release_env(struct ice_pf *pf)
 static struct ice_vsi *
 ice_eswitch_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
 {
-	return NULL;
+	return ice_vsi_setup(pf, pi, ICE_VSI_SWITCHDEV_CTRL, ICE_INVAL_VFID);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index f3414a3a5e56..22014e57ccda 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -24,6 +24,8 @@ const char *ice_vsi_type_str(enum ice_vsi_type vsi_type)
 		return "ICE_VSI_CTRL";
 	case ICE_VSI_LB:
 		return "ICE_VSI_LB";
+	case ICE_VSI_SWITCHDEV_CTRL:
+		return "ICE_VSI_SWITCHDEV_CTRL";
 	default:
 		return "unknown";
 	}
@@ -132,6 +134,7 @@ static void ice_vsi_set_num_desc(struct ice_vsi *vsi)
 {
 	switch (vsi->type) {
 	case ICE_VSI_PF:
+	case ICE_VSI_SWITCHDEV_CTRL:
 	case ICE_VSI_CTRL:
 	case ICE_VSI_LB:
 		/* a user could change the values of num_[tr]x_desc using
@@ -200,6 +203,14 @@ static void ice_vsi_set_num_qs(struct ice_vsi *vsi, u16 vf_id)
 					   max_t(int, vsi->alloc_rxq,
 						 vsi->alloc_txq));
 		break;
+	case ICE_VSI_SWITCHDEV_CTRL:
+		/* The number of queues for ctrl vsi is equal to number of VFs.
+		 * Each ring is associated to the corresponding VF_PR netdev.
+		 */
+		vsi->alloc_txq = pf->num_alloc_vfs;
+		vsi->alloc_rxq = pf->num_alloc_vfs;
+		vsi->num_q_vectors = 1;
+		break;
 	case ICE_VSI_VF:
 		vf = &pf->vf[vsi->vf_id];
 		if (vf->num_req_qs)
@@ -408,6 +419,21 @@ static irqreturn_t ice_msix_clean_rings(int __always_unused irq, void *data)
 	return IRQ_HANDLED;
 }
 
+static irqreturn_t ice_eswitch_msix_clean_rings(int __always_unused irq, void *data)
+{
+	struct ice_q_vector *q_vector = (struct ice_q_vector *)data;
+	struct ice_pf *pf = q_vector->vsi->back;
+	int i;
+
+	if (!q_vector->tx.ring && !q_vector->rx.ring)
+		return IRQ_HANDLED;
+
+	ice_for_each_vf(pf, i)
+		napi_schedule(&pf->vf[i].repr->q_vector->napi);
+
+	return IRQ_HANDLED;
+}
+
 /**
  * ice_vsi_alloc - Allocates the next available struct VSI in the PF
  * @pf: board private structure
@@ -448,6 +474,13 @@ ice_vsi_alloc(struct ice_pf *pf, enum ice_vsi_type vsi_type, u16 vf_id)
 		ice_vsi_set_num_qs(vsi, ICE_INVAL_VFID);
 
 	switch (vsi->type) {
+	case ICE_VSI_SWITCHDEV_CTRL:
+		if (ice_vsi_alloc_arrays(vsi))
+			goto err_rings;
+
+		/* Setup eswitch MSIX irq handler for VSI */
+		vsi->irq_handler = ice_eswitch_msix_clean_rings;
+		break;
 	case ICE_VSI_PF:
 		if (ice_vsi_alloc_arrays(vsi))
 			goto err_rings;
@@ -707,6 +740,12 @@ static void ice_vsi_set_rss_params(struct ice_vsi *vsi)
 				      BIT(cap->rss_table_entry_width));
 		vsi->rss_lut_type = ICE_AQC_GSET_RSS_LUT_TABLE_TYPE_PF;
 		break;
+	case ICE_VSI_SWITCHDEV_CTRL:
+		vsi->rss_table_size = ICE_VSIQF_HLUT_ARRAY_SIZE;
+		vsi->rss_size = min_t(u16, num_online_cpus(),
+				      BIT(cap->rss_table_entry_width));
+		vsi->rss_lut_type = ICE_AQC_GSET_RSS_LUT_TABLE_TYPE_VSI;
+		break;
 	case ICE_VSI_VF:
 		/* VF VSI will get a small RSS table.
 		 * For VSI_LUT, LUT size should be set to 64 bytes.
@@ -980,6 +1019,9 @@ static int ice_vsi_init(struct ice_vsi *vsi, bool init_vsi)
 	case ICE_VSI_PF:
 		ctxt->flags = ICE_AQ_VSI_TYPE_PF;
 		break;
+	case ICE_VSI_SWITCHDEV_CTRL:
+		ctxt->flags = ICE_AQ_VSI_TYPE_VMDQ2;
+		break;
 	case ICE_VSI_VF:
 		ctxt->flags = ICE_AQ_VSI_TYPE_VF;
 		/* VF number here is the absolute VF number (0-255) */
@@ -2294,6 +2336,7 @@ static void ice_set_agg_vsi(struct ice_vsi *vsi)
 	case ICE_VSI_CTRL:
 	case ICE_VSI_LB:
 	case ICE_VSI_PF:
+	case ICE_VSI_SWITCHDEV_CTRL:
 		max_agg_nodes = ICE_MAX_PF_AGG_NODES;
 		agg_node_id_start = ICE_PF_AGG_NODE_ID_START;
 		agg_node_iter = &pf->pf_agg_node[0];
@@ -2445,6 +2488,7 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 
 	switch (vsi->type) {
 	case ICE_VSI_CTRL:
+	case ICE_VSI_SWITCHDEV_CTRL:
 	case ICE_VSI_PF:
 		ret = ice_vsi_alloc_q_vectors(vsi);
 		if (ret)
@@ -2754,7 +2798,8 @@ void ice_dis_vsi(struct ice_vsi *vsi, bool locked)
 		} else {
 			ice_vsi_close(vsi);
 		}
-	} else if (vsi->type == ICE_VSI_CTRL) {
+	} else if (vsi->type == ICE_VSI_CTRL ||
+		   vsi->type == ICE_VSI_SWITCHDEV_CTRL) {
 		ice_vsi_close(vsi);
 	}
 }
@@ -3133,6 +3178,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 
 	switch (vtype) {
 	case ICE_VSI_CTRL:
+	case ICE_VSI_SWITCHDEV_CTRL:
 	case ICE_VSI_PF:
 		ret = ice_vsi_alloc_q_vectors(vsi);
 		if (ret)
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index de5903054b90..0c17134ae5dc 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3544,6 +3544,13 @@ static int ice_ena_msix_range(struct ice_pf *pf)
 		v_left -= needed;
 	}
 
+	/* reserve for switchdev */
+	needed = ICE_ESWITCH_MSIX;
+	if (v_left < needed)
+		goto no_hw_vecs_left_err;
+	v_budget += needed;
+	v_left -= needed;
+
 	/* total used for non-traffic vectors */
 	v_other = v_budget;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index d33d1906103c..b59076f2dbde 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -139,6 +139,7 @@ enum ice_vsi_type {
 	ICE_VSI_VF = 1,
 	ICE_VSI_CTRL = 3,	/* equates to ICE_VSI_PF with 1 queue pair */
 	ICE_VSI_LB = 6,
+	ICE_VSI_SWITCHDEV_CTRL = 7,
 };
 
 struct ice_link_status {
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
