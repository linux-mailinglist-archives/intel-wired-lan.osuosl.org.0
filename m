Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA12915055
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jun 2024 16:44:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C90B480DAA;
	Mon, 24 Jun 2024 14:44:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1cXLUdkeEqB4; Mon, 24 Jun 2024 14:44:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71F9E80CF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719240246;
	bh=t8w/6BoSO8Phn0XHGOCMG6gX+kebgR3CsmFcUxYLGRI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7QEeA7aUuCsu4iq9PAXlPja9bh/PlCT3xoq0WAOjJspCFmwhfo/6kM3JFjYslM9Di
	 fhEfnPUQihmEVzPWJPFbyyZZ1nB+IFM/yQ6C/mSbwi0I6Qy+fm00wJebcBOsJiPPCo
	 jV4XjGilMgS3BeAfMGSGt58oX6rWACDNYwk5XY0GZmvl02nJNJT0UEJUNe1Fa1Niqp
	 pKxKqRYh7Lgz19EIDZIgn744aFRvet6QKDLPMuGgMJF4rfea0VoYkIa4OaxYtmYg6G
	 RSFyCVzxTQgUsoic3dGeEmVrnGWObvW74emEpk3JMVtyyt+02Y4Swxi/YBLOndmnwK
	 tc6Cv1p3ISIgQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 71F9E80CF8;
	Mon, 24 Jun 2024 14:44:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 309DE1BF591
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 14:44:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2BBCE608F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 14:44:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nXXiFVjxPJFR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jun 2024 14:44:03 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 35195608C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 35195608C7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 35195608C7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 14:44:03 +0000 (UTC)
X-CSE-ConnectionGUID: cgBwpZUxSQ6KAAo6xVhJ+Q==
X-CSE-MsgGUID: nIN9gWm7SJmqLeBTmWhRBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="16040488"
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="16040488"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 07:44:03 -0700
X-CSE-ConnectionGUID: CFiIh6cCTISag7QDL7c9eg==
X-CSE-MsgGUID: xg3tQlzeQSiZw7Mm60q+tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="44022083"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa008.jf.intel.com with ESMTP; 24 Jun 2024 07:44:00 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id A3D9E27BB6;
 Mon, 24 Jun 2024 15:43:48 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 24 Jun 2024 16:45:27 +0200
Message-ID: <20240624144530.690545-5-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240624144530.690545-1-marcin.szycik@linux.intel.com>
References: <20240624144530.690545-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719240243; x=1750776243;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+FDaaHIn7mjc2fkllZuwA9JqJJInxKoNI41jJ8/rja4=;
 b=C/EJJhBiPdVFE/yp9gH14Ek9gmZVfXnh/5GN3+cxc1GptYOonyjPfyKu
 zopgaFDAYsz11P3bMBcDJ05FtuMBPDosUCA750/2g/YxdNrPaerOnBR15
 UzUC8v3I0xJDuk3BpuU8zxhDLobE168fNt4Be/PIbTrFto5L1Y0Q5/lee
 H/YL3LqKpzesSaGrQklTMjRrfopAQ34gIatntvZMB7jzt4ghVFtuc3InV
 rlpcTmxmV4xBSdF2z//3km/d7EMwXjwcs9kQntN5FtzRDAfZfj21wM5bH
 3lRRW3ru2FdmCuDHziy5ff2nHHG9PQ6+V0SDIWQglg0PlP5Evvlx1eAFl
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C/EJJhBi
Subject: [Intel-wired-lan] [PATCH iwl-next v2 4/7] ice: remove unused recipe
 bookkeeping data
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
Cc: netdev@vger.kernel.org, aleksander.lobakin@intel.com,
 przemyslaw.kitszel@intel.com, Marcin Szycik <marcin.szycik@linux.intel.com>,
 michal.swiatkowski@linux.intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Remove root_buf from recipe struct. Its only usage was in ice_find_recp(),
where if recipe had an inverse action, it was skipped, but actually the
driver never adds inverse actions, so effectively it was pointless.

Without root_buf, the recipe data element in ice_add_sw_recipe() does
not need to be persistent and can also be automatically deallocated with
__free, which nicely simplifies unroll.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c |  1 -
 drivers/net/ethernet/intel/ice/ice_switch.c | 55 ++++++---------------
 drivers/net/ethernet/intel/ice/ice_switch.h |  2 -
 3 files changed, 15 insertions(+), 43 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 9cd649053ef8..39fb81b56df7 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -993,7 +993,6 @@ static void ice_cleanup_fltr_mgmt_struct(struct ice_hw *hw)
 				devm_kfree(ice_hw_to_dev(hw), lst_itr);
 			}
 		}
