Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 063EC349C76
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Mar 2021 23:45:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8BB5940F79;
	Thu, 25 Mar 2021 22:45:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qN3ikYy0wc7U; Thu, 25 Mar 2021 22:45:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F6AF40F78;
	Thu, 25 Mar 2021 22:45:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AD80C1BF909
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9AEF3401F4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7jksim8Qvidq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Mar 2021 22:45:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E940440002
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:03 +0000 (UTC)
IronPort-SDR: 0AO0xXhzOqvoMUbtTnk1t+1qQZx1RwQWOqIGaOXTFhG1PVO+wHEij0EdduomDhCLiQh3vcHiyA
 6D9gCVWCXdlw==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="255031241"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="255031241"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 15:45:01 -0700
IronPort-SDR: spf0zdxhmW4QcSC5HO/5e8iaupMs2k89edFpT+wJA4F2eTOK6C9BkjIVpGfb60/Qny3QEEkBJx
 pdmFM+ML4gEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="375251370"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga003.jf.intel.com with ESMTP; 25 Mar 2021 15:45:01 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Mar 2021 15:35:11 -0700
Message-Id: <20210325223517.17722-8-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
References: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S57 08/14] ice: Replace some memsets and
 memcpys with assignment
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>

In ice_set_link_ksettings, use assignment instead of memset/memcpy
where possible

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 643012b0cc67..273647188f69 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -2195,8 +2195,9 @@ ice_set_link_ksettings(struct net_device *netdev,
 		       const struct ethtool_link_ksettings *ks)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ethtool_link_ksettings safe_ks, copy_ks;
 	u8 autoneg, timeout = TEST_SET_BITS_TIMEOUT;
+	struct ethtool_link_ksettings copy_ks = *ks;
+	struct ethtool_link_ksettings safe_ks = {};
 	struct ice_aqc_get_phy_caps_data *phy_caps;
 	struct ice_aqc_set_phy_cfg_data config;
 	u16 adv_link_speed, curr_link_speed;
@@ -2233,14 +2234,9 @@ ice_set_link_ksettings(struct net_device *netdev,
 		goto done;
 	}
 
-	/* copy the ksettings to copy_ks to avoid modifying the original */
-	memcpy(&copy_ks, ks, sizeof(copy_ks));
-
 	/* save autoneg out of ksettings */
 	autoneg = copy_ks.base.autoneg;
 
-	memset(&safe_ks, 0, sizeof(safe_ks));
-
 	/* Get link modes supported by hardware.*/
 	ice_phy_type_to_ethtool(netdev, &safe_ks);
 
@@ -2289,7 +2285,7 @@ ice_set_link_ksettings(struct net_device *netdev,
 	 * configuration is initialized during probe from PHY capabilities
 	 * software mode, and updated on set PHY configuration.
 	 */
-	memcpy(&config, &pi->phy.curr_user_phy_cfg, sizeof(config));
+	config = pi->phy.curr_user_phy_cfg;
 
 	config.caps |= ICE_AQ_PHY_ENA_AUTO_LINK_UPDT;
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
