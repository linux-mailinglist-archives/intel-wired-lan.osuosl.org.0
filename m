Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C81D191E37
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2020 01:38:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CC43623A53;
	Wed, 25 Mar 2020 00:38:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j5oBOYNuZNpP; Wed, 25 Mar 2020 00:38:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AAA4C20107;
	Wed, 25 Mar 2020 00:38:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 56AAF1BF32A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 00:38:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3A84E23B7F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 00:38:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 45RviU1oj0vl for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2020 00:38:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 96D5720035
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 00:38:38 +0000 (UTC)
IronPort-SDR: Hel3hlOgyYnmJf1moM05bYrd69tBMKwEJB5aKGDVX/bmB2Ug36lSmHKzXFbbnUZ8mdjd2UBw6T
 FeM7a9Ati3dw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 17:38:38 -0700
IronPort-SDR: SkjDWBGqThfAjb1wWicMtVEH4t5lvxsKVloyivD7W+SH6PvW+vMVxSe9oqLjeVz7aV6X1jTEMB
 ZP5drrgVMrYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,302,1580803200"; d="scan'208";a="448099358"
Received: from johnorte-mobl2.amr.corp.intel.com ([10.251.10.249])
 by fmsmga006.fm.intel.com with ESMTP; 24 Mar 2020 17:38:37 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Mar 2020 17:38:24 -0700
Message-Id: <20200325003824.5487-11-andre.guedes@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200325003824.5487-1-andre.guedes@intel.com>
References: <20200325003824.5487-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 10/10] igc: Remove '\n' from log strings
 in igc_phy.c
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

To keep log strings in igc_phy.c consistent with the rest of the driver
code, this patch removes the '\n' character at the end. The newline
character is automatically added by netdev_dbg() so there is no changes
in the output.

Note: hw_dbg() is a macro that expands to netdev_dbg().

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_phy.c | 52 ++++++++++++------------
 1 file changed, 26 insertions(+), 26 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
index 8e1799508edc..a11c2e45d894 100644
--- a/drivers/net/ethernet/intel/igc/igc_phy.c
+++ b/drivers/net/ethernet/intel/igc/igc_phy.c
@@ -207,7 +207,7 @@ s32 igc_phy_hw_reset(struct igc_hw *hw)
 	} while (!(phpm & IGC_PHY_RST_COMP) && timeout);
 
 	if (!timeout)
-		hw_dbg("Timeout is expired after a phy reset\n");
+		hw_dbg("Timeout is expired after a phy reset");
 
 	usleep_range(100, 150);
 
@@ -278,49 +278,49 @@ static s32 igc_phy_setup_autoneg(struct igc_hw *hw)
 				 NWAY_AR_10T_HD_CAPS);
 	mii_1000t_ctrl_reg &= ~(CR_1000T_HD_CAPS | CR_1000T_FD_CAPS);
 
-	hw_dbg("autoneg_advertised %x\n", phy->autoneg_advertised);
+	hw_dbg("autoneg_advertised %x", phy->autoneg_advertised);
 
 	/* Do we want to advertise 10 Mb Half Duplex? */
 	if (phy->autoneg_advertised & ADVERTISE_10_HALF) {
-		hw_dbg("Advertise 10mb Half duplex\n");
+		hw_dbg("Advertise 10mb Half duplex");
 		mii_autoneg_adv_reg |= NWAY_AR_10T_HD_CAPS;
 	}
 
 	/* Do we want to advertise 10 Mb Full Duplex? */
 	if (phy->autoneg_advertised & ADVERTISE_10_FULL) {
-		hw_dbg("Advertise 10mb Full duplex\n");
+		hw_dbg("Advertise 10mb Full duplex");
 		mii_autoneg_adv_reg |= NWAY_AR_10T_FD_CAPS;
 	}
 
 	/* Do we want to advertise 100 Mb Half Duplex? */
 	if (phy->autoneg_advertised & ADVERTISE_100_HALF) {
-		hw_dbg("Advertise 100mb Half duplex\n");
+		hw_dbg("Advertise 100mb Half duplex");
 		mii_autoneg_adv_reg |= NWAY_AR_100TX_HD_CAPS;
 	}
 
 	/* Do we want to advertise 100 Mb Full Duplex? */
 	if (phy->autoneg_advertised & ADVERTISE_100_FULL) {
-		hw_dbg("Advertise 100mb Full duplex\n");
+		hw_dbg("Advertise 100mb Full duplex");
 		mii_autoneg_adv_reg |= NWAY_AR_100TX_FD_CAPS;
 	}
 
 	/* We do not allow the Phy to advertise 1000 Mb Half Duplex */
 	if (phy->autoneg_advertised & ADVERTISE_1000_HALF)
