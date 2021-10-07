Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DD735425FB7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Oct 2021 00:16:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E5126080B;
	Thu,  7 Oct 2021 22:16:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HMf-j62pm0Wr; Thu,  7 Oct 2021 22:16:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DFBA26080C;
	Thu,  7 Oct 2021 22:16:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 987B21BF368
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Oct 2021 22:16:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 879D84068C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Oct 2021 22:16:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZqIsbsOhJ77v for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Oct 2021 22:16:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BA6E840A07
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Oct 2021 22:16:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="289878254"
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="289878254"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 15:16:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="590327167"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.133])
 by orsmga004.jf.intel.com with ESMTP; 07 Oct 2021 15:16:16 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 Oct 2021 15:01:21 -0700
Message-Id: <20211007220127.70514-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211007220127.70514-1-anthony.l.nguyen@intel.com>
References: <20211007220127.70514-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 1/7] ice: Refactor status flow
 for DDP load
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

From: Wojciech Drewek <wojciech.drewek@intel.com>

Before this change, final state of the DDP pkg load process was
dependent on many variables such as: ice_status, pkg version,
ice_aq_err. The last one had be stored in hw->pkg_dwnld_status.
It was impossible to conclude this state just from ice_status, that's
why logging process of DDP pkg load in the caller was a little bit
complicated.

With this patch new status enum is introduced - ice_ddp_state.
It covers all the possible final states of the loading process.
What's tricky for ice_ddp_state is that not only
ICE_DDP_PKG_SUCCESS(=0) means that load was successful. Actually
three states mean that:
 - ICE_DDP_PKG_SUCCESS
 - ICE_DDP_PKG_SAME_VERSION_ALREADY_LOADED
 - ICE_DDP_PKG_COMPATIBLE_ALREADY_LOADED
ice_is_init_pkg_successful can tell that information.

One ddp_state should not be used outside of ice_init_pkg which is
ICE_DDP_PKG_ALREADY_LOADED. It is more generic, it is used in
ice_dwnld_cfg_bufs to see if pkg is already loaded. At this point
we can't use one of the specific one (SAME_VERSION, COMPATIBLE,
NOT_SUPPORTED) because we don't have information on the package
currently loaded in HW (we are before calling ice_get_pkg_info).

We can get rid of hw->pkg_dwnld_status because we are immediately
mapping aq errors to ice_ddp_state in ice_dwnld_cfg_bufs.

Other errors like ICE_ERR_NO_MEMORY, ICE_ERR_PARAM are mapped the
generic ICE_DDP_PKG_ERR.

Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 .../net/ethernet/intel/ice/ice_flex_pipe.c    | 225 +++++++++++-------
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |  62 ++++-
 drivers/net/ethernet/intel/ice/ice_main.c     | 165 ++++++-------
 drivers/net/ethernet/intel/ice/ice_type.h     |   2 -
 4 files changed, 274 insertions(+), 180 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index 7bcb41cda0a0..19a2556f9370 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -996,6 +996,23 @@ ice_update_pkg(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
 	return status;
 }
 
+static enum ice_ddp_state
+ice_map_aq_err_to_ddp_state(enum ice_aq_err aq_err)
+{
+	switch (aq_err) {
+	case ICE_AQ_RC_ENOSEC:
+	case ICE_AQ_RC_EBADSIG:
+		return ICE_DDP_PKG_FILE_SIGNATURE_INVALID;
+	case ICE_AQ_RC_ESVN:
+		return ICE_DDP_PKG_FILE_REVISION_TOO_LOW;
+	case ICE_AQ_RC_EBADMAN:
+	case ICE_AQ_RC_EBADBUF:
+		return ICE_DDP_PKG_LOAD_ERROR;
+	default:
+		return ICE_DDP_PKG_ERR;
+	}
+}
+
 /**
  * ice_dwnld_cfg_bufs
  * @hw: pointer to the hardware structure
@@ -1006,15 +1023,17 @@ ice_update_pkg(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
  * to the firmware. Metadata buffers are skipped, and the first metadata buffer
  * found indicates that the rest of the buffers are all metadata buffers.
  */
