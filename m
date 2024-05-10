Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D098C27B9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 May 2024 17:28:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6ECD1845F4;
	Fri, 10 May 2024 15:28:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6jxWYs2LAxTV; Fri, 10 May 2024 15:28:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 997BB845EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715354881;
	bh=nOn+CBxD160a7LiI0lR5gTkecl0h+iI5+Rn5T8k3vaY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Yd3ABaEnClvOFD4l8nDc/+fXTMwfiSuJ9uIjH+l2mY/zoesR4VhY3YDzRHBQCGWL6
	 V3xbZpGgMZYboEeintrmDL9ye7qRGszatEgxaIhItFIGijo5CkgULHJAllBR/Ty0Ut
	 sS6YbcN8Sx9jMAWe1+GZMT4BRcAVLHHW2ffLG+t9aeRzcaAPqBMETvyBLjJ5uRU9Za
	 GKVoxJkG6YBFlo4OyHV8DmqgZYm/exjXwqN9IH5mnWgzW7ZozVQUnj6VdIQSoMD4wz
	 XIMtvLo+PsGmkm5Gyb8xv/r7klR88nLayA1tY9aYkfDvrVakm9xjMn7aiIdxESCs4V
	 YW4xhlsW/kMcQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 997BB845EE;
	Fri, 10 May 2024 15:28:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D7D421BF304
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 15:27:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C50514244A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 15:27:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pirFwGcUgh2T for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 May 2024 15:27:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D102E42243
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D102E42243
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D102E42243
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 15:27:55 +0000 (UTC)
X-CSE-ConnectionGUID: T1xNIRxZTr6ZWin6ob/BBQ==
X-CSE-MsgGUID: REtGRczmRUyGlUb0YSU4ZQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="15152682"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="15152682"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 08:27:55 -0700
X-CSE-ConnectionGUID: V2rUnnvLRWiAv0FYU6S5Tw==
X-CSE-MsgGUID: DiNiehViTy6FzemmfJOxlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="30208315"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa008.jf.intel.com with ESMTP; 10 May 2024 08:27:52 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 10 May 2024 17:26:20 +0200
Message-ID: <20240510152620.2227312-13-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240510152620.2227312-1-aleksander.lobakin@intel.com>
References: <20240510152620.2227312-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715354876; x=1746890876;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yAW+U6/EKbbhhJide8vcHg0Z3Rws2sIwqTeSecjDbvE=;
 b=LxZfNQ9UJBhCQaTmZ0QmA5hW5jrcu9JiRxQ5s0haXick/v30FX0J2XLh
 zyvsPssMGW/t7zYLvr/cSjwt/sUE45o14vV8CThvARq86pD+PB3tQUkwQ
 +3Aqiev4F067AhiBzDawm+cCrsJqxE2bsT+SBldg091NLnSzWRDoSn8NY
 LzhKtI0SpU/PXOXRfmg+c9Ji5tQN4hy0Bm3FNUkMxZZ8CwXxaRrYTz5vQ
 CUq4NOKsd8c15SZis/q47RUwzZiJRJxzca84SHm7Z+1qbWXs0H+WD05Je
 NCMyBigkeWnVozi9EDmPdvzkBHduarX01TOvmvG2TIb4q7PQOe6h8yz9L
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LxZfNQ9U
Subject: [Intel-wired-lan] [PATCH RFC iwl-next 12/12] idpf: use libeth Rx
 buffer management for payload buffer
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

idpf uses Page Pool for data buffers with hardcoded buffer lengths of
4k for "classic" buffers and 2k for "short" ones. This is not flexible
and does not ensure optimal memory usage. Why would you need 4k buffers
when the MTU is 1500?
Use libeth for the data buffers and don't hardcode any buffer sizes. Let
them be calculated from the MTU for "classics" and then divide the
truesize by 2 for "short" ones. The memory usage is now greatly reduced
and 2 buffer queues starts make sense: on frames <= 1024, you'll recycle
(and resync) a page only after 4 HW writes rather than two.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/Kconfig       |   1 -
 drivers/net/ethernet/intel/idpf/idpf.h        |   1 -
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  88 ++-----
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  25 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 240 ++++++------------
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |   8 +-
 6 files changed, 119 insertions(+), 244 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/Kconfig b/drivers/net/ethernet/intel/idpf/Kconfig
