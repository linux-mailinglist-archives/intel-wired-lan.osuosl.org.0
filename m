Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF6E58462F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Jul 2022 21:23:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 740EC60AB5;
	Thu, 28 Jul 2022 19:23:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 740EC60AB5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659036234;
	bh=32G3/7mbmcZw92aiENFa/Mp4ovOIQZ6AeCUci9dfw/w=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Jkt8d4KaEoK9rtvij1IOIe4s4Ji23YpC5W9aQ91Z0lPM2VBdmOt70l+3oA8SMr875
	 nft9MZTeNrm0xW6SwQnI+ma0xwvly/KszYtsjsAL401GdxslUbD2lKvAXRp89D8c87
	 Kag0bgSCmH61Ti4y37yL5ANFoK+52MCoCr4Zeg9MYh6Day2450LmVysWCWi7mz3VfT
	 rF9+wQn5YdQincveZd55C6if0v0TcEOpXez8Zav2SsHYVflpNpUv/5/K1lFUCIF+B3
	 uEZ8LUuoLJs5Q46C5qs3GnSEkbgA0q4X66w8H3/rN9Ti1cNEIFWJmDC4hi9UjaFAr0
	 eqIK+DdUPcnRg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id onVmfa9SNm8H; Thu, 28 Jul 2022 19:23:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 59A2360AF0;
	Thu, 28 Jul 2022 19:23:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 59A2360AF0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 676D91BF21A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jul 2022 19:23:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3A5FF80DBF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jul 2022 19:23:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3A5FF80DBF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EoAncHKqL2wJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Jul 2022 19:23:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7796780D4D
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7796780D4D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jul 2022 19:23:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10422"; a="289796183"
X-IronPort-AV: E=Sophos;i="5.93,199,1654585200"; d="scan'208";a="289796183"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 12:23:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,199,1654585200"; d="scan'208";a="743258741"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga001.fm.intel.com with ESMTP; 28 Jul 2022 12:23:41 -0700
Received: from kord.igk.intel.com (kord.igk.intel.com [10.123.220.9])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 26SJNeEV023680; Thu, 28 Jul 2022 20:23:41 +0100
From: Mikael Barsehyan <mikael.barsehyan@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 28 Jul 2022 21:23:32 +0200
Message-Id: <20220728192332.159990-1-mikael.barsehyan@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659036224; x=1690572224;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VLO4PAndJ0G0yQgCDzJcPPTtxVlbse91GfXh7zFtKRA=;
 b=R0Ks32F7hnHp4oZ7oeHC2i+pLIGOwRguotk3r50T17Kv6k34bi0iSB4m
 Q36c1Ws9BpzMUASQrDM9TKGakI/mb5uQ98f86FwZS3g+HvmKUHCZiCVNa
 lactQoGT5jBIxRErOa0ljGdcAnqgvA8dZ8SJLD/Cs2c/nTXgM0LvoPWVz
 OK+7NgGHtya7HwOBHNbY5+sHZpGNrTLyVJ0AjPcCRn1ut/R2RZKoIwWa5
 /wm/W3QLGDSgyCNwM14lc4dbWYfAqwhzea4tQf8UnhnV3wBl4W/jeYaq5
 goGfvqTVRZv4sIyjQGzJBi1Z1XiLB+uxp2T589W+tgF4VZs9Li/dJipo/
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R0Ks32F7
Subject: [Intel-wired-lan] [PATCH net-next v2] ice: Allow 100M speeds for
 some devices
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
Cc: Chinh T Cao <chinh.t.cao@intel.com>,
 Mikael Barsehyan <mikael.barsehyan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>

For certain devices, 100M speeds are supported. Do not mask off
100M speed for these devices.

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Co-developed-by: Chinh T Cao <chinh.t.cao@intel.com>
Signed-off-by: Chinh T Cao <chinh.t.cao@intel.com>
Signed-off-by: Mikael Barsehyan <mikael.barsehyan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c  | 20 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h  |  1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 11 +++++++----
 3 files changed, 28 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 05a4acfbdd1d..010385e67665 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2775,6 +2775,26 @@ ice_aq_set_port_params(struct ice_port_info *pi, bool double_vlan,
 	return ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
 }
 
+/**
+ * ice_is_100m_speed_supported
+ * @hw: pointer to the HW struct
+ *
+ * returns true if 100M speeds are supported by the device,
+ * false otherwise.
+ */
+bool ice_is_100m_speed_supported(struct ice_hw *hw)
+{
+	switch (hw->device_id) {
+	case ICE_DEV_ID_E822C_SGMII:
+	case ICE_DEV_ID_E822L_SGMII:
+	case ICE_DEV_ID_E823L_1GBE:
+	case ICE_DEV_ID_E823C_SGMII:
+		return true;
+	default:
+		return false;
+	}
+}
+
 /**
  * ice_get_link_speed_based_on_phy_type - returns link speed
  * @phy_type_low: lower part of phy_type
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index a74df1d3a002..2734296bdd3b 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -205,6 +205,7 @@ ice_aq_set_gpio(struct ice_hw *hw, u16 gpio_ctrl_handle, u8 pin_idx, bool value,
 int
 ice_aq_get_gpio(struct ice_hw *hw, u16 gpio_ctrl_handle, u8 pin_idx,
 		bool *value, struct ice_sq_cd *cd);
+bool ice_is_100m_speed_supported(struct ice_hw *hw);
 int
 ice_aq_set_lldp_mib(struct ice_hw *hw, u8 mib_type, void *buf, u16 buf_size,
 		    struct ice_sq_cd *cd);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 46d8ac7906ea..aa6a0ed8eb97 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1503,20 +1503,22 @@ ice_get_ethtool_stats(struct net_device *netdev,
 
 /**
  * ice_mask_min_supported_speeds
+ * @hw: pointer to the HW structure
  * @phy_types_high: PHY type high
  * @phy_types_low: PHY type low to apply minimum supported speeds mask
  *
  * Apply minimum supported speeds mask to PHY type low. These are the speeds
  * for ethtool supported link mode.
  */
-static
-void ice_mask_min_supported_speeds(u64 phy_types_high, u64 *phy_types_low)
+static void
+ice_mask_min_supported_speeds(struct ice_hw *hw,
+				   u64 phy_types_high, u64 *phy_types_low)
 {
 	/* if QSFP connection with 100G speed, minimum supported speed is 25G */
 	if (*phy_types_low & ICE_PHY_TYPE_LOW_MASK_100G ||
 	    phy_types_high & ICE_PHY_TYPE_HIGH_MASK_100G)
 		*phy_types_low &= ~ICE_PHY_TYPE_LOW_MASK_MIN_25G;
-	else
+	else if (!ice_is_100m_speed_supported(hw))
 		*phy_types_low &= ~ICE_PHY_TYPE_LOW_MASK_MIN_1G;
 }
 
@@ -1566,7 +1568,8 @@ ice_phy_type_to_ethtool(struct net_device *netdev,
 		phy_types_low = le64_to_cpu(pf->nvm_phy_type_lo);
 		phy_types_high = le64_to_cpu(pf->nvm_phy_type_hi);
 
-		ice_mask_min_supported_speeds(phy_types_high, &phy_types_low);
+		ice_mask_min_supported_speeds(&pf->hw, phy_types_high,
+					      &phy_types_low);
 		/* determine advertised modes based on link override only
 		 * if it's supported and if the FW doesn't abstract the
 		 * driver from having to account for link overrides
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
