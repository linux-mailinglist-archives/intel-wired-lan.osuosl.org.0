Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A0C9A40F1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Oct 2024 16:18:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7321460B2D;
	Fri, 18 Oct 2024 14:18:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sOK3zVPsdRi4; Fri, 18 Oct 2024 14:18:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 61AA860B27
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729261119;
	bh=EZH1BzP10Wdn25V9YJY/LJpAafYEgeZxOcxskj0tPWI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=N0t9hpoHjgRg2hKKpAThIU3ajnFF3jabemHn8Vl0R8lfgEgiJhADoWawiiLLEmRvP
	 YlFRLUqBeSewqrgbVxtN7OMecyJejqRb38Iplf3jh9AtaP2u2FAU7hcOSI9WkKiqI3
	 rrn2Ctmo8WHauQezp58GUpgBvLtBwTMwgMGVgdU4ifkf7kae4tYwvqiRRYNCoxDvol
	 JNDEXeugW1CqBYdWkkmKTfCNMGGhrPE/wVsaLJNx0bQzZ8uOqQ9CMsh6Wl9oM3j1m4
	 EmXfyKri8W/VxmzPAUKk3v/aGPDsl72NGfuF4aPeeedDKc2+NOR1YpJ8EgSWAXnXtP
	 pX2nan92JCFWQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 61AA860B27;
	Fri, 18 Oct 2024 14:18:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 913982804
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 14:18:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7FB9E408E3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 14:18:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NMu_Kt9WCfGA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Oct 2024 14:18:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 78100408E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78100408E5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 78100408E5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 14:18:34 +0000 (UTC)
X-CSE-ConnectionGUID: U8LcHfCWR+ixtWLtxr8w0A==
X-CSE-MsgGUID: tD/d1K0PROWkygsBnWemiw==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="46293166"
X-IronPort-AV: E=Sophos;i="6.11,213,1725346800"; d="scan'208";a="46293166"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 07:18:34 -0700
X-CSE-ConnectionGUID: XzIAdjJ4QiCcmKcyoKoefw==
X-CSE-MsgGUID: G++cKWF7ROSHu7a6XlkMzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,213,1725346800"; d="scan'208";a="78929748"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa008.fm.intel.com with ESMTP; 18 Oct 2024 07:18:32 -0700
Received: from pkitszel-desk.tendawifi.com (unknown [10.245.246.186])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id DE4FC2FC66;
 Fri, 18 Oct 2024 15:18:29 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Paul Greenwalt <paul.greenwalt@intel.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>, Dan Nowlin <dan.nowlin@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>
Date: Fri, 18 Oct 2024 16:17:37 +0200
Message-ID: <20241018141823.178918-6-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241018141823.178918-4-przemyslaw.kitszel@intel.com>
References: <20241018141823.178918-4-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729261114; x=1760797114;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YwRF5hN8LiWMHJW+vgahFBnhO7gtBweNzskldU/Lyg4=;
 b=h9oEkOTRDlqWVG0R3+t/5SsY69017EI90fBbQJSJYpqBGYJua2XtuX28
 VCVfOMOBE73xAPCgPmHCUGu2InzhOXAqmqbKsV2gtvQNSHjM4NuFcIxN/
 tRv6DaoKNMH5Ygc9n29WRR2lXGb7R73eokZiFRfXYQdKAJn254NKupr5h
 a8I4W358kbsmb2V/ToqJMPJre4HozkZ6Ai4LxON7yzPIyCzA+va14PInm
 wsx9rG84KUw1KP7KDvdNoNg1rQyXMOj1nujWi4DHwovl0bc0gK6GI+8RV
 xa8lQam4fsjFlyMeIfqOZqaCVYK7HHBk/O1z5lkCklKPI4NgrbJvYT28A
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h9oEkOTR
Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/2] ice: support optional
 flags in signature segment header
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

An optional flag field has been added to the signature segment header.
The field contains two flags, a "valid" bit, and a "last segment" bit
that indicates whether the segment is the last segment that will be
sent to firmware.