-		hw_dbg("Advertise 1000mb Half duplex request denied!\n");
+		hw_dbg("Advertise 1000mb Half duplex request denied");
 
 	/* Do we want to advertise 1000 Mb Full Duplex? */
 	if (phy->autoneg_advertised & ADVERTISE_1000_FULL) {
-		hw_dbg("Advertise 1000mb Full duplex\n");
+		hw_dbg("Advertise 1000mb Full duplex");
 		mii_1000t_ctrl_reg |= CR_1000T_FD_CAPS;
 	}
 
 	/* We do not allow the Phy to advertise 2500 Mb Half Duplex */
 	if (phy->autoneg_advertised & ADVERTISE_2500_HALF)
-		hw_dbg("Advertise 2500mb Half duplex request denied!\n");
+		hw_dbg("Advertise 2500mb Half duplex request denied");
 
 	/* Do we want to advertise 2500 Mb Full Duplex? */
 	if (phy->autoneg_advertised & ADVERTISE_2500_FULL) {
-		hw_dbg("Advertise 2500mb Full duplex\n");
+		hw_dbg("Advertise 2500mb Full duplex");
 		aneg_multigbt_an_ctrl |= CR_2500T_FD_CAPS;
 	} else {
 		aneg_multigbt_an_ctrl &= ~CR_2500T_FD_CAPS;
@@ -376,7 +376,7 @@ static s32 igc_phy_setup_autoneg(struct igc_hw *hw)
 		mii_autoneg_adv_reg |= (NWAY_AR_ASM_DIR | NWAY_AR_PAUSE);
 		break;
 	default:
-		hw_dbg("Flow control param set incorrectly\n");
+		hw_dbg("Flow control param set incorrectly");
 		return -IGC_ERR_CONFIG;
 	}
 
@@ -384,7 +384,7 @@ static s32 igc_phy_setup_autoneg(struct igc_hw *hw)
 	if (ret_val)
 		return ret_val;
 
