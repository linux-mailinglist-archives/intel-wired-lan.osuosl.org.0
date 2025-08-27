Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 42115B389D8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Aug 2025 20:53:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E233740EDF;
	Wed, 27 Aug 2025 18:53:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IyVTjwpQvfA0; Wed, 27 Aug 2025 18:53:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F204140EE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756320832;
	bh=8zDSd5VDRn07YYZ70FGLUlnM/wQu+b1qep3/i6fX9/s=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vqVUDILsaqk09bI5og/UIMC5awIvmVE2TTe6Nzd4MxG8B5cRdjWgC254jCy+Lw2qI
	 ofte4HzmAzhxDLLPOHTkreGmQfEiP/AhnywfvCAfompcGTx8HU2yg7u1fZyjnpd8p+
	 bGnaui7hBOmxcVolj8su285i2NfxqDVSlUzNop/HfMVqhXnnm1AiiFYBmjSh0FBuPn
	 7wCFuNl6IzDZejGvhPvGx/p7/hHvFiVGHJBVCPLGuCFE5C7VeMnR6gPyIuQ/7dAaKV
	 17PaDtavhcG+akQuHuacyiGHZGc7mdN+QmHEeOdyJX/1pSGwI7GhRqV3ST22IW29h0
	 BsDWB9wiuPQeg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F204140EE2;
	Wed, 27 Aug 2025 18:53:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 204DF114
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 18:53:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 12AFD61102
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 18:53:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hm1f0FZJexZJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Aug 2025 18:53:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 489E961111
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 489E961111
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 489E961111
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 18:53:47 +0000 (UTC)
X-CSE-ConnectionGUID: FPvvZbr0SG+wqTGJzf43LQ==
X-CSE-MsgGUID: crg4gAOuRCGIm0ddiszkHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="58677626"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="58677626"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 11:53:47 -0700
X-CSE-ConnectionGUID: jM9FYu5oSpSGO1rAvN/wPg==
X-CSE-MsgGUID: b2A3w3XrQueqr71rO7gw6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="169846106"
Received: from unknown (HELO amlin-019-225.igk.intel.com) ([10.102.19.225])
 by fmviesa006.fm.intel.com with ESMTP; 27 Aug 2025 11:53:45 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Wed, 27 Aug 2025 18:53:36 +0000
Message-ID: <20250827185338.1943489-4-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250827185338.1943489-1-aleksandr.loktionov@intel.com>
References: <20250827185338.1943489-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756320827; x=1787856827;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4U7tcKxyFVD9kIHNjQVnRzjZECz80gqZCXTPB4y62x4=;
 b=grQW/z3BLpRpKx62DUnpDYkpu0L6xr4lRNcrx0e+O11D0CyJQrUI7SK4
 D4TcRVmqDzDmlmPxX+C0MGie6XQHHoy7uH2G2rKReE8FtRfp3BQtl1L4A
 H1Rr0SpYTo2lP7eRZWw7UMd8OFfBFAqWGrw8K7MpgNOHJ7KgxKVW9Ou86
 0fHXDjxcSrfvyWSMaltNZGByWUMqAuKFGXD1gFt85teGkFDkwoSwVZOKp
 gxd1mU6zW8zjEv8x3cr/7K9rHmjPlYPBLvmKf2fBOa0Hj/0DQ5hf5eVAG
 m9iajQaIYN6PbRFDNyFkCZQ1XnilXv6w+JdjHdMNXkzPmeEyQr2t3ZtQL
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=grQW/z3B
Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/5] ice: improve TCAM
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

