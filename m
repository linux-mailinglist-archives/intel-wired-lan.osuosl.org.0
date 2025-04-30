Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3986EAA5836
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 May 2025 00:52:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C898B40361;
	Wed, 30 Apr 2025 22:52:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DjSmTAYBzGw0; Wed, 30 Apr 2025 22:51:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D4DA740356
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746053517;
	bh=A8iVtarmulE79KScMmr6Q/ISP1mGqWkbU56oBgUe3/4=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UGseQzf41lAxxq0FSVKb9pCLA23KaCfZdvEsJ2UQIIFwIEPMq2GQ1lK/VPFYRtsW5
	 H6IuOhF0SkUa4953UxEaCBLLJWBkk3l4ks9hyEnU9x1j821zEacWXYPGAI7VyFyOqy
	 yjEVds/zA5twTTN7TDCyXo8l/iPZ9rtBKRh+eEDbDEBRnY+yVcLO5VMsWMgQDPG/Y0
	 iwHQueVPkJ1oy/PKx2FTvUx2+S304XJ9XucO+AOcfgEUhnwguJJ3qjfp2vDHklvIo2
	 ATT/LRBiX4UlOX28v01PCAcOPL/W/cke0GznehcYvLIsNcH3abTKKnJCD6sKLI6yll
	 ET7lIs9kruT7A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4DA740356;
	Wed, 30 Apr 2025 22:51:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0D487E4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 22:51:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9CABE6062B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 22:51:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TuKHhXxbRIM4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Apr 2025 22:51:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9A72760662
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A72760662
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9A72760662
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 22:51:41 +0000 (UTC)
X-CSE-ConnectionGUID: DoK3jfITQ0KxSYzF4zXI9w==
X-CSE-MsgGUID: kEk0wq6HR3yLMAWHYj5X5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11419"; a="73120887"
X-IronPort-AV: E=Sophos;i="6.15,252,1739865600"; d="scan'208";a="73120887"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 15:51:40 -0700
X-CSE-ConnectionGUID: uSQO6by0RU+8t9gmEVZTPA==
X-CSE-MsgGUID: iWI9FgVmQt2y/e3IiWSwsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,252,1739865600"; d="scan'208";a="134145071"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 15:51:40 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 30 Apr 2025 15:51:33 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250430-kk-tspll-improvements-alignment-v3-2-ab8472e86204@intel.com>
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
 bh=rSUeonvVxxbEAXhrurl8k1IANgeLhvUvhAjOwAJ0HCM=;
 b=myTA+6NcVmrOe6esA75lmX5DV2c3q5I1Abg/BsJZfkMdvry1F6RU74XV
 wQkyXBAiPzcKywqq9XMyC/golg+gDTc1aqBIgsjj4YJGER4lQq/pjnSgO
 xwUt/X1Wx7bK3TjWou39LPiRE2HVEctgd1EStZCNuXjQuFdhfa0QCogfQ
 O5Rq+1R9aL6fbZ73iT4JuLHiTezNMpo+t6+0XyttxE8XZZWr2E3cjmpIg
 MiVhgbKDC43JGyPL368vKY3ZZFT/ef3++aJ3jMy3ddkTQbOentYxS4mGP
 SPG/XxeJR8MKddY1Ac9JyFkGlmSJuSuhRAVDV5Tr2bUOK+iIG9ylByXeg
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=myTA+6Nc
Subject: [Intel-wired-lan] [PATCH v3 02/15] ice: rename TSPLL and CGU
 functions and definitions
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

Rename TSPLL and CGU functions, definitions etc. to match the file name
and have consistent naming scheme.

Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.h     |  36 +--
 drivers/net/ethernet/intel/ice/ice_ptp_consts.h |  16 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h     |  11 +-
 drivers/net/ethernet/intel/ice/ice_tspll.h      |  32 +--
 drivers/net/ethernet/intel/ice/ice_type.h       |  20 +-
 drivers/net/ethernet/intel/ice/ice_common.c     |  28 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c        |   2 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c     |   4 +-
 drivers/net/ethernet/intel/ice/ice_tspll.c      | 350 ++++++++++++------------
 9 files changed, 244 insertions(+), 255 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 47e17fa443a109b08f900ab905ae5b3d2831b0d1..fee5b373af8cf8f5e9c17fd1c65b9e2f1bb4cfa4 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -39,8 +39,8 @@
 #define FEC_RECEIVER_ID_PCS0 (0x33 << FEC_RECV_ID_SHIFT)
 #define FEC_RECEIVER_ID_PCS1 (0x34 << FEC_RECV_ID_SHIFT)
 
