Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B86F94BE0C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2024 14:58:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 504EA60AD0;
	Thu,  8 Aug 2024 12:58:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 73wQywUsfZB6; Thu,  8 Aug 2024 12:58:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ECDBE60ABF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723121925;
	bh=YgzauVb+8dmgJx+4eP9FYjvVrShEStaqk64O5jfhsEQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UDHw67a8cRhyin3Ws19V0c07t3EzVbX2/dtLpJ4DLr8zaH1KFMWYLJNvp67AuFeP4
	 QSQETpx05R39ynBpMkXG3PxDFvFOHBX+rpGljLydq9oLNtiLA+vQCsLs9AnpxerYf3
	 wAIy1AiKvKKADJjhUsghTcD1J+s08b2I7e2yUjmf1ThOpilZhkuKJs5wai0oGgr9q9
	 MePv6YqpIcV4U9w3I5zN42qjiJKF9RBMtLlpFu7VmpJxGzmY40ZHZcZqsDLrL3IVdE
	 arA/wSsxk7gdBY7nu/HD7S6EcH2CzVCpI+C1smXz5OoF/BZdKfDD+vfoZZ0jctzCd3
	 w808j7hDlMazQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ECDBE60ABF;
	Thu,  8 Aug 2024 12:58:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 819A91BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 12:58:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6EF4540E00
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 12:58:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4AnEih2ocbhi for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2024 12:58:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 95A4440DE9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 95A4440DE9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 95A4440DE9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 12:58:37 +0000 (UTC)
X-CSE-ConnectionGUID: N7zRAe+yTkqtbRsq05mbnw==
X-CSE-MsgGUID: KnQ8UI+4QwewPKgtaLp3yA==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="21404762"
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="21404762"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 05:58:36 -0700
X-CSE-ConnectionGUID: pdFbYx3ZTByKJUn1hIjI/w==
X-CSE-MsgGUID: CXYmeC7aQg6fb9d0nQIbgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="61595074"
Received: from unknown (HELO kkolacin-desk1.igk.intel.com) ([10.217.160.108])
 by fmviesa005.fm.intel.com with ESMTP; 08 Aug 2024 05:58:34 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Aug 2024 14:57:45 +0200
Message-ID: <20240808125825.560093-11-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240808125825.560093-8-karol.kolacinski@intel.com>
References: <20240808125825.560093-8-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723121917; x=1754657917;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1u/Yvo5JzPlvqw6wV/ErqjIRl6zmGZkQTXovEpJ3cJk=;
 b=HAYdVMd447qIqKmDTuotJQC2827FXbB/9hZ/Zcs0WT0SEg/0CU0lBmxN
 jqeA+bfHqxief33PyTzJDfS5BlaL1L1mjZtR0pqouQ4FsVxvaWoufFu3M
 bTd+Pslma6sCkdoyDrCnT+PVCA2GABto6s9J+a90yMkggB2OeUxMIZYiq
 VrVMmg/Q/3jPGfyf1yo+jMUy6yVKPqQhlXXohu5OHfd5pFlPwYGsdRbgP
 cPmf/hOoVnSILN7USgv8e9OFBrTN++7kW2au3F2Ag1NuXPlVqdHS/RDKk
 oRGkMqc9plt+CFND3TM/yw7H/hyz86tYEjEXHSLoOGgmFTAP8Q8V1V420
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HAYdVMd4
Subject: [Intel-wired-lan] [PATCH v5 iwl-next 3/6] ice: Implement PTP
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
V4 -> V5: Edited return values
V3 -> V4: Fixed kdoc for other ice_is_e***() and other _e830() functions in
          ice_ptp_hw.c
V2 -> V3: Fixed kdoc for ice_is_e***() and ice_ptp_init_phy_e830()
V1 -> V2: Fixed compilation issue with GENMASK bits higher than 32

 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   4 +
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  25 ++-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 181 ++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  12 ++
 4 files changed, 206 insertions(+), 16 deletions(-)

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
index 56905b0e43b8..cf3b02d14b19 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -298,6 +298,15 @@ ice_ptp_read_src_clk_reg(struct ice_pf *pf, struct ptp_system_timestamp *sts)
 	/* Read the system timestamp pre PHC read */
 	ptp_read_system_prets(sts);
 
