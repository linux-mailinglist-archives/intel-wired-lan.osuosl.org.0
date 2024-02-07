Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8849284C23E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Feb 2024 03:09:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C675840515;
	Wed,  7 Feb 2024 02:09:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yMH1lio_m9L6; Wed,  7 Feb 2024 02:09:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 66D47405BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707271775;
	bh=5/U7b1y0p5H6v9c4B0bv1Bh5LaKH9KwN7rDI5oD+JY0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=LL/5mU8GtXMZZxSGqK9fM7uAKVu9ny0syFnNcd7qJuGJXLLeh0o1quaAbiCQO2DV5
	 i1AEYJ/XaHrClMGo62ox2SZL3Ubpk0tMx5KD9elTD9WI3Do9BdDyjk+6rXjAK6mZL4
	 QYp2sEKv5NBx0MbTblHgeeH6nnTW6zwC7gMpDpnmGsW0qs8F0cflbeARY87j7zNuEI
	 r7zt2Z1YqU7IlCI4TGuoG7uqam7pAT27era3mWB/V1pNowOdgkRlcarlMGycW2t12d
	 WRrZVj39lvi81uoM6IhBtK2yVUTRfmJaD3zb3I42msq/cGscveXX/o+f7uKp+DXl80
	 V9FTbqPJOi2qg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 66D47405BE;
	Wed,  7 Feb 2024 02:09:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1E6631BF21A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 02:09:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F1CA94044C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 02:09:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4RiNMVe47Rly for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Feb 2024 02:09:31 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 07 Feb 2024 02:09:31 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 27386401A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 27386401A4
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=steven.zou@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 27386401A4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 02:09:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="1037078"
X-IronPort-AV: E=Sophos;i="6.05,248,1701158400"; 
   d="scan'208";a="1037078"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 18:02:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,248,1701158400"; 
   d="scan'208";a="1416213"
Received: from wp3.sh.intel.com ([10.240.108.102])
 by fmviesa008.fm.intel.com with ESMTP; 06 Feb 2024 18:02:20 -0800
From: Steven Zou <steven.zou@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  7 Feb 2024 09:49:59 +0800
Message-Id: <20240207014959.24012-1-steven.zou@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707271771; x=1738807771;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DLNmxqloaietIfYE4YK4JsqY8uWh/VNRcpHAtKRd7NE=;
 b=GWpPX2PkhdNIkEkViBSbhW1fdHfCgmMxwehBcvcIIPcahoehseaL54DA
 daNDPfqUqn4OWy6xaW6HHDTfk50NWLhSAWhKn+t+J4UF3dyS64x7Vr9bP
 PtkZMFdt1M6sB70LJP08zSEjJwvfk3zootRu3MYK67R0tocIESA0GDxdm
 bD3gommuw+afcampbvq2tlqJkVXBcu2B40ZsQ8IA37OSY/Rgh8gmHMVa3
 O7vqBNLb0YokitF5xZk2l5UMu+2eSdcZxMjr1A6ZV7zR5gMuF1+8Kohcv
 KPPjRcUWfKIQOvSuCNYI3bwm2a3i6tas5jcrSEoeDJ36gfHinYXM7dm5t
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GWpPX2Pk
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Refactor FW data type and
 fix bitmap casting issue
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
Cc: jan.sokolowski@intel.com, jiri@resnulli.us, daniel.machon@microchip.com,
 netdev@vger.kernel.org, steven.zou@intel.com, jesse.brandeburg@intel.com,
 andrii.staikov@intel.com, aleksander.lobakin@intel.com,
 anthony.l.nguyen@intel.com, horms@kernel.org, david.m.ertman@intel.com,
 maciej.fijalkowski@intel.com, andriy.shevchenko@linux.intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

According to the datasheet, the recipe association data is an 8-byte
little-endian value. It is described as 'Bitmap of the recipe indexes
associated with this profile', it is from 24 to 31 byte area in FW.
Therefore, it is defined to '__le64 recipe_assoc' in struct
ice_aqc_recipe_to_profile. And then fix the bitmap casting issue, as we
must never ever use castings for bitmap type.

Fixes: 1e0f9881ef79 ("ice: Flesh out implementation of support for SRIOV on bonded interface")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Andrii Staikov <andrii.staikov@intel.com>
Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Steven Zou <steven.zou@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  3 ++-
 drivers/net/ethernet/intel/ice/ice_lag.c      |  4 ++--
 drivers/net/ethernet/intel/ice/ice_switch.c   | 24 +++++++++++--------
 drivers/net/ethernet/intel/ice/ice_switch.h   |  4 ++--
 4 files changed, 20 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 8040317c9561..1f3e7a6903e5 100644
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
index 467372d541d2..a7a342809935 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -2041,7 +2041,7 @@ int ice_init_lag(struct ice_pf *pf)
 	/* associate recipes to profiles */
 	for (n = 0; n < ICE_PROFID_IPV6_GTPU_IPV6_TCP_INNER; n++) {
 		err = ice_aq_get_recipe_to_profile(&pf->hw, n,
-						   (u8 *)&recipe_bits, NULL);
+						   &recipe_bits, NULL);
 		if (err)
 			continue;
 
@@ -2049,7 +2049,7 @@ int ice_init_lag(struct ice_pf *pf)
 			recipe_bits |= BIT(lag->pf_recipe) |
 				       BIT(lag->lport_recipe);
 			ice_aq_map_recipe_to_profile(&pf->hw, n,
-						     (u8 *)&recipe_bits, NULL);
+						     recipe_bits, NULL);
 		}
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index f84bab80ca42..ba0ef91e4c19 100644
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
@@ -5390,22 +5392,24 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
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

base-commit: f6d4e45c3a386dd7deeb1500e51ce8a6140b02f1
-- 
2.31.1

