Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C7BA824B5
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Apr 2025 14:28:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42D6D80C69;
	Wed,  9 Apr 2025 12:28:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vpcn_xaMY94X; Wed,  9 Apr 2025 12:28:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A1CD180EB1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744201725;
	bh=a7sFjzzTw/PZHmlWSZzH6KwpSBjL9ynYRrpPpJmdJbA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aMcv9XFmnjoBT5pKGE1MUnigUoONDLixUjc7lG0C2Oik3tesu7Tas8CDwsbj6Evh9
	 nM/fQJcb4BsYLbFdmMK7R/BYkCaKSaRgDQ497LOpOQfFjl2oa7Igtyf9hNOqG9mDBP
	 s47VjIvJZWwDp1MrmH0F6eBzeRn38KQLpJTgELk49hoLts/dDP/z0tkM0ORD+P5dCU
	 cyjs3xKB40vguI4IJcfo8RRgjoL7K6m10D+lpyG+okKDvs1arLysh/yUCVAmf8aeOc
	 /54h/Gi8Tk9Tzb+p9rsO5o/F2VFR6bKWBtB9pA+oP3jpgKNfBxMJOR/KZ45p19Gark
	 Y6xSQBzEmdRDQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A1CD180EB1;
	Wed,  9 Apr 2025 12:28:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 39CA1D6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 12:28:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1653260BDC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 12:28:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wD0nB3RRb0iB for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Apr 2025 12:28:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 28082608AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 28082608AD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 28082608AD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 12:28:42 +0000 (UTC)
X-CSE-ConnectionGUID: PiSIii/fQe6m8YIMJXHaHw==
X-CSE-MsgGUID: WTCnUXp3Twysu3TnAWgqDQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="56655658"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="56655658"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 05:28:42 -0700
X-CSE-ConnectionGUID: KiTj59mTS7anC/DO2KVL6g==
X-CSE-MsgGUID: xJ0nureUREydu7YjF8/W9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="133557171"
Received: from kkolacin-desk1.ger.corp.intel.com (HELO
 kkolacin-desk1.igk.intel.com) ([10.217.160.155])
 by orviesa004.jf.intel.com with ESMTP; 09 Apr 2025 05:28:40 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Milena Olech <milena.olech@intel.com>
Date: Wed,  9 Apr 2025 14:24:58 +0200
Message-ID: <20250409122830.1977644-13-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250409122830.1977644-12-karol.kolacinski@intel.com>
References: <20250409122830.1977644-12-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744201722; x=1775737722;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=peFpZNekwwITjLmb5aGoZsmydukKSJ+Zd2DyZaJ4iUk=;
 b=GYxvgeXwPZHteYc20Myb6+CYZsqvrx2M90qKAHQZlfGvBAYjG8s89fos
 QwxjK4vpZPLmSyX+0kkyi2JzSkmVbdIKI0cjZsSfIVxLZnKqlfVIwrIBf
 fHQH6ilI6kO8F0aUYCom4o1wlTxwi7D/FLqVgoOhf2w/GNZHNiHochy9/
 BWg+3qrdBB/kGLIStjsW6lucTORs12vCob3tvRd4NFBSgyoWbmDJajF2B
 btnJjIWuun+3f2Y9qUmbPXnpxA/t25JnDIYoFAMpaJLTcdHmr9SdvtlD6
 QYF2CdHfaggt0ix2QN9K7I5aeERSkMpUY/TzX6Q58oaZdKVEYn5iPcvkD
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GYxvgeXw
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 01/10] ice: move TSPLL
 functions to a separate file
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

Collect TSPLL related functions and definitions and move them to
a separate file to have all TSPLL functionality in one place.

Move CGU related functions and definitions to ice_common.*

Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile       |   2 +-
 drivers/net/ethernet/intel/ice/ice.h          |   1 +
 drivers/net/ethernet/intel/ice/ice_cgu_regs.h | 181 -----
 drivers/net/ethernet/intel/ice/ice_common.c   |  61 ++
 drivers/net/ethernet/intel/ice/ice_common.h   | 176 +++++
 drivers/net/ethernet/intel/ice/ice_ptp.c      |   1 -
 .../net/ethernet/intel/ice/ice_ptp_consts.h   | 161 -----
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 542 ---------------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  43 --
 drivers/net/ethernet/intel/ice/ice_tspll.c    | 643 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_tspll.h    |  43 ++
 11 files changed, 925 insertions(+), 929 deletions(-)
 delete mode 100644 drivers/net/ethernet/intel/ice/ice_cgu_regs.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_tspll.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_tspll.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 9e0d9f710441..d0f9c9492363 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -53,7 +53,7 @@ ice-$(CONFIG_PCI_IOV) +=	\
 	ice_vf_mbx.o		\
 	ice_vf_vsi_vlan_ops.o	\
 	ice_vf_lib.o
-ice-$(CONFIG_PTP_1588_CLOCK) += ice_ptp.o ice_ptp_hw.o ice_dpll.o
+ice-$(CONFIG_PTP_1588_CLOCK) += ice_ptp.o ice_ptp_hw.o ice_dpll.o ice_tspll.o
 ice-$(CONFIG_DCB) += ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o
 ice-$(CONFIG_RFS_ACCEL) += ice_arfs.o
 ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index fc127c0f9d66..ccaa53e28b0f 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -67,6 +67,7 @@
 #include "ice_sriov.h"
 #include "ice_vf_mbx.h"
 #include "ice_ptp.h"
+#include "ice_tspll.h"
 #include "ice_fdir.h"
 #include "ice_xsk.h"
 #include "ice_arfs.h"
