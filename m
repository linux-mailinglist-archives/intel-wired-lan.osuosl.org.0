Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E08F899A40
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Apr 2024 12:07:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 003AB8228D;
	Fri,  5 Apr 2024 10:07:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Agg307XNNiTm; Fri,  5 Apr 2024 10:07:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EDBD882284
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712311642;
	bh=8t+cQRu5oi+HP2g+IIUP05QaHPVUrvHiIxdpcStVA2U=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LKY6vgA9C3ZCaEdXFpOPi7ywItOL2PPQRKjqNqg96ryRfMh+9o/uV7N5zSOkdHqVY
	 bwHEMySfxdHj/+Jc2L/oaSLTcD5rMskmA8Jy9O9xMr2/O5qt/Hw60IagoS3iNXfHHf
	 al5meeVlRIGEf3kyAutr3AsGZJqCReYKPu801RNy0dAKN8kin7hFHutQPmkBjmPJlG
	 eRVChJmXh2JF1O0GIfUyU8dgAl5eOr6P31MpfdJlFEvJ6HuwmigI1HgPBLUQ8llSqu
	 8LCHxgNSF33dvJY//PDMF5iBlf6hYHWMgCD46Wp3ZZdQnygNIiZS45clolgouxlNBY
	 9Wau/AWvLtYtw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EDBD882284;
	Fri,  5 Apr 2024 10:07:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 51BDE1BF385
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 10:07:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2E96B82263
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 10:07:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q0PG6YBE15Sw for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Apr 2024 10:07:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EF33682285
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EF33682285
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EF33682285
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 10:07:08 +0000 (UTC)
X-CSE-ConnectionGUID: P900rh+fTi6fcLvGsMy3SQ==
X-CSE-MsgGUID: uMIId15MSleU4wBDKS0Jaw==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="7493975"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; 
   d="scan'208";a="7493975"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 03:07:08 -0700
X-CSE-ConnectionGUID: KULb1C5lQq20Ocy3jAh/9A==
X-CSE-MsgGUID: Mc8ZJ9ilSUquPjd2Hfo0qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="19536196"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orviesa007.jf.intel.com with ESMTP; 05 Apr 2024 03:07:06 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  5 Apr 2024 11:57:17 +0200
Message-ID: <20240405100648.144756-19-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240405100648.144756-14-karol.kolacinski@intel.com>
References: <20240405100648.144756-14-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712311629; x=1743847629;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ms5/hB8vEIQS+wso1tSTyqmUj09KdT6ZGMSGpHjVjPg=;
 b=cqpqwkRkNWIhEa6kAliujet+vRjRyDxkvB5TQ3jxCNhdT6bOibOOAytL
 QRqcUdi86/lMCIHTM+BxlZArfndcg44S97B6axm1UMkWABt23s+uZZWoc
 hO/w+7iMKR6pFYXyc3Byh8064l7XoACcUSNAXKhiDrWGYtrCA4hnv+S7a
 bltbMaY2npMBQRx1kNu9NjUsaxYl+isdUkFPgipcQvYy9GTEijDwJutRk
 dKXzfM9ZZW5F4GkyC09Ytd1eaxLZUPQiLWpaqHg6KM96oiyps5NmsYhvF
 c6m3APoBwylM0+Fzs6ZKHQ104cuNaQlmh4ZhFjNtjXBfTYIHeqG/IhDhO
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cqpqwkRk
Subject: [Intel-wired-lan] [PATCH v6 iwl-next 05/12] ice: Move CGU block
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
V5 -> V6: - adjusted returns in ice_read/write_cgu_reg_e82x()
	  - added cgu_msg init when declaring in ice_read/write_cgu_reg_e82x()
	  - changed TS_PHY_LOW_S to TS_PHY_LOW_M and adjusted with FIELD_PREP()
	  - removed unncecessary casts

 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 1399 +++++++++----------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |    4 +-
 2 files changed, 700 insertions(+), 703 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 3c0efdd3cb8a..c4fababd1408 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -227,559 +227,569 @@ static u64 ice_ptp_read_src_incval(struct ice_hw *hw)
 }
 
 /**
- * ice_ptp_tmr_cmd_to_src_reg - Convert to source timer command value
- * @hw: pointer to HW struct
- * @cmd: Timer command
+ * ice_read_cgu_reg_e82x - Read a CGU register
+ * @hw: pointer to the HW struct
+ * @addr: Register address to read
+ * @val: storage for register value read
  *
- * Returns: the source timer command register value for the given PTP timer
- * command.
+ * Read the contents of a register of the Clock Generation Unit. Only
+ * applicable to E822 devices.
  */
-static u32 ice_ptp_tmr_cmd_to_src_reg(struct ice_hw *hw,
-				      enum ice_ptp_tmr_cmd cmd)
+static int ice_read_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 *val)
 {
-	u32 cmd_val, tmr_idx;
+	struct ice_sbq_msg_input cgu_msg = {
+		.opcode = ice_sbq_msg_rd,
+		.dest_dev = cgu,
+		.msg_addr_low = addr,
+		.data = val
+	};
+	int err;
 
-	switch (cmd) {
-	case ICE_PTP_INIT_TIME:
-		cmd_val = GLTSYN_CMD_INIT_TIME;
-		break;
-	case ICE_PTP_INIT_INCVAL:
-		cmd_val = GLTSYN_CMD_INIT_INCVAL;
-		break;
-	case ICE_PTP_ADJ_TIME:
-		cmd_val = GLTSYN_CMD_ADJ_TIME;
-		break;
-	case ICE_PTP_ADJ_TIME_AT_TIME:
-		cmd_val = GLTSYN_CMD_ADJ_INIT_TIME;
-		break;
-	case ICE_PTP_NOP:
-	case ICE_PTP_READ_TIME:
-		cmd_val = GLTSYN_CMD_READ_TIME;
-		break;
-	default:
-		dev_warn(ice_hw_to_dev(hw),
-			 "Ignoring unrecognized timer command %u\n", cmd);
-		cmd_val = 0;
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
 	}
 
-	tmr_idx = ice_get_ptp_src_clock_index(hw);
+	*val = cgu_msg.data;
 
-	return tmr_idx << SEL_CPK_SRC | cmd_val;
+	return 0;
 }
 
 /**
- * ice_ptp_tmr_cmd_to_port_reg- Convert to port timer command value
- * @hw: pointer to HW struct
- * @cmd: Timer command
- *
- * Note that some hardware families use a different command register value for
- * the PHY ports, while other hardware families use the same register values
- * as the source timer.
+ * ice_write_cgu_reg_e82x - Write a CGU register
+ * @hw: pointer to the HW struct
+ * @addr: Register address to write
+ * @val: value to write into the register
  *
- * Returns: the PHY port timer command register value for the given PTP timer
- * command.
+ * Write the specified value to a register of the Clock Generation Unit. Only
+ * applicable to E822 devices.
  */
