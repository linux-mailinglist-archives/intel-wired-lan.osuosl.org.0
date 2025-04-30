Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D45EAA5831
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 May 2025 00:51:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CBCE240517;
	Wed, 30 Apr 2025 22:51:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XE6tJPtuoHPG; Wed, 30 Apr 2025 22:51:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A568E403D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746053513;
	bh=QTVUFcRcWoRRJdhYMUso+iPuJqbhOTJ16MmJgGqSqGM=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Fv5xNCiF7JbK2foVbaB08a8ko+g8ftjGvBu7tYI8Qvf69enqmtjCz1wwME+8uRxa6
	 o/8mFUhQb+7BNLg9/BVgB8YjtLS+XtqgXZphlTGnonwEAk6xYsIuwXKROQdHk9LH7I
	 rqzvzwWDlNfQEVz9j2A6Hh6vf33rU5K9gqX0VZfmYyqpr0lvLa+7LgmBZRCMa+b81y
	 z9iyQ0uWYd9ZrkCi08bsHCNNtnudIOm/f89R27BEtdfiw9Q/GwrsdPp5bJOUmzgpcI
	 6SfqEO82K/S4GxYHK1S90ysApWo5Juty+Mdew0In/qPBnfUTGHGoCJ4hegwQ+SxdQj
	 Y/gRPofFFGnRg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A568E403D8;
	Wed, 30 Apr 2025 22:51:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0F9DB943
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 22:51:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A0FF4401AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 22:51:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IdsX5TdzMhWJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Apr 2025 22:51:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9B24F40358
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B24F40358
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9B24F40358
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 22:51:42 +0000 (UTC)
X-CSE-ConnectionGUID: ANTo/4MjQq6tHoVGClUBLQ==
X-CSE-MsgGUID: IVFnC6TAQEODPw1DLNi88A==
X-IronPort-AV: E=McAfee;i="6700,10204,11419"; a="73120904"
X-IronPort-AV: E=Sophos;i="6.15,252,1739865600"; d="scan'208";a="73120904"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 15:51:41 -0700
X-CSE-ConnectionGUID: CtVlZ+KNQRe1je2OT69frg==
X-CSE-MsgGUID: cfZAdZ3ORtWwfAGNdoWL2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,252,1739865600"; d="scan'208";a="134145097"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 15:51:40 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 30 Apr 2025 15:51:41 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250430-kk-tspll-improvements-alignment-v3-10-ab8472e86204@intel.com>
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
 t=1746053502; x=1777589502;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=o6b9A7c5CbQvvgJnszH5REqtrRDNrLv1KV70SOJi3CA=;
 b=VKnCp0Ak6M6yPHi1dKkVXN1e4OGxWk5pP9/5E/dKPws5eNsERs2caPI0
 oTjBOXOKLvMA8tlW1p4K3qUOxfmoxnQKcEldczTZJz5cXsqdLFiTlOueX
 +VdtToVTUyQM7j2AdMibLHhTLkrQhlTFCuVEuT+9HM67a+7lL+bQIhqqI
 16zaJS+GxMOnpG9tYeD12tau6i0E46wU+vXHc+vVbn/UT4LpttnnxV0X0
 eEeabGqTocyByj3dCy68nsnLNZIdtSFX8AMueU54Svfo7n/tvVWFdPbSg
 zc/gtWOUEsNqNp4LG4tUr+/+SXKJ9rpY+wQSXP9Gphf3+H6a1SNM+YOA9
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VKnCp0Ak
Subject: [Intel-wired-lan] [PATCH v3 10/15] ice: use bitfields instead of
 unions for CGU regs
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

From: Karol Kolacinski <karol.kolacinski@intel.com>

Switch from unions with bitfield structs to definitions with bitfield
masks. This is necessary, because some registers have different
field definitions or even use a different register for the same fields
based on HW type.

