Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CE62BBB42
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Nov 2020 01:47:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 93E1F86E92;
	Sat, 21 Nov 2020 00:47:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z4yzI8kn0V_T; Sat, 21 Nov 2020 00:47:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7662986FA2;
	Sat, 21 Nov 2020 00:47:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B966D1BF475
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:47:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A0D7F2E133
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:47:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Br+x2PabPfpB for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Nov 2020 00:46:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 1F4442E109
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:46:35 +0000 (UTC)
IronPort-SDR: GLOVqhtKPvOIP+a1FHbmKMpQn47Zs4f0nuRXsi2PTFFfDkR96+CsWqtR7kWtiWds2Qaa2TXCi9
 PZAPtV97CQZg==
X-IronPort-AV: E=McAfee;i="6000,8403,9811"; a="168053541"
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="168053541"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 16:46:33 -0800
IronPort-SDR: ePxnF3HYk7vjCALbFWsE4FYzzz2TQUUUcp438kpieMkGxEWzSFIiFb6zfel+IwJmcIVDjHkkaJ
 gJxntuGxDTqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="331520158"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga006.jf.intel.com with ESMTP; 20 Nov 2020 16:46:33 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Nov 2020 16:39:27 -0800
Message-Id: <20201121003938.48514-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201121003938.48514-1-anthony.l.nguyen@intel.com>
References: <20201121003938.48514-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S54 03/14] ice: create scheduler
 aggregator node config and move VSIs
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

From: Kiran Patil <kiran.patil@intel.com>

Create set scheduler aggregator node and move for VSIs into respective
scheduler node. Max children per aggregator node is 64.

There are two types of aggregator node(s) created.
1. dedicated node for PF and _CTRL VSIs
2. dedicated node(s) for VFs.

As part of reset and rebuild, aggregator nodes are recreated and VSIs
are moved to respective aggregator node.

Having related VSIs in respective tree avoid starvation between PF and VF
w.r.t Tx bandwidth.

Co-developed-by: Tarun Singh <tarun.k.singh@intel.com>
Signed-off-by: Tarun Singh <tarun.k.singh@intel.com>
Co-developed-by: Victor Raj <victor.raj@intel.com>
Signed-off-by: Victor Raj <victor.raj@intel.com>
Co-developed-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Kiran Patil <kiran.patil@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |   20 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   13 +
 drivers/net/ethernet/intel/ice/ice_common.c   |    4 +
 drivers/net/ethernet/intel/ice/ice_lib.c      |  125 ++
 drivers/net/ethernet/intel/ice/ice_main.c     |    8 +
 drivers/net/ethernet/intel/ice/ice_sched.c    | 1001 ++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_sched.h    |   16 +
 drivers/net/ethernet/intel/ice/ice_type.h     |    4 +
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |   36 +
 9 files changed, 1207 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index baee27b8184c..855db84d4186 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -330,6 +330,11 @@ struct ice_vsi {
 	struct ice_ring **xdp_rings;	 /* XDP ring array */
 	u16 num_xdp_txq;		 /* Used XDP queues */
 	u8 xdp_mapping_mode;		 /* ICE_MAP_MODE_[CONTIG|SCATTER] */
+
+	/* setup back reference, to which aggregator node this VSI
+	 * corresponds to
+	 */
+	struct ice_agg_node *agg_node;
 } ____cacheline_internodealigned_in_smp;
 
 /* struct that defines an interrupt vector */
@@ -378,6 +383,13 @@ enum ice_pf_flags {
 	ICE_PF_FLAGS_NBITS		/* must be last */
 };
 
