Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 53DD7805321
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Dec 2023 12:38:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BE3C582433;
	Tue,  5 Dec 2023 11:38:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE3C582433
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701776284;
	bh=JQvi8dB3jFQiqQqYbjyzm38X7Rjee4k8Qc3TKYV652c=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=syLEdueqk9jZkqLvvOJihYPGqX/3JXlQkPViKJXFQrhfGZp9KJzVTsRm1cVfr4llo
	 pZmAUGOmLhaVCGf3nzRbXtzwz0b7qf3ibEfWwTYU2II5OWKF6sekzlyY5h+jZ6uXLm
	 dqDlnglpa2XtznlsrCk2MT8VFg9Vww3a3nUcGQTeAPn2QMwZAJYLTadzi7uGI8KntN
	 BEkpWSflW++lYAstwbFuJ98EiLJ6/VneCZPl3mMliw3bdzIuXS+6zkWZrUQ+8ubp86
	 hRybWwodbv3x8nwu57dqsLQe//4tNo2AOXUyLZ3OhoU5fEIZRLrDvxalqdrWTIoAHA
	 OkuOQfAwcdoRw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NtEhC77Cx4DB; Tue,  5 Dec 2023 11:38:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 13B5082430;
	Tue,  5 Dec 2023 11:38:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13B5082430
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9957B1BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 11:37:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 70C1941A1C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 11:37:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 70C1941A1C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mzzF1RAR4JPd for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Dec 2023 11:37:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DB5B241A08
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 11:37:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB5B241A08
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="15429382"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="15429382"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 03:37:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="747197025"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="747197025"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orsmga006.jf.intel.com with ESMTP; 05 Dec 2023 03:37:54 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  5 Dec 2023 12:28:39 +0100
Message-Id: <20231205112840.149813-2-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20231205112840.149813-1-jedrzej.jagielski@intel.com>
References: <20231205112840.149813-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701776277; x=1733312277;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7zb3lJQ3WLWgbsV9QkeY0qk1f2UNdEP4DydUCxG2kOY=;
 b=R9rFBT3O8wlKwNqp1BrhFjFBOPsTCk86wQEFrYVFRJdjcD16HlRDJ4g2
 cw+aZr9x1e3a849IAfH0VY7FIbOH8/GupZVL6IjrwMXYOENBNy0AkHmmJ
 UJKP4350PcTWAyeqJGh08DE5dHMW0B1bvYtcwIxhnPLLCgEipICWjFZOB
 y4WPR8BMvGJyJVFmhGr1Mad7hj53DMAMPQk+AsQsmGKpVtnFtbAySReM9
 okd1BdlYLts1nOfH6CR2H2JMLstdDYK/s4Iycbtq8nfG2duYG8iODrc9w
 REf1eynmQNGLr4KqBnGofB9cH3eVZurVSm0B4XCRl22LtBqkvmSoiDTC/
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R9rFBT3O
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/2] ixgbe: Refactor overtemp
 event handling
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, anthony.l.nguyen@intel.com,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently ixgbe driver is notified of overheating events
via internal IXGBE_ERR_OVERTEMP error code.

Change the approach to use freshly introduced is_overtemp
function parameter which set when such event occurs.
Add new parameter to the check_overtemp() and handle_lasi()
phy ops.

Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
v2: change aproach to use additional function parameter to notify when overheat

CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Patch changed a bit so removing Przemek's tag
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 20 ++++----
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  | 33 +++++++++----
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h  |  2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  4 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 47 ++++++++++++-------
 5 files changed, 67 insertions(+), 39 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 1726297f2e0d..57e7e044fb85 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -2756,7 +2756,7 @@ static void ixgbe_check_overtemp_subtask(struct ixgbe_adapter *adapter)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
 	u32 eicr = adapter->interrupt_event;
-	s32 rc;
+	bool overtemp;
 
 	if (test_bit(__IXGBE_DOWN, &adapter->state))
 		return;
@@ -2790,14 +2790,15 @@ static void ixgbe_check_overtemp_subtask(struct ixgbe_adapter *adapter)
 		}
 
 		/* Check if this is not due to overtemp */
-		if (hw->phy.ops.check_overtemp(hw) != IXGBE_ERR_OVERTEMP)
+		hw->phy.ops.check_overtemp(hw, &overtemp);
+		if (!overtemp)
 			return;
 
 		break;
 	case IXGBE_DEV_ID_X550EM_A_1G_T:
 	case IXGBE_DEV_ID_X550EM_A_1G_T_L:
