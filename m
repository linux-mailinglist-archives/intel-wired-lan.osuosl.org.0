Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD151102380
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Nov 2019 12:44:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 824718651D;
	Tue, 19 Nov 2019 11:44:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gFz5nRPFb_jH; Tue, 19 Nov 2019 11:44:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 853B586890;
	Tue, 19 Nov 2019 11:44:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1ABC01BF83B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:44:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 175E486508
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:44:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r2JXApiDsvdz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Nov 2019 11:44:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5BB5E86505
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:44:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 03:44:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,322,1569308400"; d="scan'208";a="237302032"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by fmsmga002.fm.intel.com with ESMTP; 19 Nov 2019 03:44:20 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 19 Nov 2019 13:44:19 +0200
Message-Id: <20191119114419.42064-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 06/15] igc: Remove no need declaration
 of the igc_set_interrupt_capability
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
Rearrange the igc_set_interrupt_capability function implementation.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 142 +++++++++++++++---------------
 1 file changed, 70 insertions(+), 72 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index d26875592937..a1746be345b9 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -57,8 +57,6 @@ static void igc_set_rx_mode(struct net_device *netdev);
 static void igc_write_itr(struct igc_q_vector *q_vector);
 static void igc_assign_vector(struct igc_q_vector *q_vector, int msix_vector);
 static void igc_free_q_vector(struct igc_adapter *adapter, int v_idx);
-static void igc_set_interrupt_capability(struct igc_adapter *adapter,
-					 bool msix);
 static void igc_free_q_vectors(struct igc_adapter *adapter);
 static void igc_irq_disable(struct igc_adapter *adapter);
 static void igc_irq_enable(struct igc_adapter *adapter);
@@ -2999,6 +2997,76 @@ static void igc_reset_interrupt_capability(struct igc_adapter *adapter)
 }
 
 /**
+ * igc_set_interrupt_capability - set MSI or MSI-X if supported
+ * @adapter: Pointer to adapter structure
+ * @msix: boolean value for MSI-X capability
+ *
+ * Attempt to configure interrupts using the best available
+ * capabilities of the hardware and kernel.
+ */
+static void igc_set_interrupt_capability(struct igc_adapter *adapter,
+					 bool msix)
+{
+	int numvecs, i;
+	int err;
+
+	if (!msix)
+		goto msi_only;
+	adapter->flags |= IGC_FLAG_HAS_MSIX;
+
+	/* Number of supported queues. */
+	adapter->num_rx_queues = adapter->rss_queues;
+
+	adapter->num_tx_queues = adapter->rss_queues;
+
+	/* start with one vector for every Rx queue */
+	numvecs = adapter->num_rx_queues;
+
+	/* if Tx handler is separate add 1 for every Tx queue */
+	if (!(adapter->flags & IGC_FLAG_QUEUE_PAIRS))
+		numvecs += adapter->num_tx_queues;
+
+	/* store the number of vectors reserved for queues */
+	adapter->num_q_vectors = numvecs;
+
+	/* add 1 vector for link status interrupts */
+	numvecs++;
+
+	adapter->msix_entries = kcalloc(numvecs, sizeof(struct msix_entry),
+					GFP_KERNEL);
+
+	if (!adapter->msix_entries)
+		return;
+
+	/* populate entry values */
+	for (i = 0; i < numvecs; i++)
+		adapter->msix_entries[i].entry = i;
+
+	err = pci_enable_msix_range(adapter->pdev,
+				    adapter->msix_entries,
+				    numvecs,
+				    numvecs);
+	if (err > 0)
+		return;
+
+	kfree(adapter->msix_entries);
+	adapter->msix_entries = NULL;
+
+	igc_reset_interrupt_capability(adapter);
+
+msi_only:
+	adapter->flags &= ~IGC_FLAG_HAS_MSIX;
+
+	adapter->rss_queues = 1;
+	adapter->flags |= IGC_FLAG_QUEUE_PAIRS;
+	adapter->num_rx_queues = 1;
+	adapter->num_tx_queues = 1;
+	adapter->num_q_vectors = 1;
+	if (!pci_enable_msi(adapter->pdev))
+		adapter->flags |= IGC_FLAG_HAS_MSI;
+}
+
+/**
  * igc_clear_interrupt_scheme - reset the device to a state of no interrupts
  * @adapter: Pointer to adapter structure
  *
@@ -3630,76 +3698,6 @@ static int igc_poll(struct napi_struct *napi, int budget)
 	return min(work_done, budget - 1);
 }
 
-/**
- * igc_set_interrupt_capability - set MSI or MSI-X if supported
- * @adapter: Pointer to adapter structure
- * @msix: boolean value for MSI-X capability
- *
- * Attempt to configure interrupts using the best available
- * capabilities of the hardware and kernel.
- */
-static void igc_set_interrupt_capability(struct igc_adapter *adapter,
-					 bool msix)
-{
-	int numvecs, i;
-	int err;
-
-	if (!msix)
-		goto msi_only;
-	adapter->flags |= IGC_FLAG_HAS_MSIX;
-
-	/* Number of supported queues. */
-	adapter->num_rx_queues = adapter->rss_queues;
-
-	adapter->num_tx_queues = adapter->rss_queues;
-
-	/* start with one vector for every Rx queue */
-	numvecs = adapter->num_rx_queues;
-
-	/* if Tx handler is separate add 1 for every Tx queue */
-	if (!(adapter->flags & IGC_FLAG_QUEUE_PAIRS))
-		numvecs += adapter->num_tx_queues;
-
-	/* store the number of vectors reserved for queues */
-	adapter->num_q_vectors = numvecs;
-
-	/* add 1 vector for link status interrupts */
-	numvecs++;
-
-	adapter->msix_entries = kcalloc(numvecs, sizeof(struct msix_entry),
-					GFP_KERNEL);
-
-	if (!adapter->msix_entries)
-		return;
-
-	/* populate entry values */
-	for (i = 0; i < numvecs; i++)
-		adapter->msix_entries[i].entry = i;
-
-	err = pci_enable_msix_range(adapter->pdev,
-				    adapter->msix_entries,
-				    numvecs,
-				    numvecs);
-	if (err > 0)
-		return;
-
-	kfree(adapter->msix_entries);
-	adapter->msix_entries = NULL;
-
-	igc_reset_interrupt_capability(adapter);
-
-msi_only:
-	adapter->flags &= ~IGC_FLAG_HAS_MSIX;
-
-	adapter->rss_queues = 1;
-	adapter->flags |= IGC_FLAG_QUEUE_PAIRS;
-	adapter->num_rx_queues = 1;
-	adapter->num_tx_queues = 1;
-	adapter->num_q_vectors = 1;
-	if (!pci_enable_msi(adapter->pdev))
-		adapter->flags |= IGC_FLAG_HAS_MSI;
-}
-
 static void igc_add_ring(struct igc_ring *ring,
 			 struct igc_ring_container *head)
 {
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
