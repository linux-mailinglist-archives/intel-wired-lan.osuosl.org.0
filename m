Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE7F90D3A9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jun 2024 16:10:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1AD7682D04;
	Tue, 18 Jun 2024 14:10:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XgbY-RedmfPH; Tue, 18 Jun 2024 14:10:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9CA2F82C1E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718719819;
	bh=GpBJzPL7ouuWRsBUMUXOjRa5w5WCnGr0Chs0AoqfyLE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pkWg2jm9smBfXUkNz8XeOFKkBWiLJppiR0ChM9lPs2utO80vbmikf44TmOYReRnL1
	 NbKXp3n8+CDUz8rcm4UcliSB/tq7I9SLf5Zjb2VYvtaEAIQS8szkPeq/MMJmQ6fkLD
	 8w8y0OLw4ZYSor6Cv1HjSsMpH8PUhLLZVhWHtqzMgCVcRL7AHK7eA39gXE37A8HlJj
	 TbL8Yqy6ql7s69QcUqSldJ26MvrHx37NZFQup+rGOoe8Il/Ub/l+5/ub7Fx0gc/8ED
	 Cg61+72ZCuGmHGuLZcNgMf0uSmbhDDh82mGd/TPeJBoZeT4zvuXspMexpLc0MiTGQJ
	 HtY8da66LrkGg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9CA2F82C1E;
	Tue, 18 Jun 2024 14:10:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 08A7F1BF3AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 14:10:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EA11A413C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 14:10:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NpmSUqXCDLih for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jun 2024 14:10:10 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B0CE3413DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B0CE3413DC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B0CE3413DC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 14:10:10 +0000 (UTC)
X-CSE-ConnectionGUID: kvEYm9Y8TleXpZSs7HTyKg==
X-CSE-MsgGUID: 2/epYkr4ReipEZw2RJubVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="33137780"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="33137780"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 07:10:11 -0700
X-CSE-ConnectionGUID: soRc47A8T8ubOItSP9L2Tg==
X-CSE-MsgGUID: NBN1xB/+RBiXK0HOVY16mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="46109801"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa004.fm.intel.com with ESMTP; 18 Jun 2024 07:10:08 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 49CEA34305;
 Tue, 18 Jun 2024 15:10:05 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 18 Jun 2024 16:11:56 +0200
Message-ID: <20240618141157.1881093-6-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240618141157.1881093-1-marcin.szycik@linux.intel.com>
References: <20240618141157.1881093-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718719811; x=1750255811;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OZE/6kRpM2rgh8pQGwIIau4UMpbLEfMnMZEqGK5c4Co=;
 b=bX9oN9vAjgZoOkQfXgTxB1Y9UrGB6+Tii6Yd/GfjJstd+ONZAe5vnkyR
 rcgZ88TyG/Iel9EPWba/tf6P62ziJYV7/BcX3+dC1Q2H8gNJ5qowXqW4d
 XPU29M8QnWXW0qpwqKj6e4sHc/uGMwh5szLWtrTCz6WTdZZPqV8KzPYTA
 BlDRJSqlszc7wS2nzwE7oz8KewNzOm4s/kseDsJwa4/OeYigF0IIdUy+1
 JFetCNojwKZCaBbw2KMniH0zKMN17i83Y9v81iuTCezgsX6Y1b5P3SD+5
 7My+Lh3FEwJEZ7DIc7MukFCVQ8MKvb8aN7RPg2IdWieYls/44vWL5o+0M
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bX9oN9vA
Subject: [Intel-wired-lan] [PATCH iwl-next 5/6] ice: Optimize switch recipe
 creation
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

Currently when creating switch recipes, switch ID is always added as the
first word in every recipe. There are only 5 words in a recipe, so one
word is always wasted. This is also true for the last recipe, which stores
result indexes (in case of chain recipes). Therefore the maximum usable
length of a chain recipe is 4 * 4 = 16 words. 4 words in a recipe, 4
recipes that can be chained (using a 5th one for result indexes).

Current max size chained recipe:
0: smmmm
1: smmmm
2: smmmm
3: smmmm
4: srrrr

Where:
s - switch ID
m - regular match (e.g. ipv4 src addr, udp dst port, etc.)
r - result index

Switch ID does not actually need to be present in every recipe, only in one
of them (in case of chained recipe). This frees up to 8 extra words:
3 from recipes in the middle (because first recipe still needs to have
switch ID), and 5 from one extra recipe (because now the last recipe also
does not have switch ID, so it can chain 1 more recipe).

