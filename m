Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C00C3F53F1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Aug 2021 01:59:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 224F140123;
	Mon, 23 Aug 2021 23:59:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 436-LpJGHkuX; Mon, 23 Aug 2021 23:59:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E273040367;
	Mon, 23 Aug 2021 23:59:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BCC021BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Aug 2021 23:58:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6D80E403B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Aug 2021 23:58:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6245lt9p0HNa for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Aug 2021 23:58:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 59D7C4053F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Aug 2021 23:58:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="302783976"
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; d="scan'208";a="302783976"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 16:58:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; d="scan'208";a="493196623"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
 by fmsmga008.fm.intel.com with ESMTP; 23 Aug 2021 16:58:28 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 23 Aug 2021 17:01:56 -0700
Message-Id: <20210824000158.1928482-12-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210824000158.1928482-1-anthony.l.nguyen@intel.com>
References: <20210824000158.1928482-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue v4 11/13] ice: ensure the hardware
 Clock Generation Unit is configured
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

The E822 device has a Clock Generation Unit (CGU) responsible for
determining the clock frequency that drives the timers.

Ensure this function is initialized when bringing up the PTP support, so
that the clock has a known frequency.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_cgu_regs.h | 116 +++++++
 .../net/ethernet/intel/ice/ice_ptp_consts.h   |  74 +++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 290 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  20 ++
 4 files changed, 500 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_cgu_regs.h

diff --git a/drivers/net/ethernet/intel/ice/ice_cgu_regs.h b/drivers/net/ethernet/intel/ice/ice_cgu_regs.h
new file mode 100644
index 000000000000..57abd52386d0
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_cgu_regs.h
@@ -0,0 +1,116 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2018-2021, Intel Corporation. */
+
+#ifndef _ICE_CGU_REGS_H_
+#define _ICE_CGU_REGS_H_
+
+#define NAC_CGU_DWORD9 0x24
+union nac_cgu_dword9 {
+	struct {
+		u32 time_ref_freq_sel : 3;
+		u32 clk_eref1_en : 1;
+		u32 clk_eref0_en : 1;
+		u32 time_ref_en : 1;
+		u32 time_sync_en : 1;
+		u32 one_pps_out_en : 1;
+		u32 clk_ref_synce_en : 1;
+		u32 clk_synce1_en : 1;
+		u32 clk_synce0_en : 1;
+		u32 net_clk_ref1_en : 1;
+		u32 net_clk_ref0_en : 1;
+		u32 clk_synce1_amp : 2;
+		u32 misc6 : 1;
+		u32 clk_synce0_amp : 2;
+		u32 one_pps_out_amp : 2;
+		u32 misc24 : 12;
+	} field;
+	u32 val;
+};
+
+#define NAC_CGU_DWORD19 0x4c
+union nac_cgu_dword19 {
+	struct {
+		u32 tspll_fbdiv_intgr : 8;
+		u32 fdpll_ulck_thr : 5;
+		u32 misc15 : 3;
+		u32 tspll_ndivratio : 4;
+		u32 tspll_iref_ndivratio : 3;
+		u32 misc19 : 1;
+		u32 japll_ndivratio : 4;
+		u32 japll_iref_ndivratio : 3;
+		u32 misc27 : 1;
+	} field;
+	u32 val;
+};
+
+#define NAC_CGU_DWORD22 0x58
+union nac_cgu_dword22 {
+	struct {
+		u32 fdpll_frac_div_out_nc : 2;
+		u32 fdpll_lock_int_for : 1;
+		u32 synce_hdov_int_for : 1;
+		u32 synce_lock_int_for : 1;
+		u32 fdpll_phlead_slip_nc : 1;
+		u32 fdpll_acc1_ovfl_nc : 1;
+		u32 fdpll_acc2_ovfl_nc : 1;
+		u32 synce_status_nc : 6;
+		u32 fdpll_acc1f_ovfl : 1;
+		u32 misc18 : 1;
+		u32 fdpllclk_div : 4;
+		u32 time1588clk_div : 4;
+		u32 synceclk_div : 4;
+		u32 synceclk_sel_div2 : 1;
+		u32 fdpllclk_sel_div2 : 1;
+		u32 time1588clk_sel_div2 : 1;
+		u32 misc3 : 1;
+	} field;
+	u32 val;
+};
+
+#define NAC_CGU_DWORD24 0x60
+union nac_cgu_dword24 {
+	struct {
+		u32 tspll_fbdiv_frac : 22;
+		u32 misc20 : 2;
+		u32 ts_pll_enable : 1;
+		u32 time_sync_tspll_align_sel : 1;
+		u32 ext_synce_sel : 1;
+		u32 ref1588_ck_div : 4;
+		u32 time_ref_sel : 1;
+	} field;
+	u32 val;
+};
+
+#define TSPLL_CNTR_BIST_SETTINGS 0x344
+union tspll_cntr_bist_settings {
+	struct {
+		u32 i_irefgen_settling_time_cntr_7_0 : 8;
+		u32 i_irefgen_settling_time_ro_standby_1_0 : 2;
+		u32 reserved195 : 5;
+		u32 i_plllock_sel_0 : 1;
+		u32 i_plllock_sel_1 : 1;
+		u32 i_plllock_cnt_6_0 : 7;
+		u32 i_plllock_cnt_10_7 : 4;
+		u32 reserved200 : 4;
+	} field;
+	u32 val;
+};
+
+#define TSPLL_RO_BWM_LF 0x370
+union tspll_ro_bwm_lf {
+	struct {
+		u32 bw_freqov_high_cri_7_0 : 8;
+		u32 bw_freqov_high_cri_9_8 : 2;
+		u32 biascaldone_cri : 1;
+		u32 plllock_gain_tran_cri : 1;
+		u32 plllock_true_lock_cri : 1;
+		u32 pllunlock_flag_cri : 1;
+		u32 afcerr_cri : 1;
+		u32 afcdone_cri : 1;
+		u32 feedfwrdgain_cal_cri_7_0 : 8;
+		u32 m2fbdivmod_cri_7_0 : 8;
+	} field;
+	u32 val;
+};
+
+#endif /* _ICE_CGU_REGS_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
index 90e1e99de982..4109aa3b2fcd 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
@@ -81,6 +81,80 @@ const struct ice_time_ref_info_e822 e822_time_ref[NUM_ICE_TIME_REF_FREQ] = {
 	},
 };
 
