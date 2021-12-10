Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8442046F854
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Dec 2021 02:17:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BE53E83E42;
	Fri, 10 Dec 2021 01:17:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YrdBQYka1FVa; Fri, 10 Dec 2021 01:17:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF0AE83E39;
	Fri, 10 Dec 2021 01:17:11 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 00B581BF350
 for <intel-wired-lan@osuosl.org>; Fri, 10 Dec 2021 01:17:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DCCE760F57
 for <intel-wired-lan@osuosl.org>; Fri, 10 Dec 2021 01:17:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q96KBH5HCGER for <intel-wired-lan@osuosl.org>;
 Fri, 10 Dec 2021 01:17:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 231FF60F44
 for <intel-wired-lan@osuosl.org>; Fri, 10 Dec 2021 01:17:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639099024; x=1670635024;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UDq4yHslOKHeLYEiOTOR/6N8NdmuOjidm46GRlMBGHs=;
 b=jN1xtplquzB9dnKJgRDokTYyPp81OprYa1mqEIeh5G6dU8/P6OblTeVn
 khvGImGxBAM5QmvBIh7U2/XdTN2x9BMnmrKM0tJhLo8B1C7OBnwToAeRk
 GEtS8Tb5iwPepFF3L/47RZs1EswPv8O2vLuTMQDVXNAMUx36uP6u/3GAe
 VopojaKdtvF0YZ8HmaOx+zQ6bCPILZUVLk+l5+Zp/dX03tEFngLH2gYn1
 3DP7svzrGdSEEGcXEnNlsCBMbSBeOx0nxXP2eGAtK50ASZJaceYDRPXS/
 zuPjZZAzhJLJkd/+K5XB+0NhVLylV0Z98GVvzolFVX94TTB+KkJwwytCU g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="225516981"
X-IronPort-AV: E=Sophos;i="5.88,194,1635231600"; d="scan'208";a="225516981"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 17:17:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,194,1635231600"; d="scan'208";a="612734582"
Received: from msu-dell.jf.intel.com ([10.166.233.5])
 by orsmga004.jf.intel.com with ESMTP; 09 Dec 2021 17:17:03 -0800
From: sudheer.mogilappagari@intel.com
To: intel-wired-lan@osuosl.org
Date: Thu,  9 Dec 2021 17:15:38 -0800
Message-Id: <20211210011538.97482-1-sudheer.mogilappagari@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1] ice: Add flow director
 support for channel mode
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

Add support to enable flow-director filter when multiple TCs are
configured. Flow director filter can be configured using ethtool
(--config-ntuple option). When multiple TCs are configured, each
TC is mapped to an unique HW VSI. So VSI corresponding to queue
used in filter is identified and flow director context is updated
with correct VSI while configuring ntuple filter in HW.

Signed-off-by: Kiran Patil <kiran.patil@intel.com>
Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |   7 +-
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 265 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_fdir.h     |   1 +
 drivers/net/ethernet/intel/ice/ice_flow.c     |  51 ++++
 drivers/net/ethernet/intel/ice/ice_flow.h     |   1 +
 drivers/net/ethernet/intel/ice/ice_lib.c      |  69 ++++-
 drivers/net/ethernet/intel/ice/ice_main.c     |  75 +++++
 drivers/net/ethernet/intel/ice/ice_type.h     |   5 +-
 8 files changed, 448 insertions(+), 26 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index dc86f2562e0f..0b9b5b9c24b6 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -114,7 +114,6 @@
 #define ICE_MAX_RXQS_PER_TC		256	/* Used when setting VSI context per TC Rx queues */
 
 #define ICE_CHNL_START_TC		1
-#define ICE_CHNL_MAX_TC			16
 
 #define ICE_MAX_RESET_WAIT		20
 
@@ -204,6 +203,7 @@ struct ice_channel {
 	struct ice_aqc_vsi_props info;
 	u64 max_tx_rate;
 	u64 min_tx_rate;
+	atomic_t num_sb_fltr;
 	struct ice_vsi *ch_vsi;
 };
 
@@ -801,6 +801,9 @@ static inline void ice_clear_sriov_cap(struct ice_pf *pf)
 #define ICE_FD_STAT_PF_IDX(base_idx) \
 			((base_idx) * ICE_FD_STAT_CTR_BLOCK_COUNT)
 #define ICE_FD_SB_STAT_IDX(base_idx) ICE_FD_STAT_PF_IDX(base_idx)
