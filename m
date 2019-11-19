Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E86F102815
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Nov 2019 16:27:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A644084E2E;
	Tue, 19 Nov 2019 15:27:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dFdmDxmY6t-y; Tue, 19 Nov 2019 15:27:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5CE5384525;
	Tue, 19 Nov 2019 15:27:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C193B1BF83B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:45:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B1C1988309
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:45:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9UgjIwgrapCt for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Nov 2019 11:45:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 48DD986963
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 11:45:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 03:45:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,322,1569308400"; d="scan'208";a="258701546"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Nov 2019 03:45:41 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 19 Nov 2019 13:45:40 +0200
Message-Id: <20191119114540.42607-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
X-Mailman-Approved-At: Tue, 19 Nov 2019 15:27:33 +0000
Subject: [Intel-wired-lan] [PATCH v1 15/15] igc: Remove no need declaration
 of the igc_sw_init
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
Rearrange the igc_sw_init function implementation.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 2733 ++++++++++++++---------------
 1 file changed, 1365 insertions(+), 1368 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 309e9694633a..d01ed6c55033 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -51,9 +51,6 @@ static const struct pci_device_id igc_pci_tbl[] = {
 
 MODULE_DEVICE_TABLE(pci, igc_pci_tbl);
 
-/* forward declaration */
-static int igc_sw_init(struct igc_adapter *);
-
 enum latency_range {
 	lowest_latency = 0,
 	low_latency = 1,
@@ -2354,1230 +2351,1302 @@ static void igc_irq_disable(struct igc_adapter *adapter)
 	}
 }
 
+void igc_set_flag_queue_pairs(struct igc_adapter *adapter,
+			      const u32 max_rss_queues)
+{
+	/* Determine if we need to pair queues. */
+	/* If rss_queues > half of max_rss_queues, pair the queues in
+	 * order to conserve interrupts due to limited supply.
+	 */
+	if (adapter->rss_queues > (max_rss_queues / 2))
+		adapter->flags |= IGC_FLAG_QUEUE_PAIRS;
+	else
+		adapter->flags &= ~IGC_FLAG_QUEUE_PAIRS;
+}
+
+unsigned int igc_get_max_rss_queues(struct igc_adapter *adapter)
+{
+	unsigned int max_rss_queues;
+
+	/* Determine the maximum number of RSS queues supported. */
+	max_rss_queues = IGC_MAX_RX_QUEUES;
+
+	return max_rss_queues;
+}
+
+static void igc_init_queue_configuration(struct igc_adapter *adapter)
+{
+	u32 max_rss_queues;
+
+	max_rss_queues = igc_get_max_rss_queues(adapter);
+	adapter->rss_queues = min_t(u32, max_rss_queues, num_online_cpus());
+
+	igc_set_flag_queue_pairs(adapter, max_rss_queues);
+}
+
 /**
- * igc_up - Open the interface and prepare it to handle traffic
- * @adapter: board private structure
+ * igc_reset_q_vector - Reset config for interrupt vector
+ * @adapter: board private structure to initialize
+ * @v_idx: Index of vector to be reset
+ *
+ * If NAPI is enabled it will delete any references to the
+ * NAPI struct. This is preparation for igc_free_q_vector.
  */
-void igc_up(struct igc_adapter *adapter)
+static void igc_reset_q_vector(struct igc_adapter *adapter, int v_idx)
 {
-	struct igc_hw *hw = &adapter->hw;
-	int i = 0;
+	struct igc_q_vector *q_vector = adapter->q_vector[v_idx];
 
-	/* hardware has been reset, we need to reload some things */
-	igc_configure(adapter);
+	/* if we're coming from igc_set_interrupt_capability, the vectors are
+	 * not yet allocated
+	 */
+	if (!q_vector)
+		return;
 
-	clear_bit(__IGC_DOWN, &adapter->state);
+	if (q_vector->tx.ring)
+		adapter->tx_ring[q_vector->tx.ring->queue_index] = NULL;
 
-	for (i = 0; i < adapter->num_q_vectors; i++)
-		napi_enable(&adapter->q_vector[i]->napi);
+	if (q_vector->rx.ring)
+		adapter->rx_ring[q_vector->rx.ring->queue_index] = NULL;
 
-	if (adapter->msix_entries)
-		igc_configure_msix(adapter);
-	else
-		igc_assign_vector(adapter->q_vector[0], 0);
+	netif_napi_del(&q_vector->napi);
+}
 
-	/* Clear any pending interrupts. */
-	rd32(IGC_ICR);
-	igc_irq_enable(adapter);
+/**
+ * igc_free_q_vector - Free memory allocated for specific interrupt vector
+ * @adapter: board private structure to initialize
+ * @v_idx: Index of vector to be freed
+ *
+ * This function frees the memory allocated to the q_vector.
+ */
+static void igc_free_q_vector(struct igc_adapter *adapter, int v_idx)
+{
+	struct igc_q_vector *q_vector = adapter->q_vector[v_idx];
 
-	netif_tx_start_all_queues(adapter->netdev);
+	adapter->q_vector[v_idx] = NULL;
 
-	/* start the watchdog. */
-	hw->mac.get_link_status = 1;
-	schedule_work(&adapter->watchdog_task);
+	/* igc_get_stats64() might access the rings on this vector,
+	 * we must wait a grace period before freeing it.
+	 */
+	if (q_vector)
+		kfree_rcu(q_vector, rcu);
 }
 
 /**
- * igc_update_stats - Update the board statistics counters
- * @adapter: board private structure
+ * igc_free_q_vectors - Free memory allocated for interrupt vectors
+ * @adapter: board private structure to initialize
+ *
+ * This function frees the memory allocated to the q_vectors.  In addition if
+ * NAPI is enabled it will delete any references to the NAPI struct prior
+ * to freeing the q_vector.
  */
-void igc_update_stats(struct igc_adapter *adapter)
+static void igc_free_q_vectors(struct igc_adapter *adapter)
 {
-	struct rtnl_link_stats64 *net_stats = &adapter->stats64;
-	struct pci_dev *pdev = adapter->pdev;
-	struct igc_hw *hw = &adapter->hw;
-	u64 _bytes, _packets;
-	u64 bytes, packets;
-	unsigned int start;
-	u32 mpc;
-	int i;
+	int v_idx = adapter->num_q_vectors;
 
-	/* Prevent stats update while adapter is being reset, or if the pci
-	 * connection is down.
-	 */
-	if (adapter->link_speed == 0)
-		return;
-	if (pci_channel_offline(pdev))
-		return;
+	adapter->num_tx_queues = 0;
+	adapter->num_rx_queues = 0;
+	adapter->num_q_vectors = 0;
 
-	packets = 0;
-	bytes = 0;
+	while (v_idx--) {
+		igc_reset_q_vector(adapter, v_idx);
+		igc_free_q_vector(adapter, v_idx);
+	}
+}
 
