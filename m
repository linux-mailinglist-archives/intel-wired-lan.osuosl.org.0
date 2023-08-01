Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9F6F76B3C4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 13:49:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 590354035D;
	Tue,  1 Aug 2023 11:49:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 590354035D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690890579;
	bh=E7UI2GJWdIllZNEtW3z6u4Bu+fzLo0Saarbuu432obI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0nArT7eLYiBOoWLjaR+mEhZzVBnmCYXRh6q5xmz5n42kuTT1D7mhUoqlPPZ/GUSIu
	 zVztD42MKY3h9LkTEOKJUbByctZ3Rl23gXKP0iin5X/wNP87AihBzjEd+vTXL7PPbj
	 ogVHAQ6SDJXNeLSrMZOnn8pNFNs071Ff35eawzCQIHmCpDLYnc4Xu0JrZJ+MrYB4EL
	 xqj5/SH6dzDvnjnyZ83h7+li5q15bBs8yJfxUyEATgwEGweAWM32nsEp3w7YI9k2hf
	 5oTJe5USGhPcDi7hl++Bco8PqqQ9o8/BfeH9u8Dvn34iyySHe1pj5mmLL2w0Xqe3cV
	 P7BZ0j8zNI6zQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EcjqQEQRAYom; Tue,  1 Aug 2023 11:49:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DD9724011A;
	Tue,  1 Aug 2023 11:49:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DD9724011A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1F0A81BF290
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 11:49:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C6E0440201
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 11:49:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C6E0440201
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1-y4J4AzU6S2 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 11:49:23 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DC64E4011A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 11:49:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DC64E4011A
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="433112512"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="433112512"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 04:49:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="902528643"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="902528643"
Received: from s240.igk.intel.com (HELO DevelopmentVM.nql.local)
 ([10.102.18.202])
 by orsmga005.jf.intel.com with ESMTP; 01 Aug 2023 04:49:21 -0700
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  1 Aug 2023 13:53:05 +0200
Message-Id: <20230801115309.697331-3-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230801115309.697331-1-jan.sokolowski@intel.com>
References: <20230801115309.697331-1-jan.sokolowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690890562; x=1722426562;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Zu4Xg9JmJxsR5wLiPI+FxUts+Hcbyz15HLymGwvdwXY=;
 b=eh1yvTieyLquW2mZx/2K0TpZpcVWl5j72xy/uMOwFgmCLcztt+BR39Ya
 Y/lClctxNkb8Xae5BYmEbeNTq6w/RWmc9J1c+J3eUcbMuZuz6kO9a8Th8
 0LYMjjwGLME84xAqdj7MxE7/bEeG7YYsSYaSqBU4s8FgG6uLSicRNypxB
 C0y83kmtYcuStH6JXTntM9k+atlGW36cpzVgJXL6Ax7TBTYWcZ1WMhYio
 tfHHDrZAEYOIegq3FlNjBEMoaSlBmaHMuD/7LAvsu+GYz8EyrZcVosiXo
 hstyqobZt+lplYzLF0S9mdKVnFJ2HIkpiO9gU2S4clcZzhktpHESq3FZp
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eh1yvTie
Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/6] ice: refactor ice_ddp to
 make functions static
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

Refactor ice_ddp.c/h in order to make as many methods
as possible static.

Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ddp.c | 117 ++++++++++++-----------
 drivers/net/ethernet/intel/ice/ice_ddp.h |  10 --
 2 files changed, 59 insertions(+), 68 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
