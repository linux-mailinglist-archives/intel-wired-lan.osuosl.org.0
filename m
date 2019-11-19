Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D41A610237D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Nov 2019 12:44:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DD3C786F8A;
	Tue, 19 Nov 2019 11:44:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cndkqPCoqRLP; Tue, 19 Nov 2019 11:44:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D33F78743E;
	Tue, 19 Nov 2019 11:44:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B602A1BF83B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:44:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B19AF22744
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:44:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4z0zsHhfQ4ey for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Nov 2019 11:44:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id AD24622703
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:44:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 03:44:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,322,1569308400"; d="scan'208";a="289580965"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by orsmga001.jf.intel.com with ESMTP; 19 Nov 2019 03:44:03 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 19 Nov 2019 13:44:01 +0200
Message-Id: <20191119114401.41842-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 04/15] igc: Remove no need declaration
 of the igc_configure
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
Rearrange the igc_configure function implementation.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 91 +++++++++++++++----------------
 1 file changed, 45 insertions(+), 46 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 4484e7ab0a53..8a2baf8ad956 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -53,7 +53,6 @@ MODULE_DEVICE_TABLE(pci, igc_pci_tbl);
 
 /* forward declaration */
 static int igc_sw_init(struct igc_adapter *);
-static void igc_configure(struct igc_adapter *adapter);
 static void igc_set_rx_mode(struct net_device *netdev);
 static void igc_write_itr(struct igc_q_vector *q_vector);
 static void igc_assign_vector(struct igc_q_vector *q_vector, int msix_vector);
@@ -1985,6 +1984,51 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
 	return !!budget;
 }
 
+static void igc_nfc_filter_restore(struct igc_adapter *adapter)
+{
+	struct igc_nfc_filter *rule;
+
+	spin_lock(&adapter->nfc_lock);
+
+	hlist_for_each_entry(rule, &adapter->nfc_filter_list, nfc_node)
+		igc_add_filter(adapter, rule);
+
+	spin_unlock(&adapter->nfc_lock);
+}
+
+/**
+ * igc_configure - configure the hardware for RX and TX
+ * @adapter: private board structure
+ */
+static void igc_configure(struct igc_adapter *adapter)
+{
+	struct net_device *netdev = adapter->netdev;
+	int i = 0;
+
+	igc_get_hw_control(adapter);
+	igc_set_rx_mode(netdev);
+
+	igc_setup_tctl(adapter);
+	igc_setup_mrqc(adapter);
+	igc_setup_rctl(adapter);
+
+	igc_nfc_filter_restore(adapter);
+	igc_configure_tx(adapter);
+	igc_configure_rx(adapter);
+
+	igc_rx_fifo_flush_base(&adapter->hw);
+
+	/* call igc_desc_unused which always leaves
+	 * at least 1 descriptor unused to make sure
+	 * next_to_use != next_to_clean
+	 */
+	for (i = 0; i < adapter->num_rx_queues; i++) {
+		struct igc_ring *ring = adapter->rx_ring[i];
+
+		igc_alloc_rx_buffers(ring, igc_desc_unused(ring));
+	}
+}
+
 /**
  * igc_up - Open the interface and prepare it to handle traffic
  * @adapter: board private structure
@@ -2206,18 +2250,6 @@ static void igc_nfc_filter_exit(struct igc_adapter *adapter)
 	spin_unlock(&adapter->nfc_lock);
 }
 
-static void igc_nfc_filter_restore(struct igc_adapter *adapter)
-{
-	struct igc_nfc_filter *rule;
-
-	spin_lock(&adapter->nfc_lock);
-
-	hlist_for_each_entry(rule, &adapter->nfc_filter_list, nfc_node)
-		igc_add_filter(adapter, rule);
-
-	spin_unlock(&adapter->nfc_lock);
-}
-
 /**
  * igc_down - Close the interface
  * @adapter: board private structure
@@ -2441,39 +2473,6 @@ igc_features_check(struct sk_buff *skb, struct net_device *dev,
 	return features;
 }
 
-/**
- * igc_configure - configure the hardware for RX and TX
- * @adapter: private board structure
- */
-static void igc_configure(struct igc_adapter *adapter)
-{
-	struct net_device *netdev = adapter->netdev;
-	int i = 0;
-
-	igc_get_hw_control(adapter);
-	igc_set_rx_mode(netdev);
-
-	igc_setup_tctl(adapter);
-	igc_setup_mrqc(adapter);
-	igc_setup_rctl(adapter);
-
-	igc_nfc_filter_restore(adapter);
-	igc_configure_tx(adapter);
-	igc_configure_rx(adapter);
-
-	igc_rx_fifo_flush_base(&adapter->hw);
-
-	/* call igc_desc_unused which always leaves
-	 * at least 1 descriptor unused to make sure
-	 * next_to_use != next_to_clean
-	 */
-	for (i = 0; i < adapter->num_rx_queues; i++) {
-		struct igc_ring *ring = adapter->rx_ring[i];
-
-		igc_alloc_rx_buffers(ring, igc_desc_unused(ring));
-	}
-}
-
 /* If the filter to be added and an already existing filter express
  * the same address and address type, it should be possible to only
  * override the other configurations, for example the queue to steer
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
