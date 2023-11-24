Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C0A7F783B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Nov 2023 16:50:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 29B31421BE;
	Fri, 24 Nov 2023 15:50:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 29B31421BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700841053;
	bh=1+EbVBdypj/MDizyG5yGI1OITz3ZG/ocrt8ObYWr2zQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BBSbBd/PwJ1q2qEjPK4PNJVGWXFr2OK7EO0sdlL7GDrczKjeRuTHB6FMxt31yJwD5
	 Gunp40Nwrm0+Hh7qVu+pGDpJA41fyC8N6iJiatAiETHo6Kqpk//9/OVN1jHnYHr/ck
	 p1LzbcsBsthTcmazQX348AlQeVcV0O0dhSsL2H9lhSVODg8wEgRgVIW5spAsaOMpqx
	 tncpGpBsRtX281qJYIELuXs6+oD3vohV0lsqu5bLvmZf5IFeYDkO+Dt8E5a7/18j7O
	 3BElvzcZo8ZLrM0HQksVx/VS3WABL1BL3FA4V0wkFWvXHbHhIS5xl4OsIChHheS2bO
	 dpYcnKjDTCTrg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H8gsbGEhUE6O; Fri, 24 Nov 2023 15:50:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E23B942169;
	Fri, 24 Nov 2023 15:50:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E23B942169
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CB1511BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 15:50:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A863C421AA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 15:50:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A863C421AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kkFrRzEXL4y0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Nov 2023 15:50:29 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B30CA4219D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 15:50:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B30CA4219D
X-IronPort-AV: E=McAfee;i="6600,9927,10904"; a="389592542"
X-IronPort-AV: E=Sophos;i="6.04,224,1695711600"; d="scan'208";a="389592542"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2023 07:50:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,224,1695711600"; d="scan'208";a="15660032"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa001.jf.intel.com with ESMTP; 24 Nov 2023 07:50:26 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Fri, 24 Nov 2023 16:47:25 +0100
Message-ID: <20231124154732.1623518-8-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231124154732.1623518-1-aleksander.lobakin@intel.com>
References: <20231124154732.1623518-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700841029; x=1732377029;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PbdR9gi5ntlQxzvUezUS2MNEgeocQ5hNjBegzQsgPW4=;
 b=YbnSPbXRv7q2XDt96TJLvdQZ8IsMASGFBOJFBlU+jlHLDqIFj6NxLZ2z
 FEAauUehKSlSlsAlxGSUSFEYeP3Qv4wPggC6baEm88qODlTRggza957sg
 5a2JXY/AGJB+Ng0siVXfh/Q20VAZVER4sym4pTnxshL4L5llxn+plp5VV
 Z7VUR37qLWBPfGpCzQ9QGNRf1PiJv0wG/+D7k3LZLrvxI/eFUp69sNrWD
 WJaCY4AlE2aiZOXfB/BzdAwCSzNqmxkDcqrc5XFdWSHE2NoXbHU714JEN
 LUDw6jvfRIrrimyFkd7n+qlkH/HkEJuypowsclD0gBcTuZ4Mj2NkWQmcm
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YbnSPbXR
Subject: [Intel-wired-lan] [PATCH net-next v5 07/14] page_pool: constify
 some read-only function arguments
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

There are several functions taking pointers to data they don't modify.
This includes statistics fetching, page and page_pool parameters, etc.
Constify the pointers, so that call sites will be able to pass const
pointers as well.
No functional changes, no visible changes in functions sizes.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/net/page_pool/helpers.h | 12 ++++++------
 net/core/page_pool.c            | 12 ++++++------
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/include/net/page_pool/helpers.h b/include/net/page_pool/helpers.h
index 28bec368b8e9..528a76c66270 100644
--- a/include/net/page_pool/helpers.h
+++ b/include/net/page_pool/helpers.h
@@ -59,14 +59,14 @@
 #ifdef CONFIG_PAGE_POOL_STATS
 int page_pool_ethtool_stats_get_count(void);
 u8 *page_pool_ethtool_stats_get_strings(u8 *data);
