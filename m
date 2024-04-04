Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6061189842C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Apr 2024 11:35:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E2F7D41BC0;
	Thu,  4 Apr 2024 09:35:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MIWBge5t40mS; Thu,  4 Apr 2024 09:35:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4DD3641B78
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712223338;
	bh=5AdQu88n//2WcCDywSOV+plACTPWgH8eTi7fxGs1afA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FC7dw3vzRiRLZ0Q10wONO/FNQEI85wfoQFiHiVG0fMIwfO3xrkQG1ASeYMngm+D7h
	 x+zkUi90XP0gEcRwE2J4btB/F91DAi7lEFRXKcgYNHwHAeSI9mBkDBtiwmpQazgKvC
	 oOHVm4NoE2Cjtno4zEwt3JIXNlcnsJpdyoK8C8suRV4fRPJ1o7B1LFM/mMXEqYWa+n
	 YU0VjeLFGuzj74Imb7NagnEhoBjNIDASCfEQM6JPhg7aWIUNi/DzTG22o+PCc4hzg1
	 zIVZPvznDcXI/80NjLUpsHW98VlyxDLcRQLn5x20YDyWXxBmutmnaSvcn+JkMaPzPO
	 Mv34jmqG1v3Wg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4DD3641B78;
	Thu,  4 Apr 2024 09:35:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9F35C1BF3D5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 09:35:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6313B60F10
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 09:35:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KvBAtaJU1pdn for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Apr 2024 09:35:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 24E2060747
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 24E2060747
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 24E2060747
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 09:35:23 +0000 (UTC)
X-CSE-ConnectionGUID: 1t0Q8LOFR0m+8MohIlbuYg==
X-CSE-MsgGUID: LzFwHlZXT/WQAQi/kmzNgw==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="29966607"
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="29966607"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 02:23:06 -0700
X-CSE-ConnectionGUID: kLdiY2OjS5aZL0Nj+4x69w==
X-CSE-MsgGUID: TqkYfxA+TiaD5sfxylmA1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="56180782"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orviesa001.jf.intel.com with ESMTP; 04 Apr 2024 02:23:03 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  4 Apr 2024 11:09:57 +0200
Message-ID: <20240404092238.26975-23-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240404092238.26975-14-karol.kolacinski@intel.com>
References: <20240404092238.26975-14-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712223323; x=1743759323;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8uJr83rG78uIlz8ZDPOpO+iQbD9YcegiJ6jyrQ4+82A=;
 b=To4z+O1XOxZ7tEyc84NbbQyVxcIQKR2fDtkIXHi/RngM3vJPSK5vroON
 i2rdfJ0kV60ADXIvrpfqMo1Jb6r9uesJw2/OlgtYaeoiY3UlY4e3Ij0Q/
 PBi9tJvPlYT6hDCCggOW0l9jxGr9Wk+UPi+9g08ThMgjKZ/kiiXGt00d1
 j9pLyGF+14Gmgyxk/GJdgwlletLjolM8ehC9qyvKk3NDxt7///Vd35LF4
 gUbMUObVtXyKmH8IhsmaUmdKxO8qqBTw/EYDs0UsNewFSitaSkNIv5ZtR
 VjCs0312k6HTqgR5s7F1qEk94RfXnr2qtdroEvG57Xo4JhTFoJeE88EsR
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=To4z+O1X
Subject: [Intel-wired-lan] [PATCH v5 iwl-next 09/12] ice: Add support for
 E825-C TS PLL handling
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
Cc: Michal Michalik <michal.michalik@intel.com>, netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Michalik <michal.michalik@intel.com>

The CGU layout of E825-C is a little different than E822/E823. Add
support the new hardware adding relevant functions.

Signed-off-by: Michal Michalik <michal.michalik@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
V4 -> V5: added UL to some of tspll_fbdiv_frac values in e825c_cgu_params

 drivers/net/ethernet/intel/ice/ice_cgu_regs.h |  65 +++++
 .../net/ethernet/intel/ice/ice_ptp_consts.h   |  87 ++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 247 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  22 ++
 drivers/net/ethernet/intel/ice/ice_type.h     |   2 +-
 5 files changed, 410 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_cgu_regs.h b/drivers/net/ethernet/intel/ice/ice_cgu_regs.h
