Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CC690A5926A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Mar 2025 12:14:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 57B6240D1A;
	Mon, 10 Mar 2025 11:14:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L3uAsSu3nlBB; Mon, 10 Mar 2025 11:14:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5987440D13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741605261;
	bh=/YbbHmKzlbhZzeZEYx0Gqo+kjMPe9NNraz4X2jOL7ho=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ojv4lzdfCLDysu4x8oY03eP4MuA214svA8AZ2av7I06jyK1+SaLa8jCyNdtjH9M4C
	 d81YjyLdsjI/8+PzmzaIjhLZ/lWunyZ+P+Tt56GZ18hpBtUUOuV6aJlLOb8MmhBbN4
	 B/YReBwMeDAxQASpRDBIhSgWwA/lTId7LXZc+T5a5ybsc5LjNlsg8YtAa3IpbcbFzg
	 KCvZ4AdEX0r7KCISfsqkk/r2u3Tx63iZO2wYvj+Tzsjlv5TIMKLPng/WtkbPlcdqah
	 vd95XZnz6MzoaKzr4ajZ3yH5gaX3+Pa4ZCJfOQ63SVoJCZDqdKL9G2Ewjb8RTmEmJG
	 szFjcXu5cHdiw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5987440D13;
	Mon, 10 Mar 2025 11:14:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8B16C1C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 11:14:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6D7E581EB2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 11:14:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id INlAVE-eM0VV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Mar 2025 11:14:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F409681EB7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F409681EB7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F409681EB7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 11:14:15 +0000 (UTC)
X-CSE-ConnectionGUID: owEz8/4sTfKHgXlf1UI7kA==
X-CSE-MsgGUID: p6j0gI8jR1WtIPWubwf8LQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11368"; a="65048668"
X-IronPort-AV: E=Sophos;i="6.14,235,1736841600"; d="scan'208";a="65048668"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 04:14:15 -0700
X-CSE-ConnectionGUID: mbksMyWkTdWSPo0KKrRnjA==
X-CSE-MsgGUID: 255sCeAiRRyaS3eRtHxCHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,235,1736841600"; d="scan'208";a="119968311"
Received: from kkolacin-desk1.ger.corp.intel.com (HELO
 kkolacin-desk1.igk.intel.com) ([10.217.160.155])
 by fmviesa007.fm.intel.com with ESMTP; 10 Mar 2025 04:14:13 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Milena Olech <milena-olech@intel.com>
Date: Mon, 10 Mar 2025 12:12:46 +0100
Message-ID: <20250310111357.1238454-14-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250310111357.1238454-12-karol.kolacinski@intel.com>
References: <20250310111357.1238454-12-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741605256; x=1773141256;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NAUGuC3hwMQI8HUGMlcQomQWfKopGypNn0PoD0U894Y=;
 b=UTyNRda4w6A+dMo3uFXJITBFtTolcDk+xWAFfzKtq4Ipl8HBfk5WkyT+
 PR8TFkO2/vQ7VEIA+yJUNssnN4igk9KoBkDfMkLveHsKQOgu0kpyEOK56
 mxkE3A8Fh1obIIXX+RZPeCNHMatbEpi3VgXdPhgrCtVqHnaH3HZUDPxgY
 HrEz3VEgZ2KPieKmASw7sSeSzAyZOVc7/EUenvqFdpZNgEYa5rkE6F/jk
 MfV2HSSoVDAuyYnQr5SsgKUX8uMRcDnJ5X7HkgIZ25rjCJUD5oQBEA27A
 eHHhoO5Pax2hHBOHdU8uh8umYiwKdsnWLDm3Ss5HSxLPf4ddMjW03kuN4
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UTyNRda4
Subject: [Intel-wired-lan] [PATCH iwl-next 02/10] ice: rename TSPLL and CGU
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

Rename TSPLL and CGU functions, definitions etc. to match the file name
and have constistent naming scheme.

Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
Reviewed-by: Milena Olech <milena-olech@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c   |  28 +-
 drivers/net/ethernet/intel/ice/ice_common.h   |  36 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      |   2 +-
 .../net/ethernet/intel/ice/ice_ptp_consts.h   |  16 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |   4 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  11 +-
 drivers/net/ethernet/intel/ice/ice_tspll.c    | 350 +++++++++---------
 drivers/net/ethernet/intel/ice/ice_tspll.h    |  32 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |  20 +-
 9 files changed, 244 insertions(+), 255 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 3119bec3da33..d7333105ecd8 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2298,12 +2298,12 @@ ice_parse_1588_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
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
@@ -2311,7 +2311,7 @@ ice_parse_1588_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
 		 */
 		ice_debug(hw, ICE_DBG_INIT, "1588 func caps: unknown clock frequency %u\n",
 			  info->clk_freq);
