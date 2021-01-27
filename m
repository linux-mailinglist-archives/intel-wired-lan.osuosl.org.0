Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DADD304D73
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jan 2021 01:31:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D138920512;
	Wed, 27 Jan 2021 00:31:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0gwEUXSs85tH; Wed, 27 Jan 2021 00:31:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5ACCC20510;
	Wed, 27 Jan 2021 00:31:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1D54C1BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 00:31:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 10D7785644
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 00:31:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qimn8eo-mGzO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jan 2021 00:31:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 948BD85618
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 00:31:01 +0000 (UTC)
IronPort-SDR: HhqNOiptiWdP8TYTrCZLmTe29nIdt6ycbd2LrLviEn3OIO6Up83A0pSNcJFrYkcMQZXPTdIaJ9
 TOlCZmyfRKcQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="244072472"
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="244072472"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 16:31:00 -0800
IronPort-SDR: lYADSVzKT52E5W/91IjZ/a5Qef4r2Dhfr7C3aQtnwo0eD5tY6EfWCjMCYn4ZYpWkfv/ySXvxDz
 GFiju+NWT6UQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="472951283"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by fmsmga001.fm.intel.com with ESMTP; 26 Jan 2021 16:31:00 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Jan 2021 16:22:17 -0800
Message-Id: <20210127002217.18392-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] ice: Improve MSI-X fallback logic
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

Currently if the driver is unable to get all the MSI-X vectors it wants, it
falls back to the minimum configuration which equates to a single Tx/Rx
traffic queue pair. Instead of using the minimum configuration, if given
more vectors than the minimum, utilize those vectors for additional traffic
queues after accounting for other interrupts.

Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 40 ++++++++++++++---------
 1 file changed, 25 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 8308770c61a7..6145a08f60a0 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3397,28 +3397,20 @@ static int ice_init_pf(struct ice_pf *pf)
  */
 static int ice_ena_msix_range(struct ice_pf *pf)
 {
+	int v_left, v_actual, v_other, v_budget = 0;
 	struct device *dev = ice_pf_to_dev(pf);
-	int v_left, v_actual, v_budget = 0;
 	int needed, err, i;
 
 	v_left = pf->hw.func_caps.common_cap.num_msix_vectors;
 
-	/* reserve one vector for miscellaneous handler */
-	needed = 1;
+	/* reserve for LAN miscellaneous handler */
+	needed = ICE_MIN_LAN_OICR_MSIX;
 	if (v_left < needed)
 		goto no_hw_vecs_left_err;
 	v_budget += needed;
 	v_left -= needed;
 
-	/* reserve vectors for LAN traffic */
-	needed = min_t(int, num_online_cpus(), v_left);
-	if (v_left < needed)
-		goto no_hw_vecs_left_err;
-	pf->num_lan_msix = needed;
-	v_budget += needed;
-	v_left -= needed;
-
-	/* reserve one vector for flow director */
+	/* reserve for flow director */
 	if (test_bit(ICE_FLAG_FD_ENA, pf->flags)) {
 		needed = ICE_FDIR_MSIX;
 		if (v_left < needed)
@@ -3427,9 +3419,19 @@ static int ice_ena_msix_range(struct ice_pf *pf)
 		v_left -= needed;
 	}
 
+	/* total used for non-traffic vectors */
+	v_other = v_budget;
+
+	/* reserve vectors for LAN traffic */
+	needed = min_t(int, num_online_cpus(), v_left);
+	if (v_left < needed)
+		goto no_hw_vecs_left_err;
+	pf->num_lan_msix = needed;
+	v_budget += needed;
+	v_left -= needed;
+
 	pf->msix_entries = devm_kcalloc(dev, v_budget,
 					sizeof(*pf->msix_entries), GFP_KERNEL);
-
 	if (!pf->msix_entries) {
 		err = -ENOMEM;
 		goto exit_err;
@@ -3441,7 +3443,6 @@ static int ice_ena_msix_range(struct ice_pf *pf)
 	/* actually reserve the vectors */
 	v_actual = pci_enable_msix_range(pf->pdev, pf->msix_entries,
 					 ICE_MIN_MSIX, v_budget);
-
 	if (v_actual < 0) {
 		dev_err(dev, "unable to reserve MSI-X vectors\n");
 		err = v_actual;
@@ -3458,7 +3459,16 @@ static int ice_ena_msix_range(struct ice_pf *pf)
 			err = -ERANGE;
 			goto msix_err;
 		} else {
-			pf->num_lan_msix = ICE_MIN_LAN_TXRX_MSIX;
+			int v_traffic = v_actual - v_other;
+
+			if (v_actual == ICE_MIN_MSIX ||
+			    v_traffic < ICE_MIN_LAN_TXRX_MSIX)
+				pf->num_lan_msix = ICE_MIN_LAN_TXRX_MSIX;
+			else
+				pf->num_lan_msix = v_traffic;
+
+			dev_notice(dev, "Enabled %d MSI-X vectors for LAN traffic.\n",
+				   pf->num_lan_msix);
 		}
 	}
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
