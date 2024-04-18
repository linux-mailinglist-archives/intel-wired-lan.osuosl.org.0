Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF278A98AF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 13:37:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EDB69416C0;
	Thu, 18 Apr 2024 11:37:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wxPpU2Z6HONH; Thu, 18 Apr 2024 11:37:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1CDDB41697
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713440221;
	bh=MfoG59Ii3GnXIympG3Q0TE5v8Q+0lb0NrDw41syBAIM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PVtGkvPF8YXtpWQ5fK/vQsKfLmuv5i9gOIABYokF5er93OiUaCrzClBjE1za09Fec
	 isxE+Xu2i3I0eiAQt6HwCU7onTt6ey+7AaABdMj3d7W1hZlh4BD+iCIyjTZMCJUZlI
	 /J7eM+LVT4VQx2NyqXuhnMcnhT9gg2w6LMU1cqI4KCLqqGSamoBy+QVSrFTIitTc1F
	 G+U5/c1B6YICyNrRVeRz8Wb2Yortdg5epHWukUyAZDNOkpTVsZ4K0+kGj1Q09IYtlz
	 Al+ngWW3Q2w/iSfEm3H2EKywA76WMLVopyUI8Uy/Fd5/jEqn5Uw55W6C52zYTcx60B
	 vyH/cEv/TJ2Cw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1CDDB41697;
	Thu, 18 Apr 2024 11:37:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 452711BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 11:36:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3F16D60BA4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 11:36:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nxh4RZKzkUHo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 11:36:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7AD0D60BA0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7AD0D60BA0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7AD0D60BA0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 11:36:57 +0000 (UTC)
X-CSE-ConnectionGUID: /1zrM0EJStml8dWrTMUmpA==
X-CSE-MsgGUID: shA+6wPxTz2V9yEnBrFVfQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="19587781"
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="19587781"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 04:36:57 -0700
X-CSE-ConnectionGUID: p6W5bC0aQhmsn14JYtA0WQ==
X-CSE-MsgGUID: VXQ/b6QsQvqcKshkj46Mlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="27586114"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa004.fm.intel.com with ESMTP; 18 Apr 2024 04:36:53 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu, 18 Apr 2024 13:36:11 +0200
Message-ID: <20240418113616.1108566-6-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240418113616.1108566-1-aleksander.lobakin@intel.com>
References: <20240418113616.1108566-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713440217; x=1744976217;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=h2xX5viKcqXvvZA3Hz2In9WNHWkHFwMdaq3Z6SIdJfY=;
 b=hCUSfI2V7UB08TXuq5B9Nm9aXLSImS9nV4KY8keT3LCdpjwNYfTLe8M/
 7rwXCmukA7Sda8LqpvUJNOirtCklDQO1aLWsovt093qfzcTAraN45QXZo
 bxNmqtSUxbH1zQkRcH5DuoYRcZWtlaQfdQRDnewKGZ8ACDTwgFtlP5z18
 35vIr1DwA6hLR95rkJZlI86knJ/O0ft73Nbld63xk2/EcMCdMlqjg8jVD
 H41kO8d9DCEbFN8tCgyB8hF/A9rtWd5WnMmQm+1NbACoS0A5fjTq41DRR
 WsLZqIuOLChPqgO4NNLtG5NHJ5AsWqiO6ZMOenR3c2jEKXY9HDvSTiKLA
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hCUSfI2V
Subject: [Intel-wired-lan] [PATCH net-next v10 05/10] page_pool: constify
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

There are several functions taking pointers to data they don't modify.
This includes statistics fetching, page and page_pool parameters, etc.
Constify the pointers, so that call sites will be able to pass const
pointers as well.
No functional changes, no visible changes in functions sizes.

Reviewed-by: Ilias Apalodimas <ilias.apalodimas@linaro.org>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/net/page_pool/types.h   |  4 ++--
 include/net/page_pool/helpers.h | 10 +++++-----
 net/core/page_pool.c            | 10 +++++-----
 3 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/include/net/page_pool/types.h b/include/net/page_pool/types.h