index d71ed210f9c4..c43ac8c87a1d 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
@@ -30,7 +30,7 @@ static const struct ice_tunnel_type_scan tnls[] = {
  * Verifies various attributes of the package file, including length, format
  * version, and the requirement of at least one segment.
  */
-enum ice_ddp_state ice_verify_pkg(struct ice_pkg_hdr *pkg, u32 len)
+static enum ice_ddp_state ice_verify_pkg(struct ice_pkg_hdr *pkg, u32 len)
 {
 	u32 seg_count;
 	u32 i;
@@ -118,7 +118,7 @@ static enum ice_ddp_state ice_chk_pkg_version(struct ice_pkg_ver *pkg_ver)
  *
  * This helper function validates a buffer's header.
  */
-struct ice_buf_hdr *ice_pkg_val_buf(struct ice_buf *buf)
+static struct ice_buf_hdr *ice_pkg_val_buf(struct ice_buf *buf)
 {
 	struct ice_buf_hdr *hdr;
 	u16 section_count;
@@ -1152,6 +1152,54 @@ static void ice_release_global_cfg_lock(struct ice_hw *hw)
 	ice_release_res(hw, ICE_GLOBAL_CFG_LOCK_RES_ID);
 }
 
+/**
+ * ice_aq_download_pkg
+ * @hw: pointer to the hardware structure
+ * @pkg_buf: the package buffer to transfer
+ * @buf_size: the size of the package buffer
+ * @last_buf: last buffer indicator
+ * @error_offset: returns error offset
+ * @error_info: returns error information
+ * @cd: pointer to command details structure or NULL
+ *
+ * Download Package (0x0C40)
+ */
+static int
+ice_aq_download_pkg(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
+		    u16 buf_size, bool last_buf, u32 *error_offset,
+		    u32 *error_info, struct ice_sq_cd *cd)
+{
+	struct ice_aqc_download_pkg *cmd;
+	struct ice_aq_desc desc;
+	int status;
+
+	if (error_offset)
+		*error_offset = 0;
+	if (error_info)
+		*error_info = 0;
+
+	cmd = &desc.params.download_pkg;
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_download_pkg);
+	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+
+	if (last_buf)
+		cmd->flags |= ICE_AQC_DOWNLOAD_PKG_LAST_BUF;
+
+	status = ice_aq_send_cmd(hw, &desc, pkg_buf, buf_size, cd);
+	if (status == -EIO) {
+		/* Read error from buffer only when the FW returned an error */
+		struct ice_aqc_download_pkg_resp *resp;
+
+		resp = (struct ice_aqc_download_pkg_resp *)pkg_buf;
+		if (error_offset)
+			*error_offset = le32_to_cpu(resp->error_offset);
+		if (error_info)
+			*error_info = le32_to_cpu(resp->error_info);
+	}
+
+	return status;
+}
+
 /**
  * ice_dwnld_cfg_bufs
  * @hw: pointer to the hardware structure
@@ -1294,20 +1342,20 @@ static enum ice_ddp_state ice_download_pkg(struct ice_hw *hw,
 }
 
 /**
- * ice_aq_download_pkg
+ * ice_aq_update_pkg
  * @hw: pointer to the hardware structure
- * @pkg_buf: the package buffer to transfer
- * @buf_size: the size of the package buffer
+ * @pkg_buf: the package cmd buffer
+ * @buf_size: the size of the package cmd buffer
  * @last_buf: last buffer indicator
  * @error_offset: returns error offset
  * @error_info: returns error information
  * @cd: pointer to command details structure or NULL
  *
- * Download Package (0x0C40)
+ * Update Package (0x0C42)
  */
-int ice_aq_download_pkg(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
-			u16 buf_size, bool last_buf, u32 *error_offset,
-			u32 *error_info, struct ice_sq_cd *cd)
+static int ice_aq_update_pkg(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
+			     u16 buf_size, bool last_buf, u32 *error_offset,
+			     u32 *error_info, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_download_pkg *cmd;
 	struct ice_aq_desc desc;
@@ -1319,7 +1367,7 @@ int ice_aq_download_pkg(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
 		*error_info = 0;
 
 	cmd = &desc.params.download_pkg;
-	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_download_pkg);
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_update_pkg);
 	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
 
 	if (last_buf)
@@ -1360,53 +1408,6 @@ int ice_aq_upload_section(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
 	return ice_aq_send_cmd(hw, &desc, pkg_buf, buf_size, cd);
 }
 
-/**
- * ice_aq_update_pkg
- * @hw: pointer to the hardware structure
- * @pkg_buf: the package cmd buffer
- * @buf_size: the size of the package cmd buffer
- * @last_buf: last buffer indicator
- * @error_offset: returns error offset
- * @error_info: returns error information
- * @cd: pointer to command details structure or NULL
- *
- * Update Package (0x0C42)
- */
-static int ice_aq_update_pkg(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
-			     u16 buf_size, bool last_buf, u32 *error_offset,
-			     u32 *error_info, struct ice_sq_cd *cd)
-{
-	struct ice_aqc_download_pkg *cmd;
-	struct ice_aq_desc desc;
-	int status;
-
-	if (error_offset)
-		*error_offset = 0;
-	if (error_info)
-		*error_info = 0;
-
-	cmd = &desc.params.download_pkg;
-	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_update_pkg);
-	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
-
-	if (last_buf)
-		cmd->flags |= ICE_AQC_DOWNLOAD_PKG_LAST_BUF;
-
-	status = ice_aq_send_cmd(hw, &desc, pkg_buf, buf_size, cd);
-	if (status == -EIO) {
-		/* Read error from buffer only when the FW returned an error */
-		struct ice_aqc_download_pkg_resp *resp;
-
-		resp = (struct ice_aqc_download_pkg_resp *)pkg_buf;
-		if (error_offset)
-			*error_offset = le32_to_cpu(resp->error_offset);
-		if (error_info)
-			*error_info = le32_to_cpu(resp->error_info);
-	}
-
-	return status;
-}
-
 /**
  * ice_update_pkg_no_lock
  * @hw: pointer to the hardware structure
@@ -1460,7 +1461,7 @@ int ice_update_pkg(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
 	return status;
 }
 
-/**
+/*
  * ice_find_seg_in_pkg
  * @hw: pointer to the hardware structure
  * @seg_type: the segment type to search for (i.e., SEGMENT_TYPE_CPK)
diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.h b/drivers/net/ethernet/intel/ice/ice_ddp.h
index 41acfe26df1c..abb5f32f2ef4 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.h
@@ -416,21 +416,13 @@ struct ice_pkg_enum {
 	void *(*handler)(u32 sect_type, void *section, u32 index, u32 *offset);
 };
 
-int ice_aq_download_pkg(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
-			u16 buf_size, bool last_buf, u32 *error_offset,
-			u32 *error_info, struct ice_sq_cd *cd);
 int ice_aq_upload_section(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
 			  u16 buf_size, struct ice_sq_cd *cd);
 
 void *ice_pkg_buf_alloc_section(struct ice_buf_build *bld, u32 type, u16 size);
 
-enum ice_ddp_state ice_verify_pkg(struct ice_pkg_hdr *pkg, u32 len);
-
 struct ice_buf_build *ice_pkg_buf_alloc(struct ice_hw *hw);
 
-struct ice_generic_seg_hdr *ice_find_seg_in_pkg(struct ice_hw *hw, u32 seg_type,
-						struct ice_pkg_hdr *pkg_hdr);
-
 int ice_update_pkg_no_lock(struct ice_hw *hw, struct ice_buf *bufs, u32 count);
 int ice_update_pkg(struct ice_hw *hw, struct ice_buf *bufs, u32 count);
 
@@ -439,6 +431,4 @@ u16 ice_pkg_buf_get_active_sections(struct ice_buf_build *bld);
 void *ice_pkg_enum_section(struct ice_seg *ice_seg, struct ice_pkg_enum *state,
 			   u32 sect_type);
 
-struct ice_buf_hdr *ice_pkg_val_buf(struct ice_buf *buf);
-
 #endif
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
