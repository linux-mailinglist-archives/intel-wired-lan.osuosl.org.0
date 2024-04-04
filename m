Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4BE89842F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Apr 2024 11:35:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A962841B73;
	Thu,  4 Apr 2024 09:35:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W2XUpTYqhHj5; Thu,  4 Apr 2024 09:35:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3D73741BAA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712223340;
	bh=UE6ek8qGkHMgtYY1jOsiqKvtWCzBLnNBMBQS6zL0M+A=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=opvVKBG5wyJxI6SBvjGkXo6WziS0NZHKlZvqRH6HkeHeB8F+AcRSbZ3Be+Hqd+lxu
	 bDQYz03wzMMfiPk+go9UMT9agi/jHgELBdbnaH7NOHex62mh/qeus0Zen3uWAFTCB4
	 dRwjplIOHorLEVYWb/yDozlqcmGD06PdGM1pEV+e4yjWpeddU1qymmlrNLFeF3zlox
	 C7aVFVQcK+lOM45A0KqxI+YgGH6MSbWStf/xbWxsoRmV/uFFs2O/KeREvxBM8o1+Hs
	 6pnu7GHnHBOXVdY20zxzwEOtshzXbhLI6qvbCBUoummwNhhBVdu1reqxqe7B1wGTda
	 /A3ni3xD5d3Zg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3D73741BAA;
	Thu,  4 Apr 2024 09:35:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A37601BF3D5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 09:35:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 98AB260747
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 09:35:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tN5_67gM5srk for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Apr 2024 09:35:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AE1306080C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE1306080C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AE1306080C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 09:35:21 +0000 (UTC)
X-CSE-ConnectionGUID: VsRrWESkTb6LBUaEV9KEVw==
X-CSE-MsgGUID: SPPKDD0/S6C2SjCMzSPbPg==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="29966593"
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="29966593"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 02:22:56 -0700
X-CSE-ConnectionGUID: Q3Nq3yvHRn+8q09ADKV7SQ==
X-CSE-MsgGUID: 72jxZHLNRNSZWmqOcXP7cQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="56180754"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orviesa001.jf.intel.com with ESMTP; 04 Apr 2024 02:22:53 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  4 Apr 2024 11:09:53 +0200
Message-ID: <20240404092238.26975-19-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240404092238.26975-14-karol.kolacinski@intel.com>
References: <20240404092238.26975-14-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712223321; x=1743759321;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VW41pqcoZjh7R65Fk5a0eZAYvW64BboE6NU242ViQjE=;
 b=Q20UipB5ouuanJx8OM1id4/+Au7cJNl2DZk7o8rilp5MBCtujZgncc42
 Q1feT6QcP4PI9l23LnQIP3uFAh05uV/yjqyyx+9kcj5095zaugj+Vplm/
 iVbCb47AnkDJ6JJxg28uUgljS9lD9//oy+lzfcwnUWlrv/W7PjpU0tvwS
 5QD2RcaA741O3ueZbdpl9IP4iGviOmM9LemKXsael4kJJitIatocX6iG1
 iyMuv5eqqPkqCbmEZ7VQNpiUwdz3Llaqawl0hyoTk2xIyCdAT+3KPutg9
 VajbD1dJOqQJrwWoXEgEp+22nItKId7eFwPa17gnMSZJG+9ESbmkJuOfz
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q20UipB5
Subject: [Intel-wired-lan] [PATCH v5 iwl-next 05/12] ice: Move CGU block
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>

Move CGU block to the beginning of ice_ptp_hw.c

Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 984 ++++++++++----------
 1 file changed, 489 insertions(+), 495 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 9bf23215ceeb..8ab8201b5375 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -226,6 +226,283 @@ static u64 ice_ptp_read_src_incval(struct ice_hw *hw)
 	return ((u64)(hi & INCVAL_HIGH_M) << 32) | lo;
 }
 