-		info->time_ref = ICE_TIME_REF_FREQ_25_000;
+		info->time_ref = ICE_TSPLL_FREQ_25_000;
 	}
 
 	ice_debug(hw, ICE_DBG_INIT, "func caps: ieee_1588 = %u\n",
@@ -6113,17 +6113,17 @@ u32 ice_get_link_speed(u16 index)
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
@@ -6145,17 +6145,17 @@ int ice_read_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 *val)
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
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 47e17fa443a1..fee5b373af8c 100644
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
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 01b9d57c3f5d..fdeb20ac831c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1641,7 +1641,7 @@ static int ice_ptp_write_perout(struct ice_hw *hw, unsigned int chan,
 		int err;
 
 		/* Enable/disable CGU 1PPS output for E825C */
-		err = ice_cgu_cfg_pps_out(hw, !!period);
+		err = ice_tspll_cfg_pps_out_e825c(hw, !!period);
 		if (err)
 			return err;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
index 7b748286f653..19dddd9b53dd 100644
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
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 3231d4e5b480..689feac7baf9 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -2120,7 +2120,7 @@ static int ice_ptp_init_phc_e825(struct ice_hw *hw)
 	ice_sb_access_ena_eth56g(hw, true);
 
 	/* Initialize the Clock Generation Unit */
-	return ice_init_cgu_e82x(hw);
+	return ice_tspll_init(hw);
 }
 
 /**
@@ -2795,7 +2795,7 @@ static int ice_ptp_init_phc_e82x(struct ice_hw *hw)
 	wr32(hw, PF_SB_REM_DEV_CTL, val);
 
 	/* Initialize the Clock Generation Unit */
-	err = ice_init_cgu_e82x(hw);
+	err = ice_tspll_init(hw);
 	if (err)
 		return err;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 62ac898de002..7a952681b973 100644
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
diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.c b/drivers/net/ethernet/intel/ice/ice_tspll.c
index 73f979b1d8e2..210be7861313 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.c
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.c
@@ -3,8 +3,8 @@
 #include "ice_ptp_hw.h"
 
 static const struct
