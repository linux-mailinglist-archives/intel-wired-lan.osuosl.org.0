Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B01511D5D45
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:39:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4FF2988227;
	Sat, 16 May 2020 00:39:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FNhOPnEBg1FZ; Sat, 16 May 2020 00:39:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AFC128811E;
	Sat, 16 May 2020 00:39:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2908A1BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:39:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 25AF9877FA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:39:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nQL9Wim2DtED for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:39:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 89C6887863
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:39:19 +0000 (UTC)
IronPort-SDR: XKx7TbTb+vC+6T5XzOdGSVjq86wPYBa8NDhUCuXzE191hppFSeTd3AikYX6BCsnUP10LtmC2vX
 LeZOOv1l0OFQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:39:18 -0700
IronPort-SDR: xUvgx/eEQrYr084UMyYFyObOjIKqZC8UTIbPDorqSkI2mjjT271zug6VboZ7HQYyQcmJzq9U5T
 SoxztGmlKxmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="307560860"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by FMSMGA003.fm.intel.com with ESMTP; 15 May 2020 17:39:18 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:36:34 -0700
Message-Id: <20200516003644.4658-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
References: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S43 05/15] ice: check for compatibility
 between DDP package and firmware
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

Require the Dynamic Device Personalization (DDP) file to have the same
major version number and the same or older minor number than the firmware
version major and minor, respectively.

Check the OS and NVM package versions before downloading the package.
If the OS package version is not compatible with NVM then return an
appropriate error.

Split the 32-byte segment name into a 28-byte segment name and
a 4-byte Track-ID. Older packages will still work with this change
because no package has a name that will take up more than 28 bytes;
in this case the Track-ID will be 0.

Note that the driver will store the segment name as 32-bytes in the
ice_hw structure, in order to normalize the length of the various
package name strings that it uses.

Also add section ID and structure for the segment metadata section.

Signed-off-by: Victor Raj <victor.raj@intel.com>
Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   4 +-
 .../net/ethernet/intel/ice/ice_flex_pipe.c    | 112 ++++++++++++++----
 .../net/ethernet/intel/ice/ice_flex_type.h    |   8 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |   5 +
 drivers/net/ethernet/intel/ice/ice_status.h   |   2 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 6 files changed, 102 insertions(+), 30 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 1586f24f26fb..d0ee14254df1 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1734,10 +1734,12 @@ struct ice_pkg_ver {
 };
 
 #define ICE_PKG_NAME_SIZE	32
