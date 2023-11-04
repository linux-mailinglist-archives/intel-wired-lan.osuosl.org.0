Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C61037E109F
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Nov 2023 19:37:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 553124031C;
	Sat,  4 Nov 2023 18:37:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 553124031C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699123051;
	bh=ut0LdBDl2lTEtbL1jMxUWefHK0UWduVoQRDzPtQEyBQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=JVFFf0N3ARo8DGY4iCh7SyWZzQbwHH2iJWh0J5/tHE2P1UcUklL3E6PCtiAXottIJ
	 Auligz5LRjkjfDL3ctwmj8MJadSJeoDJF8kq7NLxdX0JcrsHvS4LPFpN5rlqOolj70
	 HHBAAoXZiNs6vVV9bL01uuCRxdRR3iPHMnnZxhS5AUffrR27AWzp/kUSJIR6W4BU1J
	 GZj3yoxUIyPjErW19/GY2jij16/oHI0siQvzw21JYUPzlqoO2OWvK/n7EFfTo/PHRC
	 gnSIg1fDlRKczXJsUWLDtvz8m1NygAHBDHTeQuKou27uA0Rh+Y3e+VuPVUipXzIp9d
	 hguete42/Jnqg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rlzmZXeNeBaY; Sat,  4 Nov 2023 18:37:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3F9D240164;
	Sat,  4 Nov 2023 18:37:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F9D240164
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B7D311BF5AE
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Nov 2023 18:37:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 97ECE60F1F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Nov 2023 18:37:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97ECE60F1F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RlEOsJTt3-UV for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Nov 2023 18:37:17 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9536660EC6
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Nov 2023 18:37:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9536660EC6
X-IronPort-AV: E=McAfee;i="6600,9927,10884"; a="392992924"
X-IronPort-AV: E=Sophos;i="6.03,277,1694761200"; d="scan'208";a="392992924"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2023 11:37:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10884"; a="765569065"
X-IronPort-AV: E=Sophos;i="6.03,277,1694761200"; d="scan'208";a="765569065"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.244.154])
 by fmsmga007.fm.intel.com with ESMTP; 04 Nov 2023 11:37:15 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sat,  4 Nov 2023 14:29:08 -0400
Message-ID: <20231104182908.15389-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699123037; x=1730659037;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=W4m8E+y9MlhAPzpQa6M9nO2ByifvaTN9aiodRx/iHQI=;
 b=XupD/TvVYEvYRVIwexf+cm6+8waXXuj1zWoQTED0uQ/UX5wtcWsDWvVI
 AiDIvwVH8irUQFhUSOirGvJjjEyfCAufRNFtA7iREjSR7guYFpXR5+vjA
 UWUKOCUEpFIluXiBUEE1uS832T4rgnawoNAH3dNanhoqHHAGT9C+XL9ka
 Mv2ROiz1M5Ock6+8FqWm7mE8V8TtjghE1m1w1hSz2EudSufyyBxG1uN+2
 zNDsukfy3nH0I+gDtE7yflzxlPwl+x+ntKcsYFUQwmtXNy/2BF8vF5NoK
 2zCLh/QXktvVRnyLBaTMRUWfj53AkYqPlIt89LIjz6CJfMded0oUKYSRm
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=fail reason="signature verification failed" (2048-bit key)
 header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel
 header.b=XupD/TvV
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix DDP package download for
 packages without signature segment
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
Cc: Dan Nowlin <dan.nowlin@intel.com>, Maciej <maciej.fijalkowski@intel.com>,
 netdev@vger.kernel.org, jesse.brandeburg@intel.com, Fijalkowski@osuosl.org,
 anthony.l.nguyen@intel.com, Paul Greenwalt <paul.greenwalt@intel.com>,
 horms@kernel.org, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Dan Nowlin <dan.nowlin@intel.com>

Commit 3cbdb0343022 ("ice: Add support for E830 DDP package segment")
incorrectly removed support for package download for packages without a
signature segment. These packages include the signature buffer inline
in the configurations buffers, and do not in a signature segment.

Fix package download by providing download support for both packages
with (ice_download_pkg_with_sig_seg()) and without signature segment
(ice_download_pkg_without_sig_seg()).

Fixes: 3cbdb0343022 ("ice: Add support for E830 DDP package segment")
Reported-by: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>
Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ddp.c | 106 ++++++++++++++++++++++-
 1 file changed, 103 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
index cfb1580f5850..3f1a11d0252c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
@@ -1479,14 +1479,14 @@ ice_post_dwnld_pkg_actions(struct ice_hw *hw)
 }
 
 /**
- * ice_download_pkg
+ * ice_download_pkg_with_sig_seg
  * @hw: pointer to the hardware structure
  * @pkg_hdr: pointer to package header
  *
  * Handles the download of a complete package.
  */
 static enum ice_ddp_state
