Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B3EAD794B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jun 2025 19:49:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 161E2613B1;
	Thu, 12 Jun 2025 17:49:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9itSBCPQ1RFv; Thu, 12 Jun 2025 17:49:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 357B560E0D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749750541;
	bh=5WR9nz0xOsJWXDUgy9Fz5cs3NIIdzoC3ZZK0B5AM2xk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VEi1g7rdCFDogEHJ919BOUAMHWSISVwYSi3Vii3FzHdF5f902N7JR4qjLWAjyzTcM
	 HQbVNWHpyG6G0K9WPwpEbvR7WOD2rpkEVeiUOvnCdvyEN1ZO+2aQE7k7Gj7HyOLhql
	 9JqeVgnxdL9aBtklhXI9saQFPgm/MTuGLIgaJBMok0iV/3mJEaIbfwLfnN6mDVVyWp
	 rdqsjXrp6OVQ9EX5U5Oqf/KdKp4qISijPSPhm/AetNxIVCqeMGN93Gx+n1TU4sD0AK
	 HGkdCC3m+7iqq3RqVjsQXtmFsZVltYxv/vUxOzr3ZivQVqSFSw+rmZZPE3EiW47GCt
	 naHZWZ2ZQvcRg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 357B560E0D;
	Thu, 12 Jun 2025 17:49:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B863E1BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:09:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9E130821A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:09:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pmILJIPY5-xo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jun 2025 16:09:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A9D5381EE7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A9D5381EE7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A9D5381EE7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:09:34 +0000 (UTC)
X-CSE-ConnectionGUID: AvyBbufDTmqgalm6Xo/ODA==
X-CSE-MsgGUID: VFJoZvgnS1mgBFkl2Td37w==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="55738836"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="55738836"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 09:09:35 -0700
X-CSE-ConnectionGUID: bvf8lUYDSN2lXvuBwFRl+w==
X-CSE-MsgGUID: IeSPVj4QT2qKj4osacvXLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="148468559"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa008.jf.intel.com with ESMTP; 12 Jun 2025 09:09:30 -0700
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
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Simon Horman <horms@kernel.org>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, bpf@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Mina Almasry <almasrymina@google.com>
Date: Thu, 12 Jun 2025 18:02:19 +0200
Message-ID: <20250612160234.68682-3-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250612160234.68682-1-aleksander.lobakin@intel.com>
References: <20250612160234.68682-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 12 Jun 2025 17:48:58 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749744575; x=1781280575;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lBMx7xpwcElr6JTSgSj365LnMhXIBLIk3ALzeaeTHFs=;
 b=UgW0Kf3t49g8azJrb6vckzYrduohn9imKJbeYsTPqUChlOR/+RDutBW2
 +FZPMiq0QCatjgkrvncar28tNado1EfAt2mkWS1AXj6d53y1lDBX4GCxV
 p7deiPg36bZswMj36NVcIDxOllhHCrq+zp3AMAMzBZzc/UJ3CBNjOLMN9
 MPl96nTyyNr5pbLGo/GK3k2HSNX8yJOkkisbRkstnOunx+0nJWWuvEZTe
 F34AoQ5vrewbwnJH2+2Zd2wY5br9gJreNXwo7oroAE3J42zys+xn5zNmE
 oXxugmP6ZHtUabfY+s/n4fgVUdnNSjevtaan+ty4aYaTD0DKSi/9PKfDW
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UgW0Kf3t
Subject: [Intel-wired-lan] [PATCH iwl-next v2 02/17] libeth: convert to
 netmem
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

Back when the libeth Rx core was initially written, devmem was a draft
and netmem_ref didn't exist in the mainline. Now that it's here, make
libeth MP-agnostic before introducing any new code or any new library
users.
When it's known that the created PP/FQ is for header buffers, use faster
"unsafe" underscored netmem <--> virt accessors as netmem_is_net_iov()
is always false in that case, but consumes some cycles (bit test +
true branch).