Remove unused register fields.

Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.h | 212 ++++---------------------
 drivers/net/ethernet/intel/ice/ice_tspll.c  | 234 ++++++++++++++--------------
 2 files changed, 153 insertions(+), 293 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index fb671e243d5b9520ed3cb1ca3fcb4c697d3a5c94..7471d705b108fcbd0a0bc0688ca6204cf9904800 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -39,194 +39,46 @@
 #define FEC_RECEIVER_ID_PCS0 (0x33 << FEC_RECV_ID_SHIFT)
 #define FEC_RECEIVER_ID_PCS1 (0x34 << FEC_RECV_ID_SHIFT)
 
-#define ICE_CGU_R9 0x24
-union ice_cgu_r9 {
-	struct {
-		u32 time_ref_freq_sel : 3;
-		u32 clk_eref1_en : 1;
-		u32 clk_eref0_en : 1;
-		u32 time_ref_en : 1;
-		u32 time_sync_en : 1;
-		u32 one_pps_out_en : 1;
-		u32 clk_ref_synce_en : 1;
-		u32 clk_synce1_en : 1;
-		u32 clk_synce0_en : 1;
-		u32 net_clk_ref1_en : 1;
-		u32 net_clk_ref0_en : 1;
-		u32 clk_synce1_amp : 2;
-		u32 misc6 : 1;
-		u32 clk_synce0_amp : 2;
-		u32 one_pps_out_amp : 2;
-		u32 misc24 : 12;
-	};
-	u32 val;
-};
+#define ICE_CGU_R9			0x24
+#define ICE_CGU_R9_TIME_REF_FREQ_SEL	GENMASK(2, 0)
+#define ICE_CGU_R9_CLK_EREF0_EN		BIT(4)
+#define ICE_CGU_R9_TIME_REF_EN		BIT(5)
+#define ICE_CGU_R9_TIME_SYNC_EN		BIT(6)
+#define ICE_CGU_R9_ONE_PPS_OUT_EN	BIT(7)
+#define ICE_CGU_R9_ONE_PPS_OUT_AMP	GENMASK(19, 18)
 
-#define ICE_CGU_R16 0x40
-union ice_cgu_r16 {
-	struct {
-		u32 synce_remndr : 6;
-		u32 synce_phlmt_en : 1;
-		u32 misc13 : 17;
-		u32 ck_refclkfreq : 8;
-	};
-	u32 val;
-};
+#define ICE_CGU_R16			0x40
+#define ICE_CGU_R16_TSPLL_CK_REFCLKFREQ	GENMASK(31, 24)
 
-#define ICE_CGU_R19 0x4c
-union ice_cgu_r19_e82x {
-	struct {
-		u32 fbdiv_intgr : 8;
-		u32 fdpll_ulck_thr : 5;
-		u32 misc15 : 3;
-		u32 ndivratio : 4;
-		u32 tspll_iref_ndivratio : 3;
-		u32 misc19 : 1;
-		u32 japll_ndivratio : 4;
-		u32 japll_iref_ndivratio : 3;
-		u32 misc27 : 1;
-	};
-	u32 val;
-};
+#define ICE_CGU_R19			0x4C
+#define ICE_CGU_R19_TSPLL_FBDIV_INTGR_E82X	GENMASK(7, 0)
+#define ICE_CGU_R19_TSPLL_FBDIV_INTGR_E825	GENMASK(9, 0)
+#define ICE_CGU_R19_TSPLL_NDIVRATIO	GENMASK(19, 16)
 
-union ice_cgu_r19_e825 {
-	struct {
-		u32 tspll_fbdiv_intgr : 10;
-		u32 fdpll_ulck_thr : 5;
-		u32 misc15 : 1;
-		u32 tspll_ndivratio : 4;
-		u32 tspll_iref_ndivratio : 3;
-		u32 misc19 : 1;
-		u32 japll_ndivratio : 4;
-		u32 japll_postdiv_pdivratio : 3;
-		u32 misc27 : 1;
-	};
-	u32 val;
-};
+#define ICE_CGU_R22			0x58
+#define ICE_CGU_R22_TIME1588CLK_DIV	GENMASK(23, 20)
+#define ICE_CGU_R22_TIME1588CLK_DIV2	BIT(30)
 
