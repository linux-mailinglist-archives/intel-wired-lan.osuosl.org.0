Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EDF9172666
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Feb 2020 19:16:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BEF8386D88;
	Thu, 27 Feb 2020 18:16:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Om9YKOXEQ4OC; Thu, 27 Feb 2020 18:16:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 34CB986D7B;
	Thu, 27 Feb 2020 18:16:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 60A5F1BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2020 18:15:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5BE0088002
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2020 18:15:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EESVZSOeSr9x for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Feb 2020 18:15:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5402485AA0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2020 18:15:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 10:15:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,492,1574150400"; d="scan'208";a="285408860"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Feb 2020 10:15:53 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Feb 2020 10:15:04 -0800
Message-Id: <20200227181505.61720-14-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200227181505.61720-1-anthony.l.nguyen@intel.com>
References: <20200227181505.61720-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S40 14/15] ice: use variable name more
 descriptive than type
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

From: Bruce Allan <bruce.w.allan@intel.com>

The variable name 'type' is not very descriptive. Replace instances of
those with a variable name that is more descriptive or replace it if not
needed.

Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 16 ++++++-------
 drivers/net/ethernet/intel/ice/ice_flow.c    |  8 +++----
 drivers/net/ethernet/intel/ice/ice_lib.c     | 24 ++++++++++----------
 drivers/net/ethernet/intel/ice/ice_lib.h     |  4 ++--
 drivers/net/ethernet/intel/ice/ice_switch.c  | 20 ++++++++--------
 5 files changed, 36 insertions(+), 36 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index f9145a471f4d..ae8a7e622bed 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -820,7 +820,7 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 	bool need_reconfig = false;
 	struct ice_port_info *pi;
 	struct ice_vsi *pf_vsi;
-	u8 type;
+	u8 mib_type;
 	int ret;
 
 	/* Not DCB capable or capability disabled */
@@ -835,16 +835,16 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 	pi = pf->hw.port_info;
 	mib = (struct ice_aqc_lldp_get_mib *)&event->desc.params.raw;
 	/* Ignore if event is not for Nearest Bridge */
-	type = ((mib->type >> ICE_AQ_LLDP_BRID_TYPE_S) &
-		ICE_AQ_LLDP_BRID_TYPE_M);
-	dev_dbg(dev, "LLDP event MIB bridge type 0x%x\n", type);
-	if (type != ICE_AQ_LLDP_BRID_TYPE_NEAREST_BRID)
+	mib_type = ((mib->type >> ICE_AQ_LLDP_BRID_TYPE_S) &
+		    ICE_AQ_LLDP_BRID_TYPE_M);
+	dev_dbg(dev, "LLDP event MIB bridge type 0x%x\n", mib_type);
+	if (mib_type != ICE_AQ_LLDP_BRID_TYPE_NEAREST_BRID)
 		return;
 
 	/* Check MIB Type and return if event for Remote MIB update */
