Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6725597258A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Sep 2024 01:06:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 15C1A60828;
	Mon,  9 Sep 2024 23:05:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j48sxROzvmwQ; Mon,  9 Sep 2024 23:05:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4BB5F60830
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725923158;
	bh=jyUmEKrM8dyUWOisoMLE2uruIKOj9hvx/CDbn40isYc=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nvzRa8G5eUjmQfZTy2HyGiMLgTQFszj2fso2FCxWGAFN/BnqrmQkraa5lKgQxlGvM
	 rRf8Ek+/ZDa+Qejf0qtAUbghtmyH79P6f8oF6gWzWi5EsEgoqRwwEXO3Cx4407/FwO
	 PCOGMt7El6+COk68DAy2Tdq2UQiB4N6t+9hpJlPnQPZVhkkxyM5bfcpxlpAbMziSQA
	 k2Bf86rppnvuRVqru9kYJ5VPCjVKsC3wvWVVGnCQeSizGTMCL+7eGdD3f6p5dvvEgM
	 3bQQWkSRsQ6D0J7iblUTlvTDL0vW4p+4589QMBVhzz9pHeUN967RVavg6lXMEP5l+x
	 iuUZbwrLeLIKQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4BB5F60830;
	Mon,  9 Sep 2024 23:05:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 635D61BF300
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 23:05:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5152E40298
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 23:05:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mp-vxLcWV0eY for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Sep 2024 23:05:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3F986400D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F986400D0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3F986400D0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 23:05:54 +0000 (UTC)
X-CSE-ConnectionGUID: aRymXM3yS12peKxjkswyUA==
X-CSE-MsgGUID: npulecXxQYGuwGbqlC7SYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="35312319"
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="35312319"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 16:05:52 -0700
X-CSE-ConnectionGUID: Yjd2O4WJRbWWr+0o5f3f3g==
X-CSE-MsgGUID: jrERLkOXRc+OCreFE8YHLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="67358479"
Received: from jekeller-desk.jf.intel.com ([10.166.241.20])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 16:05:52 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 09 Sep 2024 16:05:44 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240909-e810-live-migration-jk-vf-rxdid-cleanup-v1-2-e53a024980fd@intel.com>
References: <20240909-e810-live-migration-jk-vf-rxdid-cleanup-v1-0-e53a024980fd@intel.com>
In-Reply-To: <20240909-e810-live-migration-jk-vf-rxdid-cleanup-v1-0-e53a024980fd@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
X-Mailer: b4 0.14.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725923154; x=1757459154;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=UT0lrbCJFwByISkL421YwI83Nrzujzcwlianq9XOJ1A=;
 b=AdRfyAO3K4pOyP7SJcPzI1PKagXWqcZ0fnaCoFPW9bBWmH+CuMRpV91d
 v4ApkVoSFSNLWQOREsFe7eupo1IWzl54qzxzhVimFi3JtH/5PB9vHjyAK
 SFBU8R2/qxTZGsO28EFueWFHZDqZw2IMvAiTgEiSjiRLrHc05xMcCAOU0
 mhL4+VcLyLfkoovAmKO9iaLKHY0gGOcdxr5Rmvv395egGwi6LS1g7TGRR
 3UxuS5MZgSeKx5GuJUUc54hDyd4YIFWWDBQrh+B4IKsIpmHr8WHks3WgC
 +Svoh3y/omVJZVdR9FA3NuilHvsD6UfIBhsrNBPL6tU8HSY4kVK8NylXf
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AdRfyAO3
Subject: [Intel-wired-lan] [PATCH iwl-next 2/2] ice: use stack variable for
 virtchnl_supported_rxdids
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice_vc_query_rxdid() function allocates memory to store the
virtchnl_supported_rxdids structure used to communicate the bitmap of
supported RXDIDs to a VF.

This structure is only 8 bytes in size. The function must hold the
allocated length on the stack as well as the pointer to the structure which
itself is 8 bytes. Allocating this storage on the heap adds unnecessary
overhead including a potential error path that must be handled in case
kzalloc fails. Because this structure is so small, we're not saving stack
space. Additionally, because we must ensure that we free the allocated
memory, the return value from ice_vc_send_msg_to_vf() must also be saved in
the stack ret variable. Depending on compiler optimization, this means
allocating the 8-byte structure is requiring up to 16-bytes of stack
memory!

Simplify this function to keep the rxdid variable on the stack, saving
memory and removing a potential failure exit path from this function.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 20 ++++----------------
 1 file changed, 4 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 5f3166877830..09150287cf35 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -2700,10 +2700,8 @@ static int ice_vc_set_rss_hena(struct ice_vf *vf, u8 *msg)
 static int ice_vc_query_rxdid(struct ice_vf *vf)
 {
 	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
-	struct virtchnl_supported_rxdids *rxdid = NULL;
+	struct virtchnl_supported_rxdids rxdid = {};
 	struct ice_pf *pf = vf->pf;
-	int len = 0;
-	int ret;
 
 	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
@@ -2715,21 +2713,11 @@ static int ice_vc_query_rxdid(struct ice_vf *vf)
 		goto err;
 	}
 
-	len = sizeof(struct virtchnl_supported_rxdids);
-	rxdid = kzalloc(len, GFP_KERNEL);
-	if (!rxdid) {
-		v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;
-		len = 0;
-		goto err;
-	}
-
-	rxdid->supported_rxdids = pf->supported_rxdids;
+	rxdid.supported_rxdids = pf->supported_rxdids;
 
 err:
-	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_SUPPORTED_RXDIDS,
-				    v_ret, (u8 *)rxdid, len);
-	kfree(rxdid);
-	return ret;
+	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_SUPPORTED_RXDIDS,
+				     v_ret, (u8 *)&rxdid, sizeof(rxdid));
 }
 
 /**

-- 
2.46.0.124.g2dc1a81c8933

