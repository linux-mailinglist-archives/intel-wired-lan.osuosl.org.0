Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4203732A940
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Mar 2021 19:24:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DEFEE83AAB;
	Tue,  2 Mar 2021 18:24:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H9FnXY61tl1v; Tue,  2 Mar 2021 18:24:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B56D683AA0;
	Tue,  2 Mar 2021 18:24:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A6791BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:23:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 021ED4EB9A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:23:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2d32qh-EHa8x for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Mar 2021 18:23:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ED0964EB76
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:23:57 +0000 (UTC)
IronPort-SDR: 2UpVcdpJSZqSaUrGPx1UD9XJyIvBBUAk7WiXMwbzD05DRukL2tHL6W9maZ6KmGmhHGpOn9zfu1
 +9LkrApipOwg==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="174062072"
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="174062072"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 10:21:47 -0800
IronPort-SDR: wdjivkBVEJ7wagH4EVfJuJHYQ8cLswTljQ1Lh8fOFDYq5jV7PeAVl78xz/LvteEMyoyPnkmHYD
 +FFk7EGPVUUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="369051169"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga006.jf.intel.com with ESMTP; 02 Mar 2021 10:21:45 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Mar 2021 10:12:04 -0800
Message-Id: <20210302181213.51718-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210302181213.51718-1-anthony.l.nguyen@intel.com>
References: <20210302181213.51718-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S55 05/14] ice: Update to use package info
 from ice segment
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

From: Dan Nowlin <dan.nowlin@intel.com>

There are two package versions in the package binary. Today, these two
version numbers are the same. However, in the future that may change.

Update code to use the package info from the ice segment metadata
section, which is the package information that is actually downloaded to
the firmware during the download package process.

Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  1 +
 .../net/ethernet/intel/ice/ice_flex_pipe.c    | 40 ++++++++++---------
 .../net/ethernet/intel/ice/ice_flex_type.h    |  9 +++++
 drivers/net/ethernet/intel/ice/ice_type.h     |  8 ++--
 4 files changed, 36 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 770c99a5d181..8c22d0cda153 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1807,6 +1807,7 @@ struct ice_pkg_ver {
 };
 
 #define ICE_PKG_NAME_SIZE	32
+#define ICE_SEG_ID_SIZE		28
 #define ICE_SEG_NAME_SIZE	28
 
 struct ice_aqc_get_pkg_info {
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index 88a0c2daf29f..01d6a64a5a27 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -1063,32 +1063,36 @@ ice_download_pkg(struct ice_hw *hw, struct ice_seg *ice_seg)
 static enum ice_status
 ice_init_pkg_info(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr)
 {
-	struct ice_global_metadata_seg *meta_seg;
 	struct ice_generic_seg_hdr *seg_hdr;
 
 	if (!pkg_hdr)
 		return ICE_ERR_PARAM;
 
-	meta_seg = (struct ice_global_metadata_seg *)
-		   ice_find_seg_in_pkg(hw, SEGMENT_TYPE_METADATA, pkg_hdr);
-	if (meta_seg) {
-		hw->pkg_ver = meta_seg->pkg_ver;
-		memcpy(hw->pkg_name, meta_seg->pkg_name, sizeof(hw->pkg_name));
+	seg_hdr = ice_find_seg_in_pkg(hw, SEGMENT_TYPE_ICE, pkg_hdr);
+	if (seg_hdr) {
+		struct ice_meta_sect *meta;
+		struct ice_pkg_enum state;
+
+		memset(&state, 0, sizeof(state));
+
+		/* Get package information from the Metadata Section */
+		meta = ice_pkg_enum_section((struct ice_seg *)seg_hdr, &state,
+					    ICE_SID_METADATA);
+		if (!meta) {
+			ice_debug(hw, ICE_DBG_INIT, "Did not find ice metadata section in package\n");
+			return ICE_ERR_CFG;
+		}
+
+		hw->pkg_ver = meta->ver;
+		memcpy(hw->pkg_name, meta->name, sizeof(meta->name));
 
 		ice_debug(hw, ICE_DBG_PKG, "Pkg: %d.%d.%d.%d, %s\n",
-			  meta_seg->pkg_ver.major, meta_seg->pkg_ver.minor,
-			  meta_seg->pkg_ver.update, meta_seg->pkg_ver.draft,
-			  meta_seg->pkg_name);
-	} else {
-		ice_debug(hw, ICE_DBG_INIT, "Did not find metadata segment in driver package\n");
-		return ICE_ERR_CFG;
-	}
+			  meta->ver.major, meta->ver.minor, meta->ver.update,
+			  meta->ver.draft, meta->name);
 
-	seg_hdr = ice_find_seg_in_pkg(hw, SEGMENT_TYPE_ICE, pkg_hdr);
-	if (seg_hdr) {
-		hw->ice_pkg_ver = seg_hdr->seg_format_ver;
-		memcpy(hw->ice_pkg_name, seg_hdr->seg_id,
-		       sizeof(hw->ice_pkg_name));
+		hw->ice_seg_fmt_ver = seg_hdr->seg_format_ver;
+		memcpy(hw->ice_seg_id, seg_hdr->seg_id,
+		       sizeof(hw->ice_seg_id));
 
 		ice_debug(hw, ICE_DBG_PKG, "Ice Seg: %d.%d.%d.%d, %s\n",
 			  seg_hdr->seg_format_ver.major,
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_type.h b/drivers/net/ethernet/intel/ice/ice_flex_type.h
index 2221ae3b22f6..bc20cff7ab9d 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_type.h
@@ -109,6 +109,7 @@ struct ice_buf_hdr {
 	(ent_sz))
 
 /* ice package section IDs */
+#define ICE_SID_METADATA		1
 #define ICE_SID_XLT0_SW			10
 #define ICE_SID_XLT_KEY_BUILDER_SW	11
 #define ICE_SID_XLT1_SW			12
@@ -117,6 +118,14 @@ struct ice_buf_hdr {
 #define ICE_SID_PROFID_REDIR_SW		15
 #define ICE_SID_FLD_VEC_SW		16
 #define ICE_SID_CDID_KEY_BUILDER_SW	17
+
+struct ice_meta_sect {
+	struct ice_pkg_ver ver;
+#define ICE_META_SECT_NAME_SIZE	28
+	char name[ICE_META_SECT_NAME_SIZE];
+	__le32 track_id;
+};
+
 #define ICE_SID_CDID_REDIR_SW		18
 
 #define ICE_SID_XLT0_ACL		20
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 420fd487fd57..8545cba987b1 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -805,13 +805,13 @@ struct ice_hw {
 
 	enum ice_aq_err pkg_dwnld_status;
 
-	/* Driver's package ver - (from the Metadata seg) */
+	/* Driver's package ver - (from the Ice Metadata section) */
 	struct ice_pkg_ver pkg_ver;
 	u8 pkg_name[ICE_PKG_NAME_SIZE];
 
-	/* Driver's Ice package version (from the Ice seg) */
-	struct ice_pkg_ver ice_pkg_ver;
-	u8 ice_pkg_name[ICE_PKG_NAME_SIZE];
+	/* Driver's Ice segment format version and ID (from the Ice seg) */
+	struct ice_pkg_ver ice_seg_fmt_ver;
+	u8 ice_seg_id[ICE_SEG_ID_SIZE];
 
 	/* Pointer to the ice segment */
 	struct ice_seg *seg;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
