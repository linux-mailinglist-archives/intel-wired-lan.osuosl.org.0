Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D730E2790C3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Sep 2020 20:35:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 84EBE86C8C;
	Fri, 25 Sep 2020 18:35:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E20K1CP9ACZX; Fri, 25 Sep 2020 18:35:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C76B686D16;
	Fri, 25 Sep 2020 18:35:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 50E9E1BF330
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 18:35:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 44B5B2E152
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 18:35:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SdexJwHKx9aS for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Sep 2020 18:35:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id D5D0020497
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 18:35:48 +0000 (UTC)
IronPort-SDR: q4WEliT058LXVPu6ox2HWJ412ftxuukp9gDOdqjdF8tQiJZale8i6FpMbf+JSUWCoWcCOrhCYK
 mG3Fz9WuideQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9755"; a="223200533"
X-IronPort-AV: E=Sophos;i="5.77,302,1596524400"; d="scan'208";a="223200533"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 11:35:47 -0700
IronPort-SDR: 9bPVzhBfdBQzMwIlK9gNDUPnT41fE0kd7vAWdAx0Jn40IVrqPTABBqOFQIL6jTotAu9Dc/z4aI
 q0oHL+Tc3Ubw==
X-IronPort-AV: E=Sophos;i="5.77,302,1596524400"; d="scan'208";a="343705109"
Received: from msbergin-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.212.110.90])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 11:35:47 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 25 Sep 2020 11:35:37 -0700
Message-Id: <20200925183537.2635645-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] igc: Fix returning wrong statistics
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
Cc: andre.guedes@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

'igc_update_stats()' was not updating 'netdev->stats', so the returned
statistics, for example, requested by:

$ ip -s link show dev enp3s0

were not being updated and were always zero.

Fix by returning a set of statistics that are actually being
updated (adapter->stats64).

Fixes: c9a11c23ceb6 ("igc: Add netdev")
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 9593aa4eea36..1358a39c34ad 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3890,21 +3890,23 @@ static int igc_change_mtu(struct net_device *netdev, int new_mtu)
 }
 
 /**
- * igc_get_stats - Get System Network Statistics
+ * igc_get_stats64 - Get System Network Statistics
  * @netdev: network interface device structure
+ * @stats: rtnl_link_stats64 pointer
  *
  * Returns the address of the device statistics structure.
  * The statistics are updated here and also from the timer callback.
  */
-static struct net_device_stats *igc_get_stats(struct net_device *netdev)
+static void igc_get_stats64(struct net_device *netdev,
+			    struct rtnl_link_stats64 *stats)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 
+	spin_lock(&adapter->stats64_lock);
 	if (!test_bit(__IGC_RESETTING, &adapter->state))
 		igc_update_stats(adapter);
-
-	/* only return the current stats */
-	return &netdev->stats;
+	memcpy(stats, &adapter->stats64, sizeof(*stats));
+	spin_unlock(&adapter->stats64_lock);
 }
 
 static netdev_features_t igc_fix_features(struct net_device *netdev,
@@ -4833,7 +4835,7 @@ static const struct net_device_ops igc_netdev_ops = {
 	.ndo_set_rx_mode	= igc_set_rx_mode,
 	.ndo_set_mac_address	= igc_set_mac,
 	.ndo_change_mtu		= igc_change_mtu,
-	.ndo_get_stats		= igc_get_stats,
+	.ndo_get_stats64	= igc_get_stats64,
 	.ndo_fix_features	= igc_fix_features,
 	.ndo_set_features	= igc_set_features,
 	.ndo_features_check	= igc_features_check,
-- 
2.28.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
