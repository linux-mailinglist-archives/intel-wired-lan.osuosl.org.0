Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 891157E4739
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Nov 2023 18:40:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 21C2361460;
	Tue,  7 Nov 2023 17:40:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 21C2361460
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699378850;
	bh=MAgqeaAKV4bsFpei8cy16bPBHgX6hnxRT/Vu3uoCA1c=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=H+rxGsP7hRNTv8UIKnSZP3DpSxE3anUdGDyIZaMBOz39kZyK+HgXE61vLxScpaxWP
	 PznNBU6FXHRa32t4Bos5yNeH/x+1kDNiXDBkKdpeBtcCuG7ZVkJl/wBqZ23tEliPmP
	 KMhetfpZq4JQ1kDLtBAHojt9s3QHgML/zpjz2eElXV5ZmvqC104C4mxV9G0/IaDiy7
	 NzIl4TsMfNj2+Mqs/usXHhTLu5K2TwgGUuXFhhk3nY1B6WNpy2NtsnnUfvVNDSeHsM
	 5TrfXzPxXfUEsZqhOiJA9cIKJZzPCmC5QykLG9ebmG5zD2UbLosaR43SCFTjq2AonH
	 qWpUUKeH9hs9Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hZ6y8giGVPd3; Tue,  7 Nov 2023 17:40:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C1BBB61446;
	Tue,  7 Nov 2023 17:40:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C1BBB61446
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 54C271BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Nov 2023 17:40:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2C09A421FB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Nov 2023 17:40:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C09A421FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xFYEgazEwPtV for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Nov 2023 17:40:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 09037405C4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Nov 2023 17:40:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 09037405C4
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="379966757"
X-IronPort-AV: E=Sophos;i="6.03,284,1694761200"; d="scan'208";a="379966757"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2023 09:40:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="879894166"
X-IronPort-AV: E=Sophos;i="6.03,284,1694761200"; d="scan'208";a="879894166"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.244.154])
 by fmsmga002.fm.intel.com with ESMTP; 07 Nov 2023 09:40:39 -0800
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  7 Nov 2023 12:32:27 -0500
Message-ID: <20231107173227.862417-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699378842; x=1730914842;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=J0TcrzXGQz0pEEW2aauhG6IXnihUc5Hx1HooNK4d4lw=;
 b=Hg2epZFJPQS4S91zImGw6yiUv6vouV/r0vcRWUIJWBBA0A0XOkVaWeGT
 KCTlt/yAJPKyJw88Gvi8eHTua9KiUaxhhHrjFSmgNMeosKHOZvrKMkZf0
 +48N1UzUPYxa2UpMyoGk0LDXFAt3RIwECBR9HFRCvy5l1UmFgUcMWUyJq
 VNRpMvPXdaYCE6EgwzLwFaJECGj0uKKuyWrcVRLo7AELQoYWTdLAx50ZH
 bKqFOVEDW4zw9WWzYthP873IFVbTOdT5MYQIky1vV5/Wjfsq4k5R9NziQ
 QRYzDStlBngomW6bfRSIv3g4qBfDqHGr0DbVyESM7+tAaO0WAYqJ9Umnu
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Hg2epZFJ
Subject: [Intel-wired-lan] [PATCH iwl-net v3] ice: fix DDP package download
 for packages without signature segment
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
Cc: Dan Nowlin <dan.nowlin@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, Jacob Keller <jacob.e.keller@intel.com>,
 anthony.l.nguyen@intel.com, Paul Greenwalt <paul.greenwalt@intel.com>,
 horms@kernel.org, Wojciech Drewek <wojciech.drewek@intel.com>, kuba@kernel.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Dan Nowlin <dan.nowlin@intel.com>

Commit 3cbdb0343022 ("ice: Add support for E830 DDP package segment")
incorrectly removed support for package download for packages without a
signature segment. These packages include the signature buffer inline
in the configurations buffers, and not in a signature segment.

Fix package download by providing download support for both packages
with (ice_download_pkg_with_sig_seg()) and without signature segment
(ice_download_pkg_without_sig_seg()).

Fixes: 3cbdb0343022 ("ice: Add support for E830 DDP package segment")
Reported-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Closes: https://lore.kernel.org/netdev/ZUT50a94kk2pMGKb@boxer/
Tested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
Changelog
v2->v3:
- correct Changelog version tag, add Closes, Tested-by and Reviewed-by.
  Remove unnecessary local variable initialization in ice_dwnld_cfg_bufs(),
  and unnecessary local variable in ice_download_pkg_without_sig_seg(),
v1->v2:
- correct Reported-by email address.
---
 drivers/net/ethernet/intel/ice/ice_ddp.c | 103 ++++++++++++++++++++++-
 1 file changed, 100 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
index cfb1580f5850..8b7504a9df31 100644
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
@@ -1519,6 +1519,103 @@ ice_download_pkg(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr)
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
+	enum ice_ddp_state state;
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
+	return ice_dwnld_cfg_bufs(hw, ice_buf_tbl->buf_array,
+				  le32_to_cpu(ice_buf_tbl->buf_count));
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
@@ -2083,7 +2180,7 @@ enum ice_ddp_state ice_init_pkg(struct ice_hw *hw, u8 *buf, u32 len)
 
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