-#define NAC_CGU_DWORD9 0x24
-union nac_cgu_dword9 {
+#define ICE_CGU_R9 0x24
+union ice_cgu_r9 {
 	struct {
 		u32 time_ref_freq_sel : 3;
 		u32 clk_eref1_en : 1;
@@ -62,24 +62,24 @@ union nac_cgu_dword9 {
 	u32 val;
 };
 
-#define NAC_CGU_DWORD16_E825C 0x40
-union nac_cgu_dword16_e825c {
+#define ICE_CGU_R16 0x40
+union ice_cgu_r16 {
 	struct {
 		u32 synce_remndr : 6;
 		u32 synce_phlmt_en : 1;
 		u32 misc13 : 17;
-		u32 tspll_ck_refclkfreq : 8;
+		u32 ck_refclkfreq : 8;
 	};
 	u32 val;
 };
 
-#define NAC_CGU_DWORD19 0x4c
-union nac_cgu_dword19 {
+#define ICE_CGU_R19 0x4c
+union ice_cgu_r19 {
 	struct {
-		u32 tspll_fbdiv_intgr : 8;
+		u32 fbdiv_intgr : 8;
 		u32 fdpll_ulck_thr : 5;
 		u32 misc15 : 3;
-		u32 tspll_ndivratio : 4;
+		u32 ndivratio : 4;
 		u32 tspll_iref_ndivratio : 3;
 		u32 misc19 : 1;
 		u32 japll_ndivratio : 4;
@@ -89,8 +89,8 @@ union nac_cgu_dword19 {
 	u32 val;
 };
 
-#define NAC_CGU_DWORD22 0x58
-union nac_cgu_dword22 {
+#define ICE_CGU_R22 0x58
+union ice_cgu_r22 {
 	struct {
 		u32 fdpll_frac_div_out_nc : 2;
 		u32 fdpll_lock_int_for : 1;
@@ -113,8 +113,8 @@ union nac_cgu_dword22 {
 	u32 val;
 };
 
-#define NAC_CGU_DWORD23_E825C 0x5C
-union nac_cgu_dword23_e825c {
+#define ICE_CGU_R23 0x5C
+union ice_cgu_r23 {
 	struct {
 		u32 cgupll_fbdiv_intgr : 10;
 		u32 ux56pll_fbdiv_intgr : 10;
@@ -129,10 +129,10 @@ union nac_cgu_dword23_e825c {
 	u32 val;
 };
 
-#define NAC_CGU_DWORD24 0x60
-union nac_cgu_dword24 {
+#define ICE_CGU_R24 0x60
+union ice_cgu_r24 {
 	struct {
-		u32 tspll_fbdiv_frac : 22;
+		u32 fbdiv_frac : 22;
 		u32 misc20 : 2;
 		u32 ts_pll_enable : 1;
 		u32 time_sync_tspll_align_sel : 1;
@@ -477,6 +477,6 @@ ice_aq_write_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
 int ice_get_pca9575_handle(struct ice_hw *hw, u16 *pca9575_handle);
 int ice_read_pca9575_reg(struct ice_hw *hw, u8 offset, u8 *data);
 bool ice_fw_supports_report_dflt_cfg(struct ice_hw *hw);
-int ice_read_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 *val);
-int ice_write_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 val);
+int ice_read_cgu_reg(struct ice_hw *hw, u32 addr, u32 *val);
+int ice_write_cgu_reg(struct ice_hw *hw, u32 addr, u32 val);
 #endif /* _ICE_COMMON_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
index 7b748286f653319ccdd7d5c4adaf8ed055bd4a0a..19dddd9b53dddb0d91654cc1b8f03804ecb828df 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
@@ -281,7 +281,7 @@ struct ice_eth56g_mac_reg_cfg eth56g_mac_cfg[NUM_ICE_ETH56G_LNK_SPD] = {
 
 /* struct ice_time_ref_info_e82x
  *
- * E822 hardware can use different sources as the reference for the PTP
+ * E82X hardware can use different sources as the reference for the PTP
  * hardware clock. Each clock has different characteristics such as a slightly
  * different frequency, etc.
  *
@@ -289,8 +289,8 @@ struct ice_eth56g_mac_reg_cfg eth56g_mac_cfg[NUM_ICE_ETH56G_LNK_SPD] = {
  * reference. See the struct ice_time_ref_info_e82x for information about the
  * meaning of each constant.
  */
-const struct ice_time_ref_info_e82x e82x_time_ref[NUM_ICE_TIME_REF_FREQ] = {
-	/* ICE_TIME_REF_FREQ_25_000 -> 25 MHz */
+const struct ice_time_ref_info_e82x e82x_time_ref[NUM_ICE_TSPLL_FREQ] = {
+	/* ICE_TSPLL_FREQ_25_000 -> 25 MHz */
 	{
 		/* pll_freq */
 		823437500, /* 823.4375 MHz PLL */
@@ -298,7 +298,7 @@ const struct ice_time_ref_info_e82x e82x_time_ref[NUM_ICE_TIME_REF_FREQ] = {
 		0x136e44fabULL,
 	},
 
-	/* ICE_TIME_REF_FREQ_122_880 -> 122.88 MHz */
+	/* ICE_TSPLL_FREQ_122_880 -> 122.88 MHz */
 	{
 		/* pll_freq */
 		783360000, /* 783.36 MHz */
@@ -306,7 +306,7 @@ const struct ice_time_ref_info_e82x e82x_time_ref[NUM_ICE_TIME_REF_FREQ] = {
 		0x146cc2177ULL,
 	},
 
-	/* ICE_TIME_REF_FREQ_125_000 -> 125 MHz */
+	/* ICE_TSPLL_FREQ_125_000 -> 125 MHz */
 	{
 		/* pll_freq */
 		796875000, /* 796.875 MHz */
@@ -314,7 +314,7 @@ const struct ice_time_ref_info_e82x e82x_time_ref[NUM_ICE_TIME_REF_FREQ] = {
 		0x141414141ULL,
 	},
 
-	/* ICE_TIME_REF_FREQ_153_600 -> 153.6 MHz */
+	/* ICE_TSPLL_FREQ_153_600 -> 153.6 MHz */
 	{
 		/* pll_freq */
 		816000000, /* 816 MHz */
@@ -322,7 +322,7 @@ const struct ice_time_ref_info_e82x e82x_time_ref[NUM_ICE_TIME_REF_FREQ] = {
 		0x139b9b9baULL,
 	},
 
-	/* ICE_TIME_REF_FREQ_156_250 -> 156.25 MHz */
+	/* ICE_TSPLL_FREQ_156_250 -> 156.25 MHz */
 	{
 		/* pll_freq */
 		830078125, /* 830.78125 MHz */
@@ -330,7 +330,7 @@ const struct ice_time_ref_info_e82x e82x_time_ref[NUM_ICE_TIME_REF_FREQ] = {
 		0x134679aceULL,
 	},
 
-	/* ICE_TIME_REF_FREQ_245_760 -> 245.76 MHz */
+	/* ICE_TSPLL_FREQ_245_760 -> 245.76 MHz */
 	{
 		/* pll_freq */
 		783360000, /* 783.36 MHz */
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index cbbce04bfab45cd67458073462b48f10069c1a7f..da4ccb44ba9da820a874eb6933b5780cf41995a0 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -272,7 +272,7 @@ struct ice_cgu_pin_desc {
 extern const struct ice_phy_reg_info_eth56g eth56g_phy_res[NUM_ETH56G_PHY_RES];
 
 /* Table of constants related to possible TIME_REF sources */
-extern const struct ice_time_ref_info_e82x e82x_time_ref[NUM_ICE_TIME_REF_FREQ];
+extern const struct ice_time_ref_info_e82x e82x_time_ref[NUM_ICE_TSPLL_FREQ];
 
 /* Table of constants for Vernier calibration on E822 */
 extern const struct ice_vernier_info_e82x e822_vernier[NUM_ICE_PTP_LNK_SPD];
@@ -314,7 +314,8 @@ void ice_ptp_reset_ts_memory_quad_e82x(struct ice_hw *hw, u8 quad);
  *
  * Returns the current TIME_REF from the capabilities structure.
  */
-static inline enum ice_time_ref_freq ice_e82x_time_ref(const struct ice_hw *hw)
+
+static inline enum ice_tspll_freq ice_e82x_time_ref(const struct ice_hw *hw)
 {
 	return hw->func_caps.ts_func_info.time_ref;
 }
@@ -328,17 +329,17 @@ static inline enum ice_time_ref_freq ice_e82x_time_ref(const struct ice_hw *hw)
  * change, such as an update to the CGU registers.
  */
 static inline void
-ice_set_e82x_time_ref(struct ice_hw *hw, enum ice_time_ref_freq time_ref)
+ice_set_e82x_time_ref(struct ice_hw *hw, enum ice_tspll_freq time_ref)
 {
 	hw->func_caps.ts_func_info.time_ref = time_ref;
 }
 
-static inline u64 ice_e82x_pll_freq(enum ice_time_ref_freq time_ref)
+static inline u64 ice_e82x_pll_freq(enum ice_tspll_freq time_ref)
 {
 	return e82x_time_ref[time_ref].pll_freq;
 }
 
-static inline u64 ice_e82x_nominal_incval(enum ice_time_ref_freq time_ref)
+static inline u64 ice_e82x_nominal_incval(enum ice_tspll_freq time_ref)
 {
 	return e82x_time_ref[time_ref].nominal_incval;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.h b/drivers/net/ethernet/intel/ice/ice_tspll.h
index 82ddcf4078fe32f0ade05ff1dc6c23cac742af11..3dcc525bb8292b635b58fe8107af47b895d3c201 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.h
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.h
@@ -5,16 +5,16 @@
 #define _ICE_TSPLL_H_
 
 /**
- * struct ice_cgu_pll_params_e82x - E82X CGU parameters
+ * struct ice_tspll_params_e82x - E82X TSPLL parameters
  * @refclk_pre_div: Reference clock pre-divisor
  * @feedback_div: Feedback divisor
  * @frac_n_div: Fractional divisor
  * @post_pll_div: Post PLL divisor
  *
  * Clock Generation Unit parameters used to program the PLL based on the
- * selected TIME_REF frequency.
+ * selected TIME_REF/TCXO frequency.
  */
-struct ice_cgu_pll_params_e82x {
+struct ice_tspll_params_e82x {
 	u32 refclk_pre_div;
 	u32 feedback_div;
 	u32 frac_n_div;
@@ -22,25 +22,25 @@ struct ice_cgu_pll_params_e82x {
 };
 
 /**
- * struct ice_cgu_pll_params_e825c - E825C CGU parameters
- * @tspll_ck_refclkfreq: tspll_ck_refclkfreq selection
- * @tspll_ndivratio: ndiv ratio that goes directly to the pll
- * @tspll_fbdiv_intgr: TS PLL integer feedback divide
- * @tspll_fbdiv_frac:  TS PLL fractional feedback divide
- * @ref1588_ck_div: clock divider for tspll ref
+ * struct ice_tspll_params_e825c - E825-C TSPLL parameters
+ * @ck_refclkfreq: ck_refclkfreq selection
+ * @ndivratio: ndiv ratio that goes directly to the PLL
+ * @fbdiv_intgr: TSPLL integer feedback divisor
+ * @fbdiv_frac: TSPLL fractional feedback divisor
+ * @ref1588_ck_div: clock divisor for tspll ref
  *
  * Clock Generation Unit parameters used to program the PLL based on the
  * selected TIME_REF/TCXO frequency.
  */
-struct ice_cgu_pll_params_e825c {
-	u32 tspll_ck_refclkfreq;
-	u32 tspll_ndivratio;
-	u32 tspll_fbdiv_intgr;
-	u32 tspll_fbdiv_frac;
+struct ice_tspll_params_e825c {
+	u32 ck_refclkfreq;
+	u32 ndivratio;
+	u32 fbdiv_intgr;
+	u32 fbdiv_frac;
 	u32 ref1588_ck_div;
 };
 
-int ice_cgu_cfg_pps_out(struct ice_hw *hw, bool enable);
-int ice_init_cgu_e82x(struct ice_hw *hw);
+int ice_tspll_cfg_pps_out_e825c(struct ice_hw *hw, bool enable);
+int ice_tspll_init(struct ice_hw *hw);
 
 #endif /* _ICE_TSPLL_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index ccf53cc6403e94f26bc0e31ec2539cec2ca6e1c4..e5db73b14a40ff2261450a2971b5252606db1378 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -325,17 +325,17 @@ struct ice_hw_common_caps {
 #define ICE_TS_TMR_IDX_ASSOC_M		BIT(24)
 
 /* TIME_REF clock rate specification */
-enum ice_time_ref_freq {
-	ICE_TIME_REF_FREQ_25_000	= 0,
-	ICE_TIME_REF_FREQ_122_880	= 1,
-	ICE_TIME_REF_FREQ_125_000	= 2,
-	ICE_TIME_REF_FREQ_153_600	= 3,
-	ICE_TIME_REF_FREQ_156_250	= 4,
-	ICE_TIME_REF_FREQ_245_760	= 5,
+enum ice_tspll_freq {
+	ICE_TSPLL_FREQ_25_000	= 0,
+	ICE_TSPLL_FREQ_122_880	= 1,
+	ICE_TSPLL_FREQ_125_000	= 2,
+	ICE_TSPLL_FREQ_153_600	= 3,
+	ICE_TSPLL_FREQ_156_250	= 4,
+	ICE_TSPLL_FREQ_245_760	= 5,
 
-	NUM_ICE_TIME_REF_FREQ,
+	NUM_ICE_TSPLL_FREQ,
 
-	ICE_TIME_REF_FREQ_INVALID	= -1,
+	ICE_TSPLL_FREQ_INVALID	= -1,
 };
 
 /* Clock source specification */
@@ -348,7 +348,7 @@ enum ice_clk_src {
 
 struct ice_ts_func_info {
 	/* Function specific info */
-	enum ice_time_ref_freq time_ref;
+	enum ice_tspll_freq time_ref;
 	u8 clk_freq;
 	u8 clk_src;
 	u8 tmr_index_assoc;
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index d9fe8a434021662b48c5719719741e923b1a8077..e5099a3ccb854424f98c5fb1524f49bde1ca4534 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2301,12 +2301,12 @@ ice_parse_1588_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
 		info->clk_freq = FIELD_GET(ICE_TS_CLK_FREQ_M, number);
 		info->clk_src = ((number & ICE_TS_CLK_SRC_M) != 0);
 	} else {
-		info->clk_freq = ICE_TIME_REF_FREQ_156_250;
+		info->clk_freq = ICE_TSPLL_FREQ_156_250;
 		info->clk_src = ICE_CLK_SRC_TCXO;
 	}
 
-	if (info->clk_freq < NUM_ICE_TIME_REF_FREQ) {
-		info->time_ref = (enum ice_time_ref_freq)info->clk_freq;
+	if (info->clk_freq < NUM_ICE_TSPLL_FREQ) {
+		info->time_ref = (enum ice_tspll_freq)info->clk_freq;
 	} else {
 		/* Unknown clock frequency, so assume a (probably incorrect)
 		 * default to avoid out-of-bounds look ups of frequency
@@ -2314,7 +2314,7 @@ ice_parse_1588_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
 		 */
 		ice_debug(hw, ICE_DBG_INIT, "1588 func caps: unknown clock frequency %u\n",
 			  info->clk_freq);
-		info->time_ref = ICE_TIME_REF_FREQ_25_000;
+		info->time_ref = ICE_TSPLL_FREQ_25_000;
 	}
 
 	ice_debug(hw, ICE_DBG_INIT, "func caps: ieee_1588 = %u\n",
@@ -6108,17 +6108,17 @@ u32 ice_get_link_speed(u16 index)
 }
 
 /**
- * ice_read_cgu_reg_e82x - Read a CGU register
- * @hw: pointer to the HW struct
+ * ice_read_cgu_reg - Read a CGU register
+ * @hw: Pointer to the HW struct
  * @addr: Register address to read
- * @val: storage for register value read
+ * @val: Storage for register value read
  *
  * Read the contents of a register of the Clock Generation Unit. Only
- * applicable to E822 devices.
+ * applicable to E82X devices.
  *
  * Return: 0 on success, other error codes when failed to read from CGU.
  */
-int ice_read_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 *val)
+int ice_read_cgu_reg(struct ice_hw *hw, u32 addr, u32 *val)
 {
 	struct ice_sbq_msg_input cgu_msg = {
 		.opcode = ice_sbq_msg_rd,
@@ -6140,17 +6140,17 @@ int ice_read_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 *val)
 }
 
 /**
- * ice_write_cgu_reg_e82x - Write a CGU register
- * @hw: pointer to the HW struct
+ * ice_write_cgu_reg - Write a CGU register
+ * @hw: Pointer to the HW struct
  * @addr: Register address to write
- * @val: value to write into the register
+ * @val: Value to write into the register
  *
  * Write the specified value to a register of the Clock Generation Unit. Only
- * applicable to E822 devices.
+ * applicable to E82X devices.
  *
  * Return: 0 on success, other error codes when failed to write to CGU.
  */
-int ice_write_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 val)
+int ice_write_cgu_reg(struct ice_hw *hw, u32 addr, u32 val)
 {
 	struct ice_sbq_msg_input cgu_msg = {
 		.opcode = ice_sbq_msg_wr,
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index b0884b07e56b888a67b9db1ecc0c32eeab17a804..508f896ed9a9ec5cc6ae233dbe2b8f3f2f2b9510 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1733,7 +1733,7 @@ static int ice_ptp_write_perout(struct ice_hw *hw, unsigned int chan,
 		int err;
 
 		/* Enable/disable CGU 1PPS output for E825C */
-		err = ice_cgu_cfg_pps_out(hw, !!period);
+		err = ice_tspll_cfg_pps_out_e825c(hw, !!period);
 		if (err)
 			return err;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 6c6ab5c0d0f4c5d2a124fd0bb6771c5307590c8b..278231443546360ace79c2823ed94d7eaab7f8a0 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -2126,7 +2126,7 @@ int ice_start_phy_timer_eth56g(struct ice_hw *hw, u8 port)
 static int ice_ptp_init_phc_e825(struct ice_hw *hw)
 {
 	/* Initialize the Clock Generation Unit */
-	return ice_init_cgu_e82x(hw);
+	return ice_tspll_init(hw);
 }
 
 /**
@@ -2799,7 +2799,7 @@ static int ice_ptp_init_phc_e82x(struct ice_hw *hw)
 	wr32(hw, PF_SB_REM_DEV_CTL, val);
 
 	/* Initialize the Clock Generation Unit */
-	err = ice_init_cgu_e82x(hw);
+	err = ice_tspll_init(hw);
 	if (err)
 		return err;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.c b/drivers/net/ethernet/intel/ice/ice_tspll.c
index 75368b7f8773b8a1965ffbc124734d8a68beb14d..3f6287e48192b33c7e108c584587b2e8cf57182f 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.c
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.c
@@ -6,8 +6,8 @@
 #include "ice_ptp_hw.h"
 
 static const struct
-ice_cgu_pll_params_e82x e822_cgu_params[NUM_ICE_TIME_REF_FREQ] = {
-	/* ICE_TIME_REF_FREQ_25_000 -> 25 MHz */
+ice_tspll_params_e82x e82x_tspll_params[NUM_ICE_TSPLL_FREQ] = {
+	/* ICE_TSPLL_FREQ_25_000 -> 25 MHz */
 	{
 		/* refclk_pre_div */
 		1,
@@ -19,7 +19,7 @@ ice_cgu_pll_params_e82x e822_cgu_params[NUM_ICE_TIME_REF_FREQ] = {
 		6,
 	},
 
-	/* ICE_TIME_REF_FREQ_122_880 -> 122.88 MHz */
+	/* ICE_TSPLL_FREQ_122_880 -> 122.88 MHz */
 	{
 		/* refclk_pre_div */
 		5,
@@ -31,7 +31,7 @@ ice_cgu_pll_params_e82x e822_cgu_params[NUM_ICE_TIME_REF_FREQ] = {
 		7,
 	},
 
-	/* ICE_TIME_REF_FREQ_125_000 -> 125 MHz */
+	/* ICE_TSPLL_FREQ_125_000 -> 125 MHz */
 	{
 		/* refclk_pre_div */
 		5,
@@ -43,7 +43,7 @@ ice_cgu_pll_params_e82x e822_cgu_params[NUM_ICE_TIME_REF_FREQ] = {
 		7,
 	},
 
-	/* ICE_TIME_REF_FREQ_153_600 -> 153.6 MHz */
+	/* ICE_TSPLL_FREQ_153_600 -> 153.6 MHz */
 	{
 		/* refclk_pre_div */
 		5,
@@ -55,7 +55,7 @@ ice_cgu_pll_params_e82x e822_cgu_params[NUM_ICE_TIME_REF_FREQ] = {
 		6,
 	},
 
-	/* ICE_TIME_REF_FREQ_156_250 -> 156.25 MHz */
+	/* ICE_TSPLL_FREQ_156_250 -> 156.25 MHz */
 	{
 		/* refclk_pre_div */
 		5,
@@ -67,7 +67,7 @@ ice_cgu_pll_params_e82x e822_cgu_params[NUM_ICE_TIME_REF_FREQ] = {
 		6,
 	},
 
-	/* ICE_TIME_REF_FREQ_245_760 -> 245.76 MHz */
+	/* ICE_TSPLL_FREQ_245_760 -> 245.76 MHz */
 	{
 		/* refclk_pre_div */
 		10,
@@ -81,86 +81,86 @@ ice_cgu_pll_params_e82x e822_cgu_params[NUM_ICE_TIME_REF_FREQ] = {
 };
 
 static const struct
-ice_cgu_pll_params_e825c e825c_cgu_params[NUM_ICE_TIME_REF_FREQ] = {
-	/* ICE_TIME_REF_FREQ_25_000 -> 25 MHz */
+ice_tspll_params_e825c e825c_tspll_params[NUM_ICE_TSPLL_FREQ] = {
+	/* ICE_TSPLL_FREQ_25_000 -> 25 MHz */
 	{
-		/* tspll_ck_refclkfreq */
+		/* ck_refclkfreq */
 		0x19,
-		/* tspll_ndivratio */
+		/* ndivratio */
 		1,
-		/* tspll_fbdiv_intgr */
+		/* fbdiv_intgr */
 		320,
-		/* tspll_fbdiv_frac */
+		/* fbdiv_frac */
 		0,
 		/* ref1588_ck_div */
 		0,
 	},
 
-	/* ICE_TIME_REF_FREQ_122_880 -> 122.88 MHz */
+	/* ICE_TSPLL_FREQ_122_880 -> 122.88 MHz */
 	{
-		/* tspll_ck_refclkfreq */
+		/* ck_refclkfreq */
 		0x29,
-		/* tspll_ndivratio */
+		/* ndivratio */
 		3,
-		/* tspll_fbdiv_intgr */
+		/* fbdiv_intgr */
 		195,
-		/* tspll_fbdiv_frac */
+		/* fbdiv_frac */
 		1342177280UL,
 		/* ref1588_ck_div */
 		0,
 	},
 
-	/* ICE_TIME_REF_FREQ_125_000 -> 125 MHz */
+	/* ICE_TSPLL_FREQ_125_000 -> 125 MHz */
 	{
-		/* tspll_ck_refclkfreq */
+		/* ck_refclkfreq */
 		0x3E,
-		/* tspll_ndivratio */
+		/* ndivratio */
 		2,
-		/* tspll_fbdiv_intgr */
+		/* fbdiv_intgr */
 		128,
-		/* tspll_fbdiv_frac */
+		/* fbdiv_frac */
 		0,
 		/* ref1588_ck_div */
 		0,
 	},
 
-	/* ICE_TIME_REF_FREQ_153_600 -> 153.6 MHz */
+	/* ICE_TSPLL_FREQ_153_600 -> 153.6 MHz */
 	{
-		/* tspll_ck_refclkfreq */
+		/* ck_refclkfreq */
 		0x33,
-		/* tspll_ndivratio */
+		/* ndivratio */
 		3,
-		/* tspll_fbdiv_intgr */
+		/* fbdiv_intgr */
 		156,
-		/* tspll_fbdiv_frac */
+		/* fbdiv_frac */
 		1073741824UL,
 		/* ref1588_ck_div */
 		0,
 	},
 
-	/* ICE_TIME_REF_FREQ_156_250 -> 156.25 MHz */
+	/* ICE_TSPLL_FREQ_156_250 -> 156.25 MHz */
 	{
-		/* tspll_ck_refclkfreq */
+		/* ck_refclkfreq */
 		0x1F,
-		/* tspll_ndivratio */
+		/* ndivratio */
 		5,
-		/* tspll_fbdiv_intgr */
+		/* fbdiv_intgr */
 		256,
-		/* tspll_fbdiv_frac */
+		/* fbdiv_frac */
 		0,
 		/* ref1588_ck_div */
 		0,
 	},
 
-	/* ICE_TIME_REF_FREQ_245_760 -> 245.76 MHz */
+	/* ICE_TSPLL_FREQ_245_760 -> 245.76 MHz */
 	{
-		/* tspll_ck_refclkfreq */
+		/* ck_refclkfreq */
 		0x52,
-		/* tspll_ndivratio */
+		/* ndivratio */
 		3,
-		/* tspll_fbdiv_intgr */
+		/* fbdiv_intgr */
 		97,
-		/* tspll_fbdiv_frac */
+		/* fbdiv_frac */
 		2818572288UL,
 		/* ref1588_ck_div */
 		0,
@@ -168,25 +168,25 @@ ice_cgu_pll_params_e825c e825c_cgu_params[NUM_ICE_TIME_REF_FREQ] = {
 };
 
 /**
- * ice_clk_freq_str - Convert time_ref_freq to string
+ * ice_tspll_clk_freq_str - Convert time_ref_freq to string
  * @clk_freq: Clock frequency
  *
- * Return: specified TIME_REF clock frequency converted to a string
+ * Return: specified TIME_REF clock frequency converted to a string.
  */
-static const char *ice_clk_freq_str(enum ice_time_ref_freq clk_freq)
+static const char *ice_tspll_clk_freq_str(enum ice_tspll_freq clk_freq)
 {
 	switch (clk_freq) {
-	case ICE_TIME_REF_FREQ_25_000:
+	case ICE_TSPLL_FREQ_25_000:
 		return "25 MHz";
-	case ICE_TIME_REF_FREQ_122_880:
+	case ICE_TSPLL_FREQ_122_880:
 		return "122.88 MHz";
-	case ICE_TIME_REF_FREQ_125_000:
+	case ICE_TSPLL_FREQ_125_000:
 		return "125 MHz";
-	case ICE_TIME_REF_FREQ_153_600:
+	case ICE_TSPLL_FREQ_153_600:
 		return "153.6 MHz";
-	case ICE_TIME_REF_FREQ_156_250:
+	case ICE_TSPLL_FREQ_156_250:
 		return "156.25 MHz";
-	case ICE_TIME_REF_FREQ_245_760:
+	case ICE_TSPLL_FREQ_245_760:
 		return "245.76 MHz";
 	default:
 		return "Unknown";
@@ -194,12 +194,12 @@ static const char *ice_clk_freq_str(enum ice_time_ref_freq clk_freq)
 }
 
 /**
- * ice_clk_src_str - Convert time_ref_src to string
+ * ice_tspll_clk_src_str - Convert time_ref_src to string
  * @clk_src: Clock source
  *
  * Return: specified clock source converted to its string name
  */
-static const char *ice_clk_src_str(enum ice_clk_src clk_src)
+static const char *ice_tspll_clk_src_str(enum ice_clk_src clk_src)
 {
 	switch (clk_src) {
 	case ICE_CLK_SRC_TCXO:
@@ -212,8 +212,8 @@ static const char *ice_clk_src_str(enum ice_clk_src clk_src)
 }
 
 /**
- * ice_cfg_cgu_pll_e82x - Configure the Clock Generation Unit
- * @hw: pointer to the HW struct
+ * ice_tspll_cfg_e82x - Configure the Clock Generation Unit TSPLL
+ * @hw: Pointer to the HW struct
  * @clk_freq: Clock frequency to program
  * @clk_src: Clock source to select (TIME_REF, or TCXO)
  *
@@ -223,21 +223,20 @@ static const char *ice_clk_src_str(enum ice_clk_src clk_src)
  * Return:
  * * %0       - success
  * * %-EINVAL - input parameters are incorrect
- * * %-EBUSY  - failed to lock TS PLL
+ * * %-EBUSY  - failed to lock TSPLL
  * * %other   - CGU read/write failure
  */
-static int ice_cfg_cgu_pll_e82x(struct ice_hw *hw,
-				enum ice_time_ref_freq clk_freq,
-				enum ice_clk_src clk_src)
+static int ice_tspll_cfg_e82x(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
+			      enum ice_clk_src clk_src)
 {
 	union tspll_ro_bwm_lf bwm_lf;
-	union nac_cgu_dword19 dw19;
-	union nac_cgu_dword22 dw22;
-	union nac_cgu_dword24 dw24;
-	union nac_cgu_dword9 dw9;
+	union ice_cgu_r19 dw19;
+	union ice_cgu_r22 dw22;
+	union ice_cgu_r24 dw24;
+	union ice_cgu_r9 dw9;
 	int err;
 
-	if (clk_freq >= NUM_ICE_TIME_REF_FREQ) {
+	if (clk_freq >= NUM_ICE_TSPLL_FREQ) {
 		dev_warn(ice_hw_to_dev(hw), "Invalid TIME_REF frequency %u\n",
 			 clk_freq);
 		return -EINVAL;
@@ -249,129 +248,127 @@ static int ice_cfg_cgu_pll_e82x(struct ice_hw *hw,
 		return -EINVAL;
 	}
 
-	if (clk_src == ICE_CLK_SRC_TCXO &&
-	    clk_freq != ICE_TIME_REF_FREQ_25_000) {
+	if (clk_src == ICE_CLK_SRC_TCXO && clk_freq != ICE_TSPLL_FREQ_25_000) {
 		dev_warn(ice_hw_to_dev(hw),
 			 "TCXO only supports 25 MHz frequency\n");
 		return -EINVAL;
 	}
 
-	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD9, &dw9.val);
+	err = ice_read_cgu_reg(hw, ICE_CGU_R9, &dw9.val);
 	if (err)
 		return err;
 
-	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD24, &dw24.val);
+	err = ice_read_cgu_reg(hw, ICE_CGU_R24, &dw24.val);
 	if (err)
 		return err;
 
-	err = ice_read_cgu_reg_e82x(hw, TSPLL_RO_BWM_LF, &bwm_lf.val);
+	err = ice_read_cgu_reg(hw, TSPLL_RO_BWM_LF, &bwm_lf.val);
 	if (err)
 		return err;
 
 	/* Log the current clock configuration */
-	ice_debug(hw, ICE_DBG_PTP, "Current CGU configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
+	ice_debug(hw, ICE_DBG_PTP, "Current TSPLL configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
 		  dw24.ts_pll_enable ? "enabled" : "disabled",
-		  ice_clk_src_str(dw24.time_ref_sel),
-		  ice_clk_freq_str(dw9.time_ref_freq_sel),
+		  ice_tspll_clk_src_str(dw24.time_ref_sel),
+		  ice_tspll_clk_freq_str(dw9.time_ref_freq_sel),
 		  bwm_lf.plllock_true_lock_cri ? "locked" : "unlocked");
 
 	/* Disable the PLL before changing the clock source or frequency */
 	if (dw24.ts_pll_enable) {
 		dw24.ts_pll_enable = 0;
 
-		err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD24, dw24.val);
+		err = ice_write_cgu_reg(hw, ICE_CGU_R24, dw24.val);
 		if (err)
 			return err;
 	}
 
 	/* Set the frequency */
 	dw9.time_ref_freq_sel = clk_freq;
-	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD9, dw9.val);
+	err = ice_write_cgu_reg(hw, ICE_CGU_R9, dw9.val);
 	if (err)
 		return err;
 
-	/* Configure the TS PLL feedback divisor */
-	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD19, &dw19.val);
+	/* Configure the TSPLL feedback divisor */
+	err = ice_read_cgu_reg(hw, ICE_CGU_R19, &dw19.val);
 	if (err)
 		return err;
 
-	dw19.tspll_fbdiv_intgr = e822_cgu_params[clk_freq].feedback_div;
-	dw19.tspll_ndivratio = 1;
+	dw19.fbdiv_intgr = e82x_tspll_params[clk_freq].feedback_div;
+	dw19.ndivratio = 1;
 
-	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD19, dw19.val);
+	err = ice_write_cgu_reg(hw, ICE_CGU_R19, dw19.val);
 	if (err)
 		return err;
 
-	/* Configure the TS PLL post divisor */
-	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD22, &dw22.val);
+	/* Configure the TSPLL post divisor */
+	err = ice_read_cgu_reg(hw, ICE_CGU_R22, &dw22.val);
 	if (err)
 		return err;
 
-	dw22.time1588clk_div = e822_cgu_params[clk_freq].post_pll_div;
+	dw22.time1588clk_div = e82x_tspll_params[clk_freq].post_pll_div;
 	dw22.time1588clk_sel_div2 = 0;
 
-	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD22, dw22.val);
+	err = ice_write_cgu_reg(hw, ICE_CGU_R22, dw22.val);
 	if (err)
 		return err;
 
-	/* Configure the TS PLL pre divisor and clock source */
-	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD24, &dw24.val);
+	/* Configure the TSPLL pre divisor and clock source */
+	err = ice_read_cgu_reg(hw, ICE_CGU_R24, &dw24.val);
 	if (err)
 		return err;
 
-	dw24.ref1588_ck_div = e822_cgu_params[clk_freq].refclk_pre_div;
-	dw24.tspll_fbdiv_frac = e822_cgu_params[clk_freq].frac_n_div;
+	dw24.ref1588_ck_div = e82x_tspll_params[clk_freq].refclk_pre_div;
+	dw24.fbdiv_frac = e82x_tspll_params[clk_freq].frac_n_div;
 	dw24.time_ref_sel = clk_src;
 
-	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD24, dw24.val);
+	err = ice_write_cgu_reg(hw, ICE_CGU_R24, dw24.val);
 	if (err)
 		return err;
 
 	/* Finally, enable the PLL */
 	dw24.ts_pll_enable = 1;
 
-	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD24, dw24.val);
+	err = ice_write_cgu_reg(hw, ICE_CGU_R24, dw24.val);
 	if (err)
 		return err;
 
 	/* Wait to verify if the PLL locks */
 	usleep_range(1000, 5000);
 
-	err = ice_read_cgu_reg_e82x(hw, TSPLL_RO_BWM_LF, &bwm_lf.val);
+	err = ice_read_cgu_reg(hw, TSPLL_RO_BWM_LF, &bwm_lf.val);
 	if (err)
 		return err;
 
 	if (!bwm_lf.plllock_true_lock_cri) {
-		dev_warn(ice_hw_to_dev(hw), "CGU PLL failed to lock\n");
+		dev_warn(ice_hw_to_dev(hw), "TSPLL failed to lock\n");
 		return -EBUSY;
 	}
 
 	/* Log the current clock configuration */
-	ice_debug(hw, ICE_DBG_PTP, "New CGU configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
+	ice_debug(hw, ICE_DBG_PTP, "New TSPLL configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
 		  dw24.ts_pll_enable ? "enabled" : "disabled",
-		  ice_clk_src_str(dw24.time_ref_sel),
-		  ice_clk_freq_str(dw9.time_ref_freq_sel),
+		  ice_tspll_clk_src_str(dw24.time_ref_sel),
+		  ice_tspll_clk_freq_str(dw9.time_ref_freq_sel),
 		  bwm_lf.plllock_true_lock_cri ? "locked" : "unlocked");
 
 	return 0;
 }
 
 /**
- * ice_cfg_cgu_pll_dis_sticky_bits_e82x - disable TS PLL sticky bits
- * @hw: pointer to the HW struct
+ * ice_tspll_dis_sticky_bits_e82x - disable TSPLL sticky bits
+ * @hw: Pointer to the HW struct
  *
- * Configure the Clock Generation Unit TS PLL sticky bits so they don't latch on
- * losing TS PLL lock, but always show current state.
+ * Configure the Clock Generation Unit TSPLL sticky bits so they don't latch on
+ * losing TSPLL lock, but always show current state.
  *
- * Return: 0 on success, other error codes when failed to read/write CGU
+ * Return: 0 on success, other error codes when failed to read/write CGU.
  */
-static int ice_cfg_cgu_pll_dis_sticky_bits_e82x(struct ice_hw *hw)
+static int ice_tspll_dis_sticky_bits_e82x(struct ice_hw *hw)
 {
 	union tspll_cntr_bist_settings cntr_bist;
 	int err;
 
-	err = ice_read_cgu_reg_e82x(hw, TSPLL_CNTR_BIST_SETTINGS,
-				    &cntr_bist.val);
+	err = ice_read_cgu_reg(hw, TSPLL_CNTR_BIST_SETTINGS, &cntr_bist.val);
 	if (err)
 		return err;
 
@@ -379,13 +376,12 @@ static int ice_cfg_cgu_pll_dis_sticky_bits_e82x(struct ice_hw *hw)
 	cntr_bist.i_plllock_sel_0 = 0;
 	cntr_bist.i_plllock_sel_1 = 0;
 
-	return ice_write_cgu_reg_e82x(hw, TSPLL_CNTR_BIST_SETTINGS,
-				      cntr_bist.val);
+	return ice_write_cgu_reg(hw, TSPLL_CNTR_BIST_SETTINGS, cntr_bist.val);
 }
 
 /**
- * ice_cfg_cgu_pll_e825c - Configure the Clock Generation Unit for E825-C
- * @hw: pointer to the HW struct
+ * ice_tspll_cfg_e825c - Configure the TSPLL for E825-C
+ * @hw: Pointer to the HW struct
  * @clk_freq: Clock frequency to program
  * @clk_src: Clock source to select (TIME_REF, or TCXO)
  *
@@ -395,23 +391,22 @@ static int ice_cfg_cgu_pll_dis_sticky_bits_e82x(struct ice_hw *hw)
  * Return:
  * * %0       - success
  * * %-EINVAL - input parameters are incorrect
- * * %-EBUSY  - failed to lock TS PLL
+ * * %-EBUSY  - failed to lock TSPLL
  * * %other   - CGU read/write failure
  */
-static int ice_cfg_cgu_pll_e825c(struct ice_hw *hw,
-				 enum ice_time_ref_freq clk_freq,
-				 enum ice_clk_src clk_src)
+static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
+			       enum ice_clk_src clk_src)
 {
 	union tspll_ro_lock_e825c ro_lock;
-	union nac_cgu_dword16_e825c dw16;
-	union nac_cgu_dword23_e825c dw23;
-	union nac_cgu_dword19 dw19;
-	union nac_cgu_dword22 dw22;
-	union nac_cgu_dword24 dw24;
-	union nac_cgu_dword9 dw9;
+	union ice_cgu_r16 dw16;
+	union ice_cgu_r23 dw23;
+	union ice_cgu_r19 dw19;
+	union ice_cgu_r22 dw22;
+	union ice_cgu_r24 dw24;
+	union ice_cgu_r9 dw9;
 	int err;
 
-	if (clk_freq >= NUM_ICE_TIME_REF_FREQ) {
+	if (clk_freq >= NUM_ICE_TSPLL_FREQ) {
 		dev_warn(ice_hw_to_dev(hw), "Invalid TIME_REF frequency %u\n",
 			 clk_freq);
 		return -EINVAL;
@@ -423,46 +418,44 @@ static int ice_cfg_cgu_pll_e825c(struct ice_hw *hw,
 		return -EINVAL;
 	}
 
-	if (clk_src == ICE_CLK_SRC_TCXO &&
-	    clk_freq != ICE_TIME_REF_FREQ_156_250) {
+	if (clk_src == ICE_CLK_SRC_TCXO && clk_freq != ICE_TSPLL_FREQ_156_250) {
 		dev_warn(ice_hw_to_dev(hw),
 			 "TCXO only supports 156.25 MHz frequency\n");
 		return -EINVAL;
 	}
 
-	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD9, &dw9.val);
+	err = ice_read_cgu_reg(hw, ICE_CGU_R9, &dw9.val);
 	if (err)
 		return err;
 
-	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD24, &dw24.val);
+	err = ice_read_cgu_reg(hw, ICE_CGU_R24, &dw24.val);
 	if (err)
 		return err;
 
-	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD16_E825C, &dw16.val);
+	err = ice_read_cgu_reg(hw, ICE_CGU_R16, &dw16.val);
 	if (err)
 		return err;
 
-	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD23_E825C, &dw23.val);
+	err = ice_read_cgu_reg(hw, ICE_CGU_R23, &dw23.val);
 	if (err)
 		return err;
 
-	err = ice_read_cgu_reg_e82x(hw, TSPLL_RO_LOCK_E825C, &ro_lock.val);
+	err = ice_read_cgu_reg(hw, TSPLL_RO_LOCK_E825C, &ro_lock.val);
 	if (err)
 		return err;
 
 	/* Log the current clock configuration */
-	ice_debug(hw, ICE_DBG_PTP, "Current CGU configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
+	ice_debug(hw, ICE_DBG_PTP, "Current TSPLL configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
 		  dw24.ts_pll_enable ? "enabled" : "disabled",
-		  ice_clk_src_str(dw23.time_ref_sel),
-		  ice_clk_freq_str(dw9.time_ref_freq_sel),
+		  ice_tspll_clk_src_str(dw23.time_ref_sel),
+		  ice_tspll_clk_freq_str(dw9.time_ref_freq_sel),
 		  ro_lock.plllock_true_lock_cri ? "locked" : "unlocked");
 
 	/* Disable the PLL before changing the clock source or frequency */
 	if (dw23.ts_pll_enable) {
 		dw23.ts_pll_enable = 0;
 
-		err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD23_E825C,
-					     dw23.val);
+		err = ice_write_cgu_reg(hw, ICE_CGU_R23, dw23.val);
 		if (err)
 			return err;
 	}
@@ -478,33 +471,30 @@ static int ice_cfg_cgu_pll_e825c(struct ice_hw *hw,
 		dw9.time_ref_en = 1;
 		dw9.clk_eref0_en = 0;
 	}
-	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD9, dw9.val);
+	err = ice_write_cgu_reg(hw, ICE_CGU_R9, dw9.val);
 	if (err)
 		return err;
 
 	/* Choose the referenced frequency */
-	dw16.tspll_ck_refclkfreq =
-	e825c_cgu_params[clk_freq].tspll_ck_refclkfreq;
-	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD16_E825C, dw16.val);
+	dw16.ck_refclkfreq = e825c_tspll_params[clk_freq].ck_refclkfreq;
+	err = ice_write_cgu_reg(hw, ICE_CGU_R16, dw16.val);
 	if (err)
 		return err;
 
-	/* Configure the TS PLL feedback divisor */
-	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD19, &dw19.val);
+	/* Configure the TSPLL feedback divisor */
+	err = ice_read_cgu_reg(hw, ICE_CGU_R19, &dw19.val);
 	if (err)
 		return err;
 
-	dw19.tspll_fbdiv_intgr =
-		e825c_cgu_params[clk_freq].tspll_fbdiv_intgr;
-	dw19.tspll_ndivratio =
-		e825c_cgu_params[clk_freq].tspll_ndivratio;
+	dw19.fbdiv_intgr = e825c_tspll_params[clk_freq].fbdiv_intgr;
+	dw19.ndivratio = e825c_tspll_params[clk_freq].ndivratio;
 
-	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD19, dw19.val);
+	err = ice_write_cgu_reg(hw, ICE_CGU_R19, dw19.val);
 	if (err)
 		return err;
 
-	/* Configure the TS PLL post divisor */
-	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD22, &dw22.val);
+	/* Configure the TSPLL post divisor */
+	err = ice_read_cgu_reg(hw, ICE_CGU_R22, &dw22.val);
 	if (err)
 		return err;
 
@@ -512,135 +502,133 @@ static int ice_cfg_cgu_pll_e825c(struct ice_hw *hw,
 	dw22.time1588clk_div = 5;
 	dw22.time1588clk_sel_div2 = 0;
 
-	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD22, dw22.val);
+	err = ice_write_cgu_reg(hw, ICE_CGU_R22, dw22.val);
 	if (err)
 		return err;
 
-	/* Configure the TS PLL pre divisor and clock source */
-	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD23_E825C, &dw23.val);
+	/* Configure the TSPLL pre divisor and clock source */
+	err = ice_read_cgu_reg(hw, ICE_CGU_R23, &dw23.val);
 	if (err)
 		return err;
 
-	dw23.ref1588_ck_div =
-		e825c_cgu_params[clk_freq].ref1588_ck_div;
+	dw23.ref1588_ck_div = e825c_tspll_params[clk_freq].ref1588_ck_div;
 	dw23.time_ref_sel = clk_src;
 
-	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD23_E825C, dw23.val);
+	err = ice_write_cgu_reg(hw, ICE_CGU_R23, dw23.val);
 	if (err)
 		return err;
 
-	dw24.tspll_fbdiv_frac =
-		e825c_cgu_params[clk_freq].tspll_fbdiv_frac;
+	dw24.fbdiv_frac = e825c_tspll_params[clk_freq].fbdiv_frac;
 
-	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD24, dw24.val);
+	err = ice_write_cgu_reg(hw, ICE_CGU_R24, dw24.val);
 	if (err)
 		return err;
 
 	/* Finally, enable the PLL */
 	dw23.ts_pll_enable = 1;
 
-	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD23_E825C, dw23.val);
+	err = ice_write_cgu_reg(hw, ICE_CGU_R23, dw23.val);
 	if (err)
 		return err;
 
 	/* Wait to verify if the PLL locks */
 	usleep_range(1000, 5000);
 
-	err = ice_read_cgu_reg_e82x(hw, TSPLL_RO_LOCK_E825C, &ro_lock.val);
+	err = ice_read_cgu_reg(hw, TSPLL_RO_LOCK_E825C, &ro_lock.val);
 	if (err)
 		return err;
 
 	if (!ro_lock.plllock_true_lock_cri) {
-		dev_warn(ice_hw_to_dev(hw), "CGU PLL failed to lock\n");
+		dev_warn(ice_hw_to_dev(hw), "TSPLL failed to lock\n");
 		return -EBUSY;
 	}
 
 	/* Log the current clock configuration */
-	ice_debug(hw, ICE_DBG_PTP, "New CGU configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
+	ice_debug(hw, ICE_DBG_PTP, "New TSPLL configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
 		  dw24.ts_pll_enable ? "enabled" : "disabled",
-		  ice_clk_src_str(dw23.time_ref_sel),
-		  ice_clk_freq_str(dw9.time_ref_freq_sel),
+		  ice_tspll_clk_src_str(dw23.time_ref_sel),
+		  ice_tspll_clk_freq_str(dw9.time_ref_freq_sel),
 		  ro_lock.plllock_true_lock_cri ? "locked" : "unlocked");
 
 	return 0;
 }
 
 /**
- * ice_cfg_cgu_pll_dis_sticky_bits_e825c - disable TS PLL sticky bits for E825-C
- * @hw: pointer to the HW struct
+ * ice_tspll_dis_sticky_bits_e825c - disable TSPLL sticky bits for E825-C
+ * @hw: Pointer to the HW struct
  *
- * Configure the Clock Generation Unit TS PLL sticky bits so they don't latch on
- * losing TS PLL lock, but always show current state.
+ * Configure the Clock Generation Unit TSPLL sticky bits so they don't latch on
+ * losing TSPLL lock, but always show current state.
  *
- * Return: 0 on success, other error codes when failed to read/write CGU
+ * Return: 0 on success, other error codes when failed to read/write CGU.
  */
-static int ice_cfg_cgu_pll_dis_sticky_bits_e825c(struct ice_hw *hw)
+static int ice_tspll_dis_sticky_bits_e825c(struct ice_hw *hw)
 {
 	union tspll_bw_tdc_e825c bw_tdc;
 	int err;
 
-	err = ice_read_cgu_reg_e82x(hw, TSPLL_BW_TDC_E825C, &bw_tdc.val);
+	err = ice_read_cgu_reg(hw, TSPLL_BW_TDC_E825C, &bw_tdc.val);
 	if (err)
 		return err;
 
 	bw_tdc.i_plllock_sel_1_0 = 0;
 
-	return ice_write_cgu_reg_e82x(hw, TSPLL_BW_TDC_E825C, bw_tdc.val);
+	return ice_write_cgu_reg(hw, TSPLL_BW_TDC_E825C, bw_tdc.val);
 }
 
 #define ICE_ONE_PPS_OUT_AMP_MAX 3
 
 /**
- * ice_cgu_cfg_pps_out - Configure 1PPS output from CGU
+ * ice_tspll_cfg_pps_out_e825c - Enable/disable 1PPS output and set amplitude
  * @hw: pointer to the HW struct
  * @enable: true to enable 1PPS output, false to disable it
  *
  * Return: 0 on success, other negative error code when CGU read/write failed.
  */
-int ice_cgu_cfg_pps_out(struct ice_hw *hw, bool enable)
+int ice_tspll_cfg_pps_out_e825c(struct ice_hw *hw, bool enable)
 {
-	union nac_cgu_dword9 dw9;
+	union ice_cgu_r9 r9;
 	int err;
 
-	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD9, &dw9.val);
+	err = ice_read_cgu_reg(hw, ICE_CGU_R9, &r9.val);
 	if (err)
 		return err;
 
-	dw9.one_pps_out_en = enable;
-	dw9.one_pps_out_amp = enable * ICE_ONE_PPS_OUT_AMP_MAX;
-	return ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD9, dw9.val);
+	r9.one_pps_out_en = enable;
+	r9.one_pps_out_amp = enable * ICE_ONE_PPS_OUT_AMP_MAX;
+	return ice_write_cgu_reg(hw, ICE_CGU_R9, r9.val);
 }
 
 /**
- * ice_init_cgu_e82x - Initialize CGU with settings from firmware
- * @hw: pointer to the HW structure
+ * ice_tspll_init - Initialize TSPLL with settings from firmware
+ * @hw: Pointer to the HW structure
  *
- * Initialize the Clock Generation Unit of the E822 device.
+ * Initialize the Clock Generation Unit of the E82X/E825 device.
  *
- * Return: 0 on success, other error codes when failed to read/write/cfg CGU
+ * Return: 0 on success, other error codes when failed to read/write/cfg CGU.
  */
-int ice_init_cgu_e82x(struct ice_hw *hw)
+int ice_tspll_init(struct ice_hw *hw)
 {
 	struct ice_ts_func_info *ts_info = &hw->func_caps.ts_func_info;
 	int err;
 
-	/* Disable sticky lock detection so lock err reported is accurate */
+	/* Disable sticky lock detection so lock err reported is accurate. */
 	if (hw->mac_type == ICE_MAC_GENERIC_3K_E825)
-		err = ice_cfg_cgu_pll_dis_sticky_bits_e825c(hw);
+		err = ice_tspll_dis_sticky_bits_e825c(hw);
 	else
-		err = ice_cfg_cgu_pll_dis_sticky_bits_e82x(hw);
+		err = ice_tspll_dis_sticky_bits_e82x(hw);
 	if (err)
 		return err;
 
-	/* Configure the CGU PLL using the parameters from the function
+	/* Configure the TSPLL using the parameters from the function
 	 * capabilities.
 	 */
 	if (hw->mac_type == ICE_MAC_GENERIC_3K_E825)
-		err = ice_cfg_cgu_pll_e825c(hw, ts_info->time_ref,
-					    (enum ice_clk_src)ts_info->clk_src);
+		err = ice_tspll_cfg_e825c(hw, ts_info->time_ref,
+					  (enum ice_clk_src)ts_info->clk_src);
 	else
-		err = ice_cfg_cgu_pll_e82x(hw, ts_info->time_ref,
-					   (enum ice_clk_src)ts_info->clk_src);
+		err = ice_tspll_cfg_e82x(hw, ts_info->time_ref,
+					 (enum ice_clk_src)ts_info->clk_src);
 
 	return err;
 }

-- 
2.48.1.397.gec9d649cc640