-#define ICE_CGU_R22 0x58
-union ice_cgu_r22 {
-	struct {
-		u32 fdpll_frac_div_out_nc : 2;
-		u32 fdpll_lock_int_for : 1;
-		u32 synce_hdov_int_for : 1;
-		u32 synce_lock_int_for : 1;
-		u32 fdpll_phlead_slip_nc : 1;
-		u32 fdpll_acc1_ovfl_nc : 1;
-		u32 fdpll_acc2_ovfl_nc : 1;
-		u32 synce_status_nc : 6;
-		u32 fdpll_acc1f_ovfl : 1;
-		u32 misc18 : 1;
-		u32 fdpllclk_div : 4;
-		u32 time1588clk_div : 4;
-		u32 synceclk_div : 4;
-		u32 synceclk_sel_div2 : 1;
-		u32 fdpllclk_sel_div2 : 1;
-		u32 time1588clk_sel_div2 : 1;
-		u32 misc3 : 1;
-	};
-	u32 val;
-};
+#define ICE_CGU_R23			0x5C
+#define ICE_CGU_R24			0x60
+#define ICE_CGU_R24_FBDIV_FRAC		GENMASK(21, 0)
+#define ICE_CGU_R23_R24_TSPLL_ENABLE	BIT(24)
+#define ICE_CGU_R23_R24_REF1588_CK_DIV	GENMASK(30, 27)
+#define ICE_CGU_R23_R24_TIME_REF_SEL	BIT(31)
 
-#define ICE_CGU_R23 0x5C
-union ice_cgu_r23 {
-	struct {
-		u32 cgupll_fbdiv_intgr : 10;
-		u32 ux56pll_fbdiv_intgr : 10;
-		u32 misc20 : 4;
-		u32 ts_pll_enable : 1;
-		u32 time_sync_tspll_align_sel : 1;
-		u32 ext_synce_sel : 1;
-		u32 ref1588_ck_div : 4;
-		u32 time_ref_sel : 1;
+#define ICE_CGU_BW_TDC			0x31C
+#define ICE_CGU_BW_TDC_PLLLOCK_SEL	GENMASK(30, 29)
 
-	};
-	u32 val;
-};
+#define ICE_CGU_RO_LOCK			0x3F0
+#define ICE_CGU_RO_LOCK_TRUE_LOCK	BIT(12)
+#define ICE_CGU_RO_LOCK_UNLOCK		BIT(13)
 
-#define ICE_CGU_R24 0x60
-union ice_cgu_r24 {
-	struct {
-		u32 fbdiv_frac : 22;
-		u32 misc20 : 2;
-		u32 ts_pll_enable : 1;
-		u32 time_sync_tspll_align_sel : 1;
-		u32 ext_synce_sel : 1;
-		u32 ref1588_ck_div : 4;
-		u32 time_ref_sel : 1;
-	};
-	u32 val;
-};
+#define ICE_CGU_CNTR_BIST		0x344
+#define ICE_CGU_CNTR_BIST_PLLLOCK_SEL_0	BIT(15)
+#define ICE_CGU_CNTR_BIST_PLLLOCK_SEL_1	BIT(16)
 
