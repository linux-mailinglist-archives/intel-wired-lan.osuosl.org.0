Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2F88CC75A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 May 2024 21:37:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D9418821D0;
	Wed, 22 May 2024 19:36:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E1QBJSOBJSDE; Wed, 22 May 2024 19:36:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D98D08219A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716406616;
	bh=R73H2GQmGpNOKQcQiqgLKUca5PBIBNIz2MGUEhKmOuU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dVhfnR8yiknovgCiHpUkuh6NGzKSag8HMu2zREhrTV1Ujs4MRfSe2YNQ/R0C8G4Dr
	 mEh35GRNgVOCrW9pQQ35n+uC0fqg0qOjjrhtORDFG4yhpr5rcVghEWmHSfEcp/qxsy
	 gMFEBND6yFJREu6cJgSFt8faTvrwmTDVtLojOG58Ml/ZB9kgN6oQamMB5htOXU/sWn
	 cuftGb0rFuFQRV3pPsN1FmgyKK3qqo2bZ+lBZ3SQnilIukN3wtf6RsWP62pOGybKgW
	 xYD/GNy2Mh/5CZx/B1jEqQqOnKblv0d6VX3iigJcv+TU009kS4qVg1zmLeSDcG9Yyi
	 BpKFL8syFW4AQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D98D08219A;
	Wed, 22 May 2024 19:36:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 712DF1C5EF9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2024 19:36:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5C058406C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2024 19:36:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XaLuVK0Cinel for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 May 2024 19:36:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1EB62406C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1EB62406C1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1EB62406C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2024 19:36:48 +0000 (UTC)
X-CSE-ConnectionGUID: CkwgxH0BQL2pdBpRZuNaJg==
X-CSE-MsgGUID: sgnZliLmRsisBgoIFVnRYQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="23256366"
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="23256366"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 12:36:47 -0700
X-CSE-ConnectionGUID: o7Hpv4KRQEGJmKsXbYTfew==
X-CSE-MsgGUID: 8hPm1w8+TSaU9J+V4IVqAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="33254185"
Received: from spandruv-desk1.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.109.214])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 12:36:45 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 May 2024 13:35:59 -0600
Message-ID: <20240522193602.164331-11-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240522193602.164331-1-ahmed.zaki@intel.com>
References: <20240522193602.164331-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716406608; x=1747942608;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lN3wLzf4okCMGHHwOt9N2cF+oD9A5jX5/0WbiHiZfDE=;
 b=L3Eo6sbXw0pq+JIkfOTjLOhJnjcJo3TPYoNS33XC1qAJR1LHak4Wnr8+
 W8r7vkXlC8MgD5aIA67OsoaxC4UiWwcHaZBa1AKD6zKRoGbXzFFAeD526
 3O7ofDkDlo1a26VhhFqwW/vMl0KGbbe4su61FR1+Ls2BQbHkxMb65GFTV
 tsT7oNvd4WS9T+S68To0l7plqINVwuD0UDhM3jQwA4zXaLzajf/FGLHeq
 IZ1c+VafHA6iyiUaOwEN8sx8ISo/gmBLGNQgLNAd7Y3VGXP1Tk6IiVmf3
 ckfkfhcgtRLrkk9HSKeXHmH/1hCHYAbzaVXFSk/3jvsiAm0TWzGctr+ad
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L3Eo6sbX
Subject: [Intel-wired-lan] [PATCH iwl-next 10/13] ice: add method to disable
 FDIR SWAP option
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
Cc: Marcin Szycik <marcin.szycik@linux.intel.com>,
 Junfeng Guo <junfeng.guo@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Junfeng Guo <junfeng.guo@intel.com>

