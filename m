Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 046A684D907
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Feb 2024 04:31:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 326F28515C;
	Thu,  8 Feb 2024 03:31:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4wTjovlrsNN4; Thu,  8 Feb 2024 03:31:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1766684DBC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707363063;
	bh=Vzuj4L2r+KTxXWLN1P8zK5Y3hUeWgClmxlSndI6QcDU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=eom/c9FokCZjW7tZdAeRkyWPP3RVv7vdK+UomrL4Ov0grBMyxGhpsA9MV+Nt3NXD4
	 w9ZlXO7s+xJkSJNxNuYp5jYDywYwJ0bgbq+CSWTpSBi3wj/6TtDaFyzn4Rb8flcooy
	 MnMoK5j2+LfXpZOLl4aSA1U5Hyl4SXWQXU9Q1e80w95PGWlDHNaSh2JXAmtZHctkFY
	 uPtFfQcjo1l7CrLKsEY5RgeSfni1RjlHjSkp4hFIubPbgoc43wt89rLu1sWIGadnSn
	 sh1P7PEho4jAMkUSfCYFLkGbk5dvIkIoYRL5r/MDRvsTJmzY031AWzFigyLKrIgThh
	 2cM2fU1JiWs4Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1766684DBC;
	Thu,  8 Feb 2024 03:31:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 738741BF36A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 03:31:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5F1AB6171D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 03:31:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8uPq0yH7lVG7 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Feb 2024 03:30:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=steven.zou@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 01053615A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 01053615A6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 01053615A6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 03:30:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10977"; a="18558167"
X-IronPort-AV: E=Sophos;i="6.05,252,1701158400"; d="scan'208";a="18558167"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 19:30:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,252,1701158400"; d="scan'208";a="32614321"
Received: from wp3.sh.intel.com ([10.240.108.102])
 by fmviesa001.fm.intel.com with ESMTP; 07 Feb 2024 19:30:54 -0800
From: Steven Zou <steven.zou@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Feb 2024 11:18:37 +0800
Message-Id: <20240208031837.11919-1-steven.zou@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707363059; x=1738899059;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jyO7r/mBqlkEu1+UB3HwE94h+4YZf4P9fnDvm5HkJic=;
 b=GrBdBqBskAMh6G91ccnD6j+Kl1CN7Uxwz8hG4bmAK45eEKAplEDRQ1rW
 L7Dy+vG76S6OZXGP6lAyvPBRs8AxC/aPQz9jGt2mmnZDE88G8jOnU+vTA
 USuPHbAm0wyvdKs6aZUDtTn0mWcUxavjQiNcwaqRNelIFXc3XWvogBrlk
 1ENoJvoYTaU9MRsDX1gnNpZXR+vSYg7W3r2dOwiJRzg4qk3EGEoTdu7AJ
 K1z8r4UeONYqA3mQfdoXos/n1p02EoRC1EIVBcKtAScufp3bGK+d4wbXP
 QITqQAUxoHmDxHW5T8/537vOKz/iMd7rdUceQfA53egfOm3gugam5uliq
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GrBdBqBs
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: Add switch recipe reusing
 feature
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
Cc: netdev@vger.kernel.org, steven.zou@intel.com,
 Andrii Staikov <andrii.staikov@intel.com>, aleksander.lobakin@intel.com,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

New E810 firmware supports the corresponding functionality, so the driver
allows PFs to subscribe the same switch recipes. Then when the PF is done
with a switch recipes, the PF can ask firmware to free that switch recipe.

When users configure a rule to PFn into E810 switch component, if there is
no existing recipe matching this rule's pattern, the driver will request
firmware to allocate and return a new recipe resource for the rule by
calling ice_add_sw_recipe() and ice_alloc_recipe(). If there is an existing
recipe matching this rule's pattern with different key value, or this is a
same second rule to PFm into switch component, the driver checks out this
recipe by calling ice_find_recp(), the driver will tell firmware to share
using this same recipe resource by calling ice_subscribable_recp_shared()
and ice_subscribe_recipe().

When firmware detects that all subscribing PFs have freed the switch
recipe, firmware will free the switch recipe so that it can be reused.