-#define TSPLL_CNTR_BIST_SETTINGS 0x344
-union tspll_cntr_bist_settings {
-	struct {
-		u32 i_irefgen_settling_time_cntr_7_0 : 8;
-		u32 i_irefgen_settling_time_ro_standby_1_0 : 2;
-		u32 reserved195 : 5;
-		u32 i_plllock_sel_0 : 1;
-		u32 i_plllock_sel_1 : 1;
-		u32 i_plllock_cnt_6_0 : 7;
-		u32 i_plllock_cnt_10_7 : 4;
-		u32 reserved200 : 4;
-	};
-	u32 val;
-};
-
-#define TSPLL_RO_BWM_LF 0x370
-union tspll_ro_bwm_lf {
-	struct {
-		u32 bw_freqov_high_cri_7_0 : 8;
-		u32 bw_freqov_high_cri_9_8 : 2;
-		u32 biascaldone_cri : 1;
-		u32 plllock_gain_tran_cri : 1;
-		u32 plllock_true_lock_cri : 1;
-		u32 pllunlock_flag_cri : 1;
-		u32 afcerr_cri : 1;
-		u32 afcdone_cri : 1;
-		u32 feedfwrdgain_cal_cri_7_0 : 8;
-		u32 m2fbdivmod_cri_7_0 : 8;
-	};
-	u32 val;
-};
-
-#define TSPLL_RO_LOCK_E825C 0x3f0
-union tspll_ro_lock_e825c {
-	struct {
-		u32 bw_freqov_high_cri_7_0 : 8;
-		u32 bw_freqov_high_cri_9_8 : 2;
-		u32 reserved455 : 1;
-		u32 plllock_gain_tran_cri : 1;
-		u32 plllock_true_lock_cri : 1;
-		u32 pllunlock_flag_cri : 1;
-		u32 afcerr_cri : 1;
-		u32 afcdone_cri : 1;
-		u32 feedfwrdgain_cal_cri_7_0 : 8;
-		u32 reserved462 : 8;
-	};
-	u32 val;
-};
-
-#define TSPLL_BW_TDC_E825C 0x31c
-union tspll_bw_tdc_e825c {
-	struct {
-		u32 i_tdc_offset_lock_1_0 : 2;
-		u32 i_bbthresh1_2_0 : 3;
-		u32 i_bbthresh2_2_0 : 3;
-		u32 i_tdcsel_1_0 : 2;
-		u32 i_tdcovccorr_en_h : 1;
-		u32 i_divretimeren : 1;
-		u32 i_bw_ampmeas_window : 1;
-		u32 i_bw_lowerbound_2_0 : 3;
-		u32 i_bw_upperbound_2_0 : 3;
-		u32 i_bw_mode_1_0 : 2;
-		u32 i_ft_mode_sel_2_0 : 3;
-		u32 i_bwphase_4_0 : 5;
-		u32 i_plllock_sel_1_0 : 2;
-		u32 i_afc_divratio : 1;
-	};
-	u32 val;
-};
+#define ICE_CGU_RO_BWM_LF		0x370
+#define ICE_CGU_RO_BWM_LF_TRUE_LOCK	BIT(12)
 
 int ice_init_hw(struct ice_hw *hw);
 void ice_deinit_hw(struct ice_hw *hw);
diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.c b/drivers/net/ethernet/intel/ice/ice_tspll.c
index e7bca0957583b7ba16498148b0afca0de3467e85..ae8aee1c7d40ebe452725196b87d22dc3484892a 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.c
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.c
@@ -127,11 +127,7 @@ static void ice_tspll_log_cfg(struct ice_hw *hw, bool enable, u8 clk_src,
 static int ice_tspll_cfg_e82x(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 			      enum ice_clk_src clk_src)
 {
-	union tspll_ro_bwm_lf bwm_lf;
-	union ice_cgu_r19_e82x dw19;
-	union ice_cgu_r22 dw22;
-	union ice_cgu_r24 dw24;
-	union ice_cgu_r9 dw9;
+	u32 val, r9, r24;
 
 	if (clk_freq >= NUM_ICE_TSPLL_FREQ) {
 		dev_warn(ice_hw_to_dev(hw), "Invalid TIME_REF frequency %u\n",
@@ -151,61 +147,74 @@ static int ice_tspll_cfg_e82x(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 		return -EINVAL;
 	}
 
-	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R9, &dw9.val);
-	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R24, &dw24.val);
-	ICE_READ_CGU_REG_OR_DIE(hw, TSPLL_RO_BWM_LF, &bwm_lf.val);
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R9, &r9);
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R24, &r24);
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_RO_BWM_LF, &val);
 
