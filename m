Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FF18A98AC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 13:37:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1D856416B2;
	Thu, 18 Apr 2024 11:36:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hvPxw51erCx7; Thu, 18 Apr 2024 11:36:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F4C5415BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713440214;
	bh=mJDFvrN68+LgCWadvMpjJ2GZj4UoBSnvQlsL14WAQa0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MeFRp5dm5LsleTLnJPxffKNoQUVaOe6fn1rT6wfQwCIQULGRIhIYqu0h84LjXUAZ4
	 FuLmEriWZTbJzbETIqmtSxiiyB6BtY5f8DyC6s3Dk+8w0cReHMymbckACzMMf/NIYt
	 BU03f75vyA+XgKdl4phP5pW52PEHzsBTu254JT4+qlGfg1r7rer4TyHWQfzuk216qU
	 laVPa6L0B7JI1+sgkhlXdBRLYmxuxg2syy1BcAvA4pkargOmLbPEAL7ZqUsIyFSjo9
	 WV+YGkHgOjsYV+tT30ZMzUWsrSLBIJZAx4I23QQsHI2oGQWGtypA0QvkljFZrPoieu
	 ODW5efNIoTDZw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8F4C5415BD;
	Thu, 18 Apr 2024 11:36:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 26D161BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 11:36:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 13A7C60BA7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 11:36:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 30z4CRvJKOL2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 11:36:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BD71F60BA4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD71F60BA4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BD71F60BA4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 11:36:49 +0000 (UTC)
X-CSE-ConnectionGUID: M40QQjIKSr6FbLhOS4gEVQ==
X-CSE-MsgGUID: 25jrXs30R+SmcmYOR/2+Dg==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="19587747"
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="19587747"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 04:36:49 -0700
X-CSE-ConnectionGUID: b8YaT3tjReSHzy/+hzQw8g==
X-CSE-MsgGUID: MdI+Vpj6Tt2hORPOy9WOWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="27586106"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa004.fm.intel.com with ESMTP; 18 Apr 2024 04:36:45 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu, 18 Apr 2024 13:36:09 +0200
Message-ID: <20240418113616.1108566-4-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240418113616.1108566-1-aleksander.lobakin@intel.com>
References: <20240418113616.1108566-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713440209; x=1744976209;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xoCW/Q5/g1NqkZPg1Vz7hBIMxbkEM/gqo2WH+EMO0k4=;
 b=BIdVVg/5GFTyC/rhtwfT4/D731Ha+WFn4wF+0Cd8HaS61YuDDS21gk0M
 3IrqtkoqQ5ArgsiY5V9DGi4itBi1BJr4bKHRxSz3IuIkbe5uXK6MmNrZm
 1M19VOXfybm+3r0la4mM1gts/4Hm8KzJdxINMgg9vkQgusXFxS+E6o5qs
 e6g453Nsy52XTFGd6CMenOgBovccCKoMs9NTLjzP1Suv7H8ywaORaO7iG
 7TiE6SbtlI4PFoW9vQv5GoKmHRcUZPwlxkq0BiiGMMpqXBKfgG4qfXaPr
 LLkspF8icM0C+hkZwSaP5PmAr9bQQH30wxzlMkf5Lv0kSmS8AXuSjC3c8
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BIdVVg/5
Subject: [Intel-wired-lan] [PATCH net-next v10 03/10] iavf: drop page
 splitting and recycling
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>, linux-mm@kvack.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Yunsheng Lin <linyunsheng@huawei.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Christoph Lameter <cl@linux.com>, Andrew Morton <akpm@linux-foundation.org>,
 Vlastimil Babka <vbabka@suse.cz>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

As an intermediate step, remove all page splitting/recycling code. Just
always allocate a new page and don't touch its refcount, so that it gets
freed by the core stack later.
Same for the "in-place" recycling, i.e. when an unused buffer gets
assigned to a first needs-refilling descriptor. In some cases, this
was leading to moving up to 63 &iavf_rx_buf structures around the ring
on a per-field basis -- not something wanted on hotpath.
The change allows to greatly simplify certain parts of the code:

Function: add/remove: 0/2 grow/shrink: 0/7 up/down: 0/-744 (-744)

Although the array of &iavf_rx_buf is barely used now and could be
replaced with just page pointer array, don't touch it now to not
complicate replacing it with libie Rx buffer struct later on.
No surprise perf loses up to 30% here, but that regression will
go away once PP lands.
Note that iavf_rx_pg_*() definitions are left to reduce diffstat.
They will be removed with the conversion to Page Pool.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_txrx.h   |  65 --------
 drivers/net/ethernet/intel/iavf/iavf_type.h   |   2 -
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  24 +--
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 152 +-----------------
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   8 +-
 5 files changed, 10 insertions(+), 241 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index 68543efdd29b..e01777531635 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
@@ -81,8 +81,6 @@ enum iavf_dyn_idx_t {
 	BIT_ULL(IAVF_FILTER_PCTYPE_NONF_MULTICAST_IPV6_UDP))
 
 /* Supported Rx Buffer Sizes (a multiple of 128) */
-#define IAVF_RXBUFFER_1536  1536  /* 128B aligned standard Ethernet frame */
-#define IAVF_RXBUFFER_2048  2048
 #define IAVF_RXBUFFER_3072  3072  /* Used for large frames w/ padding */
 #define IAVF_MAX_RXBUFFER   9728  /* largest size for single descriptor */
 