-	type = mib->type & ICE_AQ_LLDP_MIB_TYPE_M;
-	dev_dbg(dev, "LLDP event mib type %s\n", type ? "remote" : "local");
-	if (type == ICE_AQ_LLDP_MIB_REMOTE) {
+	mib_type = mib->type & ICE_AQ_LLDP_MIB_TYPE_M;
+	dev_dbg(dev, "LLDP event mib type %s\n", mib_type ? "remote" : "local");
+	if (mib_type == ICE_AQ_LLDP_MIB_REMOTE) {
 		/* Update the remote cached instance and return */
 		ret = ice_aq_get_dcb_cfg(pi->hw, ICE_AQ_LLDP_MIB_REMOTE,
 					 ICE_AQ_LLDP_BRID_TYPE_NEAREST_BRID,
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index d0dbd4143115..07875db08c3f 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -718,7 +718,7 @@ ice_flow_rem_prof(struct ice_hw *hw, enum ice_block blk, u64 prof_id)
  * ice_flow_set_fld_ext - specifies locations of field from entry's input buffer
  * @seg: packet segment the field being set belongs to
  * @fld: field to be set
- * @type: type of the field
+ * @field_type: type of the field
  * @val_loc: if not ICE_FLOW_FLD_OFF_INVAL, location of the value to match from
  *           entry's input buffer
  * @mask_loc: if not ICE_FLOW_FLD_OFF_INVAL, location of mask value from entry's
@@ -739,16 +739,16 @@ ice_flow_rem_prof(struct ice_hw *hw, enum ice_block blk, u64 prof_id)
  */
 static void
 ice_flow_set_fld_ext(struct ice_flow_seg_info *seg, enum ice_flow_field fld,
-		     enum ice_flow_fld_match_type type, u16 val_loc,
+		     enum ice_flow_fld_match_type field_type, u16 val_loc,
 		     u16 mask_loc, u16 last_loc)
 {
 	u64 bit = BIT_ULL(fld);
 
 	seg->match |= bit;
-	if (type == ICE_FLOW_FLD_TYPE_RANGE)
+	if (field_type == ICE_FLOW_FLD_TYPE_RANGE)
 		seg->range |= bit;
 
-	seg->fields[fld].type = type;
+	seg->fields[fld].type = field_type;
 	seg->fields[fld].src.val = val_loc;
 	seg->fields[fld].src.mask = mask_loc;
 	seg->fields[fld].src.last = last_loc;
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 7fdea256722b..34b41b1039f1 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -9,11 +9,11 @@
 
 /**
  * ice_vsi_type_str - maps VSI type enum to string equivalents
- * @type: VSI type enum
+ * @vsi_type: VSI type enum
  */
-const char *ice_vsi_type_str(enum ice_vsi_type type)
+const char *ice_vsi_type_str(enum ice_vsi_type vsi_type)
 {
-	switch (type) {
+	switch (vsi_type) {
 	case ICE_VSI_PF:
 		return "ICE_VSI_PF";
 	case ICE_VSI_VF:
@@ -350,13 +350,13 @@ static irqreturn_t ice_msix_clean_rings(int __always_unused irq, void *data)
 /**
  * ice_vsi_alloc - Allocates the next available struct VSI in the PF
  * @pf: board private structure
- * @type: type of VSI
+ * @vsi_type: type of VSI
  * @vf_id: ID of the VF being configured
  *
  * returns a pointer to a VSI on success, NULL on failure.
  */
 static struct ice_vsi *
-ice_vsi_alloc(struct ice_pf *pf, enum ice_vsi_type type, u16 vf_id)
+ice_vsi_alloc(struct ice_pf *pf, enum ice_vsi_type vsi_type, u16 vf_id)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_vsi *vsi = NULL;
@@ -377,13 +377,13 @@ ice_vsi_alloc(struct ice_pf *pf, enum ice_vsi_type type, u16 vf_id)
 	if (!vsi)
 		goto unlock_pf;
 
-	vsi->type = type;
+	vsi->type = vsi_type;
 	vsi->back = pf;
 	set_bit(__ICE_DOWN, vsi->state);
 
 	vsi->idx = pf->next_vsi;
 
-	if (type == ICE_VSI_VF)
+	if (vsi_type == ICE_VSI_VF)
 		ice_vsi_set_num_qs(vsi, vf_id);
 	else
 		ice_vsi_set_num_qs(vsi, ICE_INVAL_VFID);
@@ -2119,7 +2119,7 @@ void ice_cfg_sw_lldp(struct ice_vsi *vsi, bool tx, bool create)
  * ice_vsi_setup - Set up a VSI by a given type
  * @pf: board private structure
  * @pi: pointer to the port_info instance
- * @type: VSI type
+ * @vsi_type: VSI type
  * @vf_id: defines VF ID to which this VSI connects. This field is meant to be
  *         used only for ICE_VSI_VF VSI type. For other VSI types, should
  *         fill-in ICE_INVAL_VFID as input.
@@ -2131,7 +2131,7 @@ void ice_cfg_sw_lldp(struct ice_vsi *vsi, bool tx, bool create)
  */
 struct ice_vsi *
 ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
-	      enum ice_vsi_type type, u16 vf_id)
+	      enum ice_vsi_type vsi_type, u16 vf_id)
 {
 	u16 max_txqs[ICE_MAX_TRAFFIC_CLASS] = { 0 };
 	struct device *dev = ice_pf_to_dev(pf);
@@ -2139,10 +2139,10 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 	struct ice_vsi *vsi;
 	int ret, i;
 
-	if (type == ICE_VSI_VF)
-		vsi = ice_vsi_alloc(pf, type, vf_id);
+	if (vsi_type == ICE_VSI_VF)
+		vsi = ice_vsi_alloc(pf, vsi_type, vf_id);
 	else
-		vsi = ice_vsi_alloc(pf, type, ICE_INVAL_VFID);
+		vsi = ice_vsi_alloc(pf, vsi_type, ICE_INVAL_VFID);
 
 	if (!vsi) {
 		dev_err(dev, "could not allocate VSI\n");
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index a83856f8e12b..f77ddd6883c3 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -6,7 +6,7 @@
 
 #include "ice.h"
 
-const char *ice_vsi_type_str(enum ice_vsi_type type);
+const char *ice_vsi_type_str(enum ice_vsi_type vsi_type);
 
 int
 ice_add_mac_to_list(struct ice_vsi *vsi, struct list_head *add_list,
@@ -60,7 +60,7 @@ int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc);
 
 struct ice_vsi *
 ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
-	      enum ice_vsi_type type, u16 vf_id);
+	      enum ice_vsi_type vsi_type, u16 vf_id);
 
 void ice_napi_del(struct ice_vsi *vsi);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index e8f43e7b7e8b..eeb1b0e6f716 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -605,7 +605,7 @@ enum ice_status ice_get_initial_sw_cfg(struct ice_hw *hw)
 			struct ice_aqc_get_sw_cfg_resp_elem *ele;
 			u16 pf_vf_num, swid, vsi_port_num;
 			bool is_vf = false;
-			u8 type;
+			u8 res_type;
 
 			ele = rbuf[i].elements;
 			vsi_port_num = le16_to_cpu(ele->vsi_port_num) &
@@ -620,16 +620,16 @@ enum ice_status ice_get_initial_sw_cfg(struct ice_hw *hw)
 			    ICE_AQC_GET_SW_CONF_RESP_IS_VF)
 				is_vf = true;
 
-			type = le16_to_cpu(ele->vsi_port_num) >>
+			res_type = le16_to_cpu(ele->vsi_port_num) >>
 				ICE_AQC_GET_SW_CONF_RESP_TYPE_S;
 
-			if (type == ICE_AQC_GET_SW_CONF_RESP_VSI) {
+			if (res_type == ICE_AQC_GET_SW_CONF_RESP_VSI) {
 				/* FW VSI is not needed. Just continue. */
 				continue;
 			}
 
 			ice_init_port_info(hw->port_info, vsi_port_num,
-					   type, swid, pf_vf_num, is_vf);
+					   res_type, swid, pf_vf_num, is_vf);
 		}
 	} while (req_desc && !status);
 
@@ -985,7 +985,7 @@ ice_update_vsi_list_rule(struct ice_hw *hw, u16 *vsi_handle_arr, u16 num_vsi,
 	struct ice_aqc_sw_rules_elem *s_rule;
 	enum ice_status status;
 	u16 s_rule_size;
-	u16 type;
+	u16 rule_type;
 	int i;
 
 	if (!num_vsi)
@@ -997,11 +997,11 @@ ice_update_vsi_list_rule(struct ice_hw *hw, u16 *vsi_handle_arr, u16 num_vsi,
 	    lkup_type == ICE_SW_LKUP_ETHERTYPE_MAC ||
 	    lkup_type == ICE_SW_LKUP_PROMISC ||
 	    lkup_type == ICE_SW_LKUP_PROMISC_VLAN)
-		type = remove ? ICE_AQC_SW_RULES_T_VSI_LIST_CLEAR :
-				ICE_AQC_SW_RULES_T_VSI_LIST_SET;
+		rule_type = remove ? ICE_AQC_SW_RULES_T_VSI_LIST_CLEAR :
+			ICE_AQC_SW_RULES_T_VSI_LIST_SET;
 	else if (lkup_type == ICE_SW_LKUP_VLAN)
-		type = remove ? ICE_AQC_SW_RULES_T_PRUNE_LIST_CLEAR :
-				ICE_AQC_SW_RULES_T_PRUNE_LIST_SET;
+		rule_type = remove ? ICE_AQC_SW_RULES_T_PRUNE_LIST_CLEAR :
+			ICE_AQC_SW_RULES_T_PRUNE_LIST_SET;
 	else
 		return ICE_ERR_PARAM;
 
@@ -1019,7 +1019,7 @@ ice_update_vsi_list_rule(struct ice_hw *hw, u16 *vsi_handle_arr, u16 num_vsi,
 			cpu_to_le16(ice_get_hw_vsi_num(hw, vsi_handle_arr[i]));
 	}
 
-	s_rule->type = cpu_to_le16(type);
+	s_rule->type = cpu_to_le16(rule_type);
 	s_rule->pdata.vsi_list.number_vsi = cpu_to_le16(num_vsi);
 	s_rule->pdata.vsi_list.index = cpu_to_le16(vsi_list_id);
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