index 5e43a08d3231..a6ebed002216 100644
--- a/include/net/page_pool/types.h
+++ b/include/net/page_pool/types.h
@@ -213,7 +213,7 @@ struct xdp_mem_info;
 #ifdef CONFIG_PAGE_POOL
 void page_pool_destroy(struct page_pool *pool);
 void page_pool_use_xdp_mem(struct page_pool *pool, void (*disconnect)(void *),
-			   struct xdp_mem_info *mem);
+			   const struct xdp_mem_info *mem);
 void page_pool_put_page_bulk(struct page_pool *pool, void **data,
 			     int count);
 #else
@@ -223,7 +223,7 @@ static inline void page_pool_destroy(struct page_pool *pool)
 
 static inline void page_pool_use_xdp_mem(struct page_pool *pool,
 					 void (*disconnect)(void *),
-					 struct xdp_mem_info *mem)
+					 const struct xdp_mem_info *mem)
 {
 }
 
diff --git a/include/net/page_pool/helpers.h b/include/net/page_pool/helpers.h
index 1d397c1a0043..c7bb06750e85 100644
--- a/include/net/page_pool/helpers.h
+++ b/include/net/page_pool/helpers.h
@@ -58,7 +58,7 @@
 /* Deprecated driver-facing API, use netlink instead */
 int page_pool_ethtool_stats_get_count(void);
 u8 *page_pool_ethtool_stats_get_strings(u8 *data);
-u64 *page_pool_ethtool_stats_get(u64 *data, void *stats);
+u64 *page_pool_ethtool_stats_get(u64 *data, const void *stats);
 
 bool page_pool_get_stats(const struct page_pool *pool,
 			 struct page_pool_stats *stats);
@@ -73,7 +73,7 @@ static inline u8 *page_pool_ethtool_stats_get_strings(u8 *data)
 	return data;
 }
 
-static inline u64 *page_pool_ethtool_stats_get(u64 *data, void *stats)
+static inline u64 *page_pool_ethtool_stats_get(u64 *data, const void *stats)
 {
 	return data;
 }
@@ -204,8 +204,8 @@ static inline void *page_pool_dev_alloc_va(struct page_pool *pool,
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
@@ -370,7 +370,7 @@ static inline void page_pool_free_va(struct page_pool *pool, void *va,
  * Fetch the DMA address of the page. The page pool to which the page belongs
  * must had been created with PP_FLAG_DMA_MAP.
  */
-static inline dma_addr_t page_pool_get_dma_addr(struct page *page)
+static inline dma_addr_t page_pool_get_dma_addr(const struct page *page)
 {
 	dma_addr_t ret = page->dma_addr;
 
diff --git a/net/core/page_pool.c b/net/core/page_pool.c
index 4c175091fc0a..273c24429bce 100644
--- a/net/core/page_pool.c
+++ b/net/core/page_pool.c
@@ -123,9 +123,9 @@ int page_pool_ethtool_stats_get_count(void)
 }
 EXPORT_SYMBOL(page_pool_ethtool_stats_get_count);
 
-u64 *page_pool_ethtool_stats_get(u64 *data, void *stats)
+u64 *page_pool_ethtool_stats_get(u64 *data, const void *stats)
 {
-	struct page_pool_stats *pool_stats = stats;
+	const struct page_pool_stats *pool_stats = stats;
 
 	*data++ = pool_stats->alloc_stats.fast;
 	*data++ = pool_stats->alloc_stats.slow;
@@ -383,8 +383,8 @@ static struct page *__page_pool_get_cached(struct page_pool *pool)
 	return page;
 }
 
-static void page_pool_dma_sync_for_device(struct page_pool *pool,
-					  struct page *page,
+static void page_pool_dma_sync_for_device(const struct page_pool *pool,
+					  const struct page *page,
 					  unsigned int dma_sync_size)
 {
 	dma_addr_t dma_addr = page_pool_get_dma_addr(page);
@@ -987,7 +987,7 @@ static void page_pool_release_retry(struct work_struct *wq)
 }
 
 void page_pool_use_xdp_mem(struct page_pool *pool, void (*disconnect)(void *),
-			   struct xdp_mem_info *mem)
+			   const struct xdp_mem_info *mem)
 {
 	refcount_inc(&pool->user_cnt);
 	pool->disconnect = disconnect;
-- 
2.44.0

