Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5171490D3A5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jun 2024 16:10:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB93982BC8;
	Tue, 18 Jun 2024 14:10:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TzSLPz8cYsOs; Tue, 18 Jun 2024 14:10:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E257982A53
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718719815;
	bh=NaB0EoY+1+dzsm754POkEyxASCpauFtK8gvX2XWeU6Q=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Zm2Rcu8SqHt1QMn0rHVyQrr7Njwzrs3TfNOXOGBGzTzJYqrU0OKJdZ1vg4TPjb0wj
	 xSHV5tY0oqzkwyjRqYUba0F8DreDyc9SeLDmHgn5zCzYVdJdgAsPgEUjHuhQMsxHsK
	 +6F7wdw/8bcVvdEPolga3n+VVZQhoHTaisYtMIbZfa6YTlRVpzueCrK9r9+Ka6yHG7
	 gTpFDuHjHRa+nXIKLO9x1Fo09S35w0+utsfdNLJF8zmoKdxE+ybBJYzkFyLYCado9z
	 8bSdl5WsRhV/xAO2rWt828H0EW5QAFkdDR4VPu3LCB1i3ntDvHmZmorQXjSmRh/AIL
	 2hJTQMZN+r2Nw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E257982A53;
	Tue, 18 Jun 2024 14:10:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 33EF21BF3AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 14:10:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 51BBC6102A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 14:10:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KewB-0eI8GMV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jun 2024 14:10:09 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3CFBF6101D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3CFBF6101D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3CFBF6101D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 14:10:09 +0000 (UTC)
X-CSE-ConnectionGUID: YazJTlP/Q6i91WByTAMB7w==
X-CSE-MsgGUID: Zj2DXPnNRje6a5KrsjfUZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="33137774"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="33137774"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 07:10:09 -0700
X-CSE-ConnectionGUID: Lhhhe9rsRDSPAnvuQitVNg==
X-CSE-MsgGUID: SnlQmFFYSGqtQ/nI18eX8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="46109795"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa004.fm.intel.com with ESMTP; 18 Jun 2024 07:10:07 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 58CCC34306;
 Tue, 18 Jun 2024 15:10:06 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 18 Jun 2024 16:11:57 +0200
Message-ID: <20240618141157.1881093-7-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240618141157.1881093-1-marcin.szycik@linux.intel.com>
References: <20240618141157.1881093-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718719809; x=1750255809;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DcB9Kobx6CtKizGMWbEiPO7ovB1AcC+k/POxvZvZ3PY=;
 b=WFmn9D/ZmsjzPMZQRYWYy9moLmZJOWdGOgScJSag8CinkwbC/J/Iz+Rb
 wDnZ2E4AIXQpdD/fHb97cVqPZz8EHwhoMUZDNLMF1o26m5rAvPDHPCl7c
 XQ1M5noLppQJiXzRrkofkPJSnMj36BADWhbuD3G5imd1fj8p5E1VQnPQK
 M7+lWXyRLVfQaUdjD8ucF+CjIp5TeeZV7cBWxb2e0g55ZGLivr7DLTkLY
 IzbPj/QMSZmt/E5GQ1EC2ROOjU1GEV734Fq8Hq3wqlh8hEL90Ro6/vkkd
 JkBexxbYWienFJcfSLLVbGVpEVXrqzy7Tq95nBAmj1aa/KHLx02JlS0G8
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WFmn9D/Z
Subject: [Intel-wired-lan] [PATCH iwl-next 6/6] ice: Remove unused members
 from switch API
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
Cc: netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@linux.intel.com>,
 przemyslaw.kitszel@intel.com, michal.swiatkowski@linux.intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Remove several members of struct ice_sw_recipe and struct
ice_prot_lkup_ext. Remove struct ice_recp_grp_entry and struct
ice_pref_recipe_group, since they are now unused as well.

