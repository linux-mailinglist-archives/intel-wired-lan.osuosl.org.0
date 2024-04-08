Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 607C689BDE6
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Apr 2024 13:18:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 02BE640250;
	Mon,  8 Apr 2024 11:18:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lIfiTRpUCsPV; Mon,  8 Apr 2024 11:18:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A40EC40174
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712575108;
	bh=l+gjiQjrIrqWYB4ECB/MIi6OuEC5vZh5AWndwFED0L8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZTcFfgU1Eq7KdLINQ0Md3umTp1dqz7Yr3OW8E6G47oKvGMMpml7eqf0B00lP0vNKZ
	 Xnw8zujbVNW/MKH9udWy55OQ/InuSo6+GEwAnrJOpXJ9IKbPPzvD16R2iU5LCwf78K
	 bNHKb16LgNi+vi0CMuDa9L2iufwweseJSWNpn+sVIrInPdCZJCZ3EHYljHaIeu+7Wj
	 UQZQm+Yi9skdzXDqmo8lllEZB17Azv74u0GKTgJsHinbpwPhi3d/IjdoUYPseQx9yV
	 RQ5YppcF/1B99rQ3MSjL7stEIrXuY2NfvmFpZzcHW9rAFqQYb3qCa3iva44TKs+rul
	 GRwJF0HstJM9Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A40EC40174;
	Mon,  8 Apr 2024 11:18:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 79BE71BF340
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 11:18:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6694E81B6D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 11:18:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SSZBrSNzQTMV for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Apr 2024 11:18:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5E6F681B3E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E6F681B3E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5E6F681B3E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 11:18:23 +0000 (UTC)
X-CSE-ConnectionGUID: NWoFShx6Qd2c2ghVWtYDOg==
X-CSE-MsgGUID: Pl7APKNLSCug1XKMhLSe9Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="18988531"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="18988531"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 04:18:23 -0700
X-CSE-ConnectionGUID: WDiNjY3kSb2j7sQEB2OScA==
X-CSE-MsgGUID: /XStnOnxR2SVDfKslhd2VQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="19904886"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmviesa009.fm.intel.com with ESMTP; 08 Apr 2024 04:18:21 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  8 Apr 2024 13:07:23 +0200
Message-ID: <20240408111814.404583-16-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240408111814.404583-14-karol.kolacinski@intel.com>
References: <20240408111814.404583-14-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712575103; x=1744111103;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4Dop1DFtQSwYxf+DH46JK4MDp6Ech0Bp16Hl5e8zTP0=;
 b=YUHVe/7adPNXaKe4/9Hd3dCgLOR/33LzGADnxn3Uc+HE9ZTFCuauFRNF
 /E4sD6p3gUO4ZFXX+KQWe3Mo5jXt/3EhhksqA/NywI6FHsEbQfGbG4iUt
 UsHZWNJv77a1rZZc9wmwIM+SlAdgGq7e9RBG3NAKhUEdNabQlkrVLJQRL
 NEg/9LRrZyIt/OCpgQwtE0eK8s7bJ/NDDjCFap/QJTLBFrB+7+oJZ1eqs
 pGzFTmOYkS+8SX9ptWq/nQCQLTKPID/QwNmhfJtKYh3QdEj6fYxwfRYvX
 R/cBsv692Z/TIGz+ZTOvRudR1RYgtSmZXiIgnhre/oh9HJ7zJa8Ij9Glm
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YUHVe/7a
Subject: [Intel-wired-lan] [PATCH v7 iwl-next 02/12] ice: Introduce helper
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
index e86ca6cada79..0d8e051ff93b 100644
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
+ * Returns: the source timer command register value for the given PTP timer
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
+ * Returns: the PHY port timer command register value for the given PTP timer
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
 
@@ -3023,47 +3097,9 @@ static int ice_ptp_prep_phy_incval_e810(struct ice_hw *hw, u64 incval)
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

