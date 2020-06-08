Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D2E1F1C64
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jun 2020 17:49:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5530486420;
	Mon,  8 Jun 2020 15:49:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h5WJdhqz-hEg; Mon,  8 Jun 2020 15:49:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 83AC687598;
	Mon,  8 Jun 2020 15:49:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ED6241BF370
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 15:49:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E8CE786420
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 15:49:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6bJN3PXIusGo for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jun 2020 15:49:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 411DE87595
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 15:49:42 +0000 (UTC)
IronPort-SDR: aw9Zf4PKOVE8Rygf7RF1UzOvvs6Go1leynI0Lk+p+e7uSq0G1i1Ib19CkyTLvA7ausvDIsvZk/
 DJyrTBi/R7ug==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 08:49:41 -0700
IronPort-SDR: bcsEZQGLq5UfKFWg3f1X/432FO9y3PV+P+5Yh2bOUq1sArCHSUV/On2L7ndfMSDp71yyhg8OkH
 ehvaaoaU/qYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,487,1583222400"; d="scan'208";a="259486049"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.160.241])
 by orsmga007.jf.intel.com with ESMTP; 08 Jun 2020 08:49:39 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  8 Jun 2020 18:49:39 +0300
Message-Id: <20200608154939.30699-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Refactor the
 igc_power_down_link()
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently inplementation of the igc_power_down_link()
method a bit tangled. This method just called
igc_power_down_phy_copper-base() method.
We can just call the igc_power_down_phy_copper_base()
method directly.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 16 +++-------------
 1 file changed, 3 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 5d70751e8ab3..af5e1686f7f2 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -61,16 +61,6 @@ enum latency_range {
 	latency_invalid = 255
 };
 
-/**
- * igc_power_down_link - Power down the phy link
- * @adapter: address of board private structure
- */
-static void igc_power_down_link(struct igc_adapter *adapter)
-{
-	if (adapter->hw.phy.media_type == igc_media_type_copper)
-		igc_power_down_phy_copper_base(&adapter->hw);
-}
-
 void igc_reset(struct igc_adapter *adapter)
 {
 	struct net_device *dev = adapter->netdev;
@@ -106,7 +96,7 @@ void igc_reset(struct igc_adapter *adapter)
 	igc_set_eee_i225(hw, true, true, true);
 
 	if (!netif_running(adapter->netdev))
-		igc_power_down_link(adapter);
+		igc_power_down_phy_copper_base(&adapter->hw);
 
 	/* Re-enable PTP, where applicable. */
 	igc_ptp_reset(adapter);
@@ -4617,7 +4607,7 @@ static int __igc_open(struct net_device *netdev, bool resuming)
 	igc_free_irq(adapter);
 err_req_irq:
 	igc_release_hw_control(adapter);
-	igc_power_down_link(adapter);
+	igc_power_down_phy_copper_base(&adapter->hw);
 	igc_free_all_rx_resources(adapter);
 err_setup_rx:
 	igc_free_all_tx_resources(adapter);
@@ -5316,7 +5306,7 @@ static int __igc_shutdown(struct pci_dev *pdev, bool *enable_wake,
 
 	wake = wufc || adapter->en_mng_pt;
 	if (!wake)
-		igc_power_down_link(adapter);
+		igc_power_down_phy_copper_base(&adapter->hw);
 	else
 		igc_power_up_link(adapter);
 
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
