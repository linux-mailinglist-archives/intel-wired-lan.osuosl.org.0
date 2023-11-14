Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD697EACFF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Nov 2023 10:26:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CC3E6404F4;
	Tue, 14 Nov 2023 09:26:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CC3E6404F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699954010;
	bh=qHmpw5Rxw6723ACn3P8afPIiXkAqC91YEI1SD9G+ueo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zXEXJGID5b1ppllpxDpcTJIKIq77Kt/1AtP4HOlJYAbLJGztkuOe+7LsdscVUaopz
	 z7/tn97a7MaIZBCy6CpB9REBCuBI0grEt9o2GdEWGQRUB8Uy6/4dMLVf3dNK8WALbB
	 mMnOnk/nZMcNeF1xzcSp5+QiMQ9rFS/qlrVXP3y1YG6T1u+hABfjIVlbLdBMtHA5xH
	 29oHgaVlPxIQfXhWfjl7Wo/gUx/Ti9UrcCigDkdMycaECzJ7X4VQmv9f5L8D1/yz6V
	 cz6PrFKDVXuHTklNX3lEVGLl90oc1fUP4kjIdkIX35usCD3Qy+ucsj/9blbsPO3KaE
	 j6c6JT2IRz7hw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HVcWxbC3Tw5V; Tue, 14 Nov 2023 09:26:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A93C400D7;
	Tue, 14 Nov 2023 09:26:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A93C400D7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 41A041BF3D0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Nov 2023 09:26:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7B13B408F8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Nov 2023 09:26:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B13B408F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fHucNDINeOil for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Nov 2023 09:26:38 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 919B541774
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Nov 2023 09:26:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 919B541774
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="3724019"
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; 
   d="scan'208";a="3724019"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 01:19:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; d="scan'208";a="12748891"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa001.fm.intel.com with ESMTP; 14 Nov 2023 01:19:30 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 14 Nov 2023 10:10:53 +0100
Message-Id: <20231114091054.68301-2-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20231114091054.68301-1-jedrzej.jagielski@intel.com>
References: <20231114091054.68301-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699953998; x=1731489998;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PROuIr5YP35/wl4MwubbU0R9GLc4M7Y4wxmoz4t+qsw=;
 b=jBZUv1Q2iy4xGBPLmcr+9ecSDMn9E1KWI4QQ9ip1K5s0fPVPYZdBT5kL
 t/Rcd2u1hghT1V8uYtH093D0Pa6U4apGMQHGoKdxduiq9tRiaYKHfgSyX
 0sYj0LHmgtg6NHhB1eSgsefay3G7eM5iBT9t+1GfyjN72WEfmcimui1sg
 C1BG2vLxe9iuTY/u4TuVP+/C67wNudzEIZ0HcN7XmXql10XXbwMVar6VO
 usS8HPv9Gw6tnW+9AAybshQeYu7RfVSvdFIyUU5VrRuvEhi9JL5EUIc92
 12/8jD4zUBUsK0wJxsIPuFvFQs/tCJisBA0PLwrulGH/ErukqnMecHupT
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jBZUv1Q2
Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/2] ixgbe: Refactor overtemp
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
via internal IXGBE_ERR_OVERTEMP erorr code.

Change the approach to use is_overhaet variable
which set when such event occurs.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 12 +++++++-----
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  |  7 +++++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 19 +++++++++----------
 4 files changed, 22 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 1726297f2e0d..78fbfc768f57 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -2790,14 +2790,14 @@ static void ixgbe_check_overtemp_subtask(struct ixgbe_adapter *adapter)
 		}
 
 		/* Check if this is not due to overtemp */
-		if (hw->phy.ops.check_overtemp(hw) != IXGBE_ERR_OVERTEMP)
+		if (hw->phy.ops.check_overtemp(hw) != -EIO && !hw->is_overtemp)
 			return;
 
 		break;
 	case IXGBE_DEV_ID_X550EM_A_1G_T:
 	case IXGBE_DEV_ID_X550EM_A_1G_T_L:
 		rc = hw->phy.ops.check_overtemp(hw);
-		if (rc != IXGBE_ERR_OVERTEMP)
+		if (rc != -EIO && !hw->is_overtemp)
 			return;
 		break;
 	default:
@@ -2807,6 +2807,8 @@ static void ixgbe_check_overtemp_subtask(struct ixgbe_adapter *adapter)
 			return;
 		break;
 	}
+
+	hw->is_overtemp = false;
 	e_crit(drv, "%s\n", ixgbe_overheat_msg);
 
 	adapter->interrupt_event = 0;
@@ -7938,7 +7940,6 @@ static void ixgbe_service_timer(struct timer_list *t)
 static void ixgbe_phy_interrupt_subtask(struct ixgbe_adapter *adapter)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
-	u32 status;
 
 	if (!(adapter->flags2 & IXGBE_FLAG2_PHY_INTERRUPT))
 		return;
@@ -7948,10 +7949,11 @@ static void ixgbe_phy_interrupt_subtask(struct ixgbe_adapter *adapter)
 	if (!hw->phy.ops.handle_lasi)
 		return;
 