-	rcu_read_lock();
-	for (i = 0; i < adapter->num_rx_queues; i++) {
-		struct igc_ring *ring = adapter->rx_ring[i];
-		u32 rqdpc = rd32(IGC_RQDPC(i));
+/**
+ * igc_update_itr - update the dynamic ITR value based on statistics
+ * @q_vector: pointer to q_vector
+ * @ring_container: ring info to update the itr for
+ *
+ * Stores a new ITR value based on packets and byte
+ * counts during the last interrupt.  The advantage of per interrupt
+ * computation is faster updates and more accurate ITR for the current
+ * traffic pattern.  Constants in this function were computed
+ * based on theoretical maximum wire speed and thresholds were set based
+ * on testing data as well as attempting to minimize response time
+ * while increasing bulk throughput.
+ * NOTE: These calculations are only valid when operating in a single-
+ * queue environment.
+ */
+static void igc_update_itr(struct igc_q_vector *q_vector,
+			   struct igc_ring_container *ring_container)
+{
+	unsigned int packets = ring_container->total_packets;
+	unsigned int bytes = ring_container->total_bytes;
+	u8 itrval = ring_container->itr;
 
-		if (hw->mac.type >= igc_i225)
-			wr32(IGC_RQDPC(i), 0);
+	/* no packets, exit with status unchanged */
+	if (packets == 0)
+		return;
 
-		if (rqdpc) {
-			ring->rx_stats.drops += rqdpc;
-			net_stats->rx_fifo_errors += rqdpc;
+	switch (itrval) {
+	case lowest_latency:
+		/* handle TSO and jumbo frames */
+		if (bytes / packets > 8000)
+			itrval = bulk_latency;
+		else if ((packets < 5) && (bytes > 512))
+			itrval = low_latency;
+		break;
+	case low_latency:  /* 50 usec aka 20000 ints/s */
+		if (bytes > 10000) {
+			/* this if handles the TSO accounting */
+			if (bytes / packets > 8000)
+				itrval = bulk_latency;
+			else if ((packets < 10) || ((bytes / packets) > 1200))
+				itrval = bulk_latency;
+			else if ((packets > 35))
+				itrval = lowest_latency;
+		} else if (bytes / packets > 2000) {
+			itrval = bulk_latency;
+		} else if (packets <= 2 && bytes < 512) {
+			itrval = lowest_latency;
 		}
-
-		do {
-			start = u64_stats_fetch_begin_irq(&ring->rx_syncp);
-			_bytes = ring->rx_stats.bytes;
-			_packets = ring->rx_stats.packets;
-		} while (u64_stats_fetch_retry_irq(&ring->rx_syncp, start));
-		bytes += _bytes;
-		packets += _packets;
+		break;
+	case bulk_latency: /* 250 usec aka 4000 ints/s */
+		if (bytes > 25000) {
+			if (packets > 35)
+				itrval = low_latency;
+		} else if (bytes < 1500) {
+			itrval = low_latency;
+		}
+		break;
 	}
 
-	net_stats->rx_bytes = bytes;
-	net_stats->rx_packets = packets;
+	/* clear work counters since we have the values we need */
+	ring_container->total_bytes = 0;
+	ring_container->total_packets = 0;
 
-	packets = 0;
-	bytes = 0;
-	for (i = 0; i < adapter->num_tx_queues; i++) {
-		struct igc_ring *ring = adapter->tx_ring[i];
+	/* write updated itr to ring container */
+	ring_container->itr = itrval;
+}
 
-		do {
-			start = u64_stats_fetch_begin_irq(&ring->tx_syncp);
-			_bytes = ring->tx_stats.bytes;
-			_packets = ring->tx_stats.packets;
-		} while (u64_stats_fetch_retry_irq(&ring->tx_syncp, start));
-		bytes += _bytes;
-		packets += _packets;
+static void igc_set_itr(struct igc_q_vector *q_vector)
+{
+	struct igc_adapter *adapter = q_vector->adapter;
+	u32 new_itr = q_vector->itr_val;
+	u8 current_itr = 0;
+
+	/* for non-gigabit speeds, just fix the interrupt rate at 4000 */
+	switch (adapter->link_speed) {
+	case SPEED_10:
+	case SPEED_100:
+		current_itr = 0;
+		new_itr = IGC_4K_ITR;
+		goto set_itr_now;
+	default:
+		break;
 	}
-	net_stats->tx_bytes = bytes;
-	net_stats->tx_packets = packets;
-	rcu_read_unlock();
 
-	/* read stats registers */
-	adapter->stats.crcerrs += rd32(IGC_CRCERRS);
-	adapter->stats.gprc += rd32(IGC_GPRC);
-	adapter->stats.gorc += rd32(IGC_GORCL);
-	rd32(IGC_GORCH); /* clear GORCL */
-	adapter->stats.bprc += rd32(IGC_BPRC);
-	adapter->stats.mprc += rd32(IGC_MPRC);
-	adapter->stats.roc += rd32(IGC_ROC);
+	igc_update_itr(q_vector, &q_vector->tx);
+	igc_update_itr(q_vector, &q_vector->rx);
 
-	adapter->stats.prc64 += rd32(IGC_PRC64);
-	adapter->stats.prc127 += rd32(IGC_PRC127);
-	adapter->stats.prc255 += rd32(IGC_PRC255);
-	adapter->stats.prc511 += rd32(IGC_PRC511);
-	adapter->stats.prc1023 += rd32(IGC_PRC1023);
-	adapter->stats.prc1522 += rd32(IGC_PRC1522);
-	adapter->stats.symerrs += rd32(IGC_SYMERRS);
-	adapter->stats.sec += rd32(IGC_SEC);
+	current_itr = max(q_vector->rx.itr, q_vector->tx.itr);
 
-	mpc = rd32(IGC_MPC);
-	adapter->stats.mpc += mpc;
-	net_stats->rx_fifo_errors += mpc;
-	adapter->stats.scc += rd32(IGC_SCC);
-	adapter->stats.ecol += rd32(IGC_ECOL);
-	adapter->stats.mcc += rd32(IGC_MCC);
-	adapter->stats.latecol += rd32(IGC_LATECOL);
-	adapter->stats.dc += rd32(IGC_DC);
-	adapter->stats.rlec += rd32(IGC_RLEC);
-	adapter->stats.xonrxc += rd32(IGC_XONRXC);
-	adapter->stats.xontxc += rd32(IGC_XONTXC);
-	adapter->stats.xoffrxc += rd32(IGC_XOFFRXC);
-	adapter->stats.xofftxc += rd32(IGC_XOFFTXC);
-	adapter->stats.fcruc += rd32(IGC_FCRUC);
-	adapter->stats.gptc += rd32(IGC_GPTC);
-	adapter->stats.gotc += rd32(IGC_GOTCL);
-	rd32(IGC_GOTCH); /* clear GOTCL */
-	adapter->stats.rnbc += rd32(IGC_RNBC);
-	adapter->stats.ruc += rd32(IGC_RUC);
-	adapter->stats.rfc += rd32(IGC_RFC);
-	adapter->stats.rjc += rd32(IGC_RJC);
-	adapter->stats.tor += rd32(IGC_TORH);
-	adapter->stats.tot += rd32(IGC_TOTH);
-	adapter->stats.tpr += rd32(IGC_TPR);
-
-	adapter->stats.ptc64 += rd32(IGC_PTC64);
-	adapter->stats.ptc127 += rd32(IGC_PTC127);
-	adapter->stats.ptc255 += rd32(IGC_PTC255);
-	adapter->stats.ptc511 += rd32(IGC_PTC511);
-	adapter->stats.ptc1023 += rd32(IGC_PTC1023);
-	adapter->stats.ptc1522 += rd32(IGC_PTC1522);
-
-	adapter->stats.mptc += rd32(IGC_MPTC);
-	adapter->stats.bptc += rd32(IGC_BPTC);
-
-	adapter->stats.tpt += rd32(IGC_TPT);
-	adapter->stats.colc += rd32(IGC_COLC);
-
-	adapter->stats.algnerrc += rd32(IGC_ALGNERRC);
-
-	adapter->stats.tsctc += rd32(IGC_TSCTC);
-	adapter->stats.tsctfc += rd32(IGC_TSCTFC);
-
-	adapter->stats.iac += rd32(IGC_IAC);
-	adapter->stats.icrxoc += rd32(IGC_ICRXOC);
-	adapter->stats.icrxptc += rd32(IGC_ICRXPTC);
-	adapter->stats.icrxatc += rd32(IGC_ICRXATC);
-	adapter->stats.ictxptc += rd32(IGC_ICTXPTC);
-	adapter->stats.ictxatc += rd32(IGC_ICTXATC);
-	adapter->stats.ictxqec += rd32(IGC_ICTXQEC);
-	adapter->stats.ictxqmtc += rd32(IGC_ICTXQMTC);
-	adapter->stats.icrxdmtc += rd32(IGC_ICRXDMTC);
-
-	/* Fill out the OS statistics structure */
-	net_stats->multicast = adapter->stats.mprc;
-	net_stats->collisions = adapter->stats.colc;
-
-	/* Rx Errors */
-
-	/* RLEC on some newer hardware can be incorrect so build
-	 * our own version based on RUC and ROC
-	 */
-	net_stats->rx_errors = adapter->stats.rxerrc +
-		adapter->stats.crcerrs + adapter->stats.algnerrc +
-		adapter->stats.ruc + adapter->stats.roc +
-		adapter->stats.cexterr;
-	net_stats->rx_length_errors = adapter->stats.ruc +
-				      adapter->stats.roc;
-	net_stats->rx_crc_errors = adapter->stats.crcerrs;
-	net_stats->rx_frame_errors = adapter->stats.algnerrc;
-	net_stats->rx_missed_errors = adapter->stats.mpc;
-
-	/* Tx Errors */
-	net_stats->tx_errors = adapter->stats.ecol +
-			       adapter->stats.latecol;
-	net_stats->tx_aborted_errors = adapter->stats.ecol;
-	net_stats->tx_window_errors = adapter->stats.latecol;
-	net_stats->tx_carrier_errors = adapter->stats.tncrs;
+	/* conservative mode (itr 3) eliminates the lowest_latency setting */
+	if (current_itr == lowest_latency &&
+	    ((q_vector->rx.ring && adapter->rx_itr_setting == 3) ||
+	    (!q_vector->rx.ring && adapter->tx_itr_setting == 3)))
+		current_itr = low_latency;
 
-	/* Tx Dropped needs to be maintained elsewhere */
+	switch (current_itr) {
+	/* counts and packets in update_itr are dependent on these numbers */
+	case lowest_latency:
+		new_itr = IGC_70K_ITR; /* 70,000 ints/sec */
+		break;
+	case low_latency:
+		new_itr = IGC_20K_ITR; /* 20,000 ints/sec */
+		break;
+	case bulk_latency:
+		new_itr = IGC_4K_ITR;  /* 4,000 ints/sec */
+		break;
+	default:
+		break;
+	}
 
-	/* Management Stats */
-	adapter->stats.mgptc += rd32(IGC_MGTPTC);
-	adapter->stats.mgprc += rd32(IGC_MGTPRC);
-	adapter->stats.mgpdc += rd32(IGC_MGTPDC);
+set_itr_now:
+	if (new_itr != q_vector->itr_val) {
+		/* this attempts to bias the interrupt rate towards Bulk
+		 * by adding intermediate steps when interrupt rate is
+		 * increasing
+		 */
+		new_itr = new_itr > q_vector->itr_val ?
+			  max((new_itr * q_vector->itr_val) /
+			  (new_itr + (q_vector->itr_val >> 2)),
+			  new_itr) : new_itr;
+		/* Don't write the value here; it resets the adapter's
+		 * internal timer, and causes us to delay far longer than
+		 * we should between interrupts.  Instead, we write the ITR
+		 * value at the beginning of the next interrupt so the timing
+		 * ends up being correct.
+		 */
+		q_vector->itr_val = new_itr;
+		q_vector->set_itr = 1;
+	}
 }
 
-static void igc_nfc_filter_exit(struct igc_adapter *adapter)
+static void igc_reset_interrupt_capability(struct igc_adapter *adapter)
 {
-	struct igc_nfc_filter *rule;
-
-	spin_lock(&adapter->nfc_lock);
-
-	hlist_for_each_entry(rule, &adapter->nfc_filter_list, nfc_node)
-		igc_erase_filter(adapter, rule);
+	int v_idx = adapter->num_q_vectors;
 
-	hlist_for_each_entry(rule, &adapter->cls_flower_list, nfc_node)
-		igc_erase_filter(adapter, rule);
+	if (adapter->msix_entries) {
+		pci_disable_msix(adapter->pdev);
+		kfree(adapter->msix_entries);
+		adapter->msix_entries = NULL;
+	} else if (adapter->flags & IGC_FLAG_HAS_MSI) {
+		pci_disable_msi(adapter->pdev);
+	}
 
-	spin_unlock(&adapter->nfc_lock);
+	while (v_idx--)
+		igc_reset_q_vector(adapter, v_idx);
 }
 
 /**
- * igc_down - Close the interface
- * @adapter: board private structure
+ * igc_set_interrupt_capability - set MSI or MSI-X if supported
+ * @adapter: Pointer to adapter structure
+ * @msix: boolean value for MSI-X capability
+ *
+ * Attempt to configure interrupts using the best available
+ * capabilities of the hardware and kernel.
  */
-void igc_down(struct igc_adapter *adapter)
+static void igc_set_interrupt_capability(struct igc_adapter *adapter,
+					 bool msix)
 {
-	struct net_device *netdev = adapter->netdev;
-	struct igc_hw *hw = &adapter->hw;
-	u32 tctl, rctl;
-	int i = 0;
-
-	set_bit(__IGC_DOWN, &adapter->state);
-
-	/* disable receives in the hardware */
-	rctl = rd32(IGC_RCTL);
-	wr32(IGC_RCTL, rctl & ~IGC_RCTL_EN);
-	/* flush and sleep below */
-
-	igc_nfc_filter_exit(adapter);
-
-	/* set trans_start so we don't get spurious watchdogs during reset */
-	netif_trans_update(netdev);
+	int numvecs, i;
+	int err;
 
-	netif_carrier_off(netdev);
-	netif_tx_stop_all_queues(netdev);
+	if (!msix)
+		goto msi_only;
+	adapter->flags |= IGC_FLAG_HAS_MSIX;
 
-	/* disable transmits in the hardware */
-	tctl = rd32(IGC_TCTL);
-	tctl &= ~IGC_TCTL_EN;
-	wr32(IGC_TCTL, tctl);
-	/* flush both disables and wait for them to finish */
-	wrfl();
-	usleep_range(10000, 20000);
+	/* Number of supported queues. */
+	adapter->num_rx_queues = adapter->rss_queues;
 
-	igc_irq_disable(adapter);
+	adapter->num_tx_queues = adapter->rss_queues;
 
-	adapter->flags &= ~IGC_FLAG_NEED_LINK_UPDATE;
+	/* start with one vector for every Rx queue */
+	numvecs = adapter->num_rx_queues;
 
-	for (i = 0; i < adapter->num_q_vectors; i++) {
-		if (adapter->q_vector[i]) {
-			napi_synchronize(&adapter->q_vector[i]->napi);
-			napi_disable(&adapter->q_vector[i]->napi);
-		}
-	}
+	/* if Tx handler is separate add 1 for every Tx queue */
+	if (!(adapter->flags & IGC_FLAG_QUEUE_PAIRS))
+		numvecs += adapter->num_tx_queues;
 
-	del_timer_sync(&adapter->watchdog_timer);
-	del_timer_sync(&adapter->phy_info_timer);
+	/* store the number of vectors reserved for queues */
+	adapter->num_q_vectors = numvecs;
 
-	/* record the stats before reset*/
-	spin_lock(&adapter->stats64_lock);
-	igc_update_stats(adapter);
-	spin_unlock(&adapter->stats64_lock);
+	/* add 1 vector for link status interrupts */
+	numvecs++;
 
-	adapter->link_speed = 0;
-	adapter->link_duplex = 0;
+	adapter->msix_entries = kcalloc(numvecs, sizeof(struct msix_entry),
+					GFP_KERNEL);
 
-	if (!pci_channel_offline(adapter->pdev))
-		igc_reset(adapter);
+	if (!adapter->msix_entries)
+		return;
 
-	/* clear VLAN promisc flag so VFTA will be updated if necessary */
-	adapter->flags &= ~IGC_FLAG_VLAN_PROMISC;
+	/* populate entry values */
+	for (i = 0; i < numvecs; i++)
+		adapter->msix_entries[i].entry = i;
 
-	igc_clean_all_tx_rings(adapter);
-	igc_clean_all_rx_rings(adapter);
-}
+	err = pci_enable_msix_range(adapter->pdev,
+				    adapter->msix_entries,
+				    numvecs,
+				    numvecs);
+	if (err > 0)
+		return;
 
-void igc_reinit_locked(struct igc_adapter *adapter)
-{
-	WARN_ON(in_interrupt());
-	while (test_and_set_bit(__IGC_RESETTING, &adapter->state))
-		usleep_range(1000, 2000);
-	igc_down(adapter);
-	igc_up(adapter);
-	clear_bit(__IGC_RESETTING, &adapter->state);
-}
+	kfree(adapter->msix_entries);
+	adapter->msix_entries = NULL;
 
-static void igc_reset_task(struct work_struct *work)
-{
-	struct igc_adapter *adapter;
+	igc_reset_interrupt_capability(adapter);
 
-	adapter = container_of(work, struct igc_adapter, reset_task);
+msi_only:
+	adapter->flags &= ~IGC_FLAG_HAS_MSIX;
 
-	netdev_err(adapter->netdev, "Reset adapter\n");
-	igc_reinit_locked(adapter);
+	adapter->rss_queues = 1;
+	adapter->flags |= IGC_FLAG_QUEUE_PAIRS;
+	adapter->num_rx_queues = 1;
+	adapter->num_tx_queues = 1;
+	adapter->num_q_vectors = 1;
+	if (!pci_enable_msi(adapter->pdev))
+		adapter->flags |= IGC_FLAG_HAS_MSI;
 }
 
 /**
- * igc_change_mtu - Change the Maximum Transfer Unit
- * @netdev: network interface device structure
- * @new_mtu: new value for maximum frame size
+ * igc_update_ring_itr - update the dynamic ITR value based on packet size
+ * @q_vector: pointer to q_vector
  *
- * Returns 0 on success, negative on failure
+ * Stores a new ITR value based on strictly on packet size.  This
+ * algorithm is less sophisticated than that used in igc_update_itr,
+ * due to the difficulty of synchronizing statistics across multiple
+ * receive rings.  The divisors and thresholds used by this function
+ * were determined based on theoretical maximum wire speed and testing
+ * data, in order to minimize response time while increasing bulk
+ * throughput.
+ * NOTE: This function is called only when operating in a multiqueue
+ * receive environment.
  */
-static int igc_change_mtu(struct net_device *netdev, int new_mtu)
+static void igc_update_ring_itr(struct igc_q_vector *q_vector)
 {
-	int max_frame = new_mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
-	struct igc_adapter *adapter = netdev_priv(netdev);
+	struct igc_adapter *adapter = q_vector->adapter;
+	int new_val = q_vector->itr_val;
+	int avg_wire_size = 0;
+	unsigned int packets;
 
-	/* adjust max frame to be at least the size of a standard frame */
-	if (max_frame < (ETH_FRAME_LEN + ETH_FCS_LEN))
-		max_frame = ETH_FRAME_LEN + ETH_FCS_LEN;
+	/* For non-gigabit speeds, just fix the interrupt rate at 4000
+	 * ints/sec - ITR timer value of 120 ticks.
+	 */
+	switch (adapter->link_speed) {
+	case SPEED_10:
+	case SPEED_100:
+		new_val = IGC_4K_ITR;
+		goto set_itr_val;
+	default:
+		break;
+	}
 
-	while (test_and_set_bit(__IGC_RESETTING, &adapter->state))
-		usleep_range(1000, 2000);
+	packets = q_vector->rx.total_packets;
+	if (packets)
+		avg_wire_size = q_vector->rx.total_bytes / packets;
 
-	/* igc_down has a dependency on max_frame_size */
-	adapter->max_frame_size = max_frame;
+	packets = q_vector->tx.total_packets;
+	if (packets)
+		avg_wire_size = max_t(u32, avg_wire_size,
+				      q_vector->tx.total_bytes / packets);
 
-	if (netif_running(netdev))
-		igc_down(adapter);
+	/* if avg_wire_size isn't set no work was done */
+	if (!avg_wire_size)
+		goto clear_counts;
 
-	netdev_dbg(netdev, "changing MTU from %d to %d\n",
-		   netdev->mtu, new_mtu);
-	netdev->mtu = new_mtu;
+	/* Add 24 bytes to size to account for CRC, preamble, and gap */
+	avg_wire_size += 24;
 
-	if (netif_running(netdev))
-		igc_up(adapter);
+	/* Don't starve jumbo frames */
+	avg_wire_size = min(avg_wire_size, 3000);
+
+	/* Give a little boost to mid-size frames */
+	if (avg_wire_size > 300 && avg_wire_size < 1200)
+		new_val = avg_wire_size / 3;
 	else
-		igc_reset(adapter);
+		new_val = avg_wire_size / 2;
 
-	clear_bit(__IGC_RESETTING, &adapter->state);
+	/* conservative mode (itr 3) eliminates the lowest_latency setting */
+	if (new_val < IGC_20K_ITR &&
+	    ((q_vector->rx.ring && adapter->rx_itr_setting == 3) ||
+	    (!q_vector->rx.ring && adapter->tx_itr_setting == 3)))
+		new_val = IGC_20K_ITR;
 
-	return 0;
+set_itr_val:
+	if (new_val != q_vector->itr_val) {
+		q_vector->itr_val = new_val;
+		q_vector->set_itr = 1;
+	}
+clear_counts:
+	q_vector->rx.total_bytes = 0;
+	q_vector->rx.total_packets = 0;
+	q_vector->tx.total_bytes = 0;
+	q_vector->tx.total_packets = 0;
 }
 
-/**
- * igc_get_stats - Get System Network Statistics
- * @netdev: network interface device structure
- *
- * Returns the address of the device statistics structure.
- * The statistics are updated here and also from the timer callback.
- */
-static struct net_device_stats *igc_get_stats(struct net_device *netdev)
+static void igc_ring_irq_enable(struct igc_q_vector *q_vector)
 {
-	struct igc_adapter *adapter = netdev_priv(netdev);
+	struct igc_adapter *adapter = q_vector->adapter;
+	struct igc_hw *hw = &adapter->hw;
 
-	if (!test_bit(__IGC_RESETTING, &adapter->state))
-		igc_update_stats(adapter);
+	if ((q_vector->rx.ring && (adapter->rx_itr_setting & 3)) ||
+	    (!q_vector->rx.ring && (adapter->tx_itr_setting & 3))) {
+		if (adapter->num_q_vectors == 1)
+			igc_set_itr(q_vector);
+		else
+			igc_update_ring_itr(q_vector);
+	}
 
-	/* only return the current stats */
-	return &netdev->stats;
+	if (!test_bit(__IGC_DOWN, &adapter->state)) {
+		if (adapter->msix_entries)
+			wr32(IGC_EIMS, q_vector->eims_value);
+		else
+			igc_irq_enable(adapter);
+	}
 }
 
-static netdev_features_t igc_fix_features(struct net_device *netdev,
-					  netdev_features_t features)
+static void igc_add_ring(struct igc_ring *ring,
+			 struct igc_ring_container *head)
 {
-	/* Since there is no support for separate Rx/Tx vlan accel
-	 * enable/disable make sure Tx flag is always in same state as Rx.
-	 */
-	if (features & NETIF_F_HW_VLAN_CTAG_RX)
-		features |= NETIF_F_HW_VLAN_CTAG_TX;
-	else
-		features &= ~NETIF_F_HW_VLAN_CTAG_TX;
-
-	return features;
+	head->ring = ring;
+	head->count++;
 }
 
-static int igc_set_features(struct net_device *netdev,
-			    netdev_features_t features)
+/**
+ * igc_cache_ring_register - Descriptor ring to register mapping
+ * @adapter: board private structure to initialize
+ *
+ * Once we know the feature-set enabled for the device, we'll cache
+ * the register offset the descriptor ring is assigned to.
+ */
+static void igc_cache_ring_register(struct igc_adapter *adapter)
 {
-	netdev_features_t changed = netdev->features ^ features;
-	struct igc_adapter *adapter = netdev_priv(netdev);
-
-	/* Add VLAN support */
-	if (!(changed & (NETIF_F_RXALL | NETIF_F_NTUPLE)))
-		return 0;
-
-	if (!(features & NETIF_F_NTUPLE)) {
-		struct hlist_node *node2;
-		struct igc_nfc_filter *rule;
+	int i = 0, j = 0;
 
-		spin_lock(&adapter->nfc_lock);
-		hlist_for_each_entry_safe(rule, node2,
-					  &adapter->nfc_filter_list, nfc_node) {
-			igc_erase_filter(adapter, rule);
-			hlist_del(&rule->nfc_node);
-			kfree(rule);
-		}
-		spin_unlock(&adapter->nfc_lock);
-		adapter->nfc_filter_count = 0;
+	switch (adapter->hw.mac.type) {
+	case igc_i225:
+	/* Fall through */
+	default:
+		for (; i < adapter->num_rx_queues; i++)
+			adapter->rx_ring[i]->reg_idx = i;
+		for (; j < adapter->num_tx_queues; j++)
+			adapter->tx_ring[j]->reg_idx = j;
+		break;
 	}
-
-	netdev->features = features;
-
-	if (netif_running(netdev))
-		igc_reinit_locked(adapter);
-	else
-		igc_reset(adapter);
-
-	return 1;
 }
 
-static netdev_features_t
-igc_features_check(struct sk_buff *skb, struct net_device *dev,
-		   netdev_features_t features)
+/**
+ * igc_poll - NAPI Rx polling callback
+ * @napi: napi polling structure
+ * @budget: count of how many packets we should handle
+ */
+static int igc_poll(struct napi_struct *napi, int budget)
 {
-	unsigned int network_hdr_len, mac_hdr_len;
+	struct igc_q_vector *q_vector = container_of(napi,
+						     struct igc_q_vector,
+						     napi);
+	bool clean_complete = true;
+	int work_done = 0;
 
-	/* Make certain the headers can be described by a context descriptor */
-	mac_hdr_len = skb_network_header(skb) - skb->data;
-	if (unlikely(mac_hdr_len > IGC_MAX_MAC_HDR_LEN))
-		return features & ~(NETIF_F_HW_CSUM |
-				    NETIF_F_SCTP_CRC |
-				    NETIF_F_HW_VLAN_CTAG_TX |
-				    NETIF_F_TSO |
-				    NETIF_F_TSO6);
+	if (q_vector->tx.ring)
+		clean_complete = igc_clean_tx_irq(q_vector, budget);
 
-	network_hdr_len = skb_checksum_start(skb) - skb_network_header(skb);
-	if (unlikely(network_hdr_len >  IGC_MAX_NETWORK_HDR_LEN))
-		return features & ~(NETIF_F_HW_CSUM |
-				    NETIF_F_SCTP_CRC |
-				    NETIF_F_TSO |
-				    NETIF_F_TSO6);
+	if (q_vector->rx.ring) {
+		int cleaned = igc_clean_rx_irq(q_vector, budget);
 
-	/* We can only support IPv4 TSO in tunnels if we can mangle the
-	 * inner IP ID field, so strip TSO if MANGLEID is not supported.
+		work_done += cleaned;
+		if (cleaned >= budget)
+			clean_complete = false;
+	}
+
+	/* If all work not completed, return budget and keep polling */
+	if (!clean_complete)
+		return budget;
+
+	/* Exit the polling mode, but don't re-enable interrupts if stack might
+	 * poll us due to busy-polling
 	 */
-	if (skb->encapsulation && !(features & NETIF_F_TSO_MANGLEID))
-		features &= ~NETIF_F_TSO;
+	if (likely(napi_complete_done(napi, work_done)))
+		igc_ring_irq_enable(q_vector);
 
-	return features;
+	return min(work_done, budget - 1);
 }
 
-/* Add a MAC filter for 'addr' directing matching traffic to 'queue',
- * 'flags' is used to indicate what kind of match is made, match is by
- * default for the destination address, if matching by source address
- * is desired the flag IGC_MAC_STATE_SRC_ADDR can be used.
+/**
+ * igc_alloc_q_vector - Allocate memory for a single interrupt vector
+ * @adapter: board private structure to initialize
+ * @v_count: q_vectors allocated on adapter, used for ring interleaving
+ * @v_idx: index of vector in adapter struct
+ * @txr_count: total number of Tx rings to allocate
+ * @txr_idx: index of first Tx ring to allocate
+ * @rxr_count: total number of Rx rings to allocate
+ * @rxr_idx: index of first Rx ring to allocate
+ *
+ * We allocate one q_vector.  If allocation fails we return -ENOMEM.
  */
-static int igc_add_mac_filter_flags(struct igc_adapter *adapter,
-				    const u8 *addr, const u8 queue,
-				    const u8 flags)
+static int igc_alloc_q_vector(struct igc_adapter *adapter,
+			      unsigned int v_count, unsigned int v_idx,
+			      unsigned int txr_count, unsigned int txr_idx,
+			      unsigned int rxr_count, unsigned int rxr_idx)
 {
-	struct igc_hw *hw = &adapter->hw;
-	int rar_entries = hw->mac.rar_entry_count;
-	int i;
+	struct igc_q_vector *q_vector;
+	struct igc_ring *ring;
+	int ring_count;
 
-	if (is_zero_ether_addr(addr))
-		return -EINVAL;
+	/* igc only supports 1 Tx and/or 1 Rx queue per vector */
+	if (txr_count > 1 || rxr_count > 1)
+		return -ENOMEM;
 
-	/* Search for the first empty entry in the MAC table.
-	 * Do not touch entries at the end of the table reserved for the VF MAC
-	 * addresses.
-	 */
-	for (i = 0; i < rar_entries; i++) {
-		if (!igc_mac_entry_can_be_used(&adapter->mac_table[i],
-					       addr, flags))
-			continue;
+	ring_count = txr_count + rxr_count;
 
-		ether_addr_copy(adapter->mac_table[i].addr, addr);
-		adapter->mac_table[i].queue = queue;
-		adapter->mac_table[i].state |= IGC_MAC_STATE_IN_USE | flags;
+	/* allocate q_vector and rings */
+	q_vector = adapter->q_vector[v_idx];
+	if (!q_vector)
+		q_vector = kzalloc(struct_size(q_vector, ring, ring_count),
+				   GFP_KERNEL);
+	else
+		memset(q_vector, 0, struct_size(q_vector, ring, ring_count));
+	if (!q_vector)
+		return -ENOMEM;
 
-		igc_rar_set_index(adapter, i);
-		return i;
-	}
+	/* initialize NAPI */
+	netif_napi_add(adapter->netdev, &q_vector->napi,
+		       igc_poll, 64);
 
-	return -ENOSPC;
-}
+	/* tie q_vector and adapter together */
+	adapter->q_vector[v_idx] = q_vector;
+	q_vector->adapter = adapter;
 
-int igc_add_mac_steering_filter(struct igc_adapter *adapter,
-				const u8 *addr, u8 queue, u8 flags)
-{
-	return igc_add_mac_filter_flags(adapter, addr, queue,
-					IGC_MAC_STATE_QUEUE_STEERING | flags);
-}
+	/* initialize work limits */
+	q_vector->tx.work_limit = adapter->tx_work_limit;
 
-/* Remove a MAC filter for 'addr' directing matching traffic to
- * 'queue', 'flags' is used to indicate what kind of match need to be
- * removed, match is by default for the destination address, if
- * matching by source address is to be removed the flag
- * IGC_MAC_STATE_SRC_ADDR can be used.
- */
-static int igc_del_mac_filter_flags(struct igc_adapter *adapter,
-				    const u8 *addr, const u8 queue,
-				    const u8 flags)
-{
-	struct igc_hw *hw = &adapter->hw;
-	int rar_entries = hw->mac.rar_entry_count;
-	int i;
+	/* initialize ITR configuration */
+	q_vector->itr_register = adapter->io_addr + IGC_EITR(0);
+	q_vector->itr_val = IGC_START_ITR;
 
-	if (is_zero_ether_addr(addr))
-		return -EINVAL;
+	/* initialize pointer to rings */
+	ring = q_vector->ring;
 
-	/* Search for matching entry in the MAC table based on given address
-	 * and queue. Do not touch entries at the end of the table reserved
-	 * for the VF MAC addresses.
-	 */
-	for (i = 0; i < rar_entries; i++) {
-		if (!(adapter->mac_table[i].state & IGC_MAC_STATE_IN_USE))
-			continue;
-		if ((adapter->mac_table[i].state & flags) != flags)
-			continue;
-		if (adapter->mac_table[i].queue != queue)
-			continue;
-		if (!ether_addr_equal(adapter->mac_table[i].addr, addr))
-			continue;
+	/* initialize ITR */
+	if (rxr_count) {
+		/* rx or rx/tx vector */
+		if (!adapter->rx_itr_setting || adapter->rx_itr_setting > 3)
+			q_vector->itr_val = adapter->rx_itr_setting;
+	} else {
+		/* tx only vector */
+		if (!adapter->tx_itr_setting || adapter->tx_itr_setting > 3)
+			q_vector->itr_val = adapter->tx_itr_setting;
+	}
 
-		/* When a filter for the default address is "deleted",
-		 * we return it to its initial configuration
-		 */
-		if (adapter->mac_table[i].state & IGC_MAC_STATE_DEFAULT) {
-			adapter->mac_table[i].state =
-				IGC_MAC_STATE_DEFAULT | IGC_MAC_STATE_IN_USE;
-		} else {
-			adapter->mac_table[i].state = 0;
-			adapter->mac_table[i].queue = 0;
-			memset(adapter->mac_table[i].addr, 0, ETH_ALEN);
-		}
+	if (txr_count) {
+		/* assign generic ring traits */
+		ring->dev = &adapter->pdev->dev;
+		ring->netdev = adapter->netdev;
 
-		igc_rar_set_index(adapter, i);
-		return 0;
+		/* configure backlink on ring */
+		ring->q_vector = q_vector;
+
+		/* update q_vector Tx values */
+		igc_add_ring(ring, &q_vector->tx);
+
+		/* apply Tx specific ring traits */
+		ring->count = adapter->tx_ring_count;
+		ring->queue_index = txr_idx;
+
+		/* assign ring to adapter */
+		adapter->tx_ring[txr_idx] = ring;
+
+		/* push pointer to next ring */
+		ring++;
 	}
 
-	return -ENOENT;
-}
+	if (rxr_count) {
+		/* assign generic ring traits */
+		ring->dev = &adapter->pdev->dev;
+		ring->netdev = adapter->netdev;
 
-int igc_del_mac_steering_filter(struct igc_adapter *adapter,
-				const u8 *addr, u8 queue, u8 flags)
-{
-	return igc_del_mac_filter_flags(adapter, addr, queue,
-					IGC_MAC_STATE_QUEUE_STEERING | flags);
+		/* configure backlink on ring */
+		ring->q_vector = q_vector;
+
+		/* update q_vector Rx values */
+		igc_add_ring(ring, &q_vector->rx);
+
+		/* apply Rx specific ring traits */
+		ring->count = adapter->rx_ring_count;
+		ring->queue_index = rxr_idx;
+
+		/* assign ring to adapter */
+		adapter->rx_ring[rxr_idx] = ring;
+	}
+
+	return 0;
 }
 
 /**
- * igc_msix_other - msix other interrupt handler
- * @irq: interrupt number
- * @data: pointer to a q_vector
+ * igc_alloc_q_vectors - Allocate memory for interrupt vectors
+ * @adapter: board private structure to initialize
+ *
+ * We allocate one q_vector per queue interrupt.  If allocation fails we
+ * return -ENOMEM.
  */
-static irqreturn_t igc_msix_other(int irq, void *data)
+static int igc_alloc_q_vectors(struct igc_adapter *adapter)
 {
-	struct igc_adapter *adapter = data;
-	struct igc_hw *hw = &adapter->hw;
-	u32 icr = rd32(IGC_ICR);
+	int rxr_remaining = adapter->num_rx_queues;
+	int txr_remaining = adapter->num_tx_queues;
+	int rxr_idx = 0, txr_idx = 0, v_idx = 0;
+	int q_vectors = adapter->num_q_vectors;
+	int err;
 
-	/* reading ICR causes bit 31 of EICR to be cleared */
-	if (icr & IGC_ICR_DRSTA)
-		schedule_work(&adapter->reset_task);
+	if (q_vectors >= (rxr_remaining + txr_remaining)) {
+		for (; rxr_remaining; v_idx++) {
+			err = igc_alloc_q_vector(adapter, q_vectors, v_idx,
+						 0, 0, 1, rxr_idx);
 
-	if (icr & IGC_ICR_DOUTSYNC) {
-		/* HW is reporting DMA is out of sync */
-		adapter->stats.doosync++;
-	}
+			if (err)
+				goto err_out;
 
-	if (icr & IGC_ICR_LSC) {
-		hw->mac.get_link_status = 1;
-		/* guard against interrupt when we're going down */
-		if (!test_bit(__IGC_DOWN, &adapter->state))
-			mod_timer(&adapter->watchdog_timer, jiffies + 1);
+			/* update counts and index */
+			rxr_remaining--;
+			rxr_idx++;
+		}
 	}
 
-	wr32(IGC_EIMS, adapter->eims_other);
-
-	return IRQ_HANDLED;
-}
-
-static void igc_write_itr(struct igc_q_vector *q_vector)
-{
-	u32 itr_val = q_vector->itr_val & IGC_QVECTOR_MASK;
-
-	if (!q_vector->set_itr)
-		return;
+	for (; v_idx < q_vectors; v_idx++) {
+		int rqpv = DIV_ROUND_UP(rxr_remaining, q_vectors - v_idx);
+		int tqpv = DIV_ROUND_UP(txr_remaining, q_vectors - v_idx);
 
-	if (!itr_val)
-		itr_val = IGC_ITR_VAL_MASK;
+		err = igc_alloc_q_vector(adapter, q_vectors, v_idx,
+					 tqpv, txr_idx, rqpv, rxr_idx);
 
-	itr_val |= IGC_EITR_CNT_IGNR;
+		if (err)
+			goto err_out;
 
-	writel(itr_val, q_vector->itr_register);
-	q_vector->set_itr = 0;
-}
+		/* update counts and index */
+		rxr_remaining -= rqpv;
+		txr_remaining -= tqpv;
+		rxr_idx++;
+		txr_idx++;
+	}
 
-static irqreturn_t igc_msix_ring(int irq, void *data)
-{
-	struct igc_q_vector *q_vector = data;
+	return 0;
 
-	/* Write the ITR value calculated from the previous interrupt. */
-	igc_write_itr(q_vector);
+err_out:
+	adapter->num_tx_queues = 0;
+	adapter->num_rx_queues = 0;
+	adapter->num_q_vectors = 0;
 
-	napi_schedule(&q_vector->napi);
+	while (v_idx--)
+		igc_free_q_vector(adapter, v_idx);
 
-	return IRQ_HANDLED;
+	return -ENOMEM;
 }
 
 /**
- * igc_request_msix - Initialize MSI-X interrupts
+ * igc_init_interrupt_scheme - initialize interrupts, allocate queues/vectors
  * @adapter: Pointer to adapter structure
+ * @msix: boolean for MSI-X capability
  *
- * igc_request_msix allocates MSI-X vectors and requests interrupts from the
- * kernel.
+ * This function initializes the interrupts and allocates all of the queues.
  */
-static int igc_request_msix(struct igc_adapter *adapter)
+static int igc_init_interrupt_scheme(struct igc_adapter *adapter, bool msix)
 {
-	int i = 0, err = 0, vector = 0, free_vector = 0;
-	struct net_device *netdev = adapter->netdev;
+	struct pci_dev *pdev = adapter->pdev;
+	int err = 0;
 
-	err = request_irq(adapter->msix_entries[vector].vector,
-			  &igc_msix_other, 0, netdev->name, adapter);
-	if (err)
-		goto err_out;
+	igc_set_interrupt_capability(adapter, msix);
 
-	for (i = 0; i < adapter->num_q_vectors; i++) {
-		struct igc_q_vector *q_vector = adapter->q_vector[i];
+	err = igc_alloc_q_vectors(adapter);
+	if (err) {
+		dev_err(&pdev->dev, "Unable to allocate memory for vectors\n");
+		goto err_alloc_q_vectors;
+	}
 
-		vector++;
-
-		q_vector->itr_register = adapter->io_addr + IGC_EITR(vector);
-
-		if (q_vector->rx.ring && q_vector->tx.ring)
-			sprintf(q_vector->name, "%s-TxRx-%u", netdev->name,
-				q_vector->rx.ring->queue_index);
-		else if (q_vector->tx.ring)
-			sprintf(q_vector->name, "%s-tx-%u", netdev->name,
-				q_vector->tx.ring->queue_index);
-		else if (q_vector->rx.ring)
-			sprintf(q_vector->name, "%s-rx-%u", netdev->name,
-				q_vector->rx.ring->queue_index);
-		else
-			sprintf(q_vector->name, "%s-unused", netdev->name);
-
-		err = request_irq(adapter->msix_entries[vector].vector,
-				  igc_msix_ring, 0, q_vector->name,
-				  q_vector);
-		if (err)
-			goto err_free;
-	}
+	igc_cache_ring_register(adapter);
 
-	igc_configure_msix(adapter);
 	return 0;
 
-err_free:
-	/* free already assigned IRQs */
-	free_irq(adapter->msix_entries[free_vector++].vector, adapter);
-
-	vector--;
-	for (i = 0; i < vector; i++) {
-		free_irq(adapter->msix_entries[free_vector++].vector,
-			 adapter->q_vector[i]);
-	}
-err_out:
+err_alloc_q_vectors:
+	igc_reset_interrupt_capability(adapter);
 	return err;
 }
 
 /**
- * igc_reset_q_vector - Reset config for interrupt vector
+ * igc_sw_init - Initialize general software structures (struct igc_adapter)
  * @adapter: board private structure to initialize
- * @v_idx: Index of vector to be reset
  *
- * If NAPI is enabled it will delete any references to the
- * NAPI struct. This is preparation for igc_free_q_vector.
+ * igc_sw_init initializes the Adapter private data structure.
+ * Fields are initialized based on PCI device information and
+ * OS network device settings (MTU size).
  */
-static void igc_reset_q_vector(struct igc_adapter *adapter, int v_idx)
+static int igc_sw_init(struct igc_adapter *adapter)
 {
-	struct igc_q_vector *q_vector = adapter->q_vector[v_idx];
-
-	/* if we're coming from igc_set_interrupt_capability, the vectors are
-	 * not yet allocated
-	 */
-	if (!q_vector)
-		return;
-
-	if (q_vector->tx.ring)
-		adapter->tx_ring[q_vector->tx.ring->queue_index] = NULL;
+	struct net_device *netdev = adapter->netdev;
+	struct pci_dev *pdev = adapter->pdev;
+	struct igc_hw *hw = &adapter->hw;
 
-	if (q_vector->rx.ring)
-		adapter->rx_ring[q_vector->rx.ring->queue_index] = NULL;
+	int size = sizeof(struct igc_mac_addr) * hw->mac.rar_entry_count;
 
-	netif_napi_del(&q_vector->napi);
-}
+	pci_read_config_word(pdev, PCI_COMMAND, &hw->bus.pci_cmd_word);
 
-static void igc_reset_interrupt_capability(struct igc_adapter *adapter)
-{
-	int v_idx = adapter->num_q_vectors;
+	/* set default ring sizes */
+	adapter->tx_ring_count = IGC_DEFAULT_TXD;
+	adapter->rx_ring_count = IGC_DEFAULT_RXD;
 
-	if (adapter->msix_entries) {
-		pci_disable_msix(adapter->pdev);
-		kfree(adapter->msix_entries);
-		adapter->msix_entries = NULL;
-	} else if (adapter->flags & IGC_FLAG_HAS_MSI) {
-		pci_disable_msi(adapter->pdev);
-	}
+	/* set default ITR values */
+	adapter->rx_itr_setting = IGC_DEFAULT_ITR;
+	adapter->tx_itr_setting = IGC_DEFAULT_ITR;
 
-	while (v_idx--)
-		igc_reset_q_vector(adapter, v_idx);
-}
+	/* set default work limits */
+	adapter->tx_work_limit = IGC_DEFAULT_TX_WORK;
 
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
+	/* adjust max frame to be at least the size of a standard frame */
+	adapter->max_frame_size = netdev->mtu + ETH_HLEN + ETH_FCS_LEN +
+				VLAN_HLEN;
+	adapter->min_frame_size = ETH_ZLEN + ETH_FCS_LEN;
 
-	if (!msix)
-		goto msi_only;
+	spin_lock_init(&adapter->nfc_lock);
+	spin_lock_init(&adapter->stats64_lock);
+	/* Assume MSI-X interrupts, will be checked during IRQ allocation */
 	adapter->flags |= IGC_FLAG_HAS_MSIX;
 
-	/* Number of supported queues. */
-	adapter->num_rx_queues = adapter->rss_queues;
+	adapter->mac_table = kzalloc(size, GFP_ATOMIC);
+	if (!adapter->mac_table)
+		return -ENOMEM;
 
-	adapter->num_tx_queues = adapter->rss_queues;
+	igc_init_queue_configuration(adapter);
 
-	/* start with one vector for every Rx queue */
-	numvecs = adapter->num_rx_queues;
+	/* This call may decrease the number of queues */
+	if (igc_init_interrupt_scheme(adapter, true)) {
+		dev_err(&pdev->dev, "Unable to allocate memory for queues\n");
+		return -ENOMEM;
+	}
 
-	/* if Tx handler is separate add 1 for every Tx queue */
-	if (!(adapter->flags & IGC_FLAG_QUEUE_PAIRS))
-		numvecs += adapter->num_tx_queues;
+	/* Explicitly disable IRQ since the NIC can be in any state. */
+	igc_irq_disable(adapter);
 
-	/* store the number of vectors reserved for queues */
-	adapter->num_q_vectors = numvecs;
+	set_bit(__IGC_DOWN, &adapter->state);
 
-	/* add 1 vector for link status interrupts */
-	numvecs++;
+	return 0;
+}
 
-	adapter->msix_entries = kcalloc(numvecs, sizeof(struct msix_entry),
-					GFP_KERNEL);
+/**
+ * igc_up - Open the interface and prepare it to handle traffic
+ * @adapter: board private structure
+ */
+void igc_up(struct igc_adapter *adapter)
+{
+	struct igc_hw *hw = &adapter->hw;
+	int i = 0;
 
-	if (!adapter->msix_entries)
-		return;
+	/* hardware has been reset, we need to reload some things */
+	igc_configure(adapter);
 
-	/* populate entry values */
-	for (i = 0; i < numvecs; i++)
-		adapter->msix_entries[i].entry = i;
+	clear_bit(__IGC_DOWN, &adapter->state);
 
-	err = pci_enable_msix_range(adapter->pdev,
-				    adapter->msix_entries,
-				    numvecs,
-				    numvecs);
-	if (err > 0)
-		return;
+	for (i = 0; i < adapter->num_q_vectors; i++)
+		napi_enable(&adapter->q_vector[i]->napi);
 
-	kfree(adapter->msix_entries);
-	adapter->msix_entries = NULL;
+	if (adapter->msix_entries)
+		igc_configure_msix(adapter);
+	else
+		igc_assign_vector(adapter->q_vector[0], 0);
 
-	igc_reset_interrupt_capability(adapter);
+	/* Clear any pending interrupts. */
+	rd32(IGC_ICR);
+	igc_irq_enable(adapter);
 
-msi_only:
-	adapter->flags &= ~IGC_FLAG_HAS_MSIX;
+	netif_tx_start_all_queues(adapter->netdev);
 
-	adapter->rss_queues = 1;
-	adapter->flags |= IGC_FLAG_QUEUE_PAIRS;
-	adapter->num_rx_queues = 1;
-	adapter->num_tx_queues = 1;
-	adapter->num_q_vectors = 1;
-	if (!pci_enable_msi(adapter->pdev))
-		adapter->flags |= IGC_FLAG_HAS_MSI;
+	/* start the watchdog. */
+	hw->mac.get_link_status = 1;
+	schedule_work(&adapter->watchdog_task);
 }
 
 /**
- * igc_free_q_vector - Free memory allocated for specific interrupt vector
- * @adapter: board private structure to initialize
- * @v_idx: Index of vector to be freed
- *
- * This function frees the memory allocated to the q_vector.
+ * igc_update_stats - Update the board statistics counters
+ * @adapter: board private structure
  */
-static void igc_free_q_vector(struct igc_adapter *adapter, int v_idx)
+void igc_update_stats(struct igc_adapter *adapter)
 {
-	struct igc_q_vector *q_vector = adapter->q_vector[v_idx];
-
-	adapter->q_vector[v_idx] = NULL;
+	struct rtnl_link_stats64 *net_stats = &adapter->stats64;
+	struct pci_dev *pdev = adapter->pdev;
+	struct igc_hw *hw = &adapter->hw;
+	u64 _bytes, _packets;
+	u64 bytes, packets;
+	unsigned int start;
+	u32 mpc;
+	int i;
 
-	/* igc_get_stats64() might access the rings on this vector,
-	 * we must wait a grace period before freeing it.
+	/* Prevent stats update while adapter is being reset, or if the pci
+	 * connection is down.
 	 */
-	if (q_vector)
-		kfree_rcu(q_vector, rcu);
-}
+	if (adapter->link_speed == 0)
+		return;
+	if (pci_channel_offline(pdev))
+		return;
 
-/**
- * igc_free_q_vectors - Free memory allocated for interrupt vectors
- * @adapter: board private structure to initialize
- *
- * This function frees the memory allocated to the q_vectors.  In addition if
- * NAPI is enabled it will delete any references to the NAPI struct prior
- * to freeing the q_vector.
- */
-static void igc_free_q_vectors(struct igc_adapter *adapter)
-{
-	int v_idx = adapter->num_q_vectors;
+	packets = 0;
+	bytes = 0;
 
-	adapter->num_tx_queues = 0;
-	adapter->num_rx_queues = 0;
-	adapter->num_q_vectors = 0;
+	rcu_read_lock();
+	for (i = 0; i < adapter->num_rx_queues; i++) {
+		struct igc_ring *ring = adapter->rx_ring[i];
+		u32 rqdpc = rd32(IGC_RQDPC(i));
 
-	while (v_idx--) {
-		igc_reset_q_vector(adapter, v_idx);
-		igc_free_q_vector(adapter, v_idx);
-	}
-}
+		if (hw->mac.type >= igc_i225)
+			wr32(IGC_RQDPC(i), 0);
 
-/**
- * igc_clear_interrupt_scheme - reset the device to a state of no interrupts
- * @adapter: Pointer to adapter structure
- *
- * This function resets the device so that it has 0 rx queues, tx queues, and
- * MSI-X interrupts allocated.
- */
-static void igc_clear_interrupt_scheme(struct igc_adapter *adapter)
-{
-	igc_free_q_vectors(adapter);
-	igc_reset_interrupt_capability(adapter);
-}
+		if (rqdpc) {
+			ring->rx_stats.drops += rqdpc;
+			net_stats->rx_fifo_errors += rqdpc;
+		}
 
-/* Need to wait a few seconds after link up to get diagnostic information from
- * the phy
- */
-static void igc_update_phy_info(struct timer_list *t)
+		do {
+			start = u64_stats_fetch_begin_irq(&ring->rx_syncp);
+			_bytes = ring->rx_stats.bytes;
+			_packets = ring->rx_stats.packets;
+		} while (u64_stats_fetch_retry_irq(&ring->rx_syncp, start));
+		bytes += _bytes;
+		packets += _packets;
+	}
+
+	net_stats->rx_bytes = bytes;
+	net_stats->rx_packets = packets;
+
+	packets = 0;
+	bytes = 0;
+	for (i = 0; i < adapter->num_tx_queues; i++) {
+		struct igc_ring *ring = adapter->tx_ring[i];
+
+		do {
+			start = u64_stats_fetch_begin_irq(&ring->tx_syncp);
+			_bytes = ring->tx_stats.bytes;
+			_packets = ring->tx_stats.packets;
+		} while (u64_stats_fetch_retry_irq(&ring->tx_syncp, start));
+		bytes += _bytes;
+		packets += _packets;
+	}
+	net_stats->tx_bytes = bytes;
+	net_stats->tx_packets = packets;
+	rcu_read_unlock();
+
+	/* read stats registers */
+	adapter->stats.crcerrs += rd32(IGC_CRCERRS);
+	adapter->stats.gprc += rd32(IGC_GPRC);
+	adapter->stats.gorc += rd32(IGC_GORCL);
+	rd32(IGC_GORCH); /* clear GORCL */
+	adapter->stats.bprc += rd32(IGC_BPRC);
+	adapter->stats.mprc += rd32(IGC_MPRC);
+	adapter->stats.roc += rd32(IGC_ROC);
+
+	adapter->stats.prc64 += rd32(IGC_PRC64);
+	adapter->stats.prc127 += rd32(IGC_PRC127);
+	adapter->stats.prc255 += rd32(IGC_PRC255);
+	adapter->stats.prc511 += rd32(IGC_PRC511);
+	adapter->stats.prc1023 += rd32(IGC_PRC1023);
+	adapter->stats.prc1522 += rd32(IGC_PRC1522);
+	adapter->stats.symerrs += rd32(IGC_SYMERRS);
+	adapter->stats.sec += rd32(IGC_SEC);
+
+	mpc = rd32(IGC_MPC);
+	adapter->stats.mpc += mpc;
+	net_stats->rx_fifo_errors += mpc;
+	adapter->stats.scc += rd32(IGC_SCC);
+	adapter->stats.ecol += rd32(IGC_ECOL);
+	adapter->stats.mcc += rd32(IGC_MCC);
+	adapter->stats.latecol += rd32(IGC_LATECOL);
+	adapter->stats.dc += rd32(IGC_DC);
+	adapter->stats.rlec += rd32(IGC_RLEC);
+	adapter->stats.xonrxc += rd32(IGC_XONRXC);
+	adapter->stats.xontxc += rd32(IGC_XONTXC);
+	adapter->stats.xoffrxc += rd32(IGC_XOFFRXC);
+	adapter->stats.xofftxc += rd32(IGC_XOFFTXC);
+	adapter->stats.fcruc += rd32(IGC_FCRUC);
+	adapter->stats.gptc += rd32(IGC_GPTC);
+	adapter->stats.gotc += rd32(IGC_GOTCL);
+	rd32(IGC_GOTCH); /* clear GOTCL */
+	adapter->stats.rnbc += rd32(IGC_RNBC);
+	adapter->stats.ruc += rd32(IGC_RUC);
+	adapter->stats.rfc += rd32(IGC_RFC);
+	adapter->stats.rjc += rd32(IGC_RJC);
+	adapter->stats.tor += rd32(IGC_TORH);
+	adapter->stats.tot += rd32(IGC_TOTH);
+	adapter->stats.tpr += rd32(IGC_TPR);
+
+	adapter->stats.ptc64 += rd32(IGC_PTC64);
+	adapter->stats.ptc127 += rd32(IGC_PTC127);
+	adapter->stats.ptc255 += rd32(IGC_PTC255);
+	adapter->stats.ptc511 += rd32(IGC_PTC511);
+	adapter->stats.ptc1023 += rd32(IGC_PTC1023);
+	adapter->stats.ptc1522 += rd32(IGC_PTC1522);
+
+	adapter->stats.mptc += rd32(IGC_MPTC);
+	adapter->stats.bptc += rd32(IGC_BPTC);
+
+	adapter->stats.tpt += rd32(IGC_TPT);
+	adapter->stats.colc += rd32(IGC_COLC);
+
+	adapter->stats.algnerrc += rd32(IGC_ALGNERRC);
+
+	adapter->stats.tsctc += rd32(IGC_TSCTC);
+	adapter->stats.tsctfc += rd32(IGC_TSCTFC);
+
+	adapter->stats.iac += rd32(IGC_IAC);
+	adapter->stats.icrxoc += rd32(IGC_ICRXOC);
+	adapter->stats.icrxptc += rd32(IGC_ICRXPTC);
+	adapter->stats.icrxatc += rd32(IGC_ICRXATC);
+	adapter->stats.ictxptc += rd32(IGC_ICTXPTC);
+	adapter->stats.ictxatc += rd32(IGC_ICTXATC);
+	adapter->stats.ictxqec += rd32(IGC_ICTXQEC);
+	adapter->stats.ictxqmtc += rd32(IGC_ICTXQMTC);
+	adapter->stats.icrxdmtc += rd32(IGC_ICRXDMTC);
+
+	/* Fill out the OS statistics structure */
+	net_stats->multicast = adapter->stats.mprc;
+	net_stats->collisions = adapter->stats.colc;
+
+	/* Rx Errors */
+
+	/* RLEC on some newer hardware can be incorrect so build
+	 * our own version based on RUC and ROC
+	 */
+	net_stats->rx_errors = adapter->stats.rxerrc +
+		adapter->stats.crcerrs + adapter->stats.algnerrc +
+		adapter->stats.ruc + adapter->stats.roc +
+		adapter->stats.cexterr;
+	net_stats->rx_length_errors = adapter->stats.ruc +
+				      adapter->stats.roc;
+	net_stats->rx_crc_errors = adapter->stats.crcerrs;
+	net_stats->rx_frame_errors = adapter->stats.algnerrc;
+	net_stats->rx_missed_errors = adapter->stats.mpc;
+
+	/* Tx Errors */
+	net_stats->tx_errors = adapter->stats.ecol +
+			       adapter->stats.latecol;
+	net_stats->tx_aborted_errors = adapter->stats.ecol;
+	net_stats->tx_window_errors = adapter->stats.latecol;
+	net_stats->tx_carrier_errors = adapter->stats.tncrs;
+
+	/* Tx Dropped needs to be maintained elsewhere */
+
+	/* Management Stats */
+	adapter->stats.mgptc += rd32(IGC_MGTPTC);
+	adapter->stats.mgprc += rd32(IGC_MGTPRC);
+	adapter->stats.mgpdc += rd32(IGC_MGTPDC);
+}
+
+static void igc_nfc_filter_exit(struct igc_adapter *adapter)
 {
-	struct igc_adapter *adapter = from_timer(adapter, t, phy_info_timer);
+	struct igc_nfc_filter *rule;
 
-	igc_get_phy_info(&adapter->hw);
+	spin_lock(&adapter->nfc_lock);
+
+	hlist_for_each_entry(rule, &adapter->nfc_filter_list, nfc_node)
+		igc_erase_filter(adapter, rule);
+
+	hlist_for_each_entry(rule, &adapter->cls_flower_list, nfc_node)
+		igc_erase_filter(adapter, rule);
+
+	spin_unlock(&adapter->nfc_lock);
 }
 
 /**
- * igc_has_link - check shared code for link and determine up/down
- * @adapter: pointer to driver private info
+ * igc_down - Close the interface
+ * @adapter: board private structure
  */
-bool igc_has_link(struct igc_adapter *adapter)
+void igc_down(struct igc_adapter *adapter)
 {
+	struct net_device *netdev = adapter->netdev;
 	struct igc_hw *hw = &adapter->hw;
-	bool link_active = false;
+	u32 tctl, rctl;
+	int i = 0;
 
-	/* get_link_status is set on LSC (link status) interrupt or
-	 * rx sequence error interrupt.  get_link_status will stay
-	 * false until the igc_check_for_link establishes link
-	 * for copper adapters ONLY
-	 */
-	switch (hw->phy.media_type) {
-	case igc_media_type_copper:
-		if (!hw->mac.get_link_status)
-			return true;
-		hw->mac.ops.check_for_link(hw);
-		link_active = !hw->mac.get_link_status;
-		break;
-	default:
-	case igc_media_type_unknown:
-		break;
-	}
+	set_bit(__IGC_DOWN, &adapter->state);
 
-	if (hw->mac.type == igc_i225 &&
-	    hw->phy.id == I225_I_PHY_ID) {
-		if (!netif_carrier_ok(adapter->netdev)) {
-			adapter->flags &= ~IGC_FLAG_NEED_LINK_UPDATE;
-		} else if (!(adapter->flags & IGC_FLAG_NEED_LINK_UPDATE)) {
-			adapter->flags |= IGC_FLAG_NEED_LINK_UPDATE;
-			adapter->link_check_timeout = jiffies;
+	/* disable receives in the hardware */
+	rctl = rd32(IGC_RCTL);
+	wr32(IGC_RCTL, rctl & ~IGC_RCTL_EN);
+	/* flush and sleep below */
+
+	igc_nfc_filter_exit(adapter);
+
+	/* set trans_start so we don't get spurious watchdogs during reset */
+	netif_trans_update(netdev);
+
+	netif_carrier_off(netdev);
+	netif_tx_stop_all_queues(netdev);
+
+	/* disable transmits in the hardware */
+	tctl = rd32(IGC_TCTL);
+	tctl &= ~IGC_TCTL_EN;
+	wr32(IGC_TCTL, tctl);
+	/* flush both disables and wait for them to finish */
+	wrfl();
+	usleep_range(10000, 20000);
+
+	igc_irq_disable(adapter);
+
+	adapter->flags &= ~IGC_FLAG_NEED_LINK_UPDATE;
+
+	for (i = 0; i < adapter->num_q_vectors; i++) {
+		if (adapter->q_vector[i]) {
+			napi_synchronize(&adapter->q_vector[i]->napi);
+			napi_disable(&adapter->q_vector[i]->napi);
 		}
 	}
 
-	return link_active;
+	del_timer_sync(&adapter->watchdog_timer);
+	del_timer_sync(&adapter->phy_info_timer);
+
+	/* record the stats before reset*/
+	spin_lock(&adapter->stats64_lock);
+	igc_update_stats(adapter);
+	spin_unlock(&adapter->stats64_lock);
+
+	adapter->link_speed = 0;
+	adapter->link_duplex = 0;
+
+	if (!pci_channel_offline(adapter->pdev))
+		igc_reset(adapter);
+
+	/* clear VLAN promisc flag so VFTA will be updated if necessary */
+	adapter->flags &= ~IGC_FLAG_VLAN_PROMISC;
+
+	igc_clean_all_tx_rings(adapter);
+	igc_clean_all_rx_rings(adapter);
 }
 
-/**
- * igc_watchdog - Timer Call-back
- * @t: timer for the watchdog
- */
-static void igc_watchdog(struct timer_list *t)
+void igc_reinit_locked(struct igc_adapter *adapter)
 {
-	struct igc_adapter *adapter = from_timer(adapter, t, watchdog_timer);
-	/* Do the rest outside of interrupt context */
-	schedule_work(&adapter->watchdog_task);
+	WARN_ON(in_interrupt());
+	while (test_and_set_bit(__IGC_RESETTING, &adapter->state))
+		usleep_range(1000, 2000);
+	igc_down(adapter);
+	igc_up(adapter);
+	clear_bit(__IGC_RESETTING, &adapter->state);
 }
 
-static void igc_watchdog_task(struct work_struct *work)
+static void igc_reset_task(struct work_struct *work)
 {
-	struct igc_adapter *adapter = container_of(work,
-						   struct igc_adapter,
-						   watchdog_task);
-	struct net_device *netdev = adapter->netdev;
-	struct igc_hw *hw = &adapter->hw;
-	struct igc_phy_info *phy = &hw->phy;
-	u16 phy_data, retry_count = 20;
-	u32 connsw;
-	u32 link;
-	int i;
+	struct igc_adapter *adapter;
 
-	link = igc_has_link(adapter);
+	adapter = container_of(work, struct igc_adapter, reset_task);
 
-	if (adapter->flags & IGC_FLAG_NEED_LINK_UPDATE) {
-		if (time_after(jiffies, (adapter->link_check_timeout + HZ)))
-			adapter->flags &= ~IGC_FLAG_NEED_LINK_UPDATE;
-		else
-			link = false;
-	}
+	netdev_err(adapter->netdev, "Reset adapter\n");
+	igc_reinit_locked(adapter);
+}
 
-	/* Force link down if we have fiber to swap to */
-	if (adapter->flags & IGC_FLAG_MAS_ENABLE) {
-		if (hw->phy.media_type == igc_media_type_copper) {
-			connsw = rd32(IGC_CONNSW);
-			if (!(connsw & IGC_CONNSW_AUTOSENSE_EN))
-				link = 0;
-		}
-	}
-	if (link) {
-		if (!netif_carrier_ok(netdev)) {
-			u32 ctrl;
+/**
+ * igc_change_mtu - Change the Maximum Transfer Unit
+ * @netdev: network interface device structure
+ * @new_mtu: new value for maximum frame size
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int igc_change_mtu(struct net_device *netdev, int new_mtu)
+{
+	int max_frame = new_mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
+	struct igc_adapter *adapter = netdev_priv(netdev);
 
-			hw->mac.ops.get_speed_and_duplex(hw,
-							 &adapter->link_speed,
-							 &adapter->link_duplex);
+	/* adjust max frame to be at least the size of a standard frame */
+	if (max_frame < (ETH_FRAME_LEN + ETH_FCS_LEN))
+		max_frame = ETH_FRAME_LEN + ETH_FCS_LEN;
 
-			ctrl = rd32(IGC_CTRL);
-			/* Link status message must follow this format */
-			netdev_info(netdev,
-				    "igc: %s NIC Link is Up %d Mbps %s Duplex, Flow Control: %s\n",
-				    netdev->name,
-				    adapter->link_speed,
-				    adapter->link_duplex == FULL_DUPLEX ?
-				    "Full" : "Half",
-				    (ctrl & IGC_CTRL_TFCE) &&
-				    (ctrl & IGC_CTRL_RFCE) ? "RX/TX" :
-				    (ctrl & IGC_CTRL_RFCE) ?  "RX" :
-				    (ctrl & IGC_CTRL_TFCE) ?  "TX" : "None");
+	while (test_and_set_bit(__IGC_RESETTING, &adapter->state))
+		usleep_range(1000, 2000);
 
-			/* check if SmartSpeed worked */
-			igc_check_downshift(hw);
-			if (phy->speed_downgraded)
-				netdev_warn(netdev, "Link Speed was downgraded by SmartSpeed\n");
+	/* igc_down has a dependency on max_frame_size */
+	adapter->max_frame_size = max_frame;
 
-			/* adjust timeout factor according to speed/duplex */
-			adapter->tx_timeout_factor = 1;
-			switch (adapter->link_speed) {
-			case SPEED_10:
-				adapter->tx_timeout_factor = 14;
-				break;
-			case SPEED_100:
-				/* maybe add some timeout factor ? */
-				break;
-			}
+	if (netif_running(netdev))
+		igc_down(adapter);
 
-			if (adapter->link_speed != SPEED_1000)
-				goto no_wait;
+	netdev_dbg(netdev, "changing MTU from %d to %d\n",
+		   netdev->mtu, new_mtu);
+	netdev->mtu = new_mtu;
 
-			/* wait for Remote receiver status OK */
-retry_read_status:
-			if (!igc_read_phy_reg(hw, PHY_1000T_STATUS,
-					      &phy_data)) {
-				if (!(phy_data & SR_1000T_REMOTE_RX_STATUS) &&
-				    retry_count) {
-					msleep(100);
-					retry_count--;
-					goto retry_read_status;
-				} else if (!retry_count) {
-					dev_err(&adapter->pdev->dev, "exceed max 2 second\n");
-				}
-			} else {
-				dev_err(&adapter->pdev->dev, "read 1000Base-T Status Reg\n");
-			}
-no_wait:
-			netif_carrier_on(netdev);
+	if (netif_running(netdev))
+		igc_up(adapter);
+	else
+		igc_reset(adapter);
 
-			/* link state has changed, schedule phy info update */
-			if (!test_bit(__IGC_DOWN, &adapter->state))
-				mod_timer(&adapter->phy_info_timer,
-					  round_jiffies(jiffies + 2 * HZ));
-		}
-	} else {
-		if (netif_carrier_ok(netdev)) {
-			adapter->link_speed = 0;
-			adapter->link_duplex = 0;
+	clear_bit(__IGC_RESETTING, &adapter->state);
 
-			/* Links status message must follow this format */
-			netdev_info(netdev, "igc: %s NIC Link is Down\n",
-				    netdev->name);
-			netif_carrier_off(netdev);
+	return 0;
+}
 
-			/* link state has changed, schedule phy info update */
-			if (!test_bit(__IGC_DOWN, &adapter->state))
-				mod_timer(&adapter->phy_info_timer,
-					  round_jiffies(jiffies + 2 * HZ));
+/**
+ * igc_get_stats - Get System Network Statistics
+ * @netdev: network interface device structure
+ *
+ * Returns the address of the device statistics structure.
+ * The statistics are updated here and also from the timer callback.
+ */
+static struct net_device_stats *igc_get_stats(struct net_device *netdev)
+{
+	struct igc_adapter *adapter = netdev_priv(netdev);
 
-			/* link is down, time to check for alternate media */
-			if (adapter->flags & IGC_FLAG_MAS_ENABLE) {
-				if (adapter->flags & IGC_FLAG_MEDIA_RESET) {
-					schedule_work(&adapter->reset_task);
-					/* return immediately */
-					return;
-				}
-			}
+	if (!test_bit(__IGC_RESETTING, &adapter->state))
+		igc_update_stats(adapter);
 
-		/* also check for alternate media here */
-		} else if (!netif_carrier_ok(netdev) &&
-			   (adapter->flags & IGC_FLAG_MAS_ENABLE)) {
-			if (adapter->flags & IGC_FLAG_MEDIA_RESET) {
-				schedule_work(&adapter->reset_task);
-				/* return immediately */
-				return;
-			}
-		}
-	}
+	/* only return the current stats */
+	return &netdev->stats;
+}
+
+static netdev_features_t igc_fix_features(struct net_device *netdev,
+					  netdev_features_t features)
+{
+	/* Since there is no support for separate Rx/Tx vlan accel
+	 * enable/disable make sure Tx flag is always in same state as Rx.
+	 */
+	if (features & NETIF_F_HW_VLAN_CTAG_RX)
+		features |= NETIF_F_HW_VLAN_CTAG_TX;
+	else
+		features &= ~NETIF_F_HW_VLAN_CTAG_TX;
+
+	return features;
+}
+
+static int igc_set_features(struct net_device *netdev,
+			    netdev_features_t features)
+{
+	netdev_features_t changed = netdev->features ^ features;
+	struct igc_adapter *adapter = netdev_priv(netdev);
 
-	spin_lock(&adapter->stats64_lock);
-	igc_update_stats(adapter);
-	spin_unlock(&adapter->stats64_lock);
+	/* Add VLAN support */
+	if (!(changed & (NETIF_F_RXALL | NETIF_F_NTUPLE)))
+		return 0;
 
-	for (i = 0; i < adapter->num_tx_queues; i++) {
-		struct igc_ring *tx_ring = adapter->tx_ring[i];
+	if (!(features & NETIF_F_NTUPLE)) {
+		struct hlist_node *node2;
+		struct igc_nfc_filter *rule;
 
-		if (!netif_carrier_ok(netdev)) {
-			/* We've lost link, so the controller stops DMA,
-			 * but we've got queued Tx work that's never going
-			 * to get done, so reset controller to flush Tx.
-			 * (Do the reset outside of interrupt context).
-			 */
-			if (igc_desc_unused(tx_ring) + 1 < tx_ring->count) {
-				adapter->tx_timeout_count++;
-				schedule_work(&adapter->reset_task);
-				/* return immediately since reset is imminent */
-				return;
-			}
+		spin_lock(&adapter->nfc_lock);
+		hlist_for_each_entry_safe(rule, node2,
+					  &adapter->nfc_filter_list, nfc_node) {
+			igc_erase_filter(adapter, rule);
+			hlist_del(&rule->nfc_node);
+			kfree(rule);
 		}
-
-		/* Force detection of hung controller every watchdog period */
-		set_bit(IGC_RING_FLAG_TX_DETECT_HANG, &tx_ring->flags);
+		spin_unlock(&adapter->nfc_lock);
+		adapter->nfc_filter_count = 0;
 	}
 
-	/* Cause software interrupt to ensure Rx ring is cleaned */
-	if (adapter->flags & IGC_FLAG_HAS_MSIX) {
-		u32 eics = 0;
+	netdev->features = features;
 
-		for (i = 0; i < adapter->num_q_vectors; i++)
-			eics |= adapter->q_vector[i]->eims_value;
-		wr32(IGC_EICS, eics);
-	} else {
-		wr32(IGC_ICS, IGC_ICS_RXDMT0);
-	}
+	if (netif_running(netdev))
+		igc_reinit_locked(adapter);
+	else
+		igc_reset(adapter);
 
-	/* Reset the timer */
-	if (!test_bit(__IGC_DOWN, &adapter->state)) {
-		if (adapter->flags & IGC_FLAG_NEED_LINK_UPDATE)
-			mod_timer(&adapter->watchdog_timer,
-				  round_jiffies(jiffies +  HZ));
-		else
-			mod_timer(&adapter->watchdog_timer,
-				  round_jiffies(jiffies + 2 * HZ));
-	}
+	return 1;
 }
 
-/**
- * igc_update_ring_itr - update the dynamic ITR value based on packet size
- * @q_vector: pointer to q_vector
- *
- * Stores a new ITR value based on strictly on packet size.  This
- * algorithm is less sophisticated than that used in igc_update_itr,
- * due to the difficulty of synchronizing statistics across multiple
- * receive rings.  The divisors and thresholds used by this function
- * were determined based on theoretical maximum wire speed and testing
- * data, in order to minimize response time while increasing bulk
- * throughput.
- * NOTE: This function is called only when operating in a multiqueue
- * receive environment.
- */
-static void igc_update_ring_itr(struct igc_q_vector *q_vector)
+static netdev_features_t
+igc_features_check(struct sk_buff *skb, struct net_device *dev,
+		   netdev_features_t features)
 {
-	struct igc_adapter *adapter = q_vector->adapter;
-	int new_val = q_vector->itr_val;
-	int avg_wire_size = 0;
-	unsigned int packets;
+	unsigned int network_hdr_len, mac_hdr_len;
 
-	/* For non-gigabit speeds, just fix the interrupt rate at 4000
-	 * ints/sec - ITR timer value of 120 ticks.
-	 */
-	switch (adapter->link_speed) {
-	case SPEED_10:
-	case SPEED_100:
-		new_val = IGC_4K_ITR;
-		goto set_itr_val;
-	default:
-		break;
-	}
+	/* Make certain the headers can be described by a context descriptor */
+	mac_hdr_len = skb_network_header(skb) - skb->data;
+	if (unlikely(mac_hdr_len > IGC_MAX_MAC_HDR_LEN))
+		return features & ~(NETIF_F_HW_CSUM |
+				    NETIF_F_SCTP_CRC |
+				    NETIF_F_HW_VLAN_CTAG_TX |
+				    NETIF_F_TSO |
+				    NETIF_F_TSO6);
 
-	packets = q_vector->rx.total_packets;
-	if (packets)
-		avg_wire_size = q_vector->rx.total_bytes / packets;
+	network_hdr_len = skb_checksum_start(skb) - skb_network_header(skb);
+	if (unlikely(network_hdr_len >  IGC_MAX_NETWORK_HDR_LEN))
+		return features & ~(NETIF_F_HW_CSUM |
+				    NETIF_F_SCTP_CRC |
+				    NETIF_F_TSO |
+				    NETIF_F_TSO6);
 
-	packets = q_vector->tx.total_packets;
-	if (packets)
-		avg_wire_size = max_t(u32, avg_wire_size,
-				      q_vector->tx.total_bytes / packets);
+	/* We can only support IPv4 TSO in tunnels if we can mangle the
+	 * inner IP ID field, so strip TSO if MANGLEID is not supported.
+	 */
+	if (skb->encapsulation && !(features & NETIF_F_TSO_MANGLEID))
+		features &= ~NETIF_F_TSO;
 
-	/* if avg_wire_size isn't set no work was done */
-	if (!avg_wire_size)
-		goto clear_counts;
+	return features;
+}
 
-	/* Add 24 bytes to size to account for CRC, preamble, and gap */
-	avg_wire_size += 24;
+/* Add a MAC filter for 'addr' directing matching traffic to 'queue',
+ * 'flags' is used to indicate what kind of match is made, match is by
+ * default for the destination address, if matching by source address
+ * is desired the flag IGC_MAC_STATE_SRC_ADDR can be used.
+ */
+static int igc_add_mac_filter_flags(struct igc_adapter *adapter,
+				    const u8 *addr, const u8 queue,
+				    const u8 flags)
+{
+	struct igc_hw *hw = &adapter->hw;
+	int rar_entries = hw->mac.rar_entry_count;
+	int i;
 
-	/* Don't starve jumbo frames */
-	avg_wire_size = min(avg_wire_size, 3000);
+	if (is_zero_ether_addr(addr))
+		return -EINVAL;
 
-	/* Give a little boost to mid-size frames */
-	if (avg_wire_size > 300 && avg_wire_size < 1200)
-		new_val = avg_wire_size / 3;
-	else
-		new_val = avg_wire_size / 2;
+	/* Search for the first empty entry in the MAC table.
+	 * Do not touch entries at the end of the table reserved for the VF MAC
+	 * addresses.
+	 */
+	for (i = 0; i < rar_entries; i++) {
+		if (!igc_mac_entry_can_be_used(&adapter->mac_table[i],
+					       addr, flags))
+			continue;
 
-	/* conservative mode (itr 3) eliminates the lowest_latency setting */
-	if (new_val < IGC_20K_ITR &&
-	    ((q_vector->rx.ring && adapter->rx_itr_setting == 3) ||
-	    (!q_vector->rx.ring && adapter->tx_itr_setting == 3)))
-		new_val = IGC_20K_ITR;
+		ether_addr_copy(adapter->mac_table[i].addr, addr);
+		adapter->mac_table[i].queue = queue;
+		adapter->mac_table[i].state |= IGC_MAC_STATE_IN_USE | flags;
 
-set_itr_val:
-	if (new_val != q_vector->itr_val) {
-		q_vector->itr_val = new_val;
-		q_vector->set_itr = 1;
+		igc_rar_set_index(adapter, i);
+		return i;
 	}
-clear_counts:
-	q_vector->rx.total_bytes = 0;
-	q_vector->rx.total_packets = 0;
-	q_vector->tx.total_bytes = 0;
-	q_vector->tx.total_packets = 0;
+
+	return -ENOSPC;
 }
 
-/**
- * igc_update_itr - update the dynamic ITR value based on statistics
- * @q_vector: pointer to q_vector
- * @ring_container: ring info to update the itr for
- *
- * Stores a new ITR value based on packets and byte
- * counts during the last interrupt.  The advantage of per interrupt
- * computation is faster updates and more accurate ITR for the current
- * traffic pattern.  Constants in this function were computed
- * based on theoretical maximum wire speed and thresholds were set based
- * on testing data as well as attempting to minimize response time
- * while increasing bulk throughput.
- * NOTE: These calculations are only valid when operating in a single-
- * queue environment.
+int igc_add_mac_steering_filter(struct igc_adapter *adapter,
+				const u8 *addr, u8 queue, u8 flags)
+{
+	return igc_add_mac_filter_flags(adapter, addr, queue,
+					IGC_MAC_STATE_QUEUE_STEERING | flags);
+}
+
+/* Remove a MAC filter for 'addr' directing matching traffic to
+ * 'queue', 'flags' is used to indicate what kind of match need to be
+ * removed, match is by default for the destination address, if
+ * matching by source address is to be removed the flag
+ * IGC_MAC_STATE_SRC_ADDR can be used.
  */
-static void igc_update_itr(struct igc_q_vector *q_vector,
-			   struct igc_ring_container *ring_container)
+static int igc_del_mac_filter_flags(struct igc_adapter *adapter,
+				    const u8 *addr, const u8 queue,
+				    const u8 flags)
 {
-	unsigned int packets = ring_container->total_packets;
-	unsigned int bytes = ring_container->total_bytes;
-	u8 itrval = ring_container->itr;
+	struct igc_hw *hw = &adapter->hw;
+	int rar_entries = hw->mac.rar_entry_count;
+	int i;
 
-	/* no packets, exit with status unchanged */
-	if (packets == 0)
-		return;
+	if (is_zero_ether_addr(addr))
+		return -EINVAL;
 
-	switch (itrval) {
-	case lowest_latency:
-		/* handle TSO and jumbo frames */
-		if (bytes / packets > 8000)
-			itrval = bulk_latency;
-		else if ((packets < 5) && (bytes > 512))
-			itrval = low_latency;
-		break;
-	case low_latency:  /* 50 usec aka 20000 ints/s */
-		if (bytes > 10000) {
-			/* this if handles the TSO accounting */
-			if (bytes / packets > 8000)
-				itrval = bulk_latency;
-			else if ((packets < 10) || ((bytes / packets) > 1200))
-				itrval = bulk_latency;
-			else if ((packets > 35))
-				itrval = lowest_latency;
-		} else if (bytes / packets > 2000) {
-			itrval = bulk_latency;
-		} else if (packets <= 2 && bytes < 512) {
-			itrval = lowest_latency;
-		}
-		break;
-	case bulk_latency: /* 250 usec aka 4000 ints/s */
-		if (bytes > 25000) {
-			if (packets > 35)
-				itrval = low_latency;
-		} else if (bytes < 1500) {
-			itrval = low_latency;
+	/* Search for matching entry in the MAC table based on given address
+	 * and queue. Do not touch entries at the end of the table reserved
+	 * for the VF MAC addresses.
+	 */
+	for (i = 0; i < rar_entries; i++) {
+		if (!(adapter->mac_table[i].state & IGC_MAC_STATE_IN_USE))
+			continue;
+		if ((adapter->mac_table[i].state & flags) != flags)
+			continue;
+		if (adapter->mac_table[i].queue != queue)
+			continue;
+		if (!ether_addr_equal(adapter->mac_table[i].addr, addr))
+			continue;
+
+		/* When a filter for the default address is "deleted",
+		 * we return it to its initial configuration
+		 */
+		if (adapter->mac_table[i].state & IGC_MAC_STATE_DEFAULT) {
+			adapter->mac_table[i].state =
+				IGC_MAC_STATE_DEFAULT | IGC_MAC_STATE_IN_USE;
+		} else {
+			adapter->mac_table[i].state = 0;
+			adapter->mac_table[i].queue = 0;
+			memset(adapter->mac_table[i].addr, 0, ETH_ALEN);
 		}
-		break;
+
+		igc_rar_set_index(adapter, i);
+		return 0;
 	}
 
-	/* clear work counters since we have the values we need */
-	ring_container->total_bytes = 0;
-	ring_container->total_packets = 0;
+	return -ENOENT;
+}
 
-	/* write updated itr to ring container */
-	ring_container->itr = itrval;
+int igc_del_mac_steering_filter(struct igc_adapter *adapter,
+				const u8 *addr, u8 queue, u8 flags)
+{
+	return igc_del_mac_filter_flags(adapter, addr, queue,
+					IGC_MAC_STATE_QUEUE_STEERING | flags);
 }
 
 /**
- * igc_intr_msi - Interrupt Handler
+ * igc_msix_other - msix other interrupt handler
  * @irq: interrupt number
- * @data: pointer to a network interface device structure
+ * @data: pointer to a q_vector
  */
-static irqreturn_t igc_intr_msi(int irq, void *data)
+static irqreturn_t igc_msix_other(int irq, void *data)
 {
 	struct igc_adapter *adapter = data;
-	struct igc_q_vector *q_vector = adapter->q_vector[0];
 	struct igc_hw *hw = &adapter->hw;
-	/* read ICR disables interrupts using IAM */
 	u32 icr = rd32(IGC_ICR);
 
-	igc_write_itr(q_vector);
-
+	/* reading ICR causes bit 31 of EICR to be cleared */
 	if (icr & IGC_ICR_DRSTA)
 		schedule_work(&adapter->reset_task);
 
@@ -3586,408 +3655,428 @@ static irqreturn_t igc_intr_msi(int irq, void *data)
 		adapter->stats.doosync++;
 	}
 
-	if (icr & (IGC_ICR_RXSEQ | IGC_ICR_LSC)) {
+	if (icr & IGC_ICR_LSC) {
 		hw->mac.get_link_status = 1;
+		/* guard against interrupt when we're going down */
 		if (!test_bit(__IGC_DOWN, &adapter->state))
 			mod_timer(&adapter->watchdog_timer, jiffies + 1);
 	}
 
-	napi_schedule(&q_vector->napi);
+	wr32(IGC_EIMS, adapter->eims_other);
 
 	return IRQ_HANDLED;
 }
 
-/**
- * igc_intr - Legacy Interrupt Handler
- * @irq: interrupt number
- * @data: pointer to a network interface device structure
- */
-static irqreturn_t igc_intr(int irq, void *data)
+static void igc_write_itr(struct igc_q_vector *q_vector)
 {
-	struct igc_adapter *adapter = data;
-	struct igc_q_vector *q_vector = adapter->q_vector[0];
-	struct igc_hw *hw = &adapter->hw;
-	/* Interrupt Auto-Mask...upon reading ICR, interrupts are masked.  No
-	 * need for the IMC write
-	 */
-	u32 icr = rd32(IGC_ICR);
+	u32 itr_val = q_vector->itr_val & IGC_QVECTOR_MASK;
 
-	/* IMS will not auto-mask if INT_ASSERTED is not set, and if it is
-	 * not set, then the adapter didn't send an interrupt
-	 */
-	if (!(icr & IGC_ICR_INT_ASSERTED))
-		return IRQ_NONE;
+	if (!q_vector->set_itr)
+		return;
 
-	igc_write_itr(q_vector);
+	if (!itr_val)
+		itr_val = IGC_ITR_VAL_MASK;
 
-	if (icr & IGC_ICR_DRSTA)
-		schedule_work(&adapter->reset_task);
+	itr_val |= IGC_EITR_CNT_IGNR;
 
-	if (icr & IGC_ICR_DOUTSYNC) {
-		/* HW is reporting DMA is out of sync */
-		adapter->stats.doosync++;
-	}
+	writel(itr_val, q_vector->itr_register);
+	q_vector->set_itr = 0;
+}
 
-	if (icr & (IGC_ICR_RXSEQ | IGC_ICR_LSC)) {
-		hw->mac.get_link_status = 1;
-		/* guard against interrupt when we're going down */
-		if (!test_bit(__IGC_DOWN, &adapter->state))
-			mod_timer(&adapter->watchdog_timer, jiffies + 1);
-	}
+static irqreturn_t igc_msix_ring(int irq, void *data)
+{
+	struct igc_q_vector *q_vector = data;
+
+	/* Write the ITR value calculated from the previous interrupt. */
+	igc_write_itr(q_vector);
 
 	napi_schedule(&q_vector->napi);
 
 	return IRQ_HANDLED;
 }
 
-static void igc_set_itr(struct igc_q_vector *q_vector)
+/**
+ * igc_request_msix - Initialize MSI-X interrupts
+ * @adapter: Pointer to adapter structure
+ *
+ * igc_request_msix allocates MSI-X vectors and requests interrupts from the
+ * kernel.
+ */
+static int igc_request_msix(struct igc_adapter *adapter)
 {
-	struct igc_adapter *adapter = q_vector->adapter;
-	u32 new_itr = q_vector->itr_val;
-	u8 current_itr = 0;
+	int i = 0, err = 0, vector = 0, free_vector = 0;
+	struct net_device *netdev = adapter->netdev;
 
-	/* for non-gigabit speeds, just fix the interrupt rate at 4000 */
-	switch (adapter->link_speed) {
-	case SPEED_10:
-	case SPEED_100:
-		current_itr = 0;
-		new_itr = IGC_4K_ITR;
-		goto set_itr_now;
-	default:
-		break;
-	}
+	err = request_irq(adapter->msix_entries[vector].vector,
+			  &igc_msix_other, 0, netdev->name, adapter);
+	if (err)
+		goto err_out;
 
-	igc_update_itr(q_vector, &q_vector->tx);
-	igc_update_itr(q_vector, &q_vector->rx);
+	for (i = 0; i < adapter->num_q_vectors; i++) {
+		struct igc_q_vector *q_vector = adapter->q_vector[i];
 
-	current_itr = max(q_vector->rx.itr, q_vector->tx.itr);
+		vector++;
 
-	/* conservative mode (itr 3) eliminates the lowest_latency setting */
-	if (current_itr == lowest_latency &&
-	    ((q_vector->rx.ring && adapter->rx_itr_setting == 3) ||
-	    (!q_vector->rx.ring && adapter->tx_itr_setting == 3)))
-		current_itr = low_latency;
+		q_vector->itr_register = adapter->io_addr + IGC_EITR(vector);
 
-	switch (current_itr) {
-	/* counts and packets in update_itr are dependent on these numbers */
-	case lowest_latency:
-		new_itr = IGC_70K_ITR; /* 70,000 ints/sec */
-		break;
-	case low_latency:
-		new_itr = IGC_20K_ITR; /* 20,000 ints/sec */
-		break;
-	case bulk_latency:
-		new_itr = IGC_4K_ITR;  /* 4,000 ints/sec */
-		break;
-	default:
-		break;
-	}
+		if (q_vector->rx.ring && q_vector->tx.ring)
+			sprintf(q_vector->name, "%s-TxRx-%u", netdev->name,
+				q_vector->rx.ring->queue_index);
+		else if (q_vector->tx.ring)
+			sprintf(q_vector->name, "%s-tx-%u", netdev->name,
+				q_vector->tx.ring->queue_index);
+		else if (q_vector->rx.ring)
+			sprintf(q_vector->name, "%s-rx-%u", netdev->name,
+				q_vector->rx.ring->queue_index);
+		else
+			sprintf(q_vector->name, "%s-unused", netdev->name);
 
-set_itr_now:
-	if (new_itr != q_vector->itr_val) {
-		/* this attempts to bias the interrupt rate towards Bulk
-		 * by adding intermediate steps when interrupt rate is
-		 * increasing
-		 */
-		new_itr = new_itr > q_vector->itr_val ?
-			  max((new_itr * q_vector->itr_val) /
-			  (new_itr + (q_vector->itr_val >> 2)),
-			  new_itr) : new_itr;
-		/* Don't write the value here; it resets the adapter's
-		 * internal timer, and causes us to delay far longer than
-		 * we should between interrupts.  Instead, we write the ITR
-		 * value at the beginning of the next interrupt so the timing
-		 * ends up being correct.
-		 */
-		q_vector->itr_val = new_itr;
-		q_vector->set_itr = 1;
+		err = request_irq(adapter->msix_entries[vector].vector,
+				  igc_msix_ring, 0, q_vector->name,
+				  q_vector);
+		if (err)
+			goto err_free;
 	}
-}
 
-static void igc_ring_irq_enable(struct igc_q_vector *q_vector)
-{
-	struct igc_adapter *adapter = q_vector->adapter;
-	struct igc_hw *hw = &adapter->hw;
+	igc_configure_msix(adapter);
+	return 0;
 
-	if ((q_vector->rx.ring && (adapter->rx_itr_setting & 3)) ||
-	    (!q_vector->rx.ring && (adapter->tx_itr_setting & 3))) {
-		if (adapter->num_q_vectors == 1)
-			igc_set_itr(q_vector);
-		else
-			igc_update_ring_itr(q_vector);
-	}
+err_free:
+	/* free already assigned IRQs */
+	free_irq(adapter->msix_entries[free_vector++].vector, adapter);
 
-	if (!test_bit(__IGC_DOWN, &adapter->state)) {
-		if (adapter->msix_entries)
-			wr32(IGC_EIMS, q_vector->eims_value);
-		else
-			igc_irq_enable(adapter);
+	vector--;
+	for (i = 0; i < vector; i++) {
+		free_irq(adapter->msix_entries[free_vector++].vector,
+			 adapter->q_vector[i]);
 	}
+err_out:
+	return err;
 }
 
 /**
- * igc_poll - NAPI Rx polling callback
- * @napi: napi polling structure
- * @budget: count of how many packets we should handle
+ * igc_clear_interrupt_scheme - reset the device to a state of no interrupts
+ * @adapter: Pointer to adapter structure
+ *
+ * This function resets the device so that it has 0 rx queues, tx queues, and
+ * MSI-X interrupts allocated.
  */
-static int igc_poll(struct napi_struct *napi, int budget)
+static void igc_clear_interrupt_scheme(struct igc_adapter *adapter)
 {
-	struct igc_q_vector *q_vector = container_of(napi,
-						     struct igc_q_vector,
-						     napi);
-	bool clean_complete = true;
-	int work_done = 0;
-
-	if (q_vector->tx.ring)
-		clean_complete = igc_clean_tx_irq(q_vector, budget);
-
-	if (q_vector->rx.ring) {
-		int cleaned = igc_clean_rx_irq(q_vector, budget);
-
-		work_done += cleaned;
-		if (cleaned >= budget)
-			clean_complete = false;
-	}
-
-	/* If all work not completed, return budget and keep polling */
-	if (!clean_complete)
-		return budget;
+	igc_free_q_vectors(adapter);
+	igc_reset_interrupt_capability(adapter);
+}
 
-	/* Exit the polling mode, but don't re-enable interrupts if stack might
-	 * poll us due to busy-polling
-	 */
-	if (likely(napi_complete_done(napi, work_done)))
-		igc_ring_irq_enable(q_vector);
+/* Need to wait a few seconds after link up to get diagnostic information from
+ * the phy
+ */
+static void igc_update_phy_info(struct timer_list *t)
+{
+	struct igc_adapter *adapter = from_timer(adapter, t, phy_info_timer);
 
-	return min(work_done, budget - 1);
+	igc_get_phy_info(&adapter->hw);
 }
 
-static void igc_add_ring(struct igc_ring *ring,
-			 struct igc_ring_container *head)
+/**
+ * igc_has_link - check shared code for link and determine up/down
+ * @adapter: pointer to driver private info
+ */
+bool igc_has_link(struct igc_adapter *adapter)
 {
-	head->ring = ring;
-	head->count++;
+	struct igc_hw *hw = &adapter->hw;
+	bool link_active = false;
+
+	/* get_link_status is set on LSC (link status) interrupt or
+	 * rx sequence error interrupt.  get_link_status will stay
+	 * false until the igc_check_for_link establishes link
+	 * for copper adapters ONLY
+	 */
+	switch (hw->phy.media_type) {
+	case igc_media_type_copper:
+		if (!hw->mac.get_link_status)
+			return true;
+		hw->mac.ops.check_for_link(hw);
+		link_active = !hw->mac.get_link_status;
+		break;
+	default:
+	case igc_media_type_unknown:
+		break;
+	}
+
+	if (hw->mac.type == igc_i225 &&
+	    hw->phy.id == I225_I_PHY_ID) {
+		if (!netif_carrier_ok(adapter->netdev)) {
+			adapter->flags &= ~IGC_FLAG_NEED_LINK_UPDATE;
+		} else if (!(adapter->flags & IGC_FLAG_NEED_LINK_UPDATE)) {
+			adapter->flags |= IGC_FLAG_NEED_LINK_UPDATE;
+			adapter->link_check_timeout = jiffies;
+		}
+	}
+
+	return link_active;
 }
 
 /**
- * igc_alloc_q_vector - Allocate memory for a single interrupt vector
- * @adapter: board private structure to initialize
- * @v_count: q_vectors allocated on adapter, used for ring interleaving
- * @v_idx: index of vector in adapter struct
- * @txr_count: total number of Tx rings to allocate
- * @txr_idx: index of first Tx ring to allocate
- * @rxr_count: total number of Rx rings to allocate
- * @rxr_idx: index of first Rx ring to allocate
- *
- * We allocate one q_vector.  If allocation fails we return -ENOMEM.
+ * igc_watchdog - Timer Call-back
+ * @t: timer for the watchdog
  */
-static int igc_alloc_q_vector(struct igc_adapter *adapter,
-			      unsigned int v_count, unsigned int v_idx,
-			      unsigned int txr_count, unsigned int txr_idx,
-			      unsigned int rxr_count, unsigned int rxr_idx)
+static void igc_watchdog(struct timer_list *t)
 {
-	struct igc_q_vector *q_vector;
-	struct igc_ring *ring;
-	int ring_count;
+	struct igc_adapter *adapter = from_timer(adapter, t, watchdog_timer);
+	/* Do the rest outside of interrupt context */
+	schedule_work(&adapter->watchdog_task);
+}
 
-	/* igc only supports 1 Tx and/or 1 Rx queue per vector */
-	if (txr_count > 1 || rxr_count > 1)
-		return -ENOMEM;
+static void igc_watchdog_task(struct work_struct *work)
+{
+	struct igc_adapter *adapter = container_of(work,
+						   struct igc_adapter,
+						   watchdog_task);
+	struct net_device *netdev = adapter->netdev;
+	struct igc_hw *hw = &adapter->hw;
+	struct igc_phy_info *phy = &hw->phy;
+	u16 phy_data, retry_count = 20;
+	u32 connsw;
+	u32 link;
+	int i;
 
-	ring_count = txr_count + rxr_count;
+	link = igc_has_link(adapter);
 
-	/* allocate q_vector and rings */
-	q_vector = adapter->q_vector[v_idx];
-	if (!q_vector)
-		q_vector = kzalloc(struct_size(q_vector, ring, ring_count),
-				   GFP_KERNEL);
-	else
-		memset(q_vector, 0, struct_size(q_vector, ring, ring_count));
-	if (!q_vector)
-		return -ENOMEM;
+	if (adapter->flags & IGC_FLAG_NEED_LINK_UPDATE) {
+		if (time_after(jiffies, (adapter->link_check_timeout + HZ)))
+			adapter->flags &= ~IGC_FLAG_NEED_LINK_UPDATE;
+		else
+			link = false;
+	}
 
-	/* initialize NAPI */
-	netif_napi_add(adapter->netdev, &q_vector->napi,
-		       igc_poll, 64);
+	/* Force link down if we have fiber to swap to */
+	if (adapter->flags & IGC_FLAG_MAS_ENABLE) {
+		if (hw->phy.media_type == igc_media_type_copper) {
+			connsw = rd32(IGC_CONNSW);
+			if (!(connsw & IGC_CONNSW_AUTOSENSE_EN))
+				link = 0;
+		}
+	}
+	if (link) {
+		if (!netif_carrier_ok(netdev)) {
+			u32 ctrl;
 
-	/* tie q_vector and adapter together */
-	adapter->q_vector[v_idx] = q_vector;
-	q_vector->adapter = adapter;
+			hw->mac.ops.get_speed_and_duplex(hw,
+							 &adapter->link_speed,
+							 &adapter->link_duplex);
 
-	/* initialize work limits */
-	q_vector->tx.work_limit = adapter->tx_work_limit;
+			ctrl = rd32(IGC_CTRL);
+			/* Link status message must follow this format */
+			netdev_info(netdev,
+				    "igc: %s NIC Link is Up %d Mbps %s Duplex, Flow Control: %s\n",
+				    netdev->name,
+				    adapter->link_speed,
+				    adapter->link_duplex == FULL_DUPLEX ?
+				    "Full" : "Half",
+				    (ctrl & IGC_CTRL_TFCE) &&
+				    (ctrl & IGC_CTRL_RFCE) ? "RX/TX" :
+				    (ctrl & IGC_CTRL_RFCE) ?  "RX" :
+				    (ctrl & IGC_CTRL_TFCE) ?  "TX" : "None");
 
-	/* initialize ITR configuration */
-	q_vector->itr_register = adapter->io_addr + IGC_EITR(0);
-	q_vector->itr_val = IGC_START_ITR;
+			/* check if SmartSpeed worked */
+			igc_check_downshift(hw);
+			if (phy->speed_downgraded)
+				netdev_warn(netdev, "Link Speed was downgraded by SmartSpeed\n");
 
-	/* initialize pointer to rings */
-	ring = q_vector->ring;
+			/* adjust timeout factor according to speed/duplex */
+			adapter->tx_timeout_factor = 1;
+			switch (adapter->link_speed) {
+			case SPEED_10:
+				adapter->tx_timeout_factor = 14;
+				break;
+			case SPEED_100:
+				/* maybe add some timeout factor ? */
+				break;
+			}
 
-	/* initialize ITR */
-	if (rxr_count) {
-		/* rx or rx/tx vector */
-		if (!adapter->rx_itr_setting || adapter->rx_itr_setting > 3)
-			q_vector->itr_val = adapter->rx_itr_setting;
-	} else {
-		/* tx only vector */
-		if (!adapter->tx_itr_setting || adapter->tx_itr_setting > 3)
-			q_vector->itr_val = adapter->tx_itr_setting;
-	}
+			if (adapter->link_speed != SPEED_1000)
+				goto no_wait;
 
-	if (txr_count) {
-		/* assign generic ring traits */
-		ring->dev = &adapter->pdev->dev;
-		ring->netdev = adapter->netdev;
+			/* wait for Remote receiver status OK */
+retry_read_status:
+			if (!igc_read_phy_reg(hw, PHY_1000T_STATUS,
+					      &phy_data)) {
+				if (!(phy_data & SR_1000T_REMOTE_RX_STATUS) &&
+				    retry_count) {
+					msleep(100);
+					retry_count--;
+					goto retry_read_status;
+				} else if (!retry_count) {
+					dev_err(&adapter->pdev->dev, "exceed max 2 second\n");
+				}
+			} else {
+				dev_err(&adapter->pdev->dev, "read 1000Base-T Status Reg\n");
+			}
+no_wait:
+			netif_carrier_on(netdev);
 
-		/* configure backlink on ring */
-		ring->q_vector = q_vector;
+			/* link state has changed, schedule phy info update */
+			if (!test_bit(__IGC_DOWN, &adapter->state))
+				mod_timer(&adapter->phy_info_timer,
+					  round_jiffies(jiffies + 2 * HZ));
+		}
+	} else {
+		if (netif_carrier_ok(netdev)) {
+			adapter->link_speed = 0;
+			adapter->link_duplex = 0;
 
-		/* update q_vector Tx values */
-		igc_add_ring(ring, &q_vector->tx);
+			/* Links status message must follow this format */
+			netdev_info(netdev, "igc: %s NIC Link is Down\n",
+				    netdev->name);
+			netif_carrier_off(netdev);
 
-		/* apply Tx specific ring traits */
-		ring->count = adapter->tx_ring_count;
-		ring->queue_index = txr_idx;
+			/* link state has changed, schedule phy info update */
+			if (!test_bit(__IGC_DOWN, &adapter->state))
+				mod_timer(&adapter->phy_info_timer,
+					  round_jiffies(jiffies + 2 * HZ));
 
-		/* assign ring to adapter */
-		adapter->tx_ring[txr_idx] = ring;
+			/* link is down, time to check for alternate media */
+			if (adapter->flags & IGC_FLAG_MAS_ENABLE) {
+				if (adapter->flags & IGC_FLAG_MEDIA_RESET) {
+					schedule_work(&adapter->reset_task);
+					/* return immediately */
+					return;
+				}
+			}
 
-		/* push pointer to next ring */
-		ring++;
+		/* also check for alternate media here */
+		} else if (!netif_carrier_ok(netdev) &&
+			   (adapter->flags & IGC_FLAG_MAS_ENABLE)) {
+			if (adapter->flags & IGC_FLAG_MEDIA_RESET) {
+				schedule_work(&adapter->reset_task);
+				/* return immediately */
+				return;
+			}
+		}
 	}
 
-	if (rxr_count) {
-		/* assign generic ring traits */
-		ring->dev = &adapter->pdev->dev;
-		ring->netdev = adapter->netdev;
+	spin_lock(&adapter->stats64_lock);
+	igc_update_stats(adapter);
+	spin_unlock(&adapter->stats64_lock);
 
-		/* configure backlink on ring */
-		ring->q_vector = q_vector;
+	for (i = 0; i < adapter->num_tx_queues; i++) {
+		struct igc_ring *tx_ring = adapter->tx_ring[i];
+
+		if (!netif_carrier_ok(netdev)) {
+			/* We've lost link, so the controller stops DMA,
+			 * but we've got queued Tx work that's never going
+			 * to get done, so reset controller to flush Tx.
+			 * (Do the reset outside of interrupt context).
+			 */
+			if (igc_desc_unused(tx_ring) + 1 < tx_ring->count) {
+				adapter->tx_timeout_count++;
+				schedule_work(&adapter->reset_task);
+				/* return immediately since reset is imminent */
+				return;
+			}
+		}
 
-		/* update q_vector Rx values */
-		igc_add_ring(ring, &q_vector->rx);
+		/* Force detection of hung controller every watchdog period */
+		set_bit(IGC_RING_FLAG_TX_DETECT_HANG, &tx_ring->flags);
+	}
 
-		/* apply Rx specific ring traits */
-		ring->count = adapter->rx_ring_count;
-		ring->queue_index = rxr_idx;
+	/* Cause software interrupt to ensure Rx ring is cleaned */
+	if (adapter->flags & IGC_FLAG_HAS_MSIX) {
+		u32 eics = 0;
 
-		/* assign ring to adapter */
-		adapter->rx_ring[rxr_idx] = ring;
+		for (i = 0; i < adapter->num_q_vectors; i++)
+			eics |= adapter->q_vector[i]->eims_value;
+		wr32(IGC_EICS, eics);
+	} else {
+		wr32(IGC_ICS, IGC_ICS_RXDMT0);
 	}
 
-	return 0;
+	/* Reset the timer */
+	if (!test_bit(__IGC_DOWN, &adapter->state)) {
+		if (adapter->flags & IGC_FLAG_NEED_LINK_UPDATE)
+			mod_timer(&adapter->watchdog_timer,
+				  round_jiffies(jiffies +  HZ));
+		else
+			mod_timer(&adapter->watchdog_timer,
+				  round_jiffies(jiffies + 2 * HZ));
+	}
 }
 
 /**
- * igc_alloc_q_vectors - Allocate memory for interrupt vectors
- * @adapter: board private structure to initialize
- *
- * We allocate one q_vector per queue interrupt.  If allocation fails we
- * return -ENOMEM.
+ * igc_intr_msi - Interrupt Handler
+ * @irq: interrupt number
+ * @data: pointer to a network interface device structure
  */
-static int igc_alloc_q_vectors(struct igc_adapter *adapter)
+static irqreturn_t igc_intr_msi(int irq, void *data)
 {
-	int rxr_remaining = adapter->num_rx_queues;
-	int txr_remaining = adapter->num_tx_queues;
-	int rxr_idx = 0, txr_idx = 0, v_idx = 0;
-	int q_vectors = adapter->num_q_vectors;
-	int err;
+	struct igc_adapter *adapter = data;
+	struct igc_q_vector *q_vector = adapter->q_vector[0];
+	struct igc_hw *hw = &adapter->hw;
+	/* read ICR disables interrupts using IAM */
+	u32 icr = rd32(IGC_ICR);
 
-	if (q_vectors >= (rxr_remaining + txr_remaining)) {
-		for (; rxr_remaining; v_idx++) {
-			err = igc_alloc_q_vector(adapter, q_vectors, v_idx,
-						 0, 0, 1, rxr_idx);
+	igc_write_itr(q_vector);
 
-			if (err)
-				goto err_out;
+	if (icr & IGC_ICR_DRSTA)
+		schedule_work(&adapter->reset_task);
 
-			/* update counts and index */
-			rxr_remaining--;
-			rxr_idx++;
-		}
+	if (icr & IGC_ICR_DOUTSYNC) {
+		/* HW is reporting DMA is out of sync */
+		adapter->stats.doosync++;
 	}
 
-	for (; v_idx < q_vectors; v_idx++) {
-		int rqpv = DIV_ROUND_UP(rxr_remaining, q_vectors - v_idx);
-		int tqpv = DIV_ROUND_UP(txr_remaining, q_vectors - v_idx);
-
-		err = igc_alloc_q_vector(adapter, q_vectors, v_idx,
-					 tqpv, txr_idx, rqpv, rxr_idx);
-
-		if (err)
-			goto err_out;
-
-		/* update counts and index */
-		rxr_remaining -= rqpv;
-		txr_remaining -= tqpv;
-		rxr_idx++;
-		txr_idx++;
+	if (icr & (IGC_ICR_RXSEQ | IGC_ICR_LSC)) {
+		hw->mac.get_link_status = 1;
+		if (!test_bit(__IGC_DOWN, &adapter->state))
+			mod_timer(&adapter->watchdog_timer, jiffies + 1);
 	}
 
-	return 0;
-
-err_out:
-	adapter->num_tx_queues = 0;
-	adapter->num_rx_queues = 0;
-	adapter->num_q_vectors = 0;
-
-	while (v_idx--)
-		igc_free_q_vector(adapter, v_idx);
+	napi_schedule(&q_vector->napi);
 
-	return -ENOMEM;
+	return IRQ_HANDLED;
 }
 
 /**
- * igc_cache_ring_register - Descriptor ring to register mapping
- * @adapter: board private structure to initialize
- *
- * Once we know the feature-set enabled for the device, we'll cache
- * the register offset the descriptor ring is assigned to.
+ * igc_intr - Legacy Interrupt Handler
+ * @irq: interrupt number
+ * @data: pointer to a network interface device structure
  */
-static void igc_cache_ring_register(struct igc_adapter *adapter)
+static irqreturn_t igc_intr(int irq, void *data)
 {
-	int i = 0, j = 0;
+	struct igc_adapter *adapter = data;
+	struct igc_q_vector *q_vector = adapter->q_vector[0];
+	struct igc_hw *hw = &adapter->hw;
+	/* Interrupt Auto-Mask...upon reading ICR, interrupts are masked.  No
+	 * need for the IMC write
+	 */
+	u32 icr = rd32(IGC_ICR);
 
-	switch (adapter->hw.mac.type) {
-	case igc_i225:
-	/* Fall through */
-	default:
-		for (; i < adapter->num_rx_queues; i++)
-			adapter->rx_ring[i]->reg_idx = i;
-		for (; j < adapter->num_tx_queues; j++)
-			adapter->tx_ring[j]->reg_idx = j;
-		break;
-	}
-}
+	/* IMS will not auto-mask if INT_ASSERTED is not set, and if it is
+	 * not set, then the adapter didn't send an interrupt
+	 */
+	if (!(icr & IGC_ICR_INT_ASSERTED))
+		return IRQ_NONE;
 
-/**
- * igc_init_interrupt_scheme - initialize interrupts, allocate queues/vectors
- * @adapter: Pointer to adapter structure
- * @msix: boolean for MSI-X capability
- *
- * This function initializes the interrupts and allocates all of the queues.
- */
-static int igc_init_interrupt_scheme(struct igc_adapter *adapter, bool msix)
-{
-	struct pci_dev *pdev = adapter->pdev;
-	int err = 0;
+	igc_write_itr(q_vector);
 
-	igc_set_interrupt_capability(adapter, msix);
+	if (icr & IGC_ICR_DRSTA)
+		schedule_work(&adapter->reset_task);
 
-	err = igc_alloc_q_vectors(adapter);
-	if (err) {
-		dev_err(&pdev->dev, "Unable to allocate memory for vectors\n");
-		goto err_alloc_q_vectors;
+	if (icr & IGC_ICR_DOUTSYNC) {
+		/* HW is reporting DMA is out of sync */
+		adapter->stats.doosync++;
 	}
 
-	igc_cache_ring_register(adapter);
+	if (icr & (IGC_ICR_RXSEQ | IGC_ICR_LSC)) {
+		hw->mac.get_link_status = 1;
+		/* guard against interrupt when we're going down */
+		if (!test_bit(__IGC_DOWN, &adapter->state))
+			mod_timer(&adapter->watchdog_timer, jiffies + 1);
+	}
 
-	return 0;
+	napi_schedule(&q_vector->napi);
 
-err_alloc_q_vectors:
-	igc_reset_interrupt_capability(adapter);
-	return err;
+	return IRQ_HANDLED;
 }
 
 static void igc_free_irq(struct igc_adapter *adapter)
@@ -4776,98 +4865,6 @@ static struct pci_driver igc_driver = {
 	.shutdown = igc_shutdown,
 };
 
-void igc_set_flag_queue_pairs(struct igc_adapter *adapter,
-			      const u32 max_rss_queues)
-{
-	/* Determine if we need to pair queues. */
-	/* If rss_queues > half of max_rss_queues, pair the queues in
-	 * order to conserve interrupts due to limited supply.
-	 */
-	if (adapter->rss_queues > (max_rss_queues / 2))
-		adapter->flags |= IGC_FLAG_QUEUE_PAIRS;
-	else
-		adapter->flags &= ~IGC_FLAG_QUEUE_PAIRS;
-}
-
-unsigned int igc_get_max_rss_queues(struct igc_adapter *adapter)
-{
-	unsigned int max_rss_queues;
-
-	/* Determine the maximum number of RSS queues supported. */
-	max_rss_queues = IGC_MAX_RX_QUEUES;
-
-	return max_rss_queues;
-}
-
-static void igc_init_queue_configuration(struct igc_adapter *adapter)
-{
-	u32 max_rss_queues;
-
-	max_rss_queues = igc_get_max_rss_queues(adapter);
-	adapter->rss_queues = min_t(u32, max_rss_queues, num_online_cpus());
-
-	igc_set_flag_queue_pairs(adapter, max_rss_queues);
-}
-
-/**
- * igc_sw_init - Initialize general software structures (struct igc_adapter)
- * @adapter: board private structure to initialize
- *
- * igc_sw_init initializes the Adapter private data structure.
- * Fields are initialized based on PCI device information and
- * OS network device settings (MTU size).
- */
-static int igc_sw_init(struct igc_adapter *adapter)
-{
-	struct net_device *netdev = adapter->netdev;
-	struct pci_dev *pdev = adapter->pdev;
-	struct igc_hw *hw = &adapter->hw;
-
-	int size = sizeof(struct igc_mac_addr) * hw->mac.rar_entry_count;
-
-	pci_read_config_word(pdev, PCI_COMMAND, &hw->bus.pci_cmd_word);
-
-	/* set default ring sizes */
-	adapter->tx_ring_count = IGC_DEFAULT_TXD;
-	adapter->rx_ring_count = IGC_DEFAULT_RXD;
-
-	/* set default ITR values */
-	adapter->rx_itr_setting = IGC_DEFAULT_ITR;
-	adapter->tx_itr_setting = IGC_DEFAULT_ITR;
-
-	/* set default work limits */
-	adapter->tx_work_limit = IGC_DEFAULT_TX_WORK;
-
-	/* adjust max frame to be at least the size of a standard frame */
-	adapter->max_frame_size = netdev->mtu + ETH_HLEN + ETH_FCS_LEN +
-				VLAN_HLEN;
-	adapter->min_frame_size = ETH_ZLEN + ETH_FCS_LEN;
-
-	spin_lock_init(&adapter->nfc_lock);
-	spin_lock_init(&adapter->stats64_lock);
-	/* Assume MSI-X interrupts, will be checked during IRQ allocation */
-	adapter->flags |= IGC_FLAG_HAS_MSIX;
-
-	adapter->mac_table = kzalloc(size, GFP_ATOMIC);
-	if (!adapter->mac_table)
-		return -ENOMEM;
-
-	igc_init_queue_configuration(adapter);
-
-	/* This call may decrease the number of queues */
-	if (igc_init_interrupt_scheme(adapter, true)) {
-		dev_err(&pdev->dev, "Unable to allocate memory for queues\n");
-		return -ENOMEM;
-	}
-
-	/* Explicitly disable IRQ since the NIC can be in any state. */
-	igc_irq_disable(adapter);
-
-	set_bit(__IGC_DOWN, &adapter->state);
-
-	return 0;
-}
-
 /**
  * igc_reinit_queues - return error
  * @adapter: pointer to adapter structure
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