+/**
+ * ice_read_cgu_reg_e82x - Read a CGU register
+ * @hw: pointer to the HW struct
+ * @addr: Register address to read
+ * @val: storage for register value read
+ *
+ * Read the contents of a register of the Clock Generation Unit. Only
+ * applicable to E822 devices.
+ */
+static int ice_read_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 *val)
+{
+	struct ice_sbq_msg_input cgu_msg;
+	int err;
+
+	cgu_msg.opcode = ice_sbq_msg_rd;
+	cgu_msg.dest_dev = cgu;
+	cgu_msg.msg_addr_low = addr;
+	cgu_msg.msg_addr_high = 0x0;
+
+	err = ice_sbq_rw_reg(hw, &cgu_msg);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read CGU register 0x%04x, err %d\n",
+			  addr, err);
+		return err;
+	}
+
+	*val = cgu_msg.data;
+
+	return err;
+}
+
+/**
+ * ice_write_cgu_reg_e82x - Write a CGU register
+ * @hw: pointer to the HW struct
+ * @addr: Register address to write
+ * @val: value to write into the register
+ *
+ * Write the specified value to a register of the Clock Generation Unit. Only
+ * applicable to E822 devices.
+ */
+static int ice_write_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 val)
+{
+	struct ice_sbq_msg_input cgu_msg;
+	int err;
+
+	cgu_msg.opcode = ice_sbq_msg_wr;
+	cgu_msg.dest_dev = cgu;
+	cgu_msg.msg_addr_low = addr;
+	cgu_msg.msg_addr_high = 0x0;
+	cgu_msg.data = val;
+
+	err = ice_sbq_rw_reg(hw, &cgu_msg);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write CGU register 0x%04x, err %d\n",
+			  addr, err);
+		return err;
+	}
+
+	return err;
+}
+
+/**
+ * ice_clk_freq_str - Convert time_ref_freq to string
+ * @clk_freq: Clock frequency
+ *
+ * Convert the specified TIME_REF clock frequency to a string.
+ */
+static const char *ice_clk_freq_str(u8 clk_freq)
+{
+	switch ((enum ice_time_ref_freq)clk_freq) {
+	case ICE_TIME_REF_FREQ_25_000:
+		return "25 MHz";
+	case ICE_TIME_REF_FREQ_122_880:
+		return "122.88 MHz";
+	case ICE_TIME_REF_FREQ_125_000:
+		return "125 MHz";
+	case ICE_TIME_REF_FREQ_153_600:
+		return "153.6 MHz";
+	case ICE_TIME_REF_FREQ_156_250:
+		return "156.25 MHz";
+	case ICE_TIME_REF_FREQ_245_760:
+		return "245.76 MHz";
+	default:
+		return "Unknown";
+	}
+}
+
+/**
+ * ice_clk_src_str - Convert time_ref_src to string
+ * @clk_src: Clock source
+ *
+ * Convert the specified clock source to its string name.
+ */
+static const char *ice_clk_src_str(u8 clk_src)
+{
+	switch ((enum ice_clk_src)clk_src) {
+	case ICE_CLK_SRC_TCX0:
+		return "TCX0";
+	case ICE_CLK_SRC_TIME_REF:
+		return "TIME_REF";
+	default:
+		return "Unknown";
+	}
+}
+
+/**
+ * ice_cfg_cgu_pll_e82x - Configure the Clock Generation Unit
+ * @hw: pointer to the HW struct
+ * @clk_freq: Clock frequency to program
+ * @clk_src: Clock source to select (TIME_REF, or TCX0)
+ *
+ * Configure the Clock Generation Unit with the desired clock frequency and
+ * time reference, enabling the PLL which drives the PTP hardware clock.
+ */
+static int ice_cfg_cgu_pll_e82x(struct ice_hw *hw,
+				enum ice_time_ref_freq clk_freq,
+				enum ice_clk_src clk_src)
+{
+	union tspll_ro_bwm_lf bwm_lf;
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
+	if (clk_src == ICE_CLK_SRC_TCX0 &&
+	    clk_freq != ICE_TIME_REF_FREQ_25_000) {
+		dev_warn(ice_hw_to_dev(hw),
+			 "TCX0 only supports 25 MHz frequency\n");
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
+	err = ice_read_cgu_reg_e82x(hw, TSPLL_RO_BWM_LF, &bwm_lf.val);
+	if (err)
+		return err;
+
+	/* Log the current clock configuration */
+	ice_debug(hw, ICE_DBG_PTP, "Current CGU configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
+		  dw24.field.ts_pll_enable ? "enabled" : "disabled",
+		  ice_clk_src_str(dw24.field.time_ref_sel),
+		  ice_clk_freq_str(dw9.field.time_ref_freq_sel),
+		  bwm_lf.field.plllock_true_lock_cri ? "locked" : "unlocked");
+
+	/* Disable the PLL before changing the clock source or frequency */
+	if (dw24.field.ts_pll_enable) {
+		dw24.field.ts_pll_enable = 0;
+
+		err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD24, dw24.val);
+		if (err)
+			return err;
+	}
+
+	/* Set the frequency */
+	dw9.field.time_ref_freq_sel = clk_freq;
+	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD9, dw9.val);
+	if (err)
+		return err;
+
+	/* Configure the TS PLL feedback divisor */
+	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD19, &dw19.val);
+	if (err)
+		return err;
+
+	dw19.field.tspll_fbdiv_intgr = e822_cgu_params[clk_freq].feedback_div;
+	dw19.field.tspll_ndivratio = 1;
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
+	dw22.field.time1588clk_div = e822_cgu_params[clk_freq].post_pll_div;
+	dw22.field.time1588clk_sel_div2 = 0;
+
+	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD22, dw22.val);
+	if (err)
+		return err;
+
+	/* Configure the TS PLL pre divisor and clock source */
+	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD24, &dw24.val);
+	if (err)
+		return err;
+
+	dw24.field.ref1588_ck_div = e822_cgu_params[clk_freq].refclk_pre_div;
+	dw24.field.tspll_fbdiv_frac = e822_cgu_params[clk_freq].frac_n_div;
+	dw24.field.time_ref_sel = clk_src;
+
+	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD24, dw24.val);
+	if (err)
+		return err;
+
+	/* Finally, enable the PLL */
+	dw24.field.ts_pll_enable = 1;
+
+	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD24, dw24.val);
+	if (err)
+		return err;
+
+	/* Wait to verify if the PLL locks */
+	usleep_range(1000, 5000);
+
+	err = ice_read_cgu_reg_e82x(hw, TSPLL_RO_BWM_LF, &bwm_lf.val);
+	if (err)
+		return err;
+
+	if (!bwm_lf.field.plllock_true_lock_cri) {
+		dev_warn(ice_hw_to_dev(hw), "CGU PLL failed to lock\n");
+		return -EBUSY;
+	}
+
+	/* Log the current clock configuration */
+	ice_debug(hw, ICE_DBG_PTP, "New CGU configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
+		  dw24.field.ts_pll_enable ? "enabled" : "disabled",
+		  ice_clk_src_str(dw24.field.time_ref_sel),
+		  ice_clk_freq_str(dw9.field.time_ref_freq_sel),
+		  bwm_lf.field.plllock_true_lock_cri ? "locked" : "unlocked");
+
+	return 0;
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
+	union tspll_cntr_bist_settings cntr_bist;
+	int err;
+
+	err = ice_read_cgu_reg_e82x(hw, TSPLL_CNTR_BIST_SETTINGS,
+				    &cntr_bist.val);
+	if (err)
+		return err;
+
+	/* Disable sticky lock detection so lock err reported is accurate */
+	cntr_bist.field.i_plllock_sel_0 = 0;
+	cntr_bist.field.i_plllock_sel_1 = 0;
+
+	err = ice_write_cgu_reg_e82x(hw, TSPLL_CNTR_BIST_SETTINGS,
+				     cntr_bist.val);
+	if (err)
+		return err;
+
+	/* Configure the CGU PLL using the parameters from the function
+	 * capabilities.
+	 */
+	return ice_cfg_cgu_pll_e82x(hw, ts_info->time_ref,
+				   (enum ice_clk_src)ts_info->clk_src);
+}
+
 /**
  * ice_ptp_tmr_cmd_to_src_reg - Convert to source timer command value
  * @hw: pointer to HW struct
@@ -564,220 +841,27 @@ ice_read_64b_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 low_addr, u64 *val)
 		return err;
 	}
 
-	*val = (u64)high << 32 | low;
-
-	return 0;
-}
-
-/**
- * ice_write_phy_reg_e82x - Write a PHY register
- * @hw: pointer to the HW struct
- * @port: PHY port to write to
- * @offset: PHY register offset to write
- * @val: The value to write to the register
- *
- * Write a PHY register for the given port over the device sideband queue.
- */
-static int
-ice_write_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 offset, u32 val)
-{
-	struct ice_sbq_msg_input msg = {0};
-	int err;
-
-	ice_fill_phy_msg_e82x(hw, &msg, port, offset);
-	msg.opcode = ice_sbq_msg_wr;
-	msg.data = val;
-
-	err = ice_sbq_rw_reg(hw, &msg);
-	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
-			  err);
-		return err;
-	}
-
-	return 0;
-}
-
-/**
- * ice_write_40b_phy_reg_e82x - Write a 40b value to the PHY
- * @hw: pointer to the HW struct
- * @port: port to write to
- * @low_addr: offset of the low register
- * @val: 40b value to write
- *
- * Write the provided 40b value to the two associated registers by splitting
- * it up into two chunks, the lower 8 bits and the upper 32 bits.
- */
-static int
-ice_write_40b_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 low_addr, u64 val)
-{
-	u32 low, high;
-	u16 high_addr;
-	int err;
-
-	/* Only operate on registers known to be split into a lower 8 bit
-	 * register and an upper 32 bit register.
-	 */
-	if (!ice_is_40b_phy_reg_e82x(low_addr, &high_addr)) {
-		ice_debug(hw, ICE_DBG_PTP, "Invalid 40b register addr 0x%08x\n",
-			  low_addr);
-		return -EINVAL;
-	}
-
-	low = (u32)(val & P_REG_40B_LOW_M);
-	high = (u32)(val >> P_REG_40B_HIGH_S);
-
-	err = ice_write_phy_reg_e82x(hw, port, low_addr, low);
-	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to write to low register 0x%08x\n, err %d",
-			  low_addr, err);
-		return err;
-	}
-
-	err = ice_write_phy_reg_e82x(hw, port, high_addr, high);
-	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to write to high register 0x%08x\n, err %d",
-			  high_addr, err);
-		return err;
-	}
-
-	return 0;
-}
-
-/**
- * ice_write_64b_phy_reg_e82x - Write a 64bit value to PHY registers
- * @hw: pointer to the HW struct
- * @port: PHY port to read from
- * @low_addr: offset of the lower register to read from
- * @val: the contents of the 64bit value to write to PHY
- *
- * Write the 64bit value to the two associated 32bit PHY registers. The offset
- * is always specified as the lower register, and the high address is looked
- * up. This function only operates on registers known to be two parts of
- * a 64bit value.
- */
-static int
-ice_write_64b_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 low_addr, u64 val)
-{
-	u32 low, high;
-	u16 high_addr;
-	int err;
-
-	/* Only operate on registers known to be split into two 32bit
-	 * registers.
-	 */
-	if (!ice_is_64b_phy_reg_e82x(low_addr, &high_addr)) {
-		ice_debug(hw, ICE_DBG_PTP, "Invalid 64b register addr 0x%08x\n",
-			  low_addr);
-		return -EINVAL;
-	}
-
-	low = lower_32_bits(val);
-	high = upper_32_bits(val);
-
-	err = ice_write_phy_reg_e82x(hw, port, low_addr, low);
-	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to write to low register 0x%08x\n, err %d",
-			  low_addr, err);
-		return err;
-	}
-
-	err = ice_write_phy_reg_e82x(hw, port, high_addr, high);
-	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to write to high register 0x%08x\n, err %d",
-			  high_addr, err);
-		return err;
-	}
-
-	return 0;
-}
-
-/**
- * ice_fill_quad_msg_e82x - Fill message data for quad register access
- * @hw: pointer to the HW struct
- * @msg: the PHY message buffer to fill in
- * @quad: the quad to access
- * @offset: the register offset
- *
- * Fill a message buffer for accessing a register in a quad shared between
- * multiple PHYs.
- */
-static int ice_fill_quad_msg_e82x(struct ice_hw *hw,
-				  struct ice_sbq_msg_input *msg, u8 quad,
-				  u16 offset)
-{
-	u32 addr;
-
-	if (quad >= ICE_GET_QUAD_NUM(hw->ptp.num_lports))
-		return -EINVAL;
-
-	msg->dest_dev = rmn_0;
-
-	if (!(quad % ICE_GET_QUAD_NUM(hw->ptp.ports_per_phy)))
-		addr = Q_0_BASE + offset;
-	else
-		addr = Q_1_BASE + offset;
-
-	msg->msg_addr_low = lower_16_bits(addr);
-	msg->msg_addr_high = upper_16_bits(addr);
-
-	return 0;
-}
-
-/**
- * ice_read_quad_reg_e82x - Read a PHY quad register
- * @hw: pointer to the HW struct
- * @quad: quad to read from
- * @offset: quad register offset to read
- * @val: on return, the contents read from the quad
- *
- * Read a quad register over the device sideband queue. Quad registers are
- * shared between multiple PHYs.
- */
-int
-ice_read_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 *val)
-{
-	struct ice_sbq_msg_input msg = {0};
-	int err;
-
-	err = ice_fill_quad_msg_e82x(hw, &msg, quad, offset);
-	if (err)
-		return err;
-
-	msg.opcode = ice_sbq_msg_rd;
-
-	err = ice_sbq_rw_reg(hw, &msg);
-	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
-			  err);
-		return err;
-	}
-
-	*val = msg.data;
+	*val = (u64)high << 32 | low;
 
 	return 0;
 }
 
 /**
- * ice_write_quad_reg_e82x - Write a PHY quad register
+ * ice_write_phy_reg_e82x - Write a PHY register
  * @hw: pointer to the HW struct
- * @quad: quad to write to
- * @offset: quad register offset to write
+ * @port: PHY port to write to
+ * @offset: PHY register offset to write
  * @val: The value to write to the register
  *
- * Write a quad register over the device sideband queue. Quad registers are
- * shared between multiple PHYs.
+ * Write a PHY register for the given port over the device sideband queue.
  */