-	ice_tspll_log_cfg(hw, dw24.ts_pll_enable, dw24.time_ref_sel,
-			  dw9.time_ref_freq_sel, bwm_lf.plllock_true_lock_cri,
+	ice_tspll_log_cfg(hw, !!FIELD_GET(ICE_CGU_R23_R24_TSPLL_ENABLE, r24),
+			  FIELD_GET(ICE_CGU_R23_R24_TIME_REF_SEL, r24),
+			  FIELD_GET(ICE_CGU_R9_TIME_REF_FREQ_SEL, r9),
+			  !!FIELD_GET(ICE_CGU_RO_BWM_LF_TRUE_LOCK, val),
 			  false);
 
 	/* Disable the PLL before changing the clock source or frequency */
-	if (dw24.ts_pll_enable) {
-		dw24.ts_pll_enable = 0;
-		ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R24, dw24.val);
+	if (FIELD_GET(ICE_CGU_R23_R24_TSPLL_ENABLE, r24)) {
+		r24 &= ~ICE_CGU_R23_R24_TSPLL_ENABLE;
+		ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R24, r24);
 	}
 
 	/* Set the frequency */
-	dw9.time_ref_freq_sel = clk_freq;
-	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R9, dw9.val);
+	r9 &= ~ICE_CGU_R9_TIME_REF_FREQ_SEL;
+	r9 |= FIELD_PREP(ICE_CGU_R9_TIME_REF_FREQ_SEL, clk_freq);
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R9, r9);
 
 	/* Configure the TSPLL feedback divisor */
-	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R19, &dw19.val);
-	dw19.fbdiv_intgr = e82x_tspll_params[clk_freq].feedback_div;
-	dw19.ndivratio = 1;
-	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R19, dw19.val);
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R19, &val);
+	val &= ~(ICE_CGU_R19_TSPLL_FBDIV_INTGR_E82X | ICE_CGU_R19_TSPLL_NDIVRATIO);
+	val |= FIELD_PREP(ICE_CGU_R19_TSPLL_FBDIV_INTGR_E82X,
+			  e82x_tspll_params[clk_freq].feedback_div);
+	val |= FIELD_PREP(ICE_CGU_R19_TSPLL_NDIVRATIO, 1);
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R19, val);
 
 	/* Configure the TSPLL post divisor */
-	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R22, &dw22.val);
-	dw22.time1588clk_div = e82x_tspll_params[clk_freq].post_pll_div;
-	dw22.time1588clk_sel_div2 = 0;
-	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R22, dw22.val);
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R22, &val);
+	val &= ~(ICE_CGU_R22_TIME1588CLK_DIV |
+		 ICE_CGU_R22_TIME1588CLK_DIV2);
+	val |= FIELD_PREP(ICE_CGU_R22_TIME1588CLK_DIV,
+			  e82x_tspll_params[clk_freq].post_pll_div);
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R22, val);
 
 	/* Configure the TSPLL pre divisor and clock source */
-	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R24, &dw24.val);
-	dw24.ref1588_ck_div = e82x_tspll_params[clk_freq].refclk_pre_div;
-	dw24.fbdiv_frac = e82x_tspll_params[clk_freq].frac_n_div;
-	dw24.time_ref_sel = clk_src;
-	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R24, dw24.val);
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R24, &r24);
+	r24 &= ~(ICE_CGU_R23_R24_REF1588_CK_DIV | ICE_CGU_R24_FBDIV_FRAC |
+		 ICE_CGU_R23_R24_TIME_REF_SEL);
+	r24 |= FIELD_PREP(ICE_CGU_R23_R24_REF1588_CK_DIV,
+			  e82x_tspll_params[clk_freq].refclk_pre_div);
+	r24 |= FIELD_PREP(ICE_CGU_R24_FBDIV_FRAC,
+			  e82x_tspll_params[clk_freq].frac_n_div);
+	r24 |= FIELD_PREP(ICE_CGU_R23_R24_TIME_REF_SEL, clk_src);
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R24, r24);
 
 	/* Finally, enable the PLL */
-	dw24.ts_pll_enable = 1;
-	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R24, dw24.val);
+	r24 |= ICE_CGU_R23_R24_TSPLL_ENABLE;
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R24, r24);
 
 	/* Wait to verify if the PLL locks */
 	usleep_range(1000, 5000);
 
