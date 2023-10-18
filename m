Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D887CEBF3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Oct 2023 01:24:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E7C21405D0;
	Wed, 18 Oct 2023 23:24:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E7C21405D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697671498;
	bh=O7hdP1GYxITQiiNULOiydLpuH2wkkfdpihK+rD9usRY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=p1SE+sKLAzVE8q5w5o3J2bhWZxA+bgbTGrEt/tnjqAU9HFH8SwvDnUp2prWFTp1Qm
	 Fja8dNjOIEpuOqCWEAdw0Mr6PMBHLM4E6qFc2/EHzWJMVM9KCYQLgXsNFFFdxLoGtT
	 CCWdlVJOWtBIpArz7VpNxJvle1NqjH9onomRSOy74ztyxZ0ULOxsPUxAROr1uZJ72V
	 6TFEj0PMVAsLnRI+nCTsd4xywx8X48feaY5i3ORYI4672XfcwpCwnSrc18Rd+Xee32
	 z6FhsbK8z3ak0HELIseA9rSAqJZFkCIvUDKm7zQc5Vu5OBHbaCBNUXqCLGPtWuprk9
	 7kJhuBHyhcdqg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3URL7vpWnWmY; Wed, 18 Oct 2023 23:24:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E89D840A21;
	Wed, 18 Oct 2023 23:24:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E89D840A21
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 491FA1BF42E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 23:24:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ACCB540129
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 23:24:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ACCB540129
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mQAunMTEvhDG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 23:24:45 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 69D38405D0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 23:24:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 69D38405D0
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="388996716"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="388996716"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 16:24:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; 
   d="scan'208";a="4732349"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.244.144])
 by fmviesa001.fm.intel.com with ESMTP; 18 Oct 2023 16:24:47 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 18 Oct 2023 19:16:39 -0400
Message-ID: <20231018231643.2356-3-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231018231643.2356-1-paul.greenwalt@intel.com>
References: <20231018231643.2356-1-paul.greenwalt@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697671485; x=1729207485;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/Ep3drPyPwGWvZW/0pzsYbQjwC2ahvLZ1GWYzvQ95VA=;
 b=afl4XEy07UwOCNK91TeEiCnGCTwwV61YeNu0az3sNh4J5tFjgqtrnNwg
 0/4mxeM9nn9GZijjXk015wyzfxHgNfAjb9ShxAxGVE9iRmR65zVBkJ7gu
 qgcrGEiuuMtkfyKxkbXf/NoJBfoW1SwCkLBicf+gAY1MKfzHSYURsDFwF
 5Bw42hGN8x4GftasLkKBo0tRgXrEQdCUPNI9KWLukbMwzoRx+nzOOm/ov
 KZg5ZMMLvEgk72o6oPb5+XR1GBEBW2kxQAIRoUQA1nieE68BPtKsRtWWU
 cC+1PIdAePX0lY7yxPQ1L0C9B9Tuwet9Cn05Qqwxl6SNqswsSEKcUmLPf
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=afl4XEy0
Subject: [Intel-wired-lan] [PATCH net-next v5 2/6] ice: Add 200G speed/phy
 type use
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
Cc: andrew@lunn.ch, Alice Michael <alice.michael@intel.com>,
 Paul Greenwalt <paul.greenwalt@intel.com>, netdev@vger.kernel.org,
 Pawel Chmielewski <pawel.chmielewski@intel.com>, anthony.l.nguyen@intel.com,
 horms@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alice Michael <alice.michael@intel.com>

Add the support for 200G phy speeds and the mapping for their
advertisement in link. Add the new PHY type bits for AQ command, as
needed for 200G E830 controllers.