Max size chained recipe after changes:
0: smmmm
1: Mmmmm
2: Mmmmm
3: Mmmmm
4: MMMMM
5: Rrrrr

Extra usable words available after this change are highlighted with capital
letters.

Changing how switch ID is added is not straightforward, because it's not a
regular lookup. Its FV index and mask can't be determined based on protocol
+ offset pair read from package and instead need to be added manually.

Additionally, change how result indexes are added. Currently they are
always inserted in a new recipe at the end. Example for 13 words, (with
above optimization, switch ID being one of the words):
0: smmmm
1: mmmmm
2: mmmxx
3: rrrxx

Where:
x - unused word

In this and some other cases, the result indexes can be moved just after
last matches because there are unused words, saving one recipe. Example
for 13 words after both optimizations:
0: smmmm
1: mmmmm
2: mmmrr

Note how one less result index is needed in this case, because the last
recipe does not need to "link" to itself.

There are cases when adding an additional recipe for result indexes cannot
be avoided. In that cases result indexes are all put in the last recipe.
Example for 14 words after both optimizations:
0: smmmm
1: mmmmm
2: mmmmx
3: rrrxx

With these two changes, recipes/rules are more space efficient, allowing
more to be created in total.

Co-developed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 .../ethernet/intel/ice/ice_protocol_type.h    |  22 +-
 drivers/net/ethernet/intel/ice/ice_switch.c   | 525 +++++++-----------
 drivers/net/ethernet/intel/ice/ice_switch.h   |   2 +
 3 files changed, 212 insertions(+), 337 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_protocol_type.h b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
index c396dabacef4..47e405bf1382 100644
--- a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
@@ -7,18 +7,24 @@
 
 /* Each recipe can match up to 5 different fields. Fields to match can be meta-
  * data, values extracted from packet headers, or results from other recipes.
- * One of the 5 fields is reserved for matching the switch ID. So, up to 4
- * recipes can provide intermediate results to another one through chaining,
- * e.g. recipes 0, 1, 2, and 3 can provide intermediate results to recipe 4.
+ * Therefore, up to 5 recipes can provide intermediate results to another one
+ * through chaining, e.g. recipes 0, 1, 2, 3 and 4 can provide intermediate
+ * results to recipe 5. Note that one of the fields in one of the recipes must
+ * always be reserved for matching the switch ID.
  */
-#define ICE_NUM_WORDS_RECIPE 4
+#define ICE_NUM_WORDS_RECIPE 5
 
-/* Max recipes that can be chained */
+/* Max recipes that can be chained, not including the last one, which combines
+ * intermediate results.
+ */
 #define ICE_MAX_CHAIN_RECIPE 5
 
-/* 1 word reserved for switch ID from allowed 5 words.
- * So a recipe can have max 4 words. And you can chain 5 such recipes
- * together. So maximum words that can be programmed for look up is 5 * 4.
+/* Total max recipes in chain recipe (including intermediate results) */
+#define ICE_MAX_CHAIN_RECIPE_RES (ICE_MAX_CHAIN_RECIPE + 1)
+
+/* A recipe can have max 5 words, and 5 recipes can be chained together (using
+ * the 6th one, which would contain only result indexes). So maximum words that
+ * can be programmed for lookup is 5 * 5 (not including intermediate results).
  */
 #define ICE_MAX_CHAIN_WORDS (ICE_NUM_WORDS_RECIPE * ICE_MAX_CHAIN_RECIPE)
 
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index f8f9d192d345..3fa747fca7c6 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -2281,20 +2281,6 @@ static void ice_get_recp_to_prof_map(struct ice_hw *hw)
 	}
 }
 
