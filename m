Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D7198C27AF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 May 2024 17:27:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ED1C08455F;
	Fri, 10 May 2024 15:27:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HpYNJSrEcT_D; Fri, 10 May 2024 15:27:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0CA8845E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715354858;
	bh=XUMJx2oipa63CgPK0hyc4G5SdXpw/ZLLxEg4XndF/AE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bO02MBKTNnZbkSWrzUpLPP1wgSYC6E0p+Zh+smhe1U6iWa9X0t2pWtG9xkguq7Y//
	 lbhcvinMOy3FdC8QNtsKjPtgiTb+MGUvwov8QnVh/nXOsExS3RvBCm1kBZhi6qfjju
	 /J/PVEuCn02Q6n37uGqvG6PHIs3bHpJ3qN8EboREMI2m8wHU+fX9grVsLnvPhogJWX
	 flpfZCroRQ3UKbO8V/Bd5RIZAqaVQ2RMMVDFokPjlmKSqPepZJVszPgCYTP2h6Uk2t
	 JrVuNtyBQHdd1xcmTnuDIBc4nddRxHIwTeztQT0sO51GLzb0ahxz3vDa+0awSFWWOx
	 ROOLlgzZ0y4hA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A0CA8845E3;
	Fri, 10 May 2024 15:27:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7C6F41BF304
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 15:27:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6832A42243
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 15:27:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0uz3hA9AvtWB for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 May 2024 15:27:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EE2E242048
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE2E242048
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EE2E242048
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 15:27:34 +0000 (UTC)
X-CSE-ConnectionGUID: GdvDAIiaTwW/VdNIBh85nA==
X-CSE-MsgGUID: jNdr+2+BSG6wC2k2z2pVRw==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="15152601"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="15152601"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 08:27:35 -0700
X-CSE-ConnectionGUID: 5GMwTn/sQPepF63jbm56MA==
X-CSE-MsgGUID: u92X4obmTtK1wTb12E9URA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="30208268"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa008.jf.intel.com with ESMTP; 10 May 2024 08:27:32 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 10 May 2024 17:26:13 +0200
Message-ID: <20240510152620.2227312-6-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240510152620.2227312-1-aleksander.lobakin@intel.com>
References: <20240510152620.2227312-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715354855; x=1746890855;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dcHfwsC47H4Q9WUI+GHlFBQpBQVe5eibuVRrxHZypqM=;
 b=STassKJEwq5faa0re0D753lbOB9FiC2m7mxpMT+/JoQonrQ+KOOmha7G
 F01mmHfLIirxRdaT5e9oTHMaCRNA/RSg2Y50z9m06pabmx2fXHSXSQrl2
 4cRaa3ZJJAUR3rf+y6daWnHjjpJu2XGKz2sr3s2Ph/bvp9LrHckYIz40T
 WjEqVJs0VFmZqjTB5d0AMeJ3A7MJC14OzAv+yQ1ITya30aG8Pxg/WIM6G
 xjkd/aszB+OuqOjoh9J0PbHPTFxRdXJNUzOrn8LnN+8b7vv05WFL1TxKR
 TeEUAIe6InND0a324+VKVjo3le8h26YJtEdhHanwOgPojEuv/0igtaKSb
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=STassKJE
Subject: [Intel-wired-lan] [PATCH RFC iwl-next 05/12] idpf: strictly assert
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Now that the queue and queue vector structures are separated and layed
out optimally, group the fields as read-mostly, read-write, and cold
cachelines and add size assertions to make sure new features won't push
something out of its place and provoke perf regression.
Despite looking innocent, this gives up to 2% of perf bump on Rx.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.h | 370 +++++++++++---------
 1 file changed, 205 insertions(+), 165 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 428b82b4de80..0192d33744ff 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -6,6 +6,7 @@
 
 #include <linux/dim.h>
 
+#include <net/libeth/cache.h>
 #include <net/page_pool/helpers.h>
 #include <net/tcp.h>
 #include <net/netdev_queues.h>
@@ -528,35 +529,43 @@ struct idpf_intr_reg {
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
@@ -641,52 +650,59 @@ struct idpf_txq_stash {
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
  * struct idpf_tx_queue - software structure represting a transmit queue
@@ -750,54 +766,60 @@ struct idpf_rx_queue {
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
  * struct idpf_buf_queue - software structure represting a buffer queue
@@ -822,32 +844,37 @@ struct idpf_tx_queue {
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
+libeth_cacheline_set_assert(struct idpf_buf_queue, 60, 12, 32);
 
 /**
  * struct idpf_compl_queue - software structure represting a completion queue
@@ -870,25 +897,31 @@ struct idpf_buf_queue {
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
+libeth_cacheline_set_assert(struct idpf_compl_queue, 40, 12, 24);
 
 /**
  * struct idpf_sw_queue
@@ -903,13 +936,20 @@ struct idpf_compl_queue {
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
+libeth_cacheline_group_assert(struct idpf_sw_queue, read_mostly, 20);
+libeth_cacheline_group_assert(struct idpf_sw_queue, read_write, 8);
+libeth_cacheline_struct_assert(struct idpf_sw_queue, 20, 8);
 
 /**
  * struct idpf_rxq_set
-- 
2.45.0

