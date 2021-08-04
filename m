Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D853E02EB
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Aug 2021 16:19:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A64F8401B8;
	Wed,  4 Aug 2021 14:19:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fqtjDoVTiJRk; Wed,  4 Aug 2021 14:19:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2532840111;
	Wed,  4 Aug 2021 14:19:25 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1162F1BF5E9
 for <intel-wired-lan@osuosl.org>; Wed,  4 Aug 2021 14:19:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 08E1881BC0
 for <intel-wired-lan@osuosl.org>; Wed,  4 Aug 2021 14:19:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dwK0EGXuFSfA for <intel-wired-lan@osuosl.org>;
 Wed,  4 Aug 2021 14:19:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CEE8E81B26
 for <intel-wired-lan@osuosl.org>; Wed,  4 Aug 2021 14:19:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10065"; a="213956873"
X-IronPort-AV: E=Sophos;i="5.84,294,1620716400"; d="scan'208";a="213956873"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2021 07:19:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,294,1620716400"; d="scan'208";a="668088315"
Received: from inlubt0152.iind.intel.com ([10.67.198.206])
 by fmsmga006.fm.intel.com with ESMTP; 04 Aug 2021 07:19:15 -0700
From: aravindhan.gunasekaran@intel.com
To: intel-wired-lan@osuosl.org
Date: Wed,  4 Aug 2021 19:49:10 +0530
Message-Id: <1628086752-20213-2-git-send-email-aravindhan.gunasekaran@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1628086752-20213-1-git-send-email-aravindhan.gunasekaran@intel.com>
References: <1628086752-20213-1-git-send-email-aravindhan.gunasekaran@intel.com>
Subject: [Intel-wired-lan] [PATCH next-queue v2 1/3] igc: Use default cycle
 'start' and 'end' values for queues
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
Cc: velmurugan.chenniyappan@intel.com, aravindhan.gunasekaran@intel.com,
 mallikarjuna.chilakala@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Vinicius Costa Gomes <vinicius.gomes@intel.com>

Sets default values for each queue cycle start and cycle end. This
allows some simplification in the handling of these configurations as
most TSN features in i225 require a cycle to be configured.

In i225, cycle start and end time is required to be programmed for
CBS to work properly.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 37 ++++++++++++++++++-------------
 drivers/net/ethernet/intel/igc/igc_tsn.c  |  6 -----
 2 files changed, 21 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 4dc7c4d..fec0358 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -5750,7 +5750,6 @@ static int igc_save_launchtime_params(struct igc_adapter *adapter, int queue,
 				      bool enable)
 {
 	struct igc_ring *ring;
-	int i;
 
 	if (queue < 0 || queue >= adapter->num_tx_queues)
 		return -EINVAL;
@@ -5758,17 +5757,6 @@ static int igc_save_launchtime_params(struct igc_adapter *adapter, int queue,
 	ring = adapter->tx_ring[queue];
 	ring->launchtime_enable = enable;
 
-	if (adapter->base_time)
-		return 0;
-
-	adapter->cycle_time = NSEC_PER_SEC;
-
-	for (i = 0; i < adapter->num_tx_queues; i++) {
-		ring = adapter->tx_ring[i];
-		ring->start_time = 0;
-		ring->end_time = NSEC_PER_SEC;
-	}
-
 	return 0;
 }
 
@@ -5841,16 +5829,31 @@ static int igc_tsn_enable_launchtime(struct igc_adapter *adapter,
 	return igc_tsn_offload_apply(adapter);
 }
 
+static int igc_tsn_clear_schedule(struct igc_adapter *adapter)
+{
+	int i;
+
+	adapter->base_time = 0;
+	adapter->cycle_time = NSEC_PER_SEC;
+
+	for (i = 0; i < adapter->num_tx_queues; i++) {
+		struct igc_ring *ring = adapter->tx_ring[i];
+
+		ring->start_time = 0;
+		ring->end_time = NSEC_PER_SEC;
+	}
+
+	return 0;
+}
+
 static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 				 struct tc_taprio_qopt_offload *qopt)
 {
 	u32 start_time = 0, end_time = 0;
 	size_t n;
 
-	if (!qopt->enable) {
-		adapter->base_time = 0;
-		return 0;
-	}
+	if (!qopt->enable)
+		return igc_tsn_clear_schedule(adapter);
 
 	if (adapter->base_time)
 		return -EALREADY;
@@ -6337,6 +6340,8 @@ static int igc_probe(struct pci_dev *pdev,
 
 	igc_ptp_init(adapter);
 
+	igc_tsn_clear_schedule(adapter);
+
 	/* reset the hardware with the new settings */
 	igc_reset(adapter);
 
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 4dbbb8a..5bcdf75 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -41,12 +41,6 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
 	wr32(IGC_TQAVCTRL, tqavctrl);
 
 	for (i = 0; i < adapter->num_tx_queues; i++) {
-		struct igc_ring *ring = adapter->tx_ring[i];
-
-		ring->start_time = 0;
-		ring->end_time = 0;
-		ring->launchtime_enable = false;
-
 		wr32(IGC_TXQCTL(i), 0);
 		wr32(IGC_STQT(i), 0);
 		wr32(IGC_ENDQT(i), NSEC_PER_SEC);
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