-	ICE_READ_CGU_REG_OR_DIE(hw, TSPLL_RO_BWM_LF, &bwm_lf.val);
-	if (!bwm_lf.plllock_true_lock_cri) {
-		dev_warn(ice_hw_to_dev(hw), "TSPLL failed to lock\n");
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_RO_BWM_LF, &val);
+	if (!(val & ICE_CGU_RO_BWM_LF_TRUE_LOCK)) {
+		dev_warn(ice_hw_to_dev(hw), "CGU PLL failed to lock\n");
 		return -EBUSY;
 	}
 
-	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R9, &dw9.val);
-	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R24, &dw24.val);
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R9, &r9);
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R24, &r24);
 
-	ice_tspll_log_cfg(hw, dw24.ts_pll_enable, dw24.time_ref_sel,
-			  dw9.time_ref_freq_sel, true, false);
+	ice_tspll_log_cfg(hw, !!FIELD_GET(ICE_CGU_R23_R24_TSPLL_ENABLE, r24),
+			  FIELD_GET(ICE_CGU_R23_R24_TIME_REF_SEL, r24),
+			  FIELD_GET(ICE_CGU_R9_TIME_REF_FREQ_SEL, r9),
+			  true, true);
 
 	return 0;
 }
@@ -221,14 +230,12 @@ static int ice_tspll_cfg_e82x(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
  */
 static int ice_tspll_dis_sticky_bits_e82x(struct ice_hw *hw)
 {
-	union tspll_cntr_bist_settings cntr_bist;
+	u32 val;
 
-	ICE_READ_CGU_REG_OR_DIE(hw, TSPLL_CNTR_BIST_SETTINGS, &cntr_bist.val);
-	/* Disable sticky lock detection so lock err reported is accurate */
-	cntr_bist.i_plllock_sel_0 = 0;
-	cntr_bist.i_plllock_sel_1 = 0;
-
-	return ice_write_cgu_reg(hw, TSPLL_CNTR_BIST_SETTINGS, cntr_bist.val);
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_CNTR_BIST, &val);
+	val &= ~(ICE_CGU_CNTR_BIST_PLLLOCK_SEL_0 |
+		 ICE_CGU_CNTR_BIST_PLLLOCK_SEL_1);
+	return ice_write_cgu_reg(hw, ICE_CGU_CNTR_BIST, val);
 }
 
 /**
@@ -249,12 +256,7 @@ static int ice_tspll_dis_sticky_bits_e82x(struct ice_hw *hw)
 static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 			       enum ice_clk_src clk_src)
 {
-	union tspll_ro_lock_e825c ro_lock;
-	union ice_cgu_r19_e825 dw19;
-	union ice_cgu_r16 dw16;
-	union ice_cgu_r23 dw23;
-	union ice_cgu_r22 dw22;
-	union ice_cgu_r9 dw9;
+	u32 val, r9, r23;
 
 	if (clk_freq >= NUM_ICE_TSPLL_FREQ) {
 		dev_warn(ice_hw_to_dev(hw), "Invalid TIME_REF frequency %u\n",
@@ -273,84 +275,91 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 		return -EINVAL;
 	}
 
-	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R9, &dw9.val);
-	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R16, &dw16.val);
-	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R23, &dw23.val);
-	ICE_READ_CGU_REG_OR_DIE(hw, TSPLL_RO_LOCK_E825C, &ro_lock.val);
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R9, &r9);
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R23, &r23);
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_RO_LOCK, &val);
 
-	ice_tspll_log_cfg(hw, dw23.ts_pll_enable, dw23.time_ref_sel,
-			  dw9.time_ref_freq_sel,
-			  ro_lock.plllock_true_lock_cri, false);
+	ice_tspll_log_cfg(hw, !!FIELD_GET(ICE_CGU_R23_R24_TSPLL_ENABLE, r23),
+			  FIELD_GET(ICE_CGU_R23_R24_TIME_REF_SEL, r23),
+			  FIELD_GET(ICE_CGU_R9_TIME_REF_FREQ_SEL, r9),
+			  !!FIELD_GET(ICE_CGU_RO_LOCK_TRUE_LOCK, val),
+			  false);
 
 	/* Disable the PLL before changing the clock source or frequency */