Reviewed-by: Mina Almasry <almasrymina@google.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/net/libeth/rx.h                       | 22 ++++++------
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 14 ++++----
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  2 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 36 +++++++++++--------
 drivers/net/ethernet/intel/libeth/rx.c        |  8 ++---
 5 files changed, 46 insertions(+), 36 deletions(-)

diff --git a/include/net/libeth/rx.h b/include/net/libeth/rx.h
index ab05024be518..7d5dc58984b1 100644
--- a/include/net/libeth/rx.h
+++ b/include/net/libeth/rx.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
-/* Copyright (C) 2024 Intel Corporation */
+/* Copyright (C) 2024-2025 Intel Corporation */
 
 #ifndef __LIBETH_RX_H
 #define __LIBETH_RX_H
@@ -31,7 +31,7 @@
 
 /**
  * struct libeth_fqe - structure representing an Rx buffer (fill queue element)
- * @page: page holding the buffer
+ * @netmem: network memory reference holding the buffer
  * @offset: offset from the page start (to the headroom)
  * @truesize: total space occupied by the buffer (w/ headroom and tailroom)
  *
@@ -40,7 +40,7 @@
  * former, @offset is always 0 and @truesize is always ```PAGE_SIZE```.
  */
 struct libeth_fqe {
-	struct page		*page;
+	netmem_ref		netmem;
 	u32			offset;
 	u32			truesize;
 } __aligned_largest;
@@ -102,15 +102,16 @@ static inline dma_addr_t libeth_rx_alloc(const struct libeth_fq_fp *fq, u32 i)
 	struct libeth_fqe *buf = &fq->fqes[i];
 
 	buf->truesize = fq->truesize;
-	buf->page = page_pool_dev_alloc(fq->pp, &buf->offset, &buf->truesize);
-	if (unlikely(!buf->page))
+	buf->netmem = page_pool_dev_alloc_netmem(fq->pp, &buf->offset,
+						 &buf->truesize);
+	if (unlikely(!buf->netmem))
 		return DMA_MAPPING_ERROR;
 
-	return page_pool_get_dma_addr(buf->page) + buf->offset +
+	return page_pool_get_dma_addr_netmem(buf->netmem) + buf->offset +
 	       fq->pp->p.offset;
 }
 
-void libeth_rx_recycle_slow(struct page *page);
+void libeth_rx_recycle_slow(netmem_ref netmem);
 
 /**
  * libeth_rx_sync_for_cpu - synchronize or recycle buffer post DMA
@@ -126,18 +127,19 @@ void libeth_rx_recycle_slow(struct page *page);
 static inline bool libeth_rx_sync_for_cpu(const struct libeth_fqe *fqe,
 					  u32 len)
 {
-	struct page *page = fqe->page;
+	netmem_ref netmem = fqe->netmem;
 
 	/* Very rare, but possible case. The most common reason:
 	 * the last fragment contained FCS only, which was then
 	 * stripped by the HW.
 	 */
 	if (unlikely(!len)) {
-		libeth_rx_recycle_slow(page);
+		libeth_rx_recycle_slow(netmem);
 		return false;
 	}
 