-ice_cgu_pll_params_e82x e822_cgu_params[NUM_ICE_TIME_REF_FREQ] = {
-	/* ICE_TIME_REF_FREQ_25_000 -> 25 MHz */
+ice_tspll_params_e82x e82x_tspll_params[NUM_ICE_TSPLL_FREQ] = {
+	/* ICE_TSPLL_FREQ_25_000 -> 25 MHz */
 	{
 		/* refclk_pre_div */
 		1,
@@ -16,7 +16,7 @@ ice_cgu_pll_params_e82x e822_cgu_params[NUM_ICE_TIME_REF_FREQ] = {
 		6,
 	},
 
-	/* ICE_TIME_REF_FREQ_122_880 -> 122.88 MHz */
+	/* ICE_TSPLL_FREQ_122_880 -> 122.88 MHz */
 	{
 		/* refclk_pre_div */
 		5,
@@ -28,7 +28,7 @@ ice_cgu_pll_params_e82x e822_cgu_params[NUM_ICE_TIME_REF_FREQ] = {
 		7,
 	},
 
-	/* ICE_TIME_REF_FREQ_125_000 -> 125 MHz */
+	/* ICE_TSPLL_FREQ_125_000 -> 125 MHz */
 	{
 		/* refclk_pre_div */
 		5,
@@ -40,7 +40,7 @@ ice_cgu_pll_params_e82x e822_cgu_params[NUM_ICE_TIME_REF_FREQ] = {
 		7,
 	},
 
-	/* ICE_TIME_REF_FREQ_153_600 -> 153.6 MHz */
+	/* ICE_TSPLL_FREQ_153_600 -> 153.6 MHz */
 	{
 		/* refclk_pre_div */
 		5,
@@ -52,7 +52,7 @@ ice_cgu_pll_params_e82x e822_cgu_params[NUM_ICE_TIME_REF_FREQ] = {
 		6,
 	},
 
-	/* ICE_TIME_REF_FREQ_156_250 -> 156.25 MHz */
+	/* ICE_TSPLL_FREQ_156_250 -> 156.25 MHz */
 	{
 		/* refclk_pre_div */
 		5,
@@ -64,7 +64,7 @@ ice_cgu_pll_params_e82x e822_cgu_params[NUM_ICE_TIME_REF_FREQ] = {
 		6,
 	},
 
-	/* ICE_TIME_REF_FREQ_245_760 -> 245.76 MHz */
+	/* ICE_TSPLL_FREQ_245_760 -> 245.76 MHz */
 	{
 		/* refclk_pre_div */
 		10,
@@ -78,86 +78,86 @@ ice_cgu_pll_params_e82x e822_cgu_params[NUM_ICE_TIME_REF_FREQ] = {
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
@@ -165,25 +165,25 @@ ice_cgu_pll_params_e825c e825c_cgu_params[NUM_ICE_TIME_REF_FREQ] = {
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
@@ -191,12 +191,12 @@ static const char *ice_clk_freq_str(enum ice_time_ref_freq clk_freq)
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
@@ -209,8 +209,8 @@ static const char *ice_clk_src_str(enum ice_clk_src clk_src)
 }
 
 /**
- * ice_cfg_cgu_pll_e82x - Configure the Clock Generation Unit
- * @hw: pointer to the HW struct
+ * ice_tspll_cfg_e82x - Configure the Clock Generation Unit TSPLL
+ * @hw: Pointer to the HW struct
  * @clk_freq: Clock frequency to program
  * @clk_src: Clock source to select (TIME_REF, or TCXO)
  *
@@ -220,21 +220,20 @@ static const char *ice_clk_src_str(enum ice_clk_src clk_src)
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
@@ -246,129 +245,127 @@ static int ice_cfg_cgu_pll_e82x(struct ice_hw *hw,
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
 
@@ -376,13 +373,12 @@ static int ice_cfg_cgu_pll_dis_sticky_bits_e82x(struct ice_hw *hw)
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
@@ -392,23 +388,22 @@ static int ice_cfg_cgu_pll_dis_sticky_bits_e82x(struct ice_hw *hw)
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
@@ -420,46 +415,44 @@ static int ice_cfg_cgu_pll_e825c(struct ice_hw *hw,
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
@@ -475,33 +468,30 @@ static int ice_cfg_cgu_pll_e825c(struct ice_hw *hw,
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
 
@@ -509,135 +499,133 @@ static int ice_cfg_cgu_pll_e825c(struct ice_hw *hw,
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
+	err = ice_read_cgu_reg_e82x(hw, ICE_CGU_R9, &r9.val);
 	if (err)
 		return err;
 
-	dw9.one_pps_out_en = enable;
-	dw9.one_pps_out_amp = enable * ICE_ONE_PPS_OUT_AMP_MAX;
-	return ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD9, dw9.val);
+	r9.one_pps_out_en = enable;
+	r9.one_pps_out_amp = enable * ICE_ONE_PPS_OUT_AMP_MAX;
+	return ice_write_cgu_reg_e82x(hw, ICE_CGU_R9, r9.val);
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
diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.h b/drivers/net/ethernet/intel/ice/ice_tspll.h
index 181ca24a2739..0e28e97e09be 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.h
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.h
@@ -2,16 +2,16 @@
 #define _ICE_TSPLL_H_
 
 /**
- * struct ice_cgu_pll_params_e82x - E82X CGU parameters
+ * struct ice_tspll_params_e82x
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
@@ -19,25 +19,25 @@ struct ice_cgu_pll_params_e82x {
 };
 
 /**
- * struct ice_cgu_pll_params_e825c - E825C CGU parameters
- * @tspll_ck_refclkfreq: tspll_ck_refclkfreq selection
- * @tspll_ndivratio: ndiv ratio that goes directly to the pll
- * @tspll_fbdiv_intgr: TS PLL integer feedback divide
- * @tspll_fbdiv_frac:  TS PLL fractional feedback divide
- * @ref1588_ck_div: clock divider for tspll ref
+ * struct ice_tspll_params_e825c
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
index 0aab21113cc4..b1eda91181b9 100644
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
-- 
2.48.1