@@ -92,57 +90,7 @@ enum iavf_dyn_idx_t {
 #define IAVF_RX_DMA_ATTR \
 	(DMA_ATTR_SKIP_CPU_SYNC | DMA_ATTR_WEAK_ORDERING)
 
-/* Attempt to maximize the headroom available for incoming frames.  We
- * use a 2K buffer for receives and need 1536/1534 to store the data for
- * the frame.  This leaves us with 512 bytes of room.  From that we need
- * to deduct the space needed for the shared info and the padding needed
- * to IP align the frame.
- *
- * Note: For cache line sizes 256 or larger this value is going to end
- *	 up negative.  In these cases we should fall back to the legacy
- *	 receive path.
- */
-#if (PAGE_SIZE < 8192)
-#define IAVF_2K_TOO_SMALL_WITH_PADDING \
-((NET_SKB_PAD + IAVF_RXBUFFER_1536) > SKB_WITH_OVERHEAD(IAVF_RXBUFFER_2048))
-
-static inline int iavf_compute_pad(int rx_buf_len)
-{
-	int page_size, pad_size;
-
-	page_size = ALIGN(rx_buf_len, PAGE_SIZE / 2);
-	pad_size = SKB_WITH_OVERHEAD(page_size) - rx_buf_len;
-
-	return pad_size;
-}
-
-static inline int iavf_skb_pad(void)
-{
-	int rx_buf_len;
-
-	/* If a 2K buffer cannot handle a standard Ethernet frame then
-	 * optimize padding for a 3K buffer instead of a 1.5K buffer.
-	 *
-	 * For a 3K buffer we need to add enough padding to allow for
-	 * tailroom due to NET_IP_ALIGN possibly shifting us out of
-	 * cache-line alignment.
-	 */
-	if (IAVF_2K_TOO_SMALL_WITH_PADDING)
-		rx_buf_len = IAVF_RXBUFFER_3072 + SKB_DATA_ALIGN(NET_IP_ALIGN);
-	else
-		rx_buf_len = IAVF_RXBUFFER_1536;
-
-	/* if needed make room for NET_IP_ALIGN */
-	rx_buf_len -= NET_IP_ALIGN;
-
-	return iavf_compute_pad(rx_buf_len);
-}
-
-#define IAVF_SKB_PAD iavf_skb_pad()
-#else
-#define IAVF_2K_TOO_SMALL_WITH_PADDING false
 #define IAVF_SKB_PAD (NET_SKB_PAD + NET_IP_ALIGN)
-#endif
 
 /**
  * iavf_test_staterr - tests bits in Rx descriptor status and error fields
@@ -265,12 +213,7 @@ struct iavf_tx_buffer {
 struct iavf_rx_buffer {
 	dma_addr_t dma;
 	struct page *page;
-#if (BITS_PER_LONG > 32) || (PAGE_SIZE >= 65536)
 	__u32 page_offset;
-#else
-	__u16 page_offset;
-#endif
-	__u16 pagecnt_bias;
 };
 
 struct iavf_queue_stats {
@@ -292,8 +235,6 @@ struct iavf_rx_queue_stats {
 	u64 non_eop_descs;
 	u64 alloc_page_failed;
 	u64 alloc_buff_failed;
-	u64 page_reuse_count;
-	u64 realloc_count;
 };
 
 enum iavf_ring_state_t {
@@ -337,7 +278,6 @@ struct iavf_ring {
 
 	u16 count;			/* Number of descriptors */
 	u16 reg_idx;			/* HW register index of the ring */
-	u16 rx_buf_len;
 
 	/* used in interrupt processing */
 	u16 next_to_use;
@@ -373,7 +313,6 @@ struct iavf_ring {
 	struct iavf_q_vector *q_vector;	/* Backreference to associated vector */
 
 	struct rcu_head rcu;		/* to avoid race on free */
-	u16 next_to_alloc;
 	struct sk_buff *skb;		/* When iavf_clean_rx_ring_irq() must
 					 * return before it sees the EOP for
 					 * the current packet, we save that skb
@@ -407,10 +346,6 @@ struct iavf_ring_container {
 
 static inline unsigned int iavf_rx_pg_order(struct iavf_ring *ring)
 {
-#if (PAGE_SIZE < 8192)
-	if (ring->rx_buf_len > (PAGE_SIZE / 2))
-		return 1;
-#endif
 	return 0;
 }
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_type.h b/drivers/net/ethernet/intel/iavf/iavf_type.h
index 23ded4fcd94f..f6b09e57abce 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_type.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_type.h
@@ -10,8 +10,6 @@
 #include "iavf_adminq.h"
 #include "iavf_devids.h"
 
-#define IAVF_RXQ_CTX_DBUFF_SHIFT 7
-
 /* IAVF_MASK is a macro used on 32 bit registers */
 #define IAVF_MASK(mask, shift) ((u32)(mask) << (shift))
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 5eb7379956e4..ffb71a62b105 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -715,32 +715,10 @@ static void iavf_configure_tx(struct iavf_adapter *adapter)
  **/
 static void iavf_configure_rx(struct iavf_adapter *adapter)
 {
-	unsigned int rx_buf_len = IAVF_RXBUFFER_2048;
 	struct iavf_hw *hw = &adapter->hw;
-	int i;
-
-	if (PAGE_SIZE < 8192) {
-		struct net_device *netdev = adapter->netdev;
 
-		/* For jumbo frames on systems with 4K pages we have to use
-		 * an order 1 page, so we might as well increase the size
-		 * of our Rx buffer to make better use of the available space
-		 */
-		rx_buf_len = IAVF_RXBUFFER_3072;
-
-		/* We use a 1536 buffer size for configurations with
-		 * standard Ethernet mtu.  On x86 this gives us enough room
-		 * for shared info and 192 bytes of padding.
-		 */
-		if (!IAVF_2K_TOO_SMALL_WITH_PADDING &&
-		    (netdev->mtu <= ETH_DATA_LEN))
-			rx_buf_len = IAVF_RXBUFFER_1536 - NET_IP_ALIGN;
-	}
-
-	for (i = 0; i < adapter->num_active_queues; i++) {
+	for (u32 i = 0; i < adapter->num_active_queues; i++)
 		adapter->rx_rings[i].tail = hw->hw_addr + IAVF_QRX_TAIL1(i);
-		adapter->rx_rings[i].rx_buf_len = rx_buf_len;
-	}
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index a908b394409d..c7602c173420 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -715,7 +715,7 @@ static void iavf_clean_rx_ring(struct iavf_ring *rx_ring)
 		dma_sync_single_range_for_cpu(rx_ring->dev,
 					      rx_bi->dma,
 					      rx_bi->page_offset,
-					      rx_ring->rx_buf_len,
+					      IAVF_RXBUFFER_3072,
 					      DMA_FROM_DEVICE);
 
 		/* free resources associated with mapping */
@@ -724,7 +724,7 @@ static void iavf_clean_rx_ring(struct iavf_ring *rx_ring)
 				     DMA_FROM_DEVICE,
 				     IAVF_RX_DMA_ATTR);
 
-		__page_frag_cache_drain(rx_bi->page, rx_bi->pagecnt_bias);
+		__free_page(rx_bi->page);
 
 		rx_bi->page = NULL;
 		rx_bi->page_offset = 0;
@@ -736,7 +736,6 @@ static void iavf_clean_rx_ring(struct iavf_ring *rx_ring)
 	/* Zero out the descriptor ring */
 	memset(rx_ring->desc, 0, rx_ring->size);
 
-	rx_ring->next_to_alloc = 0;
 	rx_ring->next_to_clean = 0;
 	rx_ring->next_to_use = 0;
 }
@@ -792,7 +791,6 @@ int iavf_setup_rx_descriptors(struct iavf_ring *rx_ring)
 		goto err;
 	}
 
