Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 861FF7AE40E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Sep 2023 05:21:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0BB134052B;
	Tue, 26 Sep 2023 03:21:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0BB134052B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695698512;
	bh=z1WO/Ne64KbO/oN1LCt/KtwuT6zGnC1vw+JFVuMbjWo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=uT077fwBnFjNC/GisPD3pAA0WzxnIZ3GqRd3JHNNq0FRzu+z8B0Haps9idZKvhI4H
	 JfNVgu8S/DQh+kll6MBp2y5aF9w2ojGWD3voZ+m0nrRv+PUIPx1i9F0VSLuNt0m0jF
	 IBVGXdFVjTLz+BKk335xwXaxqCGljQMEWXtCVSZhqA681Gz/9NmzalbCqmqJN1PSC5
	 ZfRB5rB55DbUiiMJ/RkBFdZsrS1OBPt3njY89mixY1B3+FYycRJtIh/koYAGdD8kio
	 TY/rtMBdCIK3UgyppvmY2UQLF1S9zz9B30yRyoOLpawrgPUegFXqYgO8mr/f68ocDC
	 F7hS5cbBpZ0NQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GkqfW5dexOY7; Tue, 26 Sep 2023 03:21:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7625140289;
	Tue, 26 Sep 2023 03:21:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7625140289
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 73A6A1BF580
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 03:21:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4831A41DD8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 03:21:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4831A41DD8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VpYEa62ysuKL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Sep 2023 03:21:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 567B241D9B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 03:21:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 567B241D9B
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="381376881"
X-IronPort-AV: E=Sophos;i="6.03,176,1694761200"; d="scan'208";a="381376881"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2023 20:21:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="783801462"
X-IronPort-AV: E=Sophos;i="6.03,176,1694761200"; d="scan'208";a="783801462"
Received: from wp3.sh.intel.com ([10.240.108.102])
 by orsmga001.jf.intel.com with ESMTP; 25 Sep 2023 20:21:38 -0700
From: Steven Zou <steven.zou@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Sep 2023 11:12:06 +0800
Message-Id: <20230926031206.12300-1-steven.zou@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695698502; x=1727234502;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0KDnatYlP07Gyuh/hCM+ONEF3yoTCSf8czyIJVwQi00=;
 b=Vr4o5VaUTcXuJ1HUWueFD3VGazg3ZYPWl/BHj+72CQliIAG1O644fgZJ
 BZQM5JyY3jUCiAZgCy49qFGYgzalpwCeo/hbVomNY+6j95KBhdIOYDVNI
 XG/kxOY35qSPWA3J6n8mQ6LDif9aLQEZIBReSORTP1fVWB1RXjmpvoRgP
 QJRw3ZAveg58HaMQDGmnCNKOLSkd0Gp4y9WFr1AJ6Ljj59i5HcmFaPT6F
 91n8CLijLMEk8uA0oGKNSnyVH0MBb+C3LYfC08qFyuF9n4P5BkwJughJk
 re2BHcyfTbRgIISFqZobc1UEJhYeSntKDfNAtnjzGDjY9noHSfodI04XF
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Vr4o5VaU
Subject: [Intel-wired-lan] [PATCH iwl-next v6] ice: Add support for switch
 recipe reusing feature
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
Cc: aleksander.lobakin@intel.com, andriy.shevchenko@linux.intel.com,
 Steven Zou <steven.zou@intel.com>, przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If E810 firmware supports the corresponding functionality, the driver
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

Signed-off-by: Steven Zou <steven.zou@intel.com>
---
v2:
- fix nvm version detection for the feature (Thanks to Przemek)
- fix more small commit message Reviewed-by Przemek

v3: refactor ice_alloc_recipe to support both legacy and new methods

v4:
- a small change in ice_subscribe_recipe, sw_resp instead of flu_resp
- move ice_subscribe_recipe() and ice_subscribable_recp_shared() definitions
down to before ice_add_adv_recipe()
- add commit message for new function of ice_subscribe_recipe()

v5:
- refactor ice_init_chk_subscribable_recipe_support() and replace it to
ice_init_chk_recipe_reuse_support()
- add a newline before 'return' in ice_init_hw()
- remove redundant cast of u8
- make u8 and u16 to u32 in the subfunctions

