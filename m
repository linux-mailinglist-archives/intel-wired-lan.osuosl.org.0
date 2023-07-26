Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE023762EE2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jul 2023 09:56:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 952334051A;
	Wed, 26 Jul 2023 07:56:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 952334051A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690358203;
	bh=9OOqf8g3Mhp+PqSc71idfi+EVCxREHANEoCrMGtg4sU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=c1sf8Bb0Yky0Aa+/hOKc6Mb2WBUtADcLoNhvpxhRdKguhlqpc/0w7xQAdGLJKyIVc
	 QLWqfSfE29v8YwRIYCcSNX2Xl2zYEa7tipjX92wJbBPK3FEtUWGlddZBABzSqcz6PO
	 qr5J8fq90+m2+B/kjybpWMSrFUFO9JVL/YylzbFZMpVeuqAQYTyxgUA3M7gT1MEm7a
	 d5Jbt0OgTFxOmwlhoSApXdYE8XHcVM4ZWfk0dglzDUCLrmLDkSkcy45SPHeExVKE+M
	 ITFJV2SHt8e5seSk/4/F3ocghmbdEQN7AAF4PTHhAN1Qr32wCYnU3PWmRYFLO5wIrl
	 rPpIWfrELO7yA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HFLTcd5X90c9; Wed, 26 Jul 2023 07:56:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 60D74405C5;
	Wed, 26 Jul 2023 07:56:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 60D74405C5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AB1541BF592
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 07:56:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 82EE741B66
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 07:56:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82EE741B66
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R23Oa3EA96e0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jul 2023 07:56:28 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 26 Jul 2023 07:56:28 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 823FF40936
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 823FF40936
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 07:56:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="371554983"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="371554983"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 00:49:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="720364437"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="720364437"
Received: from s240.igk.intel.com (HELO DevelopmentVM.nql.local)
 ([10.102.18.202])
 by orsmga007.jf.intel.com with ESMTP; 26 Jul 2023 00:49:19 -0700
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 26 Jul 2023 09:53:13 +0200
Message-Id: <20230726075314.101816-1-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690358188; x=1721894188;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=S+W3A2Ou7tV8ku6HrkGqhQyjXlLtGSJnrqyAWdJ8jEM=;
 b=gEQRgugNk3FfrZQpgOIyUXm2U1ozm1OTE+dSSAIIRVfGKq3DPBA3A5X0
 ufGAYMoJzOTwYQ0rCQuRUt7wQT7BmT3Bn/egsKIGe61voUbhTV7RbshgM
 F1keasRmGPMI+eOA573NB3yApweYzAQJNhMMLu7T2pYaoPuXdsQKB3ueB
 DoEsQ8zwe+zHiVNanOIHKi7nbE/GTmv/TaJZGKyK/Rhbmf3y9vgT88oJK
 V6OCJFUxxsu7+nOws4A+6ohjJ6CC9AZ9StDICi5VPDiYlBAvM1Ey141dW
 3X624ZBxvE+ABMb6tuMjmW5YVzGENlsvEw+yRndd7t3FJCy2r7bO3xhUw
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gEQRgugN
Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/2] ice: refactor functions
 to make them static
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

Some methods in ice codebase are not used outside the
files they're defined in. These can safely be made static.

Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ddp.c      | 183 +++----
 drivers/net/ethernet/intel/ice/ice_ddp.h      |  10 -
 drivers/net/ethernet/intel/ice/ice_lib.c      |  70 +--
 drivers/net/ethernet/intel/ice/ice_lib.h      |   3 -
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |   8 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |   4 -
 drivers/net/ethernet/intel/ice/ice_sched.c    |   2 +-
 drivers/net/ethernet/intel/ice/ice_sched.h    |   4 -
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 486 +++++++++---------
 .../ethernet/intel/ice/ice_vf_lib_private.h   |   3 -
 10 files changed, 375 insertions(+), 398 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
index d71ed210f9c4..48b8c27997d4 100644
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
@@ -1152,6 +1152,53 @@ static void ice_release_global_cfg_lock(struct ice_hw *hw)
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
+static int ice_aq_download_pkg(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
+			       u16 buf_size, bool last_buf, u32 *error_offset,
+			       u32 *error_info, struct ice_sq_cd *cd)
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
@@ -1294,70 +1341,39 @@ static enum ice_ddp_state ice_download_pkg(struct ice_hw *hw,
 }
 
 /**
- * ice_aq_download_pkg
+ * ice_find_seg_in_pkg
  * @hw: pointer to the hardware structure
- * @pkg_buf: the package buffer to transfer
- * @buf_size: the size of the package buffer
- * @last_buf: last buffer indicator
- * @error_offset: returns error offset
- * @error_info: returns error information
- * @cd: pointer to command details structure or NULL
+ * @seg_type: the segment type to search for (i.e., SEGMENT_TYPE_CPK)
+ * @pkg_hdr: pointer to the package header to be searched
  *
- * Download Package (0x0C40)
+ * This function searches a package file for a particular segment type. On
+ * success it returns a pointer to the segment header, otherwise it will
+ * return NULL.
  */
