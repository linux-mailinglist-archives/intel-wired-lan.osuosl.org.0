Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 170902CDC57
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Dec 2020 18:27:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B981C2E318;
	Thu,  3 Dec 2020 17:27:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 44qxgj3JGB+n; Thu,  3 Dec 2020 17:27:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E9E522E341;
	Thu,  3 Dec 2020 17:27:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8727E1BF41C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 17:27:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 81BE52E318
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 17:27:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gwhiu2iTCf9f for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Dec 2020 17:27:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id D93A12E2D6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 17:27:51 +0000 (UTC)
IronPort-SDR: C0ltMa00Tp8WfaeVPhanEyNtLekB+WO5PocJ63clSx3SBBcn18LYs2F8/0dahn1+9h7bD0OkzI
 C9nK4hE1wnVg==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="169732638"
X-IronPort-AV: E=Sophos;i="5.78,390,1599548400"; d="scan'208";a="169732638"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2020 09:27:51 -0800
IronPort-SDR: 7KJUKhRN9e2Ix7Ak8EoTV73mmK3TIbVuCAKkQOiz0U3OH97bhO+4Gcyr9KPyPX9WrUajvAaTCM
 STZf2HAyOxFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,390,1599548400"; d="scan'208";a="365919761"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by fmsmga004.fm.intel.com with ESMTP; 03 Dec 2020 09:27:51 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  3 Dec 2020 09:20:24 -0800
Message-Id: <20201203172024.9283-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net v2 3/6] ice: update the number of available
 RSS queues
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
Cc: pmenzel@molgen.mpg.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Henry Tieman <henry.w.tieman@intel.com>

It was possible to have Rx queues that were not available for use
by RSS. This would happen when increasing the number of Rx queues
while there was a user defined RSS LUT.

Always update the number of available RSS queues when changing the
number of Rx queues.

Fixes: 87324e747fde ("ice: Implement ethtool ops for channels")
Signed-off-by: Henry Tieman <henry.w.tieman@intel.com>
---
v2: Remove new_rx check, execute unconditionally
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 27 ++++++++++++++------
 1 file changed, 19 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 9e8e9531cd87..6f1e0db635fc 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3321,6 +3321,18 @@ ice_get_channels(struct net_device *dev, struct ethtool_channels *ch)
 	ch->max_other = ch->other_count;
 }
 
+/**
+ * ice_get_valid_rss_size - return valid number of RSS queues
+ * @hw: pointer to the HW structure
+ * @new_size: requested RSS queues
+ */
+static int ice_get_valid_rss_size(struct ice_hw *hw, int new_size)
+{
+	struct ice_hw_common_caps *caps = &hw->func_caps.common_cap;
+
+	return min_t(int, new_size, BIT(caps->rss_table_entry_width));
+}
+
 /**
  * ice_vsi_set_dflt_rss_lut - set default RSS LUT with requested RSS size
  * @vsi: VSI to reconfigure RSS LUT on
@@ -3348,14 +3360,10 @@ static int ice_vsi_set_dflt_rss_lut(struct ice_vsi *vsi, int req_rss_size)
 		return -ENOMEM;
 
 	/* set RSS LUT parameters */
-	if (!test_bit(ICE_FLAG_RSS_ENA, pf->flags)) {
+	if (!test_bit(ICE_FLAG_RSS_ENA, pf->flags))
 		vsi->rss_size = 1;
-	} else {
-		struct ice_hw_common_caps *caps = &hw->func_caps.common_cap;
-
-		vsi->rss_size = min_t(int, req_rss_size,
-				      BIT(caps->rss_table_entry_width));
-	}
+	else
+		vsi->rss_size = ice_get_valid_rss_size(hw, req_rss_size);
 
 	/* create/set RSS LUT */
 	ice_fill_rss_lut(lut, vsi->rss_table_size, vsi->rss_size);
@@ -3434,9 +3442,12 @@ static int ice_set_channels(struct net_device *dev, struct ethtool_channels *ch)
 
 	ice_vsi_recfg_qs(vsi, new_rx, new_tx);
 
-	if (new_rx && !netif_is_rxfh_configured(dev))
+	if (!netif_is_rxfh_configured(dev))
 		return ice_vsi_set_dflt_rss_lut(vsi, new_rx);
 
+	/* Update rss_size due to change in Rx queues */
+	vsi->rss_size = ice_get_valid_rss_size(&pf->hw, new_rx);
+
 	return 0;
 }
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
