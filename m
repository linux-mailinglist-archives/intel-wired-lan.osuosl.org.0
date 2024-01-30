Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B238419D1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jan 2024 04:04:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A1CC415BB;
	Tue, 30 Jan 2024 03:04:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A1CC415BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706583850;
	bh=cL3nR1PQ5yHb55upgJgl1KrfdU5W17hBeyoD2DGrzsQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=r4E0Rs/QSZVcRzycNRakgSJCSSCrO42are4JTv2KaR+DoKRhx7Z97vn5YefYPcwnL
	 uukg8sRRemfuJyqncSnsCTNRw9xJMLRgKUINUHWfLoI/DBK68z/AvJyBRJiZSemRGr
	 fgoFoJUnyQKQ8Vt/w1nrxVLEjY7XyjvyEgWZBCN95tTFDzpCOoVAc/L5hBOS0MgZF0
	 OZ0XVkY3ctxMMZfWc22pIgLI8tL0nggCq7XNgE2Cj0EqJ49uavRtB4B3XbjyIfPDAu
	 ztJXCxvyKwXa7fySzUdb6tAFZzdRVfPMynMU6/dBoA7p5L5ULpqGv6WnLBw80oyu6g
	 1exOePywTna6Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0xEQSUiYXDQY; Tue, 30 Jan 2024 03:04:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E7E2B41718;
	Tue, 30 Jan 2024 03:04:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E7E2B41718
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 546A51BF2A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 03:04:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 27BC2402BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 03:04:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 27BC2402BC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0AUBnfgAfz6j for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jan 2024 03:03:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D60BB4056E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 03:03:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D60BB4056E
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="9892440"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; 
   d="scan'208";a="9892440"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 19:03:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; 
   d="scan'208";a="3521621"
Received: from wp3.sh.intel.com ([10.240.108.102])
 by orviesa005.jf.intel.com with ESMTP; 29 Jan 2024 19:03:54 -0800
From: Steven Zou <steven.zou@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 30 Jan 2024 10:51:45 +0800
Message-Id: <20240130025146.30265-2-steven.zou@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20240130025146.30265-1-steven.zou@intel.com>
References: <20240130025146.30265-1-steven.zou@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706583837; x=1738119837;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sJGwzbDI+D1TURyBhC6zhNK0PpLBVSQX/t2U6rXxlIo=;
 b=aW3WlE90N61U30jat3wkmhr/eIJ/gmrYqO4QbqZtn9KcmosBan2FisjT
 IipDT8zzlAJPJgjGXZ1sfVjhMlKlUJIWkMO0T0Qw/+ib+DmiCoqBjevkf
 3Z8PIMIaeEjqy2p9C5wzNWz/gceeezjhgJiSb5TBwNWDyUEYbIRDCREsr
 ApTlLOuSeWyyU5G1/rCx1HQ+EgksictGfg0C5e9YIf4sHJ0yZLkauT2Ju
 ei0SGjV1V6Kkin/B3pXn5XWdkxaPPqGNHctM+u7xOZNy8IyxpW8j3NiQz
 O2kut+4Gnd0qnyuEZwjTq8xLAL8Jdi6Jz1T0o47uQNatVJ4460M7poVmP
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aW3WlE90
Subject: [Intel-wired-lan] [PATCH RESEND iwl-next 1/2] ice: Refactor FW data
 type and fix bitmap casting issue
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
 Simon Horman <horms@kernel.org>, przemyslaw.kitszel@intel.com,
 andriy.shevchenko@linux.intel.com
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
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Steven Zou <steven.zou@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  3 ++-
 drivers/net/ethernet/intel/ice/ice_lag.c      |  4 ++--
 drivers/net/ethernet/intel/ice/ice_switch.c   | 24 +++++++++++--------
 drivers/net/ethernet/intel/ice/ice_switch.h   |  4 ++--
 4 files changed, 20 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 2c703e95fb0d..5df50a0b7867 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -602,8 +602,9 @@ struct ice_aqc_recipe_data_elem {
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
-- 
2.31.1