+#define ICE_SEG_NAME_SIZE	28
 
 struct ice_aqc_get_pkg_info {
 	struct ice_pkg_ver ver;
-	char name[ICE_PKG_NAME_SIZE];
+	char name[ICE_SEG_NAME_SIZE];
+	__le32 track_id;
 	u8 is_in_nvm;
 	u8 is_active;
 	u8 is_active_at_boot;
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index da82783d1571..4420fc02f7e7 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -864,8 +864,9 @@ ice_find_seg_in_pkg(struct ice_hw *hw, u32 seg_type,
 	u32 i;
 
 	ice_debug(hw, ICE_DBG_PKG, "Package format version: %d.%d.%d.%d\n",
-		  pkg_hdr->format_ver.major, pkg_hdr->format_ver.minor,
-		  pkg_hdr->format_ver.update, pkg_hdr->format_ver.draft);
+		  pkg_hdr->pkg_format_ver.major, pkg_hdr->pkg_format_ver.minor,
+		  pkg_hdr->pkg_format_ver.update,
+		  pkg_hdr->pkg_format_ver.draft);
 
 	/* Search all package segments for the requested segment type */
 	for (i = 0; i < le32_to_cpu(pkg_hdr->seg_count); i++) {
@@ -1035,13 +1036,15 @@ ice_download_pkg(struct ice_hw *hw, struct ice_seg *ice_seg)
 {
 	struct ice_buf_table *ice_buf_tbl;
 
-	ice_debug(hw, ICE_DBG_PKG, "Segment version: %d.%d.%d.%d\n",
-		  ice_seg->hdr.seg_ver.major, ice_seg->hdr.seg_ver.minor,
-		  ice_seg->hdr.seg_ver.update, ice_seg->hdr.seg_ver.draft);
+	ice_debug(hw, ICE_DBG_PKG, "Segment format version: %d.%d.%d.%d\n",
+		  ice_seg->hdr.seg_format_ver.major,
+		  ice_seg->hdr.seg_format_ver.minor,
+		  ice_seg->hdr.seg_format_ver.update,
+		  ice_seg->hdr.seg_format_ver.draft);
 
 	ice_debug(hw, ICE_DBG_PKG, "Seg: type 0x%X, size %d, name %s\n",
 		  le32_to_cpu(ice_seg->hdr.seg_type),
-		  le32_to_cpu(ice_seg->hdr.seg_size), ice_seg->hdr.seg_name);
+		  le32_to_cpu(ice_seg->hdr.seg_size), ice_seg->hdr.seg_id);
 
 	ice_buf_tbl = ice_find_buf_table(ice_seg);
 
@@ -1086,14 +1089,16 @@ ice_init_pkg_info(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr)
 
 	seg_hdr = ice_find_seg_in_pkg(hw, SEGMENT_TYPE_ICE, pkg_hdr);
 	if (seg_hdr) {
-		hw->ice_pkg_ver = seg_hdr->seg_ver;
-		memcpy(hw->ice_pkg_name, seg_hdr->seg_name,
+		hw->ice_pkg_ver = seg_hdr->seg_format_ver;
+		memcpy(hw->ice_pkg_name, seg_hdr->seg_id,
 		       sizeof(hw->ice_pkg_name));
 
-		ice_debug(hw, ICE_DBG_PKG, "Ice Pkg: %d.%d.%d.%d, %s\n",
-			  seg_hdr->seg_ver.major, seg_hdr->seg_ver.minor,
-			  seg_hdr->seg_ver.update, seg_hdr->seg_ver.draft,
-			  seg_hdr->seg_name);
+		ice_debug(hw, ICE_DBG_PKG, "Ice Seg: %d.%d.%d.%d, %s\n",
+			  seg_hdr->seg_format_ver.major,
+			  seg_hdr->seg_format_ver.minor,
+			  seg_hdr->seg_format_ver.update,
+			  seg_hdr->seg_format_ver.draft,
+			  seg_hdr->seg_id);
 	} else {
 		ice_debug(hw, ICE_DBG_INIT,
 			  "Did not find ice segment in driver package\n");
@@ -1134,9 +1139,11 @@ static enum ice_status ice_get_pkg_info(struct ice_hw *hw)
 		if (pkg_info->pkg_info[i].is_active) {
 			flags[place++] = 'A';
 			hw->active_pkg_ver = pkg_info->pkg_info[i].ver;
+			hw->active_track_id =
+				le32_to_cpu(pkg_info->pkg_info[i].track_id);
 			memcpy(hw->active_pkg_name,
 			       pkg_info->pkg_info[i].name,
-			       sizeof(hw->active_pkg_name));
+			       sizeof(pkg_info->pkg_info[i].name));
 			hw->active_pkg_in_nvm = pkg_info->pkg_info[i].is_in_nvm;
 		}
 		if (pkg_info->pkg_info[i].is_active_at_boot)
@@ -1176,10 +1183,10 @@ static enum ice_status ice_verify_pkg(struct ice_pkg_hdr *pkg, u32 len)
 	if (len < sizeof(*pkg))
 		return ICE_ERR_BUF_TOO_SHORT;
 
-	if (pkg->format_ver.major != ICE_PKG_FMT_VER_MAJ ||
-	    pkg->format_ver.minor != ICE_PKG_FMT_VER_MNR ||
-	    pkg->format_ver.update != ICE_PKG_FMT_VER_UPD ||
-	    pkg->format_ver.draft != ICE_PKG_FMT_VER_DFT)
+	if (pkg->pkg_format_ver.major != ICE_PKG_FMT_VER_MAJ ||
+	    pkg->pkg_format_ver.minor != ICE_PKG_FMT_VER_MNR ||
+	    pkg->pkg_format_ver.update != ICE_PKG_FMT_VER_UPD ||
+	    pkg->pkg_format_ver.draft != ICE_PKG_FMT_VER_DFT)
 		return ICE_ERR_CFG;
 
 	/* pkg must have at least one segment */
@@ -1260,6 +1267,68 @@ static enum ice_status ice_chk_pkg_version(struct ice_pkg_ver *pkg_ver)
 	return 0;
 }
 
+/**
+ * ice_chk_pkg_compat
+ * @hw: pointer to the hardware structure
+ * @ospkg: pointer to the package hdr
+ * @seg: pointer to the package segment hdr
+ *
+ * This function checks the package version compatibility with driver and NVM
+ */
+static enum ice_status
+ice_chk_pkg_compat(struct ice_hw *hw, struct ice_pkg_hdr *ospkg,
+		   struct ice_seg **seg)
+{
+	struct ice_aqc_get_pkg_info_resp *pkg;
+	enum ice_status status;
+	u16 size;
+	u32 i;
+
+	/* Check package version compatibility */
+	status = ice_chk_pkg_version(&hw->pkg_ver);
+	if (status) {
+		ice_debug(hw, ICE_DBG_INIT, "Package version check failed.\n");
+		return status;
+	}
+
+	/* find ICE segment in given package */
+	*seg = (struct ice_seg *)ice_find_seg_in_pkg(hw, SEGMENT_TYPE_ICE,
+						     ospkg);
+	if (!*seg) {
+		ice_debug(hw, ICE_DBG_INIT, "no ice segment in package.\n");
+		return ICE_ERR_CFG;
+	}
+
+	/* Check if FW is compatible with the OS package */
+	size = struct_size(pkg, pkg_info, ICE_PKG_CNT - 1);
+	pkg = kzalloc(size, GFP_KERNEL);
+	if (!pkg)
+		return ICE_ERR_NO_MEMORY;
+
+	status = ice_aq_get_pkg_info_list(hw, pkg, size, NULL);
+	if (status)
+		goto fw_ddp_compat_free_alloc;
+
+	for (i = 0; i < le32_to_cpu(pkg->count); i++) {
+		/* loop till we find the NVM package */
+		if (!pkg->pkg_info[i].is_in_nvm)
+			continue;
+		if ((*seg)->hdr.seg_format_ver.major !=
+			pkg->pkg_info[i].ver.major ||
+		    (*seg)->hdr.seg_format_ver.minor >
+			pkg->pkg_info[i].ver.minor) {
+			status = ICE_ERR_FW_DDP_MISMATCH;
+			ice_debug(hw, ICE_DBG_INIT,
+				  "OS package is not compatible with NVM.\n");
+		}
+		/* done processing NVM package so break */
+		break;
+	}
+fw_ddp_compat_free_alloc:
+	kfree(pkg);
+	return status;
+}
+
 /**
  * ice_init_pkg - initialize/download package
  * @hw: pointer to the hardware structure
@@ -1310,17 +1379,10 @@ enum ice_status ice_init_pkg(struct ice_hw *hw, u8 *buf, u32 len)
 	/* before downloading the package, check package version for
 	 * compatibility with driver
 	 */
-	status = ice_chk_pkg_version(&hw->pkg_ver);
+	status = ice_chk_pkg_compat(hw, pkg, &seg);
 	if (status)
 		return status;
 
-	/* find segment in given package */
-	seg = (struct ice_seg *)ice_find_seg_in_pkg(hw, SEGMENT_TYPE_ICE, pkg);
-	if (!seg) {
-		ice_debug(hw, ICE_DBG_INIT, "no ice segment in package.\n");
-		return ICE_ERR_CFG;
-	}
-
 	/* initialize package hints and then download package */
 	ice_init_pkg_hints(hw, seg);
 	status = ice_download_pkg(hw, seg);
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_type.h b/drivers/net/ethernet/intel/ice/ice_flex_type.h
index 249fb66fc230..a6f391eac8ff 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_type.h
@@ -20,7 +20,7 @@ struct ice_fv {
 
 /* Package and segment headers and tables */
 struct ice_pkg_hdr {
-	struct ice_pkg_ver format_ver;
+	struct ice_pkg_ver pkg_format_ver;
 	__le32 seg_count;
 	__le32 seg_offset[1];
 };
@@ -30,9 +30,9 @@ struct ice_generic_seg_hdr {
 #define SEGMENT_TYPE_METADATA	0x00000001
 #define SEGMENT_TYPE_ICE	0x00000010
 	__le32 seg_type;
-	struct ice_pkg_ver seg_ver;
+	struct ice_pkg_ver seg_format_ver;
 	__le32 seg_size;
-	char seg_name[ICE_PKG_NAME_SIZE];
+	char seg_id[ICE_PKG_NAME_SIZE];
 };
 
 /* ice specific segment */
@@ -75,7 +75,7 @@ struct ice_buf_table {
 struct ice_global_metadata_seg {
 	struct ice_generic_seg_hdr hdr;
 	struct ice_pkg_ver pkg_ver;
-	__le32 track_id;
+	__le32 rsvd;
 	char pkg_name[ICE_PKG_NAME_SIZE];
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 9a05945c6419..5675804ba899 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3077,6 +3077,9 @@ ice_log_pkg_init(struct ice_hw *hw, enum ice_status *status)
 			*status = ICE_ERR_NOT_SUPPORTED;
 		}
 		break;
+	case ICE_ERR_FW_DDP_MISMATCH:
+		dev_err(dev, "The firmware loaded on the device is not compatible with the DDP package.  Please update the device's NVM.  Entering safe mode.\n");
+		break;
 	case ICE_ERR_BUF_TOO_SHORT:
 	case ICE_ERR_CFG:
 		dev_err(dev, "The DDP package file is invalid. Entering Safe Mode.\n");
@@ -5271,6 +5274,8 @@ const char *ice_stat_str(enum ice_status stat_err)
 		return "ICE_ERR_HW_TABLE";
 	case ICE_ERR_DOES_NOT_EXIST:
 		return "ICE_ERR_DOES_NOT_EXIST";
+	case ICE_ERR_FW_DDP_MISMATCH:
+		return "ICE_ERR_FW_DDP_MISMATCH";
 	case ICE_ERR_AQ_ERROR:
 		return "ICE_ERR_AQ_ERROR";
 	case ICE_ERR_AQ_TIMEOUT:
diff --git a/drivers/net/ethernet/intel/ice/ice_status.h b/drivers/net/ethernet/intel/ice/ice_status.h
index a9a8bc3aca42..546a02856d09 100644
--- a/drivers/net/ethernet/intel/ice/ice_status.h
+++ b/drivers/net/ethernet/intel/ice/ice_status.h
@@ -27,6 +27,8 @@ enum ice_status {
 	ICE_ERR_MAX_LIMIT			= -17,
 	ICE_ERR_RESET_ONGOING			= -18,
 	ICE_ERR_HW_TABLE			= -19,
+	ICE_ERR_FW_DDP_MISMATCH			= -20,
+
 	ICE_ERR_NVM_CHECKSUM			= -51,
 	ICE_ERR_BUF_TOO_SHORT			= -52,
 	ICE_ERR_NVM_BLANK_MODE			= -53,
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 88a729e20fe4..06fce408acb0 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -601,6 +601,7 @@ struct ice_hw {
 
 	/* Active package version (currently active) */
 	struct ice_pkg_ver active_pkg_ver;
+	u32 active_track_id;
 	u8 active_pkg_name[ICE_PKG_NAME_SIZE];
 	u8 active_pkg_in_nvm;
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