-int
-ice_write_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 val)
+static int
+ice_write_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 offset, u32 val)
 {
 	struct ice_sbq_msg_input msg = {0};
 	int err;
 
-	err = ice_fill_quad_msg_e82x(hw, &msg, quad, offset);
-	if (err)
-		return err;
-
+	ice_fill_phy_msg_e82x(hw, &msg, port, offset);
 	msg.opcode = ice_sbq_msg_wr;
 	msg.data = val;
 
@@ -792,394 +876,304 @@ ice_write_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 val)
 }
 
 /**
- * ice_read_phy_tstamp_e82x - Read a PHY timestamp out of the quad block
+ * ice_write_40b_phy_reg_e82x - Write a 40b value to the PHY
  * @hw: pointer to the HW struct
- * @quad: the quad to read from
- * @idx: the timestamp index to read
- * @tstamp: on return, the 40bit timestamp value
+ * @port: port to write to
+ * @low_addr: offset of the low register
+ * @val: 40b value to write
  *
- * Read a 40bit timestamp value out of the two associated registers in the
- * quad memory block that is shared between the internal PHYs of the E822
- * family of devices.
+ * Write the provided 40b value to the two associated registers by splitting
+ * it up into two chunks, the lower 8 bits and the upper 32 bits.
  */
 static int