v6:
- fix AdminQ data type from/to FW and casting for bitmap type issue
- fix hole padding with adding new member in ice_hw structure
- fix setting the flag of recp_created issue
- fix redundant lable
- change bit traversal method
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   4 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |   2 +
 drivers/net/ethernet/intel/ice/ice_lag.c      |   4 +-
 drivers/net/ethernet/intel/ice/ice_switch.c   | 247 +++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_switch.h   |   5 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   2 +
 6 files changed, 229 insertions(+), 35 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index eb4c13b754a4..c43688520eca 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -263,6 +263,8 @@ struct ice_aqc_set_port_params {
 #define ICE_AQC_RES_TYPE_FLAG_SHARED			BIT(7)
 #define ICE_AQC_RES_TYPE_FLAG_SCAN_BOTTOM		BIT(12)
 #define ICE_AQC_RES_TYPE_FLAG_IGNORE_INDEX		BIT(13)
+#define ICE_AQC_RES_TYPE_FLAG_SUBSCRIBE_SHARED		BIT(14)
+#define ICE_AQC_RES_TYPE_FLAG_SUBSCRIBE_CTL		BIT(15)
 
 #define ICE_AQC_RES_TYPE_FLAG_DEDICATED			0x00
 
@@ -592,7 +594,7 @@ struct ice_aqc_recipe_data_elem {
 struct ice_aqc_recipe_to_profile {
 	__le16 profile_id;
 	u8 rsvd[6];
-	DECLARE_BITMAP(recipe_assoc, ICE_MAX_NUM_RECIPES);
+	__le64 recipe_assoc;
 };
 
 /* Add/Update/Remove/Get switch rules (indirect 0x02A0, 0x02A1, 0x02A2, 0x02A3)
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index d4e259b816b9..64d79571ebf0 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1075,6 +1075,8 @@ int ice_init_hw(struct ice_hw *hw)
 	if (status)
 		goto err_unroll_fltr_mgmt_struct;
 	mutex_init(&hw->tnl_lock);
+	ice_init_chk_recipe_reuse_support(hw);
+
 	return 0;
 
 err_unroll_fltr_mgmt_struct:
diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 5466fba52f58..85c1ac3272b8 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -2008,7 +2008,7 @@ int ice_init_lag(struct ice_pf *pf)
 	/* associate recipes to profiles */
 	for (n = 0; n < ICE_PROFID_IPV6_GTPU_IPV6_TCP_INNER; n++) {
 		err = ice_aq_get_recipe_to_profile(&pf->hw, n,
-						   (u8 *)&recipe_bits, NULL);
+						   &recipe_bits, NULL);
 		if (err)
 			continue;
 
@@ -2016,7 +2016,7 @@ int ice_init_lag(struct ice_pf *pf)
 			recipe_bits |= BIT(lag->pf_recipe) |
 				       BIT(lag->lport_recipe);
 			ice_aq_map_recipe_to_profile(&pf->hw, n,
-						     (u8 *)&recipe_bits, NULL);
+						     recipe_bits, NULL);
 		}
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index d915b72e8dbb..2b815680add5 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -2032,12 +2032,12 @@ ice_update_recipe_lkup_idx(struct ice_hw *hw,
  * ice_aq_map_recipe_to_profile - Map recipe to packet profile
  * @hw: pointer to the HW struct
  * @profile_id: package profile ID to associate the recipe with
- * @r_bitmap: Recipe bitmap filled in and need to be returned as response
+ * @r_assoc: Recipe bitmap filled in and need to be returned as response
  * @cd: pointer to command details structure or NULL
  * Recipe to profile association (0x0291)
  */
 int
-ice_aq_map_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u8 *r_bitmap,
+ice_aq_map_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u64 r_assoc,
 			     struct ice_sq_cd *cd)
 {
 	struct ice_aqc_recipe_to_profile *cmd;
@@ -2049,7 +2049,7 @@ ice_aq_map_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u8 *r_bitmap,
 	/* Set the recipe ID bit in the bitmask to let the device know which
 	 * profile we are associating the recipe to
 	 */
-	memcpy(cmd->recipe_assoc, r_bitmap, sizeof(cmd->recipe_assoc));
+	cmd->recipe_assoc = cpu_to_le64(r_assoc);
 
 	return ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
 }
@@ -2058,12 +2058,12 @@ ice_aq_map_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u8 *r_bitmap,
  * ice_aq_get_recipe_to_profile - Map recipe to packet profile
  * @hw: pointer to the HW struct
  * @profile_id: package profile ID to associate the recipe with
- * @r_bitmap: Recipe bitmap filled in and need to be returned as response
+ * @r_assoc: Recipe bitmap filled in and need to be returned as response
  * @cd: pointer to command details structure or NULL
  * Associate profile ID with given recipe (0x0293)
  */
 int
