Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A04538A892A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Apr 2024 18:45:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D20B40493;
	Wed, 17 Apr 2024 16:45:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tb39eegcdZb5; Wed, 17 Apr 2024 16:45:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8DAC8407F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713372303;
	bh=Ko9GLLABgk/7epigU4Qx16HfEZ45t5ofE4lAbhNl3dg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HGp5BU2ppOK1OZ58XJ1e1awFPzVrrPpmhZWfCzlP0hZrjiYtivSOcW2YI5AHoq3cL
	 iNEEJAiCo074KKaBTBS2QKQ24atAjkO2Fu96WObk9I0hQqIa++Gs5wLG128FZuzmE5
	 3ahP8vqB4LtHEieFjWTjxjnZC2OcXeD02AhNWbsHGYEhSa+TPFo096TWill2OZW5NF
	 TxDM/vbhLaRuJJDRcKQO+k6e5+WIf4rSdx8XDWDpQF0MHtYRtICKPwU1kADsCUZwCY
	 w0TCiD7g7WaxBLFJTEjJUgO5YifY7tO+B1ueC+up9ObOh1+qTDnIwh8SMp8mA9vodm
	 Tbw6ko1pA76Dg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8DAC8407F3;
	Wed, 17 Apr 2024 16:45:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 67C181BF29F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 16:44:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 61861403B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 16:44:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uPnw_S_B1jvz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Apr 2024 16:44:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7985940114
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7985940114
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7985940114
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 16:44:56 +0000 (UTC)
X-CSE-ConnectionGUID: dzAyp4VhQAGz75CPRm15XA==
X-CSE-MsgGUID: sn7UXgxdQNSrLZ9KVTVaRQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="12660685"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="12660685"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 09:44:57 -0700
X-CSE-ConnectionGUID: IB4NPy3DTEWJOzvAdDcLDg==
X-CSE-MsgGUID: nUKg8cRzT6mbr9TGHtmShw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="27470629"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orviesa004.jf.intel.com with ESMTP; 17 Apr 2024 09:44:54 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 17 Apr 2024 18:39:06 +0200
Message-ID: <20240417164410.850175-16-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240417164410.850175-14-karol.kolacinski@intel.com>
References: <20240417164410.850175-14-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713372297; x=1744908297;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Cz7GbfGhtGgOmqWCi0NSWgVYirZaxC9xew2LDvmmaVA=;
 b=QlW1/PhfmoZE5AFJ5G13CeQBpQKjtq4DxXAGR2TT+IsDuqEfEAwuwN78
 gDng70zcUijcyUYq9DbKxHOZy+/QlQ3R9RPWc8ljGUeu8x4pBq65ROGTm
 SGQnTWOoyeofJg3bbdTha5kW5dE2/CZkw4B9VSGdYdYGgjzhDvWS4aA+e
 O9B8iIUw4EEyZgTQdkVWDSe5T1U/Azeqggpy32XPOPEPfUh0GxvlH0YPq
 c8F+9IhdiclKIwduWswvRDVMwoXqDWFYBFfg38AoZCWdzvBkvt0e8OipZ
 LcbCV4APvdD2rDgFdf0G/qETyAqRUdRNYEhmRNqvYWtKYLfhRUbC6aszR
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QlW1/Phf
Subject: [Intel-wired-lan] [PATCH v9 iwl-next 02/12] ice: Introduce helper
 to get tmr_cmd_reg values
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
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

Multiple places in the driver code need to convert enum ice_ptp_tmr_cmd
values into register bits for both the main timer and the PHY port
timers. The main MAC register has one bit scheme for timer commands,
while the PHY commands use a different scheme.

The E810 and E830 devices use the same scheme for port commands as used
for the main timer. However, E822 and ETH56G hardware has a separate
scheme used by the PHY.

Introduce helper functions to convert the timer command enumeration into
the register values, reducing some code duplication, and making it
easier to later refactor the individual port write commands.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
V4 -> V5: Changed operation sequence to shift tmr_idx instead of cmd_val

 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 140 ++++++++++++--------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   2 +-
 2 files changed, 89 insertions(+), 53 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 22fca17a5a3c..43aa83bc54c2 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -227,40 +227,114 @@ static u64 ice_ptp_read_src_incval(struct ice_hw *hw)
 }
 
 /**
- * ice_ptp_src_cmd - Prepare source timer for a timer command
- * @hw: pointer to HW structure
+ * ice_ptp_tmr_cmd_to_src_reg - Convert to source timer command value
+ * @hw: pointer to HW struct
  * @cmd: Timer command
  *
- * Prepare the source timer for an upcoming timer sync command.
+ * Return: the source timer command register value for the given PTP timer
+ * command.
  */
-void ice_ptp_src_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
+static u32 ice_ptp_tmr_cmd_to_src_reg(struct ice_hw *hw,
+				      enum ice_ptp_tmr_cmd cmd)
 {
-	u32 cmd_val;
-	u8 tmr_idx;
+	u32 cmd_val, tmr_idx;
+
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
+	}
 
 	tmr_idx = ice_get_ptp_src_clock_index(hw);
