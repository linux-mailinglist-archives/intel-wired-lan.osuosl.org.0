Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7809CAA6671
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 May 2025 00:54:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7002460ABC;
	Thu,  1 May 2025 22:54:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D91OJf-4A4Ss; Thu,  1 May 2025 22:54:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BCA1861178
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746140077;
	bh=ONj7PE7ESI4QwrjJVAFNls/hA3bCVZiLHUMDfAHzaxg=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vK5Adbtji2hsbIQouuXTu66gGWSQSLnHNscidjhonblkHB9R463vtMCmkregfQKFO
	 OsLZpgNLkq9nBALyHg6T0BeeKa154MsaUIo2PqnWUm0kGeZART3hjGVNxNbK+46FCn
	 aFoh7dMAZgtwLgctoszSzednHRX8UjP7zIRkhgnNDn501xVH3OTpYi4rnLBZBWj/2f
	 Kty9i43ec9FL9wajCUT3yGatfhkTO2NRoS8mlcX27yK50zCmgZ7n0j5pMXzx3K870m
	 ixGri3fxa+yxIX33Zq1ULoLSROWc4jiO4S/9KAo6vMAofRHMuY6qbChqWqA9HLCiVb
	 nZboErgFERtKQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BCA1861178;
	Thu,  1 May 2025 22:54:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A78C022B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 22:54:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8D8C583C36
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 22:54:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7uePuUS6_BDr for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 May 2025 22:54:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BDA0483C53
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BDA0483C53
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BDA0483C53
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 22:54:32 +0000 (UTC)
X-CSE-ConnectionGUID: gQfUWGERS76ac7KG8NVe8g==
X-CSE-MsgGUID: 61CaiLgnTeiTqHIdnfYvWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="58811709"
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600"; d="scan'208";a="58811709"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 15:54:32 -0700
X-CSE-ConnectionGUID: I1MRVyORSFCRw7GoPaZ+VA==
X-CSE-MsgGUID: fZ6ZPu7fQ9OoFY+J+c+fZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600"; d="scan'208";a="138514278"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 15:54:31 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 01 May 2025 15:54:14 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250501-kk-tspll-improvements-alignment-v4-3-24c83d0ce7a8@intel.com>
References: <20250501-kk-tspll-improvements-alignment-v4-0-24c83d0ce7a8@intel.com>
In-Reply-To: <20250501-kk-tspll-improvements-alignment-v4-0-24c83d0ce7a8@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 netdev <netdev@vger.kernel.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, 
 Michal Kubiak <michal.kubiak@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Karol Kolacinski <karol.kolacinski@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Milena Olech <milena.olech@intel.com>, Paul Menzel <pmenzel@molgen.mpg.de>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746140073; x=1777676073;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=jkS+DDheFbpSHA0HbN+u1Re/rNfcV2cf0+ng81UCAgg=;
 b=PhO27UEvHumBX0TX0xrw3eTU6LZxou4jOwTEbOnPmKrv8tD9Y0rxWs6K
 pq7bXI4u9TkJaHGZ86L1amFMird0XphKNQYy1rxxLbHV+B77xYjxIV726
 m/cabt/id/wxib2uwG4xtZwIJq9j5lJJKhO5GB0uFaVluNkd576iajqSV
 O0HQcfq0kUcNaAzWZ4j8/00Qt5LOnYMPcVcapS9rn6viER1AG2N7bt7Jq
 9GBIQUv8eVVfArn7jNOWWOJBTnGA+mNwTDtU46ImPSxKg8b7CTxUu5NhB
 TjYbWtiZHdBTUSUrUJNhUj643SiXQnpQY2z4c2vN423Gi08aH+Et+QGjn
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PhO27UEv
Subject: [Intel-wired-lan] [PATCH v4 03/15] ice: fix E825-C TSPLL register
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
index af88e274e989a03b3e2f793186a2b662c226bf83..86b34fb02d41b01640ee8b913ff2fc82fde85b68 100644
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
index 2fe619214a1a15d8d1d7bd5ac350c6ab58b75e81..74a9fc35fb1a6bc1011fe8142566a14673e867d9 100644
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
-		  str_enabled_disabled(dw24.ts_pll_enable),
+		  str_enabled_disabled(dw23.ts_pll_enable),
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
-		  str_enabled_disabled(dw24.ts_pll_enable),
+		  str_enabled_disabled(dw23.ts_pll_enable),
 		  ice_tspll_clk_src_str(dw23.time_ref_sel),
 		  ice_tspll_clk_freq_str(dw9.time_ref_freq_sel),
 		  ro_lock.plllock_true_lock_cri ? "locked" : "unlocked");

-- 
2.48.1.397.gec9d649cc640

