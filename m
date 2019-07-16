Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5F36A8D3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jul 2019 14:35:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B955E86CDB;
	Tue, 16 Jul 2019 12:35:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vmahEwdG-jEw; Tue, 16 Jul 2019 12:35:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 932DA86A0C;
	Tue, 16 Jul 2019 12:35:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A9B2A1BF3FC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2019 12:35:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A1A2287C41
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2019 12:35:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kDFQt0r7wdUd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jul 2019 12:35:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8826E8733D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2019 12:35:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jul 2019 05:35:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,498,1557212400"; d="scan'208";a="318980827"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by orsmga004.jf.intel.com with ESMTP; 16 Jul 2019 05:35:39 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 16 Jul 2019 15:35:39 +0300
Message-Id: <20190716123539.3224-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1] igc: Remove useless forward declaration
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Move igc_phy_setup_autoneg,igc_wait_autoneg and igc_set_fc_watermarks
up to avoid forward declaration.
It is not necessary to forward declare these static methods.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_mac.c |  73 ++++++------
 drivers/net/ethernet/intel/igc/igc_phy.c | 192 +++++++++++++++----------------
 2 files changed, 129 insertions(+), 136 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ethernet/intel/igc/igc_mac.c
index ba4646737288..5eeb4c8caf4a 100644
--- a/drivers/net/ethernet/intel/igc/igc_mac.c
+++ b/drivers/net/ethernet/intel/igc/igc_mac.c
@@ -7,9 +7,6 @@
 #include "igc_mac.h"
 #include "igc_hw.h"
 