+struct ice_agg_node {
+	u32 agg_id;
+#define ICE_MAX_VSIS_IN_AGG_NODE	64
+	u32 num_vsis;
+	u8 valid;
+};
+
 struct ice_pf {
 	struct pci_dev *pdev;
 
@@ -457,6 +469,14 @@ struct ice_pf {
 	__le64 nvm_phy_type_hi; /* NVM PHY type high */
 	struct ice_link_default_override_tlv link_dflt_override;
 	struct ice_lag *lag; /* Link Aggregation information */
+
+#define ICE_INVALID_AGG_NODE_ID		0
+#define ICE_PF_AGG_NODE_ID_START	1
+#define ICE_MAX_PF_AGG_NODES		32
+	struct ice_agg_node pf_agg_node[ICE_MAX_PF_AGG_NODES];
+#define ICE_VF_AGG_NODE_ID_START	65
+#define ICE_MAX_VF_AGG_NODES		32
+	struct ice_agg_node vf_agg_node[ICE_MAX_VF_AGG_NODES];
 };
 
 struct ice_netdev_priv {
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index d384ad2dfdab..caf09ac8a8c4 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -702,6 +702,18 @@ struct ice_aqc_sched_elem_cmd {
 	__le32 addr_low;
 };
 
+struct ice_aqc_txsched_move_grp_info_hdr {
+	__le32 src_parent_teid;
+	__le32 dest_parent_teid;
+	__le16 num_elems;
+	__le16 reserved;
+};
+
+struct ice_aqc_move_elem {
+	struct ice_aqc_txsched_move_grp_info_hdr hdr;
+	__le32 teid[];
+};
+
 struct ice_aqc_elem_info_bw {
 	__le16 bw_profile_idx;
 	__le16 bw_alloc;
@@ -2359,6 +2371,7 @@ enum ice_adminq_opc {
 	ice_aqc_opc_add_sched_elems			= 0x0401,
 	ice_aqc_opc_cfg_sched_elems			= 0x0403,
 	ice_aqc_opc_get_sched_elems			= 0x0404,
+	ice_aqc_opc_move_sched_elems			= 0x0408,
 	ice_aqc_opc_suspend_sched_elems			= 0x0409,
 	ice_aqc_opc_resume_sched_elems			= 0x040A,
 	ice_aqc_opc_query_port_ets			= 0x040E,
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index c462ac923b5d..5f6698ef9ab2 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -4077,6 +4077,7 @@ static enum ice_status ice_replay_pre_init(struct ice_hw *hw)
 	for (i = 0; i < ICE_SW_LKUP_LAST; i++)
 		list_replace_init(&sw->recp_list[i].filt_rules,
 				  &sw->recp_list[i].filt_replay_rules);
+	ice_sched_replay_agg_vsi_preinit(hw);
 
 	return 0;
 }
@@ -4108,6 +4109,8 @@ enum ice_status ice_replay_vsi(struct ice_hw *hw, u16 vsi_handle)
 		return status;
 	/* Replay per VSI all filters */
 	status = ice_replay_vsi_all_fltr(hw, vsi_handle);
+	if (!status)
+		status = ice_replay_vsi_agg(hw, vsi_handle);
 	return status;
 }
 
@@ -4121,6 +4124,7 @@ void ice_replay_post(struct ice_hw *hw)
 {
 	/* Delete old entries from replay filter list head */
 	ice_rm_all_sw_replay_rule_info(hw);
+	ice_sched_replay_agg(hw);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 34fad02a653d..b71d9e1d9262 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2168,6 +2168,126 @@ void ice_cfg_sw_lldp(struct ice_vsi *vsi, bool tx, bool create)
 			vsi->vsi_num, ice_stat_str(status));
 }
 
+/**
+ * ice_set_agg_vsi - sets up scheduler aggregator node and move VSI into it
+ * @vsi: pointer to the VSI
+ *
+ * This function will allocate new scheduler aggregator now if needed and will
+ * move specified VSI into it.
+ */
+static void ice_set_agg_vsi(struct ice_vsi *vsi)
+{
+	struct device *dev = ice_pf_to_dev(vsi->back);
+	struct ice_agg_node *agg_node_iter = NULL;
+	u32 agg_id = ICE_INVALID_AGG_NODE_ID;
+	struct ice_agg_node *agg_node = NULL;
+	int node_offset, max_agg_nodes = 0;
+	struct ice_port_info *port_info;
+	struct ice_pf *pf = vsi->back;
+	u32 agg_node_id_start = 0;
+	enum ice_status status;
+
+	/* create (as needed) scheduler aggregator node and move VSI into
+	 * corresponding aggregator node
+	 * - PF aggregator node to contains VSIs of type _PF and _CTRL
+	 * - VF aggregator nodes will contain VF VSI
+	 */
+	port_info = pf->hw.port_info;
+	if (!port_info)
+		return;
+
+	switch (vsi->type) {
+	case ICE_VSI_CTRL:
+	case ICE_VSI_LB:
+	case ICE_VSI_PF:
+		max_agg_nodes = ICE_MAX_PF_AGG_NODES;
+		agg_node_id_start = ICE_PF_AGG_NODE_ID_START;
+		agg_node_iter = &pf->pf_agg_node[0];
+		break;
+	case ICE_VSI_VF:
+		/* user can create 'n' VFs on a given PF, but since max children
+		 * per aggregator node can be only 64. Following code handles
+		 * aggregator(s) for VF VSIs, either selects a agg_node which
+		 * was already created provided num_vsis < 64, otherwise
+		 * select next available node, which will be created
+		 */
+		max_agg_nodes = ICE_MAX_VF_AGG_NODES;
+		agg_node_id_start = ICE_VF_AGG_NODE_ID_START;
+		agg_node_iter = &pf->vf_agg_node[0];
+		break;
+	default:
+		/* other VSI type, handle later if needed */
+		dev_dbg(dev, "unexpected VSI type %s\n",
+			ice_vsi_type_str(vsi->type));
+		return;
+	}
+
+	/* find the appropriate aggregator node */
+	for (node_offset = 0; node_offset < max_agg_nodes; node_offset++) {
+		/* see if we can find space in previously created
+		 * node if num_vsis < 64, otherwise skip
+		 */
+		if (agg_node_iter->num_vsis &&
+		    agg_node_iter->num_vsis == ICE_MAX_VSIS_IN_AGG_NODE) {
+			agg_node_iter++;
+			continue;
+		}
+
+		if (agg_node_iter->valid &&
+		    agg_node_iter->agg_id != ICE_INVALID_AGG_NODE_ID) {
+			agg_id = agg_node_iter->agg_id;
+			agg_node = agg_node_iter;
+			break;
+		}
+
+		/* find unclaimed agg_id */
+		if (agg_node_iter->agg_id == ICE_INVALID_AGG_NODE_ID) {
+			agg_id = node_offset + agg_node_id_start;
+			agg_node = agg_node_iter;
+			break;
+		}
+		/* move to next agg_node */
+		agg_node_iter++;
+	}
+
+	if (!agg_node)
+		return;
+
+	/* if selected aggregator node was not created, create it */
+	if (!agg_node->valid) {
+		status = ice_cfg_agg(port_info, agg_id, ICE_AGG_TYPE_AGG,
+				     vsi->tc_cfg.ena_tc);
+		if (status) {
+			dev_err(dev, "unable to create aggregator node with agg_id %u\n",
+				agg_id);
+			return;
+		}
+		/* aggregator node is created, store the neeeded info */
+		agg_node->valid = true;
+		agg_node->agg_id = agg_id;
+	}
+
+	/* move VSI to corresponding aggregator node */
+	status = ice_move_vsi_to_agg(port_info, agg_id, vsi->idx,
+				     vsi->tc_cfg.ena_tc);
+	if (status) {
+		dev_err(dev, "unable to move VSI idx %u into aggregator %u node",
+			vsi->idx, agg_id);
+		return;
+	}
+
+	/* keep active children count for aggregator node */
+	agg_node->num_vsis++;
+
+	/* cache the 'agg_id' in VSI, so that after reset - VSI will be moved
+	 * to aggregator node
+	 */
+	vsi->agg_node = agg_node;
+	dev_dbg(dev, "successfully moved VSI idx %u tc_bitmap 0x%x) into aggregator node %d which has num_vsis %u\n",
+		vsi->idx, vsi->tc_cfg.ena_tc, vsi->agg_node->agg_id,
+		vsi->agg_node->num_vsis);
+}
+
 /**
  * ice_vsi_setup - Set up a VSI by a given type
  * @pf: board private structure
@@ -2338,6 +2458,8 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 			ice_cfg_sw_lldp(vsi, true, true);
 		}
 
+	if (!vsi->agg_node)
+		ice_set_agg_vsi(vsi);
 	return vsi;
 
 unroll_clear_rings:
@@ -2682,6 +2804,9 @@ int ice_vsi_release(struct ice_vsi *vsi)
 		vsi->netdev = NULL;
 	}
 
+	if (vsi->type == ICE_VSI_VF &&
+	    vsi->agg_node && vsi->agg_node->valid)
+		vsi->agg_node->num_vsis--;
 	ice_vsi_clear_rings(vsi);
 
 	ice_vsi_put_qs(vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0b120d9b5a83..647f6c105c65 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -435,11 +435,19 @@ static void ice_sync_fltr_subtask(struct ice_pf *pf)
  */
 static void ice_pf_dis_all_vsi(struct ice_pf *pf, bool locked)
 {
+	int node;
 	int v;
 
 	ice_for_each_vsi(pf, v)
 		if (pf->vsi[v])
 			ice_dis_vsi(pf->vsi[v], locked);
+
+	for (node = 0; node < ICE_MAX_PF_AGG_NODES; node++)
+		pf->pf_agg_node[node].num_vsis = 0;
+
+	for (node = 0; node < ICE_MAX_VF_AGG_NODES; node++)
+		pf->vf_agg_node[node].num_vsis = 0;
+
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index f0912e44d4ad..b4f425c0b7f5 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -430,6 +430,27 @@ ice_aq_cfg_sched_elems(struct ice_hw *hw, u16 elems_req,
 					   elems_cfgd, cd);
 }
 
+/**
+ * ice_aq_move_sched_elems - move scheduler elements
+ * @hw: pointer to the HW struct
+ * @grps_req: number of groups to move
+ * @buf: pointer to buffer
+ * @buf_size: buffer size in bytes
+ * @grps_movd: returns total number of groups moved
+ * @cd: pointer to command details structure or NULL
+ *
+ * Move scheduling elements (0x0408)
+ */
+static enum ice_status
+ice_aq_move_sched_elems(struct ice_hw *hw, u16 grps_req,
+			struct ice_aqc_move_elem *buf, u16 buf_size,
+			u16 *grps_movd, struct ice_sq_cd *cd)
+{
+	return ice_aqc_send_sched_elem_cmd(hw, ice_aqc_opc_move_sched_elems,
+					   grps_req, (void *)buf, buf_size,
+					   grps_movd, cd);
+}
+
 /**
  * ice_aq_suspend_sched_elems - suspend scheduler elements
  * @hw: pointer to the HW struct
@@ -1021,6 +1042,28 @@ static u8 ice_sched_get_vsi_layer(struct ice_hw *hw)
 	return hw->sw_entry_point_layer;
 }
 
+/**
+ * ice_sched_get_agg_layer - get the current aggregator layer number
+ * @hw: pointer to the HW struct
+ *
+ * This function returns the current aggregator layer number
+ */
+static u8 ice_sched_get_agg_layer(struct ice_hw *hw)
+{
+	/* Num Layers       aggregator layer
+	 *     9               4
+	 *     7 or less       sw_entry_point_layer
+	 */
+	/* calculate the aggregator layer based on number of layers. */
+	if (hw->num_tx_sched_layers > ICE_AGG_LAYER_OFFSET + 1) {
+		u8 layer = hw->num_tx_sched_layers - ICE_AGG_LAYER_OFFSET;
+
+		if (layer > hw->sw_entry_point_layer)
+			return layer;
+	}
+	return hw->sw_entry_point_layer;
+}
+
 /**
  * ice_rm_dflt_leaf_node - remove the default leaf node in the tree
  * @pi: port information structure
@@ -1364,7 +1407,7 @@ ice_sched_get_free_qparent(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 
 /**
  * ice_sched_get_vsi_node - Get a VSI node based on VSI ID
- * @hw: pointer to the HW struct
+ * @pi: pointer to the port information structure
  * @tc_node: pointer to the TC node
  * @vsi_handle: software VSI handle
  *
@@ -1372,14 +1415,14 @@ ice_sched_get_free_qparent(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
  * TC branch
  */
 static struct ice_sched_node *
-ice_sched_get_vsi_node(struct ice_hw *hw, struct ice_sched_node *tc_node,
+ice_sched_get_vsi_node(struct ice_port_info *pi, struct ice_sched_node *tc_node,
 		       u16 vsi_handle)
 {
 	struct ice_sched_node *node;
 	u8 vsi_layer;
 
-	vsi_layer = ice_sched_get_vsi_layer(hw);
-	node = ice_sched_get_first_node(hw->port_info, tc_node, vsi_layer);
+	vsi_layer = ice_sched_get_vsi_layer(pi->hw);
+	node = ice_sched_get_first_node(pi, tc_node, vsi_layer);
 
 	/* Check whether it already exists */
 	while (node) {
@@ -1391,6 +1434,38 @@ ice_sched_get_vsi_node(struct ice_hw *hw, struct ice_sched_node *tc_node,
 	return node;
 }
 
+/**
+ * ice_sched_get_agg_node - Get an aggregator node based on aggregator ID
+ * @pi: pointer to the port information structure
+ * @tc_node: pointer to the TC node
+ * @agg_id: aggregator ID
+ *
+ * This function retrieves an aggregator node for a given aggregator ID from
+ * a given TC branch
+ */
+static struct ice_sched_node *
+ice_sched_get_agg_node(struct ice_port_info *pi, struct ice_sched_node *tc_node,
+		       u32 agg_id)
+{
+	struct ice_sched_node *node;
+	struct ice_hw *hw = pi->hw;
+	u8 agg_layer;
+
+	if (!hw)
+		return NULL;
+	agg_layer = ice_sched_get_agg_layer(hw);
+	node = ice_sched_get_first_node(pi, tc_node, agg_layer);
+
+	/* Check whether it already exists */
+	while (node) {
+		if (node->agg_id == agg_id)
+			return node;
+		node = node->sibling;
+	}
+
+	return node;
+}
+
 /**
  * ice_sched_calc_vsi_child_nodes - calculate number of VSI child nodes
  * @hw: pointer to the HW struct
@@ -1444,7 +1519,7 @@ ice_sched_add_vsi_child_nodes(struct ice_port_info *pi, u16 vsi_handle,
 
 	qgl = ice_sched_get_qgrp_layer(hw);
 	vsil = ice_sched_get_vsi_layer(hw);
-	parent = ice_sched_get_vsi_node(hw, tc_node, vsi_handle);
+	parent = ice_sched_get_vsi_node(pi, tc_node, vsi_handle);
 	for (i = vsil + 1; i <= qgl; i++) {
 		if (!parent)
 			return ICE_ERR_CFG;
@@ -1477,7 +1552,7 @@ ice_sched_add_vsi_child_nodes(struct ice_port_info *pi, u16 vsi_handle,
 
 /**
  * ice_sched_calc_vsi_support_nodes - calculate number of VSI support nodes
- * @hw: pointer to the HW struct
+ * @pi: pointer to the port info structure
  * @tc_node: pointer to TC node
  * @num_nodes: pointer to num nodes array
  *
@@ -1486,15 +1561,15 @@ ice_sched_add_vsi_child_nodes(struct ice_port_info *pi, u16 vsi_handle,
  * layers
  */
 static void
-ice_sched_calc_vsi_support_nodes(struct ice_hw *hw,
+ice_sched_calc_vsi_support_nodes(struct ice_port_info *pi,
 				 struct ice_sched_node *tc_node, u16 *num_nodes)
 {
 	struct ice_sched_node *node;
 	u8 vsil;
 	int i;
 
-	vsil = ice_sched_get_vsi_layer(hw);
-	for (i = vsil; i >= hw->sw_entry_point_layer; i--)
+	vsil = ice_sched_get_vsi_layer(pi->hw);
+	for (i = vsil; i >= pi->hw->sw_entry_point_layer; i--)
 		/* Add intermediate nodes if TC has no children and
 		 * need at least one node for VSI
 		 */
@@ -1504,11 +1579,10 @@ ice_sched_calc_vsi_support_nodes(struct ice_hw *hw,
 			/* If intermediate nodes are reached max children
 			 * then add a new one.
 			 */
-			node = ice_sched_get_first_node(hw->port_info, tc_node,
-							(u8)i);
+			node = ice_sched_get_first_node(pi, tc_node, (u8)i);
 			/* scan all the siblings */
 			while (node) {
-				if (node->num_children < hw->max_children[i])
+				if (node->num_children < pi->hw->max_children[i])
 					break;
 				node = node->sibling;
 			}
@@ -1588,14 +1662,13 @@ ice_sched_add_vsi_to_topo(struct ice_port_info *pi, u16 vsi_handle, u8 tc)
 {
 	u16 num_nodes[ICE_AQC_TOPO_MAX_LEVEL_NUM] = { 0 };
 	struct ice_sched_node *tc_node;
-	struct ice_hw *hw = pi->hw;
 
 	tc_node = ice_sched_get_tc_node(pi, tc);
 	if (!tc_node)
 		return ICE_ERR_PARAM;
 
 	/* calculate number of supported nodes needed for this VSI */
-	ice_sched_calc_vsi_support_nodes(hw, tc_node, num_nodes);
+	ice_sched_calc_vsi_support_nodes(pi, tc_node, num_nodes);
 
 	/* add VSI supported nodes to TC subtree */
 	return ice_sched_add_vsi_support_nodes(pi, vsi_handle, tc_node,
@@ -1628,7 +1701,7 @@ ice_sched_update_vsi_child_nodes(struct ice_port_info *pi, u16 vsi_handle,
 	if (!tc_node)
 		return ICE_ERR_CFG;
 
-	vsi_node = ice_sched_get_vsi_node(hw, tc_node, vsi_handle);
+	vsi_node = ice_sched_get_vsi_node(pi, tc_node, vsi_handle);
 	if (!vsi_node)
 		return ICE_ERR_CFG;
 
@@ -1691,7 +1764,7 @@ ice_sched_cfg_vsi(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u16 maxqs,
 	vsi_ctx = ice_get_vsi_ctx(hw, vsi_handle);
 	if (!vsi_ctx)
 		return ICE_ERR_PARAM;
-	vsi_node = ice_sched_get_vsi_node(hw, tc_node, vsi_handle);
+	vsi_node = ice_sched_get_vsi_node(pi, tc_node, vsi_handle);
 
 	/* suspend the VSI if TC is not enabled */
 	if (!enable) {
@@ -1712,7 +1785,7 @@ ice_sched_cfg_vsi(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u16 maxqs,
 		if (status)
 			return status;
 
-		vsi_node = ice_sched_get_vsi_node(hw, tc_node, vsi_handle);
+		vsi_node = ice_sched_get_vsi_node(pi, tc_node, vsi_handle);
 		if (!vsi_node)
 			return ICE_ERR_CFG;
 
@@ -1821,7 +1894,7 @@ ice_sched_rm_vsi_cfg(struct ice_port_info *pi, u16 vsi_handle, u8 owner)
 		if (!tc_node)
 			continue;
 
-		vsi_node = ice_sched_get_vsi_node(pi->hw, tc_node, vsi_handle);
+		vsi_node = ice_sched_get_vsi_node(pi, tc_node, vsi_handle);
 		if (!vsi_node)
 			continue;
 
@@ -1873,6 +1946,720 @@ enum ice_status ice_rm_vsi_lan_cfg(struct ice_port_info *pi, u16 vsi_handle)
 	return ice_sched_rm_vsi_cfg(pi, vsi_handle, ICE_SCHED_NODE_OWNER_LAN);
 }
 
+/**
+ * ice_get_agg_info - get the aggregator ID
+ * @hw: pointer to the hardware structure
+ * @agg_id: aggregator ID
+ *
+ * This function validates aggregator ID. The function returns info if
+ * aggregator ID is present in list otherwise it returns null.
+ */
+static struct ice_sched_agg_info *
+ice_get_agg_info(struct ice_hw *hw, u32 agg_id)
+{
+	struct ice_sched_agg_info *agg_info;
+
+	list_for_each_entry(agg_info, &hw->agg_list, list_entry)
+		if (agg_info->agg_id == agg_id)
+			return agg_info;
+
+	return NULL;
+}
+
+/**
+ * ice_sched_get_free_vsi_parent - Find a free parent node in aggregator subtree
+ * @hw: pointer to the HW struct
+ * @node: pointer to a child node
+ * @num_nodes: num nodes count array
+ *
+ * This function walks through the aggregator subtree to find a free parent
+ * node
+ */
+static struct ice_sched_node *
+ice_sched_get_free_vsi_parent(struct ice_hw *hw, struct ice_sched_node *node,
+			      u16 *num_nodes)
+{
+	u8 l = node->tx_sched_layer;
+	u8 vsil, i;
+
+	vsil = ice_sched_get_vsi_layer(hw);
+
+	/* Is it VSI parent layer ? */
+	if (l == vsil - 1)
+		return (node->num_children < hw->max_children[l]) ? node : NULL;
+
+	/* We have intermediate nodes. Let's walk through the subtree. If the
+	 * intermediate node has space to add a new node then clear the count
+	 */
+	if (node->num_children < hw->max_children[l])
+		num_nodes[l] = 0;
+	/* The below recursive call is intentional and wouldn't go more than
+	 * 2 or 3 iterations.
+	 */
+
+	for (i = 0; i < node->num_children; i++) {
+		struct ice_sched_node *parent;
+
+		parent = ice_sched_get_free_vsi_parent(hw, node->children[i],
+						       num_nodes);
+		if (parent)
+			return parent;
+	}
+
+	return NULL;
+}
+
+/**
+ * ice_sched_update_parent - update the new parent in SW DB
+ * @new_parent: pointer to a new parent node
+ * @node: pointer to a child node
+ *
+ * This function removes the child from the old parent and adds it to a new
+ * parent
+ */
+static void
+ice_sched_update_parent(struct ice_sched_node *new_parent,
+			struct ice_sched_node *node)
+{
+	struct ice_sched_node *old_parent;
+	u8 i, j;
+
+	old_parent = node->parent;
+
+	/* update the old parent children */
+	for (i = 0; i < old_parent->num_children; i++)
+		if (old_parent->children[i] == node) {
+			for (j = i + 1; j < old_parent->num_children; j++)
+				old_parent->children[j - 1] =
+					old_parent->children[j];
+			old_parent->num_children--;
+			break;
+		}
+
+	/* now move the node to a new parent */
+	new_parent->children[new_parent->num_children++] = node;
+	node->parent = new_parent;
+	node->info.parent_teid = new_parent->info.node_teid;
+}
+
+/**
+ * ice_sched_move_nodes - move child nodes to a given parent
+ * @pi: port information structure
+ * @parent: pointer to parent node
+ * @num_items: number of child nodes to be moved
+ * @list: pointer to child node teids
+ *
+ * This function move the child nodes to a given parent.
+ */
+static enum ice_status
+ice_sched_move_nodes(struct ice_port_info *pi, struct ice_sched_node *parent,
+		     u16 num_items, u32 *list)
+{
+	struct ice_aqc_move_elem *buf;
+	struct ice_sched_node *node;
+	enum ice_status status = 0;
+	u16 i, grps_movd = 0;
+	struct ice_hw *hw;
+	u16 buf_len;
+
+	hw = pi->hw;
+
+	if (!parent || !num_items)
+		return ICE_ERR_PARAM;
+
+	/* Does parent have enough space */
+	if (parent->num_children + num_items >
+	    hw->max_children[parent->tx_sched_layer])
+		return ICE_ERR_AQ_FULL;
+
+	buf_len = struct_size(buf, teid, 1);
+	buf = kzalloc(buf_len, GFP_KERNEL);
+	if (!buf)
+		return ICE_ERR_NO_MEMORY;
+
+	for (i = 0; i < num_items; i++) {
+		node = ice_sched_find_node_by_teid(pi->root, list[i]);
+		if (!node) {
+			status = ICE_ERR_PARAM;
+			goto move_err_exit;
+		}
+
+		buf->hdr.src_parent_teid = node->info.parent_teid;
+		buf->hdr.dest_parent_teid = parent->info.node_teid;
+		buf->teid[0] = node->info.node_teid;
+		buf->hdr.num_elems = cpu_to_le16(1);
+		status = ice_aq_move_sched_elems(hw, 1, buf, buf_len,
+						 &grps_movd, NULL);
+		if (status && grps_movd != 1) {
+			status = ICE_ERR_CFG;
+			goto move_err_exit;
+		}
+
+		/* update the SW DB */
+		ice_sched_update_parent(parent, node);
+	}
+
+move_err_exit:
+	kfree(buf);
+	return status;
+}
+
+/**
+ * ice_sched_move_vsi_to_agg - move VSI to aggregator node
+ * @pi: port information structure
+ * @vsi_handle: software VSI handle
+ * @agg_id: aggregator ID
+ * @tc: TC number
+ *
+ * This function moves a VSI to an aggregator node or its subtree.
+ * Intermediate nodes may be created if required.
+ */
+static enum ice_status
+ice_sched_move_vsi_to_agg(struct ice_port_info *pi, u16 vsi_handle, u32 agg_id,
+			  u8 tc)
+{
+	struct ice_sched_node *vsi_node, *agg_node, *tc_node, *parent;
+	u16 num_nodes[ICE_AQC_TOPO_MAX_LEVEL_NUM] = { 0 };
+	u32 first_node_teid, vsi_teid;
+	enum ice_status status;
+	u16 num_nodes_added;
+	u8 aggl, vsil, i;
+
+	tc_node = ice_sched_get_tc_node(pi, tc);
+	if (!tc_node)
+		return ICE_ERR_CFG;
+
+	agg_node = ice_sched_get_agg_node(pi, tc_node, agg_id);
+	if (!agg_node)
+		return ICE_ERR_DOES_NOT_EXIST;
+
+	vsi_node = ice_sched_get_vsi_node(pi, tc_node, vsi_handle);
+	if (!vsi_node)
+		return ICE_ERR_DOES_NOT_EXIST;
+
+	/* Is this VSI already part of given aggregator? */
+	if (ice_sched_find_node_in_subtree(pi->hw, agg_node, vsi_node))
+		return 0;
+
+	aggl = ice_sched_get_agg_layer(pi->hw);
+	vsil = ice_sched_get_vsi_layer(pi->hw);
+
+	/* set intermediate node count to 1 between aggregator and VSI layers */
+	for (i = aggl + 1; i < vsil; i++)
+		num_nodes[i] = 1;
+
+	/* Check if the aggregator subtree has any free node to add the VSI */
+	for (i = 0; i < agg_node->num_children; i++) {
+		parent = ice_sched_get_free_vsi_parent(pi->hw,
+						       agg_node->children[i],
+						       num_nodes);
+		if (parent)
+			goto move_nodes;
+	}
+
+	/* add new nodes */
+	parent = agg_node;
+	for (i = aggl + 1; i < vsil; i++) {
+		status = ice_sched_add_nodes_to_layer(pi, tc_node, parent, i,
+						      num_nodes[i],
+						      &first_node_teid,
+						      &num_nodes_added);
+		if (status || num_nodes[i] != num_nodes_added)
+			return ICE_ERR_CFG;
+
+		/* The newly added node can be a new parent for the next
+		 * layer nodes
+		 */
+		if (num_nodes_added)
+			parent = ice_sched_find_node_by_teid(tc_node,
+							     first_node_teid);
+		else
+			parent = parent->children[0];
+
+		if (!parent)
+			return ICE_ERR_CFG;
+	}
+
+move_nodes:
+	vsi_teid = le32_to_cpu(vsi_node->info.node_teid);
+	return ice_sched_move_nodes(pi, parent, 1, &vsi_teid);
+}
+
+/**
+ * ice_move_all_vsi_to_dflt_agg - move all VSI(s) to default aggregator
+ * @pi: port information structure
+ * @agg_info: aggregator info
+ * @tc: traffic class number
+ * @rm_vsi_info: true or false
+ *
+ * This function move all the VSI(s) to the default aggregator and delete
+ * aggregator VSI info based on passed in boolean parameter rm_vsi_info. The
+ * caller holds the scheduler lock.
+ */
+static enum ice_status
+ice_move_all_vsi_to_dflt_agg(struct ice_port_info *pi,
+			     struct ice_sched_agg_info *agg_info, u8 tc,
+			     bool rm_vsi_info)
+{
+	struct ice_sched_agg_vsi_info *agg_vsi_info;
+	struct ice_sched_agg_vsi_info *tmp;
+	enum ice_status status = 0;
+
+	list_for_each_entry_safe(agg_vsi_info, tmp, &agg_info->agg_vsi_list,
+				 list_entry) {
+		u16 vsi_handle = agg_vsi_info->vsi_handle;
+
+		/* Move VSI to default aggregator */
+		if (!ice_is_tc_ena(agg_vsi_info->tc_bitmap[0], tc))
+			continue;
+
+		status = ice_sched_move_vsi_to_agg(pi, vsi_handle,
+						   ICE_DFLT_AGG_ID, tc);
+		if (status)
+			break;
+
+		clear_bit(tc, agg_vsi_info->tc_bitmap);
+		if (rm_vsi_info && !agg_vsi_info->tc_bitmap[0]) {
+			list_del(&agg_vsi_info->list_entry);
+			devm_kfree(ice_hw_to_dev(pi->hw), agg_vsi_info);
+		}
+	}
+
+	return status;
+}
+
+/**
+ * ice_sched_is_agg_inuse - check whether the aggregator is in use or not
+ * @pi: port information structure
+ * @node: node pointer
+ *
+ * This function checks whether the aggregator is attached with any VSI or not.
+ */
+static bool
+ice_sched_is_agg_inuse(struct ice_port_info *pi, struct ice_sched_node *node)
+{
+	u8 vsil, i;
+
+	vsil = ice_sched_get_vsi_layer(pi->hw);
+	if (node->tx_sched_layer < vsil - 1) {
+		for (i = 0; i < node->num_children; i++)
+			if (ice_sched_is_agg_inuse(pi, node->children[i]))
+				return true;
+		return false;
+	} else {
+		return node->num_children ? true : false;
+	}
+}
+
+/**
+ * ice_sched_rm_agg_cfg - remove the aggregator node
+ * @pi: port information structure
+ * @agg_id: aggregator ID
+ * @tc: TC number
+ *
+ * This function removes the aggregator node and intermediate nodes if any
+ * from the given TC
+ */
+static enum ice_status
+ice_sched_rm_agg_cfg(struct ice_port_info *pi, u32 agg_id, u8 tc)
+{
+	struct ice_sched_node *tc_node, *agg_node;
+	struct ice_hw *hw = pi->hw;
+
+	tc_node = ice_sched_get_tc_node(pi, tc);
+	if (!tc_node)
+		return ICE_ERR_CFG;
+
+	agg_node = ice_sched_get_agg_node(pi, tc_node, agg_id);
+	if (!agg_node)
+		return ICE_ERR_DOES_NOT_EXIST;
+
+	/* Can't remove the aggregator node if it has children */
+	if (ice_sched_is_agg_inuse(pi, agg_node))
+		return ICE_ERR_IN_USE;
+
+	/* need to remove the whole subtree if aggregator node is the
+	 * only child.
+	 */
+	while (agg_node->tx_sched_layer > hw->sw_entry_point_layer) {
+		struct ice_sched_node *parent = agg_node->parent;
+
+		if (!parent)
+			return ICE_ERR_CFG;
+
+		if (parent->num_children > 1)
+			break;
+
+		agg_node = parent;
+	}
+
+	ice_free_sched_node(pi, agg_node);
+	return 0;
+}
+
+/**
+ * ice_rm_agg_cfg_tc - remove aggregator configuration for TC
+ * @pi: port information structure
+ * @agg_info: aggregator ID
+ * @tc: TC number
+ * @rm_vsi_info: bool value true or false
+ *
+ * This function removes aggregator reference to VSI of given TC. It removes
+ * the aggregator configuration completely for requested TC. The caller needs
+ * to hold the scheduler lock.
+ */
+static enum ice_status
+ice_rm_agg_cfg_tc(struct ice_port_info *pi, struct ice_sched_agg_info *agg_info,
+		  u8 tc, bool rm_vsi_info)
+{
+	enum ice_status status = 0;
+
+	/* If nothing to remove - return success */
+	if (!ice_is_tc_ena(agg_info->tc_bitmap[0], tc))
+		goto exit_rm_agg_cfg_tc;
+
+	status = ice_move_all_vsi_to_dflt_agg(pi, agg_info, tc, rm_vsi_info);
+	if (status)
+		goto exit_rm_agg_cfg_tc;
+
+	/* Delete aggregator node(s) */
+	status = ice_sched_rm_agg_cfg(pi, agg_info->agg_id, tc);
+	if (status)
+		goto exit_rm_agg_cfg_tc;
+
+	clear_bit(tc, agg_info->tc_bitmap);
+exit_rm_agg_cfg_tc:
+	return status;
+}
+
+/**
+ * ice_save_agg_tc_bitmap - save aggregator TC bitmap
+ * @pi: port information structure
+ * @agg_id: aggregator ID
+ * @tc_bitmap: 8 bits TC bitmap
+ *
+ * Save aggregator TC bitmap. This function needs to be called with scheduler
+ * lock held.
+ */
+static enum ice_status
+ice_save_agg_tc_bitmap(struct ice_port_info *pi, u32 agg_id,
+		       unsigned long *tc_bitmap)
+{
+	struct ice_sched_agg_info *agg_info;
+
+	agg_info = ice_get_agg_info(pi->hw, agg_id);
+	if (!agg_info)
+		return ICE_ERR_PARAM;
+	bitmap_copy(agg_info->replay_tc_bitmap, tc_bitmap,
+		    ICE_MAX_TRAFFIC_CLASS);
+	return 0;
+}
+
+/**
+ * ice_sched_add_agg_cfg - create an aggregator node
+ * @pi: port information structure
+ * @agg_id: aggregator ID
+ * @tc: TC number
+ *
+ * This function creates an aggregator node and intermediate nodes if required
+ * for the given TC
+ */
+static enum ice_status
+ice_sched_add_agg_cfg(struct ice_port_info *pi, u32 agg_id, u8 tc)
+{
+	struct ice_sched_node *parent, *agg_node, *tc_node;
+	u16 num_nodes[ICE_AQC_TOPO_MAX_LEVEL_NUM] = { 0 };
+	enum ice_status status = 0;
+	struct ice_hw *hw = pi->hw;
+	u32 first_node_teid;
+	u16 num_nodes_added;
+	u8 i, aggl;
+
+	tc_node = ice_sched_get_tc_node(pi, tc);
+	if (!tc_node)
+		return ICE_ERR_CFG;
+
+	agg_node = ice_sched_get_agg_node(pi, tc_node, agg_id);
+	/* Does Agg node already exist ? */
+	if (agg_node)
+		return status;
+
+	aggl = ice_sched_get_agg_layer(hw);
+
+	/* need one node in Agg layer */
+	num_nodes[aggl] = 1;
+
+	/* Check whether the intermediate nodes have space to add the
+	 * new aggregator. If they are full, then SW needs to allocate a new
+	 * intermediate node on those layers
+	 */
+	for (i = hw->sw_entry_point_layer; i < aggl; i++) {
+		parent = ice_sched_get_first_node(pi, tc_node, i);
+
+		/* scan all the siblings */
+		while (parent) {
+			if (parent->num_children < hw->max_children[i])
+				break;
+			parent = parent->sibling;
+		}
+
+		/* all the nodes are full, reserve one for this layer */
+		if (!parent)
+			num_nodes[i]++;
+	}
+
+	/* add the aggregator node */
+	parent = tc_node;
+	for (i = hw->sw_entry_point_layer; i <= aggl; i++) {
+		if (!parent)
+			return ICE_ERR_CFG;
+
+		status = ice_sched_add_nodes_to_layer(pi, tc_node, parent, i,
+						      num_nodes[i],
+						      &first_node_teid,
+						      &num_nodes_added);
+		if (status || num_nodes[i] != num_nodes_added)
+			return ICE_ERR_CFG;
+
+		/* The newly added node can be a new parent for the next
+		 * layer nodes
+		 */
+		if (num_nodes_added) {
+			parent = ice_sched_find_node_by_teid(tc_node,
+							     first_node_teid);
+			/* register aggregator ID with the aggregator node */
+			if (parent && i == aggl)
+				parent->agg_id = agg_id;
+		} else {
+			parent = parent->children[0];
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * ice_sched_cfg_agg - configure aggregator node
+ * @pi: port information structure
+ * @agg_id: aggregator ID
+ * @agg_type: aggregator type queue, VSI, or aggregator group
+ * @tc_bitmap: bits TC bitmap
+ *
+ * It registers a unique aggregator node into scheduler services. It
+ * allows a user to register with a unique ID to track it's resources.
+ * The aggregator type determines if this is a queue group, VSI group
+ * or aggregator group. It then creates the aggregator node(s) for requested
+ * TC(s) or removes an existing aggregator node including its configuration
+ * if indicated via tc_bitmap. Call ice_rm_agg_cfg to release aggregator
+ * resources and remove aggregator ID.
+ * This function needs to be called with scheduler lock held.
+ */
+static enum ice_status
+ice_sched_cfg_agg(struct ice_port_info *pi, u32 agg_id,
+		  enum ice_agg_type agg_type, unsigned long *tc_bitmap)
+{
+	struct ice_sched_agg_info *agg_info;
+	enum ice_status status = 0;
+	struct ice_hw *hw = pi->hw;
+	u8 tc;
+
+	agg_info = ice_get_agg_info(hw, agg_id);
+	if (!agg_info) {
+		/* Create new entry for new aggregator ID */
+		agg_info = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*agg_info),
+					GFP_KERNEL);
+		if (!agg_info)
+			return ICE_ERR_NO_MEMORY;
+
+		agg_info->agg_id = agg_id;
+		agg_info->agg_type = agg_type;
+		agg_info->tc_bitmap[0] = 0;
+
+		/* Initialize the aggregator VSI list head */
+		INIT_LIST_HEAD(&agg_info->agg_vsi_list);
+
+		/* Add new entry in aggregator list */
+		list_add(&agg_info->list_entry, &hw->agg_list);
+	}
+	/* Create aggregator node(s) for requested TC(s) */
+	ice_for_each_traffic_class(tc) {
+		if (!ice_is_tc_ena(*tc_bitmap, tc)) {
+			/* Delete aggregator cfg TC if it exists previously */
+			status = ice_rm_agg_cfg_tc(pi, agg_info, tc, false);
+			if (status)
+				break;
+			continue;
+		}
+
+		/* Check if aggregator node for TC already exists */
+		if (ice_is_tc_ena(agg_info->tc_bitmap[0], tc))
+			continue;
+
+		/* Create new aggregator node for TC */
+		status = ice_sched_add_agg_cfg(pi, agg_id, tc);
+		if (status)
+			break;
+
+		/* Save aggregator node's TC information */
+		set_bit(tc, agg_info->tc_bitmap);
+	}
+
+	return status;
+}
+
+/**
+ * ice_cfg_agg - config aggregator node
+ * @pi: port information structure
+ * @agg_id: aggregator ID
+ * @agg_type: aggregator type queue, VSI, or aggregator group
+ * @tc_bitmap: bits TC bitmap
+ *
+ * This function configures aggregator node(s).
+ */
+enum ice_status
+ice_cfg_agg(struct ice_port_info *pi, u32 agg_id, enum ice_agg_type agg_type,
+	    u8 tc_bitmap)
+{
+	unsigned long bitmap = tc_bitmap;
+	enum ice_status status;
+
+	mutex_lock(&pi->sched_lock);
+	status = ice_sched_cfg_agg(pi, agg_id, agg_type,
+				   (unsigned long *)&bitmap);
+	if (!status)
+		status = ice_save_agg_tc_bitmap(pi, agg_id,
+						(unsigned long *)&bitmap);
+	mutex_unlock(&pi->sched_lock);
+	return status;
+}
+
+/**
+ * ice_get_agg_vsi_info - get the aggregator ID
+ * @agg_info: aggregator info
+ * @vsi_handle: software VSI handle
+ *
+ * The function returns aggregator VSI info based on VSI handle. This function
+ * needs to be called with scheduler lock held.
+ */
+static struct ice_sched_agg_vsi_info *
+ice_get_agg_vsi_info(struct ice_sched_agg_info *agg_info, u16 vsi_handle)
+{
+	struct ice_sched_agg_vsi_info *agg_vsi_info;
+
+	list_for_each_entry(agg_vsi_info, &agg_info->agg_vsi_list, list_entry)
+		if (agg_vsi_info->vsi_handle == vsi_handle)
+			return agg_vsi_info;
+
+	return NULL;
+}
+
+/**
+ * ice_get_vsi_agg_info - get the aggregator info of VSI
+ * @hw: pointer to the hardware structure
+ * @vsi_handle: Sw VSI handle
+ *
+ * The function returns aggregator info of VSI represented via vsi_handle. The
+ * VSI has in this case a different aggregator than the default one. This
+ * function needs to be called with scheduler lock held.
+ */
+static struct ice_sched_agg_info *
+ice_get_vsi_agg_info(struct ice_hw *hw, u16 vsi_handle)
+{
+	struct ice_sched_agg_info *agg_info;
+
+	list_for_each_entry(agg_info, &hw->agg_list, list_entry) {
+		struct ice_sched_agg_vsi_info *agg_vsi_info;
+
+		agg_vsi_info = ice_get_agg_vsi_info(agg_info, vsi_handle);
+		if (agg_vsi_info)
+			return agg_info;
+	}
+	return NULL;
+}
+
+/**
+ * ice_save_agg_vsi_tc_bitmap - save aggregator VSI TC bitmap
+ * @pi: port information structure
+ * @agg_id: aggregator ID
+ * @vsi_handle: software VSI handle
+ * @tc_bitmap: TC bitmap of enabled TC(s)
+ *
+ * Save VSI to aggregator TC bitmap. This function needs to call with scheduler
+ * lock held.
+ */
+static enum ice_status
+ice_save_agg_vsi_tc_bitmap(struct ice_port_info *pi, u32 agg_id, u16 vsi_handle,
+			   unsigned long *tc_bitmap)
+{
+	struct ice_sched_agg_vsi_info *agg_vsi_info;
+	struct ice_sched_agg_info *agg_info;
+
+	agg_info = ice_get_agg_info(pi->hw, agg_id);
+	if (!agg_info)
+		return ICE_ERR_PARAM;
+	/* check if entry already exist */
+	agg_vsi_info = ice_get_agg_vsi_info(agg_info, vsi_handle);
+	if (!agg_vsi_info)
+		return ICE_ERR_PARAM;
+	bitmap_copy(agg_vsi_info->replay_tc_bitmap, tc_bitmap,
+		    ICE_MAX_TRAFFIC_CLASS);
+	return 0;
+}
+
+/**
+ * ice_sched_assoc_vsi_to_agg - associate/move VSI to new/default aggregator
+ * @pi: port information structure
+ * @agg_id: aggregator ID
+ * @vsi_handle: software VSI handle
+ * @tc_bitmap: TC bitmap of enabled TC(s)
+ *
+ * This function moves VSI to a new or default aggregator node. If VSI is
+ * already associated to the aggregator node then no operation is performed on
+ * the tree. This function needs to be called with scheduler lock held.
+ */
+static enum ice_status
+ice_sched_assoc_vsi_to_agg(struct ice_port_info *pi, u32 agg_id,
+			   u16 vsi_handle, unsigned long *tc_bitmap)
+{
+	struct ice_sched_agg_vsi_info *agg_vsi_info;
+	struct ice_sched_agg_info *agg_info;
+	enum ice_status status = 0;
+	struct ice_hw *hw = pi->hw;
+	u8 tc;
+
+	if (!ice_is_vsi_valid(pi->hw, vsi_handle))
+		return ICE_ERR_PARAM;
+	agg_info = ice_get_agg_info(hw, agg_id);
+	if (!agg_info)
+		return ICE_ERR_PARAM;
+	/* check if entry already exist */
+	agg_vsi_info = ice_get_agg_vsi_info(agg_info, vsi_handle);
+	if (!agg_vsi_info) {
+		/* Create new entry for VSI under aggregator list */
+		agg_vsi_info = devm_kzalloc(ice_hw_to_dev(hw),
+					    sizeof(*agg_vsi_info), GFP_KERNEL);
+		if (!agg_vsi_info)
+			return ICE_ERR_PARAM;
+
+		/* add VSI ID into the aggregator list */
+		agg_vsi_info->vsi_handle = vsi_handle;
+		list_add(&agg_vsi_info->list_entry, &agg_info->agg_vsi_list);
+	}
+	/* Move VSI node to new aggregator node for requested TC(s) */
+	ice_for_each_traffic_class(tc) {
+		if (!ice_is_tc_ena(*tc_bitmap, tc))
+			continue;
+
+		/* Move VSI to new aggregator */
+		status = ice_sched_move_vsi_to_agg(pi, vsi_handle, agg_id, tc);
+		if (status)
+			break;
+
+		set_bit(tc, agg_vsi_info->tc_bitmap);
+	}
+	return status;
+}
+
 /**
  * ice_sched_rm_unused_rl_prof - remove unused RL profile
  * @pi: port information structure
@@ -1955,7 +2742,6 @@ ice_sched_cfg_node_bw_alloc(struct ice_hw *hw, struct ice_sched_node *node,
 {
 	struct ice_aqc_txsched_elem_data buf;
 	struct ice_aqc_txsched_elem *data;
-	enum ice_status status;
 
 	buf = node->info;
 	data = &buf.data;
@@ -1970,7 +2756,32 @@ ice_sched_cfg_node_bw_alloc(struct ice_hw *hw, struct ice_sched_node *node,
 	}
 
 	/* Configure element */
-	status = ice_sched_update_elem(hw, node, &buf);
+	return ice_sched_update_elem(hw, node, &buf);
+}
+
+/**
+ * ice_move_vsi_to_agg - moves VSI to new or default aggregator
+ * @pi: port information structure
+ * @agg_id: aggregator ID
+ * @vsi_handle: software VSI handle
+ * @tc_bitmap: TC bitmap of enabled TC(s)
+ *
+ * Move or associate VSI to a new or default aggregator node.
+ */
+enum ice_status
+ice_move_vsi_to_agg(struct ice_port_info *pi, u32 agg_id, u16 vsi_handle,
+		    u8 tc_bitmap)
+{
+	unsigned long bitmap = tc_bitmap;
+	enum ice_status status;
+
+	mutex_lock(&pi->sched_lock);
+	status = ice_sched_assoc_vsi_to_agg(pi, agg_id, vsi_handle,
+					    (unsigned long *)&bitmap);
+	if (!status)
+		status = ice_save_agg_vsi_tc_bitmap(pi, agg_id, vsi_handle,
+						    (unsigned long *)&bitmap);
+	mutex_unlock(&pi->sched_lock);
 	return status;
 }
 
@@ -2940,6 +3751,156 @@ ice_sched_replay_node_bw(struct ice_hw *hw, struct ice_sched_node *node,
 	return status;
 }
 
+/**
+ * ice_sched_get_ena_tc_bitmap - get enabled TC bitmap
+ * @pi: port info struct
+ * @tc_bitmap: 8 bits TC bitmap to check
+ * @ena_tc_bitmap: 8 bits enabled TC bitmap to return
+ *
+ * This function returns enabled TC bitmap in variable ena_tc_bitmap. Some TCs
+ * may be missing, it returns enabled TCs. This function needs to be called with
+ * scheduler lock held.
+ */
+static void
+ice_sched_get_ena_tc_bitmap(struct ice_port_info *pi,
+			    unsigned long *tc_bitmap,
+			    unsigned long *ena_tc_bitmap)
+{
+	u8 tc;
+
+	/* Some TC(s) may be missing after reset, adjust for replay */
+	ice_for_each_traffic_class(tc)
+		if (ice_is_tc_ena(*tc_bitmap, tc) &&
+		    (ice_sched_get_tc_node(pi, tc)))
+			set_bit(tc, ena_tc_bitmap);
+}
+
+/**
+ * ice_sched_replay_agg - recreate aggregator node(s)
+ * @hw: pointer to the HW struct
+ *
+ * This function recreate aggregator type nodes which are not replayed earlier.
+ * It also replay aggregator BW information. These aggregator nodes are not
+ * associated with VSI type node yet.
+ */
+void ice_sched_replay_agg(struct ice_hw *hw)
+{
+	struct ice_port_info *pi = hw->port_info;
+	struct ice_sched_agg_info *agg_info;
+
+	mutex_lock(&pi->sched_lock);
+	list_for_each_entry(agg_info, &hw->agg_list, list_entry)
+		/* replay aggregator (re-create aggregator node) */
+		if (!bitmap_equal(agg_info->tc_bitmap, agg_info->replay_tc_bitmap,
+				  ICE_MAX_TRAFFIC_CLASS)) {
+			DECLARE_BITMAP(replay_bitmap, ICE_MAX_TRAFFIC_CLASS);
+			enum ice_status status;
+
+			bitmap_zero(replay_bitmap, ICE_MAX_TRAFFIC_CLASS);
+			ice_sched_get_ena_tc_bitmap(pi,
+						    agg_info->replay_tc_bitmap,
+						    replay_bitmap);
+			status = ice_sched_cfg_agg(hw->port_info,
+						   agg_info->agg_id,
+						   ICE_AGG_TYPE_AGG,
+						   replay_bitmap);
+			if (status) {
+				dev_info(ice_hw_to_dev(hw),
+					 "Replay agg id[%d] failed\n",
+					 agg_info->agg_id);
+				/* Move on to next one */
+				continue;
+			}
+		}
+	mutex_unlock(&pi->sched_lock);
+}
+
+/**
+ * ice_sched_replay_agg_vsi_preinit - Agg/VSI replay pre initialization
+ * @hw: pointer to the HW struct
+ *
+ * This function initialize aggregator(s) TC bitmap to zero. A required
+ * preinit step for replaying aggregators.
+ */
+void ice_sched_replay_agg_vsi_preinit(struct ice_hw *hw)
+{
+	struct ice_port_info *pi = hw->port_info;
+	struct ice_sched_agg_info *agg_info;
+
+	mutex_lock(&pi->sched_lock);
+	list_for_each_entry(agg_info, &hw->agg_list, list_entry) {
+		struct ice_sched_agg_vsi_info *agg_vsi_info;
+
+		agg_info->tc_bitmap[0] = 0;
+		list_for_each_entry(agg_vsi_info, &agg_info->agg_vsi_list,
+				    list_entry)
+			agg_vsi_info->tc_bitmap[0] = 0;
+	}
+	mutex_unlock(&pi->sched_lock);
+}
+
+/**
+ * ice_sched_replay_vsi_agg - replay aggregator & VSI to aggregator node(s)
+ * @hw: pointer to the HW struct
+ * @vsi_handle: software VSI handle
+ *
+ * This function replays aggregator node, VSI to aggregator type nodes, and
+ * their node bandwidth information. This function needs to be called with
+ * scheduler lock held.
+ */
+static enum ice_status
+ice_sched_replay_vsi_agg(struct ice_hw *hw, u16 vsi_handle)
+{
+	DECLARE_BITMAP(replay_bitmap, ICE_MAX_TRAFFIC_CLASS);
+	struct ice_sched_agg_vsi_info *agg_vsi_info;
+	struct ice_port_info *pi = hw->port_info;
+	struct ice_sched_agg_info *agg_info;
+	enum ice_status status;
+
+	bitmap_zero(replay_bitmap, ICE_MAX_TRAFFIC_CLASS);
+	if (!ice_is_vsi_valid(hw, vsi_handle))
+		return ICE_ERR_PARAM;
+	agg_info = ice_get_vsi_agg_info(hw, vsi_handle);
+	if (!agg_info)
+		return 0; /* Not present in list - default Agg case */
+	agg_vsi_info = ice_get_agg_vsi_info(agg_info, vsi_handle);
+	if (!agg_vsi_info)
+		return 0; /* Not present in list - default Agg case */
+	ice_sched_get_ena_tc_bitmap(pi, agg_info->replay_tc_bitmap,
+				    replay_bitmap);
+	/* Replay aggregator node associated to vsi_handle */
+	status = ice_sched_cfg_agg(hw->port_info, agg_info->agg_id,
+				   ICE_AGG_TYPE_AGG, replay_bitmap);
+	if (status)
+		return status;
+
+	bitmap_zero(replay_bitmap, ICE_MAX_TRAFFIC_CLASS);
+	ice_sched_get_ena_tc_bitmap(pi, agg_vsi_info->replay_tc_bitmap,
+				    replay_bitmap);
+	/* Move this VSI (vsi_handle) to above aggregator */
+	return ice_sched_assoc_vsi_to_agg(pi, agg_info->agg_id, vsi_handle,
+					  replay_bitmap);
+}
+
+/**
+ * ice_replay_vsi_agg - replay VSI to aggregator node
+ * @hw: pointer to the HW struct
+ * @vsi_handle: software VSI handle
+ *
+ * This function replays association of VSI to aggregator type nodes, and
+ * node bandwidth information.
+ */
+enum ice_status ice_replay_vsi_agg(struct ice_hw *hw, u16 vsi_handle)
+{
+	struct ice_port_info *pi = hw->port_info;
+	enum ice_status status;
+
+	mutex_lock(&pi->sched_lock);
+	status = ice_sched_replay_vsi_agg(hw, vsi_handle);
+	mutex_unlock(&pi->sched_lock);
+	return status;
+}
+
 /**
  * ice_sched_replay_q_bw - replay queue type node BW
  * @pi: port information structure
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.h b/drivers/net/ethernet/intel/ice/ice_sched.h
index 0e55ae0d446f..8abc9e63e58d 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.h
+++ b/drivers/net/ethernet/intel/ice/ice_sched.h
@@ -8,6 +8,7 @@
 
 #define ICE_QGRP_LAYER_OFFSET	2
 #define ICE_VSI_LAYER_OFFSET	4
+#define ICE_AGG_LAYER_OFFSET	6
 #define ICE_SCHED_INVAL_LAYER_NUM	0xFF
 /* Burst size is a 12 bits register that is configured while creating the RL
  * profile(s). MSB is a granularity bit and tells the granularity type
@@ -43,6 +44,8 @@ struct ice_sched_agg_vsi_info {
 	struct list_head list_entry;
 	DECLARE_BITMAP(tc_bitmap, ICE_MAX_TRAFFIC_CLASS);
 	u16 vsi_handle;
+	/* save aggregator VSI TC bitmap */
+	DECLARE_BITMAP(replay_tc_bitmap, ICE_MAX_TRAFFIC_CLASS);
 };
 
 struct ice_sched_agg_info {
@@ -51,6 +54,8 @@ struct ice_sched_agg_info {
 	DECLARE_BITMAP(tc_bitmap, ICE_MAX_TRAFFIC_CLASS);
 	u32 agg_id;
 	enum ice_agg_type agg_type;
+	/* save aggregator TC bitmap */
+	DECLARE_BITMAP(replay_tc_bitmap, ICE_MAX_TRAFFIC_CLASS);
 };
 
 /* FW AQ command calls */
@@ -78,6 +83,14 @@ enum ice_status
 ice_sched_cfg_vsi(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u16 maxqs,
 		  u8 owner, bool enable);
 enum ice_status ice_rm_vsi_lan_cfg(struct ice_port_info *pi, u16 vsi_handle);
+
+/* Tx scheduler rate limiter functions */
+enum ice_status
+ice_cfg_agg(struct ice_port_info *pi, u32 agg_id,
+	    enum ice_agg_type agg_type, u8 tc_bitmap);
+enum ice_status
+ice_move_vsi_to_agg(struct ice_port_info *pi, u32 agg_id, u16 vsi_handle,
+		    u8 tc_bitmap);
 enum ice_status
 ice_cfg_q_bw_lmt(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 		 u16 q_handle, enum ice_rl_type rl_type, u32 bw);
@@ -85,6 +98,9 @@ enum ice_status
 ice_cfg_q_bw_dflt_lmt(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 		      u16 q_handle, enum ice_rl_type rl_type);
 enum ice_status ice_cfg_rl_burst_size(struct ice_hw *hw, u32 bytes);
+void ice_sched_replay_agg_vsi_preinit(struct ice_hw *hw);
+void ice_sched_replay_agg(struct ice_hw *hw);
+enum ice_status ice_replay_vsi_agg(struct ice_hw *hw, u16 vsi_handle);
 enum ice_status
 ice_sched_replay_q_bw(struct ice_port_info *pi, struct ice_q_ctx *q_ctx);
 #endif /* _ICE_SCHED_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 9265b8190499..d0e08fc4f49d 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -414,7 +414,11 @@ struct ice_link_default_override_tlv {
 #define ice_for_each_traffic_class(_i)	\
 	for ((_i) = 0; (_i) < ICE_MAX_TRAFFIC_CLASS; (_i)++)
 
+/* ICE_DFLT_AGG_ID means that all new VM(s)/VSI node connects
+ * to driver defined policy for default aggregator
+ */
 #define ICE_INVAL_TEID 0xFFFFFFFF
+#define ICE_DFLT_AGG_ID 0
 
 struct ice_sched_node {
 	struct ice_sched_node *parent;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 2614de4dd36f..2d5d6c766035 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -1058,12 +1058,46 @@ static void ice_vf_pre_vsi_rebuild(struct ice_vf *vf)
 	ice_clear_vf_reset_trigger(vf);
 }
 
+/**
+ * ice_vf_rebuild_aggregator_node_cfg - rebuild aggregator node config
+ * @vsi: Pointer to VSI
+ *
+ * This function moves VSI into corresponding scheduler aggregator node
+ * based on cached value of "aggregator node info" per VSI
+ */
+static void ice_vf_rebuild_aggregator_node_cfg(struct ice_vsi *vsi)
+{
+	struct ice_pf *pf = vsi->back;
+	enum ice_status status;
+	struct device *dev;
+
+	if (!vsi->agg_node)
+		return;
+
+	dev = ice_pf_to_dev(pf);
+	if (vsi->agg_node->num_vsis == ICE_MAX_VSIS_IN_AGG_NODE) {
+		dev_dbg(dev,
+			"agg_id %u already has reached max_num_vsis %u\n",
+			vsi->agg_node->agg_id, vsi->agg_node->num_vsis);
+		return;
+	}
+
+	status = ice_move_vsi_to_agg(pf->hw.port_info, vsi->agg_node->agg_id,
+				     vsi->idx, vsi->tc_cfg.ena_tc);
+	if (status)
+		dev_dbg(dev, "unable to move VSI idx %u into aggregator %u node",
+			vsi->idx, vsi->agg_node->agg_id);
+	else
+		vsi->agg_node->num_vsis++;
+}
+
 /**
  * ice_vf_rebuild_host_cfg - host admin configuration is persistent across reset
  * @vf: VF to rebuild host configuration on
  */
 static void ice_vf_rebuild_host_cfg(struct ice_vf *vf)
 {
+	struct ice_vsi *vsi = vf->pf->vsi[vf->lan_vsi_idx];
 	struct device *dev = ice_pf_to_dev(vf->pf);
 
 	ice_vf_set_host_trust_cfg(vf);
@@ -1075,6 +1109,8 @@ static void ice_vf_rebuild_host_cfg(struct ice_vf *vf)
 	if (ice_vf_rebuild_host_vlan_cfg(vf))
 		dev_err(dev, "failed to rebuild VLAN configuration for VF %u\n",
 			vf->vf_id);
+	/* rebuild aggregator node config for main VF VSI */
+	ice_vf_rebuild_aggregator_node_cfg(vsi);
 }
 
 /**
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
