Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B3032810FEC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Dec 2023 12:31:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4016583381;
	Wed, 13 Dec 2023 11:31:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4016583381
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702467075;
	bh=2MS4tSG8P9AYNDEAusg/g4zQ+Jdtn+99pr4kgYNtKMk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EboJ8p4xBLwIUUZigpQDUUBihjTLCVhBkP74Z3ZMHlb3Rfq2BvWAoeD5/W91U7mBT
	 cDgZf7JIn0DX2u6fv4FqhcBh4yjcPRuJXVAmHCAGynZ49yLahnLnltLgKTtu3MEMGv
	 L7myTiKMTu6rmuPy2dBVfvS1mfzLCSFkUFgcjFotPAluXDH/sFZi0cQPQjxDG5r9R6
	 43QNxYq14pxCb5npGmBylFcraaSP9cv2InJnJb8QClVNtme9FZOQJDuQst78UFiedQ
	 kP1/0aly02GD2QU3x8kWxX1K0Ba1XltbZm8krnroj07L84y6K2jAZ6/nMXaXdnFHV7
	 ikvbu/MvYU80Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YCdBvgHOlRb7; Wed, 13 Dec 2023 11:31:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CCD5C82AC3;
	Wed, 13 Dec 2023 11:31:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CCD5C82AC3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7D5621BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 11:31:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9702040608
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 11:31:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9702040608
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uZ7x5pl3_Cnv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Dec 2023 11:30:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 18BDF419BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 11:30:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 18BDF419BA
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="375103883"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="375103883"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 03:30:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="844279440"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="844279440"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmsmga004.fm.intel.com with ESMTP; 13 Dec 2023 03:30:43 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Wed, 13 Dec 2023 12:28:25 +0100
Message-ID: <20231213112835.2262651-3-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231213112835.2262651-1-aleksander.lobakin@intel.com>
References: <20231213112835.2262651-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702467059; x=1734003059;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l4CnD+Pxx0Q4YVJ/EYwOlzvB7duChKcWeg7vEHMvYDA=;
 b=I6cIQheaNnkXNRDKuOF5e6JIAPwUVg8NxcVjak0AvqLooAbRn7acVno1
 QsBR3YTUGNO1//CMfSW/JGWaFMyS1uuT/v2CztINNMkqWENrnJyQoh2qc
 H+pRxVVhC6bYkNum24ZrSp9L9MYQqfFZxh6X1iVGn5KdGJeWYltq9M72Z
 uzYu5K7RsIgCsJh/ujjRXlU92WrM4Rl/iM1L+KRrUTpLQ6MlIyQvxNerp
 TrcFLJGweEYCt3KddGAOy5GsAX75LyAaTK7rmQz+9D331Yz0EFGDqSs4b
 hyDUUvAAwyle3jOfzDD3GucJKXHiq6wfRhBjzAYA+/f+8QeXFhnSB3mMh
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I6cIQhea
Subject: [Intel-wired-lan] [PATCH net-next v7 02/12] page_pool: don't use
 driver-set flags field directly
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Yunsheng Lin <linyunsheng@huawei.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, David Christensen <drc@linux.vnet.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

page_pool::p is driver-defined params, copied directly from the
structure passed to page_pool_create(). The structure isn't meant
to be modified by the Page Pool core code and this even might look
confusing[0][1].
In order to be able to alter some flags, let's define our own, internal
fields the same way as the already existing one (::has_init_callback).
They are defined as bits in the driver-set params, leave them so here
as well, to not waste byte-per-bit or so. Almost 30 bits are still free
for future extensions.
We could've defined only new flags here or only the ones we may need
to alter, but checking some flags in one place while others in another
doesn't sound convenient or intuitive. ::flags passed by the driver can
now go to the "slow" PP params.

Suggested-by: Jakub Kicinski <kuba@kernel.org>
Link[0]: https://lore.kernel.org/netdev/20230703133207.4f0c54ce@kernel.org
Suggested-by: Alexander Duyck <alexanderduyck@fb.com>
Link[1]: https://lore.kernel.org/netdev/CAKgT0UfZCGnWgOH96E4GV3ZP6LLbROHM7SHE8NKwq+exX+Gk_Q@mail.gmail.com
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/net/page_pool/types.h |  8 +++++---
 net/core/page_pool.c          | 34 ++++++++++++++++++----------------
 2 files changed, 23 insertions(+), 19 deletions(-)

