Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 08ED25827E9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jul 2022 15:45:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF7EF60BE5;
	Wed, 27 Jul 2022 13:45:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF7EF60BE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658929508;
	bh=lqsjmSUcDRy0tGQLFyql1zuouksUj+R4RWTsxuJg3cU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=NPGmuPT5VSfuG1G0FdpKS7qanQeEk/FOLcLKsVJgXsxwlskS3bNBT2/9tzfuosJtu
	 1NdQPfPy+W13DbVm825rKT1qmc4qMXgJ9e23ir0ENocuOi+3e1YMhwhjkveIqYvMh6
	 iV9RUVH+qjgmLF/y5DkjXkQlWbrdQ7t9iQgcon/bbdwjUKz5QxpgAMyJsxPb8EWt08
	 cDJUb6vp6Amt5nto9Kj9XNcRgqkxvO9RwvRp+sk5rNBzXpuUuvSiBOpD0t7p1OylQE
	 FBTCEK3l4FcqnE0i8t6FzOs8V0DMrmHJfK2SBr/4rB5GhL6q7N6YQKlP84bKPG9Yl/
	 ob5tLCS/lv+6g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ylszaKzR8Uis; Wed, 27 Jul 2022 13:45:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9156560B00;
	Wed, 27 Jul 2022 13:45:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9156560B00
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D59EA1BF4E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 10:43:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AFC3581A3B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 10:43:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AFC3581A3B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jlvJ6QfYxRX8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jul 2022 10:42:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A1918145C
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8A1918145C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 10:42:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="285748928"
X-IronPort-AV: E=Sophos;i="5.93,195,1654585200"; d="scan'208";a="285748928"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 03:42:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,195,1654585200"; d="scan'208";a="600366107"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga002.jf.intel.com with ESMTP; 27 Jul 2022 03:42:55 -0700
Received: from kord.igk.intel.com (kord.igk.intel.com [10.123.220.9])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 26RAgsXU003392; Wed, 27 Jul 2022 11:42:54 +0100
From: Mikael Barsehyan <mikael.barsehyan@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 27 Jul 2022 12:42:31 +0200
Message-Id: <20220727104231.131615-1-mikael.barsehyan@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 27 Jul 2022 13:45:02 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658918578; x=1690454578;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3H7vhyidL21cNj3unJ1Cl+uQn5VifoEUDs51mDWP/2Y=;
 b=S74ZPw24x4SpuVGICromZcvA0mXUF9kX4OWEk6eTw70Wzr4epQPK1hfs
 yN0zK4k7cPPwI54q66aIzVckEJ5h52fYlBaBqGZfwKIV+1IIQJWvFNF89
 oaLucmklJeKXidLMMFnbF9hKvHdM2+rv+pUhTIg0oJHrPkGm8rl1yKrSu
 /WRnM6217SBvFteld5QBFaic8kf93A7qzVhsNaLUlf3i7DwcPWYQKPA+B
 +P4hu7LbxTOJvz2lGEkYXmA8R6aYW2njjXwmq+lZxniquh0LGAPEuNoCd
 V0O7He2Civv+UKAET4dWTTPvV7rt9CR107OSMkGM+dNBO1AWh3dU0bvms
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S74ZPw24
Subject: [Intel-wired-lan] [PATCH net-next v1] ice: Allow 100M speeds for
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
Signed-off-by: Chinh T Cao <chinh.t.cao@intel.com>
Signed-off-by: Mikael Barsehyan <mikael.barsehyan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c  | 20 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h  |  1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c |  9 ++++++---
 3 files changed, 27 insertions(+), 3 deletions(-)

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
index 46d8ac7906ea..4d3d0072e432 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1503,6 +1503,7 @@ ice_get_ethtool_stats(struct net_device *netdev,
 
 /**
  * ice_mask_min_supported_speeds
+ * @hw: pointer to the HW structure
  * @phy_types_high: PHY type high
  * @phy_types_low: PHY type low to apply minimum supported speeds mask
  *
@@ -1510,13 +1511,14 @@ ice_get_ethtool_stats(struct net_device *netdev,
  * for ethtool supported link mode.
  */
 static
-void ice_mask_min_supported_speeds(u64 phy_types_high, u64 *phy_types_low)
+void ice_mask_min_supported_speeds(struct ice_hw *hw,
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
