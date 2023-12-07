Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 40834808E92
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 18:22:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C353583D56;
	Thu,  7 Dec 2023 17:22:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C353583D56
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701969768;
	bh=d7JHkYIe5zU8UYYLuXIu/D9KExTFZNKavbfWEgA5hIQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MpJLk7utQ570euIrW++GbjfBGZSYwq/X3kxd+u7yIcEqpt22ue0dLZpEe88RBKKhF
	 FYPTyP0FGwzHQpOcGPSUhe3lgkueisxoZRIUYwLpLVPHZHH7DhxyfFRTlrTaS5RbmY
	 GJKPaA3DTjJ8x8OmH35QgUkJUmkoKNdxk5kYM3IASow4K3/UrhILfPZ3qf6umSzpb1
	 F2DSdZVfCULRGFouNV5CdtuF3stWCzz264qEUACsT12UBWQ3Cb3/jj2fuj74fi0mnQ
	 OAyp0dRYUpk0nlh8dN+KKqYll0ctVhhbCsUJH/R/9lxTpsOw0zvFWoEutrWjqGs6ZH
	 0df54hvDqZFAQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OgYtelB0KHS9; Thu,  7 Dec 2023 17:22:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A5E1283D22;
	Thu,  7 Dec 2023 17:22:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A5E1283D22
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 04E5A1BF380
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 17:22:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CFF6A60A5A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 17:22:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CFF6A60A5A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FDk-Q8EtJ4-V for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 17:22:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2958A60AB1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 17:22:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2958A60AB1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="374434894"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="374434894"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 09:22:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="721548585"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="721548585"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orsmga003.jf.intel.com with ESMTP; 07 Dec 2023 09:22:20 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu,  7 Dec 2023 18:20:04 +0100
Message-ID: <20231207172010.1441468-7-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231207172010.1441468-1-aleksander.lobakin@intel.com>
References: <20231207172010.1441468-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701969746; x=1733505746;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/rE06udeycycWY+Ei4xzWZAaWLlo6Jk3Qr9X4M6665I=;
 b=L9xw8Lo3BrKzxRnd+GeAKKYILyb6x/3xC6cEcZouT+SamS+OxesemQO4
 iUhnPveieaT6Ldan0VPqnXtr7dkSWfU9NwP0FJ9AbVHFbC4ZnaWPYEkOn
 IVo4fSmeevivzH5Mh5/pp1XZ0K1/OKa1pAd4jbiCoQfcOyx/65sc/wkSX
 df5f28U+v4D2leO3INH6Jke2qtfPc4egOMpguq/O5SmLN8fbHGha04lLf
 wV+81gOv6sVuvanYUnw0eKBIA/uo/MguyIuCobfWNRajz7wfByKWh/Eof
 pyS1uM1MI4JCMFVe3/EQIHr5zw9hRcsYr8iwnoM8CZoB8Hdh3KpCPne9l
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L9xw8Lo3
Subject: [Intel-wired-lan] [PATCH net-next v6 06/12] page_pool: constify
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
 include/net/page_pool/helpers.h | 10 +++++-----
 net/core/page_pool.c            |  8 ++++----
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/include/net/page_pool/helpers.h b/include/net/page_pool/helpers.h
index 7dc65774cde5..c860fad50d00 100644
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
@@ -357,7 +357,7 @@ static inline void page_pool_free_va(struct page_pool *pool, void *va,
  * Fetch the DMA address of the page. The page pool to which the page belongs
  * must had been created with PP_FLAG_DMA_MAP.
  */
-static inline dma_addr_t page_pool_get_dma_addr(struct page *page)
+static inline dma_addr_t page_pool_get_dma_addr(const struct page *page)
 {
 	dma_addr_t ret = page->dma_addr;
 
diff --git a/net/core/page_pool.c b/net/core/page_pool.c
index 59aca3339222..4295aec0be40 100644
--- a/net/core/page_pool.c
+++ b/net/core/page_pool.c
@@ -121,9 +121,9 @@ int page_pool_ethtool_stats_get_count(void)
 }
 EXPORT_SYMBOL(page_pool_ethtool_stats_get_count);
 
-u64 *page_pool_ethtool_stats_get(u64 *data, void *stats)
+u64 *page_pool_ethtool_stats_get(u64 *data, const void *stats)
 {
-	struct page_pool_stats *pool_stats = stats;
+	const struct page_pool_stats *pool_stats = stats;
 
 	*data++ = pool_stats->alloc_stats.fast;
 	*data++ = pool_stats->alloc_stats.slow;
@@ -360,8 +360,8 @@ static struct page *__page_pool_get_cached(struct page_pool *pool)
 	return page;
 }
 
-static void page_pool_dma_sync_for_device(struct page_pool *pool,
-					  struct page *page,
+static void page_pool_dma_sync_for_device(const struct page_pool *pool,
+					  const struct page *page,
 					  unsigned int dma_sync_size)
 {
 	dma_addr_t dma_addr = page_pool_get_dma_addr(page);
-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