-static u32 ice_ptp_tmr_cmd_to_port_reg(struct ice_hw *hw,
-				       enum ice_ptp_tmr_cmd cmd)
+static int ice_write_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 val)
 {
-	u32 cmd_val, tmr_idx;
-
-	/* Certain hardware families share the same register values for the
-	 * port register and source timer register.
-	 */
-	switch (hw->ptp.phy_model) {
-	case ICE_PHY_E810:
-		return ice_ptp_tmr_cmd_to_src_reg(hw, cmd) & TS_CMD_MASK_E810;
-	default:
-		break;
-	}
+	struct ice_sbq_msg_input cgu_msg = {
+		.opcode = ice_sbq_msg_wr,
+		.dest_dev = cgu,
+		.msg_addr_low = addr,
+		.data = val
+	};
+	int err;
 
-	switch (cmd) {
-	case ICE_PTP_INIT_TIME:
-		cmd_val = PHY_CMD_INIT_TIME;
-		break;
-	case ICE_PTP_INIT_INCVAL:
-		cmd_val = PHY_CMD_INIT_INCVAL;
-		break;
-	case ICE_PTP_ADJ_TIME:
-		cmd_val = PHY_CMD_ADJ_TIME;
-		break;
-	case ICE_PTP_ADJ_TIME_AT_TIME:
-		cmd_val = PHY_CMD_ADJ_TIME_AT_TIME;
-		break;
-	case ICE_PTP_READ_TIME:
-		cmd_val = PHY_CMD_READ_TIME;
-		break;
-	case ICE_PTP_NOP:
-		cmd_val = 0;
-		break;
-	default:
-		dev_warn(ice_hw_to_dev(hw),
-			 "Ignoring unrecognized timer command %u\n", cmd);
-		cmd_val = 0;
+	err = ice_sbq_rw_reg(hw, &cgu_msg);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write CGU register 0x%04x, err %d\n",
+			  addr, err);
+		return err;
 	}
 
-	tmr_idx = ice_get_ptp_src_clock_index(hw);
-
-	return tmr_idx << SEL_PHY_SRC | cmd_val;
+	return err;
 }
 
 /**
- * ice_ptp_src_cmd - Prepare source timer for a timer command
- * @hw: pointer to HW structure
- * @cmd: Timer command
+ * ice_clk_freq_str - Convert time_ref_freq to string
+ * @clk_freq: Clock frequency
  *
- * Prepare the source timer for an upcoming timer sync command.
+ * Convert the specified TIME_REF clock frequency to a string.
  */
-void ice_ptp_src_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
+static const char *ice_clk_freq_str(enum ice_time_ref_freq clk_freq)
 {
-	u32 cmd_val = ice_ptp_tmr_cmd_to_src_reg(hw, cmd);
-
-	wr32(hw, GLTSYN_CMD, cmd_val);
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
 }
 
 /**
- * ice_ptp_exec_tmr_cmd - Execute all prepared timer commands
- * @hw: pointer to HW struct
+ * ice_clk_src_str - Convert time_ref_src to string
+ * @clk_src: Clock source
  *
- * Write the SYNC_EXEC_CMD bit to the GLTSYN_CMD_SYNC register, and flush the
- * write immediately. This triggers the hardware to begin executing all of the
- * source and PHY timer commands synchronously.
+ * Convert the specified clock source to its string name.
  */
-static void ice_ptp_exec_tmr_cmd(struct ice_hw *hw)
+static const char *ice_clk_src_str(enum ice_clk_src clk_src)
 {
-	struct ice_pf *pf = container_of(hw, struct ice_pf, hw);
-
-	guard(spinlock)(&pf->adapter->ptp_gltsyn_time_lock);
-	wr32(hw, GLTSYN_CMD_SYNC, SYNC_EXEC_CMD);
-	ice_flush(hw);
+	switch (clk_src) {
+	case ICE_CLK_SRC_TCX0:
+		return "TCX0";
+	case ICE_CLK_SRC_TIME_REF:
+		return "TIME_REF";
+	default:
+		return "Unknown";
+	}
 }
 
-/* E822 family functions
- *
- * The following functions operate on the E822 family of devices.
- */
-
 /**
- * ice_fill_phy_msg_e82x - Fill message data for a PHY register access
+ * ice_cfg_cgu_pll_e82x - Configure the Clock Generation Unit
  * @hw: pointer to the HW struct
- * @msg: the PHY message buffer to fill in
- * @port: the port to access
- * @offset: the register offset
+ * @clk_freq: Clock frequency to program
+ * @clk_src: Clock source to select (TIME_REF, or TCX0)
+ *
+ * Configure the Clock Generation Unit with the desired clock frequency and
+ * time reference, enabling the PLL which drives the PTP hardware clock.
  */