+#define ICE_FD_STAT_CH			1
+#define ICE_FD_CH_STAT_IDX(base_idx) \
+			(ICE_FD_STAT_PF_IDX(base_idx) + ICE_FD_STAT_CH)
 
 /**
  * ice_is_adq_active - any active ADQs
@@ -861,6 +864,7 @@ void ice_unplug_aux_dev(struct ice_pf *pf);
 int ice_init_rdma(struct ice_pf *pf);
 const char *ice_aq_str(enum ice_aq_err aq_err);
 bool ice_is_wol_supported(struct ice_hw *hw);
+void ice_fdir_del_all_fltrs(struct ice_vsi *vsi);
 int
 ice_fdir_write_fltr(struct ice_pf *pf, struct ice_fdir_fltr *input, bool add,
 		    bool is_tun);
@@ -871,6 +875,7 @@ int ice_get_ethtool_fdir_entry(struct ice_hw *hw, struct ethtool_rxnfc *cmd);
 int
 ice_get_fdir_fltr_ids(struct ice_hw *hw, struct ethtool_rxnfc *cmd,
 		      u32 *rule_locs);
+void ice_fdir_rem_adq_chnl(struct ice_hw *hw, u16 vsi_idx);
 void ice_fdir_release_flows(struct ice_hw *hw);
 void ice_fdir_replay_flows(struct ice_hw *hw);
 void ice_fdir_replay_fltrs(struct ice_pf *pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
index bbc64d6ce4cd..a57d739b7a9b 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
@@ -5,6 +5,7 @@
 
 #include "ice.h"
 #include "ice_lib.h"
+#include "ice_fdir.h"
 #include "ice_flow.h"
 
 static struct in6_addr full_ipv6_addr_mask = {
@@ -205,7 +206,7 @@ int ice_get_ethtool_fdir_entry(struct ice_hw *hw, struct ethtool_rxnfc *cmd)
 	if (rule->dest_ctl == ICE_FLTR_PRGM_DESC_DEST_DROP_PKT)
 		fsp->ring_cookie = RX_CLS_FLOW_DISC;
 	else
-		fsp->ring_cookie = rule->q_index;
+		fsp->ring_cookie = rule->orig_q_index;
 
 	idx = ice_ethtool_flow_to_fltr(fsp->flow_type);
 	if (idx == ICE_FLTR_PTYPE_NONF_NONE) {
@@ -256,6 +257,80 @@ ice_get_fdir_fltr_ids(struct ice_hw *hw, struct ethtool_rxnfc *cmd,
 	return val;
 }
 
+/**
+ * ice_fdir_remap_entries - update the FDir entries in profile
+ * @prof: FDir structure pointer
+ * @tun: tunneled or non-tunneled packet
+ * @idx: FDir entry index
+ */
+static void
+ice_fdir_remap_entries(struct ice_fd_hw_prof *prof, int tun, int idx)
+{
+	if (idx != prof->cnt && tun < ICE_FD_HW_SEG_MAX) {
+		int i;
+
+		for (i = idx; i < (prof->cnt - 1); i++) {
+			u64 old_entry_h;
+
+			old_entry_h = prof->entry_h[i + 1][tun];
+			prof->entry_h[i][tun] = old_entry_h;
+			prof->vsi_h[i] = prof->vsi_h[i + 1];
+		}
+
+		prof->entry_h[i][tun] = 0;
+		prof->vsi_h[i] = 0;
+	}
+}
+
+/**
+ * ice_fdir_rem_adq_chnl - remove an ADQ channel from HW filter rules
+ * @hw: hardware structure containing filter list
+ * @vsi_idx: VSI handle
+ */
+void ice_fdir_rem_adq_chnl(struct ice_hw *hw, u16 vsi_idx)
+{
+	int status, flow;
+
+	if (!hw->fdir_prof)
+		return;
+
+	for (flow = 0; flow < ICE_FLTR_PTYPE_MAX; flow++) {
+		struct ice_fd_hw_prof *prof = hw->fdir_prof[flow];
+		int tun, i;
+
+		if (!prof || !prof->cnt)
+			continue;
+
+		for (tun = 0; tun < ICE_FD_HW_SEG_MAX; tun++) {
+			u64 prof_id;
+
+			prof_id = flow + tun * ICE_FLTR_PTYPE_MAX;
+
+			for (i = 0; i < prof->cnt; i++) {
+				if (prof->vsi_h[i] != vsi_idx)
+					continue;
+
+				prof->entry_h[i][tun] = 0;
+				prof->vsi_h[i] = 0;
+				break;
+			}
+
+			/* after clearing FDir entries update the remaining */
+			ice_fdir_remap_entries(prof, tun, i);
+
+			/* find flow profile corresponding to prof_id and clear
+			 * vsi_idx from bitmap.
+			 */
+			status = ice_flow_rem_vsi_prof(hw, vsi_idx, prof_id);
+			if (status) {
+				dev_err(ice_hw_to_dev(hw), "ice_flow_rem_vsi_prof() failed status=%d\n",
+					status);
+			}
+		}
+		prof->cnt--;
+	}
+}
+
 /**
  * ice_fdir_get_hw_prof - return the ice_fd_hw_proc associated with a flow
  * @hw: hardware structure containing the filter list
@@ -513,6 +588,28 @@ ice_fdir_alloc_flow_prof(struct ice_hw *hw, enum ice_fltr_ptype flow)
 	return 0;
 }
 
+/**
+ * ice_fdir_prof_vsi_idx - find or insert a vsi_idx in structure
+ * @prof: pointer to flow director HW profile
+ * @vsi_idx: vsi_idx to locate
+ *
+ * return the index of the vsi_idx. if vsi_idx is not found insert it
+ * into the vsi_h table.
+ */
+static u16
+ice_fdir_prof_vsi_idx(struct ice_fd_hw_prof *prof, int vsi_idx)
+{
+	u16 idx = 0;
+
+	for (idx = 0; idx < prof->cnt; idx++)
+		if (prof->vsi_h[idx] == vsi_idx)
+			return idx;
+
+	if (idx == prof->cnt)
+		prof->vsi_h[prof->cnt++] = vsi_idx;
+	return idx;
+}
+
 /**
  * ice_fdir_set_hw_fltr_rule - Configure HW tables to generate a FDir rule
  * @pf: pointer to the PF structure
@@ -532,8 +629,10 @@ ice_fdir_set_hw_fltr_rule(struct ice_pf *pf, struct ice_flow_seg_info *seg,
 	struct ice_hw *hw = &pf->hw;
 	u64 entry1_h = 0;
 	u64 entry2_h = 0;
+	bool del_last;
 	u64 prof_id;
 	int err;
+	int idx;
 
 	main_vsi = ice_get_main_vsi(pf);
 	if (!main_vsi)
@@ -603,15 +702,70 @@ ice_fdir_set_hw_fltr_rule(struct ice_pf *pf, struct ice_flow_seg_info *seg,
 	if (!hw_prof->cnt)
 		hw_prof->cnt = 2;
 
+	for (idx = 1; idx < ICE_CHNL_MAX_TC; idx++) {
+		u16 vsi_idx;
+		u16 vsi_h;
+
+		if (!ice_is_adq_active(pf) || !main_vsi->tc_map_vsi[idx])
+			continue;
+
+		entry1_h = 0;
+		vsi_h = main_vsi->tc_map_vsi[idx]->idx;
+		err = ice_flow_add_entry(hw, ICE_BLK_FD, prof_id,
+					 main_vsi->idx, vsi_h,
+					 ICE_FLOW_PRIO_NORMAL, seg,
+					 &entry1_h);
+		if (err) {
+			dev_err(dev, "Could not add Channel VSI %d to flow group\n",
+				idx);
+			goto err_unroll;
+		}
+
+		vsi_idx = ice_fdir_prof_vsi_idx(hw_prof,
+						main_vsi->tc_map_vsi[idx]->idx);
+		hw_prof->entry_h[vsi_idx][tun] = entry1_h;
+	}
+
 	return 0;
 
+err_unroll:
+	entry1_h = 0;
+	hw_prof->fdir_seg[tun] = NULL;
+
+	/* The variable del_last will be used to determine when to clean up
+	 * the VSI group data. The VSI data is not needed if there are no
+	 * segments.
+	 */
+	del_last = true;
+	for (idx = 0; idx < ICE_FD_HW_SEG_MAX; idx++)
+		if (hw_prof->fdir_seg[idx]) {
+			del_last = false;
+			break;
+		}
+
+	for (idx = 0; idx < hw_prof->cnt; idx++) {
+		u16 vsi_num = ice_get_hw_vsi_num(hw, hw_prof->vsi_h[idx]);
+
+		if (!hw_prof->entry_h[idx][tun])
+			continue;
+		ice_rem_prof_id_flow(hw, ICE_BLK_FD, vsi_num, prof_id);
+		ice_flow_rem_entry(hw, ICE_BLK_FD, hw_prof->entry_h[idx][tun]);
+		hw_prof->entry_h[idx][tun] = 0;
+		if (del_last)
+			hw_prof->vsi_h[idx] = 0;
+	}
+	if (del_last)
+		hw_prof->cnt = 0;
 err_entry:
 	ice_rem_prof_id_flow(hw, ICE_BLK_FD,
 			     ice_get_hw_vsi_num(hw, main_vsi->idx), prof_id);
 	ice_flow_rem_entry(hw, ICE_BLK_FD, entry1_h);
 err_prof:
 	ice_flow_rem_prof(hw, ICE_BLK_FD, prof_id);