-/* forward declaration */
-static s32 igc_set_fc_watermarks(struct igc_hw *hw);
-
 /**
  * igc_disable_pcie_master - Disables PCI-express master access
  * @hw: pointer to the HW structure
@@ -75,6 +72,41 @@ void igc_init_rx_addrs(struct igc_hw *hw, u16 rar_count)
 }
 
 /**
+ * igc_set_fc_watermarks - Set flow control high/low watermarks
+ * @hw: pointer to the HW structure
+ *
+ * Sets the flow control high/low threshold (watermark) registers.  If
+ * flow control XON frame transmission is enabled, then set XON frame
+ * transmission as well.
+ */
+static s32 igc_set_fc_watermarks(struct igc_hw *hw)
+{
+	u32 fcrtl = 0, fcrth = 0;
+
+	/* Set the flow control receive threshold registers.  Normally,
+	 * these registers will be set to a default threshold that may be
+	 * adjusted later by the driver's runtime code.  However, if the
+	 * ability to transmit pause frames is not enabled, then these
+	 * registers will be set to 0.
+	 */
+	if (hw->fc.current_mode & igc_fc_tx_pause) {
+		/* We need to set up the Receive Threshold high and low water
+		 * marks as well as (optionally) enabling the transmission of
+		 * XON frames.
+		 */
+		fcrtl = hw->fc.low_water;
+		if (hw->fc.send_xon)
+			fcrtl |= IGC_FCRTL_XONE;
+
+		fcrth = hw->fc.high_water;
+	}
+	wr32(IGC_FCRTL, fcrtl);
+	wr32(IGC_FCRTH, fcrth);
+
+	return 0;
+}
+
+/**
  * igc_setup_link - Setup flow control and link settings
  * @hw: pointer to the HW structure
  *
@@ -195,41 +227,6 @@ s32 igc_force_mac_fc(struct igc_hw *hw)
 }
 
 /**
- * igc_set_fc_watermarks - Set flow control high/low watermarks
- * @hw: pointer to the HW structure
- *
- * Sets the flow control high/low threshold (watermark) registers.  If
- * flow control XON frame transmission is enabled, then set XON frame
- * transmission as well.
- */
-static s32 igc_set_fc_watermarks(struct igc_hw *hw)
-{
-	u32 fcrtl = 0, fcrth = 0;
-
-	/* Set the flow control receive threshold registers.  Normally,
-	 * these registers will be set to a default threshold that may be
-	 * adjusted later by the driver's runtime code.  However, if the
-	 * ability to transmit pause frames is not enabled, then these
-	 * registers will be set to 0.
-	 */
-	if (hw->fc.current_mode & igc_fc_tx_pause) {
-		/* We need to set up the Receive Threshold high and low water
-		 * marks as well as (optionally) enabling the transmission of
-		 * XON frames.
-		 */
-		fcrtl = hw->fc.low_water;
-		if (hw->fc.send_xon)
-			fcrtl |= IGC_FCRTL_XONE;
-
-		fcrth = hw->fc.high_water;
-	}
-	wr32(IGC_FCRTL, fcrtl);
-	wr32(IGC_FCRTH, fcrth);
-
-	return 0;
-}
-
-/**
  * igc_clear_hw_cntrs_base - Clear base hardware counters
  * @hw: pointer to the HW structure
  *
diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
index 4c8f96a9a148..f4b05af0dd2f 100644
--- a/drivers/net/ethernet/intel/igc/igc_phy.c
+++ b/drivers/net/ethernet/intel/igc/igc_phy.c
@@ -3,10 +3,6 @@
 
 #include "igc_phy.h"
 
-/* forward declaration */
-static s32 igc_phy_setup_autoneg(struct igc_hw *hw);
-static s32 igc_wait_autoneg(struct igc_hw *hw);
-
 /**
  * igc_check_reset_block - Check if PHY reset is blocked
  * @hw: pointer to the HW structure
@@ -208,100 +204,6 @@ s32 igc_phy_hw_reset(struct igc_hw *hw)
 }
 
 /**
- * igc_copper_link_autoneg - Setup/Enable autoneg for copper link
- * @hw: pointer to the HW structure
- *
- * Performs initial bounds checking on autoneg advertisement parameter, then
- * configure to advertise the full capability.  Setup the PHY to autoneg
- * and restart the negotiation process between the link partner.  If
- * autoneg_wait_to_complete, then wait for autoneg to complete before exiting.
- */
-static s32 igc_copper_link_autoneg(struct igc_hw *hw)
-{
-	struct igc_phy_info *phy = &hw->phy;
-	u16 phy_ctrl;
-	s32 ret_val;
-
-	/* Perform some bounds checking on the autoneg advertisement
-	 * parameter.
-	 */
-	phy->autoneg_advertised &= phy->autoneg_mask;
-
-	/* If autoneg_advertised is zero, we assume it was not defaulted
-	 * by the calling code so we set to advertise full capability.
-	 */
-	if (phy->autoneg_advertised == 0)
-		phy->autoneg_advertised = phy->autoneg_mask;
-
-	hw_dbg("Reconfiguring auto-neg advertisement params\n");
-	ret_val = igc_phy_setup_autoneg(hw);
-	if (ret_val) {
-		hw_dbg("Error Setting up Auto-Negotiation\n");
-		goto out;
-	}
-	hw_dbg("Restarting Auto-Neg\n");
-
-	/* Restart auto-negotiation by setting the Auto Neg Enable bit and
-	 * the Auto Neg Restart bit in the PHY control register.
-	 */
-	ret_val = phy->ops.read_reg(hw, PHY_CONTROL, &phy_ctrl);
-	if (ret_val)
-		goto out;
-
-	phy_ctrl |= (MII_CR_AUTO_NEG_EN | MII_CR_RESTART_AUTO_NEG);
-	ret_val = phy->ops.write_reg(hw, PHY_CONTROL, phy_ctrl);
-	if (ret_val)
-		goto out;
-
-	/* Does the user want to wait for Auto-Neg to complete here, or
-	 * check at a later time (for example, callback routine).
-	 */
-	if (phy->autoneg_wait_to_complete) {
-		ret_val = igc_wait_autoneg(hw);
-		if (ret_val) {
-			hw_dbg("Error while waiting for autoneg to complete\n");
-			goto out;
-		}
-	}
-
-	hw->mac.get_link_status = true;
-
-out:
-	return ret_val;
-}
-
-/**
- * igc_wait_autoneg - Wait for auto-neg completion
- * @hw: pointer to the HW structure
- *
- * Waits for auto-negotiation to complete or for the auto-negotiation time
- * limit to expire, which ever happens first.
- */
-static s32 igc_wait_autoneg(struct igc_hw *hw)
-{
-	u16 i, phy_status;
-	s32 ret_val = 0;
-
-	/* Break after autoneg completes or PHY_AUTO_NEG_LIMIT expires. */
-	for (i = PHY_AUTO_NEG_LIMIT; i > 0; i--) {
-		ret_val = hw->phy.ops.read_reg(hw, PHY_STATUS, &phy_status);
-		if (ret_val)
-			break;
-		ret_val = hw->phy.ops.read_reg(hw, PHY_STATUS, &phy_status);
-		if (ret_val)
-			break;
-		if (phy_status & MII_SR_AUTONEG_COMPLETE)
-			break;
-		msleep(100);
-	}
-
-	/* PHY_AUTO_NEG_TIME expiration doesn't guarantee auto-negotiation
-	 * has completed.
-	 */
-	return ret_val;
-}
-
-/**
  * igc_phy_setup_autoneg - Configure PHY for auto-negotiation
  * @hw: pointer to the HW structure
  *
@@ -486,6 +388,100 @@ static s32 igc_phy_setup_autoneg(struct igc_hw *hw)
 }
 
 /**
+ * igc_wait_autoneg - Wait for auto-neg completion
+ * @hw: pointer to the HW structure
+ *
+ * Waits for auto-negotiation to complete or for the auto-negotiation time
+ * limit to expire, which ever happens first.
+ */
+static s32 igc_wait_autoneg(struct igc_hw *hw)
+{
+	u16 i, phy_status;
+	s32 ret_val = 0;
+
+	/* Break after autoneg completes or PHY_AUTO_NEG_LIMIT expires. */
+	for (i = PHY_AUTO_NEG_LIMIT; i > 0; i--) {
+		ret_val = hw->phy.ops.read_reg(hw, PHY_STATUS, &phy_status);
+		if (ret_val)
+			break;
+		ret_val = hw->phy.ops.read_reg(hw, PHY_STATUS, &phy_status);
+		if (ret_val)
+			break;
+		if (phy_status & MII_SR_AUTONEG_COMPLETE)
+			break;
+		msleep(100);
+	}
+
+	/* PHY_AUTO_NEG_TIME expiration doesn't guarantee auto-negotiation
+	 * has completed.
+	 */
+	return ret_val;
+}
+
+/**
+ * igc_copper_link_autoneg - Setup/Enable autoneg for copper link
+ * @hw: pointer to the HW structure
+ *
+ * Performs initial bounds checking on autoneg advertisement parameter, then
+ * configure to advertise the full capability.  Setup the PHY to autoneg
+ * and restart the negotiation process between the link partner.  If
+ * autoneg_wait_to_complete, then wait for autoneg to complete before exiting.
+ */
+static s32 igc_copper_link_autoneg(struct igc_hw *hw)
+{
+	struct igc_phy_info *phy = &hw->phy;
+	u16 phy_ctrl;
+	s32 ret_val;
+
+	/* Perform some bounds checking on the autoneg advertisement
+	 * parameter.
+	 */
+	phy->autoneg_advertised &= phy->autoneg_mask;
+
+	/* If autoneg_advertised is zero, we assume it was not defaulted
+	 * by the calling code so we set to advertise full capability.
+	 */
+	if (phy->autoneg_advertised == 0)
+		phy->autoneg_advertised = phy->autoneg_mask;
+
+	hw_dbg("Reconfiguring auto-neg advertisement params\n");
+	ret_val = igc_phy_setup_autoneg(hw);
+	if (ret_val) {
+		hw_dbg("Error Setting up Auto-Negotiation\n");
+		goto out;
+	}
+	hw_dbg("Restarting Auto-Neg\n");
+
+	/* Restart auto-negotiation by setting the Auto Neg Enable bit and
+	 * the Auto Neg Restart bit in the PHY control register.
+	 */
+	ret_val = phy->ops.read_reg(hw, PHY_CONTROL, &phy_ctrl);
+	if (ret_val)
+		goto out;
+
+	phy_ctrl |= (MII_CR_AUTO_NEG_EN | MII_CR_RESTART_AUTO_NEG);
+	ret_val = phy->ops.write_reg(hw, PHY_CONTROL, phy_ctrl);
+	if (ret_val)
+		goto out;
+
+	/* Does the user want to wait for Auto-Neg to complete here, or
+	 * check at a later time (for example, callback routine).
+	 */
+	if (phy->autoneg_wait_to_complete) {
+		ret_val = igc_wait_autoneg(hw);
+		if (ret_val) {
+			hw_dbg("Error while waiting for autoneg to complete\n");
+			goto out;
+		}
+	}
+
+	hw->mac.get_link_status = true;
+
+out:
+	return ret_val;
+}
+
+/**
  * igc_setup_copper_link - Configure copper link settings
  * @hw: pointer to the HW structure
  *
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
