Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13FD92BBB31
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Nov 2020 01:45:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9681887677;
	Sat, 21 Nov 2020 00:45:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0G3VVoKZ3BH2; Sat, 21 Nov 2020 00:45:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E788187531;
	Sat, 21 Nov 2020 00:45:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A503F1BF475
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:45:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A1C54868B5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:45:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Le5eHKeSZRMy for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Nov 2020 00:45:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A480186E76
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:45:33 +0000 (UTC)
IronPort-SDR: DgzN4h30suM5h1UPzahVDIskuVmUZ6I7Q5+Xxz/faaUXKIPhp6KD1FXQztQClqxfGa0wzdJ8dX
 m991rwtywvdQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9811"; a="170782300"
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="170782300"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 16:45:32 -0800
IronPort-SDR: IlxukknJJbK9xLfVmezI9ow8cWCa+9/RIjVrTO6LGGQveaPzq/USI2Lus853dd1MLs2IRlLpie
 vDDGRQ4Lgndg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="369396468"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga007.jf.intel.com with ESMTP; 20 Nov 2020 16:45:29 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Nov 2020 16:38:32 -0800
Message-Id: <20201121003835.48424-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201121003835.48424-1-anthony.l.nguyen@intel.com>
References: <20201121003835.48424-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net 3/6] ice: update the number of available RSS
 queues
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

From: Henry Tieman <henry.w.tieman@intel.com>

It was possible to have Rx queues that were not available for use
by RSS. This would happen when increasing the number of Rx queues
while there was a user defined RSS LUT.

Always update the number of available RSS queues when changing the
number of Rx queues.

Fixes: 87324e747fde ("ice: Implement ethtool ops for channels")
Signed-off-by: Henry Tieman <henry.w.tieman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 31 ++++++++++++++------
 1 file changed, 22 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 9e8e9531cd87..8515a3a7515f 100644
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
@@ -3434,8 +3442,13 @@ static int ice_set_channels(struct net_device *dev, struct ethtool_channels *ch)
 
 	ice_vsi_recfg_qs(vsi, new_rx, new_tx);
 
-	if (new_rx && !netif_is_rxfh_configured(dev))
-		return ice_vsi_set_dflt_rss_lut(vsi, new_rx);
+	if (new_rx) {
+		if (!netif_is_rxfh_configured(dev))
+			return ice_vsi_set_dflt_rss_lut(vsi, new_rx);
+
+		/* Update rss_size due to change in Rx queues */
+		vsi->rss_size = ice_get_valid_rss_size(&pf->hw, new_rx);
+	}
 
 	return 0;
 }
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