This feature also fixes a problem where all switch recipes would eventually
be exhausted because switch recipes could not be freed, as freeing a shared
recipe could potentially break other PFs that were using it.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Andrii Staikov <andrii.staikov@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Steven Zou <steven.zou@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   2 +
 drivers/net/ethernet/intel/ice/ice_common.c   |   2 +
 drivers/net/ethernet/intel/ice/ice_switch.c   | 187 ++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_switch.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   2 +
 5 files changed, 177 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 5df50a0b7867..b315c734455a 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -273,6 +273,8 @@ struct ice_aqc_set_port_params {
 #define ICE_AQC_RES_TYPE_FLAG_SHARED			BIT(7)
 #define ICE_AQC_RES_TYPE_FLAG_SCAN_BOTTOM		BIT(12)
 #define ICE_AQC_RES_TYPE_FLAG_IGNORE_INDEX		BIT(13)
+#define ICE_AQC_RES_TYPE_FLAG_SUBSCRIBE_SHARED		BIT(14)
+#define ICE_AQC_RES_TYPE_FLAG_SUBSCRIBE_CTL		BIT(15)
 
 #define ICE_AQC_RES_TYPE_FLAG_DEDICATED			0x00
 
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index d04a057f53fe..090a2b8b5ff2 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1146,6 +1146,8 @@ int ice_init_hw(struct ice_hw *hw)
 	if (status)
 		goto err_unroll_fltr_mgmt_struct;
 	mutex_init(&hw->tnl_lock);
+	ice_init_chk_recipe_reuse_support(hw);
+
 	return 0;
 
 err_unroll_fltr_mgmt_struct:
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 83fb8d34f7ff..6937b2a3c9fe 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -2074,6 +2074,18 @@ ice_aq_get_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u64 *r_assoc,
 	return status;
 }
 
