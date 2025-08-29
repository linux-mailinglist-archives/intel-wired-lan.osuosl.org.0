Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B98A8B3B884
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Aug 2025 12:18:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5FC74815CD;
	Fri, 29 Aug 2025 10:18:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zMit9G-adjE4; Fri, 29 Aug 2025 10:18:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 39BA583D23
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756462703;
	bh=8zDSd5VDRn07YYZ70FGLUlnM/wQu+b1qep3/i6fX9/s=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6ZpcOSia08WPSCEQ+g+0OCYehl8YMlicwm8CGcuP84ACzU6WyO2OFDyF0ZbC9hrE/
	 0+517H0aOMHzsC0q0vKoM+ZFDgLvxdqQOOEtMtpRtJEOgTXPPIe0lSZDxVwXlZehu+
	 h63yN9wmciwIQjYX5G9OIeZCcIBKULJb/vBEvT8dnwiA7DucRYI/vmYsDdIoV4PpxJ
	 nBDxD7EFh2IhVOaTxB8Y6oyDA80rXX1+kDsr2TkFwKZ4QMTNv3rvnJTqJgSxecYmKT
	 jIVL7SZtXkZ+DF4zgVp62fYOWm2ubGBwS9BYjFkWlQ4DD03S3MNTcOy5hQYF+mTULT
	 lIAQcP73F1UIA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 39BA583D23;
	Fri, 29 Aug 2025 10:18:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2D6F16C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 10:18:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1320683CE1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 10:18:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9Kbos0CuPeco for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Aug 2025 10:18:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2A16283CFB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A16283CFB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2A16283CFB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 10:18:20 +0000 (UTC)
X-CSE-ConnectionGUID: bkWXjl8VRKephlpheUVn1A==
X-CSE-MsgGUID: nZlvMos3RiioCWL6k8FCQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11536"; a="76199482"
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="76199482"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 03:18:20 -0700
X-CSE-ConnectionGUID: VA90CYkvTbmcXfFkE4+DnA==
X-CSE-MsgGUID: 8mRkT8bnSvC/DAwvThHLcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="207489262"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa001.jf.intel.com with ESMTP; 29 Aug 2025 03:18:18 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Fri, 29 Aug 2025 10:18:06 +0000
Message-ID: <20250829101809.1022945-4-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250829101809.1022945-1-aleksandr.loktionov@intel.com>
References: <20250829101809.1022945-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756462700; x=1787998700;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4U7tcKxyFVD9kIHNjQVnRzjZECz80gqZCXTPB4y62x4=;
 b=C3ys0nessCsolUc9qPQO6mL0wDVciMLpAGy7Cr0grpyrHgYZHd9jfyhg
 QUTy4RNVFTdsi+pZyxVOprIvvrK1aZIDcFiN++wTbDnczKVEEGNoEzArs
 2LyBgHGIsQ4V7LuSsjUKvmAjG7qPFE/IqPc3WNq3PEj42TyItioQuecNB
 ldwzWX3CF5GA0Q6eFLPiBHG0hiXV0iHcScOKdCM8zfNraYy2RYbV2YbwY
 BrFtzv+aQZl3V+oVEq2OgGrbeUj/bhgMxJXsgFJueBOIvUKOMcOQ2s419
 Zo6QuIu5B7YwD5UOHQJuZle6D8J7OTMD1ZDMvTVGwQ/FNxcmNX/xLNGid
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C3ys0nes
Subject: [Intel-wired-lan] [PATCH iwl-next v4 3/5] ice: improve TCAM
 priority handling for RSS profiles
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Dan Nowlin <dan.nowlin@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Enhance TCAM priority logic to avoid conflicts between RSS profiles
with overlapping PTGs and attributes.

Track used PTG and attribute combinations.
Ensure higher-priority profiles override lower ones.
Add helper for setting TCAM flags and masks.

Ensure RSS rule consistency and prevent unintended matches.

Co-developed-by: Dan Nowlin <dan.nowlin@intel.com>
Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 .../net/ethernet/intel/ice/ice_flex_pipe.c    | 91 ++++++++++++++++---
 .../net/ethernet/intel/ice/ice_flex_type.h    |  1 +
 2 files changed, 78 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c