-static void ice_fill_phy_msg_e82x(struct ice_hw *hw,
-				  struct ice_sbq_msg_input *msg, u8 port,
-				  u16 offset)
+static int ice_cfg_cgu_pll_e82x(struct ice_hw *hw,
+				enum ice_time_ref_freq clk_freq,
+				enum ice_clk_src clk_src)
 {
-	int phy_port, phy, quadtype;
-
-	phy_port = port % hw->ptp.ports_per_phy;
-	phy = port / hw->ptp.ports_per_phy;
-	quadtype = ICE_GET_QUAD_NUM(port) %
-		   ICE_GET_QUAD_NUM(hw->ptp.ports_per_phy);
+	union tspll_ro_bwm_lf bwm_lf;
+	union nac_cgu_dword19 dw19;
+	union nac_cgu_dword22 dw22;
+	union nac_cgu_dword24 dw24;
+	union nac_cgu_dword9 dw9;
+	int err;
 
-	if (quadtype == 0) {
-		msg->msg_addr_low = P_Q0_L(P_0_BASE + offset, phy_port);
-		msg->msg_addr_high = P_Q0_H(P_0_BASE + offset, phy_port);
-	} else {
-		msg->msg_addr_low = P_Q1_L(P_4_BASE + offset, phy_port);
-		msg->msg_addr_high = P_Q1_H(P_4_BASE + offset, phy_port);
+	if (clk_freq >= NUM_ICE_TIME_REF_FREQ) {
+		dev_warn(ice_hw_to_dev(hw), "Invalid TIME_REF frequency %u\n",
+			 clk_freq);
+		return -EINVAL;
 	}
 
-	if (phy == 0)
-		msg->dest_dev = rmn_0;
-	else if (phy == 1)
-		msg->dest_dev = rmn_1;
-	else
-		msg->dest_dev = rmn_2;
-}
+	if (clk_src >= NUM_ICE_CLK_SRC) {
+		dev_warn(ice_hw_to_dev(hw), "Invalid clock source %u\n",
+			 clk_src);
+		return -EINVAL;
+	}
 
-/**
- * ice_is_64b_phy_reg_e82x - Check if this is a 64bit PHY register
- * @low_addr: the low address to check
- * @high_addr: on return, contains the high address of the 64bit register
- *
- * Checks if the provided low address is one of the known 64bit PHY values
- * represented as two 32bit registers. If it is, return the appropriate high
- * register offset to use.
- */
-static bool ice_is_64b_phy_reg_e82x(u16 low_addr, u16 *high_addr)
-{
-	switch (low_addr) {
-	case P_REG_PAR_PCS_TX_OFFSET_L:
-		*high_addr = P_REG_PAR_PCS_TX_OFFSET_U;
-		return true;
-	case P_REG_PAR_PCS_RX_OFFSET_L:
-		*high_addr = P_REG_PAR_PCS_RX_OFFSET_U;
-		return true;
-	case P_REG_PAR_TX_TIME_L:
-		*high_addr = P_REG_PAR_TX_TIME_U;
-		return true;
-	case P_REG_PAR_RX_TIME_L:
-		*high_addr = P_REG_PAR_RX_TIME_U;
-		return true;
-	case P_REG_TOTAL_TX_OFFSET_L:
-		*high_addr = P_REG_TOTAL_TX_OFFSET_U;
-		return true;
-	case P_REG_TOTAL_RX_OFFSET_L:
-		*high_addr = P_REG_TOTAL_RX_OFFSET_U;
-		return true;
-	case P_REG_UIX66_10G_40G_L:
-		*high_addr = P_REG_UIX66_10G_40G_U;
-		return true;
-	case P_REG_UIX66_25G_100G_L:
-		*high_addr = P_REG_UIX66_25G_100G_U;
-		return true;
-	case P_REG_TX_CAPTURE_L:
-		*high_addr = P_REG_TX_CAPTURE_U;
-		return true;
-	case P_REG_RX_CAPTURE_L:
-		*high_addr = P_REG_RX_CAPTURE_U;
-		return true;
-	case P_REG_TX_TIMER_INC_PRE_L:
-		*high_addr = P_REG_TX_TIMER_INC_PRE_U;
-		return true;
-	case P_REG_RX_TIMER_INC_PRE_L:
-		*high_addr = P_REG_RX_TIMER_INC_PRE_U;
-		return true;
-	default:
-		return false;
+	if (clk_src == ICE_CLK_SRC_TCX0 &&
+	    clk_freq != ICE_TIME_REF_FREQ_25_000) {
+		dev_warn(ice_hw_to_dev(hw),
+			 "TCX0 only supports 25 MHz frequency\n");
+		return -EINVAL;
 	}
-}
 
-/**
- * ice_is_40b_phy_reg_e82x - Check if this is a 40bit PHY register
- * @low_addr: the low address to check
- * @high_addr: on return, contains the high address of the 40bit value
- *
- * Checks if the provided low address is one of the known 40bit PHY values
- * split into two registers with the lower 8 bits in the low register and the
- * upper 32 bits in the high register. If it is, return the appropriate high
- * register offset to use.
- */
-static bool ice_is_40b_phy_reg_e82x(u16 low_addr, u16 *high_addr)
-{
-	switch (low_addr) {
-	case P_REG_TIMETUS_L:
-		*high_addr = P_REG_TIMETUS_U;
-		return true;
-	case P_REG_PAR_RX_TUS_L:
-		*high_addr = P_REG_PAR_RX_TUS_U;
-		return true;
-	case P_REG_PAR_TX_TUS_L:
-		*high_addr = P_REG_PAR_TX_TUS_U;
-		return true;
-	case P_REG_PCS_RX_TUS_L:
-		*high_addr = P_REG_PCS_RX_TUS_U;
-		return true;
-	case P_REG_PCS_TX_TUS_L:
-		*high_addr = P_REG_PCS_TX_TUS_U;
-		return true;
-	case P_REG_DESK_PAR_RX_TUS_L:
-		*high_addr = P_REG_DESK_PAR_RX_TUS_U;
-		return true;
-	case P_REG_DESK_PAR_TX_TUS_L:
-		*high_addr = P_REG_DESK_PAR_TX_TUS_U;
-		return true;
-	case P_REG_DESK_PCS_RX_TUS_L:
-		*high_addr = P_REG_DESK_PCS_RX_TUS_U;
-		return true;
-	case P_REG_DESK_PCS_TX_TUS_L:
-		*high_addr = P_REG_DESK_PCS_TX_TUS_U;
-		return true;
-	default:
-		return false;
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
 	}
-}
 
-/**
- * ice_read_phy_reg_e82x - Read a PHY register
- * @hw: pointer to the HW struct
- * @port: PHY port to read from
- * @offset: PHY register offset to read
- * @val: on return, the contents read from the PHY
- *
- * Read a PHY register for the given port over the device sideband queue.
- */
-static int
-ice_read_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 offset, u32 *val)
-{
-	struct ice_sbq_msg_input msg = {0};
-	int err;
+	/* Set the frequency */
+	dw9.field.time_ref_freq_sel = clk_freq;
+	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD9, dw9.val);
+	if (err)
+		return err;
 
-	ice_fill_phy_msg_e82x(hw, &msg, port, offset);
-	msg.opcode = ice_sbq_msg_rd;
+	/* Configure the TS PLL feedback divisor */
+	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD19, &dw19.val);
+	if (err)
+		return err;
 
