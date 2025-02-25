Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D190A442E6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2025 15:36:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3200040CFE;
	Tue, 25 Feb 2025 14:36:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bhGTXS_XTn90; Tue, 25 Feb 2025 14:36:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52AEF40CF6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740494169;
	bh=/DJMQVyYUlG2wstv/ghUI8bqMbPDKynVHDg3Fya5l/o=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=50BBF6Ao+liMj9xcYOXVI0v6KNL2/5SCHZtJbeIOyTLd2Yj+25s/iM3IbKOjvYC7+
	 xUlBBJxPJrDZR0C1JdUH0OJkvZVkLvH8a+8MGlUetPLhLb34XbX+mQz6OnEVsw5//v
	 2JJM41J35a23dDjnCFtowXuPm7mIMpK99Anr4oiY5GwJ71YlhOFLLdrRqQiOWIDnFF
	 69Pa5bljthaJ7zVoDPCKWhWyinHcLNlcOfhYe02s6W8+isWVSC929ZxRVngr7ZJouj
	 CDB/pCXehYU9kWYVhiwc3fxV6qtUYIgMWZgF48PqYa4phKXBcbn56+lq/ZnSkGkJSB
	 9VHfUvIq6gdyA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 52AEF40CF6;
	Tue, 25 Feb 2025 14:36:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 82C352292
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 14:36:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6711E40CDA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 14:36:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UDzgn7ZzHDgy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Feb 2025 14:36:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5A31340C11
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A31340C11
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5A31340C11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 14:36:06 +0000 (UTC)
X-CSE-ConnectionGUID: jt8MNxsoSCemByqFGc07wQ==
X-CSE-MsgGUID: 8970D01sSa6Pzw0UgaTARA==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="51932790"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="51932790"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 06:36:06 -0800
X-CSE-ConnectionGUID: DSZ7hP54Sr65H48fKd6QEw==
X-CSE-MsgGUID: y2FhwMBtSr6izevkJMtF9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120513243"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.51])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 06:36:04 -0800
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>
Date: Tue, 25 Feb 2025 16:36:01 +0200
Message-Id: <20250225143601.1173539-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740494166; x=1772030166;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Hhz4WqWAjeaThaR2VMgPc34GnjANHYcYwz3FbvQy/R4=;
 b=WKdO+k0wdP0VRGpZ81ldlkFC704JzOT2C5MBTfTQgTvkMP8qcPm+N8sl
 0jyyXEL2yA8mri/HCmjIDMGcjKitVfFdgi2BDZBKUGRud2paR3IklrZ4b
 E8zTGio/BOFNBLOCiXxBfOGrdWLatKHKyMb6Tn3r9s5tjI65st7W6GMsp
 +OEh1NDh7ymKAdB0+XiGURoFLOrRBeevkECF8vaqAxGnjbuU+vBHeD3sp
 XhcNFQ4eJX3geSp2KU+zsjaVygLP3mTMO3dQr1Pm8MqjSIr9y++jHDjp1
 cQz+WKOkiEa42VwdmZN0eTHmpqAbrqRH1BUo85JhipryLe2DdaImN3wyD
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WKdO+k0w
Subject: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: change k1
 configuration on MTP and later platforms
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

Starting from Meteor Lake, the Kumeran interface between the integrated
MAC and the I219 PHY works at a different frequency. This caused sporadic
MDI errors when accessing the PHY, and in rare circumstances could lead
to packet corruption.

To overcome this, the driver introduces minor changes to the Kumeran idle
state (K1) parameters during device initialization. Hardware reset
reverts this configuration, therefore it needs to be applied in a few
places.

Fixes: cc23f4f0b6b9 ("e1000e: Add support for Meteor Lake")
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 78 +++++++++++++++++++--
 drivers/net/ethernet/intel/e1000e/ich8lan.h |  4 ++
 2 files changed, 78 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 2f9655cf5dd9..5af5cc9b63df 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -285,6 +285,46 @@ static void e1000_toggle_lanphypc_pch_lpt(struct e1000_hw *hw)
 	}
 }
 