-	dev_err(dev, "Failed to add filter.  Flow director filters on each port must have the same input set.\n");
+	if (ice_is_adq_active(pf))
+		dev_err(dev, "Failed to add filter. Flow director filters must have the same input set as ADQ filters.\n");
+	else
+		dev_err(dev, "Failed to add filter. Flow director filters on each port must have the same input set.\n");
 
 	return err;
 }
@@ -1168,6 +1322,31 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
 	return -EOPNOTSUPP;
 }
 
+/**
+ * ice_update_per_q_fltr
+ * @vsi: ptr to VSI
+ * @q_index: queue index
+ * @inc: true to increment or false to decrement per queue filter count
+ *
+ * This function is used to keep track of per queue sideband filters
+ */
+static void ice_update_per_q_fltr(struct ice_vsi *vsi, u32 q_index, bool inc)
+{
+	struct ice_rx_ring *rx_ring;
+
+	if (!vsi->num_rxq || q_index >= vsi->num_rxq)
+		return;
+
+	rx_ring = vsi->rx_rings[q_index];
+	if (!rx_ring || !rx_ring->ch)
+		return;
+
+	if (inc)
+		atomic_inc(&rx_ring->ch->num_sb_fltr);
+	else
+		atomic_dec_if_positive(&rx_ring->ch->num_sb_fltr);
+}
+
 /**
  * ice_fdir_write_fltr - send a flow director filter to the hardware
  * @pf: PF data structure
@@ -1313,6 +1492,26 @@ int ice_fdir_create_dflt_rules(struct ice_pf *pf)
 	return err;
 }
 
+/**
+ * ice_fdir_del_all_fltrs - Delete all flow director filters
+ * @vsi: the VSI being changed
+ *
+ * This function needs to be called while holding hw->fdir_fltr_lock
+ */
+void ice_fdir_del_all_fltrs(struct ice_vsi *vsi)
+{
+	struct ice_fdir_fltr *f_rule, *tmp;
+	struct ice_pf *pf = vsi->back;
+	struct ice_hw *hw = &pf->hw;
+
+	list_for_each_entry_safe(f_rule, tmp, &hw->fdir_list_head, fltr_node) {
+		ice_fdir_write_all_fltr(pf, f_rule, false);
+		ice_fdir_update_cntrs(hw, f_rule->flow_type, false);
+		list_del(&f_rule->fltr_node);
+		devm_kfree(ice_pf_to_dev(pf), f_rule);
+	}
+}
+
 /**
  * ice_vsi_manage_fdir - turn on/off flow director
  * @vsi: the VSI being changed
@@ -1320,7 +1519,6 @@ int ice_fdir_create_dflt_rules(struct ice_pf *pf)
  */
 void ice_vsi_manage_fdir(struct ice_vsi *vsi, bool ena)
 {
-	struct ice_fdir_fltr *f_rule, *tmp;
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
 	enum ice_fltr_ptype flow;
@@ -1334,13 +1532,8 @@ void ice_vsi_manage_fdir(struct ice_vsi *vsi, bool ena)
 	mutex_lock(&hw->fdir_fltr_lock);
 	if (!test_and_clear_bit(ICE_FLAG_FD_ENA, pf->flags))
 		goto release_lock;
-	list_for_each_entry_safe(f_rule, tmp, &hw->fdir_list_head, fltr_node) {
-		/* ignore return value */
-		ice_fdir_write_all_fltr(pf, f_rule, false);
-		ice_fdir_update_cntrs(hw, f_rule->flow_type, false);
-		list_del(&f_rule->fltr_node);
-		devm_kfree(ice_hw_to_dev(hw), f_rule);
-	}
+
+	ice_fdir_del_all_fltrs(vsi);
 
 	if (hw->fdir_prof)
 		for (flow = ICE_FLTR_PTYPE_NONF_NONE; flow < ICE_FLTR_PTYPE_MAX;
@@ -1391,18 +1584,25 @@ ice_fdir_update_list_entry(struct ice_pf *pf, struct ice_fdir_fltr *input,
 {
 	struct ice_fdir_fltr *old_fltr;
 	struct ice_hw *hw = &pf->hw;
+	struct ice_vsi *vsi;
 	int err = -ENOENT;
 
 	/* Do not update filters during reset */
 	if (ice_is_reset_in_progress(pf->state))
 		return -EBUSY;
 
+	vsi = ice_get_main_vsi(pf);
+	if (!vsi)
+		return -EINVAL;
+
 	old_fltr = ice_fdir_find_fltr_by_idx(hw, fltr_idx);
 	if (old_fltr) {
 		err = ice_fdir_write_all_fltr(pf, old_fltr, false);
 		if (err)
 			return err;
 		ice_fdir_update_cntrs(hw, old_fltr->flow_type, false);
+		/* update sb-filters count, specific to ring->channel */
+		ice_update_per_q_fltr(vsi, old_fltr->orig_q_index, false);
 		if (!input && !hw->fdir_fltr_cnt[old_fltr->flow_type])
 			/* we just deleted the last filter of flow_type so we
 			 * should also delete the HW filter info.
@@ -1414,6 +1614,8 @@ ice_fdir_update_list_entry(struct ice_pf *pf, struct ice_fdir_fltr *input,
 	if (!input)
 		return err;
 	ice_fdir_list_add_fltr(hw, input);
+	/* update sb-filters count, specific to ring->channel */
+	ice_update_per_q_fltr(vsi, input->orig_q_index, true);
 	ice_fdir_update_cntrs(hw, input->flow_type, true);
 	return 0;
 }
@@ -1452,6 +1654,39 @@ int ice_del_fdir_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
 	return val;
 }
 
+/**
+ * ice_update_ring_dest_vsi - update dest ring and dest VSI
+ * @vsi: pointer to target VSI
+ * @dest_vsi: ptr to dest VSI index
+ * @ring: ptr to dest ring
+ *
+ * This function updates destination VSI and queue if user specifies
+ * target queue which falls in channel's (aka ADQ) queue region
+ */
+static void
+ice_update_ring_dest_vsi(struct ice_vsi *vsi, u16 *dest_vsi, u32 *ring)
+{
+	struct ice_channel *ch;
+
+	list_for_each_entry(ch, &vsi->ch_list, list) {
+		if (!ch->ch_vsi)
+			continue;
+
+		/* make sure to locate corresponding channel based on "queue"
+		 * specified
+		 */
+		if ((*ring < ch->base_q) ||
+		    (*ring >= (ch->base_q + ch->num_rxq)))
+			continue;
+
+		/* update the dest_vsi based on channel */
+		*dest_vsi = ch->ch_vsi->idx;
+
+		/* update the "ring" to be correct based on channel */
+		*ring -= ch->base_q;
+	}
+}
+
 /**
  * ice_set_fdir_input_set - Set the input set for Flow Director
  * @vsi: pointer to target VSI
@@ -1463,6 +1698,7 @@ ice_set_fdir_input_set(struct ice_vsi *vsi, struct ethtool_rx_flow_spec *fsp,
 		       struct ice_fdir_fltr *input)
 {
 	u16 dest_vsi, q_index = 0;
+	u16 orig_q_index = 0;
 	struct ice_pf *pf;
 	struct ice_hw *hw;
 	int flow_type;
@@ -1489,6 +1725,8 @@ ice_set_fdir_input_set(struct ice_vsi *vsi, struct ethtool_rx_flow_spec *fsp,
 		if (ring >= vsi->num_rxq)
 			return -EINVAL;
 
+		orig_q_index = ring;
+		ice_update_ring_dest_vsi(vsi, &dest_vsi, &ring);
 		dest_ctl = ICE_FLTR_PRGM_DESC_DEST_DIRECT_PKT_QINDEX;
 		q_index = ring;
 	}
@@ -1497,6 +1735,11 @@ ice_set_fdir_input_set(struct ice_vsi *vsi, struct ethtool_rx_flow_spec *fsp,
 	input->q_index = q_index;
 	flow_type = fsp->flow_type & ~FLOW_EXT;
 
+	/* Record the original queue index as specified by user.
+	 * with channel configuration 'q_index' becomes relative
+	 * to TC (channel).
+	 */
+	input->orig_q_index = orig_q_index;
 	input->dest_vsi = dest_vsi;
 	input->dest_ctl = dest_ctl;
 	input->fltr_status = ICE_FLTR_PRGM_DESC_FD_STATUS_FD_ID;
@@ -1684,6 +1927,8 @@ int ice_add_fdir_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
 
 remove_sw_rule:
 	ice_fdir_update_cntrs(hw, input->flow_type, false);
+	/* update sb-filters count, specific to ring->channel */
+	ice_update_per_q_fltr(vsi, input->orig_q_index, false);
 	list_del(&input->fltr_node);
 release_lock:
 	mutex_unlock(&hw->fdir_fltr_lock);
diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.h b/drivers/net/ethernet/intel/ice/ice_fdir.h
index 49a2453731d2..6eeb4aafd126 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.h
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.h
@@ -182,6 +182,7 @@ struct ice_fdir_fltr {
 
 	/* filter control */
 	u16 q_index;
+	u16 orig_q_index;
 	u16 dest_vsi;
 	u8 dest_ctl;
 	u8 cnt_ena;
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index ef10f0941231..b22da11ef752 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -1808,6 +1808,57 @@ ice_flow_add_fld_raw(struct ice_flow_seg_info *seg, u16 off, u8 len,
 	seg->raws_cnt++;
 }
 
+/**
+ * ice_flow_rem_vsi_prof - remove VSI from flow profile
+ * @hw: pointer to the hardware structure
+ * @vsi_handle: software VSI handle
+ * @prof_id: unique ID to identify this flow profile
+ *
+ * This function removes the flow entries associated to the input
+ * VSI handle and disassociate the VSI from the flow profile.
+ */
+int ice_flow_rem_vsi_prof(struct ice_hw *hw, u16 vsi_handle, u64 prof_id)
+{
+	struct ice_flow_prof *prof;
+	int status = 0;
+
+	if (!ice_is_vsi_valid(hw, vsi_handle))
+		return -EINVAL;
+
+	/* find flow profile pointer with input package block and profile ID */
+	prof = ice_flow_find_prof_id(hw, ICE_BLK_FD, prof_id);
+	if (!prof) {
+		ice_debug(hw, ICE_DBG_PKG, "Cannot find flow profile id=%llu\n",
+			  prof_id);
+		return -ENOENT;
+	}
+
+	/* Remove all remaining flow entries before removing the flow profile */
+	if (!list_empty(&prof->entries)) {
+		struct ice_flow_entry *e, *t;
+
+		mutex_lock(&prof->entries_lock);
+		list_for_each_entry_safe(e, t, &prof->entries, l_entry) {
+			if (e->vsi_handle != vsi_handle)
+				continue;
+
+			status = ice_flow_rem_entry_sync(hw, ICE_BLK_FD, e);
+			if (status)
+				break;
+		}
+		mutex_unlock(&prof->entries_lock);
+	}
+	if (status)
+		return status;
+
+	/* disassociate the flow profile from sw VSI handle */
+	status = ice_flow_disassoc_prof(hw, ICE_BLK_FD, prof, vsi_handle);
+	if (status)
+		ice_debug(hw, ICE_DBG_PKG, "ice_flow_disassoc_prof() failed with status=%d\n",
+			  status);
+	return status;
+}
+
 #define ICE_FLOW_RSS_SEG_HDR_L2_MASKS \
 	(ICE_FLOW_SEG_HDR_ETH | ICE_FLOW_SEG_HDR_VLAN)
 
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index 9b12401b241f..bb33090ac886 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -399,6 +399,7 @@ ice_flow_set_fld(struct ice_flow_seg_info *seg, enum ice_flow_field fld,
 void
 ice_flow_add_fld_raw(struct ice_flow_seg_info *seg, u16 off, u8 len,
 		     u16 val_loc, u16 mask_loc);
+int ice_flow_rem_vsi_prof(struct ice_hw *hw, u16 vsi_handle, u64 prof_id);
 void ice_rem_vsi_rss_list(struct ice_hw *hw, u16 vsi_handle);
 int ice_replay_rss_cfg(struct ice_hw *hw, u16 vsi_handle);
 int
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index de37928c2870..4e9efd49c149 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -571,10 +571,16 @@ static int ice_alloc_fd_res(struct ice_vsi *vsi)
 	struct ice_pf *pf = vsi->back;
 	u32 g_val, b_val;
 
-	/* Flow Director filters are only allocated/assigned to the PF VSI which
-	 * passes the traffic. The CTRL VSI is only used to add/delete filters
-	 * so we don't allocate resources to it
+	/* Flow Director filters are only allocated/assigned to the PF VSI or
+	 * CHNL VSI which passes the traffic. The CTRL VSI is only used to
+	 * add/delete filters so resources are not allocated to it
 	 */
+	if (!test_bit(ICE_FLAG_FD_ENA, pf->flags))
+		return -EPERM;
+
+	if (!(vsi->type == ICE_VSI_PF || vsi->type == ICE_VSI_VF ||
+	      vsi->type == ICE_VSI_CHNL))
+		return -EPERM;
 
 	/* FD filters from guaranteed pool per VSI */
 	g_val = pf->hw.func_caps.fd_fltr_guar;
@@ -586,19 +592,56 @@ static int ice_alloc_fd_res(struct ice_vsi *vsi)
 	if (!b_val)
 		return -EPERM;
 
-	if (!(vsi->type == ICE_VSI_PF || vsi->type == ICE_VSI_VF))
-		return -EPERM;
+	/* PF main VSI gets only 64 FD resources from guaranteed pool
+	 * when ADQ is configured.
+	 */
+#define ICE_PF_VSI_GFLTR	64
 
-	if (!test_bit(ICE_FLAG_FD_ENA, pf->flags))
-		return -EPERM;
+	/* determine FD filter resources per VSI from shared(best effort) and
+	 * dedicated pool
+	 */
+	if (vsi->type == ICE_VSI_PF) {
+		vsi->num_gfltr = g_val;
+		/* if MQPRIO is configured, main VSI doesn't get all FD
+		 * resources from guaranteed pool. PF VSI gets 64 FD resources
+		 */
+		if (test_bit(ICE_FLAG_TC_MQPRIO, pf->flags)) {
+			if (g_val < ICE_PF_VSI_GFLTR)
+				return -EPERM;
+			/* allow bare minimum entries for PF VSI */
+			vsi->num_gfltr = ICE_PF_VSI_GFLTR;
+		}
 
-	vsi->num_gfltr = g_val / pf->num_alloc_vsi;
+		/* each VSI gets same "best_effort" quota */
+		vsi->num_bfltr = b_val;
+	} else if (vsi->type == ICE_VSI_VF) {
+		vsi->num_gfltr = 0;
 
-	/* each VSI gets same "best_effort" quota */
-	vsi->num_bfltr = b_val;
+		/* each VSI gets same "best_effort" quota */
+		vsi->num_bfltr = b_val;
+	} else {
+		struct ice_vsi *main_vsi;
+		int numtc;
 
-	if (vsi->type == ICE_VSI_VF) {
-		vsi->num_gfltr = 0;
+		main_vsi = ice_get_main_vsi(pf);
+		if (!main_vsi)
+			return -EPERM;
+
+		if (!main_vsi->all_numtc)
+			return -EINVAL;
+
+		/* figure out ADQ numtc */
+		numtc = main_vsi->all_numtc - ICE_CHNL_START_TC;
+
+		/* only one TC but still asking resources for channels,
+		 * invalid config
+		 */
+		if (numtc < ICE_CHNL_START_TC)
+			return -EPERM;
+
+		g_val -= ICE_PF_VSI_GFLTR;
+		/* channel VSIs gets equal share from guaranteed pool */
+		vsi->num_gfltr = g_val / numtc;
 
 		/* each VSI gets same "best_effort" quota */
 		vsi->num_bfltr = b_val;
@@ -958,7 +1001,7 @@ static void ice_set_fd_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
 	u16 dflt_q, report_q, val;
 
 	if (vsi->type != ICE_VSI_PF && vsi->type != ICE_VSI_CTRL &&
-	    vsi->type != ICE_VSI_VF)
+	    vsi->type != ICE_VSI_VF && vsi->type != ICE_VSI_CHNL)
 		return;
 
 	val = ICE_AQ_VSI_PROP_FLOW_DIR_VALID;
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 00f23d89ee48..9a692251b5f7 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -7676,6 +7676,67 @@ ice_validate_mqprio_qopt(struct ice_vsi *vsi,
 	return 0;
 }
 
+/**
+ * ice_add_vsi_to_fdir - add a VSI to the flow director group for PF
+ * @pf: ptr to PF device
+ * @vsi: ptr to VSI
+ */
+static int ice_add_vsi_to_fdir(struct ice_pf *pf, struct ice_vsi *vsi)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	bool added = false;
+	struct ice_hw *hw;
+	int flow;
+
+	if (!(vsi->num_gfltr || vsi->num_bfltr))
+		return -EINVAL;
+
+	hw = &pf->hw;
+	for (flow = 0; flow < ICE_FLTR_PTYPE_MAX; flow++) {
+		struct ice_fd_hw_prof *prof;
+		int tun, status;
+		u64 entry_h;
+
+		if (!(hw->fdir_prof && hw->fdir_prof[flow] &&
+		      hw->fdir_prof[flow]->cnt))
+			continue;
+
+		for (tun = 0; tun < ICE_FD_HW_SEG_MAX; tun++) {
+			enum ice_flow_priority prio;
+			u64 prof_id;
+
+			/* add this VSI to FDir profile for this flow */
+			prio = ICE_FLOW_PRIO_NORMAL;
+			prof = hw->fdir_prof[flow];
+			prof_id = flow + tun * ICE_FLTR_PTYPE_MAX;
+			status = ice_flow_add_entry(hw, ICE_BLK_FD, prof_id,
+						    prof->vsi_h[0], vsi->idx,
+						    prio, prof->fdir_seg[tun],
+						    &entry_h);
+			if (status) {
+				dev_err(dev, "channel VSI idx %d, not able to add to group %d\n",
+					vsi->idx, flow);
+				continue;
+			}
+
+			prof->entry_h[prof->cnt][tun] = entry_h;
+		}
+
+		/* store VSI for filter replay and delete */
+		prof->vsi_h[prof->cnt] = vsi->idx;
+		prof->cnt++;
+
+		added = true;
+		dev_dbg(dev, "VSI idx %d added to fdir group %d\n", vsi->idx,
+			flow);
+	}
+
+	if (!added)
+		dev_dbg(dev, "VSI idx %d not added to fdir groups\n", vsi->idx);
+
+	return 0;
+}
+
 /**
  * ice_add_channel - add a channel by adding VSI
  * @pf: ptr to PF device
@@ -7700,6 +7761,8 @@ static int ice_add_channel(struct ice_pf *pf, u16 sw_id, struct ice_channel *ch)
 		return -EINVAL;
 	}
 
+	ice_add_vsi_to_fdir(pf, vsi);
+
 	ch->sw_id = sw_id;
 	ch->vsi_num = vsi->vsi_num;
 	ch->info.mapping_flags = vsi->info.mapping_flags;
@@ -8000,6 +8063,15 @@ static void ice_remove_q_channels(struct ice_vsi *vsi, bool rem_fltr)
 	if (rem_fltr)
 		ice_rem_all_chnl_fltrs(pf);
 
+	/* remove ntuple filters since queue configuration is being changed */
+	if  (vsi->netdev->features & NETIF_F_NTUPLE) {
+		struct ice_hw *hw = &pf->hw;
+
+		mutex_lock(&hw->fdir_fltr_lock);
+		ice_fdir_del_all_fltrs(vsi);
+		mutex_unlock(&hw->fdir_fltr_lock);
+	}
+
 	/* perform cleanup for channels if they exist */
 	list_for_each_entry_safe(ch, ch_tmp, &vsi->ch_list, list) {
 		struct ice_vsi *ch_vsi;
@@ -8030,6 +8102,9 @@ static void ice_remove_q_channels(struct ice_vsi *vsi, bool rem_fltr)
 			}
 		}
 
+		/* Release FD resources for the channel VSI */
+		ice_fdir_rem_adq_chnl(&pf->hw, ch->ch_vsi->idx);
+
 		/* clear the VSI from scheduler tree */
 		ice_rm_vsi_lan_cfg(ch->ch_vsi->port_info, ch->ch_vsi->idx);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index bb492e0eaf1b..28fcab26b868 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -6,6 +6,7 @@
 
 #define ICE_BYTES_PER_WORD	2
 #define ICE_BYTES_PER_DWORD	4
+#define ICE_CHNL_MAX_TC		16
 
 #include "ice_hw_autogen.h"
 #include "ice_osdep.h"
@@ -235,8 +236,8 @@ enum ice_fd_hw_seg {
 	ICE_FD_HW_SEG_MAX,
 };
 
-/* 2 VSI = 1 ICE_VSI_PF + 1 ICE_VSI_CTRL */
-#define ICE_MAX_FDIR_VSI_PER_FILTER	2
+/* 1 ICE_VSI_PF + 1 ICE_VSI_CTRL + ICE_CHNL_MAX_TC */
+#define ICE_MAX_FDIR_VSI_PER_FILTER	(2 + ICE_CHNL_MAX_TC)
 
 struct ice_fd_hw_prof {
 	struct ice_flow_seg_info *fdir_seg[ICE_FD_HW_SEG_MAX];
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