-	err = ice_sbq_rw_reg(hw, &msg);
-	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
-			  err);
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
 		return err;
+
+	if (!bwm_lf.field.plllock_true_lock_cri) {
+		dev_warn(ice_hw_to_dev(hw), "CGU PLL failed to lock\n");
+		return -EBUSY;
 	}
 
-	*val = msg.data;
+	/* Log the current clock configuration */
+	ice_debug(hw, ICE_DBG_PTP, "New CGU configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
+		  dw24.field.ts_pll_enable ? "enabled" : "disabled",
+		  ice_clk_src_str(dw24.field.time_ref_sel),
+		  ice_clk_freq_str(dw9.field.time_ref_freq_sel),
+		  bwm_lf.field.plllock_true_lock_cri ? "locked" : "unlocked");
 
 	return 0;
 }
 
 /**
- * ice_read_64b_phy_reg_e82x - Read a 64bit value from PHY registers
- * @hw: pointer to the HW struct
- * @port: PHY port to read from
- * @low_addr: offset of the lower register to read from
- * @val: on return, the contents of the 64bit value from the PHY registers
+ * ice_init_cgu_e82x - Initialize CGU with settings from firmware
+ * @hw: pointer to the HW structure
  *
- * Reads the two registers associated with a 64bit value and returns it in the
- * val pointer. The offset always specifies the lower register offset to use.
- * The high offset is looked up. This function only operates on registers
- * known to be two parts of a 64bit value.
+ * Initialize the Clock Generation Unit of the E822 device.
  */
-static int
-ice_read_64b_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 low_addr, u64 *val)
+static int ice_init_cgu_e82x(struct ice_hw *hw)
 {
-	u32 low, high;
-	u16 high_addr;
+	struct ice_ts_func_info *ts_info = &hw->func_caps.ts_func_info;
+	union tspll_cntr_bist_settings cntr_bist;
 	int err;
 
-	/* Only operate on registers known to be split into two 32bit
-	 * registers.
-	 */
-	if (!ice_is_64b_phy_reg_e82x(low_addr, &high_addr)) {
-		ice_debug(hw, ICE_DBG_PTP, "Invalid 64b register addr 0x%08x\n",
-			  low_addr);
-		return -EINVAL;
-	}
-
-	err = ice_read_phy_reg_e82x(hw, port, low_addr, &low);
-	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to read from low register 0x%08x\n, err %d",
-			  low_addr, err);
+	err = ice_read_cgu_reg_e82x(hw, TSPLL_CNTR_BIST_SETTINGS,
+				    &cntr_bist.val);
+	if (err)
 		return err;
-	}
 
-	err = ice_read_phy_reg_e82x(hw, port, high_addr, &high);
-	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to read from high register 0x%08x\n, err %d",
-			  high_addr, err);
-		return err;
-	}
+	/* Disable sticky lock detection so lock err reported is accurate */
+	cntr_bist.field.i_plllock_sel_0 = 0;
+	cntr_bist.field.i_plllock_sel_1 = 0;
 
-	*val = (u64)high << 32 | low;
+	err = ice_write_cgu_reg_e82x(hw, TSPLL_CNTR_BIST_SETTINGS,
+				     cntr_bist.val);
+	if (err)
+		return err;
 
-	return 0;
+	/* Configure the CGU PLL using the parameters from the function
+	 * capabilities.
+	 */
+	return ice_cfg_cgu_pll_e82x(hw, ts_info->time_ref,
+				   (enum ice_clk_src)ts_info->clk_src);
 }
 
 /**
- * ice_write_phy_reg_e82x - Write a PHY register
- * @hw: pointer to the HW struct
- * @port: PHY port to write to
- * @offset: PHY register offset to write
- * @val: The value to write to the register
+ * ice_ptp_tmr_cmd_to_src_reg - Convert to source timer command value
+ * @hw: pointer to HW struct
+ * @cmd: Timer command
  *
- * Write a PHY register for the given port over the device sideband queue.
+ * Returns: the source timer command register value for the given PTP timer
+ * command.
  */
-static int
-ice_write_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 offset, u32 val)
+static u32 ice_ptp_tmr_cmd_to_src_reg(struct ice_hw *hw,
+				      enum ice_ptp_tmr_cmd cmd)
 {
-	struct ice_sbq_msg_input msg = {0};
-	int err;
-
-	ice_fill_phy_msg_e82x(hw, &msg, port, offset);
-	msg.opcode = ice_sbq_msg_wr;
-	msg.data = val;
+	u32 cmd_val, tmr_idx;
 
-	err = ice_sbq_rw_reg(hw, &msg);
-	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
-			  err);
-		return err;
+	switch (cmd) {
+	case ICE_PTP_INIT_TIME:
+		cmd_val = GLTSYN_CMD_INIT_TIME;
+		break;
+	case ICE_PTP_INIT_INCVAL:
+		cmd_val = GLTSYN_CMD_INIT_INCVAL;
+		break;
+	case ICE_PTP_ADJ_TIME:
+		cmd_val = GLTSYN_CMD_ADJ_TIME;
+		break;
+	case ICE_PTP_ADJ_TIME_AT_TIME:
+		cmd_val = GLTSYN_CMD_ADJ_INIT_TIME;
+		break;
+	case ICE_PTP_NOP:
+	case ICE_PTP_READ_TIME:
+		cmd_val = GLTSYN_CMD_READ_TIME;
+		break;
+	default:
+		dev_warn(ice_hw_to_dev(hw),
+			 "Ignoring unrecognized timer command %u\n", cmd);
+		cmd_val = 0;
 	}
 
