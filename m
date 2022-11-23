Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E10F6365DE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Nov 2022 17:32:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 482DB4032E;
	Wed, 23 Nov 2022 16:32:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 482DB4032E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669221144;
	bh=BsCDp/mtCcBJlVS1Vts2z+v+ikxcJn7DoFZH+Oih7v4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=1+jcF8/gbAu7T1rv2rMq1ppQ42hLoy6wAJOpK2QkMBA+W4sN/LaQfZReMfbnjRUR6
	 FQ8hN3W6yAl92xHGDtk/SCc4CMVGBZ4ye8CjqFuuYOxW+stmMJONh9w+u/bgoCXtty
	 /MuSHa+UiSsaimhhsa8qsyLufUMEGF2uzBq3+pM1vATr44wMj0vmO9D4VRg/Txv5zj
	 G/+XBhL/yUupcfHxf2VWxlK0PgSxAYi4vCpEZSp7kUWX70P+0Ei2PWrcexg8l0+J7q
	 AkKV0SFJ9VgmXFSa9XJxIjzKl9QYjSy30zKFod8oY5uKopy/3T7QrhixQNY78VAg9o
	 AENlcdJhmVJNg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M3U2DTGDD7uM; Wed, 23 Nov 2022 16:32:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4BCAF4055D;
	Wed, 23 Nov 2022 16:32:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4BCAF4055D
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0962D1BF5AA
 for <intel-wired-lan@osuosl.org>; Wed, 23 Nov 2022 16:05:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E525940C09
 for <intel-wired-lan@osuosl.org>; Wed, 23 Nov 2022 16:05:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E525940C09
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rj580eaGsBi8 for <intel-wired-lan@osuosl.org>;
 Wed, 23 Nov 2022 16:05:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F26340C0F
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2F26340C0F
 for <intel-wired-lan@osuosl.org>; Wed, 23 Nov 2022 16:05:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="376243109"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="376243109"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 08:05:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="674769524"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="674769524"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga001.jf.intel.com with ESMTP; 23 Nov 2022 08:05:29 -0800
Received: from vecna.. (vecna.igk.intel.com [10.123.220.17])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 2ANG5SoS003509; Wed, 23 Nov 2022 16:05:28 GMT
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed, 23 Nov 2022 16:55:43 +0100
Message-Id: <20221123155544.1660952-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.34.3
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 23 Nov 2022 16:32:15 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669219531; x=1700755531;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vLMeN9NE/PRoKbgNDxOaVzGpXNGa9z26lr/tiY6bKg0=;
 b=VNzg70+NTXNUYopbq2m+4yGqXRJb0J5+jZsLyOjIq4oj3SpWyB4qIyWc
 dY82KCEGNu+s2dBCqMb5bbznZdugQojM/P6S/LFv+Ki9g8uiVATApApMv
 EFQ5cxqgwGmgb55sw7PAN9PrqJ4XqGgfnCkrpajZlIRj18orzGRHyrGDl
 v7XCHXu456IdcgG9/h2x80m4m5NQ+Gko4HmoZQ2yq6pWoRn9HNrVt769z
 H6Xudx+tc1Yr2yk+V1/Ew3sc1lWJpt5KAhocwz5KKG39owuF2f0vx15IT
 t8nObiCTRh8xI/A7xIJPN7lGDlzN7XiYkp6oUMXkVBsYerd6Rvp+uFGo1
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VNzg70+N
Subject: [Intel-wired-lan] [PATCH net-next 1/2] ice: Add support for 100G
 KR2/CR2/SR2 link reporting
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
Cc: netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>

