Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD5610F351
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Dec 2019 00:20:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ECE5A20494;
	Mon,  2 Dec 2019 23:20:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TvVy9M-bsJtr; Mon,  2 Dec 2019 23:20:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DAE33220C1;
	Mon,  2 Dec 2019 23:20:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 158421BF391
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Dec 2019 23:20:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1297E8623B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Dec 2019 23:20:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bqyMY4C1hK55 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Dec 2019 23:20:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 81CE1862E4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Dec 2019 23:20:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Dec 2019 15:19:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,270,1571727600"; d="scan'208";a="213201667"
Received: from vcostago-desk1.jf.intel.com ([10.54.70.26])
 by orsmga006.jf.intel.com with ESMTP; 02 Dec 2019 15:19:55 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  2 Dec 2019 15:19:50 -0800
Message-Id: <20191202231953.2203397-3-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191202231953.2203397-1-vinicius.gomes@intel.com>
References: <20191202231953.2203397-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue PATCH v3 2/5] igc: Add support for RX
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

This adds support for timestamping received packets.

It is based on the i210, as many features of i225 work the same way.
The main difference from i210 is that i225 has support for choosing
the timer register to use when timestamping packets. Right now, we
only support using timer 0. The other difference is that i225 stores
two timestamps in the receive descriptor, right now, we only retrieve
one.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  17 ++
 drivers/net/ethernet/intel/igc/igc_defines.h |  38 +++
 drivers/net/ethernet/intel/igc/igc_main.c    |  10 +
 drivers/net/ethernet/intel/igc/igc_ptp.c     | 272 +++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_regs.h    |   3 +
 5 files changed, 340 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 1cd7221cdcda..ae9161482c84 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -107,6 +107,20 @@ extern char igc_driver_version[];
 #define AUTO_ALL_MODES		0
 #define IGC_RX_HDR_LEN			IGC_RXBUFFER_256
 
+/* Transmit and receive latency (for PTP timestamps) */
+/* FIXME: These values were estimated using the ones that i210 has as
+ * basis, they seem to provide good numbers with ptp4l/phc2sys, but we
+ * need to confirm them.
+ */
+#define IGC_I225_TX_LATENCY_10		9542
+#define IGC_I225_TX_LATENCY_100		1024
+#define IGC_I225_TX_LATENCY_1000	178
+#define IGC_I225_TX_LATENCY_2500	64
+#define IGC_I225_RX_LATENCY_10		20662
+#define IGC_I225_RX_LATENCY_100		2213
+#define IGC_I225_RX_LATENCY_1000	448
+#define IGC_I225_RX_LATENCY_2500	160
+
 /* RX and TX descriptor control thresholds.
  * PTHRESH - MAC will consider prefetch if it has fewer than this number of
  *           descriptors available in its onboard memory.
@@ -539,6 +553,9 @@ int igc_erase_filter(struct igc_adapter *adapter,
 void igc_ptp_init(struct igc_adapter *adapter);
 void igc_ptp_reset(struct igc_adapter *adapter);
 void igc_ptp_stop(struct igc_adapter *adapter);
+void igc_ptp_rx_rgtstamp(struct igc_q_vector *q_vector, struct sk_buff *skb);
+void igc_ptp_rx_pktstamp(struct igc_q_vector *q_vector, void *va,
+			 struct sk_buff *skb);
 int igc_ptp_set_ts_config(struct net_device *netdev, struct ifreq *ifr);
 int igc_ptp_get_ts_config(struct net_device *netdev, struct ifreq *ifr);
 #define igc_rx_pg_size(_ring) (PAGE_SIZE << igc_rx_pg_order(_ring))
diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index d83f6d7c4b40..ea30e9756389 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -314,12 +314,21 @@
 #define IGC_RCTL_RDMTS_HALF	0x00000000 /* Rx desc min thresh size */
 #define IGC_RCTL_BAM		0x00008000 /* broadcast enable */
 
+/* Split Replication Receive Control */
+#define IGC_SRRCTL_TIMESTAMP		0x40000000
+#define IGC_SRRCTL_TIMER1SEL(timer)	(((timer) & 0x3) << 14)
+#define IGC_SRRCTL_TIMER0SEL(timer)	(((timer) & 0x3) << 17)
+
 /* Receive Descriptor bit definitions */
 #define IGC_RXD_STAT_EOP	0x02	/* End of Packet */
 #define IGC_RXD_STAT_IXSM	0x04	/* Ignore checksum */
 #define IGC_RXD_STAT_UDPCS	0x10	/* UDP xsum calculated */
 #define IGC_RXD_STAT_TCPCS	0x20	/* TCP xsum calculated */
 