+const struct ice_cgu_pll_params_e822 e822_cgu_params[NUM_ICE_TIME_REF_FREQ] = {
+	/* ICE_TIME_REF_FREQ_25_000 -> 25 MHz */
+	{
+		/* refclk_pre_div */
+		1,
+		/* feedback_div */
+		197,
+		/* frac_n_div */
+		2621440,
+		/* post_pll_div */
+		6,
+	},
+
+	/* ICE_TIME_REF_FREQ_122_880 -> 122.88 MHz */
+	{
+		/* refclk_pre_div */
+		5,
+		/* feedback_div */
+		223,
+		/* frac_n_div */
+		524288,
+		/* post_pll_div */
+		7,
+	},
+
+	/* ICE_TIME_REF_FREQ_125_000 -> 125 MHz */
+	{
+		/* refclk_pre_div */
+		5,
+		/* feedback_div */
+		223,
+		/* frac_n_div */
+		524288,
+		/* post_pll_div */
+		7,
+	},
+
+	/* ICE_TIME_REF_FREQ_153_600 -> 153.6 MHz */
+	{
+		/* refclk_pre_div */
+		5,
+		/* feedback_div */
+		159,
+		/* frac_n_div */
+		1572864,
+		/* post_pll_div */
+		6,
+	},
+
+	/* ICE_TIME_REF_FREQ_156_250 -> 156.25 MHz */
+	{
+		/* refclk_pre_div */
+		5,
+		/* feedback_div */
+		159,
+		/* frac_n_div */
+		1572864,
+		/* post_pll_div */
+		6,
+	},
+
+	/* ICE_TIME_REF_FREQ_245_760 -> 245.76 MHz */
+	{
+		/* refclk_pre_div */
+		10,
+		/* feedback_div */
+		223,
+		/* frac_n_div */
+		524288,
+		/* post_pll_div */
+		7,
+	},
+};
+
 /* struct ice_vernier_info_e822
  *
  * E822 hardware calibrates the delay of the timestamp indication from the
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index b87cf0488662..ccde3db89293 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -4,6 +4,7 @@
 #include "ice_common.h"
 #include "ice_ptp_hw.h"
 #include "ice_ptp_consts.h"
+#include "ice_cgu_regs.h"
 
 /* Low level functions for interacting with and managing the device clock used
  * for the Precision Time Protocol.
@@ -678,6 +679,289 @@ static int ice_ptp_set_vernier_wl(struct ice_hw *hw)
 	return 0;
 }
 
+/**
+ * ice_read_cgu_reg_e822 - Read a CGU register
+ * @hw: pointer to the HW struct
+ * @addr: Register address to read
+ * @val: storage for register value read
+ *
+ * Read the contents of a register of the Clock Generation Unit. Only
+ * applicable to E822 devices.
+ */
+static int
+ice_read_cgu_reg_e822(struct ice_hw *hw, u32 addr, u32 *val)
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
+ * ice_write_cgu_reg_e822 - Write a CGU register
+ * @hw: pointer to the HW struct
+ * @addr: Register address to write
+ * @val: value to write into the register
+ *
+ * Write the specified value to a register of the Clock Generation Unit. Only
+ * applicable to E822 devices.
+ */
+static int
+ice_write_cgu_reg_e822(struct ice_hw *hw, u32 addr, u32 val)
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
+ * ice_cfg_cgu_pll_e822 - Configure the Clock Generation Unit
+ * @hw: pointer to the HW struct
+ * @clk_freq: Clock frequency to program
+ * @clk_src: Clock source to select (TIME_REF, or TCX0)
+ *
+ * Configure the Clock Generation Unit with the desired clock frequency and
+ * time reference, enabling the PLL which drives the PTP hardware clock.
+ */
+static int
+ice_cfg_cgu_pll_e822(struct ice_hw *hw, enum ice_time_ref_freq clk_freq,
+		     enum ice_clk_src clk_src)
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
+		return ICE_ERR_PARAM;
+	}
+
+	if (clk_src >= NUM_ICE_CLK_SRC) {
+		dev_warn(ice_hw_to_dev(hw), "Invalid clock source %u\n",
+			 clk_src);
+		return ICE_ERR_PARAM;
+	}
+
+	if (clk_src == ICE_CLK_SRC_TCX0 &&
+	    clk_freq != ICE_TIME_REF_FREQ_25_000) {
+		dev_warn(ice_hw_to_dev(hw),
+			 "TCX0 only supports 25 MHz frequency\n");
+		return ICE_ERR_PARAM;
+	}
+
+	err = ice_read_cgu_reg_e822(hw, NAC_CGU_DWORD9, &dw9.val);
+	if (err)
+		return err;
+
+	err = ice_read_cgu_reg_e822(hw, NAC_CGU_DWORD24, &dw24.val);
+	if (err)
+		return err;
+
+	err = ice_read_cgu_reg_e822(hw, TSPLL_RO_BWM_LF, &bwm_lf.val);
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
+		err = ice_write_cgu_reg_e822(hw, NAC_CGU_DWORD24, dw24.val);
+		if (err)
+			return err;
+	}
+
+	/* Set the frequency */
+	dw9.field.time_ref_freq_sel = clk_freq;
+	err = ice_write_cgu_reg_e822(hw, NAC_CGU_DWORD9, dw9.val);
+	if (err)
+		return err;
+
+	/* Configure the TS PLL feedback divisor */
+	err = ice_read_cgu_reg_e822(hw, NAC_CGU_DWORD19, &dw19.val);
+	if (err)
+		return err;
+
+	dw19.field.tspll_fbdiv_intgr = e822_cgu_params[clk_freq].feedback_div;
+	dw19.field.tspll_ndivratio = 1;
+
+	err = ice_write_cgu_reg_e822(hw, NAC_CGU_DWORD19, dw19.val);
+	if (err)
+		return err;
+
+	/* Configure the TS PLL post divisor */
+	err = ice_read_cgu_reg_e822(hw, NAC_CGU_DWORD22, &dw22.val);
+	if (err)
+		return err;
+
+	dw22.field.time1588clk_div = e822_cgu_params[clk_freq].post_pll_div;
+	dw22.field.time1588clk_sel_div2 = 0;
+
+	err = ice_write_cgu_reg_e822(hw, NAC_CGU_DWORD22, dw22.val);
+	if (err)
+		return err;
+
+	/* Configure the TS PLL pre divisor and clock source */
+	err = ice_read_cgu_reg_e822(hw, NAC_CGU_DWORD24, &dw24.val);
+	if (err)
+		return err;
+
+	dw24.field.ref1588_ck_div = e822_cgu_params[clk_freq].refclk_pre_div;
+	dw24.field.tspll_fbdiv_frac = e822_cgu_params[clk_freq].frac_n_div;
+	dw24.field.time_ref_sel = clk_src;
+
+	err = ice_write_cgu_reg_e822(hw, NAC_CGU_DWORD24, dw24.val);
+	if (err)
+		return err;
+
+	/* Finally, enable the PLL */
+	dw24.field.ts_pll_enable = 1;
+
+	err = ice_write_cgu_reg_e822(hw, NAC_CGU_DWORD24, dw24.val);
+	if (err)
+		return err;
+
+	/* Wait to verify if the PLL locks */
+	usleep_range(1000, 5000);
+
+	err = ice_read_cgu_reg_e822(hw, TSPLL_RO_BWM_LF, &bwm_lf.val);
+	if (err)
+		return err;
+
+	if (!bwm_lf.field.plllock_true_lock_cri) {
+		dev_warn(ice_hw_to_dev(hw), "CGU PLL failed to lock\n");
+		return ICE_ERR_NOT_READY;
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
+ * ice_init_cgu_e822 - Initialize CGU with settings from firmware
+ * @hw: pointer to the HW structure
+ *
+ * Initialize the Clock Generation Unit of the E822 device.
+ */
+static int ice_init_cgu_e822(struct ice_hw *hw)
+{
+	struct ice_ts_func_info *ts_info = &hw->func_caps.ts_func_info;
+	union tspll_cntr_bist_settings cntr_bist;
+	int err;
+
+	err = ice_read_cgu_reg_e822(hw, TSPLL_CNTR_BIST_SETTINGS,
+				    &cntr_bist.val);
+	if (err)
+		return err;
+
+	/* Disable sticky lock detection so lock err reported is accurate */
+	cntr_bist.field.i_plllock_sel_0 = 0;
+	cntr_bist.field.i_plllock_sel_1 = 0;
+
+	err = ice_write_cgu_reg_e822(hw, TSPLL_CNTR_BIST_SETTINGS,
+				     cntr_bist.val);
+	if (err)
+		return err;
+
+	/* Configure the CGU PLL using the parameters from the function
+	 * capabilities.
+	 */
+	err = ice_cfg_cgu_pll_e822(hw, ts_info->time_ref,
+				   (enum ice_clk_src)ts_info->clk_src);
+	if (err)
+		return err;
+
+	return 0;
+}
+
 /**
  * ice_ptp_init_phc_e822 - Perform E822 specific PHC initialization
  * @hw: pointer to HW struct
@@ -686,6 +970,7 @@ static int ice_ptp_set_vernier_wl(struct ice_hw *hw)
  */
 static int ice_ptp_init_phc_e822(struct ice_hw *hw)
 {
+	int err;
 	u32 regval;
 
 	/* Enable reading switch and PHY registers over the sideband queue */
@@ -696,6 +981,11 @@ static int ice_ptp_init_phc_e822(struct ice_hw *hw)
 		   PF_SB_REM_DEV_CTL_PHY0);
 	wr32(hw, PF_SB_REM_DEV_CTL, regval);
 
+	/* Initialize the Clock Generation Unit */
+	err = ice_init_cgu_e822(hw);
+	if (err)
+		return err;
+
 	/* Set window length for all the ports */
 	return ice_ptp_set_vernier_wl(hw);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index cb241b2b8923..82d932f32cd7 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -92,6 +92,26 @@ struct ice_vernier_info_e822 {
 	u32 rx_fixed_delay;
 };
 
+/**
+ * struct ice_cgu_pll_params_e822
+ * @refclk_pre_div: Reference clock pre-divisor
+ * @feedback_div: Feedback divisor
+ * @frac_n_div: Fractional divisor
+ * @post_pll_div: Post PLL divisor
+ *
+ * Clock Generation Unit parameters used to program the PLL based on the
+ * selected TIME_REF frequency.
+ */
+struct ice_cgu_pll_params_e822 {
+	u32 refclk_pre_div;
+	u32 feedback_div;
+	u32 frac_n_div;
+	u32 post_pll_div;
+};
+
+extern const struct
+ice_cgu_pll_params_e822 e822_cgu_params[NUM_ICE_TIME_REF_FREQ];
+
 /* Table of constants related to possible TIME_REF sources */
 extern const struct ice_time_ref_info_e822 e822_time_ref[NUM_ICE_TIME_REF_FREQ];
 
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
