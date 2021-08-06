Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD54B3E2663
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Aug 2021 10:49:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 42172402EF;
	Fri,  6 Aug 2021 08:49:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZNPjwGfWkozQ; Fri,  6 Aug 2021 08:49:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9782B400C2;
	Fri,  6 Aug 2021 08:49:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EAB511BF82F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 08:49:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DA42983B46
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 08:49:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JfWVhaVmzQEJ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Aug 2021 08:49:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5AE8C83B34
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 08:49:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="214064823"
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="214064823"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2021 01:49:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="420117380"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga006.jf.intel.com with ESMTP; 06 Aug 2021 01:49:08 -0700
Received: from gklab-229-137.igk.intel.com (gklab-229-137.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 1768n6kS030013
 for <intel-wired-lan@lists.osuosl.org>; Fri, 6 Aug 2021 09:49:07 +0100
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  6 Aug 2021 10:49:00 +0200
Message-Id: <1628239746-17380-4-git-send-email-wojciech.drewek@intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1628239746-17380-1-git-send-email-wojciech.drewek@intel.com>
References: <1628239746-17380-1-git-send-email-wojciech.drewek@intel.com>
Subject: [Intel-wired-lan] [PATCH net-next v6 3/9] ice: create advanced
 switch recipe
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Dan Nowlin <dan.nowlin@intel.com>

These changes introduce code for creating advanced recipes for the
switch in hardware.

There are a couple of recipes already defined in the HW. They apply to
matching on basic protocol headers, like MAC, VLAN, MACVLAN,
ethertype or direction (promiscuous), etc.. If the user wants to match on
other protocol headers (eg. ip address, src/dst port etc.) or different
variation of already supported protocols, there is a need to create
new, more complex recipe. That new recipe is referred as
'advanced recipe', and the filtering rule created on top of that recipe
is called 'advanced rule'.

One recipe can have up to 5 words, but the first word is always reserved
for match on switch id, so the driver can define up to 4 words for one
recipe. To support recipes with more words up to 5 recipes can be
chained, so 20 words can be programmed for look up.

Input for adding recipe function is a list of protocols to support. Based
on this list correct profile is being chosen. Correct profile means
that it contains all protocol types from a list. Each profile have up to
48 field vector words and each of this word have protocol id and offset.
These two fields need to match with input data for adding recipe
function. If the correct profile can't be found the function returns an
error.

The next step after finding the correct profile is grouping words into
groups. One group can have up to 4 words. This is done to simplify
sending recipes to HW (because recipe also can have up to 4 words).

In case of chaining (so when look up consists of more than 4 words) last
recipe will always have results from the previous recipes used as words.

A recipe to profile map is used to store information about which profile
is associate with this recipe. This map is an array of 64 elements (max
number of recipes) and each element is a 256 bits bitmap (max number of
profiles)

Profile to recipe map is used to store information about which recipe is
associate with this profile. This map is an array of 256 elements (max
number of profiles) and each element is a 64 bits bitmap (max number of
recipes)

Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_flex_pipe.c     |   33 +-
 drivers/net/ethernet/intel/ice/ice_flex_pipe.h     |    6 +
 drivers/net/ethernet/intel/ice/ice_protocol_type.h |  169 +++
 drivers/net/ethernet/intel/ice/ice_switch.c        | 1112 +++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_switch.h        |  110 +-
 5 files changed, 1410 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index 19cbab69ca4c..df8ed0b40f00 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -810,7 +810,7 @@ static void ice_release_global_cfg_lock(struct ice_hw *hw)
  *
  * This function will request ownership of the change lock.
  */
-static enum ice_status
+enum ice_status
 ice_acquire_change_lock(struct ice_hw *hw, enum ice_aq_res_access_type access)
 {
 	return ice_acquire_res(hw, ICE_CHANGE_LOCK_RES_ID, access,
@@ -823,7 +823,7 @@ static void ice_release_global_cfg_lock(struct ice_hw *hw)
  *
  * This function will release the change lock using the proper Admin Command.
  */
-static void ice_release_change_lock(struct ice_hw *hw)
+void ice_release_change_lock(struct ice_hw *hw)
 {
 	ice_release_res(hw, ICE_CHANGE_LOCK_RES_ID);
 }
@@ -2184,6 +2184,35 @@ int ice_udp_tunnel_unset_port(struct net_device *netdev, unsigned int table,
 	return 0;
 }
 
+/**
+ * ice_find_prot_off - find prot ID and offset pair, based on prof and FV index
+ * @hw: pointer to the hardware structure
+ * @blk: hardware block
+ * @prof: profile ID
+ * @fv_idx: field vector word index
+ * @prot: variable to receive the protocol ID
+ * @off: variable to receive the protocol offset
+ */
+enum ice_status
+ice_find_prot_off(struct ice_hw *hw, enum ice_block blk, u8 prof, u16 fv_idx,
+		  u8 *prot, u16 *off)
+{
+	struct ice_fv_word *fv_ext;
+
+	if (prof >= hw->blk[blk].es.count)
+		return ICE_ERR_PARAM;
+
+	if (fv_idx >= hw->blk[blk].es.fvw)
+		return ICE_ERR_PARAM;
+
+	fv_ext = hw->blk[blk].es.t + (prof * hw->blk[blk].es.fvw);
+
+	*prot = fv_ext[fv_idx].prot_id;
+	*off = fv_ext[fv_idx].off;
+
+	return 0;
+}
+
 /* PTG Management */
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
index 2dcb11937205..e8c16ea672fb 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
@@ -18,6 +18,12 @@
 
 #define ICE_PKG_CNT 4
 
+enum ice_status
+ice_acquire_change_lock(struct ice_hw *hw, enum ice_aq_res_access_type access);
+void ice_release_change_lock(struct ice_hw *hw);
+enum ice_status
+ice_find_prot_off(struct ice_hw *hw, enum ice_block blk, u8 prof, u16 fv_idx,
+		  u8 *prot, u16 *off);
 void
 ice_get_sw_fv_bitmap(struct ice_hw *hw, enum ice_prof_type type,
 		     unsigned long *bm);
diff --git a/drivers/net/ethernet/intel/ice/ice_protocol_type.h b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
index 199aa5b71540..0b220dfa7457 100644
--- a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
@@ -3,6 +3,44 @@
 
 #ifndef _ICE_PROTOCOL_TYPE_H_
 #define _ICE_PROTOCOL_TYPE_H_
+#define ICE_IPV6_ADDR_LENGTH 16
+
+/* Each recipe can match up to 5 different fields. Fields to match can be meta-
+ * data, values extracted from packet headers, or results from other recipes.
+ * One of the 5 fields is reserved for matching the switch ID. So, up to 4
+ * recipes can provide intermediate results to another one through chaining,
+ * e.g. recipes 0, 1, 2, and 3 can provide intermediate results to recipe 4.
+ */
+#define ICE_NUM_WORDS_RECIPE 4
+
+/* Max recipes that can be chained */
+#define ICE_MAX_CHAIN_RECIPE 5
+
+/* 1 word reserved for switch ID from allowed 5 words.
+ * So a recipe can have max 4 words. And you can chain 5 such recipes
+ * together. So maximum words that can be programmed for look up is 5 * 4.
+ */
+#define ICE_MAX_CHAIN_WORDS (ICE_NUM_WORDS_RECIPE * ICE_MAX_CHAIN_RECIPE)
+
+/* Field vector index corresponding to chaining */
+#define ICE_CHAIN_FV_INDEX_START 47
+
+enum ice_protocol_type {
+	ICE_MAC_OFOS = 0,
+	ICE_MAC_IL,
+	ICE_ETYPE_OL,
+	ICE_VLAN_OFOS,
+	ICE_IPV4_OFOS,
+	ICE_IPV4_IL,
+	ICE_IPV6_OFOS,
+	ICE_IPV6_IL,
+	ICE_TCP_IL,
+	ICE_UDP_OF,
+	ICE_UDP_ILOS,
+	ICE_SCTP_IL,
+	ICE_PROTOCOL_LAST
+};
+
 /* Decoders for ice_prot_id:
  * - F: First
  * - I: Inner
@@ -35,4 +73,135 @@ enum ice_prot_id {
 	ICE_PROT_META_ID	= 255, /* when offset == metadata */
 	ICE_PROT_INVALID	= 255  /* when offset == ICE_FV_OFFSET_INVAL */
 };
+
+#define ICE_MAC_OFOS_HW		1
+#define ICE_MAC_IL_HW		4
+#define ICE_ETYPE_OL_HW		9
+#define ICE_VLAN_OF_HW		16
+#define ICE_VLAN_OL_HW		17
+#define ICE_IPV4_OFOS_HW	32
+#define ICE_IPV4_IL_HW		33
+#define ICE_IPV6_OFOS_HW	40
+#define ICE_IPV6_IL_HW		41
+#define ICE_TCP_IL_HW		49
+#define ICE_UDP_ILOS_HW		53
+
+#define ICE_UDP_OF_HW	52 /* UDP Tunnels */
+
+#define ICE_TUN_FLAG_FV_IND 2
+
+/* Mapping of software defined protocol ID to hardware defined protocol ID */
+struct ice_protocol_entry {
+	enum ice_protocol_type type;
+	u8 protocol_id;
+};
+
+struct ice_ether_hdr {
+	u8 dst_addr[ETH_ALEN];
+	u8 src_addr[ETH_ALEN];
+};
+
+struct ice_ethtype_hdr {
+	__be16 ethtype_id;
+};
+
+struct ice_ether_vlan_hdr {
+	u8 dst_addr[ETH_ALEN];
+	u8 src_addr[ETH_ALEN];
+	__be32 vlan_id;
+};
+
+struct ice_vlan_hdr {
+	__be16 type;
+	__be16 vlan;
+};
+
+struct ice_ipv4_hdr {
+	u8 version;
+	u8 tos;
+	__be16 total_length;
+	__be16 id;
+	__be16 frag_off;
+	u8 time_to_live;
+	u8 protocol;
+	__be16 check;
+	__be32 src_addr;
+	__be32 dst_addr;
+};
+
+struct ice_ipv6_hdr {
+	__be32 be_ver_tc_flow;
+	__be16 payload_len;
+	u8 next_hdr;
+	u8 hop_limit;
+	u8 src_addr[ICE_IPV6_ADDR_LENGTH];
+	u8 dst_addr[ICE_IPV6_ADDR_LENGTH];
+};
+
+struct ice_sctp_hdr {
+	__be16 src_port;
+	__be16 dst_port;
+	__be32 verification_tag;
+	__be32 check;
+};
+
+struct ice_l4_hdr {
+	__be16 src_port;
+	__be16 dst_port;
+	__be16 len;
+	__be16 check;
+};
+
+union ice_prot_hdr {
+	struct ice_ether_hdr eth_hdr;
+	struct ice_ethtype_hdr ethertype;
+	struct ice_vlan_hdr vlan_hdr;
+	struct ice_ipv4_hdr ipv4_hdr;
+	struct ice_ipv6_hdr ipv6_hdr;
+	struct ice_l4_hdr l4_hdr;
+	struct ice_sctp_hdr sctp_hdr;
+};
+
+/* This is mapping table entry that maps every word within a given protocol
+ * structure to the real byte offset as per the specification of that
+ * protocol header.
+ * for e.g. dst address is 3 words in ethertype header and corresponding bytes
+ * are 0, 2, 3 in the actual packet header and src address is at 4, 6, 8
+ */
+struct ice_prot_ext_tbl_entry {
+	enum ice_protocol_type prot_type;
+	/* Byte offset into header of given protocol type */
+	u8 offs[sizeof(union ice_prot_hdr)];
+};
+
+/* Extractions to be looked up for a given recipe */
+struct ice_prot_lkup_ext {
+	u16 prot_type;
+	u8 n_val_words;
+	/* create a buffer to hold max words per recipe */
+	u16 field_off[ICE_MAX_CHAIN_WORDS];
+	u16 field_mask[ICE_MAX_CHAIN_WORDS];
+
+	struct ice_fv_word fv_words[ICE_MAX_CHAIN_WORDS];
+
+	/* Indicate field offsets that have field vector indices assigned */
+	DECLARE_BITMAP(done, ICE_MAX_CHAIN_WORDS);
+};
+
+struct ice_pref_recipe_group {
+	u8 n_val_pairs;		/* Number of valid pairs */
+	struct ice_fv_word pairs[ICE_NUM_WORDS_RECIPE];
+	u16 mask[ICE_NUM_WORDS_RECIPE];
+};
+
+struct ice_recp_grp_entry {
+	struct list_head l_entry;
+
+#define ICE_INVAL_CHAIN_IND 0xFF
+	u16 rid;
+	u8 chain_idx;
+	u16 fv_idx[ICE_NUM_WORDS_RECIPE];
+	u16 fv_mask[ICE_NUM_WORDS_RECIPE];
+	struct ice_pref_recipe_group r_group;
+};
 #endif /* _ICE_PROTOCOL_TYPE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 04023d71c8f7..8274f2e8df38 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -42,6 +42,14 @@
 	(offsetof(struct ice_aqc_sw_rules_elem, pdata.vsi_list.vsi) + \
 	 ((n) * sizeof(((struct ice_sw_rule_vsi_list *)0)->vsi[0])))
 
+/* this is a recipe to profile association bitmap */
+static DECLARE_BITMAP(recipe_to_profile[ICE_MAX_NUM_RECIPES],
+			  ICE_MAX_NUM_PROFILES);
+
+/* this is a profile to recipe association bitmap */
+static DECLARE_BITMAP(profile_to_recipe[ICE_MAX_NUM_PROFILES],
+			  ICE_MAX_NUM_RECIPES);
+
 /**
  * ice_init_def_sw_recp - initialize the recipe book keeping tables
  * @hw: pointer to the HW struct
@@ -683,7 +691,7 @@ enum ice_status
  * @cd: pointer to command details structure or NULL
  * Recipe to profile association (0x0291)
  */
-static enum ice_status __maybe_unused
+static enum ice_status
 ice_aq_map_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u8 *r_bitmap,
 			     struct ice_sq_cd *cd)
 {
@@ -709,7 +717,7 @@ enum ice_status
  * @cd: pointer to command details structure or NULL
  * Associate profile ID with given recipe (0x0293)
  */
-static enum ice_status __maybe_unused
+static enum ice_status
 ice_aq_get_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u8 *r_bitmap,
 			     struct ice_sq_cd *cd)
 {
@@ -733,7 +741,7 @@ enum ice_status
  * @hw: pointer to the hardware structure
  * @rid: recipe ID returned as response to AQ call
  */
-static enum ice_status __maybe_unused ice_alloc_recipe(struct ice_hw *hw, u16 *rid)
+static enum ice_status ice_alloc_recipe(struct ice_hw *hw, u16 *rid)
 {
 	struct ice_aqc_alloc_free_res_elem *sw_buf;
 	enum ice_status status;
@@ -757,6 +765,203 @@ static enum ice_status __maybe_unused ice_alloc_recipe(struct ice_hw *hw, u16 *r
 	return status;
 }
 
+/**
+ * ice_get_recp_to_prof_map - updates recipe to profile mapping
+ * @hw: pointer to hardware structure
+ *
+ * This function is used to populate recipe_to_profile matrix where index to
+ * this array is the recipe ID and the element is the mapping of which profiles
+ * is this recipe mapped to.
+ */
+static void ice_get_recp_to_prof_map(struct ice_hw *hw)
+{
+	DECLARE_BITMAP(r_bitmap, ICE_MAX_NUM_RECIPES);
+	u16 i;
+
+	for (i = 0; i < hw->switch_info->max_used_prof_index + 1; i++) {
+		u16 j;
+
+		bitmap_zero(profile_to_recipe[i], ICE_MAX_NUM_RECIPES);
+		bitmap_zero(r_bitmap, ICE_MAX_NUM_RECIPES);
+		if (ice_aq_get_recipe_to_profile(hw, i, (u8 *)r_bitmap, NULL))
+			continue;
+		bitmap_copy(profile_to_recipe[i], r_bitmap,
+			    ICE_MAX_NUM_RECIPES);
+		for_each_set_bit(j, r_bitmap, ICE_MAX_NUM_RECIPES)
+			set_bit(i, recipe_to_profile[j]);
+	}
+}
+
+/**
+ * ice_collect_result_idx - copy result index values
+ * @buf: buffer that contains the result index
+ * @recp: the recipe struct to copy data into
+ */
+static void
+ice_collect_result_idx(struct ice_aqc_recipe_data_elem *buf,
+		       struct ice_sw_recipe *recp)
+{
+	if (buf->content.result_indx & ICE_AQ_RECIPE_RESULT_EN)
+		set_bit(buf->content.result_indx & ~ICE_AQ_RECIPE_RESULT_EN,
+			recp->res_idxs);
+}
+
+/**
+ * ice_get_recp_frm_fw - update SW bookkeeping from FW recipe entries
+ * @hw: pointer to hardware structure
+ * @recps: struct that we need to populate
+ * @rid: recipe ID that we are populating
+ * @refresh_required: true if we should get recipe to profile mapping from FW
+ *
+ * This function is used to populate all the necessary entries into our
+ * bookkeeping so that we have a current list of all the recipes that are
+ * programmed in the firmware.
+ */
+static enum ice_status
+ice_get_recp_frm_fw(struct ice_hw *hw, struct ice_sw_recipe *recps, u8 rid,
+		    bool *refresh_required)
+{
+	DECLARE_BITMAP(result_bm, ICE_MAX_FV_WORDS);
+	struct ice_aqc_recipe_data_elem *tmp;
+	u16 num_recps = ICE_MAX_NUM_RECIPES;
+	struct ice_prot_lkup_ext *lkup_exts;
+	enum ice_status status;
+	u8 fv_word_idx = 0;
+	u16 sub_recps;
+
+	bitmap_zero(result_bm, ICE_MAX_FV_WORDS);
+
+	/* we need a buffer big enough to accommodate all the recipes */
+	tmp = kcalloc(ICE_MAX_NUM_RECIPES, sizeof(*tmp), GFP_KERNEL);
+	if (!tmp)
+		return ICE_ERR_NO_MEMORY;
+
+	tmp[0].recipe_indx = rid;
+	status = ice_aq_get_recipe(hw, tmp, &num_recps, rid, NULL);
+	/* non-zero status meaning recipe doesn't exist */
+	if (status)
+		goto err_unroll;
+
+	/* Get recipe to profile map so that we can get the fv from lkups that
+	 * we read for a recipe from FW. Since we want to minimize the number of
+	 * times we make this FW call, just make one call and cache the copy
+	 * until a new recipe is added. This operation is only required the
+	 * first time to get the changes from FW. Then to search existing
+	 * entries we don't need to update the cache again until another recipe
+	 * gets added.
+	 */
+	if (*refresh_required) {
+		ice_get_recp_to_prof_map(hw);
+		*refresh_required = false;
+	}
+
+	/* Start populating all the entries for recps[rid] based on lkups from
+	 * firmware. Note that we are only creating the root recipe in our
+	 * database.
+	 */
+	lkup_exts = &recps[rid].lkup_exts;
+
+	for (sub_recps = 0; sub_recps < num_recps; sub_recps++) {
+		struct ice_aqc_recipe_data_elem root_bufs = tmp[sub_recps];
+		struct ice_recp_grp_entry *rg_entry;
+		u8 i, prof, idx, prot = 0;
+		bool is_root;
+		u16 off = 0;
+
+		rg_entry = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*rg_entry),
+					GFP_KERNEL);
+		if (!rg_entry) {
+			status = ICE_ERR_NO_MEMORY;
+			goto err_unroll;
+		}
+
+		idx = root_bufs.recipe_indx;
+		is_root = root_bufs.content.rid & ICE_AQ_RECIPE_ID_IS_ROOT;
+
+		/* Mark all result indices in this chain */
+		if (root_bufs.content.result_indx & ICE_AQ_RECIPE_RESULT_EN)
+			set_bit(root_bufs.content.result_indx & ~ICE_AQ_RECIPE_RESULT_EN,
+				result_bm);
+
+		/* get the first profile that is associated with rid */
+		prof = find_first_bit(recipe_to_profile[idx],
+				      ICE_MAX_NUM_PROFILES);
+		for (i = 0; i < ICE_NUM_WORDS_RECIPE; i++) {
+			u8 lkup_indx = root_bufs.content.lkup_indx[i + 1];
+
+			rg_entry->fv_idx[i] = lkup_indx;
+			rg_entry->fv_mask[i] =
+				le16_to_cpu(root_bufs.content.mask[i + 1]);
+
+			/* If the recipe is a chained recipe then all its
+			 * child recipe's result will have a result index.
+			 * To fill fv_words we should not use those result
+			 * index, we only need the protocol ids and offsets.
+			 * We will skip all the fv_idx which stores result
+			 * index in them. We also need to skip any fv_idx which
+			 * has ICE_AQ_RECIPE_LKUP_IGNORE or 0 since it isn't a
+			 * valid offset value.
+			 */
+			if (test_bit(rg_entry->fv_idx[i], hw->switch_info->prof_res_bm[prof]) ||
+			    rg_entry->fv_idx[i] & ICE_AQ_RECIPE_LKUP_IGNORE ||
+			    rg_entry->fv_idx[i] == 0)
+				continue;
+
+			ice_find_prot_off(hw, ICE_BLK_SW, prof,
+					  rg_entry->fv_idx[i], &prot, &off);
+			lkup_exts->fv_words[fv_word_idx].prot_id = prot;
+			lkup_exts->fv_words[fv_word_idx].off = off;
+			lkup_exts->field_mask[fv_word_idx] =
+				rg_entry->fv_mask[i];
+			fv_word_idx++;
+		}
+		/* populate rg_list with the data from the child entry of this
+		 * recipe
+		 */
+		list_add(&rg_entry->l_entry, &recps[rid].rg_list);
+
+		/* Propagate some data to the recipe database */
+		recps[idx].is_root = !!is_root;
+		recps[idx].priority = root_bufs.content.act_ctrl_fwd_priority;
+		bitmap_zero(recps[idx].res_idxs, ICE_MAX_FV_WORDS);
+		if (root_bufs.content.result_indx & ICE_AQ_RECIPE_RESULT_EN) {
+			recps[idx].chain_idx = root_bufs.content.result_indx &
+				~ICE_AQ_RECIPE_RESULT_EN;
+			set_bit(recps[idx].chain_idx, recps[idx].res_idxs);
+		} else {
+			recps[idx].chain_idx = ICE_INVAL_CHAIN_IND;
+		}
+
+		if (!is_root)
+			continue;
+
+		/* Only do the following for root recipes entries */
+		memcpy(recps[idx].r_bitmap, root_bufs.recipe_bitmap,
+		       sizeof(recps[idx].r_bitmap));
+		recps[idx].root_rid = root_bufs.content.rid &
+			~ICE_AQ_RECIPE_ID_IS_ROOT;
+		recps[idx].priority = root_bufs.content.act_ctrl_fwd_priority;
+	}
+
+	/* Complete initialization of the root recipe entry */
+	lkup_exts->n_val_words = fv_word_idx;
+	recps[rid].big_recp = (num_recps > 1);
+	recps[rid].n_grp_count = (u8)num_recps;
+	recps[rid].root_buf = devm_kmemdup(ice_hw_to_dev(hw), tmp,
+					   recps[rid].n_grp_count * sizeof(*recps[rid].root_buf),
+					   GFP_KERNEL);
+	if (!recps[rid].root_buf)
+		goto err_unroll;
+
+	/* Copy result indexes */
+	bitmap_copy(recps[rid].res_idxs, result_bm, ICE_MAX_FV_WORDS);
+	recps[rid].recp_created = true;
+
+err_unroll:
+	kfree(tmp);
+	return status;
+}
+
 /* ice_init_port_info - Initialize port_info with switch configuration data
  * @pi: pointer to port_info
  * @vsi_port_num: VSI number or port number
@@ -2987,6 +3192,907 @@ enum ice_status
 	return status;
 }
 
+/* This is mapping table entry that maps every word within a given protocol
+ * structure to the real byte offset as per the specification of that
+ * protocol header.
+ * for example dst address is 3 words in ethertype header and corresponding
+ * bytes are 0, 2, 3 in the actual packet header and src address is at 4, 6, 8
+ * IMPORTANT: Every structure part of "ice_prot_hdr" union should have a
+ * matching entry describing its field. This needs to be updated if new
+ * structure is added to that union.
+ */
+static const struct ice_prot_ext_tbl_entry ice_prot_ext[ICE_PROTOCOL_LAST] = {
+	{ ICE_MAC_OFOS,		{ 0, 2, 4, 6, 8, 10, 12 } },
+	{ ICE_MAC_IL,		{ 0, 2, 4, 6, 8, 10, 12 } },
+	{ ICE_ETYPE_OL,		{ 0 } },
+	{ ICE_VLAN_OFOS,	{ 2, 0 } },
+	{ ICE_IPV4_OFOS,	{ 0, 2, 4, 6, 8, 10, 12, 14, 16, 18 } },
+	{ ICE_IPV4_IL,		{ 0, 2, 4, 6, 8, 10, 12, 14, 16, 18 } },
+	{ ICE_IPV6_OFOS,	{ 0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24,
+				 26, 28, 30, 32, 34, 36, 38 } },
+	{ ICE_IPV6_IL,		{ 0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24,
+				 26, 28, 30, 32, 34, 36, 38 } },
+	{ ICE_TCP_IL,		{ 0, 2 } },
+	{ ICE_UDP_OF,		{ 0, 2 } },
+	{ ICE_UDP_ILOS,		{ 0, 2 } },
+};
+
+static struct ice_protocol_entry ice_prot_id_tbl[ICE_PROTOCOL_LAST] = {
+	{ ICE_MAC_OFOS,		ICE_MAC_OFOS_HW },
+	{ ICE_MAC_IL,		ICE_MAC_IL_HW },
+	{ ICE_ETYPE_OL,		ICE_ETYPE_OL_HW },
+	{ ICE_VLAN_OFOS,	ICE_VLAN_OL_HW },
+	{ ICE_IPV4_OFOS,	ICE_IPV4_OFOS_HW },
+	{ ICE_IPV4_IL,		ICE_IPV4_IL_HW },
+	{ ICE_IPV6_OFOS,	ICE_IPV6_OFOS_HW },
+	{ ICE_IPV6_IL,		ICE_IPV6_IL_HW },
+	{ ICE_TCP_IL,		ICE_TCP_IL_HW },
+	{ ICE_UDP_OF,		ICE_UDP_OF_HW },
+	{ ICE_UDP_ILOS,		ICE_UDP_ILOS_HW },
+};
+
+/**
+ * ice_find_recp - find a recipe
+ * @hw: pointer to the hardware structure
+ * @lkup_exts: extension sequence to match
+ *
+ * Returns index of matching recipe, or ICE_MAX_NUM_RECIPES if not found.
+ */
+static u16 ice_find_recp(struct ice_hw *hw, struct ice_prot_lkup_ext *lkup_exts)
+{
+	bool refresh_required = true;
+	struct ice_sw_recipe *recp;
+	u8 i;
+
+	/* Walk through existing recipes to find a match */
+	recp = hw->switch_info->recp_list;
+	for (i = 0; i < ICE_MAX_NUM_RECIPES; i++) {
+		/* If recipe was not created for this ID, in SW bookkeeping,
+		 * check if FW has an entry for this recipe. If the FW has an
+		 * entry update it in our SW bookkeeping and continue with the
+		 * matching.
+		 */
+		if (!recp[i].recp_created)
+			if (ice_get_recp_frm_fw(hw,
+						hw->switch_info->recp_list, i,
+						&refresh_required))
+				continue;
+
+		/* Skip inverse action recipes */
+		if (recp[i].root_buf && recp[i].root_buf->content.act_ctrl &
+		    ICE_AQ_RECIPE_ACT_INV_ACT)
+			continue;
+
+		/* if number of words we are looking for match */
+		if (lkup_exts->n_val_words == recp[i].lkup_exts.n_val_words) {
+			struct ice_fv_word *ar = recp[i].lkup_exts.fv_words;
+			struct ice_fv_word *be = lkup_exts->fv_words;
+			u16 *cr = recp[i].lkup_exts.field_mask;
+			u16 *de = lkup_exts->field_mask;
+			bool found = true;
+			u8 pe, qr;
+
+			/* ar, cr, and qr are related to the recipe words, while
+			 * be, de, and pe are related to the lookup words
+			 */
+			for (pe = 0; pe < lkup_exts->n_val_words; pe++) {
+				for (qr = 0; qr < recp[i].lkup_exts.n_val_words;
+				     qr++) {
+					if (ar[qr].off == be[pe].off &&
+					    ar[qr].prot_id == be[pe].prot_id &&
+					    cr[qr] == de[pe])
+						/* Found the "pe"th word in the
+						 * given recipe
+						 */
+						break;
+				}
+				/* After walking through all the words in the
+				 * "i"th recipe if "p"th word was not found then
+				 * this recipe is not what we are looking for.
+				 * So break out from this loop and try the next
+				 * recipe
+				 */
+				if (qr >= recp[i].lkup_exts.n_val_words) {
+					found = false;
+					break;
+				}
+			}
+			/* If for "i"th recipe the found was never set to false
+			 * then it means we found our match
+			 */
+			if (found)
+				return i; /* Return the recipe ID */
+		}
+	}
+	return ICE_MAX_NUM_RECIPES;
+}
+
+/**
+ * ice_prot_type_to_id - get protocol ID from protocol type
+ * @type: protocol type
+ * @id: pointer to variable that will receive the ID
+ *
+ * Returns true if found, false otherwise
+ */
+static bool ice_prot_type_to_id(enum ice_protocol_type type, u8 *id)
+{
+	u8 i;
+
+	for (i = 0; i < ARRAY_SIZE(ice_prot_id_tbl); i++)
+		if (ice_prot_id_tbl[i].type == type) {
+			*id = ice_prot_id_tbl[i].protocol_id;
+			return true;
+		}
+	return false;
+}
+
+/**
+ * ice_fill_valid_words - count valid words
+ * @rule: advanced rule with lookup information
+ * @lkup_exts: byte offset extractions of the words that are valid
+ *
+ * calculate valid words in a lookup rule using mask value
+ */
+static u8
+ice_fill_valid_words(struct ice_adv_lkup_elem *rule,
+		     struct ice_prot_lkup_ext *lkup_exts)
+{
+	u8 j, word, prot_id, ret_val;
+
+	if (!ice_prot_type_to_id(rule->type, &prot_id))
+		return 0;
+
+	word = lkup_exts->n_val_words;
+
+	for (j = 0; j < sizeof(rule->m_u) / sizeof(u16); j++)
+		if (((u16 *)&rule->m_u)[j] &&
+		    rule->type < ARRAY_SIZE(ice_prot_ext)) {
+			/* No more space to accommodate */
+			if (word >= ICE_MAX_CHAIN_WORDS)
+				return 0;
+			lkup_exts->fv_words[word].off =
+				ice_prot_ext[rule->type].offs[j];
+			lkup_exts->fv_words[word].prot_id =
+				ice_prot_id_tbl[rule->type].protocol_id;
+			lkup_exts->field_mask[word] =
+				be16_to_cpu(((__force __be16 *)&rule->m_u)[j]);
+			word++;
+		}
+
+	ret_val = word - lkup_exts->n_val_words;
+	lkup_exts->n_val_words = word;
+
+	return ret_val;
+}
+
+/**
+ * ice_create_first_fit_recp_def - Create a recipe grouping
+ * @hw: pointer to the hardware structure
+ * @lkup_exts: an array of protocol header extractions
+ * @rg_list: pointer to a list that stores new recipe groups
+ * @recp_cnt: pointer to a variable that stores returned number of recipe groups
+ *
+ * Using first fit algorithm, take all the words that are still not done
+ * and start grouping them in 4-word groups. Each group makes up one
+ * recipe.
+ */
+static enum ice_status
+ice_create_first_fit_recp_def(struct ice_hw *hw,
+			      struct ice_prot_lkup_ext *lkup_exts,
+			      struct list_head *rg_list,
+			      u8 *recp_cnt)
+{
+	struct ice_pref_recipe_group *grp = NULL;
+	u8 j;
+
+	*recp_cnt = 0;
+
+	/* Walk through every word in the rule to check if it is not done. If so
+	 * then this word needs to be part of a new recipe.
+	 */
+	for (j = 0; j < lkup_exts->n_val_words; j++)
+		if (!test_bit(j, lkup_exts->done)) {
+			if (!grp ||
+			    grp->n_val_pairs == ICE_NUM_WORDS_RECIPE) {
+				struct ice_recp_grp_entry *entry;
+
+				entry = devm_kzalloc(ice_hw_to_dev(hw),
+						     sizeof(*entry),
+						     GFP_KERNEL);
+				if (!entry)
+					return ICE_ERR_NO_MEMORY;
+				list_add(&entry->l_entry, rg_list);
+				grp = &entry->r_group;
+				(*recp_cnt)++;
+			}
+
+			grp->pairs[grp->n_val_pairs].prot_id =
+				lkup_exts->fv_words[j].prot_id;
+			grp->pairs[grp->n_val_pairs].off =
+				lkup_exts->fv_words[j].off;
+			grp->mask[grp->n_val_pairs] = lkup_exts->field_mask[j];
+			grp->n_val_pairs++;
+		}
+
+	return 0;
+}
+
+/**
+ * ice_fill_fv_word_index - fill in the field vector indices for a recipe group
+ * @hw: pointer to the hardware structure
+ * @fv_list: field vector with the extraction sequence information
+ * @rg_list: recipe groupings with protocol-offset pairs
+ *
+ * Helper function to fill in the field vector indices for protocol-offset
+ * pairs. These indexes are then ultimately programmed into a recipe.
+ */
+static enum ice_status
+ice_fill_fv_word_index(struct ice_hw *hw, struct list_head *fv_list,
+		       struct list_head *rg_list)
+{
+	struct ice_sw_fv_list_entry *fv;
+	struct ice_recp_grp_entry *rg;
+	struct ice_fv_word *fv_ext;
+
+	if (list_empty(fv_list))
+		return 0;
+
+	fv = list_first_entry(fv_list, struct ice_sw_fv_list_entry,
+			      list_entry);
+	fv_ext = fv->fv_ptr->ew;
+
+	list_for_each_entry(rg, rg_list, l_entry) {
+		u8 i;
+
+		for (i = 0; i < rg->r_group.n_val_pairs; i++) {
+			struct ice_fv_word *pr;
+			bool found = false;
+			u16 mask;
+			u8 j;
+
+			pr = &rg->r_group.pairs[i];
+			mask = rg->r_group.mask[i];
+
+			for (j = 0; j < hw->blk[ICE_BLK_SW].es.fvw; j++)
+				if (fv_ext[j].prot_id == pr->prot_id &&
+				    fv_ext[j].off == pr->off) {
+					found = true;
+
+					/* Store index of field vector */
+					rg->fv_idx[i] = j;
+					rg->fv_mask[i] = mask;
+					break;
+				}
+
+			/* Protocol/offset could not be found, caller gave an
+			 * invalid pair
+			 */
+			if (!found)
+				return ICE_ERR_PARAM;
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * ice_find_free_recp_res_idx - find free result indexes for recipe
+ * @hw: pointer to hardware structure
+ * @profiles: bitmap of profiles that will be associated with the new recipe
+ * @free_idx: pointer to variable to receive the free index bitmap
+ *
+ * The algorithm used here is:
+ *	1. When creating a new recipe, create a set P which contains all
+ *	   Profiles that will be associated with our new recipe
+ *
+ *	2. For each Profile p in set P:
+ *	    a. Add all recipes associated with Profile p into set R
+ *	    b. Optional : PossibleIndexes &= profile[p].possibleIndexes
+ *		[initially PossibleIndexes should be 0xFFFFFFFFFFFFFFFF]
+ *		i. Or just assume they all have the same possible indexes:
+ *			44, 45, 46, 47
+ *			i.e., PossibleIndexes = 0x0000F00000000000
+ *
+ *	3. For each Recipe r in set R:
+ *	    a. UsedIndexes |= (bitwise or ) recipe[r].res_indexes
+ *	    b. FreeIndexes = UsedIndexes ^ PossibleIndexes
+ *
+ *	FreeIndexes will contain the bits indicating the indexes free for use,
+ *      then the code needs to update the recipe[r].used_result_idx_bits to
+ *      indicate which indexes were selected for use by this recipe.
+ */
+static u16
+ice_find_free_recp_res_idx(struct ice_hw *hw, const unsigned long *profiles,
+			   unsigned long *free_idx)
+{
+	DECLARE_BITMAP(possible_idx, ICE_MAX_FV_WORDS);
+	DECLARE_BITMAP(recipes, ICE_MAX_NUM_RECIPES);
+	DECLARE_BITMAP(used_idx, ICE_MAX_FV_WORDS);
+	u16 bit;
+
+	bitmap_zero(possible_idx, ICE_MAX_FV_WORDS);
+	bitmap_zero(recipes, ICE_MAX_NUM_RECIPES);
+	bitmap_zero(used_idx, ICE_MAX_FV_WORDS);
+	bitmap_zero(free_idx, ICE_MAX_FV_WORDS);
+
+	bitmap_set(possible_idx, 0, ICE_MAX_FV_WORDS);
+
+	/* For each profile we are going to associate the recipe with, add the
+	 * recipes that are associated with that profile. This will give us
+	 * the set of recipes that our recipe may collide with. Also, determine
+	 * what possible result indexes are usable given this set of profiles.
+	 */
+	for_each_set_bit(bit, profiles, ICE_MAX_NUM_PROFILES) {
+		bitmap_or(recipes, recipes, profile_to_recipe[bit],
+			  ICE_MAX_NUM_RECIPES);
+		bitmap_and(possible_idx, possible_idx,
+			   hw->switch_info->prof_res_bm[bit],
+			   ICE_MAX_FV_WORDS);
+	}
+
+	/* For each recipe that our new recipe may collide with, determine
+	 * which indexes have been used.
+	 */
+	for_each_set_bit(bit, recipes, ICE_MAX_NUM_RECIPES)
+		bitmap_or(used_idx, used_idx,
+			  hw->switch_info->recp_list[bit].res_idxs,
+			  ICE_MAX_FV_WORDS);
+
+	bitmap_xor(free_idx, used_idx, possible_idx, ICE_MAX_FV_WORDS);
+
+	/* return number of free indexes */
+	return (u16)bitmap_weight(free_idx, ICE_MAX_FV_WORDS);
+}
+
+/**
+ * ice_add_sw_recipe - function to call AQ calls to create switch recipe
+ * @hw: pointer to hardware structure
+ * @rm: recipe management list entry
+ * @match_tun_mask: tunnel mask that needs to be programmed
+ * @profiles: bitmap of profiles that will be associated.
+ */
+static enum ice_status
+ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
+		  u16 match_tun_mask, unsigned long *profiles)
+{
+	DECLARE_BITMAP(result_idx_bm, ICE_MAX_FV_WORDS);
+	struct ice_aqc_recipe_data_elem *tmp;
+	struct ice_aqc_recipe_data_elem *buf;
+	struct ice_recp_grp_entry *entry;
+	enum ice_status status;
+	u16 free_res_idx;
+	u16 recipe_count;
+	u8 chain_idx;
+	u8 recps = 0;
+
+	/* When more than one recipe are required, another recipe is needed to
+	 * chain them together. Matching a tunnel metadata ID takes up one of
+	 * the match fields in the chaining recipe reducing the number of
+	 * chained recipes by one.
+	 */
+	 /* check number of free result indices */
+	bitmap_zero(result_idx_bm, ICE_MAX_FV_WORDS);
+	free_res_idx = ice_find_free_recp_res_idx(hw, profiles, result_idx_bm);
+
+	ice_debug(hw, ICE_DBG_SW, "Result idx slots: %d, need %d\n",
+		  free_res_idx, rm->n_grp_count);
+
+	if (rm->n_grp_count > 1) {
+		if (rm->n_grp_count > free_res_idx)
+			return ICE_ERR_MAX_LIMIT;
+
+		rm->n_grp_count++;
+	}
+
+	if (rm->n_grp_count > ICE_MAX_CHAIN_RECIPE)
+		return ICE_ERR_MAX_LIMIT;
+
+	tmp = kcalloc(ICE_MAX_NUM_RECIPES, sizeof(*tmp), GFP_KERNEL);
+	if (!tmp)
+		return ICE_ERR_NO_MEMORY;
+
+	buf = devm_kcalloc(ice_hw_to_dev(hw), rm->n_grp_count, sizeof(*buf),
+			   GFP_KERNEL);
+	if (!buf) {
+		status = ICE_ERR_NO_MEMORY;
+		goto err_mem;
+	}
+
+	bitmap_zero(rm->r_bitmap, ICE_MAX_NUM_RECIPES);
+	recipe_count = ICE_MAX_NUM_RECIPES;
+	status = ice_aq_get_recipe(hw, tmp, &recipe_count, ICE_SW_LKUP_MAC,
+				   NULL);
+	if (status || recipe_count == 0)
+		goto err_unroll;
+
+	/* Allocate the recipe resources, and configure them according to the
+	 * match fields from protocol headers and extracted field vectors.
+	 */
+	chain_idx = find_first_bit(result_idx_bm, ICE_MAX_FV_WORDS);
+	list_for_each_entry(entry, &rm->rg_list, l_entry) {
+		u8 i;
+
+		status = ice_alloc_recipe(hw, &entry->rid);
+		if (status)
+			goto err_unroll;
+
+		/* Clear the result index of the located recipe, as this will be
+		 * updated, if needed, later in the recipe creation process.
+		 */
+		tmp[0].content.result_indx = 0;
+
+		buf[recps] = tmp[0];
+		buf[recps].recipe_indx = (u8)entry->rid;
+		/* if the recipe is a non-root recipe RID should be programmed
+		 * as 0 for the rules to be applied correctly.
+		 */
+		buf[recps].content.rid = 0;
+		memset(&buf[recps].content.lkup_indx, 0,
+		       sizeof(buf[recps].content.lkup_indx));
+
+		/* All recipes use look-up index 0 to match switch ID. */
+		buf[recps].content.lkup_indx[0] = ICE_AQ_SW_ID_LKUP_IDX;
+		buf[recps].content.mask[0] =
+			cpu_to_le16(ICE_AQ_SW_ID_LKUP_MASK);
+		/* Setup lkup_indx 1..4 to INVALID/ignore and set the mask
+		 * to be 0
+		 */
+		for (i = 1; i <= ICE_NUM_WORDS_RECIPE; i++) {
+			buf[recps].content.lkup_indx[i] = 0x80;
+			buf[recps].content.mask[i] = 0;
+		}
+
+		for (i = 0; i < entry->r_group.n_val_pairs; i++) {
+			buf[recps].content.lkup_indx[i + 1] = entry->fv_idx[i];
+			buf[recps].content.mask[i + 1] =
+				cpu_to_le16(entry->fv_mask[i]);
+		}
+
+		if (rm->n_grp_count > 1) {
+			/* Checks to see if there really is a valid result index
+			 * that can be used.
+			 */
+			if (chain_idx >= ICE_MAX_FV_WORDS) {
+				ice_debug(hw, ICE_DBG_SW, "No chain index available\n");
+				status = ICE_ERR_MAX_LIMIT;
+				goto err_unroll;
+			}
+
+			entry->chain_idx = chain_idx;
+			buf[recps].content.result_indx =
+				ICE_AQ_RECIPE_RESULT_EN |
+				((chain_idx << ICE_AQ_RECIPE_RESULT_DATA_S) &
+				 ICE_AQ_RECIPE_RESULT_DATA_M);
+			clear_bit(chain_idx, result_idx_bm);
+			chain_idx = find_first_bit(result_idx_bm,
+						   ICE_MAX_FV_WORDS);
+		}
+
+		/* fill recipe dependencies */
+		bitmap_zero((unsigned long *)buf[recps].recipe_bitmap,
+			    ICE_MAX_NUM_RECIPES);
+		set_bit(buf[recps].recipe_indx,
+			(unsigned long *)buf[recps].recipe_bitmap);
+		buf[recps].content.act_ctrl_fwd_priority = rm->priority;
+		recps++;
+	}
+
+	if (rm->n_grp_count == 1) {
+		rm->root_rid = buf[0].recipe_indx;
+		set_bit(buf[0].recipe_indx, rm->r_bitmap);
+		buf[0].content.rid = rm->root_rid | ICE_AQ_RECIPE_ID_IS_ROOT;
+		if (sizeof(buf[0].recipe_bitmap) >= sizeof(rm->r_bitmap)) {
+			memcpy(buf[0].recipe_bitmap, rm->r_bitmap,
+			       sizeof(buf[0].recipe_bitmap));
+		} else {
+			status = ICE_ERR_BAD_PTR;
+			goto err_unroll;
+		}
+		/* Applicable only for ROOT_RECIPE, set the fwd_priority for
+		 * the recipe which is getting created if specified
+		 * by user. Usually any advanced switch filter, which results
+		 * into new extraction sequence, ended up creating a new recipe
+		 * of type ROOT and usually recipes are associated with profiles
+		 * Switch rule referreing newly created recipe, needs to have
+		 * either/or 'fwd' or 'join' priority, otherwise switch rule
+		 * evaluation will not happen correctly. In other words, if
+		 * switch rule to be evaluated on priority basis, then recipe
+		 * needs to have priority, otherwise it will be evaluated last.
+		 */
+		buf[0].content.act_ctrl_fwd_priority = rm->priority;
+	} else {
+		struct ice_recp_grp_entry *last_chain_entry;
+		u16 rid, i;
+
+		/* Allocate the last recipe that will chain the outcomes of the
+		 * other recipes together
+		 */
+		status = ice_alloc_recipe(hw, &rid);
+		if (status)
+			goto err_unroll;
+
+		buf[recps].recipe_indx = (u8)rid;
+		buf[recps].content.rid = (u8)rid;
+		buf[recps].content.rid |= ICE_AQ_RECIPE_ID_IS_ROOT;
+		/* the new entry created should also be part of rg_list to
+		 * make sure we have complete recipe
+		 */
+		last_chain_entry = devm_kzalloc(ice_hw_to_dev(hw),
+						sizeof(*last_chain_entry),
+						GFP_KERNEL);
+		if (!last_chain_entry) {
+			status = ICE_ERR_NO_MEMORY;
+			goto err_unroll;
+		}
+		last_chain_entry->rid = rid;
+		memset(&buf[recps].content.lkup_indx, 0,
+		       sizeof(buf[recps].content.lkup_indx));
+		/* All recipes use look-up index 0 to match switch ID. */
+		buf[recps].content.lkup_indx[0] = ICE_AQ_SW_ID_LKUP_IDX;
+		buf[recps].content.mask[0] =
+			cpu_to_le16(ICE_AQ_SW_ID_LKUP_MASK);
+		for (i = 1; i <= ICE_NUM_WORDS_RECIPE; i++) {
+			buf[recps].content.lkup_indx[i] =
+				ICE_AQ_RECIPE_LKUP_IGNORE;
+			buf[recps].content.mask[i] = 0;
+		}
+
+		i = 1;
+		/* update r_bitmap with the recp that is used for chaining */
+		set_bit(rid, rm->r_bitmap);
+		/* this is the recipe that chains all the other recipes so it
+		 * should not have a chaining ID to indicate the same
+		 */
+		last_chain_entry->chain_idx = ICE_INVAL_CHAIN_IND;
+		list_for_each_entry(entry, &rm->rg_list, l_entry) {
+			last_chain_entry->fv_idx[i] = entry->chain_idx;
+			buf[recps].content.lkup_indx[i] = entry->chain_idx;
+			buf[recps].content.mask[i++] = cpu_to_le16(0xFFFF);
+			set_bit(entry->rid, rm->r_bitmap);
+		}
+		list_add(&last_chain_entry->l_entry, &rm->rg_list);
+		if (sizeof(buf[recps].recipe_bitmap) >=
+		    sizeof(rm->r_bitmap)) {
+			memcpy(buf[recps].recipe_bitmap, rm->r_bitmap,
+			       sizeof(buf[recps].recipe_bitmap));
+		} else {
+			status = ICE_ERR_BAD_PTR;
+			goto err_unroll;
+		}
+		buf[recps].content.act_ctrl_fwd_priority = rm->priority;
+
+		/* To differentiate among different UDP tunnels, a meta data ID
+		 * flag is used.
+		 */
+		if (match_tun_mask) {
+			buf[recps].content.lkup_indx[i] = ICE_TUN_FLAG_FV_IND;
+			buf[recps].content.mask[i] =
+				cpu_to_le16(match_tun_mask);
+		}
+
+		recps++;
+		rm->root_rid = (u8)rid;
+	}
+	status = ice_acquire_change_lock(hw, ICE_RES_WRITE);
+	if (status)
+		goto err_unroll;
+
+	status = ice_aq_add_recipe(hw, buf, rm->n_grp_count, NULL);
+	ice_release_change_lock(hw);
+	if (status)
+		goto err_unroll;
+
+	/* Every recipe that just got created add it to the recipe
+	 * book keeping list
+	 */
+	list_for_each_entry(entry, &rm->rg_list, l_entry) {
+		struct ice_switch_info *sw = hw->switch_info;
+		bool is_root, idx_found = false;
+		struct ice_sw_recipe *recp;
+		u16 idx, buf_idx = 0;
+
+		/* find buffer index for copying some data */
+		for (idx = 0; idx < rm->n_grp_count; idx++)
+			if (buf[idx].recipe_indx == entry->rid) {
+				buf_idx = idx;
+				idx_found = true;
+			}
+
+		if (!idx_found) {
+			status = ICE_ERR_OUT_OF_RANGE;
+			goto err_unroll;
+		}
+
+		recp = &sw->recp_list[entry->rid];
+		is_root = (rm->root_rid == entry->rid);
+		recp->is_root = is_root;
+
+		recp->root_rid = entry->rid;
+		recp->big_recp = (is_root && rm->n_grp_count > 1);
+
+		memcpy(&recp->ext_words, entry->r_group.pairs,
+		       entry->r_group.n_val_pairs * sizeof(struct ice_fv_word));
+
+		memcpy(recp->r_bitmap, buf[buf_idx].recipe_bitmap,
+		       sizeof(recp->r_bitmap));
+
+		/* Copy non-result fv index values and masks to recipe. This
+		 * call will also update the result recipe bitmask.
+		 */
+		ice_collect_result_idx(&buf[buf_idx], recp);
+
+		/* for non-root recipes, also copy to the root, this allows
+		 * easier matching of a complete chained recipe
+		 */
+		if (!is_root)
+			ice_collect_result_idx(&buf[buf_idx],
+					       &sw->recp_list[rm->root_rid]);
+
+		recp->n_ext_words = entry->r_group.n_val_pairs;
+		recp->chain_idx = entry->chain_idx;
+		recp->priority = buf[buf_idx].content.act_ctrl_fwd_priority;
+		recp->n_grp_count = rm->n_grp_count;
+		recp->recp_created = true;
+	}
+	rm->root_buf = buf;
+	kfree(tmp);
+	return status;
+
+err_unroll:
+err_mem:
+	kfree(tmp);
+	devm_kfree(ice_hw_to_dev(hw), buf);
+	return status;
+}
+
+/**
+ * ice_create_recipe_group - creates recipe group
+ * @hw: pointer to hardware structure
+ * @rm: recipe management list entry
+ * @lkup_exts: lookup elements
+ */
+static enum ice_status
+ice_create_recipe_group(struct ice_hw *hw, struct ice_sw_recipe *rm,
+			struct ice_prot_lkup_ext *lkup_exts)
+{
+	enum ice_status status;
+	u8 recp_count = 0;
+
+	rm->n_grp_count = 0;
+
+	/* Create recipes for words that are marked not done by packing them
+	 * as best fit.
+	 */
+	status = ice_create_first_fit_recp_def(hw, lkup_exts,
+					       &rm->rg_list, &recp_count);
+	if (!status) {
+		rm->n_grp_count += recp_count;
+		rm->n_ext_words = lkup_exts->n_val_words;
+		memcpy(&rm->ext_words, lkup_exts->fv_words,
+		       sizeof(rm->ext_words));
+		memcpy(rm->word_masks, lkup_exts->field_mask,
+		       sizeof(rm->word_masks));
+	}
+
+	return status;
+}
+
+/**
+ * ice_get_fv - get field vectors/extraction sequences for spec. lookup types
+ * @hw: pointer to hardware structure
+ * @lkups: lookup elements or match criteria for the advanced recipe, one
+ *	   structure per protocol header
+ * @lkups_cnt: number of protocols
+ * @bm: bitmap of field vectors to consider
+ * @fv_list: pointer to a list that holds the returned field vectors
+ */
+static enum ice_status
+ice_get_fv(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
+	   unsigned long *bm, struct list_head *fv_list)
+{
+	enum ice_status status;
+	u8 *prot_ids;
+	u16 i;
+
+	prot_ids = kcalloc(lkups_cnt, sizeof(*prot_ids), GFP_KERNEL);
+	if (!prot_ids)
+		return ICE_ERR_NO_MEMORY;
+
+	for (i = 0; i < lkups_cnt; i++)
+		if (!ice_prot_type_to_id(lkups[i].type, &prot_ids[i])) {
+			status = ICE_ERR_CFG;
+			goto free_mem;
+		}
+
+	/* Find field vectors that include all specified protocol types */
+	status = ice_get_sw_fv_list(hw, prot_ids, lkups_cnt, bm, fv_list);
+
+free_mem:
+	kfree(prot_ids);
+	return status;
+}
+
+/* ice_get_compat_fv_bitmap - Get compatible field vector bitmap for rule
+ * @hw: pointer to hardware structure
+ * @rinfo: other information regarding the rule e.g. priority and action info
+ * @bm: pointer to memory for returning the bitmap of field vectors
+ */
+static void
+ice_get_compat_fv_bitmap(struct ice_hw *hw, struct ice_adv_rule_info *rinfo,
+			 unsigned long *bm)
+{
+	bitmap_zero(bm, ICE_MAX_NUM_PROFILES);
+
+	ice_get_sw_fv_bitmap(hw, ICE_PROF_NON_TUN, bm);
+}
+
+/**
+ * ice_add_adv_recipe - Add an advanced recipe that is not part of the default
+ * @hw: pointer to hardware structure
+ * @lkups: lookup elements or match criteria for the advanced recipe, one
+ *  structure per protocol header
+ * @lkups_cnt: number of protocols
+ * @rinfo: other information regarding the rule e.g. priority and action info
+ * @rid: return the recipe ID of the recipe created
+ */
+static enum ice_status __maybe_unused
+ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
+		   u16 lkups_cnt, struct ice_adv_rule_info *rinfo, u16 *rid)
+{
+	DECLARE_BITMAP(fv_bitmap, ICE_MAX_NUM_PROFILES);
+	DECLARE_BITMAP(profiles, ICE_MAX_NUM_PROFILES);
+	struct ice_prot_lkup_ext *lkup_exts;
+	struct ice_recp_grp_entry *r_entry;
+	struct ice_sw_fv_list_entry *fvit;
+	struct ice_recp_grp_entry *r_tmp;
+	struct ice_sw_fv_list_entry *tmp;
+	enum ice_status status = 0;
+	struct ice_sw_recipe *rm;
+	u16 match_tun_mask = 0;
+	u8 i;
+
+	if (!lkups_cnt)
+		return ICE_ERR_PARAM;
+
+	lkup_exts = kzalloc(sizeof(*lkup_exts), GFP_KERNEL);
+	if (!lkup_exts)
+		return ICE_ERR_NO_MEMORY;
+
+	/* Determine the number of words to be matched and if it exceeds a
+	 * recipe's restrictions
+	 */
+	for (i = 0; i < lkups_cnt; i++) {
+		u16 count;
+
+		if (lkups[i].type >= ICE_PROTOCOL_LAST) {
+			status = ICE_ERR_CFG;
+			goto err_free_lkup_exts;
+		}
+
+		count = ice_fill_valid_words(&lkups[i], lkup_exts);
+		if (!count) {
+			status = ICE_ERR_CFG;
+			goto err_free_lkup_exts;
+		}
+	}
+
+	rm = kzalloc(sizeof(*rm), GFP_KERNEL);
+	if (!rm) {
+		status = ICE_ERR_NO_MEMORY;
+		goto err_free_lkup_exts;
+	}
+
+	/* Get field vectors that contain fields extracted from all the protocol
+	 * headers being programmed.
+	 */
+	INIT_LIST_HEAD(&rm->fv_list);
+	INIT_LIST_HEAD(&rm->rg_list);
+
+	/* Get bitmap of field vectors (profiles) that are compatible with the
+	 * rule request; only these will be searched in the subsequent call to
+	 * ice_get_fv.
+	 */
+	ice_get_compat_fv_bitmap(hw, rinfo, fv_bitmap);
+
+	status = ice_get_fv(hw, lkups, lkups_cnt, fv_bitmap, &rm->fv_list);
+	if (status)
+		goto err_unroll;
+
+	/* Group match words into recipes using preferred recipe grouping
+	 * criteria.
+	 */
+	status = ice_create_recipe_group(hw, rm, lkup_exts);
+	if (status)
+		goto err_unroll;
+
+	/* set the recipe priority if specified */
+	rm->priority = (u8)rinfo->priority;
+
+	/* Find offsets from the field vector. Pick the first one for all the
+	 * recipes.
+	 */
+	status = ice_fill_fv_word_index(hw, &rm->fv_list, &rm->rg_list);
+	if (status)
+		goto err_unroll;
+
+	/* get bitmap of all profiles the recipe will be associated with */
+	bitmap_zero(profiles, ICE_MAX_NUM_PROFILES);
+	list_for_each_entry(fvit, &rm->fv_list, list_entry) {
+		ice_debug(hw, ICE_DBG_SW, "profile: %d\n", fvit->profile_id);
+		set_bit((u16)fvit->profile_id, profiles);
+	}
+
+	/* Look for a recipe which matches our requested fv / mask list */
+	*rid = ice_find_recp(hw, lkup_exts);
+	if (*rid < ICE_MAX_NUM_RECIPES)
+		/* Success if found a recipe that match the existing criteria */
+		goto err_unroll;
+
+	/* Recipe we need does not exist, add a recipe */
+	status = ice_add_sw_recipe(hw, rm, match_tun_mask, profiles);
+	if (status)
+		goto err_unroll;
+
+	/* Associate all the recipes created with all the profiles in the
+	 * common field vector.
+	 */
+	list_for_each_entry(fvit, &rm->fv_list, list_entry) {
+		DECLARE_BITMAP(r_bitmap, ICE_MAX_NUM_RECIPES);
+		u16 j;
+
+		status = ice_aq_get_recipe_to_profile(hw, fvit->profile_id,
+						      (u8 *)r_bitmap, NULL);
+		if (status)
+			goto err_unroll;
+
+		bitmap_or(r_bitmap, r_bitmap, rm->r_bitmap,
+			  ICE_MAX_NUM_RECIPES);
+		status = ice_acquire_change_lock(hw, ICE_RES_WRITE);
+		if (status)
+			goto err_unroll;
+
+		status = ice_aq_map_recipe_to_profile(hw, fvit->profile_id,
+						      (u8 *)r_bitmap,
+						      NULL);
+		ice_release_change_lock(hw);
+
+		if (status)
+			goto err_unroll;
+
+		/* Update profile to recipe bitmap array */
+		bitmap_copy(profile_to_recipe[fvit->profile_id], r_bitmap,
+			    ICE_MAX_NUM_RECIPES);
+
+		/* Update recipe to profile bitmap array */
+		for_each_set_bit(j, rm->r_bitmap, ICE_MAX_NUM_RECIPES)
+			set_bit((u16)fvit->profile_id, recipe_to_profile[j]);
+	}
+
+	*rid = rm->root_rid;
+	memcpy(&hw->switch_info->recp_list[*rid].lkup_exts, lkup_exts,
+	       sizeof(*lkup_exts));
+err_unroll:
+	list_for_each_entry_safe(r_entry, r_tmp, &rm->rg_list, l_entry) {
+		list_del(&r_entry->l_entry);
+		devm_kfree(ice_hw_to_dev(hw), r_entry);
+	}
+
+	list_for_each_entry_safe(fvit, tmp, &rm->fv_list, list_entry) {
+		list_del(&fvit->list_entry);
+		devm_kfree(ice_hw_to_dev(hw), fvit);
+	}
+
+	if (rm->root_buf)
+		devm_kfree(ice_hw_to_dev(hw), rm->root_buf);
+
+	kfree(rm);
+
+err_free_lkup_exts:
+	kfree(lkup_exts);
+
+	return status;
+}
+
 /**
  * ice_replay_vsi_fltr - Replay filters for requested VSI
  * @hw: pointer to the hardware structure
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index 592c564c6de8..56bf54fe462f 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -134,30 +134,110 @@ struct ice_update_recipe_lkup_idx_params {
 	u8 lkup_idx;
 };
 
+struct ice_adv_lkup_elem {
+	enum ice_protocol_type type;
+	union ice_prot_hdr h_u;	/* Header values */
+	union ice_prot_hdr m_u;	/* Mask of header values to match */
+};
+
+struct ice_sw_act_ctrl {
+	/* Source VSI for LOOKUP_TX or source port for LOOKUP_RX */
+	u16 src;
+	u16 flag;
+	enum ice_sw_fwd_act_type fltr_act;
+	/* Depending on filter action */
+	union {
+		/* This is a queue ID in case of ICE_FWD_TO_Q and starting
+		 * queue ID in case of ICE_FWD_TO_QGRP.
+		 */
+		u16 q_id:11;
+		u16 vsi_id:10;
+		u16 hw_vsi_id:10;
+		u16 vsi_list_id:10;
+	} fwd_id;
+	/* software VSI handle */
+	u16 vsi_handle;
+	u8 qgrp_size;
+};
+
+struct ice_rule_query_data {
+	/* Recipe ID for which the requested rule was added */
+	u16 rid;
+	/* Rule ID that was added or is supposed to be removed */
+	u16 rule_id;
+	/* vsi_handle for which Rule was added or is supposed to be removed */
+	u16 vsi_handle;
+};
+
+struct ice_adv_rule_info {
+	struct ice_sw_act_ctrl sw_act;
+	u32 priority;
+	u8 rx; /* true means LOOKUP_RX otherwise LOOKUP_TX */
+	u16 fltr_rule_id;
+};
+
+/* A collection of one or more four word recipe */
 struct ice_sw_recipe {
-	struct list_head l_entry;
+	/* For a chained recipe the root recipe is what should be used for
+	 * programming rules
+	 */
+	u8 is_root;
+	u8 root_rid;
+	u8 recp_created;
 
-	/* To protect modification of filt_rule list
-	 * defined below
+	/* Number of extraction words */
+	u8 n_ext_words;
+	/* Protocol ID and Offset pair (extraction word) to describe the
+	 * recipe
 	 */
-	struct mutex filt_rule_lock;
+	struct ice_fv_word ext_words[ICE_MAX_CHAIN_WORDS];
+	u16 word_masks[ICE_MAX_CHAIN_WORDS];
+
+	/* if this recipe is a collection of other recipe */
+	u8 big_recp;
+
+	/* if this recipe is part of another bigger recipe then chain index
+	 * corresponding to this recipe
+	 */
+	u8 chain_idx;
+
+	/* if this recipe is a collection of other recipe then count of other
+	 * recipes and recipe IDs of those recipes
+	 */
+	u8 n_grp_count;
+
+	/* Bit map specifying the IDs associated with this group of recipe */
+	DECLARE_BITMAP(r_bitmap, ICE_MAX_NUM_RECIPES);
 
-	/* List of type ice_fltr_mgmt_list_entry */
+	/* List of type ice_fltr_mgmt_list_entry or adv_rule */
+	u8 adv_rule;
 	struct list_head filt_rules;
 	struct list_head filt_replay_rules;
 
-	/* linked list of type recipe_list_entry */
-	struct list_head rg_list;
-	/* linked list of type ice_sw_fv_list_entry*/
+	struct mutex filt_rule_lock;	/* protect filter rule structure */
+
+	/* Profiles this recipe should be associated with */
 	struct list_head fv_list;
-	struct ice_aqc_recipe_data_elem *r_buf;
-	u8 recp_count;
-	u8 root_rid;
-	u8 num_profs;
-	u8 *prof_ids;
 
-	/* recipe bitmap: what all recipes makes this recipe */
-	DECLARE_BITMAP(r_bitmap, ICE_MAX_NUM_RECIPES);
+	/* Profiles this recipe is associated with */
+	u8 num_profs, *prof_ids;
+
+	/* Bit map for possible result indexes */
+	DECLARE_BITMAP(res_idxs, ICE_MAX_FV_WORDS);
+
+	/* This allows user to specify the recipe priority.
+	 * For now, this becomes 'fwd_priority' when recipe
+	 * is created, usually recipes can have 'fwd' and 'join'
+	 * priority.
+	 */
+	u8 priority;
+
+	struct list_head rg_list;
+
+	/* AQ buffer associated with this recipe */
+	struct ice_aqc_recipe_data_elem *root_buf;
+	/* This struct saves the fv_words for a given lookup */
+	struct ice_prot_lkup_ext lkup_exts;
 };
 
 /* Bookkeeping structure to hold bitmap of VSIs corresponding to VSI list ID */
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
