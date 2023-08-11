Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4188F778EC6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Aug 2023 14:11:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D316C83FC1;
	Fri, 11 Aug 2023 12:11:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D316C83FC1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691755899;
	bh=5wREQqg0KCtDyHeoySCd982083TV5KV20Cf4jvgoKAk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EgurfUiDZN7c9xiMbu1qi1OjYHvRSoGSEINZgUdP//wX9FvZTUGkSSiz1lRrGQril
	 tyin1dn9BBlGEThzwhDf42LOPSLqfv2SVGB/2gX/aYXK53B6/k7chRFD75k6Pqx/Ej
	 tMIXJ1o/SO9KZJNe68Zz87D/NAuXI72wFH2utYVXvCstf5esh2UrxZcsEmhZnOlkT2
	 cHQ799JgFzqa413hQoU3rPDrptURYy0+/EQWcObnsbi8OucrNPQXUh+t0MbJtNiZlW
	 s0KbjlYRtbFYQnEuJs9pv6JTbXN5QQ/eC/9zBdqkJzhCaZ7W8bk2mq5vFEtSuibsiC
	 KPvDnkqzGkmZg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O4rn7HXVQ_oW; Fri, 11 Aug 2023 12:11:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C095C83F04;
	Fri, 11 Aug 2023 12:11:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C095C83F04
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D2A321BF990
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 12:11:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B811A41E35
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 12:11:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B811A41E35
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KLPqn6yAzDyu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Aug 2023 12:11:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C17BE41E3B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 12:11:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C17BE41E3B
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="438002122"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="438002122"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2023 05:11:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="906421890"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="906421890"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga005.jf.intel.com with ESMTP; 11 Aug 2023 05:11:11 -0700
Received: from pelor.igk.intel.com (pelor.igk.intel.com [10.123.220.13])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id F3B41333E2;
 Fri, 11 Aug 2023 13:11:09 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: Kees Cook <keescook@chromium.org>,
	netdev@vger.kernel.org
Date: Fri, 11 Aug 2023 08:08:11 -0400
Message-Id: <20230811120814.169952-5-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230811120814.169952-1-przemyslaw.kitszel@intel.com>
References: <20230811120814.169952-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691755873; x=1723291873;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5ICqtGaIKb34c4cygMFH/ekn4DHFgMuzIFwY2H+IcbU=;
 b=QOJp/19SlGHNL+wu/fzCtArsniW3o8lflmUk6FGqgSpUoU/kP90fJJG3
 hrdN2QA3ZdWs5o987qmx8pSNDPKvQp+bofcXcN2k4IwJUFHSJ+tvqrU0r
 fLfgLhHvQbHosQQDg0br5OSCVNAWUdVQ/i2v7nEbWirs5LwRdEoc6itfs
 2/AvJNIZaSElK4ggV2v3Y6sPuBQtlzHBr9aooiZ/0C0aBMprOwvTDkd/l
 i9nCIzrN6UhUrqm/o/eSyYJ/RXkqfpcD/IR9tOejMcANNUjEm1Q2ATEO/
 17uQoGzu0/OIFt0BEloBEi6/zue+dWqrmgSA13Bw8ts7rdj0e7osFfWcF
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QOJp/19S
Subject: [Intel-wired-lan] [PATCH net-next v2 4/7] ice: make use of
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
