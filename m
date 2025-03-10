Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 522F2A5926C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Mar 2025 12:14:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BC8F4608C3;
	Mon, 10 Mar 2025 11:14:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PiuEEvUWcHB1; Mon, 10 Mar 2025 11:14:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90A79608A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741605265;
	bh=IGcsWivFA94qDtgj+f50NIxg0T9k5+XwmwMDg2TNrVQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Q96EdgCvGDSP2kTlo9ZSgpIhBVu2PK99S6U2I51I8fnzsSxy8Gem7AADln0SwjBhi
	 ZMmzNm6HPeOoxeHAVH52bOvb0S2QdRvEthD0rux/VYK14+tFV0LAln/znKCmNj38z6
	 7KsdN6R8WTPI8qDR37ABMlkUa4J9hVqg3Iv417Y92rj0OV710b0bW9HJ5PErCp6Km+
	 6wh9GWtZt6Vf9Icg7MCb3nCmK7ByESyb1GX8AgmKoJ6vBsS+9y39bzRL5VJf45ZJT5
	 oFLOGD+9/5zZwutM+F6DcIZR6dw2VJvUjMfJe5ieeWwiKC764oG3kYCS25/vRL9qbF
	 ucOEtbV0letiA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 90A79608A7;
	Mon, 10 Mar 2025 11:14:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2F5931C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 11:14:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1D1418048B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 11:14:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BOchvWSlO54x for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Mar 2025 11:14:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BB07581EC5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB07581EC5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BB07581EC5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 11:14:21 +0000 (UTC)
X-CSE-ConnectionGUID: DLtX6wdgQ/6yLHGXrTI8Xw==
X-CSE-MsgGUID: 6KLVHpSLRzirKqiI8XFwHA==
X-IronPort-AV: E=McAfee;i="6700,10204,11368"; a="65048684"
X-IronPort-AV: E=Sophos;i="6.14,235,1736841600"; d="scan'208";a="65048684"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 04:14:21 -0700
X-CSE-ConnectionGUID: 1M86oyLbR+q0GRWd+Em5Zg==
X-CSE-MsgGUID: YFAT1UjkRoK8e3aJAdlpLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,235,1736841600"; d="scan'208";a="119968320"
Received: from kkolacin-desk1.ger.corp.intel.com (HELO
 kkolacin-desk1.igk.intel.com) ([10.217.160.155])
 by fmviesa007.fm.intel.com with ESMTP; 10 Mar 2025 04:14:19 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Milena Olech <milena-olech@intel.com>
Date: Mon, 10 Mar 2025 12:12:49 +0100
Message-ID: <20250310111357.1238454-17-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250310111357.1238454-12-karol.kolacinski@intel.com>
References: <20250310111357.1238454-12-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741605261; x=1773141261;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GZ+JUsAiVyt07WlPEbHrRaQCAVxc7PoDWQmI2X4G6yw=;
 b=l9vqU2rMTc7e84KTcRrt3inDS50EAuMkyO8FPwE6066+rJHLuqV3z2fD
 KEz2XRsgUe/4avVFVDQQBRQVP3OTsE+UatRyQR7slIJPUVnoS117CI2fy
 j10zmAi2oVjMx/NVKGoDiN2STaEMr8p/S7QTg72+yEBWmmUQnOO/7uJkB
 EsKn8swK1b65mwtVQvIoxWe4fz1DEiuXI+mgF45FVD/Ixf+OeMBhFIdMI
 OCM9PBwbO9j7Q8mPQkMmZTa3c9KfIjqYgC3yLI3Sq5LKW2IXJLmhu4hVk
 PY/hrmcBQfKlFWkFQU3SDfYyFCyraVHmvUrRn8d3osNLn9MQUKz7boAUn
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l9vqU2rM
Subject: [Intel-wired-lan] [PATCH iwl-next 05/10] ice: add
 ICE_READ/WRITE_CGU_REG_OR_DIE helpers
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

Add ICE_READ_CGU_REG_OR_DIE() and ICE_WRITE_CGU_REG_OR_DIE() helpers to
avoid multiple error checks after calling read/write functions.

Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
Reviewed-by: Milena Olech <milena-olech@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.h |  15 ++
 drivers/net/ethernet/intel/ice/ice_tspll.c  | 167 ++++----------------
 2 files changed, 49 insertions(+), 133 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index fee5b373af8c..f7952ff3e798 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -478,5 +478,20 @@ int ice_get_pca9575_handle(struct ice_hw *hw, u16 *pca9575_handle);
 int ice_read_pca9575_reg(struct ice_hw *hw, u8 offset, u8 *data);
 bool ice_fw_supports_report_dflt_cfg(struct ice_hw *hw);
 int ice_read_cgu_reg(struct ice_hw *hw, u32 addr, u32 *val);