diff --git a/include/net/page_pool/types.h b/include/net/page_pool/types.h
index 35ab82da7f2a..51f6cdd60757 100644
--- a/include/net/page_pool/types.h
+++ b/include/net/page_pool/types.h
@@ -44,7 +44,6 @@ struct pp_alloc_cache {
 
 /**
  * struct page_pool_params - page pool parameters
- * @flags:	PP_FLAG_DMA_MAP, PP_FLAG_DMA_SYNC_DEV
  * @order:	2^order pages on allocation
  * @pool_size:	size of the ptr_ring
  * @nid:	NUMA node id to allocate from pages from
@@ -54,10 +53,10 @@ struct pp_alloc_cache {
  * @dma_dir:	DMA mapping direction
  * @max_len:	max DMA sync memory size for PP_FLAG_DMA_SYNC_DEV
  * @offset:	DMA sync address offset for PP_FLAG_DMA_SYNC_DEV
+ * @flags:	PP_FLAG_DMA_MAP, PP_FLAG_DMA_SYNC_DEV
  */
 struct page_pool_params {
 	struct_group_tagged(page_pool_params_fast, fast,
-		unsigned int	flags;
 		unsigned int	order;
 		unsigned int	pool_size;
 		int		nid;
@@ -68,6 +67,7 @@ struct page_pool_params {
 		unsigned int	offset;
 	);
 	struct_group_tagged(page_pool_params_slow, slow,
+		unsigned int	flags;
 		struct net_device *netdev;
 /* private: used by test code only */
 		void (*init_callback)(struct page *page, void *arg);
@@ -128,7 +128,9 @@ struct page_pool_stats {
 struct page_pool {
 	struct page_pool_params_fast p;
 
-	bool has_init_callback;
+	bool dma_map:1;				/* Perform DMA mapping */
+	bool dma_sync:1;			/* Perform DMA sync */
+	bool has_init_callback:1;		/* slow.init_callback is set */
 
 	/* The following block must stay within one cacheline. On 32-bit
 	 * systems, sizeof(long) == sizeof(int), so that the block size is
diff --git a/net/core/page_pool.c b/net/core/page_pool.c
index c2e7c9a6efbe..59aca3339222 100644
--- a/net/core/page_pool.c
+++ b/net/core/page_pool.c
@@ -179,7 +179,7 @@ static int page_pool_init(struct page_pool *pool,
 	memcpy(&pool->slow, &params->slow, sizeof(pool->slow));
 
 	/* Validate only known flags were used */
-	if (pool->p.flags & ~(PP_FLAG_ALL))
+	if (pool->slow.flags & ~(PP_FLAG_ALL))
 		return -EINVAL;
 
 	if (pool->p.pool_size)
@@ -193,22 +193,26 @@ static int page_pool_init(struct page_pool *pool,
 	 * DMA_BIDIRECTIONAL is for allowing page used for DMA sending,
 	 * which is the XDP_TX use-case.
 	 */
-	if (pool->p.flags & PP_FLAG_DMA_MAP) {
+	if (pool->slow.flags & PP_FLAG_DMA_MAP) {
 		if ((pool->p.dma_dir != DMA_FROM_DEVICE) &&
 		    (pool->p.dma_dir != DMA_BIDIRECTIONAL))
 			return -EINVAL;
+
+		pool->dma_map = true;
 	}
 
-	if (pool->p.flags & PP_FLAG_DMA_SYNC_DEV) {
+	if (pool->slow.flags & PP_FLAG_DMA_SYNC_DEV) {
 		/* In order to request DMA-sync-for-device the page
 		 * needs to be mapped
 		 */
-		if (!(pool->p.flags & PP_FLAG_DMA_MAP))
+		if (!(pool->slow.flags & PP_FLAG_DMA_MAP))
 			return -EINVAL;
 
 		if (!pool->p.max_len)
 			return -EINVAL;
 
+		pool->dma_sync = true;
+
 		/* pool->p.offset has to be set according to the address
 		 * offset used by the DMA engine to start copying rx data
 		 */
@@ -234,7 +238,7 @@ static int page_pool_init(struct page_pool *pool,
 	/* Driver calling page_pool_create() also call page_pool_destroy() */
 	refcount_set(&pool->user_cnt, 1);
 
-	if (pool->p.flags & PP_FLAG_DMA_MAP)
+	if (pool->dma_map)
 		get_device(pool->p.dev);
 
 	return 0;
@@ -244,7 +248,7 @@ static void page_pool_uninit(struct page_pool *pool)
 {
 	ptr_ring_cleanup(&pool->ring, NULL);
 
-	if (pool->p.flags & PP_FLAG_DMA_MAP)
+	if (pool->dma_map)
 		put_device(pool->p.dev);
 
 #ifdef CONFIG_PAGE_POOL_STATS
@@ -387,7 +391,7 @@ static bool page_pool_dma_map(struct page_pool *pool, struct page *page)
 	if (page_pool_set_dma_addr(page, dma))
 		goto unmap_failed;
 
-	if (pool->p.flags & PP_FLAG_DMA_SYNC_DEV)
+	if (pool->dma_sync)
 		page_pool_dma_sync_for_device(pool, page, pool->p.max_len);
 
 	return true;
@@ -433,8 +437,7 @@ static struct page *__page_pool_alloc_page_order(struct page_pool *pool,
 	if (unlikely(!page))
 		return NULL;
 
-	if ((pool->p.flags & PP_FLAG_DMA_MAP) &&
-	    unlikely(!page_pool_dma_map(pool, page))) {
+	if (pool->dma_map && unlikely(!page_pool_dma_map(pool, page))) {
 		put_page(page);
 		return NULL;
 	}
@@ -454,8 +457,8 @@ static struct page *__page_pool_alloc_pages_slow(struct page_pool *pool,
 						 gfp_t gfp)
 {
 	const int bulk = PP_ALLOC_CACHE_REFILL;
-	unsigned int pp_flags = pool->p.flags;
 	unsigned int pp_order = pool->p.order;
+	bool dma_map = pool->dma_map;
 	struct page *page;
 	int i, nr_pages;
 
@@ -480,8 +483,7 @@ static struct page *__page_pool_alloc_pages_slow(struct page_pool *pool,
 	 */
 	for (i = 0; i < nr_pages; i++) {
 		page = pool->alloc.cache[i];
-		if ((pp_flags & PP_FLAG_DMA_MAP) &&
-		    unlikely(!page_pool_dma_map(pool, page))) {
+		if (dma_map && unlikely(!page_pool_dma_map(pool, page))) {
 			put_page(page);
 			continue;
 		}
@@ -558,7 +560,7 @@ static void page_pool_return_page(struct page_pool *pool, struct page *page)
 	dma_addr_t dma;
 	int count;
 
-	if (!(pool->p.flags & PP_FLAG_DMA_MAP))
+	if (!pool->dma_map)
 		/* Always account for inflight pages, even if we didn't
 		 * map them
 		 */
@@ -624,7 +626,7 @@ static bool page_pool_recycle_in_cache(struct page *page,
 }
 
 /* If the page refcnt == 1, this will try to recycle the page.
- * if PP_FLAG_DMA_SYNC_DEV is set, we'll try to sync the DMA area for
+ * If pool->dma_sync is set, we'll try to sync the DMA area for
  * the configured size min(dma_sync_size, pool->max_len).
  * If the page refcnt != 1, then the page will be returned to memory
  * subsystem.
@@ -647,7 +649,7 @@ __page_pool_put_page(struct page_pool *pool, struct page *page,
 	if (likely(page_ref_count(page) == 1 && !page_is_pfmemalloc(page))) {
 		/* Read barrier done in page_ref_count / READ_ONCE */
 
-		if (pool->p.flags & PP_FLAG_DMA_SYNC_DEV)
+		if (pool->dma_sync)
 			page_pool_dma_sync_for_device(pool, page,
 						      dma_sync_size);
 
@@ -760,7 +762,7 @@ static struct page *page_pool_drain_frag(struct page_pool *pool,
 		return NULL;
 
 	if (page_ref_count(page) == 1 && !page_is_pfmemalloc(page)) {
-		if (pool->p.flags & PP_FLAG_DMA_SYNC_DEV)
+		if (pool->dma_sync)
 			page_pool_dma_sync_for_device(pool, page, -1);
 
 		return page;
-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