-/**
- * ice_collect_result_idx - copy result index values
- * @buf: buffer that contains the result index
- * @recp: the recipe struct to copy data into
- */
-static void
-ice_collect_result_idx(struct ice_aqc_recipe_data_elem *buf,
-		       struct ice_sw_recipe *recp)
-{
-	if (buf->content.result_indx & ICE_AQ_RECIPE_RESULT_EN)
-		set_bit(buf->content.result_indx & ~ICE_AQ_RECIPE_RESULT_EN,
-			recp->res_idxs);
-}
-
 /**
  * ice_get_recp_frm_fw - update SW bookkeeping from FW recipe entries
  * @hw: pointer to hardware structure
@@ -2377,11 +2363,11 @@ ice_get_recp_frm_fw(struct ice_hw *hw, struct ice_sw_recipe *recps, u8 rid,
 		prof = find_first_bit(recipe_to_profile[idx],
 				      ICE_MAX_NUM_PROFILES);
 		for (i = 0; i < ICE_NUM_WORDS_RECIPE; i++) {
-			u8 lkup_indx = root_bufs.content.lkup_indx[i + 1];
+			u8 lkup_indx = root_bufs.content.lkup_indx[i];
 
 			rg_entry->fv_idx[i] = lkup_indx;
 			rg_entry->fv_mask[i] =
-				le16_to_cpu(root_bufs.content.mask[i + 1]);
+				le16_to_cpu(root_bufs.content.mask[i]);
 
 			/* If the recipe is a chained recipe then all its
 			 * child recipe's result will have a result index.
@@ -4884,105 +4870,56 @@ ice_fill_valid_words(struct ice_adv_lkup_elem *rule,
 	return ret_val;
 }
 
-/**
- * ice_create_first_fit_recp_def - Create a recipe grouping
- * @hw: pointer to the hardware structure
- * @lkup_exts: an array of protocol header extractions
- * @rg_list: pointer to a list that stores new recipe groups
- * @recp_cnt: pointer to a variable that stores returned number of recipe groups
- *
- * Using first fit algorithm, take all the words that are still not done
- * and start grouping them in 4-word groups. Each group makes up one
- * recipe.
- */
-static int
-ice_create_first_fit_recp_def(struct ice_hw *hw,
-			      struct ice_prot_lkup_ext *lkup_exts,
-			      struct list_head *rg_list,
-			      u8 *recp_cnt)
-{
-	struct ice_pref_recipe_group *grp = NULL;
-	u8 j;
-
-	*recp_cnt = 0;
-
-	for (j = 0; j < lkup_exts->n_val_words; j++) {
-		if (!grp || grp->n_val_pairs == ICE_NUM_WORDS_RECIPE) {
-			struct ice_recp_grp_entry *entry;
-
-			entry = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*entry),
-					     GFP_KERNEL);
-			if (!entry)
-				return -ENOMEM;
-
-			list_add(&entry->l_entry, rg_list);
-			grp = &entry->r_group;
-			(*recp_cnt)++;
-		}
-
-		grp->pairs[grp->n_val_pairs].prot_id =
-			lkup_exts->fv_words[j].prot_id;
-		grp->pairs[grp->n_val_pairs].off = lkup_exts->fv_words[j].off;
-		grp->mask[grp->n_val_pairs] = lkup_exts->field_mask[j];
-		grp->n_val_pairs++;
-	}
-
-	return 0;
-}
-
 /**
  * ice_fill_fv_word_index - fill in the field vector indices for a recipe group
  * @hw: pointer to the hardware structure
- * @fv_list: field vector with the extraction sequence information
- * @rg_list: recipe groupings with protocol-offset pairs
+ * @rm: recipe management list entry
  *
  * Helper function to fill in the field vector indices for protocol-offset
  * pairs. These indexes are then ultimately programmed into a recipe.
  */
 static int