-	page_pool_dma_sync_for_cpu(page->pp, page, fqe->offset, len);
+	page_pool_dma_sync_netmem_for_cpu(netmem_get_pp(netmem), netmem,
+					  fqe->offset, len);
 
 	return true;
 }
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 23e786b9793d..aaf70c625655 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -723,7 +723,7 @@ static void iavf_clean_rx_ring(struct iavf_ring *rx_ring)
 	for (u32 i = rx_ring->next_to_clean; i != rx_ring->next_to_use; ) {
 		const struct libeth_fqe *rx_fqes = &rx_ring->rx_fqes[i];
 
-		page_pool_put_full_page(rx_ring->pp, rx_fqes->page, false);
+		libeth_rx_recycle_slow(rx_fqes->netmem);
 
 		if (unlikely(++i == rx_ring->count))
 			i = 0;
@@ -1197,10 +1197,11 @@ static void iavf_add_rx_frag(struct sk_buff *skb,
 			     const struct libeth_fqe *rx_buffer,
 			     unsigned int size)
 {
-	u32 hr = rx_buffer->page->pp->p.offset;
+	u32 hr = netmem_get_pp(rx_buffer->netmem)->p.offset;
 
-	skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, rx_buffer->page,
-			rx_buffer->offset + hr, size, rx_buffer->truesize);
+	skb_add_rx_frag_netmem(skb, skb_shinfo(skb)->nr_frags,
+			       rx_buffer->netmem, rx_buffer->offset + hr,
+			       size, rx_buffer->truesize);
 }
 
 /**
@@ -1214,12 +1215,13 @@ static void iavf_add_rx_frag(struct sk_buff *skb,
 static struct sk_buff *iavf_build_skb(const struct libeth_fqe *rx_buffer,
 				      unsigned int size)
 {
-	u32 hr = rx_buffer->page->pp->p.offset;
+	struct page *buf_page = __netmem_to_page(rx_buffer->netmem);
+	u32 hr = buf_page->pp->p.offset;
 	struct sk_buff *skb;
 	void *va;
 
 	/* prefetch first cache line of first page */
-	va = page_address(rx_buffer->page) + rx_buffer->offset;
+	va = page_address(buf_page) + rx_buffer->offset;
 	net_prefetch(va + hr);
 
 	/* build an skb around the page buffer */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index 993c354aa27a..555879b1248d 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -1006,7 +1006,7 @@ static int idpf_rx_singleq_clean(struct idpf_rx_queue *rx_q, int budget)
 			break;
 
 skip_data:
-		rx_buf->page = NULL;
+		rx_buf->netmem = 0;
 
 		IDPF_SINGLEQ_BUMP_RING_IDX(rx_q, ntc);
 		cleaned_count++;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 5cf440e09d0a..cef9dfb877e8 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -383,12 +383,12 @@ static int idpf_tx_desc_alloc_all(struct idpf_vport *vport)
  */
 static void idpf_rx_page_rel(struct libeth_fqe *rx_buf)
 {
-	if (unlikely(!rx_buf->page))
+	if (unlikely(!rx_buf->netmem))
 		return;
 
-	page_pool_put_full_page(rx_buf->page->pp, rx_buf->page, false);
+	libeth_rx_recycle_slow(rx_buf->netmem);
 
-	rx_buf->page = NULL;
+	rx_buf->netmem = 0;
 	rx_buf->offset = 0;
 }
 