+	if (hw->mac_type == ICE_MAC_E830) {
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
@@ -1284,6 +1293,7 @@ ice_ptp_port_phy_stop(struct ice_ptp_port *ptp_port)
 
 	switch (hw->mac_type) {
 	case ICE_MAC_E810:
+	case ICE_MAC_E830:
 		err = 0;
 		break;
 	case ICE_MAC_GENERIC:
@@ -1330,6 +1340,7 @@ ice_ptp_port_phy_restart(struct ice_ptp_port *ptp_port)
 
 	switch (hw->mac_type) {
 	case ICE_MAC_E810:
+	case ICE_MAC_E830:
 		err = 0;
 		break;
 	case ICE_MAC_GENERIC:
@@ -1405,10 +1416,11 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
 
 	switch (hw->mac_type) {
 	case ICE_MAC_E810:
-		/* Do not reconfigure E810 PHY */
+	case ICE_MAC_E830:
+		/* Do not reconfigure E810 or E830 PHY */
 		return;
-	case ICE_MAC_GENERIC_3K_E825:
 	case ICE_MAC_GENERIC:
+	case ICE_MAC_GENERIC_3K_E825:
 		ice_ptp_port_phy_restart(ptp_port);
 		return;
 	default:
@@ -1471,6 +1483,7 @@ static int ice_ptp_cfg_phy_interrupt(struct ice_pf *pf, bool ena, u32 threshold)
 		return 0;
 	}
 	case ICE_MAC_E810:
+	case ICE_MAC_E830:
 		return 0;
 	case ICE_MAC_UNKNOWN:
 	default:
@@ -2628,6 +2641,7 @@ static void ice_ptp_set_caps(struct ice_pf *pf)
 
 	switch (pf->hw.mac_type) {
 	case ICE_MAC_E810:
+	case ICE_MAC_E830:
 		ice_ptp_set_funcs_e810(pf);
 		return;
 	case ICE_MAC_GENERIC:
@@ -3271,10 +3285,8 @@ static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
 	mutex_init(&ptp_port->ps_lock);
 
 	switch (hw->mac_type) {
-	case ICE_MAC_GENERIC_3K_E825:
-		return ice_ptp_init_tx_eth56g(pf, &ptp_port->tx,
-					      ptp_port->port_num);
 	case ICE_MAC_E810:
+	case ICE_MAC_E830:
 		return ice_ptp_init_tx_e810(pf, &ptp_port->tx);
 	case ICE_MAC_GENERIC:
 		kthread_init_delayed_work(&ptp_port->ov_work,
@@ -3282,6 +3294,9 @@ static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
 
 		return ice_ptp_init_tx_e82x(pf, &ptp_port->tx,
 					    ptp_port->port_num);
+	case ICE_MAC_GENERIC_3K_E825:
+		return ice_ptp_init_tx_eth56g(pf, &ptp_port->tx,
+					      ptp_port->port_num);
 	default:
 		return -ENODEV;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index d1b87838986d..6958118a600e 100644
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
+static void ice_ptp_cfg_sync_delay(const struct ice_hw *hw, u32 delay)
+{
+	wr32(hw, GLTSYN_SYNC_DLAY, delay);
+	ice_flush(hw);
+}
+
 /* 56G PHY device functions
  *
  * The following functions operate on devices with the ETH 56G PHY.
@@ -3200,7 +3211,8 @@ ice_read_phy_tstamp_e82x(struct ice_hw *hw, u8 quad, u8 idx, u64 *tstamp)
 	 * lower 8 bits in the low register, and the upper 32 bits in the high
 	 * register.
 	 */
-	*tstamp = FIELD_PREP(TS_PHY_HIGH_M, hi) | FIELD_PREP(TS_PHY_LOW_M, lo);
+	*tstamp = FIELD_PREP(PHY_40B_HIGH_M, hi) |
+		  FIELD_PREP(PHY_40B_LOW_M, lo);
 
 	return 0;
 }
@@ -5017,8 +5029,7 @@ static int ice_ptp_init_phc_e810(struct ice_hw *hw)
 	u8 tmr_idx;
 	int err;
 
-	/* Ensure synchronization delay is zero */
-	wr32(hw, GLTSYN_SYNC_DLAY, 0);
+	ice_ptp_cfg_sync_delay(hw, ICE_E810_E830_SYNC_DELAY);
 
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
 	err = ice_write_phy_reg_e810(hw, ETH_GLTSYN_ENA(tmr_idx),
@@ -5405,6 +5416,129 @@ static void ice_ptp_init_phy_e810(struct ice_ptp_hw *ptp)
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
+ */
+static void ice_ptp_init_phc_e830(const struct ice_hw *hw)
+{
+	ice_ptp_cfg_sync_delay(hw, ICE_E810_E830_SYNC_DELAY);
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
+static void ice_ptp_write_direct_incval_e830(const struct ice_hw *hw,
+					     u64 incval)
+{
+	u8 tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
+
+	wr32(hw, GLTSYN_INCVAL_L(tmr_idx), lower_32_bits(incval));
+	wr32(hw, GLTSYN_INCVAL_H(tmr_idx), upper_32_bits(incval));
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
+static void ice_ptp_write_direct_phc_time_e830(const struct ice_hw *hw,
+					       u64 time)
+{
+	u8 tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
+
+	wr32(hw, GLTSYN_TIME_0(tmr_idx), 0);
+	wr32(hw, GLTSYN_TIME_L(tmr_idx), lower_32_bits(time));
+	wr32(hw, GLTSYN_TIME_H(tmr_idx), upper_32_bits(time));
+}
+
+/**
+ * ice_ptp_port_cmd_e830 - Prepare all external PHYs for a timer command
+ * @hw: pointer to HW struct
+ * @cmd: Command to be sent to the port
+ *
+ * Prepare the external PHYs connected to this device for a timer sync
+ * command.
+ *
+ * Return: 0 on success, negative error code when PHY write failed
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
+static void ice_read_phy_tstamp_e830(const struct ice_hw *hw, u8 lport, u8 idx,
+				     u64 *tstamp)
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
+}
+
+/**
+ * ice_get_phy_tx_tstamp_ready_e830 - Read Tx memory status register
+ * @hw: pointer to the HW struct
+ * @port: the PHY port to read
+ * @tstamp_ready: contents of the Tx memory status register
+ */
+static void ice_get_phy_tx_tstamp_ready_e830(const struct ice_hw *hw, u8 port,
+					     u64 *tstamp_ready)
+{
+	*tstamp_ready = rd32(hw, E830_PRTMAC_TS_TX_MEM_VALID_H);
+	*tstamp_ready <<= 32;
+	*tstamp_ready |= rd32(hw, E830_PRTMAC_TS_TX_MEM_VALID_L);
+}
+
+/**
+ * ice_ptp_init_phy_e830 - initialize PHY parameters
+ * @ptp: pointer to the PTP HW struct
+ */
+static void ice_ptp_init_phy_e830(struct ice_ptp_hw *ptp)
+{
+	ptp->num_lports = 8;
+	ptp->ports_per_phy = 4;
+}
+
 /* Device agnostic functions
  *
  * The following functions implement shared behavior common to all devices,
@@ -5475,6 +5609,9 @@ void ice_ptp_init_hw(struct ice_hw *hw)
 	case ICE_MAC_E810:
 		ice_ptp_init_phy_e810(ptp);
 		break;
+	case ICE_MAC_E830:
+		ice_ptp_init_phy_e830(ptp);
+		break;
 	case ICE_MAC_GENERIC:
 		ice_ptp_init_phy_e82x(ptp);
 		break;
@@ -5572,6 +5709,8 @@ static int ice_ptp_port_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
 	switch (hw->mac_type) {
 	case ICE_MAC_E810:
 		return ice_ptp_port_cmd_e810(hw, cmd);
+	case ICE_MAC_E830:
+		return ice_ptp_port_cmd_e830(hw, cmd);
 	default:
 		break;
 	}
@@ -5642,6 +5781,12 @@ int ice_ptp_init_time(struct ice_hw *hw, u64 time)
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
 
 	/* Source timers */
+	/* For E830 we don't need to use shadow registers, its automatic */
+	if (hw->mac_type == ICE_MAC_E830) {
+		ice_ptp_write_direct_phc_time_e830(hw, time);
+		return 0;
+	}
+
 	wr32(hw, GLTSYN_SHTIME_L(tmr_idx), lower_32_bits(time));
 	wr32(hw, GLTSYN_SHTIME_H(tmr_idx), upper_32_bits(time));
 	wr32(hw, GLTSYN_SHTIME_0(tmr_idx), 0);
@@ -5690,6 +5835,12 @@ int ice_ptp_write_incval(struct ice_hw *hw, u64 incval)
 
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
 
+	/* For E830 we don't need to use shadow registers, its automatic */
+	if (hw->mac_type == ICE_MAC_E830) {
+		ice_ptp_write_direct_incval_e830(hw, incval);
+		return 0;
+	}
+
 	/* Shadow Adjust */
 	wr32(hw, GLTSYN_SHADJ_L(tmr_idx), lower_32_bits(incval));
 	wr32(hw, GLTSYN_SHADJ_H(tmr_idx), upper_32_bits(incval));
@@ -5797,12 +5948,15 @@ int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj)
 int ice_read_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx, u64 *tstamp)
 {
 	switch (hw->mac_type) {
-	case ICE_MAC_GENERIC_3K_E825:
-		return ice_read_ptp_tstamp_eth56g(hw, block, idx, tstamp);
 	case ICE_MAC_E810:
 		return ice_read_phy_tstamp_e810(hw, block, idx, tstamp);
+	case ICE_MAC_E830:
+		ice_read_phy_tstamp_e830(hw, block, idx, tstamp);
+		return 0;
 	case ICE_MAC_GENERIC:
 		return ice_read_phy_tstamp_e82x(hw, block, idx, tstamp);
+	case ICE_MAC_GENERIC_3K_E825:
+		return ice_read_ptp_tstamp_eth56g(hw, block, idx, tstamp);
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -5919,12 +6073,15 @@ int ice_ptp_init_phc(struct ice_hw *hw)
 	(void)rd32(hw, GLTSYN_STAT(src_idx));
 
 	switch (hw->mac_type) {
-	case ICE_MAC_GENERIC_3K_E825:
-		return ice_ptp_init_phc_eth56g(hw);
 	case ICE_MAC_E810:
 		return ice_ptp_init_phc_e810(hw);
+	case ICE_MAC_E830:
+		ice_ptp_init_phc_e830(hw);
+		return 0;
 	case ICE_MAC_GENERIC:
 		return ice_ptp_init_phc_e82x(hw);
+	case ICE_MAC_GENERIC_3K_E825:
+		return ice_ptp_init_phc_eth56g(hw);
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -5944,16 +6101,18 @@ int ice_ptp_init_phc(struct ice_hw *hw)
 int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready)
 {
 	switch (hw->mac_type) {
-	case ICE_MAC_GENERIC_3K_E825:
-		return ice_get_phy_tx_tstamp_ready_eth56g(hw, block,
-							  tstamp_ready);
 	case ICE_MAC_E810:
 		return ice_get_phy_tx_tstamp_ready_e810(hw, block,
 							tstamp_ready);
+	case ICE_MAC_E830:
+		ice_get_phy_tx_tstamp_ready_e830(hw, block, tstamp_ready);
+		return 0;
 	case ICE_MAC_GENERIC:
 		return ice_get_phy_tx_tstamp_ready_e82x(hw, block,
 							tstamp_ready);
-		break;
+	case ICE_MAC_GENERIC_3K_E825:
+		return ice_get_phy_tx_tstamp_ready_eth56g(hw, block,
+							  tstamp_ready);
 	default:
 		return -EOPNOTSUPP;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index df94230d820f..db77becb7a13 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -327,6 +327,7 @@ extern const struct ice_vernier_info_e82x e822_vernier[NUM_ICE_PTP_LNK_SPD];
 #define ICE_E810_PLL_FREQ		812500000
 #define ICE_PTP_NOMINAL_INCVAL_E810	0x13b13b13bULL
 #define ICE_E810_OUT_PROP_DELAY_NS	1
+#define ICE_E810_E830_SYNC_DELAY	0
 #define ICE_E825C_OUT_PROP_DELAY_NS	11
 
 /* Device agnostic functions */
@@ -670,6 +671,12 @@ static inline u64 ice_get_base_incval(struct ice_hw *hw)
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
 
@@ -702,6 +709,11 @@ static inline u64 ice_get_base_incval(struct ice_hw *hw)
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
-- 
2.45.2

