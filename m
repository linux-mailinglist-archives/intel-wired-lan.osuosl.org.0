Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA99793BF32
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2024 11:40:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6358B60A52;
	Thu, 25 Jul 2024 09:40:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AomNUj8y9Ugm; Thu, 25 Jul 2024 09:40:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 507ED60A40
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721900402;
	bh=McfD5hzqCqKWw2boWxWJqYBLhlPaxLYpQRO48Hqsk3A=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=H8umEJmKEHM/jU0BSVzpCH+J/8Y4D9LNo77e3AOaf09XjUb2q4WJp2eyMu0Pfrjx0
	 tkr44682SLPt6o98ut8r1/MYJCXUwIOPXaBALKtrD9ItSVwIMrJygqRTPnChmtQpSn
	 XruXIHofoZfEBpplljWCwZEXhgc4akJaQtwzX+Z1yo5hIyEwnLpMLnEO+zjkNdq9eI
	 eJOPT17D/qgi0+HOZePvSgyR8ws4Fs+xuuRaRT9ZBxic0OLwG1fR42lzA+KBmVa2LR
	 c27Fy/bSHRIECaMu7qTwyXunR/OIaHWPwq8AozzyTVtu3whvxGCtP+M3CVH/3UYTzp
	 5ZZQIL5FHvMVQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 507ED60A40;
	Thu, 25 Jul 2024 09:40:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5F9481BF2C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 09:39:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4EC2260851
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 09:39:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y9RiJJzRXQJK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2024 09:39:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C9B2C60A40
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C9B2C60A40
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C9B2C60A40
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 09:39:55 +0000 (UTC)
X-CSE-ConnectionGUID: 2mJofwwKTy2ILNNjUzZFEg==
X-CSE-MsgGUID: OWP4M95xQxS+X66QNs0E2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="12707094"
X-IronPort-AV: E=Sophos;i="6.09,235,1716274800"; d="scan'208";a="12707094"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2024 02:39:53 -0700
X-CSE-ConnectionGUID: /mqYzRGWQS6QI38F7Nad4Q==
X-CSE-MsgGUID: j0iNCuoGRl6FQ4ba/Tkm5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,235,1716274800"; d="scan'208";a="57170851"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.132])
 by fmviesa005.fm.intel.com with ESMTP; 25 Jul 2024 02:39:50 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jul 2024 11:34:48 +0200
Message-ID: <20240725093932.54856-7-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240725093932.54856-6-karol.kolacinski@intel.com>
References: <20240725093932.54856-6-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721900396; x=1753436396;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qfPWtfQMgDcuPxdhA7VeivrmPydJuC+Hl6pVDYqgc+4=;
 b=eqEiQykK2lQPPPPAom4zznROBjomnsSZsZRy08/fS4lUaRH/b9iRot3m
 eRM+3+72F69LowJiLRfP8ELzq+FP319v5ZoUGNjAToMfFOgD1sxh4lJqt
 LV8hNqXvkfzVBwhEW9L4BJoaYHOKPmHljc0rEcGFsaYLGJyPEGwKjPb0D
 ZsyYWPsZeEpGPTzDV0SElyZaAHFn0XpJND38Mg+uMJEMLZhqeuSjM3aoq
 imjD3U56zWVKWKB/8LBe1Xv4Nc8Xqmo13J+FvzSXJ5vccokZe1pXE6PlJ
 FlFRvUMHoOgnNV6D8xyBlq2XY0hUQhHZmjLX52ydTp+yGsnNA0toXp3Ko
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eqEiQykK
Subject: [Intel-wired-lan] [PATCH v3 iwl-next 1/4] ice: Implement PTP
 support for E830 devices
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
Cc: Paul Greenwalt <paul.greenwalt@intel.com>,
 Michal Michalik <michal.michalik@intel.com>, netdev@vger.kernel.org,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Michalik <michal.michalik@intel.com>

