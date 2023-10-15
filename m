Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA3A7C9CA5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Oct 2023 01:51:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DDB6B414BF;
	Sun, 15 Oct 2023 23:51:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DDB6B414BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697413886;
	bh=G4mjeyf6CxBDbc+f1JZMW9CoWpsMJtGXuggvgICDp3E=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xrCz30/JDrfjKyxXL+9bmmPW7DLUlSh//Pf+QvC6EWLbPcfTKJISgdrd4VSfKEob7
	 z5muK/SQfrYz+KOa3iMPiObtZ6XJ5a2btIG2igPxTlozabznOXxfHMiravCXo4g/U3
	 yssEiLwu3RECTRyCaoasWWf6nqL1CEo9ajCVOUELQc4VnZJsiKnhU+vnSU6PSAWr53
	 ou6YBE8Ay+qaY483xCKEe+xyKph1PE9qtppFzi0TtYmsDIrzR0Rfx8PaVr9BO1Djnw
	 KpMA6JL9SGObLoPaNrWcdCxnc7DkGBmkMyHdjjUmXny5HAIVNOt5I6y4XSnT6/DvcG
	 RyWdW9+4f+D2A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2nMqJ5akj4mE; Sun, 15 Oct 2023 23:51:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 337B0400B9;
	Sun, 15 Oct 2023 23:51:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 337B0400B9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 98B691BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Oct 2023 23:51:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7A87060F3A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Oct 2023 23:51:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A87060F3A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SGmPbeO6AdV6 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 15 Oct 2023 23:51:11 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6D25460F09
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Oct 2023 23:51:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D25460F09
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="370496115"
X-IronPort-AV: E=Sophos;i="6.03,228,1694761200"; d="scan'208";a="370496115"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2023 16:51:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="929159785"
X-IronPort-AV: E=Sophos;i="6.03,228,1694761200"; d="scan'208";a="929159785"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.244.144])
 by orsmga005.jf.intel.com with ESMTP; 15 Oct 2023 16:51:10 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: netdev@vger.kernel.org
Date: Sun, 15 Oct 2023 19:43:04 -0400
Message-ID: <20231015234304.2633-4-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231015234304.2633-1-paul.greenwalt@intel.com>
References: <20231015234304.2633-1-paul.greenwalt@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697413871; x=1728949871;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0D+Q3EHdMRbQJlxMKAwAdyhi60/0N82krYUO3l5ZfM4=;
 b=hyKH+qivhwxdtqX77tWznmjKl1h9C8no2G2SC8Y0UjT6hPLRcrVSKrZu
 ev8n6L85zWodnR5asaWY2EYBkHzwFOkb2M1wNAW/Tj8HfCqkuHKWLjk2U
 0ItkjgXn8CtsWEvvh365E7Tx3NynmsorthzuGd78AhmV2FkUeOZoqzlw5
 tTObeEGlQTMdmMWsLB8mmaSHJCER5JW990uYbDte0qFFl6YcB+eP28Iwy
 Tb9nljuzMcF8rg1Iac1MwXO8zceghzrWaca27R6Yrp0khZQOTagTu71vf
 vDp4LcwAaFqQcezM7H9WtEwWid0numAJ5S5jj7aWNCBsaKVMDPOkw9S7C
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hyKH+qiv
Subject: [Intel-wired-lan] [PATCH net-next v5 3/3] ice: Refactor finding
 advertised link speed
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
Cc: jiri@resnulli.us, andrew@lunn.ch, aelior@marvell.com, manishc@marvell.com,
 vladimir.oltean@nxp.com, jdamato@fastly.com, pawel.chmielewski@intel.com,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 Paul Greenwalt <paul.greenwalt@intel.com>, horms@kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, kuba@kernel.org,
 d-tatianin@yandex-team.ru, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Pawel Chmielewski <pawel.chmielewski@intel.com>

Refactor ice_get_link_ksettings to using forced speed to link modes
mapping.

