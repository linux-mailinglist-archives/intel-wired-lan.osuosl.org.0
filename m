Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C1B374A25
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 May 2021 23:28:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D2C83845EC;
	Wed,  5 May 2021 21:28:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oIf0c8fBtZ2h; Wed,  5 May 2021 21:28:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4F4D845E9;
	Wed,  5 May 2021 21:28:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 99B451BF25F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 May 2021 21:28:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5B38F845DD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 May 2021 21:28:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2RW1Tt-ubxbN for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 May 2021 21:28:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9C0B2845E9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 May 2021 21:28:30 +0000 (UTC)
IronPort-SDR: xjv40F1wPuNhmRGVgCSCQZVefoQG1XbUhJgt1PcFCPOCr/HD5KtRsoM6M6gBor37Bq459hNUoh
 RcnjUEwqsVhQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9975"; a="283743042"
X-IronPort-AV: E=Sophos;i="5.82,276,1613462400"; d="scan'208";a="283743042"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2021 14:28:28 -0700
IronPort-SDR: t4z+OUcwpG/DiKfODg7jx4LF8jjUa6X6OkyMItvR6XurZIEIhAOYtKHExPwZSB5+kT/HFJGcv+
 zP1U5/ZBoIsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,276,1613462400"; d="scan'208";a="622213116"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by fmsmga005.fm.intel.com with ESMTP; 05 May 2021 14:28:28 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  5 May 2021 14:17:58 -0700
Message-Id: <20210505211800.11908-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210505211800.11908-1-anthony.l.nguyen@intel.com>
References: <20210505211800.11908-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 2/4] ice: report supported and
 advertised autoneg using PHY capabilities
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

Ethtool incorrectly reported supported and advertised auto-negotiation
settings for a backplane PHY image which did not support auto-negotiation.
This can occur when using media or PHY type for reporting ethtool
supported and advertised auto-negotiation settings.

Remove setting supported and advertised auto-negotiation settings based
on PHY type in ice_phy_type_to_ethtool(), and MAC type in
ice_get_link_ksettings().

Ethtool supported and advertised auto-negotiation settings should be
based on the PHY image using the AQ command get PHY capabilities with
media. Add setting supported and advertised auto-negotiation settings
based get PHY capabilities with media in ice_get_link_ksettings().

Fixes: 48cb27f2fd18 ("ice: Implement handlers for ethtool PHY/link operations")
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 51 +++-----------------
 1 file changed, 6 insertions(+), 45 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index d9ddd0bcf65f..99301ad95290 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1773,49 +1773,6 @@ ice_phy_type_to_ethtool(struct net_device *netdev,
 		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_100GB,
 						100000baseKR4_Full);
 	}
-
-	/* Autoneg PHY types */
-	if (phy_types_low & ICE_PHY_TYPE_LOW_100BASE_TX ||
-	    phy_types_low & ICE_PHY_TYPE_LOW_1000BASE_T ||
-	    phy_types_low & ICE_PHY_TYPE_LOW_1000BASE_KX ||
-	    phy_types_low & ICE_PHY_TYPE_LOW_2500BASE_T ||
-	    phy_types_low & ICE_PHY_TYPE_LOW_2500BASE_KX ||
-	    phy_types_low & ICE_PHY_TYPE_LOW_5GBASE_T ||
-	    phy_types_low & ICE_PHY_TYPE_LOW_5GBASE_KR ||
-	    phy_types_low & ICE_PHY_TYPE_LOW_10GBASE_T ||
-	    phy_types_low & ICE_PHY_TYPE_LOW_10GBASE_KR_CR1 ||
-	    phy_types_low & ICE_PHY_TYPE_LOW_25GBASE_T ||
-	    phy_types_low & ICE_PHY_TYPE_LOW_25GBASE_CR ||
-	    phy_types_low & ICE_PHY_TYPE_LOW_25GBASE_CR_S ||
-	    phy_types_low & ICE_PHY_TYPE_LOW_25GBASE_CR1 ||
-	    phy_types_low & ICE_PHY_TYPE_LOW_25GBASE_KR ||
-	    phy_types_low & ICE_PHY_TYPE_LOW_25GBASE_KR_S ||
-	    phy_types_low & ICE_PHY_TYPE_LOW_25GBASE_KR1 ||
-	    phy_types_low & ICE_PHY_TYPE_LOW_40GBASE_CR4 ||
-	    phy_types_low & ICE_PHY_TYPE_LOW_40GBASE_KR4) {
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, advertising,
-						     Autoneg);
-	}
-	if (phy_types_low & ICE_PHY_TYPE_LOW_50GBASE_CR2 ||
-	    phy_types_low & ICE_PHY_TYPE_LOW_50GBASE_KR2 ||
-	    phy_types_low & ICE_PHY_TYPE_LOW_50GBASE_CP ||
-	    phy_types_low & ICE_PHY_TYPE_LOW_50GBASE_KR_PAM4) {
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, advertising,
-						     Autoneg);
-	}
-	if (phy_types_low & ICE_PHY_TYPE_LOW_100GBASE_CR4 ||
-	    phy_types_low & ICE_PHY_TYPE_LOW_100GBASE_KR4 ||
-	    phy_types_low & ICE_PHY_TYPE_LOW_100GBASE_KR_PAM4 ||
-	    phy_types_low & ICE_PHY_TYPE_LOW_100GBASE_CP2) {
-		ethtool_link_ksettings_add_link_mode(ks, supported,
-						     Autoneg);
-		ethtool_link_ksettings_add_link_mode(ks, advertising,
-						     Autoneg);
-	}
 }
 
 #define TEST_SET_BITS_TIMEOUT	50
@@ -1972,9 +1929,7 @@ ice_get_link_ksettings(struct net_device *netdev,
 		ks->base.port = PORT_TP;
 		break;
 	case ICE_MEDIA_BACKPLANE:
-		ethtool_link_ksettings_add_link_mode(ks, supported, Autoneg);
 		ethtool_link_ksettings_add_link_mode(ks, supported, Backplane);
-		ethtool_link_ksettings_add_link_mode(ks, advertising, Autoneg);
 		ethtool_link_ksettings_add_link_mode(ks, advertising,
 						     Backplane);
 		ks->base.port = PORT_NONE;
@@ -2049,6 +2004,12 @@ ice_get_link_ksettings(struct net_device *netdev,
 	if (caps->link_fec_options & ICE_AQC_PHY_FEC_25G_RS_CLAUSE91_EN)
 		ethtool_link_ksettings_add_link_mode(ks, supported, FEC_RS);
 
+	/* Set supported and advertised autoneg */
+	if (ice_is_phy_caps_an_enabled(caps)) {
+		ethtool_link_ksettings_add_link_mode(ks, supported, Autoneg);
+		ethtool_link_ksettings_add_link_mode(ks, advertising, Autoneg);
+	}
+
 done:
 	kfree(caps);
 	return err;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
