Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 329237805F3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Aug 2023 08:47:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C1B914103C;
	Fri, 18 Aug 2023 06:47:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C1B914103C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692341246;
	bh=1A+4J3+WC6UmBdDfL3JPlOz7t8lE/8CUpWQ4jbrCWaY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=V3mR7l5DF0yKgJbK43033O1HY9O/CGJCokAhSgDUyrdgpuuBz9jqzf2xMBEqUjsW5
	 UTCDLIuQqMBtAgW07AakcJTMIWd9/b6we2cjm2rJa7I86py+CtEQedOL2dYzfBr70j
	 ibEYSd2bZ0qZWajOlOVNjC0WpW8qVbN5EX6OOXrYtpBXwYMYDSlFpoUVHAAv9z0pD/
	 ieyelPGbU7DzZ/TbS/nFvjIMiQh8vARSI60X9c2c2kysQUyr2XV175dS6F24Uf4lLe
	 Bn3GkHjM54WA3oe2uieKjSLmjtBoW6kJ9GnxYEFTnjGVNjR5Y0TgE0B2rXzIv063En
	 DusNuoBEAMlKQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N0ome1UnPNUq; Fri, 18 Aug 2023 06:47:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6ECFE402C3;
	Fri, 18 Aug 2023 06:47:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6ECFE402C3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 906751BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 06:47:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8C90840490
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 06:47:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C90840490
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jQRPIORZz8Y4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Aug 2023 06:47:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C016D402C3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 06:47:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C016D402C3
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="439408361"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="439408361"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 23:47:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="824997420"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="824997420"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.19])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Aug 2023 23:47:10 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 18 Aug 2023 14:47:02 +0800
Message-Id: <20230818064703.154183-3-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230818064703.154183-1-junfeng.guo@intel.com>
References: <20230605024453.2378898-1-junfeng.guo@intel.com>
 <20230818064703.154183-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692341232; x=1723877232;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gzoe/b+2YGj6WQIPeJrq55VYHTk61yxwVURz3WxTG/k=;
 b=Ft4I2tZCeBrzZWvcMu8MnqQhdmLS37cefCdA513sGG7XXTotrUO6Q7+P
 AUiRTZOHdLMy4AsaqyAaP56Mo8UMTSSwo1InaynVtHZFAz9hiOhUs2O7d
 tZoD185WCKlzFALhw7NZVIJ+yfBYB7ZJycdvd0F99gGGUEZuf9Hh5gLgX
 0zATfg7b3Zti4eo8MTLeaDX8i2WvUsx4P0LgzMaSS47TePJSXZsXGnUpw
 ncxJx1r6OMcCsCdDDM48Zo1Vb5OnTuXMb1/3+H0ZYLvR6gyuebHv+U1rF
 vKGFEgAvpCjBPJrybgataWCB/LRxV8A4M8xdS5Oe3gEunkPR+qWWZkeK1
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ft4I2tZC
Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/3] ice: add method to
 disable FDIR SWAP option
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
Cc: ivecera@redhat.com, qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The SWAP Flag in the FDIR Programming Descriptor doesn't work, thus
add a method to disable the FDIR SWAP option by setting the swap and
inset register set with certain values. The boolean fd_swap is used
to enable/disable the SWAP option.

Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 .../net/ethernet/intel/ice/ice_flex_pipe.c    | 50 ++++++++++++++++++-
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |  4 +-
 drivers/net/ethernet/intel/ice/ice_flow.c     |  2 +-
 3 files changed, 52 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index 5ce413965930..70d3fd7186e1 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -2954,6 +2954,49 @@ ice_add_prof_attrib(struct ice_prof_map *prof, u8 ptg, u16 ptype,
 }
 
 /**
+ * ice_disable_fd_swap - set register appropriately to disable FD swap
+ * @hw: pointer to the HW struct
+ * @prof_id: profile ID
+ */
+static void
+ice_disable_fd_swap(struct ice_hw *hw, u16 prof_id)
+{
+	u8 swap_val, i;
+
+	swap_val = ICE_SWAP_VALID;
+
+	/* Since the SWAP Flag in the Programming Desc doesn't work,
+	 * here add method to disable the SWAP Option via setting
+	 * certain SWAP and INSET register sets.
+	 */
+	for (i = 0;
+	     i < hw->blk[ICE_BLK_FD].es.fvw / ICE_FDIR_REG_SET_SIZE; i++) {
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
+		ice_debug(hw, ICE_DBG_INIT, "swap wr(%d, %d): %x = %08x\n",
+			  prof_id, i, GLQF_FDSWAP(prof_id, i), raw_swap);
+
+		/* write the FDIR inset register set */
+		wr32(hw, GLQF_FDINSET(prof_id, i), raw_in);
+
+		ice_debug(hw, ICE_DBG_INIT, "inset wr(%d, %d): %x = %08x\n",
+			  prof_id, i, GLQF_FDINSET(prof_id, i), raw_in);
+	}
+}
+
+/*
  * ice_add_prof - add profile
  * @hw: pointer to the HW struct
  * @blk: hardware block
@@ -2963,6 +3006,7 @@ ice_add_prof_attrib(struct ice_prof_map *prof, u8 ptg, u16 ptype,
  * @attr_cnt: number of elements in attr array
  * @es: extraction sequence (length of array is determined by the block)
  * @masks: mask for extraction sequence
+ * @fd_swap: enable/disable FDIR paired src/dst fields swap option
  *
  * This function registers a profile, which matches a set of PTYPES with a
  * particular extraction sequence. While the hardware profile is allocated
@@ -2972,7 +3016,7 @@ ice_add_prof_attrib(struct ice_prof_map *prof, u8 ptg, u16 ptype,
 int
 ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 	     const struct ice_ptype_attributes *attr, u16 attr_cnt,
-	     struct ice_fv_word *es, u16 *masks)
+	     struct ice_fv_word *es, u16 *masks, bool fd_swap)
 {
 	u32 bytes = DIV_ROUND_UP(ICE_FLOW_PTYPE_MAX, BITS_PER_BYTE);
 	DECLARE_BITMAP(ptgs_used, ICE_XLT1_CNT);
@@ -2992,7 +3036,7 @@ ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 		status = ice_alloc_prof_id(hw, blk, &prof_id);
 		if (status)
 			goto err_ice_add_prof;
-		if (blk == ICE_BLK_FD) {
+		if (blk == ICE_BLK_FD && fd_swap) {
 			/* For Flow Director block, the extraction sequence may
 			 * need to be altered in the case where there are paired
 			 * fields that have no match. This is necessary because
@@ -3003,6 +3047,8 @@ ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 			status = ice_update_fd_swap(hw, prof_id, es);
 			if (status)
 				goto err_ice_add_prof;
+		} else if (blk == ICE_BLK_FD) {
+			ice_disable_fd_swap(hw, prof_id);
 		}
 		status = ice_update_prof_masking(hw, blk, prof_id, masks);
 		if (status)
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
index 7af7c8e9aa4e..fa0a03a176dd 100644
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
-	     struct ice_fv_word *es, u16 *masks);
+	     struct ice_fv_word *es, u16 *masks, bool fd_swap);
 int
 ice_add_prof_id_flow(struct ice_hw *hw, enum ice_block blk, u16 vsi, u64 hdl);
 int
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index ef103e47a8dc..ff7740df28c4 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -1402,7 +1402,7 @@ ice_flow_add_prof_sync(struct ice_hw *hw, enum ice_block blk,
 	/* Add a HW profile for this flow profile */
 	status = ice_add_prof(hw, blk, prof_id, (u8 *)params->ptypes,
 			      params->attr, params->attr_cnt, params->es,
-			      params->mask);
+			      params->mask, true);
 	if (status) {
 		ice_debug(hw, ICE_DBG_FLOW, "Error adding a HW flow profile\n");
 		goto out;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
