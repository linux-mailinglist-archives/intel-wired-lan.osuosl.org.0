Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BD475B37002
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Aug 2025 18:21:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8BB046068B;
	Tue, 26 Aug 2025 16:21:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FcEzWtEQh-iZ; Tue, 26 Aug 2025 16:21:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5E4E60687
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756225274;
	bh=WT6PIYwQwmCllHQGspOff4AzeSwAC8zjzupmxEIyJLk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OLqw7KieLxC3v1Jwd7qFUtT+wmBJD4a4bpzqEfduJ57iaq8q7rOjN87OmGGl/0puC
	 JKsECrrQ+YgCBt+KxkZ63cb9Q6sSFPD0MSzrVybOae80eCExQNE+k/B1/hBAJ8CrbO
	 K0AoPaBX0rKa/Z+1AZw2mh6WXSJUhk75eIUmHnq1sI+r5XxLvEgAnYZu9yFiEaiTPs
	 rDFtCmqQK9Ns+yAXhdHLX3ApXIcVlpt0VGqctmN0OUGk0T1+GhGF7Tx8q/m2Npd2Kw
	 giq3V1Exfmc6Mh8TaoK0RLqPnzSOzJO7poeCz6wYo0Gmp4zxc2vVfBy7Pwsk5qQBFW
	 33z8fUMEMJW0Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5E4E60687;
	Tue, 26 Aug 2025 16:21:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 43B7BB0B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:21:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 765A340080
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:21:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W4385pzyDMbd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Aug 2025 16:21:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CF4EC4007E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF4EC4007E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CF4EC4007E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:21:10 +0000 (UTC)
X-CSE-ConnectionGUID: J5lIUwkOSw2yu/WFiYd5/g==
X-CSE-MsgGUID: P/eeWbiFT/KYLtwXhI61fA==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="46045023"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="46045023"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 09:14:03 -0700
X-CSE-ConnectionGUID: gPUcz4OIQgqMtgyr5s9AQg==
X-CSE-MsgGUID: QXERqCi5Q3KpQA46t+V47g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="200562369"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa002.jf.intel.com with ESMTP; 26 Aug 2025 09:13:58 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Simon Horman <horms@kernel.org>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, bpf@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Tue, 26 Aug 2025 17:55:02 +0200
Message-ID: <20250826155507.2138401-9-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250826155507.2138401-1-aleksander.lobakin@intel.com>
References: <20250826155507.2138401-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756225271; x=1787761271;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sm+tJkmg8Gsu0MQDUj8hYeRO5XjkVkxbExF9YLCeCBw=;
 b=SnMSkKCnBxnu4uFJUqPTxaYDRnrB4ISwsMaIsejN6F+wDtQrnrWWhlz7
 9EsuiywLjZeY5vzNkMUMrkO+Kzj5N+g57Gg6VCdsxshFZVrDN8XeAP5rI
 BJ7tXY2BV8MDd82TEk7wLphu2Gp9Qv0TNOgsGdZcJb5aeIZ//baMpUGmb
 4C32rfHfhbz/sQGlVY763gjR5BmCE9JPqDYwHAqSMjhEiAYmarEo2XaIz
 3OXMFxQ7woeURLq1arFdIyfCYR3VTjiXz+PKcRuJSU+DU9wbe+GUH01Jz
 +av8k8IZXwfWm2ZD+ZIWieBUwwXE4zbrSSEe5wqU2lvFGVXnNKUBuJH6p
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SnMSkKCn
Subject: [Intel-wired-lan] [PATCH iwl-next v5 08/13] idpf: prepare
 structures to support XDP
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Kubiak <michal.kubiak@intel.com>

Extend basic structures of the driver (e.g. 'idpf_vport', 'idpf_*_queue',
'idpf_vport_user_config_data') by adding members necessary to support XDP.
Add extra XDP Tx queues needed to support XDP_TX and XDP_REDIRECT actions
without interfering with regular Tx traffic.
Also add functions dedicated to support XDP initialization for Rx and
Tx queues and call those functions from the existing algorithms of
queues configuration.

Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
Co-developed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/Kconfig       |   2 +-
 drivers/net/ethernet/intel/idpf/Makefile      |   2 +
 drivers/net/ethernet/intel/idpf/idpf.h        |  16 ++
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   | 100 +++++++----
 drivers/net/ethernet/intel/idpf/xdp.h         |  17 ++
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  21 ++-
 drivers/net/ethernet/intel/idpf/idpf_main.c   |   1 +
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |   8 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 106 ++++++++---
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  25 +--
 drivers/net/ethernet/intel/idpf/xdp.c         | 168 ++++++++++++++++++
 11 files changed, 381 insertions(+), 85 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/idpf/xdp.h
 create mode 100644 drivers/net/ethernet/intel/idpf/xdp.c

diff --git a/drivers/net/ethernet/intel/idpf/Kconfig b/drivers/net/ethernet/intel/idpf/Kconfig
index 2c359a8551c7..adab2154125b 100644
--- a/drivers/net/ethernet/intel/idpf/Kconfig
+++ b/drivers/net/ethernet/intel/idpf/Kconfig
@@ -6,7 +6,7 @@ config IDPF
 	depends on PCI_MSI
 	depends on PTP_1588_CLOCK_OPTIONAL
 	select DIMLIB
-	select LIBETH
+	select LIBETH_XDP
 	help
 	  This driver supports Intel(R) Infrastructure Data Path Function
 	  devices.
