Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D73D102378
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Nov 2019 12:43:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E9F6E22744;
	Tue, 19 Nov 2019 11:43:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O4FqJ84QzX9U; Tue, 19 Nov 2019 11:43:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D3E0E22720;
	Tue, 19 Nov 2019 11:43:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6F3EA1BF83B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:43:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 52A5F86505
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:43:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jh4bNtSZGShF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Nov 2019 11:43:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 78540864EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:43:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 03:43:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,322,1569308400"; d="scan'208";a="231504127"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by fmsmga004.fm.intel.com with ESMTP; 19 Nov 2019 03:43:33 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 19 Nov 2019 13:43:32 +0200
Message-Id: <20191119114332.41655-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 01/15] igc: Remove no need declaration
 of the igc_clean_tx_ring
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

We want to avoid forward-declarations of function if possible.
Rearrange the igc_clean_tx_ring function implementation.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 75 +++++++++++++++----------------
 1 file changed, 37 insertions(+), 38 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index ca7b8d6791f1..ed71d8bdf47d 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -52,7 +52,6 @@ static const struct pci_device_id igc_pci_tbl[] = {
 MODULE_DEVICE_TABLE(pci, igc_pci_tbl);
 
 /* forward declaration */
-static void igc_clean_tx_ring(struct igc_ring *tx_ring);
 static int igc_sw_init(struct igc_adapter *);
 static void igc_configure(struct igc_adapter *adapter);
 static void igc_power_down_link(struct igc_adapter *adapter);
@@ -177,43 +176,6 @@ static void igc_get_hw_control(struct igc_adapter *adapter)
 }
 
 /**
- * igc_free_tx_resources - Free Tx Resources per Queue
- * @tx_ring: Tx descriptor ring for a specific queue
- *
- * Free all transmit software resources
- */
-void igc_free_tx_resources(struct igc_ring *tx_ring)
-{
-	igc_clean_tx_ring(tx_ring);
-
-	vfree(tx_ring->tx_buffer_info);
-	tx_ring->tx_buffer_info = NULL;
-
-	/* if not set, then don't free */
-	if (!tx_ring->desc)
-		return;
-
-	dma_free_coherent(tx_ring->dev, tx_ring->size,
-			  tx_ring->desc, tx_ring->dma);
-
-	tx_ring->desc = NULL;
-}
-
-/**
- * igc_free_all_tx_resources - Free Tx Resources for All Queues
- * @adapter: board private structure
- *
- * Free all transmit software resources
- */
-static void igc_free_all_tx_resources(struct igc_adapter *adapter)
-{
-	int i;
-
-	for (i = 0; i < adapter->num_tx_queues; i++)
-		igc_free_tx_resources(adapter->tx_ring[i]);
-}
-
-/**
  * igc_clean_tx_ring - Free Tx Buffers
  * @tx_ring: ring to be cleaned
  */
@@ -275,6 +237,43 @@ static void igc_clean_tx_ring(struct igc_ring *tx_ring)
 }
 
 /**
+ * igc_free_tx_resources - Free Tx Resources per Queue
+ * @tx_ring: Tx descriptor ring for a specific queue
+ *
+ * Free all transmit software resources
+ */
+void igc_free_tx_resources(struct igc_ring *tx_ring)
+{
+	igc_clean_tx_ring(tx_ring);
+
+	vfree(tx_ring->tx_buffer_info);
+	tx_ring->tx_buffer_info = NULL;
+
+	/* if not set, then don't free */
+	if (!tx_ring->desc)
+		return;
+
+	dma_free_coherent(tx_ring->dev, tx_ring->size,
+			  tx_ring->desc, tx_ring->dma);
+
+	tx_ring->desc = NULL;
+}
+
+/**
+ * igc_free_all_tx_resources - Free Tx Resources for All Queues
+ * @adapter: board private structure
+ *
+ * Free all transmit software resources
+ */
+static void igc_free_all_tx_resources(struct igc_adapter *adapter)
+{
+	int i;
+
+	for (i = 0; i < adapter->num_tx_queues; i++)
+		igc_free_tx_resources(adapter->tx_ring[i]);
+}
+
+/**
  * igc_clean_all_tx_rings - Free Tx Buffers for all queues
  * @adapter: board private structure
  */
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