-ice_read_phy_tstamp_e82x(struct ice_hw *hw, u8 quad, u8 idx, u64 *tstamp)
+ice_write_40b_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 low_addr, u64 val)
 {
-	u16 lo_addr, hi_addr;
-	u32 lo, hi;
+	u32 low, high;
+	u16 high_addr;
 	int err;
 
-	lo_addr = (u16)TS_L(Q_REG_TX_MEMORY_BANK_START, idx);
-	hi_addr = (u16)TS_H(Q_REG_TX_MEMORY_BANK_START, idx);
+	/* Only operate on registers known to be split into a lower 8 bit
+	 * register and an upper 32 bit register.
+	 */
+	if (!ice_is_40b_phy_reg_e82x(low_addr, &high_addr)) {
+		ice_debug(hw, ICE_DBG_PTP, "Invalid 40b register addr 0x%08x\n",
+			  low_addr);
+		return -EINVAL;
+	}
 
-	err = ice_read_quad_reg_e82x(hw, quad, lo_addr, &lo);
+	low = (u32)(val & P_REG_40B_LOW_M);
+	high = (u32)(val >> P_REG_40B_HIGH_S);
+
+	err = ice_write_phy_reg_e82x(hw, port, low_addr, low);
 	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to read low PTP timestamp register, err %d\n",
-			  err);
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write to low register 0x%08x\n, err %d",
+			  low_addr, err);
 		return err;
 	}
 