-	hw_dbg("Auto-Neg Advertising %x\n", mii_autoneg_adv_reg);
+	hw_dbg("Auto-Neg Advertising %x", mii_autoneg_adv_reg);
 
 	if (phy->autoneg_mask & ADVERTISE_1000_FULL)
 		ret_val = phy->ops.write_reg(hw, PHY_1000T_CTRL,
@@ -458,13 +458,13 @@ static s32 igc_copper_link_autoneg(struct igc_hw *hw)
 	if (phy->autoneg_advertised == 0)
 		phy->autoneg_advertised = phy->autoneg_mask;
 
-	hw_dbg("Reconfiguring auto-neg advertisement params\n");
+	hw_dbg("Reconfiguring auto-neg advertisement params");
 	ret_val = igc_phy_setup_autoneg(hw);
 	if (ret_val) {
-		hw_dbg("Error Setting up Auto-Negotiation\n");
+		hw_dbg("Error Setting up Auto-Negotiation");
 		goto out;
 	}
-	hw_dbg("Restarting Auto-Neg\n");
+	hw_dbg("Restarting Auto-Neg");
 
 	/* Restart auto-negotiation by setting the Auto Neg Enable bit and
 	 * the Auto Neg Restart bit in the PHY control register.
@@ -484,7 +484,7 @@ static s32 igc_copper_link_autoneg(struct igc_hw *hw)
 	if (phy->autoneg_wait_to_complete) {
 		ret_val = igc_wait_autoneg(hw);
 		if (ret_val) {
-			hw_dbg("Error while waiting for autoneg to complete\n");
+			hw_dbg("Error while waiting for autoneg to complete");
 			goto out;
 		}
 	}
@@ -520,10 +520,10 @@ s32 igc_setup_copper_link(struct igc_hw *hw)
 		/* PHY will be set to 10H, 10F, 100H or 100F
 		 * depending on user settings.
 		 */
-		hw_dbg("Forcing Speed and Duplex\n");
+		hw_dbg("Forcing Speed and Duplex");
 		ret_val = hw->phy.ops.force_speed_duplex(hw);
 		if (ret_val) {
-			hw_dbg("Error Forcing Speed and Duplex\n");
+			hw_dbg("Error Forcing Speed and Duplex");
 			goto out;
 		}
 	}
@@ -536,11 +536,11 @@ s32 igc_setup_copper_link(struct igc_hw *hw)
 		goto out;
 
 	if (link) {
-		hw_dbg("Valid link established!!!\n");
+		hw_dbg("Valid link established");
 		igc_config_collision_dist(hw);
 		ret_val = igc_config_fc_after_link_up(hw);
 	} else {
-		hw_dbg("Unable to establish link!!!\n");
+		hw_dbg("Unable to establish link");
 	}
 
 out:
@@ -563,7 +563,7 @@ static s32 igc_read_phy_reg_mdic(struct igc_hw *hw, u32 offset, u16 *data)
 	s32 ret_val = 0;
 
 	if (offset > MAX_PHY_REG_ADDRESS) {
-		hw_dbg("PHY Address %d is out of range\n", offset);
+		hw_dbg("PHY Address %d is out of range", offset);
 		ret_val = -IGC_ERR_PARAM;
 		goto out;
 	}
@@ -589,12 +589,12 @@ static s32 igc_read_phy_reg_mdic(struct igc_hw *hw, u32 offset, u16 *data)
 			break;
 	}
 	if (!(mdic & IGC_MDIC_READY)) {
-		hw_dbg("MDI Read did not complete\n");
+		hw_dbg("MDI Read did not complete");
 		ret_val = -IGC_ERR_PHY;
 		goto out;
 	}
 	if (mdic & IGC_MDIC_ERROR) {
-		hw_dbg("MDI Error\n");
+		hw_dbg("MDI Error");
 		ret_val = -IGC_ERR_PHY;
 		goto out;
 	}
@@ -619,7 +619,7 @@ static s32 igc_write_phy_reg_mdic(struct igc_hw *hw, u32 offset, u16 data)
 	s32 ret_val = 0;
 
 	if (offset > MAX_PHY_REG_ADDRESS) {
-		hw_dbg("PHY Address %d is out of range\n", offset);
+		hw_dbg("PHY Address %d is out of range", offset);
 		ret_val = -IGC_ERR_PARAM;
 		goto out;
 	}
@@ -646,12 +646,12 @@ static s32 igc_write_phy_reg_mdic(struct igc_hw *hw, u32 offset, u16 data)
 			break;
 	}
 	if (!(mdic & IGC_MDIC_READY)) {
-		hw_dbg("MDI Write did not complete\n");
+		hw_dbg("MDI Write did not complete");
 		ret_val = -IGC_ERR_PHY;
 		goto out;
 	}
 	if (mdic & IGC_MDIC_ERROR) {
-		hw_dbg("MDI Error\n");
+		hw_dbg("MDI Error");
 		ret_val = -IGC_ERR_PHY;
 		goto out;
 	}
-- 
2.25.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