+#define ICE_READ_CGU_REG_OR_DIE(hw, addr, val)                     \
+	do {                                                       \
+		int __err = ice_read_cgu_reg((hw), (addr), (val)); \
+								   \
+		if (__err)                                         \
+			return __err;                              \
+	} while (0)
 int ice_write_cgu_reg(struct ice_hw *hw, u32 addr, u32 val);
+#define ICE_WRITE_CGU_REG_OR_DIE(hw, addr, val)                     \
+	do {                                                        \
+		int __err = ice_write_cgu_reg((hw), (addr), (val)); \
+								    \
+		if (__err)                                          \
+			return __err;                               \
+	} while (0)
+
 #endif /* _ICE_COMMON_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.c b/drivers/net/ethernet/intel/ice/ice_tspll.c
index 4c929fca510e..7a785b19ae28 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.c
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.c
@@ -129,7 +129,6 @@ static int ice_tspll_cfg_e82x(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 	union ice_cgu_r22 dw22;
 	union ice_cgu_r24 dw24;
 	union ice_cgu_r9 dw9;
-	int err;
 
 	if (clk_freq >= NUM_ICE_TSPLL_FREQ) {
 		dev_warn(ice_hw_to_dev(hw), "Invalid TIME_REF frequency %u\n",
@@ -149,17 +148,9 @@ static int ice_tspll_cfg_e82x(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 		return -EINVAL;
 	}
 
-	err = ice_read_cgu_reg(hw, ICE_CGU_R9, &dw9.val);
-	if (err)
-		return err;
-
-	err = ice_read_cgu_reg(hw, ICE_CGU_R24, &dw24.val);
-	if (err)
-		return err;
-
-	err = ice_read_cgu_reg(hw, TSPLL_RO_BWM_LF, &bwm_lf.val);
-	if (err)
-		return err;
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R9, &dw9.val);
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R24, &dw24.val);
+	ICE_READ_CGU_REG_OR_DIE(hw, TSPLL_RO_BWM_LF, &bwm_lf.val);
 
 	ice_tspll_log_cfg(hw, dw24.ts_pll_enable, dw24.time_ref_sel,
 			  dw9.time_ref_freq_sel, bwm_lf.plllock_true_lock_cri,
@@ -168,69 +159,40 @@ static int ice_tspll_cfg_e82x(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 	/* Disable the PLL before changing the clock source or frequency */
 	if (dw24.ts_pll_enable) {
 		dw24.ts_pll_enable = 0;
-
-		err = ice_write_cgu_reg(hw, ICE_CGU_R24, dw24.val);
-		if (err)
-			return err;
+		ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R24, dw24.val);
 	}
 
 	/* Set the frequency */
 	dw9.time_ref_freq_sel = clk_freq;
-	err = ice_write_cgu_reg(hw, ICE_CGU_R9, dw9.val);
-	if (err)
-		return err;
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R9, dw9.val);
 
 	/* Configure the TSPLL feedback divisor */
-	err = ice_read_cgu_reg(hw, ICE_CGU_R19, &dw19.val);
-	if (err)
-		return err;
-
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R19, &dw19.val);
 	dw19.fbdiv_intgr = e82x_tspll_params[clk_freq].feedback_div;
 	dw19.ndivratio = 1;
-
-	err = ice_write_cgu_reg(hw, ICE_CGU_R19, dw19.val);
-	if (err)
-		return err;
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R19, dw19.val);
 
 	/* Configure the TSPLL post divisor */
-	err = ice_read_cgu_reg(hw, ICE_CGU_R22, &dw22.val);
-	if (err)
-		return err;
-
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R22, &dw22.val);
 	dw22.time1588clk_div = e82x_tspll_params[clk_freq].post_pll_div;
 	dw22.time1588clk_sel_div2 = 0;
-
-	err = ice_write_cgu_reg(hw, ICE_CGU_R22, dw22.val);
-	if (err)
-		return err;
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R22, dw22.val);
 
 	/* Configure the TSPLL pre divisor and clock source */