+/**
+ * ice_init_chk_recipe_reuse_support - check if recipe reuse is supported
+ * @hw: pointer to the hardware structure
+ */
+void ice_init_chk_recipe_reuse_support(struct ice_hw *hw)
+{
+	struct ice_nvm_info *nvm = &hw->flash.nvm;
+
+	hw->recp_reuse = (nvm->major == 0x4 && nvm->minor >= 0x30) ||
+			 nvm->major > 0x4;
+}
+
 /**
  * ice_alloc_recipe - add recipe resource
  * @hw: pointer to the hardware structure
@@ -2083,12 +2095,16 @@ int ice_alloc_recipe(struct ice_hw *hw, u16 *rid)
 {
 	DEFINE_FLEX(struct ice_aqc_alloc_free_res_elem, sw_buf, elem, 1);
 	u16 buf_len = __struct_size(sw_buf);
+	u16 res_type;
 	int status;
 
 	sw_buf->num_elems = cpu_to_le16(1);
-	sw_buf->res_type = cpu_to_le16((ICE_AQC_RES_TYPE_RECIPE <<
-					ICE_AQC_RES_TYPE_S) |
-					ICE_AQC_RES_TYPE_FLAG_SHARED);
+	res_type = FIELD_PREP(ICE_AQC_RES_TYPE_M, ICE_AQC_RES_TYPE_RECIPE);
+	if (hw->recp_reuse)
+		res_type |= ICE_AQC_RES_TYPE_FLAG_SUBSCRIBE_SHARED;
+	else
+		res_type |= ICE_AQC_RES_TYPE_FLAG_SHARED;
+	sw_buf->res_type = cpu_to_le16(res_type);
 	status = ice_aq_alloc_free_res(hw, sw_buf, buf_len,
 				       ice_aqc_opc_alloc_res);
 	if (!status)
@@ -2097,6 +2113,70 @@ int ice_alloc_recipe(struct ice_hw *hw, u16 *rid)
 	return status;
 }
 
+/**
+ * ice_free_recipe_res - free recipe resource
+ * @hw: pointer to the hardware structure
+ * @rid: recipe ID to free
+ *
+ * Return: 0 on success, and others on error
+ */
+static int ice_free_recipe_res(struct ice_hw *hw, u16 rid)
+{
+	return ice_free_hw_res(hw, ICE_AQC_RES_TYPE_RECIPE, 1, &rid);
+}
+
+/**
+ * ice_release_recipe_res - disassociate and free recipe resource
+ * @hw: pointer to the hardware structure
+ * @recp: the recipe struct resource to unassociate and free
+ *
+ * Return: 0 on success, and others on error
+ */
+static int ice_release_recipe_res(struct ice_hw *hw,
+				  struct ice_sw_recipe *recp)
+{
+	DECLARE_BITMAP(r_bitmap, ICE_MAX_NUM_RECIPES);
+	struct ice_switch_info *sw = hw->switch_info;
+	u64 recp_assoc;
+	u32 rid, prof;
+	int status;
+
+	for_each_set_bit(rid, recp->r_bitmap, ICE_MAX_NUM_RECIPES) {
+		for_each_set_bit(prof, recipe_to_profile[rid],
+				 ICE_MAX_NUM_PROFILES) {
+			status = ice_aq_get_recipe_to_profile(hw, prof,
+							      &recp_assoc,
+							      NULL);
+			if (status)
+				return status;
+
+			bitmap_from_arr64(r_bitmap, &recp_assoc,
+					  ICE_MAX_NUM_RECIPES);
+			bitmap_andnot(r_bitmap, r_bitmap, recp->r_bitmap,
+				      ICE_MAX_NUM_RECIPES);
+			bitmap_to_arr64(&recp_assoc, r_bitmap,
+					ICE_MAX_NUM_RECIPES);
+			ice_aq_map_recipe_to_profile(hw, prof,
+						     recp_assoc, NULL);
+
+			clear_bit(rid, profile_to_recipe[prof]);
+			clear_bit(prof, recipe_to_profile[rid]);
+		}
+
+		status = ice_free_recipe_res(hw, rid);
+		if (status)
+			return status;
+
+		sw->recp_list[rid].recp_created = false;
+		sw->recp_list[rid].adv_rule = false;
+		memset(&sw->recp_list[rid].lkup_exts, 0,
+		       sizeof(sw->recp_list[rid].lkup_exts));
+		clear_bit(rid, recp->r_bitmap);
+	}
+
+	return 0;
+}
+
 /**
  * ice_get_recp_to_prof_map - updates recipe to profile mapping
  * @hw: pointer to hardware structure
@@ -2146,6 +2226,7 @@ ice_collect_result_idx(struct ice_aqc_recipe_data_elem *buf,
  * @recps: struct that we need to populate
  * @rid: recipe ID that we are populating
  * @refresh_required: true if we should get recipe to profile mapping from FW
+ * @is_add: flag of adding recipe
  *
  * This function is used to populate all the necessary entries into our
  * bookkeeping so that we have a current list of all the recipes that are
@@ -2153,7 +2234,7 @@ ice_collect_result_idx(struct ice_aqc_recipe_data_elem *buf,
  */
 static int
 ice_get_recp_frm_fw(struct ice_hw *hw, struct ice_sw_recipe *recps, u8 rid,
-		    bool *refresh_required)
+		    bool *refresh_required, bool is_add)
 {
 	DECLARE_BITMAP(result_bm, ICE_MAX_FV_WORDS);
 	struct ice_aqc_recipe_data_elem *tmp;
@@ -2270,8 +2351,12 @@ ice_get_recp_frm_fw(struct ice_hw *hw, struct ice_sw_recipe *recps, u8 rid,
 			recps[idx].chain_idx = ICE_INVAL_CHAIN_IND;
 		}
 
-		if (!is_root)
+		if (!is_root) {
+			if (hw->recp_reuse && is_add)
+				recps[idx].recp_created = true;
+
 			continue;
+		}
 
 		/* Only do the following for root recipes entries */
 		memcpy(recps[idx].r_bitmap, root_bufs.recipe_bitmap,
@@ -2295,7 +2380,8 @@ ice_get_recp_frm_fw(struct ice_hw *hw, struct ice_sw_recipe *recps, u8 rid,
 
 	/* Copy result indexes */
 	bitmap_copy(recps[rid].res_idxs, result_bm, ICE_MAX_FV_WORDS);
-	recps[rid].recp_created = true;
+	if (is_add)
+		recps[rid].recp_created = true;
 
 err_unroll:
 	kfree(tmp);
@@ -4577,12 +4663,13 @@ static struct ice_protocol_entry ice_prot_id_tbl[ICE_PROTOCOL_LAST] = {
  * @hw: pointer to the hardware structure
  * @lkup_exts: extension sequence to match
  * @rinfo: information regarding the rule e.g. priority and action info
+ * @is_add: flag of adding recipe
  *
  * Returns index of matching recipe, or ICE_MAX_NUM_RECIPES if not found.
  */
 static u16
 ice_find_recp(struct ice_hw *hw, struct ice_prot_lkup_ext *lkup_exts,
-	      const struct ice_adv_rule_info *rinfo)
+	      const struct ice_adv_rule_info *rinfo, bool is_add)
 {
 	bool refresh_required = true;
 	struct ice_sw_recipe *recp;
@@ -4596,11 +4683,12 @@ ice_find_recp(struct ice_hw *hw, struct ice_prot_lkup_ext *lkup_exts,
 		 * entry update it in our SW bookkeeping and continue with the
 		 * matching.
 		 */
-		if (!recp[i].recp_created)
+		if (hw->recp_reuse) {
 			if (ice_get_recp_frm_fw(hw,
 						hw->switch_info->recp_list, i,
-						&refresh_required))
+						&refresh_required, is_add))
 				continue;
+		}
 
 		/* Skip inverse action recipes */
 		if (recp[i].root_buf && recp[i].root_buf->content.act_ctrl &
@@ -5281,6 +5369,49 @@ ice_get_compat_fv_bitmap(struct ice_hw *hw, struct ice_adv_rule_info *rinfo,
 	ice_get_sw_fv_bitmap(hw, prof_type, bm);
 }
 
+/**
+ * ice_subscribe_recipe - subscribe to an existing recipe
+ * @hw: pointer to the hardware structure
+ * @rid: recipe ID to subscribe to
+ *
+ * Return: 0 on success, and others on error
+ */
+static int ice_subscribe_recipe(struct ice_hw *hw, u16 rid)
+{
+	DEFINE_FLEX(struct ice_aqc_alloc_free_res_elem, sw_buf, elem, 1);
+	u16 buf_len = __struct_size(sw_buf);
+	u16 res_type;
+	int status;
+
+	/* Prepare buffer to allocate resource */
+	sw_buf->num_elems = cpu_to_le16(1);
+	res_type = FIELD_PREP(ICE_AQC_RES_TYPE_M, ICE_AQC_RES_TYPE_RECIPE) |
+		   ICE_AQC_RES_TYPE_FLAG_SUBSCRIBE_SHARED |
+		   ICE_AQC_RES_TYPE_FLAG_SUBSCRIBE_CTL;
+	sw_buf->res_type = cpu_to_le16(res_type);
+
+	sw_buf->elem[0].e.sw_resp = cpu_to_le16(rid);
+
+	status = ice_aq_alloc_free_res(hw, sw_buf, buf_len,
+				       ice_aqc_opc_alloc_res);
+
+	return status;
+}
+
+/**
+ * ice_subscribable_recp_shared - share an existing subscribable recipe
+ * @hw: pointer to the hardware structure
+ * @rid: recipe ID to subscribe to
+ */
+static void ice_subscribable_recp_shared(struct ice_hw *hw, u16 rid)
+{
+	struct ice_sw_recipe *recps = hw->switch_info->recp_list;
+	u16 sub_rid;
+
+	for_each_set_bit(sub_rid, recps[rid].r_bitmap, ICE_MAX_NUM_RECIPES)
+		ice_subscribe_recipe(hw, sub_rid);
+}
+
 /**
  * ice_add_adv_recipe - Add an advanced recipe that is not part of the default
  * @hw: pointer to hardware structure
@@ -5303,6 +5434,7 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	struct ice_sw_fv_list_entry *tmp;
 	struct ice_sw_recipe *rm;
 	int status = 0;
+	u16 rid_tmp;
 	u8 i;
 
 	if (!lkups_cnt)
@@ -5380,10 +5512,14 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	}
 
 	/* Look for a recipe which matches our requested fv / mask list */
-	*rid = ice_find_recp(hw, lkup_exts, rinfo);
-	if (*rid < ICE_MAX_NUM_RECIPES)
+	*rid = ice_find_recp(hw, lkup_exts, rinfo, true);
+	if (*rid < ICE_MAX_NUM_RECIPES) {
 		/* Success if found a recipe that match the existing criteria */
+		if (hw->recp_reuse)
+			ice_subscribable_recp_shared(hw, *rid);
+
 		goto err_unroll;
+	}
 
 	rm->tun_type = rinfo->tun_type;
 	/* Recipe we need does not exist, add a recipe */
@@ -5402,14 +5538,14 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 		status = ice_aq_get_recipe_to_profile(hw, fvit->profile_id,
 						      &recp_assoc, NULL);
 		if (status)
-			goto err_unroll;
+			goto err_free_recipe;
 
 		bitmap_from_arr64(r_bitmap, &recp_assoc, ICE_MAX_NUM_RECIPES);
 		bitmap_or(r_bitmap, r_bitmap, rm->r_bitmap,
 			  ICE_MAX_NUM_RECIPES);
 		status = ice_acquire_change_lock(hw, ICE_RES_WRITE);
 		if (status)
-			goto err_unroll;
+			goto err_free_recipe;
 
 		bitmap_to_arr64(&recp_assoc, r_bitmap, ICE_MAX_NUM_RECIPES);
 		status = ice_aq_map_recipe_to_profile(hw, fvit->profile_id,
@@ -5417,7 +5553,7 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 		ice_release_change_lock(hw);
 
 		if (status)
-			goto err_unroll;
+			goto err_free_recipe;
 
 		/* Update profile to recipe bitmap array */
 		bitmap_copy(profile_to_recipe[fvit->profile_id], r_bitmap,
@@ -5431,6 +5567,16 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	*rid = rm->root_rid;
 	memcpy(&hw->switch_info->recp_list[*rid].lkup_exts, lkup_exts,
 	       sizeof(*lkup_exts));
+	goto err_unroll;
+
+err_free_recipe:
+	if (hw->recp_reuse) {
+		for_each_set_bit(rid_tmp, rm->r_bitmap, ICE_MAX_NUM_RECIPES) {
+			if (!ice_free_recipe_res(hw, rid_tmp))
+				clear_bit(rid_tmp, rm->r_bitmap);
+		}
+	}
+
 err_unroll:
 	list_for_each_entry_safe(r_entry, r_tmp, &rm->rg_list, l_entry) {
 		list_del(&r_entry->l_entry);
@@ -6444,7 +6590,7 @@ ice_rem_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 			return -EIO;
 	}
 
-	rid = ice_find_recp(hw, &lkup_exts, rinfo);
+	rid = ice_find_recp(hw, &lkup_exts, rinfo, false);
 	/* If did not find a recipe that match the existing criteria */
 	if (rid == ICE_MAX_NUM_RECIPES)
 		return -EINVAL;
@@ -6488,14 +6634,21 @@ ice_rem_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 					 ice_aqc_opc_remove_sw_rules, NULL);
 		if (!status || status == -ENOENT) {
 			struct ice_switch_info *sw = hw->switch_info;
+			struct ice_sw_recipe *r_list = sw->recp_list;
 
 			mutex_lock(rule_lock);
 			list_del(&list_elem->list_entry);
 			devm_kfree(ice_hw_to_dev(hw), list_elem->lkups);
 			devm_kfree(ice_hw_to_dev(hw), list_elem);
 			mutex_unlock(rule_lock);
-			if (list_empty(&sw->recp_list[rid].filt_rules))
-				sw->recp_list[rid].adv_rule = false;
+			if (list_empty(&r_list[rid].filt_rules)) {
+				r_list[rid].adv_rule = false;
+
+				/* All rules for this recipe are now removed */
+				if (hw->recp_reuse)
+					ice_release_recipe_res(hw,
+							       &r_list[rid]);
+			}
 		}
 		kfree(s_rule);
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index 89e6b18975ef..1e579b866233 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -430,5 +430,6 @@ ice_aq_get_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u64 *r_assoc,
 int
 ice_aq_map_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u64 r_assoc,
 			     struct ice_sq_cd *cd);
+void ice_init_chk_recipe_reuse_support(struct ice_hw *hw);
 
 #endif /* _ICE_SWITCH_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 32386aecd6c5..22813186ece0 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -849,6 +849,8 @@ struct ice_hw {
 
 	u16 max_burst_size;	/* driver sets this value */
 
+	u8 recp_reuse:1;	/* indicates whether FW supports recipe reuse */
+
 	/* Tx Scheduler values */
 	u8 num_tx_sched_layers;
 	u8 num_tx_sched_phys_layers;

base-commit: ce1833c065c8c9aec8b147dd682b0ddca8c30071
-- 
2.31.1

