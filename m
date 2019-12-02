Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6354010F34F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Dec 2019 00:20:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 205BF86BDB;
	Mon,  2 Dec 2019 23:20:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5FkcSO5qPQim; Mon,  2 Dec 2019 23:20:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7A27D8409C;
	Mon,  2 Dec 2019 23:20:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6C9461BF391
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Dec 2019 23:20:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6978A8623B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Dec 2019 23:20:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cAHnz1MfvOkj for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Dec 2019 23:20:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id ACBE385DC0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Dec 2019 23:20:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Dec 2019 15:19:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,270,1571727600"; d="scan'208";a="213201669"
Received: from vcostago-desk1.jf.intel.com ([10.54.70.26])
 by orsmga006.jf.intel.com with ESMTP; 02 Dec 2019 15:19:55 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  2 Dec 2019 15:19:51 -0800
Message-Id: <20191202231953.2203397-4-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191202231953.2203397-1-vinicius.gomes@intel.com>
References: <20191202231953.2203397-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue PATCH v3 3/5] igc: Add support for TX
 timestamping
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

This adds support for timestamping packets being transmitted.

Based on the code from i210. The basic differences is that i225 has 4
registers to store the transmit timestamps (i210 has one). Right now,
we only support retrieving from one register, support for using the
other registers will be added later.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  2 +
 drivers/net/ethernet/intel/igc/igc_defines.h | 14 +++
 drivers/net/ethernet/intel/igc/igc_main.c    | 49 +++++++++++
 drivers/net/ethernet/intel/igc/igc_ptp.c     | 92 ++++++++++++++++++++
 4 files changed, 157 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index ae9161482c84..cad1db035008 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -558,6 +558,8 @@ void igc_ptp_rx_pktstamp(struct igc_q_vector *q_vector, void *va,
 			 struct sk_buff *skb);
 int igc_ptp_set_ts_config(struct net_device *netdev, struct ifreq *ifr);
 int igc_ptp_get_ts_config(struct net_device *netdev, struct ifreq *ifr);
+void igc_ptp_tx_hang(struct igc_adapter *adapter);
+
 #define igc_rx_pg_size(_ring) (PAGE_SIZE << igc_rx_pg_order(_ring))
 
 #define IGC_TXD_DCMD	(IGC_ADVTXD_DCMD_EOP | IGC_ADVTXD_DCMD_RS)
diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index ea30e9756389..2ecaeddc6d3d 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -401,10 +401,24 @@
 #define IGC_TSYNCRXCFG_PTP_V1_SYNC_MESSAGE	0x00
 #define IGC_TSYNCRXCFG_PTP_V1_DELAY_REQ_MESSAGE	0x01
 
+/* Immediate Interrupt Receive */
+#define IGC_IMIR_CLEAR_MASK	0xF001FFFF /* IMIR Reg Clear Mask */
+#define IGC_IMIR_PORT_BYPASS	0x20000 /* IMIR Port Bypass Bit */
+#define IGC_IMIR_PRIORITY_SHIFT	29 /* IMIR Priority Shift */
+#define IGC_IMIREXT_CLEAR_MASK	0x7FFFF /* IMIREXT Reg Clear Mask */
+
 /* Immediate Interrupt Receive Extended */
 #define IGC_IMIREXT_CTRL_BP	0x00080000  /* Bypass check of ctrl bits */
 #define IGC_IMIREXT_SIZE_BP	0x00001000  /* Packet size bypass */
 
+/* Time Sync Transmit Control bit definitions */
+#define IGC_TSYNCTXCTL_VALID			0x00000001  /* Tx timestamp valid */
+#define IGC_TSYNCTXCTL_ENABLED			0x00000010  /* enable Tx timestamping */
+#define IGC_TSYNCTXCTL_MAX_ALLOWED_DLY_MASK	0x0000F000  /* max delay */
+#define IGC_TSYNCTXCTL_SYNC_COMP_ERR		0x20000000  /* sync err */
+#define IGC_TSYNCTXCTL_SYNC_COMP		0x40000000  /* sync complete */
+#define IGC_TSYNCTXCTL_START_SYNC		0x80000000  /* initiate sync */
+
 /* Receive Checksum Control */
 #define IGC_RXCSUM_CRCOFL	0x00000800   /* CRC32 offload enable */
 #define IGC_RXCSUM_PCSD		0x00002000   /* packet checksum disabled */
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index ffde4dc7c226..e48ff6df1a15 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -987,6 +987,11 @@ static inline int igc_maybe_stop_tx(struct igc_ring *tx_ring, const u16 size)
 	return __igc_maybe_stop_tx(tx_ring, size);
 }
 