--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -3581,6 +3581,20 @@ ice_move_vsi(struct ice_hw *hw, enum ice_block blk, u16 vsi, u16 vsig,
 	return 0;
 }
 
+/**
+ * ice_set_tcam_flags - set TCAM flag don't care mask
+ * @mask: mask for flags
+ * @dc_mask: pointer to the don't care mask
+ */
+static void ice_set_tcam_flags(u16 mask, u8 dc_mask[ICE_TCAM_KEY_VAL_SZ])
+{
+	u16 *flag_word;
+
+	/* flags are lowest u16 */
+	flag_word = (u16 *)dc_mask;
+	*flag_word = ~mask;
+}
+
 /**
  * ice_rem_chg_tcam_ent - remove a specific TCAM entry from change list
  * @hw: pointer to the HW struct
@@ -3651,6 +3665,9 @@ ice_prof_tcam_ena_dis(struct ice_hw *hw, enum ice_block blk, bool enable,
 	if (!p)
 		return -ENOMEM;
 
+	/* set don't care masks for TCAM flags */
+	ice_set_tcam_flags(tcam->attr.mask, dc_msk);
+
 	status = ice_tcam_write_entry(hw, blk, tcam->tcam_idx, tcam->prof_id,
 				      tcam->ptg, vsig, 0, tcam->attr.flags,
 				      vl_msk, dc_msk, nm_msk);
@@ -3676,6 +3693,32 @@ ice_prof_tcam_ena_dis(struct ice_hw *hw, enum ice_block blk, bool enable,
 	return status;
 }
 
+/**
+ * ice_ptg_attr_in_use - determine if PTG and attribute pair is in use
+ * @ptg_attr: pointer to the PTG and attribute pair to check
+ * @ptgs_used: bitmap that denotes which PTGs are in use
+ * @attr_used: array of PTG and attributes pairs already used
+ * @attr_cnt: count of entries in the attr_used array
+ */
+static bool
+ice_ptg_attr_in_use(struct ice_tcam_inf *ptg_attr, unsigned long *ptgs_used,
+		    struct ice_tcam_inf *attr_used[], u16 attr_cnt)
+{
+	u16 i;
+
+	if (!test_bit(ptg_attr->ptg, ptgs_used))
+		return false;
+
+	/* the PTG is used, so now look for correct attributes */
+	for (i = 0; i < attr_cnt; i++)
+		if (attr_used[i]->ptg == ptg_attr->ptg &&
+		    attr_used[i]->attr.flags == ptg_attr->attr.flags &&
+		    attr_used[i]->attr.mask == ptg_attr->attr.mask)
+			return true;
+
+	return false;
+}
+
 /**
  * ice_adj_prof_priorities - adjust profile based on priorities
  * @hw: pointer to the HW struct
@@ -3688,10 +3731,17 @@ ice_adj_prof_priorities(struct ice_hw *hw, enum ice_block blk, u16 vsig,
 			struct list_head *chg)
 {
 	DECLARE_BITMAP(ptgs_used, ICE_XLT1_CNT);
+	struct ice_tcam_inf **attr_used;
 	struct ice_vsig_prof *t;
-	int status;
+	u16 attr_used_cnt = 0;
+	int status = 0;
 	u16 idx;
 
+	attr_used = devm_kcalloc(ice_hw_to_dev(hw), ICE_MAX_PTG_ATTRS,
+				 sizeof(*attr_used), GFP_KERNEL);
+	if (!attr_used)
+		return -ENOMEM;
+
 	bitmap_zero(ptgs_used, ICE_XLT1_CNT);
 	idx = vsig & ICE_VSIG_IDX_M;
 
@@ -3709,11 +3759,15 @@ ice_adj_prof_priorities(struct ice_hw *hw, enum ice_block blk, u16 vsig,
 		u16 i;
 
 		for (i = 0; i < t->tcam_count; i++) {
+			bool used;
+
 			/* Scan the priorities from newest to oldest.
 			 * Make sure that the newest profiles take priority.
 			 */