-	err = ice_read_quad_reg_e82x(hw, quad, hi_addr, &hi);
+	err = ice_write_phy_reg_e82x(hw, port, high_addr, high);
 	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to read high PTP timestamp register, err %d\n",
-			  err);
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write to high register 0x%08x\n, err %d",
+			  high_addr, err);
 		return err;
 	}
 
-	/* For E822 based internal PHYs, the timestamp is reported with the
-	 * lower 8 bits in the low register, and the upper 32 bits in the high
-	 * register.
-	 */
-	*tstamp = ((u64)hi) << TS_PHY_HIGH_S | ((u64)lo & TS_PHY_LOW_M);
-
 	return 0;
 }
 
 /**
- * ice_clear_phy_tstamp_e82x - Clear a timestamp from the quad block
+ * ice_write_64b_phy_reg_e82x - Write a 64bit value to PHY registers
  * @hw: pointer to the HW struct
- * @quad: the quad to read from
- * @idx: the timestamp index to reset
- *
- * Read the timestamp out of the quad to clear its timestamp status bit from
- * the PHY quad block that is shared between the internal PHYs of the E822
- * devices.
- *
- * Note that unlike E810, software cannot directly write to the quad memory
- * bank registers. E822 relies on the ice_get_phy_tx_tstamp_ready() function
- * to determine which timestamps are valid. Reading a timestamp auto-clears
- * the valid bit.
- *
- * To directly clear the contents of the timestamp block entirely, discarding
- * all timestamp data at once, software should instead use
- * ice_ptp_reset_ts_memory_quad_e82x().
+ * @port: PHY port to read from
+ * @low_addr: offset of the lower register to read from
+ * @val: the contents of the 64bit value to write to PHY
  *
- * This function should only be called on an idx whose bit is set according to
- * ice_get_phy_tx_tstamp_ready().
+ * Write the 64bit value to the two associated 32bit PHY registers. The offset
+ * is always specified as the lower register, and the high address is looked
+ * up. This function only operates on registers known to be two parts of
+ * a 64bit value.
  */
 static int
-ice_clear_phy_tstamp_e82x(struct ice_hw *hw, u8 quad, u8 idx)
+ice_write_64b_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 low_addr, u64 val)
 {
-	u64 unused_tstamp;
+	u32 low, high;
+	u16 high_addr;
 	int err;
 
-	err = ice_read_phy_tstamp_e82x(hw, quad, idx, &unused_tstamp);
-	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to read the timestamp register for quad %u, idx %u, err %d\n",
-			  quad, idx, err);
-		return err;
+	/* Only operate on registers known to be split into two 32bit
+	 * registers.
+	 */
+	if (!ice_is_64b_phy_reg_e82x(low_addr, &high_addr)) {
+		ice_debug(hw, ICE_DBG_PTP, "Invalid 64b register addr 0x%08x\n",
+			  low_addr);
+		return -EINVAL;
 	}
 
-	return 0;
-}
-
-/**
- * ice_ptp_reset_ts_memory_quad_e82x - Clear all timestamps from the quad block
- * @hw: pointer to the HW struct
- * @quad: the quad to read from
- *
- * Clear all timestamps from the PHY quad block that is shared between the
- * internal PHYs on the E822 devices.
- */
-void ice_ptp_reset_ts_memory_quad_e82x(struct ice_hw *hw, u8 quad)
-{
-	ice_write_quad_reg_e82x(hw, quad, Q_REG_TS_CTRL, Q_REG_TS_CTRL_M);
-	ice_write_quad_reg_e82x(hw, quad, Q_REG_TS_CTRL, ~(u32)Q_REG_TS_CTRL_M);
-}
-
-/**
- * ice_ptp_reset_ts_memory_e82x - Clear all timestamps from all quad blocks
- * @hw: pointer to the HW struct
- */
-static void ice_ptp_reset_ts_memory_e82x(struct ice_hw *hw)
-{
-	unsigned int quad;
-
-	for (quad = 0; quad < ICE_GET_QUAD_NUM(hw->ptp.num_lports); quad++)
-		ice_ptp_reset_ts_memory_quad_e82x(hw, quad);
-}
-
-/**
- * ice_read_cgu_reg_e82x - Read a CGU register
- * @hw: pointer to the HW struct
- * @addr: Register address to read
- * @val: storage for register value read
- *
- * Read the contents of a register of the Clock Generation Unit. Only
- * applicable to E822 devices.
- */
-static int
-ice_read_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 *val)
-{
-	struct ice_sbq_msg_input cgu_msg;
-	int err;
-
-	cgu_msg.opcode = ice_sbq_msg_rd;
-	cgu_msg.dest_dev = cgu;
-	cgu_msg.msg_addr_low = addr;
-	cgu_msg.msg_addr_high = 0x0;
+	low = lower_32_bits(val);
+	high = upper_32_bits(val);
 
-	err = ice_sbq_rw_reg(hw, &cgu_msg);
+	err = ice_write_phy_reg_e82x(hw, port, low_addr, low);
 	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to read CGU register 0x%04x, err %d\n",
-			  addr, err);
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write to low register 0x%08x\n, err %d",
+			  low_addr, err);
 		return err;
 	}
 