-	return 0;
+	tmr_idx = ice_get_ptp_src_clock_index(hw);
+
+	return tmr_idx << SEL_CPK_SRC | cmd_val;
 }
 
 /**
- * ice_write_40b_phy_reg_e82x - Write a 40b value to the PHY
- * @hw: pointer to the HW struct
- * @port: port to write to
- * @low_addr: offset of the low register
- * @val: 40b value to write
+ * ice_ptp_tmr_cmd_to_port_reg- Convert to port timer command value
+ * @hw: pointer to HW struct
+ * @cmd: Timer command
  *
- * Write the provided 40b value to the two associated registers by splitting
- * it up into two chunks, the lower 8 bits and the upper 32 bits.
+ * Note that some hardware families use a different command register value for
+ * the PHY ports, while other hardware families use the same register values
+ * as the source timer.
+ *
+ * Returns: the PHY port timer command register value for the given PTP timer
+ * command.
  */
-static int
-ice_write_40b_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 low_addr, u64 val)
+static u32 ice_ptp_tmr_cmd_to_port_reg(struct ice_hw *hw,
+				       enum ice_ptp_tmr_cmd cmd)
 {
-	u32 low, high;
-	u16 high_addr;
-	int err;
+	u32 cmd_val, tmr_idx;
 
-	/* Only operate on registers known to be split into a lower 8 bit
-	 * register and an upper 32 bit register.
+	/* Certain hardware families share the same register values for the
+	 * port register and source timer register.
 	 */
-	if (!ice_is_40b_phy_reg_e82x(low_addr, &high_addr)) {
-		ice_debug(hw, ICE_DBG_PTP, "Invalid 40b register addr 0x%08x\n",
-			  low_addr);
-		return -EINVAL;
+	switch (hw->ptp.phy_model) {
+	case ICE_PHY_E810:
+		return ice_ptp_tmr_cmd_to_src_reg(hw, cmd) & TS_CMD_MASK_E810;
+	default:
+		break;
 	}
 
-	low = (u32)(val & P_REG_40B_LOW_M);
-	high = (u32)(val >> P_REG_40B_HIGH_S);
-
-	err = ice_write_phy_reg_e82x(hw, port, low_addr, low);
-	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to write to low register 0x%08x\n, err %d",
-			  low_addr, err);
-		return err;
+	switch (cmd) {
+	case ICE_PTP_INIT_TIME:
+		cmd_val = PHY_CMD_INIT_TIME;
+		break;
+	case ICE_PTP_INIT_INCVAL:
+		cmd_val = PHY_CMD_INIT_INCVAL;
+		break;
+	case ICE_PTP_ADJ_TIME:
+		cmd_val = PHY_CMD_ADJ_TIME;
+		break;
+	case ICE_PTP_ADJ_TIME_AT_TIME:
+		cmd_val = PHY_CMD_ADJ_TIME_AT_TIME;
+		break;
+	case ICE_PTP_READ_TIME:
+		cmd_val = PHY_CMD_READ_TIME;
+		break;
+	case ICE_PTP_NOP:
+		cmd_val = 0;
+		break;
+	default:
+		dev_warn(ice_hw_to_dev(hw),
+			 "Ignoring unrecognized timer command %u\n", cmd);
+		cmd_val = 0;
 	}
 
-	err = ice_write_phy_reg_e82x(hw, port, high_addr, high);
-	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to write to high register 0x%08x\n, err %d",
-			  high_addr, err);
-		return err;
-	}
+	tmr_idx = ice_get_ptp_src_clock_index(hw);
 
-	return 0;
+	return tmr_idx << SEL_PHY_SRC | cmd_val;
 }
 
 /**
- * ice_write_64b_phy_reg_e82x - Write a 64bit value to PHY registers
- * @hw: pointer to the HW struct
- * @port: PHY port to read from
- * @low_addr: offset of the lower register to read from
- * @val: the contents of the 64bit value to write to PHY
+ * ice_ptp_src_cmd - Prepare source timer for a timer command
+ * @hw: pointer to HW structure
+ * @cmd: Timer command
  *
- * Write the 64bit value to the two associated 32bit PHY registers. The offset
- * is always specified as the lower register, and the high address is looked
- * up. This function only operates on registers known to be two parts of
- * a 64bit value.
+ * Prepare the source timer for an upcoming timer sync command.
  */
-static int
-ice_write_64b_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 low_addr, u64 val)
+void ice_ptp_src_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
 {
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
+	u32 cmd_val = ice_ptp_tmr_cmd_to_src_reg(hw, cmd);
 
-	err = ice_write_phy_reg_e82x(hw, port, low_addr, low);
-	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to write to low register 0x%08x\n, err %d",
-			  low_addr, err);
-		return err;
-	}
+	wr32(hw, GLTSYN_CMD, cmd_val);
+}
 
-	err = ice_write_phy_reg_e82x(hw, port, high_addr, high);
-	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to write to high register 0x%08x\n, err %d",
-			  high_addr, err);
-		return err;
-	}
+/**
+ * ice_ptp_exec_tmr_cmd - Execute all prepared timer commands
+ * @hw: pointer to HW struct
+ *
+ * Write the SYNC_EXEC_CMD bit to the GLTSYN_CMD_SYNC register, and flush the
+ * write immediately. This triggers the hardware to begin executing all of the
+ * source and PHY timer commands synchronously.
+ */
+static void ice_ptp_exec_tmr_cmd(struct ice_hw *hw)
+{
+	struct ice_pf *pf = container_of(hw, struct ice_pf, hw);
 
-	return 0;
+	guard(spinlock)(&pf->adapter->ptp_gltsyn_time_lock);
+	wr32(hw, GLTSYN_CMD_SYNC, SYNC_EXEC_CMD);
+	ice_flush(hw);
 }
 
+/* E822 family functions
+ *
+ * The following functions operate on the E822 family of devices.
+ */
+
 /**
- * ice_fill_quad_msg_e82x - Fill message data for quad register access
+ * ice_fill_phy_msg_e82x - Fill message data for a PHY register access
  * @hw: pointer to the HW struct
  * @msg: the PHY message buffer to fill in
- * @quad: the quad to access
+ * @port: the port to access
  * @offset: the register offset
- *
- * Fill a message buffer for accessing a register in a quad shared between
- * multiple PHYs.
  */
