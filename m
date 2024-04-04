Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C9D898B6D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Apr 2024 17:46:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0841E41BFF;
	Thu,  4 Apr 2024 15:46:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JDmZoANl5BsG; Thu,  4 Apr 2024 15:46:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 44C9141C49
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712245571;
	bh=MfoG59Ii3GnXIympG3Q0TE5v8Q+0lb0NrDw41syBAIM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hpI3lv2RqKDBk8TUWw3yDHEQ0CuC0YQ3gqo8/vDO0TJ3L7agyY+Q/WLdDjY5u0yO6
	 wahZ8xHU9MxM+R13K/cLQKb8b9uBdYN3s8QmU8kTiqiNvvmAC1XwQK90+Iq11eAHR+
	 lMHQDVwHHZWptA7bADn1rUIv+/FYRap2KMDq5jmLqAg/sdw1QrkDBdRSLu/Q0VtC8i
	 Qxd99mTscGIfWUb60+O/3p4oC8cK9aGQIE9O9ueSjSx7OKGFqGQuYu5FnlQ4ba2aZe
	 f/DDpZECpxPfuPUvKOIXdgEWmgbWdBAGUuR4HqA0Zi2kWyv4CRUuXHex9BHxpFA/9i
	 4yI81FYN9hMAA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 44C9141C49;
	Thu,  4 Apr 2024 15:46:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7B0571BF232
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 15:46:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 683B16079E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 15:46:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pbP703yXEeXI for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Apr 2024 15:46:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7EF2D607FD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7EF2D607FD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7EF2D607FD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 15:46:07 +0000 (UTC)
X-CSE-ConnectionGUID: 0HuRvDYkRCmamvgGGi0LNg==
X-CSE-MsgGUID: 422pbYEERS6hS1Y5FGDx/w==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="11312213"
X-IronPort-AV: E=Sophos;i="6.07,179,1708416000"; d="scan'208";a="11312213"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 08:46:07 -0700
X-CSE-ConnectionGUID: wt3vYwmsS5qJdmZ4xoLx5g==
X-CSE-MsgGUID: ewCrjZoNT9yCK/IOl1Mu1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,179,1708416000"; d="scan'208";a="23288081"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa005.fm.intel.com with ESMTP; 04 Apr 2024 08:46:03 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu,  4 Apr 2024 17:43:58 +0200
Message-ID: <20240404154402.3581254-6-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240404154402.3581254-1-aleksander.lobakin@intel.com>
References: <20240404154402.3581254-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712245568; x=1743781568;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=h2xX5viKcqXvvZA3Hz2In9WNHWkHFwMdaq3Z6SIdJfY=;
 b=g802UKenTYy7sPQiAeXSjyMonJp1sPuS6Zu45xujKveOL+OmgkluvDTH
 F7SqHNhWQSeiQqwkUhzwHMLMfUZ33oD/LF0oYISXpLz70i8DE4DdYz/By
 iOf3OBn8EFqrthh/PQa6huvf3moJL2Do8Jiet0E6jJ9D3tRo5GAb1NlFY
 ICwr4qHfafVR5m8fwW6y4o6VT5dtQ7m5tZLI3Qp+44aQsq1Xh5Mky/Dml
 G+3zcrzucV9ZlHJO1grHlZxdI1IoDN5J9FLybH62Di1bJ0Hc89q263JnN
 o3m9S3iy2cVQCW4tk3cHpLefFA8wFBhn5yQJUOtcnKyLEKjg//De0OGR8
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g802UKen
Subject: [Intel-wired-lan] [PATCH net-next v9 5/9] page_pool: constify some
 read-only function arguments
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
 netdev@vger.kernel.org, Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Yunsheng Lin <linyunsheng@huawei.com>, intel-wired-lan@lists.osuosl.org,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Christoph Lameter <cl@linux.com>,
 Andrew Morton <akpm@linux-foundation.org>, Vlastimil Babka <vbabka@suse.cz>
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

