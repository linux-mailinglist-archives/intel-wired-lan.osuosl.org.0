Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1CEADE9EE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Jun 2025 13:29:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7EA34608DF;
	Wed, 18 Jun 2025 11:29:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GrhR0g7FPzFq; Wed, 18 Jun 2025 11:29:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 89DB0608E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750246184;
	bh=gUPPryoVoKfWUJVEWBfX/YuP+cR1AS44HbkQaAhiUVs=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ovcT9RSq+69QH7ZP70mqclYVxlZy4iadNBkhsSFrcvAJ4NjAUEDLycKLPsEDqd+to
	 iIzPDjG3YiB3oI5Kmj1srNM4nKICxubg9pRhWlHOB6LDNT97/AR0lZ3itz1FmmKiyH
	 C8tB9MOfgdwTsFTccsdQs5ZiucAGCJklUKjy/xCLRwIE8TCDF/J6DXlJdVhtdCL4hI
	 Y6xDpgqYRckL9O/js5zxhxHba8v10bjZ3xPZoSUyBzrObpz4GsoBOrE24gtwyh4MDK
	 HLIA3PeRFDhXmYwL0CuzhhAOuVr9s2ULYMPRosEx2Fk3TtTvhnyGG/Pnd20IF7FwEk
	 1UvvldqM9OlzQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 89DB0608E0;
	Wed, 18 Jun 2025 11:29:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 691B316B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 11:29:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6641E402D2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 11:29:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XqLxJusHDVyP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jun 2025 11:29:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9FBBA40104
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9FBBA40104
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9FBBA40104
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 11:29:42 +0000 (UTC)
X-CSE-ConnectionGUID: 0fUNDVDpQQ+2ik86rgPewA==
X-CSE-MsgGUID: 1uu1e+n6T7GO+GCZgobdPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11467"; a="56134030"
X-IronPort-AV: E=Sophos;i="6.16,245,1744095600"; d="scan'208";a="56134030"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 04:29:42 -0700
X-CSE-ConnectionGUID: I+0MIGRPSmu4IijiO6ZeJQ==
X-CSE-MsgGUID: uJcIeRu0SIC/ikCeaxdK5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,245,1744095600"; d="scan'208";a="150180274"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa010.fm.intel.com with ESMTP; 18 Jun 2025 04:29:38 -0700
Received: from pkitszel-desk.intel.com (unknown [10.245.244.24])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 18CAF33BF4;
 Wed, 18 Jun 2025 12:29:36 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Jesse Brandeburg <jbrandeburg@cloudflare.com>
Date: Wed, 18 Jun 2025 13:28:53 +0200
Message-ID: <20250618112925.12193-2-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750246183; x=1781782183;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cu8YFtFt+dOWghLgG5rgIaL2vYFfOICJPAScMWEk3m4=;
 b=KSz5yVpKon6ZMiHza6A/OR1YVV8aZO9EQEL4/gng1FrhjFJxeKktjcMv
 Zwj+wA1tfphG7CvK/omQ231VkeSl4N3MPJmkf7cgRpcG3kVUMlo00VATk
 DMXLRcDQ7EEbUqi6SeiMf+d7ccATN1fo1RanNligFg/hOCKkqBjdsEDZQ
 YcE8QNGgGClTTijGr/EEJ4rHl/Q2U2zeidmbu+t9iE+bZr/RrVtuEt5wK
 H8tEbGyaU+kFBiG/PDPUhrOSeVf20CuYmcWPr/jPhht6QXpslqwkPdwvE
 7xwOMx9tKcsm7f8ZGJX7LiOqC+e5ha0nmpGR4x1A7md0jey0daQVTYpOw
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KSz5yVpK
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: convert ice_add_prof() to
 bitmap
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

Previously the ice_add_prof() took an array of u8 and looped over it with
for_each_set_bit(), examining each 8 bit value as a bitmap.
This was just hard to understand and unnecessary, and was triggering
undefined behavior sanitizers with unaligned accesses within bitmap
fields (on our internal tools/builds). Since the @ptype being passed in
was already declared as a bitmap, refactor this to use native types with
the advantage of simplifying the code to use a single loop.

Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
CC: Jesse Brandeburg <jbrandeburg@cloudflare.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |  7 +-
 .../net/ethernet/intel/ice/ice_flex_pipe.c    | 78 +++++++------------
 drivers/net/ethernet/intel/ice/ice_flow.c     |  4 +-
 3 files changed, 34 insertions(+), 55 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
index 28b0897adf32..ee5d9f9c9d53 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
@@ -39,9 +39,10 @@ bool ice_hw_ptype_ena(struct ice_hw *hw, u16 ptype);
 
 /* XLT2/VSI group functions */
 int
-ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
-	     const struct ice_ptype_attributes *attr, u16 attr_cnt,
-	     struct ice_fv_word *es, u16 *masks, bool symm, bool fd_swap);
+ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id,
+	     unsigned long *ptypes, const struct ice_ptype_attributes *attr,
+	     u16 attr_cnt, struct ice_fv_word *es, u16 *masks, bool symm,
+	     bool fd_swap);
 struct ice_prof_map *
 ice_search_prof_id(struct ice_hw *hw, enum ice_block blk, u64 id);
 int
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index ed95072ca6e3..363ae79a3620 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -3043,16 +3043,16 @@ ice_disable_fd_swap(struct ice_hw *hw, u8 prof_id)
  * the ID value used here.
  */
 int
-ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
-	     const struct ice_ptype_attributes *attr, u16 attr_cnt,
-	     struct ice_fv_word *es, u16 *masks, bool symm, bool fd_swap)
+ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id,
+	     unsigned long *ptypes, const struct ice_ptype_attributes *attr,
+	     u16 attr_cnt, struct ice_fv_word *es, u16 *masks, bool symm,
+	     bool fd_swap)
 {
-	u32 bytes = DIV_ROUND_UP(ICE_FLOW_PTYPE_MAX, BITS_PER_BYTE);
 	DECLARE_BITMAP(ptgs_used, ICE_XLT1_CNT);
 	struct ice_prof_map *prof;
-	u8 byte = 0;
-	u8 prof_id;
 	int status;
+	u8 prof_id;
+	u16 ptype;
 
 	bitmap_zero(ptgs_used, ICE_XLT1_CNT);
 
@@ -3102,57 +3102,35 @@ ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 	prof->context = 0;
 
 	/* build list of ptgs */
-	while (bytes && prof->ptg_cnt < ICE_MAX_PTG_PER_PROFILE) {
-		u8 bit;
+	for_each_set_bit(ptype, ptypes, ICE_FLOW_PTYPE_MAX) {
+		u8 ptg;
 
-		if (!ptypes[byte]) {
-			bytes--;
-			byte++;
+		/* The package should place all ptypes in a non-zero
+		 * PTG, so the following call should never fail.
+		 */
+		if (ice_ptg_find_ptype(hw, blk, ptype, &ptg))
 			continue;
-		}
 
-		/* Examine 8 bits per byte */
-		for_each_set_bit(bit, (unsigned long *)&ptypes[byte],
-				 BITS_PER_BYTE) {
-			u16 ptype;
-			u8 ptg;
-
-			ptype = byte * BITS_PER_BYTE + bit;
-
-			/* The package should place all ptypes in a non-zero
-			 * PTG, so the following call should never fail.
-			 */
-			if (ice_ptg_find_ptype(hw, blk, ptype, &ptg))
-				continue;
+		/* If PTG is already added, skip and continue */
+		if (test_bit(ptg, ptgs_used))
+			continue;
 
-			/* If PTG is already added, skip and continue */
-			if (test_bit(ptg, ptgs_used))
-				continue;
+		set_bit(ptg, ptgs_used);
+		/* Check to see there are any attributes for this ptype, and
+		 * add them if found.
+		 */
+		status = ice_add_prof_attrib(prof, ptg, ptype, attr, attr_cnt);
+		if (status == -ENOSPC)
+			break;
+		if (status) {
+			/* This is simple a ptype/PTG with no attribute */
+			prof->ptg[prof->ptg_cnt] = ptg;
+			prof->attr[prof->ptg_cnt].flags = 0;
+			prof->attr[prof->ptg_cnt].mask = 0;
 
-			__set_bit(ptg, ptgs_used);
-			/* Check to see there are any attributes for
-			 * this PTYPE, and add them if found.
-			 */
-			status = ice_add_prof_attrib(prof, ptg, ptype,
-						     attr, attr_cnt);
-			if (status == -ENOSPC)
+			if (++prof->ptg_cnt >= ICE_MAX_PTG_PER_PROFILE)
 				break;
-			if (status) {
-				/* This is simple a PTYPE/PTG with no
-				 * attribute
-				 */
-				prof->ptg[prof->ptg_cnt] = ptg;
-				prof->attr[prof->ptg_cnt].flags = 0;
-				prof->attr[prof->ptg_cnt].mask = 0;
-
-				if (++prof->ptg_cnt >=
-				    ICE_MAX_PTG_PER_PROFILE)
-					break;
-			}
 		}
-
-		bytes--;
-		byte++;
 	}
 
 	list_add(&prof->list, &hw->blk[blk].es.prof_map);
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index d97b751052f2..c63e43b8b110 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -1421,7 +1421,7 @@ ice_flow_add_prof_sync(struct ice_hw *hw, enum ice_block blk,
 	}
 
 	/* Add a HW profile for this flow profile */
-	status = ice_add_prof(hw, blk, prof_id, (u8 *)params->ptypes,
+	status = ice_add_prof(hw, blk, prof_id, params->ptypes,
 			      params->attr, params->attr_cnt, params->es,
 			      params->mask, symm, true);
 	if (status) {
@@ -1617,7 +1617,7 @@ ice_flow_set_parser_prof(struct ice_hw *hw, u16 dest_vsi, u16 fdir_vsi,
 		break;
 	}
 
-	status = ice_add_prof(hw, blk, id, (u8 *)prof->ptypes,
+	status = ice_add_prof(hw, blk, id, prof->ptypes,
 			      params->attr, params->attr_cnt,
 			      params->es, params->mask, false, false);
 	if (status)
-- 
2.46.0