All of the deleted members were only written to and never read, so it's
pointless to keep them.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c   |  7 ---
 .../ethernet/intel/ice/ice_protocol_type.h    | 17 -------
 drivers/net/ethernet/intel/ice/ice_switch.c   | 51 ++++---------------
 drivers/net/ethernet/intel/ice/ice_switch.h   | 16 ------
 4 files changed, 10 insertions(+), 81 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index df1623ddbaf6..23217580796c 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -961,14 +961,7 @@ static void ice_cleanup_fltr_mgmt_struct(struct ice_hw *hw)
 	}
 	recps = sw->recp_list;
 	for (i = 0; i < ICE_MAX_NUM_RECIPES; i++) {
-		struct ice_recp_grp_entry *rg_entry, *tmprg_entry;
-
 		recps[i].root_rid = i;
-		list_for_each_entry_safe(rg_entry, tmprg_entry,
-					 &recps[i].rg_list, l_entry) {
-			list_del(&rg_entry->l_entry);
-			devm_kfree(ice_hw_to_dev(hw), rg_entry);
-		}
 
 		if (recps[i].adv_rule) {
 			struct ice_adv_fltr_mgmt_list_entry *tmp_entry;
diff --git a/drivers/net/ethernet/intel/ice/ice_protocol_type.h b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
index 47e405bf1382..7c09ea0f03ba 100644
--- a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
@@ -455,7 +455,6 @@ struct ice_prot_ext_tbl_entry {
 
 /* Extractions to be looked up for a given recipe */
 struct ice_prot_lkup_ext {
-	u16 prot_type;
 	u8 n_val_words;
 	/* create a buffer to hold max words per recipe */
 	u16 field_mask[ICE_MAX_CHAIN_WORDS];
@@ -463,20 +462,4 @@ struct ice_prot_lkup_ext {
 	struct ice_fv_word fv_words[ICE_MAX_CHAIN_WORDS];
 };
 
-struct ice_pref_recipe_group {
-	u8 n_val_pairs;		/* Number of valid pairs */
-	struct ice_fv_word pairs[ICE_NUM_WORDS_RECIPE];
-	u16 mask[ICE_NUM_WORDS_RECIPE];
-};
-
-struct ice_recp_grp_entry {
-	struct list_head l_entry;
-
-#define ICE_INVAL_CHAIN_IND 0xFF
-	u16 rid;
-	u8 chain_idx;
-	u16 fv_idx[ICE_NUM_WORDS_RECIPE];
-	u16 fv_mask[ICE_NUM_WORDS_RECIPE];
-	struct ice_pref_recipe_group r_group;
-};
 #endif /* _ICE_PROTOCOL_TYPE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 3fa747fca7c6..80796834194d 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -1471,7 +1471,6 @@ int ice_init_def_sw_recp(struct ice_hw *hw)
 		recps[i].root_rid = i;
 		INIT_LIST_HEAD(&recps[i].filt_rules);
 		INIT_LIST_HEAD(&recps[i].filt_replay_rules);
-		INIT_LIST_HEAD(&recps[i].rg_list);
 		mutex_init(&recps[i].filt_rule_lock);
 	}
 
@@ -2339,18 +2338,10 @@ ice_get_recp_frm_fw(struct ice_hw *hw, struct ice_sw_recipe *recps, u8 rid,
 
 	for (sub_recps = 0; sub_recps < num_recps; sub_recps++) {
 		struct ice_aqc_recipe_data_elem root_bufs = tmp[sub_recps];
-		struct ice_recp_grp_entry *rg_entry;
 		u8 i, prof, idx, prot = 0;
 		bool is_root;
 		u16 off = 0;
 
-		rg_entry = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*rg_entry),
-					GFP_KERNEL);
-		if (!rg_entry) {
-			status = -ENOMEM;
-			goto err_unroll;
-		}
-
 		idx = root_bufs.recipe_indx;
 		is_root = root_bufs.content.rid & ICE_AQ_RECIPE_ID_IS_ROOT;
 
@@ -2364,10 +2355,7 @@ ice_get_recp_frm_fw(struct ice_hw *hw, struct ice_sw_recipe *recps, u8 rid,
 				      ICE_MAX_NUM_PROFILES);
 		for (i = 0; i < ICE_NUM_WORDS_RECIPE; i++) {
 			u8 lkup_indx = root_bufs.content.lkup_indx[i];
-
-			rg_entry->fv_idx[i] = lkup_indx;
-			rg_entry->fv_mask[i] =
-				le16_to_cpu(root_bufs.content.mask[i]);
+			u16 lkup_mask = le16_to_cpu(root_bufs.content.mask[i]);
 
 			/* If the recipe is a chained recipe then all its
 			 * child recipe's result will have a result index.
@@ -2378,26 +2366,21 @@ ice_get_recp_frm_fw(struct ice_hw *hw, struct ice_sw_recipe *recps, u8 rid,
 			 * has ICE_AQ_RECIPE_LKUP_IGNORE or 0 since it isn't a
 			 * valid offset value.
 			 */
-			if (test_bit(rg_entry->fv_idx[i], hw->switch_info->prof_res_bm[prof]) ||
-			    rg_entry->fv_idx[i] & ICE_AQ_RECIPE_LKUP_IGNORE ||
-			    rg_entry->fv_idx[i] == 0)
+			if (!lkup_indx ||
+			    (lkup_indx & ICE_AQ_RECIPE_LKUP_IGNORE) ||
+			    test_bit(lkup_indx,
+				     hw->switch_info->prof_res_bm[prof]))
 				continue;
 
-			ice_find_prot_off(hw, ICE_BLK_SW, prof,
-					  rg_entry->fv_idx[i], &prot, &off);
+			ice_find_prot_off(hw, ICE_BLK_SW, prof, lkup_indx,
+					  &prot, &off);
 			lkup_exts->fv_words[fv_word_idx].prot_id = prot;
 			lkup_exts->fv_words[fv_word_idx].off = off;
-			lkup_exts->field_mask[fv_word_idx] =
-				rg_entry->fv_mask[i];
+			lkup_exts->field_mask[fv_word_idx] = lkup_mask;
 			fv_word_idx++;
 		}
-		/* populate rg_list with the data from the child entry of this
-		 * recipe
-		 */
-		list_add(&rg_entry->l_entry, &recps[rid].rg_list);
 
 		/* Propagate some data to the recipe database */
-		recps[idx].is_root = !!is_root;
 		recps[idx].priority = root_bufs.content.act_ctrl_fwd_priority;
 		recps[idx].need_pass_l2 = root_bufs.content.act_ctrl &
 					  ICE_AQ_RECIPE_ACT_NEED_PASS_L2;
@@ -2405,11 +2388,8 @@ ice_get_recp_frm_fw(struct ice_hw *hw, struct ice_sw_recipe *recps, u8 rid,
 					   ICE_AQ_RECIPE_ACT_ALLOW_PASS_L2;
 		bitmap_zero(recps[idx].res_idxs, ICE_MAX_FV_WORDS);
 		if (root_bufs.content.result_indx & ICE_AQ_RECIPE_RESULT_EN) {
-			recps[idx].chain_idx = root_bufs.content.result_indx &
-				~ICE_AQ_RECIPE_RESULT_EN;
-			set_bit(recps[idx].chain_idx, recps[idx].res_idxs);
-		} else {
-			recps[idx].chain_idx = ICE_INVAL_CHAIN_IND;
+			set_bit(root_bufs.content.result_indx &
+				~ICE_AQ_RECIPE_RESULT_EN, recps[idx].res_idxs);
 		}
 
 		if (!is_root) {
@@ -2429,8 +2409,6 @@ ice_get_recp_frm_fw(struct ice_hw *hw, struct ice_sw_recipe *recps, u8 rid,
 
 	/* Complete initialization of the root recipe entry */
 	lkup_exts->n_val_words = fv_word_idx;
-	recps[rid].big_recp = (num_recps > 1);
-	recps[rid].n_grp_count = (u8)num_recps;
 
 	/* Copy result indexes */
 	bitmap_copy(recps[rid].res_idxs, result_bm, ICE_MAX_FV_WORDS);
@@ -5157,7 +5135,6 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
 		return status;
 
 	recipe = &hw->switch_info->recp_list[rid];
-	recipe->is_root = true;
 	root = &buf[recp_cnt - 1];
 	fill_recipe_template(root, rid, rm);
 
@@ -5317,9 +5294,7 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	DECLARE_BITMAP(fv_bitmap, ICE_MAX_NUM_PROFILES);
 	DECLARE_BITMAP(profiles, ICE_MAX_NUM_PROFILES);
 	struct ice_prot_lkup_ext *lkup_exts;
-	struct ice_recp_grp_entry *r_entry;
 	struct ice_sw_fv_list_entry *fvit;
-	struct ice_recp_grp_entry *r_tmp;
 	struct ice_sw_fv_list_entry *tmp;
 	struct ice_sw_recipe *rm;
 	int status = 0;
@@ -5361,7 +5336,6 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	 * headers being programmed.
 	 */
 	INIT_LIST_HEAD(&rm->fv_list);
-	INIT_LIST_HEAD(&rm->rg_list);
 
 	/* Get bitmap of field vectors (profiles) that are compatible with the
 	 * rule request; only these will be searched in the subsequent call to
@@ -5465,11 +5439,6 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	}
 
 err_unroll:
-	list_for_each_entry_safe(r_entry, r_tmp, &rm->rg_list, l_entry) {
-		list_del(&r_entry->l_entry);
-		devm_kfree(ice_hw_to_dev(hw), r_entry);
-	}
-
 	list_for_each_entry_safe(fvit, tmp, &rm->fv_list, list_entry) {
 		list_del(&fvit->list_entry);
 		devm_kfree(ice_hw_to_dev(hw), fvit);
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index 84530f57e84a..3e4af531b875 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -216,7 +216,6 @@ struct ice_sw_recipe {
 	/* For a chained recipe the root recipe is what should be used for
 	 * programming rules
 	 */
-	u8 is_root;
 	u8 root_rid;
 	u8 recp_created;
 
@@ -230,19 +229,6 @@ struct ice_sw_recipe {
 	u16 fv_idx[ICE_MAX_CHAIN_WORDS];
 	u16 fv_mask[ICE_MAX_CHAIN_WORDS];
 
-	/* if this recipe is a collection of other recipe */
-	u8 big_recp;
-
-	/* if this recipe is part of another bigger recipe then chain index
-	 * corresponding to this recipe
-	 */
-	u8 chain_idx;
-
-	/* if this recipe is a collection of other recipe then count of other
-	 * recipes and recipe IDs of those recipes
-	 */
-	u8 n_grp_count;
-
 	/* Bit map specifying the IDs associated with this group of recipe */
 	DECLARE_BITMAP(r_bitmap, ICE_MAX_NUM_RECIPES);
 
@@ -274,8 +260,6 @@ struct ice_sw_recipe {
 	u8 need_pass_l2:1;
 	u8 allow_pass_l2:1;
 
-	struct list_head rg_list;
-
 	/* This struct saves the fv_words for a given lookup */
 	struct ice_prot_lkup_ext lkup_exts;
 };
-- 
2.45.0

