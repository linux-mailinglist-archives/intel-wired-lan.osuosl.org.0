Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6427BAA5829
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 May 2025 00:51:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8EB85402D7;
	Wed, 30 Apr 2025 22:51:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hNEPeRidUv7P; Wed, 30 Apr 2025 22:51:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD5964033A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746053504;
	bh=Rz5m0SOq6RRni1ZI8eRxQWBiEHJhm/ZVdqRXIuahnmo=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yTv6b/fb84z61nGrDS25RrlLY5WkYww4IHS9h399TS0e/0s2Y2ceIYGcrX4k6A/bk
	 t7ycVlMpV9lrXNL0Z0tNTs5Z6cKVa72MMq1Lu8haIMvNhgZo34s0nhQym6z97lyaLQ
	 pUCjWE2klqdXJFFAfi88X6JOmH49o6YFeMadGqWWXC6uOGdcdpLD+qHwWE9bgrNJKY
	 t42dRN5dG327B8C1UuQlhiVAlXjLeikFQh5ksGcfP/6v8v7lTPj2QG59px9m7PS5vm
	 AOepjgn9RnOR++DXtTchxqyA+OjFCVmdv9uYXyPWq1pJtMdf3V2zx6aSmJ7zGPgqKx
	 fESMle/n+uXcQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD5964033A;
	Wed, 30 Apr 2025 22:51:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 34474236
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 22:51:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1B18C60B10
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 22:51:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bqc5tOaO45LS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Apr 2025 22:51:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 42640608C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 42640608C0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 42640608C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 22:51:41 +0000 (UTC)
X-CSE-ConnectionGUID: Jvvc3XPdSaaOOD7MI+uWXQ==
X-CSE-MsgGUID: VH3xeHY/T7CLR/292EqGEg==
X-IronPort-AV: E=McAfee;i="6700,10204,11419"; a="73120885"
X-IronPort-AV: E=Sophos;i="6.15,252,1739865600"; d="scan'208";a="73120885"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 15:51:40 -0700
X-CSE-ConnectionGUID: R+N2AkOzTLeNtKJajYN3jQ==
X-CSE-MsgGUID: F6RbQt0TSyi4sPdN02RE6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,252,1739865600"; d="scan'208";a="134145074"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 15:51:40 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 30 Apr 2025 15:51:34 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250430-kk-tspll-improvements-alignment-v3-3-ab8472e86204@intel.com>
References: <20250430-kk-tspll-improvements-alignment-v3-0-ab8472e86204@intel.com>
In-Reply-To: <20250430-kk-tspll-improvements-alignment-v3-0-ab8472e86204@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 netdev <netdev@vger.kernel.org>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Milena Olech <milena.olech@intel.com>, 
 Michal Kubiak <michal.kubiak@intel.com>, 
 Karol Kolacinski <karol.kolacinski@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746053501; x=1777589501;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=/LYCBKxEPTRQfve9WiCaRvxZaeq7au3XhX5h2W7RrjA=;
 b=b9WYyTHcebJYuVd9Pd5W7o+zdl0akTFf2yOK+bPFp3nX0MVSo2iBCozv
 oGUuAzMnrD4A5njyzfiBMUGwPRc8z9PU53bQeosolRS95EwhSqmPD6xg3
 y4I5NpJ5gYO9WAmwUNyhR8Bcp9+ZNnMVm2ZwFSGOJiQ1ToW1l1XGalfC9
 FKR7N61C8gPsO8m8wkJb5pzHju7pu9xlPrp6vh/xjEj8Mfcwi44GtHaQC
 fUvHYV/DO68UWhj0MoWFqJEaxbjxeqMLhHwQtb9U9K9KOqWuqDYTpYwd4
 J3zs6t9t2gvGFqeoQnnd6P1Ap5PBCBTbewgN2wFoMos6Z7PrpOWlnbs5t
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=b9WYyTHc
Subject: [Intel-wired-lan] [PATCH v3 03/15] ice: fix E825-C TSPLL register
 definitions
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

The E825-C hardware has a slightly different register layout for register
19 of the Clock Generation Unit and TSPLL. The fbdiv_intgr value can be 10
bits wide.

Additionally, most of the fields that were in register 24 are made
available in register 23 instead. The programming logic already has a
corrected definition for register 23, but it incorrectly still used the
8-bit definition of fbdiv_intgr. This results in truncating some of the
values of fbdiv_intgr, including the value used for the 156.25MHz signal.

The driver only used register 24 to obtain the enable status, which we
should read from register 23. This results in an incorrect output for the
log messages, but does not change any functionality besides
disabled-by-default dynamic debug messages.