+/**
+ * e1000_reconfigure_k1_exit_timeout - reconfigure K1 exit timeout to
+ * align to MTP and later platform requirements.
+ * @hw: pointer to the HW structure
+ *
+ * Assuming that PHY semaphore is taken prior to this function call.
+ *
+ * Return: 0 on success, negative on failure
+ */
+static s32 e1000_reconfigure_k1_exit_timeout(struct e1000_hw *hw)
+{
+	u16 phy_timeout;
+	u32 fextnvm12;
+	s32 ret_val;
+
+	if (hw->mac.type < e1000_pch_mtp)
+		return 0;
+
+	/* Change Kumeran K1 power down state from P0s to P1 */
+	fextnvm12 = er32(FEXTNVM12);
+	fextnvm12 |= BIT(23);
+	fextnvm12 &= ~BIT(22);
+	ew32(FEXTNVM12, fextnvm12);
+
+	/* Wait for the interface the settle */
+	msleep(1);
+
+	/* Change K1 exit timeout */
+	ret_val = e1e_rphy_locked(hw, E1000_PHY_TIMEOUTS_REG,
+				  &phy_timeout);
+	if (ret_val)
+		return ret_val;
+
+	phy_timeout &= ~E1000_PHY_TIMEOUTS_K1_EXIT_TO_MASK;
+	phy_timeout |= 0xF00;
+
+	return e1e_wphy_locked(hw, E1000_PHY_TIMEOUTS_REG,
+				  phy_timeout);
+}
+
 /**
  *  e1000_init_phy_workarounds_pchlan - PHY initialization workarounds
  *  @hw: pointer to the HW structure
@@ -327,15 +367,23 @@ static s32 e1000_init_phy_workarounds_pchlan(struct e1000_hw *hw)
 	 * LANPHYPC Value bit to force the interconnect to PCIe mode.
 	 */
 	switch (hw->mac.type) {
+	case e1000_pch_mtp:
+	case e1000_pch_lnp:
+	case e1000_pch_ptp:
+	case e1000_pch_nvp:
+		/* At this point the PHY might be inaccessible so don't
+		 * propagate the failure
+		 */
+		if (e1000_reconfigure_k1_exit_timeout(hw))
+			break;
+
+		fallthrough;
 	case e1000_pch_lpt:
 	case e1000_pch_spt:
 	case e1000_pch_cnp:
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
-	case e1000_pch_mtp:
-	case e1000_pch_lnp:
-	case e1000_pch_ptp:
-	case e1000_pch_nvp:
+
 		if (e1000_phy_is_accessible_pchlan(hw))
 			break;
 
@@ -421,6 +469,16 @@ static s32 e1000_init_phy_workarounds_pchlan(struct e1000_hw *hw)
 		ret_val = hw->phy.ops.check_reset_block(hw);
 		if (ret_val)
 			e_err("ME blocked access to PHY after reset\n");
+
+		if (hw->mac.type >= e1000_pch_mtp) {
+			ret_val = hw->phy.ops.acquire(hw);
+			if (ret_val) {
+				e_err("Failed to reconfigure K1 exit timeout\n");
+				goto out;
+			}
+			ret_val = e1000_reconfigure_k1_exit_timeout(hw);
+			hw->phy.ops.release(hw);
+		}
 	}
 
 out:
@@ -4888,6 +4946,18 @@ static s32 e1000_init_hw_ich8lan(struct e1000_hw *hw)
 	u16 i;
 
 	e1000_initialize_hw_bits_ich8lan(hw);
+	if (hw->mac.type >= e1000_pch_mtp) {
+		ret_val = hw->phy.ops.acquire(hw);
+		if (ret_val)
+			return ret_val;
+
+		ret_val = e1000_reconfigure_k1_exit_timeout(hw);
+		if (ret_val) {
+			e_dbg("Error failed to reconfigure K1 exit timeout\n");
+			return ret_val;
+		}
+		hw->phy.ops.release(hw);
+	}
 
 	/* Initialize identification LED */
 	ret_val = mac->ops.id_led_init(hw);
diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.h b/drivers/net/ethernet/intel/e1000e/ich8lan.h
index 2504b11c3169..dffc63e89ee2 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.h
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.h
@@ -219,6 +219,10 @@
 #define I217_PLL_CLOCK_GATE_REG	PHY_REG(772, 28)
 #define I217_PLL_CLOCK_GATE_MASK	0x07FF
 
+/* PHY Timeouts */
+#define E1000_PHY_TIMEOUTS_REG                   PHY_REG(770, 21)
+#define E1000_PHY_TIMEOUTS_K1_EXIT_TO_MASK       0x0FC0
+
 #define SW_FLAG_TIMEOUT		1000	/* SW Semaphore flag timeout in ms */
 
 /* Inband Control */
-- 
2.34.1