-	cmd_val = tmr_idx << SEL_CPK_SRC;
+
+	return tmr_idx << SEL_CPK_SRC | cmd_val;
+}
+
+/**
+ * ice_ptp_tmr_cmd_to_port_reg- Convert to port timer command value
+ * @hw: pointer to HW struct
+ * @cmd: Timer command
+ *
+ * Note that some hardware families use a different command register value for
+ * the PHY ports, while other hardware families use the same register values
+ * as the source timer.
+ *
+ * Return: the PHY port timer command register value for the given PTP timer
+ * command.
+ */
+static u32 ice_ptp_tmr_cmd_to_port_reg(struct ice_hw *hw,
+				       enum ice_ptp_tmr_cmd cmd)
+{
+	u32 cmd_val, tmr_idx;
+
+	/* Certain hardware families share the same register values for the
+	 * port register and source timer register.
+	 */
+	switch (hw->ptp.phy_model) {
+	case ICE_PHY_E810:
+		return ice_ptp_tmr_cmd_to_src_reg(hw, cmd) & TS_CMD_MASK_E810;
+	default:
+		break;
+	}
 
 	switch (cmd) {
 	case ICE_PTP_INIT_TIME:
-		cmd_val |= GLTSYN_CMD_INIT_TIME;
+		cmd_val = PHY_CMD_INIT_TIME;
 		break;
 	case ICE_PTP_INIT_INCVAL:
-		cmd_val |= GLTSYN_CMD_INIT_INCVAL;
+		cmd_val = PHY_CMD_INIT_INCVAL;
 		break;
 	case ICE_PTP_ADJ_TIME:
-		cmd_val |= GLTSYN_CMD_ADJ_TIME;
+		cmd_val = PHY_CMD_ADJ_TIME;
 		break;
 	case ICE_PTP_ADJ_TIME_AT_TIME:
-		cmd_val |= GLTSYN_CMD_ADJ_INIT_TIME;
+		cmd_val = PHY_CMD_ADJ_TIME_AT_TIME;
 		break;
 	case ICE_PTP_READ_TIME:
-		cmd_val |= GLTSYN_CMD_READ_TIME;
+		cmd_val = PHY_CMD_READ_TIME;
 		break;
 	case ICE_PTP_NOP:
+		cmd_val = 0;
 		break;
+	default:
+		dev_warn(ice_hw_to_dev(hw),
+			 "Ignoring unrecognized timer command %u\n", cmd);
+		cmd_val = 0;
 	}
 
+	tmr_idx = ice_get_ptp_src_clock_index(hw);
+
+	return tmr_idx << SEL_PHY_SRC | cmd_val;
+}
+
+/**
+ * ice_ptp_src_cmd - Prepare source timer for a timer command
+ * @hw: pointer to HW structure
+ * @cmd: Timer command
+ *
+ * Prepare the source timer for an upcoming timer sync command.
+ */
+void ice_ptp_src_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
+{
+	u32 cmd_val = ice_ptp_tmr_cmd_to_src_reg(hw, cmd);
+
 	wr32(hw, GLTSYN_CMD, cmd_val);
 }
 
@@ -3029,47 +3103,9 @@ static int ice_ptp_prep_phy_incval_e810(struct ice_hw *hw, u64 incval)
  */
 static int ice_ptp_port_cmd_e810(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
 {
-	u32 cmd_val, val;
-	int err;
+	u32 val = ice_ptp_tmr_cmd_to_port_reg(hw, cmd);
 
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
-	case ICE_PTP_READ_TIME:
-		cmd_val = GLTSYN_CMD_READ_TIME;
-		break;
-	case ICE_PTP_ADJ_TIME_AT_TIME:
-		cmd_val = GLTSYN_CMD_ADJ_INIT_TIME;
-		break;
-	case ICE_PTP_NOP:
-		return 0;
-	}
-
-	/* Read, modify, write */
-	err = ice_read_phy_reg_e810(hw, ETH_GLTSYN_CMD, &val);
-	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to read GLTSYN_CMD, err %d\n", err);
-		return err;
-	}
-
-	/* Modify necessary bits only and perform write */
-	val &= ~TS_CMD_MASK_E810;
-	val |= cmd_val;
-
-	err = ice_write_phy_reg_e810(hw, ETH_GLTSYN_CMD, val);
-	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to write back GLTSYN_CMD, err %d\n", err);
-		return err;
-	}
-
-	return 0;
+	return ice_write_phy_reg_e810(hw, E810_ETH_GLTSYN_CMD, val);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 3dce09af0d78..6246de3bacf3 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -485,7 +485,7 @@ int ice_cgu_get_output_pin_state_caps(struct ice_hw *hw, u8 pin_id,
 #define ETH_GLTSYN_SHADJ_H(_i)		(0x0300037C + ((_i) * 32))
 
 /* E810 timer command register */
-#define ETH_GLTSYN_CMD			0x03000344
+#define E810_ETH_GLTSYN_CMD		0x03000344
 
 /* Source timer incval macros */
 #define INCVAL_HIGH_M			0xFF
-- 
2.43.0

