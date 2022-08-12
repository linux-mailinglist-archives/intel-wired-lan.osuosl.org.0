Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB3359124D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Aug 2022 16:34:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1BBC84191B;
	Fri, 12 Aug 2022 14:34:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1BBC84191B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660314872;
	bh=z/XkdrXR4G68ktjS3LyPLZ5s51X/m2qkPKcRtaYdgtM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Tyn4aDu69lWO6pyS73+jFA/eCjjUHZxI73AQBzP2xsTrKxRyS8T8U5wwKGB9oXs3L
	 kbsfZYx52WDiYTygs4VZkbp8GT8MpGfBgefTcU0lCjj/iTvwit5kEUB28D8yeorOZH
	 9xdsVv27iPQ/benNLXLCdbd9rBMsTPaEl4uO6PFnCZmqAv54nmkJxXtRkIY7u5B6/z
	 Udb2niPbWnNiSX+Y02tEejrdtlGNGXrUU9JQVAa3QTnrXQ+duWnOc9UumNodO9LI2L
	 0img/gUwyhq/xM1TsyfCh7myEKWLVUBFRUsb0hz6NQyxAVotNnLQ/5ZE5uox7gnPh2
	 Ogb4PvemVOVSg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jdz0eLUKjZhL; Fri, 12 Aug 2022 14:34:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 92113418FC;
	Fri, 12 Aug 2022 14:34:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 92113418FC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A922B1BF5AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 14:34:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8A36E404AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 14:34:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A36E404AE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VnExe20SWOO3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Aug 2022 14:34:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A744B40486
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A744B40486
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 14:34:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10437"; a="292870722"
X-IronPort-AV: E=Sophos;i="5.93,233,1654585200"; d="scan'208";a="292870722"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2022 07:34:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,233,1654585200"; d="scan'208";a="638913384"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga001.jf.intel.com with ESMTP; 12 Aug 2022 07:34:22 -0700
Received: from kord.igk.intel.com (kord.igk.intel.com [10.123.220.9])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 27CEYLF4028095; Fri, 12 Aug 2022 15:34:21 +0100
From: Mikael Barsehyan <mikael.barsehyan@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Aug 2022 16:34:40 +0200
Message-Id: <20220812143440.64993-1-mikael.barsehyan@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660314864; x=1691850864;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uHvTfCZmKsM2BdsXehVfOlvgg3c3TqxzIo9TSMMLGoA=;
 b=D682PgbRx6gf0MjRwM5tfOq7VipM/rEr6MEu1p1Bqk+bguj1owqHll7m
 zQ53HnE38V/z+/1k/aJqpcR8M+eRvyqsn/r7P83jz7ShdAH2Ki0pi+LV+
 GvzGO5eUtl0kBNA2UrQGKgMAPKBfA3vGvx88TfxiZTr38qjWE7eEw2CrF
 V3jt1TJMRlBS3Xo674vYvIJsXMcOL4C3q2MPSJiNTLIK4Qau7qkD/mlk4
 1q0vk3Pcz8pMO12MnLBWGhOMCLmYGouYY03GBUi5s44Fo7Uiw4crM2o0/
 ZkXqsWLONF3wVx7dd7H+pio40L4opKDc89cTPNMdu25q8HLJlpayYLxAI
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=D682PgbR
Subject: [Intel-wired-lan] [PATCH net-next v3 1/2] ice: Allow 100M speeds
 for some devices
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
index 46d8ac7906ea..40f39791e956 100644
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
+			      u64 phy_types_high, u64 *phy_types_low)
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
