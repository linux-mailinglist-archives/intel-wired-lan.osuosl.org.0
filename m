Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D31ED785F4B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Aug 2023 20:11:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 644D3612EE;
	Wed, 23 Aug 2023 18:11:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 644D3612EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692814281;
	bh=e+ZkWqqymBKWkSSkQ0x6Q2X0wHuGlJh6QhH3LLCp4Wg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DIaKzXBQe8dGe6mkajHPmjiCmjeC3/vPogoVvOHPs/6af48otH1n+7XRUIdoIQPAr
	 L5KpO5Jw6Tut5MwkqL21SdRYy19vFAS7DY1lmvpCViDxsFb1dIFsW9l02GHfU15eYZ
	 LNXvWAgc0UIrGWpHwlzSRAbGbLHNrUd5nH37BGYeZZtGw+nmvbH9BqWD+65n6GWC+n
	 zJuOsDgzmMjS8kr6jIJ3AHTKMUJ2In7Zj40oNpSZhQYAk2eKzG2ur76TQQ4raRcDk4
	 p2EBsZAKIvjqHcckue5h/lLW9vkG+aBI9e/NLW0zi97jeaFs9uYRdqppfqrW6StVhH
	 WMZDMETkV5zDg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WY-fXuJngOcF; Wed, 23 Aug 2023 18:11:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0EC78612C2;
	Wed, 23 Aug 2023 18:11:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0EC78612C2
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6A0C41BF343
 for <intel-wired-lan@osuosl.org>; Wed, 23 Aug 2023 18:11:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4EFF9417D6
 for <intel-wired-lan@osuosl.org>; Wed, 23 Aug 2023 18:11:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4EFF9417D6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LD07uio2_9gu for <intel-wired-lan@osuosl.org>;
 Wed, 23 Aug 2023 18:11:10 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 264C3417D4
 for <intel-wired-lan@osuosl.org>; Wed, 23 Aug 2023 18:11:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 264C3417D4
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="364412426"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="364412426"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 11:11:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802233699"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802233699"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga008.fm.intel.com with ESMTP; 23 Aug 2023 11:11:07 -0700
Received: from baltimore.igk.intel.com (baltimore.igk.intel.com [10.102.21.1])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id EC03433E8D;
 Wed, 23 Aug 2023 19:11:06 +0100 (IST)
From: Pawel Chmielewski <pawel.chmielewski@intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed, 23 Aug 2023 20:06:28 +0200
Message-Id: <20230823180633.2450617-5-pawel.chmielewski@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230823180633.2450617-1-pawel.chmielewski@intel.com>
References: <20230823180633.2450617-1-pawel.chmielewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692814270; x=1724350270;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ck5OAaGLMA89QFpm2dLib/qCneuqIOms4N0jGvrcWYk=;
 b=mFOxT+PgaBUYNT8pQ8/8EmeEZbUU06sPVxvfQKhhcbr2CrFNfxZNalRe
 /1tTkaRJQp8aF4c60uvPrQxoB0urvGWsDLRvPbSbsDmdPznBK2FDVsdbx
 q6N7Qgdtp/d65IuNfOs1wSZG6/4m0JQZbt5ATKi7Tlc80J5rLFnk4W1Ka
 Lzw/1pkTGibc8UftL9V7sGmyHlIU0IMM+RwnIrkYabAa4mCuUMgpEvnH0
 8sNX2u/cpjEkndHry4woZ8PDEyiBFJg553QoDVHVmFlhfQ+v1vCFmG6oA
 lZQIxJkhWBAxTOMKtROn2ks9AFB8MYxeU4vMQ9GnrVo83dTYC8vd3GCe7
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mFOxT+Pg
Subject: [Intel-wired-lan] [PATCH iwl-next v3 4/8] ice: Add 200G speed/phy
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
Cc: andrew@lunn.ch, aelior@marvell.com, manishc@marvell.com,
 netdev@vger.kernel.org
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
---
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 11 ++++++++++-
 drivers/net/ethernet/intel/ice/ice_common.c     |  1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c    | 17 +++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_ethtool.h    |  8 ++++++++
 4 files changed, 34 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 29f7a9852aec..c38e189ea8f7 100644
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
index 983332cbace2..e8225b275f70 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -5666,6 +5666,7 @@ static const u32 ice_aq_to_link_speed[] = {
 	SPEED_40000,
 	SPEED_50000,
 	SPEED_100000,	/* BIT(10) */
+	SPEED_200000,
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index d7e7e1ba2234..68690e89b4e7 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1718,6 +1718,15 @@ ice_get_ethtool_stats(struct net_device *netdev,
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
@@ -1732,8 +1741,9 @@ ice_mask_min_supported_speeds(struct ice_hw *hw,
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
@@ -1876,6 +1886,9 @@ ice_get_settings_link_up(struct ethtool_link_ksettings *ks,
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
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
