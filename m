Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D40545511C8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Jun 2022 09:48:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0214B60F2D;
	Mon, 20 Jun 2022 07:48:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0214B60F2D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1655711314;
	bh=xnygRBttwO1pSE8fJQw5i1V7zby/iXvKFgVACIE+L+c=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=zpNSbupeGLb5O0c4u9gGWHhye47UCeUpcGo5BaiwCLlUxKiOuOaVHGZQ+MFOpbeaF
	 jckS/YKeca67PRD48UtumsJZCyLRh2OiifXlm5f0x7LxQxtDvNTLwACliiEzGVmD5u
	 ozeMBIy+8X+zGSwrMemPr3Ql4Kk1gxJphDzF8+TWG40dwEl6bdTBEWtF3zkH4BZLh/
	 2iOHbPljL53WfMuU7JEuGHFf0ZQ2+eDITfSzIe68lK5qPAmvE7DGdgOo0GeM6rcUm6
	 F9l1rUY15WvQO0LVSTqmDs54jXHKtHwlMQKLhFTcfoOANxP3bOSFhduCiFIPcWQUx/
	 Pt4olvA3cVxlg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hSSBphuKcCIO; Mon, 20 Jun 2022 07:48:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E1C6460F28;
	Mon, 20 Jun 2022 07:48:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1C6460F28
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 297411BF471
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jun 2022 07:48:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 02A6A60F28
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jun 2022 07:48:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 02A6A60F28
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1xSiq8aeLzOW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Jun 2022 07:48:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 36EBD605B7
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 36EBD605B7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jun 2022 07:48:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="280887161"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="280887161"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 00:48:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="676420302"
Received: from propan.igk.intel.com ([10.211.8.82])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Jun 2022 00:48:11 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 20 Jun 2022 09:47:05 +0200
Message-Id: <20220620074705.112316-1-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655711307; x=1687247307;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ipol/DREk/Jdw03BaLwC1nMlg745N9ERJehpcEw77Zw=;
 b=W7EvAthQixORgsKu9IdtfvKyPpplhU9kQpz3Tylzbjmj1e+EPZ2h4QN1
 pTvKi4HVyGFQGoaIVUIE7ksOqOwVDCDzUELBGoiMvskQov4wePDhsYUQS
 glb4TbT/agM4+x1T2n4ZpAwEMe/i9cmlvO0udnZYjAMlovrkRCWp8nxxZ
 +GQVeh0rlVL7NP5wCsiOE9g/wNpD8wB+Jh+vkRi7/SjEpcWFSHuiFaKQn
 F7N/nMZNGLHI6g9ojFfR17T28RcELop42ibMDRCEVd+tmPGsHKgnh0u90
 m59Azjyw++W1TJb5NJE8e+7O5ZRhkH4taWv1eqm4THBHA5RWmwgj8T3SP
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=W7EvAthQ
Subject: [Intel-wired-lan] [PATCH net v2] ice: ethtool: advertise 1000M
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

Fix this, by adding the function `ice_set_phy_type_from_speed()`
for 1000M speeds.

Fixes: 48cb27f2fd18 ("ice: Implement handlers for ethtool PHY/link operations")
Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 39 +++++++++++++++++++-
 1 file changed, 38 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 1e71b70f0e52..8078618ce1b6 100644
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
+	 * enables all link modes, but having mixed copper and optical
+	 * standards is not supported.
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
