Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6007F782B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Nov 2023 16:50:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9A6442174;
	Fri, 24 Nov 2023 15:50:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9A6442174
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700841021;
	bh=AYNukc5fnjMik4+ob6lHxTW/SfWxB86bCYTELUiof/s=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uTxZqevJ/FeSqNRsDSM4bpvi/mcgrByWxs7mTV6il8J+8Hyj+vPPnXLZ13b+mEtWs
	 sSXNGNAEA0VzZFDed+Cg+MZ26ZiJTupbYaBS1+Br9UaJRy7PRZQYplL1WUIj4m7Vaa
	 cZqe0W/Dg2N2ARK6jcmcKgSI8GjUGU0u1bNFXgUkYLg41FTFLO99WPbUQDcutVnEKM
	 WiLrHQTkrbTTvUTo/Kgfw02tcHMzZi+iyyA5wQcAJnvZ2zw+2sLtmVeWQFQhDwBDBg
	 UbL8fxsc/fM3gfIXvp6W0JrHiR80UPRzXkpiE/DyGTW/tjlaOPYGi3Itsy0iImQbfp
	 qPhbXvdzNBtQw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 67d8LewqGpok; Fri, 24 Nov 2023 15:50:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9122D42166;
	Fri, 24 Nov 2023 15:50:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9122D42166
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 14EEB1BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 15:50:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CF70A4216A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 15:50:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF70A4216A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tsfAHHYu8MfU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Nov 2023 15:50:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B6A4D42174
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 15:50:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6A4D42174
X-IronPort-AV: E=McAfee;i="6600,9927,10904"; a="389592452"
X-IronPort-AV: E=Sophos;i="6.04,224,1695711600"; d="scan'208";a="389592452"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2023 07:50:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,224,1695711600"; d="scan'208";a="15659916"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa001.jf.intel.com with ESMTP; 24 Nov 2023 07:50:05 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Fri, 24 Nov 2023 16:47:20 +0100
Message-ID: <20231124154732.1623518-3-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231124154732.1623518-1-aleksander.lobakin@intel.com>
References: <20231124154732.1623518-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700841008; x=1732377008;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=45TnvaPFp1ZOnAeXi557icxqFReHhQoBsVI9zUA0o+4=;
 b=NoWp5tE7KmEdBN5ALtHlxtCErray5aekv8yFFbljdeeoeBMxJFxjAE5C
 9WtH4Np2HGjWUEejwqZXKxOiHVJ/K2DiWE8sRZWvHNjtWVVXU+y4f5Fzy
 4F1W1BdZIkAHaT95fwZuEdYjDvjko+eIf7veuov2FIiKn9YHYunuOVbEt
 //HHkzuzX6OJTFZ5aObtiDPYzTAL5Y4MLqlMq/Vh23oA4u2Bn+85iGYs+
 /pTnW2mnEwqs+iDV6gWQAIIlNPxvG5aecJsCzMBkrnfFVnlpih9+eYM4c
 mt/BY3zkcs6D8UFskri555pBXW00Rpv2CCl/yV5qm3a5tIxAxvesYniIi
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NoWp5tE7
Subject: [Intel-wired-lan] [PATCH net-next v5 02/14] page_pool: don't use
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
index 989d07b831fc..0ab6e14eb473 100644
--- a/include/net/page_pool/types.h
+++ b/include/net/page_pool/types.h
@@ -43,7 +43,6 @@ struct pp_alloc_cache {
 
 /**
  * struct page_pool_params - page pool parameters
- * @flags:	PP_FLAG_DMA_MAP, PP_FLAG_DMA_SYNC_DEV
  * @order:	2^order pages on allocation
  * @pool_size:	size of the ptr_ring
  * @nid:	NUMA node id to allocate from pages from
@@ -52,10 +51,10 @@ struct pp_alloc_cache {
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
@@ -66,6 +65,7 @@ struct page_pool_params {
 		unsigned int	offset;
 	);
 	struct_group_tagged(page_pool_params_slow, slow,
+		unsigned int	flags;
 /* private: used by test code only */
 		void (*init_callback)(struct page *page, void *arg);
 		void *init_arg;
@@ -125,7 +125,9 @@ struct page_pool_stats {
 struct page_pool {
 	struct page_pool_params_fast p;
 
-	bool has_init_callback;
+	bool dma_map:1;				/* Perform DMA mapping */
+	bool dma_sync:1;			/* Perform DMA sync */
+	bool has_init_callback:1;		/* slow.init_callback is set */
 
 	long frag_users __aligned(4 * sizeof(long));
 	struct page *frag_page;
diff --git a/net/core/page_pool.c b/net/core/page_pool.c
index df2a06d7da52..a8da3ba3b1e8 100644
--- a/net/core/page_pool.c
+++ b/net/core/page_pool.c
@@ -177,7 +177,7 @@ static int page_pool_init(struct page_pool *pool,
 	memcpy(&pool->slow, &params->slow, sizeof(pool->slow));
 
 	/* Validate only known flags were used */
-	if (pool->p.flags & ~(PP_FLAG_ALL))
+	if (pool->slow.flags & ~(PP_FLAG_ALL))
 		return -EINVAL;
 
 	if (pool->p.pool_size)
@@ -191,22 +191,26 @@ static int page_pool_init(struct page_pool *pool,
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
@@ -232,7 +236,7 @@ static int page_pool_init(struct page_pool *pool,
 	/* Driver calling page_pool_create() also call page_pool_destroy() */
 	refcount_set(&pool->user_cnt, 1);
 
-	if (pool->p.flags & PP_FLAG_DMA_MAP)
+	if (pool->dma_map)
 		get_device(pool->p.dev);
 
 	return 0;
@@ -365,7 +369,7 @@ static bool page_pool_dma_map(struct page_pool *pool, struct page *page)
 	if (page_pool_set_dma_addr(page, dma))
 		goto unmap_failed;
 
-	if (pool->p.flags & PP_FLAG_DMA_SYNC_DEV)
+	if (pool->dma_sync)
 		page_pool_dma_sync_for_device(pool, page, pool->p.max_len);
 
 	return true;
@@ -411,8 +415,7 @@ static struct page *__page_pool_alloc_page_order(struct page_pool *pool,
 	if (unlikely(!page))
 		return NULL;
 
-	if ((pool->p.flags & PP_FLAG_DMA_MAP) &&
-	    unlikely(!page_pool_dma_map(pool, page))) {
+	if (pool->dma_map && unlikely(!page_pool_dma_map(pool, page))) {
 		put_page(page);
 		return NULL;
 	}
@@ -432,8 +435,8 @@ static struct page *__page_pool_alloc_pages_slow(struct page_pool *pool,
 						 gfp_t gfp)
 {
 	const int bulk = PP_ALLOC_CACHE_REFILL;
-	unsigned int pp_flags = pool->p.flags;
 	unsigned int pp_order = pool->p.order;
+	bool dma_map = pool->dma_map;
 	struct page *page;
 	int i, nr_pages;
 
@@ -458,8 +461,7 @@ static struct page *__page_pool_alloc_pages_slow(struct page_pool *pool,
 	 */
 	for (i = 0; i < nr_pages; i++) {
 		page = pool->alloc.cache[i];
-		if ((pp_flags & PP_FLAG_DMA_MAP) &&
-		    unlikely(!page_pool_dma_map(pool, page))) {
+		if (dma_map && unlikely(!page_pool_dma_map(pool, page))) {
 			put_page(page);
 			continue;
 		}
@@ -531,7 +533,7 @@ static void page_pool_return_page(struct page_pool *pool, struct page *page)
 	dma_addr_t dma;
 	int count;
 
-	if (!(pool->p.flags & PP_FLAG_DMA_MAP))
+	if (!pool->dma_map)
 		/* Always account for inflight pages, even if we didn't
 		 * map them
 		 */
@@ -597,7 +599,7 @@ static bool page_pool_recycle_in_cache(struct page *page,
 }
 
 /* If the page refcnt == 1, this will try to recycle the page.
- * if PP_FLAG_DMA_SYNC_DEV is set, we'll try to sync the DMA area for
+ * If pool->dma_sync is set, we'll try to sync the DMA area for
  * the configured size min(dma_sync_size, pool->max_len).
  * If the page refcnt != 1, then the page will be returned to memory
  * subsystem.
@@ -620,7 +622,7 @@ __page_pool_put_page(struct page_pool *pool, struct page *page,
 	if (likely(page_ref_count(page) == 1 && !page_is_pfmemalloc(page))) {
 		/* Read barrier done in page_ref_count / READ_ONCE */
 
-		if (pool->p.flags & PP_FLAG_DMA_SYNC_DEV)
+		if (pool->dma_sync)
 			page_pool_dma_sync_for_device(pool, page,
 						      dma_sync_size);
 
@@ -733,7 +735,7 @@ static struct page *page_pool_drain_frag(struct page_pool *pool,
 		return NULL;
 
 	if (page_ref_count(page) == 1 && !page_is_pfmemalloc(page)) {
-		if (pool->p.flags & PP_FLAG_DMA_SYNC_DEV)
+		if (pool->dma_sync)
 			page_pool_dma_sync_for_device(pool, page, -1);
 
 		return page;
@@ -823,7 +825,7 @@ static void __page_pool_destroy(struct page_pool *pool)
 
 	ptr_ring_cleanup(&pool->ring, NULL);
 
-	if (pool->p.flags & PP_FLAG_DMA_MAP)
+	if (pool->dma_map)
 		put_device(pool->p.dev);
 
 #ifdef CONFIG_PAGE_POOL_STATS
-- 
2.42.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
