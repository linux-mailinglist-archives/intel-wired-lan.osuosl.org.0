Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A14B8D1D69
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 15:49:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F0E3D820D8;
	Tue, 28 May 2024 13:49:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id clHv1WfyB_5a; Tue, 28 May 2024 13:49:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F11A8820D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716904180;
	bh=Xk6RfVeunXk5p4ejn+kNVSZfEBdqotCoeOGAusBKpKE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gBc290+4VLZiVHZKmyZFB61Y4uMoeIx8n8PNQD31eAHyDU8cnQx4ndG/I7HfYyFYv
	 purGVmX2QGlZZbMYFv7/QQxii70w1v2YGueG0rqGGEYpbCD8Y8BBGc/L5UqUDDPhNt
	 uYqGU0rjEvs4JBvz2eU6uDUWva6S2mh+HiSr0p6Z7qY94uEi7zQHOmXWFwPQVYmwtk
	 X11l78T86XG2CXgoFs8hp8s4tPP74FkBVgscCfXZvU6chQ1EqHLehU+cHUzA+v8CJX
	 kc4YKxjl8BLTMRXWZSdlbXpvVBZVZKqq/x9FPj5OFbI8gLQrSMCd+NOhgykxq1yGMs
	 H0hDl1wQ1OlqA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F11A8820D7;
	Tue, 28 May 2024 13:49:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AB12A1D2874
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:49:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A4A7660784
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:49:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DULUXDb2bBPL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 13:49:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4C86E6077A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C86E6077A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4C86E6077A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:49:35 +0000 (UTC)
X-CSE-ConnectionGUID: BXmiG12eTIiVNZcDxtIpZg==
X-CSE-MsgGUID: OUm5VMzUTYSHByiXUFaj6Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13437022"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="13437022"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 06:49:35 -0700
X-CSE-ConnectionGUID: cUcvibo6TQqvkHDtS5jRhg==
X-CSE-MsgGUID: LDxLa49uQXyMdb5IdsZMAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="35577431"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa008.jf.intel.com with ESMTP; 28 May 2024 06:49:32 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 May 2024 15:48:39 +0200
Message-ID: <20240528134846.148890-6-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240528134846.148890-1-aleksander.lobakin@intel.com>
References: <20240528134846.148890-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716904175; x=1748440175;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Gwn9DRaLVr3DjUwx2XcyIso8ZY8dlTvLvkRtPJ/U2bQ=;
 b=am3l10/hWKpthLcV608WQ+bUS+jRv2DGBDRiLqkHp8Z5p8P+g2gBJdBi
 eQs5f+r6WmbQIyt2ZuFlOeytCTvMpmyLhYXsil9BZUF6+z7S2pYWAmD41
 AV73W1H83vLMCO+NRWKqOSkIl0/TbBG32W+cnvif1pCv5sgJxN1UeRdTZ
 cgw4OiBsYRucRn8YHN+XesRtg5CwdDsipc3HoNg7InwUoMo+AWwae5ca4
 yDUoPq120OrvCBwOM2eTSOYgCjt1x7eobDaYiYjmBAg2ctcyR+4PdLnPP
 xoTL77ZxBHV/5WoxclEVBSKdGDeUm9VwxWtY4OjnQ9tV3m0dceTA2RaKY
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=am3l10/h
Subject: [Intel-wired-lan] [PATCH iwl-next 05/12] idpf: strictly assert
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
Cc: Mina Almasry <almasrymina@google.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Now that the queue and queue vector structures are separated and laid
out optimally, group the fields as read-mostly, read-write, and cold
cachelines and add size assertions to make sure new features won't push
something out of its place and provoke perf regression.
Despite looking innocent, this gives up to 2% of perf bump on Rx.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.h | 443 +++++++++++---------
 1 file changed, 250 insertions(+), 193 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 9e4ba0aaf3ab..731e2a73def5 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -6,6 +6,7 @@
 
 #include <linux/dim.h>
 
+#include <net/libeth/cache.h>
 #include <net/page_pool/helpers.h>
 #include <net/tcp.h>
 #include <net/netdev_queues.h>
