Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F37C97507B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Sep 2024 13:10:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF11F60A61;
	Wed, 11 Sep 2024 11:09:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S1pKZiYlrx6W; Wed, 11 Sep 2024 11:09:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E48E560AEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726052998;
	bh=eO4FBezSK0Y+XKnBtLOS4lSpPWJYwCSFcS0ZC95Iy6M=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JE8ESc8vqkIeDRJ3HoDfs3Ufq2hTU8aQ/4ehiO/CKlErdsmWyztlaisTdcmfAtMRS
	 wykJPfFu/4+kx7wx627qclexB046W20l46iSkulKYkL92OZh0IpTDExNVi/XzOOeTR
	 3wLZwE4Om7oviwvFUUNN1AHXNtZ4yAUZtnr+eDA2RnQ2Zu5GxF4lWx/Evz2JpQP8n+
	 8dwmE//hrbssCFKBlS0PI5jRE0Pj1pIVFdiFxPhtBYtQSubPg1/ndzwcnzbIRqmEzx
	 mfaUN7KhBYNbJKC+7xuQrXs6ZmZjmHRrK/ODfxw5eNVVDRI3dwxCwktwc0816Z/Bf9
	 ZfjPiOWl9cyrQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E48E560AEF;
	Wed, 11 Sep 2024 11:09:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C0F661BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2024 11:09:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AF595812F9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2024 11:09:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5xYUHeHCIy3t for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Sep 2024 11:09:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C365E80896
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C365E80896
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C365E80896
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2024 11:09:53 +0000 (UTC)
X-CSE-ConnectionGUID: dTy/USTlTMifdjF1WdO1Vw==
X-CSE-MsgGUID: /VqpIVtpR+6NZtXqqqSIyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="35437570"
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="35437570"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 04:09:53 -0700
X-CSE-ConnectionGUID: nT28gaEGQdSbroWrmyaHxA==
X-CSE-MsgGUID: 9sE0gGiOQvKaJ32xTk3cWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="67352985"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa009.fm.intel.com with ESMTP; 11 Sep 2024 04:09:51 -0700
Received: from pkitszel-desk.tendawifi.com (unknown [10.245.246.145])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id CB85827BC5;
 Wed, 11 Sep 2024 12:09:49 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed, 11 Sep 2024 13:07:33 +0200
Message-ID: <20240911110926.25384-6-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240911110926.25384-4-przemyslaw.kitszel@intel.com>
References: <20240911110926.25384-4-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726052994; x=1757588994;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=soybigFmIlSrs1R3ou7FRmrWnLzOIypKD01PIh46pW8=;
 b=SVYzPQcdPI/mtl7kU3/kJI8+Q1HI3qaJ48YX/2IN2MAEvG8RR9bFDgtv
 QhC57JJ8l5TV3QTzbXTgejsc7zisvkqxE3tMiY4fcHyG20dld2rNwnMvy
 4aOAJDlxaNrL3wFhZddrsi0sYNveQDkfSJEpF99GAtQn25JyXu1fEq9Ts
 54vec8CWDKhlYlFu4z6EgpBVDZRkhFRsNGGXEwWEiFW5yHfPXNrAiDkaE
 BlEtw+ynIDrxKa/4jD6uW8HWAlT2bbRM2i/8SRA+w0LGt2TKk6US2LIgV
 s310IFZFbyBfdDDxV5WbgxfcyGmxJw/CmyeSNAY9nWEkE+pX6++K6TO2V
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SVYzPQcd
Subject: [Intel-wired-lan] [PATCH iwl-next 2/2] ice: support optional flags
 in signature segment header
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
 Paul Greenwalt <paul.greenwalt@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Paul Greenwalt <paul.greenwalt@intel.com>

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
CC: Dan Nowlin <dan.nowlin@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Co-developed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ddp.h |  5 ++++-
 drivers/net/ethernet/intel/ice/ice_ddp.c | 24 +++++++++++++++++-------
 2 files changed, 21 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.h b/drivers/net/ethernet/intel/ice/ice_ddp.h
index 97f272317475..2bd3cecbc112 100644
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
index 9ec5f9cee466..7dff0d95b423 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
@@ -1434,6 +1434,12 @@ ice_download_pkg_config_seg(struct ice_ddp_send_ctx *ctx,
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
@@ -1446,11 +1452,9 @@ static enum ice_ddp_state
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
@@ -1466,7 +1470,15 @@ ice_dwnld_sign_and_cfg_segs(struct ice_ddp_send_ctx *ctx,
 	conf_idx = le32_to_cpu(seg->signed_seg_idx);
 	start = le32_to_cpu(seg->signed_buf_start);
 
-	return ice_download_pkg_config_seg(ctx, pkg_hdr, conf_idx, start, count);
+	state = ice_download_pkg_config_seg(ctx, pkg_hdr, conf_idx, start,
+					    count);
+
+	/* finish up by sending last hunk with "last" flag set if requested by
+	 * DDP content */
+	flags = le32_to_cpu(seg->flags);
+	if (ice_is_last_sign_seg(flags))
+		state = ice_ddp_send_hunk(ctx, NULL);
+
 exit:
 	ctx->err = state;
 	return state;
@@ -1544,9 +1556,7 @@ ice_download_pkg_with_sig_seg(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr)
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