-			if (test_bit(t->tcam[i].ptg, ptgs_used) &&
-			    t->tcam[i].in_use) {
+			used = ice_ptg_attr_in_use(&t->tcam[i], ptgs_used,
+						   attr_used, attr_used_cnt);
+
+			if (used && t->tcam[i].in_use) {
 				/* need to mark this PTG as never match, as it
 				 * was already in use and therefore duplicate
 				 * (and lower priority)
@@ -3723,9 +3777,8 @@ ice_adj_prof_priorities(struct ice_hw *hw, enum ice_block blk, u16 vsig,
 							       &t->tcam[i],
 							       chg);
 				if (status)
-					return status;
-			} else if (!test_bit(t->tcam[i].ptg, ptgs_used) &&
-				   !t->tcam[i].in_use) {
+					goto free_attr_used;
+			} else if (!used && !t->tcam[i].in_use) {
 				/* need to enable this PTG, as it in not in use
 				 * and not enabled (highest priority)
 				 */
@@ -3734,15 +3787,21 @@ ice_adj_prof_priorities(struct ice_hw *hw, enum ice_block blk, u16 vsig,
 							       &t->tcam[i],
 							       chg);
 				if (status)
-					return status;
+					goto free_attr_used;
 			}
 
 			/* keep track of used ptgs */
-			__set_bit(t->tcam[i].ptg, ptgs_used);
+			set_bit(t->tcam[i].ptg, ptgs_used);
+			if (attr_used_cnt < ICE_MAX_PTG_ATTRS)
+				attr_used[attr_used_cnt++] = &t->tcam[i];
+			else
+				ice_debug(hw, ICE_DBG_INIT, "Warn: ICE_MAX_PTG_ATTRS exceeded\n");
 		}
 	}
 
-	return 0;
+free_attr_used:
+	devm_kfree(ice_hw_to_dev(hw), attr_used);
+	return status;
 }
 
 /**
@@ -3825,11 +3884,15 @@ ice_add_prof_id_vsig(struct ice_hw *hw, enum ice_block blk, u16 vsig, u64 hdl,
 		p->vsig = vsig;
 		p->tcam_idx = t->tcam[i].tcam_idx;
 
+		/* set don't care masks for TCAM flags */
+		ice_set_tcam_flags(t->tcam[i].attr.mask, dc_msk);
+
 		/* write the TCAM entry */
 		status = ice_tcam_write_entry(hw, blk, t->tcam[i].tcam_idx,
 					      t->tcam[i].prof_id,
-					      t->tcam[i].ptg, vsig, 0, 0,
-					      vl_msk, dc_msk, nm_msk);
+					      t->tcam[i].ptg, vsig, 0,
+					      t->tcam[i].attr.flags, vl_msk,
+					      dc_msk, nm_msk);
 		if (status) {
 			devm_kfree(ice_hw_to_dev(hw), p);
 			goto err_ice_add_prof_id_vsig;
@@ -4143,9 +4206,6 @@ ice_flow_assoc_fdir_prof(struct ice_hw *hw, enum ice_block blk,
 	u16 vsi_num;
 	int status;
 
-	if (blk != ICE_BLK_FD)
-		return -EINVAL;
-
 	vsi_num = ice_get_hw_vsi_num(hw, dest_vsi);
 	status = ice_add_prof_id_flow(hw, blk, vsi_num, hdl);
 	if (status) {
@@ -4154,6 +4214,9 @@ ice_flow_assoc_fdir_prof(struct ice_hw *hw, enum ice_block blk,
 		return status;
 	}
 
+	if (blk != ICE_BLK_FD)
+		return 0;
+
 	vsi_num = ice_get_hw_vsi_num(hw, fdir_vsi);
 	status = ice_add_prof_id_flow(hw, blk, vsi_num, hdl);
 	if (status) {
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_type.h b/drivers/net/ethernet/intel/ice/ice_flex_type.h
index 817beca..80c9e7c 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_type.h
@@ -187,6 +187,7 @@ struct ice_prof_map {
 };
 
 #define ICE_INVALID_TCAM	0xFFFF
+#define ICE_MAX_PTG_ATTRS	1024
 
 struct ice_tcam_inf {
 	u16 tcam_idx;
-- 
2.47.1

