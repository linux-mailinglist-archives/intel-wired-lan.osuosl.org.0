Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A11800405
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Dec 2023 07:36:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE75884744;
	Fri,  1 Dec 2023 06:36:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE75884744
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701412566;
	bh=0XIrUFVu8x6BZD6dDX0q2QA/hMDu3K4iU1uvjmPQN8I=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uUE+Ux2bBoTioTiJ9WV45PH92Eh6n/Ir4JufsI7vity9OWCTiXFq5volaVj8eOr78
	 GXATS93IedWqUDyYJNk8lhGPLPgEbii/r6x3VIj4jF/f2Lwe8b0SUqsdtgX/v4jW/4
	 OszmnKGosCTTX9YsUThFGDQSzbY7AiRe8welc/GfPNi73sn1vkfVAa73PkWn+2PqST
	 MubsLvXVvbcuNGjjg3fk0O5nw2MPyZMau2ysuymKJxByV3xTQZZs3XjYLuwML5ROK0
	 usGcCt2Gn+UqiBLBdMIICGjLPrzFG1cGnhUa5MJ0n8iB72J1LV07SRGyMm0uShDcPL
	 a4Au35wNzUvtA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FpR48ZBAqki5; Fri,  1 Dec 2023 06:36:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3546384580;
	Fri,  1 Dec 2023 06:36:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3546384580
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BD2871BF345
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 06:35:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A07D642083
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 06:35:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A07D642083
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mNUbqXM_m5U7 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Dec 2023 06:35:55 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C77C142084
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 06:35:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C77C142084
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="424597678"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="424597678"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 22:35:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="860457980"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="860457980"
Received: from wp3.sh.intel.com ([10.240.108.102])
 by FMSMGA003.fm.intel.com with ESMTP; 30 Nov 2023 22:35:53 -0800
From: Steven Zou <steven.zou@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  1 Dec 2023 14:25:01 +0800
Message-Id: <20231201062502.10099-2-steven.zou@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20231201062502.10099-1-steven.zou@intel.com>
References: <20231201062502.10099-1-steven.zou@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701412555; x=1732948555;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hV3kV0PQP+W2M4I8+bdezZQSF8PnTi6M0i/A2n/+Gtg=;
 b=fMJrn1txkIhxVqPVaIeWhRN2YoJ07R3XWk1A6fXFgDKNY8Lc8SBRDi01
 55KFRa7EmnGUH05F5lPDQKHuoa7w7ZKELAQZ0DKPxrVs6pSPFRWbdgtvw
 115Fy2K+E7sJ4a4iNzaEOeiNENKRvXl2ZKl2YqReV6i3r7eSfgCjlBm5+
 sTKfbYQ7ceJjTjiuDhO/Y7GWrBP+EZzYX9Evw/uQp/Oo+F/N1VA2jkLLj
 ARl2Dqy8/TVgTFLZM2ffZg4ixiKSN+9Xe9s+oo3cDftm7AOXUQpY/Ha19
 UV2B7X2Q+2yS4Lc2djIdhwcirY73mclBTGEnbAg5NE3W6JgUc4ONpNcjo
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fMJrn1tx
Subject: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: Refactor FW data type
 and fix bitmap casting issue
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

According to the datasheet, the recipe association data is an 8-byte
little-endian value. It is described as 'Bitmap of the recipe indexes
associated with this profile', it is from 24 to 31 byte area in FW.
Therefore, it is defined to '__le64 recipe_assoc' in struct
ice_aqc_recipe_to_profile. And then fix the bitmap casting issue, as we
must never ever use castings for bitmap type.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Andrii Staikov <andrii.staikov@intel.com>
Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
Signed-off-by: Steven Zou <steven.zou@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  3 ++-
 drivers/net/ethernet/intel/ice/ice_lag.c      |  4 ++--
 drivers/net/ethernet/intel/ice/ice_switch.c   | 24 +++++++++++--------
 drivers/net/ethernet/intel/ice/ice_switch.h   |  4 ++--
 4 files changed, 20 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 51c241ab6b8e..c2b3ccce3124 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -593,8 +593,9 @@ struct ice_aqc_recipe_data_elem {
 struct ice_aqc_recipe_to_profile {
 	__le16 profile_id;
 	u8 rsvd[6];
-	DECLARE_BITMAP(recipe_assoc, ICE_MAX_NUM_RECIPES);
+	__le64 recipe_assoc;
 };
+static_assert(sizeof(struct ice_aqc_recipe_to_profile) == 16);
 
 /* Add/Update/Remove/Get switch rules (indirect 0x02A0, 0x02A1, 0x02A2, 0x02A3)
  */
diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 280994ee5933..fe582b3c401c 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -2021,7 +2021,7 @@ int ice_init_lag(struct ice_pf *pf)
 	/* associate recipes to profiles */
 	for (n = 0; n < ICE_PROFID_IPV6_GTPU_IPV6_TCP_INNER; n++) {
 		err = ice_aq_get_recipe_to_profile(&pf->hw, n,
-						   (u8 *)&recipe_bits, NULL);
+						   &recipe_bits, NULL);
 		if (err)
 			continue;
 
@@ -2029,7 +2029,7 @@ int ice_init_lag(struct ice_pf *pf)
 			recipe_bits |= BIT(lag->pf_recipe) |
 				       BIT(lag->lport_recipe);
 			ice_aq_map_recipe_to_profile(&pf->hw, n,
-						     (u8 *)&recipe_bits, NULL);
+						     recipe_bits, NULL);
 		}
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 5db1fddb0b47..3cee603b187f 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -2025,12 +2025,12 @@ ice_update_recipe_lkup_idx(struct ice_hw *hw,
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
@@ -2042,7 +2042,7 @@ ice_aq_map_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u8 *r_bitmap,
 	/* Set the recipe ID bit in the bitmask to let the device know which
 	 * profile we are associating the recipe to
 	 */
-	memcpy(cmd->recipe_assoc, r_bitmap, sizeof(cmd->recipe_assoc));
+	cmd->recipe_assoc = cpu_to_le64(r_assoc);
 
 	return ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
 }
