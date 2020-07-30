Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9D72328B5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Jul 2020 02:24:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2626F24CEB;
	Thu, 30 Jul 2020 00:24:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S-3ziuzb0WLM; Thu, 30 Jul 2020 00:24:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EA9B324F78;
	Thu, 30 Jul 2020 00:23:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 48EC01BF9B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 00:23:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 41DDB877E7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 00:23:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kkY5FmamWW2E for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Jul 2020 00:23:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 804AB87916
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 00:23:52 +0000 (UTC)
IronPort-SDR: wgvQqAMp4jDwlv3mEQofERYh/9LcNU1YKCwt5SIKe8MbHEAmC7YCwY+hJ3Ng3wQH5l4KL1D43U
 hLV/lanXYekA==
X-IronPort-AV: E=McAfee;i="6000,8403,9697"; a="216004470"
X-IronPort-AV: E=Sophos;i="5.75,412,1589266800"; d="scan'208";a="216004470"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2020 17:23:50 -0700
IronPort-SDR: fyTCWxhRW2UEqprv5OXj/nWMmfEwOIu2EjQeFrVHGSThdQmh0U1UWAyygVXHEvjdAU0XgiLtBQ
 zNjri0jmTf8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,412,1589266800"; d="scan'208";a="320908830"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga008.jf.intel.com with ESMTP; 29 Jul 2020 17:23:50 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 29 Jul 2020 17:19:21 -0700
Message-Id: <20200730001922.52568-12-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200730001922.52568-1-anthony.l.nguyen@intel.com>
References: <20200730001922.52568-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S51 12/13] ice: adjust profile id map locks
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

From: Victor Raj <victor.raj@intel.com>

The profile id map lock should be held till the caller completes
all references of that profile entries.

The current code releases the lock right after the match search.
This caused a driver issue when the profile map entries were
referenced after it was freed in other thread after the lock was
released earlier.

Signed-off-by: Victor Raj <victor.raj@intel.com>
---
 .../net/ethernet/intel/ice/ice_flex_pipe.c    | 90 +++++++++----------
 1 file changed, 45 insertions(+), 45 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index d8ada9675650..7ae4df0901c3 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -3880,16 +3880,16 @@ ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 }
 
 /**
- * ice_search_prof_id_low - Search for a profile tracking ID low level
+ * ice_search_prof_id - Search for a profile tracking ID
  * @hw: pointer to the HW struct
  * @blk: hardware block
  * @id: profile tracking ID
  *
- * This will search for a profile tracking ID which was previously added. This
- * version assumes that the caller has already acquired the prof map lock.
+ * This will search for a profile tracking ID which was previously added.
+ * The profile map lock should be held before calling this function.
  */
 static struct ice_prof_map *
-ice_search_prof_id_low(struct ice_hw *hw, enum ice_block blk, u64 id)
+ice_search_prof_id(struct ice_hw *hw, enum ice_block blk, u64 id)
 {
 	struct ice_prof_map *entry = NULL;
 	struct ice_prof_map *map;
@@ -3903,26 +3903,6 @@ ice_search_prof_id_low(struct ice_hw *hw, enum ice_block blk, u64 id)
 	return entry;
 }
 
-/**
- * ice_search_prof_id - Search for a profile tracking ID
- * @hw: pointer to the HW struct
- * @blk: hardware block
- * @id: profile tracking ID
- *
- * This will search for a profile tracking ID which was previously added.
- */
-static struct ice_prof_map *
-ice_search_prof_id(struct ice_hw *hw, enum ice_block blk, u64 id)
-{
-	struct ice_prof_map *entry;
-
-	mutex_lock(&hw->blk[blk].es.prof_map_lock);
-	entry = ice_search_prof_id_low(hw, blk, id);
-	mutex_unlock(&hw->blk[blk].es.prof_map_lock);
-
-	return entry;
-}
-
 /**
  * ice_vsig_prof_id_count - count profiles in a VSIG
  * @hw: pointer to the HW struct
@@ -4139,7 +4119,7 @@ enum ice_status ice_rem_prof(struct ice_hw *hw, enum ice_block blk, u64 id)
 
 	mutex_lock(&hw->blk[blk].es.prof_map_lock);
 
-	pmap = ice_search_prof_id_low(hw, blk, id);
+	pmap = ice_search_prof_id(hw, blk, id);
 	if (!pmap) {
 		status = ICE_ERR_DOES_NOT_EXIST;
 		goto err_ice_rem_prof;
@@ -4172,22 +4152,28 @@ static enum ice_status
 ice_get_prof(struct ice_hw *hw, enum ice_block blk, u64 hdl,
 	     struct list_head *chg)
 {
+	enum ice_status status = 0;
 	struct ice_prof_map *map;
 	struct ice_chs_chg *p;
 	u16 i;
 
+	mutex_lock(&hw->blk[blk].es.prof_map_lock);
 	/* Get the details on the profile specified by the handle ID */
 	map = ice_search_prof_id(hw, blk, hdl);
-	if (!map)
-		return ICE_ERR_DOES_NOT_EXIST;
+	if (!map) {
+		status = ICE_ERR_DOES_NOT_EXIST;
+		goto err_ice_get_prof;
+	}
 
 	for (i = 0; i < map->ptg_cnt; i++)
 		if (!hw->blk[blk].es.written[map->prof_id]) {
 			/* add ES to change list */
 			p = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*p),
 					 GFP_KERNEL);