Fix the register definitions, and adjust the code to properly reflect the
enable/disable status in the log messages.

Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.h | 17 ++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_tspll.c  | 17 +++++++----------
 2 files changed, 23 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index fee5b373af8cf8f5e9c17fd1c65b9e2f1bb4cfa4..0ed9b5e2a0afb1d3a0e697a027e3cb125e4db443 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -74,7 +74,7 @@ union ice_cgu_r16 {
 };
 
 #define ICE_CGU_R19 0x4c
-union ice_cgu_r19 {
+union ice_cgu_r19_e82x {
 	struct {
 		u32 fbdiv_intgr : 8;
 		u32 fdpll_ulck_thr : 5;
@@ -89,6 +89,21 @@ union ice_cgu_r19 {
 	u32 val;
 };
 
+union ice_cgu_r19_e825 {
+	struct {
+		u32 tspll_fbdiv_intgr : 10;
+		u32 fdpll_ulck_thr : 5;
+		u32 misc15 : 1;
+		u32 tspll_ndivratio : 4;
+		u32 tspll_iref_ndivratio : 3;
+		u32 misc19 : 1;
+		u32 japll_ndivratio : 4;
+		u32 japll_postdiv_pdivratio : 3;
+		u32 misc27 : 1;
+	};
+	u32 val;
+};
+
 #define ICE_CGU_R22 0x58
 union ice_cgu_r22 {
 	struct {
diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.c b/drivers/net/ethernet/intel/ice/ice_tspll.c
index 3f6287e48192b33c7e108c584587b2e8cf57182f..c27f5cabfb1fe0f018b73c3c6b56d77f24db9165 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.c
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.c
@@ -230,7 +230,7 @@ static int ice_tspll_cfg_e82x(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 			      enum ice_clk_src clk_src)
 {
 	union tspll_ro_bwm_lf bwm_lf;
-	union ice_cgu_r19 dw19;
+	union ice_cgu_r19_e82x dw19;
 	union ice_cgu_r22 dw22;
 	union ice_cgu_r24 dw24;
 	union ice_cgu_r9 dw9;
@@ -398,9 +398,9 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 			       enum ice_clk_src clk_src)
 {
 	union tspll_ro_lock_e825c ro_lock;
+	union ice_cgu_r19_e825 dw19;
 	union ice_cgu_r16 dw16;
 	union ice_cgu_r23 dw23;
-	union ice_cgu_r19 dw19;
 	union ice_cgu_r22 dw22;
 	union ice_cgu_r24 dw24;
 	union ice_cgu_r9 dw9;
@@ -428,10 +428,6 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 	if (err)
 		return err;
 
-	err = ice_read_cgu_reg(hw, ICE_CGU_R24, &dw24.val);
-	if (err)
-		return err;
-
 	err = ice_read_cgu_reg(hw, ICE_CGU_R16, &dw16.val);
 	if (err)
 		return err;
@@ -446,7 +442,7 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 
 	/* Log the current clock configuration */
 	ice_debug(hw, ICE_DBG_PTP, "Current TSPLL configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
-		  dw24.ts_pll_enable ? "enabled" : "disabled",
+		  dw23.ts_pll_enable ? "enabled" : "disabled",
 		  ice_tspll_clk_src_str(dw23.time_ref_sel),
 		  ice_tspll_clk_freq_str(dw9.time_ref_freq_sel),
 		  ro_lock.plllock_true_lock_cri ? "locked" : "unlocked");
@@ -486,8 +482,8 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 	if (err)
 		return err;
 
-	dw19.fbdiv_intgr = e825c_tspll_params[clk_freq].fbdiv_intgr;
-	dw19.ndivratio = e825c_tspll_params[clk_freq].ndivratio;
+	dw19.tspll_fbdiv_intgr = e825c_tspll_params[clk_freq].fbdiv_intgr;
+	dw19.tspll_ndivratio = e825c_tspll_params[clk_freq].ndivratio;
 
 	err = ice_write_cgu_reg(hw, ICE_CGU_R19, dw19.val);
 	if (err)
@@ -518,6 +514,7 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 	if (err)
 		return err;
 
+	dw24.val = 0;
 	dw24.fbdiv_frac = e825c_tspll_params[clk_freq].fbdiv_frac;
 
 	err = ice_write_cgu_reg(hw, ICE_CGU_R24, dw24.val);
@@ -545,7 +542,7 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 
 	/* Log the current clock configuration */
 	ice_debug(hw, ICE_DBG_PTP, "New TSPLL configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
-		  dw24.ts_pll_enable ? "enabled" : "disabled",
+		  dw23.ts_pll_enable ? "enabled" : "disabled",
 		  ice_tspll_clk_src_str(dw23.time_ref_sel),
 		  ice_tspll_clk_freq_str(dw9.time_ref_freq_sel),
 		  ro_lock.plllock_true_lock_cri ? "locked" : "unlocked");

-- 
2.48.1.397.gec9d649cc640

