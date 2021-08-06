Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D164E3E2660
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Aug 2021 10:49:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4BB7B81A1C;
	Fri,  6 Aug 2021 08:49:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A7bBVIkYcX-v; Fri,  6 Aug 2021 08:49:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 02A1E81AAB;
	Fri,  6 Aug 2021 08:49:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3D8CC1C115D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 08:49:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2BDD160A6D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 08:49:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yUoglcR3Gn18 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Aug 2021 08:49:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 00EAF605E5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 08:49:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="275379347"
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="275379347"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2021 01:49:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="513317763"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by FMSMGA003.fm.intel.com with ESMTP; 06 Aug 2021 01:49:08 -0700
Received: from gklab-229-137.igk.intel.com (gklab-229-137.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 1768n6kR030013
 for <intel-wired-lan@lists.osuosl.org>; Fri, 6 Aug 2021 09:49:07 +0100
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  6 Aug 2021 10:48:59 +0200
Message-Id: <1628239746-17380-3-git-send-email-wojciech.drewek@intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1628239746-17380-1-git-send-email-wojciech.drewek@intel.com>
References: <1628239746-17380-1-git-send-email-wojciech.drewek@intel.com>
Subject: [Intel-wired-lan] [PATCH net-next v6 2/9] ice: manage profiles and
 field vectors
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

Implement functions to manage profiles and field vectors in hardware.

In hardware, there are up to 256 profiles and each of these profiles can
have 48 field vector words. Each field vector word is described by
protocol id and offset in the packet. To add a new recipe all used
profiles need to be searched. If the profile contains all required
protocol ids and offsets from the recipe it can be used. The driver has
to add this profile to recipe association to tell hardware that newly
added recipe is going to be associated with this profile.

The amount of used profiles depend on the package. To avoid searching
across not used profile, max profile id value is calculated at init flow.
The profile is considered as unused when all field vector words in the
profile are invalid (protocol id 0xff and offset 0x1ff).

Profiles are read from the package section ICE_SID_FLD_VEC_SW. Empty
field vector words can be used for recipe results. Store all unused field
vector words in prof_res_bm. It is a 256 elements array (max number of
profiles) each element is a 48 bit bitmap (max number of field vector
words).

For now, support only non-tunnel profiles type.

Co-developed-by: Grishma Kotecha <grishma.kotecha@intel.com>
Signed-off-by: Grishma Kotecha <grishma.kotecha@intel.com>
Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_flex_pipe.c | 245 +++++++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_flex_pipe.h |   8 +
 drivers/net/ethernet/intel/ice/ice_flex_type.h |  13 ++
 drivers/net/ethernet/intel/ice/ice_switch.c    |   3 +-
 drivers/net/ethernet/intel/ice/ice_type.h      |   3 +
 5 files changed, 271 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index 915a00f73d34..19cbab69ca4c 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -1405,6 +1405,86 @@ static enum ice_status ice_chk_pkg_version(struct ice_pkg_ver *pkg_ver)
 }
 
 /**
+ * ice_sw_fv_handler
+ * @sect_type: section type
+ * @section: pointer to section
+ * @index: index of the field vector entry to be returned
+ * @offset: ptr to variable that receives the offset in the field vector table
+ *
+ * This is a callback function that can be passed to ice_pkg_enum_entry.
+ * This function treats the given section as of type ice_sw_fv_section and
+ * enumerates offset field. "offset" is an index into the field vector table.
+ */
+static void *
+ice_sw_fv_handler(u32 sect_type, void *section, u32 index, u32 *offset)
+{
+	struct ice_sw_fv_section *fv_section = section;
+
+	if (!section || sect_type != ICE_SID_FLD_VEC_SW)
+		return NULL;
+	if (index >= le16_to_cpu(fv_section->count))
+		return NULL;
+	if (offset)
+		/* "index" passed in to this function is relative to a given
+		 * 4k block. To get to the true index into the field vector
+		 * table need to add the relative index to the base_offset
+		 * field of this section
+		 */
+		*offset = le16_to_cpu(fv_section->base_offset) + index;
+	return fv_section->fv + index;
+}
+
+/**
+ * ice_get_prof_index_max - get the max profile index for used profile
+ * @hw: pointer to the HW struct
+ *
+ * Calling this function will get the max profile index for used profile
+ * and store the index number in struct ice_switch_info *switch_info
+ * in HW for following use.
+ */
+static enum ice_status ice_get_prof_index_max(struct ice_hw *hw)
+{
+	u16 prof_index = 0, j, max_prof_index = 0;
+	struct ice_pkg_enum state;
+	struct ice_seg *ice_seg;
+	bool flag = false;
+	struct ice_fv *fv;
+	u32 offset;
+
+	memset(&state, 0, sizeof(state));
+
+	if (!hw->seg)
+		return ICE_ERR_PARAM;
+
+	ice_seg = hw->seg;
+
+	do {
+		fv = ice_pkg_enum_entry(ice_seg, &state, ICE_SID_FLD_VEC_SW,
+					&offset, ice_sw_fv_handler);
+		if (!fv)
+			break;
+		ice_seg = NULL;
+
+		/* in the profile that not be used, the prot_id is set to 0xff
+		 * and the off is set to 0x1ff for all the field vectors.
+		 */
+		for (j = 0; j < hw->blk[ICE_BLK_SW].es.fvw; j++)
+			if (fv->ew[j].prot_id != ICE_PROT_INVALID ||
+			    fv->ew[j].off != ICE_FV_OFFSET_INVAL)
+				flag = true;
+		if (flag && prof_index > max_prof_index)
+			max_prof_index = prof_index;
+
+		prof_index++;
+		flag = false;
+	} while (fv);
+
+	hw->switch_info->max_used_prof_index = max_prof_index;
+
+	return 0;
+}
+
+/**
  * ice_init_pkg - initialize/download package
  * @hw: pointer to the hardware structure
  * @buf: pointer to the package buffer
@@ -1484,6 +1564,7 @@ enum ice_status ice_init_pkg(struct ice_hw *hw, u8 *buf, u32 len)
 		ice_init_pkg_regs(hw);
 		ice_fill_blk_tbls(hw);
 		ice_fill_hw_ptype(hw);
+		ice_get_prof_index_max(hw);
 	} else {
 		ice_debug(hw, ICE_DBG_INIT, "package load failed, %d\n",
 			  status);
@@ -1561,6 +1642,170 @@ static struct ice_buf_build *ice_pkg_buf_alloc(struct ice_hw *hw)
 }
 
 /**
+ * ice_get_sw_fv_bitmap - Get switch field vector bitmap based on profile type
+ * @hw: pointer to hardware structure
+ * @req_profs: type of profiles requested
+ * @bm: pointer to memory for returning the bitmap of field vectors
+ */
+void
+ice_get_sw_fv_bitmap(struct ice_hw *hw, enum ice_prof_type req_profs,
+		     unsigned long *bm)
+{
+	struct ice_pkg_enum state;
+	struct ice_seg *ice_seg;
+	struct ice_fv *fv;
+
+	if (req_profs == ICE_PROF_ALL) {
+		bitmap_set(bm, 0, ICE_MAX_NUM_PROFILES);
+		return;
+	}
+
+	memset(&state, 0, sizeof(state));
+	bitmap_zero(bm, ICE_MAX_NUM_PROFILES);
+	ice_seg = hw->seg;
+	do {
+		enum ice_prof_type prof_type;
+		u32 offset;
+
+		fv = ice_pkg_enum_entry(ice_seg, &state, ICE_SID_FLD_VEC_SW,
+					&offset, ice_sw_fv_handler);
+		ice_seg = NULL;
+
+		if (fv) {
+			prof_type = ICE_PROF_NON_TUN;
+
+			if (req_profs & prof_type)
+				set_bit((u16)offset, bm);
+		}
+	} while (fv);
+}
+
+/**
+ * ice_get_sw_fv_list
+ * @hw: pointer to the HW structure
+ * @prot_ids: field vector to search for with a given protocol ID
+ * @ids_cnt: lookup/protocol count
+ * @bm: bitmap of field vectors to consider
+ * @fv_list: Head of a list
+ *
+ * Finds all the field vector entries from switch block that contain
+ * a given protocol ID and returns a list of structures of type
+ * "ice_sw_fv_list_entry". Every structure in the list has a field vector
+ * definition and profile ID information
+ * NOTE: The caller of the function is responsible for freeing the memory
+ * allocated for every list entry.
+ */
+enum ice_status
+ice_get_sw_fv_list(struct ice_hw *hw, u8 *prot_ids, u16 ids_cnt,
+		   unsigned long *bm, struct list_head *fv_list)
+{
+	struct ice_sw_fv_list_entry *fvl;
+	struct ice_sw_fv_list_entry *tmp;
+	struct ice_pkg_enum state;
+	struct ice_seg *ice_seg;
+	struct ice_fv *fv;
+	u32 offset;
+
+	memset(&state, 0, sizeof(state));
+
+	if (!ids_cnt || !hw->seg)
+		return ICE_ERR_PARAM;
+
+	ice_seg = hw->seg;
+	do {
+		u16 i;
+
+		fv = ice_pkg_enum_entry(ice_seg, &state, ICE_SID_FLD_VEC_SW,
+					&offset, ice_sw_fv_handler);
+		if (!fv)
+			break;
+		ice_seg = NULL;
+
+		/* If field vector is not in the bitmap list, then skip this
+		 * profile.
+		 */
+		if (!test_bit((u16)offset, bm))
+			continue;
+
+		for (i = 0; i < ids_cnt; i++) {
+			int j;
+
+			/* This code assumes that if a switch field vector line
+			 * has a matching protocol, then this line will contain
+			 * the entries necessary to represent every field in
+			 * that protocol header.
+			 */
+			for (j = 0; j < hw->blk[ICE_BLK_SW].es.fvw; j++)
+				if (fv->ew[j].prot_id == prot_ids[i])
+					break;
+			if (j >= hw->blk[ICE_BLK_SW].es.fvw)
+				break;
+			if (i + 1 == ids_cnt) {
+				fvl = devm_kzalloc(ice_hw_to_dev(hw),
+						   sizeof(*fvl), GFP_KERNEL);
+				if (!fvl)
+					goto err;
+				fvl->fv_ptr = fv;
+				fvl->profile_id = offset;
+				list_add(&fvl->list_entry, fv_list);
+				break;
+			}
+		}
+	} while (fv);
+	if (list_empty(fv_list))
+		return ICE_ERR_CFG;
+	return 0;
+
+err:
+	list_for_each_entry_safe(fvl, tmp, fv_list, list_entry) {
+		list_del(&fvl->list_entry);
+		devm_kfree(ice_hw_to_dev(hw), fvl);
+	}
+
+	return ICE_ERR_NO_MEMORY;
+}
+
+/**
+ * ice_init_prof_result_bm - Initialize the profile result index bitmap
+ * @hw: pointer to hardware structure
+ */
+void ice_init_prof_result_bm(struct ice_hw *hw)
+{
+	struct ice_pkg_enum state;
+	struct ice_seg *ice_seg;
+	struct ice_fv *fv;
+
+	memset(&state, 0, sizeof(state));
+
+	if (!hw->seg)
+		return;
+
+	ice_seg = hw->seg;
+	do {
+		u32 off;
+		u16 i;
+
+		fv = ice_pkg_enum_entry(ice_seg, &state, ICE_SID_FLD_VEC_SW,
+					&off, ice_sw_fv_handler);
+		ice_seg = NULL;
+		if (!fv)
+			break;
+
+		bitmap_zero(hw->switch_info->prof_res_bm[off],
+			    ICE_MAX_FV_WORDS);
+
+		/* Determine empty field vector indices, these can be
+		 * used for recipe results. Skip index 0, since it is
+		 * always used for Switch ID.
+		 */
+		for (i = 1; i < ICE_MAX_FV_WORDS; i++)
+			if (fv->ew[i].prot_id == ICE_PROT_INVALID &&
+			    fv->ew[i].off == ICE_FV_OFFSET_INVAL)
+				set_bit(i, hw->switch_info->prof_res_bm[off]);
+	} while (fv);
+}
+
+/**
  * ice_pkg_buf_free
  * @hw: pointer to the HW structure
  * @bld: pointer to pkg build (allocated by ice_pkg_buf_alloc())
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
index 995b33d37b67..2dcb11937205 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
@@ -18,6 +18,14 @@
 
 #define ICE_PKG_CNT 4
 
+void
+ice_get_sw_fv_bitmap(struct ice_hw *hw, enum ice_prof_type type,
+		     unsigned long *bm);
+void
+ice_init_prof_result_bm(struct ice_hw *hw);
+enum ice_status
+ice_get_sw_fv_list(struct ice_hw *hw, u8 *prot_ids, u16 ids_cnt,
+		   unsigned long *bm, struct list_head *fv_list);
 bool
 ice_get_open_tunnel_port(struct ice_hw *hw, u16 *port);
 int ice_udp_tunnel_set_port(struct net_device *netdev, unsigned int table,
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_type.h b/drivers/net/ethernet/intel/ice/ice_flex_type.h
index 6358e5776e02..c73fde45b266 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_type.h
@@ -13,6 +13,8 @@ struct ice_fv_word {
 	u8 resvrd;
 } __packed;
 
+#define ICE_MAX_NUM_PROFILES 256
+
 #define ICE_MAX_FV_WORDS 48
 struct ice_fv {
 	struct ice_fv_word ew[ICE_MAX_FV_WORDS];
@@ -302,6 +304,12 @@ struct ice_sw_fv_section {
 	struct ice_fv fv[];
 };
 
+struct ice_sw_fv_list_entry {
+	struct list_head list_entry;
+	u32 profile_id;
+	struct ice_fv *fv_ptr;
+};
+
 /* The BOOST TCAM stores the match packet header in reverse order, meaning
  * the fields are reversed; in addition, this means that the normally big endian
  * fields of the packet are now little endian.
@@ -645,4 +653,9 @@ struct ice_chs_chg {
 };
 
 #define ICE_FLOW_PTYPE_MAX		ICE_XLT1_CNT
+
+enum ice_prof_type {
+	ICE_PROF_NON_TUN = 0x1,
+	ICE_PROF_ALL = 0xFF,
+};
 #endif /* _ICE_FLEX_TYPE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 88ee213cf816..04023d71c8f7 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -59,10 +59,11 @@ enum ice_status ice_init_def_sw_recp(struct ice_hw *hw)
 	if (!recps)
 		return ICE_ERR_NO_MEMORY;
 
-	for (i = 0; i < ICE_SW_LKUP_LAST; i++) {
+	for (i = 0; i < ICE_MAX_NUM_RECIPES; i++) {
 		recps[i].root_rid = i;
 		INIT_LIST_HEAD(&recps[i].filt_rules);
 		INIT_LIST_HEAD(&recps[i].filt_replay_rules);
+		INIT_LIST_HEAD(&recps[i].rg_list);
 		mutex_init(&recps[i].filt_rule_lock);
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index dcaa6bfab484..6b4f064f6c0d 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -698,6 +698,9 @@ struct ice_port_info {
 struct ice_switch_info {
 	struct list_head vsi_list_map_head;
 	struct ice_sw_recipe *recp_list;
+	u16 max_used_prof_index;
+
+	DECLARE_BITMAP(prof_res_bm[ICE_MAX_NUM_PROFILES], ICE_MAX_FV_WORDS);
 };
 
 /* FW logging configuration */
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
