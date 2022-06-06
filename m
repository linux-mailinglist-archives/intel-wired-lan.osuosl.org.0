Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDFD53E13F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jun 2022 09:09:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 346BF840F0;
	Mon,  6 Jun 2022 07:09:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HHGt3yp8tmKR; Mon,  6 Jun 2022 07:09:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 17EB2840E1;
	Mon,  6 Jun 2022 07:09:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F01191BF30C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jun 2022 07:09:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DD22560BF0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jun 2022 07:09:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lRxYYeZopKEW for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jun 2022 07:09:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3E8F760B74
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jun 2022 07:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654499350; x=1686035350;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0xmgH8mO7ldw51q9KbeCCEYd/JLUO6GbvnEXf0zKaC8=;
 b=OZ6T5GxKdIaXYLVfu+3A6VD1uuV5jg8FijuubpFaVckTqldO/3eqaodR
 iQ7DxpPDnkRv1hD9Q+BHJDqUJmB2KEmu98FFiYJqcJWH/oey+cmnaCmHW
 j/D88LDzjWXw66yuzuGFoBVbrLSTN9NKcvNWRg7UJePO+7GkEKIuEBtG9
 bwnWuCCiYfLCr1JhJBU+hNoL2a9qOc7C20lGIGovB/BJ8ZvnPY1pRKfvH
 AQGHstcRWy8uJkVi02Una+jOIwcaVizvlm7d798mcROMqRpDxijbwkZKw
 jxEYP1KqBI4qHBagff7f5PDvYgDfUdOCMkSYSReW7qc/oeHmE/LOmuUsE A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10369"; a="256470134"
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="256470134"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2022 00:09:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="669347961"
Received: from propan.igk.intel.com ([10.211.8.82])
 by FMSMGA003.fm.intel.com with ESMTP; 06 Jun 2022 00:08:57 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  6 Jun 2022 09:07:47 +0200
Message-Id: <20220606070747.3088370-1-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2] ice: ethtool: advertise 1000M
 speeds properly
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
Cc: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In current implementation ice_update_phy_type enables all link modes
for selected speed. This approach doesn't work for 1000M speeds,
because both copper (1000baseT) and optical (1000baseX) standards
cannot be enabled at once.

Add a special treatment for 1000M speeds.

Fixes: 48cb27f2fd18 ("ice: Implement handlers for ethtool PHY/link operations")
Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 39 +++++++++++++++++++-
 1 file changed, 38 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 1e71b70f0e52..e3080c564432 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -2189,6 +2189,42 @@ ice_setup_autoneg(struct ice_port_info *p, struct ethtool_link_ksettings *ks,
 	return err;
 }
 
+/**
+ * ice_set_phy_type_from_speed - set phy_types based on speeds
+ * and advertised modes
+ * @ks: ethtool link ksettings struct
+ * @phy_type_low: pointer to the lower part of phy_type
+ * @phy_type_high: pointer to the higher part of phy_type
+ * @adv_link_speed: targeted link speeds bitmap
+ */
+static void
+ice_set_phy_type_from_speed(const struct ethtool_link_ksettings *ks,
+			    u64 *phy_type_low, u64 *phy_type_high,
+			    u16 adv_link_speed)
+{
+	/* Handle 1000M speed in a special way because ice_update_phy_type
+	 * enables all link modes, but having mixed copper and optic standards
+	 * is not supported
+	 */
+	adv_link_speed &= ~ICE_AQ_LINK_SPEED_1000MB;
+
+	if (ethtool_link_ksettings_test_link_mode(ks, advertising,
+						  1000baseT_Full))
+		*phy_type_low |= ICE_PHY_TYPE_LOW_1000BASE_T |
+				 ICE_PHY_TYPE_LOW_1G_SGMII;
+
+	if (ethtool_link_ksettings_test_link_mode(ks, advertising,
+						  1000baseKX_Full))
+		*phy_type_low |= ICE_PHY_TYPE_LOW_1000BASE_KX;
+
+	if (ethtool_link_ksettings_test_link_mode(ks, advertising,
+						  1000baseX_Full))
+		*phy_type_low |= ICE_PHY_TYPE_LOW_1000BASE_SX |
+				 ICE_PHY_TYPE_LOW_1000BASE_LX;
+
+	ice_update_phy_type(phy_type_low, phy_type_high, adv_link_speed);
+}
+
 /**
  * ice_set_link_ksettings - Set Speed and Duplex
  * @netdev: network interface device structure
@@ -2320,7 +2356,8 @@ ice_set_link_ksettings(struct net_device *netdev,
 		adv_link_speed = curr_link_speed;
 
 	/* Convert the advertise link speeds to their corresponded PHY_TYPE */
-	ice_update_phy_type(&phy_type_low, &phy_type_high, adv_link_speed);
+	ice_set_phy_type_from_speed(ks, &phy_type_low, &phy_type_high,
+				    adv_link_speed);
 
 	if (!autoneg_changed && adv_link_speed == curr_link_speed) {
 		netdev_info(netdev, "Nothing changed, exiting without setting anything.\n");
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