-			if (!p)
+			if (!p) {
+				status = ICE_ERR_NO_MEMORY;
 				goto err_ice_get_prof;
+			}
 
 			p->type = ICE_PTG_ES_ADD;
 			p->ptype = 0;
@@ -4202,11 +4188,10 @@ ice_get_prof(struct ice_hw *hw, enum ice_block blk, u64 hdl,
 			list_add(&p->list_entry, chg);
 		}
 
-	return 0;
-
 err_ice_get_prof:
+	mutex_unlock(&hw->blk[blk].es.prof_map_lock);
 	/* let caller clean up the change list */
-	return ICE_ERR_NO_MEMORY;
+	return status;
 }
 
 /**
@@ -4260,17 +4245,23 @@ static enum ice_status
 ice_add_prof_to_lst(struct ice_hw *hw, enum ice_block blk,
 		    struct list_head *lst, u64 hdl)
 {
+	enum ice_status status = 0;
 	struct ice_prof_map *map;
 	struct ice_vsig_prof *p;
 	u16 i;
 
+	mutex_lock(&hw->blk[blk].es.prof_map_lock);
 	map = ice_search_prof_id(hw, blk, hdl);
-	if (!map)
-		return ICE_ERR_DOES_NOT_EXIST;
+	if (!map) {
+		status = ICE_ERR_DOES_NOT_EXIST;
+		goto err_ice_add_prof_to_lst;
+	}
 
 	p = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*p), GFP_KERNEL);
-	if (!p)
-		return ICE_ERR_NO_MEMORY;
+	if (!p) {
+		status = ICE_ERR_NO_MEMORY;
+		goto err_ice_add_prof_to_lst;
+	}
 
 	p->profile_cookie = map->profile_cookie;
 	p->prof_id = map->prof_id;
@@ -4284,7 +4275,9 @@ ice_add_prof_to_lst(struct ice_hw *hw, enum ice_block blk,
 
 	list_add(&p->list, lst);
 
-	return 0;
+err_ice_add_prof_to_lst:
+	mutex_unlock(&hw->blk[blk].es.prof_map_lock);
+	return status;
 }
 
 /**
@@ -4502,16 +4495,12 @@ ice_add_prof_id_vsig(struct ice_hw *hw, enum ice_block blk, u16 vsig, u64 hdl,
 	u8 vl_msk[ICE_TCAM_KEY_VAL_SZ] = { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF };
 	u8 dc_msk[ICE_TCAM_KEY_VAL_SZ] = { 0xFF, 0xFF, 0x00, 0x00, 0x00 };
 	u8 nm_msk[ICE_TCAM_KEY_VAL_SZ] = { 0x00, 0x00, 0x00, 0x00, 0x00 };
+	enum ice_status status = 0;
 	struct ice_prof_map *map;
 	struct ice_vsig_prof *t;
 	struct ice_chs_chg *p;
 	u16 vsig_idx, i;
 
-	/* Get the details on the profile specified by the handle ID */
-	map = ice_search_prof_id(hw, blk, hdl);
-	if (!map)
-		return ICE_ERR_DOES_NOT_EXIST;
-
 	/* Error, if this VSIG already has this profile */
 	if (ice_has_prof_vsig(hw, blk, vsig, hdl))
 		return ICE_ERR_ALREADY_EXISTS;
@@ -4521,19 +4510,28 @@ ice_add_prof_id_vsig(struct ice_hw *hw, enum ice_block blk, u16 vsig, u64 hdl,
 	if (!t)
 		return ICE_ERR_NO_MEMORY;
 
+	mutex_lock(&hw->blk[blk].es.prof_map_lock);
+	/* Get the details on the profile specified by the handle ID */
+	map = ice_search_prof_id(hw, blk, hdl);
+	if (!map) {
+		status = ICE_ERR_DOES_NOT_EXIST;
+		goto err_ice_add_prof_id_vsig;
+	}
+
 	t->profile_cookie = map->profile_cookie;
 	t->prof_id = map->prof_id;
 	t->tcam_count = map->ptg_cnt;
 
 	/* create TCAM entries */
 	for (i = 0; i < map->ptg_cnt; i++) {
-		enum ice_status status;
 		u16 tcam_idx;
 
 		/* add TCAM to change list */
 		p = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*p), GFP_KERNEL);
-		if (!p)
+		if (!p) {
+			status = ICE_ERR_NO_MEMORY;
 			goto err_ice_add_prof_id_vsig;
+		}
 
 		/* allocate the TCAM entry index */
 		status = ice_alloc_tcam_ent(hw, blk, &tcam_idx);
@@ -4577,12 +4575,14 @@ ice_add_prof_id_vsig(struct ice_hw *hw, enum ice_block blk, u16 vsig, u64 hdl,
 		list_add(&t->list,
 			 &hw->blk[blk].xlt2.vsig_tbl[vsig_idx].prop_lst);
 
-	return 0;
+	mutex_unlock(&hw->blk[blk].es.prof_map_lock);
+	return status;
 
 err_ice_add_prof_id_vsig:
+	mutex_unlock(&hw->blk[blk].es.prof_map_lock);
 	/* let caller clean up the change list */
 	devm_kfree(ice_hw_to_dev(hw), t);
-	return ICE_ERR_NO_MEMORY;
+	return status;
 }
 
 /**
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