Add specific functions and definitions for E830 devices to enable
PTP support.
Introduce new PHY model ICE_PHY_E830.
E830 devices support direct write to GLTSYN_ registers without shadow
registers and 64 bit read of PHC time.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Co-developed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Milena Olech <milena.olech@intel.com>
Co-developed-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Michal Michalik <michal.michalik@intel.com>
Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
V2 -> V3: Fixed kdoc for ice_is_e***() and ice_ptp_init_phy_e830()
V1 -> V2: Fixed compilation issue with GENMASK bits higher than 32

 drivers/net/ethernet/intel/ice/ice_common.c   |  13 +-
 drivers/net/ethernet/intel/ice/ice_common.h   |   1 +
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   4 +
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  11 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 199 ++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  25 ++-
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 7 files changed, 226 insertions(+), 28 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 009716a12a26..8bff63d3d664 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -267,7 +267,7 @@ bool ice_is_e822(struct ice_hw *hw)
  * ice_is_e823
  * @hw: pointer to the hardware structure
  *
- * returns true if the device is E823-L or E823-C based, false if not.
+ * Return: true if the device is E823-L or E823-C based, false if not.
  */
 bool ice_is_e823(struct ice_hw *hw)
 {
@@ -307,6 +307,17 @@ bool ice_is_e825c(struct ice_hw *hw)
 	}
 }
 
+/**
+ * ice_is_e830
+ * @hw: pointer to the hardware structure
+ *
+ * Return: true if the device is E830 based, false if not.
+ */
+bool ice_is_e830(const struct ice_hw *hw)
+{
+	return hw->mac_type == ICE_MAC_E830;
+}
+
 /**
  * ice_clear_pf_cfg - Clear PF configuration
  * @hw: pointer to the hardware structure
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 27208a60cece..21a4d9734168 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -279,6 +279,7 @@ bool ice_is_e810t(struct ice_hw *hw);
 bool ice_is_e822(struct ice_hw *hw);
 bool ice_is_e823(struct ice_hw *hw);
 bool ice_is_e825c(struct ice_hw *hw);
+bool ice_is_e830(const struct ice_hw *hw);
 int
 ice_sched_query_elem(struct ice_hw *hw, u32 node_teid,
 		     struct ice_aqc_txsched_elem_data *buf);
diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index 91cbae1eec89..646089f3e26c 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -533,10 +533,14 @@
 #define PFPM_WUS_MAG_M				BIT(1)
 #define PFPM_WUS_MNG_M				BIT(3)
 #define PFPM_WUS_FW_RST_WK_M			BIT(31)
+#define E830_PRTMAC_TS_TX_MEM_VALID_H		0x001E2020
+#define E830_PRTMAC_TS_TX_MEM_VALID_L		0x001E2000
 #define E830_PRTMAC_CL01_PS_QNT			0x001E32A0
 #define E830_PRTMAC_CL01_PS_QNT_CL0_M		GENMASK(15, 0)
 #define E830_PRTMAC_CL01_QNT_THR		0x001E3320
 #define E830_PRTMAC_CL01_QNT_THR_CL0_M		GENMASK(15, 0)
+#define E830_PRTTSYN_TXTIME_H(_i)		(0x001E5800 + ((_i) * 32))
+#define E830_PRTTSYN_TXTIME_L(_i)		(0x001E5000 + ((_i) * 32))
 #define VFINT_DYN_CTLN(_i)			(0x00003800 + ((_i) * 4))
 #define VFINT_DYN_CTLN_CLEARPBA_M		BIT(1)
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 825c7fa71a4c..2c5397d7a686 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -298,6 +298,15 @@ ice_ptp_read_src_clk_reg(struct ice_pf *pf, struct ptp_system_timestamp *sts)
 	/* Read the system timestamp pre PHC read */
 	ptp_read_system_prets(sts);
 
+	if (ice_is_e830(hw)) {
+		u64 clk_time = rd64(hw, E830_GLTSYN_TIME_L(tmr_idx));
+
+		/* Read the system timestamp post PHC read */
+		ptp_read_system_postts(sts);
+
+		return clk_time;
+	}
+
 	lo = rd32(hw, GLTSYN_TIME_L(tmr_idx));
 
 	/* Read the system timestamp post PHC read */
@@ -2626,7 +2635,7 @@ static void ice_ptp_set_caps(struct ice_pf *pf)
 	info->enable = ice_ptp_gpio_enable;
 	info->verify = ice_verify_pin;
 
