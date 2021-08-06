Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 324403E265F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Aug 2021 10:49:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA74160A55;
	Fri,  6 Aug 2021 08:49:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h4N0-Hb_JQvW; Fri,  6 Aug 2021 08:49:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6526F608B8;
	Fri,  6 Aug 2021 08:49:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 203491BF82F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 08:49:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0F68383B42
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 08:49:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xLIJcTexswOK for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Aug 2021 08:49:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E0D7383B40
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 08:49:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="211231431"
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="211231431"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2021 01:49:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="459299844"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga007.jf.intel.com with ESMTP; 06 Aug 2021 01:49:08 -0700
Received: from gklab-229-137.igk.intel.com (gklab-229-137.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 1768n6kQ030013
 for <intel-wired-lan@lists.osuosl.org>; Fri, 6 Aug 2021 09:49:07 +0100
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  6 Aug 2021 10:48:58 +0200
Message-Id: <1628239746-17380-2-git-send-email-wojciech.drewek@intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1628239746-17380-1-git-send-email-wojciech.drewek@intel.com>
References: <1628239746-17380-1-git-send-email-wojciech.drewek@intel.com>
Subject: [Intel-wired-lan] [PATCH net-next v6 1/9] ice: implement low level
 recipes functions
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Grishma Kotecha <grishma.kotecha@intel.com>

Add code to manage recipes and profiles on admin queue layer.

Allow the driver to add a new recipe and update an existing one. Get a
recipe and get a recipe to profile association is mostly used in update
existing recipes code.

Only default recipes can be updated. An update is done by reading recipes
from HW, changing their params and calling add recipe command.

Support following admin queue commands:
- ice_aqc_opc_add_recipe (0x0290) - create a recipe with protocol
header information and other details that determine how this recipe
filter works
- ice_aqc_opc_recipe_to_profile (0x0291) - associate a switch recipe
to a profile
- ice_aqc_opc_get_recipe (0x0292) - get details of an exsisting recipe
- ice_aqc_opc_get_recipe_to_profile (0x0293) - get a recipe associated
with profile ID

Define ICE_AQC_RES_TYPE_RECIPE resource type to hold a switch
recipe. It is needed when a new switch recipe needs to be created.

Co-developed-by: Dan Nowlin <dan.nowlin@intel.com>
Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
Signed-off-by: Grishma Kotecha  <grishma.kotecha@intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h |  57 +++++++
 drivers/net/ethernet/intel/ice/ice_switch.c     | 213 ++++++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_switch.h     |   9 +
 3 files changed, 279 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index f05d78319d11..6c727745bb29 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -233,6 +233,7 @@ struct ice_aqc_get_sw_cfg_resp_elem {
  */
 #define ICE_AQC_RES_TYPE_VSI_LIST_REP			0x03
 #define ICE_AQC_RES_TYPE_VSI_LIST_PRUNE			0x04
+#define ICE_AQC_RES_TYPE_RECIPE				0x05
 #define ICE_AQC_RES_TYPE_FDIR_COUNTER_BLOCK		0x21
 #define ICE_AQC_RES_TYPE_FDIR_GUARANTEED_ENTRIES	0x22
 #define ICE_AQC_RES_TYPE_FDIR_SHARED_ENTRIES		0x23
@@ -241,6 +242,7 @@ struct ice_aqc_get_sw_cfg_resp_elem {
 #define ICE_AQC_RES_TYPE_HASH_PROF_BLDR_PROFID		0x60
 #define ICE_AQC_RES_TYPE_HASH_PROF_BLDR_TCAM		0x61
 
+#define ICE_AQC_RES_TYPE_FLAG_SHARED			BIT(7)
 #define ICE_AQC_RES_TYPE_FLAG_SCAN_BOTTOM		BIT(12)
 #define ICE_AQC_RES_TYPE_FLAG_IGNORE_INDEX		BIT(13)
 
@@ -474,6 +476,53 @@ struct ice_aqc_vsi_props {
 
 #define ICE_MAX_NUM_RECIPES 64
 
+/* Add/Get Recipe (indirect 0x0290/0x0292) */
+struct ice_aqc_add_get_recipe {
+	__le16 num_sub_recipes;	/* Input in Add cmd, Output in Get cmd */
+	__le16 return_index;	/* Input, used for Get cmd only */
+	u8 reserved[4];
+	__le32 addr_high;
+	__le32 addr_low;
+};
+
+struct ice_aqc_recipe_content {
+	u8 rid;
+#define ICE_AQ_RECIPE_ID_IS_ROOT	BIT(7)
+#define ICE_AQ_SW_ID_LKUP_IDX		0
+	u8 lkup_indx[5];
+#define ICE_AQ_RECIPE_LKUP_IGNORE	BIT(7)
+#define ICE_AQ_SW_ID_LKUP_MASK		0x00FF
+	__le16 mask[5];
+	u8 result_indx;
+#define ICE_AQ_RECIPE_RESULT_DATA_S	0
+#define ICE_AQ_RECIPE_RESULT_DATA_M	(0x3F << ICE_AQ_RECIPE_RESULT_DATA_S)
+#define ICE_AQ_RECIPE_RESULT_EN		BIT(7)
+	u8 rsvd0[3];
+	u8 act_ctrl_join_priority;
+	u8 act_ctrl_fwd_priority;
+	u8 act_ctrl;
+#define ICE_AQ_RECIPE_ACT_INV_ACT	BIT(2)
+	u8 rsvd1;
+	__le32 dflt_act;
+};
+
+struct ice_aqc_recipe_data_elem {
+	u8 recipe_indx;
+	u8 resp_bits;
+	u8 rsvd0[2];
+	u8 recipe_bitmap[8];
+	u8 rsvd1[4];
+	struct ice_aqc_recipe_content content;
+	u8 rsvd2[20];
+};
+
+/* Set/Get Recipes to Profile Association (direct 0x0291/0x0293) */
+struct ice_aqc_recipe_to_profile {
+	__le16 profile_id;
+	u8 rsvd[6];
+	DECLARE_BITMAP(recipe_assoc, ICE_MAX_NUM_RECIPES);
+};
+
 /* Add/Update/Remove/Get switch rules (indirect 0x02A0, 0x02A1, 0x02A2, 0x02A3)
  */
 struct ice_aqc_sw_rules {
@@ -1940,6 +1989,8 @@ struct ice_aq_desc {
 		struct ice_aqc_set_port_id_led set_port_id_led;
 		struct ice_aqc_get_sw_cfg get_sw_conf;
 		struct ice_aqc_sw_rules sw_rules;
+		struct ice_aqc_add_get_recipe add_get_recipe;
+		struct ice_aqc_recipe_to_profile recipe_to_profile;
 		struct ice_aqc_get_topo get_topo;
 		struct ice_aqc_sched_elem_cmd sched_elem_cmd;
 		struct ice_aqc_query_txsched_res query_sched_res;
@@ -2048,6 +2099,12 @@ enum ice_adminq_opc {
 	ice_aqc_opc_update_vsi				= 0x0211,
 	ice_aqc_opc_free_vsi				= 0x0213,
 
+	/* recipe commands */
+	ice_aqc_opc_add_recipe				= 0x0290,
+	ice_aqc_opc_recipe_to_profile			= 0x0291,
+	ice_aqc_opc_get_recipe				= 0x0292,
+	ice_aqc_opc_get_recipe_to_profile		= 0x0293,
+
 	/* switch rules population commands */
 	ice_aqc_opc_add_sw_rules			= 0x02A0,
 	ice_aqc_opc_update_sw_rules			= 0x02A1,
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 1e86a6dba454..88ee213cf816 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -543,6 +543,219 @@ enum ice_status
 	return status;
 }
 
+/**
+ * ice_aq_add_recipe - add switch recipe
+ * @hw: pointer to the HW struct
+ * @s_recipe_list: pointer to switch rule population list
+ * @num_recipes: number of switch recipes in the list
+ * @cd: pointer to command details structure or NULL
+ *
+ * Add(0x0290)
+ */
+static enum ice_status
+ice_aq_add_recipe(struct ice_hw *hw,
+		  struct ice_aqc_recipe_data_elem *s_recipe_list,
+		  u16 num_recipes, struct ice_sq_cd *cd)
+{
+	struct ice_aqc_add_get_recipe *cmd;
+	struct ice_aq_desc desc;
+	u16 buf_size;
+
+	cmd = &desc.params.add_get_recipe;
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_add_recipe);
+
+	cmd->num_sub_recipes = cpu_to_le16(num_recipes);
+	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+
+	buf_size = num_recipes * sizeof(*s_recipe_list);
+
+	return ice_aq_send_cmd(hw, &desc, s_recipe_list, buf_size, cd);
+}
+
+/**
+ * ice_aq_get_recipe - get switch recipe
+ * @hw: pointer to the HW struct
+ * @s_recipe_list: pointer to switch rule population list
+ * @num_recipes: pointer to the number of recipes (input and output)
+ * @recipe_root: root recipe number of recipe(s) to retrieve
+ * @cd: pointer to command details structure or NULL
+ *
+ * Get(0x0292)
+ *
+ * On input, *num_recipes should equal the number of entries in s_recipe_list.
+ * On output, *num_recipes will equal the number of entries returned in
+ * s_recipe_list.
+ *
+ * The caller must supply enough space in s_recipe_list to hold all possible
+ * recipes and *num_recipes must equal ICE_MAX_NUM_RECIPES.
+ */
+static enum ice_status
+ice_aq_get_recipe(struct ice_hw *hw,
+		  struct ice_aqc_recipe_data_elem *s_recipe_list,
+		  u16 *num_recipes, u16 recipe_root, struct ice_sq_cd *cd)
+{
+	struct ice_aqc_add_get_recipe *cmd;
+	struct ice_aq_desc desc;
+	enum ice_status status;
+	u16 buf_size;
+
+	if (*num_recipes != ICE_MAX_NUM_RECIPES)
+		return ICE_ERR_PARAM;
+
+	cmd = &desc.params.add_get_recipe;
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_recipe);
+
+	cmd->return_index = cpu_to_le16(recipe_root);
+	cmd->num_sub_recipes = 0;
+
+	buf_size = *num_recipes * sizeof(*s_recipe_list);
+
+	status = ice_aq_send_cmd(hw, &desc, s_recipe_list, buf_size, cd);
+	*num_recipes = le16_to_cpu(cmd->num_sub_recipes);
+
+	return status;
+}
+
+/**
+ * ice_update_recipe_lkup_idx - update a default recipe based on the lkup_idx
+ * @hw: pointer to the HW struct
+ * @params: parameters used to update the default recipe
+ *
+ * This function only supports updating default recipes and it only supports
+ * updating a single recipe based on the lkup_idx at a time.
+ *
+ * This is done as a read-modify-write operation. First, get the current recipe
+ * contents based on the recipe's ID. Then modify the field vector index and
+ * mask if it's valid at the lkup_idx. Finally, use the add recipe AQ to update
+ * the pre-existing recipe with the modifications.
+ */
+static enum ice_status __maybe_unused
+ice_update_recipe_lkup_idx(struct ice_hw *hw,
+			   struct ice_update_recipe_lkup_idx_params *params)
+{
+	struct ice_aqc_recipe_data_elem *rcp_list;
+	u16 num_recps = ICE_MAX_NUM_RECIPES;
+	enum ice_status status;
+
+	rcp_list = kcalloc(num_recps, sizeof(*rcp_list), GFP_KERNEL);
+	if (!rcp_list)
+		return ICE_ERR_NO_MEMORY;
+
+	/* read current recipe list from firmware */
+	rcp_list->recipe_indx = params->rid;
+	status = ice_aq_get_recipe(hw, rcp_list, &num_recps, params->rid, NULL);
+	if (status) {
+		ice_debug(hw, ICE_DBG_SW, "Failed to get recipe %d, status %d\n",
+			  params->rid, status);
+		goto error_out;
+	}
+
+	/* only modify existing recipe's lkup_idx and mask if valid, while
+	 * leaving all other fields the same, then update the recipe firmware
+	 */
+	rcp_list->content.lkup_indx[params->lkup_idx] = params->fv_idx;
+	if (params->mask_valid)
+		rcp_list->content.mask[params->lkup_idx] =
+			cpu_to_le16(params->mask);
+
+	if (params->ignore_valid)
+		rcp_list->content.lkup_indx[params->lkup_idx] |=
+			ICE_AQ_RECIPE_LKUP_IGNORE;
+
+	status = ice_aq_add_recipe(hw, &rcp_list[0], 1, NULL);
+	if (status)
+		ice_debug(hw, ICE_DBG_SW, "Failed to update recipe %d lkup_idx %d fv_idx %d mask %d mask_valid %s, status %d\n",
+			  params->rid, params->lkup_idx, params->fv_idx,
+			  params->mask, params->mask_valid ? "true" : "false",
+			  status);
+
+error_out:
+	kfree(rcp_list);
+	return status;
+}
+
+/**
+ * ice_aq_map_recipe_to_profile - Map recipe to packet profile
+ * @hw: pointer to the HW struct
+ * @profile_id: package profile ID to associate the recipe with
+ * @r_bitmap: Recipe bitmap filled in and need to be returned as response
+ * @cd: pointer to command details structure or NULL
+ * Recipe to profile association (0x0291)
+ */
+static enum ice_status __maybe_unused
+ice_aq_map_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u8 *r_bitmap,
+			     struct ice_sq_cd *cd)
+{
+	struct ice_aqc_recipe_to_profile *cmd;
+	struct ice_aq_desc desc;
+
+	cmd = &desc.params.recipe_to_profile;
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_recipe_to_profile);
+	cmd->profile_id = cpu_to_le16(profile_id);
+	/* Set the recipe ID bit in the bitmask to let the device know which
+	 * profile we are associating the recipe to
+	 */
+	memcpy(cmd->recipe_assoc, r_bitmap, sizeof(cmd->recipe_assoc));
+
+	return ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
+}
+
+/**
+ * ice_aq_get_recipe_to_profile - Map recipe to packet profile
+ * @hw: pointer to the HW struct
+ * @profile_id: package profile ID to associate the recipe with
+ * @r_bitmap: Recipe bitmap filled in and need to be returned as response
+ * @cd: pointer to command details structure or NULL
+ * Associate profile ID with given recipe (0x0293)
+ */
+static enum ice_status __maybe_unused
+ice_aq_get_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u8 *r_bitmap,
+			     struct ice_sq_cd *cd)
+{
+	struct ice_aqc_recipe_to_profile *cmd;
+	struct ice_aq_desc desc;
+	enum ice_status status;
+
+	cmd = &desc.params.recipe_to_profile;
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_recipe_to_profile);
+	cmd->profile_id = cpu_to_le16(profile_id);
+
+	status = ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
+	if (!status)
+		memcpy(r_bitmap, cmd->recipe_assoc, sizeof(cmd->recipe_assoc));
+
+	return status;
+}
+
+/**
+ * ice_alloc_recipe - add recipe resource
+ * @hw: pointer to the hardware structure
+ * @rid: recipe ID returned as response to AQ call
+ */
+static enum ice_status __maybe_unused ice_alloc_recipe(struct ice_hw *hw, u16 *rid)
+{
+	struct ice_aqc_alloc_free_res_elem *sw_buf;
+	enum ice_status status;
+	u16 buf_len;
+
+	buf_len = struct_size(sw_buf, elem, 1);
+	sw_buf = kzalloc(buf_len, GFP_KERNEL);
+	if (!sw_buf)
+		return ICE_ERR_NO_MEMORY;
+
+	sw_buf->num_elems = cpu_to_le16(1);
+	sw_buf->res_type = cpu_to_le16((ICE_AQC_RES_TYPE_RECIPE <<
+					ICE_AQC_RES_TYPE_S) |
+					ICE_AQC_RES_TYPE_FLAG_SHARED);
+	status = ice_aq_alloc_free_res(hw, 1, sw_buf, buf_len,
+				       ice_aqc_opc_alloc_res, NULL);
+	if (!status)
+		*rid = le16_to_cpu(sw_buf->elem[0].e.sw_resp);
+	kfree(sw_buf);
+
+	return status;
+}
+
 /* ice_init_port_info - Initialize port_info with switch configuration data
  * @pi: pointer to port_info
  * @vsi_port_num: VSI number or port number
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index e6eeffb3dde9..592c564c6de8 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -125,6 +125,15 @@ struct ice_fltr_info {
 	u8 lan_en;	/* Indicate if packet can be forwarded to the uplink */
 };
 
+struct ice_update_recipe_lkup_idx_params {
+	u16 rid;
+	u16 fv_idx;
+	bool ignore_valid;
+	u16 mask;
+	bool mask_valid;
+	u8 lkup_idx;
+};
+
 struct ice_sw_recipe {
 	struct list_head l_entry;
 
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