-	*val = cgu_msg.data;
+	err = ice_write_phy_reg_e82x(hw, port, high_addr, high);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write to high register 0x%08x\n, err %d",
+			  high_addr, err);
+		return err;
+	}
 
-	return err;
+	return 0;
 }
 
 /**
- * ice_write_cgu_reg_e82x - Write a CGU register
+ * ice_fill_quad_msg_e82x - Fill message data for quad register access
  * @hw: pointer to the HW struct
- * @addr: Register address to write
- * @val: value to write into the register
+ * @msg: the PHY message buffer to fill in
+ * @quad: the quad to access
+ * @offset: the register offset
  *
- * Write the specified value to a register of the Clock Generation Unit. Only
- * applicable to E822 devices.
+ * Fill a message buffer for accessing a register in a quad shared between
+ * multiple PHYs.
  */
-static int
-ice_write_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 val)
+static int ice_fill_quad_msg_e82x(struct ice_hw *hw,
+				  struct ice_sbq_msg_input *msg, u8 quad,
+				  u16 offset)
 {
-	struct ice_sbq_msg_input cgu_msg;
-	int err;
-
-	cgu_msg.opcode = ice_sbq_msg_wr;
-	cgu_msg.dest_dev = cgu;
-	cgu_msg.msg_addr_low = addr;
-	cgu_msg.msg_addr_high = 0x0;
-	cgu_msg.data = val;
+	u32 addr;
 
-	err = ice_sbq_rw_reg(hw, &cgu_msg);
-	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to write CGU register 0x%04x, err %d\n",
-			  addr, err);
-		return err;
-	}
+	if (quad >= ICE_GET_QUAD_NUM(hw->ptp.num_lports))
+		return -EINVAL;
 
-	return err;
-}
+	msg->dest_dev = rmn_0;
 
-/**
- * ice_clk_freq_str - Convert time_ref_freq to string
- * @clk_freq: Clock frequency
- *
- * Convert the specified TIME_REF clock frequency to a string.
- */
-static const char *ice_clk_freq_str(u8 clk_freq)
-{
-	switch ((enum ice_time_ref_freq)clk_freq) {
-	case ICE_TIME_REF_FREQ_25_000:
-		return "25 MHz";
-	case ICE_TIME_REF_FREQ_122_880:
-		return "122.88 MHz";
-	case ICE_TIME_REF_FREQ_125_000:
-		return "125 MHz";
-	case ICE_TIME_REF_FREQ_153_600:
-		return "153.6 MHz";
-	case ICE_TIME_REF_FREQ_156_250:
-		return "156.25 MHz";
-	case ICE_TIME_REF_FREQ_245_760:
-		return "245.76 MHz";
-	default:
-		return "Unknown";
-	}
-}
+	if (!(quad % ICE_GET_QUAD_NUM(hw->ptp.ports_per_phy)))
+		addr = Q_0_BASE + offset;
+	else
+		addr = Q_1_BASE + offset;
 
-/**
- * ice_clk_src_str - Convert time_ref_src to string
- * @clk_src: Clock source
- *
- * Convert the specified clock source to its string name.
- */
-static const char *ice_clk_src_str(u8 clk_src)
-{
-	switch ((enum ice_clk_src)clk_src) {
-	case ICE_CLK_SRC_TCX0:
-		return "TCX0";
-	case ICE_CLK_SRC_TIME_REF:
-		return "TIME_REF";
-	default:
-		return "Unknown";
-	}
+	msg->msg_addr_low = lower_16_bits(addr);
+	msg->msg_addr_high = upper_16_bits(addr);
+
+	return 0;
 }
 
 /**
- * ice_cfg_cgu_pll_e82x - Configure the Clock Generation Unit
+ * ice_read_quad_reg_e82x - Read a PHY quad register
  * @hw: pointer to the HW struct
- * @clk_freq: Clock frequency to program
- * @clk_src: Clock source to select (TIME_REF, or TCX0)
+ * @quad: quad to read from
+ * @offset: quad register offset to read
+ * @val: on return, the contents read from the quad
  *
- * Configure the Clock Generation Unit with the desired clock frequency and
- * time reference, enabling the PLL which drives the PTP hardware clock.
+ * Read a quad register over the device sideband queue. Quad registers are
+ * shared between multiple PHYs.
  */