-static int ice_fill_quad_msg_e82x(struct ice_hw *hw,
-				  struct ice_sbq_msg_input *msg, u8 quad,
+static void ice_fill_phy_msg_e82x(struct ice_hw *hw,
+				  struct ice_sbq_msg_input *msg, u8 port,
 				  u16 offset)
 {
-	u32 addr;
+	int phy_port, phy, quadtype;
 
-	if (quad >= ICE_GET_QUAD_NUM(hw->ptp.num_lports))
-		return -EINVAL;
+	phy_port = port % hw->ptp.ports_per_phy;
+	phy = port / hw->ptp.ports_per_phy;
+	quadtype = ICE_GET_QUAD_NUM(port) %
+		   ICE_GET_QUAD_NUM(hw->ptp.ports_per_phy);
 
-	msg->dest_dev = rmn_0;
+	if (quadtype == 0) {
+		msg->msg_addr_low = P_Q0_L(P_0_BASE + offset, phy_port);
+		msg->msg_addr_high = P_Q0_H(P_0_BASE + offset, phy_port);
+	} else {
+		msg->msg_addr_low = P_Q1_L(P_4_BASE + offset, phy_port);
+		msg->msg_addr_high = P_Q1_H(P_4_BASE + offset, phy_port);
+	}
 
-	if (!(quad % ICE_GET_QUAD_NUM(hw->ptp.ports_per_phy)))
-		addr = Q_0_BASE + offset;
+	if (phy == 0)
+		msg->dest_dev = rmn_0;
+	else if (phy == 1)
+		msg->dest_dev = rmn_1;
 	else
-		addr = Q_1_BASE + offset;
-
-	msg->msg_addr_low = lower_16_bits(addr);
-	msg->msg_addr_high = upper_16_bits(addr);
-
-	return 0;
+		msg->dest_dev = rmn_2;
 }
 
 /**
- * ice_read_quad_reg_e82x - Read a PHY quad register
- * @hw: pointer to the HW struct
- * @quad: quad to read from
- * @offset: quad register offset to read
- * @val: on return, the contents read from the quad
+ * ice_is_64b_phy_reg_e82x - Check if this is a 64bit PHY register
+ * @low_addr: the low address to check
+ * @high_addr: on return, contains the high address of the 64bit register
  *
- * Read a quad register over the device sideband queue. Quad registers are
- * shared between multiple PHYs.
+ * Checks if the provided low address is one of the known 64bit PHY values
+ * represented as two 32bit registers. If it is, return the appropriate high
+ * register offset to use.
  */
-int
-ice_read_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 *val)
+static bool ice_is_64b_phy_reg_e82x(u16 low_addr, u16 *high_addr)
 {
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
+	switch (low_addr) {
+	case P_REG_PAR_PCS_TX_OFFSET_L:
+		*high_addr = P_REG_PAR_PCS_TX_OFFSET_U;
+		return true;
+	case P_REG_PAR_PCS_RX_OFFSET_L:
+		*high_addr = P_REG_PAR_PCS_RX_OFFSET_U;
+		return true;
+	case P_REG_PAR_TX_TIME_L:
+		*high_addr = P_REG_PAR_TX_TIME_U;
+		return true;
+	case P_REG_PAR_RX_TIME_L:
+		*high_addr = P_REG_PAR_RX_TIME_U;
+		return true;
+	case P_REG_TOTAL_TX_OFFSET_L:
+		*high_addr = P_REG_TOTAL_TX_OFFSET_U;
+		return true;
+	case P_REG_TOTAL_RX_OFFSET_L:
+		*high_addr = P_REG_TOTAL_RX_OFFSET_U;
+		return true;
+	case P_REG_UIX66_10G_40G_L:
+		*high_addr = P_REG_UIX66_10G_40G_U;
+		return true;
+	case P_REG_UIX66_25G_100G_L:
+		*high_addr = P_REG_UIX66_25G_100G_U;
+		return true;
+	case P_REG_TX_CAPTURE_L:
+		*high_addr = P_REG_TX_CAPTURE_U;
+		return true;
+	case P_REG_RX_CAPTURE_L:
+		*high_addr = P_REG_RX_CAPTURE_U;
+		return true;
+	case P_REG_TX_TIMER_INC_PRE_L:
+		*high_addr = P_REG_TX_TIMER_INC_PRE_U;
+		return true;
+	case P_REG_RX_TIMER_INC_PRE_L:
+		*high_addr = P_REG_RX_TIMER_INC_PRE_U;
+		return true;
+	default:
+		return false;
 	}
+}
 
-	*val = msg.data;
-
-	return 0;
+/**
+ * ice_is_40b_phy_reg_e82x - Check if this is a 40bit PHY register
+ * @low_addr: the low address to check
+ * @high_addr: on return, contains the high address of the 40bit value
+ *
+ * Checks if the provided low address is one of the known 40bit PHY values
+ * split into two registers with the lower 8 bits in the low register and the
+ * upper 32 bits in the high register. If it is, return the appropriate high
+ * register offset to use.
+ */
+static bool ice_is_40b_phy_reg_e82x(u16 low_addr, u16 *high_addr)
+{
+	switch (low_addr) {
+	case P_REG_TIMETUS_L:
+		*high_addr = P_REG_TIMETUS_U;
+		return true;
+	case P_REG_PAR_RX_TUS_L:
+		*high_addr = P_REG_PAR_RX_TUS_U;
+		return true;
+	case P_REG_PAR_TX_TUS_L:
+		*high_addr = P_REG_PAR_TX_TUS_U;
+		return true;
+	case P_REG_PCS_RX_TUS_L:
+		*high_addr = P_REG_PCS_RX_TUS_U;
+		return true;
+	case P_REG_PCS_TX_TUS_L:
+		*high_addr = P_REG_PCS_TX_TUS_U;
+		return true;
+	case P_REG_DESK_PAR_RX_TUS_L:
+		*high_addr = P_REG_DESK_PAR_RX_TUS_U;
+		return true;
+	case P_REG_DESK_PAR_TX_TUS_L:
+		*high_addr = P_REG_DESK_PAR_TX_TUS_U;
+		return true;
+	case P_REG_DESK_PCS_RX_TUS_L:
+		*high_addr = P_REG_DESK_PCS_RX_TUS_U;
+		return true;
+	case P_REG_DESK_PCS_TX_TUS_L:
+		*high_addr = P_REG_DESK_PCS_TX_TUS_U;
+		return true;
+	default:
+		return false;
+	}
 }
 
 /**
- * ice_write_quad_reg_e82x - Write a PHY quad register
+ * ice_read_phy_reg_e82x - Read a PHY register
  * @hw: pointer to the HW struct
- * @quad: quad to write to
- * @offset: quad register offset to write
- * @val: The value to write to the register
+ * @port: PHY port to read from
+ * @offset: PHY register offset to read
+ * @val: on return, the contents read from the PHY
  *
- * Write a quad register over the device sideband queue. Quad registers are
- * shared between multiple PHYs.
+ * Read a PHY register for the given port over the device sideband queue.
  */
