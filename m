Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 53CDF8C2906
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 May 2024 19:01:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8139A424EF;
	Fri, 10 May 2024 17:01:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rd3TaZ3pJVBD; Fri, 10 May 2024 17:01:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 34E8C424DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715360491;
	bh=PuCIU7TBkA9iQ+/KOoblDW4BB1c28DsOpng7Yt8PdSU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FEAYcE6GNAdPcvPpK6FXBwsJ9Bg/SjYYIryz9MZviwgklAge8zdFMg2FNpLjxPWwy
	 1HkXw3gbmECJ1dm6NAjqLBiYvrQ7H/x5B0cnlcDesXQBeRLAWzVCOzYQ29KjaExlGI
	 CfR3Ng0PF94eZxuMhP8TRGxXGKCuiEJ39phNVyOMJNFXnfYcuyfVEU3VpYwdHRrfQD
	 VmZSrImJRrC3aiB7KTv0XfSOie+27CfoMN4rc9KMX38v1KjBiVfOUlkSPpwnJpj1x6
	 XSMSAGH4UZFbTz6qUBHhnPInoD9M4Dc6oxfPuk+KDBY6JMecMaTeRPqkwCBdaY5qMe
	 aSXNhm0A+9iug==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 34E8C424DE;
	Fri, 10 May 2024 17:01:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BFFCF1BF997
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 15:27:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AAB0742243
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 15:27:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cNDKNFvsweWw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 May 2024 15:27:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6B13D42048
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B13D42048
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6B13D42048
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 15:27:29 +0000 (UTC)
X-CSE-ConnectionGUID: ZAccR0/tSyyKCt8I/feX3g==
X-CSE-MsgGUID: woSvpEDpR7aXd8ZsybLiHA==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="15152566"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="15152566"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 08:27:29 -0700
X-CSE-ConnectionGUID: c+938fP0QcqzP26zzJ+NpA==
X-CSE-MsgGUID: 27ubvEcXSCSbTPBwkPA9PQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="30208254"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa008.jf.intel.com with ESMTP; 10 May 2024 08:27:25 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 10 May 2024 17:26:11 +0200
Message-ID: <20240510152620.2227312-4-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240510152620.2227312-1-aleksander.lobakin@intel.com>
References: <20240510152620.2227312-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 10 May 2024 17:01:29 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715354849; x=1746890849;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jPo9ut22zS8WmoL70m+mfjdbeG5EVUTzpwWJA+hUyYM=;
 b=h/CHstmnMwxXjfRmP/GRAVhpjGcsOyXmsXls+FP3Rvt25138tQtFENrt
 iZKllbvKDqNR4n9vG128ds7iUDM+/BZo/N/WFYx1VjfuFINK86AxOXjqx
 U3OP8ogNE0xvT8Fn6WVZL8b321zdFjpHxIu01YvbuLYXfEFUtKh9/6P/9
 w1mRFE9VpEntTuKg571emy0eFCBCNdSQcjYd7RNgOs2B6xu5U1aAVYUYx
 zosBHSTy1vfy79jcGCkskkOv60UkA9FJfqo2ZY6eYfxkP0Bek2jVBB4Qw
 p8KqITS11UuLxWcnCwRzIkAQFCuGEgdX4GcSUk1rtrXFlL97YqCHyiVuc
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h/CHstmn
Subject: [Intel-wired-lan] [PATCH RFC iwl-next 03/12] idpf: split
 &idpf_queue into 4 strictly-typed queue structures
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

Currently, sizeof(struct idpf_queue) is 32 Kb.
This is due to the 12-bit hashtable declaration at the end of the queue.
This HT is needed only for Tx queues when the flow scheduling mode is
enabled. But &idpf_queue is unified for all of the queue types,
provoking excessive memory usage.
The unified structure in general makes the code less effective via
suboptimal fields placement. You can't avoid that unless you make unions
each 2 fields. Even then, different field alignment etc., doesn't allow
you to optimize things to the limit.
Split &idpf_queue into 4 structures corresponding to the queue types:
RQ (Rx queue), SQ (Tx queue), FQ (buffer queue), and CQ (completion
queue). Place only needed fields there and shortcuts handy for hotpath.
Allocate the abovementioned hashtable dynamically and only when needed,
keeping &idpf_tx_queue relatively short (192 bytes, same as Rx). This HT
is used only for OOO completions, which aren't really hotpath anyway.
Note that this change must be done atomically, otherwise it's really
easy to get lost and miss something.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        |   3 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   | 431 ++++++---
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 125 +--
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  46 +-
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 149 +--
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 913 +++++++++++-------
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  73 +-
 7 files changed, 1019 insertions(+), 721 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 0b26dd9b8a51..f9e43d171f17 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -17,7 +17,6 @@ struct idpf_vport_max_q;
 #include <linux/sctp.h>
 #include <linux/ethtool_netlink.h>
 #include <net/gro.h>
-#include <linux/dim.h>
 
 #include "virtchnl2.h"
 #include "idpf_txrx.h"