@@ -504,59 +505,70 @@ struct idpf_intr_reg {
 
 /**
  * struct idpf_q_vector
+ * @read_mostly: CL group with rarely written hot fields
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
+ * @read_write: CL group with both read/write hot fields
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
+ * @cold: CL group with fields no touched on hotpath
+ * @v_idx: Vector index
  * @affinity_mask: CPU affinity mask
  */
 struct idpf_q_vector {
-	struct idpf_vport *vport;
-	struct napi_struct napi;
-	u16 v_idx;
-	struct idpf_intr_reg intr_reg;
-
-	u16 num_txq;
-	u16 num_complq;
-	struct idpf_tx_queue **tx;
-	struct idpf_compl_queue **complq;
-
-	struct dim tx_dim;
-	u16 tx_itr_value;
-	bool tx_intr_mode;
-	u32 tx_itr_idx;
-
-	u16 num_rxq;
-	struct idpf_rx_queue **rx;
-	struct dim rx_dim;
-	u16 rx_itr_value;
-	bool rx_intr_mode;
-	u32 rx_itr_idx;
-
-	u16 num_bufq;
-	struct idpf_buf_queue **bufq;
-
-	u16 total_events;
-
-	cpumask_var_t affinity_mask;
+	libeth_cacheline_group(read_mostly,
+		struct idpf_vport *vport;
+
+		u16 num_rxq;
+		u16 num_txq;
+		u16 num_bufq;
+		u16 num_complq;
+		struct idpf_rx_queue **rx;
+		struct idpf_tx_queue **tx;
+		struct idpf_buf_queue **bufq;
+		struct idpf_compl_queue **complq;
+
+		struct idpf_intr_reg intr_reg;
+	);
+	libeth_cacheline_group(read_write,
+		struct napi_struct napi;
+		u16 total_events;
+
+		struct dim tx_dim;
+		u16 tx_itr_value;
+		bool tx_intr_mode;
+		u32 tx_itr_idx;
+
+		struct dim rx_dim;
+		u16 rx_itr_value;
+		bool rx_intr_mode;
+		u32 rx_itr_idx;
+	);
+	libeth_cacheline_group(cold,
+		u16 v_idx;
+
+		cpumask_var_t affinity_mask;
+	);
 };
+libeth_cacheline_set_assert(struct idpf_q_vector, 104,
+			    424 + 2 * sizeof(struct dim),
+			    8 + sizeof(cpumask_var_t));
 
 struct idpf_rx_queue_stats {
 	u64_stats_t packets;
@@ -610,6 +622,7 @@ struct idpf_txq_stash {
 
 /**
  * struct idpf_rx_queue - software structure representing a receive queue
+ * @read_mostly: CL group with rarely written hot fields
  * @rx: universal receive descriptor array
  * @single_buf: buffer descriptor array in singleq
  * @desc_ring: virtual descriptor ring address
@@ -623,14 +636,16 @@ struct idpf_txq_stash {
  * @idx: For RX queue, it is used to index to total RX queue across groups and
  *	 used for skb reporting.
  * @desc_count: Number of descriptors
+ * @rxdids: Supported RX descriptor ids
+ * @rx_ptype_lkup: LUT of Rx ptypes
+ * @read_write: CL group with both read/write hot fields
  * @next_to_use: Next descriptor to use
  * @next_to_clean: Next descriptor to clean
  * @next_to_alloc: RX buffer to allocate at
- * @rxdids: Supported RX descriptor ids
- * @rx_ptype_lkup: LUT of Rx ptypes
  * @skb: Pointer to the skb
  * @stats_sync: See struct u64_stats_sync
  * @q_stats: See union idpf_rx_queue_stats
+ * @cold: CL group with fields no touched on hotpath
  * @q_id: Queue id
  * @size: Length of descriptor ring in bytes
  * @dma: Physical address of ring
@@ -641,55 +656,63 @@ struct idpf_txq_stash {
  * @rx_max_pkt_size: RX max packet size
  */
 struct idpf_rx_queue {
-	union {
-		union virtchnl2_rx_desc *rx;
-		struct virtchnl2_singleq_rx_buf_desc *single_buf;
+	libeth_cacheline_group(read_mostly,
+		union {
+			union virtchnl2_rx_desc *rx;
+			struct virtchnl2_singleq_rx_buf_desc *single_buf;
 
-		void *desc_ring;
-	};
-	union {
-		struct {
-			struct idpf_bufq_set *bufq_sets;
-			struct napi_struct *napi;
+			void *desc_ring;
 		};
-		struct {
-			struct idpf_rx_buf *rx_buf;
-			struct page_pool *pp;
+		union {
+			struct {
+				struct idpf_bufq_set *bufq_sets;
+				struct napi_struct *napi;
+			};
+			struct {
+				struct idpf_rx_buf *rx_buf;
+				struct page_pool *pp;
+			};
 		};
-	};
-	struct net_device *netdev;
-	void __iomem *tail;
-
-	DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
-	u16 idx;
-	u16 desc_count;
-	u16 next_to_use;
-	u16 next_to_clean;
-	u16 next_to_alloc;
-
-	u32 rxdids;
-
-	const struct idpf_rx_ptype_decoded *rx_ptype_lkup;
-	struct sk_buff *skb;
-
-	struct u64_stats_sync stats_sync;
-	struct idpf_rx_queue_stats q_stats;
-
-	/* Slowpath */
-	u32 q_id;
-	u32 size;
-	dma_addr_t dma;
-
-	struct idpf_q_vector *q_vector;
-
-	u16 rx_buffer_low_watermark;
-	u16 rx_hbuf_size;
-	u16 rx_buf_size;
-	u16 rx_max_pkt_size;
-} ____cacheline_aligned;
+		struct net_device *netdev;
+		void __iomem *tail;
+
+		DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
+		u16 idx;
+		u16 desc_count;
+
+		u32 rxdids;
+		const struct idpf_rx_ptype_decoded *rx_ptype_lkup;
+	);
+	libeth_cacheline_group(read_write,
+		u16 next_to_use;
+		u16 next_to_clean;
+		u16 next_to_alloc;
+
+		struct sk_buff *skb;
+
+		struct u64_stats_sync stats_sync;
+		struct idpf_rx_queue_stats q_stats;
+	);
+	libeth_cacheline_group(cold,
+		u32 q_id;
+		u32 size;
+		dma_addr_t dma;
+
+		struct idpf_q_vector *q_vector;
+
+		u16 rx_buffer_low_watermark;
+		u16 rx_hbuf_size;
+		u16 rx_buf_size;
+		u16 rx_max_pkt_size;
+	);
+};
+libeth_cacheline_set_assert(struct idpf_rx_queue, 64,
+			    72 + sizeof(struct u64_stats_sync),
+			    32);
 
 /**
  * struct idpf_tx_queue - software structure representing a transmit queue
+ * @read_mostly: CL group with rarely written hot fields
  * @base_tx: base Tx descriptor array
  * @base_ctx: base Tx context descriptor array
  * @flex_tx: flex Tx descriptor array
@@ -703,22 +726,7 @@ struct idpf_rx_queue {
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
@@ -739,68 +747,92 @@ struct idpf_rx_queue {
  *	--------------------------------
  *
  *	This gives us 8*8160 = 65280 possible unique values.
+ * @netdev: &net_device corresponding to this queue
+ * @read_write: CL group with both read/write hot fields
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
+ * @cold: CL group with fields no touched on hotpath
  * @q_id: Queue id
  * @size: Length of descriptor ring in bytes
  * @dma: Physical address of ring
  * @q_vector: Backreference to associated vector
  */
 struct idpf_tx_queue {
-	union {
-		struct idpf_base_tx_desc *base_tx;
-		struct idpf_base_tx_ctx_desc *base_ctx;
-		union idpf_tx_flex_desc *flex_tx;
-		struct idpf_flex_tx_ctx_desc *flex_ctx;
-
-		void *desc_ring;
-	};
-	struct idpf_tx_buf *tx_buf;
-	struct idpf_txq_group *txq_grp;
-	struct device *dev;
-	void __iomem *tail;
-
-	DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
-	u16 idx;
-	u16 desc_count;
-	u16 next_to_use;
-	u16 next_to_clean;
-
-	struct net_device *netdev;
-
-	union {
-		u32 cleaned_bytes;
-		u32 clean_budget;
-	};
-	u16 cleaned_pkts;
-
-	u16 tx_max_bufs;
-	u16 tx_min_pkt_len;
-
-	u16 compl_tag_bufid_m;
-	u16 compl_tag_gen_s;
-
-	u16 compl_tag_cur_gen;
-	u16 compl_tag_gen_max;
+	libeth_cacheline_group(read_mostly,
+		union {
+			struct idpf_base_tx_desc *base_tx;
+			struct idpf_base_tx_ctx_desc *base_ctx;
+			union idpf_tx_flex_desc *flex_tx;
+			struct idpf_flex_tx_ctx_desc *flex_ctx;
+
+			void *desc_ring;
+		};
+		struct idpf_tx_buf *tx_buf;
+		struct idpf_txq_group *txq_grp;
+		struct device *dev;
+		void __iomem *tail;
+
+		DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
+		u16 idx;
+		u16 desc_count;
+
+		u16 tx_min_pkt_len;
+		u16 compl_tag_gen_s;
+
+		struct net_device *netdev;
+	);
+	libeth_cacheline_group(read_write,
+		u16 next_to_use;
+		u16 next_to_clean;
+
+		union {
+			u32 cleaned_bytes;
+			u32 clean_budget;
+		};
+		u16 cleaned_pkts;
 
-	struct idpf_txq_stash *stash;
+		u16 tx_max_bufs;
+		struct idpf_txq_stash *stash;
 
-	struct u64_stats_sync stats_sync;
-	struct idpf_tx_queue_stats q_stats;
+		u16 compl_tag_bufid_m;
+		u16 compl_tag_cur_gen;
+		u16 compl_tag_gen_max;
 
-	/* Slowpath */
-	u32 q_id;
-	u32 size;
-	dma_addr_t dma;
+		struct u64_stats_sync stats_sync;
+		struct idpf_tx_queue_stats q_stats;
+	);
+	libeth_cacheline_group(cold,
+		u32 q_id;
+		u32 size;
+		dma_addr_t dma;
 
-	struct idpf_q_vector *q_vector;
-} ____cacheline_aligned;
+		struct idpf_q_vector *q_vector;
+	);
+};
+libeth_cacheline_set_assert(struct idpf_tx_queue, 64,
+			    88 + sizeof(struct u64_stats_sync),
+			    24);
 
 /**
  * struct idpf_buf_queue - software structure representing a buffer queue
+ * @read_mostly: CL group with rarely written hot fields
  * @split_buf: buffer descriptor array
  * @rx_buf: Struct with RX buffer related members
  * @rx_buf.buf: See struct idpf_rx_buf
@@ -810,9 +842,11 @@ struct idpf_tx_queue {
  * @tail: Tail offset
  * @flags: See enum idpf_queue_flags_t
  * @desc_count: Number of descriptors
+ * @read_write: CL group with both read/write hot fields
  * @next_to_use: Next descriptor to use
  * @next_to_clean: Next descriptor to clean
  * @next_to_alloc: RX buffer to allocate at
+ * @cold: CL group with fields no touched on hotpath
  * @q_id: Queue id
  * @size: Length of descriptor ring in bytes
  * @dma: Physical address of ring
@@ -822,79 +856,95 @@ struct idpf_tx_queue {
  * @rx_buf_size: Buffer size
  */
 struct idpf_buf_queue {
-	struct virtchnl2_splitq_rx_buf_desc *split_buf;
-	struct {
-		struct idpf_rx_buf *buf;
-		dma_addr_t hdr_buf_pa;
-		void *hdr_buf_va;
-	} rx_buf;
-	struct page_pool *pp;
-	void __iomem *tail;
-
-	DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
-	u16 desc_count;
-	u16 next_to_use;
-	u16 next_to_clean;
-	u16 next_to_alloc;
-
-	/* Slowpath */
-	u32 q_id;
-	u32 size;
-	dma_addr_t dma;
-
-	struct idpf_q_vector *q_vector;
-
-	u16 rx_buffer_low_watermark;
-	u16 rx_hbuf_size;
-	u16 rx_buf_size;
-} ____cacheline_aligned;
+	libeth_cacheline_group(read_mostly,
+		struct virtchnl2_splitq_rx_buf_desc *split_buf;
+		struct {
+			struct idpf_rx_buf *buf;
+			dma_addr_t hdr_buf_pa;
+			void *hdr_buf_va;
+		} rx_buf;
+		struct page_pool *pp;
+		void __iomem *tail;
+
+		DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
+		u32 desc_count;
+	);
+	libeth_cacheline_group(read_write,
+		u32 next_to_use;
+		u32 next_to_clean;
+		u32 next_to_alloc;
+	);
+	libeth_cacheline_group(cold,
+		u32 q_id;
+		u32 size;
+		dma_addr_t dma;
+
+		struct idpf_q_vector *q_vector;
+
+		u16 rx_buffer_low_watermark;
+		u16 rx_hbuf_size;
+		u16 rx_buf_size;
+	);
+};
+libeth_cacheline_set_assert(struct idpf_buf_queue, 64, 16, 32);
 
 /**
  * struct idpf_compl_queue - software structure representing a completion queue
+ * @read_mostly: CL group with rarely written hot fields
  * @comp: completion descriptor array
  * @txq_grp: See struct idpf_txq_group
  * @flags: See enum idpf_queue_flags_t
  * @desc_count: Number of descriptors
+ * @clean_budget: queue cleaning budget
+ * @netdev: &net_device corresponding to this queue
+ * @read_write: CL group with both read/write hot fields
  * @next_to_use: Next descriptor to use. Relevant in both split & single txq
  *		 and bufq.
  * @next_to_clean: Next descriptor to clean
- * @netdev: &net_device corresponding to this queue
- * @clean_budget: queue cleaning budget
  * @num_completions: Only relevant for TX completion queue. It tracks the
  *		     number of completions received to compare against the
  *		     number of completions pending, as accumulated by the
  *		     TX queues.
+ * @cold: CL group with fields no touched on hotpath
  * @q_id: Queue id
  * @size: Length of descriptor ring in bytes
  * @dma: Physical address of ring
  * @q_vector: Backreference to associated vector
  */
 struct idpf_compl_queue {
-	struct idpf_splitq_tx_compl_desc *comp;
-	struct idpf_txq_group *txq_grp;
-
-	DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
-	u16 desc_count;
-	u16 next_to_use;
-	u16 next_to_clean;
-
-	struct net_device *netdev;
-	u32 clean_budget;
-	u32 num_completions;
+	libeth_cacheline_group(read_mostly,
+		struct idpf_splitq_tx_compl_desc *comp;
+		struct idpf_txq_group *txq_grp;
 
-	/* Slowpath */
-	u32 q_id;
-	u32 size;
-	dma_addr_t dma;
+		DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
+		u32 desc_count;
 
-	struct idpf_q_vector *q_vector;
-} ____cacheline_aligned;
+		u32 clean_budget;
+		struct net_device *netdev;
+	);
+	libeth_cacheline_group(read_write,
+		u32 next_to_use;
+		u32 next_to_clean;
+
+		u32 num_completions;
+	);
+	libeth_cacheline_group(cold,
+		u32 q_id;
+		u32 size;
+		dma_addr_t dma;
+
+		struct idpf_q_vector *q_vector;
+	);
+};
+libeth_cacheline_set_assert(struct idpf_compl_queue, 40, 16, 24);
 
 /**
  * struct idpf_sw_queue
+ * @read_mostly: CL group with rarely written hot fields
  * @ring: Pointer to the ring
  * @flags: See enum idpf_queue_flags_t
  * @desc_count: Descriptor count
+ * @read_write: CL group with both read/write hot fields
  * @next_to_use: Buffer to allocate at
  * @next_to_clean: Next descriptor to clean
  *
@@ -903,13 +953,20 @@ struct idpf_compl_queue {
  * lockless buffer management system and are strictly software only constructs.
  */
 struct idpf_sw_queue {
-	u32 *ring;
-
-	DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
-	u16 desc_count;
-	u16 next_to_use;
-	u16 next_to_clean;
-} ____cacheline_aligned;
+	libeth_cacheline_group(read_mostly,
+		u32 *ring;
+
+		DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
+		u32 desc_count;
+	);
+	libeth_cacheline_group(read_write,
+		u32 next_to_use;
+		u32 next_to_clean;
+	);
+};
+libeth_cacheline_group_assert(struct idpf_sw_queue, read_mostly, 24);
+libeth_cacheline_group_assert(struct idpf_sw_queue, read_write, 8);
+libeth_cacheline_struct_assert(struct idpf_sw_queue, 24, 8);
 
 /**
  * struct idpf_rxq_set
-- 
2.45.1