-	if (ice_is_e810(&pf->hw))
+	if (ice_is_e810(&pf->hw) || ice_is_e830(&pf->hw))
 		ice_ptp_set_funcs_e810(pf);
 	else
 		ice_ptp_set_funcs_e82x(pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 6dff422b7f4e..f7e2df8c0eb2 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -897,6 +897,17 @@ static void ice_ptp_exec_tmr_cmd(struct ice_hw *hw)
 	ice_flush(hw);
 }
 
+/**
+ * ice_ptp_cfg_sync_delay - Configure PHC to PHY synchronization delay
+ * @hw: pointer to HW struct
+ * @delay: delay between PHC and PHY SYNC command execution in nanoseconds
+ */
+static void ice_ptp_cfg_sync_delay(struct ice_hw *hw, u32 delay)
+{
+	wr32(hw, GLTSYN_SYNC_DLAY, delay);
+	ice_flush(hw);
+}
+
 /* 56G PHY device functions
  *
  * The following functions operate on devices with the ETH 56G PHY.
@@ -1520,7 +1531,8 @@ static int ice_read_ptp_tstamp_eth56g(struct ice_hw *hw, u8 port, u8 idx,
 	 * lower 8 bits in the low register, and the upper 32 bits in the high
 	 * register.
 	 */
-	*tstamp = ((u64)hi) << TS_PHY_HIGH_S | ((u64)lo & TS_PHY_LOW_M);
+	*tstamp = FIELD_PREP(PHY_40B_HIGH_M, hi) |
+		  FIELD_PREP(PHY_40B_LOW_M, lo);
 
 	return 0;
 }
@@ -3201,7 +3213,8 @@ ice_read_phy_tstamp_e82x(struct ice_hw *hw, u8 quad, u8 idx, u64 *tstamp)
 	 * lower 8 bits in the low register, and the upper 32 bits in the high
 	 * register.
 	 */
-	*tstamp = FIELD_PREP(TS_PHY_HIGH_M, hi) | FIELD_PREP(TS_PHY_LOW_M, lo);
+	*tstamp = FIELD_PREP(PHY_40B_HIGH_M, hi) |
+		  FIELD_PREP(PHY_40B_LOW_M, lo);
 
 	return 0;
 }
@@ -4955,7 +4968,8 @@ ice_read_phy_tstamp_e810(struct ice_hw *hw, u8 lport, u8 idx, u64 *tstamp)
 	/* For E810 devices, the timestamp is reported with the lower 32 bits
 	 * in the low register, and the upper 8 bits in the high register.
 	 */
-	*tstamp = ((u64)hi) << TS_HIGH_S | ((u64)lo & TS_LOW_M);
+	*tstamp = FIELD_PREP(PHY_EXT_40B_HIGH_M, hi) |
+		  FIELD_PREP(PHY_EXT_40B_LOW_M, lo);
 
 	return 0;
 }
@@ -5018,8 +5032,7 @@ static int ice_ptp_init_phc_e810(struct ice_hw *hw)
 	u8 tmr_idx;
 	int err;
 
-	/* Ensure synchronization delay is zero */
-	wr32(hw, GLTSYN_SYNC_DLAY, 0);
+	ice_ptp_cfg_sync_delay(hw, ICE_E810_E830_SYNC_DELAY);
 
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
 	err = ice_write_phy_reg_e810(hw, ETH_GLTSYN_ENA(tmr_idx),
@@ -5407,11 +5420,142 @@ static void ice_ptp_init_phy_e810(struct ice_ptp_hw *ptp)
 	ptp->ports_per_phy = 4;
 }
 