@@ -301,7 +300,7 @@ struct idpf_vport {
 	u16 num_txq_grp;
 	struct idpf_txq_group *txq_grps;
 	u32 txq_model;
-	struct idpf_queue **txqs;
+	struct idpf_tx_queue **txqs;
 	bool crc_enable;
 
 	u16 num_rxq;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 8794ce018911..fb645c6887b3 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -4,6 +4,8 @@
 #ifndef _IDPF_TXRX_H_
 #define _IDPF_TXRX_H_
 
+#include <linux/dim.h>
+
 #include <net/page_pool/helpers.h>
 #include <net/tcp.h>
 #include <net/netdev_queues.h>
@@ -84,7 +86,7 @@
 do {								\
 	if (unlikely(++(ntc) == (rxq)->desc_count)) {		\
 		ntc = 0;					\
-		change_bit(__IDPF_Q_GEN_CHK, (rxq)->flags);	\
+		idpf_queue_change(GEN_CHK, rxq);		\
 	}							\
 } while (0)
 
@@ -111,10 +113,9 @@ do {								\
  */
 #define IDPF_TX_SPLITQ_RE_MIN_GAP	64
 
-#define IDPF_RX_BI_BUFID_S		0
-#define IDPF_RX_BI_BUFID_M		GENMASK(14, 0)
-#define IDPF_RX_BI_GEN_S		15
-#define IDPF_RX_BI_GEN_M		BIT(IDPF_RX_BI_GEN_S)
+#define IDPF_RX_BI_GEN_M		BIT(16)
+#define IDPF_RX_BI_BUFID_M		GENMASK(15, 0)
+
 #define IDPF_RXD_EOF_SPLITQ		VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_EOF_M
 #define IDPF_RXD_EOF_SINGLEQ		VIRTCHNL2_RX_BASE_DESC_STATUS_EOF_M
 
@@ -122,7 +123,7 @@ do {								\
 	((((txq)->next_to_clean > (txq)->next_to_use) ? 0 : (txq)->desc_count) + \
 	(txq)->next_to_clean - (txq)->next_to_use - 1)
 
-#define IDPF_TX_BUF_RSV_UNUSED(txq)	((txq)->buf_stack.top)
+#define IDPF_TX_BUF_RSV_UNUSED(txq)	((txq)->stash->buf_stack.top)
 #define IDPF_TX_BUF_RSV_LOW(txq)	(IDPF_TX_BUF_RSV_UNUSED(txq) < \
 					 (txq)->desc_count >> 2)
 
@@ -433,23 +434,37 @@ struct idpf_rx_ptype_decoded {
  *		      to 1 and knows that reading a gen bit of 1 in any
  *		      descriptor on the initial pass of the ring indicates a
  *		      writeback. It also flips on every ring wrap.
- * @__IDPF_RFLQ_GEN_CHK: Refill queues are SW only, so Q_GEN acts as the HW bit
- *			 and RFLGQ_GEN is the SW bit.
+ * @__IDPF_Q_RFL_GEN_CHK: Refill queues are SW only, so Q_GEN acts as the HW
+ *			  bit and Q_RFL_GEN is the SW bit.
  * @__IDPF_Q_FLOW_SCH_EN: Enable flow scheduling
  * @__IDPF_Q_SW_MARKER: Used to indicate TX queue marker completions
  * @__IDPF_Q_POLL_MODE: Enable poll mode
+ * @__IDPF_Q_CRC_EN: enable CRC offload in singleq mode
+ * @__IDPF_Q_HSPLIT_EN: enable header split on Rx (splitq)
  * @__IDPF_Q_FLAGS_NBITS: Must be last
  */
 enum idpf_queue_flags_t {
 	__IDPF_Q_GEN_CHK,
-	__IDPF_RFLQ_GEN_CHK,
+	__IDPF_Q_RFL_GEN_CHK,
 	__IDPF_Q_FLOW_SCH_EN,
 	__IDPF_Q_SW_MARKER,
 	__IDPF_Q_POLL_MODE,
+	__IDPF_Q_CRC_EN,
+	__IDPF_Q_HSPLIT_EN,
 
 	__IDPF_Q_FLAGS_NBITS,
 };
 
+#define idpf_queue_set(f, q)		__set_bit(__IDPF_Q_##f, (q)->flags)
+#define idpf_queue_clear(f, q)		__clear_bit(__IDPF_Q_##f, (q)->flags)
+#define idpf_queue_change(f, q)		__change_bit(__IDPF_Q_##f, (q)->flags)
+#define idpf_queue_has(f, q)		test_bit(__IDPF_Q_##f, (q)->flags)
+
+#define idpf_queue_has_clear(f, q)			\
+	__test_and_clear_bit(__IDPF_Q_##f, (q)->flags)
+#define idpf_queue_assign(f, q, v)			\
+	__assign_bit(__IDPF_Q_##f, (q)->flags, v)
+
 /**
  * struct idpf_vec_regs
  * @dyn_ctl_reg: Dynamic control interrupt register offset
@@ -495,7 +510,9 @@ struct idpf_intr_reg {
  * @v_idx: Vector index
  * @intr_reg: See struct idpf_intr_reg
  * @num_txq: Number of TX queues
+ * @num_complq: number of completion queues
  * @tx: Array of TX queues to service
+ * @complq: array of completion queues
  * @tx_dim: Data for TX net_dim algorithm
  * @tx_itr_value: TX interrupt throttling rate
  * @tx_intr_mode: Dynamic ITR or not
@@ -519,21 +536,24 @@ struct idpf_q_vector {
 	struct idpf_intr_reg intr_reg;
 
 	u16 num_txq;
-	struct idpf_queue **tx;
+	u16 num_complq;
+	struct idpf_tx_queue **tx;
+	struct idpf_compl_queue **complq;
+
 	struct dim tx_dim;
 	u16 tx_itr_value;
 	bool tx_intr_mode;
 	u32 tx_itr_idx;
 
 	u16 num_rxq;
-	struct idpf_queue **rx;
+	struct idpf_rx_queue **rx;
 	struct dim rx_dim;
 	u16 rx_itr_value;
 	bool rx_intr_mode;
 	u32 rx_itr_idx;
 
 	u16 num_bufq;
-	struct idpf_queue **bufq;
+	struct idpf_buf_queue **bufq;
 
 	u16 total_events;
 	char *name;
@@ -564,11 +584,6 @@ struct idpf_cleaned_stats {
 	u32 bytes;
 };
 
-union idpf_queue_stats {
-	struct idpf_rx_queue_stats rx;
-	struct idpf_tx_queue_stats tx;
-};
-
 #define IDPF_ITR_DYNAMIC	1
 #define IDPF_ITR_MAX		0x1FE0
 #define IDPF_ITR_20K		0x0032
@@ -584,39 +599,114 @@ union idpf_queue_stats {
 #define IDPF_DIM_DEFAULT_PROFILE_IX		1
 
 /**
- * struct idpf_queue
- * @dev: Device back pointer for DMA mapping
- * @vport: Back pointer to associated vport
- * @txq_grp: See struct idpf_txq_group
- * @rxq_grp: See struct idpf_rxq_group
- * @idx: For buffer queue, it is used as group id, either 0 or 1. On clean,
- *	 buffer queue uses this index to determine which group of refill queues
- *	 to clean.
- *	 For TX queue, it is used as index to map between TX queue group and
- *	 hot path TX pointers stored in vport. Used in both singleq/splitq.
- *	 For RX queue, it is used to index to total RX queue across groups and
+ * struct idpf_txq_stash - Tx buffer stash for Flow-based scheduling mode
+ * @buf_stack: Stack of empty buffers to store buffer info for out of order
+ *	       buffer completions. See struct idpf_buf_lifo.
+ * @sched_buf_hash: Hash table to stores buffers
+ */
+struct idpf_txq_stash {
+	struct idpf_buf_lifo buf_stack;
+	DECLARE_HASHTABLE(sched_buf_hash, 12);
+} ____cacheline_aligned;
+
+/**
+ * struct idpf_rx_queue - software structure represting a receive queue
+ * @bufq_sets: Pointer to the array of buffer queues in splitq mode
+ * @rx_buf: See struct idpf_rx_buf
+ * @rx: Received packets descriptor ring memory
+ * @single_buf: Posted buffers descriptor ring memory
+ * @desc_ring: Descriptor ring memory
+ * @napi: NAPI instance corresponding to this queue (splitq)
+ * @pp: Page pool pointer in singleq mode
+ * @netdev: &net_device corresponding to this queue
+ * @tail: Tail offset. Used for both queue models single and split.
+ * @flags: See enum idpf_queue_flags_t
+ * @idx: For RX queue, it is used to index to total RX queue across groups and
  *	 used for skb reporting.
- * @tail: Tail offset. Used for both queue models single and split. In splitq
- *	  model relevant only for TX queue and RX queue.
- * @tx_buf: See struct idpf_tx_buf
- * @rx_buf: Struct with RX buffer related members
- * @rx_buf.buf: See struct idpf_rx_buf
- * @rx_buf.hdr_buf_pa: DMA handle
- * @rx_buf.hdr_buf_va: Virtual address
- * @pp: Page pool pointer
+ * @desc_count: Number of descriptors
+ * @next_to_use: Next descriptor to use
+ * @next_to_clean: Next descriptor to clean
+ * @next_to_alloc: RX buffer to allocate at
+ * @rxdids: Supported RX descriptor ids
+ * @rx_ptype_lkup: LUT of Rx ptypes
  * @skb: Pointer to the skb
- * @q_type: Queue type (TX, RX, TX completion, RX buffer)
+ * @stats_sync: See struct u64_stats_sync
+ * @q_stats: See union idpf_rx_queue_stats
  * @q_id: Queue id
- * @desc_count: Number of descriptors
- * @next_to_use: Next descriptor to use. Relevant in both split & single txq
- *		 and bufq.
- * @next_to_clean: Next descriptor to clean. In split queue model, only
- *		   relevant to TX completion queue and RX queue.
- * @next_to_alloc: RX buffer to allocate at. Used only for RX. In splitq model
- *		   only relevant to RX queue.
+ * @size: Length of descriptor ring in bytes
+ * @dma: Physical address of ring
+ * @q_vector: Backreference to associated vector
+ * @rx_buffer_low_watermark: RX buffer low watermark
+ * @rx_hbuf_size: Header buffer size
+ * @rx_buf_size: Buffer size
+ * @rx_max_pkt_size: RX max packet size
+ */
+struct idpf_rx_queue {
+	union {
+		union virtchnl2_rx_desc *rx;
+		struct virtchnl2_singleq_rx_buf_desc *single_buf;
+
+		void *desc_ring;
+	};
+	union {
+		struct {
+			struct idpf_bufq_set *bufq_sets;
+			struct napi_struct *napi;
+		};
+		struct {
+			struct idpf_rx_buf *rx_buf;
+			struct page_pool *pp;
+		};
+	};
+	struct net_device *netdev;
+	void __iomem *tail;
+
+	DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
+	u16 idx;
+	u16 desc_count;
+	u16 next_to_use;
+	u16 next_to_clean;
+	u16 next_to_alloc;
+
+	u32 rxdids;
+
+	const struct idpf_rx_ptype_decoded *rx_ptype_lkup;
+	struct sk_buff *skb;
+
+	struct u64_stats_sync stats_sync;
+	struct idpf_rx_queue_stats q_stats;
+
+	/* Slowpath */
+	u32 q_id;
+	u32 size;
+	dma_addr_t dma;
+
+	struct idpf_q_vector *q_vector;
+
+	u16 rx_buffer_low_watermark;
+	u16 rx_hbuf_size;
+	u16 rx_buf_size;
+	u16 rx_max_pkt_size;
+} ____cacheline_aligned;
+
+/**
+ * struct idpf_tx_queue - software structure represting a transmit queue
+ * @tx_buf: See struct idpf_tx_buf
+ * @base_tx: Base transmit descriptor ring memory
+ * @base_ctx: Base context descriptor ring memory
+ * @flex_tx: Flex transmit descriptor ring memory
+ * @flex_ctx: Flex context descriptor ring memory
+ * @desc_ring: Descriptor ring memory
+ * @txq_grp: See struct idpf_txq_group
+ * @dev: Device back pointer for DMA mapping
+ * @tail: Tail offset. Used for both queue models single and split
  * @flags: See enum idpf_queue_flags_t
- * @q_stats: See union idpf_queue_stats
- * @stats_sync: See struct u64_stats_sync
+ * @idx: For TX queue, it is used as index to map between TX queue group and
+ *	 hot path TX pointers stored in vport. Used in both singleq/splitq.
+ * @desc_count: Number of descriptors
+ * @next_to_use: Next descriptor to use
+ * @next_to_clean: Next descriptor to clean
+ * @netdev: &net_device corresponding to this queue
  * @cleaned_bytes: Splitq only, TXQ only: When a TX completion is received on
  *		   the TX completion queue, it can be for any TXQ associated
  *		   with that completion queue. This means we can clean up to
@@ -625,26 +715,10 @@ union idpf_queue_stats {
  *		   that single call to clean the completion queue. By doing so,
  *		   we can update BQL with aggregate cleaned stats for each TXQ
  *		   only once at the end of the cleaning routine.
+ * @clean_budget: singleq only, queue cleaning budget
  * @cleaned_pkts: Number of packets cleaned for the above said case
- * @rx_hsplit_en: RX headsplit enable
- * @rx_hbuf_size: Header buffer size
- * @rx_buf_size: Buffer size
- * @rx_max_pkt_size: RX max packet size
- * @rx_buf_stride: RX buffer stride
- * @rx_buffer_low_watermark: RX buffer low watermark
- * @rxdids: Supported RX descriptor ids
- * @q_vector: Backreference to associated vector
- * @size: Length of descriptor ring in bytes
- * @dma: Physical address of ring
- * @desc_ring: Descriptor ring memory
  * @tx_max_bufs: Max buffers that can be transmitted with scatter-gather
  * @tx_min_pkt_len: Min supported packet length
- * @num_completions: Only relevant for TX completion queue. It tracks the
- *		     number of completions received to compare against the
- *		     number of completions pending, as accumulated by the
- *		     TX queues.
- * @buf_stack: Stack of empty buffers to store buffer info for out of order
- *	       buffer completions. See struct idpf_buf_lifo.
  * @compl_tag_bufid_m: Completion tag buffer id mask
  * @compl_tag_gen_s: Completion tag generation bit
  *	The format of the completion tag will change based on the TXQ
@@ -668,120 +742,188 @@ union idpf_queue_stats {
  *	This gives us 8*8160 = 65280 possible unique values.
  * @compl_tag_cur_gen: Used to keep track of current completion tag generation
  * @compl_tag_gen_max: To determine when compl_tag_cur_gen should be reset
- * @sched_buf_hash: Hash table to stores buffers
+ * @stash: Tx buffer stash for Flow-based scheduling mode
+ * @stats_sync: See struct u64_stats_sync
+ * @q_stats: See union idpf_tx_queue_stats
+ * @q_id: Queue id
+ * @size: Length of descriptor ring in bytes
+ * @dma: Physical address of ring
+ * @q_vector: Backreference to associated vector
  */
-struct idpf_queue {
-	struct device *dev;
-	struct idpf_vport *vport;
+struct idpf_tx_queue {
 	union {
-		struct idpf_txq_group *txq_grp;
-		struct idpf_rxq_group *rxq_grp;
+		struct idpf_base_tx_desc *base_tx;
+		struct idpf_base_tx_ctx_desc *base_ctx;
+		union idpf_tx_flex_desc *flex_tx;
+		struct idpf_flex_tx_ctx_desc *flex_ctx;
+
+		void *desc_ring;
 	};
-	u16 idx;
+	struct idpf_tx_buf *tx_buf;
+	struct idpf_txq_group *txq_grp;
+	struct device *dev;
 	void __iomem *tail;
-	union {
-		struct idpf_tx_buf *tx_buf;
-		struct {
-			struct idpf_rx_buf *buf;
-			dma_addr_t hdr_buf_pa;
-			void *hdr_buf_va;
-		} rx_buf;
-	};
-	struct page_pool *pp;
-	struct sk_buff *skb;
-	u16 q_type;
-	u32 q_id;
-	u16 desc_count;
 
+	DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
+	u16 idx;
+	u16 desc_count;
 	u16 next_to_use;
 	u16 next_to_clean;
-	u16 next_to_alloc;
-	DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
 
-	union idpf_queue_stats q_stats;
-	struct u64_stats_sync stats_sync;
+	struct net_device *netdev;
 
-	u32 cleaned_bytes;
+	union {
+		u32 cleaned_bytes;
+		u32 clean_budget;
+	};
 	u16 cleaned_pkts;
 
-	bool rx_hsplit_en;
-	u16 rx_hbuf_size;
-	u16 rx_buf_size;
-	u16 rx_max_pkt_size;
-	u16 rx_buf_stride;
-	u8 rx_buffer_low_watermark;
-	u64 rxdids;
-	struct idpf_q_vector *q_vector;
-	unsigned int size;
+	u16 tx_max_bufs;
+	u16 tx_min_pkt_len;
+
+	u16 compl_tag_bufid_m;
+	u16 compl_tag_gen_s;
+
+	u16 compl_tag_cur_gen;
+	u16 compl_tag_gen_max;
+
+	struct idpf_txq_stash *stash;
+
+	struct u64_stats_sync stats_sync;
+	struct idpf_tx_queue_stats q_stats;
+
+	/* Slowpath */
+	u32 q_id;
+	u32 size;
 	dma_addr_t dma;
-	union {
-		union virtchnl2_rx_desc *rx;
 
-		struct virtchnl2_singleq_rx_buf_desc *single_buf;
-		struct virtchnl2_splitq_rx_buf_desc *split_buf;
+	struct idpf_q_vector *q_vector;
+} ____cacheline_aligned;
 
-		struct idpf_base_tx_desc *base_tx;
-		struct idpf_base_tx_ctx_desc *base_ctx;
-		union idpf_tx_flex_desc *flex_tx;
-		struct idpf_flex_tx_ctx_desc *flex_ctx;
+/**
+ * struct idpf_buf_queue - software structure represting a buffer queue
+ * @rx_buf: Struct with RX buffer related members
+ * @rx_buf.buf: See struct idpf_rx_buf
+ * @rx_buf.hdr_buf_pa: DMA handle
+ * @rx_buf.hdr_buf_va: Virtual address
+ * @split_buf: Descriptor ring memory
+ * @pp: Page pool pointer
+ * @tail: Tail offset
+ * @flags: See enum idpf_queue_flags_t
+ * @desc_count: Number of descriptors
+ * @next_to_use: Next descriptor to use
+ * @next_to_clean: Next descriptor to clean
+ * @next_to_alloc: RX buffer to allocate at
+ * @q_id: Queue id
+ * @size: Length of descriptor ring in bytes
+ * @dma: Physical address of ring
+ * @q_vector: Backreference to associated vector
+ * @rx_buffer_low_watermark: RX buffer low watermark
+ * @rx_hbuf_size: Header buffer size
+ * @rx_buf_size: Buffer size
+ */
+struct idpf_buf_queue {
+	struct virtchnl2_splitq_rx_buf_desc *split_buf;
+	struct {
+		struct idpf_rx_buf *buf;
+		dma_addr_t hdr_buf_pa;
+		void *hdr_buf_va;
+	} rx_buf;
+	struct page_pool *pp;
+	void __iomem *tail;
 
-		struct idpf_splitq_tx_compl_desc *comp;
+	DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
+	u16 desc_count;
+	u16 next_to_use;
+	u16 next_to_clean;
+	u16 next_to_alloc;
 
-		void *desc_ring;
-	};
+	/* Slowpath */
+	u32 q_id;
+	u32 size;
+	dma_addr_t dma;
 
-	u16 tx_max_bufs;
-	u8 tx_min_pkt_len;
+	struct idpf_q_vector *q_vector;
 
-	u32 num_completions;
+	u16 rx_buffer_low_watermark;
+	u16 rx_hbuf_size;
+	u16 rx_buf_size;
+} ____cacheline_aligned;
 
-	struct idpf_buf_lifo buf_stack;
+/**
+ * struct idpf_compl_queue - software structure represting a completion queue
+ * @comp: Descriptor ring memory
+ * @txq_grp: See struct idpf_txq_group
+ * @flags: See enum idpf_queue_flags_t
+ * @desc_count: Number of descriptors
+ * @next_to_use: Next descriptor to use. Relevant in both split & single txq
+ *		 and bufq.
+ * @next_to_clean: Next descriptor to clean
+ * @netdev: &net_device corresponding to this queue
+ * @clean_budget: queue cleaning budget
+ * @num_completions: Only relevant for TX completion queue. It tracks the
+ *		     number of completions received to compare against the
+ *		     number of completions pending, as accumulated by the
+ *		     TX queues.
+ * @q_id: Queue id
+ * @size: Length of descriptor ring in bytes
+ * @dma: Physical address of ring
+ * @q_vector: Backreference to associated vector
+ */
+struct idpf_compl_queue {
+	struct idpf_splitq_tx_compl_desc *comp;
+	struct idpf_txq_group *txq_grp;
 
-	u16 compl_tag_bufid_m;
-	u16 compl_tag_gen_s;
+	DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
+	u16 desc_count;
+	u16 next_to_use;
+	u16 next_to_clean;
 
-	u16 compl_tag_cur_gen;
-	u16 compl_tag_gen_max;
+	struct net_device *netdev;
+	u32 clean_budget;
+	u32 num_completions;
 
-	DECLARE_HASHTABLE(sched_buf_hash, 12);
-} ____cacheline_internodealigned_in_smp;
+	/* Slowpath */
+	u32 q_id;
+	u32 size;
+	dma_addr_t dma;
+
+	struct idpf_q_vector *q_vector;
+} ____cacheline_aligned;
 
 /**
  * struct idpf_sw_queue
- * @next_to_clean: Next descriptor to clean
- * @next_to_alloc: Buffer to allocate at
- * @flags: See enum idpf_queue_flags_t
  * @ring: Pointer to the ring
+ * @flags: See enum idpf_queue_flags_t
  * @desc_count: Descriptor count
- * @dev: Device back pointer for DMA mapping
+ * @next_to_use: Buffer to allocate at
+ * @next_to_clean: Next descriptor to clean
  *
  * Software queues are used in splitq mode to manage buffers between rxq
  * producer and the bufq consumer.  These are required in order to maintain a
  * lockless buffer management system and are strictly software only constructs.
  */
 struct idpf_sw_queue {
-	u16 next_to_clean;
-	u16 next_to_alloc;
+	u32 *ring;
+
 	DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
-	u16 *ring;
 	u16 desc_count;
-	struct device *dev;
-} ____cacheline_internodealigned_in_smp;
+	u16 next_to_use;
+	u16 next_to_clean;
+} ____cacheline_aligned;
 
 /**
  * struct idpf_rxq_set
  * @rxq: RX queue
- * @refillq0: Pointer to refill queue 0
- * @refillq1: Pointer to refill queue 1
+ * @refillq: pointers to refill queues
  *
  * Splitq only.  idpf_rxq_set associates an rxq with at an array of refillqs.
  * Each rxq needs a refillq to return used buffers back to the respective bufq.
  * Bufqs then clean these refillqs for buffers to give to hardware.
  */
 struct idpf_rxq_set {
-	struct idpf_queue rxq;
-	struct idpf_sw_queue *refillq0;
-	struct idpf_sw_queue *refillq1;
+	struct idpf_rx_queue rxq;
+	struct idpf_sw_queue *refillq[IDPF_MAX_BUFQS_PER_RXQ_GRP];
 };
 
 /**
@@ -800,7 +942,7 @@ struct idpf_rxq_set {
  * managed by at most two bufqs (depending on performance configuration).
  */
 struct idpf_bufq_set {
-	struct idpf_queue bufq;
+	struct idpf_buf_queue bufq;
 	int num_refillqs;
 	struct idpf_sw_queue *refillqs;
 };
@@ -826,7 +968,7 @@ struct idpf_rxq_group {
 	union {
 		struct {
 			u16 num_rxq;
-			struct idpf_queue *rxqs[IDPF_LARGE_MAX_Q];
+			struct idpf_rx_queue *rxqs[IDPF_LARGE_MAX_Q];
 		} singleq;
 		struct {
 			u16 num_rxq_sets;
@@ -854,9 +996,10 @@ struct idpf_txq_group {
 	struct idpf_vport *vport;
 
 	u16 num_txq;
-	struct idpf_queue *txqs[IDPF_LARGE_MAX_Q];
+	struct idpf_tx_queue *txqs[IDPF_LARGE_MAX_Q];
+	struct idpf_txq_stash *stashes;
 
-	struct idpf_queue *complq;
+	struct idpf_compl_queue *complq;
 
 	u32 num_completions_pending;
 };
@@ -993,28 +1136,26 @@ void idpf_deinit_rss(struct idpf_vport *vport);
 int idpf_rx_bufs_init_all(struct idpf_vport *vport);
 void idpf_rx_add_frag(struct idpf_rx_buf *rx_buf, struct sk_buff *skb,
 		      unsigned int size);
-struct sk_buff *idpf_rx_construct_skb(struct idpf_queue *rxq,
+struct sk_buff *idpf_rx_construct_skb(const struct idpf_rx_queue *rxq,
 				      struct idpf_rx_buf *rx_buf,
 				      unsigned int size);
-bool idpf_init_rx_buf_hw_alloc(struct idpf_queue *rxq, struct idpf_rx_buf *buf);
-void idpf_rx_buf_hw_update(struct idpf_queue *rxq, u32 val);
-void idpf_tx_buf_hw_update(struct idpf_queue *tx_q, u32 val,
+void idpf_tx_buf_hw_update(struct idpf_tx_queue *tx_q, u32 val,
 			   bool xmit_more);
 unsigned int idpf_size_to_txd_count(unsigned int size);
-netdev_tx_t idpf_tx_drop_skb(struct idpf_queue *tx_q, struct sk_buff *skb);
-void idpf_tx_dma_map_error(struct idpf_queue *txq, struct sk_buff *skb,
+netdev_tx_t idpf_tx_drop_skb(struct idpf_tx_queue *tx_q, struct sk_buff *skb);
+void idpf_tx_dma_map_error(struct idpf_tx_queue *txq, struct sk_buff *skb,
 			   struct idpf_tx_buf *first, u16 ring_idx);
-unsigned int idpf_tx_desc_count_required(struct idpf_queue *txq,
+unsigned int idpf_tx_desc_count_required(struct idpf_tx_queue *txq,
 					 struct sk_buff *skb);
 bool idpf_chk_linearize(struct sk_buff *skb, unsigned int max_bufs,
 			unsigned int count);
-int idpf_tx_maybe_stop_common(struct idpf_queue *tx_q, unsigned int size);
+int idpf_tx_maybe_stop_common(struct idpf_tx_queue *tx_q, unsigned int size);
 void idpf_tx_timeout(struct net_device *netdev, unsigned int txqueue);
 netdev_tx_t idpf_tx_splitq_start(struct sk_buff *skb,
 				 struct net_device *netdev);
 netdev_tx_t idpf_tx_singleq_start(struct sk_buff *skb,
 				  struct net_device *netdev);
-bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_queue *rxq,
+bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_rx_queue *rxq,
 				      u16 cleaned_count);
 int idpf_tso(struct sk_buff *skb, struct idpf_tx_offload_params *off);
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index 986d429d1175..83447c3d026c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -445,22 +445,24 @@ struct idpf_stats {
 	.stat_offset = offsetof(_type, _stat) \
 }
 
-/* Helper macro for defining some statistics related to queues */
-#define IDPF_QUEUE_STAT(_name, _stat) \
-	IDPF_STAT(struct idpf_queue, _name, _stat)
+/* Helper macros for defining some statistics related to queues */
+#define IDPF_RX_QUEUE_STAT(_name, _stat) \
+	IDPF_STAT(struct idpf_rx_queue, _name, _stat)
+#define IDPF_TX_QUEUE_STAT(_name, _stat) \
+	IDPF_STAT(struct idpf_tx_queue, _name, _stat)
 
 /* Stats associated with a Tx queue */
 static const struct idpf_stats idpf_gstrings_tx_queue_stats[] = {
-	IDPF_QUEUE_STAT("pkts", q_stats.tx.packets),
-	IDPF_QUEUE_STAT("bytes", q_stats.tx.bytes),
-	IDPF_QUEUE_STAT("lso_pkts", q_stats.tx.lso_pkts),
+	IDPF_TX_QUEUE_STAT("pkts", q_stats.packets),
+	IDPF_TX_QUEUE_STAT("bytes", q_stats.bytes),
+	IDPF_TX_QUEUE_STAT("lso_pkts", q_stats.lso_pkts),
 };
 
 /* Stats associated with an Rx queue */
 static const struct idpf_stats idpf_gstrings_rx_queue_stats[] = {
-	IDPF_QUEUE_STAT("pkts", q_stats.rx.packets),
-	IDPF_QUEUE_STAT("bytes", q_stats.rx.bytes),
-	IDPF_QUEUE_STAT("rx_gro_hw_pkts", q_stats.rx.rsc_pkts),
+	IDPF_RX_QUEUE_STAT("pkts", q_stats.packets),
+	IDPF_RX_QUEUE_STAT("bytes", q_stats.bytes),
+	IDPF_RX_QUEUE_STAT("rx_gro_hw_pkts", q_stats.rsc_pkts),
 };
 
 #define IDPF_TX_QUEUE_STATS_LEN		ARRAY_SIZE(idpf_gstrings_tx_queue_stats)
@@ -641,7 +643,7 @@ static int idpf_get_sset_count(struct net_device *netdev, int sset)
  * Copies the stat data defined by the pointer and stat structure pair into
  * the memory supplied as data. If the pointer is null, data will be zero'd.
  */
-static void idpf_add_one_ethtool_stat(u64 *data, void *pstat,
+static void idpf_add_one_ethtool_stat(u64 *data, const void *pstat,
 				      const struct idpf_stats *stat)
 {
 	char *p;
@@ -679,6 +681,7 @@ static void idpf_add_one_ethtool_stat(u64 *data, void *pstat,
  * idpf_add_queue_stats - copy queue statistics into supplied buffer
  * @data: ethtool stats buffer
  * @q: the queue to copy
+ * @type: type of the queue
  *
  * Queue statistics must be copied while protected by u64_stats_fetch_begin,
  * so we can't directly use idpf_add_ethtool_stats. Assumes that queue stats
@@ -689,19 +692,23 @@ static void idpf_add_one_ethtool_stat(u64 *data, void *pstat,
  *
  * This function expects to be called while under rcu_read_lock().
  */
-static void idpf_add_queue_stats(u64 **data, struct idpf_queue *q)
+static void idpf_add_queue_stats(u64 **data, const void *q,
+				 enum virtchnl2_queue_type type)
 {
+	const struct u64_stats_sync *stats_sync;
 	const struct idpf_stats *stats;
 	unsigned int start;
 	unsigned int size;
 	unsigned int i;
 
-	if (q->q_type == VIRTCHNL2_QUEUE_TYPE_RX) {
+	if (type == VIRTCHNL2_QUEUE_TYPE_RX) {
 		size = IDPF_RX_QUEUE_STATS_LEN;
 		stats = idpf_gstrings_rx_queue_stats;
+		stats_sync = &((const struct idpf_rx_queue *)q)->stats_sync;
 	} else {
 		size = IDPF_TX_QUEUE_STATS_LEN;
 		stats = idpf_gstrings_tx_queue_stats;
+		stats_sync = &((const struct idpf_tx_queue *)q)->stats_sync;
 	}
 
 	/* To avoid invalid statistics values, ensure that we keep retrying
@@ -709,10 +716,10 @@ static void idpf_add_queue_stats(u64 **data, struct idpf_queue *q)
 	 * u64_stats_fetch_retry.
 	 */
 	do {
-		start = u64_stats_fetch_begin(&q->stats_sync);
+		start = u64_stats_fetch_begin(stats_sync);
 		for (i = 0; i < size; i++)
 			idpf_add_one_ethtool_stat(&(*data)[i], q, &stats[i]);
-	} while (u64_stats_fetch_retry(&q->stats_sync, start));
+	} while (u64_stats_fetch_retry(stats_sync, start));
 
 	/* Once we successfully copy the stats in, update the data pointer */
 	*data += size;
@@ -801,7 +808,7 @@ static void idpf_collect_queue_stats(struct idpf_vport *vport)
 		for (j = 0; j < num_rxq; j++) {
 			u64 hw_csum_err, hsplit, hsplit_hbo, bad_descs;
 			struct idpf_rx_queue_stats *stats;
-			struct idpf_queue *rxq;
+			struct idpf_rx_queue *rxq;
 			unsigned int start;
 
 			if (idpf_is_queue_model_split(vport->rxq_model))
@@ -815,7 +822,7 @@ static void idpf_collect_queue_stats(struct idpf_vport *vport)
 			do {
 				start = u64_stats_fetch_begin(&rxq->stats_sync);
 
-				stats = &rxq->q_stats.rx;
+				stats = &rxq->q_stats;
 				hw_csum_err = u64_stats_read(&stats->hw_csum_err);
 				hsplit = u64_stats_read(&stats->hsplit_pkts);
 				hsplit_hbo = u64_stats_read(&stats->hsplit_buf_ovf);
@@ -836,7 +843,7 @@ static void idpf_collect_queue_stats(struct idpf_vport *vport)
 
 		for (j = 0; j < txq_grp->num_txq; j++) {
 			u64 linearize, qbusy, skb_drops, dma_map_errs;
-			struct idpf_queue *txq = txq_grp->txqs[j];
+			struct idpf_tx_queue *txq = txq_grp->txqs[j];
 			struct idpf_tx_queue_stats *stats;
 			unsigned int start;
 
@@ -846,7 +853,7 @@ static void idpf_collect_queue_stats(struct idpf_vport *vport)
 			do {
 				start = u64_stats_fetch_begin(&txq->stats_sync);
 
-				stats = &txq->q_stats.tx;
+				stats = &txq->q_stats;
 				linearize = u64_stats_read(&stats->linearize);
 				qbusy = u64_stats_read(&stats->q_busy);
 				skb_drops = u64_stats_read(&stats->skb_drops);
@@ -904,12 +911,12 @@ static void idpf_get_ethtool_stats(struct net_device *netdev,
 		qtype = VIRTCHNL2_QUEUE_TYPE_TX;
 
 		for (j = 0; j < txq_grp->num_txq; j++, total++) {
-			struct idpf_queue *txq = txq_grp->txqs[j];
+			struct idpf_tx_queue *txq = txq_grp->txqs[j];
 
 			if (!txq)
 				idpf_add_empty_queue_stats(&data, qtype);
 			else
-				idpf_add_queue_stats(&data, txq);
+				idpf_add_queue_stats(&data, txq, qtype);
 		}
 	}
 
@@ -937,7 +944,7 @@ static void idpf_get_ethtool_stats(struct net_device *netdev,
 			num_rxq = rxq_grp->singleq.num_rxq;
 
 		for (j = 0; j < num_rxq; j++, total++) {
-			struct idpf_queue *rxq;
+			struct idpf_rx_queue *rxq;
 
 			if (is_splitq)
 				rxq = &rxq_grp->splitq.rxq_sets[j]->rxq;
@@ -946,7 +953,7 @@ static void idpf_get_ethtool_stats(struct net_device *netdev,
 			if (!rxq)
 				idpf_add_empty_queue_stats(&data, qtype);
 			else
-				idpf_add_queue_stats(&data, rxq);
+				idpf_add_queue_stats(&data, rxq, qtype);
 
 			/* In splitq mode, don't get page pool stats here since
 			 * the pools are attached to the buffer queues
@@ -961,7 +968,7 @@ static void idpf_get_ethtool_stats(struct net_device *netdev,
 
 	for (i = 0; i < vport->num_rxq_grp; i++) {
 		for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
-			struct idpf_queue *rxbufq =
+			struct idpf_buf_queue *rxbufq =
 				&vport->rxq_grps[i].splitq.bufq_sets[j].bufq;
 
 			page_pool_get_stats(rxbufq->pp, &pp_stats);
@@ -979,60 +986,64 @@ static void idpf_get_ethtool_stats(struct net_device *netdev,
 }
 
 /**
- * idpf_find_rxq - find rxq from q index
+ * idpf_find_rxq_vec - find rxq vector from q index
  * @vport: virtual port associated to queue
  * @q_num: q index used to find queue
  *
- * returns pointer to rx queue
+ * returns pointer to rx vector
  */
-static struct idpf_queue *idpf_find_rxq(struct idpf_vport *vport, int q_num)
+static struct idpf_q_vector *idpf_find_rxq_vec(const struct idpf_vport *vport,
+					       int q_num)
 {
 	int q_grp, q_idx;
 
 	if (!idpf_is_queue_model_split(vport->rxq_model))
-		return vport->rxq_grps->singleq.rxqs[q_num];
+		return vport->rxq_grps->singleq.rxqs[q_num]->q_vector;
 
 	q_grp = q_num / IDPF_DFLT_SPLITQ_RXQ_PER_GROUP;
 	q_idx = q_num % IDPF_DFLT_SPLITQ_RXQ_PER_GROUP;
 
-	return &vport->rxq_grps[q_grp].splitq.rxq_sets[q_idx]->rxq;
+	return vport->rxq_grps[q_grp].splitq.rxq_sets[q_idx]->rxq.q_vector;
 }
 
 /**
- * idpf_find_txq - find txq from q index
+ * idpf_find_txq_vec - find txq vector from q index
  * @vport: virtual port associated to queue
  * @q_num: q index used to find queue
  *
- * returns pointer to tx queue
+ * returns pointer to tx vector
  */
-static struct idpf_queue *idpf_find_txq(struct idpf_vport *vport, int q_num)
+static struct idpf_q_vector *idpf_find_txq_vec(const struct idpf_vport *vport,
+					       int q_num)
 {
 	int q_grp;
 
 	if (!idpf_is_queue_model_split(vport->txq_model))
-		return vport->txqs[q_num];
+		return vport->txqs[q_num]->q_vector;
 
 	q_grp = q_num / IDPF_DFLT_SPLITQ_TXQ_PER_GROUP;
 
-	return vport->txq_grps[q_grp].complq;
+	return vport->txq_grps[q_grp].complq->q_vector;
 }
 
 /**
  * __idpf_get_q_coalesce - get ITR values for specific queue
  * @ec: ethtool structure to fill with driver's coalesce settings
- * @q: quuee of Rx or Tx
+ * @q_vector: queue vector corresponding to this queue
+ * @type: queue type
  */
 static void __idpf_get_q_coalesce(struct ethtool_coalesce *ec,
-				  struct idpf_queue *q)
+				  const struct idpf_q_vector *q_vector,
+				  enum virtchnl2_queue_type type)
 {
-	if (q->q_type == VIRTCHNL2_QUEUE_TYPE_RX) {
+	if (type == VIRTCHNL2_QUEUE_TYPE_RX) {
 		ec->use_adaptive_rx_coalesce =
-				IDPF_ITR_IS_DYNAMIC(q->q_vector->rx_intr_mode);
-		ec->rx_coalesce_usecs = q->q_vector->rx_itr_value;
+				IDPF_ITR_IS_DYNAMIC(q_vector->rx_intr_mode);
+		ec->rx_coalesce_usecs = q_vector->rx_itr_value;
 	} else {
 		ec->use_adaptive_tx_coalesce =
-				IDPF_ITR_IS_DYNAMIC(q->q_vector->tx_intr_mode);
-		ec->tx_coalesce_usecs = q->q_vector->tx_itr_value;
+				IDPF_ITR_IS_DYNAMIC(q_vector->tx_intr_mode);
+		ec->tx_coalesce_usecs = q_vector->tx_itr_value;
 	}
 }
 
@@ -1048,8 +1059,8 @@ static int idpf_get_q_coalesce(struct net_device *netdev,
 			       struct ethtool_coalesce *ec,
 			       u32 q_num)
 {
-	struct idpf_netdev_priv *np = netdev_priv(netdev);
-	struct idpf_vport *vport;
+	const struct idpf_netdev_priv *np = netdev_priv(netdev);
+	const struct idpf_vport *vport;
 	int err = 0;
 
 	idpf_vport_ctrl_lock(netdev);
@@ -1064,10 +1075,12 @@ static int idpf_get_q_coalesce(struct net_device *netdev,
 	}
 
 	if (q_num < vport->num_rxq)
-		__idpf_get_q_coalesce(ec, idpf_find_rxq(vport, q_num));
+		__idpf_get_q_coalesce(ec, idpf_find_rxq_vec(vport, q_num),
+				      VIRTCHNL2_QUEUE_TYPE_RX);
 
 	if (q_num < vport->num_txq)
-		__idpf_get_q_coalesce(ec, idpf_find_txq(vport, q_num));
+		__idpf_get_q_coalesce(ec, idpf_find_txq_vec(vport, q_num),
+				      VIRTCHNL2_QUEUE_TYPE_TX);
 
 unlock_mutex:
 	idpf_vport_ctrl_unlock(netdev);
@@ -1111,16 +1124,15 @@ static int idpf_get_per_q_coalesce(struct net_device *netdev, u32 q_num,
 /**
  * __idpf_set_q_coalesce - set ITR values for specific queue
  * @ec: ethtool structure from user to update ITR settings
- * @q: queue for which itr values has to be set
+ * @qv: queue vector for which itr values has to be set
  * @is_rxq: is queue type rx
  *
  * Returns 0 on success, negative otherwise.
  */
-static int __idpf_set_q_coalesce(struct ethtool_coalesce *ec,
-				 struct idpf_queue *q, bool is_rxq)
+static int __idpf_set_q_coalesce(const struct ethtool_coalesce *ec,
+				 struct idpf_q_vector *qv, bool is_rxq)
 {
 	u32 use_adaptive_coalesce, coalesce_usecs;
-	struct idpf_q_vector *qv = q->q_vector;
 	bool is_dim_ena = false;
 	u16 itr_val;
 
@@ -1136,7 +1148,7 @@ static int __idpf_set_q_coalesce(struct ethtool_coalesce *ec,
 		itr_val = qv->tx_itr_value;
 	}
 	if (coalesce_usecs != itr_val && use_adaptive_coalesce) {
-		netdev_err(q->vport->netdev, "Cannot set coalesce usecs if adaptive enabled\n");
+		netdev_err(qv->vport->netdev, "Cannot set coalesce usecs if adaptive enabled\n");
 
 		return -EINVAL;
 	}
@@ -1145,7 +1157,7 @@ static int __idpf_set_q_coalesce(struct ethtool_coalesce *ec,
 		return 0;
 
 	if (coalesce_usecs > IDPF_ITR_MAX) {
-		netdev_err(q->vport->netdev,
+		netdev_err(qv->vport->netdev,
 			   "Invalid value, %d-usecs range is 0-%d\n",
 			   coalesce_usecs, IDPF_ITR_MAX);
 
@@ -1154,7 +1166,7 @@ static int __idpf_set_q_coalesce(struct ethtool_coalesce *ec,
 
 	if (coalesce_usecs % 2) {
 		coalesce_usecs--;
-		netdev_info(q->vport->netdev,
+		netdev_info(qv->vport->netdev,
 			    "HW only supports even ITR values, ITR rounded to %d\n",
 			    coalesce_usecs);
 	}
@@ -1193,15 +1205,16 @@ static int __idpf_set_q_coalesce(struct ethtool_coalesce *ec,
  *
  * Return 0 on success, and negative on failure
  */
-static int idpf_set_q_coalesce(struct idpf_vport *vport,
-			       struct ethtool_coalesce *ec,
+static int idpf_set_q_coalesce(const struct idpf_vport *vport,
+			       const struct ethtool_coalesce *ec,
 			       int q_num, bool is_rxq)
 {
-	struct idpf_queue *q;
+	struct idpf_q_vector *qv;
 
-	q = is_rxq ? idpf_find_rxq(vport, q_num) : idpf_find_txq(vport, q_num);
+	qv = is_rxq ? idpf_find_rxq_vec(vport, q_num) :
+		      idpf_find_txq_vec(vport, q_num);
 
-	if (q && __idpf_set_q_coalesce(ec, q, is_rxq))
+	if (qv && __idpf_set_q_coalesce(ec, qv, is_rxq))
 		return -EINVAL;
 
 	return 0;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index b0930303eab3..3e8b24430dd8 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1319,14 +1319,14 @@ static void idpf_rx_init_buf_tail(struct idpf_vport *vport)
 
 		if (idpf_is_queue_model_split(vport->rxq_model)) {
 			for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
-				struct idpf_queue *q =
+				const struct idpf_buf_queue *q =
 					&grp->splitq.bufq_sets[j].bufq;
 
 				writel(q->next_to_alloc, q->tail);
 			}
 		} else {
 			for (j = 0; j < grp->singleq.num_rxq; j++) {
-				struct idpf_queue *q =
+				const struct idpf_rx_queue *q =
 					grp->singleq.rxqs[j];
 
 				writel(q->next_to_alloc, q->tail);
@@ -1856,7 +1856,7 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 	enum idpf_vport_state current_state = np->state;
 	struct idpf_adapter *adapter = vport->adapter;
 	struct idpf_vport *new_vport;
-	int err, i;
+	int err;
 
 	/* If the system is low on memory, we can end up in bad state if we
 	 * free all the memory for queue resources and try to allocate them
@@ -1930,46 +1930,6 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 	 */
 	memcpy(vport, new_vport, offsetof(struct idpf_vport, link_speed_mbps));
 
-	/* Since idpf_vport_queues_alloc was called with new_port, the queue
-	 * back pointers are currently pointing to the local new_vport. Reset
-	 * the backpointers to the original vport here
-	 */
-	for (i = 0; i < vport->num_txq_grp; i++) {
-		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
-		int j;
-
-		tx_qgrp->vport = vport;
-		for (j = 0; j < tx_qgrp->num_txq; j++)
-			tx_qgrp->txqs[j]->vport = vport;
-
-		if (idpf_is_queue_model_split(vport->txq_model))
-			tx_qgrp->complq->vport = vport;
-	}
-
-	for (i = 0; i < vport->num_rxq_grp; i++) {
-		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
-		struct idpf_queue *q;
-		u16 num_rxq;
-		int j;
-
-		rx_qgrp->vport = vport;
-		for (j = 0; j < vport->num_bufqs_per_qgrp; j++)
-			rx_qgrp->splitq.bufq_sets[j].bufq.vport = vport;
-
-		if (idpf_is_queue_model_split(vport->rxq_model))
-			num_rxq = rx_qgrp->splitq.num_rxq_sets;
-		else
-			num_rxq = rx_qgrp->singleq.num_rxq;
-
-		for (j = 0; j < num_rxq; j++) {
-			if (idpf_is_queue_model_split(vport->rxq_model))
-				q = &rx_qgrp->splitq.rxq_sets[j]->rxq;
-			else
-				q = rx_qgrp->singleq.rxqs[j];
-			q->vport = vport;
-		}
-	}
-
 	if (reset_cause == IDPF_SR_Q_CHANGE)
 		idpf_vport_alloc_vec_indexes(vport);
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index b17d88e15000..b51f7cd6db01 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -186,7 +186,7 @@ static int idpf_tx_singleq_csum(struct sk_buff *skb,
  * and gets a physical address for each memory location and programs
  * it and the length into the transmit base mode descriptor.
  */
-static void idpf_tx_singleq_map(struct idpf_queue *tx_q,
+static void idpf_tx_singleq_map(struct idpf_tx_queue *tx_q,
 				struct idpf_tx_buf *first,
 				struct idpf_tx_offload_params *offloads)
 {
@@ -210,7 +210,7 @@ static void idpf_tx_singleq_map(struct idpf_queue *tx_q,
 	dma = dma_map_single(tx_q->dev, skb->data, size, DMA_TO_DEVICE);
 
 	/* write each descriptor with CRC bit */
-	if (tx_q->vport->crc_enable)
+	if (idpf_queue_has(CRC_EN, tx_q))
 		td_cmd |= IDPF_TX_DESC_CMD_ICRC;
 
 	for (frag = &skb_shinfo(skb)->frags[0];; frag++) {
@@ -285,7 +285,7 @@ static void idpf_tx_singleq_map(struct idpf_queue *tx_q,
 	/* set next_to_watch value indicating a packet is present */
 	first->next_to_watch = tx_desc;
 
-	nq = netdev_get_tx_queue(tx_q->vport->netdev, tx_q->idx);
+	nq = netdev_get_tx_queue(tx_q->netdev, tx_q->idx);
 	netdev_tx_sent_queue(nq, first->bytecount);
 
 	idpf_tx_buf_hw_update(tx_q, i, netdev_xmit_more());
@@ -299,7 +299,7 @@ static void idpf_tx_singleq_map(struct idpf_queue *tx_q,
  * ring entry to reflect that this index is a context descriptor
  */
 static struct idpf_base_tx_ctx_desc *
-idpf_tx_singleq_get_ctx_desc(struct idpf_queue *txq)
+idpf_tx_singleq_get_ctx_desc(struct idpf_tx_queue *txq)
 {
 	struct idpf_base_tx_ctx_desc *ctx_desc;
 	int ntu = txq->next_to_use;
@@ -320,7 +320,7 @@ idpf_tx_singleq_get_ctx_desc(struct idpf_queue *txq)
  * @txq: queue to send buffer on
  * @offload: offload parameter structure
  **/
-static void idpf_tx_singleq_build_ctx_desc(struct idpf_queue *txq,
+static void idpf_tx_singleq_build_ctx_desc(struct idpf_tx_queue *txq,
 					   struct idpf_tx_offload_params *offload)
 {
 	struct idpf_base_tx_ctx_desc *desc = idpf_tx_singleq_get_ctx_desc(txq);
@@ -333,7 +333,7 @@ static void idpf_tx_singleq_build_ctx_desc(struct idpf_queue *txq,
 		qw1 |= FIELD_PREP(IDPF_TXD_CTX_QW1_MSS_M, offload->mss);
 
 		u64_stats_update_begin(&txq->stats_sync);
-		u64_stats_inc(&txq->q_stats.tx.lso_pkts);
+		u64_stats_inc(&txq->q_stats.lso_pkts);
 		u64_stats_update_end(&txq->stats_sync);
 	}
 
@@ -352,7 +352,7 @@ static void idpf_tx_singleq_build_ctx_desc(struct idpf_queue *txq,
  * Returns NETDEV_TX_OK if sent, else an error code
  */
 static netdev_tx_t idpf_tx_singleq_frame(struct sk_buff *skb,
-					 struct idpf_queue *tx_q)
+					 struct idpf_tx_queue *tx_q)
 {
 	struct idpf_tx_offload_params offload = { };
 	struct idpf_tx_buf *first;
@@ -419,7 +419,7 @@ netdev_tx_t idpf_tx_singleq_start(struct sk_buff *skb,
 				  struct net_device *netdev)
 {
 	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
-	struct idpf_queue *tx_q;
+	struct idpf_tx_queue *tx_q;
 
 	tx_q = vport->txqs[skb_get_queue_mapping(skb)];
 
@@ -442,16 +442,15 @@ netdev_tx_t idpf_tx_singleq_start(struct sk_buff *skb,
  * @cleaned: returns number of packets cleaned
  *
  */
-static bool idpf_tx_singleq_clean(struct idpf_queue *tx_q, int napi_budget,
+static bool idpf_tx_singleq_clean(struct idpf_tx_queue *tx_q, int napi_budget,
 				  int *cleaned)
 {
-	unsigned int budget = tx_q->vport->compln_clean_budget;
 	unsigned int total_bytes = 0, total_pkts = 0;
 	struct idpf_base_tx_desc *tx_desc;
+	u32 budget = tx_q->clean_budget;
 	s16 ntc = tx_q->next_to_clean;
 	struct idpf_netdev_priv *np;
 	struct idpf_tx_buf *tx_buf;
-	struct idpf_vport *vport;
 	struct netdev_queue *nq;
 	bool dont_wake;
 
@@ -550,16 +549,15 @@ static bool idpf_tx_singleq_clean(struct idpf_queue *tx_q, int napi_budget,
 	*cleaned += total_pkts;
 
 	u64_stats_update_begin(&tx_q->stats_sync);
-	u64_stats_add(&tx_q->q_stats.tx.packets, total_pkts);
-	u64_stats_add(&tx_q->q_stats.tx.bytes, total_bytes);
+	u64_stats_add(&tx_q->q_stats.packets, total_pkts);
+	u64_stats_add(&tx_q->q_stats.bytes, total_bytes);
 	u64_stats_update_end(&tx_q->stats_sync);
 
-	vport = tx_q->vport;
-	np = netdev_priv(vport->netdev);
-	nq = netdev_get_tx_queue(vport->netdev, tx_q->idx);
+	np = netdev_priv(tx_q->netdev);
+	nq = netdev_get_tx_queue(tx_q->netdev, tx_q->idx);
 
 	dont_wake = np->state != __IDPF_VPORT_UP ||
-		    !netif_carrier_ok(vport->netdev);
+		    !netif_carrier_ok(tx_q->netdev);
 	__netif_txq_completed_wake(nq, total_pkts, total_bytes,
 				   IDPF_DESC_UNUSED(tx_q), IDPF_TX_WAKE_THRESH,
 				   dont_wake);
@@ -584,7 +582,7 @@ static bool idpf_tx_singleq_clean_all(struct idpf_q_vector *q_vec, int budget,
 
 	budget_per_q = num_txq ? max(budget / num_txq, 1) : 0;
 	for (i = 0; i < num_txq; i++) {
-		struct idpf_queue *q;
+		struct idpf_tx_queue *q;
 
 		q = q_vec->tx[i];
 		clean_complete &= idpf_tx_singleq_clean(q, budget_per_q,
@@ -605,8 +603,9 @@ static bool idpf_tx_singleq_clean_all(struct idpf_q_vector *q_vec, int budget,
  * The status_error_ptype_len doesn't need to be shifted because it begins
  * at offset zero.
  */
-static bool idpf_rx_singleq_test_staterr(const union virtchnl2_rx_desc *rx_desc,
-					 const u64 stat_err_bits)
+static bool
+idpf_rx_singleq_test_staterr(const union virtchnl2_rx_desc *rx_desc,
+			     const u64 stat_err_bits)
 {
 	return !!(rx_desc->base_wb.qword1.status_error_ptype_len &
 		  cpu_to_le64(stat_err_bits));
@@ -614,14 +613,9 @@ static bool idpf_rx_singleq_test_staterr(const union virtchnl2_rx_desc *rx_desc,
 
 /**
  * idpf_rx_singleq_is_non_eop - process handling of non-EOP buffers
- * @rxq: Rx ring being processed
  * @rx_desc: Rx descriptor for current buffer
- * @skb: Current socket buffer containing buffer in progress
- * @ntc: next to clean
  */
-static bool idpf_rx_singleq_is_non_eop(struct idpf_queue *rxq,
-				       union virtchnl2_rx_desc *rx_desc,
-				       struct sk_buff *skb, u16 ntc)
+static bool idpf_rx_singleq_is_non_eop(const union virtchnl2_rx_desc *rx_desc)
 {
 	/* if we are the last buffer then there is nothing else to do */
 	if (likely(idpf_rx_singleq_test_staterr(rx_desc, IDPF_RXD_EOF_SINGLEQ)))
@@ -639,7 +633,7 @@ static bool idpf_rx_singleq_is_non_eop(struct idpf_queue *rxq,
  *
  * skb->protocol must be set before this function is called
  */
-static void idpf_rx_singleq_csum(struct idpf_queue *rxq, struct sk_buff *skb,
+static void idpf_rx_singleq_csum(struct idpf_rx_queue *rxq, struct sk_buff *skb,
 				 struct idpf_rx_csum_decoded *csum_bits,
 				 u16 ptype)
 {
@@ -647,14 +641,14 @@ static void idpf_rx_singleq_csum(struct idpf_queue *rxq, struct sk_buff *skb,
 	bool ipv4, ipv6;
 
 	/* check if Rx checksum is enabled */
-	if (unlikely(!(rxq->vport->netdev->features & NETIF_F_RXCSUM)))
+	if (unlikely(!(rxq->netdev->features & NETIF_F_RXCSUM)))
 		return;
 
 	/* check if HW has decoded the packet and checksum */
 	if (unlikely(!(csum_bits->l3l4p)))
 		return;
 
-	decoded = rxq->vport->rx_ptype_lkup[ptype];
+	decoded = rxq->rx_ptype_lkup[ptype];
 	if (unlikely(!(decoded.known && decoded.outer_ip)))
 		return;
 
@@ -707,7 +701,7 @@ static void idpf_rx_singleq_csum(struct idpf_queue *rxq, struct sk_buff *skb,
 
 checksum_fail:
 	u64_stats_update_begin(&rxq->stats_sync);
-	u64_stats_inc(&rxq->q_stats.rx.hw_csum_err);
+	u64_stats_inc(&rxq->q_stats.hw_csum_err);
 	u64_stats_update_end(&rxq->stats_sync);
 }
 
@@ -721,9 +715,9 @@ static void idpf_rx_singleq_csum(struct idpf_queue *rxq, struct sk_buff *skb,
  * This function only operates on the VIRTCHNL2_RXDID_1_32B_BASE_M base 32byte
  * descriptor writeback format.
  **/
-static void idpf_rx_singleq_base_csum(struct idpf_queue *rx_q,
+static void idpf_rx_singleq_base_csum(struct idpf_rx_queue *rx_q,
 				      struct sk_buff *skb,
-				      union virtchnl2_rx_desc *rx_desc,
+				      const union virtchnl2_rx_desc *rx_desc,
 				      u16 ptype)
 {
 	struct idpf_rx_csum_decoded csum_bits;
@@ -761,9 +755,9 @@ static void idpf_rx_singleq_base_csum(struct idpf_queue *rx_q,
  * This function only operates on the VIRTCHNL2_RXDID_2_FLEX_SQ_NIC flexible
  * descriptor writeback format.
  **/
-static void idpf_rx_singleq_flex_csum(struct idpf_queue *rx_q,
+static void idpf_rx_singleq_flex_csum(struct idpf_rx_queue *rx_q,
 				      struct sk_buff *skb,
-				      union virtchnl2_rx_desc *rx_desc,
+				      const union virtchnl2_rx_desc *rx_desc,
 				      u16 ptype)
 {
 	struct idpf_rx_csum_decoded csum_bits;
@@ -801,14 +795,14 @@ static void idpf_rx_singleq_flex_csum(struct idpf_queue *rx_q,
  * This function only operates on the VIRTCHNL2_RXDID_1_32B_BASE_M base 32byte
  * descriptor writeback format.
  **/
-static void idpf_rx_singleq_base_hash(struct idpf_queue *rx_q,
+static void idpf_rx_singleq_base_hash(struct idpf_rx_queue *rx_q,
 				      struct sk_buff *skb,
-				      union virtchnl2_rx_desc *rx_desc,
+				      const union virtchnl2_rx_desc *rx_desc,
 				      struct idpf_rx_ptype_decoded *decoded)
 {
 	u64 mask, qw1;
 
-	if (unlikely(!(rx_q->vport->netdev->features & NETIF_F_RXHASH)))
+	if (unlikely(!(rx_q->netdev->features & NETIF_F_RXHASH)))
 		return;
 
 	mask = VIRTCHNL2_RX_BASE_DESC_FLTSTAT_RSS_HASH_M;
@@ -831,12 +825,12 @@ static void idpf_rx_singleq_base_hash(struct idpf_queue *rx_q,
  * This function only operates on the VIRTCHNL2_RXDID_2_FLEX_SQ_NIC flexible
  * descriptor writeback format.
  **/
-static void idpf_rx_singleq_flex_hash(struct idpf_queue *rx_q,
+static void idpf_rx_singleq_flex_hash(struct idpf_rx_queue *rx_q,
 				      struct sk_buff *skb,
-				      union virtchnl2_rx_desc *rx_desc,
+				      const union virtchnl2_rx_desc *rx_desc,
 				      struct idpf_rx_ptype_decoded *decoded)
 {
-	if (unlikely(!(rx_q->vport->netdev->features & NETIF_F_RXHASH)))
+	if (unlikely(!(rx_q->netdev->features & NETIF_F_RXHASH)))
 		return;
 
 	if (FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_STATUS0_RSS_VALID_M,
@@ -857,16 +851,16 @@ static void idpf_rx_singleq_flex_hash(struct idpf_queue *rx_q,
  * order to populate the hash, checksum, VLAN, protocol, and
  * other fields within the skb.
  */
-static void idpf_rx_singleq_process_skb_fields(struct idpf_queue *rx_q,
-					       struct sk_buff *skb,
-					       union virtchnl2_rx_desc *rx_desc,
-					       u16 ptype)
+static void
+idpf_rx_singleq_process_skb_fields(struct idpf_rx_queue *rx_q,
+				   struct sk_buff *skb,
+				   const union virtchnl2_rx_desc *rx_desc,
+				   u16 ptype)
 {
-	struct idpf_rx_ptype_decoded decoded =
-					rx_q->vport->rx_ptype_lkup[ptype];
+	struct idpf_rx_ptype_decoded decoded = rx_q->rx_ptype_lkup[ptype];
 
 	/* modifies the skb - consumes the enet header */
-	skb->protocol = eth_type_trans(skb, rx_q->vport->netdev);
+	skb->protocol = eth_type_trans(skb, rx_q->netdev);
 
 	/* Check if we're using base mode descriptor IDs */
 	if (rx_q->rxdids == VIRTCHNL2_RXDID_1_32B_BASE_M) {
@@ -878,6 +872,22 @@ static void idpf_rx_singleq_process_skb_fields(struct idpf_queue *rx_q,
 	}
 }
 
+/**
+ * idpf_rx_buf_hw_update - Store the new tail and head values
+ * @rxq: queue to bump
+ * @val: new head index
+ */
+static void idpf_rx_buf_hw_update(struct idpf_rx_queue *rxq, u32 val)
+{
+	rxq->next_to_use = val;
+
+	if (unlikely(!rxq->tail))
+		return;
+
+	/* writel has an implicit memory barrier */
+	writel(val, rxq->tail);
+}
+
 /**
  * idpf_rx_singleq_buf_hw_alloc_all - Replace used receive buffers
  * @rx_q: queue for which the hw buffers are allocated
@@ -885,7 +895,7 @@ static void idpf_rx_singleq_process_skb_fields(struct idpf_queue *rx_q,
  *
  * Returns false if all allocations were successful, true if any fail
  */
-bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_queue *rx_q,
+bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_rx_queue *rx_q,
 				      u16 cleaned_count)
 {
 	struct virtchnl2_singleq_rx_buf_desc *desc;
@@ -896,7 +906,7 @@ bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_queue *rx_q,
 		return false;
 
 	desc = &rx_q->single_buf[nta];
-	buf = &rx_q->rx_buf.buf[nta];
+	buf = &rx_q->rx_buf[nta];
 
 	do {
 		dma_addr_t addr;
@@ -916,7 +926,7 @@ bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_queue *rx_q,
 		nta++;
 		if (unlikely(nta == rx_q->desc_count)) {
 			desc = &rx_q->single_buf[0];
-			buf = rx_q->rx_buf.buf;
+			buf = rx_q->rx_buf;
 			nta = 0;
 		}
 
@@ -933,7 +943,6 @@ bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_queue *rx_q,
 
 /**
  * idpf_rx_singleq_extract_base_fields - Extract fields from the Rx descriptor
- * @rx_q: Rx descriptor queue
  * @rx_desc: the descriptor to process
  * @fields: storage for extracted values
  *
@@ -943,9 +952,9 @@ bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_queue *rx_q,
  * This function only operates on the VIRTCHNL2_RXDID_1_32B_BASE_M base 32byte
  * descriptor writeback format.
  */
-static void idpf_rx_singleq_extract_base_fields(struct idpf_queue *rx_q,
-						union virtchnl2_rx_desc *rx_desc,
-						struct idpf_rx_extracted *fields)
+static void
+idpf_rx_singleq_extract_base_fields(const union virtchnl2_rx_desc *rx_desc,
+				    struct idpf_rx_extracted *fields)
 {
 	u64 qword;
 
@@ -957,7 +966,6 @@ static void idpf_rx_singleq_extract_base_fields(struct idpf_queue *rx_q,
 
 /**
  * idpf_rx_singleq_extract_flex_fields - Extract fields from the Rx descriptor
- * @rx_q: Rx descriptor queue
  * @rx_desc: the descriptor to process
  * @fields: storage for extracted values
  *
@@ -967,9 +975,9 @@ static void idpf_rx_singleq_extract_base_fields(struct idpf_queue *rx_q,
  * This function only operates on the VIRTCHNL2_RXDID_2_FLEX_SQ_NIC flexible
  * descriptor writeback format.
  */
-static void idpf_rx_singleq_extract_flex_fields(struct idpf_queue *rx_q,
-						union virtchnl2_rx_desc *rx_desc,
-						struct idpf_rx_extracted *fields)
+static void
+idpf_rx_singleq_extract_flex_fields(const union virtchnl2_rx_desc *rx_desc,
+				    struct idpf_rx_extracted *fields)
 {
 	fields->size = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_PKT_LEN_M,
 				 le16_to_cpu(rx_desc->flex_nic_wb.pkt_len));
@@ -984,14 +992,15 @@ static void idpf_rx_singleq_extract_flex_fields(struct idpf_queue *rx_q,
  * @fields: storage for extracted values
  *
  */
-static void idpf_rx_singleq_extract_fields(struct idpf_queue *rx_q,
-					   union virtchnl2_rx_desc *rx_desc,
-					   struct idpf_rx_extracted *fields)
+static void
+idpf_rx_singleq_extract_fields(const struct idpf_rx_queue *rx_q,
+			       const union virtchnl2_rx_desc *rx_desc,
+			       struct idpf_rx_extracted *fields)
 {
 	if (rx_q->rxdids == VIRTCHNL2_RXDID_1_32B_BASE_M)
-		idpf_rx_singleq_extract_base_fields(rx_q, rx_desc, fields);
+		idpf_rx_singleq_extract_base_fields(rx_desc, fields);
 	else
-		idpf_rx_singleq_extract_flex_fields(rx_q, rx_desc, fields);
+		idpf_rx_singleq_extract_flex_fields(rx_desc, fields);
 }
 
 /**
@@ -1001,7 +1010,7 @@ static void idpf_rx_singleq_extract_fields(struct idpf_queue *rx_q,
  *
  * Returns true if there's any budget left (e.g. the clean is finished)
  */
-static int idpf_rx_singleq_clean(struct idpf_queue *rx_q, int budget)
+static int idpf_rx_singleq_clean(struct idpf_rx_queue *rx_q, int budget)
 {
 	unsigned int total_rx_bytes = 0, total_rx_pkts = 0;
 	struct sk_buff *skb = rx_q->skb;
@@ -1036,7 +1045,7 @@ static int idpf_rx_singleq_clean(struct idpf_queue *rx_q, int budget)
 
 		idpf_rx_singleq_extract_fields(rx_q, rx_desc, &fields);
 
-		rx_buf = &rx_q->rx_buf.buf[ntc];
+		rx_buf = &rx_q->rx_buf[ntc];
 		if (!fields.size) {
 			idpf_rx_put_page(rx_buf);
 			goto skip_data;
@@ -1058,7 +1067,7 @@ static int idpf_rx_singleq_clean(struct idpf_queue *rx_q, int budget)
 		cleaned_count++;
 
 		/* skip if it is non EOP desc */
-		if (idpf_rx_singleq_is_non_eop(rx_q, rx_desc, skb, ntc))
+		if (idpf_rx_singleq_is_non_eop(rx_desc))
 			continue;
 
 #define IDPF_RXD_ERR_S FIELD_PREP(VIRTCHNL2_RX_BASE_DESC_QW1_ERROR_M, \
@@ -1084,7 +1093,7 @@ static int idpf_rx_singleq_clean(struct idpf_queue *rx_q, int budget)
 						   rx_desc, fields.rx_ptype);
 
 		/* send completed skb up the stack */
-		napi_gro_receive(&rx_q->q_vector->napi, skb);
+		napi_gro_receive(rx_q->pp->p.napi, skb);
 		skb = NULL;
 
 		/* update budget accounting */
@@ -1099,8 +1108,8 @@ static int idpf_rx_singleq_clean(struct idpf_queue *rx_q, int budget)
 		failure = idpf_rx_singleq_buf_hw_alloc_all(rx_q, cleaned_count);
 
 	u64_stats_update_begin(&rx_q->stats_sync);
-	u64_stats_add(&rx_q->q_stats.rx.packets, total_rx_pkts);
-	u64_stats_add(&rx_q->q_stats.rx.bytes, total_rx_bytes);
+	u64_stats_add(&rx_q->q_stats.packets, total_rx_pkts);
+	u64_stats_add(&rx_q->q_stats.bytes, total_rx_bytes);
 	u64_stats_update_end(&rx_q->stats_sync);
 
 	/* guarantee a trip back through this routine if there was a failure */
@@ -1127,7 +1136,7 @@ static bool idpf_rx_singleq_clean_all(struct idpf_q_vector *q_vec, int budget,
 	 */
 	budget_per_q = num_rxq ? max(budget / num_rxq, 1) : 0;
 	for (i = 0; i < num_rxq; i++) {
-		struct idpf_queue *rxq = q_vec->rx[i];
+		struct idpf_rx_queue *rxq = q_vec->rx[i];
 		int pkts_cleaned_per_q;
 
 		pkts_cleaned_per_q = idpf_rx_singleq_clean(rxq, budget_per_q);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 01301e640fba..211c403a4c98 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -60,7 +60,8 @@ void idpf_tx_timeout(struct net_device *netdev, unsigned int txqueue)
  * @tx_q: the queue that owns the buffer
  * @tx_buf: the buffer to free
  */
-static void idpf_tx_buf_rel(struct idpf_queue *tx_q, struct idpf_tx_buf *tx_buf)
+static void idpf_tx_buf_rel(struct idpf_tx_queue *tx_q,
+			    struct idpf_tx_buf *tx_buf)
 {
 	if (tx_buf->skb) {
 		if (dma_unmap_len(tx_buf, len))
@@ -86,8 +87,9 @@ static void idpf_tx_buf_rel(struct idpf_queue *tx_q, struct idpf_tx_buf *tx_buf)
  * idpf_tx_buf_rel_all - Free any empty Tx buffers
  * @txq: queue to be cleaned
  */
-static void idpf_tx_buf_rel_all(struct idpf_queue *txq)
+static void idpf_tx_buf_rel_all(struct idpf_tx_queue *txq)
 {
+	struct idpf_buf_lifo *buf_stack;
 	u16 i;
 
 	/* Buffers already cleared, nothing to do */
@@ -101,38 +103,57 @@ static void idpf_tx_buf_rel_all(struct idpf_queue *txq)
 	kfree(txq->tx_buf);
 	txq->tx_buf = NULL;
 
-	if (!txq->buf_stack.bufs)
+	if (!idpf_queue_has(FLOW_SCH_EN, txq))
 		return;
 
-	for (i = 0; i < txq->buf_stack.size; i++)
-		kfree(txq->buf_stack.bufs[i]);
+	buf_stack = &txq->stash->buf_stack;
+	if (!buf_stack->bufs)
+		return;
+
+	for (i = 0; i < buf_stack->size; i++)
+		kfree(buf_stack->bufs[i]);
 
-	kfree(txq->buf_stack.bufs);
-	txq->buf_stack.bufs = NULL;
+	kfree(buf_stack->bufs);
+	buf_stack->bufs = NULL;
 }
 
 /**
  * idpf_tx_desc_rel - Free Tx resources per queue
  * @txq: Tx descriptor ring for a specific queue
- * @bufq: buffer q or completion q
  *
  * Free all transmit software resources
  */
-static void idpf_tx_desc_rel(struct idpf_queue *txq, bool bufq)
+static void idpf_tx_desc_rel(struct idpf_tx_queue *txq)
 {
-	if (bufq)
-		idpf_tx_buf_rel_all(txq);
+	idpf_tx_buf_rel_all(txq);
 
 	if (!txq->desc_ring)
 		return;
 
 	dmam_free_coherent(txq->dev, txq->size, txq->desc_ring, txq->dma);
 	txq->desc_ring = NULL;
-	txq->next_to_alloc = 0;
 	txq->next_to_use = 0;
 	txq->next_to_clean = 0;
 }
 
+/**
+ * idpf_compl_desc_rel - Free completion resources per queue
+ * @complq: completion queue
+ *
+ * Free all completion software resources.
+ */
+static void idpf_compl_desc_rel(struct idpf_compl_queue *complq)
+{
+	if (!complq->comp)
+		return;
+
+	dma_free_coherent(complq->netdev->dev.parent, complq->size,
+			  complq->comp, complq->dma);
+	complq->comp = NULL;
+	complq->next_to_use = 0;
+	complq->next_to_clean = 0;
+}
+
 /**
  * idpf_tx_desc_rel_all - Free Tx Resources for All Queues
  * @vport: virtual port structure
@@ -150,10 +171,10 @@ static void idpf_tx_desc_rel_all(struct idpf_vport *vport)
 		struct idpf_txq_group *txq_grp = &vport->txq_grps[i];
 
 		for (j = 0; j < txq_grp->num_txq; j++)
-			idpf_tx_desc_rel(txq_grp->txqs[j], true);
+			idpf_tx_desc_rel(txq_grp->txqs[j]);
 
 		if (idpf_is_queue_model_split(vport->txq_model))
-			idpf_tx_desc_rel(txq_grp->complq, false);
+			idpf_compl_desc_rel(txq_grp->complq);
 	}
 }
 
@@ -163,8 +184,9 @@ static void idpf_tx_desc_rel_all(struct idpf_vport *vport)
  *
  * Returns 0 on success, negative on failure
  */
-static int idpf_tx_buf_alloc_all(struct idpf_queue *tx_q)
+static int idpf_tx_buf_alloc_all(struct idpf_tx_queue *tx_q)
 {
+	struct idpf_buf_lifo *buf_stack;
 	int buf_size;
 	int i;
 
@@ -180,22 +202,26 @@ static int idpf_tx_buf_alloc_all(struct idpf_queue *tx_q)
 	for (i = 0; i < tx_q->desc_count; i++)
 		tx_q->tx_buf[i].compl_tag = IDPF_SPLITQ_TX_INVAL_COMPL_TAG;
 
+	if (!idpf_queue_has(FLOW_SCH_EN, tx_q))
+		return 0;
+
+	buf_stack = &tx_q->stash->buf_stack;
+
 	/* Initialize tx buf stack for out-of-order completions if
 	 * flow scheduling offload is enabled
 	 */
-	tx_q->buf_stack.bufs =
-		kcalloc(tx_q->desc_count, sizeof(struct idpf_tx_stash *),
+	buf_stack->bufs = kcalloc(tx_q->desc_count, sizeof(*buf_stack->bufs),
 			GFP_KERNEL);
-	if (!tx_q->buf_stack.bufs)
+	if (!buf_stack->bufs)
 		return -ENOMEM;
 
-	tx_q->buf_stack.size = tx_q->desc_count;
-	tx_q->buf_stack.top = tx_q->desc_count;
+	buf_stack->size = tx_q->desc_count;
+	buf_stack->top = tx_q->desc_count;
 
 	for (i = 0; i < tx_q->desc_count; i++) {
-		tx_q->buf_stack.bufs[i] = kzalloc(sizeof(*tx_q->buf_stack.bufs[i]),
-						  GFP_KERNEL);
-		if (!tx_q->buf_stack.bufs[i])
+		buf_stack->bufs[i] = kzalloc(sizeof(*buf_stack->bufs[i]),
+					     GFP_KERNEL);
+		if (!buf_stack->bufs[i])
 			return -ENOMEM;
 	}
 
@@ -204,28 +230,22 @@ static int idpf_tx_buf_alloc_all(struct idpf_queue *tx_q)
 
 /**
  * idpf_tx_desc_alloc - Allocate the Tx descriptors
+ * @vport: vport to allocate resources for
  * @tx_q: the tx ring to set up
- * @bufq: buffer or completion queue
  *
  * Returns 0 on success, negative on failure
  */
-static int idpf_tx_desc_alloc(struct idpf_queue *tx_q, bool bufq)
+static int idpf_tx_desc_alloc(const struct idpf_vport *vport,
+			      struct idpf_tx_queue *tx_q)
 {
 	struct device *dev = tx_q->dev;
-	u32 desc_sz;
 	int err;
 
-	if (bufq) {
-		err = idpf_tx_buf_alloc_all(tx_q);
-		if (err)
-			goto err_alloc;
-
-		desc_sz = sizeof(struct idpf_base_tx_desc);
-	} else {
-		desc_sz = sizeof(struct idpf_splitq_tx_compl_desc);
-	}
+	err = idpf_tx_buf_alloc_all(tx_q);
+	if (err)
+		goto err_alloc;
 
-	tx_q->size = tx_q->desc_count * desc_sz;
+	tx_q->size = tx_q->desc_count * sizeof(*tx_q->base_tx);
 
 	/* Allocate descriptors also round up to nearest 4K */
 	tx_q->size = ALIGN(tx_q->size, 4096);
@@ -238,19 +258,43 @@ static int idpf_tx_desc_alloc(struct idpf_queue *tx_q, bool bufq)
 		goto err_alloc;
 	}
 
-	tx_q->next_to_alloc = 0;
 	tx_q->next_to_use = 0;
 	tx_q->next_to_clean = 0;
-	set_bit(__IDPF_Q_GEN_CHK, tx_q->flags);
+	idpf_queue_set(GEN_CHK, tx_q);
 
 	return 0;
 
 err_alloc:
-	idpf_tx_desc_rel(tx_q, bufq);
+	idpf_tx_desc_rel(tx_q);
 
 	return err;
 }
 
+/**
+ * idpf_compl_desc_alloc - allocate completion descriptors
+ * @vport: vport to allocate resources for
+ * @complq: completion queue to set up
+ *
+ * Return: 0 on success, -errno on failure.
+ */
+static int idpf_compl_desc_alloc(const struct idpf_vport *vport,
+				 struct idpf_compl_queue *complq)
+{
+	complq->size = array_size(complq->desc_count, sizeof(*complq->comp));
+
+	complq->comp = dma_alloc_coherent(complq->netdev->dev.parent,
+					  complq->size, &complq->dma,
+					  GFP_KERNEL);
+	if (!complq->comp)
+		return -ENOMEM;
+
+	complq->next_to_use = 0;
+	complq->next_to_clean = 0;
+	idpf_queue_set(GEN_CHK, complq);
+
+	return 0;
+}
+
 /**
  * idpf_tx_desc_alloc_all - allocate all queues Tx resources
  * @vport: virtual port private structure
@@ -259,7 +303,6 @@ static int idpf_tx_desc_alloc(struct idpf_queue *tx_q, bool bufq)
  */
 static int idpf_tx_desc_alloc_all(struct idpf_vport *vport)
 {
-	struct device *dev = &vport->adapter->pdev->dev;
 	int err = 0;
 	int i, j;
 
@@ -268,13 +311,14 @@ static int idpf_tx_desc_alloc_all(struct idpf_vport *vport)
 	 */
 	for (i = 0; i < vport->num_txq_grp; i++) {
 		for (j = 0; j < vport->txq_grps[i].num_txq; j++) {
-			struct idpf_queue *txq = vport->txq_grps[i].txqs[j];
+			struct idpf_tx_queue *txq = vport->txq_grps[i].txqs[j];
 			u8 gen_bits = 0;
 			u16 bufidx_mask;
 
-			err = idpf_tx_desc_alloc(txq, true);
+			err = idpf_tx_desc_alloc(vport, txq);
 			if (err) {
-				dev_err(dev, "Allocation for Tx Queue %u failed\n",
+				pci_err(vport->adapter->pdev,
+					"Allocation for Tx Queue %u failed\n",
 					i);
 				goto err_out;
 			}
@@ -312,9 +356,10 @@ static int idpf_tx_desc_alloc_all(struct idpf_vport *vport)
 			continue;
 
 		/* Setup completion queues */
-		err = idpf_tx_desc_alloc(vport->txq_grps[i].complq, false);
+		err = idpf_compl_desc_alloc(vport, vport->txq_grps[i].complq);
 		if (err) {
-			dev_err(dev, "Allocation for Tx Completion Queue %u failed\n",
+			pci_err(vport->adapter->pdev,
+				"Allocation for Tx Completion Queue %u failed\n",
 				i);
 			goto err_out;
 		}
@@ -329,15 +374,14 @@ static int idpf_tx_desc_alloc_all(struct idpf_vport *vport)
 
 /**
  * idpf_rx_page_rel - Release an rx buffer page
- * @rxq: the queue that owns the buffer
  * @rx_buf: the buffer to free
  */
-static void idpf_rx_page_rel(struct idpf_queue *rxq, struct idpf_rx_buf *rx_buf)
+static void idpf_rx_page_rel(struct idpf_rx_buf *rx_buf)
 {
 	if (unlikely(!rx_buf->page))
 		return;
 
-	page_pool_put_full_page(rxq->pp, rx_buf->page, false);
+	page_pool_put_full_page(rx_buf->page->pp, rx_buf->page, false);
 
 	rx_buf->page = NULL;
 	rx_buf->page_offset = 0;
@@ -345,54 +389,72 @@ static void idpf_rx_page_rel(struct idpf_queue *rxq, struct idpf_rx_buf *rx_buf)
 
 /**
  * idpf_rx_hdr_buf_rel_all - Release header buffer memory
- * @rxq: queue to use
+ * @bufq: queue to use
+ * @dev: device to free DMA memory
  */
-static void idpf_rx_hdr_buf_rel_all(struct idpf_queue *rxq)
+static void idpf_rx_hdr_buf_rel_all(struct idpf_buf_queue *bufq,
+				    struct device *dev)
 {
-	struct idpf_adapter *adapter = rxq->vport->adapter;
-
-	dma_free_coherent(&adapter->pdev->dev,
-			  rxq->desc_count * IDPF_HDR_BUF_SIZE,
-			  rxq->rx_buf.hdr_buf_va,
-			  rxq->rx_buf.hdr_buf_pa);
-	rxq->rx_buf.hdr_buf_va = NULL;
+	dma_free_coherent(dev, bufq->desc_count * IDPF_HDR_BUF_SIZE,
+			  bufq->rx_buf.hdr_buf_va, bufq->rx_buf.hdr_buf_pa);
+	bufq->rx_buf.hdr_buf_va = NULL;
 }
 
 /**
- * idpf_rx_buf_rel_all - Free all Rx buffer resources for a queue
- * @rxq: queue to be cleaned
+ * idpf_rx_buf_rel_bufq - Free all Rx buffer resources for a buffer queue
+ * @bufq: queue to be cleaned
+ * @dev: device to free DMA memory
  */
-static void idpf_rx_buf_rel_all(struct idpf_queue *rxq)
+static void idpf_rx_buf_rel_bufq(struct idpf_buf_queue *bufq,
+				 struct device *dev)
 {
-	u16 i;
-
 	/* queue already cleared, nothing to do */
-	if (!rxq->rx_buf.buf)
+	if (!bufq->rx_buf.buf)
 		return;
 
 	/* Free all the bufs allocated and given to hw on Rx queue */
-	for (i = 0; i < rxq->desc_count; i++)
-		idpf_rx_page_rel(rxq, &rxq->rx_buf.buf[i]);
+	for (u32 i = 0; i < bufq->desc_count; i++)
+		idpf_rx_page_rel(&bufq->rx_buf.buf[i]);
+
+	if (idpf_queue_has(HSPLIT_EN, bufq))
+		idpf_rx_hdr_buf_rel_all(bufq, dev);
+
+	page_pool_destroy(bufq->pp);
+	bufq->pp = NULL;
+
+	kfree(bufq->rx_buf.buf);
+	bufq->rx_buf.buf = NULL;
+}
 
-	if (rxq->rx_hsplit_en)
-		idpf_rx_hdr_buf_rel_all(rxq);
+/**
+ * idpf_rx_buf_rel_all - Free all Rx buffer resources for a receive queue
+ * @rxq: queue to be cleaned
+ */
+static void idpf_rx_buf_rel_all(struct idpf_rx_queue *rxq)
+{
+	if (!rxq->rx_buf)
+		return;
+
+	for (u32 i = 0; i < rxq->desc_count; i++)
+		idpf_rx_page_rel(&rxq->rx_buf[i]);
 
 	page_pool_destroy(rxq->pp);
 	rxq->pp = NULL;
 
-	kfree(rxq->rx_buf.buf);
-	rxq->rx_buf.buf = NULL;
+	kfree(rxq->rx_buf);
+	rxq->rx_buf = NULL;
 }
 
 /**
  * idpf_rx_desc_rel - Free a specific Rx q resources
  * @rxq: queue to clean the resources from
- * @bufq: buffer q or completion q
- * @q_model: single or split q model
+ * @dev: device to free DMA memory
+ * @model: single or split queue model
  *
  * Free a specific rx queue resources
  */
-static void idpf_rx_desc_rel(struct idpf_queue *rxq, bool bufq, s32 q_model)
+static void idpf_rx_desc_rel(struct idpf_rx_queue *rxq, struct device *dev,
+			     u32 model)
 {
 	if (!rxq)
 		return;
@@ -402,7 +464,7 @@ static void idpf_rx_desc_rel(struct idpf_queue *rxq, bool bufq, s32 q_model)
 		rxq->skb = NULL;
 	}
 
-	if (bufq || !idpf_is_queue_model_split(q_model))
+	if (!idpf_is_queue_model_split(model))
 		idpf_rx_buf_rel_all(rxq);
 
 	rxq->next_to_alloc = 0;
@@ -411,10 +473,34 @@ static void idpf_rx_desc_rel(struct idpf_queue *rxq, bool bufq, s32 q_model)
 	if (!rxq->desc_ring)
 		return;
 
-	dmam_free_coherent(rxq->dev, rxq->size, rxq->desc_ring, rxq->dma);
+	dmam_free_coherent(dev, rxq->size, rxq->desc_ring, rxq->dma);
 	rxq->desc_ring = NULL;
 }
 
+/**
+ * idpf_rx_desc_rel_bufq - free buffer queue resources
+ * @bufq: buffer queue to clean the resources from
+ * @dev: device to free DMA memory
+ */
+static void idpf_rx_desc_rel_bufq(struct idpf_buf_queue *bufq,
+				  struct device *dev)
+{
+	if (!bufq)
+		return;
+
+	idpf_rx_buf_rel_bufq(bufq, dev);
+
+	bufq->next_to_alloc = 0;
+	bufq->next_to_clean = 0;
+	bufq->next_to_use = 0;
+
+	if (!bufq->split_buf)
+		return;
+
+	dma_free_coherent(dev, bufq->size, bufq->split_buf, bufq->dma);
+	bufq->split_buf = NULL;
+}
+
 /**
  * idpf_rx_desc_rel_all - Free Rx Resources for All Queues
  * @vport: virtual port structure
@@ -423,6 +509,7 @@ static void idpf_rx_desc_rel(struct idpf_queue *rxq, bool bufq, s32 q_model)
  */
 static void idpf_rx_desc_rel_all(struct idpf_vport *vport)
 {
+	struct device *dev = &vport->adapter->pdev->dev;
 	struct idpf_rxq_group *rx_qgrp;
 	u16 num_rxq;
 	int i, j;
@@ -435,15 +522,15 @@ static void idpf_rx_desc_rel_all(struct idpf_vport *vport)
 
 		if (!idpf_is_queue_model_split(vport->rxq_model)) {
 			for (j = 0; j < rx_qgrp->singleq.num_rxq; j++)
-				idpf_rx_desc_rel(rx_qgrp->singleq.rxqs[j],
-						 false, vport->rxq_model);
+				idpf_rx_desc_rel(rx_qgrp->singleq.rxqs[j], dev,
+						 VIRTCHNL2_QUEUE_MODEL_SINGLE);
 			continue;
 		}
 
 		num_rxq = rx_qgrp->splitq.num_rxq_sets;
 		for (j = 0; j < num_rxq; j++)
 			idpf_rx_desc_rel(&rx_qgrp->splitq.rxq_sets[j]->rxq,
-					 false, vport->rxq_model);
+					 dev, VIRTCHNL2_QUEUE_MODEL_SPLIT);
 
 		if (!rx_qgrp->splitq.bufq_sets)
 			continue;
@@ -452,44 +539,40 @@ static void idpf_rx_desc_rel_all(struct idpf_vport *vport)
 			struct idpf_bufq_set *bufq_set =
 				&rx_qgrp->splitq.bufq_sets[j];
 
-			idpf_rx_desc_rel(&bufq_set->bufq, true,
-					 vport->rxq_model);
+			idpf_rx_desc_rel_bufq(&bufq_set->bufq, dev);
 		}
 	}
 }
 
 /**
  * idpf_rx_buf_hw_update - Store the new tail and head values
- * @rxq: queue to bump
+ * @bufq: queue to bump
  * @val: new head index
  */
-void idpf_rx_buf_hw_update(struct idpf_queue *rxq, u32 val)
+static void idpf_rx_buf_hw_update(struct idpf_buf_queue *bufq, u32 val)
 {
-	rxq->next_to_use = val;
+	bufq->next_to_use = val;
 
-	if (unlikely(!rxq->tail))
+	if (unlikely(!bufq->tail))
 		return;
 
 	/* writel has an implicit memory barrier */
-	writel(val, rxq->tail);
+	writel(val, bufq->tail);
 }
 
 /**
  * idpf_rx_hdr_buf_alloc_all - Allocate memory for header buffers
- * @rxq: ring to use
+ * @bufq: ring to use
  *
  * Returns 0 on success, negative on failure.
  */
-static int idpf_rx_hdr_buf_alloc_all(struct idpf_queue *rxq)
+static int idpf_rx_hdr_buf_alloc_all(struct idpf_buf_queue *bufq)
 {
-	struct idpf_adapter *adapter = rxq->vport->adapter;
-
-	rxq->rx_buf.hdr_buf_va =
-		dma_alloc_coherent(&adapter->pdev->dev,
-				   IDPF_HDR_BUF_SIZE * rxq->desc_count,
-				   &rxq->rx_buf.hdr_buf_pa,
-				   GFP_KERNEL);
-	if (!rxq->rx_buf.hdr_buf_va)
+	bufq->rx_buf.hdr_buf_va =
+		dma_alloc_coherent(bufq->q_vector->vport->netdev->dev.parent,
+				   IDPF_HDR_BUF_SIZE * bufq->desc_count,
+				   &bufq->rx_buf.hdr_buf_pa, GFP_KERNEL);
+	if (!bufq->rx_buf.hdr_buf_va)
 		return -ENOMEM;
 
 	return 0;
@@ -502,19 +585,20 @@ static int idpf_rx_hdr_buf_alloc_all(struct idpf_queue *rxq)
  */
 static void idpf_rx_post_buf_refill(struct idpf_sw_queue *refillq, u16 buf_id)
 {
-	u16 nta = refillq->next_to_alloc;
+	u32 nta = refillq->next_to_use;
 
 	/* store the buffer ID and the SW maintained GEN bit to the refillq */
 	refillq->ring[nta] =
 		FIELD_PREP(IDPF_RX_BI_BUFID_M, buf_id) |
 		FIELD_PREP(IDPF_RX_BI_GEN_M,
-			   test_bit(__IDPF_Q_GEN_CHK, refillq->flags));
+			   idpf_queue_has(GEN_CHK, refillq));
 
 	if (unlikely(++nta == refillq->desc_count)) {
 		nta = 0;
-		change_bit(__IDPF_Q_GEN_CHK, refillq->flags);
+		idpf_queue_change(GEN_CHK, refillq);
 	}
-	refillq->next_to_alloc = nta;
+
+	refillq->next_to_use = nta;
 }
 
 /**
@@ -524,7 +608,7 @@ static void idpf_rx_post_buf_refill(struct idpf_sw_queue *refillq, u16 buf_id)
  *
  * Returns false if buffer could not be allocated, true otherwise.
  */
-static bool idpf_rx_post_buf_desc(struct idpf_queue *bufq, u16 buf_id)
+static bool idpf_rx_post_buf_desc(struct idpf_buf_queue *bufq, u16 buf_id)
 {
 	struct virtchnl2_splitq_rx_buf_desc *splitq_rx_desc = NULL;
 	u16 nta = bufq->next_to_alloc;
@@ -534,11 +618,10 @@ static bool idpf_rx_post_buf_desc(struct idpf_queue *bufq, u16 buf_id)
 	splitq_rx_desc = &bufq->split_buf[nta];
 	buf = &bufq->rx_buf.buf[buf_id];
 
-	if (bufq->rx_hsplit_en) {
+	if (idpf_queue_has(HSPLIT_EN, bufq))
 		splitq_rx_desc->hdr_addr =
 			cpu_to_le64(bufq->rx_buf.hdr_buf_pa +
 				    (u32)buf_id * IDPF_HDR_BUF_SIZE);
-	}
 
 	addr = idpf_alloc_page(bufq->pp, buf, bufq->rx_buf_size);
 	if (unlikely(addr == DMA_MAPPING_ERROR))
@@ -562,7 +645,8 @@ static bool idpf_rx_post_buf_desc(struct idpf_queue *bufq, u16 buf_id)
  *
  * Returns true if @working_set bufs were posted successfully, false otherwise.
  */
-static bool idpf_rx_post_init_bufs(struct idpf_queue *bufq, u16 working_set)
+static bool idpf_rx_post_init_bufs(struct idpf_buf_queue *bufq,
+				   u16 working_set)
 {
 	int i;
 
@@ -571,26 +655,28 @@ static bool idpf_rx_post_init_bufs(struct idpf_queue *bufq, u16 working_set)
 			return false;
 	}
 
-	idpf_rx_buf_hw_update(bufq,
-			      bufq->next_to_alloc & ~(bufq->rx_buf_stride - 1));
+	idpf_rx_buf_hw_update(bufq, ALIGN_DOWN(bufq->next_to_alloc,
+					       IDPF_RX_BUF_STRIDE));
 
 	return true;
 }
 
 /**
  * idpf_rx_create_page_pool - Create a page pool
- * @rxbufq: RX queue to create page pool for
+ * @napi: NAPI of the associated queue vector
+ * @count: queue descriptor count
  *
  * Returns &page_pool on success, casted -errno on failure
  */
-static struct page_pool *idpf_rx_create_page_pool(struct idpf_queue *rxbufq)
+static struct page_pool *idpf_rx_create_page_pool(struct napi_struct *napi,
+						  u32 count)
 {
 	struct page_pool_params pp = {
 		.flags		= PP_FLAG_DMA_MAP | PP_FLAG_DMA_SYNC_DEV,
 		.order		= 0,
-		.pool_size	= rxbufq->desc_count,
+		.pool_size	= count,
 		.nid		= NUMA_NO_NODE,
-		.dev		= rxbufq->vport->netdev->dev.parent,
+		.dev		= napi->dev->dev.parent,
 		.max_len	= PAGE_SIZE,
 		.dma_dir	= DMA_FROM_DEVICE,
 		.offset		= 0,
@@ -599,15 +685,58 @@ static struct page_pool *idpf_rx_create_page_pool(struct idpf_queue *rxbufq)
 	return page_pool_create(&pp);
 }
 
+/**
+ * idpf_rx_buf_alloc_singleq - Allocate memory for all buffer resources
+ * @rxq: queue for which the buffers are allocated
+ *
+ * Return: 0 on success, -ENOMEM on failure.
+ */
+static int idpf_rx_buf_alloc_singleq(struct idpf_rx_queue *rxq)
+{
+	rxq->rx_buf = kcalloc(rxq->desc_count, sizeof(*rxq->rx_buf),
+			      GFP_KERNEL);
+	if (!rxq->rx_buf)
+		return -ENOMEM;
+
+	if (idpf_rx_singleq_buf_hw_alloc_all(rxq, rxq->desc_count - 1))
+		goto err;
+
+	return 0;
+
+err:
+	idpf_rx_buf_rel_all(rxq);
+
+	return -ENOMEM;
+}
+
+/**
+ * idpf_rx_bufs_init_singleq - Initialize page pool and allocate Rx bufs
+ * @rxq: buffer queue to create page pool for
+ *
+ * Return: 0 on success, -errno on failure.
+ */
+static int idpf_rx_bufs_init_singleq(struct idpf_rx_queue *rxq)
+{
+	struct page_pool *pool;
+
+	pool = idpf_rx_create_page_pool(&rxq->q_vector->napi, rxq->desc_count);
+	if (IS_ERR(pool))
+		return PTR_ERR(pool);
+
+	rxq->pp = pool;
+
+	return idpf_rx_buf_alloc_singleq(rxq);
+}
+
 /**
  * idpf_rx_buf_alloc_all - Allocate memory for all buffer resources
- * @rxbufq: queue for which the buffers are allocated; equivalent to
- * rxq when operating in singleq mode
+ * @rxbufq: queue for which the buffers are allocated
  *
  * Returns 0 on success, negative on failure
  */
-static int idpf_rx_buf_alloc_all(struct idpf_queue *rxbufq)
+static int idpf_rx_buf_alloc_all(struct idpf_buf_queue *rxbufq)
 {
+	struct device *dev = rxbufq->q_vector->vport->netdev->dev.parent;
 	int err = 0;
 
 	/* Allocate book keeping buffers */
@@ -618,48 +747,41 @@ static int idpf_rx_buf_alloc_all(struct idpf_queue *rxbufq)
 		goto rx_buf_alloc_all_out;
 	}
 
-	if (rxbufq->rx_hsplit_en) {
+	if (idpf_queue_has(HSPLIT_EN, rxbufq)) {
 		err = idpf_rx_hdr_buf_alloc_all(rxbufq);
 		if (err)
 			goto rx_buf_alloc_all_out;
 	}
 
 	/* Allocate buffers to be given to HW.	 */
-	if (idpf_is_queue_model_split(rxbufq->vport->rxq_model)) {
-		int working_set = IDPF_RX_BUFQ_WORKING_SET(rxbufq);
-
-		if (!idpf_rx_post_init_bufs(rxbufq, working_set))
-			err = -ENOMEM;
-	} else {
-		if (idpf_rx_singleq_buf_hw_alloc_all(rxbufq,
-						     rxbufq->desc_count - 1))
-			err = -ENOMEM;
-	}
+	if (!idpf_rx_post_init_bufs(rxbufq, IDPF_RX_BUFQ_WORKING_SET(rxbufq)))
+		err = -ENOMEM;
 
 rx_buf_alloc_all_out:
 	if (err)
-		idpf_rx_buf_rel_all(rxbufq);
+		idpf_rx_buf_rel_bufq(rxbufq, dev);
 
 	return err;
 }
 
 /**
  * idpf_rx_bufs_init - Initialize page pool, allocate rx bufs, and post to HW
- * @rxbufq: RX queue to create page pool for
+ * @bufq: buffer queue to create page pool for
  *
  * Returns 0 on success, negative on failure
  */
-static int idpf_rx_bufs_init(struct idpf_queue *rxbufq)
+static int idpf_rx_bufs_init(struct idpf_buf_queue *bufq)
 {
 	struct page_pool *pool;
 
-	pool = idpf_rx_create_page_pool(rxbufq);
+	pool = idpf_rx_create_page_pool(&bufq->q_vector->napi,
+					bufq->desc_count);
 	if (IS_ERR(pool))
 		return PTR_ERR(pool);
 
-	rxbufq->pp = pool;
+	bufq->pp = pool;
 
-	return idpf_rx_buf_alloc_all(rxbufq);
+	return idpf_rx_buf_alloc_all(bufq);
 }
 
 /**
@@ -671,7 +793,6 @@ static int idpf_rx_bufs_init(struct idpf_queue *rxbufq)
 int idpf_rx_bufs_init_all(struct idpf_vport *vport)
 {
 	struct idpf_rxq_group *rx_qgrp;
-	struct idpf_queue *q;
 	int i, j, err;
 
 	for (i = 0; i < vport->num_rxq_grp; i++) {
@@ -682,8 +803,10 @@ int idpf_rx_bufs_init_all(struct idpf_vport *vport)
 			int num_rxq = rx_qgrp->singleq.num_rxq;
 
 			for (j = 0; j < num_rxq; j++) {
+				struct idpf_rx_queue *q;
+
 				q = rx_qgrp->singleq.rxqs[j];
-				err = idpf_rx_bufs_init(q);
+				err = idpf_rx_bufs_init_singleq(q);
 				if (err)
 					return err;
 			}
@@ -693,6 +816,8 @@ int idpf_rx_bufs_init_all(struct idpf_vport *vport)
 
 		/* Otherwise, allocate bufs for the buffer queues */
 		for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
+			struct idpf_buf_queue *q;
+
 			q = &rx_qgrp->splitq.bufq_sets[j].bufq;
 			err = idpf_rx_bufs_init(q);
 			if (err)
@@ -705,22 +830,17 @@ int idpf_rx_bufs_init_all(struct idpf_vport *vport)
 
 /**
  * idpf_rx_desc_alloc - Allocate queue Rx resources
+ * @vport: vport to allocate resources for
  * @rxq: Rx queue for which the resources are setup
- * @bufq: buffer or completion queue
- * @q_model: single or split queue model
  *
  * Returns 0 on success, negative on failure
  */
-static int idpf_rx_desc_alloc(struct idpf_queue *rxq, bool bufq, s32 q_model)
+static int idpf_rx_desc_alloc(const struct idpf_vport *vport,
+			      struct idpf_rx_queue *rxq)
 {
-	struct device *dev = rxq->dev;
+	struct device *dev = &vport->adapter->pdev->dev;
 
-	if (bufq)
-		rxq->size = rxq->desc_count *
-			sizeof(struct virtchnl2_splitq_rx_buf_desc);
-	else
-		rxq->size = rxq->desc_count *
-			sizeof(union virtchnl2_rx_desc);
+	rxq->size = rxq->desc_count * sizeof(union virtchnl2_rx_desc);
 
 	/* Allocate descriptors and also round up to nearest 4K */
 	rxq->size = ALIGN(rxq->size, 4096);
@@ -735,7 +855,35 @@ static int idpf_rx_desc_alloc(struct idpf_queue *rxq, bool bufq, s32 q_model)
 	rxq->next_to_alloc = 0;
 	rxq->next_to_clean = 0;
 	rxq->next_to_use = 0;
-	set_bit(__IDPF_Q_GEN_CHK, rxq->flags);
+	idpf_queue_set(GEN_CHK, rxq);
+
+	return 0;
+}
+
+/**
+ * idpf_bufq_desc_alloc - Allocate buffer queue descriptor ring
+ * @vport: vport to allocate resources for
+ * @bufq: buffer queue for which the resources are set up
+ *
+ * Return: 0 on success, -ENOMEM on failure.
+ */
+static int idpf_bufq_desc_alloc(const struct idpf_vport *vport,
+				struct idpf_buf_queue *bufq)
+{
+	struct device *dev = &vport->adapter->pdev->dev;
+
+	bufq->size = array_size(bufq->desc_count, sizeof(*bufq->split_buf));
+
+	bufq->split_buf = dma_alloc_coherent(dev, bufq->size, &bufq->dma,
+					     GFP_KERNEL);
+	if (!bufq->split_buf)
+		return -ENOMEM;
+
+	bufq->next_to_alloc = 0;
+	bufq->next_to_clean = 0;
+	bufq->next_to_use = 0;
+
+	idpf_queue_set(GEN_CHK, bufq);
 
 	return 0;
 }
@@ -748,9 +896,7 @@ static int idpf_rx_desc_alloc(struct idpf_queue *rxq, bool bufq, s32 q_model)
  */
 static int idpf_rx_desc_alloc_all(struct idpf_vport *vport)
 {
-	struct device *dev = &vport->adapter->pdev->dev;
 	struct idpf_rxq_group *rx_qgrp;
-	struct idpf_queue *q;
 	int i, j, err;
 	u16 num_rxq;
 
@@ -762,13 +908,17 @@ static int idpf_rx_desc_alloc_all(struct idpf_vport *vport)
 			num_rxq = rx_qgrp->singleq.num_rxq;
 
 		for (j = 0; j < num_rxq; j++) {
+			struct idpf_rx_queue *q;
+
 			if (idpf_is_queue_model_split(vport->rxq_model))
 				q = &rx_qgrp->splitq.rxq_sets[j]->rxq;
 			else
 				q = rx_qgrp->singleq.rxqs[j];
-			err = idpf_rx_desc_alloc(q, false, vport->rxq_model);
+
+			err = idpf_rx_desc_alloc(vport, q);
 			if (err) {
-				dev_err(dev, "Memory allocation for Rx Queue %u failed\n",
+				pci_err(vport->adapter->pdev,
+					"Memory allocation for Rx Queue %u failed\n",
 					i);
 				goto err_out;
 			}
@@ -778,10 +928,14 @@ static int idpf_rx_desc_alloc_all(struct idpf_vport *vport)
 			continue;
 
 		for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
+			struct idpf_buf_queue *q;
+
 			q = &rx_qgrp->splitq.bufq_sets[j].bufq;
-			err = idpf_rx_desc_alloc(q, true, vport->rxq_model);
+
+			err = idpf_bufq_desc_alloc(vport, q);
 			if (err) {
-				dev_err(dev, "Memory allocation for Rx Buffer Queue %u failed\n",
+				pci_err(vport->adapter->pdev,
+					"Memory allocation for Rx Buffer Queue %u failed\n",
 					i);
 				goto err_out;
 			}
@@ -802,11 +956,16 @@ static int idpf_rx_desc_alloc_all(struct idpf_vport *vport)
  */
 static void idpf_txq_group_rel(struct idpf_vport *vport)
 {
+	bool split, flow_sch_en;
 	int i, j;
 
 	if (!vport->txq_grps)
 		return;
 
+	split = idpf_is_queue_model_split(vport->txq_model);
+	flow_sch_en = !idpf_is_cap_ena(vport->adapter, IDPF_OTHER_CAPS,
+				       VIRTCHNL2_CAP_SPLITQ_QSCHED);
+
 	for (i = 0; i < vport->num_txq_grp; i++) {
 		struct idpf_txq_group *txq_grp = &vport->txq_grps[i];
 
@@ -814,8 +973,15 @@ static void idpf_txq_group_rel(struct idpf_vport *vport)
 			kfree(txq_grp->txqs[j]);
 			txq_grp->txqs[j] = NULL;
 		}
+
+		if (!split)
+			continue;
+
 		kfree(txq_grp->complq);
 		txq_grp->complq = NULL;
+
+		if (flow_sch_en)
+			kfree(txq_grp->stashes);
 	}
 	kfree(vport->txq_grps);
 	vport->txq_grps = NULL;
@@ -919,7 +1085,7 @@ static int idpf_vport_init_fast_path_txqs(struct idpf_vport *vport)
 {
 	int i, j, k = 0;
 
-	vport->txqs = kcalloc(vport->num_txq, sizeof(struct idpf_queue *),
+	vport->txqs = kcalloc(vport->num_txq, sizeof(*vport->txqs),
 			      GFP_KERNEL);
 
 	if (!vport->txqs)
@@ -1137,7 +1303,8 @@ static void idpf_vport_calc_numq_per_grp(struct idpf_vport *vport,
  * @q: rx queue for which descids are set
  *
  */
-static void idpf_rxq_set_descids(struct idpf_vport *vport, struct idpf_queue *q)
+static void idpf_rxq_set_descids(const struct idpf_vport *vport,
+				 struct idpf_rx_queue *q)
 {
 	if (vport->rxq_model == VIRTCHNL2_QUEUE_MODEL_SPLIT) {
 		q->rxdids = VIRTCHNL2_RXDID_2_FLEX_SPLITQ_M;
@@ -1158,20 +1325,22 @@ static void idpf_rxq_set_descids(struct idpf_vport *vport, struct idpf_queue *q)
  */
 static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
 {
-	bool flow_sch_en;
-	int err, i;
+	bool split, flow_sch_en;
+	int i;
 
 	vport->txq_grps = kcalloc(vport->num_txq_grp,
 				  sizeof(*vport->txq_grps), GFP_KERNEL);
 	if (!vport->txq_grps)
 		return -ENOMEM;
 
+	split = idpf_is_queue_model_split(vport->txq_model);
 	flow_sch_en = !idpf_is_cap_ena(vport->adapter, IDPF_OTHER_CAPS,
 				       VIRTCHNL2_CAP_SPLITQ_QSCHED);
 
 	for (i = 0; i < vport->num_txq_grp; i++) {
 		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
 		struct idpf_adapter *adapter = vport->adapter;
+		struct idpf_txq_stash *stashes;
 		int j;
 
 		tx_qgrp->vport = vport;
@@ -1180,45 +1349,62 @@ static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
 		for (j = 0; j < tx_qgrp->num_txq; j++) {
 			tx_qgrp->txqs[j] = kzalloc(sizeof(*tx_qgrp->txqs[j]),
 						   GFP_KERNEL);
-			if (!tx_qgrp->txqs[j]) {
-				err = -ENOMEM;
+			if (!tx_qgrp->txqs[j])
 				goto err_alloc;
-			}
+		}
+
+		if (split && flow_sch_en) {
+			stashes = kcalloc(num_txq, sizeof(*stashes),
+					  GFP_KERNEL);
+			if (!stashes)
+				goto err_alloc;
+
+			tx_qgrp->stashes = stashes;
 		}
 
 		for (j = 0; j < tx_qgrp->num_txq; j++) {
-			struct idpf_queue *q = tx_qgrp->txqs[j];
+			struct idpf_tx_queue *q = tx_qgrp->txqs[j];
 
 			q->dev = &adapter->pdev->dev;
 			q->desc_count = vport->txq_desc_count;
 			q->tx_max_bufs = idpf_get_max_tx_bufs(adapter);
 			q->tx_min_pkt_len = idpf_get_min_tx_pkt_len(adapter);
-			q->vport = vport;
+			q->netdev = vport->netdev;
 			q->txq_grp = tx_qgrp;
-			hash_init(q->sched_buf_hash);
 
-			if (flow_sch_en)
-				set_bit(__IDPF_Q_FLOW_SCH_EN, q->flags);
+			if (!split) {
+				q->clean_budget = vport->compln_clean_budget;
+				idpf_queue_assign(CRC_EN, q,
+						  vport->crc_enable);
+			}
+
+			if (!flow_sch_en)
+				continue;
+
+			if (split) {
+				q->stash = &stashes[j];
+				hash_init(q->stash->sched_buf_hash);
+			}
+
+			idpf_queue_set(FLOW_SCH_EN, q);
 		}
 
-		if (!idpf_is_queue_model_split(vport->txq_model))
+		if (!split)
 			continue;
 
 		tx_qgrp->complq = kcalloc(IDPF_COMPLQ_PER_GROUP,
 					  sizeof(*tx_qgrp->complq),
 					  GFP_KERNEL);
-		if (!tx_qgrp->complq) {
-			err = -ENOMEM;
+		if (!tx_qgrp->complq)
 			goto err_alloc;
-		}
 
-		tx_qgrp->complq->dev = &adapter->pdev->dev;
 		tx_qgrp->complq->desc_count = vport->complq_desc_count;
-		tx_qgrp->complq->vport = vport;
 		tx_qgrp->complq->txq_grp = tx_qgrp;
+		tx_qgrp->complq->netdev = vport->netdev;
+		tx_qgrp->complq->clean_budget = vport->compln_clean_budget;
 
 		if (flow_sch_en)
-			__set_bit(__IDPF_Q_FLOW_SCH_EN, tx_qgrp->complq->flags);
+			idpf_queue_set(FLOW_SCH_EN, tx_qgrp->complq);
 	}
 
 	return 0;
@@ -1226,7 +1412,7 @@ static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
 err_alloc:
 	idpf_txq_group_rel(vport);
 
-	return err;
+	return -ENOMEM;
 }
 
 /**
@@ -1238,8 +1424,6 @@ static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
  */
 static int idpf_rxq_group_alloc(struct idpf_vport *vport, u16 num_rxq)
 {
-	struct idpf_adapter *adapter = vport->adapter;
-	struct idpf_queue *q;
 	int i, k, err = 0;
 	bool hs;
 
@@ -1292,21 +1476,15 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport, u16 num_rxq)
 			struct idpf_bufq_set *bufq_set =
 				&rx_qgrp->splitq.bufq_sets[j];
 			int swq_size = sizeof(struct idpf_sw_queue);
+			struct idpf_buf_queue *q;
 
 			q = &rx_qgrp->splitq.bufq_sets[j].bufq;
-			q->dev = &adapter->pdev->dev;
 			q->desc_count = vport->bufq_desc_count[j];
-			q->vport = vport;
-			q->rxq_grp = rx_qgrp;
-			q->idx = j;
 			q->rx_buf_size = vport->bufq_size[j];
 			q->rx_buffer_low_watermark = IDPF_LOW_WATERMARK;
-			q->rx_buf_stride = IDPF_RX_BUF_STRIDE;
 
-			if (hs) {
-				q->rx_hsplit_en = true;
-				q->rx_hbuf_size = IDPF_HDR_BUF_SIZE;
-			}
+			idpf_queue_assign(HSPLIT_EN, q, hs);
+			q->rx_hbuf_size = hs ? IDPF_HDR_BUF_SIZE : 0;
 
 			bufq_set->num_refillqs = num_rxq;
 			bufq_set->refillqs = kcalloc(num_rxq, swq_size,
@@ -1319,13 +1497,12 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport, u16 num_rxq)
 				struct idpf_sw_queue *refillq =
 					&bufq_set->refillqs[k];
 
-				refillq->dev = &vport->adapter->pdev->dev;
 				refillq->desc_count =
 					vport->bufq_desc_count[j];
-				set_bit(__IDPF_Q_GEN_CHK, refillq->flags);
-				set_bit(__IDPF_RFLQ_GEN_CHK, refillq->flags);
+				idpf_queue_set(GEN_CHK, refillq);
+				idpf_queue_set(RFL_GEN_CHK, refillq);
 				refillq->ring = kcalloc(refillq->desc_count,
-							sizeof(u16),
+							sizeof(*refillq->ring),
 							GFP_KERNEL);
 				if (!refillq->ring) {
 					err = -ENOMEM;
@@ -1336,27 +1513,27 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport, u16 num_rxq)
 
 skip_splitq_rx_init:
 		for (j = 0; j < num_rxq; j++) {
+			struct idpf_rx_queue *q;
+
 			if (!idpf_is_queue_model_split(vport->rxq_model)) {
 				q = rx_qgrp->singleq.rxqs[j];
 				goto setup_rxq;
 			}
 			q = &rx_qgrp->splitq.rxq_sets[j]->rxq;
-			rx_qgrp->splitq.rxq_sets[j]->refillq0 =
+			rx_qgrp->splitq.rxq_sets[j]->refillq[0] =
 			      &rx_qgrp->splitq.bufq_sets[0].refillqs[j];
 			if (vport->num_bufqs_per_qgrp > IDPF_SINGLE_BUFQ_PER_RXQ_GRP)
-				rx_qgrp->splitq.rxq_sets[j]->refillq1 =
+				rx_qgrp->splitq.rxq_sets[j]->refillq[1] =
 				      &rx_qgrp->splitq.bufq_sets[1].refillqs[j];
 
-			if (hs) {
-				q->rx_hsplit_en = true;
-				q->rx_hbuf_size = IDPF_HDR_BUF_SIZE;
-			}
+			idpf_queue_assign(HSPLIT_EN, q, hs);
+			q->rx_hbuf_size = hs ? IDPF_HDR_BUF_SIZE : 0;
 
 setup_rxq:
-			q->dev = &adapter->pdev->dev;
 			q->desc_count = vport->rxq_desc_count;
-			q->vport = vport;
-			q->rxq_grp = rx_qgrp;
+			q->rx_ptype_lkup = vport->rx_ptype_lkup;
+			q->netdev = vport->netdev;
+			q->bufq_sets = rx_qgrp->splitq.bufq_sets;
 			q->idx = (i * num_rxq) + j;
 			/* In splitq mode, RXQ buffer size should be
 			 * set to that of the first buffer queue
@@ -1445,12 +1622,13 @@ int idpf_vport_queues_alloc(struct idpf_vport *vport)
  * idpf_tx_handle_sw_marker - Handle queue marker packet
  * @tx_q: tx queue to handle software marker
  */
-static void idpf_tx_handle_sw_marker(struct idpf_queue *tx_q)
+static void idpf_tx_handle_sw_marker(struct idpf_tx_queue *tx_q)
 {
-	struct idpf_vport *vport = tx_q->vport;
+	struct idpf_netdev_priv *priv = netdev_priv(tx_q->netdev);
+	struct idpf_vport *vport = priv->vport;
 	int i;
 
-	clear_bit(__IDPF_Q_SW_MARKER, tx_q->flags);
+	idpf_queue_clear(SW_MARKER, tx_q);
 	/* Hardware must write marker packets to all queues associated with
 	 * completion queues. So check if all queues received marker packets
 	 */
@@ -1458,7 +1636,7 @@ static void idpf_tx_handle_sw_marker(struct idpf_queue *tx_q)
 		/* If we're still waiting on any other TXQ marker completions,
 		 * just return now since we cannot wake up the marker_wq yet.
 		 */
-		if (test_bit(__IDPF_Q_SW_MARKER, vport->txqs[i]->flags))
+		if (idpf_queue_has(SW_MARKER, vport->txqs[i]))
 			return;
 
 	/* Drain complete */
@@ -1474,7 +1652,7 @@ static void idpf_tx_handle_sw_marker(struct idpf_queue *tx_q)
  * @cleaned: pointer to stats struct to track cleaned packets/bytes
  * @napi_budget: Used to determine if we are in netpoll
  */
-static void idpf_tx_splitq_clean_hdr(struct idpf_queue *tx_q,
+static void idpf_tx_splitq_clean_hdr(struct idpf_tx_queue *tx_q,
 				     struct idpf_tx_buf *tx_buf,
 				     struct idpf_cleaned_stats *cleaned,
 				     int napi_budget)
@@ -1505,7 +1683,8 @@ static void idpf_tx_splitq_clean_hdr(struct idpf_queue *tx_q,
  * @cleaned: pointer to stats struct to track cleaned packets/bytes
  * @budget: Used to determine if we are in netpoll
  */
-static void idpf_tx_clean_stashed_bufs(struct idpf_queue *txq, u16 compl_tag,
+static void idpf_tx_clean_stashed_bufs(struct idpf_tx_queue *txq,
+				       u16 compl_tag,
 				       struct idpf_cleaned_stats *cleaned,
 				       int budget)
 {
@@ -1513,7 +1692,7 @@ static void idpf_tx_clean_stashed_bufs(struct idpf_queue *txq, u16 compl_tag,
 	struct hlist_node *tmp_buf;
 
 	/* Buffer completion */
-	hash_for_each_possible_safe(txq->sched_buf_hash, stash, tmp_buf,
+	hash_for_each_possible_safe(txq->stash->sched_buf_hash, stash, tmp_buf,
 				    hlist, compl_tag) {
 		if (unlikely(stash->buf.compl_tag != (int)compl_tag))
 			continue;
@@ -1530,7 +1709,7 @@ static void idpf_tx_clean_stashed_bufs(struct idpf_queue *txq, u16 compl_tag,
 		}
 
 		/* Push shadow buf back onto stack */
-		idpf_buf_lifo_push(&txq->buf_stack, stash);
+		idpf_buf_lifo_push(&txq->stash->buf_stack, stash);
 
 		hash_del(&stash->hlist);
 	}
@@ -1542,7 +1721,7 @@ static void idpf_tx_clean_stashed_bufs(struct idpf_queue *txq, u16 compl_tag,
  * @txq: Tx queue to clean
  * @tx_buf: buffer to store
  */
-static int idpf_stash_flow_sch_buffers(struct idpf_queue *txq,
+static int idpf_stash_flow_sch_buffers(struct idpf_tx_queue *txq,
 				       struct idpf_tx_buf *tx_buf)
 {
 	struct idpf_tx_stash *stash;
@@ -1551,10 +1730,10 @@ static int idpf_stash_flow_sch_buffers(struct idpf_queue *txq,
 		     !dma_unmap_len(tx_buf, len)))
 		return 0;
 
-	stash = idpf_buf_lifo_pop(&txq->buf_stack);
+	stash = idpf_buf_lifo_pop(&txq->stash->buf_stack);
 	if (unlikely(!stash)) {
 		net_err_ratelimited("%s: No out-of-order TX buffers left!\n",
-				    txq->vport->netdev->name);
+				    netdev_name(txq->netdev));
 
 		return -ENOMEM;
 	}
@@ -1568,7 +1747,8 @@ static int idpf_stash_flow_sch_buffers(struct idpf_queue *txq,
 	stash->buf.compl_tag = tx_buf->compl_tag;
 
 	/* Add buffer to buf_hash table to be freed later */
-	hash_add(txq->sched_buf_hash, &stash->hlist, stash->buf.compl_tag);
+	hash_add(txq->stash->sched_buf_hash, &stash->hlist,
+		 stash->buf.compl_tag);
 
 	memset(tx_buf, 0, sizeof(struct idpf_tx_buf));
 
@@ -1607,7 +1787,7 @@ do {								\
  * and the buffers will be cleaned separately. The stats are not updated from
  * this function when using flow-based scheduling.
  */
-static void idpf_tx_splitq_clean(struct idpf_queue *tx_q, u16 end,
+static void idpf_tx_splitq_clean(struct idpf_tx_queue *tx_q, u16 end,
 				 int napi_budget,
 				 struct idpf_cleaned_stats *cleaned,
 				 bool descs_only)
@@ -1703,7 +1883,7 @@ do {							\
  * stashed. Returns the byte/segment count for the cleaned packet associated
  * this completion tag.
  */
-static bool idpf_tx_clean_buf_ring(struct idpf_queue *txq, u16 compl_tag,
+static bool idpf_tx_clean_buf_ring(struct idpf_tx_queue *txq, u16 compl_tag,
 				   struct idpf_cleaned_stats *cleaned,
 				   int budget)
 {
@@ -1772,14 +1952,14 @@ static bool idpf_tx_clean_buf_ring(struct idpf_queue *txq, u16 compl_tag,
  *
  * Returns bytes/packets cleaned
  */
-static void idpf_tx_handle_rs_completion(struct idpf_queue *txq,
+static void idpf_tx_handle_rs_completion(struct idpf_tx_queue *txq,
 					 struct idpf_splitq_tx_compl_desc *desc,
 					 struct idpf_cleaned_stats *cleaned,
 					 int budget)
 {
 	u16 compl_tag;
 
-	if (!test_bit(__IDPF_Q_FLOW_SCH_EN, txq->flags)) {
+	if (!idpf_queue_has(FLOW_SCH_EN, txq)) {
 		u16 head = le16_to_cpu(desc->q_head_compl_tag.q_head);
 
 		return idpf_tx_splitq_clean(txq, head, budget, cleaned, false);
@@ -1802,24 +1982,23 @@ static void idpf_tx_handle_rs_completion(struct idpf_queue *txq,
  *
  * Returns true if there's any budget left (e.g. the clean is finished)
  */
-static bool idpf_tx_clean_complq(struct idpf_queue *complq, int budget,
+static bool idpf_tx_clean_complq(struct idpf_compl_queue *complq, int budget,
 				 int *cleaned)
 {
 	struct idpf_splitq_tx_compl_desc *tx_desc;
-	struct idpf_vport *vport = complq->vport;
 	s16 ntc = complq->next_to_clean;
 	struct idpf_netdev_priv *np;
 	unsigned int complq_budget;
 	bool complq_ok = true;
 	int i;
 
-	complq_budget = vport->compln_clean_budget;
+	complq_budget = complq->clean_budget;
 	tx_desc = &complq->comp[ntc];
 	ntc -= complq->desc_count;
 
 	do {
 		struct idpf_cleaned_stats cleaned_stats = { };
-		struct idpf_queue *tx_q;
+		struct idpf_tx_queue *tx_q;
 		int rel_tx_qid;
 		u16 hw_head;
 		u8 ctype;	/* completion type */
@@ -1828,7 +2007,7 @@ static bool idpf_tx_clean_complq(struct idpf_queue *complq, int budget,
 		/* if the descriptor isn't done, no work yet to do */
 		gen = le16_get_bits(tx_desc->qid_comptype_gen,
 				    IDPF_TXD_COMPLQ_GEN_M);
-		if (test_bit(__IDPF_Q_GEN_CHK, complq->flags) != gen)
+		if (idpf_queue_has(GEN_CHK, complq) != gen)
 			break;
 
 		/* Find necessary info of TX queue to clean buffers */
@@ -1836,8 +2015,7 @@ static bool idpf_tx_clean_complq(struct idpf_queue *complq, int budget,
 					   IDPF_TXD_COMPLQ_QID_M);
 		if (rel_tx_qid >= complq->txq_grp->num_txq ||
 		    !complq->txq_grp->txqs[rel_tx_qid]) {
-			dev_err(&complq->vport->adapter->pdev->dev,
-				"TxQ not found\n");
+			netdev_err(complq->netdev, "TxQ not found\n");
 			goto fetch_next_desc;
 		}
 		tx_q = complq->txq_grp->txqs[rel_tx_qid];
@@ -1860,15 +2038,14 @@ static bool idpf_tx_clean_complq(struct idpf_queue *complq, int budget,
 			idpf_tx_handle_sw_marker(tx_q);
 			break;
 		default:
-			dev_err(&tx_q->vport->adapter->pdev->dev,
-				"Unknown TX completion type: %d\n",
-				ctype);
+			netdev_err(tx_q->netdev,
+				   "Unknown TX completion type: %d\n", ctype);
 			goto fetch_next_desc;
 		}
 
 		u64_stats_update_begin(&tx_q->stats_sync);
-		u64_stats_add(&tx_q->q_stats.tx.packets, cleaned_stats.packets);
-		u64_stats_add(&tx_q->q_stats.tx.bytes, cleaned_stats.bytes);
+		u64_stats_add(&tx_q->q_stats.packets, cleaned_stats.packets);
+		u64_stats_add(&tx_q->q_stats.bytes, cleaned_stats.bytes);
 		tx_q->cleaned_pkts += cleaned_stats.packets;
 		tx_q->cleaned_bytes += cleaned_stats.bytes;
 		complq->num_completions++;
@@ -1880,7 +2057,7 @@ static bool idpf_tx_clean_complq(struct idpf_queue *complq, int budget,
 		if (unlikely(!ntc)) {
 			ntc -= complq->desc_count;
 			tx_desc = &complq->comp[0];
-			change_bit(__IDPF_Q_GEN_CHK, complq->flags);
+			idpf_queue_change(GEN_CHK, complq);
 		}
 
 		prefetch(tx_desc);
@@ -1896,9 +2073,9 @@ static bool idpf_tx_clean_complq(struct idpf_queue *complq, int budget,
 		     IDPF_TX_COMPLQ_OVERFLOW_THRESH(complq)))
 		complq_ok = false;
 
-	np = netdev_priv(complq->vport->netdev);
+	np = netdev_priv(complq->netdev);
 	for (i = 0; i < complq->txq_grp->num_txq; ++i) {
-		struct idpf_queue *tx_q = complq->txq_grp->txqs[i];
+		struct idpf_tx_queue *tx_q = complq->txq_grp->txqs[i];
 		struct netdev_queue *nq;
 		bool dont_wake;
 
@@ -1909,11 +2086,11 @@ static bool idpf_tx_clean_complq(struct idpf_queue *complq, int budget,
 		*cleaned += tx_q->cleaned_pkts;
 
 		/* Update BQL */
-		nq = netdev_get_tx_queue(tx_q->vport->netdev, tx_q->idx);
+		nq = netdev_get_tx_queue(tx_q->netdev, tx_q->idx);
 
 		dont_wake = !complq_ok || IDPF_TX_BUF_RSV_LOW(tx_q) ||
 			    np->state != __IDPF_VPORT_UP ||
-			    !netif_carrier_ok(tx_q->vport->netdev);
+			    !netif_carrier_ok(tx_q->netdev);
 		/* Check if the TXQ needs to and can be restarted */
 		__netif_txq_completed_wake(nq, tx_q->cleaned_pkts, tx_q->cleaned_bytes,
 					   IDPF_DESC_UNUSED(tx_q), IDPF_TX_WAKE_THRESH,
@@ -1976,7 +2153,7 @@ void idpf_tx_splitq_build_flow_desc(union idpf_tx_flex_desc *desc,
  *
  * Returns 0 if stop is not needed
  */
-int idpf_tx_maybe_stop_common(struct idpf_queue *tx_q, unsigned int size)
+int idpf_tx_maybe_stop_common(struct idpf_tx_queue *tx_q, unsigned int size)
 {
 	struct netdev_queue *nq;
 
@@ -1984,10 +2161,10 @@ int idpf_tx_maybe_stop_common(struct idpf_queue *tx_q, unsigned int size)
 		return 0;
 
 	u64_stats_update_begin(&tx_q->stats_sync);
-	u64_stats_inc(&tx_q->q_stats.tx.q_busy);
+	u64_stats_inc(&tx_q->q_stats.q_busy);
 	u64_stats_update_end(&tx_q->stats_sync);
 
-	nq = netdev_get_tx_queue(tx_q->vport->netdev, tx_q->idx);
+	nq = netdev_get_tx_queue(tx_q->netdev, tx_q->idx);
 
 	return netif_txq_maybe_stop(nq, IDPF_DESC_UNUSED(tx_q), size, size);
 }
@@ -1999,7 +2176,7 @@ int idpf_tx_maybe_stop_common(struct idpf_queue *tx_q, unsigned int size)
  *
  * Returns 0 if stop is not needed
  */
-static int idpf_tx_maybe_stop_splitq(struct idpf_queue *tx_q,
+static int idpf_tx_maybe_stop_splitq(struct idpf_tx_queue *tx_q,
 				     unsigned int descs_needed)
 {
 	if (idpf_tx_maybe_stop_common(tx_q, descs_needed))
@@ -2023,9 +2200,9 @@ static int idpf_tx_maybe_stop_splitq(struct idpf_queue *tx_q,
 
 splitq_stop:
 	u64_stats_update_begin(&tx_q->stats_sync);
-	u64_stats_inc(&tx_q->q_stats.tx.q_busy);
+	u64_stats_inc(&tx_q->q_stats.q_busy);
 	u64_stats_update_end(&tx_q->stats_sync);
-	netif_stop_subqueue(tx_q->vport->netdev, tx_q->idx);
+	netif_stop_subqueue(tx_q->netdev, tx_q->idx);
 
 	return -EBUSY;
 }
@@ -2040,12 +2217,12 @@ static int idpf_tx_maybe_stop_splitq(struct idpf_queue *tx_q,
  * to do a register write to update our queue status. We know this can only
  * mean tail here as HW should be owning head for TX.
  */
-void idpf_tx_buf_hw_update(struct idpf_queue *tx_q, u32 val,
+void idpf_tx_buf_hw_update(struct idpf_tx_queue *tx_q, u32 val,
 			   bool xmit_more)
 {
 	struct netdev_queue *nq;
 
-	nq = netdev_get_tx_queue(tx_q->vport->netdev, tx_q->idx);
+	nq = netdev_get_tx_queue(tx_q->netdev, tx_q->idx);
 	tx_q->next_to_use = val;
 
 	idpf_tx_maybe_stop_common(tx_q, IDPF_TX_DESC_NEEDED);
@@ -2069,7 +2246,7 @@ void idpf_tx_buf_hw_update(struct idpf_queue *tx_q, u32 val,
  *
  * Returns number of data descriptors needed for this skb.
  */
-unsigned int idpf_tx_desc_count_required(struct idpf_queue *txq,
+unsigned int idpf_tx_desc_count_required(struct idpf_tx_queue *txq,
 					 struct sk_buff *skb)
 {
 	const struct skb_shared_info *shinfo;
@@ -2102,7 +2279,7 @@ unsigned int idpf_tx_desc_count_required(struct idpf_queue *txq,
 
 		count = idpf_size_to_txd_count(skb->len);
 		u64_stats_update_begin(&txq->stats_sync);
-		u64_stats_inc(&txq->q_stats.tx.linearize);
+		u64_stats_inc(&txq->q_stats.linearize);
 		u64_stats_update_end(&txq->stats_sync);
 	}
 
@@ -2116,11 +2293,11 @@ unsigned int idpf_tx_desc_count_required(struct idpf_queue *txq,
  * @first: original first buffer info buffer for packet
  * @idx: starting point on ring to unwind
  */
-void idpf_tx_dma_map_error(struct idpf_queue *txq, struct sk_buff *skb,
+void idpf_tx_dma_map_error(struct idpf_tx_queue *txq, struct sk_buff *skb,
 			   struct idpf_tx_buf *first, u16 idx)
 {
 	u64_stats_update_begin(&txq->stats_sync);
-	u64_stats_inc(&txq->q_stats.tx.dma_map_errs);
+	u64_stats_inc(&txq->q_stats.dma_map_errs);
 	u64_stats_update_end(&txq->stats_sync);
 
 	/* clear dma mappings for failed tx_buf map */
@@ -2159,7 +2336,7 @@ void idpf_tx_dma_map_error(struct idpf_queue *txq, struct sk_buff *skb,
  * @txq: the tx ring to wrap
  * @ntu: ring index to bump
  */
-static unsigned int idpf_tx_splitq_bump_ntu(struct idpf_queue *txq, u16 ntu)
+static unsigned int idpf_tx_splitq_bump_ntu(struct idpf_tx_queue *txq, u16 ntu)
 {
 	ntu++;
 
@@ -2181,7 +2358,7 @@ static unsigned int idpf_tx_splitq_bump_ntu(struct idpf_queue *txq, u16 ntu)
  * and gets a physical address for each memory location and programs
  * it and the length into the transmit flex descriptor.
  */
-static void idpf_tx_splitq_map(struct idpf_queue *tx_q,
+static void idpf_tx_splitq_map(struct idpf_tx_queue *tx_q,
 			       struct idpf_tx_splitq_params *params,
 			       struct idpf_tx_buf *first)
 {
@@ -2348,7 +2525,7 @@ static void idpf_tx_splitq_map(struct idpf_queue *tx_q,
 	tx_q->txq_grp->num_completions_pending++;
 
 	/* record bytecount for BQL */
-	nq = netdev_get_tx_queue(tx_q->vport->netdev, tx_q->idx);
+	nq = netdev_get_tx_queue(tx_q->netdev, tx_q->idx);
 	netdev_tx_sent_queue(nq, first->bytecount);
 
 	idpf_tx_buf_hw_update(tx_q, i, netdev_xmit_more());
@@ -2544,7 +2721,7 @@ bool idpf_chk_linearize(struct sk_buff *skb, unsigned int max_bufs,
  * ring entry to reflect that this index is a context descriptor
  */
 static struct idpf_flex_tx_ctx_desc *
-idpf_tx_splitq_get_ctx_desc(struct idpf_queue *txq)
+idpf_tx_splitq_get_ctx_desc(struct idpf_tx_queue *txq)
 {
 	struct idpf_flex_tx_ctx_desc *desc;
 	int i = txq->next_to_use;
@@ -2564,10 +2741,10 @@ idpf_tx_splitq_get_ctx_desc(struct idpf_queue *txq)
  * @tx_q: queue to send buffer on
  * @skb: pointer to skb
  */
-netdev_tx_t idpf_tx_drop_skb(struct idpf_queue *tx_q, struct sk_buff *skb)
+netdev_tx_t idpf_tx_drop_skb(struct idpf_tx_queue *tx_q, struct sk_buff *skb)
 {
 	u64_stats_update_begin(&tx_q->stats_sync);
-	u64_stats_inc(&tx_q->q_stats.tx.skb_drops);
+	u64_stats_inc(&tx_q->q_stats.skb_drops);
 	u64_stats_update_end(&tx_q->stats_sync);
 
 	idpf_tx_buf_hw_update(tx_q, tx_q->next_to_use, false);
@@ -2585,7 +2762,7 @@ netdev_tx_t idpf_tx_drop_skb(struct idpf_queue *tx_q, struct sk_buff *skb)
  * Returns NETDEV_TX_OK if sent, else an error code
  */
 static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
-					struct idpf_queue *tx_q)
+					struct idpf_tx_queue *tx_q)
 {
 	struct idpf_tx_splitq_params tx_params = { };
 	struct idpf_tx_buf *first;
@@ -2625,7 +2802,7 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 		ctx_desc->tso.qw0.hdr_len = tx_params.offload.tso_hdr_len;
 
 		u64_stats_update_begin(&tx_q->stats_sync);
-		u64_stats_inc(&tx_q->q_stats.tx.lso_pkts);
+		u64_stats_inc(&tx_q->q_stats.lso_pkts);
 		u64_stats_update_end(&tx_q->stats_sync);
 	}
 
@@ -2642,7 +2819,7 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 		first->bytecount = max_t(unsigned int, skb->len, ETH_ZLEN);
 	}
 
-	if (test_bit(__IDPF_Q_FLOW_SCH_EN, tx_q->flags)) {
+	if (idpf_queue_has(FLOW_SCH_EN, tx_q)) {
 		tx_params.dtype = IDPF_TX_DESC_DTYPE_FLEX_FLOW_SCHE;
 		tx_params.eop_cmd = IDPF_TXD_FLEX_FLOW_CMD_EOP;
 		/* Set the RE bit to catch any packets that may have not been
@@ -2682,7 +2859,7 @@ netdev_tx_t idpf_tx_splitq_start(struct sk_buff *skb,
 				 struct net_device *netdev)
 {
 	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
-	struct idpf_queue *tx_q;
+	struct idpf_tx_queue *tx_q;
 
 	if (unlikely(skb_get_queue_mapping(skb) >= vport->num_txq)) {
 		dev_kfree_skb_any(skb);
@@ -2735,13 +2912,14 @@ enum pkt_hash_types idpf_ptype_to_htype(const struct idpf_rx_ptype_decoded *deco
  * @rx_desc: Receive descriptor
  * @decoded: Decoded Rx packet type related fields
  */
-static void idpf_rx_hash(struct idpf_queue *rxq, struct sk_buff *skb,
-			 struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
-			 struct idpf_rx_ptype_decoded *decoded)
+static void
+idpf_rx_hash(const struct idpf_rx_queue *rxq, struct sk_buff *skb,
+	     const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
+	     struct idpf_rx_ptype_decoded *decoded)
 {
 	u32 hash;
 
-	if (unlikely(!idpf_is_feature_ena(rxq->vport, NETIF_F_RXHASH)))
+	if (unlikely(!(rxq->netdev->features & NETIF_F_RXHASH)))
 		return;
 
 	hash = le16_to_cpu(rx_desc->hash1) |
@@ -2760,14 +2938,14 @@ static void idpf_rx_hash(struct idpf_queue *rxq, struct sk_buff *skb,
  *
  * skb->protocol must be set before this function is called
  */
-static void idpf_rx_csum(struct idpf_queue *rxq, struct sk_buff *skb,
+static void idpf_rx_csum(struct idpf_rx_queue *rxq, struct sk_buff *skb,
 			 struct idpf_rx_csum_decoded *csum_bits,
 			 struct idpf_rx_ptype_decoded *decoded)
 {
 	bool ipv4, ipv6;
 
 	/* check if Rx checksum is enabled */
-	if (unlikely(!idpf_is_feature_ena(rxq->vport, NETIF_F_RXCSUM)))
+	if (unlikely(!(rxq->netdev->features & NETIF_F_RXCSUM)))
 		return;
 
 	/* check if HW has decoded the packet and checksum */
@@ -2814,7 +2992,7 @@ static void idpf_rx_csum(struct idpf_queue *rxq, struct sk_buff *skb,
 
 checksum_fail:
 	u64_stats_update_begin(&rxq->stats_sync);
-	u64_stats_inc(&rxq->q_stats.rx.hw_csum_err);
+	u64_stats_inc(&rxq->q_stats.hw_csum_err);
 	u64_stats_update_end(&rxq->stats_sync);
 }
 
@@ -2824,8 +3002,9 @@ static void idpf_rx_csum(struct idpf_queue *rxq, struct sk_buff *skb,
  * @csum: structure to extract checksum fields
  *
  **/
-static void idpf_rx_splitq_extract_csum_bits(struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
-					     struct idpf_rx_csum_decoded *csum)
+static void
+idpf_rx_splitq_extract_csum_bits(const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
+				 struct idpf_rx_csum_decoded *csum)
 {
 	u8 qword0, qword1;
 
@@ -2860,8 +3039,8 @@ static void idpf_rx_splitq_extract_csum_bits(struct virtchnl2_rx_flex_desc_adv_n
  * Populate the skb fields with the total number of RSC segments, RSC payload
  * length and packet type.
  */
-static int idpf_rx_rsc(struct idpf_queue *rxq, struct sk_buff *skb,
-		       struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
+static int idpf_rx_rsc(struct idpf_rx_queue *rxq, struct sk_buff *skb,
+		       const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
 		       struct idpf_rx_ptype_decoded *decoded)
 {
 	u16 rsc_segments, rsc_seg_len;
@@ -2914,7 +3093,7 @@ static int idpf_rx_rsc(struct idpf_queue *rxq, struct sk_buff *skb,
 	tcp_gro_complete(skb);
 
 	u64_stats_update_begin(&rxq->stats_sync);
-	u64_stats_inc(&rxq->q_stats.rx.rsc_pkts);
+	u64_stats_inc(&rxq->q_stats.rsc_pkts);
 	u64_stats_update_end(&rxq->stats_sync);
 
 	return 0;
@@ -2930,9 +3109,9 @@ static int idpf_rx_rsc(struct idpf_queue *rxq, struct sk_buff *skb,
  * order to populate the hash, checksum, protocol, and
  * other fields within the skb.
  */
-static int idpf_rx_process_skb_fields(struct idpf_queue *rxq,
-				      struct sk_buff *skb,
-				      struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc)
+static int
+idpf_rx_process_skb_fields(struct idpf_rx_queue *rxq, struct sk_buff *skb,
+			   const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc)
 {
 	struct idpf_rx_csum_decoded csum_bits = { };
 	struct idpf_rx_ptype_decoded decoded;
@@ -2940,19 +3119,13 @@ static int idpf_rx_process_skb_fields(struct idpf_queue *rxq,
 
 	rx_ptype = le16_get_bits(rx_desc->ptype_err_fflags0,
 				 VIRTCHNL2_RX_FLEX_DESC_ADV_PTYPE_M);
-
-	skb->protocol = eth_type_trans(skb, rxq->vport->netdev);
-
-	decoded = rxq->vport->rx_ptype_lkup[rx_ptype];
-	/* If we don't know the ptype we can't do anything else with it. Just
-	 * pass it up the stack as-is.
-	 */
-	if (!decoded.known)
-		return 0;
+	decoded = rxq->rx_ptype_lkup[rx_ptype];
 
 	/* process RSS/hash */
 	idpf_rx_hash(rxq, skb, rx_desc, &decoded);
 
+	skb->protocol = eth_type_trans(skb, rxq->netdev);
+
 	if (le16_get_bits(rx_desc->hdrlen_flags,
 			  VIRTCHNL2_RX_FLEX_DESC_ADV_RSC_M))
 		return idpf_rx_rsc(rxq, skb, rx_desc, &decoded);
@@ -2992,7 +3165,7 @@ void idpf_rx_add_frag(struct idpf_rx_buf *rx_buf, struct sk_buff *skb,
  * data from the current receive descriptor, taking care to set up the
  * skb correctly.
  */
-struct sk_buff *idpf_rx_construct_skb(struct idpf_queue *rxq,
+struct sk_buff *idpf_rx_construct_skb(const struct idpf_rx_queue *rxq,
 				      struct idpf_rx_buf *rx_buf,
 				      unsigned int size)
 {
@@ -3005,7 +3178,7 @@ struct sk_buff *idpf_rx_construct_skb(struct idpf_queue *rxq,
 	/* prefetch first cache line of first page */
 	net_prefetch(va);
 	/* allocate a skb to store the frags */
-	skb = napi_alloc_skb(&rxq->q_vector->napi, IDPF_RX_HDR_SIZE);
+	skb = napi_alloc_skb(rxq->napi, IDPF_RX_HDR_SIZE);
 	if (unlikely(!skb)) {
 		idpf_rx_put_page(rx_buf);
 
@@ -3052,14 +3225,14 @@ struct sk_buff *idpf_rx_construct_skb(struct idpf_queue *rxq,
  * the current receive descriptor, taking care to set up the skb correctly.
  * This specifically uses a header buffer to start building the skb.
  */
-static struct sk_buff *idpf_rx_hdr_construct_skb(struct idpf_queue *rxq,
-						 const void *va,
-						 unsigned int size)
+static struct sk_buff *
+idpf_rx_hdr_construct_skb(const struct idpf_rx_queue *rxq, const void *va,
+			  unsigned int size)
 {
 	struct sk_buff *skb;
 
 	/* allocate a skb to store the frags */
-	skb = napi_alloc_skb(&rxq->q_vector->napi, size);
+	skb = napi_alloc_skb(rxq->napi, size);
 	if (unlikely(!skb))
 		return NULL;
 
@@ -3115,10 +3288,10 @@ static bool idpf_rx_splitq_is_eop(struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_de
  *
  * Returns amount of work completed
  */
-static int idpf_rx_splitq_clean(struct idpf_queue *rxq, int budget)
+static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
 {
 	int total_rx_bytes = 0, total_rx_pkts = 0;
-	struct idpf_queue *rx_bufq = NULL;
+	struct idpf_buf_queue *rx_bufq = NULL;
 	struct sk_buff *skb = rxq->skb;
 	u16 ntc = rxq->next_to_clean;
 
@@ -3148,7 +3321,7 @@ static int idpf_rx_splitq_clean(struct idpf_queue *rxq, int budget)
 		gen_id = le16_get_bits(rx_desc->pktlen_gen_bufq_id,
 				       VIRTCHNL2_RX_FLEX_DESC_ADV_GEN_M);
 
-		if (test_bit(__IDPF_Q_GEN_CHK, rxq->flags) != gen_id)
+		if (idpf_queue_has(GEN_CHK, rxq) != gen_id)
 			break;
 
 		rxdid = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_RXDID_M,
@@ -3156,7 +3329,7 @@ static int idpf_rx_splitq_clean(struct idpf_queue *rxq, int budget)
 		if (rxdid != VIRTCHNL2_RXDID_2_FLEX_SPLITQ) {
 			IDPF_RX_BUMP_NTC(rxq, ntc);
 			u64_stats_update_begin(&rxq->stats_sync);
-			u64_stats_inc(&rxq->q_stats.rx.bad_descs);
+			u64_stats_inc(&rxq->q_stats.bad_descs);
 			u64_stats_update_end(&rxq->stats_sync);
 			continue;
 		}
@@ -3174,7 +3347,7 @@ static int idpf_rx_splitq_clean(struct idpf_queue *rxq, int budget)
 			 * data/payload buffer.
 			 */
 			u64_stats_update_begin(&rxq->stats_sync);
-			u64_stats_inc(&rxq->q_stats.rx.hsplit_buf_ovf);
+			u64_stats_inc(&rxq->q_stats.hsplit_buf_ovf);
 			u64_stats_update_end(&rxq->stats_sync);
 			goto bypass_hsplit;
 		}
@@ -3187,13 +3360,10 @@ static int idpf_rx_splitq_clean(struct idpf_queue *rxq, int budget)
 					VIRTCHNL2_RX_FLEX_DESC_ADV_BUFQ_ID_M);
 
 		rxq_set = container_of(rxq, struct idpf_rxq_set, rxq);
-		if (!bufq_id)
-			refillq = rxq_set->refillq0;
-		else
-			refillq = rxq_set->refillq1;
+		refillq = rxq_set->refillq[bufq_id];
 
 		/* retrieve buffer from the rxq */
-		rx_bufq = &rxq->rxq_grp->splitq.bufq_sets[bufq_id].bufq;
+		rx_bufq = &rxq->bufq_sets[bufq_id].bufq;
 
 		buf_id = le16_to_cpu(rx_desc->buf_id);
 
@@ -3205,7 +3375,7 @@ static int idpf_rx_splitq_clean(struct idpf_queue *rxq, int budget)
 
 			skb = idpf_rx_hdr_construct_skb(rxq, va, hdr_len);
 			u64_stats_update_begin(&rxq->stats_sync);
-			u64_stats_inc(&rxq->q_stats.rx.hsplit_pkts);
+			u64_stats_inc(&rxq->q_stats.hsplit_pkts);
 			u64_stats_update_end(&rxq->stats_sync);
 		}
 
@@ -3248,7 +3418,7 @@ static int idpf_rx_splitq_clean(struct idpf_queue *rxq, int budget)
 		}
 
 		/* send completed skb up the stack */
-		napi_gro_receive(&rxq->q_vector->napi, skb);
+		napi_gro_receive(rxq->napi, skb);
 		skb = NULL;
 
 		/* update budget accounting */
@@ -3259,8 +3429,8 @@ static int idpf_rx_splitq_clean(struct idpf_queue *rxq, int budget)
 
 	rxq->skb = skb;
 	u64_stats_update_begin(&rxq->stats_sync);
-	u64_stats_add(&rxq->q_stats.rx.packets, total_rx_pkts);
-	u64_stats_add(&rxq->q_stats.rx.bytes, total_rx_bytes);
+	u64_stats_add(&rxq->q_stats.packets, total_rx_pkts);
+	u64_stats_add(&rxq->q_stats.bytes, total_rx_bytes);
 	u64_stats_update_end(&rxq->stats_sync);
 
 	/* guarantee a trip back through this routine if there was a failure */
@@ -3270,19 +3440,16 @@ static int idpf_rx_splitq_clean(struct idpf_queue *rxq, int budget)
 /**
  * idpf_rx_update_bufq_desc - Update buffer queue descriptor
  * @bufq: Pointer to the buffer queue
- * @refill_desc: SW Refill queue descriptor containing buffer ID
+ * @buf_id: buffer ID
  * @buf_desc: Buffer queue descriptor
  *
  * Return 0 on success and negative on failure.
  */
-static int idpf_rx_update_bufq_desc(struct idpf_queue *bufq, u16 refill_desc,
+static int idpf_rx_update_bufq_desc(struct idpf_buf_queue *bufq, u32 buf_id,
 				    struct virtchnl2_splitq_rx_buf_desc *buf_desc)
 {
 	struct idpf_rx_buf *buf;
 	dma_addr_t addr;
-	u16 buf_id;
-
-	buf_id = FIELD_GET(IDPF_RX_BI_BUFID_M, refill_desc);
 
 	buf = &bufq->rx_buf.buf[buf_id];
 
@@ -3293,7 +3460,7 @@ static int idpf_rx_update_bufq_desc(struct idpf_queue *bufq, u16 refill_desc,
 	buf_desc->pkt_addr = cpu_to_le64(addr);
 	buf_desc->qword0.buf_id = cpu_to_le16(buf_id);
 
-	if (!bufq->rx_hsplit_en)
+	if (!idpf_queue_has(HSPLIT_EN, bufq))
 		return 0;
 
 	buf_desc->hdr_addr = cpu_to_le64(bufq->rx_buf.hdr_buf_pa +
@@ -3309,33 +3476,32 @@ static int idpf_rx_update_bufq_desc(struct idpf_queue *bufq, u16 refill_desc,
  *
  * This function takes care of the buffer refill management
  */
-static void idpf_rx_clean_refillq(struct idpf_queue *bufq,
+static void idpf_rx_clean_refillq(struct idpf_buf_queue *bufq,
 				  struct idpf_sw_queue *refillq)
 {
 	struct virtchnl2_splitq_rx_buf_desc *buf_desc;
 	u16 bufq_nta = bufq->next_to_alloc;
 	u16 ntc = refillq->next_to_clean;
 	int cleaned = 0;
-	u16 gen;
 
 	buf_desc = &bufq->split_buf[bufq_nta];
 
 	/* make sure we stop at ring wrap in the unlikely case ring is full */
 	while (likely(cleaned < refillq->desc_count)) {
-		u16 refill_desc = refillq->ring[ntc];
+		u32 buf_id, refill_desc = refillq->ring[ntc];
 		bool failure;
 
-		gen = FIELD_GET(IDPF_RX_BI_GEN_M, refill_desc);
-		if (test_bit(__IDPF_RFLQ_GEN_CHK, refillq->flags) != gen)
+		if (idpf_queue_has(RFL_GEN_CHK, refillq) !=
+		    !!(refill_desc & IDPF_RX_BI_GEN_M))
 			break;
 
-		failure = idpf_rx_update_bufq_desc(bufq, refill_desc,
-						   buf_desc);
+		buf_id = FIELD_GET(IDPF_RX_BI_BUFID_M, refill_desc);
+		failure = idpf_rx_update_bufq_desc(bufq, buf_id, buf_desc);
 		if (failure)
 			break;
 
 		if (unlikely(++ntc == refillq->desc_count)) {
-			change_bit(__IDPF_RFLQ_GEN_CHK, refillq->flags);
+			idpf_queue_change(RFL_GEN_CHK, refillq);
 			ntc = 0;
 		}
 
@@ -3374,7 +3540,7 @@ static void idpf_rx_clean_refillq(struct idpf_queue *bufq,
  * this vector.  Returns true if clean is complete within budget, false
  * otherwise.
  */
-static void idpf_rx_clean_refillq_all(struct idpf_queue *bufq)
+static void idpf_rx_clean_refillq_all(struct idpf_buf_queue *bufq)
 {
 	struct idpf_bufq_set *bufq_set;
 	int i;
@@ -3439,6 +3605,8 @@ void idpf_vport_intr_rel(struct idpf_vport *vport)
 	for (v_idx = 0; v_idx < vport->num_q_vectors; v_idx++) {
 		struct idpf_q_vector *q_vector = &vport->q_vectors[v_idx];
 
+		kfree(q_vector->complq);
+		q_vector->complq = NULL;
 		kfree(q_vector->bufq);
 		q_vector->bufq = NULL;
 		kfree(q_vector->tx);
@@ -3577,13 +3745,13 @@ static void idpf_net_dim(struct idpf_q_vector *q_vector)
 		goto check_rx_itr;
 
 	for (i = 0, packets = 0, bytes = 0; i < q_vector->num_txq; i++) {
-		struct idpf_queue *txq = q_vector->tx[i];
+		struct idpf_tx_queue *txq = q_vector->tx[i];
 		unsigned int start;
 
 		do {
 			start = u64_stats_fetch_begin(&txq->stats_sync);
-			packets += u64_stats_read(&txq->q_stats.tx.packets);
-			bytes += u64_stats_read(&txq->q_stats.tx.bytes);
+			packets += u64_stats_read(&txq->q_stats.packets);
+			bytes += u64_stats_read(&txq->q_stats.bytes);
 		} while (u64_stats_fetch_retry(&txq->stats_sync, start));
 	}
 
@@ -3596,13 +3764,13 @@ static void idpf_net_dim(struct idpf_q_vector *q_vector)
 		return;
 
 	for (i = 0, packets = 0, bytes = 0; i < q_vector->num_rxq; i++) {
-		struct idpf_queue *rxq = q_vector->rx[i];
+		struct idpf_rx_queue *rxq = q_vector->rx[i];
 		unsigned int start;
 
 		do {
 			start = u64_stats_fetch_begin(&rxq->stats_sync);
-			packets += u64_stats_read(&rxq->q_stats.rx.packets);
-			bytes += u64_stats_read(&rxq->q_stats.rx.bytes);
+			packets += u64_stats_read(&rxq->q_stats.packets);
+			bytes += u64_stats_read(&rxq->q_stats.bytes);
 		} while (u64_stats_fetch_retry(&rxq->stats_sync, start));
 	}
 
@@ -3844,16 +4012,17 @@ static void idpf_vport_intr_napi_ena_all(struct idpf_vport *vport)
 static bool idpf_tx_splitq_clean_all(struct idpf_q_vector *q_vec,
 				     int budget, int *cleaned)
 {
-	u16 num_txq = q_vec->num_txq;
+	u16 num_complq = q_vec->num_complq;
 	bool clean_complete = true;
 	int i, budget_per_q;
 
-	if (unlikely(!num_txq))
+	if (unlikely(!num_complq))
 		return true;
 
-	budget_per_q = DIV_ROUND_UP(budget, num_txq);
-	for (i = 0; i < num_txq; i++)
-		clean_complete &= idpf_tx_clean_complq(q_vec->tx[i],
+	budget_per_q = DIV_ROUND_UP(budget, num_complq);
+
+	for (i = 0; i < num_complq; i++)
+		clean_complete &= idpf_tx_clean_complq(q_vec->complq[i],
 						       budget_per_q, cleaned);
 
 	return clean_complete;
@@ -3880,7 +4049,7 @@ static bool idpf_rx_splitq_clean_all(struct idpf_q_vector *q_vec, int budget,
 	 */
 	budget_per_q = num_rxq ? max(budget / num_rxq, 1) : 0;
 	for (i = 0; i < num_rxq; i++) {
-		struct idpf_queue *rxq = q_vec->rx[i];
+		struct idpf_rx_queue *rxq = q_vec->rx[i];
 		int pkts_cleaned_per_q;
 
 		pkts_cleaned_per_q = idpf_rx_splitq_clean(rxq, budget_per_q);
@@ -3935,8 +4104,8 @@ static int idpf_vport_splitq_napi_poll(struct napi_struct *napi, int budget)
 	 * queues virtchnl message, as the interrupts will be disabled after
 	 * that
 	 */
-	if (unlikely(q_vector->num_txq && test_bit(__IDPF_Q_POLL_MODE,
-						   q_vector->tx[0]->flags)))
+	if (unlikely(q_vector->num_txq && idpf_queue_has(POLL_MODE,
+							 q_vector->tx[0])))
 		return budget;
 	else
 		return work_done;
@@ -3950,27 +4119,28 @@ static int idpf_vport_splitq_napi_poll(struct napi_struct *napi, int budget)
  */
 static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport)
 {
+	bool split = idpf_is_queue_model_split(vport->rxq_model);
 	u16 num_txq_grp = vport->num_txq_grp;
-	int i, j, qv_idx, bufq_vidx = 0;
 	struct idpf_rxq_group *rx_qgrp;
 	struct idpf_txq_group *tx_qgrp;
-	struct idpf_queue *q, *bufq;
-	u16 q_index;
+	u32 i, qv_idx, q_index;
 
 	for (i = 0, qv_idx = 0; i < vport->num_rxq_grp; i++) {
 		u16 num_rxq;
 
+		if (qv_idx >= vport->num_q_vectors)
+			qv_idx = 0;
+
 		rx_qgrp = &vport->rxq_grps[i];
-		if (idpf_is_queue_model_split(vport->rxq_model))
+		if (split)
 			num_rxq = rx_qgrp->splitq.num_rxq_sets;
 		else
 			num_rxq = rx_qgrp->singleq.num_rxq;
 
-		for (j = 0; j < num_rxq; j++) {
-			if (qv_idx >= vport->num_q_vectors)
-				qv_idx = 0;
+		for (u32 j = 0; j < num_rxq; j++) {
+			struct idpf_rx_queue *q;
 
-			if (idpf_is_queue_model_split(vport->rxq_model))
+			if (split)
 				q = &rx_qgrp->splitq.rxq_sets[j]->rxq;
 			else
 				q = rx_qgrp->singleq.rxqs[j];
@@ -3978,52 +4148,53 @@ static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport)
 			q_index = q->q_vector->num_rxq;
 			q->q_vector->rx[q_index] = q;
 			q->q_vector->num_rxq++;
-			qv_idx++;
+
+			if (split)
+				q->napi = &q->q_vector->napi;
 		}
 
-		if (idpf_is_queue_model_split(vport->rxq_model)) {
-			for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
+		if (split) {
+			for (u32 j = 0; j < vport->num_bufqs_per_qgrp; j++) {
+				struct idpf_buf_queue *bufq;
+
 				bufq = &rx_qgrp->splitq.bufq_sets[j].bufq;
-				bufq->q_vector = &vport->q_vectors[bufq_vidx];
+				bufq->q_vector = &vport->q_vectors[qv_idx];
 				q_index = bufq->q_vector->num_bufq;
 				bufq->q_vector->bufq[q_index] = bufq;
 				bufq->q_vector->num_bufq++;
 			}
-			if (++bufq_vidx >= vport->num_q_vectors)
-				bufq_vidx = 0;
 		}
+
+		qv_idx++;
 	}
 
+	split = idpf_is_queue_model_split(vport->txq_model);
+
 	for (i = 0, qv_idx = 0; i < num_txq_grp; i++) {
 		u16 num_txq;
 
+		if (qv_idx >= vport->num_q_vectors)
+			qv_idx = 0;
+
 		tx_qgrp = &vport->txq_grps[i];
 		num_txq = tx_qgrp->num_txq;
 
-		if (idpf_is_queue_model_split(vport->txq_model)) {
-			if (qv_idx >= vport->num_q_vectors)
-				qv_idx = 0;
+		for (u32 j = 0; j < num_txq; j++) {
+			struct idpf_tx_queue *q;
 
-			q = tx_qgrp->complq;
+			q = tx_qgrp->txqs[j];
 			q->q_vector = &vport->q_vectors[qv_idx];
-			q_index = q->q_vector->num_txq;
-			q->q_vector->tx[q_index] = q;
-			q->q_vector->num_txq++;
-			qv_idx++;
-		} else {
-			for (j = 0; j < num_txq; j++) {
-				if (qv_idx >= vport->num_q_vectors)
-					qv_idx = 0;
+			q->q_vector->tx[q->q_vector->num_txq++] = q;
+		}
 
-				q = tx_qgrp->txqs[j];
-				q->q_vector = &vport->q_vectors[qv_idx];
-				q_index = q->q_vector->num_txq;
-				q->q_vector->tx[q_index] = q;
-				q->q_vector->num_txq++;
+		if (split) {
+			struct idpf_compl_queue *q = tx_qgrp->complq;
 
-				qv_idx++;
-			}
+			q->q_vector = &vport->q_vectors[qv_idx];
+			q->q_vector->complq[q->q_vector->num_complq++] = q;
 		}
+
+		qv_idx++;
 	}
 }
 
@@ -4099,18 +4270,22 @@ int idpf_vport_intr_alloc(struct idpf_vport *vport)
 {
 	u16 txqs_per_vector, rxqs_per_vector, bufqs_per_vector;
 	struct idpf_q_vector *q_vector;
-	int v_idx, err;
+	u32 complqs_per_vector, v_idx;
 
 	vport->q_vectors = kcalloc(vport->num_q_vectors,
 				   sizeof(struct idpf_q_vector), GFP_KERNEL);
 	if (!vport->q_vectors)
 		return -ENOMEM;
 
-	txqs_per_vector = DIV_ROUND_UP(vport->num_txq, vport->num_q_vectors);
-	rxqs_per_vector = DIV_ROUND_UP(vport->num_rxq, vport->num_q_vectors);
+	txqs_per_vector = DIV_ROUND_UP(vport->num_txq_grp,
+				       vport->num_q_vectors);
+	rxqs_per_vector = DIV_ROUND_UP(vport->num_rxq_grp,
+				       vport->num_q_vectors);
 	bufqs_per_vector = vport->num_bufqs_per_qgrp *
 			   DIV_ROUND_UP(vport->num_rxq_grp,
 					vport->num_q_vectors);
+	complqs_per_vector = DIV_ROUND_UP(vport->num_txq_grp,
+					  vport->num_q_vectors);
 
 	for (v_idx = 0; v_idx < vport->num_q_vectors; v_idx++) {
 		q_vector = &vport->q_vectors[v_idx];
@@ -4124,32 +4299,30 @@ int idpf_vport_intr_alloc(struct idpf_vport *vport)
 		q_vector->rx_intr_mode = IDPF_ITR_DYNAMIC;
 		q_vector->rx_itr_idx = VIRTCHNL2_ITR_IDX_0;
 
-		q_vector->tx = kcalloc(txqs_per_vector,
-				       sizeof(struct idpf_queue *),
+		q_vector->tx = kcalloc(txqs_per_vector, sizeof(*q_vector->tx),
 				       GFP_KERNEL);
-		if (!q_vector->tx) {
-			err = -ENOMEM;
+		if (!q_vector->tx)
 			goto error;
-		}
 
-		q_vector->rx = kcalloc(rxqs_per_vector,
-				       sizeof(struct idpf_queue *),
+		q_vector->rx = kcalloc(rxqs_per_vector, sizeof(*q_vector->rx),
 				       GFP_KERNEL);
-		if (!q_vector->rx) {
-			err = -ENOMEM;
+		if (!q_vector->rx)
 			goto error;
-		}
 
 		if (!idpf_is_queue_model_split(vport->rxq_model))
 			continue;
 
 		q_vector->bufq = kcalloc(bufqs_per_vector,
-					 sizeof(struct idpf_queue *),
+					 sizeof(*q_vector->bufq),
 					 GFP_KERNEL);
-		if (!q_vector->bufq) {
-			err = -ENOMEM;
+		if (!q_vector->bufq)
+			goto error;
+
+		q_vector->complq = kcalloc(complqs_per_vector,
+					   sizeof(*q_vector->complq),
+					   GFP_KERNEL);
+		if (!q_vector->complq)
 			goto error;
-		}
 	}
 
 	return 0;
@@ -4157,7 +4330,7 @@ int idpf_vport_intr_alloc(struct idpf_vport *vport)
 error:
 	idpf_vport_intr_rel(vport);
 
-	return err;
+	return -ENOMEM;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index a5f9b7a5effe..44602b87cd41 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -750,7 +750,7 @@ static int idpf_wait_for_marker_event(struct idpf_vport *vport)
 	int i;
 
 	for (i = 0; i < vport->num_txq; i++)
-		set_bit(__IDPF_Q_SW_MARKER, vport->txqs[i]->flags);
+		idpf_queue_set(SW_MARKER, vport->txqs[i]);
 
 	event = wait_event_timeout(vport->sw_marker_wq,
 				   test_and_clear_bit(IDPF_VPORT_SW_MARKER,
@@ -758,7 +758,7 @@ static int idpf_wait_for_marker_event(struct idpf_vport *vport)
 				   msecs_to_jiffies(500));
 
 	for (i = 0; i < vport->num_txq; i++)
-		clear_bit(__IDPF_Q_POLL_MODE, vport->txqs[i]->flags);
+		idpf_queue_clear(POLL_MODE, vport->txqs[i]);
 
 	if (event)
 		return 0;
@@ -1092,7 +1092,6 @@ static int __idpf_queue_reg_init(struct idpf_vport *vport, u32 *reg_vals,
 				 int num_regs, u32 q_type)
 {
 	struct idpf_adapter *adapter = vport->adapter;
-	struct idpf_queue *q;
 	int i, j, k = 0;
 
 	switch (q_type) {
@@ -1111,6 +1110,8 @@ static int __idpf_queue_reg_init(struct idpf_vport *vport, u32 *reg_vals,
 			u16 num_rxq = rx_qgrp->singleq.num_rxq;
 
 			for (j = 0; j < num_rxq && k < num_regs; j++, k++) {
+				struct idpf_rx_queue *q;
+
 				q = rx_qgrp->singleq.rxqs[j];
 				q->tail = idpf_get_reg_addr(adapter,
 							    reg_vals[k]);
@@ -1123,6 +1124,8 @@ static int __idpf_queue_reg_init(struct idpf_vport *vport, u32 *reg_vals,
 			u8 num_bufqs = vport->num_bufqs_per_qgrp;
 
 			for (j = 0; j < num_bufqs && k < num_regs; j++, k++) {
+				struct idpf_buf_queue *q;
+
 				q = &rx_qgrp->splitq.bufq_sets[j].bufq;
 				q->tail = idpf_get_reg_addr(adapter,
 							    reg_vals[k]);
@@ -1449,19 +1452,19 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
 			qi[k].model =
 				cpu_to_le16(vport->txq_model);
 			qi[k].type =
-				cpu_to_le32(tx_qgrp->txqs[j]->q_type);
+				cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_TX);
 			qi[k].ring_len =
 				cpu_to_le16(tx_qgrp->txqs[j]->desc_count);
 			qi[k].dma_ring_addr =
 				cpu_to_le64(tx_qgrp->txqs[j]->dma);
 			if (idpf_is_queue_model_split(vport->txq_model)) {
-				struct idpf_queue *q = tx_qgrp->txqs[j];
+				struct idpf_tx_queue *q = tx_qgrp->txqs[j];
 
 				qi[k].tx_compl_queue_id =
 					cpu_to_le16(tx_qgrp->complq->q_id);
 				qi[k].relative_queue_id = cpu_to_le16(j);
 
-				if (test_bit(__IDPF_Q_FLOW_SCH_EN, q->flags))
+				if (idpf_queue_has(FLOW_SCH_EN, q))
 					qi[k].sched_mode =
 					cpu_to_le16(VIRTCHNL2_TXQ_SCHED_MODE_FLOW);
 				else
@@ -1478,11 +1481,11 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
 
 		qi[k].queue_id = cpu_to_le32(tx_qgrp->complq->q_id);
 		qi[k].model = cpu_to_le16(vport->txq_model);
-		qi[k].type = cpu_to_le32(tx_qgrp->complq->q_type);
+		qi[k].type = cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION);
 		qi[k].ring_len = cpu_to_le16(tx_qgrp->complq->desc_count);
 		qi[k].dma_ring_addr = cpu_to_le64(tx_qgrp->complq->dma);
 
-		if (test_bit(__IDPF_Q_FLOW_SCH_EN, tx_qgrp->complq->flags))
+		if (idpf_queue_has(FLOW_SCH_EN, tx_qgrp->complq))
 			sched_mode = VIRTCHNL2_TXQ_SCHED_MODE_FLOW;
 		else
 			sched_mode = VIRTCHNL2_TXQ_SCHED_MODE_QUEUE;
@@ -1567,17 +1570,18 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 			goto setup_rxqs;
 
 		for (j = 0; j < vport->num_bufqs_per_qgrp; j++, k++) {
-			struct idpf_queue *bufq =
+			struct idpf_buf_queue *bufq =
 				&rx_qgrp->splitq.bufq_sets[j].bufq;
 
 			qi[k].queue_id = cpu_to_le32(bufq->q_id);
 			qi[k].model = cpu_to_le16(vport->rxq_model);
-			qi[k].type = cpu_to_le32(bufq->q_type);
+			qi[k].type =
+				cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_RX_BUFFER);
 			qi[k].desc_ids = cpu_to_le64(VIRTCHNL2_RXDID_2_FLEX_SPLITQ_M);
 			qi[k].ring_len = cpu_to_le16(bufq->desc_count);
 			qi[k].dma_ring_addr = cpu_to_le64(bufq->dma);
 			qi[k].data_buffer_size = cpu_to_le32(bufq->rx_buf_size);
-			qi[k].buffer_notif_stride = bufq->rx_buf_stride;
+			qi[k].buffer_notif_stride = IDPF_RX_BUF_STRIDE;
 			qi[k].rx_buffer_low_watermark =
 				cpu_to_le16(bufq->rx_buffer_low_watermark);
 			if (idpf_is_feature_ena(vport, NETIF_F_GRO_HW))
@@ -1591,7 +1595,7 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 			num_rxq = rx_qgrp->singleq.num_rxq;
 
 		for (j = 0; j < num_rxq; j++, k++) {
-			struct idpf_queue *rxq;
+			struct idpf_rx_queue *rxq;
 
 			if (!idpf_is_queue_model_split(vport->rxq_model)) {
 				rxq = rx_qgrp->singleq.rxqs[j];
@@ -1599,11 +1603,11 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 			}
 			rxq = &rx_qgrp->splitq.rxq_sets[j]->rxq;
 			qi[k].rx_bufq1_id =
-			  cpu_to_le16(rxq->rxq_grp->splitq.bufq_sets[0].bufq.q_id);
+			  cpu_to_le16(rxq->bufq_sets[0].bufq.q_id);
 			if (vport->num_bufqs_per_qgrp > IDPF_SINGLE_BUFQ_PER_RXQ_GRP) {
 				qi[k].bufq2_ena = IDPF_BUFQ2_ENA;
 				qi[k].rx_bufq2_id =
-				  cpu_to_le16(rxq->rxq_grp->splitq.bufq_sets[1].bufq.q_id);
+				  cpu_to_le16(rxq->bufq_sets[1].bufq.q_id);
 			}
 			qi[k].rx_buffer_low_watermark =
 				cpu_to_le16(rxq->rx_buffer_low_watermark);
@@ -1611,7 +1615,7 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 				qi[k].qflags |= cpu_to_le16(VIRTCHNL2_RXQ_RSC);
 
 common_qi_fields:
-			if (rxq->rx_hsplit_en) {
+			if (idpf_queue_has(HSPLIT_EN, rxq)) {
 				qi[k].qflags |=
 					cpu_to_le16(VIRTCHNL2_RXQ_HDR_SPLIT);
 				qi[k].hdr_buffer_size =
@@ -1619,7 +1623,7 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 			}
 			qi[k].queue_id = cpu_to_le32(rxq->q_id);
 			qi[k].model = cpu_to_le16(vport->rxq_model);
-			qi[k].type = cpu_to_le32(rxq->q_type);
+			qi[k].type = cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_RX);
 			qi[k].ring_len = cpu_to_le16(rxq->desc_count);
 			qi[k].dma_ring_addr = cpu_to_le64(rxq->dma);
 			qi[k].max_pkt_size = cpu_to_le32(rxq->rx_max_pkt_size);
@@ -1706,7 +1710,7 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, bool ena)
 		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
 
 		for (j = 0; j < tx_qgrp->num_txq; j++, k++) {
-			qc[k].type = cpu_to_le32(tx_qgrp->txqs[j]->q_type);
+			qc[k].type = cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_TX);
 			qc[k].start_queue_id = cpu_to_le32(tx_qgrp->txqs[j]->q_id);
 			qc[k].num_queues = cpu_to_le32(IDPF_NUMQ_PER_CHUNK);
 		}
@@ -1720,7 +1724,7 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, bool ena)
 	for (i = 0; i < vport->num_txq_grp; i++, k++) {
 		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
 
-		qc[k].type = cpu_to_le32(tx_qgrp->complq->q_type);
+		qc[k].type = cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION);
 		qc[k].start_queue_id = cpu_to_le32(tx_qgrp->complq->q_id);
 		qc[k].num_queues = cpu_to_le32(IDPF_NUMQ_PER_CHUNK);
 	}
@@ -1741,12 +1745,12 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, bool ena)
 				qc[k].start_queue_id =
 				cpu_to_le32(rx_qgrp->splitq.rxq_sets[j]->rxq.q_id);
 				qc[k].type =
-				cpu_to_le32(rx_qgrp->splitq.rxq_sets[j]->rxq.q_type);
+				cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_RX);
 			} else {
 				qc[k].start_queue_id =
 				cpu_to_le32(rx_qgrp->singleq.rxqs[j]->q_id);
 				qc[k].type =
-				cpu_to_le32(rx_qgrp->singleq.rxqs[j]->q_type);
+				cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_RX);
 			}
 			qc[k].num_queues = cpu_to_le32(IDPF_NUMQ_PER_CHUNK);
 		}
@@ -1761,10 +1765,11 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, bool ena)
 		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
 
 		for (j = 0; j < vport->num_bufqs_per_qgrp; j++, k++) {
-			struct idpf_queue *q;
+			const struct idpf_buf_queue *q;
 
 			q = &rx_qgrp->splitq.bufq_sets[j].bufq;
-			qc[k].type = cpu_to_le32(q->q_type);
+			qc[k].type =
+				cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_RX_BUFFER);
 			qc[k].start_queue_id = cpu_to_le32(q->q_id);
 			qc[k].num_queues = cpu_to_le32(IDPF_NUMQ_PER_CHUNK);
 		}
@@ -1849,7 +1854,8 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
 
 		for (j = 0; j < tx_qgrp->num_txq; j++, k++) {
-			vqv[k].queue_type = cpu_to_le32(tx_qgrp->txqs[j]->q_type);
+			vqv[k].queue_type =
+				cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_TX);
 			vqv[k].queue_id = cpu_to_le32(tx_qgrp->txqs[j]->q_id);
 
 			if (idpf_is_queue_model_split(vport->txq_model)) {
@@ -1879,14 +1885,15 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 			num_rxq = rx_qgrp->singleq.num_rxq;
 
 		for (j = 0; j < num_rxq; j++, k++) {
-			struct idpf_queue *rxq;
+			struct idpf_rx_queue *rxq;
 
 			if (idpf_is_queue_model_split(vport->rxq_model))
 				rxq = &rx_qgrp->splitq.rxq_sets[j]->rxq;
 			else
 				rxq = rx_qgrp->singleq.rxqs[j];
 
-			vqv[k].queue_type = cpu_to_le32(rxq->q_type);
+			vqv[k].queue_type =
+				cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_RX);
 			vqv[k].queue_id = cpu_to_le32(rxq->q_id);
 			vqv[k].vector_id = cpu_to_le16(rxq->q_vector->v_idx);
 			vqv[k].itr_idx = cpu_to_le32(rxq->q_vector->rx_itr_idx);
@@ -1975,7 +1982,7 @@ int idpf_send_disable_queues_msg(struct idpf_vport *vport)
 	 * queues virtchnl message is sent
 	 */
 	for (i = 0; i < vport->num_txq; i++)
-		set_bit(__IDPF_Q_POLL_MODE, vport->txqs[i]->flags);
+		idpf_queue_set(POLL_MODE, vport->txqs[i]);
 
 	/* schedule the napi to receive all the marker packets */
 	local_bh_disable();
@@ -3242,7 +3249,6 @@ static int __idpf_vport_queue_ids_init(struct idpf_vport *vport,
 				       int num_qids,
 				       u32 q_type)
 {
-	struct idpf_queue *q;
 	int i, j, k = 0;
 
 	switch (q_type) {
@@ -3250,11 +3256,8 @@ static int __idpf_vport_queue_ids_init(struct idpf_vport *vport,
 		for (i = 0; i < vport->num_txq_grp; i++) {
 			struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
 
-			for (j = 0; j < tx_qgrp->num_txq && k < num_qids; j++, k++) {
+			for (j = 0; j < tx_qgrp->num_txq && k < num_qids; j++, k++)
 				tx_qgrp->txqs[j]->q_id = qids[k];
-				tx_qgrp->txqs[j]->q_type =
-					VIRTCHNL2_QUEUE_TYPE_TX;
-			}
 		}
 		break;
 	case VIRTCHNL2_QUEUE_TYPE_RX:
@@ -3268,12 +3271,13 @@ static int __idpf_vport_queue_ids_init(struct idpf_vport *vport,
 				num_rxq = rx_qgrp->singleq.num_rxq;
 
 			for (j = 0; j < num_rxq && k < num_qids; j++, k++) {
+				struct idpf_rx_queue *q;
+
 				if (idpf_is_queue_model_split(vport->rxq_model))
 					q = &rx_qgrp->splitq.rxq_sets[j]->rxq;
 				else
 					q = rx_qgrp->singleq.rxqs[j];
 				q->q_id = qids[k];
-				q->q_type = VIRTCHNL2_QUEUE_TYPE_RX;
 			}
 		}
 		break;
@@ -3282,8 +3286,6 @@ static int __idpf_vport_queue_ids_init(struct idpf_vport *vport,
 			struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
 
 			tx_qgrp->complq->q_id = qids[k];
-			tx_qgrp->complq->q_type =
-				VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION;
 		}
 		break;
 	case VIRTCHNL2_QUEUE_TYPE_RX_BUFFER:
@@ -3292,9 +3294,10 @@ static int __idpf_vport_queue_ids_init(struct idpf_vport *vport,
 			u8 num_bufqs = vport->num_bufqs_per_qgrp;
 
 			for (j = 0; j < num_bufqs && k < num_qids; j++, k++) {
+				struct idpf_buf_queue *q;
+
 				q = &rx_qgrp->splitq.bufq_sets[j].bufq;
 				q->q_id = qids[k];
-				q->q_type = VIRTCHNL2_QUEUE_TYPE_RX_BUFFER;
 			}
 		}
 		break;
-- 
2.45.0