-int
-ice_write_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 val)
+static int
+ice_read_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 offset, u32 *val)
 {
-	struct ice_sbq_msg_input msg = {0};
-	int err;
-
-	err = ice_fill_quad_msg_e82x(hw, &msg, quad, offset);
-	if (err)
-		return err;
+	struct ice_sbq_msg_input msg = {0};
+	int err;
 
-	msg.opcode = ice_sbq_msg_wr;
-	msg.data = val;
+	ice_fill_phy_msg_e82x(hw, &msg, port, offset);
+	msg.opcode = ice_sbq_msg_rd;
 
 	err = ice_sbq_rw_reg(hw, &msg);
 	if (err) {
@@ -788,85 +798,81 @@ ice_write_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 val)
 		return err;
 	}
 
+	*val = msg.data;
+
 	return 0;
 }
 
 /**
- * ice_read_phy_tstamp_e82x - Read a PHY timestamp out of the quad block
+ * ice_read_64b_phy_reg_e82x - Read a 64bit value from PHY registers
  * @hw: pointer to the HW struct
- * @quad: the quad to read from
- * @idx: the timestamp index to read
- * @tstamp: on return, the 40bit timestamp value
+ * @port: PHY port to read from
+ * @low_addr: offset of the lower register to read from
+ * @val: on return, the contents of the 64bit value from the PHY registers
  *
- * Read a 40bit timestamp value out of the two associated registers in the
- * quad memory block that is shared between the internal PHYs of the E822
- * family of devices.
+ * Reads the two registers associated with a 64bit value and returns it in the
+ * val pointer. The offset always specifies the lower register offset to use.
+ * The high offset is looked up. This function only operates on registers
+ * known to be two parts of a 64bit value.
  */
 static int
-ice_read_phy_tstamp_e82x(struct ice_hw *hw, u8 quad, u8 idx, u64 *tstamp)
+ice_read_64b_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 low_addr, u64 *val)
 {
-	u16 lo_addr, hi_addr;
-	u32 lo, hi;
+	u32 low, high;
+	u16 high_addr;
 	int err;
 
-	lo_addr = (u16)TS_L(Q_REG_TX_MEMORY_BANK_START, idx);
-	hi_addr = (u16)TS_H(Q_REG_TX_MEMORY_BANK_START, idx);
+	/* Only operate on registers known to be split into two 32bit
+	 * registers.
+	 */
+	if (!ice_is_64b_phy_reg_e82x(low_addr, &high_addr)) {
+		ice_debug(hw, ICE_DBG_PTP, "Invalid 64b register addr 0x%08x\n",
+			  low_addr);
+		return -EINVAL;
+	}
 
-	err = ice_read_quad_reg_e82x(hw, quad, lo_addr, &lo);
+	err = ice_read_phy_reg_e82x(hw, port, low_addr, &low);
 	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to read low PTP timestamp register, err %d\n",
-			  err);
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read from low register 0x%08x\n, err %d",
+			  low_addr, err);
 		return err;
 	}
 
-	err = ice_read_quad_reg_e82x(hw, quad, hi_addr, &hi);
+	err = ice_read_phy_reg_e82x(hw, port, high_addr, &high);
 	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to read high PTP timestamp register, err %d\n",
-			  err);
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read from high register 0x%08x\n, err %d",
+			  high_addr, err);
 		return err;
 	}
 
-	/* For E822 based internal PHYs, the timestamp is reported with the
-	 * lower 8 bits in the low register, and the upper 32 bits in the high
-	 * register.
-	 */
-	*tstamp = ((u64)hi) << TS_PHY_HIGH_S | ((u64)lo & TS_PHY_LOW_M);
+	*val = (u64)high << 32 | low;
 
 	return 0;
 }
 
 /**
- * ice_clear_phy_tstamp_e82x - Clear a timestamp from the quad block
+ * ice_write_phy_reg_e82x - Write a PHY register
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
+ * @port: PHY port to write to
+ * @offset: PHY register offset to write
+ * @val: The value to write to the register
  *
- * This function should only be called on an idx whose bit is set according to
- * ice_get_phy_tx_tstamp_ready().
+ * Write a PHY register for the given port over the device sideband queue.
  */
 static int
-ice_clear_phy_tstamp_e82x(struct ice_hw *hw, u8 quad, u8 idx)
+ice_write_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 offset, u32 val)
 {
-	u64 unused_tstamp;
+	struct ice_sbq_msg_input msg = {0};
 	int err;
 
-	err = ice_read_phy_tstamp_e82x(hw, quad, idx, &unused_tstamp);
+	ice_fill_phy_msg_e82x(hw, &msg, port, offset);
+	msg.opcode = ice_sbq_msg_wr;
+	msg.data = val;
+
+	err = ice_sbq_rw_reg(hw, &msg);
 	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to read the timestamp register for quad %u, idx %u, err %d\n",
-			  quad, idx, err);
+		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
+			  err);
 		return err;
 	}
 