+#define IGC_SET_FLAG(_input, _flag, _result) \
+	(((_flag) <= (_result)) ?				\
+	 ((u32)((_input) & (_flag)) * ((_result) / (_flag))) :	\
+	 ((u32)((_input) & (_flag)) / ((_flag) / (_result))))
+
 static u32 igc_tx_cmd_type(struct sk_buff *skb, u32 tx_flags)
 {
 	/* set type for advanced descriptor with frame checksum insertion */
@@ -994,6 +999,10 @@ static u32 igc_tx_cmd_type(struct sk_buff *skb, u32 tx_flags)
 		       IGC_ADVTXD_DCMD_DEXT |
 		       IGC_ADVTXD_DCMD_IFCS;
 
+	/* set timestamp bit if present */
+	cmd_type |= IGC_SET_FLAG(tx_flags, IGC_TX_FLAGS_TSTAMP,
+				 (IGC_ADVTXD_MAC_TSTAMP));
+
 	return cmd_type;
 }
 
@@ -1192,6 +1201,26 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 	first->bytecount = skb->len;
 	first->gso_segs = 1;
 
+	if (unlikely(skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP)) {
+		struct igc_adapter *adapter = netdev_priv(tx_ring->netdev);
+
+		/* FIXME: add support for retrieving timestamps from
+		 * the other timer registers before skipping the
+		 * timestamping request.
+		 */
+		if (adapter->tstamp_config.tx_type == HWTSTAMP_TX_ON &&
+		    !test_and_set_bit_lock(__IGC_PTP_TX_IN_PROGRESS,
+					   &adapter->state)) {
+			skb_shinfo(skb)->tx_flags |= SKBTX_IN_PROGRESS;
+			tx_flags |= IGC_TX_FLAGS_TSTAMP;
+
+			adapter->ptp_tx_skb = skb_get(skb);
+			adapter->ptp_tx_start = jiffies;
+		} else {
+			adapter->tx_hwtstamp_skipped++;
+		}
+	}
+
 	/* record initial flags and protocol */
 	first->tx_flags = tx_flags;
 	first->protocol = protocol;
@@ -3648,6 +3677,21 @@ int igc_del_mac_steering_filter(struct igc_adapter *adapter,
 					IGC_MAC_STATE_QUEUE_STEERING | flags);
 }
 
+static void igc_tsync_interrupt(struct igc_adapter *adapter)
+{
+	struct igc_hw *hw = &adapter->hw;
+	u32 ack = 0, tsicr = rd32(IGC_TSICR);
+
+	if (tsicr & IGC_TSICR_TXTS) {
+		/* retrieve hardware timestamp */
+		schedule_work(&adapter->ptp_tx_work);
+		ack |= IGC_TSICR_TXTS;
+	}
+
+	/* acknowledge the interrupts */
+	wr32(IGC_TSICR, ack);
+}
+
 /**
  * igc_msix_other - msix other interrupt handler
  * @irq: interrupt number
@@ -3675,6 +3719,9 @@ static irqreturn_t igc_msix_other(int irq, void *data)
 			mod_timer(&adapter->watchdog_timer, jiffies + 1);
 	}
 
+	if (icr & IGC_ICR_TS)
+		igc_tsync_interrupt(adapter);
+
 	wr32(IGC_EIMS, adapter->eims_other);
 
 	return IRQ_HANDLED;
@@ -4004,6 +4051,8 @@ static void igc_watchdog_task(struct work_struct *work)
 		wr32(IGC_ICS, IGC_ICS_RXDMT0);
 	}
 
+	igc_ptp_tx_hang(adapter);
+
 	/* Reset the timer */
 	if (!test_bit(__IGC_DOWN, &adapter->state)) {
 		if (adapter->flags & IGC_FLAG_NEED_LINK_UPDATE)
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index b39d14d40ec9..b63a03157ec1 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -284,6 +284,12 @@ static void igc_ptp_enable_tstamp_all_rxqueues(struct igc_adapter *adapter,
  * @adapter: networking device structure
  * @config: hwtstamp configuration
  *
+ * Outgoing time stamping can be enabled and disabled. Play nice and
+ * disable it when requested, although it shouldn't case any overhead
+ * when no packet needs it. At most one packet in the queue may be
+ * marked for time stamping, otherwise it would be impossible to tell
+ * for sure to which packet the hardware time stamp belongs.
+ *
  * Incoming time stamping has to be configured via the hardware
  * filters. Not all combinations are supported, in particular event
  * type has to be specified. Matching the kind of event packet is
@@ -295,6 +301,7 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
 				      struct hwtstamp_config *config)
 {
 	struct igc_hw *hw = &adapter->hw;
+	u32 tsync_tx_ctl = IGC_TSYNCTXCTL_ENABLED;
 	u32 tsync_rx_ctl = IGC_TSYNCRXCTL_ENABLED;
 	u32 tsync_rx_cfg = 0;
 	bool is_l4 = false;
@@ -305,6 +312,15 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
 	if (config->flags)
 		return -EINVAL;
 
+	switch (config->tx_type) {
+	case HWTSTAMP_TX_OFF:
+		tsync_tx_ctl = 0;
+	case HWTSTAMP_TX_ON:
+		break;
+	default:
+		return -ERANGE;
+	}
+
 	switch (config->rx_filter) {
 	case HWTSTAMP_FILTER_NONE:
 		tsync_rx_ctl = 0;
@@ -368,6 +384,15 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
 		}
 	}
 
+	if (tsync_tx_ctl)
+		tsync_tx_ctl = IGC_TSYNCTXCTL_ENABLED;
+
+	/* enable/disable TX */
+	regval = rd32(IGC_TSYNCTXCTL);
+	regval &= ~IGC_TSYNCTXCTL_ENABLED;
+	regval |= tsync_tx_ctl;
+	wr32(IGC_TSYNCTXCTL, regval);
+
 	/* enable/disable RX */
 	regval = rd32(IGC_TSYNCRXCTL);
 	regval &= ~(IGC_TSYNCRXCTL_ENABLED | IGC_TSYNCRXCTL_TYPE_MASK);
@@ -442,8 +467,75 @@ void igc_ptp_tx_hang(struct igc_adapter *adapter)
 	}
 }
 