-u64 *page_pool_ethtool_stats_get(u64 *data, void *stats);
+u64 *page_pool_ethtool_stats_get(u64 *data, const void *stats);
 
 /*
  * Drivers that wish to harvest page pool stats and report them to users
  * (perhaps via ethtool, debugfs, or another mechanism) can allocate a
  * struct page_pool_stats call page_pool_get_stats to get stats for the specified pool.
  */
-bool page_pool_get_stats(struct page_pool *pool,
+bool page_pool_get_stats(const struct page_pool *pool,
 			 struct page_pool_stats *stats);
 #else
 static inline int page_pool_ethtool_stats_get_count(void)
@@ -79,7 +79,7 @@ static inline u8 *page_pool_ethtool_stats_get_strings(u8 *data)
 	return data;
 }
 
-static inline u64 *page_pool_ethtool_stats_get(u64 *data, void *stats)
+static inline u64 *page_pool_ethtool_stats_get(u64 *data, const void *stats)
 {
 	return data;
 }
@@ -210,8 +210,8 @@ static inline void *page_pool_dev_alloc_va(struct page_pool *pool,
  * Get the stored dma direction. A driver might decide to store this locally
  * and avoid the extra cache line from page_pool to determine the direction.
  */
-static
-inline enum dma_data_direction page_pool_get_dma_dir(struct page_pool *pool)
+static inline enum dma_data_direction
+page_pool_get_dma_dir(const struct page_pool *pool)
 {
 	return pool->p.dma_dir;
 }
@@ -368,7 +368,7 @@ static inline void page_pool_free_va(struct page_pool *pool, void *va,
  * Fetch the DMA address of the page. The page pool to which the page belongs
  * must had been created with PP_FLAG_DMA_MAP.
  */
-static inline dma_addr_t page_pool_get_dma_addr(struct page *page)
+static inline dma_addr_t page_pool_get_dma_addr(const struct page *page)
 {
 	dma_addr_t ret = page->dma_addr & ~PAGE_POOL_DMA_ADDR_NEED_SYNC;
 
diff --git a/net/core/page_pool.c b/net/core/page_pool.c
index 09bdfdfc4788..e5ee49e8799c 100644
--- a/net/core/page_pool.c
+++ b/net/core/page_pool.c
@@ -69,7 +69,7 @@ static const char pp_stats[][ETH_GSTRING_LEN] = {
  * is passed to this API which is filled in. The caller can then report
  * those stats to the user (perhaps via ethtool, debugfs, etc.).
  */
-bool page_pool_get_stats(struct page_pool *pool,
+bool page_pool_get_stats(const struct page_pool *pool,
 			 struct page_pool_stats *stats)
 {
 	int cpu = 0;
@@ -119,9 +119,9 @@ int page_pool_ethtool_stats_get_count(void)
 }
 EXPORT_SYMBOL(page_pool_ethtool_stats_get_count);
 
-u64 *page_pool_ethtool_stats_get(u64 *data, void *stats)
+u64 *page_pool_ethtool_stats_get(u64 *data, const void *stats)
 {
-	struct page_pool_stats *pool_stats = stats;
+	const struct page_pool_stats *pool_stats = stats;
 
 	*data++ = pool_stats->alloc_stats.fast;
 	*data++ = pool_stats->alloc_stats.slow;
@@ -338,8 +338,8 @@ static struct page *__page_pool_get_cached(struct page_pool *pool)
 	return page;
 }
 
-static void page_pool_dma_sync_for_device(struct page_pool *pool,
-					  struct page *page,
+static void page_pool_dma_sync_for_device(const struct page_pool *pool,
+					  const struct page *page,
 					  unsigned int dma_sync_size)
 {
 	dma_addr_t dma_addr = page_pool_get_dma_addr(page);
@@ -509,7 +509,7 @@ EXPORT_SYMBOL(page_pool_alloc_pages);
  */
 #define _distance(a, b)	(s32)((a) - (b))
 
-static s32 page_pool_inflight(struct page_pool *pool)
+static s32 page_pool_inflight(const struct page_pool *pool)
 {
 	u32 release_cnt = atomic_read(&pool->pages_state_release_cnt);
 	u32 hold_cnt = READ_ONCE(pool->pages_state_hold_cnt);
-- 
2.42.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
