Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5936F87662C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Mar 2024 15:19:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42E44836C3;
	Fri,  8 Mar 2024 14:19:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PlOHUxV6ZPPO; Fri,  8 Mar 2024 14:19:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3FE55834C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709907551;
	bh=8IKiagwr7uHoWJM5jyKs0QceGzjKqrUK/lCAKv4UPXs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cdKddhoa6WUM7p1AqXgm09UDYEz+t8fGTQ94KAkAFjhljqn7U7OQmOFIKMEHGYHIS
	 8wxR7QCuCdul7Q/zJt47ZSZ6w8oU80Dqt8sOi0817wskKTxE/YN+OTWodsk/rkwMlo
	 8ORC3/F6pZBJV14BsZgeytftIyLUFBZIK00VH3tjkuDZ6Ggq5xxqaN2bK1hum6JqVV
	 07E1/9eHVAD8UX6lQ6XSDIOCkDjetAkecAfqZsEUgBndYLV+3W0dEyVkkWcr9p212l
	 Gg7hLn+5U7+9mc7bg/Lx8iOzkXiB5MI5izjJHnGHN/Bemaz5Bta/HQ2+FYUmEBvdr7
	 ozX+qLPcLxinQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3FE55834C7;
	Fri,  8 Mar 2024 14:19:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0AEE41BF279
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 14:19:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EA49260A40
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 14:19:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AKh84ASdaRBc for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Mar 2024 14:19:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 236BE60855
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 236BE60855
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 236BE60855
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 14:19:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4504568"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; 
   d="scan'208";a="4504568"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 06:19:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="15177209"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa005.jf.intel.com with ESMTP; 08 Mar 2024 06:19:02 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Fri,  8 Mar 2024 15:18:29 +0100
Message-ID: <20240308141833.2966600-5-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240308141833.2966600-1-aleksander.lobakin@intel.com>
References: <20240308141833.2966600-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709907546; x=1741443546;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NuwKXsk7HN65dVrdXD906hvyhTTnbT58/G5pwuT8NkI=;
 b=UYrI/yD13i4jDAG75EhN3qzerMoUjz52sVBIgqWhAm9adjQiUWxub/AE
 nGT2+s9uvjY/C2QUopErewL6pAXaSLy3HTv6J+T11F5Q3n09kQ8weZgtz
 R8TOCHE7WfFcnQO5WQz7wbPFF4rCV1Uw/P++0jUvCK4hl9WSAyoJzPikL
 aivJDmUIlnQ8CqHaBCxfskJv26L1XTb6/1KdNwL0YwH/QU6n9yy8sSHyA
 9ghVkFKeW+pf75d1A7K75MrUG4kuByFISQG6952NYqWxVfiXpaB7kbIV1
 yZHlwVwZ8QFlwNBINa2TKAiDH6JwjOsxmE5x51nrSB+RUmOGOiRplQvDz
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UYrI/yD1
Subject: [Intel-wired-lan] [PATCH net-next v8 4/8] page_pool: constify some
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Jesper Dangaard Brouer <hawk@kernel.org>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Yunsheng Lin <linyunsheng@huawei.com>, intel-wired-lan@lists.osuosl.org,
 David Christensen <drc@linux.vnet.ibm.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com
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
index d706fe5548df..a8a1c087f048 100644
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
@@ -954,7 +954,7 @@ static void page_pool_release_retry(struct work_struct *wq)
 }
 
 void page_pool_use_xdp_mem(struct page_pool *pool, void (*disconnect)(void *),
-			   struct xdp_mem_info *mem)
+			   const struct xdp_mem_info *mem)
 {
 	refcount_inc(&pool->user_cnt);
 	pool->disconnect = disconnect;
-- 
2.44.0