-	if (dw23.ts_pll_enable) {
-		dw23.ts_pll_enable = 0;
-		ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R23, dw23.val);
+	if (FIELD_GET(ICE_CGU_R23_R24_TSPLL_ENABLE, r23)) {
+		r23 &= ~ICE_CGU_R23_R24_TSPLL_ENABLE;
+		ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R23, r23);
 	}
 
-	if (dw9.time_sync_en) {
-		dw9.time_sync_en = 0;
-		ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R9, dw9.val);
+	if (FIELD_GET(ICE_CGU_R9_TIME_SYNC_EN, r9)) {
+		r9 &= ~ICE_CGU_R9_TIME_SYNC_EN;
+		ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R9, r9);
 	}
 
-	/* Set the frequency */
-	dw9.time_ref_freq_sel = clk_freq;
-
-	/* Enable the correct receiver */
-	if (clk_src == ICE_CLK_SRC_TCXO) {
-		dw9.time_ref_en = 0;
-		dw9.clk_eref0_en = 1;
-	} else {
-		dw9.time_ref_en = 1;
-		dw9.clk_eref0_en = 0;
-	}
-	dw9.time_sync_en = 1;
-	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R9, dw9.val);
+	/* Set the frequency and enable the correct receiver */
+	r9 &= ~(ICE_CGU_R9_TIME_REF_FREQ_SEL | ICE_CGU_R9_CLK_EREF0_EN |
+		ICE_CGU_R9_TIME_REF_EN);
+	r9 |= FIELD_PREP(ICE_CGU_R9_TIME_REF_FREQ_SEL, clk_freq);
+	if (clk_src == ICE_CLK_SRC_TCXO)
+		r9 |= ICE_CGU_R9_CLK_EREF0_EN;
+	else
+		r9 |= ICE_CGU_R9_TIME_REF_EN;
+	r9 |= ICE_CGU_R9_TIME_SYNC_EN;
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R9, r9);
 
 	/* Choose the referenced frequency */
-	dw16.ck_refclkfreq = ICE_TSPLL_CK_REFCLKFREQ_E825;
-	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R16, dw16.val);
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R16, &val);
+	val &= ~ICE_CGU_R16_TSPLL_CK_REFCLKFREQ;
+	val |= FIELD_PREP(ICE_CGU_R16_TSPLL_CK_REFCLKFREQ,
+			  ICE_TSPLL_CK_REFCLKFREQ_E825);
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R16, val);
 
 	/* Configure the TSPLL feedback divisor */
-	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R19, &dw19.val);
-	dw19.tspll_fbdiv_intgr = ICE_TSPLL_FBDIV_INTGR_E825;
-	dw19.tspll_ndivratio = ICE_TSPLL_NDIVRATIO_E825;
-	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R19, dw19.val);
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R19, &val);
+	val &= ~(ICE_CGU_R19_TSPLL_FBDIV_INTGR_E825 |
+		 ICE_CGU_R19_TSPLL_NDIVRATIO);
+	val |= FIELD_PREP(ICE_CGU_R19_TSPLL_FBDIV_INTGR_E825,
+			  ICE_TSPLL_FBDIV_INTGR_E825);
+	val |= FIELD_PREP(ICE_CGU_R19_TSPLL_NDIVRATIO,
+			  ICE_TSPLL_NDIVRATIO_E825);
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R19, val);
 
-	/* Configure the TSPLL post divisor */
-	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R22, &dw22.val);
-	/* These two are constant for E825C */
-	dw22.time1588clk_div = 5;
-	dw22.time1588clk_sel_div2 = 0;
-	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R22, dw22.val);
+	/* Configure the TSPLL post divisor, these two are constant */
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R22, &val);
+	val &= ~(ICE_CGU_R22_TIME1588CLK_DIV |
+		 ICE_CGU_R22_TIME1588CLK_DIV2);
+	val |= FIELD_PREP(ICE_CGU_R22_TIME1588CLK_DIV, 5);
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R22, val);
 