@@ -3240,10 +3240,10 @@ idpf_rx_process_skb_fields(struct idpf_rx_queue *rxq, struct sk_buff *skb,
 void idpf_rx_add_frag(struct idpf_rx_buf *rx_buf, struct sk_buff *skb,
 		      unsigned int size)
 {
-	u32 hr = rx_buf->page->pp->p.offset;
+	u32 hr = netmem_get_pp(rx_buf->netmem)->p.offset;
 
-	skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, rx_buf->page,
-			rx_buf->offset + hr, size, rx_buf->truesize);
+	skb_add_rx_frag_netmem(skb, skb_shinfo(skb)->nr_frags, rx_buf->netmem,
+			       rx_buf->offset + hr, size, rx_buf->truesize);
 }
 
 /**
@@ -3266,16 +3266,20 @@ static u32 idpf_rx_hsplit_wa(const struct libeth_fqe *hdr,
 			     struct libeth_fqe *buf, u32 data_len)
 {
 	u32 copy = data_len <= L1_CACHE_BYTES ? data_len : ETH_HLEN;
+	struct page *hdr_page, *buf_page;
 	const void *src;
 	void *dst;
 
-	if (!libeth_rx_sync_for_cpu(buf, copy))
+	if (unlikely(netmem_is_net_iov(buf->netmem)) ||
+	    !libeth_rx_sync_for_cpu(buf, copy))
 		return 0;
 
-	dst = page_address(hdr->page) + hdr->offset + hdr->page->pp->p.offset;
-	src = page_address(buf->page) + buf->offset + buf->page->pp->p.offset;
-	memcpy(dst, src, LARGEST_ALIGN(copy));
+	hdr_page = __netmem_to_page(hdr->netmem);
+	buf_page = __netmem_to_page(buf->netmem);
+	dst = page_address(hdr_page) + hdr->offset + hdr_page->pp->p.offset;
+	src = page_address(buf_page) + buf->offset + buf_page->pp->p.offset;
 
+	memcpy(dst, src, LARGEST_ALIGN(copy));
 	buf->offset += copy;
 
 	return copy;
@@ -3291,11 +3295,12 @@ static u32 idpf_rx_hsplit_wa(const struct libeth_fqe *hdr,
  */
 struct sk_buff *idpf_rx_build_skb(const struct libeth_fqe *buf, u32 size)
 {
-	u32 hr = buf->page->pp->p.offset;
+	struct page *buf_page = __netmem_to_page(buf->netmem);
+	u32 hr = buf_page->pp->p.offset;
 	struct sk_buff *skb;
 	void *va;
 
-	va = page_address(buf->page) + buf->offset;
+	va = page_address(buf_page) + buf->offset;
 	prefetch(va + hr);
 
 	skb = napi_build_skb(va, buf->truesize);
@@ -3429,7 +3434,8 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
 
 		if (unlikely(!hdr_len && !skb)) {
 			hdr_len = idpf_rx_hsplit_wa(hdr, rx_buf, pkt_len);
-			pkt_len -= hdr_len;
+			/* If failed, drop both buffers by setting len to 0 */
+			pkt_len -= hdr_len ? : pkt_len;
 
 			u64_stats_update_begin(&rxq->stats_sync);
 			u64_stats_inc(&rxq->q_stats.hsplit_buf_ovf);
@@ -3446,7 +3452,7 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
 			u64_stats_update_end(&rxq->stats_sync);
 		}
 
-		hdr->page = NULL;
+		hdr->netmem = 0;
 
 payload:
 		if (!libeth_rx_sync_for_cpu(rx_buf, pkt_len))
@@ -3462,7 +3468,7 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
 			break;
 
 skip_data:
-		rx_buf->page = NULL;
+		rx_buf->netmem = 0;
 
 		idpf_rx_post_buf_refill(refillq, buf_id);
 		IDPF_RX_BUMP_NTC(rxq, ntc);
diff --git a/drivers/net/ethernet/intel/libeth/rx.c b/drivers/net/ethernet/intel/libeth/rx.c
index c2c53552c440..2afa6e33f160 100644
--- a/drivers/net/ethernet/intel/libeth/rx.c
+++ b/drivers/net/ethernet/intel/libeth/rx.c
@@ -204,14 +204,14 @@ void libeth_rx_fq_destroy(struct libeth_fq *fq)
 EXPORT_SYMBOL_GPL(libeth_rx_fq_destroy);
 
 /**
- * libeth_rx_recycle_slow - recycle a libeth page from the NAPI context
- * @page: page to recycle
+ * libeth_rx_recycle_slow - recycle libeth netmem
+ * @netmem: network memory to recycle
  *
  * To be used on exceptions or rare cases not requiring fast inline recycling.
  */
-void libeth_rx_recycle_slow(struct page *page)
+void __cold libeth_rx_recycle_slow(netmem_ref netmem)
 {
-	page_pool_recycle_direct(page->pp, page);
+	page_pool_put_full_netmem(netmem_get_pp(netmem), netmem, false);
 }
 EXPORT_SYMBOL_GPL(libeth_rx_recycle_slow);
 
-- 
2.49.0