@@ -874,312 +880,303 @@ ice_clear_phy_tstamp_e82x(struct ice_hw *hw, u8 quad, u8 idx)
 }
 
 /**
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
+ * ice_write_40b_phy_reg_e82x - Write a 40b value to the PHY
  * @hw: pointer to the HW struct
- * @addr: Register address to read
- * @val: storage for register value read
+ * @port: port to write to
+ * @low_addr: offset of the low register
+ * @val: 40b value to write
  *
- * Read the contents of a register of the Clock Generation Unit. Only
- * applicable to E822 devices.
+ * Write the provided 40b value to the two associated registers by splitting
+ * it up into two chunks, the lower 8 bits and the upper 32 bits.
  */
 static int
-ice_read_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 *val)
+ice_write_40b_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 low_addr, u64 val)
 {
-	struct ice_sbq_msg_input cgu_msg;
+	u32 low, high;
+	u16 high_addr;
 	int err;
 
-	cgu_msg.opcode = ice_sbq_msg_rd;
-	cgu_msg.dest_dev = cgu;
-	cgu_msg.msg_addr_low = addr;
-	cgu_msg.msg_addr_high = 0x0;
+	/* Only operate on registers known to be split into a lower 8 bit
+	 * register and an upper 32 bit register.
+	 */
+	if (!ice_is_40b_phy_reg_e82x(low_addr, &high_addr)) {
+		ice_debug(hw, ICE_DBG_PTP, "Invalid 40b register addr 0x%08x\n",
+			  low_addr);
+		return -EINVAL;
+	}
+	low = FIELD_GET(P_REG_40B_LOW_M, val);
+	high = FIELD_GET(P_REG_40B_HIGH_M, val);
 
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
+ * ice_write_64b_phy_reg_e82x - Write a 64bit value to PHY registers
  * @hw: pointer to the HW struct
- * @addr: Register address to write
- * @val: value to write into the register
+ * @port: PHY port to read from
+ * @low_addr: offset of the lower register to read from
+ * @val: the contents of the 64bit value to write to PHY
  *
- * Write the specified value to a register of the Clock Generation Unit. Only
- * applicable to E822 devices.
+ * Write the 64bit value to the two associated 32bit PHY registers. The offset
+ * is always specified as the lower register, and the high address is looked
+ * up. This function only operates on registers known to be two parts of
+ * a 64bit value.
  */
 static int
-ice_write_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 val)
+ice_write_64b_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 low_addr, u64 val)
 {
-	struct ice_sbq_msg_input cgu_msg;
+	u32 low, high;
+	u16 high_addr;
 	int err;
 
-	cgu_msg.opcode = ice_sbq_msg_wr;
-	cgu_msg.dest_dev = cgu;
-	cgu_msg.msg_addr_low = addr;
-	cgu_msg.msg_addr_high = 0x0;
-	cgu_msg.data = val;
+	/* Only operate on registers known to be split into two 32bit
+	 * registers.
+	 */
+	if (!ice_is_64b_phy_reg_e82x(low_addr, &high_addr)) {
+		ice_debug(hw, ICE_DBG_PTP, "Invalid 64b register addr 0x%08x\n",
+			  low_addr);
+		return -EINVAL;
+	}
 
-	err = ice_sbq_rw_reg(hw, &cgu_msg);
+	low = lower_32_bits(val);
+	high = upper_32_bits(val);
+
+	err = ice_write_phy_reg_e82x(hw, port, low_addr, low);
 	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to write CGU register 0x%04x, err %d\n",
-			  addr, err);
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write to low register 0x%08x\n, err %d",
+			  low_addr, err);
 		return err;
 	}
 
-	return err;
-}
-
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
+	err = ice_write_phy_reg_e82x(hw, port, high_addr, high);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write to high register 0x%08x\n, err %d",
+			  high_addr, err);
+		return err;
 	}
+
+	return 0;
 }
 
 /**
- * ice_clk_src_str - Convert time_ref_src to string
- * @clk_src: Clock source
+ * ice_fill_quad_msg_e82x - Fill message data for quad register access
+ * @hw: pointer to the HW struct
+ * @msg: the PHY message buffer to fill in
+ * @quad: the quad to access
+ * @offset: the register offset
  *
- * Convert the specified clock source to its string name.
+ * Fill a message buffer for accessing a register in a quad shared between
+ * multiple PHYs.
  */
-static const char *ice_clk_src_str(u8 clk_src)
+static int ice_fill_quad_msg_e82x(struct ice_hw *hw,
+				  struct ice_sbq_msg_input *msg, u8 quad,
+				  u16 offset)
 {
-	switch ((enum ice_clk_src)clk_src) {
-	case ICE_CLK_SRC_TCX0:
-		return "TCX0";
-	case ICE_CLK_SRC_TIME_REF:
-		return "TIME_REF";
-	default:
-		return "Unknown";
-	}
+	u32 addr;
+
+	if (quad >= ICE_GET_QUAD_NUM(hw->ptp.num_lports))
+		return -EINVAL;
+
+	msg->dest_dev = rmn_0;
+
+	if (!(quad % ICE_GET_QUAD_NUM(hw->ptp.ports_per_phy)))
+		addr = Q_0_BASE + offset;
+	else
+		addr = Q_1_BASE + offset;
+
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
+	*tstamp = FIELD_PREP(TS_PHY_HIGH_M, hi) | FIELD_PREP(TS_PHY_LOW_M, lo);
 
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
+	ice_write_quad_reg_e82x(hw, quad, Q_REG_TS_CTRL, ~Q_REG_TS_CTRL_M);
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
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 5223e17d2806..48c0bc179110 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -377,8 +377,8 @@ int ice_cgu_get_output_pin_state_caps(struct ice_hw *hw, u8 pin_id,
 #define P_REG_TIMETUS_L			0x410
 #define P_REG_TIMETUS_U			0x414
 
-#define P_REG_40B_LOW_M			0xFF
-#define P_REG_40B_HIGH_S		8
+#define P_REG_40B_LOW_M			GENMASK(7, 0)
+#define P_REG_40B_HIGH_M		GENMASK(39, 8)
 
 /* PHY window length registers */
 #define P_REG_WL			0x40C
-- 
2.43.0