-	rx_ring->next_to_alloc = 0;
 	rx_ring->next_to_clean = 0;
 	rx_ring->next_to_use = 0;
 
@@ -812,9 +810,6 @@ static void iavf_release_rx_desc(struct iavf_ring *rx_ring, u32 val)
 {
 	rx_ring->next_to_use = val;
 
-	/* update next to alloc since we have filled the ring */
-	rx_ring->next_to_alloc = val;
-
 	/* Force memory writes to complete before letting h/w
 	 * know there are new descriptors to fetch.  (Only
 	 * applicable for weak-ordered memory model archs,
@@ -838,12 +833,6 @@ static bool iavf_alloc_mapped_page(struct iavf_ring *rx_ring,
 	struct page *page = bi->page;
 	dma_addr_t dma;
 
-	/* since we are recycling buffers we should seldom need to alloc */
-	if (likely(page)) {
-		rx_ring->rx_stats.page_reuse_count++;
-		return true;
-	}
-
 	/* alloc new page for storage */
 	page = dev_alloc_pages(iavf_rx_pg_order(rx_ring));
 	if (unlikely(!page)) {
@@ -870,9 +859,6 @@ static bool iavf_alloc_mapped_page(struct iavf_ring *rx_ring,
 	bi->page = page;
 	bi->page_offset = IAVF_SKB_PAD;
 
-	/* initialize pagecnt_bias to 1 representing we fully own page */
-	bi->pagecnt_bias = 1;
-
 	return true;
 }
 
@@ -924,7 +910,7 @@ bool iavf_alloc_rx_buffers(struct iavf_ring *rx_ring, u16 cleaned_count)
 		/* sync the buffer for use by the device */
 		dma_sync_single_range_for_device(rx_ring->dev, bi->dma,
 						 bi->page_offset,
-						 rx_ring->rx_buf_len,
+						 IAVF_RXBUFFER_3072,
 						 DMA_FROM_DEVICE);
 
 		/* Refresh the desc even if buffer_addrs didn't change
@@ -1102,91 +1088,6 @@ static bool iavf_cleanup_headers(struct iavf_ring *rx_ring, struct sk_buff *skb)
 	return false;
 }
 
-/**
- * iavf_reuse_rx_page - page flip buffer and store it back on the ring
- * @rx_ring: rx descriptor ring to store buffers on
- * @old_buff: donor buffer to have page reused
- *
- * Synchronizes page for reuse by the adapter
- **/
-static void iavf_reuse_rx_page(struct iavf_ring *rx_ring,
-			       struct iavf_rx_buffer *old_buff)
-{
-	struct iavf_rx_buffer *new_buff;
-	u16 nta = rx_ring->next_to_alloc;
-
-	new_buff = &rx_ring->rx_bi[nta];
-
-	/* update, and store next to alloc */
-	nta++;
-	rx_ring->next_to_alloc = (nta < rx_ring->count) ? nta : 0;
-
-	/* transfer page from old buffer to new buffer */
-	new_buff->dma		= old_buff->dma;
-	new_buff->page		= old_buff->page;
-	new_buff->page_offset	= old_buff->page_offset;
-	new_buff->pagecnt_bias	= old_buff->pagecnt_bias;
-}
-
-/**
- * iavf_can_reuse_rx_page - Determine if this page can be reused by
- * the adapter for another receive
- *
- * @rx_buffer: buffer containing the page
- *
- * If page is reusable, rx_buffer->page_offset is adjusted to point to
- * an unused region in the page.
- *
- * For small pages, @truesize will be a constant value, half the size
- * of the memory at page.  We'll attempt to alternate between high and
- * low halves of the page, with one half ready for use by the hardware
- * and the other half being consumed by the stack.  We use the page
- * ref count to determine whether the stack has finished consuming the
- * portion of this page that was passed up with a previous packet.  If
- * the page ref count is >1, we'll assume the "other" half page is
- * still busy, and this page cannot be reused.
- *
- * For larger pages, @truesize will be the actual space used by the
- * received packet (adjusted upward to an even multiple of the cache
- * line size).  This will advance through the page by the amount
- * actually consumed by the received packets while there is still
- * space for a buffer.  Each region of larger pages will be used at
- * most once, after which the page will not be reused.
- *
- * In either case, if the page is reusable its refcount is increased.
- **/
-static bool iavf_can_reuse_rx_page(struct iavf_rx_buffer *rx_buffer)
-{
-	unsigned int pagecnt_bias = rx_buffer->pagecnt_bias;
-	struct page *page = rx_buffer->page;
-
-	/* Is any reuse possible? */
-	if (!dev_page_is_reusable(page))
-		return false;
-
-#if (PAGE_SIZE < 8192)
-	/* if we are only owner of page we can reuse it */
-	if (unlikely((page_count(page) - pagecnt_bias) > 1))
-		return false;
-#else
-#define IAVF_LAST_OFFSET \
-	(SKB_WITH_OVERHEAD(PAGE_SIZE) - IAVF_RXBUFFER_2048)
-	if (rx_buffer->page_offset > IAVF_LAST_OFFSET)
-		return false;
-#endif
-
-	/* If we have drained the page fragment pool we need to update
-	 * the pagecnt_bias and page count so that we fully restock the
-	 * number of references the driver holds.
-	 */
-	if (unlikely(!pagecnt_bias)) {
-		page_ref_add(page, USHRT_MAX);
-		rx_buffer->pagecnt_bias = USHRT_MAX;
-	}
-
-	return true;
-}
-
 /**
  * iavf_add_rx_frag - Add contents of Rx buffer to sk_buff
  * @rx_ring: rx descriptor ring to transact packets on
@@ -1204,24 +1105,13 @@ static void iavf_add_rx_frag(struct iavf_ring *rx_ring,
 			     struct sk_buff *skb,
 			     unsigned int size)
 {
-#if (PAGE_SIZE < 8192)
-	unsigned int truesize = iavf_rx_pg_size(rx_ring) / 2;
-#else
 	unsigned int truesize = SKB_DATA_ALIGN(size + IAVF_SKB_PAD);
-#endif
 
 	if (!size)
 		return;
 
 	skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, rx_buffer->page,
 			rx_buffer->page_offset, size, truesize);
-
-	/* page is being used so we must update the page offset */
-#if (PAGE_SIZE < 8192)
-	rx_buffer->page_offset ^= truesize;
-#else
-	rx_buffer->page_offset += truesize;
-#endif
 }
 
 /**
@@ -1249,9 +1139,6 @@ static struct iavf_rx_buffer *iavf_get_rx_buffer(struct iavf_ring *rx_ring,
 				      size,
 				      DMA_FROM_DEVICE);
 
-	/* We have pulled a buffer for use, so decrement pagecnt_bias */
-	rx_buffer->pagecnt_bias--;
-
 	return rx_buffer;
 }
 