-int ice_aq_download_pkg(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
-			u16 buf_size, bool last_buf, u32 *error_offset,
-			u32 *error_info, struct ice_sq_cd *cd)
+static struct ice_generic_seg_hdr *
+ice_find_seg_in_pkg(struct ice_hw *hw, u32 seg_type,
+		    struct ice_pkg_hdr *pkg_hdr)
 {
-	struct ice_aqc_download_pkg *cmd;
-	struct ice_aq_desc desc;
-	int status;
-
-	if (error_offset)
-		*error_offset = 0;
-	if (error_info)
-		*error_info = 0;
+	u32 i;
 
-	cmd = &desc.params.download_pkg;
-	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_download_pkg);
-	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+	ice_debug(hw, ICE_DBG_PKG, "Package format version: %d.%d.%d.%d\n",
+		  pkg_hdr->pkg_format_ver.major, pkg_hdr->pkg_format_ver.minor,
+		  pkg_hdr->pkg_format_ver.update,
+		  pkg_hdr->pkg_format_ver.draft);
 
-	if (last_buf)
-		cmd->flags |= ICE_AQC_DOWNLOAD_PKG_LAST_BUF;
+	/* Search all package segments for the requested segment type */
+	for (i = 0; i < le32_to_cpu(pkg_hdr->seg_count); i++) {
+		struct ice_generic_seg_hdr *seg;
 
-	status = ice_aq_send_cmd(hw, &desc, pkg_buf, buf_size, cd);
-	if (status == -EIO) {
-		/* Read error from buffer only when the FW returned an error */
-		struct ice_aqc_download_pkg_resp *resp;
+		seg = (struct ice_generic_seg_hdr
+			       *)((u8 *)pkg_hdr +
+				  le32_to_cpu(pkg_hdr->seg_offset[i]));
 
-		resp = (struct ice_aqc_download_pkg_resp *)pkg_buf;
-		if (error_offset)
-			*error_offset = le32_to_cpu(resp->error_offset);
-		if (error_info)
-			*error_info = le32_to_cpu(resp->error_info);
+		if (le32_to_cpu(seg->seg_type) == seg_type)
+			return seg;
 	}
 
-	return status;
-}
-
-/**
- * ice_aq_upload_section
- * @hw: pointer to the hardware structure
- * @pkg_buf: the package buffer which will receive the section
- * @buf_size: the size of the package buffer
- * @cd: pointer to command details structure or NULL
- *
- * Upload Section (0x0C41)
- */
-int ice_aq_upload_section(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
-			  u16 buf_size, struct ice_sq_cd *cd)
-{
-	struct ice_aq_desc desc;
-
-	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_upload_section);
-	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
-
-	return ice_aq_send_cmd(hw, &desc, pkg_buf, buf_size, cd);
+	return NULL;
 }
 
 /**
@@ -1407,6 +1423,26 @@ static int ice_aq_update_pkg(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
 	return status;
 }
 
+/**
+ * ice_aq_upload_section
+ * @hw: pointer to the hardware structure
+ * @pkg_buf: the package buffer which will receive the section
+ * @buf_size: the size of the package buffer
+ * @cd: pointer to command details structure or NULL
+ *
+ * Upload Section (0x0C41)
+ */
+int ice_aq_upload_section(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
+			  u16 buf_size, struct ice_sq_cd *cd)
+{
+	struct ice_aq_desc desc;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_upload_section);
+	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+
+	return ice_aq_send_cmd(hw, &desc, pkg_buf, buf_size, cd);
+}
+
 /**
  * ice_update_pkg_no_lock
  * @hw: pointer to the hardware structure
@@ -1460,41 +1496,6 @@ int ice_update_pkg(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
 	return status;
 }
 
-/**
- * ice_find_seg_in_pkg
- * @hw: pointer to the hardware structure
- * @seg_type: the segment type to search for (i.e., SEGMENT_TYPE_CPK)
- * @pkg_hdr: pointer to the package header to be searched
- *
- * This function searches a package file for a particular segment type. On
- * success it returns a pointer to the segment header, otherwise it will
- * return NULL.
- */
-struct ice_generic_seg_hdr *ice_find_seg_in_pkg(struct ice_hw *hw, u32 seg_type,
-						struct ice_pkg_hdr *pkg_hdr)
-{
-	u32 i;
-
-	ice_debug(hw, ICE_DBG_PKG, "Package format version: %d.%d.%d.%d\n",
-		  pkg_hdr->pkg_format_ver.major, pkg_hdr->pkg_format_ver.minor,
-		  pkg_hdr->pkg_format_ver.update,
-		  pkg_hdr->pkg_format_ver.draft);
-
-	/* Search all package segments for the requested segment type */
-	for (i = 0; i < le32_to_cpu(pkg_hdr->seg_count); i++) {
-		struct ice_generic_seg_hdr *seg;
-
-		seg = (struct ice_generic_seg_hdr
-			       *)((u8 *)pkg_hdr +
-				  le32_to_cpu(pkg_hdr->seg_offset[i]));
-
-		if (le32_to_cpu(seg->seg_type) == seg_type)
-			return seg;
-	}
-
-	return NULL;
-}
-
 /**
  * ice_init_pkg_info
  * @hw: pointer to the hardware structure
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
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 927518fcad51..3ff2f32a2ab0 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1227,6 +1227,20 @@ ice_chnl_vsi_setup_q_map(struct ice_vsi *vsi, struct ice_vsi_ctx *ctxt)
 	ctxt->info.q_mapping[1] = cpu_to_le16(qcount);
 }
 
+/**
+ * ice_vsi_is_vlan_pruning_ena - check if VLAN pruning is enabled or not
+ * @vsi: VSI to check whether or not VLAN pruning is enabled.
+ *
+ * returns true if Rx VLAN pruning is enabled and false otherwise.
+ */
+static bool ice_vsi_is_vlan_pruning_ena(struct ice_vsi *vsi)
+{
+	if (!vsi)
+		return false;
+
+	return (vsi->info.sw_flags2 & ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA);
+}
+
 /**
  * ice_vsi_init - Create and initialize a VSI
  * @vsi: the VSI being configured
@@ -1684,6 +1698,27 @@ static void ice_vsi_set_rss_flow_fld(struct ice_vsi *vsi)
 			vsi_num, status);
 }
 
+/**
+ * ice_vsi_cfg_frame_size - setup max frame size and Rx buffer length
+ * @vsi: VSI
+ */
+static void ice_vsi_cfg_frame_size(struct ice_vsi *vsi)
+{
+	if (!vsi->netdev || test_bit(ICE_FLAG_LEGACY_RX, vsi->back->flags)) {
+		vsi->max_frame = ICE_MAX_FRAME_LEGACY_RX;
+		vsi->rx_buf_len = ICE_RXBUF_1664;
+#if (PAGE_SIZE < 8192)
+	} else if (!ICE_2K_TOO_SMALL_WITH_PADDING &&
+		   (vsi->netdev->mtu <= ETH_DATA_LEN)) {
+		vsi->max_frame = ICE_RXBUF_1536 - NET_IP_ALIGN;
+		vsi->rx_buf_len = ICE_RXBUF_1536 - NET_IP_ALIGN;
+#endif
+	} else {
+		vsi->max_frame = ICE_AQ_SET_MAC_FRAME_SIZE_MAX;
+		vsi->rx_buf_len = ICE_RXBUF_3072;
+	}
+}
+
 /**
  * ice_pf_state_is_nominal - checks the PF for nominal state
  * @pf: pointer to PF to check
@@ -1758,27 +1793,6 @@ void ice_update_eth_stats(struct ice_vsi *vsi)
 	vsi->stat_offsets_loaded = true;
 }
 
-/**
- * ice_vsi_cfg_frame_size - setup max frame size and Rx buffer length
- * @vsi: VSI
- */
-void ice_vsi_cfg_frame_size(struct ice_vsi *vsi)
-{
-	if (!vsi->netdev || test_bit(ICE_FLAG_LEGACY_RX, vsi->back->flags)) {
-		vsi->max_frame = ICE_MAX_FRAME_LEGACY_RX;
-		vsi->rx_buf_len = ICE_RXBUF_1664;
-#if (PAGE_SIZE < 8192)
-	} else if (!ICE_2K_TOO_SMALL_WITH_PADDING &&
-		   (vsi->netdev->mtu <= ETH_DATA_LEN)) {
-		vsi->max_frame = ICE_RXBUF_1536 - NET_IP_ALIGN;
-		vsi->rx_buf_len = ICE_RXBUF_1536 - NET_IP_ALIGN;
-#endif
-	} else {
-		vsi->max_frame = ICE_AQ_SET_MAC_FRAME_SIZE_MAX;
-		vsi->rx_buf_len = ICE_RXBUF_3072;
-	}
-}
-
 /**
  * ice_write_qrxflxp_cntxt - write/configure QRXFLXP_CNTXT register
  * @hw: HW pointer
@@ -2185,20 +2199,6 @@ bool ice_vsi_is_rx_queue_active(struct ice_vsi *vsi)
 	return false;
 }
 
-/**
- * ice_vsi_is_vlan_pruning_ena - check if VLAN pruning is enabled or not
- * @vsi: VSI to check whether or not VLAN pruning is enabled.
- *
- * returns true if Rx VLAN pruning is enabled and false otherwise.
- */
-bool ice_vsi_is_vlan_pruning_ena(struct ice_vsi *vsi)
-{
-	if (!vsi)
-		return false;
-
-	return (vsi->info.sw_flags2 & ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA);
-}
-
 static void ice_vsi_set_tc_cfg(struct ice_vsi *vsi)
 {
 	if (!test_bit(ICE_FLAG_DCB_ENA, vsi->back->flags)) {
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index dd53fe968ad8..9f2a361a4d8c 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -76,8 +76,6 @@ int ice_vsi_cfg_xdp_txqs(struct ice_vsi *vsi);
 
 int ice_vsi_stop_xdp_tx_rings(struct ice_vsi *vsi);
 
-bool ice_vsi_is_vlan_pruning_ena(struct ice_vsi *vsi);
-
 void ice_cfg_sw_lldp(struct ice_vsi *vsi, bool tx, bool create);
 
 int ice_set_link(struct ice_vsi *vsi, bool ena);
@@ -130,7 +128,6 @@ void ice_update_tx_ring_stats(struct ice_tx_ring *ring, u64 pkts, u64 bytes);
 
 void ice_update_rx_ring_stats(struct ice_rx_ring *ring, u64 pkts, u64 bytes);
 
-void ice_vsi_cfg_frame_size(struct ice_vsi *vsi);
 void ice_write_intrl(struct ice_q_vector *q_vector, u8 intrl);
 void ice_write_itr(struct ice_ring_container *rc, u16 itr);
 void ice_set_q_vector_intrl(struct ice_q_vector *q_vector);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 69dbf9523a15..4dab0611137a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -305,7 +305,7 @@ static bool ice_is_40b_phy_reg_e822(u16 low_addr, u16 *high_addr)
  *
  * Read a PHY register for the given port over the device sideband queue.
  */
-int
+static int
 ice_read_phy_reg_e822(struct ice_hw *hw, u8 port, u16 offset, u32 *val)
 {
 	struct ice_sbq_msg_input msg = {0};
@@ -382,7 +382,7 @@ ice_read_64b_phy_reg_e822(struct ice_hw *hw, u8 port, u16 low_addr, u64 *val)
  *
  * Write a PHY register for the given port over the device sideband queue.
  */
-int
+static int
 ice_write_phy_reg_e822(struct ice_hw *hw, u8 port, u16 offset, u32 val)
 {
 	struct ice_sbq_msg_input msg = {0};
@@ -1091,7 +1091,7 @@ ice_ptp_prep_phy_time_e822(struct ice_hw *hw, u32 time)
  *
  * Negative adjustments are supported using 2s complement arithmetic.
  */
-int
+static int
 ice_ptp_prep_port_adj_e822(struct ice_hw *hw, u8 port, s64 time)
 {
 	u32 l_time, u_time;
@@ -2692,7 +2692,7 @@ static int ice_clear_phy_tstamp_e810(struct ice_hw *hw, u8 lport, u8 idx)
  * Enable the timesync PTP functionality for the external PHY connected to
  * this function.
  */
-int ice_ptp_init_phy_e810(struct ice_hw *hw)
+static int ice_ptp_init_phy_e810(struct ice_hw *hw)
 {
 	u8 tmr_idx;
 	int err;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index c43c43568e2c..8eab12aa8905 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -143,11 +143,8 @@ int ice_ptp_init_phc(struct ice_hw *hw);
 int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready);
 
 /* E822 family functions */
-int ice_read_phy_reg_e822(struct ice_hw *hw, u8 port, u16 offset, u32 *val);
-int ice_write_phy_reg_e822(struct ice_hw *hw, u8 port, u16 offset, u32 val);
 int ice_read_quad_reg_e822(struct ice_hw *hw, u8 quad, u16 offset, u32 *val);
 int ice_write_quad_reg_e822(struct ice_hw *hw, u8 quad, u16 offset, u32 val);
-int ice_ptp_prep_port_adj_e822(struct ice_hw *hw, u8 port, s64 time);
 void ice_ptp_reset_ts_memory_quad_e822(struct ice_hw *hw, u8 quad);
 
 /**
@@ -197,7 +194,6 @@ int ice_phy_cfg_tx_offset_e822(struct ice_hw *hw, u8 port);
 int ice_phy_cfg_rx_offset_e822(struct ice_hw *hw, u8 port);
 
 /* E810 family functions */
-int ice_ptp_init_phy_e810(struct ice_hw *hw);
 int ice_read_sma_ctrl_e810t(struct ice_hw *hw, u8 *data);
 int ice_write_sma_ctrl_e810t(struct ice_hw *hw, u8 data);
 int ice_read_pca9575_reg_e810t(struct ice_hw *hw, u8 offset, u8 *data);
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index f4677704b95e..c0533d7b66b9 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -3971,7 +3971,7 @@ ice_sched_get_node_by_id_type(struct ice_port_info *pi, u32 id,
  * This function sets BW limit of VSI or Aggregator scheduling node
  * based on TC information from passed in argument BW.
  */
-int
+static int
 ice_sched_set_node_bw_lmt_per_tc(struct ice_port_info *pi, u32 id,
 				 enum ice_agg_type agg_type, u8 tc,
 				 enum ice_rl_type rl_type, u32 bw)
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.h b/drivers/net/ethernet/intel/ice/ice_sched.h
index 8bd26353d76a..0055d9330c07 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.h
+++ b/drivers/net/ethernet/intel/ice/ice_sched.h
@@ -141,10 +141,6 @@ ice_cfg_vsi_bw_lmt_per_tc(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 int
 ice_cfg_vsi_bw_dflt_lmt_per_tc(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 			       enum ice_rl_type rl_type);
-int
-ice_sched_set_node_bw_lmt_per_tc(struct ice_port_info *pi, u32 id,
-				 enum ice_agg_type agg_type, u8 tc,
-				 enum ice_rl_type rl_type, u32 bw);
 int ice_cfg_rl_burst_size(struct ice_hw *hw, u32 bytes);
 int
 ice_sched_suspend_resume_elems(struct ice_hw *hw, u8 num_nodes, u32 *node_teids,
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index b26ce4425f45..9f026da2ad2e 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -322,6 +322,240 @@ static int ice_vf_rebuild_vsi(struct ice_vf *vf)
 	return 0;
 }
 
+/**
+ * ice_vf_rebuild_host_vlan_cfg - add VLAN 0 filter or rebuild the Port VLAN
+ * @vf: VF to add MAC filters for
+ * @vsi: Pointer to VSI
+ *
+ * Called after a VF VSI has been re-added/rebuilt during reset. The PF driver
+ * always re-adds either a VLAN 0 or port VLAN based filter after reset.
+ */
+static int ice_vf_rebuild_host_vlan_cfg(struct ice_vf *vf, struct ice_vsi *vsi)
+{
+	struct ice_vsi_vlan_ops *vlan_ops = ice_get_compat_vsi_vlan_ops(vsi);
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	int err;
+
+	if (ice_vf_is_port_vlan_ena(vf)) {
+		err = vlan_ops->set_port_vlan(vsi, &vf->port_vlan_info);
+		if (err) {
+			dev_err(dev, "failed to configure port VLAN via VSI parameters for VF %u, error %d\n",
+				vf->vf_id, err);
+			return err;
+		}
+
+		err = vlan_ops->add_vlan(vsi, &vf->port_vlan_info);
+	} else {
+		err = ice_vsi_add_vlan_zero(vsi);
+	}
+
+	if (err) {
+		dev_err(dev, "failed to add VLAN %u filter for VF %u during VF rebuild, error %d\n",
+			ice_vf_is_port_vlan_ena(vf) ?
+			ice_vf_get_port_vlan_id(vf) : 0, vf->vf_id, err);
+		return err;
+	}
+
+	err = vlan_ops->ena_rx_filtering(vsi);
+	if (err)
+		dev_warn(dev, "failed to enable Rx VLAN filtering for VF %d VSI %d during VF rebuild, error %d\n",
+			 vf->vf_id, vsi->idx, err);
+
+	return 0;
+}
+
+/**
+ * ice_vf_rebuild_host_tx_rate_cfg - re-apply the Tx rate limiting configuration
+ * @vf: VF to re-apply the configuration for
+ *
+ * Called after a VF VSI has been re-added/rebuild during reset. The PF driver
+ * needs to re-apply the host configured Tx rate limiting configuration.
+ */
+static int ice_vf_rebuild_host_tx_rate_cfg(struct ice_vf *vf)
+{
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
+	int err;
+
+	if (WARN_ON(!vsi))
+		return -EINVAL;
+
+	if (vf->min_tx_rate) {
+		err = ice_set_min_bw_limit(vsi, (u64)vf->min_tx_rate * 1000);
+		if (err) {
+			dev_err(dev, "failed to set min Tx rate to %d Mbps for VF %u, error %d\n",
+				vf->min_tx_rate, vf->vf_id, err);
+			return err;
+		}
+	}
+
+	if (vf->max_tx_rate) {
+		err = ice_set_max_bw_limit(vsi, (u64)vf->max_tx_rate * 1000);
+		if (err) {
+			dev_err(dev, "failed to set max Tx rate to %d Mbps for VF %u, error %d\n",
+				vf->max_tx_rate, vf->vf_id, err);
+			return err;
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * ice_vf_set_host_trust_cfg - set trust setting based on pre-reset value
+ * @vf: VF to configure trust setting for
+ */
+static void ice_vf_set_host_trust_cfg(struct ice_vf *vf)
+{
+	if (vf->trusted)
+		set_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
+	else
+		clear_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
+}
+
+/**
+ * ice_vf_rebuild_host_mac_cfg - add broadcast and the VF's perm_addr/LAA
+ * @vf: VF to add MAC filters for
+ *
+ * Called after a VF VSI has been re-added/rebuilt during reset. The PF driver
+ * always re-adds a broadcast filter and the VF's perm_addr/LAA after reset.
+ */
+static int ice_vf_rebuild_host_mac_cfg(struct ice_vf *vf)
+{
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
+	u8 broadcast[ETH_ALEN];
+	int status;
+
+	if (WARN_ON(!vsi))
+		return -EINVAL;
+
+	if (ice_is_eswitch_mode_switchdev(vf->pf))
+		return 0;
+
+	eth_broadcast_addr(broadcast);
+	status = ice_fltr_add_mac(vsi, broadcast, ICE_FWD_TO_VSI);
+	if (status) {
+		dev_err(dev, "failed to add broadcast MAC filter for VF %u, error %d\n",
+			vf->vf_id, status);
+		return status;
+	}
+
+	vf->num_mac++;
+
+	if (is_valid_ether_addr(vf->hw_lan_addr)) {
+		status = ice_fltr_add_mac(vsi, vf->hw_lan_addr,
+					  ICE_FWD_TO_VSI);
+		if (status) {
+			dev_err(dev, "failed to add default unicast MAC filter %pM for VF %u, error %d\n",
+				&vf->hw_lan_addr[0], vf->vf_id,
+				status);
+			return status;
+		}
+		vf->num_mac++;
+
+		ether_addr_copy(vf->dev_lan_addr, vf->hw_lan_addr);
+	}
+
+	return 0;
+}
+
+/**
+ * ice_vf_rebuild_aggregator_node_cfg - rebuild aggregator node config
+ * @vsi: Pointer to VSI
+ *
+ * This function moves VSI into corresponding scheduler aggregator node
+ * based on cached value of "aggregator node info" per VSI
+ */
+static void ice_vf_rebuild_aggregator_node_cfg(struct ice_vsi *vsi)
+{
+	struct ice_pf *pf = vsi->back;
+	struct device *dev;
+	int status;
+
+	if (!vsi->agg_node)
+		return;
+
+	dev = ice_pf_to_dev(pf);
+	if (vsi->agg_node->num_vsis == ICE_MAX_VSIS_IN_AGG_NODE) {
+		dev_dbg(dev,
+			"agg_id %u already has reached max_num_vsis %u\n",
+			vsi->agg_node->agg_id, vsi->agg_node->num_vsis);
+		return;
+	}
+
+	status = ice_move_vsi_to_agg(pf->hw.port_info, vsi->agg_node->agg_id,
+				     vsi->idx, vsi->tc_cfg.ena_tc);
+	if (status)
+		dev_dbg(dev, "unable to move VSI idx %u into aggregator %u node",
+			vsi->idx, vsi->agg_node->agg_id);
+	else
+		vsi->agg_node->num_vsis++;
+}
+
+/**
+ * ice_vf_rebuild_host_cfg - host admin configuration is persistent across reset
+ * @vf: VF to rebuild host configuration on
+ */
+static void ice_vf_rebuild_host_cfg(struct ice_vf *vf)
+{
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
+
+	if (WARN_ON(!vsi))
+		return;
+
+	ice_vf_set_host_trust_cfg(vf);
+
+	if (ice_vf_rebuild_host_mac_cfg(vf))
+		dev_err(dev, "failed to rebuild default MAC configuration for VF %d\n",
+			vf->vf_id);
+
+	if (ice_vf_rebuild_host_vlan_cfg(vf, vsi))
+		dev_err(dev, "failed to rebuild VLAN configuration for VF %u\n",
+			vf->vf_id);
+
+	if (ice_vf_rebuild_host_tx_rate_cfg(vf))
+		dev_err(dev, "failed to rebuild Tx rate limiting configuration for VF %u\n",
+			vf->vf_id);
+
+	if (ice_vsi_apply_spoofchk(vsi, vf->spoofchk))
+		dev_err(dev, "failed to rebuild spoofchk configuration for VF %d\n",
+			vf->vf_id);
+
+	/* rebuild aggregator node config for main VF VSI */
+	ice_vf_rebuild_aggregator_node_cfg(vsi);
+}
+
+/**
+ * ice_set_vf_state_qs_dis - Set VF queues state to disabled
+ * @vf: pointer to the VF structure
+ */
+static void ice_set_vf_state_qs_dis(struct ice_vf *vf)
+{
+	/* Clear Rx/Tx enabled queues flag */
+	bitmap_zero(vf->txq_ena, ICE_MAX_RSS_QS_PER_VF);
+	bitmap_zero(vf->rxq_ena, ICE_MAX_RSS_QS_PER_VF);
+	clear_bit(ICE_VF_STATE_QS_ENA, vf->vf_states);
+}
+
+/**
+ * ice_vf_set_initialized - VF is ready for VIRTCHNL communication
+ * @vf: VF to set in initialized state
+ *
+ * After this function the VF will be ready to receive/handle the
+ * VIRTCHNL_OP_GET_VF_RESOURCES message
+ */
+static void ice_vf_set_initialized(struct ice_vf *vf)
+{
+	ice_set_vf_state_qs_dis(vf);
+	clear_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states);
+	clear_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states);
+	clear_bit(ICE_VF_STATE_DIS, vf->vf_states);
+	set_bit(ICE_VF_STATE_INIT, vf->vf_states);
+	memset(&vf->vlan_v2_caps, 0, sizeof(vf->vlan_v2_caps));
+}
+
 /**
  * ice_vf_post_vsi_rebuild - Reset tasks that occur after VSI rebuild
  * @vf: the VF being reset
@@ -489,6 +723,15 @@ ice_vf_clear_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m)
 	return 0;
 }
 
+/**
+ * ice_vf_ctrl_invalidate_vsi - invalidate ctrl_vsi_idx to remove VSI access
+ * @vf: VF that control VSI is being invalidated on
+ */
+static void ice_vf_ctrl_invalidate_vsi(struct ice_vf *vf)
+{
+	vf->ctrl_vsi_idx = ICE_NO_VSI;
+}
+
 /**
  * ice_reset_all_vfs - reset all allocated VFs in one go
  * @pf: pointer to the PF structure
@@ -725,18 +968,6 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 	return err;
 }
 
-/**
- * ice_set_vf_state_qs_dis - Set VF queues state to disabled
- * @vf: pointer to the VF structure
- */
-static void ice_set_vf_state_qs_dis(struct ice_vf *vf)
-{
-	/* Clear Rx/Tx enabled queues flag */
-	bitmap_zero(vf->txq_ena, ICE_MAX_RSS_QS_PER_VF);
-	bitmap_zero(vf->rxq_ena, ICE_MAX_RSS_QS_PER_VF);
-	clear_bit(ICE_VF_STATE_QS_ENA, vf->vf_states);
-}
-
 /**
  * ice_set_vf_state_dis - Set VF state to disabled
  * @vf: pointer to the VF structure
@@ -977,220 +1208,6 @@ bool ice_is_vf_link_up(struct ice_vf *vf)
 			ICE_AQ_LINK_UP;
 }
 
-/**
- * ice_vf_set_host_trust_cfg - set trust setting based on pre-reset value
- * @vf: VF to configure trust setting for
- */
-static void ice_vf_set_host_trust_cfg(struct ice_vf *vf)
-{
-	if (vf->trusted)
-		set_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
-	else
-		clear_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
-}
-
-/**
- * ice_vf_rebuild_host_mac_cfg - add broadcast and the VF's perm_addr/LAA
- * @vf: VF to add MAC filters for
- *
- * Called after a VF VSI has been re-added/rebuilt during reset. The PF driver
- * always re-adds a broadcast filter and the VF's perm_addr/LAA after reset.
- */
-static int ice_vf_rebuild_host_mac_cfg(struct ice_vf *vf)
-{
-	struct device *dev = ice_pf_to_dev(vf->pf);
-	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
-	u8 broadcast[ETH_ALEN];
-	int status;
-
-	if (WARN_ON(!vsi))
-		return -EINVAL;
-
-	if (ice_is_eswitch_mode_switchdev(vf->pf))
-		return 0;
-
-	eth_broadcast_addr(broadcast);
-	status = ice_fltr_add_mac(vsi, broadcast, ICE_FWD_TO_VSI);
-	if (status) {
-		dev_err(dev, "failed to add broadcast MAC filter for VF %u, error %d\n",
-			vf->vf_id, status);
-		return status;
-	}
-
-	vf->num_mac++;
-
-	if (is_valid_ether_addr(vf->hw_lan_addr)) {
-		status = ice_fltr_add_mac(vsi, vf->hw_lan_addr,
-					  ICE_FWD_TO_VSI);
-		if (status) {
-			dev_err(dev, "failed to add default unicast MAC filter %pM for VF %u, error %d\n",
-				&vf->hw_lan_addr[0], vf->vf_id,
-				status);
-			return status;
-		}
-		vf->num_mac++;
-
-		ether_addr_copy(vf->dev_lan_addr, vf->hw_lan_addr);
-	}
-
-	return 0;
-}
-
-/**
- * ice_vf_rebuild_host_vlan_cfg - add VLAN 0 filter or rebuild the Port VLAN
- * @vf: VF to add MAC filters for
- * @vsi: Pointer to VSI
- *
- * Called after a VF VSI has been re-added/rebuilt during reset. The PF driver
- * always re-adds either a VLAN 0 or port VLAN based filter after reset.
- */
-static int ice_vf_rebuild_host_vlan_cfg(struct ice_vf *vf, struct ice_vsi *vsi)
-{
-	struct ice_vsi_vlan_ops *vlan_ops = ice_get_compat_vsi_vlan_ops(vsi);
-	struct device *dev = ice_pf_to_dev(vf->pf);
-	int err;
-
-	if (ice_vf_is_port_vlan_ena(vf)) {
-		err = vlan_ops->set_port_vlan(vsi, &vf->port_vlan_info);
-		if (err) {
-			dev_err(dev, "failed to configure port VLAN via VSI parameters for VF %u, error %d\n",
-				vf->vf_id, err);
-			return err;
-		}
-
-		err = vlan_ops->add_vlan(vsi, &vf->port_vlan_info);
-	} else {
-		err = ice_vsi_add_vlan_zero(vsi);
-	}
-
-	if (err) {
-		dev_err(dev, "failed to add VLAN %u filter for VF %u during VF rebuild, error %d\n",
-			ice_vf_is_port_vlan_ena(vf) ?
-			ice_vf_get_port_vlan_id(vf) : 0, vf->vf_id, err);
-		return err;
-	}
-
-	err = vlan_ops->ena_rx_filtering(vsi);
-	if (err)
-		dev_warn(dev, "failed to enable Rx VLAN filtering for VF %d VSI %d during VF rebuild, error %d\n",
-			 vf->vf_id, vsi->idx, err);
-
-	return 0;
-}
-
-/**
- * ice_vf_rebuild_host_tx_rate_cfg - re-apply the Tx rate limiting configuration
- * @vf: VF to re-apply the configuration for
- *
- * Called after a VF VSI has been re-added/rebuild during reset. The PF driver
- * needs to re-apply the host configured Tx rate limiting configuration.
- */
-static int ice_vf_rebuild_host_tx_rate_cfg(struct ice_vf *vf)
-{
-	struct device *dev = ice_pf_to_dev(vf->pf);
-	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
-	int err;
-
-	if (WARN_ON(!vsi))
-		return -EINVAL;
-
-	if (vf->min_tx_rate) {
-		err = ice_set_min_bw_limit(vsi, (u64)vf->min_tx_rate * 1000);
-		if (err) {
-			dev_err(dev, "failed to set min Tx rate to %d Mbps for VF %u, error %d\n",
-				vf->min_tx_rate, vf->vf_id, err);
-			return err;
-		}
-	}
-
-	if (vf->max_tx_rate) {
-		err = ice_set_max_bw_limit(vsi, (u64)vf->max_tx_rate * 1000);
-		if (err) {
-			dev_err(dev, "failed to set max Tx rate to %d Mbps for VF %u, error %d\n",
-				vf->max_tx_rate, vf->vf_id, err);
-			return err;
-		}
-	}
-
-	return 0;
-}
-
-/**
- * ice_vf_rebuild_aggregator_node_cfg - rebuild aggregator node config
- * @vsi: Pointer to VSI
- *
- * This function moves VSI into corresponding scheduler aggregator node
- * based on cached value of "aggregator node info" per VSI
- */
-static void ice_vf_rebuild_aggregator_node_cfg(struct ice_vsi *vsi)
-{
-	struct ice_pf *pf = vsi->back;
-	struct device *dev;
-	int status;
-
-	if (!vsi->agg_node)
-		return;
-
-	dev = ice_pf_to_dev(pf);
-	if (vsi->agg_node->num_vsis == ICE_MAX_VSIS_IN_AGG_NODE) {
-		dev_dbg(dev,
-			"agg_id %u already has reached max_num_vsis %u\n",
-			vsi->agg_node->agg_id, vsi->agg_node->num_vsis);
-		return;
-	}
-
-	status = ice_move_vsi_to_agg(pf->hw.port_info, vsi->agg_node->agg_id,
-				     vsi->idx, vsi->tc_cfg.ena_tc);
-	if (status)
-		dev_dbg(dev, "unable to move VSI idx %u into aggregator %u node",
-			vsi->idx, vsi->agg_node->agg_id);
-	else
-		vsi->agg_node->num_vsis++;
-}
-
-/**
- * ice_vf_rebuild_host_cfg - host admin configuration is persistent across reset
- * @vf: VF to rebuild host configuration on
- */
-void ice_vf_rebuild_host_cfg(struct ice_vf *vf)
-{
-	struct device *dev = ice_pf_to_dev(vf->pf);
-	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
-
-	if (WARN_ON(!vsi))
-		return;
-
-	ice_vf_set_host_trust_cfg(vf);
-
-	if (ice_vf_rebuild_host_mac_cfg(vf))
-		dev_err(dev, "failed to rebuild default MAC configuration for VF %d\n",
-			vf->vf_id);
-
-	if (ice_vf_rebuild_host_vlan_cfg(vf, vsi))
-		dev_err(dev, "failed to rebuild VLAN configuration for VF %u\n",
-			vf->vf_id);
-
-	if (ice_vf_rebuild_host_tx_rate_cfg(vf))
-		dev_err(dev, "failed to rebuild Tx rate limiting configuration for VF %u\n",
-			vf->vf_id);
-
-	if (ice_vsi_apply_spoofchk(vsi, vf->spoofchk))
-		dev_err(dev, "failed to rebuild spoofchk configuration for VF %d\n",
-			vf->vf_id);
-
-	/* rebuild aggregator node config for main VF VSI */
-	ice_vf_rebuild_aggregator_node_cfg(vsi);
-}
-
-/**
- * ice_vf_ctrl_invalidate_vsi - invalidate ctrl_vsi_idx to remove VSI access
- * @vf: VF that control VSI is being invalidated on
- */
-void ice_vf_ctrl_invalidate_vsi(struct ice_vf *vf)
-{
-	vf->ctrl_vsi_idx = ICE_NO_VSI;
-}
-
 /**
  * ice_vf_ctrl_vsi_release - invalidate the VF's control VSI after freeing it
  * @vf: VF that control VSI is being released on
@@ -1310,23 +1327,6 @@ void ice_vf_vsi_release(struct ice_vf *vf)
 	ice_vf_invalidate_vsi(vf);
 }
 
-/**
- * ice_vf_set_initialized - VF is ready for VIRTCHNL communication
- * @vf: VF to set in initialized state
- *
- * After this function the VF will be ready to receive/handle the
- * VIRTCHNL_OP_GET_VF_RESOURCES message
- */
-void ice_vf_set_initialized(struct ice_vf *vf)
-{
-	ice_set_vf_state_qs_dis(vf);
-	clear_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states);
-	clear_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states);
-	clear_bit(ICE_VF_STATE_DIS, vf->vf_states);
-	set_bit(ICE_VF_STATE_INIT, vf->vf_states);
-	memset(&vf->vlan_v2_caps, 0, sizeof(vf->vlan_v2_caps));
-}
-
 /**
  * ice_get_vf_ctrl_vsi - Get first VF control VSI pointer
  * @pf: the PF private structure
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h b/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
index 6f3293b793b5..da04895dd2d7 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
@@ -32,13 +32,10 @@ int ice_vsi_apply_spoofchk(struct ice_vsi *vsi, bool enable);
 bool ice_is_vf_trusted(struct ice_vf *vf);
 bool ice_vf_has_no_qs_ena(struct ice_vf *vf);
 bool ice_is_vf_link_up(struct ice_vf *vf);
-void ice_vf_rebuild_host_cfg(struct ice_vf *vf);
-void ice_vf_ctrl_invalidate_vsi(struct ice_vf *vf);
 void ice_vf_ctrl_vsi_release(struct ice_vf *vf);
 struct ice_vsi *ice_vf_ctrl_vsi_setup(struct ice_vf *vf);
 int ice_vf_init_host_cfg(struct ice_vf *vf, struct ice_vsi *vsi);
 void ice_vf_invalidate_vsi(struct ice_vf *vf);
 void ice_vf_vsi_release(struct ice_vf *vf);
-void ice_vf_set_initialized(struct ice_vf *vf);
 
 #endif /* _ICE_VF_LIB_PRIVATE_H_ */
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