-	/* Configure the TSPLL pre divisor and clock source */
-	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R23, &dw23.val);
-	dw23.ref1588_ck_div = 0;
-	dw23.time_ref_sel = clk_src;
-	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R23, dw23.val);
+	/* Configure the TSPLL pre divisor (constant) and clock source */
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R23, &r23);
+	r23 &= ~(ICE_CGU_R23_R24_REF1588_CK_DIV | ICE_CGU_R23_R24_TIME_REF_SEL);
+	r23 |= FIELD_PREP(ICE_CGU_R23_R24_TIME_REF_SEL, clk_src);
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R23, r23);
 
 	/* Clear the R24 register. */
 	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R24, 0);
 
 	/* Finally, enable the PLL */
-	dw23.ts_pll_enable = 1;
-	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R23, dw23.val);
+	r23 |= ICE_CGU_R23_R24_TSPLL_ENABLE;
+	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R23, r23);
 
 	/* Wait to verify if the PLL locks */
 	usleep_range(1000, 5000);
 
-	ICE_READ_CGU_REG_OR_DIE(hw, TSPLL_RO_LOCK_E825C, &ro_lock.val);
-	if (!ro_lock.plllock_true_lock_cri) {
-		dev_warn(ice_hw_to_dev(hw), "TSPLL failed to lock\n");
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_RO_LOCK, &val);
+	if (!(val & ICE_CGU_RO_LOCK_TRUE_LOCK)) {
+		dev_warn(ice_hw_to_dev(hw), "CGU PLL failed to lock\n");
 		return -EBUSY;
 	}
 
-	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R9, &dw9.val);
-	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R23, &dw23.val);
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R9, &r9);
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R23, &r23);
 
-	ice_tspll_log_cfg(hw, dw23.ts_pll_enable, dw23.time_ref_sel,
-			  dw9.time_ref_freq_sel, true, true);
+	ice_tspll_log_cfg(hw, !!FIELD_GET(ICE_CGU_R23_R24_TSPLL_ENABLE, r23),
+			  FIELD_GET(ICE_CGU_R23_R24_TIME_REF_SEL, r23),
+			  FIELD_GET(ICE_CGU_R9_TIME_REF_FREQ_SEL, r9),
+			  true, true);
 
 	return 0;
 }
@@ -366,15 +375,13 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
  */
 static int ice_tspll_dis_sticky_bits_e825c(struct ice_hw *hw)
 {
-	union tspll_bw_tdc_e825c bw_tdc;
+	u32 val;
 
-	ICE_READ_CGU_REG_OR_DIE(hw, TSPLL_BW_TDC_E825C, &bw_tdc.val);
-	bw_tdc.i_plllock_sel_1_0 = 0;
-	return ice_write_cgu_reg(hw, TSPLL_BW_TDC_E825C, bw_tdc.val);
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_BW_TDC, &val);
+	val &= ~ICE_CGU_BW_TDC_PLLLOCK_SEL;
+	return ice_write_cgu_reg(hw, ICE_CGU_BW_TDC, val);
 }
 
-#define ICE_ONE_PPS_OUT_AMP_MAX 3
-
 /**
  * ice_tspll_cfg_pps_out_e825c - Enable/disable 1PPS output and set amplitude
  * @hw: pointer to the HW struct
@@ -384,12 +391,13 @@ static int ice_tspll_dis_sticky_bits_e825c(struct ice_hw *hw)
  */
 int ice_tspll_cfg_pps_out_e825c(struct ice_hw *hw, bool enable)
 {
-	union ice_cgu_r9 r9;
+	u32 val;
 
-	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R9, &r9.val);
-	r9.one_pps_out_en = enable;
-	r9.one_pps_out_amp = enable * ICE_ONE_PPS_OUT_AMP_MAX;
-	return ice_write_cgu_reg(hw, ICE_CGU_R9, r9.val);
+	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R9, &val);
+	val &= ~(ICE_CGU_R9_ONE_PPS_OUT_EN | ICE_CGU_R9_ONE_PPS_OUT_AMP);
+	val |= FIELD_PREP(ICE_CGU_R9_ONE_PPS_OUT_EN, enable) |
+	       ICE_CGU_R9_ONE_PPS_OUT_AMP;
+	return ice_write_cgu_reg(hw, ICE_CGU_R9, val);
 }
 
 /**

-- 
2.48.1.397.gec9d649cc640