-	err = ice_read_cgu_reg(hw, ICE_CGU_R24, &dw24.val);
-	if (err)
-		return err;
-
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R24, &dw24.val);
 	dw24.ref1588_ck_div = e82x_tspll_params[clk_freq].refclk_pre_div;
 	dw24.fbdiv_frac = e82x_tspll_params[clk_freq].frac_n_div;
 	dw24.time_ref_sel = clk_src;
-
-	err = ice_write_cgu_reg(hw, ICE_CGU_R24, dw24.val);
-	if (err)
-		return err;
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R24, dw24.val);
 
 	/* Finally, enable the PLL */
 	dw24.ts_pll_enable = 1;
-
-	err = ice_write_cgu_reg(hw, ICE_CGU_R24, dw24.val);
-	if (err)
-		return err;
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R24, dw24.val);
 
 	/* Wait to verify if the PLL locks */
 	usleep_range(1000, 5000);
 
-	err = ice_read_cgu_reg(hw, TSPLL_RO_BWM_LF, &bwm_lf.val);
-	if (err)
-		return err;
-
+	ICE_READ_CGU_REG_OR_DIE(hw, TSPLL_RO_BWM_LF, &bwm_lf.val);
 	if (!bwm_lf.plllock_true_lock_cri) {
 		dev_warn(ice_hw_to_dev(hw), "TSPLL failed to lock\n");
 		return -EBUSY;
@@ -254,12 +216,8 @@ static int ice_tspll_cfg_e82x(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 static int ice_tspll_dis_sticky_bits_e82x(struct ice_hw *hw)
 {
 	union tspll_cntr_bist_settings cntr_bist;
-	int err;
-
-	err = ice_read_cgu_reg(hw, TSPLL_CNTR_BIST_SETTINGS, &cntr_bist.val);
-	if (err)
-		return err;
 
+	ICE_READ_CGU_REG_OR_DIE(hw, TSPLL_CNTR_BIST_SETTINGS, &cntr_bist.val);
 	/* Disable sticky lock detection so lock err reported is accurate */
 	cntr_bist.i_plllock_sel_0 = 0;
 	cntr_bist.i_plllock_sel_1 = 0;
@@ -292,7 +250,6 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 	union ice_cgu_r22 dw22;
 	union ice_cgu_r24 dw24;
 	union ice_cgu_r9 dw9;
-	int err;
 
 	if (clk_freq >= NUM_ICE_TSPLL_FREQ) {
 		dev_warn(ice_hw_to_dev(hw), "Invalid TIME_REF frequency %u\n",
@@ -311,25 +268,11 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 		return -EINVAL;
 	}
 
-	err = ice_read_cgu_reg(hw, ICE_CGU_R9, &dw9.val);
-	if (err)
-		return err;
-
-	err = ice_read_cgu_reg(hw, ICE_CGU_R24, &dw24.val);
-	if (err)
-		return err;
-
-	err = ice_read_cgu_reg(hw, ICE_CGU_R16, &dw16.val);
-	if (err)
-		return err;
-
-	err = ice_read_cgu_reg(hw, ICE_CGU_R23, &dw23.val);
-	if (err)
-		return err;
-
-	err = ice_read_cgu_reg(hw, TSPLL_RO_LOCK_E825C, &ro_lock.val);
-	if (err)
-		return err;
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R9, &dw9.val);
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R24, &dw24.val);
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R16, &dw16.val);
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R23, &dw23.val);
+	ICE_READ_CGU_REG_OR_DIE(hw, TSPLL_RO_LOCK_E825C, &ro_lock.val);
 
 	ice_tspll_log_cfg(hw, dw24.ts_pll_enable, dw23.time_ref_sel,
 			  dw9.time_ref_freq_sel,
@@ -338,10 +281,7 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 	/* Disable the PLL before changing the clock source or frequency */
 	if (dw23.ts_pll_enable) {
 		dw23.ts_pll_enable = 0;
-
-		err = ice_write_cgu_reg(hw, ICE_CGU_R23, dw23.val);
-		if (err)
-			return err;
+		ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R23, dw23.val);
 	}
 
 	/* Set the frequency */
@@ -355,73 +295,42 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 		dw9.time_ref_en = 1;
 		dw9.clk_eref0_en = 0;
 	}
-	err = ice_write_cgu_reg(hw, ICE_CGU_R9, dw9.val);
-	if (err)
-		return err;
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R9, dw9.val);
 
 	/* Choose the referenced frequency */
 	dw16.ck_refclkfreq = ICE_TSPLL_CK_REFCLKFREQ_E825;