Signed-off-by: Alice Michael <alice.michael@intel.com>
Co-developed-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 11 +++++++-
 drivers/net/ethernet/intel/ice/ice_common.c   |  1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 26 +++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_ethtool.h  |  8 ++++++
 4 files changed, 43 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 51281b58ad72..ee9acd19505d 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1099,7 +1099,15 @@ struct ice_aqc_get_phy_caps {
 #define ICE_PHY_TYPE_HIGH_100G_CAUI2		BIT_ULL(2)
 #define ICE_PHY_TYPE_HIGH_100G_AUI2_AOC_ACC	BIT_ULL(3)
 #define ICE_PHY_TYPE_HIGH_100G_AUI2		BIT_ULL(4)
-#define ICE_PHY_TYPE_HIGH_MAX_INDEX		4
+#define ICE_PHY_TYPE_HIGH_200G_CR4_PAM4		BIT_ULL(5)
+#define ICE_PHY_TYPE_HIGH_200G_SR4		BIT_ULL(6)
+#define ICE_PHY_TYPE_HIGH_200G_FR4		BIT_ULL(7)
+#define ICE_PHY_TYPE_HIGH_200G_LR4		BIT_ULL(8)
+#define ICE_PHY_TYPE_HIGH_200G_DR4		BIT_ULL(9)
+#define ICE_PHY_TYPE_HIGH_200G_KR4_PAM4		BIT_ULL(10)
+#define ICE_PHY_TYPE_HIGH_200G_AUI4_AOC_ACC	BIT_ULL(11)
+#define ICE_PHY_TYPE_HIGH_200G_AUI4		BIT_ULL(12)
+#define ICE_PHY_TYPE_HIGH_MAX_INDEX		12
 
 struct ice_aqc_get_phy_caps_data {
 	__le64 phy_type_low; /* Use values from ICE_PHY_TYPE_LOW_* */
@@ -1319,6 +1327,7 @@ struct ice_aqc_get_link_status_data {
 #define ICE_AQ_LINK_SPEED_40GB		BIT(8)
 #define ICE_AQ_LINK_SPEED_50GB		BIT(9)
 #define ICE_AQ_LINK_SPEED_100GB		BIT(10)
+#define ICE_AQ_LINK_SPEED_200GB		BIT(11)
 #define ICE_AQ_LINK_SPEED_UNKNOWN	BIT(15)
 	__le32 reserved3; /* Aligns next field to 8-byte boundary */
 	__le64 phy_type_low; /* Use values from ICE_PHY_TYPE_LOW_* */
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 683a0d6b5337..4875d59f27f2 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -6092,6 +6092,7 @@ static const u32 ice_aq_to_link_speed[] = {
 	SPEED_40000,
 	SPEED_50000,
 	SPEED_100000,	/* BIT(10) */
+	SPEED_200000,
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 7870a3984547..a34083567e6f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -400,6 +400,14 @@ static const u32 ice_adv_lnk_speed_100000[] __initconst = {
 	ETHTOOL_LINK_MODE_100000baseKR2_Full_BIT,
 };
 
+static const u32 ice_adv_lnk_speed_200000[] __initconst = {
+	ETHTOOL_LINK_MODE_200000baseKR4_Full_BIT,
+	ETHTOOL_LINK_MODE_200000baseSR4_Full_BIT,
+	ETHTOOL_LINK_MODE_200000baseLR4_ER4_FR4_Full_BIT,
+	ETHTOOL_LINK_MODE_200000baseDR4_Full_BIT,
+	ETHTOOL_LINK_MODE_200000baseCR4_Full_BIT,
+};
+
 static struct ethtool_forced_speed_map ice_adv_lnk_speed_maps[] __ro_after_init = {
 	ETHTOOL_FORCED_SPEED_MAP(ice_adv_lnk_speed, 100),
 	ETHTOOL_FORCED_SPEED_MAP(ice_adv_lnk_speed, 1000),
@@ -410,6 +418,7 @@ static struct ethtool_forced_speed_map ice_adv_lnk_speed_maps[] __ro_after_init
 	ETHTOOL_FORCED_SPEED_MAP(ice_adv_lnk_speed, 40000),
 	ETHTOOL_FORCED_SPEED_MAP(ice_adv_lnk_speed, 50000),
 	ETHTOOL_FORCED_SPEED_MAP(ice_adv_lnk_speed, 100000),
+	ETHTOOL_FORCED_SPEED_MAP(ice_adv_lnk_speed, 200000),
 };
 
 void __init ice_adv_lnk_speed_maps_init(void)
@@ -1712,6 +1721,15 @@ ice_get_ethtool_stats(struct net_device *netdev,
 					 ICE_PHY_TYPE_HIGH_100G_AUI2_AOC_ACC | \
 					 ICE_PHY_TYPE_HIGH_100G_AUI2)
 
+#define ICE_PHY_TYPE_HIGH_MASK_200G	(ICE_PHY_TYPE_HIGH_200G_CR4_PAM4 | \
+					 ICE_PHY_TYPE_HIGH_200G_SR4 | \
+					 ICE_PHY_TYPE_HIGH_200G_FR4 | \
+					 ICE_PHY_TYPE_HIGH_200G_LR4 | \
+					 ICE_PHY_TYPE_HIGH_200G_DR4 | \
+					 ICE_PHY_TYPE_HIGH_200G_KR4_PAM4 | \
+					 ICE_PHY_TYPE_HIGH_200G_AUI4_AOC_ACC | \
+					 ICE_PHY_TYPE_HIGH_200G_AUI4)
+
 /**
  * ice_mask_min_supported_speeds
  * @hw: pointer to the HW structure
@@ -1726,8 +1744,9 @@ ice_mask_min_supported_speeds(struct ice_hw *hw,
 			      u64 phy_types_high, u64 *phy_types_low)
 {
 	/* if QSFP connection with 100G speed, minimum supported speed is 25G */
-	if (*phy_types_low & ICE_PHY_TYPE_LOW_MASK_100G ||
-	    phy_types_high & ICE_PHY_TYPE_HIGH_MASK_100G)
+	if ((*phy_types_low & ICE_PHY_TYPE_LOW_MASK_100G) ||
+	    (phy_types_high & ICE_PHY_TYPE_HIGH_MASK_100G) ||
+	    (phy_types_high & ICE_PHY_TYPE_HIGH_MASK_200G))
 		*phy_types_low &= ~ICE_PHY_TYPE_LOW_MASK_MIN_25G;
 	else if (!ice_is_100m_speed_supported(hw))
 		*phy_types_low &= ~ICE_PHY_TYPE_LOW_MASK_MIN_1G;
@@ -1870,6 +1889,9 @@ ice_get_settings_link_up(struct ethtool_link_ksettings *ks,
 	ice_phy_type_to_ethtool(netdev, ks);
 
 	switch (link_info->link_speed) {
+	case ICE_AQ_LINK_SPEED_200GB:
+		ks->base.speed = SPEED_200000;
+		break;
 	case ICE_AQ_LINK_SPEED_100GB:
 		ks->base.speed = SPEED_100000;
 		break;
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.h b/drivers/net/ethernet/intel/ice/ice_ethtool.h
index b403ee79cd5e..b88e3da06f13 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.h
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.h
@@ -100,6 +100,14 @@ phy_type_high_lkup[] = {
 	[2] = ICE_PHY_TYPE(100GB, 100000baseCR2_Full),
 	[3] = ICE_PHY_TYPE(100GB, 100000baseSR2_Full),
 	[4] = ICE_PHY_TYPE(100GB, 100000baseCR2_Full),
+	[5] = ICE_PHY_TYPE(200GB, 200000baseCR4_Full),
+	[6] = ICE_PHY_TYPE(200GB, 200000baseSR4_Full),
+	[7] = ICE_PHY_TYPE(200GB, 200000baseLR4_ER4_FR4_Full),
+	[8] = ICE_PHY_TYPE(200GB, 200000baseLR4_ER4_FR4_Full),
+	[9] = ICE_PHY_TYPE(200GB, 200000baseDR4_Full),
+	[10] = ICE_PHY_TYPE(200GB, 200000baseKR4_Full),
+	[11] = ICE_PHY_TYPE(200GB, 200000baseSR4_Full),
+	[12] = ICE_PHY_TYPE(200GB, 200000baseCR4_Full),
 };
 
 #endif /* !_ICE_ETHTOOL_H_ */
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