+/* E830 functions
+ *
+ * The following functions operate on the E830 series devices.
+ *
+ */
+
+/**
+ * ice_ptp_init_phc_e830 - Perform E830 specific PHC initialization
+ * @hw: pointer to HW struct
+ *
+ * Perform E830-specific PTP hardware clock initialization steps.
+ *
+ * Return: 0 on success
+ */
+static int ice_ptp_init_phc_e830(struct ice_hw *hw)
+{
+	ice_ptp_cfg_sync_delay(hw, ICE_E810_E830_SYNC_DELAY);
+	return 0;
+}
+
+/**
+ * ice_ptp_write_direct_incval_e830 - Prep PHY port increment value change
+ * @hw: pointer to HW struct
+ * @incval: The new 40bit increment value to prepare
+ *
+ * Prepare the PHY port for a new increment value by programming the PHC
+ * GLTSYN_INCVAL_L and GLTSYN_INCVAL_H registers. The actual change is
+ * completed by FW automatically.
+ */
+static int ice_ptp_write_direct_incval_e830(struct ice_hw *hw, u64 incval)
+{
+	u8 tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
+
+	wr32(hw, GLTSYN_INCVAL_L(tmr_idx), lower_32_bits(incval));
+	wr32(hw, GLTSYN_INCVAL_H(tmr_idx), upper_32_bits(incval));
+
+	return 0;
+}
+
+/**
+ * ice_ptp_write_direct_phc_time_e830 - Prepare PHY port with initial time
+ * @hw: Board private structure
+ * @time: Time to initialize the PHY port clock to
+ *
+ * Program the PHY port ETH_GLTSYN_SHTIME registers in preparation setting the
+ * initial clock time. The time will not actually be programmed until the
+ * driver issues an ICE_PTP_INIT_TIME command.
+ *
+ * The time value is the upper 32 bits of the PHY timer, usually in units of
+ * nominal nanoseconds.
+ */
+static int ice_ptp_write_direct_phc_time_e830(struct ice_hw *hw, u64 time)
+{
+	u8 tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
+
+	wr32(hw, GLTSYN_TIME_0(tmr_idx), 0);
+	wr32(hw, GLTSYN_TIME_L(tmr_idx), lower_32_bits(time));
+	wr32(hw, GLTSYN_TIME_H(tmr_idx), upper_32_bits(time));
+
+	return 0;
+}
+
+/**
+ * ice_ptp_port_cmd_e830 - Prepare all external PHYs for a timer command
+ * @hw: pointer to HW struct
+ * @cmd: Command to be sent to the port
+ *
+ * Prepare the external PHYs connected to this device for a timer sync
+ * command.
+ */
+static int ice_ptp_port_cmd_e830(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
+{
+	u32 val = ice_ptp_tmr_cmd_to_port_reg(hw, cmd);
+
+	return ice_write_phy_reg_e810(hw, E830_ETH_GLTSYN_CMD, val);
+}
+
+/**
+ * ice_read_phy_tstamp_e830 - Read a PHY timestamp out of the external PHY
+ * @hw: pointer to the HW struct
+ * @lport: the lport to read from
+ * @idx: the timestamp index to read
+ * @tstamp: on return, the 40bit timestamp value
+ *
+ * Read a 40bit timestamp value out of the timestamp block of the external PHY
+ * on the E830 device.
+ */
+static int
+ice_read_phy_tstamp_e830(struct ice_hw *hw, u8 lport, u8 idx, u64 *tstamp)
+{
+	u32 hi, lo;
+
+	hi = rd32(hw, E830_HIGH_TX_MEMORY_BANK(idx, lport));
+	lo = rd32(hw, E830_LOW_TX_MEMORY_BANK(idx, lport));
+
+	/* For E830 devices, the timestamp is reported with the lower 32 bits
+	 * in the low register, and the upper 8 bits in the high register.
+	 */
+	*tstamp = FIELD_PREP(PHY_EXT_40B_HIGH_M, hi) |
+		  FIELD_PREP(PHY_EXT_40B_LOW_M, lo);
+
+	return 0;
+}
+
+/**
+ * ice_get_phy_tx_tstamp_ready_e830 - Read Tx memory status register
+ * @hw: pointer to the HW struct
+ * @port: the PHY port to read
+ * @tstamp_ready: contents of the Tx memory status register
+ *
+ */
+static int
+ice_get_phy_tx_tstamp_ready_e830(struct ice_hw *hw, u8 port, u64 *tstamp_ready)
+{
+	*tstamp_ready = rd32(hw, E830_PRTMAC_TS_TX_MEM_VALID_H);
+	*tstamp_ready <<= 32;
+	*tstamp_ready |= rd32(hw, E830_PRTMAC_TS_TX_MEM_VALID_L);
+
+	return 0;
+}
+
+/**
+ * ice_ptp_init_phy_e830 - initialize PHY parameters
+ * @ptp: pointer to the PTP HW struct
+ */
+static void ice_ptp_init_phy_e830(struct ice_ptp_hw *ptp)
+{
+	ptp->phy_model = ICE_PHY_E830;
+	ptp->num_lports = 8;
+	ptp->ports_per_phy = 4;
+}
+
 /* Device agnostic functions
  *
- * The following functions implement shared behavior common to both E822 and
- * E810 devices, possibly calling a device specific implementation where
- * necessary.
+ * The following functions implement shared behavior common to all devices,
+ * possibly calling a device specific implementation where necessary.
  */
 
 /**
@@ -5474,12 +5618,14 @@ void ice_ptp_init_hw(struct ice_hw *hw)
 {
 	struct ice_ptp_hw *ptp = &hw->ptp;
 
-	if (ice_is_e822(hw) || ice_is_e823(hw))
-		ice_ptp_init_phy_e82x(ptp);
-	else if (ice_is_e810(hw))
+	if (ice_is_e810(hw))
 		ice_ptp_init_phy_e810(ptp);
+	else if (ice_is_e822(hw) || ice_is_e823(hw))
+		ice_ptp_init_phy_e82x(ptp);
 	else if (ice_is_e825c(hw))
 		ice_ptp_init_phy_e825c(hw);
+	else if (ice_is_e830(hw))
+		ice_ptp_init_phy_e830(ptp);
 	else
 		ptp->phy_model = ICE_PHY_UNSUP;
 }
@@ -5570,6 +5716,8 @@ static int ice_ptp_port_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
 	switch (hw->ptp.phy_model) {
 	case ICE_PHY_E810:
 		return ice_ptp_port_cmd_e810(hw, cmd);
+	case ICE_PHY_E830:
+		return ice_ptp_port_cmd_e830(hw, cmd);
 	default:
 		break;
 	}
@@ -5640,6 +5788,10 @@ int ice_ptp_init_time(struct ice_hw *hw, u64 time)
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
 
 	/* Source timers */
+	/* For E830 we don't need to use shadow registers, its automatic */
+	if (hw->ptp.phy_model == ICE_PHY_E830)
+		return ice_ptp_write_direct_phc_time_e830(hw, time);
+
 	wr32(hw, GLTSYN_SHTIME_L(tmr_idx), lower_32_bits(time));
 	wr32(hw, GLTSYN_SHTIME_H(tmr_idx), upper_32_bits(time));
 	wr32(hw, GLTSYN_SHTIME_0(tmr_idx), 0);
@@ -5688,6 +5840,10 @@ int ice_ptp_write_incval(struct ice_hw *hw, u64 incval)
 
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
 
+	/* For E830 we don't need to use shadow registers, its automatic */
+	if (hw->ptp.phy_model == ICE_PHY_E830)
+		return ice_ptp_write_direct_incval_e830(hw, incval);
+
 	/* Shadow Adjust */
 	wr32(hw, GLTSYN_SHADJ_L(tmr_idx), lower_32_bits(incval));
 	wr32(hw, GLTSYN_SHADJ_H(tmr_idx), upper_32_bits(incval));
@@ -5795,12 +5951,14 @@ int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj)
 int ice_read_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx, u64 *tstamp)
 {
 	switch (hw->ptp.phy_model) {
-	case ICE_PHY_ETH56G:
-		return ice_read_ptp_tstamp_eth56g(hw, block, idx, tstamp);
 	case ICE_PHY_E810:
 		return ice_read_phy_tstamp_e810(hw, block, idx, tstamp);
 	case ICE_PHY_E82X:
 		return ice_read_phy_tstamp_e82x(hw, block, idx, tstamp);
+	case ICE_PHY_E830:
+		return ice_read_phy_tstamp_e830(hw, block, idx, tstamp);
+	case ICE_PHY_ETH56G:
+		return ice_read_ptp_tstamp_eth56g(hw, block, idx, tstamp);
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -5917,12 +6075,14 @@ int ice_ptp_init_phc(struct ice_hw *hw)
 	(void)rd32(hw, GLTSYN_STAT(src_idx));
 
 	switch (hw->ptp.phy_model) {
-	case ICE_PHY_ETH56G:
-		return ice_ptp_init_phc_eth56g(hw);
 	case ICE_PHY_E810:
 		return ice_ptp_init_phc_e810(hw);
 	case ICE_PHY_E82X:
 		return ice_ptp_init_phc_e82x(hw);
+	case ICE_PHY_E830:
+		return ice_ptp_init_phc_e830(hw);
+	case ICE_PHY_ETH56G:
+		return ice_ptp_init_phc_eth56g(hw);
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -5942,15 +6102,18 @@ int ice_ptp_init_phc(struct ice_hw *hw)
 int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready)
 {
 	switch (hw->ptp.phy_model) {
-	case ICE_PHY_ETH56G:
-		return ice_get_phy_tx_tstamp_ready_eth56g(hw, block,
-							  tstamp_ready);
 	case ICE_PHY_E810:
 		return ice_get_phy_tx_tstamp_ready_e810(hw, block,
 							tstamp_ready);
 	case ICE_PHY_E82X:
 		return ice_get_phy_tx_tstamp_ready_e82x(hw, block,
 							tstamp_ready);
+	case ICE_PHY_E830:
+		return ice_get_phy_tx_tstamp_ready_e830(hw, block,
+							tstamp_ready);
+	case ICE_PHY_ETH56G:
+		return ice_get_phy_tx_tstamp_ready_eth56g(hw, block,
+							  tstamp_ready);
 		break;
 	default:
 		return -EOPNOTSUPP;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index fc946fcd28b9..81b8864b529f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -327,6 +327,7 @@ extern const struct ice_vernier_info_e82x e822_vernier[NUM_ICE_PTP_LNK_SPD];
 #define ICE_E810_PLL_FREQ		812500000
 #define ICE_PTP_NOMINAL_INCVAL_E810	0x13b13b13bULL
 #define ICE_E810_OUT_PROP_DELAY_NS	1
+#define ICE_E810_E830_SYNC_DELAY	0
 #define ICE_E825C_OUT_PROP_DELAY_NS	11
 
 /* Device agnostic functions */
@@ -670,18 +671,21 @@ static inline u64 ice_get_base_incval(struct ice_hw *hw)
 /* E810 timer command register */
 #define E810_ETH_GLTSYN_CMD		0x03000344
 
+/* E830 timer command register */
+#define E830_ETH_GLTSYN_CMD		0x00088814
+
+/* E810 PHC time register */
+#define E830_GLTSYN_TIME_L(_tmr_idx)	(0x0008A000 + 0x1000 * (_tmr_idx))
+
 /* Source timer incval macros */
 #define INCVAL_HIGH_M			0xFF
 
-/* Timestamp block macros */
+/* PHY 40b registers macros */
+#define PHY_EXT_40B_LOW_M		GENMASK(31, 0)
+#define PHY_EXT_40B_HIGH_M		GENMASK_ULL(39, 32)
+#define PHY_40B_LOW_M			GENMASK(7, 0)
+#define PHY_40B_HIGH_M			GENMASK_ULL(39, 8)
 #define TS_VALID			BIT(0)
-#define TS_LOW_M			0xFFFFFFFF
-#define TS_HIGH_M			0xFF
-#define TS_HIGH_S			32
-
-#define TS_PHY_LOW_M			0xFF
-#define TS_PHY_HIGH_M			0xFFFFFFFF
-#define TS_PHY_HIGH_S			8
 
 #define BYTES_PER_IDX_ADDR_L_U		8
 #define BYTES_PER_IDX_ADDR_L		4
@@ -705,6 +709,11 @@ static inline u64 ice_get_base_incval(struct ice_hw *hw)
 #define LOW_TX_MEMORY_BANK_START	0x03090000
 #define HIGH_TX_MEMORY_BANK_START	0x03090004
 
+#define E830_LOW_TX_MEMORY_BANK(slot, port) \
+				(E830_PRTTSYN_TXTIME_L(slot) + 0x8 * (port))
+#define E830_HIGH_TX_MEMORY_BANK(slot, port) \
+				(E830_PRTTSYN_TXTIME_H(slot) + 0x8 * (port))
+
 /* SMA controller pin control */
 #define ICE_SMA1_DIR_EN		BIT(4)
 #define ICE_SMA1_TX_EN		BIT(5)
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 45768796691f..7fead101be7f 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -866,6 +866,7 @@ enum ice_phy_model {
 	ICE_PHY_E810 = 1,
 	ICE_PHY_E82X,
 	ICE_PHY_ETH56G,
+	ICE_PHY_E830,
 };
 
 /* Global Link Topology */
-- 
2.45.2