-		devm_kfree(ice_hw_to_dev(hw), recps[i].root_buf);
 	}
 	ice_rm_all_sw_replay_rule_info(hw);
 	devm_kfree(ice_hw_to_dev(hw), sw->recp_list);
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 3ee4242f9880..81e5448da1aa 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -2445,13 +2445,6 @@ ice_get_recp_frm_fw(struct ice_hw *hw, struct ice_sw_recipe *recps, u8 rid,
 	lkup_exts->n_val_words = fv_word_idx;
 	recps[rid].big_recp = (num_recps > 1);
 	recps[rid].n_grp_count = (u8)num_recps;
-	recps[rid].root_buf = devm_kmemdup(ice_hw_to_dev(hw), tmp,
-					   recps[rid].n_grp_count * sizeof(*recps[rid].root_buf),
-					   GFP_KERNEL);
-	if (!recps[rid].root_buf) {
-		status = -ENOMEM;
-		goto err_unroll;
-	}
 
 	/* Copy result indexes */
 	bitmap_copy(recps[rid].res_idxs, result_bm, ICE_MAX_FV_WORDS);
@@ -4768,11 +4761,6 @@ ice_find_recp(struct ice_hw *hw, struct ice_prot_lkup_ext *lkup_exts,
 				continue;
 		}
 
-		/* Skip inverse action recipes */
-		if (recp[i].root_buf && recp[i].root_buf->content.act_ctrl &
-		    ICE_AQ_RECIPE_ACT_INV_ACT)
-			continue;
-
 		/* if number of words we are looking for match */
 		if (lkup_exts->n_val_words == recp[i].lkup_exts.n_val_words) {
 			struct ice_fv_word *ar = recp[i].lkup_exts.fv_words;
@@ -5081,9 +5069,9 @@ static int
 ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
 		  unsigned long *profiles)
 {
+	struct ice_aqc_recipe_data_elem *buf __free(kfree) = NULL;
 	DECLARE_BITMAP(result_idx_bm, ICE_MAX_FV_WORDS);
 	struct ice_aqc_recipe_content *content;
-	struct ice_aqc_recipe_data_elem *buf;
 	struct ice_recp_grp_entry *entry;
 	u16 free_res_idx;
 	u8 chain_idx;
@@ -5112,12 +5100,9 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
 	if (rm->n_grp_count > ICE_MAX_CHAIN_RECIPE)
 		return -ENOSPC;
 
-	buf = devm_kcalloc(ice_hw_to_dev(hw), rm->n_grp_count, sizeof(*buf),
-			   GFP_KERNEL);
-	if (!buf) {
-		status = -ENOMEM;
-		goto err_mem;
-	}
+	buf = kcalloc(rm->n_grp_count, sizeof(*buf), GFP_KERNEL);
+	if (!buf)
+		return -ENOMEM;
 
 	bitmap_zero(rm->r_bitmap, ICE_MAX_NUM_RECIPES);
 
@@ -5130,7 +5115,7 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
 
 		status = ice_alloc_recipe(hw, &entry->rid);
 		if (status)
-			goto err_unroll;
+			return status;
 
 		content = &buf[recps].content;
 
@@ -5160,8 +5145,7 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
 			 */
 			if (chain_idx >= ICE_MAX_FV_WORDS) {
 				ice_debug(hw, ICE_DBG_SW, "No chain index available\n");
-				status = -ENOSPC;
-				goto err_unroll;
+				return -ENOSPC;
 			}
 
 			entry->chain_idx = chain_idx;
@@ -5215,7 +5199,7 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
 		 */
 		status = ice_alloc_recipe(hw, &rid);
 		if (status)
-			goto err_unroll;
+			return status;
 
 		content = &buf[recps].content;
 
@@ -5228,10 +5212,9 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
 		last_chain_entry = devm_kzalloc(ice_hw_to_dev(hw),
 						sizeof(*last_chain_entry),
 						GFP_KERNEL);
-		if (!last_chain_entry) {
-			status = -ENOMEM;
-			goto err_unroll;
-		}
+		if (!last_chain_entry)
+			return -ENOMEM;
+
 		last_chain_entry->rid = rid;
 		memset(&content->lkup_indx, 0, sizeof(content->lkup_indx));
 		/* All recipes use look-up index 0 to match switch ID. */
@@ -5265,12 +5248,12 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
 	}
 	status = ice_acquire_change_lock(hw, ICE_RES_WRITE);
 	if (status)
-		goto err_unroll;
+		return status;
 
 	status = ice_aq_add_recipe(hw, buf, rm->n_grp_count, NULL);
 	ice_release_change_lock(hw);
 	if (status)
-		goto err_unroll;
+		return status;
 
 	/* Every recipe that just got created add it to the recipe
 	 * book keeping list
@@ -5288,10 +5271,8 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
 				idx_found = true;
 			}
 
-		if (!idx_found) {
-			status = -EIO;
-			goto err_unroll;
-		}
+		if (!idx_found)
+			return -EIO;
 
 		recp = &sw->recp_list[entry->rid];
 		is_root = (rm->root_rid == entry->rid);
@@ -5327,13 +5308,8 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
 		recp->allow_pass_l2 = rm->allow_pass_l2;
 		recp->recp_created = true;
 	}
-	rm->root_buf = buf;
-	return status;
 
-err_unroll:
-err_mem:
-	devm_kfree(ice_hw_to_dev(hw), buf);
-	return status;
+	return 0;
 }
 
 /**
@@ -5632,7 +5608,6 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 		devm_kfree(ice_hw_to_dev(hw), fvit);
 	}
 
-	devm_kfree(ice_hw_to_dev(hw), rm->root_buf);
 	kfree(rm);
 
 err_free_lkup_exts:
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index ad98e98c812d..0c410ce29700 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -274,8 +274,6 @@ struct ice_sw_recipe {
 
 	struct list_head rg_list;
 
-	/* AQ buffer associated with this recipe */
-	struct ice_aqc_recipe_data_elem *root_buf;
 	/* This struct saves the fv_words for a given lookup */
 	struct ice_prot_lkup_ext lkup_exts;
 };
-- 
2.45.0