-static int
-ice_cfg_cgu_pll_e82x(struct ice_hw *hw, enum ice_time_ref_freq clk_freq,
-		     enum ice_clk_src clk_src)
+int
+ice_read_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 *val)
 {
-	union tspll_ro_bwm_lf bwm_lf;
-	union nac_cgu_dword19 dw19;
-	union nac_cgu_dword22 dw22;
-	union nac_cgu_dword24 dw24;
-	union nac_cgu_dword9 dw9;
+	struct ice_sbq_msg_input msg = {0};
 	int err;
 
-	if (clk_freq >= NUM_ICE_TIME_REF_FREQ) {
-		dev_warn(ice_hw_to_dev(hw), "Invalid TIME_REF frequency %u\n",
-			 clk_freq);
-		return -EINVAL;
-	}
-
-	if (clk_src >= NUM_ICE_CLK_SRC) {
-		dev_warn(ice_hw_to_dev(hw), "Invalid clock source %u\n",
-			 clk_src);
-		return -EINVAL;
-	}
-
-	if (clk_src == ICE_CLK_SRC_TCX0 &&
-	    clk_freq != ICE_TIME_REF_FREQ_25_000) {
-		dev_warn(ice_hw_to_dev(hw),
-			 "TCX0 only supports 25 MHz frequency\n");
-		return -EINVAL;
-	}
-
-	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD9, &dw9.val);
+	err = ice_fill_quad_msg_e82x(hw, &msg, quad, offset);
 	if (err)
 		return err;
 
-	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD24, &dw24.val);
-	if (err)
-		return err;
+	msg.opcode = ice_sbq_msg_rd;
 
-	err = ice_read_cgu_reg_e82x(hw, TSPLL_RO_BWM_LF, &bwm_lf.val);
-	if (err)
+	err = ice_sbq_rw_reg(hw, &msg);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
+			  err);
 		return err;
-
-	/* Log the current clock configuration */
-	ice_debug(hw, ICE_DBG_PTP, "Current CGU configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
-		  dw24.field.ts_pll_enable ? "enabled" : "disabled",
-		  ice_clk_src_str(dw24.field.time_ref_sel),
-		  ice_clk_freq_str(dw9.field.time_ref_freq_sel),
-		  bwm_lf.field.plllock_true_lock_cri ? "locked" : "unlocked");
-
-	/* Disable the PLL before changing the clock source or frequency */
-	if (dw24.field.ts_pll_enable) {
-		dw24.field.ts_pll_enable = 0;
-
-		err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD24, dw24.val);
-		if (err)
-			return err;
 	}
 
-	/* Set the frequency */
-	dw9.field.time_ref_freq_sel = clk_freq;
-	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD9, dw9.val);
-	if (err)
-		return err;
-
-	/* Configure the TS PLL feedback divisor */
-	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD19, &dw19.val);
-	if (err)
-		return err;
+	*val = msg.data;
 
-	dw19.field.tspll_fbdiv_intgr = e822_cgu_params[clk_freq].feedback_div;
-	dw19.field.tspll_ndivratio = 1;
+	return 0;
+}
 
-	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD19, dw19.val);
-	if (err)
-		return err;
+/**
+ * ice_write_quad_reg_e82x - Write a PHY quad register
+ * @hw: pointer to the HW struct
+ * @quad: quad to write to
+ * @offset: quad register offset to write
+ * @val: The value to write to the register
+ *
+ * Write a quad register over the device sideband queue. Quad registers are
+ * shared between multiple PHYs.
+ */
+int
+ice_write_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 val)
+{
+	struct ice_sbq_msg_input msg = {0};
+	int err;
 
-	/* Configure the TS PLL post divisor */
-	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD22, &dw22.val);
+	err = ice_fill_quad_msg_e82x(hw, &msg, quad, offset);
 	if (err)
 		return err;
 
-	dw22.field.time1588clk_div = e822_cgu_params[clk_freq].post_pll_div;
-	dw22.field.time1588clk_sel_div2 = 0;
-
-	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD22, dw22.val);
-	if (err)
-		return err;
+	msg.opcode = ice_sbq_msg_wr;
+	msg.data = val;
 
-	/* Configure the TS PLL pre divisor and clock source */
-	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD24, &dw24.val);
-	if (err)
+	err = ice_sbq_rw_reg(hw, &msg);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
+			  err);
 		return err;
+	}
 
-	dw24.field.ref1588_ck_div = e822_cgu_params[clk_freq].refclk_pre_div;
-	dw24.field.tspll_fbdiv_frac = e822_cgu_params[clk_freq].frac_n_div;
-	dw24.field.time_ref_sel = clk_src;
+	return 0;
+}
 
-	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD24, dw24.val);
-	if (err)
-		return err;
+/**
+ * ice_read_phy_tstamp_e82x - Read a PHY timestamp out of the quad block
+ * @hw: pointer to the HW struct
+ * @quad: the quad to read from
+ * @idx: the timestamp index to read
+ * @tstamp: on return, the 40bit timestamp value
+ *
+ * Read a 40bit timestamp value out of the two associated registers in the
+ * quad memory block that is shared between the internal PHYs of the E822
+ * family of devices.
+ */
+static int
+ice_read_phy_tstamp_e82x(struct ice_hw *hw, u8 quad, u8 idx, u64 *tstamp)
+{
+	u16 lo_addr, hi_addr;
+	u32 lo, hi;
+	int err;
 
-	/* Finally, enable the PLL */
-	dw24.field.ts_pll_enable = 1;
+	lo_addr = (u16)TS_L(Q_REG_TX_MEMORY_BANK_START, idx);
+	hi_addr = (u16)TS_H(Q_REG_TX_MEMORY_BANK_START, idx);
 
-	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD24, dw24.val);
-	if (err)
+	err = ice_read_quad_reg_e82x(hw, quad, lo_addr, &lo);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read low PTP timestamp register, err %d\n",
+			  err);
 		return err;
+	}
 