-	err = ice_write_cgu_reg(hw, ICE_CGU_R16, dw16.val);
-	if (err)
-		return err;
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R16, dw16.val);
 
 	/* Configure the TSPLL feedback divisor */
-	err = ice_read_cgu_reg(hw, ICE_CGU_R19, &dw19.val);
-	if (err)
-		return err;
-
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R19, &dw19.val);
 	dw19.fbdiv_intgr = ICE_TSPLL_FBDIV_INTGR_E825;
 	dw19.ndivratio = ICE_TSPLL_NDIVRATIO_E825;
-
-	err = ice_write_cgu_reg(hw, ICE_CGU_R19, dw19.val);
-	if (err)
-		return err;
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R19, dw19.val);
 
 	/* Configure the TSPLL post divisor */
-	err = ice_read_cgu_reg(hw, ICE_CGU_R22, &dw22.val);
-	if (err)
-		return err;
-
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R22, &dw22.val);
 	/* These two are constant for E825C */
 	dw22.time1588clk_div = 5;
 	dw22.time1588clk_sel_div2 = 0;
-
-	err = ice_write_cgu_reg(hw, ICE_CGU_R22, dw22.val);
-	if (err)
-		return err;
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R22, dw22.val);
 
 	/* Configure the TSPLL pre divisor and clock source */
-	err = ice_read_cgu_reg(hw, ICE_CGU_R23, &dw23.val);
-	if (err)
-		return err;
-
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R23, &dw23.val);
 	dw23.ref1588_ck_div = 0;
 	dw23.time_ref_sel = clk_src;
-
-	err = ice_write_cgu_reg(hw, ICE_CGU_R23, dw23.val);
-	if (err)
-		return err;
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R23, dw23.val);
 
 	dw24.fbdiv_frac = 0;
-
-	err = ice_write_cgu_reg(hw, ICE_CGU_R24, dw24.val);
-	if (err)
-		return err;
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R24, dw24.val);
 
 	/* Finally, enable the PLL */
 	dw23.ts_pll_enable = 1;
-
-	err = ice_write_cgu_reg(hw, ICE_CGU_R23, dw23.val);
-	if (err)
-		return err;
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R23, dw23.val);
 
 	/* Wait to verify if the PLL locks */
 	usleep_range(1000, 5000);
 
-	err = ice_read_cgu_reg(hw, TSPLL_RO_LOCK_E825C, &ro_lock.val);
-	if (err)
-		return err;
-
+	ICE_READ_CGU_REG_OR_DIE(hw, TSPLL_RO_LOCK_E825C, &ro_lock.val);
 	if (!ro_lock.plllock_true_lock_cri) {
 		dev_warn(ice_hw_to_dev(hw), "TSPLL failed to lock\n");
 		return -EBUSY;
@@ -445,14 +354,9 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 static int ice_tspll_dis_sticky_bits_e825c(struct ice_hw *hw)
 {
 	union tspll_bw_tdc_e825c bw_tdc;
-	int err;
-
-	err = ice_read_cgu_reg(hw, TSPLL_BW_TDC_E825C, &bw_tdc.val);
-	if (err)
-		return err;
 
+	ICE_READ_CGU_REG_OR_DIE(hw, TSPLL_BW_TDC_E825C, &bw_tdc.val);
 	bw_tdc.i_plllock_sel_1_0 = 0;
-
 	return ice_write_cgu_reg(hw, TSPLL_BW_TDC_E825C, bw_tdc.val);
 }
 
@@ -468,15 +372,12 @@ static int ice_tspll_dis_sticky_bits_e825c(struct ice_hw *hw)
 int ice_tspll_cfg_pps_out_e825c(struct ice_hw *hw, bool enable)
 {
 	union ice_cgu_r9 r9;
-	int err;
 
-	err = ice_read_cgu_reg_e82x(hw, ICE_CGU_R9, &r9.val);
-	if (err)
-		return err;
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R9, &r9.val);
 
 	r9.one_pps_out_en = enable;
 	r9.one_pps_out_amp = enable * ICE_ONE_PPS_OUT_AMP_MAX;
-	return ice_write_cgu_reg_e82x(hw, ICE_CGU_R9, r9.val);
+	return ice_write_cgu_reg(hw, ICE_CGU_R9, r9.val);
 }
 
 /**
-- 
2.48.1