diff --git a/drivers/net/ethernet/intel/ice/ice_cgu_regs.h b/drivers/net/ethernet/intel/ice/ice_cgu_regs.h
deleted file mode 100644
index 10d9d74f3545..000000000000
--- a/drivers/net/ethernet/intel/ice/ice_cgu_regs.h
+++ /dev/null
@@ -1,181 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (C) 2018-2021, Intel Corporation. */
-
-#ifndef _ICE_CGU_REGS_H_
-#define _ICE_CGU_REGS_H_
-
-#define NAC_CGU_DWORD9 0x24
-union nac_cgu_dword9 {
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
-
-#define NAC_CGU_DWORD16_E825C 0x40
-union nac_cgu_dword16_e825c {
-	struct {
-		u32 synce_remndr : 6;
-		u32 synce_phlmt_en : 1;
-		u32 misc13 : 17;
-		u32 tspll_ck_refclkfreq : 8;
-	};
-	u32 val;
-};
-
-#define NAC_CGU_DWORD19 0x4c
-union nac_cgu_dword19 {
-	struct {
-		u32 tspll_fbdiv_intgr : 8;
-		u32 fdpll_ulck_thr : 5;
-		u32 misc15 : 3;
-		u32 tspll_ndivratio : 4;
-		u32 tspll_iref_ndivratio : 3;
-		u32 misc19 : 1;
-		u32 japll_ndivratio : 4;
-		u32 japll_iref_ndivratio : 3;
-		u32 misc27 : 1;
-	};
-	u32 val;
-};
-
-#define NAC_CGU_DWORD22 0x58
-union nac_cgu_dword22 {
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
-
-#define NAC_CGU_DWORD23_E825C 0x5C
-union nac_cgu_dword23_e825c {
-	struct {
-		u32 cgupll_fbdiv_intgr : 10;
-		u32 ux56pll_fbdiv_intgr : 10;
-		u32 misc20 : 4;
-		u32 ts_pll_enable : 1;
-		u32 time_sync_tspll_align_sel : 1;
-		u32 ext_synce_sel : 1;
-		u32 ref1588_ck_div : 4;
-		u32 time_ref_sel : 1;
-
-	};
-	u32 val;
-};
-
-#define NAC_CGU_DWORD24 0x60
-union nac_cgu_dword24 {
-	struct {
-		u32 tspll_fbdiv_frac : 22;
-		u32 misc20 : 2;
-		u32 ts_pll_enable : 1;
-		u32 time_sync_tspll_align_sel : 1;
-		u32 ext_synce_sel : 1;
-		u32 ref1588_ck_div : 4;
-		u32 time_ref_sel : 1;
-	};
-	u32 val;
-};
-
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
-
-#endif /* _ICE_CGU_REGS_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index f7fd0a2451de..190d850f7ff7 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -6234,3 +6234,64 @@ u32 ice_get_link_speed(u16 index)
 
 	return ice_aq_to_link_speed[index];
 }
+
+/**
+ * ice_read_cgu_reg_e82x - Read a CGU register
+ * @hw: pointer to the HW struct
+ * @addr: Register address to read
+ * @val: storage for register value read
+ *
+ * Read the contents of a register of the Clock Generation Unit. Only
+ * applicable to E822 devices.
+ *
+ * Return: 0 on success, other error codes when failed to read from CGU.
+ */
+int ice_read_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 *val)
+{
+	struct ice_sbq_msg_input cgu_msg = {
+		.opcode = ice_sbq_msg_rd,
+		.dest_dev = cgu,
+		.msg_addr_low = addr
+	};
+	int err;
+
+	err = ice_sbq_rw_reg(hw, &cgu_msg, ICE_AQ_FLAG_RD);
+	if (err) {
+		dev_dbg(ice_hw_to_dev(hw), "Failed to read CGU register 0x%04x, err %d\n",
+			addr, err);
+		return err;
+	}
+
+	*val = cgu_msg.data;
+
+	return 0;
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
+ *
+ * Return: 0 on success, other error codes when failed to write to CGU.
+ */
+int ice_write_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 val)
+{
+	struct ice_sbq_msg_input cgu_msg = {
+		.opcode = ice_sbq_msg_wr,
+		.dest_dev = cgu,
+		.msg_addr_low = addr,
+		.data = val
+	};
+	int err;
+
+	err = ice_sbq_rw_reg(hw, &cgu_msg, ICE_AQ_FLAG_RD);
+	if (err)
+		dev_dbg(ice_hw_to_dev(hw), "Failed to write CGU register 0x%04x, err %d\n",
+			addr, err);
+
+	return err;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index aefcf719e460..1a916d53c163 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -39,6 +39,180 @@
 #define FEC_RECEIVER_ID_PCS0 (0x33 << FEC_RECV_ID_SHIFT)
 #define FEC_RECEIVER_ID_PCS1 (0x34 << FEC_RECV_ID_SHIFT)
 
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
+	};
+	u32 val;
+};
+
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
+	};
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
+	};
+	u32 val;
+};
+
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
+	};
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
+	};
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
+	};
+	u32 val;
+};
+
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
 int ice_init_hw(struct ice_hw *hw);
 void ice_deinit_hw(struct ice_hw *hw);
 int ice_check_reset(struct ice_hw *hw);
@@ -313,4 +487,6 @@ ice_aq_write_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
 int ice_get_pca9575_handle(struct ice_hw *hw, u16 *pca9575_handle);
 int ice_read_pca9575_reg(struct ice_hw *hw, u8 offset, u8 *data);
 bool ice_fw_supports_report_dflt_cfg(struct ice_hw *hw);
+int ice_read_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 *val);
+int ice_write_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 val);
 #endif /* _ICE_COMMON_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 85b614135694..b61449a083c8 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -4,7 +4,6 @@
 #include "ice.h"
 #include "ice_lib.h"
 #include "ice_trace.h"
-#include "ice_cgu_regs.h"
 
 static const char ice_pin_names[][64] = {
 	"SDP0",
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
index 003cdfada3ca..7b748286f653 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
@@ -339,167 +339,6 @@ const struct ice_time_ref_info_e82x e82x_time_ref[NUM_ICE_TIME_REF_FREQ] = {
 	},
 };
 
