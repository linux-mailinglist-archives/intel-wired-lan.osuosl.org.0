Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 65CCE20B713
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jun 2020 19:33:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 079C6204A6;
	Fri, 26 Jun 2020 17:33:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 33xzY5vua4np; Fri, 26 Jun 2020 17:33:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 535C4204FC;
	Fri, 26 Jun 2020 17:33:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 776891BF306
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2020 13:29:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 71BD984C63
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2020 13:29:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Uwd5G3k7tnW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jun 2020 13:29:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2DBCB85FC0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2020 13:29:08 +0000 (UTC)
IronPort-SDR: JdlSUKnuFu2l1joWcrOZIZaosViicBIzkF7lw9hC4IikGh0OgGQYh2wlmfX2ZZ6FHqiIlLhwJx
 /qJLiLqKWfpQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="230089999"
X-IronPort-AV: E=Sophos;i="5.75,283,1589266800"; d="scan'208";a="230089999"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 06:29:07 -0700
IronPort-SDR: MM/MHD6boI7pcNmL7EjkRFBl/MvlZu7amYK4auePKt13+W+R8GTIw/Ws/37AD0YgGYG8jVnX9h
 MkTffOKqj6zQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,283,1589266800"; d="scan'208";a="480003643"
Received: from unknown (HELO s215.localdomain) ([10.237.94.20])
 by fmsmga005.fm.intel.com with ESMTP; 26 Jun 2020 06:29:06 -0700
From: Radoslaw Tyl <radoslawx.tyl@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 26 Jun 2020 15:28:14 +0200
Message-Id: <20200626132814.41471-1-radoslawx.tyl@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 26 Jun 2020 17:33:27 +0000
Subject: [Intel-wired-lan] [PATCH] ixgbe: Add ethtool support to enable 2.5
 and 5.0 Gbps support
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
Cc: aleksandr.loktionov@intel.com, Radoslaw Tyl <radoslawx.tyl@intel.com>,
 piotrx.skajewski@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Added full support for new version Ethtool API. New API allow use
2500Gbase-T and 5000base-T supported and advertised link speed modes.

Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
---
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 262 ++++++++++++------
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   6 +-
 2 files changed, 183 insertions(+), 85 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index c6bf0a50ee63..6ee6959ae879 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -142,32 +142,71 @@ static const char ixgbe_priv_flags_strings[][ETH_GSTRING_LEN] = {
 
 #define IXGBE_PRIV_FLAGS_STR_LEN ARRAY_SIZE(ixgbe_priv_flags_strings)
 
-/* currently supported speeds for 10G */
-#define ADVRTSD_MSK_10G (SUPPORTED_10000baseT_Full | \
-			 SUPPORTED_10000baseKX4_Full | \
-			 SUPPORTED_10000baseKR_Full)
-
 #define ixgbe_isbackplane(type) ((type) == ixgbe_media_type_backplane)
 
-static u32 ixgbe_get_supported_10gtypes(struct ixgbe_hw *hw)
+static void ixgbe_set_supported_10gtypes(struct ixgbe_hw *hw,
+					 struct ethtool_link_ksettings *cmd)
 {
-	if (!ixgbe_isbackplane(hw->phy.media_type))
-		return SUPPORTED_10000baseT_Full;
+	if (!ixgbe_isbackplane(hw->phy.media_type)) {
+		ethtool_link_ksettings_add_link_mode(cmd, supported,
+						     10000baseT_Full);
+		return;
+	}
 
 	switch (hw->device_id) {
 	case IXGBE_DEV_ID_82598:
 	case IXGBE_DEV_ID_82599_KX4:
 	case IXGBE_DEV_ID_82599_KX4_MEZZ:
 	case IXGBE_DEV_ID_X550EM_X_KX4:
-		return SUPPORTED_10000baseKX4_Full;
+		ethtool_link_ksettings_add_link_mode
+			(cmd, supported, 10000baseKX4_Full);
+		break;
 	case IXGBE_DEV_ID_82598_BX:
 	case IXGBE_DEV_ID_82599_KR:
 	case IXGBE_DEV_ID_X550EM_X_KR:
 	case IXGBE_DEV_ID_X550EM_X_XFI:
-		return SUPPORTED_10000baseKR_Full;
+		ethtool_link_ksettings_add_link_mode
+			(cmd, supported, 10000baseKR_Full);
+		break;
 	default:
-		return SUPPORTED_10000baseKX4_Full |
-		       SUPPORTED_10000baseKR_Full;
+		ethtool_link_ksettings_add_link_mode
+			(cmd, supported, 10000baseKX4_Full);
+		ethtool_link_ksettings_add_link_mode
+			(cmd, supported, 10000baseKR_Full);
+		break;
+	}
+}
+
+static void ixgbe_set_advertising_10gtypes(struct ixgbe_hw *hw,
+					   struct ethtool_link_ksettings *cmd)
+{
+	if (!ixgbe_isbackplane(hw->phy.media_type)) {
+		ethtool_link_ksettings_add_link_mode(cmd, advertising,
+						     10000baseT_Full);
+		return;
+	}
+
+	switch (hw->device_id) {
+	case IXGBE_DEV_ID_82598:
+	case IXGBE_DEV_ID_82599_KX4:
+	case IXGBE_DEV_ID_82599_KX4_MEZZ:
+	case IXGBE_DEV_ID_X550EM_X_KX4:
+		ethtool_link_ksettings_add_link_mode
+			(cmd, advertising, 10000baseKX4_Full);
+		break;
+	case IXGBE_DEV_ID_82598_BX:
+	case IXGBE_DEV_ID_82599_KR:
+	case IXGBE_DEV_ID_X550EM_X_KR:
+	case IXGBE_DEV_ID_X550EM_X_XFI:
+		ethtool_link_ksettings_add_link_mode
+			(cmd, advertising, 10000baseKR_Full);
+		break;
+	default:
+		ethtool_link_ksettings_add_link_mode
+			(cmd, advertising, 10000baseKX4_Full);
+		ethtool_link_ksettings_add_link_mode
+			(cmd, advertising, 10000baseKR_Full);
+		break;
 	}
 }
 
