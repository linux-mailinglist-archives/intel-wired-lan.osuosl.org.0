Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 694DB172D2F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Feb 2020 01:25:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1862F86BE0;
	Fri, 28 Feb 2020 00:25:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lgap-wbtSr7B; Fri, 28 Feb 2020 00:25:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 560DE86D03;
	Fri, 28 Feb 2020 00:25:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 38D341BF861
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2020 00:25:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 30F6A86BE0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2020 00:25:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 84AbnU-AqJo0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Feb 2020 00:25:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BF8F486D78
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2020 00:25:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 16:25:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,493,1574150400"; d="scan'208";a="437235427"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.160.241])
 by fmsmga005.fm.intel.com with ESMTP; 27 Feb 2020 16:25:15 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 28 Feb 2020 02:25:15 +0200
Message-Id: <20200228002515.31650-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove forward declaration
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

Move igc_adapter and igc_ring structures up to avoid
forward declaration
It is not necessary to forward declare these structures

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h | 391 +++++++++++++++++------------------
 1 file changed, 194 insertions(+), 197 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 5e36822de5ec..0d4ffbb74214 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -19,8 +19,200 @@
 /* forward declaration */
 void igc_set_ethtool_ops(struct net_device *);
 
-struct igc_adapter;
-struct igc_ring;
+/* Transmit and receive queues */
+#define IGC_MAX_RX_QUEUES		4
+#define IGC_MAX_TX_QUEUES		4
+
+#define MAX_Q_VECTORS			8
+#define MAX_STD_JUMBO_FRAME_SIZE	9216
+
+#define MAX_ETYPE_FILTER		(4 - 1)
+#define IGC_RETA_SIZE			128
+
+struct igc_tx_queue_stats {
+	u64 packets;
+	u64 bytes;
+	u64 restart_queue;
+	u64 restart_queue2;
+};
+
+struct igc_rx_queue_stats {
+	u64 packets;
+	u64 bytes;
+	u64 drops;
+	u64 csum_err;
+	u64 alloc_failed;
+};
+
+struct igc_rx_packet_stats {
+	u64 ipv4_packets;      /* IPv4 headers processed */
+	u64 ipv4e_packets;     /* IPv4E headers with extensions processed */
+	u64 ipv6_packets;      /* IPv6 headers processed */
+	u64 ipv6e_packets;     /* IPv6E headers with extensions processed */
+	u64 tcp_packets;       /* TCP headers processed */
+	u64 udp_packets;       /* UDP headers processed */
+	u64 sctp_packets;      /* SCTP headers processed */
+	u64 nfs_packets;       /* NFS headers processe */
+	u64 other_packets;
+};
+
+struct igc_ring_container {
+	struct igc_ring *ring;          /* pointer to linked list of rings */
+	unsigned int total_bytes;       /* total bytes processed this int */
+	unsigned int total_packets;     /* total packets processed this int */
+	u16 work_limit;                 /* total work allowed per interrupt */
+	u8 count;                       /* total number of rings in vector */
+	u8 itr;                         /* current ITR setting for ring */
+};
+
+struct igc_ring {
+	struct igc_q_vector *q_vector;  /* backlink to q_vector */
+	struct net_device *netdev;      /* back pointer to net_device */
+	struct device *dev;             /* device for dma mapping */
+	union {                         /* array of buffer info structs */
+		struct igc_tx_buffer *tx_buffer_info;
+		struct igc_rx_buffer *rx_buffer_info;
+	};
+	void *desc;                     /* descriptor ring memory */
+	unsigned long flags;            /* ring specific flags */
+	void __iomem *tail;             /* pointer to ring tail register */
+	dma_addr_t dma;                 /* phys address of the ring */
+	unsigned int size;              /* length of desc. ring in bytes */
+
+	u16 count;                      /* number of desc. in the ring */
+	u8 queue_index;                 /* logical index of the ring*/
+	u8 reg_idx;                     /* physical index of the ring */
+	bool launchtime_enable;		/* true if LaunchTime is enabled */
+
+	u32 start_time;
+	u32 end_time;
+
+	/* everything past this point are written often */
+	u16 next_to_clean;
+	u16 next_to_use;
+	u16 next_to_alloc;
+
+	union {
+		/* TX */
+		struct {
+			struct igc_tx_queue_stats tx_stats;
+			struct u64_stats_sync tx_syncp;
+			struct u64_stats_sync tx_syncp2;
+		};
+		/* RX */
+		struct {
+			struct igc_rx_queue_stats rx_stats;
+			struct igc_rx_packet_stats pkt_stats;
+			struct u64_stats_sync rx_syncp;
+			struct sk_buff *skb;
+		};
+	};
+} ____cacheline_internodealigned_in_smp;
+
+/* Board specific private data structure */
+struct igc_adapter {
+	struct net_device *netdev;
+
+	unsigned long state;
+	unsigned int flags;
+	unsigned int num_q_vectors;
+
+	struct msix_entry *msix_entries;
+
+	/* TX */
+	u16 tx_work_limit;
+	u32 tx_timeout_count;
+	int num_tx_queues;
+	struct igc_ring *tx_ring[IGC_MAX_TX_QUEUES];
+
+	/* RX */
+	int num_rx_queues;
+	struct igc_ring *rx_ring[IGC_MAX_RX_QUEUES];
+
+	struct timer_list watchdog_timer;
+	struct timer_list dma_err_timer;
+	struct timer_list phy_info_timer;
+
+	u32 wol;
+	u32 en_mng_pt;
+	u16 link_speed;
+	u16 link_duplex;
+
+	u8 port_num;
+
+	u8 __iomem *io_addr;
+	/* Interrupt Throttle Rate */
+	u32 rx_itr_setting;
+	u32 tx_itr_setting;
+
+	struct work_struct reset_task;
+	struct work_struct watchdog_task;
+	struct work_struct dma_err_task;
+	bool fc_autoneg;
+
+	u8 tx_timeout_factor;
+
+	int msg_enable;
+	u32 max_frame_size;
+	u32 min_frame_size;
+
+	ktime_t base_time;
+	ktime_t cycle_time;
+
+	/* OS defined structs */
+	struct pci_dev *pdev;
+	/* lock for statistics */
+	spinlock_t stats64_lock;
+	struct rtnl_link_stats64 stats64;
+
+	/* structs defined in igc_hw.h */
+	struct igc_hw hw;
+	struct igc_hw_stats stats;
+
+	struct igc_q_vector *q_vector[MAX_Q_VECTORS];
+	u32 eims_enable_mask;
+	u32 eims_other;
+
+	u16 tx_ring_count;
+	u16 rx_ring_count;
+
+	u32 tx_hwtstamp_timeouts;
+	u32 tx_hwtstamp_skipped;
+	u32 rx_hwtstamp_cleared;
+
+	u32 rss_queues;
+	u32 rss_indir_tbl_init;
+
+	/* RX network flow classification support */
+	struct hlist_head nfc_filter_list;
+	struct hlist_head cls_flower_list;
+	unsigned int nfc_filter_count;
+
+	/* lock for RX network flow classification filter */
+	spinlock_t nfc_lock;
+	bool etype_bitmap[MAX_ETYPE_FILTER];
+
+	struct igc_mac_addr *mac_table;
+
+	u8 rss_indir_tbl[IGC_RETA_SIZE];
+
+	unsigned long link_check_timeout;
+	struct igc_info ei;
+
+	struct ptp_clock *ptp_clock;
+	struct ptp_clock_info ptp_caps;
+	struct work_struct ptp_tx_work;
+	struct sk_buff *ptp_tx_skb;
+	struct hwtstamp_config tstamp_config;
+	unsigned long ptp_tx_start;
+	unsigned long last_rx_ptp_check;
+	unsigned long last_rx_timestamp;
+	unsigned int ptp_flags;
+	/* System time value lock */
+	spinlock_t tmreg_lock;
+	struct cyclecounter cc;
+	struct timecounter tc;
+};
 
 void igc_up(struct igc_adapter *adapter);
 void igc_down(struct igc_adapter *adapter);
