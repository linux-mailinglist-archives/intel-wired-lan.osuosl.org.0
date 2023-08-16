Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE2B77EE1F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 02:12:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BDE9241799;
	Thu, 17 Aug 2023 00:12:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BDE9241799
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692231162;
	bh=MZQba8s0DHkfWZ7Ys92Z2RG2zl9PIbEJcyS4g3VktPA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lOSzXIqF7tOG4lUJ4hKB0EwX4xYAMHc0NYTB9HjHJlAPEC0brL0o6UFUh71taFNlV
	 i+xLMqlC/U2FW2/aoQy+NXTF9MhAPAhTYpZuib3w9qWU8awPEg6InhU05za1JiCMw6
	 Zkyu68aOxzULtBelMT9r8u9zIUp+5i7AGLNNT1ylbvuwsKn9R9cwAnT60F9zOHeDm5
	 xUQdVRYA3N0kc46VRA0gYOWVItPpFios7jQ/CmO7tKC3cuCfVE9OgaIrc6JJlwma7Q
	 Zbdj3vKGsSTjYsOjqLABtMpIo+DWziSUKcLb1r8CcMo1194FvAWGJW1i18xSGdW7Ug
	 zd2QSSwkMnxVg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b6Rr_9qaV-83; Thu, 17 Aug 2023 00:12:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3E69D41779;
	Thu, 17 Aug 2023 00:12:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3E69D41779
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 386881BF390
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 00:12:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 028574177E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 00:12:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 028574177E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NeJ4TwkVWR8r for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 00:12:23 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 269C941779
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 00:12:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 269C941779
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="371570649"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="371570649"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 17:04:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="824422130"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="824422130"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.168])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2023 17:04:50 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 16 Aug 2023 16:57:14 -0700
Message-Id: <20230816235719.1120726-3-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230816235719.1120726-1-paul.greenwalt@intel.com>
References: <20230816235719.1120726-1-paul.greenwalt@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692231143; x=1723767143;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Hem3nop3hb+XM0SehIZtCUmO/AkFR1Py/BGUtfeAWto=;
 b=R6TRgZyESJ3DWGcoHeNLEDxkMszS30Cvj2zaYAyGrih6Pfr4uYjh2P2V
 yd324uEjHdoVscv9ueFZHkqXvMlG3d30F9A2PNWtGaP+a0p2l6as6MapR
 855pRN56MHWBTfLX20eLJ9TKMNLlVhpwsC1dPcKP9WqZJW0+CXvHEFhmu
 uczAvMnP3EX4iDG5t6oVykT43xLcHd/rM/T2TIXdNUFlTFBMXzKqOXh65
 8UHSEBTr/yfas+5G0C1PTPOed3KIyX23Y9PTAeo7N2OS06H8gC9ztrQwU
 4hg8Mh9N8Ot0VD6POmBhYieQKm62aXePGOO11lpws+ynV7ev7XY+R6of5
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R6TRgZyE
Subject: [Intel-wired-lan] [PATCH iwl-next 2/7] ice: Refactor finding
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Pawel Chmielewski <pawel.chmielewski@intel.com>

Refactor ice_get_link_ksettings by using lightweight static link mode
maps, populated at module init. This is an efficient solution introduced
in commit 1d4e4ecccb11 ("qede: populate supported link modes maps on
module init") for qede driver

Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Suggested-by : Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |   1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 166 +++++++++++--------
 drivers/net/ethernet/intel/ice/ice_main.c    |   2 +
 3 files changed, 104 insertions(+), 65 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 5d307bacf7c6..1030a4d1d94e 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -974,6 +974,7 @@ int ice_stop(struct net_device *netdev);
 void ice_service_task_schedule(struct ice_pf *pf);
 int ice_load(struct ice_pf *pf);
 void ice_unload(struct ice_pf *pf);
+void ice_adv_lnk_speed_maps_init(void);
 
 /**
  * ice_set_rdma_cap - enable RDMA support
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index d3cb08e66dcb..9a858d8ae26e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -345,6 +345,100 @@ static const struct ice_priv_flag ice_gstrings_priv_flags[] = {
 
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
+struct ice_adv_lnk_speed_map {
+	__ETHTOOL_DECLARE_LINK_MODE_MASK(caps);
+	const u32	*cap_arr;
+	u16		arr_size;
+	u16		aqc_link_speed;
+};
+
+#define ICE_ADV_LNK_SPEED_MAP(value, aqc_value)			\
+{								\
+	.cap_arr	= ice_adv_lnk_speed_##value,		\
+	.arr_size	= ARRAY_SIZE(ice_adv_lnk_speed_##value),\
+	.aqc_link_speed	= ICE_AQ_LINK_SPEED_##aqc_value,	\
+}
+
+static struct ice_adv_lnk_speed_map ice_adv_lnk_speed_maps[] __ro_after_init = {
+	ICE_ADV_LNK_SPEED_MAP(100, 100MB),
+	ICE_ADV_LNK_SPEED_MAP(1000, 1000MB),
+	ICE_ADV_LNK_SPEED_MAP(2500, 2500MB),
+	ICE_ADV_LNK_SPEED_MAP(5000, 5GB),
+	ICE_ADV_LNK_SPEED_MAP(10000, 10GB),
+	ICE_ADV_LNK_SPEED_MAP(25000, 25GB),
+	ICE_ADV_LNK_SPEED_MAP(40000, 40GB),
+	ICE_ADV_LNK_SPEED_MAP(50000, 50GB),
+	ICE_ADV_LNK_SPEED_MAP(100000, 100GB),
+};
+
+void __init ice_adv_lnk_speed_maps_init(void)
+{
+	u32 i;
+
+	for (i = 0; i < ARRAY_SIZE(ice_adv_lnk_speed_maps); i++) {
+		struct ice_adv_lnk_speed_map *map = &ice_adv_lnk_speed_maps[i];
+
+		linkmode_set_bit_array(map->cap_arr, map->arr_size, map->caps);
+		map->cap_arr = NULL;
+		map->arr_size = 0;
+	}
+}
+
 static void
 __ice_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *drvinfo,
 		  struct ice_vsi *vsi)
@@ -2014,73 +2108,15 @@ ice_get_link_ksettings(struct net_device *netdev,
 static u16
 ice_ksettings_find_adv_link_speed(const struct ethtool_link_ksettings *ks)
 {
+	const struct ice_adv_lnk_speed_map *map;
 	u16 adv_link_speed = 0;
+	u32 i;
 
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
+	for (i = 0; i < ARRAY_SIZE(ice_adv_lnk_speed_maps); i++) {
+		map = ice_adv_lnk_speed_maps + i;
+		if (linkmode_intersects(ks->link_modes.advertising, map->caps))
+			adv_link_speed |= map->aqc_link_speed;
+	}
 
 	return adv_link_speed;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 356bf8884a63..ffed5543a5aa 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5672,6 +5672,8 @@ static int __init ice_module_init(void)
 	pr_info("%s\n", ice_driver_string);
 	pr_info("%s\n", ice_copyright);
 
+	ice_adv_lnk_speed_maps_init();
+
 	ice_wq = alloc_workqueue("%s", 0, 0, KBUILD_MODNAME);
 	if (!ice_wq) {
 		pr_err("Failed to create workqueue\n");
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
