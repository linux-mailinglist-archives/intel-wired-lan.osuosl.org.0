Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4223B154A9A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Feb 2020 18:53:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 50B7D8616A;
	Thu,  6 Feb 2020 17:53:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WzZH1YHzNnWp; Thu,  6 Feb 2020 17:53:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 77D9C86151;
	Thu,  6 Feb 2020 17:53:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 245791BF9B6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2020 17:53:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 216B286102
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2020 17:53:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wtVIE_MZj4MX for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Feb 2020 17:53:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 182D2860F9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2020 17:53:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 09:53:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,410,1574150400"; d="scan'208";a="255160930"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga004.fm.intel.com with ESMTP; 06 Feb 2020 09:53:06 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 Feb 2020 01:20:01 -0800
Message-Id: <20200206092013.23388-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200206092013.23388-1-anthony.l.nguyen@intel.com>
References: <20200206092013.23388-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S37 v3 03/15] ice: display supported and
 advertised link modes
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

From: Paul Greenwalt <paul.greenwalt@intel.com>

Display all of the supported and advertised link modes based on the PHY
capability with media.

Displaying all supported modes is more informative then only displaying
the current link mode.

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 282 +------------------
 1 file changed, 2 insertions(+), 280 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 90c6a3ca20c9..26eca4ce9e2c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1710,291 +1710,13 @@ ice_get_settings_link_up(struct ethtool_link_ksettings *ks,
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_port_info *pi = np->vsi->port_info;
-	struct ethtool_link_ksettings cap_ksettings;
 	struct ice_link_status *link_info;
 	struct ice_vsi *vsi = np->vsi;
-	bool unrecog_phy_high = false;
-	bool unrecog_phy_low = false;
 
 	link_info = &vsi->port_info->phy.link_info;
 
-	/* Initialize supported and advertised settings based on PHY settings */
-	switch (link_info->phy_type_low) {
-	case ICE_PHY_TYPE_LOW_100BASE_TX:
-		ethtool_link_ksettings_add_link_mode(ks, supported, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     100baseT_Full);
-		ethtool_link_ksettings_add_link_mode(ks, advertising, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, advertising,
-						     100baseT_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_100M_SGMII:
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     100baseT_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_1000BASE_T:
-		ethtool_link_ksettings_add_link_mode(ks, supported, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     1000baseT_Full);
-		ethtool_link_ksettings_add_link_mode(ks, advertising, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, advertising,
-						     1000baseT_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_1G_SGMII:
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     1000baseT_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_1000BASE_SX:
-	case ICE_PHY_TYPE_LOW_1000BASE_LX:
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     1000baseX_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_1000BASE_KX:
-		ethtool_link_ksettings_add_link_mode(ks, supported, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     1000baseKX_Full);
-		ethtool_link_ksettings_add_link_mode(ks, advertising, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, advertising,
-						     1000baseKX_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_2500BASE_T:
-		ethtool_link_ksettings_add_link_mode(ks, supported, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, advertising, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     2500baseT_Full);
-		ethtool_link_ksettings_add_link_mode(ks, advertising,
-						     2500baseT_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_2500BASE_X:
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     2500baseX_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_2500BASE_KX:
-		ethtool_link_ksettings_add_link_mode(ks, supported, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     2500baseX_Full);
-		ethtool_link_ksettings_add_link_mode(ks, advertising, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, advertising,
-						     2500baseX_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_5GBASE_T:
-	case ICE_PHY_TYPE_LOW_5GBASE_KR:
-		ethtool_link_ksettings_add_link_mode(ks, supported, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     5000baseT_Full);
-		ethtool_link_ksettings_add_link_mode(ks, advertising, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, advertising,
-						     5000baseT_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_10GBASE_T:
-		ethtool_link_ksettings_add_link_mode(ks, supported, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     10000baseT_Full);
-		ethtool_link_ksettings_add_link_mode(ks, advertising, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, advertising,
-						     10000baseT_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_10G_SFI_DA:
-	case ICE_PHY_TYPE_LOW_10G_SFI_AOC_ACC:
-	case ICE_PHY_TYPE_LOW_10G_SFI_C2C:
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     10000baseT_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_10GBASE_SR:
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     10000baseSR_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_10GBASE_LR:
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     10000baseLR_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_10GBASE_KR_CR1:
-		ethtool_link_ksettings_add_link_mode(ks, supported, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     10000baseKR_Full);
-		ethtool_link_ksettings_add_link_mode(ks, advertising, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, advertising,
-						     10000baseKR_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_25GBASE_T:
-	case ICE_PHY_TYPE_LOW_25GBASE_CR:
-	case ICE_PHY_TYPE_LOW_25GBASE_CR_S:
-	case ICE_PHY_TYPE_LOW_25GBASE_CR1:
-		ethtool_link_ksettings_add_link_mode(ks, supported, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     25000baseCR_Full);
-		ethtool_link_ksettings_add_link_mode(ks, advertising, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, advertising,
-						     25000baseCR_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_25G_AUI_AOC_ACC:
-	case ICE_PHY_TYPE_LOW_25G_AUI_C2C:
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     25000baseCR_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_25GBASE_SR:
-	case ICE_PHY_TYPE_LOW_25GBASE_LR:
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     25000baseSR_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_25GBASE_KR:
-	case ICE_PHY_TYPE_LOW_25GBASE_KR1:
-	case ICE_PHY_TYPE_LOW_25GBASE_KR_S:
-		ethtool_link_ksettings_add_link_mode(ks, supported, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     25000baseKR_Full);
-		ethtool_link_ksettings_add_link_mode(ks, advertising, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, advertising,
-						     25000baseKR_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_40GBASE_CR4:
-		ethtool_link_ksettings_add_link_mode(ks, supported, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     40000baseCR4_Full);
-		ethtool_link_ksettings_add_link_mode(ks, advertising, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, advertising,
-						     40000baseCR4_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_40G_XLAUI_AOC_ACC:
-	case ICE_PHY_TYPE_LOW_40G_XLAUI:
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     40000baseCR4_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_40GBASE_SR4:
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     40000baseSR4_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_40GBASE_LR4:
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     40000baseLR4_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_40GBASE_KR4:
-		ethtool_link_ksettings_add_link_mode(ks, supported, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     40000baseKR4_Full);
-		ethtool_link_ksettings_add_link_mode(ks, advertising, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, advertising,
-						     40000baseKR4_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_50GBASE_CR2:
-	case ICE_PHY_TYPE_LOW_50GBASE_CP:
-		ethtool_link_ksettings_add_link_mode(ks, supported, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     50000baseCR2_Full);
-		ethtool_link_ksettings_add_link_mode(ks, advertising, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, advertising,
-						     50000baseCR2_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_50G_LAUI2_AOC_ACC:
-	case ICE_PHY_TYPE_LOW_50G_LAUI2:
-	case ICE_PHY_TYPE_LOW_50G_AUI2_AOC_ACC:
-	case ICE_PHY_TYPE_LOW_50G_AUI2:
-	case ICE_PHY_TYPE_LOW_50GBASE_SR:
-	case ICE_PHY_TYPE_LOW_50G_AUI1_AOC_ACC:
-	case ICE_PHY_TYPE_LOW_50G_AUI1:
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     50000baseCR2_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_50GBASE_KR2:
-	case ICE_PHY_TYPE_LOW_50GBASE_KR_PAM4:
-		ethtool_link_ksettings_add_link_mode(ks, supported, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     50000baseKR2_Full);
-		ethtool_link_ksettings_add_link_mode(ks, advertising, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, advertising,
-						     50000baseKR2_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_50GBASE_SR2:
-	case ICE_PHY_TYPE_LOW_50GBASE_LR2:
-	case ICE_PHY_TYPE_LOW_50GBASE_FR:
-	case ICE_PHY_TYPE_LOW_50GBASE_LR:
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     50000baseSR2_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_100GBASE_CR4:
-		ethtool_link_ksettings_add_link_mode(ks, supported, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     100000baseCR4_Full);
-		ethtool_link_ksettings_add_link_mode(ks, advertising, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, advertising,
-						     100000baseCR4_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_100G_CAUI4_AOC_ACC:
-	case ICE_PHY_TYPE_LOW_100G_CAUI4:
-	case ICE_PHY_TYPE_LOW_100G_AUI4_AOC_ACC:
-	case ICE_PHY_TYPE_LOW_100G_AUI4:
-	case ICE_PHY_TYPE_LOW_100GBASE_CR_PAM4:
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     100000baseCR4_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_100GBASE_CP2:
-		ethtool_link_ksettings_add_link_mode(ks, supported, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     100000baseCR4_Full);
-		ethtool_link_ksettings_add_link_mode(ks, advertising, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, advertising,
-						     100000baseCR4_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_100GBASE_SR4:
-	case ICE_PHY_TYPE_LOW_100GBASE_SR2:
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     100000baseSR4_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_100GBASE_LR4:
-	case ICE_PHY_TYPE_LOW_100GBASE_DR:
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     100000baseLR4_ER4_Full);
-		break;
-	case ICE_PHY_TYPE_LOW_100GBASE_KR4:
-	case ICE_PHY_TYPE_LOW_100GBASE_KR_PAM4:
-		ethtool_link_ksettings_add_link_mode(ks, supported, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     100000baseKR4_Full);
-		ethtool_link_ksettings_add_link_mode(ks, advertising, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, advertising,
-						     100000baseKR4_Full);
-		break;
-	default:
-		unrecog_phy_low = true;
-	}
-
-	switch (link_info->phy_type_high) {
-	case ICE_PHY_TYPE_HIGH_100GBASE_KR2_PAM4:
-		ethtool_link_ksettings_add_link_mode(ks, supported, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     100000baseKR4_Full);
-		ethtool_link_ksettings_add_link_mode(ks, advertising, Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, advertising,
-						     100000baseKR4_Full);
-		break;
-	case ICE_PHY_TYPE_HIGH_100G_CAUI2_AOC_ACC:
-	case ICE_PHY_TYPE_HIGH_100G_CAUI2:
-	case ICE_PHY_TYPE_HIGH_100G_AUI2_AOC_ACC:
-	case ICE_PHY_TYPE_HIGH_100G_AUI2:
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     100000baseCR4_Full);
-		break;
-	default:
-		unrecog_phy_high = true;
-	}
-
-	if (unrecog_phy_low && unrecog_phy_high) {
-		/* if we got here and link is up something bad is afoot */
-		netdev_info(netdev,
-			    "WARNING: Unrecognized PHY_Low (0x%llx).\n",
-			    (u64)link_info->phy_type_low);
-		netdev_info(netdev,
-			    "WARNING: Unrecognized PHY_High (0x%llx).\n",
-			    (u64)link_info->phy_type_high);
-	}
-
-	/* Now that we've worked out everything that could be supported by the
-	 * current PHY type, get what is supported by the NVM and intersect
-	 * them to get what is truly supported
-	 */
-	memset(&cap_ksettings, 0, sizeof(cap_ksettings));
-	ice_phy_type_to_ethtool(netdev, &cap_ksettings);
-	ethtool_intersect_link_masks(ks, &cap_ksettings);
+	/* Get supported and advertised settings from PHY ability with media */
+	ice_phy_type_to_ethtool(netdev, ks);
 
 	switch (link_info->link_speed) {
 	case ICE_AQ_LINK_SPEED_100GB:
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