Suggested-by : Alexander Lobakin <aleksander.lobakin@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |   1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 193 ++++++++++++-------
 drivers/net/ethernet/intel/ice/ice_main.c    |   2 +
 3 files changed, 131 insertions(+), 65 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index ad5614d4449c..64d0af39cb98 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -969,6 +969,7 @@ int ice_stop(struct net_device *netdev);
 void ice_service_task_schedule(struct ice_pf *pf);
 int ice_load(struct ice_pf *pf);
 void ice_unload(struct ice_pf *pf);
+void ice_adv_lnk_speed_maps_init(void);
 
 /**
  * ice_set_rdma_cap - enable RDMA support
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 5545906f39af..7870a3984547 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -345,6 +345,79 @@ static const struct ice_priv_flag ice_gstrings_priv_flags[] = {
 
 #define ICE_PRIV_FLAG_ARRAY_SIZE	ARRAY_SIZE(ice_gstrings_priv_flags)
 
+static const u32 ice_adv_lnk_speed_100[] __initconst = {
+	ETHTOOL_LINK_MODE_100baseT_Full_BIT,
+};
+
+static const u32 ice_adv_lnk_speed_1000[] __initconst = {
+	ETHTOOL_LINK_MODE_1000baseX_Full_BIT,
+	ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
+	ETHTOOL_LINK_MODE_1000baseKX_Full_BIT,
+};
+
+static const u32 ice_adv_lnk_speed_2500[] __initconst = {
+	ETHTOOL_LINK_MODE_2500baseT_Full_BIT,
+	ETHTOOL_LINK_MODE_2500baseX_Full_BIT,
+};
+
+static const u32 ice_adv_lnk_speed_5000[] __initconst = {
+	ETHTOOL_LINK_MODE_5000baseT_Full_BIT,
+};
+
+static const u32 ice_adv_lnk_speed_10000[] __initconst = {
+	ETHTOOL_LINK_MODE_10000baseT_Full_BIT,
+	ETHTOOL_LINK_MODE_10000baseKR_Full_BIT,
+	ETHTOOL_LINK_MODE_10000baseSR_Full_BIT,
+	ETHTOOL_LINK_MODE_10000baseLR_Full_BIT,
+};
+
+static const u32 ice_adv_lnk_speed_25000[] __initconst = {
+	ETHTOOL_LINK_MODE_25000baseCR_Full_BIT,
+	ETHTOOL_LINK_MODE_25000baseSR_Full_BIT,
+	ETHTOOL_LINK_MODE_25000baseKR_Full_BIT,
+};
+
+static const u32 ice_adv_lnk_speed_40000[] __initconst = {
+	ETHTOOL_LINK_MODE_40000baseCR4_Full_BIT,
+	ETHTOOL_LINK_MODE_40000baseSR4_Full_BIT,
+	ETHTOOL_LINK_MODE_40000baseLR4_Full_BIT,
+	ETHTOOL_LINK_MODE_40000baseKR4_Full_BIT,
+};
+
+static const u32 ice_adv_lnk_speed_50000[] __initconst = {
+	ETHTOOL_LINK_MODE_50000baseCR2_Full_BIT,
+	ETHTOOL_LINK_MODE_50000baseKR2_Full_BIT,
+	ETHTOOL_LINK_MODE_50000baseSR2_Full_BIT,
+};
+
+static const u32 ice_adv_lnk_speed_100000[] __initconst = {
+	ETHTOOL_LINK_MODE_100000baseCR4_Full_BIT,
+	ETHTOOL_LINK_MODE_100000baseSR4_Full_BIT,
+	ETHTOOL_LINK_MODE_100000baseLR4_ER4_Full_BIT,
+	ETHTOOL_LINK_MODE_100000baseKR4_Full_BIT,
+	ETHTOOL_LINK_MODE_100000baseCR2_Full_BIT,
+	ETHTOOL_LINK_MODE_100000baseSR2_Full_BIT,
+	ETHTOOL_LINK_MODE_100000baseKR2_Full_BIT,
+};
+
+static struct ethtool_forced_speed_map ice_adv_lnk_speed_maps[] __ro_after_init = {
+	ETHTOOL_FORCED_SPEED_MAP(ice_adv_lnk_speed, 100),
+	ETHTOOL_FORCED_SPEED_MAP(ice_adv_lnk_speed, 1000),
+	ETHTOOL_FORCED_SPEED_MAP(ice_adv_lnk_speed, 2500),
+	ETHTOOL_FORCED_SPEED_MAP(ice_adv_lnk_speed, 5000),
+	ETHTOOL_FORCED_SPEED_MAP(ice_adv_lnk_speed, 10000),
+	ETHTOOL_FORCED_SPEED_MAP(ice_adv_lnk_speed, 25000),
+	ETHTOOL_FORCED_SPEED_MAP(ice_adv_lnk_speed, 40000),
+	ETHTOOL_FORCED_SPEED_MAP(ice_adv_lnk_speed, 50000),
+	ETHTOOL_FORCED_SPEED_MAP(ice_adv_lnk_speed, 100000),
+};
+
+void __init ice_adv_lnk_speed_maps_init(void)
+{
+	ethtool_forced_speed_maps_init(ice_adv_lnk_speed_maps,
+				       ARRAY_SIZE(ice_adv_lnk_speed_maps));
+}
+
 static void
 __ice_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *drvinfo,
 		  struct ice_vsi *vsi)
@@ -2008,6 +2081,55 @@ ice_get_link_ksettings(struct net_device *netdev,
 	return err;
 }
 
+/**
+ * ice_speed_to_aq_link - Get AQ link speed by Ethtool forced speed
+ * @speed: ethtool forced speed
+ */
+static u16 ice_speed_to_aq_link(int speed)
+{
+	int aq_speed;
+
+	switch (speed) {
+	case SPEED_10:
+		aq_speed = ICE_AQ_LINK_SPEED_10MB;
+		break;
+	case SPEED_100:
+		aq_speed = ICE_AQ_LINK_SPEED_100MB;
+		break;
+	case SPEED_1000:
+		aq_speed = ICE_AQ_LINK_SPEED_1000MB;
+		break;
+	case SPEED_2500:
+		aq_speed = ICE_AQ_LINK_SPEED_2500MB;
+		break;
+	case SPEED_5000:
+		aq_speed = ICE_AQ_LINK_SPEED_5GB;
+		break;
+	case SPEED_10000:
+		aq_speed = ICE_AQ_LINK_SPEED_10GB;
+		break;
+	case SPEED_20000:
+		aq_speed = ICE_AQ_LINK_SPEED_20GB;
+		break;
+	case SPEED_25000:
+		aq_speed = ICE_AQ_LINK_SPEED_25GB;
+		break;
+	case SPEED_40000:
+		aq_speed = ICE_AQ_LINK_SPEED_40GB;
+		break;
+	case SPEED_50000:
+		aq_speed = ICE_AQ_LINK_SPEED_50GB;
+		break;
+	case SPEED_100000:
+		aq_speed = ICE_AQ_LINK_SPEED_100GB;
+		break;
+	default:
+		aq_speed = ICE_AQ_LINK_SPEED_UNKNOWN;
+		break;
+	}
+	return aq_speed;
+}
+
 /**
  * ice_ksettings_find_adv_link_speed - Find advertising link speed
  * @ks: ethtool ksettings
@@ -2015,73 +2137,14 @@ ice_get_link_ksettings(struct net_device *netdev,
 static u16
 ice_ksettings_find_adv_link_speed(const struct ethtool_link_ksettings *ks)
 {
+	const struct ethtool_forced_speed_map *map;
 	u16 adv_link_speed = 0;
 
-	if (ethtool_link_ksettings_test_link_mode(ks, advertising,
-						  100baseT_Full))
-		adv_link_speed |= ICE_AQ_LINK_SPEED_100MB;
-	if (ethtool_link_ksettings_test_link_mode(ks, advertising,
-						  1000baseX_Full) ||
-	    ethtool_link_ksettings_test_link_mode(ks, advertising,
-						  1000baseT_Full) ||
-	    ethtool_link_ksettings_test_link_mode(ks, advertising,
-						  1000baseKX_Full))
-		adv_link_speed |= ICE_AQ_LINK_SPEED_1000MB;
-	if (ethtool_link_ksettings_test_link_mode(ks, advertising,
-						  2500baseT_Full) ||
-	    ethtool_link_ksettings_test_link_mode(ks, advertising,
-						  2500baseX_Full))
-		adv_link_speed |= ICE_AQ_LINK_SPEED_2500MB;
-	if (ethtool_link_ksettings_test_link_mode(ks, advertising,
-						  5000baseT_Full))
-		adv_link_speed |= ICE_AQ_LINK_SPEED_5GB;
-	if (ethtool_link_ksettings_test_link_mode(ks, advertising,
-						  10000baseT_Full) ||
-	    ethtool_link_ksettings_test_link_mode(ks, advertising,
-						  10000baseKR_Full) ||
-	    ethtool_link_ksettings_test_link_mode(ks, advertising,
-						  10000baseSR_Full) ||
-	    ethtool_link_ksettings_test_link_mode(ks, advertising,
-						  10000baseLR_Full))
-		adv_link_speed |= ICE_AQ_LINK_SPEED_10GB;
-	if (ethtool_link_ksettings_test_link_mode(ks, advertising,
-						  25000baseCR_Full) ||
-	    ethtool_link_ksettings_test_link_mode(ks, advertising,
-						  25000baseSR_Full) ||
-	    ethtool_link_ksettings_test_link_mode(ks, advertising,
-						  25000baseKR_Full))
-		adv_link_speed |= ICE_AQ_LINK_SPEED_25GB;
-	if (ethtool_link_ksettings_test_link_mode(ks, advertising,
-						  40000baseCR4_Full) ||
-	    ethtool_link_ksettings_test_link_mode(ks, advertising,
-						  40000baseSR4_Full) ||
-	    ethtool_link_ksettings_test_link_mode(ks, advertising,
-						  40000baseLR4_Full) ||
-	    ethtool_link_ksettings_test_link_mode(ks, advertising,
-						  40000baseKR4_Full))
-		adv_link_speed |= ICE_AQ_LINK_SPEED_40GB;
-	if (ethtool_link_ksettings_test_link_mode(ks, advertising,
-						  50000baseCR2_Full) ||
-	    ethtool_link_ksettings_test_link_mode(ks, advertising,
-						  50000baseKR2_Full) ||
-	    ethtool_link_ksettings_test_link_mode(ks, advertising,
-						  50000baseSR2_Full))
-		adv_link_speed |= ICE_AQ_LINK_SPEED_50GB;
-	if (ethtool_link_ksettings_test_link_mode(ks, advertising,
-						  100000baseCR4_Full) ||
-	    ethtool_link_ksettings_test_link_mode(ks, advertising,
-						  100000baseSR4_Full) ||
-	    ethtool_link_ksettings_test_link_mode(ks, advertising,
-						  100000baseLR4_ER4_Full) ||
-	    ethtool_link_ksettings_test_link_mode(ks, advertising,
-						  100000baseKR4_Full) ||
-	    ethtool_link_ksettings_test_link_mode(ks, advertising,
-						  100000baseCR2_Full) ||
-	    ethtool_link_ksettings_test_link_mode(ks, advertising,
-						  100000baseSR2_Full) ||
-	    ethtool_link_ksettings_test_link_mode(ks, advertising,
-						  100000baseKR2_Full))
-		adv_link_speed |= ICE_AQ_LINK_SPEED_100GB;
+	for (u32 i = 0; i < ARRAY_SIZE(ice_adv_lnk_speed_maps); i++) {
+		map = ice_adv_lnk_speed_maps + i;
+		if (linkmode_intersects(ks->link_modes.advertising, map->caps))
+			adv_link_speed |= ice_speed_to_aq_link(map->speed);
+	}
 
 	return adv_link_speed;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a58da0024fe5..e5aad584aedb 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5756,6 +5756,8 @@ static int __init ice_module_init(void)
 	pr_info("%s\n", ice_driver_string);
 	pr_info("%s\n", ice_copyright);
 
+	ice_adv_lnk_speed_maps_init();
+
 	ice_wq = alloc_workqueue("%s", 0, 0, KBUILD_MODNAME);
 	if (!ice_wq) {
 		pr_err("Failed to create workqueue\n");
-- 
2.40.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
