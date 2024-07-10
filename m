Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2BF92DA47
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jul 2024 22:41:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE92F83F0B;
	Wed, 10 Jul 2024 20:41:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UA8-7ca2pd46; Wed, 10 Jul 2024 20:41:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A6E0483B29
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720644077;
	bh=9A6EOUFalpK4gkSjLXkHYfXVnEuTWsZ/nbMOy7G2TgA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=p46p85IM3hh9T0/f5Cxh3ibMTf7mEu+GsqV8nHhHw470rZS2znWuAXl3eDzSyX9wc
	 QBPiVuZkEuXNc1fq8lk4FzYyYzQ2pes6nZcyBUFN6dohCZ7Ru+abUxZWAVwI5NyOPm
	 qxZ+SsLKfh4pAJe68f0e7HOTS8V6A76NP0tPExHR0m6JLXIcczl1qq7YjQwJGPL3lm
	 w5TcDoh/D8Ysl94WS31xi7oxvv0amMUQm2gHMwUWS20Pk+w1JWYqSWfC4ZM4tAbCcA
	 LvioyJpX+K7SbpNtJq6WKMnIfgSuPSg+g56rdD3HKEBICZhuPLVsSyNObZ30j9g9ls
	 7TvKHOm/Xp4/A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A6E0483B29;
	Wed, 10 Jul 2024 20:41:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BC49D1BF573
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 20:41:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B64AE408BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 20:41:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5GPDAOLIpR6B for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jul 2024 20:41:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3807640248
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3807640248
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3807640248
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 20:41:13 +0000 (UTC)
X-CSE-ConnectionGUID: tI4CN81/QAWMhDeuPy5t3w==
X-CSE-MsgGUID: yzSSfnnRQuCAUA674pE21g==
X-IronPort-AV: E=McAfee;i="6700,10204,11129"; a="29153359"
X-IronPort-AV: E=Sophos;i="6.09,198,1716274800"; d="scan'208";a="29153359"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 13:41:13 -0700
X-CSE-ConnectionGUID: njXWuAutRRyau2cZ/a8cIA==
X-CSE-MsgGUID: VcnkWHZWQRyiql1NKg22Ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,198,1716274800"; d="scan'208";a="48301257"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.245.246.184])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 13:41:09 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 10 Jul 2024 14:40:12 -0600
Message-ID: <20240710204015.124233-11-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240710204015.124233-1-ahmed.zaki@intel.com>
References: <20240710204015.124233-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720644074; x=1752180074;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+i7LZdwBiLNMB20/NiQHCgBAEVJ6YvPiQ8oLkpZzrnk=;
 b=MZ7IADmE8p4w9Bc0/gzFBaPZeyNJ7gyheC8TKiJ1hD7v8xfIVa1jXQX2
 JPa57w8MjTS70Qv0wnTjrn/Ve4LriwVTm7KSygmRyBTv3P/n0ilhdZ2ET
 Td594xGZC/FDyvDKAyfiKmiNZqRr5M9h8/p5iwUs4B8KOT3zQU41rXdZ+
 K3NeVGyjLa5pZnslO+x8/ZZIA/Akh2OdjUUsL++1j6hnoYb9WvWpu40Gv
 BI561ezqU7ApHLZW2FEeTZ87cgsgGFFxT1/MEGUmGWKh4/jd8yTwaehKt
 DsZqFI393KfNzOY51jMHCaw0mWVSDxM6E5KBqXMRQzkF8ykEyG0VRoHEi
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MZ7IADmE
Subject: [Intel-wired-lan] [PATCH iwl-next v3 10/13] ice: add method to
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
Cc: netdev@vger.kernel.org, Ahmed Zaki <ahmed.zaki@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>, anthony.l.nguyen@intel.com,
 horms@kernel.org, Junfeng Guo <junfeng.guo@intel.com>
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
 .../net/ethernet/intel/ice/ice_flex_pipe.c    | 52 ++++++++++++++++++-
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |  4 +-
 drivers/net/ethernet/intel/ice/ice_flow.c     |  2 +-
 3 files changed, 54 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index 20d5db88c99f..a750d7e1edd8 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -2981,6 +2981,51 @@ ice_add_prof_attrib(struct ice_prof_map *prof, u8 ptg, u16 ptype,
 }
 
 /**
+ * ice_disable_fd_swap - set register appropriately to disable FD swap
+ * @hw: pointer to the HW struct
+ * @prof_id: profile ID
+ *
+ * Return: Void.
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
@@ -2991,6 +3036,7 @@ ice_add_prof_attrib(struct ice_prof_map *prof, u8 ptg, u16 ptype,
  * @es: extraction sequence (length of array is determined by the block)
  * @masks: mask for extraction sequence
  * @symm: symmetric setting for RSS profiles
+ * @fd_swap: enable/disable FDIR paired src/dst fields swap option
  *
  * This function registers a profile, which matches a set of PTYPES with a
  * particular extraction sequence. While the hardware profile is allocated
@@ -3000,7 +3046,7 @@ ice_add_prof_attrib(struct ice_prof_map *prof, u8 ptg, u16 ptype,
 int
 ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 	     const struct ice_ptype_attributes *attr, u16 attr_cnt,
-	     struct ice_fv_word *es, u16 *masks, bool symm)
+	     struct ice_fv_word *es, u16 *masks, bool symm, bool fd_swap)
 {
 	u32 bytes = DIV_ROUND_UP(ICE_FLOW_PTYPE_MAX, BITS_PER_BYTE);
 	DECLARE_BITMAP(ptgs_used, ICE_XLT1_CNT);
@@ -3020,7 +3066,7 @@ ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 		status = ice_alloc_prof_id(hw, blk, &prof_id);
 		if (status)
 			goto err_ice_add_prof;
-		if (blk == ICE_BLK_FD) {
+		if (blk == ICE_BLK_FD && fd_swap) {
 			/* For Flow Director block, the extraction sequence may
 			 * need to be altered in the case where there are paired
 			 * fields that have no match. This is necessary because
@@ -3031,6 +3077,8 @@ ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
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