@@ -50,7 +242,6 @@ extern char igc_driver_name[];
 extern char igc_driver_version[];
 
 #define IGC_REGS_LEN			740
-#define IGC_RETA_SIZE			128
 
 /* flags controlling PTP/1588 function */
 #define IGC_PTP_ENABLED		BIT(0)
@@ -100,13 +291,6 @@ extern char igc_driver_version[];
 #define IGC_MIN_RXD		80
 #define IGC_MAX_RXD		4096
 
-/* Transmit and receive queues */
-#define IGC_MAX_RX_QUEUES		4
-#define IGC_MAX_TX_QUEUES		4
-
-#define MAX_Q_VECTORS			8
-#define MAX_STD_JUMBO_FRAME_SIZE	9216
-
 /* Supported Rx Buffer Sizes */
 #define IGC_RXBUFFER_256		256
 #define IGC_RXBUFFER_2048		2048
@@ -233,86 +417,6 @@ struct igc_rx_buffer {
 	__u16 pagecnt_bias;
 };
 
-struct igc_tx_queue_stats {
-	u64 packets;
-	u64 bytes;
-	u64 restart_queue;
-	u64 restart_queue2;
-};
-
-struct igc_rx_queue_stats {
-	u64 packets;
-	u64 bytes;
-	u64 drops;
-	u64 csum_err;
-	u64 alloc_failed;
-};
-
-struct igc_rx_packet_stats {
-	u64 ipv4_packets;      /* IPv4 headers processed */
-	u64 ipv4e_packets;     /* IPv4E headers with extensions processed */
-	u64 ipv6_packets;      /* IPv6 headers processed */
-	u64 ipv6e_packets;     /* IPv6E headers with extensions processed */
-	u64 tcp_packets;       /* TCP headers processed */
-	u64 udp_packets;       /* UDP headers processed */
-	u64 sctp_packets;      /* SCTP headers processed */
-	u64 nfs_packets;       /* NFS headers processe */
-	u64 other_packets;
-};
-
-struct igc_ring_container {
-	struct igc_ring *ring;          /* pointer to linked list of rings */
-	unsigned int total_bytes;       /* total bytes processed this int */
-	unsigned int total_packets;     /* total packets processed this int */
-	u16 work_limit;                 /* total work allowed per interrupt */
-	u8 count;                       /* total number of rings in vector */
-	u8 itr;                         /* current ITR setting for ring */
-};
-
-struct igc_ring {
-	struct igc_q_vector *q_vector;  /* backlink to q_vector */
-	struct net_device *netdev;      /* back pointer to net_device */
-	struct device *dev;             /* device for dma mapping */
-	union {                         /* array of buffer info structs */
-		struct igc_tx_buffer *tx_buffer_info;
-		struct igc_rx_buffer *rx_buffer_info;
-	};
-	void *desc;                     /* descriptor ring memory */
-	unsigned long flags;            /* ring specific flags */
-	void __iomem *tail;             /* pointer to ring tail register */
-	dma_addr_t dma;                 /* phys address of the ring */
-	unsigned int size;              /* length of desc. ring in bytes */
-
-	u16 count;                      /* number of desc. in the ring */
-	u8 queue_index;                 /* logical index of the ring*/
-	u8 reg_idx;                     /* physical index of the ring */
-	bool launchtime_enable;		/* true if LaunchTime is enabled */
-
-	u32 start_time;
-	u32 end_time;
-
-	/* everything past this point are written often */
-	u16 next_to_clean;
-	u16 next_to_use;
-	u16 next_to_alloc;
-
-	union {
-		/* TX */
-		struct {
-			struct igc_tx_queue_stats tx_stats;
-			struct u64_stats_sync tx_syncp;
-			struct u64_stats_sync tx_syncp2;
-		};
-		/* RX */
-		struct {
-			struct igc_rx_queue_stats rx_stats;
-			struct igc_rx_packet_stats pkt_stats;
-			struct u64_stats_sync rx_syncp;
-			struct sk_buff *skb;
-		};
-	};
-} ____cacheline_internodealigned_in_smp;
-
 struct igc_q_vector {
 	struct igc_adapter *adapter;    /* backlink */
 	void __iomem *itr_register;
@@ -333,8 +437,6 @@ struct igc_q_vector {
 	struct igc_ring ring[] ____cacheline_internodealigned_in_smp;
 };
 
-#define MAX_ETYPE_FILTER		(4 - 1)
-
 enum igc_filter_match_flags {
 	IGC_FILTER_FLAG_ETHER_TYPE =	0x1,
 	IGC_FILTER_FLAG_VLAN_TCI   =	0x2,
@@ -378,111 +480,6 @@ struct igc_mac_addr {
 
 #define IGC_MAX_RXNFC_FILTERS		16
 
-/* Board specific private data structure */
-struct igc_adapter {
-	struct net_device *netdev;
-
-	unsigned long state;
-	unsigned int flags;
-	unsigned int num_q_vectors;
-
-	struct msix_entry *msix_entries;
-
-	/* TX */
-	u16 tx_work_limit;
-	u32 tx_timeout_count;
-	int num_tx_queues;
-	struct igc_ring *tx_ring[IGC_MAX_TX_QUEUES];
-
-	/* RX */
-	int num_rx_queues;
-	struct igc_ring *rx_ring[IGC_MAX_RX_QUEUES];
-
-	struct timer_list watchdog_timer;
-	struct timer_list dma_err_timer;
-	struct timer_list phy_info_timer;
-
-	u32 wol;
-	u32 en_mng_pt;
-	u16 link_speed;
-	u16 link_duplex;
-
-	u8 port_num;
-
-	u8 __iomem *io_addr;
-	/* Interrupt Throttle Rate */
-	u32 rx_itr_setting;
-	u32 tx_itr_setting;
-
-	struct work_struct reset_task;
-	struct work_struct watchdog_task;
-	struct work_struct dma_err_task;
-	bool fc_autoneg;
-
-	u8 tx_timeout_factor;
-
-	int msg_enable;
-	u32 max_frame_size;
-	u32 min_frame_size;
-
-	ktime_t base_time;
-	ktime_t cycle_time;
-
-	/* OS defined structs */
-	struct pci_dev *pdev;
-	/* lock for statistics */
-	spinlock_t stats64_lock;
-	struct rtnl_link_stats64 stats64;
-
-	/* structs defined in igc_hw.h */
-	struct igc_hw hw;
-	struct igc_hw_stats stats;
-
-	struct igc_q_vector *q_vector[MAX_Q_VECTORS];
-	u32 eims_enable_mask;
-	u32 eims_other;
-
-	u16 tx_ring_count;
-	u16 rx_ring_count;
-
-	u32 tx_hwtstamp_timeouts;
-	u32 tx_hwtstamp_skipped;
-	u32 rx_hwtstamp_cleared;
-
-	u32 rss_queues;
-	u32 rss_indir_tbl_init;
-
-	/* RX network flow classification support */
-	struct hlist_head nfc_filter_list;
-	struct hlist_head cls_flower_list;
-	unsigned int nfc_filter_count;
-
-	/* lock for RX network flow classification filter */
-	spinlock_t nfc_lock;
-	bool etype_bitmap[MAX_ETYPE_FILTER];
-
-	struct igc_mac_addr *mac_table;
-
-	u8 rss_indir_tbl[IGC_RETA_SIZE];
-
-	unsigned long link_check_timeout;
-	struct igc_info ei;
-
-	struct ptp_clock *ptp_clock;
-	struct ptp_clock_info ptp_caps;
-	struct work_struct ptp_tx_work;
-	struct sk_buff *ptp_tx_skb;
-	struct hwtstamp_config tstamp_config;
-	unsigned long ptp_tx_start;
-	unsigned long last_rx_ptp_check;
-	unsigned long last_rx_timestamp;
-	unsigned int ptp_flags;
-	/* System time value lock */
-	spinlock_t tmreg_lock;
-	struct cyclecounter cc;
-	struct timecounter tc;
-};
-
 /* igc_desc_unused - calculate if we have unused descriptors */
 static inline u16 igc_desc_unused(const struct igc_ring *ring)
 {
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
