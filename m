Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1732220ABA8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jun 2020 07:02:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8B7602010E;
	Fri, 26 Jun 2020 05:02:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a6NU8FABYFxX; Fri, 26 Jun 2020 05:02:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 025EB2042D;
	Fri, 26 Jun 2020 05:02:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B13F41BF5A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2020 05:02:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AC77C8567A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2020 05:02:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ybxk6rkPirII for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jun 2020 05:02:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 938AD855F7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2020 05:02:32 +0000 (UTC)
IronPort-SDR: +s69QTKO9e1qD/FKc42+GDtT8UHXHLWoBtOm94kTNZIFoCvrIv1V5MjkcvzSD5NGYqU8T4BcK+
 r4F50LjVdSPQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="144285968"
X-IronPort-AV: E=Sophos;i="5.75,282,1589266800"; d="scan'208";a="144285968"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2020 22:02:31 -0700
IronPort-SDR: rX0B9N+mrnclwJJvJgyIs9l1A4QnqT/wOefc5oltasUQqMUF+eEpmUp+4wlNj1eABQUNrwkLh3
 710z/Y1r8B6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,282,1589266800"; d="scan'208";a="280046808"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.86])
 by orsmga006.jf.intel.com with ESMTP; 25 Jun 2020 22:02:31 -0700
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jun 2020 22:02:28 -0700
Message-Id: <20200626050228.1287009-1-jeffrey.t.kirsher@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue] ixgbe: Add ethtool support to enable
 2.5 and 5.0 Gbps support
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Arthur F Mclean <arthur.f.mclean@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Update the ixgbe ethtool interface to support 2.5 and 5 GbE support by
updated the getting and setting advertised and supported speed modes.