@@ -2051,12 +2051,12 @@ ice_aq_map_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u8 *r_bitmap,
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
@@ -2069,7 +2069,7 @@ ice_aq_get_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u8 *r_bitmap,
 
 	status = ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
 	if (!status)
-		memcpy(r_bitmap, cmd->recipe_assoc, sizeof(cmd->recipe_assoc));
+		*r_assoc = le64_to_cpu(cmd->recipe_assoc);
 
 	return status;
 }
@@ -2108,6 +2108,7 @@ int ice_alloc_recipe(struct ice_hw *hw, u16 *rid)
 static void ice_get_recp_to_prof_map(struct ice_hw *hw)
 {
 	DECLARE_BITMAP(r_bitmap, ICE_MAX_NUM_RECIPES);
+	u64 recp_assoc;
 	u16 i;
 
 	for (i = 0; i < hw->switch_info->max_used_prof_index + 1; i++) {
@@ -2115,8 +2116,9 @@ static void ice_get_recp_to_prof_map(struct ice_hw *hw)
 
 		bitmap_zero(profile_to_recipe[i], ICE_MAX_NUM_RECIPES);
 		bitmap_zero(r_bitmap, ICE_MAX_NUM_RECIPES);
-		if (ice_aq_get_recipe_to_profile(hw, i, (u8 *)r_bitmap, NULL))
+		if (ice_aq_get_recipe_to_profile(hw, i, &recp_assoc, NULL))
 			continue;
+		bitmap_from_arr64(r_bitmap, &recp_assoc, ICE_MAX_NUM_RECIPES);
 		bitmap_copy(profile_to_recipe[i], r_bitmap,
 			    ICE_MAX_NUM_RECIPES);
 		for_each_set_bit(j, r_bitmap, ICE_MAX_NUM_RECIPES)
@@ -5392,22 +5394,24 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	 */
 	list_for_each_entry(fvit, &rm->fv_list, list_entry) {
 		DECLARE_BITMAP(r_bitmap, ICE_MAX_NUM_RECIPES);
+		u64 recp_assoc;
 		u16 j;
 
 		status = ice_aq_get_recipe_to_profile(hw, fvit->profile_id,
-						      (u8 *)r_bitmap, NULL);
+						      &recp_assoc, NULL);
 		if (status)
 			goto err_unroll;
 
+		bitmap_from_arr64(r_bitmap, &recp_assoc, ICE_MAX_NUM_RECIPES);
 		bitmap_or(r_bitmap, r_bitmap, rm->r_bitmap,
 			  ICE_MAX_NUM_RECIPES);
 		status = ice_acquire_change_lock(hw, ICE_RES_WRITE);
 		if (status)
 			goto err_unroll;
 
+		bitmap_to_arr64(&recp_assoc, r_bitmap, ICE_MAX_NUM_RECIPES);
 		status = ice_aq_map_recipe_to_profile(hw, fvit->profile_id,
-						      (u8 *)r_bitmap,
-						      NULL);
+						      recp_assoc, NULL);
 		ice_release_change_lock(hw);
 
 		if (status)
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index db7e501b7e0a..89ffa1b51b5a 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -424,10 +424,10 @@ int ice_aq_add_recipe(struct ice_hw *hw,
 		      struct ice_aqc_recipe_data_elem *s_recipe_list,
 		      u16 num_recipes, struct ice_sq_cd *cd);
 int
-ice_aq_get_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u8 *r_bitmap,
+ice_aq_get_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u64 *r_assoc,
 			     struct ice_sq_cd *cd);
 int
-ice_aq_map_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u8 *r_bitmap,
+ice_aq_map_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u64 r_assoc,
 			     struct ice_sq_cd *cd);
 
 #endif /* _ICE_SWITCH_H_ */
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