-ice_aq_get_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u8 *r_bitmap,
+ice_aq_get_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u64 *r_assoc,
 			     struct ice_sq_cd *cd)
 {
 	struct ice_aqc_recipe_to_profile *cmd;
@@ -2076,11 +2076,23 @@ ice_aq_get_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u8 *r_bitmap,
 
 	status = ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
 	if (!status)
-		memcpy(r_bitmap, cmd->recipe_assoc, sizeof(cmd->recipe_assoc));
+		*r_assoc = le64_to_cpu(cmd->recipe_assoc);
 
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
@@ -2089,7 +2101,7 @@ ice_aq_get_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u8 *r_bitmap,
 int ice_alloc_recipe(struct ice_hw *hw, u16 *rid)
 {
 	struct ice_aqc_alloc_free_res_elem *sw_buf;
-	u16 buf_len;
+	u16 buf_len, res_type;
 	int status;
 
 	buf_len = struct_size(sw_buf, elem, 1);
@@ -2098,9 +2110,13 @@ int ice_alloc_recipe(struct ice_hw *hw, u16 *rid)
 		return -ENOMEM;
 
 	sw_buf->num_elems = cpu_to_le16(1);
-	sw_buf->res_type = cpu_to_le16((ICE_AQC_RES_TYPE_RECIPE <<
-					ICE_AQC_RES_TYPE_S) |
-					ICE_AQC_RES_TYPE_FLAG_SHARED);
+	res_type = ICE_AQC_RES_TYPE_RECIPE << ICE_AQC_RES_TYPE_S;
+	if (hw->recp_reuse)
+		res_type |= ICE_AQC_RES_TYPE_FLAG_SUBSCRIBE_SHARED;
+	else
+		res_type |= ICE_AQC_RES_TYPE_FLAG_SHARED;
+	sw_buf->res_type = cpu_to_le16(res_type);
+
 	status = ice_aq_alloc_free_res(hw, sw_buf, buf_len,
 				       ice_aqc_opc_alloc_res);
 	if (!status)
@@ -2110,6 +2126,70 @@ int ice_alloc_recipe(struct ice_hw *hw, u16 *rid)
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
+	return status;
+}
+
 /**
  * ice_get_recp_to_prof_map - updates recipe to profile mapping
  * @hw: pointer to hardware structure
@@ -2121,6 +2201,7 @@ int ice_alloc_recipe(struct ice_hw *hw, u16 *rid)
 static void ice_get_recp_to_prof_map(struct ice_hw *hw)
 {
 	DECLARE_BITMAP(r_bitmap, ICE_MAX_NUM_RECIPES);
+	u64 recp_assoc;
 	u16 i;
 
 	for (i = 0; i < hw->switch_info->max_used_prof_index + 1; i++) {
@@ -2128,8 +2209,9 @@ static void ice_get_recp_to_prof_map(struct ice_hw *hw)
 
 		bitmap_zero(profile_to_recipe[i], ICE_MAX_NUM_RECIPES);
 		bitmap_zero(r_bitmap, ICE_MAX_NUM_RECIPES);
-		if (ice_aq_get_recipe_to_profile(hw, i, (u8 *)r_bitmap, NULL))
+		if (ice_aq_get_recipe_to_profile(hw, i, &recp_assoc, NULL))
 			continue;
+		bitmap_from_arr64(r_bitmap, &recp_assoc, ICE_MAX_NUM_RECIPES);
 		bitmap_copy(profile_to_recipe[i], r_bitmap,
 			    ICE_MAX_NUM_RECIPES);
 		for_each_set_bit(j, r_bitmap, ICE_MAX_NUM_RECIPES)
@@ -2151,12 +2233,27 @@ ice_collect_result_idx(struct ice_aqc_recipe_data_elem *buf,
 			recp->res_idxs);
 }
 
+/**
+ * ice_is_recp_created - helper function to mark recp_created as true in case
+ * @hw: pointer to hardware structure
+ * @recp: recipe entry for which rule is being added
+ * @is_add: flag of adding recipe
+ */
+static void
+ice_is_recp_created(struct ice_hw *hw, struct ice_sw_recipe *recp,
+		    bool *is_add)
+{
+	if (hw->recp_reuse && *is_add)
+		recp->recp_created = true;
+}
+
 /**
  * ice_get_recp_frm_fw - update SW bookkeeping from FW recipe entries
  * @hw: pointer to hardware structure
  * @recps: struct that we need to populate
  * @rid: recipe ID that we are populating
  * @refresh_required: true if we should get recipe to profile mapping from FW
+ * @is_add: flag of adding recipe
  *
  * This function is used to populate all the necessary entries into our
  * bookkeeping so that we have a current list of all the recipes that are
@@ -2164,7 +2261,7 @@ ice_collect_result_idx(struct ice_aqc_recipe_data_elem *buf,
  */
 static int
 ice_get_recp_frm_fw(struct ice_hw *hw, struct ice_sw_recipe *recps, u8 rid,
-		    bool *refresh_required)
+		    bool *refresh_required, bool *is_add)
 {
 	DECLARE_BITMAP(result_bm, ICE_MAX_FV_WORDS);
 	struct ice_aqc_recipe_data_elem *tmp;
@@ -2281,8 +2378,10 @@ ice_get_recp_frm_fw(struct ice_hw *hw, struct ice_sw_recipe *recps, u8 rid,
 			recps[idx].chain_idx = ICE_INVAL_CHAIN_IND;
 		}
 
-		if (!is_root)
+		if (!is_root) {
+			ice_is_recp_created(hw, &recps[idx], is_add);
 			continue;
+		}
 
 		/* Only do the following for root recipes entries */
 		memcpy(recps[idx].r_bitmap, root_bufs.recipe_bitmap,
@@ -2306,7 +2405,8 @@ ice_get_recp_frm_fw(struct ice_hw *hw, struct ice_sw_recipe *recps, u8 rid,
 
 	/* Copy result indexes */
 	bitmap_copy(recps[rid].res_idxs, result_bm, ICE_MAX_FV_WORDS);
-	recps[rid].recp_created = true;
+	if (*is_add)
+		recps[rid].recp_created = true;
 
 err_unroll:
 	kfree(tmp);
@@ -4612,12 +4712,13 @@ static struct ice_protocol_entry ice_prot_id_tbl[ICE_PROTOCOL_LAST] = {
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
+	      const struct ice_adv_rule_info *rinfo, bool *is_add)
 {
 	bool refresh_required = true;
 	struct ice_sw_recipe *recp;
@@ -4631,11 +4732,12 @@ ice_find_recp(struct ice_hw *hw, struct ice_prot_lkup_ext *lkup_exts,
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
@@ -5316,6 +5418,55 @@ ice_get_compat_fv_bitmap(struct ice_hw *hw, struct ice_adv_rule_info *rinfo,
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
+	struct ice_aqc_alloc_free_res_elem *sw_buf;
+	u16 buf_len;
+	int status;
+
+	buf_len = struct_size(sw_buf, elem, 1);
+	sw_buf = kzalloc(buf_len, GFP_KERNEL);
+	if (!sw_buf)
+		return -ENOMEM;
+
+	/* Prepare buffer to allocate resource */
+	sw_buf->num_elems = cpu_to_le16(1);
+	sw_buf->res_type =
+		cpu_to_le16((ICE_AQC_RES_TYPE_RECIPE << ICE_AQC_RES_TYPE_S) |
+			    ICE_AQC_RES_TYPE_FLAG_SUBSCRIBE_SHARED |
+			    ICE_AQC_RES_TYPE_FLAG_SUBSCRIBE_CTL);
+
+	sw_buf->elem[0].e.sw_resp = cpu_to_le16(rid);
+
+	status = ice_aq_alloc_free_res(hw, sw_buf, buf_len,
+				       ice_aqc_opc_alloc_res);
+
+	kfree(sw_buf);
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
+	struct ice_sw_recipe *recps;
+	u32 sub_rid;
+
+	recps = hw->switch_info->recp_list;
+	for_each_set_bit(sub_rid, recps[rid].r_bitmap, ICE_MAX_NUM_RECIPES)
+		ice_subscribe_recipe(hw, sub_rid);
+}
+
 /**
  * ice_add_adv_recipe - Add an advanced recipe that is not part of the default
  * @hw: pointer to hardware structure
@@ -5337,7 +5488,9 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	struct ice_recp_grp_entry *r_tmp;
 	struct ice_sw_fv_list_entry *tmp;
 	struct ice_sw_recipe *rm;
+	bool is_add = true;
 	int status = 0;
+	u32 rid_tmp;
 	u8 i;
 
 	if (!lkups_cnt)
@@ -5415,10 +5568,14 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	}
 
 	/* Look for a recipe which matches our requested fv / mask list */
-	*rid = ice_find_recp(hw, lkup_exts, rinfo);
-	if (*rid < ICE_MAX_NUM_RECIPES)
+	*rid = ice_find_recp(hw, lkup_exts, rinfo, &is_add);
+	if (*rid < ICE_MAX_NUM_RECIPES) {
 		/* Success if found a recipe that match the existing criteria */
+		if (hw->recp_reuse)
+			ice_subscribable_recp_shared(hw, *rid);
+
 		goto err_unroll;
+	}
 
 	rm->tun_type = rinfo->tun_type;
 	/* Recipe we need does not exist, add a recipe */
@@ -5431,26 +5588,41 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	 */
 	list_for_each_entry(fvit, &rm->fv_list, list_entry) {
 		DECLARE_BITMAP(r_bitmap, ICE_MAX_NUM_RECIPES);
+		u64 recp_assoc;
 		u16 j;
 
 		status = ice_aq_get_recipe_to_profile(hw, fvit->profile_id,
-						      (u8 *)r_bitmap, NULL);
-		if (status)
-			goto err_unroll;
+						      &recp_assoc, NULL);
+		if (status) {
+			if (hw->recp_reuse)
+				goto err_free_recipe;
+			else
+				goto err_unroll;
+		}
 
+		bitmap_from_arr64(r_bitmap, &recp_assoc, ICE_MAX_NUM_RECIPES);
 		bitmap_or(r_bitmap, r_bitmap, rm->r_bitmap,
 			  ICE_MAX_NUM_RECIPES);
 		status = ice_acquire_change_lock(hw, ICE_RES_WRITE);
-		if (status)
-			goto err_unroll;
+		if (status) {
+			if (hw->recp_reuse)
+				goto err_free_recipe;
+			else
+				goto err_unroll;
+		}
 
+		bitmap_to_arr64(&recp_assoc, r_bitmap, ICE_MAX_NUM_RECIPES);
 		status = ice_aq_map_recipe_to_profile(hw, fvit->profile_id,
-						      (u8 *)r_bitmap,
+						      recp_assoc,
 						      NULL);
 		ice_release_change_lock(hw);
 
-		if (status)
-			goto err_unroll;
+		if (status) {
+			if (hw->recp_reuse)
+				goto err_free_recipe;
+			else
+				goto err_unroll;
+		}
 
 		/* Update profile to recipe bitmap array */
 		bitmap_copy(profile_to_recipe[fvit->profile_id], r_bitmap,
@@ -5464,6 +5636,13 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	*rid = rm->root_rid;
 	memcpy(&hw->switch_info->recp_list[*rid].lkup_exts, lkup_exts,
 	       sizeof(*lkup_exts));
+	goto err_unroll;
+
+err_free_recipe:
+	for_each_set_bit(rid_tmp, rm->r_bitmap, ICE_MAX_NUM_RECIPES)
+		if (!ice_free_recipe_res(hw, rid_tmp))
+			clear_bit(rid_tmp, rm->r_bitmap);
+
 err_unroll:
 	list_for_each_entry_safe(r_entry, r_tmp, &rm->rg_list, l_entry) {
 		list_del(&r_entry->l_entry);
@@ -6464,6 +6643,7 @@ ice_rem_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	bool remove_rule = false;
 	struct mutex *rule_lock; /* Lock to protect filter rule list */
 	u16 i, rid, vsi_handle;
+	bool is_add = false;
 	int status = 0;
 
 	memset(&lkup_exts, 0, sizeof(lkup_exts));
@@ -6478,7 +6658,7 @@ ice_rem_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 			return -EIO;
 	}
 
-	rid = ice_find_recp(hw, &lkup_exts, rinfo);
+	rid = ice_find_recp(hw, &lkup_exts, rinfo, &is_add);
 	/* If did not find a recipe that match the existing criteria */
 	if (rid == ICE_MAX_NUM_RECIPES)
 		return -EINVAL;
@@ -6522,14 +6702,21 @@ ice_rem_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
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
index db7e501b7e0a..522ff549392b 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -424,10 +424,11 @@ int ice_aq_add_recipe(struct ice_hw *hw,
 		      struct ice_aqc_recipe_data_elem *s_recipe_list,
 		      u16 num_recipes, struct ice_sq_cd *cd);
 int
-ice_aq_get_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u8 *r_bitmap,
+ice_aq_get_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u64 *r_assoc,
 			     struct ice_sq_cd *cd);
+void ice_init_chk_recipe_reuse_support(struct ice_hw *hw);
 int
-ice_aq_map_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u8 *r_bitmap,
+ice_aq_map_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u64 r_assoc,
 			     struct ice_sq_cd *cd);
 
 #endif /* _ICE_SWITCH_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index e68425bd0713..8298c8382d87 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -837,6 +837,8 @@ struct ice_hw {
 
 	u16 max_burst_size;	/* driver sets this value */
 
+	bool recp_reuse;	/* indicates whether FW supports recipe reuse */
+
 	/* Tx Scheduler values */
 	u8 num_tx_sched_layers;
 	u8 num_tx_sched_phys_layers;

base-commit: c1735368c670faae047e41c815474d5b64837072
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
