Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 42523791732
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Sep 2023 14:34:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C357640937;
	Mon,  4 Sep 2023 12:34:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C357640937
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693830890;
	bh=U/92WttNK5SEvs8qwJ9qprP+ENg6/c2BG8g9LBcyUFo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LuCL3G0NFvfFbdIs/5RJQyL0g3RbgujuTIr/etwmD3Z+o7PYtmQAV+syOSDbhq2QH
	 uTagBkVSe6TbIyHNTMGEBEK2KsJ+XJbER/dNyyzTrglaWLEgARceP10W8alNm8CsEk
	 Zwx8BL+YuwYfY1BCKKDLjgNOV35B9Qqaf0TTHVg8VfObKv4ew5p3dk2Q+nW+x1P9YG
	 NXmFsITiVKa4In0DWt9cTELvotJri0AS5nGzq2nRWqEO6WpEEkYXDIRfOZuGdJ1sDj
	 I8j4uJIIJN0D8oB3gb2Ms1cY4/qhXQuVqtENnecJzXGUdw05KpdUTAF7CPMPcWcVfm
	 PATjiWOfstIpg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FWG0tXA0eKim; Mon,  4 Sep 2023 12:34:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D52040305;
	Mon,  4 Sep 2023 12:34:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5D52040305
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C11C11BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 12:34:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 944548179A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 12:34:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 944548179A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GNRaBSAQ6OXH for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Sep 2023 12:34:22 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 58C9F8177A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 12:34:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 58C9F8177A
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="373977156"
X-IronPort-AV: E=Sophos;i="6.02,226,1688454000"; d="scan'208";a="373977156"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2023 05:34:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="740749771"
X-IronPort-AV: E=Sophos;i="6.02,226,1688454000"; d="scan'208";a="740749771"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga002.jf.intel.com with ESMTP; 04 Sep 2023 05:34:18 -0700
Received: from pelor.igk.intel.com (pelor.igk.intel.com [10.123.220.13])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 1266735430;
 Mon,  4 Sep 2023 13:34:17 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: netdev@vger.kernel.org
Date: Mon,  4 Sep 2023 08:31:04 -0400
Message-Id: <20230904123107.116381-5-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230904123107.116381-1-przemyslaw.kitszel@intel.com>
References: <20230904123107.116381-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693830862; x=1725366862;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SeLgtUYbrOh0aByBaO5uFLDhHv+A3oGVhKqUMUqlyHQ=;
 b=To9XzaMQw8Bi9N7OVX+bZEI0nr74WQ0qdwMr1hXzMHGm9FH1AXnSgpy6
 WxzntQx9Gp8mrEb+D7hAVs2eVZJOXNBh9NVVhmItVRqZDfI6/UT+XKnbw
 xtwC/bd2jFNyU6RkXBw7s3NWhcvdrzfSVME5Y9L5cF56XAMQlIaMZx3Ex
 F9Gac0ruMFXPDIC/W2bINpYCeUJrDtAu43DGova2H6tFK5pQDGdqCrYFp
 m2OcD0rPVOVtnDh2XTML7STv/W/I8epFMUatj5y/jmOhJV9FP6yXCZrcD
 O3IvF3BHZmqE5eXaJmPpNkXAByHnfb6h8YpI7Gn3bI4aHU8K0VzYM8LYz
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=To9XzaMQ
Subject: [Intel-wired-lan] [RFC net-next v4 4/7] ice: make use of
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
Cc: Kees Cook <keescook@chromium.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Steven Zou <steven.zou@intel.com>, Anthony Nguyen <anthony.l.nguyen@intel.com>,
 David Laight <David.Laight@ACULAB.COM>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>
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
index b27ec93638b6..78ed909745fe 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
@@ -1560,21 +1560,14 @@ static enum ice_ddp_state ice_init_pkg_info(struct ice_hw *hw,
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
@@ -1604,10 +1597,7 @@ static enum ice_ddp_state ice_get_pkg_info(struct ice_hw *hw)
 			  pkg_info->pkg_info[i].name, flags);
 	}
 
-init_pkg_free_alloc:
-	kfree(pkg_info);
-
-	return state;
+	return ICE_DDP_PKG_SUCCESS;
 }
 
 /**
@@ -1622,9 +1612,10 @@ static enum ice_ddp_state ice_chk_pkg_compat(struct ice_hw *hw,
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
@@ -1643,15 +1634,8 @@ static enum ice_ddp_state ice_chk_pkg_compat(struct ice_hw *hw,
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
@@ -1668,8 +1652,7 @@ static enum ice_ddp_state ice_chk_pkg_compat(struct ice_hw *hw,
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