+/* Advanced Receive Descriptor bit definitions */
+#define IGC_RXDADV_STAT_TSIP	0x08000 /* timestamp in packet */
+#define IGC_RXDADV_STAT_TS	0x10000 /* Pkt was time stamped */
+
 #define IGC_RXDEXT_STATERR_CE		0x01000000
 #define IGC_RXDEXT_STATERR_SE		0x02000000
 #define IGC_RXDEXT_STATERR_SEQ		0x04000000
@@ -356,6 +365,7 @@
 
 #define I225_RXPBSIZE_DEFAULT	0x000000A2 /* RXPBSIZE default */
 #define I225_TXPBSIZE_DEFAULT	0x04000014 /* TXPBSIZE default */
+#define IGC_RXPBS_CFG_TS_EN	0x80000000 /* Timestamp in Rx buffer */
 
 /* Time Sync Interrupt Causes */
 #define IGC_TSICR_SYS_WRAP	BIT(0) /* SYSTIM Wrap around. */
@@ -367,6 +377,34 @@
 
 #define IGC_TSICR_INTERRUPTS	IGC_TSICR_TXTS
 
+/* PTP Queue Filter */
+#define IGC_ETQF_1588		BIT(30)
+
+#define IGC_FTQF_VF_BP		0x00008000
+#define IGC_FTQF_1588_TIME_STAMP	0x08000000
+#define IGC_FTQF_MASK			0xF0000000
+#define IGC_FTQF_MASK_PROTO_BP	0x10000000
+
+/* Time Sync Receive Control bit definitions */
+#define IGC_TSYNCRXCTL_VALID		0x00000001  /* Rx timestamp valid */
+#define IGC_TSYNCRXCTL_TYPE_MASK	0x0000000E  /* Rx type mask */
+#define IGC_TSYNCRXCTL_TYPE_L2_V2	0x00
+#define IGC_TSYNCRXCTL_TYPE_L4_V1	0x02
+#define IGC_TSYNCRXCTL_TYPE_L2_L4_V2	0x04
+#define IGC_TSYNCRXCTL_TYPE_ALL		0x08
+#define IGC_TSYNCRXCTL_TYPE_EVENT_V2	0x0A
+#define IGC_TSYNCRXCTL_ENABLED		0x00000010  /* enable Rx timestamping */
+#define IGC_TSYNCRXCTL_SYSCFI		0x00000020  /* Sys clock frequency */
+
+/* Time Sync Receive Configuration */
+#define IGC_TSYNCRXCFG_PTP_V1_CTRLT_MASK	0x000000FF
+#define IGC_TSYNCRXCFG_PTP_V1_SYNC_MESSAGE	0x00
+#define IGC_TSYNCRXCFG_PTP_V1_DELAY_REQ_MESSAGE	0x01
+
+/* Immediate Interrupt Receive Extended */
+#define IGC_IMIREXT_CTRL_BP	0x00080000  /* Bypass check of ctrl bits */
+#define IGC_IMIREXT_SIZE_BP	0x00001000  /* Packet size bypass */
+
 /* Receive Checksum Control */
 #define IGC_RXCSUM_CRCOFL	0x00000800   /* CRC32 offload enable */
 #define IGC_RXCSUM_PCSD		0x00002000   /* packet checksum disabled */
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index a29b99f88177..ffde4dc7c226 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1299,6 +1299,10 @@ static void igc_process_skb_fields(struct igc_ring *rx_ring,
 
 	igc_rx_checksum(rx_ring, rx_desc, skb);
 
+	if (igc_test_staterr(rx_desc, IGC_RXDADV_STAT_TS) &&
+	    !igc_test_staterr(rx_desc, IGC_RXDADV_STAT_TSIP))
+		igc_ptp_rx_rgtstamp(rx_ring->q_vector, skb);
+
 	skb_record_rx_queue(skb, rx_ring->queue_index);
 
 	skb->protocol = eth_type_trans(skb, rx_ring->netdev);
@@ -1418,6 +1422,12 @@ static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
 	if (unlikely(!skb))
 		return NULL;
 
+	if (unlikely(igc_test_staterr(rx_desc, IGC_RXDADV_STAT_TSIP))) {
+		igc_ptp_rx_pktstamp(rx_ring->q_vector, va, skb);
+		va += IGC_TS_HDR_LEN;
+		size -= IGC_TS_HDR_LEN;
+	}
+
 	/* Determine available headroom for copy */
 	headlen = size;
 	if (headlen > IGC_RX_HDR_LEN)
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index aaf10617d222..b39d14d40ec9 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -134,9 +134,281 @@ static int igc_ptp_feature_enable_i225(struct ptp_clock_info *ptp,
 	return -EOPNOTSUPP;
 }
 
+/**
+ * igc_ptp_systim_to_hwtstamp - convert system time value to hw timestamp
+ * @adapter: board private structure
+ * @hwtstamps: timestamp structure to update
+ * @systim: unsigned 64bit system time value.
+ *
+ * We need to convert the system time value stored in the RX/TXSTMP registers
+ * into a hwtstamp which can be used by the upper level timestamping functions.
+ **/
+static void igc_ptp_systim_to_hwtstamp(struct igc_adapter *adapter,
+				       struct skb_shared_hwtstamps *hwtstamps,
+				       u64 systim)
+{
+	switch (adapter->hw.mac.type) {
+	case igc_i225:
+		memset(hwtstamps, 0, sizeof(*hwtstamps));
+		/* Upper 32 bits contain s, lower 32 bits contain ns. */
+		hwtstamps->hwtstamp = ktime_set(systim >> 32,
+						systim & 0xFFFFFFFF);
+		break;
+	default:
+		break;
+	}
+}
+
+/**
+ * igc_ptp_rx_pktstamp - retrieve Rx per packet timestamp
+ * @q_vector: Pointer to interrupt specific structure
+ * @va: Pointer to address containing Rx buffer
+ * @skb: Buffer containing timestamp and packet
+ *
+ * This function is meant to retrieve the first timestamp from the
+ * first buffer of an incoming frame. The value is stored in little
+ * endian format starting on byte 0. There's a second timestamp
+ * starting on byte 8.
+ **/
+void igc_ptp_rx_pktstamp(struct igc_q_vector *q_vector, void *va,
+			 struct sk_buff *skb)
+{
+	__le64 *regval = (__le64 *)va;
+	struct igc_adapter *adapter = q_vector->adapter;
+	int adjust = 0;
+
+	/* The timestamp is recorded in little endian format.
+	 * DWORD: | 0          | 1           | 2          | 3
+	 * Field: | Timer0 Low | Timer0 High | Timer1 Low | Timer1 High
+	 */
+	igc_ptp_systim_to_hwtstamp(adapter, skb_hwtstamps(skb),
+				   le64_to_cpu(regval[0]));
+
+	/* adjust timestamp for the RX latency based on link speed */
+	if (adapter->hw.mac.type == igc_i225) {
+		switch (adapter->link_speed) {
+		case SPEED_10:
+			adjust = IGC_I225_RX_LATENCY_10;
+			break;
+		case SPEED_100:
+			adjust = IGC_I225_RX_LATENCY_100;
+			break;
+		case SPEED_1000:
+			adjust = IGC_I225_RX_LATENCY_1000;
+			break;
+		case SPEED_2500:
+			adjust = IGC_I225_RX_LATENCY_2500;
+			break;
+		}
+	}
+	skb_hwtstamps(skb)->hwtstamp =
+		ktime_sub_ns(skb_hwtstamps(skb)->hwtstamp, adjust);
+}
+
+/**
+ * igc_ptp_rx_rgtstamp - retrieve Rx timestamp stored in register
+ * @q_vector: Pointer to interrupt specific structure
+ * @skb: Buffer containing timestamp and packet
+ *
+ * This function is meant to retrieve a timestamp from the internal registers
+ * of the adapter and store it in the skb.
+ */
+void igc_ptp_rx_rgtstamp(struct igc_q_vector *q_vector,
+			 struct sk_buff *skb)
+{
+	struct igc_adapter *adapter = q_vector->adapter;
+	struct igc_hw *hw = &adapter->hw;
+	u64 regval;
+
+	/* If this bit is set, then the RX registers contain the time
+	 * stamp. No other packet will be time stamped until we read
+	 * these registers, so read the registers to make them
+	 * available again. Because only one packet can be time
+	 * stamped at a time, we know that the register values must
+	 * belong to this one here and therefore we don't need to
+	 * compare any of the additional attributes stored for it.
+	 *
+	 * If nothing went wrong, then it should have a shared
+	 * tx_flags that we can turn into a skb_shared_hwtstamps.
+	 */
+	if (!(rd32(IGC_TSYNCRXCTL) & IGC_TSYNCRXCTL_VALID))
+		return;
+
+	regval = rd32(IGC_RXSTMPL);
+	regval |= (u64)rd32(IGC_RXSTMPH) << 32;
+
+	igc_ptp_systim_to_hwtstamp(adapter, skb_hwtstamps(skb), regval);
+
+	/* Update the last_rx_timestamp timer in order to enable watchdog check
+	 * for error case of latched timestamp on a dropped packet.
+	 */
+	adapter->last_rx_timestamp = jiffies;
+}
+
+/**
+ * igc_ptp_enable_tstamp_rxqueue - Enable RX timestamp for a queue
+ * @rx_ring: Pointer to RX queue
+ * @timer: Index for timer
+ *
+ * This function enables RX timestamping for a queue, and selects
+ * which 1588 timer will provide the timestamp.
+ */
+static void igc_ptp_enable_tstamp_rxqueue(struct igc_adapter *adapter,
+					  struct igc_ring *rx_ring, u8 timer)
+{
+	struct igc_hw *hw = &adapter->hw;
+	int reg_idx = rx_ring->reg_idx;
+	u32 srrctl = rd32(IGC_SRRCTL(reg_idx));
+
+	srrctl |= IGC_SRRCTL_TIMESTAMP;
+	srrctl |= IGC_SRRCTL_TIMER1SEL(timer);
+	srrctl |= IGC_SRRCTL_TIMER0SEL(timer);
+
+	wr32(IGC_SRRCTL(reg_idx), srrctl);
+}
+
+static void igc_ptp_enable_tstamp_all_rxqueues(struct igc_adapter *adapter,
+					       u8 timer)
+{
+	int i;
+
+	for (i = 0; i < adapter->num_rx_queues; i++) {
+		struct igc_ring *ring = adapter->rx_ring[i];
+
+		igc_ptp_enable_tstamp_rxqueue(adapter, ring, timer);
+	}
+}
+
+/**
+ * igc_ptp_set_timestamp_mode - setup hardware for timestamping
+ * @adapter: networking device structure
+ * @config: hwtstamp configuration
+ *
+ * Incoming time stamping has to be configured via the hardware
+ * filters. Not all combinations are supported, in particular event
+ * type has to be specified. Matching the kind of event packet is
+ * not supported, with the exception of "all V2 events regardless of
+ * level 2 or 4".
+ *
+ */
 static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
 				      struct hwtstamp_config *config)
 {
+	struct igc_hw *hw = &adapter->hw;
+	u32 tsync_rx_ctl = IGC_TSYNCRXCTL_ENABLED;
+	u32 tsync_rx_cfg = 0;
+	bool is_l4 = false;
+	bool is_l2 = false;
+	u32 regval;
+
+	/* reserved for future extensions */
+	if (config->flags)
+		return -EINVAL;
+
+	switch (config->rx_filter) {
+	case HWTSTAMP_FILTER_NONE:
+		tsync_rx_ctl = 0;
+		break;
+	case HWTSTAMP_FILTER_PTP_V1_L4_SYNC:
+		tsync_rx_ctl |= IGC_TSYNCRXCTL_TYPE_L4_V1;
+		tsync_rx_cfg = IGC_TSYNCRXCFG_PTP_V1_SYNC_MESSAGE;
+		is_l4 = true;
+		break;
+	case HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ:
+		tsync_rx_ctl |= IGC_TSYNCRXCTL_TYPE_L4_V1;
+		tsync_rx_cfg = IGC_TSYNCRXCFG_PTP_V1_DELAY_REQ_MESSAGE;
+		is_l4 = true;
+		break;
+	case HWTSTAMP_FILTER_PTP_V2_EVENT:
+	case HWTSTAMP_FILTER_PTP_V2_L2_EVENT:
+	case HWTSTAMP_FILTER_PTP_V2_L4_EVENT:
+	case HWTSTAMP_FILTER_PTP_V2_SYNC:
+	case HWTSTAMP_FILTER_PTP_V2_L2_SYNC:
+	case HWTSTAMP_FILTER_PTP_V2_L4_SYNC:
+	case HWTSTAMP_FILTER_PTP_V2_DELAY_REQ:
+	case HWTSTAMP_FILTER_PTP_V2_L2_DELAY_REQ:
+	case HWTSTAMP_FILTER_PTP_V2_L4_DELAY_REQ:
+		tsync_rx_ctl |= IGC_TSYNCRXCTL_TYPE_EVENT_V2;
+		config->rx_filter = HWTSTAMP_FILTER_PTP_V2_EVENT;
+		is_l2 = true;
+		is_l4 = true;
+		break;
+	case HWTSTAMP_FILTER_PTP_V1_L4_EVENT:
+	case HWTSTAMP_FILTER_NTP_ALL:
+	case HWTSTAMP_FILTER_ALL:
+		tsync_rx_ctl |= IGC_TSYNCRXCTL_TYPE_ALL;
+		config->rx_filter = HWTSTAMP_FILTER_ALL;
+		break;
+		/* fall through */
+	default:
+		config->rx_filter = HWTSTAMP_FILTER_NONE;
+		return -ERANGE;
+	}
+
+	/* Per-packet timestamping only works if all packets are
+	 * timestamped, so enable timestamping in all packets as long
+	 * as one rx filter was configured.
+	 */
+	if (tsync_rx_ctl) {
+		tsync_rx_ctl = IGC_TSYNCRXCTL_ENABLED;
+		tsync_rx_ctl |= IGC_TSYNCRXCTL_TYPE_ALL;
+		config->rx_filter = HWTSTAMP_FILTER_ALL;
+		is_l2 = true;
+		is_l4 = true;
+
+		if (hw->mac.type == igc_i225) {
+			regval = rd32(IGC_RXPBS);
+			regval |= IGC_RXPBS_CFG_TS_EN;
+			wr32(IGC_RXPBS, regval);
+
+			/* FIXME: For now, only support retrieving RX
+			 * timestamps from timer 0
+			 */
+			igc_ptp_enable_tstamp_all_rxqueues(adapter, 0);
+		}
+	}
+
+	/* enable/disable RX */
+	regval = rd32(IGC_TSYNCRXCTL);
+	regval &= ~(IGC_TSYNCRXCTL_ENABLED | IGC_TSYNCRXCTL_TYPE_MASK);
+	regval |= tsync_rx_ctl;
+	wr32(IGC_TSYNCRXCTL, regval);
+
+	/* define which PTP packets are time stamped */
+	wr32(IGC_TSYNCRXCFG, tsync_rx_cfg);
+
+	/* define ethertype filter for timestamped packets */
+	if (is_l2)
+		wr32(IGC_ETQF(3),
+		     (IGC_ETQF_FILTER_ENABLE | /* enable filter */
+		     IGC_ETQF_1588 | /* enable timestamping */
+		     ETH_P_1588)); /* 1588 eth protocol type */
+	else
+		wr32(IGC_ETQF(3), 0);
+
+	/* L4 Queue Filter[3]: filter by destination port and protocol */
+	if (is_l4) {
+		u32 ftqf = (IPPROTO_UDP /* UDP */
+			    | IGC_FTQF_VF_BP /* VF not compared */
+			    | IGC_FTQF_1588_TIME_STAMP /* Enable Timestamp */
+			    | IGC_FTQF_MASK); /* mask all inputs */
+		ftqf &= ~IGC_FTQF_MASK_PROTO_BP; /* enable protocol check */
+
+		wr32(IGC_IMIR(3), htons(PTP_EV_PORT));
+		wr32(IGC_IMIREXT(3),
+		     (IGC_IMIREXT_SIZE_BP | IGC_IMIREXT_CTRL_BP));
+		wr32(IGC_FTQF(3), ftqf);
+	} else {
+		wr32(IGC_FTQF(3), IGC_FTQF_MASK);
+	}
+	wrfl();
+
+	/* clear TX/RX time stamp registers, just to be sure */
+	regval = rd32(IGC_TXSTMPL);
+	regval = rd32(IGC_TXSTMPH);
+	regval = rd32(IGC_RXSTMPL);
+	regval = rd32(IGC_RXSTMPH);
+
 	return 0;
 }
 
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index b5c72430a18b..c82111051898 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -222,6 +222,9 @@
 #define IGC_IMIREXT(_i)	(0x05AA0 + ((_i) * 4))  /* Immediate INTR Ext*/
 
 #define IGC_FTQF(_n)	(0x059E0 + (4 * (_n)))  /* 5-tuple Queue Fltr */
+
+#define IGC_RXPBS	0x02404  /* Rx Packet Buffer Size - RW */
+
 /* System Time Registers */
 #define IGC_SYSTIML	0x0B600  /* System time register Low - RO */
 #define IGC_SYSTIMH	0x0B604  /* System time register High - RO */
-- 
2.24.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