-ice_fill_fv_word_index(struct ice_hw *hw, struct list_head *fv_list,
-		       struct list_head *rg_list)
+ice_fill_fv_word_index(struct ice_hw *hw, struct ice_sw_recipe *rm)
 {
 	struct ice_sw_fv_list_entry *fv;
-	struct ice_recp_grp_entry *rg;
 	struct ice_fv_word *fv_ext;
+	u8 i;
 
-	if (list_empty(fv_list))
-		return 0;
+	if (list_empty(&rm->fv_list))
+		return -EINVAL;
 
-	fv = list_first_entry(fv_list, struct ice_sw_fv_list_entry,
+	fv = list_first_entry(&rm->fv_list, struct ice_sw_fv_list_entry,
 			      list_entry);
 	fv_ext = fv->fv_ptr->ew;
 
-	list_for_each_entry(rg, rg_list, l_entry) {
-		u8 i;
+	/* Add switch id as the first word. */
+	rm->fv_idx[0] = ICE_AQ_SW_ID_LKUP_IDX;
+	rm->fv_mask[0] = ICE_AQ_SW_ID_LKUP_MASK;
+	rm->n_ext_words++;
 
-		for (i = 0; i < rg->r_group.n_val_pairs; i++) {
-			struct ice_fv_word *pr;
-			bool found = false;
-			u16 mask;
-			u8 j;
-
-			pr = &rg->r_group.pairs[i];
-			mask = rg->r_group.mask[i];
-
-			for (j = 0; j < hw->blk[ICE_BLK_SW].es.fvw; j++)
-				if (fv_ext[j].prot_id == pr->prot_id &&
-				    fv_ext[j].off == pr->off) {
-					found = true;
+	for (i = 1; i < rm->n_ext_words; i++) {
+		struct ice_fv_word *fv_word = &rm->ext_words[i - 1];
+		u16 fv_mask = rm->word_masks[i - 1];
+		bool found = false;
+		u8 j;
 
-					/* Store index of field vector */
-					rg->fv_idx[i] = j;
-					rg->fv_mask[i] = mask;
-					break;
-				}
+		for (j = 0; j < hw->blk[ICE_BLK_SW].es.fvw; j++) {
+			if (fv_ext[j].prot_id == fv_word->prot_id &&
+			    fv_ext[j].off == fv_word->off) {
+				found = true;
 
-			/* Protocol/offset could not be found, caller gave an
-			 * invalid pair
-			 */
-			if (!found)
-				return -EINVAL;
+				/* Store index of field vector */
+				rm->fv_idx[i] = j;
+				rm->fv_mask[i] = fv_mask;
+				break;
+			}
 		}
+
+		/* Protocol/offset could not be found, caller gave an invalid
+		 * pair.
+		 */
+		if (!found)
+			return -EINVAL;
 	}
 
 	return 0;
@@ -5055,6 +4992,69 @@ ice_find_free_recp_res_idx(struct ice_hw *hw, const unsigned long *profiles,
 	return (u16)bitmap_weight(free_idx, ICE_MAX_FV_WORDS);
 }
 
+/**
+ * ice_calc_recp_cnt - calculate number of recipes based on word count
+ * @word_cnt: number of lookup words
+ *
+ * Word count should include switch ID word and regular lookup words.
+ * Returns: number of recipes required to fit @word_cnt, including extra recipes
+ * needed for recipe chaining (if needed).
+ */
+static int ice_calc_recp_cnt(u8 word_cnt)
+{
+	/* All words fit in a single recipe, no need for chaining. */
+	if (word_cnt <= ICE_NUM_WORDS_RECIPE)
+		return 1;
+
+	/* Recipe chaining required. Result indexes are fitted right after
+	 * regular lookup words. In some cases a new recipe must be added in
+	 * order to fit result indexes.
+	 *
+	 * While the word count increases, every 5 words an extra recipe needs
+	 * to be added. However, by adding a recipe, one word for its result
+	 * index must also be added, therefore every 4 words recipe count
+	 * increases by 1. This calculation does not apply to word count == 1,
+	 * which is handled above.
+	 */
+	return (word_cnt + 2) / (ICE_NUM_WORDS_RECIPE - 1);
+}
+
+static void fill_recipe_template(struct ice_aqc_recipe_data_elem *recp, u16 rid,
+				 const struct ice_sw_recipe *rm)
+{
+	int i;
+
+	recp->recipe_indx = rid;
+	recp->content.act_ctrl |= ICE_AQ_RECIPE_ACT_PRUNE_INDX_M;
+
+	for (i = 0; i < ICE_NUM_WORDS_RECIPE; i++) {
+		recp->content.lkup_indx[i] = ICE_AQ_RECIPE_LKUP_IGNORE;
+		recp->content.mask[i] = cpu_to_le16(0);
+	}
+
+	set_bit(rid, (unsigned long *)recp->recipe_bitmap);
+	recp->content.act_ctrl_fwd_priority = rm->priority;
+
+	if (rm->need_pass_l2)
+		recp->content.act_ctrl |= ICE_AQ_RECIPE_ACT_NEED_PASS_L2;
+
+	if (rm->allow_pass_l2)
+		recp->content.act_ctrl |= ICE_AQ_RECIPE_ACT_ALLOW_PASS_L2;
+}
+
+static void bookkeep_recipe(struct ice_sw_recipe *recipe,
+			    struct ice_aqc_recipe_data_elem *r,
+			    const struct ice_sw_recipe *rm)
+{
+	memcpy(recipe->r_bitmap, r->recipe_bitmap, sizeof(recipe->r_bitmap));
+
+	recipe->priority = r->content.act_ctrl_fwd_priority;
+	recipe->tun_type = rm->tun_type;
+	recipe->need_pass_l2 = rm->need_pass_l2;
+	recipe->allow_pass_l2 = rm->allow_pass_l2;
+	recipe->recp_created = true;
+}
+
 /* For memcpy in ice_add_sw_recipe. */
 static_assert(sizeof(((struct ice_aqc_recipe_data_elem *)0)->recipe_bitmap) ==
 	      sizeof(((struct ice_sw_recipe *)0)->r_bitmap));
@@ -5071,279 +5071,148 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
 {
 	struct ice_aqc_recipe_data_elem *buf __free(kfree) = NULL;
 	DECLARE_BITMAP(result_idx_bm, ICE_MAX_FV_WORDS);
-	struct ice_aqc_recipe_content *content;
-	struct ice_recp_grp_entry *entry;
-	u16 free_res_idx;
-	u8 chain_idx;
-	u8 recps = 0;
+	struct ice_aqc_recipe_data_elem *root;
+	struct ice_sw_recipe *recipe;
+	u16 free_res_idx, rid;
+	int lookup = 0;
+	int recp_cnt;
 	int status;
+	int word;
+	int i;
+
+	recp_cnt = ice_calc_recp_cnt(rm->n_ext_words);
 
-	/* When more than one recipe are required, another recipe is needed to
-	 * chain them together. Matching a tunnel metadata ID takes up one of
-	 * the match fields in the chaining recipe reducing the number of
-	 * chained recipes by one.
-	 */
-	 /* check number of free result indices */
 	bitmap_zero(result_idx_bm, ICE_MAX_FV_WORDS);
+	bitmap_zero(rm->r_bitmap, ICE_MAX_NUM_RECIPES);
+
+	/* Check number of free result indices */
 	free_res_idx = ice_find_free_recp_res_idx(hw, profiles, result_idx_bm);
 
 	ice_debug(hw, ICE_DBG_SW, "Result idx slots: %d, need %d\n",
-		  free_res_idx, rm->n_grp_count);
-
-	if (rm->n_grp_count > 1) {
-		if (rm->n_grp_count > free_res_idx)
-			return -ENOSPC;
+		  free_res_idx, recp_cnt);
 
-		rm->n_grp_count++;
-	}
-
-	if (rm->n_grp_count > ICE_MAX_CHAIN_RECIPE)
+	/* Last recipe doesn't need result index */
+	if (recp_cnt - 1 > free_res_idx)
 		return -ENOSPC;
 
-	buf = kcalloc(rm->n_grp_count, sizeof(*buf), GFP_KERNEL);
+	if (recp_cnt > ICE_MAX_CHAIN_RECIPE_RES)
+		return -E2BIG;
+
+	buf = kcalloc(recp_cnt, sizeof(*buf), GFP_KERNEL);
 	if (!buf)
 		return -ENOMEM;
 
-	bitmap_zero(rm->r_bitmap, ICE_MAX_NUM_RECIPES);
-
-	/* Allocate the recipe resources, and configure them according to the
-	 * match fields from protocol headers and extracted field vectors.
+	/* Setup the non-root subrecipes. These do not contain lookups for other
+	 * subrecipes results. Set associated recipe only to own recipe index.
+	 * Each non-root subrecipe needs a free result index from FV.
+	 *
+	 * Note: only done if there is more than one recipe.
 	 */
-	chain_idx = find_first_bit(result_idx_bm, ICE_MAX_FV_WORDS);
-	list_for_each_entry(entry, &rm->rg_list, l_entry) {
-		u8 i;
+	for (i = 0; i < recp_cnt - 1; i++) {
+		struct ice_aqc_recipe_content *content;
+		u8 result_idx;
 
-		status = ice_alloc_recipe(hw, &entry->rid);
+		status = ice_alloc_recipe(hw, &rid);
 		if (status)
 			return status;
 
-		content = &buf[recps].content;
-
-		buf[recps].recipe_indx = (u8)entry->rid;
-
-		buf[recps].content.act_ctrl |= ICE_AQ_RECIPE_ACT_PRUNE_INDX_M;
+		fill_recipe_template(&buf[i], rid, rm);
 
-		/* All recipes use look-up index 0 to match switch ID. */
-		content->lkup_indx[0] = ICE_AQ_SW_ID_LKUP_IDX;
-		content->mask[0] = cpu_to_le16(ICE_AQ_SW_ID_LKUP_MASK);
-		/* Setup lkup_indx 1..4 to INVALID/ignore and set the mask
-		 * to be 0
+		result_idx = find_first_bit(result_idx_bm, ICE_MAX_FV_WORDS);
+		/* Check if there really is a valid result index that can be
+		 * used.
 		 */
-		for (i = 1; i <= ICE_NUM_WORDS_RECIPE; i++) {
-			content->lkup_indx[i] = 0x80;
-			content->mask[i] = 0;
-		}
-
-		for (i = 0; i < entry->r_group.n_val_pairs; i++) {
-			content->lkup_indx[i + 1] = entry->fv_idx[i];
-			content->mask[i + 1] = cpu_to_le16(entry->fv_mask[i]);
+		if (result_idx >= ICE_MAX_FV_WORDS) {
+			ice_debug(hw, ICE_DBG_SW, "No chain index available\n");
+			return -ENOSPC;
 		}
+		clear_bit(result_idx, result_idx_bm);
 
-		if (rm->n_grp_count > 1) {
-			/* Checks to see if there really is a valid result index
-			 * that can be used.
-			 */
-			if (chain_idx >= ICE_MAX_FV_WORDS) {
-				ice_debug(hw, ICE_DBG_SW, "No chain index available\n");
-				return -ENOSPC;
-			}
+		content = &buf[i].content;
+		content->result_indx = ICE_AQ_RECIPE_RESULT_EN |
+				       FIELD_PREP(ICE_AQ_RECIPE_RESULT_DATA_M,
+						  result_idx);
 
-			entry->chain_idx = chain_idx;
-			content->result_indx =
-				ICE_AQ_RECIPE_RESULT_EN |
-				FIELD_PREP(ICE_AQ_RECIPE_RESULT_DATA_M,
-					   chain_idx);
-			clear_bit(chain_idx, result_idx_bm);
-			chain_idx = find_first_bit(result_idx_bm,
-						   ICE_MAX_FV_WORDS);
-		}
+		/* Set recipe association to be used for root recipe */
+		set_bit(rid, rm->r_bitmap);
 
-		/* fill recipe dependencies */
-		set_bit(buf[recps].recipe_indx,
-			(unsigned long *)buf[recps].recipe_bitmap);
-		content->act_ctrl_fwd_priority = rm->priority;
+		word = 0;
+		while (lookup < rm->n_ext_words &&
+		       word < ICE_NUM_WORDS_RECIPE) {
+			content->lkup_indx[word] = rm->fv_idx[lookup];
+			content->mask[word] = cpu_to_le16(rm->fv_mask[lookup]);
 
-		if (rm->need_pass_l2)
-			content->act_ctrl |= ICE_AQ_RECIPE_ACT_NEED_PASS_L2;
+			lookup++;
+			word++;
+		}
 
-		if (rm->allow_pass_l2)
-			content->act_ctrl |= ICE_AQ_RECIPE_ACT_ALLOW_PASS_L2;
-		recps++;
+		recipe = &hw->switch_info->recp_list[rid];
+		set_bit(result_idx, recipe->res_idxs);
+		bookkeep_recipe(recipe, &buf[i], rm);
 	}
 
-	if (rm->n_grp_count == 1) {
-		rm->root_rid = buf[0].recipe_indx;
-		set_bit(buf[0].recipe_indx, rm->r_bitmap);
-		buf[0].content.rid = rm->root_rid | ICE_AQ_RECIPE_ID_IS_ROOT;
-		memcpy(buf[0].recipe_bitmap, rm->r_bitmap,
-		       sizeof(buf[0].recipe_bitmap));
-
-		/* Applicable only for ROOT_RECIPE, set the fwd_priority for
-		 * the recipe which is getting created if specified
-		 * by user. Usually any advanced switch filter, which results
-		 * into new extraction sequence, ended up creating a new recipe
-		 * of type ROOT and usually recipes are associated with profiles
-		 * Switch rule referreing newly created recipe, needs to have
-		 * either/or 'fwd' or 'join' priority, otherwise switch rule
-		 * evaluation will not happen correctly. In other words, if
-		 * switch rule to be evaluated on priority basis, then recipe
-		 * needs to have priority, otherwise it will be evaluated last.
-		 */
-		buf[0].content.act_ctrl_fwd_priority = rm->priority;
-	} else {
-		struct ice_recp_grp_entry *last_chain_entry;
-		u16 rid, i;
+	/* Setup the root recipe */
+	status = ice_alloc_recipe(hw, &rid);
+	if (status)
+		return status;
 
-		/* Allocate the last recipe that will chain the outcomes of the
-		 * other recipes together
-		 */
-		status = ice_alloc_recipe(hw, &rid);
-		if (status)
-			return status;
+	recipe = &hw->switch_info->recp_list[rid];
+	recipe->is_root = true;
+	root = &buf[recp_cnt - 1];
+	fill_recipe_template(root, rid, rm);
 
-		content = &buf[recps].content;
+	/* Set recipe association, use previously set bitmap and own rid */
+	set_bit(rid, rm->r_bitmap);
+	memcpy(root->recipe_bitmap, rm->r_bitmap, sizeof(root->recipe_bitmap));
 
-		buf[recps].recipe_indx = (u8)rid;
-		content->rid = (u8)rid;
-		content->rid |= ICE_AQ_RECIPE_ID_IS_ROOT;
-		/* the new entry created should also be part of rg_list to
-		 * make sure we have complete recipe
-		 */
-		last_chain_entry = devm_kzalloc(ice_hw_to_dev(hw),
-						sizeof(*last_chain_entry),
-						GFP_KERNEL);
-		if (!last_chain_entry)
-			return -ENOMEM;
+	/* For non-root recipes rid should be 0, for root it should be correct
+	 * rid value ored with 0x80 (is root bit).
+	 */
+	root->content.rid = rid | ICE_AQ_RECIPE_ID_IS_ROOT;
 
-		last_chain_entry->rid = rid;
-		memset(&content->lkup_indx, 0, sizeof(content->lkup_indx));
-		/* All recipes use look-up index 0 to match switch ID. */
-		content->lkup_indx[0] = ICE_AQ_SW_ID_LKUP_IDX;
-		content->mask[0] = cpu_to_le16(ICE_AQ_SW_ID_LKUP_MASK);
-		for (i = 1; i <= ICE_NUM_WORDS_RECIPE; i++) {
-			content->lkup_indx[i] = ICE_AQ_RECIPE_LKUP_IGNORE;
-			content->mask[i] = 0;
-		}
+	/* Fill remaining lookups in root recipe */
+	word = 0;
+	while (lookup < rm->n_ext_words &&
+	       word < ICE_NUM_WORDS_RECIPE /* should always be true */) {
+		root->content.lkup_indx[word] = rm->fv_idx[lookup];
+		root->content.mask[word] = cpu_to_le16(rm->fv_mask[lookup]);
 
-		i = 1;
-		/* update r_bitmap with the recp that is used for chaining */
-		set_bit(rid, rm->r_bitmap);
-		/* this is the recipe that chains all the other recipes so it
-		 * should not have a chaining ID to indicate the same
+		lookup++;
+		word++;
+	}
+
+	/* Fill result indexes as lookups */
+	i = 0;
+	while (i < recp_cnt - 1 &&
+	       word < ICE_NUM_WORDS_RECIPE /* should always be true */) {
+		root->content.lkup_indx[word] = buf[i].content.result_indx &
+						~ICE_AQ_RECIPE_RESULT_EN;
+		root->content.mask[word] = cpu_to_le16(0xffff);
+		/* For bookkeeping, it is needed to mark FV index as used for
+		 * intermediate result.
 		 */
-		last_chain_entry->chain_idx = ICE_INVAL_CHAIN_IND;
-		list_for_each_entry(entry, &rm->rg_list, l_entry) {
-			last_chain_entry->fv_idx[i] = entry->chain_idx;
-			content->lkup_indx[i] = entry->chain_idx;
-			content->mask[i++] = cpu_to_le16(0xFFFF);
-			set_bit(entry->rid, rm->r_bitmap);
-		}
-		list_add(&last_chain_entry->l_entry, &rm->rg_list);
-		memcpy(buf[recps].recipe_bitmap, rm->r_bitmap,
-		       sizeof(buf[recps].recipe_bitmap));
-		content->act_ctrl_fwd_priority = rm->priority;
+		set_bit(root->content.lkup_indx[word], recipe->res_idxs);
 
-		recps++;
-		rm->root_rid = (u8)rid;
+		i++;
+		word++;
 	}
+
+	rm->root_rid = rid;
+	bookkeep_recipe(&hw->switch_info->recp_list[rid], root, rm);
+
+	/* Program the recipe */
 	status = ice_acquire_change_lock(hw, ICE_RES_WRITE);
 	if (status)
 		return status;
 
-	status = ice_aq_add_recipe(hw, buf, rm->n_grp_count, NULL);
+	status = ice_aq_add_recipe(hw, buf, recp_cnt, NULL);
 	ice_release_change_lock(hw);
 	if (status)
 		return status;
 
-	/* Every recipe that just got created add it to the recipe
-	 * book keeping list
-	 */
-	list_for_each_entry(entry, &rm->rg_list, l_entry) {
-		struct ice_switch_info *sw = hw->switch_info;
-		bool is_root, idx_found = false;
-		struct ice_sw_recipe *recp;
-		u16 idx, buf_idx = 0;
-
-		/* find buffer index for copying some data */
-		for (idx = 0; idx < rm->n_grp_count; idx++)
-			if (buf[idx].recipe_indx == entry->rid) {
-				buf_idx = idx;
-				idx_found = true;
-			}
-
-		if (!idx_found)
-			return -EIO;
-
-		recp = &sw->recp_list[entry->rid];
-		is_root = (rm->root_rid == entry->rid);
-		recp->is_root = is_root;
-
-		recp->root_rid = entry->rid;
-		recp->big_recp = (is_root && rm->n_grp_count > 1);
-
-		memcpy(&recp->ext_words, entry->r_group.pairs,
-		       entry->r_group.n_val_pairs * sizeof(struct ice_fv_word));
-
-		memcpy(recp->r_bitmap, buf[buf_idx].recipe_bitmap,
-		       sizeof(recp->r_bitmap));
-
-		/* Copy non-result fv index values and masks to recipe. This
-		 * call will also update the result recipe bitmask.
-		 */
-		ice_collect_result_idx(&buf[buf_idx], recp);
-
-		/* for non-root recipes, also copy to the root, this allows
-		 * easier matching of a complete chained recipe
-		 */
-		if (!is_root)
-			ice_collect_result_idx(&buf[buf_idx],
-					       &sw->recp_list[rm->root_rid]);
-
-		recp->n_ext_words = entry->r_group.n_val_pairs;
-		recp->chain_idx = entry->chain_idx;
-		recp->priority = buf[buf_idx].content.act_ctrl_fwd_priority;
-		recp->n_grp_count = rm->n_grp_count;
-		recp->tun_type = rm->tun_type;
-		recp->need_pass_l2 = rm->need_pass_l2;
-		recp->allow_pass_l2 = rm->allow_pass_l2;
-		recp->recp_created = true;
-	}
-
 	return 0;
 }
 
-/**
- * ice_create_recipe_group - creates recipe group
- * @hw: pointer to hardware structure
- * @rm: recipe management list entry
- * @lkup_exts: lookup elements
- */
-static int
-ice_create_recipe_group(struct ice_hw *hw, struct ice_sw_recipe *rm,
-			struct ice_prot_lkup_ext *lkup_exts)
-{
-	u8 recp_count = 0;
-	int status;
-
-	rm->n_grp_count = 0;
-
-	/* Create recipes for words that are marked not done by packing them
-	 * as best fit.
-	 */
-	status = ice_create_first_fit_recp_def(hw, lkup_exts,
-					       &rm->rg_list, &recp_count);
-	if (!status) {
-		rm->n_grp_count += recp_count;
-		rm->n_ext_words = lkup_exts->n_val_words;
-		memcpy(&rm->ext_words, lkup_exts->fv_words,
-		       sizeof(rm->ext_words));
-		memcpy(rm->word_masks, lkup_exts->field_mask,
-		       sizeof(rm->word_masks));
-	}
-
-	return status;
-}
-
 /* ice_get_compat_fv_bitmap - Get compatible field vector bitmap for rule
  * @hw: pointer to hardware structure
  * @rinfo: other information regarding the rule e.g. priority and action info
@@ -5504,12 +5373,10 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	if (status)
 		goto err_unroll;
 
-	/* Group match words into recipes using preferred recipe grouping
-	 * criteria.
-	 */
-	status = ice_create_recipe_group(hw, rm, lkup_exts);
-	if (status)
-		goto err_unroll;
+	/* Copy FV words and masks from lkup_exts to recipe struct. */
+	rm->n_ext_words = lkup_exts->n_val_words;
+	memcpy(rm->ext_words, lkup_exts->fv_words, sizeof(rm->ext_words));
+	memcpy(rm->word_masks, lkup_exts->field_mask, sizeof(rm->word_masks));
 
 	/* set the recipe priority if specified */
 	rm->priority = (u8)rinfo->priority;
@@ -5520,7 +5387,7 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	/* Find offsets from the field vector. Pick the first one for all the
 	 * recipes.
 	 */
-	status = ice_fill_fv_word_index(hw, &rm->fv_list, &rm->rg_list);
+	status = ice_fill_fv_word_index(hw, rm);
 	if (status)
 		goto err_unroll;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index 0c410ce29700..84530f57e84a 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -227,6 +227,8 @@ struct ice_sw_recipe {
 	 */
 	struct ice_fv_word ext_words[ICE_MAX_CHAIN_WORDS];
 	u16 word_masks[ICE_MAX_CHAIN_WORDS];
+	u16 fv_idx[ICE_MAX_CHAIN_WORDS];
+	u16 fv_mask[ICE_MAX_CHAIN_WORDS];
 
 	/* if this recipe is a collection of other recipe */
 	u8 big_recp;
-- 
2.45.0