Commit 2736d94f351b ("ethtool: Added support for 50Gbps per lane link modes")
in v5.1 added (among other things) support for 100G CR2/KR2/SR2 link modes.
Advertise these link modes if the firmware reports the corresponding PHY types.

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 42 +++++++++++++++-----
 1 file changed, 33 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index ba4ccc5f7d60..417efc401001 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1950,8 +1950,7 @@ ice_phy_type_to_ethtool(struct net_device *netdev,
 			   ICE_PHY_TYPE_LOW_100G_CAUI4 |
 			   ICE_PHY_TYPE_LOW_100G_AUI4_AOC_ACC |
 			   ICE_PHY_TYPE_LOW_100G_AUI4 |
-			   ICE_PHY_TYPE_LOW_100GBASE_CR_PAM4 |
-			   ICE_PHY_TYPE_LOW_100GBASE_CP2;
+			   ICE_PHY_TYPE_LOW_100GBASE_CR_PAM4;
 	phy_type_mask_hi = ICE_PHY_TYPE_HIGH_100G_CAUI2_AOC_ACC |
 			   ICE_PHY_TYPE_HIGH_100G_CAUI2 |
 			   ICE_PHY_TYPE_HIGH_100G_AUI2_AOC_ACC |
@@ -1964,15 +1963,28 @@ ice_phy_type_to_ethtool(struct net_device *netdev,
 						100000baseCR4_Full);
 	}
 
-	phy_type_mask_lo = ICE_PHY_TYPE_LOW_100GBASE_SR4 |
-			   ICE_PHY_TYPE_LOW_100GBASE_SR2;
-	if (phy_types_low & phy_type_mask_lo) {
+	if (phy_types_low & ICE_PHY_TYPE_LOW_100GBASE_CP2) {
+		ethtool_link_ksettings_add_link_mode(ks, supported,
+						     100000baseCR2_Full);
+		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_100GB,
+						100000baseCR2_Full);
+	}
+
+	if (phy_types_low & ICE_PHY_TYPE_LOW_100GBASE_SR4) {
 		ethtool_link_ksettings_add_link_mode(ks, supported,
 						     100000baseSR4_Full);
 		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_100GB,
 						100000baseSR4_Full);
 	}
 
+	if (phy_types_low & ICE_PHY_TYPE_LOW_100GBASE_SR2) {
+		ethtool_link_ksettings_add_link_mode(ks, supported,
+						     100000baseSR2_Full);
+		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_100GB,
+						100000baseSR2_Full);
+
+	}
+
 	phy_type_mask_lo = ICE_PHY_TYPE_LOW_100GBASE_LR4 |
 			   ICE_PHY_TYPE_LOW_100GBASE_DR;
 	if (phy_types_low & phy_type_mask_lo) {
@@ -1984,14 +1996,20 @@ ice_phy_type_to_ethtool(struct net_device *netdev,
 
 	phy_type_mask_lo = ICE_PHY_TYPE_LOW_100GBASE_KR4 |
 			   ICE_PHY_TYPE_LOW_100GBASE_KR_PAM4;
-	phy_type_mask_hi = ICE_PHY_TYPE_HIGH_100GBASE_KR2_PAM4;
-	if (phy_types_low & phy_type_mask_lo ||
-	    phy_types_high & phy_type_mask_hi) {
+	if (phy_types_low & phy_type_mask_lo) {
 		ethtool_link_ksettings_add_link_mode(ks, supported,
 						     100000baseKR4_Full);
 		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_100GB,
 						100000baseKR4_Full);
 	}
+
+	if (phy_types_high & ICE_PHY_TYPE_HIGH_100GBASE_KR2_PAM4) {
+		ethtool_link_ksettings_add_link_mode(ks, supported,
+						     100000baseKR2_Full);
+		ice_ethtool_advertise_link_mode(ICE_AQ_LINK_SPEED_100GB,
+						100000baseKR2_Full);
+	}
+
 }
 
 #define TEST_SET_BITS_TIMEOUT	50
@@ -2299,7 +2317,13 @@ ice_ksettings_find_adv_link_speed(const struct ethtool_link_ksettings *ks)
 	    ethtool_link_ksettings_test_link_mode(ks, advertising,
 						  100000baseLR4_ER4_Full) ||
 	    ethtool_link_ksettings_test_link_mode(ks, advertising,
-						  100000baseKR4_Full))
+						  100000baseKR4_Full) ||
+	    ethtool_link_ksettings_test_link_mode(ks, advertising,
+						  100000baseCR2_Full) ||
+	    ethtool_link_ksettings_test_link_mode(ks, advertising,
+						  100000baseSR2_Full) ||
+	    ethtool_link_ksettings_test_link_mode(ks, advertising,
+						  100000baseKR2_Full))
 		adv_link_speed |= ICE_AQ_LINK_SPEED_100GB;
 
 	return adv_link_speed;
-- 
2.34.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