index 36aeb10eefb7..10d9d74f3545 100644
--- a/drivers/net/ethernet/intel/ice/ice_cgu_regs.h
+++ b/drivers/net/ethernet/intel/ice/ice_cgu_regs.h
@@ -27,6 +27,17 @@ union nac_cgu_dword9 {
 	u32 val;
 };
 
+#define NAC_CGU_DWORD16_E825C 0x40
+union nac_cgu_dword16_e825c {
+	struct {
+		u32 synce_remndr : 6;
+		u32 synce_phlmt_en : 1;
+		u32 misc13 : 17;
+		u32 tspll_ck_refclkfreq : 8;
+	};
+	u32 val;
+};
+
 #define NAC_CGU_DWORD19 0x4c
 union nac_cgu_dword19 {
 	struct {
@@ -67,6 +78,22 @@ union nac_cgu_dword22 {
 	u32 val;
 };
 
+#define NAC_CGU_DWORD23_E825C 0x5C
+union nac_cgu_dword23_e825c {
+	struct {
+		u32 cgupll_fbdiv_intgr : 10;
+		u32 ux56pll_fbdiv_intgr : 10;
+		u32 misc20 : 4;
+		u32 ts_pll_enable : 1;
+		u32 time_sync_tspll_align_sel : 1;
+		u32 ext_synce_sel : 1;
+		u32 ref1588_ck_div : 4;
+		u32 time_ref_sel : 1;
+
+	};
+	u32 val;
+};
+
 #define NAC_CGU_DWORD24 0x60
 union nac_cgu_dword24 {
 	struct {
@@ -113,4 +140,42 @@ union tspll_ro_bwm_lf {
 	u32 val;
 };
 
+#define TSPLL_RO_LOCK_E825C 0x3f0
+union tspll_ro_lock_e825c {
+	struct {
+		u32 bw_freqov_high_cri_7_0 : 8;
+		u32 bw_freqov_high_cri_9_8 : 2;
+		u32 reserved455 : 1;
+		u32 plllock_gain_tran_cri : 1;
+		u32 plllock_true_lock_cri : 1;
+		u32 pllunlock_flag_cri : 1;
+		u32 afcerr_cri : 1;
+		u32 afcdone_cri : 1;
+		u32 feedfwrdgain_cal_cri_7_0 : 8;
+		u32 reserved462 : 8;
+	};
+	u32 val;
+};
+
+#define TSPLL_BW_TDC_E825C 0x31c
+union tspll_bw_tdc_e825c {
+	struct {
+		u32 i_tdc_offset_lock_1_0 : 2;
+		u32 i_bbthresh1_2_0 : 3;
+		u32 i_bbthresh2_2_0 : 3;
+		u32 i_tdcsel_1_0 : 2;
+		u32 i_tdcovccorr_en_h : 1;
+		u32 i_divretimeren : 1;
+		u32 i_bw_ampmeas_window : 1;
+		u32 i_bw_lowerbound_2_0 : 3;
+		u32 i_bw_upperbound_2_0 : 3;
+		u32 i_bw_mode_1_0 : 2;
+		u32 i_ft_mode_sel_2_0 : 3;
+		u32 i_bwphase_4_0 : 5;
+		u32 i_plllock_sel_1_0 : 2;
+		u32 i_afc_divratio : 1;
+	};
+	u32 val;
+};
+
 #endif /* _ICE_CGU_REGS_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
index ef180936f60c..e6980b94a6c1 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
@@ -470,6 +470,93 @@ const struct ice_cgu_pll_params_e82x e822_cgu_params[NUM_ICE_TIME_REF_FREQ] = {
 	},
 };
 
+const
+struct ice_cgu_pll_params_e825c e825c_cgu_params[NUM_ICE_TIME_REF_FREQ] = {
+	/* ICE_TIME_REF_FREQ_25_000 -> 25 MHz */
+	{
+		/* tspll_ck_refclkfreq */
+		0x19,
+		/* tspll_ndivratio */
+		1,
+		/* tspll_fbdiv_intgr */
+		320,
+		/* tspll_fbdiv_frac */
+		0,
+		/* ref1588_ck_div */
+		0,
+	},
+
+	/* ICE_TIME_REF_FREQ_122_880 -> 122.88 MHz */
+	{
+		/* tspll_ck_refclkfreq */
+		0x29,
+		/* tspll_ndivratio */
+		3,
+		/* tspll_fbdiv_intgr */
+		195,
+		/* tspll_fbdiv_frac */
+		1342177280UL,
+		/* ref1588_ck_div */
+		0,
+	},
+
+	/* ICE_TIME_REF_FREQ_125_000 -> 125 MHz */
+	{
+		/* tspll_ck_refclkfreq */
+		0x3E,
+		/* tspll_ndivratio */
+		2,
+		/* tspll_fbdiv_intgr */
+		128,
+		/* tspll_fbdiv_frac */
+		0,
+		/* ref1588_ck_div */
+		0,
+	},
+
+	/* ICE_TIME_REF_FREQ_153_600 -> 153.6 MHz */
+	{
+		/* tspll_ck_refclkfreq */
+		0x33,
+		/* tspll_ndivratio */
+		3,
+		/* tspll_fbdiv_intgr */
+		156,
+		/* tspll_fbdiv_frac */
+		1073741824UL,
+		/* ref1588_ck_div */
+		0,
+	},
+
+	/* ICE_TIME_REF_FREQ_156_250 -> 156.25 MHz */
+	{
+		/* tspll_ck_refclkfreq */
+		0x1F,
+		/* tspll_ndivratio */
+		5,
+		/* tspll_fbdiv_intgr */
+		256,
+		/* tspll_fbdiv_frac */
+		0,
+		/* ref1588_ck_div */
+		0,
+	},
+
+	/* ICE_TIME_REF_FREQ_245_760 -> 245.76 MHz */
+	{
+		/* tspll_ck_refclkfreq */
+		0x52,
+		/* tspll_ndivratio */
+		3,
+		/* tspll_fbdiv_intgr */
+		97,
+		/* tspll_fbdiv_frac */
+		2818572288UL,
+		/* ref1588_ck_div */
+		0,
+	},
+};
+
 /* struct ice_vernier_info_e82x
  *
  * E822 hardware calibrates the delay of the timestamp indication from the
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 38510ca1679a..5dbab905be22 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -323,8 +323,8 @@ static const char *ice_clk_freq_str(u8 clk_freq)
 static const char *ice_clk_src_str(u8 clk_src)
 {
 	switch ((enum ice_clk_src)clk_src) {
-	case ICE_CLK_SRC_TCX0:
-		return "TCX0";
+	case ICE_CLK_SRC_TCXO:
+		return "TCXO";
 	case ICE_CLK_SRC_TIME_REF:
 		return "TIME_REF";
 	default:
@@ -336,7 +336,7 @@ static const char *ice_clk_src_str(u8 clk_src)
  * ice_cfg_cgu_pll_e82x - Configure the Clock Generation Unit
  * @hw: pointer to the HW struct
  * @clk_freq: Clock frequency to program
- * @clk_src: Clock source to select (TIME_REF, or TCX0)
+ * @clk_src: Clock source to select (TIME_REF, or TCXO)
  *
  * Configure the Clock Generation Unit with the desired clock frequency and
  * time reference, enabling the PLL which drives the PTP hardware clock.
@@ -364,10 +364,10 @@ static int ice_cfg_cgu_pll_e82x(struct ice_hw *hw,
 		return -EINVAL;
 	}
 
-	if (clk_src == ICE_CLK_SRC_TCX0 &&
+	if (clk_src == ICE_CLK_SRC_TCXO &&
 	    clk_freq != ICE_TIME_REF_FREQ_25_000) {
 		dev_warn(ice_hw_to_dev(hw),
-			 "TCX0 only supports 25 MHz frequency\n");
+			 "TCXO only supports 25 MHz frequency\n");
 		return -EINVAL;
 	}
 
@@ -472,14 +472,190 @@ static int ice_cfg_cgu_pll_e82x(struct ice_hw *hw,
 }
 
 /**
- * ice_init_cgu_e82x - Initialize CGU with settings from firmware
- * @hw: pointer to the HW structure
+ * ice_cfg_cgu_pll_e825c - Configure the Clock Generation Unit for E825-C
+ * @hw: pointer to the HW struct
+ * @clk_freq: Clock frequency to program
+ * @clk_src: Clock source to select (TIME_REF, or TCXO)
  *
- * Initialize the Clock Generation Unit of the E822 device.
+ * Configure the Clock Generation Unit with the desired clock frequency and
+ * time reference, enabling the PLL which drives the PTP hardware clock.
  */
-static int ice_init_cgu_e82x(struct ice_hw *hw)
+static int ice_cfg_cgu_pll_e825c(struct ice_hw *hw,
+				 enum ice_time_ref_freq clk_freq,
+				 enum ice_clk_src clk_src)
+{
+	union tspll_ro_lock_e825c ro_lock;
+	union nac_cgu_dword16_e825c dw16;
+	union nac_cgu_dword23_e825c dw23;
+	union nac_cgu_dword19 dw19;
+	union nac_cgu_dword22 dw22;
+	union nac_cgu_dword24 dw24;
+	union nac_cgu_dword9 dw9;
+	int err;
+
+	if (clk_freq >= NUM_ICE_TIME_REF_FREQ) {
+		dev_warn(ice_hw_to_dev(hw), "Invalid TIME_REF frequency %u\n",
+			 clk_freq);
+		return -EINVAL;
+	}
+
+	if (clk_src >= NUM_ICE_CLK_SRC) {
+		dev_warn(ice_hw_to_dev(hw), "Invalid clock source %u\n",
+			 clk_src);
+		return -EINVAL;
+	}
+
+	if (clk_src == ICE_CLK_SRC_TCXO &&
+	    clk_freq != ICE_TIME_REF_FREQ_156_250) {
+		dev_warn(ice_hw_to_dev(hw),
+			 "TCXO only supports 156.25 MHz frequency\n");
+		return -EINVAL;
+	}
+
+	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD9, &dw9.val);
+	if (err)
+		return err;
+
+	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD24, &dw24.val);
+	if (err)
+		return err;
+
+	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD16_E825C, &dw16.val);
+	if (err)
+		return err;
+
+	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD23_E825C, &dw23.val);
+	if (err)
+		return err;
+
+	err = ice_read_cgu_reg_e82x(hw, TSPLL_RO_LOCK_E825C, &ro_lock.val);
+	if (err)
+		return err;
+
+	/* Log the current clock configuration */
+	ice_debug(hw, ICE_DBG_PTP, "Current CGU configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
+		  dw24.ts_pll_enable ? "enabled" : "disabled",
+		  ice_clk_src_str(dw23.time_ref_sel),
+		  ice_clk_freq_str(dw9.time_ref_freq_sel),
+		  ro_lock.plllock_true_lock_cri ? "locked" : "unlocked");
+
+	/* Disable the PLL before changing the clock source or frequency */
+	if (dw23.ts_pll_enable) {
+		dw23.ts_pll_enable = 0;
+
+		err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD23_E825C,
+					     dw23.val);
+		if (err)
+			return err;
+	}
+
+	/* Set the frequency */
+	dw9.time_ref_freq_sel = clk_freq;
+
+	/* Enable the correct receiver */
+	if (clk_src == ICE_CLK_SRC_TCXO) {
+		dw9.time_ref_en = 0;
+		dw9.clk_eref0_en = 1;
+	} else {
+		dw9.time_ref_en = 1;
+		dw9.clk_eref0_en = 0;
+	}
+	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD9, dw9.val);
+	if (err)
+		return err;
+
+	/* Choose the referenced frequency */
+	dw16.tspll_ck_refclkfreq =
+	e825c_cgu_params[clk_freq].tspll_ck_refclkfreq;
+	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD16_E825C, dw16.val);
+	if (err)
+		return err;
+
+	/* Configure the TS PLL feedback divisor */
+	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD19, &dw19.val);
+	if (err)
+		return err;
+
+	dw19.tspll_fbdiv_intgr =
+		e825c_cgu_params[clk_freq].tspll_fbdiv_intgr;
+	dw19.tspll_ndivratio =
+		e825c_cgu_params[clk_freq].tspll_ndivratio;
+
+	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD19, dw19.val);
+	if (err)
+		return err;
+
+	/* Configure the TS PLL post divisor */
+	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD22, &dw22.val);
+	if (err)
+		return err;
+
+	/* These two are constant for E825C */
+	dw22.time1588clk_div = 5;
+	dw22.time1588clk_sel_div2 = 0;
+
+	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD22, dw22.val);
+	if (err)
+		return err;
+
+	/* Configure the TS PLL pre divisor and clock source */
+	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD23_E825C, &dw23.val);
+	if (err)
+		return err;
+
+	dw23.ref1588_ck_div =
+		e825c_cgu_params[clk_freq].ref1588_ck_div;
+	dw23.time_ref_sel = clk_src;
+
+	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD23_E825C, dw23.val);
+	if (err)
+		return err;
+
+	dw24.tspll_fbdiv_frac =
+		e825c_cgu_params[clk_freq].tspll_fbdiv_frac;
+
+	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD24, dw24.val);
+	if (err)
+		return err;
+
+	/* Finally, enable the PLL */
+	dw23.ts_pll_enable = 1;
+
+	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD23_E825C, dw23.val);
+	if (err)
+		return err;
+
+	/* Wait to verify if the PLL locks */
+	usleep_range(1000, 5000);
+
+	err = ice_read_cgu_reg_e82x(hw, TSPLL_RO_LOCK_E825C, &ro_lock.val);
+	if (err)
+		return err;
+
+	if (!ro_lock.plllock_true_lock_cri) {
+		dev_warn(ice_hw_to_dev(hw), "CGU PLL failed to lock\n");
+		return -EBUSY;
+	}
+
+	/* Log the current clock configuration */
+	ice_debug(hw, ICE_DBG_PTP, "New CGU configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
+		  dw24.ts_pll_enable ? "enabled" : "disabled",
+		  ice_clk_src_str(dw23.time_ref_sel),
+		  ice_clk_freq_str(dw9.time_ref_freq_sel),
+		  ro_lock.plllock_true_lock_cri ? "locked" : "unlocked");
+
+	return 0;
+}
+
+/**
+ * ice_cfg_cgu_pll_dis_sticky_bits_e82x - disable TS PLL sticky bits
+ * @hw: pointer to the HW struct
+ *
+ * Configure the Clock Generation Unit TS PLL sticky bits so they don't latch on
+ * losing TS PLL lock, but always show current state.
+ */
+static int ice_cfg_cgu_pll_dis_sticky_bits_e82x(struct ice_hw *hw)
 {
-	struct ice_ts_func_info *ts_info = &hw->func_caps.ts_func_info;
 	union tspll_cntr_bist_settings cntr_bist;
 	int err;
 
@@ -494,14 +670,61 @@ static int ice_init_cgu_e82x(struct ice_hw *hw)
 
 	err = ice_write_cgu_reg_e82x(hw, TSPLL_CNTR_BIST_SETTINGS,
 				     cntr_bist.val);
+	return err;
+}
+
+/**
+ * ice_cfg_cgu_pll_dis_sticky_bits_e825c - disable TS PLL sticky bits for E825-C
+ * @hw: pointer to the HW struct
+ *
+ * Configure the Clock Generation Unit TS PLL sticky bits so they don't latch on
+ * losing TS PLL lock, but always show current state.
+ */
+static int ice_cfg_cgu_pll_dis_sticky_bits_e825c(struct ice_hw *hw)
+{
+	union tspll_bw_tdc_e825c bw_tdc;
+	int err;
+
+	err = ice_read_cgu_reg_e82x(hw, TSPLL_BW_TDC_E825C, &bw_tdc.val);
+	if (err)
+		return err;
+
+	bw_tdc.i_plllock_sel_1_0 = 0;
+
+	err = ice_write_cgu_reg_e82x(hw, TSPLL_BW_TDC_E825C, bw_tdc.val);
+	return err;
+}
+
+/**
+ * ice_init_cgu_e82x - Initialize CGU with settings from firmware
+ * @hw: pointer to the HW structure
+ *
+ * Initialize the Clock Generation Unit of the E822 device.
+ */
+static int ice_init_cgu_e82x(struct ice_hw *hw)
+{
+	struct ice_ts_func_info *ts_info = &hw->func_caps.ts_func_info;
+	int err;
+
+	/* Disable sticky lock detection so lock err reported is accurate */
+	if (ice_is_e825c(hw))
+		err = ice_cfg_cgu_pll_dis_sticky_bits_e825c(hw);
+	else
+		err = ice_cfg_cgu_pll_dis_sticky_bits_e82x(hw);
 	if (err)
 		return err;
 
 	/* Configure the CGU PLL using the parameters from the function
 	 * capabilities.
 	 */
-	return ice_cfg_cgu_pll_e82x(hw, ts_info->time_ref,
-				   (enum ice_clk_src)ts_info->clk_src);
+	if (ice_is_e825c(hw))
+		err = ice_cfg_cgu_pll_e825c(hw, ts_info->time_ref,
+					    (enum ice_clk_src)ts_info->clk_src);
+	else
+		err = ice_cfg_cgu_pll_e82x(hw, ts_info->time_ref,
+					   (enum ice_clk_src)ts_info->clk_src);
+
+	return err;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 4cff4ffac32f..d5fe9d43b5e5 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -288,6 +288,28 @@ struct ice_cgu_pin_desc {
 extern const struct
 ice_cgu_pll_params_e82x e822_cgu_params[NUM_ICE_TIME_REF_FREQ];
 
+/**
+ * struct ice_cgu_pll_params_e825c
+ * @tspll_ck_refclkfreq: tspll_ck_refclkfreq selection
+ * @tspll_ndivratio: ndiv ratio that goes directly to the pll
+ * @tspll_fbdiv_intgr: TS PLL integer feedback divide
+ * @tspll_fbdiv_frac:  TS PLL fractional feedback divide
+ * @ref1588_ck_div: clock divider for tspll ref
+ *
+ * Clock Generation Unit parameters used to program the PLL based on the
+ * selected TIME_REF/TCXO frequency.
+ */
+struct ice_cgu_pll_params_e825c {
+	u32 tspll_ck_refclkfreq;
+	u32 tspll_ndivratio;
+	u32 tspll_fbdiv_intgr;
+	u32 tspll_fbdiv_frac;
+	u32 ref1588_ck_div;
+};
+
+extern const struct
+ice_cgu_pll_params_e825c e825c_cgu_params[NUM_ICE_TIME_REF_FREQ];
+
 #define E810C_QSFP_C827_0_HANDLE 2
 #define E810C_QSFP_C827_1_HANDLE 3
 
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index ccf50df50fcd..2baf305a0c95 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -327,7 +327,7 @@ enum ice_time_ref_freq {
 
 /* Clock source specification */
 enum ice_clk_src {
-	ICE_CLK_SRC_TCX0	= 0, /* Temperature compensated oscillator  */
+	ICE_CLK_SRC_TCXO	= 0, /* Temperature compensated oscillator */
 	ICE_CLK_SRC_TIME_REF	= 1, /* Use TIME_REF reference clock */
 
 	NUM_ICE_CLK_SRC
-- 
2.43.0