+/**
+ * igc_ptp_tx_hwtstamp - utility function which checks for TX time stamp
+ * @adapter: Board private structure.
+ *
+ * If we were asked to do hardware stamping and such a time stamp is
+ * available, then it must have been for this skb here because we only
+ * allow only one such packet into the queue.
+ */
+static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
+{
+	struct sk_buff *skb = adapter->ptp_tx_skb;
+	struct skb_shared_hwtstamps shhwtstamps;
+	struct igc_hw *hw = &adapter->hw;
+	u64 regval;
+
+	regval = rd32(IGC_TXSTMPL);
+	regval |= (u64)rd32(IGC_TXSTMPH) << 32;
+	igc_ptp_systim_to_hwtstamp(adapter, &shhwtstamps, regval);
+
+	/* Clear the lock early before calling skb_tstamp_tx so that
+	 * applications are not woken up before the lock bit is clear. We use
+	 * a copy of the skb pointer to ensure other threads can't change it
+	 * while we're notifying the stack.
+	 */
+	adapter->ptp_tx_skb = NULL;
+	clear_bit_unlock(__IGC_PTP_TX_IN_PROGRESS, &adapter->state);
+
+	/* Notify the stack and free the skb after we've unlocked */
+	skb_tstamp_tx(skb, &shhwtstamps);
+	dev_kfree_skb_any(skb);
+}
+
+/**
+ * igc_ptp_tx_work
+ * @work: pointer to work struct
+ *
+ * This work function polls the TSYNCTXCTL valid bit to determine when a
+ * timestamp has been taken for the current stored skb.
+ */
 void igc_ptp_tx_work(struct work_struct *work)
 {
+	struct igc_adapter *adapter = container_of(work, struct igc_adapter,
+						   ptp_tx_work);
+	struct igc_hw *hw = &adapter->hw;
+	u32 tsynctxctl;
+
+	if (!adapter->ptp_tx_skb)
+		return;
+
+	if (time_is_before_jiffies(adapter->ptp_tx_start +
+				   IGC_PTP_TX_TIMEOUT)) {
+		dev_kfree_skb_any(adapter->ptp_tx_skb);
+		adapter->ptp_tx_skb = NULL;
+		clear_bit_unlock(__IGC_PTP_TX_IN_PROGRESS, &adapter->state);
+		adapter->tx_hwtstamp_timeouts++;
+		/* Clear the tx valid bit in TSYNCTXCTL register to enable
+		 * interrupt
+		 */
+		rd32(IGC_TXSTMPH);
+		dev_warn(&adapter->pdev->dev, "clearing Tx timestamp hang\n");
+		return;
+	}
+
+	tsynctxctl = rd32(IGC_TSYNCTXCTL);
+	if (tsynctxctl & IGC_TSYNCTXCTL_VALID)
+		igc_ptp_tx_hwtstamp(adapter);
+	else
+		/* reschedule to check later */
+		schedule_work(&adapter->ptp_tx_work);
 }
 
 /**
-- 
2.24.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
