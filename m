Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E33143B254
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Oct 2021 14:22:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EB22660A36;
	Tue, 26 Oct 2021 12:22:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ngCpQBg20vEL; Tue, 26 Oct 2021 12:22:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DFA4D60632;
	Tue, 26 Oct 2021 12:22:55 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9F9211BF38D
 for <intel-wired-lan@osuosl.org>; Tue, 26 Oct 2021 12:22:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9AC4B400B7
 for <intel-wired-lan@osuosl.org>; Tue, 26 Oct 2021 12:22:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id scb9E5_asCG8 for <intel-wired-lan@osuosl.org>;
 Tue, 26 Oct 2021 12:22:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BB7374042D
 for <intel-wired-lan@osuosl.org>; Tue, 26 Oct 2021 12:22:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10148"; a="229749513"
X-IronPort-AV: E=Sophos;i="5.87,182,1631602800"; d="scan'208";a="229749513"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 05:22:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,182,1631602800"; d="scan'208";a="722312779"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga006.fm.intel.com with ESMTP; 26 Oct 2021 05:22:24 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@osuosl.org
Date: Tue, 26 Oct 2021 14:21:41 +0200
Message-Id: <20211026122141.3348-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] ice: allow short tunnel recipes
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

Creating unchained tunnel recipes (less than 5 lookups) is impossible
when adding tunnel match flag to recipe only if number of groups is
greater than one. Fix this by adding matching on flags in the same way
as matching on other protocol types.

Matching on flags can be added before creating groups of lookups. In
this case there is no need to add special code in ice_add_sw_recipe only
to add flags matching.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
This commit should be squashed with "ice: low level support for tunnels"

 drivers/net/ethernet/intel/ice/ice_switch.c | 34 ++++++---------------
 1 file changed, 9 insertions(+), 25 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index de08ec08158d..be98f3ed853c 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -4103,12 +4103,11 @@ ice_find_free_recp_res_idx(struct ice_hw *hw, const unsigned long *profiles,
  * ice_add_sw_recipe - function to call AQ calls to create switch recipe
  * @hw: pointer to hardware structure
  * @rm: recipe management list entry
- * @match_tun_mask: tunnel mask that needs to be programmed
  * @profiles: bitmap of profiles that will be associated.
  */
 static int
 ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
-		  u16 match_tun_mask, unsigned long *profiles)
+		  unsigned long *profiles)
 {
 	DECLARE_BITMAP(result_idx_bm, ICE_MAX_FV_WORDS);
 	struct ice_aqc_recipe_data_elem *tmp;
@@ -4316,15 +4315,6 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
 		}
 		buf[recps].content.act_ctrl_fwd_priority = rm->priority;
 
-		/* To differentiate among different UDP tunnels, a meta data ID
-		 * flag is used.
-		 */
-		if (match_tun_mask) {
-			buf[recps].content.lkup_indx[i] = ICE_TUN_FLAG_FV_IND;
-			buf[recps].content.mask[i] =
-				cpu_to_le16(match_tun_mask);
-		}
-
 		recps++;
 		rm->root_rid = (u8)rid;
 	}
@@ -4573,9 +4563,7 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	struct ice_recp_grp_entry *r_tmp;
 	struct ice_sw_fv_list_entry *tmp;
 	struct ice_sw_recipe *rm;
-	u16 match_tun_mask = 0;
 	int status = 0;
-	u16 mask;
 	u8 i;
 
 	if (!lkups_cnt)
@@ -4625,6 +4613,13 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	if (status)
 		goto err_unroll;
 
+	/* Create any special protocol/offset pairs, such as looking at tunnel
+	 * bits by extracting metadata
+	 */
+	status = ice_add_special_words(rinfo, lkup_exts);
+	if (status)
+		goto err_free_lkup_exts;
+
 	/* Group match words into recipes using preferred recipe grouping
 	 * criteria.
 	 */
@@ -4632,10 +4627,6 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	if (status)
 		goto err_unroll;
 
-	if (ice_tun_type_match_word(rinfo->tun_type, &mask) &&
-	    rm->n_grp_count > 1)
-		match_tun_mask = mask;
-
 	/* set the recipe priority if specified */
 	rm->priority = (u8)rinfo->priority;
 
@@ -4653,13 +4644,6 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 		set_bit((u16)fvit->profile_id, profiles);
 	}
 
-	/* Create any special protocol/offset pairs, such as looking at tunnel
-	 * bits by extracting metadata
-	 */
-	status = ice_add_special_words(rinfo, lkup_exts);
-	if (status)
-		goto err_free_lkup_exts;
-
 	/* Look for a recipe which matches our requested fv / mask list */
 	*rid = ice_find_recp(hw, lkup_exts);
 	if (*rid < ICE_MAX_NUM_RECIPES)
@@ -4667,7 +4651,7 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 		goto err_unroll;
 
 	/* Recipe we need does not exist, add a recipe */
-	status = ice_add_sw_recipe(hw, rm, match_tun_mask, profiles);
+	status = ice_add_sw_recipe(hw, rm, profiles);
 	if (status)
 		goto err_unroll;
 
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