-static enum ice_status
+static enum ice_ddp_state
 ice_dwnld_cfg_bufs(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
 {
+	enum ice_ddp_state state = ICE_DDP_PKG_SUCCESS;
 	enum ice_status status;
 	struct ice_buf_hdr *bh;
+	enum ice_aq_err err;
 	u32 offset, info, i;
 
 	if (!bufs || !count)
-		return ICE_ERR_PARAM;
+		return ICE_DDP_PKG_ERR;
 
 	/* If the first buffer's first section has its metadata bit set
 	 * then there are no buffers to be downloaded, and the operation is
@@ -1022,20 +1041,13 @@ ice_dwnld_cfg_bufs(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
 	 */
 	bh = (struct ice_buf_hdr *)bufs;
 	if (le32_to_cpu(bh->section_entry[0].type) & ICE_METADATA_BUF)
-		return 0;
-
-	/* reset pkg_dwnld_status in case this function is called in the
-	 * reset/rebuild flow
-	 */
-	hw->pkg_dwnld_status = ICE_AQ_RC_OK;
+		return ICE_DDP_PKG_SUCCESS;
 
 	status = ice_acquire_global_cfg_lock(hw, ICE_RES_WRITE);
 	if (status) {
 		if (status == ICE_ERR_AQ_NO_WORK)
-			hw->pkg_dwnld_status = ICE_AQ_RC_EEXIST;
-		else
-			hw->pkg_dwnld_status = hw->adminq.sq_last_status;
-		return status;
+			return ICE_DDP_PKG_ALREADY_LOADED;
+		return ice_map_aq_err_to_ddp_state(hw->adminq.sq_last_status);
 	}
 
 	for (i = 0; i < count; i++) {
@@ -1061,11 +1073,11 @@ ice_dwnld_cfg_bufs(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
 					     &offset, &info, NULL);
 
 		/* Save AQ status from download package */
-		hw->pkg_dwnld_status = hw->adminq.sq_last_status;
 		if (status) {
 			ice_debug(hw, ICE_DBG_PKG, "Pkg download failed: err %d off %d inf %d\n",
 				  status, offset, info);
-
+			err = hw->adminq.sq_last_status;
+			state = ice_map_aq_err_to_ddp_state(err);
 			break;
 		}
 
@@ -1075,7 +1087,7 @@ ice_dwnld_cfg_bufs(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
 
 	ice_release_global_cfg_lock(hw);
 
-	return status;
+	return state;
 }
 
 /**
@@ -1106,7 +1118,7 @@ ice_aq_get_pkg_info_list(struct ice_hw *hw,
  *
  * Handles the download of a complete package.
  */
-static enum ice_status
+static enum ice_ddp_state
 ice_download_pkg(struct ice_hw *hw, struct ice_seg *ice_seg)
 {
 	struct ice_buf_table *ice_buf_tbl;
@@ -1137,13 +1149,13 @@ ice_download_pkg(struct ice_hw *hw, struct ice_seg *ice_seg)
  *
  * Saves off the package details into the HW structure.
  */
-static enum ice_status
+static enum ice_ddp_state
 ice_init_pkg_info(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr)
 {
 	struct ice_generic_seg_hdr *seg_hdr;
 
 	if (!pkg_hdr)
-		return ICE_ERR_PARAM;
+		return ICE_DDP_PKG_ERR;
 
 	seg_hdr = ice_find_seg_in_pkg(hw, SEGMENT_TYPE_ICE, pkg_hdr);
 	if (seg_hdr) {
@@ -1157,7 +1169,7 @@ ice_init_pkg_info(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr)
 					    ICE_SID_METADATA);
 		if (!meta) {
 			ice_debug(hw, ICE_DBG_INIT, "Did not find ice metadata section in package\n");
-			return ICE_ERR_CFG;
+			return ICE_DDP_PKG_INVALID_FILE;
 		}
 
 		hw->pkg_ver = meta->ver;
@@ -1179,10 +1191,10 @@ ice_init_pkg_info(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr)
 			  seg_hdr->seg_id);
 	} else {
 		ice_debug(hw, ICE_DBG_INIT, "Did not find ice segment in driver package\n");
-		return ICE_ERR_CFG;
+		return ICE_DDP_PKG_INVALID_FILE;
 	}
 
-	return 0;
+	return ICE_DDP_PKG_SUCCESS;
 }
 
 /**
@@ -1191,21 +1203,22 @@ ice_init_pkg_info(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr)
  *
  * Store details of the package currently loaded in HW into the HW structure.
  */
-static enum ice_status ice_get_pkg_info(struct ice_hw *hw)
+static enum ice_ddp_state ice_get_pkg_info(struct ice_hw *hw)
 {
+	enum ice_ddp_state state = ICE_DDP_PKG_SUCCESS;
 	struct ice_aqc_get_pkg_info_resp *pkg_info;
-	enum ice_status status;
 	u16 size;
 	u32 i;
 
 	size = struct_size(pkg_info, pkg_info, ICE_PKG_CNT);
 	pkg_info = kzalloc(size, GFP_KERNEL);
 	if (!pkg_info)
-		return ICE_ERR_NO_MEMORY;
+		return ICE_DDP_PKG_ERR;
 
-	status = ice_aq_get_pkg_info_list(hw, pkg_info, size, NULL);
-	if (status)
+	if (ice_aq_get_pkg_info_list(hw, pkg_info, size, NULL)) {
+		state = ICE_DDP_PKG_ERR;
 		goto init_pkg_free_alloc;
+	}
 
 	for (i = 0; i < le32_to_cpu(pkg_info->count); i++) {
 #define ICE_PKG_FLAG_COUNT	4
@@ -1240,7 +1253,7 @@ static enum ice_status ice_get_pkg_info(struct ice_hw *hw)
 init_pkg_free_alloc:
 	kfree(pkg_info);
 
-	return status;
+	return state;
 }
 
 /**
@@ -1251,28 +1264,28 @@ static enum ice_status ice_get_pkg_info(struct ice_hw *hw)
  * Verifies various attributes of the package file, including length, format
  * version, and the requirement of at least one segment.
  */
-static enum ice_status ice_verify_pkg(struct ice_pkg_hdr *pkg, u32 len)
+static enum ice_ddp_state ice_verify_pkg(struct ice_pkg_hdr *pkg, u32 len)
 {
 	u32 seg_count;
 	u32 i;
 
 	if (len < struct_size(pkg, seg_offset, 1))
-		return ICE_ERR_BUF_TOO_SHORT;
+		return ICE_DDP_PKG_INVALID_FILE;
 
 	if (pkg->pkg_format_ver.major != ICE_PKG_FMT_VER_MAJ ||
 	    pkg->pkg_format_ver.minor != ICE_PKG_FMT_VER_MNR ||
 	    pkg->pkg_format_ver.update != ICE_PKG_FMT_VER_UPD ||
 	    pkg->pkg_format_ver.draft != ICE_PKG_FMT_VER_DFT)
-		return ICE_ERR_CFG;
+		return ICE_DDP_PKG_INVALID_FILE;
 
 	/* pkg must have at least one segment */
 	seg_count = le32_to_cpu(pkg->seg_count);
 	if (seg_count < 1)
-		return ICE_ERR_CFG;
+		return ICE_DDP_PKG_INVALID_FILE;
 
 	/* make sure segment array fits in package length */
 	if (len < struct_size(pkg, seg_offset, seg_count))
-		return ICE_ERR_BUF_TOO_SHORT;
+		return ICE_DDP_PKG_INVALID_FILE;
 
 	/* all segments must fit within length */
 	for (i = 0; i < seg_count; i++) {
@@ -1281,16 +1294,16 @@ static enum ice_status ice_verify_pkg(struct ice_pkg_hdr *pkg, u32 len)
 
 		/* segment header must fit */
 		if (len < off + sizeof(*seg))
-			return ICE_ERR_BUF_TOO_SHORT;
+			return ICE_DDP_PKG_INVALID_FILE;
 
 		seg = (struct ice_generic_seg_hdr *)((u8 *)pkg + off);
 
 		/* segment body must fit */
 		if (len < off + le32_to_cpu(seg->seg_size))
-			return ICE_ERR_BUF_TOO_SHORT;
+			return ICE_DDP_PKG_INVALID_FILE;
 	}
 
-	return 0;
+	return ICE_DDP_PKG_SUCCESS;
 }
 
 /**
@@ -1334,13 +1347,18 @@ static void ice_init_pkg_regs(struct ice_hw *hw)
  * version must match our ICE_PKG_SUPP_VER_MAJ and ICE_PKG_SUPP_VER_MNR
  * definitions.
  */
-static enum ice_status ice_chk_pkg_version(struct ice_pkg_ver *pkg_ver)
+static enum ice_ddp_state ice_chk_pkg_version(struct ice_pkg_ver *pkg_ver)
 {
-	if (pkg_ver->major != ICE_PKG_SUPP_VER_MAJ ||
-	    pkg_ver->minor != ICE_PKG_SUPP_VER_MNR)
-		return ICE_ERR_NOT_SUPPORTED;
+	if (pkg_ver->major > ICE_PKG_SUPP_VER_MAJ ||
+	    (pkg_ver->major == ICE_PKG_SUPP_VER_MAJ &&
+	     pkg_ver->minor > ICE_PKG_SUPP_VER_MNR))
+		return ICE_DDP_PKG_FILE_VERSION_TOO_HIGH;
+	else if (pkg_ver->major < ICE_PKG_SUPP_VER_MAJ ||
+		 (pkg_ver->major == ICE_PKG_SUPP_VER_MAJ &&
+		  pkg_ver->minor < ICE_PKG_SUPP_VER_MNR))
+		return ICE_DDP_PKG_FILE_VERSION_TOO_LOW;
 
-	return 0;
+	return ICE_DDP_PKG_SUCCESS;
 }
 
 /**
@@ -1351,20 +1369,20 @@ static enum ice_status ice_chk_pkg_version(struct ice_pkg_ver *pkg_ver)
  *
  * This function checks the package version compatibility with driver and NVM
  */
-static enum ice_status
+static enum ice_ddp_state
 ice_chk_pkg_compat(struct ice_hw *hw, struct ice_pkg_hdr *ospkg,
 		   struct ice_seg **seg)
 {
 	struct ice_aqc_get_pkg_info_resp *pkg;
-	enum ice_status status;
+	enum ice_ddp_state state;
 	u16 size;
 	u32 i;
 
 	/* Check package version compatibility */
-	status = ice_chk_pkg_version(&hw->pkg_ver);
-	if (status) {
+	state = ice_chk_pkg_version(&hw->pkg_ver);
+	if (state) {
 		ice_debug(hw, ICE_DBG_INIT, "Package version check failed.\n");
-		return status;
+		return state;
 	}
 
 	/* find ICE segment in given package */
@@ -1372,18 +1390,19 @@ ice_chk_pkg_compat(struct ice_hw *hw, struct ice_pkg_hdr *ospkg,
 						     ospkg);
 	if (!*seg) {
 		ice_debug(hw, ICE_DBG_INIT, "no ice segment in package.\n");
-		return ICE_ERR_CFG;
+		return ICE_DDP_PKG_INVALID_FILE;
 	}
 
 	/* Check if FW is compatible with the OS package */
 	size = struct_size(pkg, pkg_info, ICE_PKG_CNT);
 	pkg = kzalloc(size, GFP_KERNEL);
 	if (!pkg)
-		return ICE_ERR_NO_MEMORY;
+		return ICE_DDP_PKG_ERR;
 
-	status = ice_aq_get_pkg_info_list(hw, pkg, size, NULL);
-	if (status)
+	if (ice_aq_get_pkg_info_list(hw, pkg, size, NULL)) {
+		state = ICE_DDP_PKG_LOAD_ERROR;
 		goto fw_ddp_compat_free_alloc;
+	}
 
 	for (i = 0; i < le32_to_cpu(pkg->count); i++) {
 		/* loop till we find the NVM package */
@@ -1393,7 +1412,7 @@ ice_chk_pkg_compat(struct ice_hw *hw, struct ice_pkg_hdr *ospkg,
 			pkg->pkg_info[i].ver.major ||
 		    (*seg)->hdr.seg_format_ver.minor >
 			pkg->pkg_info[i].ver.minor) {
-			status = ICE_ERR_FW_DDP_MISMATCH;
+			state = ICE_DDP_PKG_FW_MISMATCH;
 			ice_debug(hw, ICE_DBG_INIT, "OS package is not compatible with NVM.\n");
 		}
 		/* done processing NVM package so break */
@@ -1401,7 +1420,7 @@ ice_chk_pkg_compat(struct ice_hw *hw, struct ice_pkg_hdr *ospkg,
 	}
 fw_ddp_compat_free_alloc:
 	kfree(pkg);
-	return status;
+	return state;
 }
 
 /**
@@ -1484,6 +1503,34 @@ static enum ice_status ice_get_prof_index_max(struct ice_hw *hw)
 	return 0;
 }
 
+/**
+ * ice_get_ddp_pkg_state - get DDP pkg state after download
+ * @hw: pointer to the HW struct
+ * @already_loaded: indicates if pkg was already loaded onto the device
+ */
+static enum ice_ddp_state
+ice_get_ddp_pkg_state(struct ice_hw *hw, bool already_loaded)
+{
+	if (hw->pkg_ver.major == hw->active_pkg_ver.major &&
+	    hw->pkg_ver.minor == hw->active_pkg_ver.minor &&
+	    hw->pkg_ver.update == hw->active_pkg_ver.update &&
+	    hw->pkg_ver.draft == hw->active_pkg_ver.draft &&
+	    !memcmp(hw->pkg_name, hw->active_pkg_name, sizeof(hw->pkg_name))) {
+		if (already_loaded)
+			return ICE_DDP_PKG_SAME_VERSION_ALREADY_LOADED;
+		else
+			return ICE_DDP_PKG_SUCCESS;
+	} else if (hw->active_pkg_ver.major != ICE_PKG_SUPP_VER_MAJ ||
+		   hw->active_pkg_ver.minor != ICE_PKG_SUPP_VER_MNR) {
+		return ICE_DDP_PKG_ALREADY_LOADED_NOT_SUPPORTED;
+	} else if (hw->active_pkg_ver.major == ICE_PKG_SUPP_VER_MAJ &&
+		   hw->active_pkg_ver.minor == ICE_PKG_SUPP_VER_MNR) {
+		return ICE_DDP_PKG_COMPATIBLE_ALREADY_LOADED;
+	} else {
+		return ICE_DDP_PKG_ERR;
+	}
+}
+
 /**
  * ice_init_pkg - initialize/download package
  * @hw: pointer to the hardware structure
@@ -1509,53 +1556,54 @@ static enum ice_status ice_get_prof_index_max(struct ice_hw *hw)
  * ice_copy_and_init_pkg() instead of directly calling ice_init_pkg() in this
  * case.
  */
-enum ice_status ice_init_pkg(struct ice_hw *hw, u8 *buf, u32 len)
+enum ice_ddp_state ice_init_pkg(struct ice_hw *hw, u8 *buf, u32 len)
 {
+	bool already_loaded = false;
+	enum ice_ddp_state state;
 	struct ice_pkg_hdr *pkg;
-	enum ice_status status;
 	struct ice_seg *seg;
 
 	if (!buf || !len)
-		return ICE_ERR_PARAM;
+		return ICE_DDP_PKG_ERR;
 
 	pkg = (struct ice_pkg_hdr *)buf;
-	status = ice_verify_pkg(pkg, len);
-	if (status) {
+	state = ice_verify_pkg(pkg, len);
+	if (state) {
 		ice_debug(hw, ICE_DBG_INIT, "failed to verify pkg (err: %d)\n",
-			  status);
-		return status;
+			  state);
+		return state;
 	}
 
 	/* initialize package info */
-	status = ice_init_pkg_info(hw, pkg);
-	if (status)
-		return status;
+	state = ice_init_pkg_info(hw, pkg);
+	if (state)
+		return state;
 
 	/* before downloading the package, check package version for
 	 * compatibility with driver
 	 */
-	status = ice_chk_pkg_compat(hw, pkg, &seg);
-	if (status)
-		return status;
+	state = ice_chk_pkg_compat(hw, pkg, &seg);
+	if (state)
+		return state;
 
 	/* initialize package hints and then download package */
 	ice_init_pkg_hints(hw, seg);
-	status = ice_download_pkg(hw, seg);
-	if (status == ICE_ERR_AQ_NO_WORK) {
+	state = ice_download_pkg(hw, seg);
+	if (state == ICE_DDP_PKG_ALREADY_LOADED) {
 		ice_debug(hw, ICE_DBG_INIT, "package previously loaded - no work.\n");
-		status = 0;
+		already_loaded = true;
 	}
 
 	/* Get information on the package currently loaded in HW, then make sure
 	 * the driver is compatible with this version.
 	 */
-	if (!status) {
-		status = ice_get_pkg_info(hw);
-		if (!status)
-			status = ice_chk_pkg_version(&hw->active_pkg_ver);
+	if (!state || state == ICE_DDP_PKG_ALREADY_LOADED) {
+		state = ice_get_pkg_info(hw);
+		if (!state)
+			state = ice_get_ddp_pkg_state(hw, already_loaded);
 	}
 
-	if (!status) {
+	if (ice_is_init_pkg_successful(state)) {
 		hw->seg = seg;
 		/* on successful package download update other required
 		 * registers to support the package and fill HW tables
@@ -1567,10 +1615,10 @@ enum ice_status ice_init_pkg(struct ice_hw *hw, u8 *buf, u32 len)
 		ice_get_prof_index_max(hw);
 	} else {
 		ice_debug(hw, ICE_DBG_INIT, "package load failed, %d\n",
-			  status);
+			  state);
 	}
 
-	return status;
+	return state;
 }
 
 /**
@@ -1596,18 +1644,19 @@ enum ice_status ice_init_pkg(struct ice_hw *hw, u8 *buf, u32 len)
  * package buffer, as the new copy will be managed by this function and
  * related routines.
  */
-enum ice_status ice_copy_and_init_pkg(struct ice_hw *hw, const u8 *buf, u32 len)
+enum ice_ddp_state
+ice_copy_and_init_pkg(struct ice_hw *hw, const u8 *buf, u32 len)
 {
-	enum ice_status status;
+	enum ice_ddp_state state;
 	u8 *buf_copy;
 
 	if (!buf || !len)
-		return ICE_ERR_PARAM;
+		return ICE_DDP_PKG_ERR;
 
 	buf_copy = devm_kmemdup(ice_hw_to_dev(hw), buf, len, GFP_KERNEL);
 
-	status = ice_init_pkg(hw, buf_copy, len);
-	if (status) {
+	state = ice_init_pkg(hw, buf_copy, len);
+	if (!ice_is_init_pkg_successful(state)) {
 		/* Free the copy, since we failed to initialize the package */
 		devm_kfree(ice_hw_to_dev(hw), buf_copy);
 	} else {
@@ -1616,7 +1665,23 @@ enum ice_status ice_copy_and_init_pkg(struct ice_hw *hw, const u8 *buf, u32 len)
 		hw->pkg_size = len;
 	}
 
-	return status;
+	return state;
+}
+
+/**
+ * ice_is_init_pkg_successful - check if DDP init was successful
+ * @state: state of the DDP pkg after download
+ */
+bool ice_is_init_pkg_successful(enum ice_ddp_state state)
+{
+	switch (state) {
+	case ICE_DDP_PKG_SUCCESS:
+	case ICE_DDP_PKG_SAME_VERSION_ALREADY_LOADED:
+	case ICE_DDP_PKG_COMPATIBLE_ALREADY_LOADED:
+		return true;
+	default:
+		return false;
+	}
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
index e8c16ea672fb..099bb38646ad 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
@@ -18,6 +18,63 @@
 
 #define ICE_PKG_CNT 4
 
+enum ice_ddp_state {
+	/* Indicates that this call to ice_init_pkg
+	 * successfully loaded the requested DDP package
+	 */
+	ICE_DDP_PKG_SUCCESS			= 0,
+
+	/* Generic error for already loaded errors, it is mapped later to
+	 * the more specific one (one of the next 3)
+	 */
+	ICE_DDP_PKG_ALREADY_LOADED			= -1,
+
+	/* Indicates that a DDP package of the same version has already been
+	 * loaded onto the device by a previous call or by another PF
+	 */
+	ICE_DDP_PKG_SAME_VERSION_ALREADY_LOADED		= -2,
+
+	/* The device has a DDP package that is not supported by the driver */
+	ICE_DDP_PKG_ALREADY_LOADED_NOT_SUPPORTED	= -3,
+
+	/* The device has a compatible package
+	 * (but different from the request) already loaded
+	 */
+	ICE_DDP_PKG_COMPATIBLE_ALREADY_LOADED		= -4,
+
+	/* The firmware loaded on the device is not compatible with
+	 * the DDP package loaded
+	 */
+	ICE_DDP_PKG_FW_MISMATCH				= -5,
+
+	/* The DDP package file is invalid */
+	ICE_DDP_PKG_INVALID_FILE			= -6,
+
+	/* The version of the DDP package provided is higher than
+	 * the driver supports
+	 */
+	ICE_DDP_PKG_FILE_VERSION_TOO_HIGH		= -7,
+
+	/* The version of the DDP package provided is lower than the
+	 * driver supports
+	 */
+	ICE_DDP_PKG_FILE_VERSION_TOO_LOW		= -8,
+
+	/* The signature of the DDP package file provided is invalid */
+	ICE_DDP_PKG_FILE_SIGNATURE_INVALID		= -9,
+
+	/* The DDP package file security revision is too low and not
+	 * supported by firmware
+	 */
+	ICE_DDP_PKG_FILE_REVISION_TOO_LOW		= -10,
+
+	/* An error occurred in firmware while loading the DDP package */
+	ICE_DDP_PKG_LOAD_ERROR				= -11,
+
+	/* Other errors */
+	ICE_DDP_PKG_ERR					= -12
+};
+
 enum ice_status
 ice_acquire_change_lock(struct ice_hw *hw, enum ice_aq_res_access_type access);
 void ice_release_change_lock(struct ice_hw *hw);
@@ -51,9 +108,10 @@ enum ice_status
 ice_add_prof_id_flow(struct ice_hw *hw, enum ice_block blk, u16 vsi, u64 hdl);
 enum ice_status
 ice_rem_prof_id_flow(struct ice_hw *hw, enum ice_block blk, u16 vsi, u64 hdl);
-enum ice_status ice_init_pkg(struct ice_hw *hw, u8 *buff, u32 len);
-enum ice_status
+enum ice_ddp_state ice_init_pkg(struct ice_hw *hw, u8 *buff, u32 len);
+enum ice_ddp_state
 ice_copy_and_init_pkg(struct ice_hw *hw, const u8 *buf, u32 len);
+bool ice_is_init_pkg_successful(enum ice_ddp_state state);
 enum ice_status ice_init_hw_tbls(struct ice_hw *hw);
 void ice_free_seg(struct ice_hw *hw);
 void ice_fill_blk_tbls(struct ice_hw *hw);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 51e12e5896b2..dc6557be001d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3943,109 +3943,82 @@ static void ice_set_safe_mode_vlan_cfg(struct ice_pf *pf)
 /**
  * ice_log_pkg_init - log result of DDP package load
  * @hw: pointer to hardware info
- * @status: status of package load
+ * @state: state of package load
  */
 static void
-ice_log_pkg_init(struct ice_hw *hw, enum ice_status *status)
+ice_log_pkg_init(struct ice_hw *hw, enum ice_ddp_state state)
 {
-	struct ice_pf *pf = (struct ice_pf *)hw->back;
-	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_pf *pf = hw->back;
+	struct device *dev;
 
-	switch (*status) {
-	case ICE_SUCCESS:
-		/* The package download AdminQ command returned success because
-		 * this download succeeded or ICE_ERR_AQ_NO_WORK since there is
-		 * already a package loaded on the device.
-		 */
-		if (hw->pkg_ver.major == hw->active_pkg_ver.major &&
-		    hw->pkg_ver.minor == hw->active_pkg_ver.minor &&
-		    hw->pkg_ver.update == hw->active_pkg_ver.update &&
-		    hw->pkg_ver.draft == hw->active_pkg_ver.draft &&
-		    !memcmp(hw->pkg_name, hw->active_pkg_name,
-			    sizeof(hw->pkg_name))) {
-			if (hw->pkg_dwnld_status == ICE_AQ_RC_EEXIST)
-				dev_info(dev, "DDP package already present on device: %s version %d.%d.%d.%d\n",
-					 hw->active_pkg_name,
-					 hw->active_pkg_ver.major,
-					 hw->active_pkg_ver.minor,
-					 hw->active_pkg_ver.update,
-					 hw->active_pkg_ver.draft);
-			else
-				dev_info(dev, "The DDP package was successfully loaded: %s version %d.%d.%d.%d\n",
-					 hw->active_pkg_name,
-					 hw->active_pkg_ver.major,
-					 hw->active_pkg_ver.minor,
-					 hw->active_pkg_ver.update,
-					 hw->active_pkg_ver.draft);
-		} else if (hw->active_pkg_ver.major != ICE_PKG_SUPP_VER_MAJ ||
-			   hw->active_pkg_ver.minor != ICE_PKG_SUPP_VER_MNR) {
-			dev_err(dev, "The device has a DDP package that is not supported by the driver.  The device has package '%s' version %d.%d.x.x.  The driver requires version %d.%d.x.x.  Entering Safe Mode.\n",
-				hw->active_pkg_name,
-				hw->active_pkg_ver.major,
-				hw->active_pkg_ver.minor,
-				ICE_PKG_SUPP_VER_MAJ, ICE_PKG_SUPP_VER_MNR);
-			*status = ICE_ERR_NOT_SUPPORTED;
-		} else if (hw->active_pkg_ver.major == ICE_PKG_SUPP_VER_MAJ &&
-			   hw->active_pkg_ver.minor == ICE_PKG_SUPP_VER_MNR) {
-			dev_info(dev, "The driver could not load the DDP package file because a compatible DDP package is already present on the device.  The device has package '%s' version %d.%d.%d.%d.  The package file found by the driver: '%s' version %d.%d.%d.%d.\n",
-				 hw->active_pkg_name,
-				 hw->active_pkg_ver.major,
-				 hw->active_pkg_ver.minor,
-				 hw->active_pkg_ver.update,
-				 hw->active_pkg_ver.draft,
-				 hw->pkg_name,
-				 hw->pkg_ver.major,
-				 hw->pkg_ver.minor,
-				 hw->pkg_ver.update,
-				 hw->pkg_ver.draft);
-		} else {
-			dev_err(dev, "An unknown error occurred when loading the DDP package, please reboot the system.  If the problem persists, update the NVM.  Entering Safe Mode.\n");
-			*status = ICE_ERR_NOT_SUPPORTED;
-		}
+	dev = ice_pf_to_dev(pf);
+
+	switch (state) {
+	case ICE_DDP_PKG_SUCCESS:
+		dev_info(dev, "The DDP package was successfully loaded: %s version %d.%d.%d.%d\n",
+			 hw->active_pkg_name,
+			 hw->active_pkg_ver.major,
+			 hw->active_pkg_ver.minor,
+			 hw->active_pkg_ver.update,
+			 hw->active_pkg_ver.draft);
 		break;
-	case ICE_ERR_FW_DDP_MISMATCH:
+	case ICE_DDP_PKG_SAME_VERSION_ALREADY_LOADED:
+		dev_info(dev, "DDP package already present on device: %s version %d.%d.%d.%d\n",
+			 hw->active_pkg_name,
+			 hw->active_pkg_ver.major,
+			 hw->active_pkg_ver.minor,
+			 hw->active_pkg_ver.update,
+			 hw->active_pkg_ver.draft);
+		break;
+	case ICE_DDP_PKG_ALREADY_LOADED_NOT_SUPPORTED:
+		dev_err(dev, "The device has a DDP package that is not supported by the driver.  The device has package '%s' version %d.%d.x.x.  The driver requires version %d.%d.x.x.  Entering Safe Mode.\n",
+			hw->active_pkg_name,
+			hw->active_pkg_ver.major,
+			hw->active_pkg_ver.minor,
+			ICE_PKG_SUPP_VER_MAJ, ICE_PKG_SUPP_VER_MNR);
+		break;
+	case ICE_DDP_PKG_COMPATIBLE_ALREADY_LOADED:
+		dev_info(dev, "The driver could not load the DDP package file because a compatible DDP package is already present on the device.  The device has package '%s' version %d.%d.%d.%d.  The package file found by the driver: '%s' version %d.%d.%d.%d.\n",
+			 hw->active_pkg_name,
+			 hw->active_pkg_ver.major,
+			 hw->active_pkg_ver.minor,
+			 hw->active_pkg_ver.update,
+			 hw->active_pkg_ver.draft,
+			 hw->pkg_name,
+			 hw->pkg_ver.major,
+			 hw->pkg_ver.minor,
+			 hw->pkg_ver.update,
+			 hw->pkg_ver.draft);
+		break;
+	case ICE_DDP_PKG_FW_MISMATCH:
 		dev_err(dev, "The firmware loaded on the device is not compatible with the DDP package.  Please update the device's NVM.  Entering safe mode.\n");
 		break;
-	case ICE_ERR_BUF_TOO_SHORT:
-	case ICE_ERR_CFG:
+	case ICE_DDP_PKG_INVALID_FILE:
 		dev_err(dev, "The DDP package file is invalid. Entering Safe Mode.\n");
 		break;
-	case ICE_ERR_NOT_SUPPORTED:
-		/* Package File version not supported */
-		if (hw->pkg_ver.major > ICE_PKG_SUPP_VER_MAJ ||
-		    (hw->pkg_ver.major == ICE_PKG_SUPP_VER_MAJ &&
-		     hw->pkg_ver.minor > ICE_PKG_SUPP_VER_MNR))
-			dev_err(dev, "The DDP package file version is higher than the driver supports.  Please use an updated driver.  Entering Safe Mode.\n");
-		else if (hw->pkg_ver.major < ICE_PKG_SUPP_VER_MAJ ||
-			 (hw->pkg_ver.major == ICE_PKG_SUPP_VER_MAJ &&
-			  hw->pkg_ver.minor < ICE_PKG_SUPP_VER_MNR))
-			dev_err(dev, "The DDP package file version is lower than the driver supports.  The driver requires version %d.%d.x.x.  Please use an updated DDP Package file.  Entering Safe Mode.\n",
-				ICE_PKG_SUPP_VER_MAJ, ICE_PKG_SUPP_VER_MNR);
+	case ICE_DDP_PKG_FILE_VERSION_TOO_HIGH:
+		dev_err(dev, "The DDP package file version is higher than the driver supports.  Please use an updated driver.  Entering Safe Mode.\n");
 		break;
-	case ICE_ERR_AQ_ERROR:
-		switch (hw->pkg_dwnld_status) {
-		case ICE_AQ_RC_ENOSEC:
-		case ICE_AQ_RC_EBADSIG:
-			dev_err(dev, "The DDP package could not be loaded because its signature is not valid.  Please use a valid DDP Package.  Entering Safe Mode.\n");
-			return;
-		case ICE_AQ_RC_ESVN:
-			dev_err(dev, "The DDP Package could not be loaded because its security revision is too low.  Please use an updated DDP Package.  Entering Safe Mode.\n");
-			return;
-		case ICE_AQ_RC_EBADMAN:
-		case ICE_AQ_RC_EBADBUF:
-			dev_err(dev, "An error occurred on the device while loading the DDP package.  The device will be reset.\n");
+	case ICE_DDP_PKG_FILE_VERSION_TOO_LOW:
+		dev_err(dev, "The DDP package file version is lower than the driver supports.  The driver requires version %d.%d.x.x.  Please use an updated DDP Package file.  Entering Safe Mode.\n",
+			ICE_PKG_SUPP_VER_MAJ, ICE_PKG_SUPP_VER_MNR);
+		break;
+	case ICE_DDP_PKG_FILE_SIGNATURE_INVALID:
+		dev_err(dev, "The DDP package could not be loaded because its signature is not valid.  Please use a valid DDP Package.  Entering Safe Mode.\n");
+		break;
+	case ICE_DDP_PKG_FILE_REVISION_TOO_LOW:
+		dev_err(dev, "The DDP Package could not be loaded because its security revision is too low.  Please use an updated DDP Package.  Entering Safe Mode.\n");
+		break;
+	case ICE_DDP_PKG_LOAD_ERROR:
+		dev_err(dev, "An error occurred on the device while loading the DDP package.  The device will be reset.\n");
 			/* poll for reset to complete */
 			if (ice_check_reset(hw))
 				dev_err(dev, "Error resetting device. Please reload the driver\n");
-			return;
-		default:
-			break;
-		}
-		fallthrough;
-	default:
-		dev_err(dev, "An unknown error (%d) occurred when loading the DDP package.  Entering Safe Mode.\n",
-			*status);
 		break;
+	case ICE_DDP_PKG_ERR:
+	default:
+		dev_err(dev, "An unknown error occurred when loading the DDP package.  Entering Safe Mode.\n");
+
 	}
 }
 
@@ -4060,24 +4033,24 @@ ice_log_pkg_init(struct ice_hw *hw, enum ice_status *status)
 static void
 ice_load_pkg(const struct firmware *firmware, struct ice_pf *pf)
 {
-	enum ice_status status = ICE_ERR_PARAM;
+	enum ice_ddp_state state = ICE_DDP_PKG_ERR;
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
 
 	/* Load DDP Package */
 	if (firmware && !hw->pkg_copy) {
-		status = ice_copy_and_init_pkg(hw, firmware->data,
-					       firmware->size);
-		ice_log_pkg_init(hw, &status);
+		state = ice_copy_and_init_pkg(hw, firmware->data,
+					      firmware->size);
+		ice_log_pkg_init(hw, state);
 	} else if (!firmware && hw->pkg_copy) {
 		/* Reload package during rebuild after CORER/GLOBR reset */
-		status = ice_init_pkg(hw, hw->pkg_copy, hw->pkg_size);
-		ice_log_pkg_init(hw, &status);
+		state = ice_init_pkg(hw, hw->pkg_copy, hw->pkg_size);
+		ice_log_pkg_init(hw, state);
 	} else {
 		dev_err(dev, "The DDP package file failed to load. Entering Safe Mode.\n");
 	}
 
-	if (status) {
+	if (!ice_is_init_pkg_successful(state)) {
 		/* Safe Mode */
 		clear_bit(ICE_FLAG_ADV_FEATURES, pf->flags);
 		return;
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index ee1712f2d237..9b7ef5b2a22a 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -874,8 +874,6 @@ struct ice_hw {
 	u8 active_pkg_name[ICE_PKG_NAME_SIZE];
 	u8 active_pkg_in_nvm;
 
-	enum ice_aq_err pkg_dwnld_status;
-
 	/* Driver's package ver - (from the Ice Metadata section) */
 	struct ice_pkg_ver pkg_ver;
 	u8 pkg_name[ICE_PKG_NAME_SIZE];
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