The SWAP Flag in the FDIR Programming Descriptor doesn't work properly,
it is always set and cannot be unset (hardware bug). Thus, add a method
to effectively disable the FDIR SWAP option by setting the FDSWAP instead
of FDINSET registers.

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 .../net/ethernet/intel/ice/ice_flex_pipe.c    | 50 ++++++++++++++++++-
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |  4 +-
 drivers/net/ethernet/intel/ice/ice_flow.c     |  2 +-
 3 files changed, 52 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index 20d5db88c99f..99f420663e38 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -2981,6 +2981,49 @@ ice_add_prof_attrib(struct ice_prof_map *prof, u8 ptg, u16 ptype,
 }
 
 /**
+ * ice_disable_fd_swap - set register appropriately to disable FD swap
+ * @hw: pointer to the HW struct
+ * @prof_id: profile ID
+ */
+static void
+ice_disable_fd_swap(struct ice_hw *hw, u8 prof_id)
+{
+	u16 swap_val, i, fvw_num;
+
+	swap_val = ICE_SWAP_VALID;
+	fvw_num = hw->blk[ICE_BLK_FD].es.fvw / ICE_FDIR_REG_SET_SIZE;
+
+	/* Since the SWAP Flag in the Programming Desc doesn't work,
+	 * here add method to disable the SWAP Option via setting
+	 * certain SWAP and INSET register sets.
+	 */
+	for (i = 0; i < fvw_num ; i++) {
+		u32 raw_swap, raw_in;
+		u8 j;
+
+		raw_swap = 0;
+		raw_in = 0;
+
+		for (j = 0; j < ICE_FDIR_REG_SET_SIZE; j++) {
+			raw_swap |= (swap_val++) << (j * BITS_PER_BYTE);
+			raw_in |= ICE_INSET_DFLT << (j * BITS_PER_BYTE);
+		}
+
+		/* write the FDIR swap register set */
+		wr32(hw, GLQF_FDSWAP(prof_id, i), raw_swap);
+
+		ice_debug(hw, ICE_DBG_INIT, "swap wr(%d, %d): 0x%x = 0x%08x\n",
+			  prof_id, i, GLQF_FDSWAP(prof_id, i), raw_swap);
+
+		/* write the FDIR inset register set */
+		wr32(hw, GLQF_FDINSET(prof_id, i), raw_in);
+
+		ice_debug(hw, ICE_DBG_INIT, "inset wr(%d, %d): 0x%x = 0x%08x\n",
+			  prof_id, i, GLQF_FDINSET(prof_id, i), raw_in);
+	}
+}
+
+/*
  * ice_add_prof - add profile
  * @hw: pointer to the HW struct
  * @blk: hardware block
@@ -2991,6 +3034,7 @@ ice_add_prof_attrib(struct ice_prof_map *prof, u8 ptg, u16 ptype,
  * @es: extraction sequence (length of array is determined by the block)
  * @masks: mask for extraction sequence
  * @symm: symmetric setting for RSS profiles
+ * @fd_swap: enable/disable FDIR paired src/dst fields swap option
  *
  * This function registers a profile, which matches a set of PTYPES with a
  * particular extraction sequence. While the hardware profile is allocated
@@ -3000,7 +3044,7 @@ ice_add_prof_attrib(struct ice_prof_map *prof, u8 ptg, u16 ptype,
 int
 ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 	     const struct ice_ptype_attributes *attr, u16 attr_cnt,
-	     struct ice_fv_word *es, u16 *masks, bool symm)
+	     struct ice_fv_word *es, u16 *masks, bool symm, bool fd_swap)
 {
 	u32 bytes = DIV_ROUND_UP(ICE_FLOW_PTYPE_MAX, BITS_PER_BYTE);
 	DECLARE_BITMAP(ptgs_used, ICE_XLT1_CNT);
@@ -3020,7 +3064,7 @@ ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 		status = ice_alloc_prof_id(hw, blk, &prof_id);
 		if (status)
 			goto err_ice_add_prof;
-		if (blk == ICE_BLK_FD) {
+		if (blk == ICE_BLK_FD && fd_swap) {
 			/* For Flow Director block, the extraction sequence may
 			 * need to be altered in the case where there are paired
 			 * fields that have no match. This is necessary because
@@ -3031,6 +3075,8 @@ ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 			status = ice_update_fd_swap(hw, prof_id, es);
 			if (status)
 				goto err_ice_add_prof;
+		} else if (blk == ICE_BLK_FD) {
+			ice_disable_fd_swap(hw, prof_id);
 		}
 		status = ice_update_prof_masking(hw, blk, prof_id, masks);
 		if (status)
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
index b39d7cdc381f..7c66652dadd6 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
@@ -6,6 +6,8 @@
 
 #include "ice_type.h"
 
+#define ICE_FDIR_REG_SET_SIZE	4
+
 int
 ice_acquire_change_lock(struct ice_hw *hw, enum ice_aq_res_access_type access);
 void ice_release_change_lock(struct ice_hw *hw);
@@ -42,7 +44,7 @@ bool ice_hw_ptype_ena(struct ice_hw *hw, u16 ptype);
 int
 ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 	     const struct ice_ptype_attributes *attr, u16 attr_cnt,
-	     struct ice_fv_word *es, u16 *masks, bool symm);
+	     struct ice_fv_word *es, u16 *masks, bool symm, bool fd_swap);
 struct ice_prof_map *
 ice_search_prof_id(struct ice_hw *hw, enum ice_block blk, u64 id);
 int
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index fc2b58f56279..79106503194b 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -1400,7 +1400,7 @@ ice_flow_add_prof_sync(struct ice_hw *hw, enum ice_block blk,
 	/* Add a HW profile for this flow profile */
 	status = ice_add_prof(hw, blk, prof_id, (u8 *)params->ptypes,
 			      params->attr, params->attr_cnt, params->es,
-			      params->mask, symm);
+			      params->mask, symm, true);
 	if (status) {
 		ice_debug(hw, ICE_DBG_FLOW, "Error adding a HW flow profile\n");
 		goto out;
-- 
2.43.0