-	status = hw->phy.ops.handle_lasi(&adapter->hw);
-	if (status != IXGBE_ERR_OVERTEMP)
+	hw->phy.ops.handle_lasi(&adapter->hw);
+	if (!hw->is_overtemp)
 		return;
 
+	hw->is_overtemp = false;
 	e_crit(drv, "%s\n", ixgbe_overheat_msg);
 }
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
index 689470c1e8ad..2c99b644aeb7 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
@@ -409,8 +409,10 @@ s32 ixgbe_reset_phy_generic(struct ixgbe_hw *hw)
 
 	/* Don't reset PHY if it's shut down due to overtemp. */
 	if (!hw->phy.reset_if_overtemp &&
-	    (IXGBE_ERR_OVERTEMP == hw->phy.ops.check_overtemp(hw)))
+	    hw->phy.ops.check_overtemp(hw) == -EIO && hw->is_overtemp) {
+		hw->is_overtemp = false;
 		return 0;
+	}
 
 	/* Blocked by MNG FW so bail */
 	if (ixgbe_check_reset_blocked(hw))
@@ -2763,7 +2765,8 @@ s32 ixgbe_tn_check_overtemp(struct ixgbe_hw *hw)
 	if (!(phy_data & IXGBE_TN_LASI_STATUS_TEMP_ALARM))
 		return 0;
 
-	return IXGBE_ERR_OVERTEMP;
+	hw->is_overtemp = true;
+	return -EIO;
 }
 
 /** ixgbe_set_copper_phy_power - Control power for copper phy
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
index 2b00db92b08f..f69cfaae9c36 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
@@ -3652,6 +3652,7 @@ struct ixgbe_hw {
 	bool				allow_unsupported_sfp;
 	bool				wol_enabled;
 	bool				need_crosstalk_fix;
+	bool				is_overtemp;
 };
 
 struct ixgbe_info {
@@ -3692,7 +3693,6 @@ struct ixgbe_info {
 #define IXGBE_ERR_FDIR_REINIT_FAILED            -23
 #define IXGBE_ERR_EEPROM_VERSION                -24
 #define IXGBE_ERR_NO_SPACE                      -25
-#define IXGBE_ERR_OVERTEMP                      -26
 #define IXGBE_ERR_FC_NOT_NEGOTIATED             -27
 #define IXGBE_ERR_FC_NOT_SUPPORTED              -28
 #define IXGBE_ERR_SFP_SETUP_NOT_COMPLETE        -30
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
index aa4bf6c9a2f7..cf2274d3c4d6 100644
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
 
@@ -2372,9 +2374,6 @@ static s32 ixgbe_get_link_capabilities_X550em(struct ixgbe_hw *hw,
  *
  * Determime if external Base T PHY interrupt cause is high temperature
  * failure alarm or link status change.
- *
- * Return IXGBE_ERR_OVERTEMP if interrupt is high temperature
- * failure alarm, else return PHY access status.
  **/
 static s32 ixgbe_get_lasi_ext_t_x550em(struct ixgbe_hw *hw, bool *lsc)
 {
@@ -2412,7 +2411,8 @@ static s32 ixgbe_get_lasi_ext_t_x550em(struct ixgbe_hw *hw, bool *lsc)
 	if (reg & IXGBE_MDIO_GLOBAL_ALM_1_HI_TMP_FAIL) {
 		/* power down the PHY in case the PHY FW didn't already */
 		ixgbe_set_copper_phy_power(hw, false);
-		return IXGBE_ERR_OVERTEMP;
+		hw->is_overtemp = true;
+		return -EIO;
 	}
 	if (reg & IXGBE_MDIO_GLOBAL_ALM_1_DEV_FAULT) {
 		/*  device fault alarm triggered */
@@ -2426,7 +2426,8 @@ static s32 ixgbe_get_lasi_ext_t_x550em(struct ixgbe_hw *hw, bool *lsc)
 		if (reg == IXGBE_MDIO_GLOBAL_FAULT_MSG_HI_TMP) {
 			/* power down the PHY in case the PHY FW didn't */
 			ixgbe_set_copper_phy_power(hw, false);
-			return IXGBE_ERR_OVERTEMP;
+			hw->is_overtemp = true;
+			return -EIO;
 		}
 	}
 
@@ -2550,9 +2551,6 @@ static s32 ixgbe_enable_lasi_ext_t_x550em(struct ixgbe_hw *hw)
  * Handle external Base T PHY interrupt. If high temperature
  * failure alarm then return error, else if link status change
  * then setup internal/external PHY link
- *
- * Return IXGBE_ERR_OVERTEMP if interrupt is high temperature
- * failure alarm, else return PHY access status.
  **/
 static s32 ixgbe_handle_lasi_ext_t_x550em(struct ixgbe_hw *hw)
 {
@@ -3199,7 +3197,8 @@ static s32 ixgbe_check_overtemp_fw(struct ixgbe_hw *hw)
 
 	if (store[0] & FW_PHY_ACT_GET_LINK_INFO_TEMP) {
 		ixgbe_shutdown_fw_phy(hw);
-		return IXGBE_ERR_OVERTEMP;
+		hw->is_overtemp = true;
+		return -EIO;
 	}
 	return 0;
 }
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