@@ -178,52 +217,88 @@ static int ixgbe_get_link_ksettings(struct net_device *netdev,
 	struct ixgbe_hw *hw = &adapter->hw;
 	ixgbe_link_speed supported_link;
 	bool autoneg = false;
-	u32 supported, advertising;
 
-	ethtool_convert_link_mode_to_legacy_u32(&supported,
-						cmd->link_modes.supported);
+	ethtool_link_ksettings_zero_link_mode(cmd, supported);
+	ethtool_link_ksettings_zero_link_mode(cmd, advertising);
 
 	hw->mac.ops.get_link_capabilities(hw, &supported_link, &autoneg);
 
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
+		ixgbe_set_supported_10gtypes(hw, cmd);
+		ixgbe_set_advertising_10gtypes(hw, cmd);
+	}
+	if (supported_link & IXGBE_LINK_SPEED_5GB_FULL)
+		ethtool_link_ksettings_add_link_mode(cmd, supported,
+						     5000baseT_Full);
+
+	if (supported_link & IXGBE_LINK_SPEED_2_5GB_FULL)
+		ethtool_link_ksettings_add_link_mode(cmd, supported,
+						     2500baseT_Full);
+
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
+			ixgbe_set_advertising_10gtypes(hw, cmd);
 		if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_1GB_FULL) {
-			if (supported & SUPPORTED_1000baseKX_Full)
-				advertising |= ADVERTISED_1000baseKX_Full;
+			if (ethtool_link_ksettings_test_link_mode
+				(cmd, supported, 1000baseKX_Full))
+				ethtool_link_ksettings_add_link_mode
+					(cmd, advertising, 1000baseKX_Full);
 			else
-				advertising |= ADVERTISED_1000baseT_Full;
+				ethtool_link_ksettings_add_link_mode
+					(cmd, advertising, 1000baseT_Full);
 		}
+		if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_5GB_FULL)
+			ethtool_link_ksettings_add_link_mode(cmd, advertising,
+							     5000baseT_Full);
+		if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_2_5GB_FULL)
+			ethtool_link_ksettings_add_link_mode(cmd, advertising,
+							     2500baseT_Full);
 	} else {
 		if (hw->phy.multispeed_fiber && !autoneg) {
 			if (supported_link & IXGBE_LINK_SPEED_10GB_FULL)
-				advertising = ADVERTISED_10000baseT_Full;
+				ethtool_link_ksettings_add_link_mode
+					(cmd, advertising, 10000baseT_Full);
 		}
 	}
 
 	if (autoneg) {
-		supported |= SUPPORTED_Autoneg;
-		advertising |= ADVERTISED_Autoneg;
+		ethtool_link_ksettings_add_link_mode(cmd, supported, Autoneg);
+		ethtool_link_ksettings_add_link_mode(cmd, advertising, Autoneg);
 		cmd->base.autoneg = AUTONEG_ENABLE;
 	} else
 		cmd->base.autoneg = AUTONEG_DISABLE;