@@ -1269,12 +1156,8 @@ static struct sk_buff *iavf_build_skb(struct iavf_ring *rx_ring,
 				      unsigned int size)
 {
 	void *va;
-#if (PAGE_SIZE < 8192)
-	unsigned int truesize = iavf_rx_pg_size(rx_ring) / 2;
-#else
 	unsigned int truesize = SKB_DATA_ALIGN(sizeof(struct skb_shared_info)) +
 				SKB_DATA_ALIGN(IAVF_SKB_PAD + size);
-#endif
 	struct sk_buff *skb;
 
 	if (!rx_buffer || !size)
@@ -1292,23 +1175,15 @@ static struct sk_buff *iavf_build_skb(struct iavf_ring *rx_ring,
 	skb_reserve(skb, IAVF_SKB_PAD);
 	__skb_put(skb, size);
 
-	/* buffer is used by skb, update page_offset */
-#if (PAGE_SIZE < 8192)
-	rx_buffer->page_offset ^= truesize;
-#else
-	rx_buffer->page_offset += truesize;
-#endif
-
 	return skb;
 }
 
 /**
- * iavf_put_rx_buffer - Clean up used buffer and either recycle or free
+ * iavf_put_rx_buffer - Unmap used buffer
  * @rx_ring: rx descriptor ring to transact packets on
  * @rx_buffer: rx buffer to pull data from
  *
- * This function will clean up the contents of the rx_buffer.  It will
- * either recycle the buffer or unmap it and free the associated resources.
+ * This function will unmap the buffer after it's written by HW.
  */
 static void iavf_put_rx_buffer(struct iavf_ring *rx_ring,
 			       struct iavf_rx_buffer *rx_buffer)
@@ -1316,18 +1191,9 @@ static void iavf_put_rx_buffer(struct iavf_ring *rx_ring,
 	if (!rx_buffer)
 		return;
 
-	if (iavf_can_reuse_rx_page(rx_buffer)) {
-		/* hand second half of page back to the ring */
-		iavf_reuse_rx_page(rx_ring, rx_buffer);
-		rx_ring->rx_stats.page_reuse_count++;
-	} else {
-		/* we are not reusing the buffer so unmap it */
-		dma_unmap_page_attrs(rx_ring->dev, rx_buffer->dma,
-				     iavf_rx_pg_size(rx_ring),
-				     DMA_FROM_DEVICE, IAVF_RX_DMA_ATTR);
-		__page_frag_cache_drain(rx_buffer->page,
-					rx_buffer->pagecnt_bias);
-	}
+	/* we are not reusing the buffer so unmap it */
+	dma_unmap_page_attrs(rx_ring->dev, rx_buffer->dma, PAGE_SIZE,
+			     DMA_FROM_DEVICE, IAVF_RX_DMA_ATTR);
 
 	/* clear contents of buffer_info */
 	rx_buffer->page = NULL;
@@ -1432,8 +1298,6 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		/* exit if we failed to retrieve a buffer */
 		if (!skb) {
 			rx_ring->rx_stats.alloc_buff_failed++;
-			if (rx_buffer && size)
-				rx_buffer->pagecnt_bias++;
 			break;
 		}
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index a31df5af0473..f8e9f859a4f1 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -288,10 +288,6 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
 	if (!vqci)
 		return;
 
-	/* Limit maximum frame size when jumbo frames is not enabled */
-	if (adapter->netdev->mtu <= ETH_DATA_LEN)
-		max_frame = IAVF_RXBUFFER_1536 - NET_IP_ALIGN;
-
 	vqci->vsi_id = adapter->vsi_res->vsi_id;
 	vqci->num_queue_pairs = pairs;
 	vqpi = vqci->qpair;
@@ -308,9 +304,7 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
 		vqpi->rxq.ring_len = adapter->rx_rings[i].count;
 		vqpi->rxq.dma_ring_addr = adapter->rx_rings[i].dma;
 		vqpi->rxq.max_pkt_size = max_frame;
-		vqpi->rxq.databuffer_size =
-			ALIGN(adapter->rx_rings[i].rx_buf_len,
-			      BIT_ULL(IAVF_RXQ_CTX_DBUFF_SHIFT));
+		vqpi->rxq.databuffer_size = IAVF_RXBUFFER_3072;
 		if (CRC_OFFLOAD_ALLOWED(adapter))
 			vqpi->rxq.crc_disable = !!(adapter->netdev->features &
 						   NETIF_F_RXFCS);
-- 
2.44.0

