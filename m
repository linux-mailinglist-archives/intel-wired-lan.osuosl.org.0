Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A81591256
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Aug 2022 16:36:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E211F83DF8;
	Fri, 12 Aug 2022 14:36:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E211F83DF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660314968;
	bh=z/XkdrXR4G68ktjS3LyPLZ5s51X/m2qkPKcRtaYdgtM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=KWdNbU/tif6pyC9o1cXoBwTGe41QbXpVPUPutlXvtxRPWcTlJAhOJxgUGjsFtaPMY
	 DVMt9hTx7rtN5crUpU1C0yUI2OUizu58UYh+xN6Asw3Ar9uTnQ16dixMEaauoahCL/
	 3SDBrjwpF6w3BNQP192vjZ4uKNFjmmLKxW9JOykn6zaI0s07iN+/frpDfGULn27ymd
	 urLxTBN6+J1qfnyQJlpdXXzRkcGwAiV83GpSFh4u4BOnU0jydibihk6mY5l0r+mWMc
	 pWV/TfgjRewEYsLSoREPwGVKi7GV2BOGcn083xmGeZoubBRXr+3tKhDNOobAmqv1Wn
	 1SHhQWV0bxV6w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id plkzl7A7s4c2; Fri, 12 Aug 2022 14:36:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B716283DF1;
	Fri, 12 Aug 2022 14:36:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B716283DF1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 323091BF5AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 14:36:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 19BEF83DF3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 14:36:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 19BEF83DF3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id giVIcTvDeCK8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Aug 2022 14:36:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18CC783DF2
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 18CC783DF2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 14:35:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10437"; a="292399608"
X-IronPort-AV: E=Sophos;i="5.93,233,1654585200"; d="scan'208";a="292399608"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2022 07:35:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,233,1654585200"; d="scan'208";a="674092610"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga004.fm.intel.com with ESMTP; 12 Aug 2022 07:35:53 -0700
Received: from kord.igk.intel.com (kord.igk.intel.com [10.123.220.9])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 27CEZqwT028350; Fri, 12 Aug 2022 15:35:52 +0100
From: Mikael Barsehyan <mikael.barsehyan@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Aug 2022 16:36:07 +0200
Message-Id: <20220812143607.65332-1-mikael.barsehyan@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660314960; x=1691850960;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uHvTfCZmKsM2BdsXehVfOlvgg3c3TqxzIo9TSMMLGoA=;
 b=dWcn/u/LlnDN0MKxYGirlpuXe5Nq4uYxe1gtTFqlMR0PKX0/S9x5efhT
 bAK6cs5fMjRxbzQ/Go2N8zZ9glfvXEwcwirtgheR+OZWaQiWGKPA0G67P
 OpQC3KSEdOWKC0BJ9Vl54ulAsGWNDk6zkheYni1o/2suvgiQECyTFOeIZ
 1cgf4ZX7+Vu7qHLsVsnF1ucTX/SiVG6+zo9fIna2arq3pDpedMuRGqMI7
 7fHGsbzNDZiK7C4tIi6UNoB4ogWN9w+oJJmS2DFuJ7BC7jf0h/yziV7tv
 Q4qmifJW8Nx3Nd5xejEZyr3WDmKb/DEY55Rr7p73YXtjE0r0lUFv5eC8P
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dWcn/u/L
Subject: [Intel-wired-lan] [PATCH net-next v3] ice: Allow 100M speeds for
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