If the flag field's valid bit is NOT set, then as was done before,
assume that this is the last segment being downloaded.

However, if the flag field's valid bit IS set, then use the last segment
flag to determine if this segment is the last segment to download.

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
Co-developed-by: Dan Nowlin <dan.nowlin@intel.com>
Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
v2: co/- authorship change
---
 drivers/net/ethernet/intel/ice/ice_ddp.h |  5 ++++-
 drivers/net/ethernet/intel/ice/ice_ddp.c | 21 +++++++++++++++------
 2 files changed, 19 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.h b/drivers/net/ethernet/intel/ice/ice_ddp.h
index 79551da2a4b0..8a2d57fc5dae 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.h
@@ -181,7 +181,10 @@ struct ice_sign_seg {
 	__le32 signed_seg_idx;
 	__le32 signed_buf_start;
 	__le32 signed_buf_count;
-#define ICE_SIGN_SEG_RESERVED_COUNT	44
+#define ICE_SIGN_SEG_FLAGS_VALID	0x80000000
+#define ICE_SIGN_SEG_FLAGS_LAST		0x00000001
+	__le32 flags;
+#define ICE_SIGN_SEG_RESERVED_COUNT	40
 	u8 reserved[ICE_SIGN_SEG_RESERVED_COUNT];
 	struct ice_buf_table buf_tbl;
 };
diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
index 3e1173ef4b5c..5a70854b0ca2 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
@@ -1438,23 +1438,27 @@ ice_download_pkg_config_seg(struct ice_ddp_send_ctx *ctx,
 	return ice_dwnld_cfg_bufs_no_lock(ctx, bufs->buf_array, start, count);
 }
 
+static bool ice_is_last_sign_seg(u32 flags)
+{
+	return !(flags & ICE_SIGN_SEG_FLAGS_VALID) /* behavior prior to valid */
+	       || (flags & ICE_SIGN_SEG_FLAGS_LAST);
+}
+
 /**
  * ice_dwnld_sign_and_cfg_segs - download a signing segment and config segment
  * @ctx: context of the current buffers section to send
  * @pkg_hdr: pointer to package header
  * @idx: segment index (must be a signature segment)
  *
  * Note: idx must reference a signature segment
  */
 static enum ice_ddp_state
 ice_dwnld_sign_and_cfg_segs(struct ice_ddp_send_ctx *ctx,
 			    struct ice_pkg_hdr *pkg_hdr, u32 idx)
 {
+	u32 conf_idx, start, count, flags;
 	enum ice_ddp_state state;
 	struct ice_sign_seg *seg;
-	u32 conf_idx;
-	u32 start;
-	u32 count;
 
 	seg = (struct ice_sign_seg *)ice_get_pkg_seg_by_idx(pkg_hdr, idx);
 	if (!seg) {
@@ -1473,6 +1477,13 @@ ice_dwnld_sign_and_cfg_segs(struct ice_ddp_send_ctx *ctx,
 
 	state = ice_download_pkg_config_seg(ctx, pkg_hdr, conf_idx, start,
 					    count);
+
+	/* finish up by sending last hunk with "last" flag set if requested by
+	 * DDP content */
+	flags = le32_to_cpu(seg->flags);
+	if (ice_is_last_sign_seg(flags))
+		state = ice_ddp_send_hunk(ctx, NULL);
+
 	return state;
 }
 
@@ -1548,9 +1559,7 @@ ice_download_pkg_with_sig_seg(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr)
 						    hw->pkg_sign_type))
 			continue;
 
-		ice_dwnld_sign_and_cfg_segs(&ctx, pkg_hdr, i);
-		/* finish up by sending last hunk with "last" flag set */
-		state = ice_ddp_send_hunk(&ctx, NULL);
+		state = ice_dwnld_sign_and_cfg_segs(&ctx, pkg_hdr, i);
 		if (state)
 			break;
 	}
-- 
2.46.0