@@ -235,13 +310,13 @@ static int ixgbe_get_link_ksettings(struct net_device *netdev,
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
@@ -260,8 +335,10 @@ static int ixgbe_get_link_ksettings(struct net_device *netdev,
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
@@ -272,61 +349,76 @@ static int ixgbe_get_link_ksettings(struct net_device *netdev,
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
+		ethtool_link_ksettings_add_link_mode(cmd, supported,
+						     FIBRE);
+		ethtool_link_ksettings_add_link_mode(cmd, advertising,
+						     FIBRE);
 		cmd->base.port = PORT_NONE;
 		break;
 	case ixgbe_phy_unknown:
 	case ixgbe_phy_generic:
 	case ixgbe_phy_sfp_unsupported:
 	default:
-		supported |= SUPPORTED_FIBRE;
-		advertising |= ADVERTISED_FIBRE;
+		ethtool_link_ksettings_add_link_mode(cmd, supported,
+						     FIBRE);
+		ethtool_link_ksettings_add_link_mode(cmd, advertising,
+						     FIBRE);
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
@@ -358,11 +450,6 @@ static int ixgbe_get_link_ksettings(struct net_device *netdev,
 		cmd->base.duplex = DUPLEX_UNKNOWN;
 	}
 
-	ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.supported,
-						supported);
-	ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.advertising,
-						advertising);
-
 	return 0;
 }
 
@@ -373,12 +460,6 @@ static int ixgbe_set_link_ksettings(struct net_device *netdev,
 	struct ixgbe_hw *hw = &adapter->hw;
 	u32 advertised, old;
 	s32 err = 0;
-	u32 supported, advertising;
-
-	ethtool_convert_link_mode_to_legacy_u32(&supported,
-						cmd->link_modes.supported);
-	ethtool_convert_link_mode_to_legacy_u32(&advertising,
-						cmd->link_modes.advertising);
 
 	if ((hw->phy.media_type == ixgbe_media_type_copper) ||
 	    (hw->phy.multispeed_fiber)) {
@@ -386,29 +467,41 @@ static int ixgbe_set_link_ksettings(struct net_device *netdev,
 		 * this function does not support duplex forcing, but can
 		 * limit the advertising of the adapter to the specified speed
 		 */
-		if (advertising & ~supported)
+		if (!bitmap_subset(cmd->link_modes.advertising,
+				   cmd->link_modes.supported,
+				   __ETHTOOL_LINK_MODE_MASK_NBITS))
 			return -EINVAL;
 
 		/* only allow one speed at a time if no autoneg */
 		if (!cmd->base.autoneg && hw->phy.multispeed_fiber) {
-			if (advertising ==
-			    (ADVERTISED_10000baseT_Full |
-			     ADVERTISED_1000baseT_Full))
+			if (ethtool_link_ksettings_test_link_mode
+				(cmd, advertising, 10000baseT_Full) &&
+				ethtool_link_ksettings_test_link_mode
+					(cmd, advertising, 1000baseT_Full))
 				return -EINVAL;
 		}
 
 		old = hw->phy.autoneg_advertised;
 		advertised = 0;
-		if (advertising & ADVERTISED_10000baseT_Full)
+		if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
+							  10000baseT_Full))
 			advertised |= IXGBE_LINK_SPEED_10GB_FULL;
-
-		if (advertising & ADVERTISED_1000baseT_Full)
+		if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
+							  5000baseT_Full))
+			advertised |= IXGBE_LINK_SPEED_5GB_FULL;
+		if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
+							  2500baseT_Full))
+			advertised |= IXGBE_LINK_SPEED_2_5GB_FULL;
+		if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
+							  1000baseT_Full))
 			advertised |= IXGBE_LINK_SPEED_1GB_FULL;
 
-		if (advertising & ADVERTISED_100baseT_Full)
+		if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
+							  100baseT_Full))
 			advertised |= IXGBE_LINK_SPEED_100_FULL;
 
-		if (advertising & ADVERTISED_10baseT_Full)
+		if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
+							  10baseT_Full))
 			advertised |= IXGBE_LINK_SPEED_10_FULL;
 
 		if (old == advertised)
@@ -429,7 +522,8 @@ static int ixgbe_set_link_ksettings(struct net_device *netdev,
 		u32 speed = cmd->base.speed;
 
 		if ((cmd->base.autoneg == AUTONEG_ENABLE) ||
-		    (advertising != ADVERTISED_10000baseT_Full) ||
+		    (!ethtool_link_ksettings_test_link_mode(cmd, advertising,
+							    10000baseT_Full)) ||
 		    (speed + cmd->base.duplex != SPEED_10000 + DUPLEX_FULL))
 			return -EINVAL;
 	}
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 97a423ecf808..2aa44150b887 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -5503,9 +5503,13 @@ static int ixgbe_non_sfp_link_config(struct ixgbe_hw *hw)
 		return ret;
 
 	speed = hw->phy.autoneg_advertised;
-	if ((!speed) && (hw->mac.ops.get_link_capabilities))
+	if (!speed && hw->mac.ops.get_link_capabilities) {
 		ret = hw->mac.ops.get_link_capabilities(hw, &speed,
 							&autoneg);
+		speed &= ~(IXGBE_LINK_SPEED_5GB_FULL |
+			   IXGBE_LINK_SPEED_2_5GB_FULL);
+	}
+
 	if (ret)
 		return ret;
 
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