index af6126eeb61e..48f74aef72e5 100644
--- a/drivers/net/ethernet/intel/idpf/Kconfig
+++ b/drivers/net/ethernet/intel/idpf/Kconfig
@@ -6,7 +6,6 @@ config IDPF
 	depends on PCI_MSI
 	select DIMLIB
 	select LIBETH
-	select PAGE_POOL
 	help
 	  This driver supports Intel(R) Infrastructure Data Path Function
 	  devices.
diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 078340a01757..d498e5746b3a 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -308,7 +308,6 @@ struct idpf_vport {
 	u32 rxq_desc_count;
 	u8 num_bufqs_per_qgrp;
 	u32 bufq_desc_count[IDPF_MAX_BUFQS_PER_RXQ_GRP];
-	u32 bufq_size[IDPF_MAX_BUFQS_PER_RXQ_GRP];
 	u16 num_rxq_grp;
 	struct idpf_rxq_group *rxq_grps;
 	u32 rxq_model;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index f6885ad3da94..1715f825063b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -7,7 +7,6 @@
 #include <linux/dim.h>
 
 #include <net/libeth/cache.h>
-#include <net/libeth/rx.h>
 #include <net/tcp.h>
 #include <net/netdev_queues.h>
 
@@ -97,14 +96,10 @@ do {								\
 		idx = 0;					\
 } while (0)
 
-#define IDPF_RX_HDR_SIZE			256
-#define IDPF_RX_BUF_2048			2048
-#define IDPF_RX_BUF_4096			4096
 #define IDPF_RX_BUF_STRIDE			32
 #define IDPF_RX_BUF_POST_STRIDE			16
 #define IDPF_LOW_WATERMARK			64
-#define IDPF_PACKET_HDR_PAD	\
-	(ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN * 2)
+
 #define IDPF_TX_TSO_MIN_MSS			88
 
 /* Minimum number of descriptors between 2 descriptors with the RE bit set;
@@ -532,7 +527,7 @@ struct idpf_txq_stash {
 /**
  * struct idpf_rx_queue - software structure represting a receive queue
  * @bufq_sets: Pointer to the array of buffer queues in splitq mode
- * @rx_buf: See struct idpf_rx_buf
+ * @rx_buf: see struct &libeth_fqe
  * @rx: Received packets descriptor ring memory
  * @single_buf: Posted buffers descriptor ring memory
  * @desc_ring: Descriptor ring memory
@@ -547,9 +542,10 @@ struct idpf_txq_stash {
  * @next_to_use: Next descriptor to use
  * @next_to_clean: Next descriptor to clean
  * @next_to_alloc: RX buffer to allocate at
- * @rxdids: Supported RX descriptor ids
  * @rx_ptype_lkup: LUT of Rx ptypes
  * @skb: Pointer to the skb
+ * @truesize: data buffer truesize in singleq
+ * @rxdids: Supported RX descriptor ids
  * @stats_sync: See struct u64_stats_sync
  * @q_stats: See union idpf_rx_queue_stats
  * @q_id: Queue id
@@ -575,7 +571,7 @@ struct idpf_rx_queue {
 				struct napi_struct *napi;
 			};
 			struct {
-				struct idpf_rx_buf *rx_buf;
+				struct libeth_fqe *rx_buf;
 				struct page_pool *pp;
 			};
 		};
@@ -595,6 +591,7 @@ struct idpf_rx_queue {
 		u16 next_to_alloc;
 
 		struct sk_buff *skb;
+		u32 truesize;
 
 		struct u64_stats_sync stats_sync;
 		struct idpf_rx_queue_stats q_stats;
@@ -613,7 +610,7 @@ struct idpf_rx_queue {
 	);
 };
 libeth_cacheline_set_assert(struct idpf_rx_queue, 64,
-			    72 + sizeof(struct u64_stats_sync),
+			    80 + sizeof(struct u64_stats_sync),
 			    32);
 
 /**
@@ -736,7 +733,7 @@ libeth_cacheline_set_assert(struct idpf_tx_queue, 64,
 /**
  * struct idpf_buf_queue - software structure represting a buffer queue
  * @hdr_buf: &libeth_fqe for header buffers
- * @buf: &idpf_rx_buf for data buffers
+ * @buf: &libeth_fqe for data buffers
  * @split_buf: Descriptor ring memory
  * @hdr_pp: &page_pool for header buffers
  * @pp: &page_pool for data buffers
@@ -746,7 +743,8 @@ libeth_cacheline_set_assert(struct idpf_tx_queue, 64,
  * @next_to_use: Next descriptor to use
  * @next_to_clean: Next descriptor to clean
  * @next_to_alloc: RX buffer to allocate at
- * @hdr_truesize: truesize for buffer headers
+ * @hdr_truesize: truesize for header buffer
+ * @truesize: truesize for data buffers
  * @q_id: Queue id
  * @size: Length of descriptor ring in bytes
  * @dma: Physical address of ring
@@ -760,19 +758,20 @@ struct idpf_buf_queue {
 		struct virtchnl2_splitq_rx_buf_desc *split_buf;
 		struct libeth_fqe *hdr_buf;
 		struct page_pool *hdr_pp;
-		struct idpf_rx_buf *buf;
+		struct libeth_fqe *buf;
 		struct page_pool *pp;
 		void __iomem *tail;
 
 		DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
 		u32 desc_count;
-
-		u32 hdr_truesize;
 	);
 	libeth_cacheline_group(read_write,
 		u32 next_to_use;
 		u32 next_to_clean;
 		u32 next_to_alloc;
+
+		u32 hdr_truesize;
+		u32 truesize;
 	);
 	libeth_cacheline_group(cold,
 		u32 q_id;
@@ -786,7 +785,7 @@ struct idpf_buf_queue {
 		u16 rx_buf_size;
 	);
 };
-libeth_cacheline_set_assert(struct idpf_buf_queue, 64, 12, 32);
+libeth_cacheline_set_assert(struct idpf_buf_queue, 60, 20, 32);
 
 /**
  * struct idpf_compl_queue - software structure represting a completion queue
@@ -1022,60 +1021,6 @@ static inline void idpf_tx_splitq_build_desc(union idpf_tx_flex_desc *desc,
 		idpf_tx_splitq_build_flow_desc(desc, params, td_cmd, size);
 }
 
-/**
- * idpf_alloc_page - Allocate a new RX buffer from the page pool
- * @pool: page_pool to allocate from
- * @buf: metadata struct to populate with page info
- * @buf_size: 2K or 4K
- *
- * Returns &dma_addr_t to be passed to HW for Rx, %DMA_MAPPING_ERROR otherwise.
- */
-static inline dma_addr_t idpf_alloc_page(struct page_pool *pool,
-					 struct idpf_rx_buf *buf,
-					 unsigned int buf_size)
-{
-	if (buf_size == IDPF_RX_BUF_2048)
-		buf->page = page_pool_dev_alloc_frag(pool, &buf->offset,
-						     buf_size);
-	else
-		buf->page = page_pool_dev_alloc_pages(pool);
-
-	if (!buf->page)
-		return DMA_MAPPING_ERROR;
-
-	buf->truesize = buf_size;
-
-	return page_pool_get_dma_addr(buf->page) + buf->offset +
-	       pool->p.offset;
-}
-
-/**
- * idpf_rx_put_page - Return RX buffer page to pool
- * @rx_buf: RX buffer metadata struct
- */
-static inline void idpf_rx_put_page(struct idpf_rx_buf *rx_buf)
-{
-	page_pool_put_page(rx_buf->page->pp, rx_buf->page,
-			   rx_buf->truesize, true);
-	rx_buf->page = NULL;
-}
-
-/**
- * idpf_rx_sync_for_cpu - Synchronize DMA buffer
- * @rx_buf: RX buffer metadata struct
- * @len: frame length from descriptor
- */
-static inline void idpf_rx_sync_for_cpu(struct idpf_rx_buf *rx_buf, u32 len)
-{
-	struct page *page = rx_buf->page;
-	struct page_pool *pp = page->pp;
-
-	dma_sync_single_range_for_cpu(pp->p.dev,
-				      page_pool_get_dma_addr(page),
-				      rx_buf->offset + pp->p.offset, len,
-				      page_pool_get_dma_dir(pp));
-}
-
 int idpf_vport_singleq_napi_poll(struct napi_struct *napi, int budget);
 void idpf_vport_init_num_qs(struct idpf_vport *vport,
 			    struct virtchnl2_create_vport *vport_msg);
@@ -1098,9 +1043,6 @@ void idpf_deinit_rss(struct idpf_vport *vport);
 int idpf_rx_bufs_init_all(struct idpf_vport *vport);
 void idpf_rx_add_frag(struct idpf_rx_buf *rx_buf, struct sk_buff *skb,
 		      unsigned int size);
-struct sk_buff *idpf_rx_construct_skb(const struct idpf_rx_queue *rxq,
-				      struct idpf_rx_buf *rx_buf,
-				      unsigned int size);
 struct sk_buff *idpf_rx_build_skb(const struct libeth_fqe *buf, u32 size);
 void idpf_tx_buf_hw_update(struct idpf_tx_queue *tx_q, u32 val,
 			   bool xmit_more);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index cde768082fc4..631a882c563a 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -858,20 +858,24 @@ bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_rx_queue *rx_q,
 				      u16 cleaned_count)
 {
 	struct virtchnl2_singleq_rx_buf_desc *desc;
+	const struct libeth_fq_fp fq = {
+		.pp		= rx_q->pp,
+		.fqes		= rx_q->rx_buf,
+		.truesize	= rx_q->truesize,
+		.count		= rx_q->desc_count,
+	};
 	u16 nta = rx_q->next_to_alloc;
-	struct idpf_rx_buf *buf;
 
 	if (!cleaned_count)
 		return false;
 
 	desc = &rx_q->single_buf[nta];
-	buf = &rx_q->rx_buf[nta];
 
 	do {
 		dma_addr_t addr;
 
-		addr = idpf_alloc_page(rx_q->pp, buf, rx_q->rx_buf_size);
-		if (unlikely(addr == DMA_MAPPING_ERROR))
+		addr = libeth_rx_alloc(&fq, nta);
+		if (addr == DMA_MAPPING_ERROR)
 			break;
 
 		/* Refresh the desc even if buffer_addrs didn't change
@@ -881,11 +885,9 @@ bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_rx_queue *rx_q,
 		desc->hdr_addr = 0;
 		desc++;
 
-		buf++;
 		nta++;
 		if (unlikely(nta == rx_q->desc_count)) {
 			desc = &rx_q->single_buf[0];
-			buf = rx_q->rx_buf;
 			nta = 0;
 		}
 
@@ -1005,24 +1007,22 @@ static int idpf_rx_singleq_clean(struct idpf_rx_queue *rx_q, int budget)
 		idpf_rx_singleq_extract_fields(rx_q, rx_desc, &fields);
 
 		rx_buf = &rx_q->rx_buf[ntc];
-		if (!fields.size) {
-			idpf_rx_put_page(rx_buf);
+		if (!libeth_rx_sync_for_cpu(rx_buf, fields.size))
 			goto skip_data;
-		}
 
-		idpf_rx_sync_for_cpu(rx_buf, fields.size);
 		if (skb)
 			idpf_rx_add_frag(rx_buf, skb, fields.size);
 		else
-			skb = idpf_rx_construct_skb(rx_q, rx_buf, fields.size);
+			skb = idpf_rx_build_skb(rx_buf, fields.size);
 
 		/* exit if we failed to retrieve a buffer */
 		if (!skb)
 			break;
 
 skip_data:
-		IDPF_SINGLEQ_BUMP_RING_IDX(rx_q, ntc);
+		rx_buf->page = NULL;
 
+		IDPF_SINGLEQ_BUMP_RING_IDX(rx_q, ntc);
 		cleaned_count++;
 
 		/* skip if it is non EOP desc */
@@ -1063,6 +1063,7 @@ static int idpf_rx_singleq_clean(struct idpf_rx_queue *rx_q, int budget)
 
 	rx_q->next_to_clean = ntc;
 
+	page_pool_nid_changed(rx_q->pp, numa_mem_id());
 	if (cleaned_count)
 		failure = idpf_rx_singleq_buf_hw_alloc_all(rx_q, cleaned_count);
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 930d08379fa7..7bb4bb402a4f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -414,6 +414,11 @@ static void idpf_rx_hdr_buf_rel_all(struct idpf_buf_queue *bufq)
  */
 static void idpf_rx_buf_rel_bufq(struct idpf_buf_queue *bufq)
 {
+	struct libeth_fq fq = {
+		.fqes	= bufq->buf,
+		.pp	= bufq->pp,
+	};
+
 	/* queue already cleared, nothing to do */
 	if (!bufq->buf)
 		return;
@@ -425,11 +430,9 @@ static void idpf_rx_buf_rel_bufq(struct idpf_buf_queue *bufq)
 	if (idpf_queue_has(HSPLIT_EN, bufq))
 		idpf_rx_hdr_buf_rel_all(bufq);
 
-	page_pool_destroy(bufq->pp);
-	bufq->pp = NULL;
-
-	kfree(bufq->buf);
+	libeth_rx_fq_destroy(&fq);
 	bufq->buf = NULL;
+	bufq->pp = NULL;
 }
 
 /**
@@ -438,17 +441,20 @@ static void idpf_rx_buf_rel_bufq(struct idpf_buf_queue *bufq)
  */
 static void idpf_rx_buf_rel_all(struct idpf_rx_queue *rxq)
 {
+	struct libeth_fq fq = {
+		.fqes	= rxq->rx_buf,
+		.pp	= rxq->pp,
+	};
+
 	if (!rxq->rx_buf)
 		return;
 
 	for (u32 i = 0; i < rxq->desc_count; i++)
 		idpf_rx_page_rel(&rxq->rx_buf[i]);
 
-	page_pool_destroy(rxq->pp);
-	rxq->pp = NULL;
-
-	kfree(rxq->rx_buf);
+	libeth_rx_fq_destroy(&fq);
 	rxq->rx_buf = NULL;
+	rxq->pp = NULL;
 }
 
 /**
@@ -630,11 +636,9 @@ static bool idpf_rx_post_buf_desc(struct idpf_buf_queue *bufq, u16 buf_id)
 		.count	= bufq->desc_count,
 	};
 	u16 nta = bufq->next_to_alloc;
-	struct idpf_rx_buf *buf;
 	dma_addr_t addr;
 
 	splitq_rx_desc = &bufq->split_buf[nta];
-	buf = &bufq->buf[buf_id];
 
 	if (idpf_queue_has(HSPLIT_EN, bufq)) {
 		fq.pp = bufq->hdr_pp;
@@ -648,8 +652,12 @@ static bool idpf_rx_post_buf_desc(struct idpf_buf_queue *bufq, u16 buf_id)
 		splitq_rx_desc->hdr_addr = cpu_to_le64(addr);
 	}
 
-	addr = idpf_alloc_page(bufq->pp, buf, bufq->rx_buf_size);
-	if (unlikely(addr == DMA_MAPPING_ERROR))
+	fq.pp = bufq->pp;
+	fq.fqes = bufq->buf;
+	fq.truesize = bufq->truesize;
+
+	addr = libeth_rx_alloc(&fq, buf_id);
+	if (addr == DMA_MAPPING_ERROR)
 		return false;
 
 	splitq_rx_desc->pkt_addr = cpu_to_le64(addr);
@@ -686,30 +694,6 @@ static bool idpf_rx_post_init_bufs(struct idpf_buf_queue *bufq,
 	return true;
 }
 
-/**
- * idpf_rx_create_page_pool - Create a page pool
- * @napi: NAPI of the associated queue vector
- * @count: queue descriptor count
- *
- * Returns &page_pool on success, casted -errno on failure
- */
-static struct page_pool *idpf_rx_create_page_pool(struct napi_struct *napi,
-						  u32 count)
-{
-	struct page_pool_params pp = {
-		.flags		= PP_FLAG_DMA_MAP | PP_FLAG_DMA_SYNC_DEV,
-		.order		= 0,
-		.pool_size	= count,
-		.nid		= NUMA_NO_NODE,
-		.dev		= napi->dev->dev.parent,
-		.max_len	= PAGE_SIZE,
-		.dma_dir	= DMA_FROM_DEVICE,
-		.offset		= 0,
-	};
-
-	return page_pool_create(&pp);
-}
-
 /**
  * idpf_rx_buf_alloc_singleq - Allocate memory for all buffer resources
  * @rxq: queue for which the buffers are allocated
@@ -718,11 +702,6 @@ static struct page_pool *idpf_rx_create_page_pool(struct napi_struct *napi,
  */
 static int idpf_rx_buf_alloc_singleq(struct idpf_rx_queue *rxq)
 {
-	rxq->rx_buf = kcalloc(rxq->desc_count, sizeof(*rxq->rx_buf),
-			      GFP_KERNEL);
-	if (!rxq->rx_buf)
-		return -ENOMEM;
-
 	if (idpf_rx_singleq_buf_hw_alloc_all(rxq, rxq->desc_count - 1))
 		goto err;
 
@@ -742,13 +721,21 @@ static int idpf_rx_buf_alloc_singleq(struct idpf_rx_queue *rxq)
  */
 static int idpf_rx_bufs_init_singleq(struct idpf_rx_queue *rxq)
 {
-	struct page_pool *pool;
+	struct libeth_fq fq = {
+		.count	= rxq->desc_count,
+		.type	= LIBETH_FQE_MTU,
+		.nid	= idpf_q_vector_to_mem(rxq->q_vector),
+	};
+	int ret;
 
-	pool = idpf_rx_create_page_pool(&rxq->q_vector->napi, rxq->desc_count);
-	if (IS_ERR(pool))
-		return PTR_ERR(pool);
+	ret = libeth_rx_fq_create(&fq, &rxq->q_vector->napi);
+	if (ret)
+		return ret;
 
-	rxq->pp = pool;
+	rxq->pp = fq.pp;
+	rxq->rx_buf = fq.fqes;
+	rxq->truesize = fq.truesize;
+	rxq->rx_buf_size = fq.buf_len;
 
 	return idpf_rx_buf_alloc_singleq(rxq);
 }
@@ -763,14 +750,6 @@ static int idpf_rx_buf_alloc_all(struct idpf_buf_queue *rxbufq)
 {
 	int err = 0;
 
-	/* Allocate book keeping buffers */
-	rxbufq->buf = kcalloc(rxbufq->desc_count, sizeof(*rxbufq->buf),
-			      GFP_KERNEL);
-	if (!rxbufq->buf) {
-		err = -ENOMEM;
-		goto rx_buf_alloc_all_out;
-	}
-
 	if (idpf_queue_has(HSPLIT_EN, rxbufq)) {
 		err = idpf_rx_hdr_buf_alloc_all(rxbufq);
 		if (err)
@@ -791,19 +770,30 @@ static int idpf_rx_buf_alloc_all(struct idpf_buf_queue *rxbufq)
 /**
  * idpf_rx_bufs_init - Initialize page pool, allocate rx bufs, and post to HW
  * @bufq: buffer queue to create page pool for
+ * @type: type of Rx buffers to allocate
  *
  * Returns 0 on success, negative on failure
  */
-static int idpf_rx_bufs_init(struct idpf_buf_queue *bufq)
+static int idpf_rx_bufs_init(struct idpf_buf_queue *bufq,
+			     enum libeth_fqe_type type)
 {
-	struct page_pool *pool;
+	struct libeth_fq fq = {
+		.truesize	= bufq->truesize,
+		.count		= bufq->desc_count,
+		.type		= type,
+		.hsplit		= idpf_queue_has(HSPLIT_EN, bufq),
+		.nid		= idpf_q_vector_to_mem(bufq->q_vector),
+	};
+	int ret;
 
-	pool = idpf_rx_create_page_pool(&bufq->q_vector->napi,
-					bufq->desc_count);
-	if (IS_ERR(pool))
-		return PTR_ERR(pool);
+	ret = libeth_rx_fq_create(&fq, &bufq->q_vector->napi);
+	if (ret)
+		return ret;
 
-	bufq->pp = pool;
+	bufq->pp = fq.pp;
+	bufq->buf = fq.fqes;
+	bufq->truesize = fq.truesize;
+	bufq->rx_buf_size = fq.buf_len;
 
 	return idpf_rx_buf_alloc_all(bufq);
 }
@@ -816,14 +806,15 @@ static int idpf_rx_bufs_init(struct idpf_buf_queue *bufq)
  */
 int idpf_rx_bufs_init_all(struct idpf_vport *vport)
 {
-	struct idpf_rxq_group *rx_qgrp;
+	bool split = idpf_is_queue_model_split(vport->rxq_model);
 	int i, j, err;
 
 	for (i = 0; i < vport->num_rxq_grp; i++) {
-		rx_qgrp = &vport->rxq_grps[i];
+		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+		u32 truesize = 0;
 
 		/* Allocate bufs for the rxq itself in singleq */
-		if (!idpf_is_queue_model_split(vport->rxq_model)) {
+		if (!split) {
 			int num_rxq = rx_qgrp->singleq.num_rxq;
 
 			for (j = 0; j < num_rxq; j++) {
@@ -840,12 +831,19 @@ int idpf_rx_bufs_init_all(struct idpf_vport *vport)
 
 		/* Otherwise, allocate bufs for the buffer queues */
 		for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
+			enum libeth_fqe_type type;
 			struct idpf_buf_queue *q;
 
 			q = &rx_qgrp->splitq.bufq_sets[j].bufq;
-			err = idpf_rx_bufs_init(q);
+			q->truesize = truesize;
+
+			type = truesize ? LIBETH_FQE_SHORT : LIBETH_FQE_MTU;
+
+			err = idpf_rx_bufs_init(q, type);
 			if (err)
 				return err;
+
+			truesize = q->truesize >> 1;
 		}
 	}
 
@@ -1157,17 +1155,11 @@ void idpf_vport_init_num_qs(struct idpf_vport *vport,
 	/* Adjust number of buffer queues per Rx queue group. */
 	if (!idpf_is_queue_model_split(vport->rxq_model)) {
 		vport->num_bufqs_per_qgrp = 0;
-		vport->bufq_size[0] = IDPF_RX_BUF_2048;
 
 		return;
 	}
 
 	vport->num_bufqs_per_qgrp = IDPF_MAX_BUFQS_PER_RXQ_GRP;
-	/* Bufq[0] default buffer size is 4K
-	 * Bufq[1] default buffer size is 2K
-	 */
-	vport->bufq_size[0] = IDPF_RX_BUF_4096;
-	vport->bufq_size[1] = IDPF_RX_BUF_2048;
 }
 
 /**
@@ -1504,7 +1496,6 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport, u16 num_rxq)
 
 			q = &rx_qgrp->splitq.bufq_sets[j].bufq;
 			q->desc_count = vport->bufq_desc_count[j];
-			q->rx_buf_size = vport->bufq_size[j];
 			q->rx_buffer_low_watermark = IDPF_LOW_WATERMARK;
 
 			idpf_queue_assign(HSPLIT_EN, q, hs);
@@ -1557,14 +1548,9 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport, u16 num_rxq)
 			q->netdev = vport->netdev;
 			q->bufq_sets = rx_qgrp->splitq.bufq_sets;
 			q->idx = (i * num_rxq) + j;
-			/* In splitq mode, RXQ buffer size should be
-			 * set to that of the first buffer queue
-			 * associated with this RXQ
-			 */
-			q->rx_buf_size = vport->bufq_size[0];
 			q->rx_buffer_low_watermark = IDPF_LOW_WATERMARK;
 			q->rx_max_pkt_size = vport->netdev->mtu +
-							IDPF_PACKET_HDR_PAD;
+							LIBETH_RX_LL_LEN;
 			idpf_rxq_set_descids(vport, q);
 		}
 	}
@@ -3161,69 +3147,10 @@ static u32 idpf_rx_hsplit_wa(struct libeth_fqe *hdr, struct libeth_fqe *buf,
 void idpf_rx_add_frag(struct idpf_rx_buf *rx_buf, struct sk_buff *skb,
 		      unsigned int size)
 {
-	skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, rx_buf->page,
-			rx_buf->offset, size, rx_buf->truesize);
-
-	rx_buf->page = NULL;
-}
-
-/**
- * idpf_rx_construct_skb - Allocate skb and populate it
- * @rxq: Rx descriptor queue
- * @rx_buf: Rx buffer to pull data from
- * @size: the length of the packet
- *
- * This function allocates an skb. It then populates it with the page
- * data from the current receive descriptor, taking care to set up the
- * skb correctly.
- */
-struct sk_buff *idpf_rx_construct_skb(const struct idpf_rx_queue *rxq,
-				      struct idpf_rx_buf *rx_buf,
-				      unsigned int size)
-{
-	unsigned int headlen;
-	struct sk_buff *skb;
-	void *va;
-
-	va = page_address(rx_buf->page) + rx_buf->offset;
-
-	/* prefetch first cache line of first page */
-	net_prefetch(va);
-	/* allocate a skb to store the frags */
-	skb = napi_alloc_skb(rxq->napi, IDPF_RX_HDR_SIZE);
-	if (unlikely(!skb)) {
-		idpf_rx_put_page(rx_buf);
-
-		return NULL;
-	}
+	u32 hr = rx_buf->page->pp->p.offset;
 
-	skb_mark_for_recycle(skb);
-
-	/* Determine available headroom for copy */
-	headlen = size;
-	if (headlen > IDPF_RX_HDR_SIZE)
-		headlen = eth_get_headlen(skb->dev, va, IDPF_RX_HDR_SIZE);
-
-	/* align pull length to size of long to optimize memcpy performance */
-	memcpy(__skb_put(skb, headlen), va, ALIGN(headlen, sizeof(long)));
-
-	/* if we exhaust the linear part then add what is left as a frag */
-	size -= headlen;
-	if (!size) {
-		idpf_rx_put_page(rx_buf);
-
-		return skb;
-	}
-
-	skb_add_rx_frag(skb, 0, rx_buf->page, rx_buf->offset + headlen,
-			size, rx_buf->truesize);
-
-	/* Since we're giving the page to the stack, clear our reference to it.
-	 * We'll get a new one during buffer posting.
-	 */
-	rx_buf->page = NULL;
-
-	return skb;
+	skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, rx_buf->page,
+			rx_buf->offset + hr, size, rx_buf->truesize);
 }
 
 /**
@@ -3394,24 +3321,24 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
 		hdr->page = NULL;
 
 payload:
-		if (pkt_len) {
-			idpf_rx_sync_for_cpu(rx_buf, pkt_len);
-			if (skb)
-				idpf_rx_add_frag(rx_buf, skb, pkt_len);
-			else
-				skb = idpf_rx_construct_skb(rxq, rx_buf,
-							    pkt_len);
-		} else {
-			idpf_rx_put_page(rx_buf);
-		}
+		if (!libeth_rx_sync_for_cpu(rx_buf, pkt_len))
+			goto skip_data;
+
+		if (skb)
+			idpf_rx_add_frag(rx_buf, skb, pkt_len);
+		else
+			skb = idpf_rx_build_skb(rx_buf, pkt_len);
 
 		/* exit if we failed to retrieve a buffer */
 		if (!skb)
 			break;
 
-		idpf_rx_post_buf_refill(refillq, buf_id);
+skip_data:
+		rx_buf->page = NULL;
 
+		idpf_rx_post_buf_refill(refillq, buf_id);
 		IDPF_RX_BUMP_NTC(rxq, ntc);
+
 		/* skip if it is non EOP desc */
 		if (!idpf_rx_splitq_is_eop(rx_desc))
 			continue;
@@ -3464,15 +3391,15 @@ static int idpf_rx_update_bufq_desc(struct idpf_buf_queue *bufq, u32 buf_id,
 				    struct virtchnl2_splitq_rx_buf_desc *buf_desc)
 {
 	struct libeth_fq_fp fq = {
+		.pp		= bufq->pp,
+		.fqes		= bufq->buf,
+		.truesize	= bufq->truesize,
 		.count		= bufq->desc_count,
 	};
-	struct idpf_rx_buf *buf;
 	dma_addr_t addr;
 
-	buf = &bufq->buf[buf_id];
-
-	addr = idpf_alloc_page(bufq->pp, buf, bufq->rx_buf_size);
-	if (unlikely(addr == DMA_MAPPING_ERROR))
+	addr = libeth_rx_alloc(&fq, buf_id);
+	if (addr == DMA_MAPPING_ERROR)
 		return -ENOMEM;
 
 	buf_desc->pkt_addr = cpu_to_le64(addr);
@@ -3571,6 +3498,7 @@ static void idpf_rx_clean_refillq_all(struct idpf_buf_queue *bufq, int nid)
 	struct idpf_bufq_set *bufq_set;
 	int i;
 
+	page_pool_nid_changed(bufq->pp, nid);
 	if (bufq->hdr_pp)
 		page_pool_nid_changed(bufq->hdr_pp, nid);
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 42534edf38db..a0aaa849df24 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -1615,6 +1615,12 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 			rxq = &rx_qgrp->splitq.rxq_sets[j]->rxq;
 			sets = rxq->bufq_sets;
 
+			/* In splitq mode, RXQ buffer size should be
+			 * set to that of the first buffer queue
+			 * associated with this RXQ.
+			 */
+			rxq->rx_buf_size = sets[0].bufq.rx_buf_size;
+
 			qi[k].rx_bufq1_id = cpu_to_le16(sets[0].bufq.q_id);
 			if (vport->num_bufqs_per_qgrp > IDPF_SINGLE_BUFQ_PER_RXQ_GRP) {
 				qi[k].bufq2_ena = IDPF_BUFQ2_ENA;
@@ -3166,7 +3172,7 @@ void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
 	rss_data->rss_lut_size = le16_to_cpu(vport_msg->rss_lut_size);
 
 	ether_addr_copy(vport->default_mac_addr, vport_msg->default_mac_addr);
-	vport->max_mtu = le16_to_cpu(vport_msg->max_mtu) - IDPF_PACKET_HDR_PAD;
+	vport->max_mtu = le16_to_cpu(vport_msg->max_mtu) - LIBETH_RX_LL_LEN;
 
 	/* Initialize Tx and Rx profiles for Dynamic Interrupt Moderation */
 	memcpy(vport->rx_itr_profile, rx_itr, IDPF_DIM_PROFILE_SLOTS);
-- 
2.45.0