-ice_download_pkg(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr)
+ice_download_pkg_with_sig_seg(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr)
 {
 	enum ice_aq_err aq_err = hw->adminq.sq_last_status;
 	enum ice_ddp_state state = ICE_DDP_PKG_ERR;
@@ -1519,6 +1519,106 @@ ice_download_pkg(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr)
 		state = ice_post_dwnld_pkg_actions(hw);
 
 	ice_release_global_cfg_lock(hw);
+
+	return state;
+}
+
+/**
+ * ice_dwnld_cfg_bufs
+ * @hw: pointer to the hardware structure
+ * @bufs: pointer to an array of buffers
+ * @count: the number of buffers in the array
+ *
+ * Obtains global config lock and downloads the package configuration buffers
+ * to the firmware.
+ */
+static enum ice_ddp_state
+ice_dwnld_cfg_bufs(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
+{
+	enum ice_ddp_state state = ICE_DDP_PKG_SUCCESS;
+	struct ice_buf_hdr *bh;
+	int status;
+
+	if (!bufs || !count)
+		return ICE_DDP_PKG_ERR;
+
+	/* If the first buffer's first section has its metadata bit set
+	 * then there are no buffers to be downloaded, and the operation is
+	 * considered a success.
+	 */
+	bh = (struct ice_buf_hdr *)bufs;
+	if (le32_to_cpu(bh->section_entry[0].type) & ICE_METADATA_BUF)
+		return ICE_DDP_PKG_SUCCESS;
+
+	status = ice_acquire_global_cfg_lock(hw, ICE_RES_WRITE);
+	if (status) {
+		if (status == -EALREADY)
+			return ICE_DDP_PKG_ALREADY_LOADED;
+		return ice_map_aq_err_to_ddp_state(hw->adminq.sq_last_status);
+	}
+
+	state = ice_dwnld_cfg_bufs_no_lock(hw, bufs, 0, count, true);
+	if (!state)
+		state = ice_post_dwnld_pkg_actions(hw);
+
+	ice_release_global_cfg_lock(hw);
+
+	return state;
+}
+
+/**
+ * ice_download_pkg_without_sig_seg
+ * @hw: pointer to the hardware structure
+ * @ice_seg: pointer to the segment of the package to be downloaded
+ *
+ * Handles the download of a complete package without signature segment.
+ */
+static enum ice_ddp_state
+ice_download_pkg_without_sig_seg(struct ice_hw *hw, struct ice_seg *ice_seg)
+{
+	struct ice_buf_table *ice_buf_tbl;
+	enum ice_ddp_state state;
+
+	ice_debug(hw, ICE_DBG_PKG, "Segment format version: %d.%d.%d.%d\n",
+		  ice_seg->hdr.seg_format_ver.major,
+		  ice_seg->hdr.seg_format_ver.minor,
+		  ice_seg->hdr.seg_format_ver.update,
+		  ice_seg->hdr.seg_format_ver.draft);
+
+	ice_debug(hw, ICE_DBG_PKG, "Seg: type 0x%X, size %d, name %s\n",
+		  le32_to_cpu(ice_seg->hdr.seg_type),
+		  le32_to_cpu(ice_seg->hdr.seg_size), ice_seg->hdr.seg_id);
+
+	ice_buf_tbl = ice_find_buf_table(ice_seg);
+
+	ice_debug(hw, ICE_DBG_PKG, "Seg buf count: %d\n",
+		  le32_to_cpu(ice_buf_tbl->buf_count));
+
+	state = ice_dwnld_cfg_bufs(hw, ice_buf_tbl->buf_array,
+				   le32_to_cpu(ice_buf_tbl->buf_count));
+
+	return state;
+}
+
+/**
+ * ice_download_pkg
+ * @hw: pointer to the hardware structure
+ * @pkg_hdr: pointer to package header
+ * @ice_seg: pointer to the segment of the package to be downloaded
+ *
+ * Handles the download of a complete package.
+ */
+static enum ice_ddp_state
+ice_download_pkg(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr,
+		 struct ice_seg *ice_seg)
+{
+	enum ice_ddp_state state;
+
+	if (hw->pkg_has_signing_seg)
+		state = ice_download_pkg_with_sig_seg(hw, pkg_hdr);
+	else
+		state = ice_download_pkg_without_sig_seg(hw, ice_seg);
+
 	ice_post_pkg_dwnld_vlan_mode_cfg(hw);
 
 	return state;
@@ -2083,7 +2183,7 @@ enum ice_ddp_state ice_init_pkg(struct ice_hw *hw, u8 *buf, u32 len)
 
 	/* initialize package hints and then download package */
 	ice_init_pkg_hints(hw, seg);
-	state = ice_download_pkg(hw, pkg);
+	state = ice_download_pkg(hw, pkg, seg);
 	if (state == ICE_DDP_PKG_ALREADY_LOADED) {
 		ice_debug(hw, ICE_DBG_INIT,
 			  "package previously loaded - no work.\n");

base-commit: 016b9332a3346e97a6cacffea0f9dc10e1235a75
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
