Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F49800407
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Dec 2023 07:36:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 93B7084743;
	Fri,  1 Dec 2023 06:36:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 93B7084743
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701412571;
	bh=kbd0Db8mFwb2NXgTKdEv5DBaWQwzdsVAORBh36ajj74=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Zg2AomDOpxDBXfqybaF0ybqOWB4J5MDEiBvevgyrKU0m8xEdHSkvqzhTEpmvACVjz
	 OKCE9F4jwHgab9eBicYJoY0vWYJvMrRajdx8YEBQeO76guz7sTgw9oMTNI+ve8q1hR
	 EYaUSWK10hBxnTQ5EvtqWGCYu0XjI7AWJd6klIVh9RhvuCvpExdQim+7YEKjAx1ekb
	 0T48BrRbt9chRAh9GWm517CO5FWIHpwQPy7KTNpG6qIL8txXGjMM7ji7kFP+Ij8HFn
	 buCcmOqOp4mLSeQjNpBq+AxsZvxpfMVchbhDLh5e3OpZnfA5fXXKG8a2VaQYsWh2B+
	 uSYwdZ8URCoHA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZVm9-Hu4g4uN; Fri,  1 Dec 2023 06:36:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AF26384582;
	Fri,  1 Dec 2023 06:36:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF26384582
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7A5C91BF345
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 06:35:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5365142084
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 06:35:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5365142084
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jRtTFBaGrazx for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Dec 2023 06:35:58 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2BADE42083
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 06:35:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2BADE42083
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="424597683"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="424597683"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 22:35:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="860457991"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="860457991"
Received: from wp3.sh.intel.com ([10.240.108.102])
 by FMSMGA003.fm.intel.com with ESMTP; 30 Nov 2023 22:35:55 -0800
From: Steven Zou <steven.zou@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  1 Dec 2023 14:25:02 +0800
Message-Id: <20231201062502.10099-3-steven.zou@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20231201062502.10099-1-steven.zou@intel.com>
References: <20231201062502.10099-1-steven.zou@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701412558; x=1732948558;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=G6FhNL3Zyd9RYDuAiO01gEtgzIVhQV5V/TmXV/utbLg=;
 b=WoKXrBS2G64Boy+yweb5Y83FSguoexzJFhh1je7HEzRh3hGKk8oAcYTs
 D0elADFNpThVju7h3W39Up3qkCVHRB/w6D38p/kEXlnygEU9j1koUt5my
 u+yjdLmrDnadkT4bF0wrcHnjptdyn4kMUR23af1/QcoqjcStyvIft0oRI
 X9XdFRqBRL/SYjBb4wp2lP9cAGWRmYuC/HwPcZXwvShmVg4fO6cJvpuEI
 h2AYRtBODhOMD2XOSwcBjhUVPKAqHMD8G/c1nhQkC7fJYJ5AlsGEGkKct
 Xlkm1s3mpo2h7bLxh/WEFPMnmqxD5PKy5TAZhoz2a3Y/413NSSlbo94tC
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WoKXrBS2
Subject: [Intel-wired-lan] [PATCH iwl-next 2/2] ice: Add switch recipe
 reusing feature
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
Cc: jan.sokolowski@intel.com, netdev@vger.kernel.org, steven.zou@intel.com,
 andrii.staikov@intel.com, aleksander.lobakin@intel.com,
 przemyslaw.kitszel@intel.com, andriy.shevchenko@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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
Signed-off-by: Steven Zou <steven.zou@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   2 +
 drivers/net/ethernet/intel/ice/ice_common.c   |   2 +
 drivers/net/ethernet/intel/ice/ice_switch.c   | 187 ++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_switch.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   2 +
 5 files changed, 177 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index c2b3ccce3124..2654aaad9a51 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -264,6 +264,8 @@ struct ice_aqc_set_port_params {
 #define ICE_AQC_RES_TYPE_FLAG_SHARED			BIT(7)
 #define ICE_AQC_RES_TYPE_FLAG_SCAN_BOTTOM		BIT(12)
 #define ICE_AQC_RES_TYPE_FLAG_IGNORE_INDEX		BIT(13)
+#define ICE_AQC_RES_TYPE_FLAG_SUBSCRIBE_SHARED		BIT(14)
+#define ICE_AQC_RES_TYPE_FLAG_SUBSCRIBE_CTL		BIT(15)
 
 #define ICE_AQC_RES_TYPE_FLAG_DEDICATED			0x00
 
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 8df151dd0c90..5bfec6bb759b 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1321,6 +1321,8 @@ int ice_init_hw(struct ice_hw *hw)
 	if (status)
 		goto err_unroll_fltr_mgmt_struct;
 	mutex_init(&hw->tnl_lock);
+	ice_init_chk_recipe_reuse_support(hw);
+
 	return 0;
 
 err_unroll_fltr_mgmt_struct:
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 3cee603b187f..b926c045ebec 100644
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
@@ -4575,12 +4661,13 @@ static struct ice_protocol_entry ice_prot_id_tbl[ICE_PROTOCOL_LAST] = {
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
@@ -4594,11 +4681,12 @@ ice_find_recp(struct ice_hw *hw, struct ice_prot_lkup_ext *lkup_exts,
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
@@ -5279,6 +5367,49 @@ ice_get_compat_fv_bitmap(struct ice_hw *hw, struct ice_adv_rule_info *rinfo,
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
@@ -5301,6 +5432,7 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	struct ice_sw_fv_list_entry *tmp;
 	struct ice_sw_recipe *rm;
 	int status = 0;
+	u16 rid_tmp;
 	u8 i;
 
 	if (!lkups_cnt)
@@ -5378,10 +5510,14 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
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
@@ -5400,14 +5536,14 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
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
@@ -5415,7 +5551,7 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 		ice_release_change_lock(hw);
 
 		if (status)
-			goto err_unroll;
+			goto err_free_recipe;
 
 		/* Update profile to recipe bitmap array */
 		bitmap_copy(profile_to_recipe[fvit->profile_id], r_bitmap,
@@ -5429,6 +5565,16 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
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
@@ -6431,7 +6577,7 @@ ice_rem_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 			return -EIO;
 	}
 
-	rid = ice_find_recp(hw, &lkup_exts, rinfo);
+	rid = ice_find_recp(hw, &lkup_exts, rinfo, false);
 	/* If did not find a recipe that match the existing criteria */
 	if (rid == ICE_MAX_NUM_RECIPES)
 		return -EINVAL;
@@ -6475,14 +6621,21 @@ ice_rem_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
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
index 89ffa1b51b5a..9cf819b20d9c 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -429,5 +429,6 @@ ice_aq_get_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u64 *r_assoc,
 int
 ice_aq_map_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u64 r_assoc,
 			     struct ice_sq_cd *cd);
+void ice_init_chk_recipe_reuse_support(struct ice_hw *hw);
 
 #endif /* _ICE_SWITCH_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 2be3955e249e..4c756c2b6157 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -862,6 +862,8 @@ struct ice_hw {
 
 	u16 max_burst_size;	/* driver sets this value */
 
+	u8 recp_reuse:1;	/* indicates whether FW supports recipe reuse */
+
 	/* Tx Scheduler values */
 	u8 num_tx_sched_layers;
 	u8 num_tx_sched_phys_layers;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
