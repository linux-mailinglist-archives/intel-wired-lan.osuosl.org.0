Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 90FB59A40EE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Oct 2024 16:18:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 371FC60B22;
	Fri, 18 Oct 2024 14:18:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xKoOXX0t01Lz; Fri, 18 Oct 2024 14:18:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 96E7560B14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729261116;
	bh=77S3StKLJ6oOH4xydyBSn3FvbIes17499imD4EQknfw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lNa+Z7PHy1j+LkqIDOYdTpd2YL/5IjY+IVCDFWvlM4TqWxVZYUR9m/yS1ME6uqf7c
	 ZHamFcQGVaPFzyhiY9DX9AfrPTq/DbOTZm3gclqFhwVDzJ/i7wO8hPmlSEUj2x7P9u
	 LRlt8ayP2tBfu/wA+42yZlIl6OuMM5SBd2vClP1LQiVcUiRgWBfaAKMyxOFlugWod+
	 tIBacoPuRlcIGYfplBONuZ7MP/rRGdz6NOxDX6oolAtmzrGEFfsY2FNEdAnTsWUoId
	 l3P6Rj2NJ7npu0FmOGNHZ3jGMso/KFahX4I1yJlYZLuoLqCI4S25THUBLx1JvB7BVJ
	 7tn1kRI9TGIPA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 96E7560B14;
	Fri, 18 Oct 2024 14:18:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D14C42072
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 14:18:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BEA2C408EA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 14:18:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AAlZojqz5dxL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Oct 2024 14:18:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 150D3408E3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 150D3408E3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 150D3408E3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 14:18:33 +0000 (UTC)
X-CSE-ConnectionGUID: J84ZcR3+Tk+qWntgu9T4Ug==
X-CSE-MsgGUID: cc/WfuyERz+MVGKHotXT4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="46293163"
X-IronPort-AV: E=Sophos;i="6.11,213,1725346800"; d="scan'208";a="46293163"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 07:18:33 -0700
X-CSE-ConnectionGUID: CCQ6P/oSSkKiQxMQdplscQ==
X-CSE-MsgGUID: bDISGa9YQbSLJlw7wh4UCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,213,1725346800"; d="scan'208";a="78929745"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa008.fm.intel.com with ESMTP; 18 Oct 2024 07:18:30 -0700
Received: from pkitszel-desk.tendawifi.com (unknown [10.245.246.186])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 726A02FC65;
 Fri, 18 Oct 2024 15:18:28 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Paul Greenwalt <paul.greenwalt@intel.com>,
 Dan Nowlin <dan.nowlin@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 Simon Horman <horms@kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>
Date: Fri, 18 Oct 2024 16:17:36 +0200
Message-ID: <20241018141823.178918-5-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241018141823.178918-4-przemyslaw.kitszel@intel.com>
References: <20241018141823.178918-4-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729261113; x=1760797113;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iU0q+byX8GPofgxr2B3B753fifZOFZ+goaWJEpGIhB0=;
 b=SI/rkwNg8mgkNa+O5gIN7I6GGbm6mhxOYHM5QhYMpuxI2FJSDlMDvMy9
 wjFXLc3bE0lLRfWw7LnmoaQRhPk2YjiMgB1zyAF4L0BVMpPP9JfbnIYOq
 ym1GX+CsRaW8jipndw9xZ9J0d9BH5pTPVA7Rz/4NkaphYrHaZsAvEog82
 wk8rlV48lRWVpgDRNVel7FOSkS/OkdBsjzf+4kqU6Pkiwj49JVBdTiUwW
 Yd3+936Hjca8Ov0tK9Ekky8CV6gkce4u/1IpWjic5MNJKNp71g98eCAVH
 TFMh5CUVZvD57F2Ps8gjTU7fD/TS9THb5mHpDTuPC5gnB4NORkF0KKPj7
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SI/rkwNg
Subject: [Intel-wired-lan] [PATCH iwl-next v3 1/2] ice: refactor "last"
 segment of DDP pkg
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

Add ice_ddp_send_hunk() that buffers "sent FW hunk" calls to AQ in order
to mark the "last" one in more elegant way. Next commit will add even
more complicated "sent FW" flow, so it's better to untangle a bit before.