-		rc = hw->phy.ops.check_overtemp(hw);
-		if (rc != IXGBE_ERR_OVERTEMP)
+		hw->phy.ops.check_overtemp(hw, &overtemp);
+		if (!overtemp)
 			return;
 		break;
 	default:
@@ -2807,6 +2808,7 @@ static void ixgbe_check_overtemp_subtask(struct ixgbe_adapter *adapter)
 			return;
 		break;
 	}
+
 	e_crit(drv, "%s\n", ixgbe_overheat_msg);
 
 	adapter->interrupt_event = 0;
@@ -7938,7 +7940,7 @@ static void ixgbe_service_timer(struct timer_list *t)
 static void ixgbe_phy_interrupt_subtask(struct ixgbe_adapter *adapter)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
-	u32 status;
+	bool overtemp;
 
 	if (!(adapter->flags2 & IXGBE_FLAG2_PHY_INTERRUPT))
 		return;
@@ -7948,11 +7950,9 @@ static void ixgbe_phy_interrupt_subtask(struct ixgbe_adapter *adapter)
 	if (!hw->phy.ops.handle_lasi)
 		return;
 
-	status = hw->phy.ops.handle_lasi(&adapter->hw);
-	if (status != IXGBE_ERR_OVERTEMP)
-		return;
-
-	e_crit(drv, "%s\n", ixgbe_overheat_msg);
+	hw->phy.ops.handle_lasi(&adapter->hw, &overtemp);
+	if (overtemp)
+		e_crit(drv, "%s\n", ixgbe_overheat_msg);
 }
 
 static void ixgbe_reset_subtask(struct ixgbe_adapter *adapter)
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
index 689470c1e8ad..b2c8bc63fbb7 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
@@ -397,9 +397,10 @@ static enum ixgbe_phy_type ixgbe_get_phy_type_from_id(u32 phy_id)
  **/
 s32 ixgbe_reset_phy_generic(struct ixgbe_hw *hw)
 {
-	u32 i;
-	u16 ctrl = 0;
 	s32 status = 0;
+	bool overtemp;
+	u16 ctrl = 0;
+	u32 i;
 
 	if (hw->phy.type == ixgbe_phy_unknown)
 		status = ixgbe_identify_phy_generic(hw);
@@ -407,9 +408,12 @@ s32 ixgbe_reset_phy_generic(struct ixgbe_hw *hw)
 	if (status != 0 || hw->phy.type == ixgbe_phy_none)
 		return status;
 
+	status = hw->phy.ops.check_overtemp(hw, &overtemp);
+	if (status)
+		return status;
+
 	/* Don't reset PHY if it's shut down due to overtemp. */
-	if (!hw->phy.reset_if_overtemp &&
-	    (IXGBE_ERR_OVERTEMP == hw->phy.ops.check_overtemp(hw)))
+	if (!hw->phy.reset_if_overtemp && overtemp)
 		return 0;
 
 	/* Blocked by MNG FW so bail */
@@ -2746,24 +2750,33 @@ static void ixgbe_i2c_bus_clear(struct ixgbe_hw *hw)
 /**
  *  ixgbe_tn_check_overtemp - Checks if an overtemp occurred.
  *  @hw: pointer to hardware structure
+ *  @is_overtemp: indicate whether an overtemp event encountered
  *
  *  Checks if the LASI temp alarm status was triggered due to overtemp
  **/
-s32 ixgbe_tn_check_overtemp(struct ixgbe_hw *hw)
+s32 ixgbe_tn_check_overtemp(struct ixgbe_hw *hw, bool *is_overtemp)
 {
 	u16 phy_data = 0;
+	u32 status;
+
+	if (!hw || !is_overtemp)
+		return -EINVAL;
+
+	*is_overtemp = false;
 
 	if (hw->device_id != IXGBE_DEV_ID_82599_T3_LOM)
 		return 0;
 
 	/* Check that the LASI temp alarm status was triggered */
-	hw->phy.ops.read_reg(hw, IXGBE_TN_LASI_STATUS_REG,
-			     MDIO_MMD_PMAPMD, &phy_data);
+	status = hw->phy.ops.read_reg(hw, IXGBE_TN_LASI_STATUS_REG,
+				      MDIO_MMD_PMAPMD, &phy_data);
+	if (status)
+		return status;
 
-	if (!(phy_data & IXGBE_TN_LASI_STATUS_TEMP_ALARM))
-		return 0;
+	if (phy_data & IXGBE_TN_LASI_STATUS_TEMP_ALARM)
+		*is_overtemp = true;
 
-	return IXGBE_ERR_OVERTEMP;
+	return 0;
 }
 
 /** ixgbe_set_copper_phy_power - Control power for copper phy
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
index 6544c4539c0d..af5961f3c414 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
@@ -155,7 +155,7 @@ s32 ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw);
 s32 ixgbe_get_sfp_init_sequence_offsets(struct ixgbe_hw *hw,
 					u16 *list_offset,
 					u16 *data_offset);
-s32 ixgbe_tn_check_overtemp(struct ixgbe_hw *hw);
+s32 ixgbe_tn_check_overtemp(struct ixgbe_hw *hw, bool *is_overtemp);
 s32 ixgbe_read_i2c_byte_generic(struct ixgbe_hw *hw, u8 byte_offset,
 				u8 dev_addr, u8 *data);
 s32 ixgbe_read_i2c_byte_generic_unlocked(struct ixgbe_hw *hw, u8 byte_offset,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
index 2b00db92b08f..99a814f06c61 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
@@ -3509,10 +3509,10 @@ struct ixgbe_phy_operations {
 	s32 (*read_i2c_sff8472)(struct ixgbe_hw *, u8 , u8 *);
 	s32 (*read_i2c_eeprom)(struct ixgbe_hw *, u8 , u8 *);
 	s32 (*write_i2c_eeprom)(struct ixgbe_hw *, u8, u8);
-	s32 (*check_overtemp)(struct ixgbe_hw *);
+	s32 (*check_overtemp)(struct ixgbe_hw *, bool *);
 	s32 (*set_phy_power)(struct ixgbe_hw *, bool on);
 	s32 (*enter_lplu)(struct ixgbe_hw *);
-	s32 (*handle_lasi)(struct ixgbe_hw *hw);
+	s32 (*handle_lasi)(struct ixgbe_hw *hw, bool *);
 	s32 (*read_i2c_byte_unlocked)(struct ixgbe_hw *, u8 offset, u8 addr,
 				      u8 *value);
 	s32 (*write_i2c_byte_unlocked)(struct ixgbe_hw *, u8 offset, u8 addr,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
index aa4bf6c9a2f7..dbfe1e4cef3c 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
@@ -600,8 +600,10 @@ static s32 ixgbe_setup_fw_link(struct ixgbe_hw *hw)
 	rc = ixgbe_fw_phy_activity(hw, FW_PHY_ACT_SETUP_LINK, &setup);
 	if (rc)
 		return rc;
+
 	if (setup[0] == FW_PHY_ACT_SETUP_LINK_RSP_DOWN)
-		return IXGBE_ERR_OVERTEMP;
+		return -EIO;
+
 	return 0;
 }
 
@@ -2369,18 +2371,21 @@ static s32 ixgbe_get_link_capabilities_X550em(struct ixgbe_hw *hw,
  * @hw: pointer to hardware structure
  * @lsc: pointer to boolean flag which indicates whether external Base T
  *	 PHY interrupt is lsc
+ * @is_overtemp: indicate whether an overtemp event encountered
  *
  * Determime if external Base T PHY interrupt cause is high temperature
  * failure alarm or link status change.
- *
- * Return IXGBE_ERR_OVERTEMP if interrupt is high temperature
- * failure alarm, else return PHY access status.
  **/
-static s32 ixgbe_get_lasi_ext_t_x550em(struct ixgbe_hw *hw, bool *lsc)
+static s32 ixgbe_get_lasi_ext_t_x550em(struct ixgbe_hw *hw, bool *lsc,
+				       bool *is_overtemp)
 {
 	u32 status;
 	u16 reg;
 
+	if (!hw || !lsc || !is_overtemp)
+		return -EINVAL;
+
+	*is_overtemp = false;
 	*lsc = false;
 
 	/* Vendor alarm triggered */
@@ -2412,7 +2417,8 @@ static s32 ixgbe_get_lasi_ext_t_x550em(struct ixgbe_hw *hw, bool *lsc)
 	if (reg & IXGBE_MDIO_GLOBAL_ALM_1_HI_TMP_FAIL) {
 		/* power down the PHY in case the PHY FW didn't already */
 		ixgbe_set_copper_phy_power(hw, false);
-		return IXGBE_ERR_OVERTEMP;
+		*is_overtemp = true;
+		return -EIO;
 	}
 	if (reg & IXGBE_MDIO_GLOBAL_ALM_1_DEV_FAULT) {
 		/*  device fault alarm triggered */
@@ -2426,7 +2432,8 @@ static s32 ixgbe_get_lasi_ext_t_x550em(struct ixgbe_hw *hw, bool *lsc)
 		if (reg == IXGBE_MDIO_GLOBAL_FAULT_MSG_HI_TMP) {
 			/* power down the PHY in case the PHY FW didn't */
 			ixgbe_set_copper_phy_power(hw, false);
-			return IXGBE_ERR_OVERTEMP;
+			*is_overtemp = true;
+			return -EIO;
 		}
 	}
 
@@ -2462,12 +2469,12 @@ static s32 ixgbe_get_lasi_ext_t_x550em(struct ixgbe_hw *hw, bool *lsc)
  **/
 static s32 ixgbe_enable_lasi_ext_t_x550em(struct ixgbe_hw *hw)
 {
+	bool lsc, overtemp;
 	u32 status;
 	u16 reg;
-	bool lsc;
 
 	/* Clear interrupt flags */
-	status = ixgbe_get_lasi_ext_t_x550em(hw, &lsc);
+	status = ixgbe_get_lasi_ext_t_x550em(hw, &lsc, &overtemp);
 
 	/* Enable link status change alarm */
 
@@ -2546,21 +2553,23 @@ static s32 ixgbe_enable_lasi_ext_t_x550em(struct ixgbe_hw *hw)
 /**
  * ixgbe_handle_lasi_ext_t_x550em - Handle external Base T PHY interrupt
  * @hw: pointer to hardware structure
+ * @is_overtemp: indicate whether an overtemp event encountered
  *
  * Handle external Base T PHY interrupt. If high temperature
  * failure alarm then return error, else if link status change
  * then setup internal/external PHY link
- *
- * Return IXGBE_ERR_OVERTEMP if interrupt is high temperature
- * failure alarm, else return PHY access status.
  **/
-static s32 ixgbe_handle_lasi_ext_t_x550em(struct ixgbe_hw *hw)
+static s32 ixgbe_handle_lasi_ext_t_x550em(struct ixgbe_hw *hw,
+					  bool *is_overtemp)
 {
 	struct ixgbe_phy_info *phy = &hw->phy;
 	bool lsc;
 	u32 status;
 
-	status = ixgbe_get_lasi_ext_t_x550em(hw, &lsc);
+	if (!hw || !is_overtemp)
+		return -EINVAL;
+
+	status = ixgbe_get_lasi_ext_t_x550em(hw, &lsc, is_overtemp);
 	if (status)
 		return status;
 
@@ -3187,19 +3196,25 @@ static s32 ixgbe_reset_phy_fw(struct ixgbe_hw *hw)
 /**
  * ixgbe_check_overtemp_fw - Check firmware-controlled PHYs for overtemp
  * @hw: pointer to hardware structure
+ * @is_overtemp: indicate whether an overtemp event encountered
  */
-static s32 ixgbe_check_overtemp_fw(struct ixgbe_hw *hw)
+static s32 ixgbe_check_overtemp_fw(struct ixgbe_hw *hw, bool *is_overtemp)
 {
 	u32 store[FW_PHY_ACT_DATA_COUNT] = { 0 };
 	s32 rc;
 
+	if (!hw || !is_overtemp)
+		return -EINVAL;
+
+	*is_overtemp = false;
+
 	rc = ixgbe_fw_phy_activity(hw, FW_PHY_ACT_GET_LINK_INFO, &store);
 	if (rc)
 		return rc;
 
 	if (store[0] & FW_PHY_ACT_GET_LINK_INFO_TEMP) {
 		ixgbe_shutdown_fw_phy(hw);
-		return IXGBE_ERR_OVERTEMP;
+		*is_overtemp = true;
 	}
 	return 0;
 }
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