diff --git a/drivers/net/ethernet/intel/idpf/Makefile b/drivers/net/ethernet/intel/idpf/Makefile
index 4ef4b2b5e37a..0840c3bef371 100644
--- a/drivers/net/ethernet/intel/idpf/Makefile
+++ b/drivers/net/ethernet/intel/idpf/Makefile
@@ -21,3 +21,5 @@ idpf-$(CONFIG_IDPF_SINGLEQ)	+= idpf_singleq_txrx.o
 
 idpf-$(CONFIG_PTP_1588_CLOCK)	+= idpf_ptp.o
 idpf-$(CONFIG_PTP_1588_CLOCK)	+= idpf_virtchnl_ptp.o
+
+idpf-y				+= xdp.o
diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 2bfdf0ae24cf..6e79fa8556e9 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -287,6 +287,10 @@ struct idpf_fsteer_fltr {
  * @txq_model: Split queue or single queue queuing model
  * @txqs: Used only in hotpath to get to the right queue very fast
  * @crc_enable: Enable CRC insertion offload
+ * @xdpsq_share: whether XDPSQ sharing is enabled
+ * @num_xdp_txq: number of XDPSQs
+ * @xdp_txq_offset: index of the first XDPSQ (== number of regular SQs)
+ * @xdp_prog: installed XDP program
  * @num_rxq: Number of allocated RX queues
  * @num_bufq: Number of allocated buffer queues
  * @rxq_desc_count: RX queue descriptor count. *MUST* have enough descriptors
@@ -337,6 +341,11 @@ struct idpf_vport {
 	struct idpf_tx_queue **txqs;
 	bool crc_enable;
 
+	bool xdpsq_share;
+	u16 num_xdp_txq;
+	u16 xdp_txq_offset;
+	struct bpf_prog *xdp_prog;
+
 	u16 num_rxq;
 	u16 num_bufq;
 	u32 rxq_desc_count;
@@ -438,6 +447,7 @@ struct idpf_q_coalesce {
  *		      ethtool
  * @num_req_rxq_desc: Number of user requested RX queue descriptors through
  *		      ethtool
+ * @xdp_prog: requested XDP program to install
  * @user_flags: User toggled config flags
  * @mac_filter_list: List of MAC filters
  * @num_fsteer_fltrs: number of flow steering filters
@@ -452,6 +462,7 @@ struct idpf_vport_user_config_data {
 	u16 num_req_rx_qs;
 	u32 num_req_txq_desc;
 	u32 num_req_rxq_desc;
+	struct bpf_prog *xdp_prog;
 	DECLARE_BITMAP(user_flags, __IDPF_USER_FLAGS_NBITS);
 	struct list_head mac_filter_list;
 	u32 num_fsteer_fltrs;
@@ -681,6 +692,11 @@ static inline int idpf_is_queue_model_split(u16 q_model)
 	       q_model == VIRTCHNL2_QUEUE_MODEL_SPLIT;
 }
 
+static inline bool idpf_xdp_enabled(const struct idpf_vport *vport)
+{
+	return vport->adapter && vport->xdp_prog;
+}
+
 #define idpf_is_cap_ena(adapter, field, flag) \
 	idpf_is_capability_ena(adapter, false, field, flag)
 #define idpf_is_cap_ena_all(adapter, field, flag) \
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index f8e579dab21a..6bc204b68d9e 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -7,8 +7,10 @@
 #include <linux/dim.h>
 
 #include <net/libeth/cache.h>
-#include <net/tcp.h>
+#include <net/libeth/types.h>
 #include <net/netdev_queues.h>
+#include <net/tcp.h>
+#include <net/xdp.h>
 
 #include "idpf_lan_txrx.h"
 #include "virtchnl2_lan_desc.h"
@@ -282,6 +284,7 @@ struct idpf_ptype_state {
  * @__IDPF_Q_PTP: indicates whether the Rx timestamping is enabled for the
  *		  queue
  * @__IDPF_Q_NOIRQ: queue is polling-driven and has no interrupt
+ * @__IDPF_Q_XDP: this is an XDP queue
  * @__IDPF_Q_FLAGS_NBITS: Must be last
  */
 enum idpf_queue_flags_t {
@@ -293,6 +296,7 @@ enum idpf_queue_flags_t {
 	__IDPF_Q_HSPLIT_EN,
 	__IDPF_Q_PTP,
 	__IDPF_Q_NOIRQ,
+	__IDPF_Q_XDP,
 
 	__IDPF_Q_FLAGS_NBITS,
 };
@@ -465,19 +469,21 @@ struct idpf_tx_queue_stats {
  * @napi: NAPI instance corresponding to this queue (splitq)
  * @rx_buf: See struct &libeth_fqe
  * @pp: Page pool pointer in singleq mode
- * @netdev: &net_device corresponding to this queue
  * @tail: Tail offset. Used for both queue models single and split.
  * @flags: See enum idpf_queue_flags_t
  * @idx: For RX queue, it is used to index to total RX queue across groups and
  *	 used for skb reporting.
  * @desc_count: Number of descriptors
+ * @num_xdp_txq: total number of XDP Tx queues
+ * @xdpsqs: shortcut for XDP Tx queues array
  * @rxdids: Supported RX descriptor ids
+ * @truesize: data buffer truesize in singleq
  * @rx_ptype_lkup: LUT of Rx ptypes
+ * @xdp_rxq: XDP queue info
  * @next_to_use: Next descriptor to use
  * @next_to_clean: Next descriptor to clean
  * @next_to_alloc: RX buffer to allocate at
  * @skb: Pointer to the skb
- * @truesize: data buffer truesize in singleq
  * @cached_phc_time: Cached PHC time for the Rx queue
  * @stats_sync: See struct u64_stats_sync
  * @q_stats: See union idpf_rx_queue_stats
@@ -508,15 +514,23 @@ struct idpf_rx_queue {
 			struct page_pool *pp;
 		};
 	};
-	struct net_device *netdev;
 	void __iomem *tail;
 
 	DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
 	u16 idx;
 	u16 desc_count;
 
-	u32 rxdids;
+	u32 num_xdp_txq;
+	union {
+		struct idpf_tx_queue **xdpsqs;
+		struct {
+			u32 rxdids;
+			u32 truesize;
+		};
+	};
 	const struct libeth_rx_pt *rx_ptype_lkup;
+
+	struct xdp_rxq_info xdp_rxq;
 	__cacheline_group_end_aligned(read_mostly);
 
 	__cacheline_group_begin_aligned(read_write);
@@ -525,7 +539,6 @@ struct idpf_rx_queue {
 	u16 next_to_alloc;
 
 	struct sk_buff *skb;
-	u32 truesize;
 	u64 cached_phc_time;
 
 	struct u64_stats_sync stats_sync;
@@ -545,8 +558,11 @@ struct idpf_rx_queue {
 	u16 rx_max_pkt_size;
 	__cacheline_group_end_aligned(cold);
 };
-libeth_cacheline_set_assert(struct idpf_rx_queue, 64,
-			    88 + sizeof(struct u64_stats_sync),
+libeth_cacheline_set_assert(struct idpf_rx_queue,
+			    ALIGN(64, __alignof(struct xdp_rxq_info)) +
+			    sizeof(struct xdp_rxq_info),
+			    72 + offsetof(struct idpf_rx_queue, q_stats) -
+			    offsetofend(struct idpf_rx_queue, skb),
 			    32);
 
 /**
@@ -558,6 +574,7 @@ libeth_cacheline_set_assert(struct idpf_rx_queue, 64,
  * @desc_ring: virtual descriptor ring address
  * @tx_buf: See struct idpf_tx_buf
  * @txq_grp: See struct idpf_txq_group
+ * @complq: corresponding completion queue in XDP mode
  * @dev: Device back pointer for DMA mapping
  * @tail: Tail offset. Used for both queue models single and split
  * @flags: See enum idpf_queue_flags_t
@@ -565,26 +582,7 @@ libeth_cacheline_set_assert(struct idpf_rx_queue, 64,
  *	 hot path TX pointers stored in vport. Used in both singleq/splitq.
  * @desc_count: Number of descriptors
  * @tx_min_pkt_len: Min supported packet length
- * @compl_tag_gen_s: Completion tag generation bit
- *	The format of the completion tag will change based on the TXQ
- *	descriptor ring size so that we can maintain roughly the same level
- *	of "uniqueness" across all descriptor sizes. For example, if the
- *	TXQ descriptor ring size is 64 (the minimum size supported), the
- *	completion tag will be formatted as below:
- *	15                 6 5         0
- *	--------------------------------
- *	|    GEN=0-1023     |IDX = 0-63|
- *	--------------------------------
- *
- *	This gives us 64*1024 = 65536 possible unique values. Similarly, if
- *	the TXQ descriptor ring size is 8160 (the maximum size supported),
- *	the completion tag will be formatted as below:
- *	15 13 12                       0
- *	--------------------------------
- *	|GEN |       IDX = 0-8159      |
- *	--------------------------------
- *
- *	This gives us 8*8160 = 65280 possible unique values.
+ * @thresh: XDP queue cleaning threshold
  * @netdev: &net_device corresponding to this queue
  * @next_to_use: Next descriptor to use
  * @next_to_clean: Next descriptor to clean
@@ -601,6 +599,10 @@ libeth_cacheline_set_assert(struct idpf_rx_queue, 64,
  * @clean_budget: singleq only, queue cleaning budget
  * @cleaned_pkts: Number of packets cleaned for the above said case
  * @refillq: Pointer to refill queue
+ * @pending: number of pending descriptors to send in QB
+ * @xdp_tx: number of pending &xdp_buff or &xdp_frame buffers
+ * @timer: timer for XDP Tx queue cleanup
+ * @xdp_lock: lock for XDP Tx queues sharing
  * @cached_tstamp_caps: Tx timestamp capabilities negotiated with the CP
  * @tstamp_task: Work that handles Tx timestamp read
  * @stats_sync: See struct u64_stats_sync
@@ -622,7 +624,10 @@ struct idpf_tx_queue {
 		void *desc_ring;
 	};
 	struct libeth_sqe *tx_buf;
-	struct idpf_txq_group *txq_grp;
+	union {
+		struct idpf_txq_group *txq_grp;
+		struct idpf_compl_queue *complq;
+	};
 	struct device *dev;
 	void __iomem *tail;
 
@@ -630,7 +635,10 @@ struct idpf_tx_queue {
 	u16 idx;
 	u16 desc_count;
 
-	u16 tx_min_pkt_len;
+	union {
+		u16 tx_min_pkt_len;
+		u32 thresh;
+	};
 
 	struct net_device *netdev;
 	__cacheline_group_end_aligned(read_mostly);
@@ -638,16 +646,28 @@ struct idpf_tx_queue {
 	__cacheline_group_begin_aligned(read_write);
 	u16 next_to_use;
 	u16 next_to_clean;
-	u16 last_re;
-	u16 tx_max_bufs;
 
 	union {
-		u32 cleaned_bytes;
-		u32 clean_budget;
-	};
-	u16 cleaned_pkts;
+		struct {
+			u16 last_re;
+			u16 tx_max_bufs;
 
-	struct idpf_sw_queue *refillq;
+			union {
+				u32 cleaned_bytes;
+				u32 clean_budget;
+			};
+			u16 cleaned_pkts;
+
+			struct idpf_sw_queue *refillq;
+		};
+		struct {
+			u32 pending;
+			u32 xdp_tx;
+
+			struct libeth_xdpsq_timer *timer;
+			struct libeth_xdpsq_lock xdp_lock;
+		};
+	};
 
 	struct idpf_ptp_vport_tx_tstamp_caps *cached_tstamp_caps;
 	struct work_struct *tstamp_task;
@@ -666,7 +686,11 @@ struct idpf_tx_queue {
 	__cacheline_group_end_aligned(cold);
 };
 libeth_cacheline_set_assert(struct idpf_tx_queue, 64,
-			    104 + sizeof(struct u64_stats_sync),
+			    104 +
+			    offsetof(struct idpf_tx_queue, cached_tstamp_caps) -
+			    offsetofend(struct idpf_tx_queue, timer) +
+			    offsetof(struct idpf_tx_queue, q_stats) -
+			    offsetofend(struct idpf_tx_queue, tstamp_task),
 			    32);
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/xdp.h b/drivers/net/ethernet/intel/idpf/xdp.h
new file mode 100644
index 000000000000..cf6823b24ba5
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/xdp.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2025 Intel Corporation */
+
+#ifndef _IDPF_XDP_H_
+#define _IDPF_XDP_H_
+
+#include <linux/types.h>
+
+struct idpf_vport;
+
+int idpf_xdp_rxq_info_init_all(const struct idpf_vport *vport);
+void idpf_xdp_rxq_info_deinit_all(const struct idpf_vport *vport);
+
+int idpf_xdpsqs_get(const struct idpf_vport *vport);
+void idpf_xdpsqs_put(const struct idpf_vport *vport);
+
+#endif /* _IDPF_XDP_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index baf1f9b196d5..0427f2e86fb8 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -4,6 +4,7 @@
 #include "idpf.h"
 #include "idpf_virtchnl.h"
 #include "idpf_ptp.h"
+#include "xdp.h"
 
 static const struct net_device_ops idpf_netdev_ops;
 
@@ -914,6 +915,7 @@ static void idpf_vport_stop(struct idpf_vport *vport, bool rtnl)
 
 	vport->link_up = false;
 	idpf_vport_intr_deinit(vport);
+	idpf_xdp_rxq_info_deinit_all(vport);
 	idpf_vport_queues_rel(vport);
 	idpf_vport_intr_rel(vport);
 	np->state = __IDPF_VPORT_DOWN;
@@ -1316,13 +1318,13 @@ static void idpf_restore_features(struct idpf_vport *vport)
  */
 static int idpf_set_real_num_queues(struct idpf_vport *vport)
 {
-	int err;
+	int err, txq = vport->num_txq - vport->num_xdp_txq;
 
 	err = netif_set_real_num_rx_queues(vport->netdev, vport->num_rxq);
 	if (err)
 		return err;
 
-	return netif_set_real_num_tx_queues(vport->netdev, vport->num_txq);
+	return netif_set_real_num_tx_queues(vport->netdev, txq);
 }
 
 /**
@@ -1435,20 +1437,29 @@ static int idpf_vport_open(struct idpf_vport *vport, bool rtnl)
 	}
 
 	idpf_rx_init_buf_tail(vport);
+
+	err = idpf_xdp_rxq_info_init_all(vport);
+	if (err) {
+		netdev_err(vport->netdev,
+			   "Failed to initialize XDP RxQ info for vport %u: %pe\n",
+			   vport->vport_id, ERR_PTR(err));
+		goto intr_deinit;
+	}
+
 	idpf_vport_intr_ena(vport);
 
 	err = idpf_send_config_queues_msg(vport);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to configure queues for vport %u, %d\n",
 			vport->vport_id, err);
-		goto intr_deinit;
+		goto rxq_deinit;
 	}
 
 	err = idpf_send_map_unmap_queue_vector_msg(vport, true);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to map queue vectors for vport %u: %d\n",
 			vport->vport_id, err);
-		goto intr_deinit;
+		goto rxq_deinit;
 	}
 
 	err = idpf_send_enable_queues_msg(vport);
@@ -1499,6 +1510,8 @@ static int idpf_vport_open(struct idpf_vport *vport, bool rtnl)
 	idpf_send_disable_queues_msg(vport);
 unmap_queue_vectors:
 	idpf_send_map_unmap_queue_vector_msg(vport, false);
+rxq_deinit:
+	idpf_xdp_rxq_info_deinit_all(vport);
 intr_deinit:
 	idpf_vport_intr_deinit(vport);
 queues_rel:
diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index dfe9126f1f4a..8c46481d2e1f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -9,6 +9,7 @@
 
 MODULE_DESCRIPTION(DRV_SUMMARY);
 MODULE_IMPORT_NS("LIBETH");
+MODULE_IMPORT_NS("LIBETH_XDP");
 MODULE_LICENSE("GPL");
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index b19b462e0bb6..178c2f3825e3 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -655,7 +655,7 @@ static void idpf_rx_singleq_csum(struct idpf_rx_queue *rxq,
 	bool ipv4, ipv6;
 
 	/* check if Rx checksum is enabled */
-	if (!libeth_rx_pt_has_checksum(rxq->netdev, decoded))
+	if (!libeth_rx_pt_has_checksum(rxq->xdp_rxq.dev, decoded))
 		return;
 
 	/* check if HW has decoded the packet and checksum */
@@ -794,7 +794,7 @@ static void idpf_rx_singleq_base_hash(struct idpf_rx_queue *rx_q,
 {
 	u64 mask, qw1;
 
-	if (!libeth_rx_pt_has_hash(rx_q->netdev, decoded))
+	if (!libeth_rx_pt_has_hash(rx_q->xdp_rxq.dev, decoded))
 		return;
 
 	mask = VIRTCHNL2_RX_BASE_DESC_FLTSTAT_RSS_HASH_M;
@@ -822,7 +822,7 @@ static void idpf_rx_singleq_flex_hash(struct idpf_rx_queue *rx_q,
 				      const union virtchnl2_rx_desc *rx_desc,
 				      struct libeth_rx_pt decoded)
 {
-	if (!libeth_rx_pt_has_hash(rx_q->netdev, decoded))
+	if (!libeth_rx_pt_has_hash(rx_q->xdp_rxq.dev, decoded))
 		return;
 
 	if (FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_STATUS0_RSS_VALID_M,
@@ -855,7 +855,7 @@ idpf_rx_singleq_process_skb_fields(struct idpf_rx_queue *rx_q,
 	struct libeth_rx_csum csum_bits;
 
 	/* modifies the skb - consumes the enet header */
-	skb->protocol = eth_type_trans(skb, rx_q->netdev);
+	skb->protocol = eth_type_trans(skb, rx_q->xdp_rxq.dev);
 
 	/* Check if we're using base mode descriptor IDs */
 	if (rx_q->rxdids == VIRTCHNL2_RXDID_1_32B_BASE_M) {
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index ceab25ee1aad..ecdd9d88f4dc 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -1,12 +1,12 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /* Copyright (C) 2023 Intel Corporation */
 
-#include <net/libeth/rx.h>
-#include <net/libeth/tx.h>
+#include <net/libeth/xdp.h>
 
 #include "idpf.h"
 #include "idpf_ptp.h"
 #include "idpf_virtchnl.h"
+#include "xdp.h"
 
 #define idpf_tx_buf_next(buf)		(*(u32 *)&(buf)->priv)
 LIBETH_SQE_CHECK_PRIV(u32);
@@ -62,8 +62,10 @@ void idpf_tx_timeout(struct net_device *netdev, unsigned int txqueue)
 static void idpf_tx_buf_rel_all(struct idpf_tx_queue *txq)
 {
 	struct libeth_sq_napi_stats ss = { };
+	struct xdp_frame_bulk bq;
 	struct libeth_cq_pp cp = {
 		.dev	= txq->dev,
+		.bq	= &bq,
 		.ss	= &ss,
 	};
 	u32 i;
@@ -72,9 +74,13 @@ static void idpf_tx_buf_rel_all(struct idpf_tx_queue *txq)
 	if (!txq->tx_buf)
 		return;
 
+	xdp_frame_bulk_init(&bq);
+
 	/* Free all the Tx buffer sk_buffs */
 	for (i = 0; i < txq->buf_pool_size; i++)
-		libeth_tx_complete(&txq->tx_buf[i], &cp);
+		libeth_tx_complete_any(&txq->tx_buf[i], &cp);
+
+	xdp_flush_frame_bulk(&bq);
 
 	kfree(txq->tx_buf);
 	txq->tx_buf = NULL;
@@ -88,13 +94,20 @@ static void idpf_tx_buf_rel_all(struct idpf_tx_queue *txq)
  */
 static void idpf_tx_desc_rel(struct idpf_tx_queue *txq)
 {
+	bool xdp = idpf_queue_has(XDP, txq);
+
+	if (xdp)
+		libeth_xdpsq_deinit_timer(txq->timer);
+
 	idpf_tx_buf_rel_all(txq);
-	netdev_tx_reset_subqueue(txq->netdev, txq->idx);
+
+	if (!xdp)
+		netdev_tx_reset_subqueue(txq->netdev, txq->idx);
 
 	if (!txq->desc_ring)
 		return;
 
-	if (txq->refillq)
+	if (!xdp && txq->refillq)
 		kfree(txq->refillq->ring);
 
 	dmam_free_coherent(txq->dev, txq->size, txq->desc_ring, txq->dma);
@@ -520,6 +533,7 @@ static int idpf_rx_hdr_buf_alloc_all(struct idpf_buf_queue *bufq)
 	struct libeth_fq fq = {
 		.count	= bufq->desc_count,
 		.type	= LIBETH_FQE_HDR,
+		.xdp	= idpf_xdp_enabled(bufq->q_vector->vport),
 		.nid	= idpf_q_vector_to_mem(bufq->q_vector),
 	};
 	int ret;
@@ -719,6 +733,7 @@ static int idpf_rx_bufs_init(struct idpf_buf_queue *bufq,
 		.count		= bufq->desc_count,
 		.type		= type,
 		.hsplit		= idpf_queue_has(HSPLIT_EN, bufq),
+		.xdp		= idpf_xdp_enabled(bufq->q_vector->vport),
 		.nid		= idpf_q_vector_to_mem(bufq->q_vector),
 	};
 	int ret;
@@ -1026,6 +1041,8 @@ void idpf_vport_queues_rel(struct idpf_vport *vport)
 {
 	idpf_tx_desc_rel_all(vport);
 	idpf_rx_desc_rel_all(vport);
+
+	idpf_xdpsqs_put(vport);
 	idpf_vport_queue_grp_rel_all(vport);
 
 	kfree(vport->txqs);
@@ -1099,6 +1116,18 @@ void idpf_vport_init_num_qs(struct idpf_vport *vport,
 	if (idpf_is_queue_model_split(vport->rxq_model))
 		vport->num_bufq = le16_to_cpu(vport_msg->num_rx_bufq);
 
+	vport->xdp_prog = config_data->xdp_prog;
+	if (idpf_xdp_enabled(vport)) {
+		vport->xdp_txq_offset = config_data->num_req_tx_qs;
+		vport->num_xdp_txq = le16_to_cpu(vport_msg->num_tx_q) -
+				     vport->xdp_txq_offset;
+		vport->xdpsq_share = libeth_xdpsq_shared(vport->num_xdp_txq);
+	} else {
+		vport->xdp_txq_offset = 0;
+		vport->num_xdp_txq = 0;
+		vport->xdpsq_share = false;
+	}
+
 	/* Adjust number of buffer queues per Rx queue group. */
 	if (!idpf_is_queue_model_split(vport->rxq_model)) {
 		vport->num_bufqs_per_qgrp = 0;
@@ -1170,9 +1199,10 @@ int idpf_vport_calc_total_qs(struct idpf_adapter *adapter, u16 vport_idx,
 	int dflt_splitq_txq_grps = 0, dflt_singleq_txqs = 0;
 	int dflt_splitq_rxq_grps = 0, dflt_singleq_rxqs = 0;
 	u16 num_req_tx_qs = 0, num_req_rx_qs = 0;
+	struct idpf_vport_user_config_data *user;
 	struct idpf_vport_config *vport_config;
 	u16 num_txq_grps, num_rxq_grps;
-	u32 num_qs;
+	u32 num_qs, num_xdpsq;
 
 	vport_config = adapter->vport_config[vport_idx];
 	if (vport_config) {
@@ -1214,6 +1244,24 @@ int idpf_vport_calc_total_qs(struct idpf_adapter *adapter, u16 vport_idx,
 		vport_msg->num_rx_bufq = 0;
 	}
 
+	if (!vport_config)
+		return 0;
+
+	user = &vport_config->user_config;
+	user->num_req_rx_qs = le16_to_cpu(vport_msg->num_rx_q);
+	user->num_req_tx_qs = le16_to_cpu(vport_msg->num_tx_q);
+
+	if (vport_config->user_config.xdp_prog)
+		num_xdpsq = libeth_xdpsq_num(user->num_req_rx_qs,
+					     user->num_req_tx_qs,
+					     vport_config->max_q.max_txq);
+	else
+		num_xdpsq = 0;
+
+	vport_msg->num_tx_q = cpu_to_le16(user->num_req_tx_qs + num_xdpsq);
+	if (idpf_is_queue_model_split(le16_to_cpu(vport_msg->txq_model)))
+		vport_msg->num_tx_complq = vport_msg->num_tx_q;
+
 	return 0;
 }
 
@@ -1263,14 +1311,13 @@ static void idpf_vport_calc_numq_per_grp(struct idpf_vport *vport,
 static void idpf_rxq_set_descids(const struct idpf_vport *vport,
 				 struct idpf_rx_queue *q)
 {
-	if (idpf_is_queue_model_split(vport->rxq_model)) {
-		q->rxdids = VIRTCHNL2_RXDID_2_FLEX_SPLITQ_M;
-	} else {
-		if (vport->base_rxd)
-			q->rxdids = VIRTCHNL2_RXDID_1_32B_BASE_M;
-		else
-			q->rxdids = VIRTCHNL2_RXDID_2_FLEX_SQ_NIC_M;
-	}
+	if (idpf_is_queue_model_split(vport->rxq_model))
+		return;
+
+	if (vport->base_rxd)
+		q->rxdids = VIRTCHNL2_RXDID_1_32B_BASE_M;
+	else
+		q->rxdids = VIRTCHNL2_RXDID_2_FLEX_SQ_NIC_M;
 }
 
 /**
@@ -1478,7 +1525,6 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport, u16 num_rxq)
 setup_rxq:
 			q->desc_count = vport->rxq_desc_count;
 			q->rx_ptype_lkup = vport->rx_ptype_lkup;
-			q->netdev = vport->netdev;
 			q->bufq_sets = rx_qgrp->splitq.bufq_sets;
 			q->idx = (i * num_rxq) + j;
 			q->rx_buffer_low_watermark = IDPF_LOW_WATERMARK;
@@ -1539,15 +1585,19 @@ int idpf_vport_queues_alloc(struct idpf_vport *vport)
 	if (err)
 		goto err_out;
 
-	err = idpf_tx_desc_alloc_all(vport);
+	err = idpf_vport_init_fast_path_txqs(vport);
 	if (err)
 		goto err_out;
 
-	err = idpf_rx_desc_alloc_all(vport);
+	err = idpf_xdpsqs_get(vport);
 	if (err)
 		goto err_out;
 
-	err = idpf_vport_init_fast_path_txqs(vport);
+	err = idpf_tx_desc_alloc_all(vport);
+	if (err)
+		goto err_out;
+
+	err = idpf_rx_desc_alloc_all(vport);
 	if (err)
 		goto err_out;
 
@@ -1888,14 +1938,17 @@ static bool idpf_tx_clean_complq(struct idpf_compl_queue *complq, int budget,
  */
 void idpf_wait_for_sw_marker_completion(const struct idpf_tx_queue *txq)
 {
-	struct idpf_compl_queue *complq = txq->txq_grp->complq;
-	u32 ntc = complq->next_to_clean;
+	struct idpf_compl_queue *complq;
 	unsigned long timeout;
 	bool flow, gen_flag;
+	u32 ntc;
 
 	if (!idpf_queue_has(SW_MARKER, txq))
 		return;
 
+	complq = idpf_queue_has(XDP, txq) ? txq->complq : txq->txq_grp->complq;
+	ntc = complq->next_to_clean;
+
 	flow = idpf_queue_has(FLOW_SCH_EN, complq);
 	gen_flag = idpf_queue_has(GEN_CHK, complq);
 
@@ -2701,10 +2754,11 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
  */
 netdev_tx_t idpf_tx_start(struct sk_buff *skb, struct net_device *netdev)
 {
-	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+	const struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
 	struct idpf_tx_queue *tx_q;
 
-	if (unlikely(skb_get_queue_mapping(skb) >= vport->num_txq)) {
+	if (unlikely(skb_get_queue_mapping(skb) >=
+		     vport->num_txq - vport->num_xdp_txq)) {
 		dev_kfree_skb_any(skb);
 
 		return NETDEV_TX_OK;
@@ -2741,7 +2795,7 @@ idpf_rx_hash(const struct idpf_rx_queue *rxq, struct sk_buff *skb,
 {
 	u32 hash;
 
-	if (!libeth_rx_pt_has_hash(rxq->netdev, decoded))
+	if (!libeth_rx_pt_has_hash(rxq->xdp_rxq.dev, decoded))
 		return;
 
 	hash = le16_to_cpu(rx_desc->hash1) |
@@ -2767,7 +2821,7 @@ static void idpf_rx_csum(struct idpf_rx_queue *rxq, struct sk_buff *skb,
 	bool ipv4, ipv6;
 
 	/* check if Rx checksum is enabled */
-	if (!libeth_rx_pt_has_checksum(rxq->netdev, decoded))
+	if (!libeth_rx_pt_has_checksum(rxq->xdp_rxq.dev, decoded))
 		return;
 
 	/* check if HW has decoded the packet and checksum */
@@ -2966,7 +3020,7 @@ idpf_rx_process_skb_fields(struct idpf_rx_queue *rxq, struct sk_buff *skb,
 	if (idpf_queue_has(PTP, rxq))
 		idpf_rx_hwtstamp(rxq, rx_desc, skb);
 
-	skb->protocol = eth_type_trans(skb, rxq->netdev);
+	skb->protocol = eth_type_trans(skb, rxq->xdp_rxq.dev);
 	skb_record_rx_queue(skb, rxq->idx);
 
 	if (le16_get_bits(rx_desc->hdrlen_flags,
@@ -3967,8 +4021,8 @@ static int idpf_vport_splitq_napi_poll(struct napi_struct *napi, int budget)
  */
 static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport)
 {
+	u16 num_txq_grp = vport->num_txq_grp - vport->num_xdp_txq;
 	bool split = idpf_is_queue_model_split(vport->rxq_model);
-	u16 num_txq_grp = vport->num_txq_grp;
 	struct idpf_rxq_group *rx_qgrp;
 	struct idpf_txq_group *tx_qgrp;
 	u32 i, qv_idx, q_index;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index ff4ea49c0957..22f08c7682b5 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -1748,9 +1748,12 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 		for (j = 0; j < num_rxq; j++, k++) {
 			const struct idpf_bufq_set *sets;
 			struct idpf_rx_queue *rxq;
+			u32 rxdids;
 
 			if (!idpf_is_queue_model_split(vport->rxq_model)) {
 				rxq = rx_qgrp->singleq.rxqs[j];
+				rxdids = rxq->rxdids;
+
 				goto common_qi_fields;
 			}
 
@@ -1783,6 +1786,8 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 					cpu_to_le16(rxq->rx_hbuf_size);
 			}
 
+			rxdids = VIRTCHNL2_RXDID_2_FLEX_SPLITQ_M;
+
 common_qi_fields:
 			qi[k].queue_id = cpu_to_le32(rxq->q_id);
 			qi[k].model = cpu_to_le16(vport->rxq_model);
@@ -1793,7 +1798,7 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 			qi[k].data_buffer_size = cpu_to_le32(rxq->rx_buf_size);
 			qi[k].qflags |=
 				cpu_to_le16(VIRTCHNL2_RX_DESC_SIZE_32BYTE);
-			qi[k].desc_ids = cpu_to_le64(rxq->rxdids);
+			qi[k].desc_ids = cpu_to_le64(rxdids);
 		}
 	}
 
@@ -2028,6 +2033,8 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 
 			if (idpf_queue_has(NOIRQ, txq))
 				vec = NULL;
+			else if (idpf_queue_has(XDP, txq))
+				vec = txq->complq->q_vector;
 			else if (idpf_is_queue_model_split(vport->txq_model))
 				vec = txq->txq_grp->complq->q_vector;
 			else
@@ -2046,9 +2053,6 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 		}
 	}
 
-	if (vport->num_txq != k)
-		return -EINVAL;
-
 	for (i = 0; i < vport->num_rxq_grp; i++) {
 		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
 		u16 num_rxq;
@@ -2084,13 +2088,8 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 		}
 	}
 
-	if (idpf_is_queue_model_split(vport->txq_model)) {
-		if (vport->num_rxq != k - vport->num_complq)
-			return -EINVAL;
-	} else {
-		if (vport->num_rxq != k - vport->num_txq)
-			return -EINVAL;
-	}
+	if (k != num_q)
+		return -EINVAL;
 
 	/* Chunk up the vector info into multiple messages */
 	config_sz = sizeof(struct virtchnl2_queue_vector_maps);
@@ -3307,7 +3306,9 @@ int idpf_vport_alloc_vec_indexes(struct idpf_vport *vport)
 	if (vec_info.num_curr_vecs)
 		vec_info.num_curr_vecs += IDPF_RESERVED_VECS;
 
-	req = max(vport->num_txq, vport->num_rxq) + IDPF_RESERVED_VECS;
+	/* XDPSQs are all bound to the NOIRQ vector from IDPF_RESERVED_VECS */
+	req = max(vport->num_txq - vport->num_xdp_txq, vport->num_rxq) +
+	      IDPF_RESERVED_VECS;
 	vec_info.num_req_vecs = req;
 
 	vec_info.default_vport = vport->default_vport;
diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethernet/intel/idpf/xdp.c
new file mode 100644
index 000000000000..98bdccc0c957
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/xdp.c
@@ -0,0 +1,168 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2025 Intel Corporation */
+
+#include <net/libeth/xdp.h>
+
+#include "idpf.h"
+#include "xdp.h"
+
+static int idpf_rxq_for_each(const struct idpf_vport *vport,
+			     int (*fn)(struct idpf_rx_queue *rxq, void *arg),
+			     void *arg)
+{
+	bool splitq = idpf_is_queue_model_split(vport->rxq_model);
+
+	if (!vport->rxq_grps)
+		return -ENETDOWN;
+
+	for (u32 i = 0; i < vport->num_rxq_grp; i++) {
+		const struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+		u32 num_rxq;
+
+		if (splitq)
+			num_rxq = rx_qgrp->splitq.num_rxq_sets;
+		else
+			num_rxq = rx_qgrp->singleq.num_rxq;
+
+		for (u32 j = 0; j < num_rxq; j++) {
+			struct idpf_rx_queue *q;
+			int err;
+
+			if (splitq)
+				q = &rx_qgrp->splitq.rxq_sets[j]->rxq;
+			else
+				q = rx_qgrp->singleq.rxqs[j];
+
+			err = fn(q, arg);
+			if (err)
+				return err;
+		}
+	}
+
+	return 0;
+}
+
+static int __idpf_xdp_rxq_info_init(struct idpf_rx_queue *rxq, void *arg)
+{
+	const struct idpf_vport *vport = rxq->q_vector->vport;
+	bool split = idpf_is_queue_model_split(vport->rxq_model);
+	const struct page_pool *pp;
+	int err;
+
+	err = __xdp_rxq_info_reg(&rxq->xdp_rxq, vport->netdev, rxq->idx,
+				 rxq->q_vector->napi.napi_id,
+				 rxq->rx_buf_size);
+	if (err)
+		return err;
+
+	pp = split ? rxq->bufq_sets[0].bufq.pp : rxq->pp;
+	xdp_rxq_info_attach_page_pool(&rxq->xdp_rxq, pp);
+
+	if (!split)
+		return 0;
+
+	rxq->xdpsqs = &vport->txqs[vport->xdp_txq_offset];
+	rxq->num_xdp_txq = vport->num_xdp_txq;
+
+	return 0;
+}
+
+int idpf_xdp_rxq_info_init_all(const struct idpf_vport *vport)
+{
+	return idpf_rxq_for_each(vport, __idpf_xdp_rxq_info_init, NULL);
+}
+
+static int __idpf_xdp_rxq_info_deinit(struct idpf_rx_queue *rxq, void *arg)
+{
+	if (idpf_is_queue_model_split((size_t)arg)) {
+		rxq->xdpsqs = NULL;
+		rxq->num_xdp_txq = 0;
+	}
+
+	xdp_rxq_info_detach_mem_model(&rxq->xdp_rxq);
+	xdp_rxq_info_unreg(&rxq->xdp_rxq);
+
+	return 0;
+}
+
+void idpf_xdp_rxq_info_deinit_all(const struct idpf_vport *vport)
+{
+	idpf_rxq_for_each(vport, __idpf_xdp_rxq_info_deinit,
+			  (void *)(size_t)vport->rxq_model);
+}
+
+int idpf_xdpsqs_get(const struct idpf_vport *vport)
+{
+	struct libeth_xdpsq_timer **timers __free(kvfree) = NULL;
+	struct net_device *dev;
+	u32 sqs;
+
+	if (!idpf_xdp_enabled(vport))
+		return 0;
+
+	timers = kvcalloc(vport->num_xdp_txq, sizeof(*timers), GFP_KERNEL);
+	if (!timers)
+		return -ENOMEM;
+
+	for (u32 i = 0; i < vport->num_xdp_txq; i++) {
+		timers[i] = kzalloc_node(sizeof(*timers[i]), GFP_KERNEL,
+					 cpu_to_mem(i));
+		if (!timers[i]) {
+			for (int j = i - 1; j >= 0; j--)
+				kfree(timers[j]);
+
+			return -ENOMEM;
+		}
+	}
+
+	dev = vport->netdev;
+	sqs = vport->xdp_txq_offset;
+
+	for (u32 i = sqs; i < vport->num_txq; i++) {
+		struct idpf_tx_queue *xdpsq = vport->txqs[i];
+
+		xdpsq->complq = xdpsq->txq_grp->complq;
+		kfree(xdpsq->refillq);
+		xdpsq->refillq = NULL;
+
+		idpf_queue_clear(FLOW_SCH_EN, xdpsq);
+		idpf_queue_clear(FLOW_SCH_EN, xdpsq->complq);
+		idpf_queue_set(NOIRQ, xdpsq);
+		idpf_queue_set(XDP, xdpsq);
+		idpf_queue_set(XDP, xdpsq->complq);
+
+		xdpsq->timer = timers[i - sqs];
+		libeth_xdpsq_get(&xdpsq->xdp_lock, dev, vport->xdpsq_share);
+
+		xdpsq->pending = 0;
+		xdpsq->xdp_tx = 0;
+		xdpsq->thresh = libeth_xdp_queue_threshold(xdpsq->desc_count);
+	}
+
+	return 0;
+}
+
+void idpf_xdpsqs_put(const struct idpf_vport *vport)
+{
+	struct net_device *dev;
+	u32 sqs;
+
+	if (!idpf_xdp_enabled(vport))
+		return;
+
+	dev = vport->netdev;
+	sqs = vport->xdp_txq_offset;
+
+	for (u32 i = sqs; i < vport->num_txq; i++) {
+		struct idpf_tx_queue *xdpsq = vport->txqs[i];
+
+		if (!idpf_queue_has_clear(XDP, xdpsq))
+			continue;
+
+		libeth_xdpsq_put(&xdpsq->xdp_lock, dev);
+
+		kfree(xdpsq->timer);
+		xdpsq->refillq = NULL;
+		idpf_queue_clear(NOIRQ, xdpsq);
+	}
+}
-- 
2.51.0