Note that metadata buffers were not skipped for NOT-@indicate_last
segments, this is fixed now.

Minor:
 + use ice_is_buffer_metadata() instead of open coding it in
   ice_dwnld_cfg_bufs();
 + ice_dwnld_cfg_bufs_no_lock() + dependencies were moved up a bit to have
   better git-diff, as this function was rewritten (in terms of git-blame)

CC: Paul Greenwalt <paul.greenwalt@intel.com>
CC: Dan Nowlin <dan.nowlin@intel.com>
CC: Ahmed Zaki <ahmed.zaki@intel.com>
CC: Simon Horman <horms@kernel.org>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
git: --inter-hunk-context=6

v3: added ice_ddp_send_ctx_set_err() to avoid "user" code setting
    the ctx->err directly, fix kdoc warnings, removed redundant
    assignement, typo fix, all thanks to Simon
v2: fixed one kdoc warning
---
 drivers/net/ethernet/intel/ice/ice_ddp.c | 288 ++++++++++++-----------
 1 file changed, 151 insertions(+), 137 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
index 272fd823a825..3e1173ef4b5c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
@@ -1210,6 +1210,131 @@ ice_aq_download_pkg(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
 	return status;
 }
 
+/**
+ * ice_is_buffer_metadata - determine if package buffer is a metadata buffer
+ * @buf: pointer to buffer header
+ * Return: whether given @buf is a metadata one.
+ */
+static bool ice_is_buffer_metadata(struct ice_buf_hdr *buf)
+{
+	return le32_to_cpu(buf->section_entry[0].type) & ICE_METADATA_BUF;
+}
+
+/**
+ * struct ice_ddp_send_ctx - sending context of current DDP segment
+ * @hw: pointer to the hardware struct
+ *
+ * Keeps current sending state (header, error) for the purpose of proper "last"
+ * bit setting in ice_aq_download_pkg(). Use via calls to ice_ddp_send_hunk().
+ */
+struct ice_ddp_send_ctx {
+	struct ice_hw *hw;
+/* private: only for ice_ddp_send_hunk() */
+	struct ice_buf_hdr *hdr;
+	int err;
+};
+
+static void ice_ddp_send_ctx_set_err(struct ice_ddp_send_ctx *ctx, int err)
+{
+	ctx->err = err;
+}
+
+/**
+ * ice_ddp_send_hunk - send one hunk of data to FW
+ * @ctx: current segment sending context
+ * @hunk: next hunk to send, size is always ICE_PKG_BUF_SIZE
+ *
+ * Send the next hunk of data to FW, retrying if needed.
+ *
+ * Notice: must be called once more with a NULL @hunk to finish up; such call
+ * will set up the "last" bit of an AQ request. After such call @ctx.hdr is
+ * cleared, @hw is still valid.
+ *
+ * Return: %ICE_DDP_PKG_SUCCESS if there were no problems; a sticky @err
+ *         otherwise.
+ */
+static enum ice_ddp_state ice_ddp_send_hunk(struct ice_ddp_send_ctx *ctx,
+					    struct ice_buf_hdr *hunk)
+{
+	struct ice_buf_hdr *prev_hunk = ctx->hdr;
+	struct ice_hw *hw = ctx->hw;
+	bool prev_was_last = !hunk;
+	enum ice_aq_err aq_err;
+	u32 offset, info;
+	int attempt, err;
+
+	if (ctx->err)
+		return ctx->err;
+
+	ctx->hdr = hunk;
+	if (!prev_hunk)
+		return ICE_DDP_PKG_SUCCESS; /* no problem so far */
+
+	for (attempt = 0; attempt < 5; attempt++) {
+		if (attempt)
+			msleep(20);
+
+		err = ice_aq_download_pkg(hw, prev_hunk, ICE_PKG_BUF_SIZE,
+					  prev_was_last, &offset, &info, NULL);
+
+		aq_err = hw->adminq.sq_last_status;
+		if (aq_err != ICE_AQ_RC_ENOSEC && aq_err != ICE_AQ_RC_EBADSIG)
+			break;
+	}
+
+	if (err) {
+		ice_debug(hw, ICE_DBG_PKG, "Pkg download failed: err %d off %d inf %d\n",
+			  err, offset, info);
+		ctx->err = ice_map_aq_err_to_ddp_state(aq_err);
+	} else if (attempt) {
+		dev_dbg(ice_hw_to_dev(hw),
+			"ice_aq_download_pkg number of retries: %d\n", attempt);
+	}
+
+	return ctx->err;
+}
+
+/**
+ * ice_dwnld_cfg_bufs_no_lock
+ * @ctx: context of the current buffers section to send
+ * @bufs: pointer to an array of buffers
+ * @start: buffer index of first buffer to download
+ * @count: the number of buffers to download
+ *
+ * Downloads package configuration buffers to the firmware. Metadata buffers
+ * are skipped, and the first metadata buffer found indicates that the rest
+ * of the buffers are all metadata buffers.
+ */
+static enum ice_ddp_state
+ice_dwnld_cfg_bufs_no_lock(struct ice_ddp_send_ctx *ctx, struct ice_buf *bufs,
+			   u32 start, u32 count)
+{
+	struct ice_buf_hdr *bh;
+	enum ice_ddp_state err;
+
+	if (!bufs || !count) {
+		ice_ddp_send_ctx_set_err(ctx, ICE_DDP_PKG_ERR);
+		return ICE_DDP_PKG_ERR;
+	}
+
+	bufs += start;
+
+	for (int i = 0; i < count; i++, bufs++) {
+		bh = (struct ice_buf_hdr *)bufs;
+		/* Metadata buffers should not be sent to FW,
+		 * their presence means "we are done here".
+		 */
+		if (ice_is_buffer_metadata(bh))
+			break;
+
+		err = ice_ddp_send_hunk(ctx, bh);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
 /**
  * ice_get_pkg_seg_by_idx
  * @pkg_hdr: pointer to the package header to be searched
@@ -1269,147 +1394,32 @@ ice_is_signing_seg_type_at_idx(struct ice_pkg_hdr *pkg_hdr, u32 idx,
 	return false;
 }
 
-/**
- * ice_is_buffer_metadata - determine if package buffer is a metadata buffer
- * @buf: pointer to buffer header
- */
-static bool ice_is_buffer_metadata(struct ice_buf_hdr *buf)
-{
-	if (le32_to_cpu(buf->section_entry[0].type) & ICE_METADATA_BUF)
-		return true;
-
-	return false;
-}
-
-/**
- * ice_is_last_download_buffer
- * @buf: pointer to current buffer header
- * @idx: index of the buffer in the current sequence
- * @count: the buffer count in the current sequence
- *
- * Note: this routine should only be called if the buffer is not the last buffer
- */
-static bool
-ice_is_last_download_buffer(struct ice_buf_hdr *buf, u32 idx, u32 count)
-{
-	struct ice_buf *next_buf;
-
-	if ((idx + 1) == count)
-		return true;
-
-	/* A set metadata flag in the next buffer will signal that the current
-	 * buffer will be the last buffer downloaded
-	 */
-	next_buf = ((struct ice_buf *)buf) + 1;
-
-	return ice_is_buffer_metadata((struct ice_buf_hdr *)next_buf);
-}
-
-/**
- * ice_dwnld_cfg_bufs_no_lock
- * @hw: pointer to the hardware structure
- * @bufs: pointer to an array of buffers
- * @start: buffer index of first buffer to download
- * @count: the number of buffers to download
- * @indicate_last: if true, then set last buffer flag on last buffer download
- *
- * Downloads package configuration buffers to the firmware. Metadata buffers
- * are skipped, and the first metadata buffer found indicates that the rest
- * of the buffers are all metadata buffers.
- */
-static enum ice_ddp_state
-ice_dwnld_cfg_bufs_no_lock(struct ice_hw *hw, struct ice_buf *bufs, u32 start,
-			   u32 count, bool indicate_last)
-{
-	enum ice_ddp_state state = ICE_DDP_PKG_SUCCESS;
-	struct ice_buf_hdr *bh;
-	enum ice_aq_err err;
-	u32 offset, info, i;
-
-	if (!bufs || !count)
-		return ICE_DDP_PKG_ERR;
-
-	/* If the first buffer's first section has its metadata bit set
-	 * then there are no buffers to be downloaded, and the operation is
-	 * considered a success.
-	 */
-	bh = (struct ice_buf_hdr *)(bufs + start);
-	if (le32_to_cpu(bh->section_entry[0].type) & ICE_METADATA_BUF)
-		return ICE_DDP_PKG_SUCCESS;
-
-	for (i = 0; i < count; i++) {
-		bool last = false;
-		int try_cnt = 0;
-		int status;
-
-		bh = (struct ice_buf_hdr *)(bufs + start + i);
-
-		if (indicate_last)
-			last = ice_is_last_download_buffer(bh, i, count);
-
-		while (1) {
-			status = ice_aq_download_pkg(hw, bh, ICE_PKG_BUF_SIZE,
-						     last, &offset, &info,
-						     NULL);
-			if (hw->adminq.sq_last_status != ICE_AQ_RC_ENOSEC &&
-			    hw->adminq.sq_last_status != ICE_AQ_RC_EBADSIG)
-				break;
-
-			try_cnt++;
-
-			if (try_cnt == 5)
-				break;
-
-			msleep(20);
-		}
-
-		if (try_cnt)
-			dev_dbg(ice_hw_to_dev(hw),
-				"ice_aq_download_pkg number of retries: %d\n",
-				try_cnt);
-
-		/* Save AQ status from download package */
-		if (status) {
-			ice_debug(hw, ICE_DBG_PKG, "Pkg download failed: err %d off %d inf %d\n",
-				  status, offset, info);
-			err = hw->adminq.sq_last_status;
-			state = ice_map_aq_err_to_ddp_state(err);
-			break;
-		}
-
-		if (last)
-			break;
-	}
-
-	return state;
-}
-
 /**
  * ice_download_pkg_sig_seg - download a signature segment
- * @hw: pointer to the hardware structure
+ * @ctx: context of the current buffers section to send
  * @seg: pointer to signature segment
  */
 static enum ice_ddp_state
-ice_download_pkg_sig_seg(struct ice_hw *hw, struct ice_sign_seg *seg)
+ice_download_pkg_sig_seg(struct ice_ddp_send_ctx *ctx, struct ice_sign_seg *seg)
 {
-	return  ice_dwnld_cfg_bufs_no_lock(hw, seg->buf_tbl.buf_array, 0,
-					   le32_to_cpu(seg->buf_tbl.buf_count),
-					   false);
+	return ice_dwnld_cfg_bufs_no_lock(ctx, seg->buf_tbl.buf_array, 0,
+					  le32_to_cpu(seg->buf_tbl.buf_count));
 }
 
 /**
  * ice_download_pkg_config_seg - download a config segment
- * @hw: pointer to the hardware structure
+ * @ctx: context of the current buffers section to send
  * @pkg_hdr: pointer to package header
  * @idx: segment index
  * @start: starting buffer
  * @count: buffer count
  *
  * Note: idx must reference a ICE segment
  */
 static enum ice_ddp_state
-ice_download_pkg_config_seg(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr,
-			    u32 idx, u32 start, u32 count)
+ice_download_pkg_config_seg(struct ice_ddp_send_ctx *ctx,
+			    struct ice_pkg_hdr *pkg_hdr, u32 idx, u32 start,
+			    u32 count)
 {
 	struct ice_buf_table *bufs;
 	struct ice_seg *seg;
@@ -1425,46 +1435,44 @@ ice_download_pkg_config_seg(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr,
 	if (start >= buf_count || start + count > buf_count)
 		return ICE_DDP_PKG_ERR;
 
-	return  ice_dwnld_cfg_bufs_no_lock(hw, bufs->buf_array, start, count,
-					   true);
+	return ice_dwnld_cfg_bufs_no_lock(ctx, bufs->buf_array, start, count);
 }
 
 /**
  * ice_dwnld_sign_and_cfg_segs - download a signing segment and config segment
- * @hw: pointer to the hardware structure
+ * @ctx: context of the current buffers section to send
  * @pkg_hdr: pointer to package header
  * @idx: segment index (must be a signature segment)
  *
  * Note: idx must reference a signature segment
  */
 static enum ice_ddp_state
-ice_dwnld_sign_and_cfg_segs(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr,
-			    u32 idx)
+ice_dwnld_sign_and_cfg_segs(struct ice_ddp_send_ctx *ctx,
+			    struct ice_pkg_hdr *pkg_hdr, u32 idx)
 {
 	enum ice_ddp_state state;
 	struct ice_sign_seg *seg;
 	u32 conf_idx;
 	u32 start;
 	u32 count;
 
 	seg = (struct ice_sign_seg *)ice_get_pkg_seg_by_idx(pkg_hdr, idx);
 	if (!seg) {
 		state = ICE_DDP_PKG_ERR;
-		goto exit;
+		ice_ddp_send_ctx_set_err(ctx, state);
+		return state;
 	}
 
 	count = le32_to_cpu(seg->signed_buf_count);
-	state = ice_download_pkg_sig_seg(hw, seg);
+	state = ice_download_pkg_sig_seg(ctx, seg);
 	if (state || !count)
-		goto exit;
+		return state;
 
 	conf_idx = le32_to_cpu(seg->signed_seg_idx);
 	start = le32_to_cpu(seg->signed_buf_start);
 
-	state = ice_download_pkg_config_seg(hw, pkg_hdr, conf_idx, start,
+	state = ice_download_pkg_config_seg(ctx, pkg_hdr, conf_idx, start,
 					    count);
-
-exit:
 	return state;
 }
 
@@ -1519,6 +1527,7 @@ ice_download_pkg_with_sig_seg(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr)
 {
 	enum ice_aq_err aq_err = hw->adminq.sq_last_status;
 	enum ice_ddp_state state = ICE_DDP_PKG_ERR;
+	struct ice_ddp_send_ctx ctx = { .hw = hw };
 	int status;
 	u32 i;
 
@@ -1539,7 +1548,9 @@ ice_download_pkg_with_sig_seg(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr)
 						    hw->pkg_sign_type))
 			continue;
 
-		state = ice_dwnld_sign_and_cfg_segs(hw, pkg_hdr, i);
+		ice_dwnld_sign_and_cfg_segs(&ctx, pkg_hdr, i);
+		/* finish up by sending last hunk with "last" flag set */
+		state = ice_ddp_send_hunk(&ctx, NULL);
 		if (state)
 			break;
 	}
@@ -1564,29 +1575,32 @@ ice_download_pkg_with_sig_seg(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr)
 static enum ice_ddp_state
 ice_dwnld_cfg_bufs(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
 {
+	struct ice_ddp_send_ctx ctx = { .hw = hw };
 	enum ice_ddp_state state;
 	struct ice_buf_hdr *bh;
 	int status;
 
 	if (!bufs || !count)
 		return ICE_DDP_PKG_ERR;
 
 	/* If the first buffer's first section has its metadata bit set
 	 * then there are no buffers to be downloaded, and the operation is
 	 * considered a success.
 	 */
 	bh = (struct ice_buf_hdr *)bufs;
-	if (le32_to_cpu(bh->section_entry[0].type) & ICE_METADATA_BUF)
+	if (ice_is_buffer_metadata(bh))
 		return ICE_DDP_PKG_SUCCESS;
 
 	status = ice_acquire_global_cfg_lock(hw, ICE_RES_WRITE);
 	if (status) {
 		if (status == -EALREADY)
 			return ICE_DDP_PKG_ALREADY_LOADED;
 		return ice_map_aq_err_to_ddp_state(hw->adminq.sq_last_status);
 	}
 
-	state = ice_dwnld_cfg_bufs_no_lock(hw, bufs, 0, count, true);
+	ice_dwnld_cfg_bufs_no_lock(&ctx, bufs, 0, count);
+	/* finish up by sending last hunk with "last" flag set */
+	state = ice_ddp_send_hunk(&ctx, NULL);
 	if (!state)
 		state = ice_post_dwnld_pkg_actions(hw);
 
-- 
2.46.0

