Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A7377E347
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 16:10:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B75141BD6;
	Wed, 16 Aug 2023 14:10:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B75141BD6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692195006;
	bh=5wREQqg0KCtDyHeoySCd982083TV5KV20Cf4jvgoKAk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LcENwA7I7s7sYnMJd12UEdPS+sLfubXKwjzeKxhzvgrfjKPLgoS+8zLkEIL/SV49b
	 zhB0na907EcyBxq3ArMUzQf844izu/dsR7Yr4iSaReYZHAxcQq1T6dmOa748Av0vm8
	 Ssq9yRMCDDdHn/S6NHouSTE7NbQt+35jfMOn9gq98/TDK4pK3bPcyHCtaHqLvwZZdC
	 03EJfF4eX0bInVVkvVvVR+NIhdb1fR3UNbi5QrIzj+1FoCaAjxdgZJ6C/+WyQE3j+T
	 Fs7rw8YXRXirqM7q2FMxI8beNS01YDoJ29mGuCjH2c+zI1U32vl+2DE+dgsL0GYhk+
	 nA67zTbaMjrSQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IO_drORUsxlR; Wed, 16 Aug 2023 14:10:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 420DD41E5C;
	Wed, 16 Aug 2023 14:10:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 420DD41E5C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2B7F11BF41B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 14:09:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F278182115
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 14:09:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F278182115
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6VPmDAXRopaG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 14:09:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CD71E82B1A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 14:09:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD71E82B1A
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="375312774"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="375312774"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 07:09:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="980753068"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="980753068"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga006.fm.intel.com with ESMTP; 16 Aug 2023 07:09:23 -0700
Received: from pelor.igk.intel.com (pelor.igk.intel.com [10.123.220.13])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id D42CB34EF0;
 Wed, 16 Aug 2023 15:09:22 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: Kees Cook <keescook@chromium.org>,
	netdev@vger.kernel.org
Date: Wed, 16 Aug 2023 10:06:20 -0400
Message-Id: <20230816140623.452869-5-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230816140623.452869-1-przemyslaw.kitszel@intel.com>
References: <20230816140623.452869-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692194966; x=1723730966;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5ICqtGaIKb34c4cygMFH/ekn4DHFgMuzIFwY2H+IcbU=;
 b=D3YSUHqI/RlntGHqVK2ybS97FP/wSOKF3IkwM+FPfigePwapiEZp+FfV
 XrYPtFQ+2xRNQOkmZJ/RMDeg2QN68HG0ClX8iMuyl4U0YIUjgkZxy7A/n
 tCsNmVtgUBdQzot47d1Rv13k7uvL6jRFBrmP3qpOY1wxquZ3T/dS74DTQ
 tTRTSdne8tzLHiNq6QyBUxjKwGbltgfGqjqH1zawljexTCqSyFADfRUb+
 RmhxgKPIMacni6nznUfORa10RxMcQzsdCZQ7KSUuvkdW6zO4G9Jl1Y/FT
 neBnspBwdOZmZP9ZIJDRhVQt90ySvaCA5hI7SFPCJpFvDAZtTVCzR2grd
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=D3YSUHqI
Subject: [Intel-wired-lan] [PATCH net-next v3 4/7] ice: make use of
 DEFINE_FLEX() in ice_ddp.c
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Steven Zou <steven.zou@intel.com>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use DEFINE_FLEX() macro for constant-num-of-elems (4)
flex array members of ice_ddp.c

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
add/remove: 4/0 grow/shrink: 0/1 up/down: 1195/-878 (317)
---
 drivers/net/ethernet/intel/ice/ice_ddp.c | 39 +++++++-----------------
 1 file changed, 11 insertions(+), 28 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
index d71ed210f9c4..0e64ecd6f7c5 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
@@ -1558,21 +1558,14 @@ static enum ice_ddp_state ice_init_pkg_info(struct ice_hw *hw,
  */
 static enum ice_ddp_state ice_get_pkg_info(struct ice_hw *hw)
 {
-	enum ice_ddp_state state = ICE_DDP_PKG_SUCCESS;
-	struct ice_aqc_get_pkg_info_resp *pkg_info;
-	u16 size;
+	DEFINE_FLEX(struct ice_aqc_get_pkg_info_resp, pkg_info, pkg_info,
+		    ICE_PKG_CNT);
+	u16 size = __struct_size(pkg_info);
 	u32 i;
 
-	size = struct_size(pkg_info, pkg_info, ICE_PKG_CNT);
-	pkg_info = kzalloc(size, GFP_KERNEL);
-	if (!pkg_info)
+	if (ice_aq_get_pkg_info_list(hw, pkg_info, size, NULL))
 		return ICE_DDP_PKG_ERR;
 
-	if (ice_aq_get_pkg_info_list(hw, pkg_info, size, NULL)) {
-		state = ICE_DDP_PKG_ERR;
-		goto init_pkg_free_alloc;
-	}
-
 	for (i = 0; i < le32_to_cpu(pkg_info->count); i++) {
 #define ICE_PKG_FLAG_COUNT 4
 		char flags[ICE_PKG_FLAG_COUNT + 1] = { 0 };
@@ -1602,10 +1595,7 @@ static enum ice_ddp_state ice_get_pkg_info(struct ice_hw *hw)
 			  pkg_info->pkg_info[i].name, flags);
 	}
 
-init_pkg_free_alloc:
-	kfree(pkg_info);
-
-	return state;
+	return ICE_DDP_PKG_SUCCESS;
 }
 
 /**
@@ -1620,9 +1610,10 @@ static enum ice_ddp_state ice_chk_pkg_compat(struct ice_hw *hw,
 					     struct ice_pkg_hdr *ospkg,
 					     struct ice_seg **seg)
 {
-	struct ice_aqc_get_pkg_info_resp *pkg;
+	DEFINE_FLEX(struct ice_aqc_get_pkg_info_resp, pkg, pkg_info,
+		    ICE_PKG_CNT);
+	u16 size = __struct_size(pkg);
 	enum ice_ddp_state state;
-	u16 size;
 	u32 i;
 
 	/* Check package version compatibility */
@@ -1641,15 +1632,8 @@ static enum ice_ddp_state ice_chk_pkg_compat(struct ice_hw *hw,
 	}
 
 	/* Check if FW is compatible with the OS package */
-	size = struct_size(pkg, pkg_info, ICE_PKG_CNT);
-	pkg = kzalloc(size, GFP_KERNEL);
-	if (!pkg)
-		return ICE_DDP_PKG_ERR;
-
-	if (ice_aq_get_pkg_info_list(hw, pkg, size, NULL)) {
-		state = ICE_DDP_PKG_LOAD_ERROR;
-		goto fw_ddp_compat_free_alloc;
-	}
+	if (ice_aq_get_pkg_info_list(hw, pkg, size, NULL))
+		return ICE_DDP_PKG_LOAD_ERROR;
 
 	for (i = 0; i < le32_to_cpu(pkg->count); i++) {
 		/* loop till we find the NVM package */
@@ -1666,8 +1650,7 @@ static enum ice_ddp_state ice_chk_pkg_compat(struct ice_hw *hw,
 		/* done processing NVM package so break */
 		break;
 	}
-fw_ddp_compat_free_alloc:
-	kfree(pkg);
+
 	return state;
 }
 
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
