Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5A79106ED
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2024 15:56:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B5650846FC;
	Thu, 20 Jun 2024 13:56:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w0SvcJ_75Ggd; Thu, 20 Jun 2024 13:56:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8439D84773
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718891810;
	bh=fvR6ocqXMDQ+jyZLxHe02HWFpeKhz0bYj517o1+KKnQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BaXY6EWKfAhEqPBRvv1DZWhwpU+11C2KgJUxJS1aNCEqR113RUvPp2oc7MQnayYZH
	 ZY0c5poiithhXfGChtRaOW48eQEN+V854QNJugR8ZmG4NlZx+HRK9tKpVzTHT812bY
	 1DPHHjv+lteYHtG/xKPgDy1SQ6Xvz0gy1c35hBDh/z18MnfGEFvRNSTqm8R3Lua+dF
	 edYY3ZD9zwotB78Y96AoVu/bjp45mi8Uaq/mdwSnGw77w5dBaXCm0fCCYwmgKrEDMD
	 RotkZCr9qvcZXgyJ7zEASyyZyiSDfHOTaK7h9Ih8KLdSexZsS2kxX06DXKR5SxNjKu
	 atXSq5To6hlwQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8439D84773;
	Thu, 20 Jun 2024 13:56:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1E4EC1BF315
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 13:56:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0A2C242EE5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 13:56:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i33AgXilz6hb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2024 13:56:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6E4A942E6A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6E4A942E6A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6E4A942E6A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 13:56:45 +0000 (UTC)
X-CSE-ConnectionGUID: DyFHWk+iQfCiYFJX7jAQKQ==
X-CSE-MsgGUID: UijVgBvMSbyspsWXF4Ag2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="15987867"
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="15987867"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2024 06:56:45 -0700
X-CSE-ConnectionGUID: b8TvPYlgRIGKugUn0hk9VQ==
X-CSE-MsgGUID: W9LUrtVmSSK6hXopah2QQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="46772113"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa004.fm.intel.com with ESMTP; 20 Jun 2024 06:56:42 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 20 Jun 2024 15:53:40 +0200
Message-ID: <20240620135347.3006818-8-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240620135347.3006818-1-aleksander.lobakin@intel.com>
References: <20240620135347.3006818-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718891806; x=1750427806;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LvT0PREP8vzHzaD58YLaKHIEEGKN0DOAhk38ixhPE/Q=;
 b=RAy0Q91PVY+QeQNvpfbSxe+IfAv3aGtwqDBetCw/cUaJ9BvUVNZFU/+b
 QejVatHI+rCYI/lk9P4QwQ8PaxpzKh2T4tX8dXooNiBKrQtI0vxtxq34v
 cOeDaQV1BEmOesW8md5GF3xccenJG0568knYwWdHoJ0aPLZgnO8fkezuN
 jpkfuYwtyqmN+yra6/Lynuy5c/26XAduAK4DJkrq7igD6pFCdTc5aByvd
 F52+IM9b/EzY/CUuJhYXcnzSF1yTXPYWIMgwmsVaqFTkp3U65rNrjSM4z
 tHBRZAdW8l/tiTuLGgXmRPzYEjkabjiNaqCSASF4h6rsxppWJHIwp7HJt
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RAy0Q91P
Subject: [Intel-wired-lan] [PATCH iwl-next v2 07/14] idpf: strictly assert
 cachelines of queue and queue vector structures
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
Cc: Mina Almasry <almasrymina@google.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Now that the queue and queue vector structures are separated and laid
out optimally, group the fields as read-mostly, read-write, and cold
cachelines and add size assertions to make sure new features won't push
something out of its place and provoke perf regression.
Despite looking innocent, this gives up to 2% of perf bump on Rx.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.h | 185 +++++++++++++-------
 1 file changed, 118 insertions(+), 67 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 5daa8f905f86..c7ae20ab567b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -6,6 +6,7 @@
 
 #include <linux/dim.h>
 
