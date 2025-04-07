Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6353DA7EC62
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Apr 2025 21:16:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9ECC040CD5;
	Mon,  7 Apr 2025 19:15:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yZazibm5XgzG; Mon,  7 Apr 2025 19:15:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0CB2640C55
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744053356;
	bh=pSCb2mYHRmDD+gn9TXwL0qos846bkmBjgWCmRlVHoEE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9G198IQ5Id5OKO8oNFwdJOndeE1nGaS2exehPp93n+jDjQ+B+Dev3Q+N6gGtTb06I
	 9ymc9oiTmIPponwnl+yp6WdmKBG6Z3XtINehUK0U+JubGfF+Hulcb4jesyJlqcU7+E
	 SZ87XVy28wXVwPoqtp7TFMqQIqg0zAaa0j0quPH6Gqq3T8Xtfg/Z19bFBfZxtXMUWQ
	 raBXT8/hjHaVCBlOF5zOGySa20RgHBILoJdzK18v/5F3RF/RM1qOn1Oqk/bveCYC34
	 redEA/miIplFApEolvuXfFv3dYSM4qUWKUG+t6Sm8Gko3NTmSoynTOotaVWeRTWBuV
	 IT2OVRNtSUKZQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0CB2640C55;
	Mon,  7 Apr 2025 19:15:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 50DB8DA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 19:15:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A1BBC414B8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 19:15:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hqWfk92meo7w for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Apr 2025 19:15:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1217C41412
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1217C41412
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1217C41412
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 19:15:52 +0000 (UTC)
X-CSE-ConnectionGUID: yVLzObXfS0SrWm7nRUtuVQ==
X-CSE-MsgGUID: Xftrw7smQfyWIGvZwLFJUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="49307035"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="49307035"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 12:15:51 -0700
X-CSE-ConnectionGUID: FsG3fVLqTZ25e8B1fEZzdg==
X-CSE-MsgGUID: bTDf1fIMSLKrejq6kwOrjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="128979584"
Received: from dmert-vmdev.jf.intel.com ([10.165.18.186])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 12:15:51 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Mon,  7 Apr 2025 15:15:11 -0400
Message-ID: <20250407191517.767433-3-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250407191517.767433-1-david.m.ertman@intel.com>
References: <20250407191517.767433-1-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744053352; x=1775589352;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Be2N7ycsJw4FaSnIzAXt72kPxZObfl7NtklvWPVITmw=;
 b=aNgsblQRdDGkxTpKA7p9sI6BVVBULjDP7Xj1HZ8R0Si/Dej5nxL4DFtT
 zlYTUAq0DeI50nFbxOQhWP/CNYYjBk/cqbPAxXsZdGfZYoHCx+jHDicb7
 OvukmZ/xqSOpMSpRVjclJL2ZiZzLeXsN8E9/hAEbFlKWsOs4UaHp6xKRl
 Xe9VFJ32rHeJRxpUq5krwtA4XqAjHCAOlqyaPDJNoLfjapRs1KEmcTiWP
 eGqNFkVm8bQ8hm0bB4W/Bk5YHsG3J+2f3aQJuwKFul7UaClRfPEcxH2t8
 IF1tz3E3cNbTMl38PJgfusweaOXl/hYKeci0q6FXdkX7twMCVIQJ+gyYj
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aNgsblQR
Subject: [Intel-wired-lan] [PATCH iwl-next 2/8] ice: replace u8 elements
 with bool where appropriate
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

In preparation for the new LAG functionality implementation, there are
a couple of existing LAG elements of the capabilities struct that should
be bool instead of u8.  Since we are adding a new element to this struct
that should also be a bool, fix the existing LAG u8 in this patch and
eliminate !! operators where possible.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 4 ++--
 drivers/net/ethernet/intel/ice/ice_type.h   | 5 +++--
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index f7fd0a2451de..29a02a0348b1 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2219,10 +2219,10 @@ ice_parse_common_caps(struct ice_hw *hw, struct ice_hw_common_caps *caps,
 			  caps->reset_restrict_support);
 		break;
 	case ICE_AQC_CAPS_FW_LAG_SUPPORT:
-		caps->roce_lag = !!(number & ICE_AQC_BIT_ROCEV2_LAG);
+		caps->roce_lag = number & ICE_AQC_BIT_ROCEV2_LAG;
 		ice_debug(hw, ICE_DBG_INIT, "%s: roce_lag = %u\n",
 			  prefix, caps->roce_lag);
-		caps->sriov_lag = !!(number & ICE_AQC_BIT_SRIOV_LAG);
+		caps->sriov_lag = number & ICE_AQC_BIT_SRIOV_LAG;
 		ice_debug(hw, ICE_DBG_INIT, "%s: sriov_lag = %u\n",
 			  prefix, caps->sriov_lag);
 		break;
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index ccf53cc6403e..a7fc748d9db6 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -292,8 +292,9 @@ struct ice_hw_common_caps {
 	u8 dcb;
 	u8 ieee_1588;
 	u8 rdma;
-	u8 roce_lag;
-	u8 sriov_lag;
+
+	bool roce_lag;
+	bool sriov_lag;
 
 	bool nvm_update_pending_nvm;
 	bool nvm_update_pending_orom;
-- 
2.49.0