-const struct ice_cgu_pll_params_e82x e822_cgu_params[NUM_ICE_TIME_REF_FREQ] = {
-	/* ICE_TIME_REF_FREQ_25_000 -> 25 MHz */
-	{
-		/* refclk_pre_div */
-		1,
-		/* feedback_div */
-		197,
-		/* frac_n_div */
-		2621440,
-		/* post_pll_div */
-		6,
-	},
-
-	/* ICE_TIME_REF_FREQ_122_880 -> 122.88 MHz */
-	{
-		/* refclk_pre_div */
-		5,
-		/* feedback_div */
-		223,
-		/* frac_n_div */
-		524288,
-		/* post_pll_div */
-		7,
-	},
-
-	/* ICE_TIME_REF_FREQ_125_000 -> 125 MHz */
-	{
-		/* refclk_pre_div */
-		5,
-		/* feedback_div */
-		223,
-		/* frac_n_div */
-		524288,
-		/* post_pll_div */
-		7,
-	},
-
-	/* ICE_TIME_REF_FREQ_153_600 -> 153.6 MHz */
-	{
-		/* refclk_pre_div */
-		5,
-		/* feedback_div */
-		159,
-		/* frac_n_div */
-		1572864,
-		/* post_pll_div */
-		6,
-	},
-
-	/* ICE_TIME_REF_FREQ_156_250 -> 156.25 MHz */
-	{
-		/* refclk_pre_div */
-		5,
-		/* feedback_div */
-		159,
-		/* frac_n_div */
-		1572864,
-		/* post_pll_div */
-		6,
-	},
-
-	/* ICE_TIME_REF_FREQ_245_760 -> 245.76 MHz */
-	{
-		/* refclk_pre_div */
-		10,
-		/* feedback_div */
-		223,
-		/* frac_n_div */
-		524288,
-		/* post_pll_div */
-		7,
-	},
-};
-
-const
-struct ice_cgu_pll_params_e825c e825c_cgu_params[NUM_ICE_TIME_REF_FREQ] = {
-	/* ICE_TIME_REF_FREQ_25_000 -> 25 MHz */
-	{
-		/* tspll_ck_refclkfreq */
-		0x19,
-		/* tspll_ndivratio */
-		1,
-		/* tspll_fbdiv_intgr */
-		320,
-		/* tspll_fbdiv_frac */
-		0,
-		/* ref1588_ck_div */
-		0,
-	},
-
-	/* ICE_TIME_REF_FREQ_122_880 -> 122.88 MHz */
-	{
-		/* tspll_ck_refclkfreq */
-		0x29,
-		/* tspll_ndivratio */
-		3,
-		/* tspll_fbdiv_intgr */
-		195,
-		/* tspll_fbdiv_frac */
-		1342177280UL,
-		/* ref1588_ck_div */
-		0,
-	},
-
-	/* ICE_TIME_REF_FREQ_125_000 -> 125 MHz */
-	{
-		/* tspll_ck_refclkfreq */
-		0x3E,
-		/* tspll_ndivratio */
-		2,
-		/* tspll_fbdiv_intgr */
-		128,
-		/* tspll_fbdiv_frac */
-		0,
-		/* ref1588_ck_div */
-		0,
-	},
-
-	/* ICE_TIME_REF_FREQ_153_600 -> 153.6 MHz */
-	{
-		/* tspll_ck_refclkfreq */
-		0x33,
-		/* tspll_ndivratio */
-		3,
-		/* tspll_fbdiv_intgr */
-		156,
-		/* tspll_fbdiv_frac */
-		1073741824UL,
-		/* ref1588_ck_div */
-		0,
-	},
-
-	/* ICE_TIME_REF_FREQ_156_250 -> 156.25 MHz */
-	{
-		/* tspll_ck_refclkfreq */
-		0x1F,
-		/* tspll_ndivratio */
-		5,
-		/* tspll_fbdiv_intgr */
-		256,
-		/* tspll_fbdiv_frac */
-		0,
-		/* ref1588_ck_div */
-		0,
-	},
-
-	/* ICE_TIME_REF_FREQ_245_760 -> 245.76 MHz */
-	{
-		/* tspll_ck_refclkfreq */
-		0x52,
-		/* tspll_ndivratio */
-		3,
-		/* tspll_fbdiv_intgr */
-		97,
-		/* tspll_fbdiv_frac */
-		2818572288UL,
-		/* ref1588_ck_div */
-		0,
-	},
-};
-
 /* struct ice_vernier_info_e82x
  *
  * E822 hardware calibrates the delay of the timestamp indication from the
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index ccac84eb34c9..6c6ab5c0d0f4 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -6,7 +6,6 @@
 #include "ice_common.h"
 #include "ice_ptp_hw.h"
 #include "ice_ptp_consts.h"
-#include "ice_cgu_regs.h"
 
 static struct dpll_pin_frequency ice_cgu_pin_freq_common[] = {
 	DPLL_PIN_FREQUENCY_1PPS,
@@ -225,547 +224,6 @@ static u64 ice_ptp_read_src_incval(struct ice_hw *hw)
 	return ((u64)(hi & INCVAL_HIGH_M) << 32) | lo;
 }
 
-/**
- * ice_read_cgu_reg_e82x - Read a CGU register
- * @hw: pointer to the HW struct
- * @addr: Register address to read
- * @val: storage for register value read
- *
- * Read the contents of a register of the Clock Generation Unit. Only
- * applicable to E822 devices.
- *
- * Return: 0 on success, other error codes when failed to read from CGU
- */
-static int ice_read_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 *val)
-{
-	struct ice_sbq_msg_input cgu_msg = {
-		.opcode = ice_sbq_msg_rd,
-		.dest_dev = ice_sbq_dev_cgu,
-		.msg_addr_low = addr
-	};
-	int err;
-
-	err = ice_sbq_rw_reg(hw, &cgu_msg, ICE_AQ_FLAG_RD);
-	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to read CGU register 0x%04x, err %d\n",
-			  addr, err);
-		return err;
-	}
-
-	*val = cgu_msg.data;
-
-	return 0;
-}
-
-/**
- * ice_write_cgu_reg_e82x - Write a CGU register
- * @hw: pointer to the HW struct
- * @addr: Register address to write
- * @val: value to write into the register
- *
- * Write the specified value to a register of the Clock Generation Unit. Only
- * applicable to E822 devices.
- *
- * Return: 0 on success, other error codes when failed to write to CGU
- */
-static int ice_write_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 val)
-{
-	struct ice_sbq_msg_input cgu_msg = {
-		.opcode = ice_sbq_msg_wr,
-		.dest_dev = ice_sbq_dev_cgu,
-		.msg_addr_low = addr,
-		.data = val
-	};
-	int err;
-
-	err = ice_sbq_rw_reg(hw, &cgu_msg, ICE_AQ_FLAG_RD);
-	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to write CGU register 0x%04x, err %d\n",
-			  addr, err);
-		return err;
-	}
-
-	return err;
-}
-
-/**
- * ice_clk_freq_str - Convert time_ref_freq to string
- * @clk_freq: Clock frequency
- *
- * Return: specified TIME_REF clock frequency converted to a string
- */
-static const char *ice_clk_freq_str(enum ice_time_ref_freq clk_freq)
-{
-	switch (clk_freq) {
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
-
-/**
- * ice_clk_src_str - Convert time_ref_src to string
- * @clk_src: Clock source
- *
- * Return: specified clock source converted to its string name
- */
-static const char *ice_clk_src_str(enum ice_clk_src clk_src)
-{
-	switch (clk_src) {
-	case ICE_CLK_SRC_TCXO:
-		return "TCXO";
-	case ICE_CLK_SRC_TIME_REF:
-		return "TIME_REF";
-	default:
-		return "Unknown";
-	}
-}
-
-/**
- * ice_cfg_cgu_pll_e82x - Configure the Clock Generation Unit
- * @hw: pointer to the HW struct
- * @clk_freq: Clock frequency to program
- * @clk_src: Clock source to select (TIME_REF, or TCXO)
- *
- * Configure the Clock Generation Unit with the desired clock frequency and
- * time reference, enabling the PLL which drives the PTP hardware clock.
- *
- * Return:
- * * %0       - success
- * * %-EINVAL - input parameters are incorrect
- * * %-EBUSY  - failed to lock TS PLL
- * * %other   - CGU read/write failure
- */
-static int ice_cfg_cgu_pll_e82x(struct ice_hw *hw,
-				enum ice_time_ref_freq clk_freq,
-				enum ice_clk_src clk_src)
-{
-	union tspll_ro_bwm_lf bwm_lf;
-	union nac_cgu_dword19 dw19;
-	union nac_cgu_dword22 dw22;
-	union nac_cgu_dword24 dw24;
-	union nac_cgu_dword9 dw9;
-	int err;
-
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
-	if (clk_src == ICE_CLK_SRC_TCXO &&
-	    clk_freq != ICE_TIME_REF_FREQ_25_000) {
-		dev_warn(ice_hw_to_dev(hw),
-			 "TCXO only supports 25 MHz frequency\n");
-		return -EINVAL;
-	}
-
-	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD9, &dw9.val);
-	if (err)
-		return err;
-
-	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD24, &dw24.val);
-	if (err)
-		return err;
-
-	err = ice_read_cgu_reg_e82x(hw, TSPLL_RO_BWM_LF, &bwm_lf.val);
-	if (err)
-		return err;
-
-	/* Log the current clock configuration */
-	ice_debug(hw, ICE_DBG_PTP, "Current CGU configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
-		  str_enabled_disabled(dw24.ts_pll_enable),
-		  ice_clk_src_str(dw24.time_ref_sel),
-		  ice_clk_freq_str(dw9.time_ref_freq_sel),
-		  bwm_lf.plllock_true_lock_cri ? "locked" : "unlocked");
-
-	/* Disable the PLL before changing the clock source or frequency */
-	if (dw24.ts_pll_enable) {
-		dw24.ts_pll_enable = 0;
-
-		err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD24, dw24.val);
-		if (err)
-			return err;
-	}
-
-	/* Set the frequency */
-	dw9.time_ref_freq_sel = clk_freq;
-	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD9, dw9.val);
-	if (err)
-		return err;
-
-	/* Configure the TS PLL feedback divisor */
-	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD19, &dw19.val);
-	if (err)
-		return err;
-
-	dw19.tspll_fbdiv_intgr = e822_cgu_params[clk_freq].feedback_div;
-	dw19.tspll_ndivratio = 1;
-
-	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD19, dw19.val);
-	if (err)
-		return err;
-
-	/* Configure the TS PLL post divisor */
-	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD22, &dw22.val);
-	if (err)
-		return err;
-
-	dw22.time1588clk_div = e822_cgu_params[clk_freq].post_pll_div;
-	dw22.time1588clk_sel_div2 = 0;
-
-	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD22, dw22.val);
-	if (err)
-		return err;
-
-	/* Configure the TS PLL pre divisor and clock source */
-	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD24, &dw24.val);
-	if (err)
-		return err;
-
-	dw24.ref1588_ck_div = e822_cgu_params[clk_freq].refclk_pre_div;
-	dw24.tspll_fbdiv_frac = e822_cgu_params[clk_freq].frac_n_div;
-	dw24.time_ref_sel = clk_src;
-
-	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD24, dw24.val);
-	if (err)
-		return err;
-
-	/* Finally, enable the PLL */
-	dw24.ts_pll_enable = 1;
-
-	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD24, dw24.val);
-	if (err)
-		return err;
-
-	/* Wait to verify if the PLL locks */
-	usleep_range(1000, 5000);
-
-	err = ice_read_cgu_reg_e82x(hw, TSPLL_RO_BWM_LF, &bwm_lf.val);
-	if (err)
-		return err;
-
-	if (!bwm_lf.plllock_true_lock_cri) {
-		dev_warn(ice_hw_to_dev(hw), "CGU PLL failed to lock\n");
-		return -EBUSY;
-	}
-
-	/* Log the current clock configuration */
-	ice_debug(hw, ICE_DBG_PTP, "New CGU configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
-		  str_enabled_disabled(dw24.ts_pll_enable),
-		  ice_clk_src_str(dw24.time_ref_sel),
-		  ice_clk_freq_str(dw9.time_ref_freq_sel),
-		  bwm_lf.plllock_true_lock_cri ? "locked" : "unlocked");
-
-	return 0;
-}
-
-/**
- * ice_cfg_cgu_pll_e825c - Configure the Clock Generation Unit for E825-C
- * @hw: pointer to the HW struct
- * @clk_freq: Clock frequency to program
- * @clk_src: Clock source to select (TIME_REF, or TCXO)
- *
- * Configure the Clock Generation Unit with the desired clock frequency and
- * time reference, enabling the PLL which drives the PTP hardware clock.
- *
- * Return:
- * * %0       - success
- * * %-EINVAL - input parameters are incorrect
- * * %-EBUSY  - failed to lock TS PLL
- * * %other   - CGU read/write failure
- */
-static int ice_cfg_cgu_pll_e825c(struct ice_hw *hw,
-				 enum ice_time_ref_freq clk_freq,
-				 enum ice_clk_src clk_src)
-{
-	union tspll_ro_lock_e825c ro_lock;
-	union nac_cgu_dword16_e825c dw16;
-	union nac_cgu_dword23_e825c dw23;
-	union nac_cgu_dword19 dw19;
-	union nac_cgu_dword22 dw22;
-	union nac_cgu_dword24 dw24;
-	union nac_cgu_dword9 dw9;
-	int err;
-
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
-	if (clk_src == ICE_CLK_SRC_TCXO &&
-	    clk_freq != ICE_TIME_REF_FREQ_156_250) {
-		dev_warn(ice_hw_to_dev(hw),
-			 "TCXO only supports 156.25 MHz frequency\n");
-		return -EINVAL;
-	}
-
-	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD9, &dw9.val);
-	if (err)
-		return err;
-
-	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD24, &dw24.val);
-	if (err)
-		return err;
-
-	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD16_E825C, &dw16.val);
-	if (err)
-		return err;
-
-	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD23_E825C, &dw23.val);
-	if (err)
-		return err;
-
-	err = ice_read_cgu_reg_e82x(hw, TSPLL_RO_LOCK_E825C, &ro_lock.val);
-	if (err)
-		return err;
-
-	/* Log the current clock configuration */
-	ice_debug(hw, ICE_DBG_PTP, "Current CGU configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
-		  str_enabled_disabled(dw24.ts_pll_enable),
-		  ice_clk_src_str(dw23.time_ref_sel),
-		  ice_clk_freq_str(dw9.time_ref_freq_sel),
-		  ro_lock.plllock_true_lock_cri ? "locked" : "unlocked");
-
-	/* Disable the PLL before changing the clock source or frequency */
-	if (dw23.ts_pll_enable) {
-		dw23.ts_pll_enable = 0;
-
-		err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD23_E825C,
-					     dw23.val);
-		if (err)
-			return err;
-	}
-
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
-	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD9, dw9.val);
-	if (err)
-		return err;
-
-	/* Choose the referenced frequency */
-	dw16.tspll_ck_refclkfreq =
-	e825c_cgu_params[clk_freq].tspll_ck_refclkfreq;
-	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD16_E825C, dw16.val);
-	if (err)
-		return err;
-
-	/* Configure the TS PLL feedback divisor */
-	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD19, &dw19.val);
-	if (err)
-		return err;
-
-	dw19.tspll_fbdiv_intgr =
-		e825c_cgu_params[clk_freq].tspll_fbdiv_intgr;
-	dw19.tspll_ndivratio =
-		e825c_cgu_params[clk_freq].tspll_ndivratio;
-
-	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD19, dw19.val);
-	if (err)
-		return err;
-
-	/* Configure the TS PLL post divisor */
-	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD22, &dw22.val);
-	if (err)
-		return err;
-
-	/* These two are constant for E825C */
-	dw22.time1588clk_div = 5;
-	dw22.time1588clk_sel_div2 = 0;
-
-	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD22, dw22.val);
-	if (err)
-		return err;
-
-	/* Configure the TS PLL pre divisor and clock source */
-	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD23_E825C, &dw23.val);
-	if (err)
-		return err;
-
-	dw23.ref1588_ck_div =
-		e825c_cgu_params[clk_freq].ref1588_ck_div;
-	dw23.time_ref_sel = clk_src;
-
-	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD23_E825C, dw23.val);
-	if (err)
-		return err;
-
-	dw24.tspll_fbdiv_frac =
-		e825c_cgu_params[clk_freq].tspll_fbdiv_frac;
-
-	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD24, dw24.val);
-	if (err)
-		return err;
-
-	/* Finally, enable the PLL */
-	dw23.ts_pll_enable = 1;
-
-	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD23_E825C, dw23.val);
-	if (err)
-		return err;
-
-	/* Wait to verify if the PLL locks */
-	usleep_range(1000, 5000);
-
-	err = ice_read_cgu_reg_e82x(hw, TSPLL_RO_LOCK_E825C, &ro_lock.val);
-	if (err)
-		return err;
-
-	if (!ro_lock.plllock_true_lock_cri) {
-		dev_warn(ice_hw_to_dev(hw), "CGU PLL failed to lock\n");
-		return -EBUSY;
-	}
-
-	/* Log the current clock configuration */
-	ice_debug(hw, ICE_DBG_PTP, "New CGU configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
-		  str_enabled_disabled(dw24.ts_pll_enable),
-		  ice_clk_src_str(dw23.time_ref_sel),
-		  ice_clk_freq_str(dw9.time_ref_freq_sel),
-		  ro_lock.plllock_true_lock_cri ? "locked" : "unlocked");
-
-	return 0;
-}
-
-#define ICE_ONE_PPS_OUT_AMP_MAX 3
-
-/**
- * ice_cgu_cfg_pps_out - Configure 1PPS output from CGU
- * @hw: pointer to the HW struct
- * @enable: true to enable 1PPS output, false to disable it
- *
- * Return: 0 on success, other negative error code when CGU read/write failed
- */
-int ice_cgu_cfg_pps_out(struct ice_hw *hw, bool enable)
-{
-	union nac_cgu_dword9 dw9;
-	int err;
-
-	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD9, &dw9.val);
-	if (err)
-		return err;
-
-	dw9.one_pps_out_en = enable;
-	dw9.one_pps_out_amp = enable * ICE_ONE_PPS_OUT_AMP_MAX;
-	return ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD9, dw9.val);
-}
-
-/**
- * ice_cfg_cgu_pll_dis_sticky_bits_e82x - disable TS PLL sticky bits
- * @hw: pointer to the HW struct
- *
- * Configure the Clock Generation Unit TS PLL sticky bits so they don't latch on
- * losing TS PLL lock, but always show current state.
- *
- * Return: 0 on success, other error codes when failed to read/write CGU
- */
-static int ice_cfg_cgu_pll_dis_sticky_bits_e82x(struct ice_hw *hw)
-{
-	union tspll_cntr_bist_settings cntr_bist;
-	int err;
-
-	err = ice_read_cgu_reg_e82x(hw, TSPLL_CNTR_BIST_SETTINGS,
-				    &cntr_bist.val);
-	if (err)
-		return err;
-
-	/* Disable sticky lock detection so lock err reported is accurate */
-	cntr_bist.i_plllock_sel_0 = 0;
-	cntr_bist.i_plllock_sel_1 = 0;
-
-	return ice_write_cgu_reg_e82x(hw, TSPLL_CNTR_BIST_SETTINGS,
-				      cntr_bist.val);
-}
-
-/**
- * ice_cfg_cgu_pll_dis_sticky_bits_e825c - disable TS PLL sticky bits for E825-C
- * @hw: pointer to the HW struct
- *
- * Configure the Clock Generation Unit TS PLL sticky bits so they don't latch on
- * losing TS PLL lock, but always show current state.
- *
- * Return: 0 on success, other error codes when failed to read/write CGU
- */
-static int ice_cfg_cgu_pll_dis_sticky_bits_e825c(struct ice_hw *hw)
-{
-	union tspll_bw_tdc_e825c bw_tdc;
-	int err;
-
-	err = ice_read_cgu_reg_e82x(hw, TSPLL_BW_TDC_E825C, &bw_tdc.val);
-	if (err)
-		return err;
-
-	bw_tdc.i_plllock_sel_1_0 = 0;
-
-	return ice_write_cgu_reg_e82x(hw, TSPLL_BW_TDC_E825C, bw_tdc.val);
-}
-
-/**
- * ice_init_cgu_e82x - Initialize CGU with settings from firmware
- * @hw: pointer to the HW structure
- *
- * Initialize the Clock Generation Unit of the E822 device.
- *
- * Return: 0 on success, other error codes when failed to read/write/cfg CGU
- */
-static int ice_init_cgu_e82x(struct ice_hw *hw)
-{
-	struct ice_ts_func_info *ts_info = &hw->func_caps.ts_func_info;
-	int err;
-
-	/* Disable sticky lock detection so lock err reported is accurate */
-	if (hw->mac_type == ICE_MAC_GENERIC_3K_E825)
-		err = ice_cfg_cgu_pll_dis_sticky_bits_e825c(hw);
-	else
-		err = ice_cfg_cgu_pll_dis_sticky_bits_e82x(hw);
-	if (err)
-		return err;
-
-	/* Configure the CGU PLL using the parameters from the function
-	 * capabilities.
-	 */
-	if (hw->mac_type == ICE_MAC_GENERIC_3K_E825)
-		err = ice_cfg_cgu_pll_e825c(hw, ts_info->time_ref,
-					    (enum ice_clk_src)ts_info->clk_src);
-	else
-		err = ice_cfg_cgu_pll_e82x(hw, ts_info->time_ref,
-					   (enum ice_clk_src)ts_info->clk_src);
-
-	return err;
-}
-
 /**
  * ice_ptp_tmr_cmd_to_src_reg - Convert to source timer command value
  * @hw: pointer to HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 83f20fa7ace7..cbbce04bfab4 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -194,23 +194,6 @@ struct ice_eth56g_mac_reg_cfg {
 extern
 const struct ice_eth56g_mac_reg_cfg eth56g_mac_cfg[NUM_ICE_ETH56G_LNK_SPD];
 
-/**
- * struct ice_cgu_pll_params_e82x - E82X CGU parameters
- * @refclk_pre_div: Reference clock pre-divisor
- * @feedback_div: Feedback divisor
- * @frac_n_div: Fractional divisor
- * @post_pll_div: Post PLL divisor
- *
- * Clock Generation Unit parameters used to program the PLL based on the
- * selected TIME_REF frequency.
- */
-struct ice_cgu_pll_params_e82x {
-	u32 refclk_pre_div;
-	u32 feedback_div;
-	u32 frac_n_div;
-	u32 post_pll_div;
-};
-
 #define E810C_QSFP_C827_0_HANDLE	2
 #define E810C_QSFP_C827_1_HANDLE	3
 enum ice_e810_c827_idx {
@@ -282,31 +265,6 @@ struct ice_cgu_pin_desc {
 	struct dpll_pin_frequency *freq_supp;
 };
 
-extern const struct
-ice_cgu_pll_params_e82x e822_cgu_params[NUM_ICE_TIME_REF_FREQ];
-
-/**
- * struct ice_cgu_pll_params_e825c - E825C CGU parameters
- * @tspll_ck_refclkfreq: tspll_ck_refclkfreq selection
- * @tspll_ndivratio: ndiv ratio that goes directly to the pll
- * @tspll_fbdiv_intgr: TS PLL integer feedback divide
- * @tspll_fbdiv_frac:  TS PLL fractional feedback divide
- * @ref1588_ck_div: clock divider for tspll ref
- *
- * Clock Generation Unit parameters used to program the PLL based on the
- * selected TIME_REF/TCXO frequency.
- */
-struct ice_cgu_pll_params_e825c {
-	u32 tspll_ck_refclkfreq;
-	u32 tspll_ndivratio;
-	u32 tspll_fbdiv_intgr;
-	u32 tspll_fbdiv_frac;
-	u32 ref1588_ck_div;
-};
-
-extern const struct
-ice_cgu_pll_params_e825c e825c_cgu_params[NUM_ICE_TIME_REF_FREQ];
-
 #define E810C_QSFP_C827_0_HANDLE 2
 #define E810C_QSFP_C827_1_HANDLE 3
 
@@ -328,7 +286,6 @@ extern const struct ice_vernier_info_e82x e822_vernier[NUM_ICE_PTP_LNK_SPD];
 
 /* Device agnostic functions */
 u8 ice_get_ptp_src_clock_index(struct ice_hw *hw);
-int ice_cgu_cfg_pps_out(struct ice_hw *hw, bool enable);
 bool ice_ptp_lock(struct ice_hw *hw);
 void ice_ptp_unlock(struct ice_hw *hw);
 void ice_ptp_src_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd);
diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.c b/drivers/net/ethernet/intel/ice/ice_tspll.c
new file mode 100644
index 000000000000..73f979b1d8e2
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.c
@@ -0,0 +1,643 @@
+#include "ice.h"
+#include "ice_lib.h"
+#include "ice_ptp_hw.h"
+
+static const struct
+ice_cgu_pll_params_e82x e822_cgu_params[NUM_ICE_TIME_REF_FREQ] = {
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
+static const struct
+ice_cgu_pll_params_e825c e825c_cgu_params[NUM_ICE_TIME_REF_FREQ] = {
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
+/**
+ * ice_clk_freq_str - Convert time_ref_freq to string
+ * @clk_freq: Clock frequency
+ *
+ * Return: specified TIME_REF clock frequency converted to a string
+ */
+static const char *ice_clk_freq_str(enum ice_time_ref_freq clk_freq)
+{
+	switch (clk_freq) {
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
+ * Return: specified clock source converted to its string name
+ */
+static const char *ice_clk_src_str(enum ice_clk_src clk_src)
+{
+	switch (clk_src) {
+	case ICE_CLK_SRC_TCXO:
+		return "TCXO";
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
+ * @clk_src: Clock source to select (TIME_REF, or TCXO)
+ *
+ * Configure the Clock Generation Unit with the desired clock frequency and
+ * time reference, enabling the PLL which drives the PTP hardware clock.
+ *
+ * Return:
+ * * %0       - success
+ * * %-EINVAL - input parameters are incorrect
+ * * %-EBUSY  - failed to lock TS PLL
+ * * %other   - CGU read/write failure
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
+	if (clk_src == ICE_CLK_SRC_TCXO &&
+	    clk_freq != ICE_TIME_REF_FREQ_25_000) {
+		dev_warn(ice_hw_to_dev(hw),
+			 "TCXO only supports 25 MHz frequency\n");
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
+		  dw24.ts_pll_enable ? "enabled" : "disabled",
+		  ice_clk_src_str(dw24.time_ref_sel),
+		  ice_clk_freq_str(dw9.time_ref_freq_sel),
+		  bwm_lf.plllock_true_lock_cri ? "locked" : "unlocked");
+
+	/* Disable the PLL before changing the clock source or frequency */
+	if (dw24.ts_pll_enable) {
+		dw24.ts_pll_enable = 0;
+
+		err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD24, dw24.val);
+		if (err)
+			return err;
+	}
+
+	/* Set the frequency */
+	dw9.time_ref_freq_sel = clk_freq;
+	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD9, dw9.val);
+	if (err)
+		return err;
+
+	/* Configure the TS PLL feedback divisor */
+	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD19, &dw19.val);
+	if (err)
+		return err;
+
+	dw19.tspll_fbdiv_intgr = e822_cgu_params[clk_freq].feedback_div;
+	dw19.tspll_ndivratio = 1;
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
+	dw22.time1588clk_div = e822_cgu_params[clk_freq].post_pll_div;
+	dw22.time1588clk_sel_div2 = 0;
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
+	dw24.ref1588_ck_div = e822_cgu_params[clk_freq].refclk_pre_div;
+	dw24.tspll_fbdiv_frac = e822_cgu_params[clk_freq].frac_n_div;
+	dw24.time_ref_sel = clk_src;
+
+	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD24, dw24.val);
+	if (err)
+		return err;
+
+	/* Finally, enable the PLL */
+	dw24.ts_pll_enable = 1;
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
+	if (!bwm_lf.plllock_true_lock_cri) {
+		dev_warn(ice_hw_to_dev(hw), "CGU PLL failed to lock\n");
+		return -EBUSY;
+	}
+
+	/* Log the current clock configuration */
+	ice_debug(hw, ICE_DBG_PTP, "New CGU configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
+		  dw24.ts_pll_enable ? "enabled" : "disabled",
+		  ice_clk_src_str(dw24.time_ref_sel),
+		  ice_clk_freq_str(dw9.time_ref_freq_sel),
+		  bwm_lf.plllock_true_lock_cri ? "locked" : "unlocked");
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
+ *
+ * Return: 0 on success, other error codes when failed to read/write CGU
+ */
+static int ice_cfg_cgu_pll_dis_sticky_bits_e82x(struct ice_hw *hw)
+{
+	union tspll_cntr_bist_settings cntr_bist;
+	int err;
+
+	err = ice_read_cgu_reg_e82x(hw, TSPLL_CNTR_BIST_SETTINGS,
+				    &cntr_bist.val);
+	if (err)
+		return err;
+
+	/* Disable sticky lock detection so lock err reported is accurate */
+	cntr_bist.i_plllock_sel_0 = 0;
+	cntr_bist.i_plllock_sel_1 = 0;
+
+	return ice_write_cgu_reg_e82x(hw, TSPLL_CNTR_BIST_SETTINGS,
+				      cntr_bist.val);
+}
+
+/**
+ * ice_cfg_cgu_pll_e825c - Configure the Clock Generation Unit for E825-C
+ * @hw: pointer to the HW struct
+ * @clk_freq: Clock frequency to program
+ * @clk_src: Clock source to select (TIME_REF, or TCXO)
+ *
+ * Configure the Clock Generation Unit with the desired clock frequency and
+ * time reference, enabling the PLL which drives the PTP hardware clock.
+ *
+ * Return:
+ * * %0       - success
+ * * %-EINVAL - input parameters are incorrect
+ * * %-EBUSY  - failed to lock TS PLL
+ * * %other   - CGU read/write failure
+ */
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
+ * ice_cfg_cgu_pll_dis_sticky_bits_e825c - disable TS PLL sticky bits for E825-C
+ * @hw: pointer to the HW struct
+ *
+ * Configure the Clock Generation Unit TS PLL sticky bits so they don't latch on
+ * losing TS PLL lock, but always show current state.
+ *
+ * Return: 0 on success, other error codes when failed to read/write CGU
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
+	return ice_write_cgu_reg_e82x(hw, TSPLL_BW_TDC_E825C, bw_tdc.val);
+}
+
+#define ICE_ONE_PPS_OUT_AMP_MAX 3
+
+/**
+ * ice_cgu_cfg_pps_out - Configure 1PPS output from CGU
+ * @hw: pointer to the HW struct
+ * @enable: true to enable 1PPS output, false to disable it
+ *
+ * Return: 0 on success, other negative error code when CGU read/write failed.
+ */
+int ice_cgu_cfg_pps_out(struct ice_hw *hw, bool enable)
+{
+	union nac_cgu_dword9 dw9;
+	int err;
+
+	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD9, &dw9.val);
+	if (err)
+		return err;
+
+	dw9.one_pps_out_en = enable;
+	dw9.one_pps_out_amp = enable * ICE_ONE_PPS_OUT_AMP_MAX;
+	return ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD9, dw9.val);
+}
+
+/**
+ * ice_init_cgu_e82x - Initialize CGU with settings from firmware
+ * @hw: pointer to the HW structure
+ *
+ * Initialize the Clock Generation Unit of the E822 device.
+ *
+ * Return: 0 on success, other error codes when failed to read/write/cfg CGU
+ */
+int ice_init_cgu_e82x(struct ice_hw *hw)
+{
+	struct ice_ts_func_info *ts_info = &hw->func_caps.ts_func_info;
+	int err;
+
+	/* Disable sticky lock detection so lock err reported is accurate */
+	if (hw->mac_type == ICE_MAC_GENERIC_3K_E825)
+		err = ice_cfg_cgu_pll_dis_sticky_bits_e825c(hw);
+	else
+		err = ice_cfg_cgu_pll_dis_sticky_bits_e82x(hw);
+	if (err)
+		return err;
+
+	/* Configure the CGU PLL using the parameters from the function
+	 * capabilities.
+	 */
+	if (hw->mac_type == ICE_MAC_GENERIC_3K_E825)
+		err = ice_cfg_cgu_pll_e825c(hw, ts_info->time_ref,
+					    (enum ice_clk_src)ts_info->clk_src);
+	else
+		err = ice_cfg_cgu_pll_e82x(hw, ts_info->time_ref,
+					   (enum ice_clk_src)ts_info->clk_src);
+
+	return err;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.h b/drivers/net/ethernet/intel/ice/ice_tspll.h
new file mode 100644
index 000000000000..181ca24a2739
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.h
@@ -0,0 +1,43 @@
+#ifndef _ICE_TSPLL_H_
+#define _ICE_TSPLL_H_
+
+/**
+ * struct ice_cgu_pll_params_e82x - E82X CGU parameters
+ * @refclk_pre_div: Reference clock pre-divisor
+ * @feedback_div: Feedback divisor
+ * @frac_n_div: Fractional divisor
+ * @post_pll_div: Post PLL divisor
+ *
+ * Clock Generation Unit parameters used to program the PLL based on the
+ * selected TIME_REF frequency.
+ */
+struct ice_cgu_pll_params_e82x {
+	u32 refclk_pre_div;
+	u32 feedback_div;
+	u32 frac_n_div;
+	u32 post_pll_div;
+};
+
+/**
+ * struct ice_cgu_pll_params_e825c - E825C CGU parameters
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
+int ice_cgu_cfg_pps_out(struct ice_hw *hw, bool enable);
+int ice_init_cgu_e82x(struct ice_hw *hw);
+
+#endif /* _ICE_TSPLL_H_ */
-- 
2.49.0