-	/* Wait to verify if the PLL locks */
-	usleep_range(1000, 5000);
-
-	err = ice_read_cgu_reg_e82x(hw, TSPLL_RO_BWM_LF, &bwm_lf.val);
-	if (err)
+	err = ice_read_quad_reg_e82x(hw, quad, hi_addr, &hi);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read high PTP timestamp register, err %d\n",
+			  err);
 		return err;
-
-	if (!bwm_lf.field.plllock_true_lock_cri) {
-		dev_warn(ice_hw_to_dev(hw), "CGU PLL failed to lock\n");
-		return -EBUSY;
 	}
 
-	/* Log the current clock configuration */
-	ice_debug(hw, ICE_DBG_PTP, "New CGU configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
-		  dw24.field.ts_pll_enable ? "enabled" : "disabled",
-		  ice_clk_src_str(dw24.field.time_ref_sel),
-		  ice_clk_freq_str(dw9.field.time_ref_freq_sel),
-		  bwm_lf.field.plllock_true_lock_cri ? "locked" : "unlocked");
+	/* For E822 based internal PHYs, the timestamp is reported with the
+	 * lower 8 bits in the low register, and the upper 32 bits in the high
+	 * register.
+	 */
+	*tstamp = ((u64)hi) << TS_PHY_HIGH_S | ((u64)lo & TS_PHY_LOW_M);
 
 	return 0;
 }
 
 /**
- * ice_init_cgu_e82x - Initialize CGU with settings from firmware
- * @hw: pointer to the HW structure
+ * ice_clear_phy_tstamp_e82x - Clear a timestamp from the quad block
+ * @hw: pointer to the HW struct
+ * @quad: the quad to read from
+ * @idx: the timestamp index to reset
  *
- * Initialize the Clock Generation Unit of the E822 device.
+ * Read the timestamp out of the quad to clear its timestamp status bit from
+ * the PHY quad block that is shared between the internal PHYs of the E822
+ * devices.
+ *
+ * Note that unlike E810, software cannot directly write to the quad memory
+ * bank registers. E822 relies on the ice_get_phy_tx_tstamp_ready() function
+ * to determine which timestamps are valid. Reading a timestamp auto-clears
+ * the valid bit.
+ *
+ * To directly clear the contents of the timestamp block entirely, discarding
+ * all timestamp data at once, software should instead use
+ * ice_ptp_reset_ts_memory_quad_e82x().
+ *
+ * This function should only be called on an idx whose bit is set according to
+ * ice_get_phy_tx_tstamp_ready().
  */
-static int ice_init_cgu_e82x(struct ice_hw *hw)
+static int
+ice_clear_phy_tstamp_e82x(struct ice_hw *hw, u8 quad, u8 idx)
 {
-	struct ice_ts_func_info *ts_info = &hw->func_caps.ts_func_info;
-	union tspll_cntr_bist_settings cntr_bist;
+	u64 unused_tstamp;
 	int err;
 
-	err = ice_read_cgu_reg_e82x(hw, TSPLL_CNTR_BIST_SETTINGS,
-				    &cntr_bist.val);
-	if (err)
+	err = ice_read_phy_tstamp_e82x(hw, quad, idx, &unused_tstamp);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read the timestamp register for quad %u, idx %u, err %d\n",
+			  quad, idx, err);
 		return err;
+	}
 
-	/* Disable sticky lock detection so lock err reported is accurate */
-	cntr_bist.field.i_plllock_sel_0 = 0;
-	cntr_bist.field.i_plllock_sel_1 = 0;
+	return 0;
+}
 
-	err = ice_write_cgu_reg_e82x(hw, TSPLL_CNTR_BIST_SETTINGS,
-				     cntr_bist.val);
-	if (err)
-		return err;
+/**
+ * ice_ptp_reset_ts_memory_quad_e82x - Clear all timestamps from the quad block
+ * @hw: pointer to the HW struct
+ * @quad: the quad to read from
+ *
+ * Clear all timestamps from the PHY quad block that is shared between the
+ * internal PHYs on the E822 devices.
+ */
+void ice_ptp_reset_ts_memory_quad_e82x(struct ice_hw *hw, u8 quad)
+{
+	ice_write_quad_reg_e82x(hw, quad, Q_REG_TS_CTRL, Q_REG_TS_CTRL_M);
+	ice_write_quad_reg_e82x(hw, quad, Q_REG_TS_CTRL, ~(u32)Q_REG_TS_CTRL_M);
+}
 
-	/* Configure the CGU PLL using the parameters from the function
-	 * capabilities.
-	 */
-	err = ice_cfg_cgu_pll_e82x(hw, ts_info->time_ref,
-				   (enum ice_clk_src)ts_info->clk_src);
-	if (err)
-		return err;
+/**
+ * ice_ptp_reset_ts_memory_e82x - Clear all timestamps from all quad blocks
+ * @hw: pointer to the HW struct
+ */
+static void ice_ptp_reset_ts_memory_e82x(struct ice_hw *hw)
+{
+	unsigned int quad;
 
-	return 0;
+	for (quad = 0; quad < ICE_GET_QUAD_NUM(hw->ptp.num_lports); quad++)
+		ice_ptp_reset_ts_memory_quad_e82x(hw, quad);
 }
 
 /**
-- 
2.43.0