CC: Arthur F Mclean <arthur.f.mclean@intel.com>
CC: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
---
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 234 ++++++++++++------
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   2 +
 2 files changed, 155 insertions(+), 81 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 8ae2c8c2f6a1..c4e4aa33c91d 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -149,28 +149,6 @@ static const char ixgbe_priv_flags_strings[][ETH_GSTRING_LEN] = {
 
 #define ixgbe_isbackplane(type) ((type) == ixgbe_media_type_backplane)
 
-static u32 ixgbe_get_supported_10gtypes(struct ixgbe_hw *hw)
-{
-	if (!ixgbe_isbackplane(hw->phy.media_type))
-		return SUPPORTED_10000baseT_Full;
-
-	switch (hw->device_id) {
-	case IXGBE_DEV_ID_82598:
-	case IXGBE_DEV_ID_82599_KX4:
-	case IXGBE_DEV_ID_82599_KX4_MEZZ:
-	case IXGBE_DEV_ID_X550EM_X_KX4:
-		return SUPPORTED_10000baseKX4_Full;
-	case IXGBE_DEV_ID_82598_BX:
-	case IXGBE_DEV_ID_82599_KR:
-	case IXGBE_DEV_ID_X550EM_X_KR:
-	case IXGBE_DEV_ID_X550EM_X_XFI:
-		return SUPPORTED_10000baseKR_Full;
-	default:
-		return SUPPORTED_10000baseKX4_Full |
-		       SUPPORTED_10000baseKR_Full;
-	}
-}
-
 static int ixgbe_get_link_ksettings(struct net_device *netdev,
 				    struct ethtool_link_ksettings *cmd)
 {
@@ -178,55 +156,131 @@ static int ixgbe_get_link_ksettings(struct net_device *netdev,
 	struct ixgbe_hw *hw = &adapter->hw;
 	ixgbe_link_speed supported_link;
 	bool autoneg = false;
-	u32 supported, advertising;
 
-	ethtool_convert_link_mode_to_legacy_u32(&supported,
-						cmd->link_modes.supported);
+	ethtool_link_ksettings_zero_link_mode(cmd, supported);
+	ethtool_link_ksettings_zero_link_mode(cmd, advertising);
 
 	hw->mac.ops.get_link_capabilities(hw, &supported_link, &autoneg);
-
 	/* set the supported link speeds */
-	if (supported_link & IXGBE_LINK_SPEED_10GB_FULL)
-		supported |= ixgbe_get_supported_10gtypes(hw);
-	if (supported_link & IXGBE_LINK_SPEED_1GB_FULL)
-		supported |= (ixgbe_isbackplane(hw->phy.media_type)) ?
-				   SUPPORTED_1000baseKX_Full :
-				   SUPPORTED_1000baseT_Full;
-	if (supported_link & IXGBE_LINK_SPEED_100_FULL)
-		supported |= SUPPORTED_100baseT_Full;
-	if (supported_link & IXGBE_LINK_SPEED_10_FULL)
-		supported |= SUPPORTED_10baseT_Full;
-
-	/* default advertised speed if phy.autoneg_advertised isn't set */
-	advertising = supported;
+	if (supported_link & IXGBE_LINK_SPEED_10GB_FULL) {
+		if (ixgbe_isbackplane(hw->phy.media_type)) {
+			switch (hw->device_id) {
+			case IXGBE_DEV_ID_82598:
+			case IXGBE_DEV_ID_82599_KX4:
+			case IXGBE_DEV_ID_82599_KX4_MEZZ:
+			case IXGBE_DEV_ID_X550EM_X_KX4:
+				ethtool_link_ksettings_add_link_mode
+					(cmd, supported, 10000baseKX4_Full);
+				ethtool_link_ksettings_add_link_mode
+					(cmd, advertising, 10000baseKX4_Full);
+				break;
+			case IXGBE_DEV_ID_82598_BX:
+			case IXGBE_DEV_ID_82599_KR:
+			case IXGBE_DEV_ID_X550EM_X_KR:
+			case IXGBE_DEV_ID_X550EM_X_XFI:
+				ethtool_link_ksettings_add_link_mode
+					(cmd, supported, 10000baseKR_Full);
+				ethtool_link_ksettings_add_link_mode
+					(cmd, advertising, 10000baseKR_Full);
+				break;
+			default:
+				ethtool_link_ksettings_add_link_mode
+					(cmd, supported, 10000baseKX4_Full);
+				ethtool_link_ksettings_add_link_mode
+					(cmd, advertising, 10000baseKX4_Full);
+				ethtool_link_ksettings_add_link_mode
+					(cmd, supported, 10000baseKR_Full);
+				ethtool_link_ksettings_add_link_mode
+					(cmd, advertising, 10000baseKR_Full);
+				break;
+			}
+		} else {
+			ethtool_link_ksettings_add_link_mode(cmd, supported,
+							     10000baseT_Full);
+			ethtool_link_ksettings_add_link_mode(cmd, advertising,
+							     10000baseT_Full);
+		}
+	}
+	if (supported_link & IXGBE_LINK_SPEED_5GB_FULL)
+		ethtool_link_ksettings_add_link_mode(cmd, supported,
+						     5000baseT_Full);
+	if (supported_link & IXGBE_LINK_SPEED_2_5GB_FULL)
+		ethtool_link_ksettings_add_link_mode(cmd, supported,
+						     2500baseT_Full);
+	if (supported_link & IXGBE_LINK_SPEED_1GB_FULL) {
+		if (ixgbe_isbackplane(hw->phy.media_type)) {
+			ethtool_link_ksettings_add_link_mode(cmd, supported,
+							     1000baseKX_Full);
+			ethtool_link_ksettings_add_link_mode(cmd, advertising,
+							     1000baseKX_Full);
+		} else {
+			ethtool_link_ksettings_add_link_mode(cmd, supported,
+							     1000baseT_Full);
+			ethtool_link_ksettings_add_link_mode(cmd, advertising,
+							     1000baseT_Full);
+		}
+	}
+	if (supported_link & IXGBE_LINK_SPEED_100_FULL) {
+		ethtool_link_ksettings_add_link_mode(cmd, supported,
+						     100baseT_Full);
+		ethtool_link_ksettings_add_link_mode(cmd, advertising,
+						     100baseT_Full);
+	}
+	if (supported_link & IXGBE_LINK_SPEED_10_FULL) {
+		ethtool_link_ksettings_add_link_mode(cmd, supported,
+						     10baseT_Full);
+		ethtool_link_ksettings_add_link_mode(cmd, advertising,
+						     10baseT_Full);
+	}
+
 	/* set the advertised speeds */
 	if (hw->phy.autoneg_advertised) {
-		advertising = 0;
+		ethtool_link_ksettings_zero_link_mode(cmd, advertising);
 		if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_10_FULL)
-			advertising |= ADVERTISED_10baseT_Full;
+			ethtool_link_ksettings_add_link_mode(cmd, advertising,
+							     10baseT_Full);
 		if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_100_FULL)
-			advertising |= ADVERTISED_100baseT_Full;
+			ethtool_link_ksettings_add_link_mode(cmd, advertising,
+							     100baseT_Full);
 		if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_10GB_FULL)
-			advertising |= supported & ADVRTSD_MSK_10G;
+			ethtool_link_ksettings_add_link_mode(cmd, advertising,
+							     10000baseT_Full);
 		if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_1GB_FULL) {
-			if (supported & SUPPORTED_1000baseKX_Full)
-				advertising |= ADVERTISED_1000baseKX_Full;
+			if (ethtool_link_ksettings_test_link_mode(cmd,
+							       supported,
+							       1000baseKX_Full))
+				ethtool_link_ksettings_add_link_mode(cmd,
+							       advertising,
+							       1000baseKX_Full);
 			else
-				advertising |= ADVERTISED_1000baseT_Full;
+				ethtool_link_ksettings_add_link_mode(cmd,
+							       advertising,
+							       1000baseT_Full);
+		}
+		if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_5GB_FULL) {
+			ethtool_link_ksettings_add_link_mode(cmd, advertising,
+							     5000baseT_Full);
+		}
+		if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_2_5GB_FULL) {
+			ethtool_link_ksettings_add_link_mode(cmd, advertising,
+							     2500baseT_Full);
 		}
 	} else {
 		if (hw->phy.multispeed_fiber && !autoneg) {
 			if (supported_link & IXGBE_LINK_SPEED_10GB_FULL)
-				advertising = ADVERTISED_10000baseT_Full;
+				ethtool_link_ksettings_add_link_mode(cmd,
+							       advertising,
+							       10000baseT_Full);
 		}
 	}
 
 	if (autoneg) {
-		supported |= SUPPORTED_Autoneg;
-		advertising |= ADVERTISED_Autoneg;
+		ethtool_link_ksettings_add_link_mode(cmd, supported, Autoneg);
+		ethtool_link_ksettings_add_link_mode(cmd, advertising, Autoneg);
 		cmd->base.autoneg = AUTONEG_ENABLE;
-	} else
+	} else {
 		cmd->base.autoneg = AUTONEG_DISABLE;
+	}
 
 	/* Determine the remaining settings based on the PHY type. */
 	switch (adapter->hw.phy.type) {
@@ -235,13 +289,13 @@ static int ixgbe_get_link_ksettings(struct net_device *netdev,
 	case ixgbe_phy_x550em_ext_t:
 	case ixgbe_phy_fw:
 	case ixgbe_phy_cu_unknown:
-		supported |= SUPPORTED_TP;
-		advertising |= ADVERTISED_TP;
+		ethtool_link_ksettings_add_link_mode(cmd, supported, TP);
+		ethtool_link_ksettings_add_link_mode(cmd, advertising, TP);
 		cmd->base.port = PORT_TP;
 		break;
 	case ixgbe_phy_qt:
-		supported |= SUPPORTED_FIBRE;
-		advertising |= ADVERTISED_FIBRE;
+		ethtool_link_ksettings_add_link_mode(cmd, supported, FIBRE);
+		ethtool_link_ksettings_add_link_mode(cmd, advertising, FIBRE);
 		cmd->base.port = PORT_FIBRE;
 		break;
 	case ixgbe_phy_nl:
@@ -255,13 +309,15 @@ static int ixgbe_get_link_ksettings(struct net_device *netdev,
 	case ixgbe_phy_qsfp_active_unknown:
 	case ixgbe_phy_qsfp_intel:
 	case ixgbe_phy_qsfp_unknown:
-		/* SFP+ devices, further checking needed */
 		switch (adapter->hw.phy.sfp_type) {
+		/* SFP+ devices, further checking needed */
 		case ixgbe_sfp_type_da_cu:
 		case ixgbe_sfp_type_da_cu_core0:
 		case ixgbe_sfp_type_da_cu_core1:
-			supported |= SUPPORTED_FIBRE;
-			advertising |= ADVERTISED_FIBRE;
+			ethtool_link_ksettings_add_link_mode(cmd, supported,
+							     FIBRE);
+			ethtool_link_ksettings_add_link_mode(cmd, advertising,
+							     FIBRE);
 			cmd->base.port = PORT_DA;
 			break;
 		case ixgbe_sfp_type_sr:
@@ -272,61 +328,72 @@ static int ixgbe_get_link_ksettings(struct net_device *netdev,
 		case ixgbe_sfp_type_1g_sx_core1:
 		case ixgbe_sfp_type_1g_lx_core0:
 		case ixgbe_sfp_type_1g_lx_core1:
-			supported |= SUPPORTED_FIBRE;
-			advertising |= ADVERTISED_FIBRE;
+			ethtool_link_ksettings_add_link_mode(cmd, supported,
+							     FIBRE);
+			ethtool_link_ksettings_add_link_mode(cmd, advertising,
+							     FIBRE);
 			cmd->base.port = PORT_FIBRE;
 			break;
 		case ixgbe_sfp_type_not_present:
-			supported |= SUPPORTED_FIBRE;
-			advertising |= ADVERTISED_FIBRE;
+			ethtool_link_ksettings_add_link_mode(cmd, supported,
+							     FIBRE);
+			ethtool_link_ksettings_add_link_mode(cmd, advertising,
+							     FIBRE);
 			cmd->base.port = PORT_NONE;
 			break;
 		case ixgbe_sfp_type_1g_cu_core0:
 		case ixgbe_sfp_type_1g_cu_core1:
-			supported |= SUPPORTED_TP;
-			advertising |= ADVERTISED_TP;
+			ethtool_link_ksettings_add_link_mode(cmd, supported,
+							     TP);
+			ethtool_link_ksettings_add_link_mode(cmd, advertising,
+							     TP);
 			cmd->base.port = PORT_TP;
 			break;
 		case ixgbe_sfp_type_unknown:
 		default:
-			supported |= SUPPORTED_FIBRE;
-			advertising |= ADVERTISED_FIBRE;
+			ethtool_link_ksettings_add_link_mode(cmd, supported,
+							     FIBRE);
+			ethtool_link_ksettings_add_link_mode(cmd, advertising,
+							     FIBRE);
 			cmd->base.port = PORT_OTHER;
 			break;
 		}
 		break;
 	case ixgbe_phy_xaui:
-		supported |= SUPPORTED_FIBRE;
-		advertising |= ADVERTISED_FIBRE;
+		ethtool_link_ksettings_add_link_mode(cmd, supported, FIBRE);
+		ethtool_link_ksettings_add_link_mode(cmd, advertising, FIBRE);
 		cmd->base.port = PORT_NONE;
 		break;
 	case ixgbe_phy_unknown:
 	case ixgbe_phy_generic:
 	case ixgbe_phy_sfp_unsupported:
 	default:
-		supported |= SUPPORTED_FIBRE;
-		advertising |= ADVERTISED_FIBRE;
+		ethtool_link_ksettings_add_link_mode(cmd, supported, FIBRE);
+		ethtool_link_ksettings_add_link_mode(cmd, advertising, FIBRE);
 		cmd->base.port = PORT_OTHER;
 		break;
 	}
 
 	/* Indicate pause support */
-	supported |= SUPPORTED_Pause;
+	ethtool_link_ksettings_add_link_mode(cmd, supported, Pause);
 
 	switch (hw->fc.requested_mode) {
 	case ixgbe_fc_full:
-		advertising |= ADVERTISED_Pause;
+		ethtool_link_ksettings_add_link_mode(cmd, advertising, Pause);
 		break;
 	case ixgbe_fc_rx_pause:
-		advertising |= ADVERTISED_Pause |
-				     ADVERTISED_Asym_Pause;
+		ethtool_link_ksettings_add_link_mode(cmd, advertising, Pause);
+		ethtool_link_ksettings_add_link_mode(cmd, advertising,
+						     Asym_Pause);
 		break;
 	case ixgbe_fc_tx_pause:
-		advertising |= ADVERTISED_Asym_Pause;
+		ethtool_link_ksettings_add_link_mode(cmd, advertising,
+						     Asym_Pause);
 		break;
 	default:
-		advertising &= ~(ADVERTISED_Pause |
-				       ADVERTISED_Asym_Pause);
+		ethtool_link_ksettings_del_link_mode(cmd, advertising, Pause);
+		ethtool_link_ksettings_del_link_mode(cmd, advertising,
+						     Asym_Pause);
 	}
 
 	if (netif_carrier_ok(netdev)) {
@@ -358,11 +425,6 @@ static int ixgbe_get_link_ksettings(struct net_device *netdev,
 		cmd->base.duplex = DUPLEX_UNKNOWN;
 	}
 
-	ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.supported,
-						supported);
-	ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.advertising,
-						advertising);
-
 	return 0;
 }
 
@@ -402,6 +464,16 @@ static int ixgbe_set_link_ksettings(struct net_device *netdev,
 		if (advertising & ADVERTISED_10000baseT_Full)
 			advertised |= IXGBE_LINK_SPEED_10GB_FULL;
 
+		if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
+							  5000baseT_Full))
+			advertised |= IXGBE_LINK_SPEED_5GB_FULL;
+
+		if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
+							  2500baseT_Full))
+			advertised |= IXGBE_LINK_SPEED_2_5GB_FULL;
+
+		if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
+							  1000baseT_Full))
 		if (advertising & ADVERTISED_1000baseT_Full)
 			advertised |= IXGBE_LINK_SPEED_1GB_FULL;
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 7515ed825fe2..0c7d208d9ab0 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -5512,6 +5512,8 @@ static int ixgbe_non_sfp_link_config(struct ixgbe_hw *hw)
 	if (ret)
 		return ret;
 
+	speed &= ~(IXGBE_LINK_SPEED_5GB_FULL | IXGBE_LINK_SPEED_2_5GB_FULL);
+
 	if (hw->mac.ops.setup_link)
 		ret = hw->mac.ops.setup_link(hw, speed, link_up);
 
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