+#include <net/libeth/cache.h>
 #include <net/page_pool/helpers.h>
 #include <net/tcp.h>
 #include <net/netdev_queues.h>
@@ -505,58 +506,68 @@ struct idpf_intr_reg {
 /**
  * struct idpf_q_vector
  * @vport: Vport back pointer
- * @napi: napi handler
- * @v_idx: Vector index
- * @intr_reg: See struct idpf_intr_reg
+ * @num_rxq: Number of RX queues
  * @num_txq: Number of TX queues
+ * @num_bufq: Number of buffer queues
  * @num_complq: number of completion queues
+ * @rx: Array of RX queues to service
  * @tx: Array of TX queues to service
+ * @bufq: Array of buffer queues to service
  * @complq: array of completion queues
+ * @intr_reg: See struct idpf_intr_reg
+ * @napi: napi handler
+ * @total_events: Number of interrupts processed
  * @tx_dim: Data for TX net_dim algorithm
  * @tx_itr_value: TX interrupt throttling rate
  * @tx_intr_mode: Dynamic ITR or not
  * @tx_itr_idx: TX ITR index
- * @num_rxq: Number of RX queues
- * @rx: Array of RX queues to service
  * @rx_dim: Data for RX net_dim algorithm
  * @rx_itr_value: RX interrupt throttling rate
  * @rx_intr_mode: Dynamic ITR or not
  * @rx_itr_idx: RX ITR index
- * @num_bufq: Number of buffer queues
- * @bufq: Array of buffer queues to service
- * @total_events: Number of interrupts processed
+ * @v_idx: Vector index
  * @affinity_mask: CPU affinity mask
  */
 struct idpf_q_vector {
+	__cacheline_group_begin_aligned(read_mostly);
 	struct idpf_vport *vport;
-	struct napi_struct napi;
-	u16 v_idx;
-	struct idpf_intr_reg intr_reg;
 
+	u16 num_rxq;
 	u16 num_txq;
+	u16 num_bufq;
 	u16 num_complq;
+	struct idpf_rx_queue **rx;
 	struct idpf_tx_queue **tx;
+	struct idpf_buf_queue **bufq;
 	struct idpf_compl_queue **complq;
 
+	struct idpf_intr_reg intr_reg;
+	__cacheline_group_end_aligned(read_mostly);
+
+	__cacheline_group_begin_aligned(read_write);
+	struct napi_struct napi;
+	u16 total_events;
+
 	struct dim tx_dim;
 	u16 tx_itr_value;
 	bool tx_intr_mode;
 	u32 tx_itr_idx;
 
-	u16 num_rxq;
-	struct idpf_rx_queue **rx;
 	struct dim rx_dim;
 	u16 rx_itr_value;
 	bool rx_intr_mode;
 	u32 rx_itr_idx;
+	__cacheline_group_end_aligned(read_write);
 
-	u16 num_bufq;
-	struct idpf_buf_queue **bufq;
-
-	u16 total_events;
+	__cacheline_group_begin_aligned(cold);
+	u16 v_idx;
 
 	cpumask_var_t affinity_mask;
+	__cacheline_group_end_aligned(cold);
 };
+libeth_cacheline_set_assert(struct idpf_q_vector, 104,
+			    424 + 2 * sizeof(struct dim),
+			    8 + sizeof(cpumask_var_t));
 
 struct idpf_rx_queue_stats {
 	u64_stats_t packets;
@@ -623,11 +634,11 @@ struct idpf_txq_stash {
  * @idx: For RX queue, it is used to index to total RX queue across groups and
  *	 used for skb reporting.
  * @desc_count: Number of descriptors
+ * @rxdids: Supported RX descriptor ids
+ * @rx_ptype_lkup: LUT of Rx ptypes
  * @next_to_use: Next descriptor to use
  * @next_to_clean: Next descriptor to clean
  * @next_to_alloc: RX buffer to allocate at
- * @rxdids: Supported RX descriptor ids
- * @rx_ptype_lkup: LUT of Rx ptypes
  * @skb: Pointer to the skb
  * @stats_sync: See struct u64_stats_sync
  * @q_stats: See union idpf_rx_queue_stats
@@ -641,6 +652,7 @@ struct idpf_txq_stash {
  * @rx_max_pkt_size: RX max packet size
  */
 struct idpf_rx_queue {
+	__cacheline_group_begin_aligned(read_mostly);
 	union {
 		union virtchnl2_rx_desc *rx;
 		struct virtchnl2_singleq_rx_buf_desc *single_buf;
@@ -663,19 +675,23 @@ struct idpf_rx_queue {
 	DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
 	u16 idx;
 	u16 desc_count;
+
+	u32 rxdids;
+	const struct idpf_rx_ptype_decoded *rx_ptype_lkup;
+	__cacheline_group_end_aligned(read_mostly);
+
+	__cacheline_group_begin_aligned(read_write);
 	u16 next_to_use;
 	u16 next_to_clean;
 	u16 next_to_alloc;
 
-	u32 rxdids;
-
-	const struct idpf_rx_ptype_decoded *rx_ptype_lkup;
 	struct sk_buff *skb;
 
 	struct u64_stats_sync stats_sync;
 	struct idpf_rx_queue_stats q_stats;
+	__cacheline_group_end_aligned(read_write);
 
-	/* Slowpath */
+	__cacheline_group_begin_aligned(cold);
 	u32 q_id;
 	u32 size;
 	dma_addr_t dma;
@@ -686,7 +702,11 @@ struct idpf_rx_queue {
 	u16 rx_hbuf_size;
 	u16 rx_buf_size;
 	u16 rx_max_pkt_size;
-} ____cacheline_aligned;
+	__cacheline_group_end_aligned(cold);
+};
+libeth_cacheline_set_assert(struct idpf_rx_queue, 64,
+			    72 + sizeof(struct u64_stats_sync),
+			    32);
 
 /**
  * struct idpf_tx_queue - software structure representing a transmit queue
@@ -703,22 +723,7 @@ struct idpf_rx_queue {
  * @idx: For TX queue, it is used as index to map between TX queue group and
  *	 hot path TX pointers stored in vport. Used in both singleq/splitq.
  * @desc_count: Number of descriptors
- * @next_to_use: Next descriptor to use
- * @next_to_clean: Next descriptor to clean
- * @netdev: &net_device corresponding to this queue
- * @cleaned_bytes: Splitq only, TXQ only: When a TX completion is received on
- *		   the TX completion queue, it can be for any TXQ associated
- *		   with that completion queue. This means we can clean up to
- *		   N TXQs during a single call to clean the completion queue.
- *		   cleaned_bytes|pkts tracks the clean stats per TXQ during
- *		   that single call to clean the completion queue. By doing so,
- *		   we can update BQL with aggregate cleaned stats for each TXQ
- *		   only once at the end of the cleaning routine.
- * @clean_budget: singleq only, queue cleaning budget
- * @cleaned_pkts: Number of packets cleaned for the above said case
- * @tx_max_bufs: Max buffers that can be transmitted with scatter-gather
  * @tx_min_pkt_len: Min supported packet length
- * @compl_tag_bufid_m: Completion tag buffer id mask
  * @compl_tag_gen_s: Completion tag generation bit
  *	The format of the completion tag will change based on the TXQ
  *	descriptor ring size so that we can maintain roughly the same level
@@ -739,9 +744,24 @@ struct idpf_rx_queue {
  *	--------------------------------
  *
  *	This gives us 8*8160 = 65280 possible unique values.
+ * @netdev: &net_device corresponding to this queue
+ * @next_to_use: Next descriptor to use
+ * @next_to_clean: Next descriptor to clean
+ * @cleaned_bytes: Splitq only, TXQ only: When a TX completion is received on
+ *		   the TX completion queue, it can be for any TXQ associated
+ *		   with that completion queue. This means we can clean up to
+ *		   N TXQs during a single call to clean the completion queue.
+ *		   cleaned_bytes|pkts tracks the clean stats per TXQ during
+ *		   that single call to clean the completion queue. By doing so,
+ *		   we can update BQL with aggregate cleaned stats for each TXQ
+ *		   only once at the end of the cleaning routine.
+ * @clean_budget: singleq only, queue cleaning budget
+ * @cleaned_pkts: Number of packets cleaned for the above said case
+ * @tx_max_bufs: Max buffers that can be transmitted with scatter-gather
+ * @stash: Tx buffer stash for Flow-based scheduling mode
+ * @compl_tag_bufid_m: Completion tag buffer id mask
  * @compl_tag_cur_gen: Used to keep track of current completion tag generation
  * @compl_tag_gen_max: To determine when compl_tag_cur_gen should be reset
- * @stash: Tx buffer stash for Flow-based scheduling mode
  * @stats_sync: See struct u64_stats_sync
  * @q_stats: See union idpf_tx_queue_stats
  * @q_id: Queue id
@@ -750,6 +770,7 @@ struct idpf_rx_queue {
  * @q_vector: Backreference to associated vector
  */
 struct idpf_tx_queue {
+	__cacheline_group_begin_aligned(read_mostly);
 	union {
 		struct idpf_base_tx_desc *base_tx;
 		struct idpf_base_tx_ctx_desc *base_ctx;
@@ -766,10 +787,16 @@ struct idpf_tx_queue {
 	DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
 	u16 idx;
 	u16 desc_count;
-	u16 next_to_use;
-	u16 next_to_clean;
+
+	u16 tx_min_pkt_len;
+	u16 compl_tag_gen_s;
 
 	struct net_device *netdev;
+	__cacheline_group_end_aligned(read_mostly);
+
+	__cacheline_group_begin_aligned(read_write);
+	u16 next_to_use;
+	u16 next_to_clean;
 
 	union {
 		u32 cleaned_bytes;
@@ -778,26 +805,27 @@ struct idpf_tx_queue {
 	u16 cleaned_pkts;
 
 	u16 tx_max_bufs;
-	u16 tx_min_pkt_len;
+	struct idpf_txq_stash *stash;
 
 	u16 compl_tag_bufid_m;
-	u16 compl_tag_gen_s;
-
 	u16 compl_tag_cur_gen;
 	u16 compl_tag_gen_max;
 
-	struct idpf_txq_stash *stash;
-
 	struct u64_stats_sync stats_sync;
 	struct idpf_tx_queue_stats q_stats;
+	__cacheline_group_end_aligned(read_write);
 
-	/* Slowpath */
+	__cacheline_group_begin_aligned(cold);
 	u32 q_id;
 	u32 size;
 	dma_addr_t dma;
 
 	struct idpf_q_vector *q_vector;
-} ____cacheline_aligned;
+	__cacheline_group_end_aligned(cold);
+};
+libeth_cacheline_set_assert(struct idpf_tx_queue, 64,
+			    88 + sizeof(struct u64_stats_sync),
+			    24);
 
 /**
  * struct idpf_buf_queue - software structure representing a buffer queue
@@ -822,6 +850,7 @@ struct idpf_tx_queue {
  * @rx_buf_size: Buffer size
  */
 struct idpf_buf_queue {
+	__cacheline_group_begin_aligned(read_mostly);
 	struct virtchnl2_splitq_rx_buf_desc *split_buf;
 	struct {
 		struct idpf_rx_buf *buf;
@@ -832,12 +861,16 @@ struct idpf_buf_queue {
 	void __iomem *tail;
 
 	DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
-	u16 desc_count;
-	u16 next_to_use;
-	u16 next_to_clean;
-	u16 next_to_alloc;
+	u32 desc_count;
+	__cacheline_group_end_aligned(read_mostly);
 
-	/* Slowpath */
+	__cacheline_group_begin_aligned(read_write);
+	u32 next_to_use;
+	u32 next_to_clean;
+	u32 next_to_alloc;
+	__cacheline_group_end_aligned(read_write);
+
+	__cacheline_group_begin_aligned(cold);
 	u32 q_id;
 	u32 size;
 	dma_addr_t dma;
@@ -847,7 +880,9 @@ struct idpf_buf_queue {
 	u16 rx_buffer_low_watermark;
 	u16 rx_hbuf_size;
 	u16 rx_buf_size;
-} ____cacheline_aligned;
+	__cacheline_group_end_aligned(cold);
+};
+libeth_cacheline_set_assert(struct idpf_buf_queue, 64, 16, 32);
 
 /**
  * struct idpf_compl_queue - software structure representing a completion queue
@@ -855,11 +890,11 @@ struct idpf_buf_queue {
  * @txq_grp: See struct idpf_txq_group
  * @flags: See enum idpf_queue_flags_t
  * @desc_count: Number of descriptors
+ * @clean_budget: queue cleaning budget
+ * @netdev: &net_device corresponding to this queue
  * @next_to_use: Next descriptor to use. Relevant in both split & single txq
  *		 and bufq.
  * @next_to_clean: Next descriptor to clean
- * @netdev: &net_device corresponding to this queue
- * @clean_budget: queue cleaning budget
  * @num_completions: Only relevant for TX completion queue. It tracks the
  *		     number of completions received to compare against the
  *		     number of completions pending, as accumulated by the
@@ -870,25 +905,33 @@ struct idpf_buf_queue {
  * @q_vector: Backreference to associated vector
  */
 struct idpf_compl_queue {
+	__cacheline_group_begin_aligned(read_mostly);
 	struct idpf_splitq_tx_compl_desc *comp;
 	struct idpf_txq_group *txq_grp;
 
 	DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
-	u16 desc_count;
-	u16 next_to_use;
-	u16 next_to_clean;
+	u32 desc_count;
 
-	struct net_device *netdev;
 	u32 clean_budget;
+	struct net_device *netdev;
+	__cacheline_group_end_aligned(read_mostly);
+
+	__cacheline_group_begin_aligned(read_write);
+	u32 next_to_use;
+	u32 next_to_clean;
+
 	u32 num_completions;
+	__cacheline_group_end_aligned(read_write);
 
-	/* Slowpath */
+	__cacheline_group_begin_aligned(cold);
 	u32 q_id;
 	u32 size;
 	dma_addr_t dma;
 
 	struct idpf_q_vector *q_vector;
-} ____cacheline_aligned;
+	__cacheline_group_end_aligned(cold);
+};
+libeth_cacheline_set_assert(struct idpf_compl_queue, 40, 16, 24);
 
 /**
  * struct idpf_sw_queue
@@ -903,13 +946,21 @@ struct idpf_compl_queue {
  * lockless buffer management system and are strictly software only constructs.
  */
 struct idpf_sw_queue {
+	__cacheline_group_begin_aligned(read_mostly);
 	u32 *ring;
 
 	DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
-	u16 desc_count;
-	u16 next_to_use;
-	u16 next_to_clean;
-} ____cacheline_aligned;
+	u32 desc_count;
+	__cacheline_group_end_aligned(read_mostly);
+
+	__cacheline_group_begin_aligned(read_write);
+	u32 next_to_use;
+	u32 next_to_clean;
+	__cacheline_group_end_aligned(read_write);
+};
+libeth_cacheline_group_assert(struct idpf_sw_queue, read_mostly, 24);
+libeth_cacheline_group_assert(struct idpf_sw_queue, read_write, 8);
+libeth_cacheline_struct_assert(struct idpf_sw_queue, 24, 8);
 
 /**
  * struct idpf_rxq_set
-- 
2.45.2

