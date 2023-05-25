Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D46D710CB4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 May 2023 14:59:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 270D36169A;
	Thu, 25 May 2023 12:59:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 270D36169A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685019562;
	bh=VKLt0AReoq21o8rdNtIIjkc9TNAah6XvWlSgwJ0CbmQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wRcPgDQpVQWs1pqlUoFsrbK8E9IV4aEZczL4uT37A4uBWdc/3Uu7iXaDeQ+0J1u1X
	 doY5K0DjIBWeYdiv2lVs1Nz05LGI7BIjkqL0f8HWiMlhfVBRMIWWd8y49N/DHY2ZvI
	 EKQYs3kKKhaP9Y7c9jH/ow3Fm24fGePz/jmaeTIGkzxSRW/CCHkrFB8M2KqKp1Pp29
	 gcRbkl9FNBDdUDZuIdbhbs/1oIvrGko3743J5AEJt278dyILapnaijo5as4gOzzfGn
	 xn+1VsUbqZscmfCZ4VnOpbIyy3saf7OPFvD2ZhmA+4nElZnOXYGlzoK+Xo3KqPn4Pq
	 QEKKWrV0YUFHw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WESgTm2vBV56; Thu, 25 May 2023 12:59:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB1CC60BA8;
	Thu, 25 May 2023 12:59:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB1CC60BA8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0B06B1BF215
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 May 2023 12:59:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C90574246F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 May 2023 12:59:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C90574246F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tMSxRRxfb8ah for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 May 2023 12:59:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 29525426B1
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 29525426B1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 May 2023 12:59:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="351384434"
X-IronPort-AV: E=Sophos;i="6.00,191,1681196400"; d="scan'208";a="351384434"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2023 05:59:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="817075173"
X-IronPort-AV: E=Sophos;i="6.00,191,1681196400"; d="scan'208";a="817075173"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmsmga002.fm.intel.com with ESMTP; 25 May 2023 05:59:01 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu, 25 May 2023 14:57:42 +0200
Message-Id: <20230525125746.553874-9-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230525125746.553874-1-aleksander.lobakin@intel.com>
References: <20230525125746.553874-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685019545; x=1716555545;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mEj5fLVJVo9/4L7Z/kE/pHEwiAz1HdRlcuBfDmRGsuA=;
 b=XT4KTddmmhwrSR3G8pUQyG6vwCgZXpy8Uf+J0KTsrHWtUr4DpeMwoA03
 7BBarbvdro5gGeZqBLvTgNOB+B9/4VWJq5ND8OuxlFQfmqHjje2tb+k/w
 SPFWUZwosHXeDk/+5jb0lg0czco5ROu5NOorIUtSrTPM1wUXqy+GEBvux
 OWAmDcEcU5vgn7aoMpg+900ATQo6nOU35DDBtObRZbg57ft3JtnBw0dGJ
 WXFu1zxy2vtVxL5onCQ1zYsz/cG9SaMHC0O6nMe412vN6ZKgCnvINNI3E
 5nCE1O1ReUvPHCWkd3rGold+l5d2xv/CB9bh5XNZyvjhwhgPzbxQN4qhq
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XT4KTddm
Subject: [Intel-wired-lan] [PATCH net-next v2 08/12] net: page_pool: add
 DMA-sync-for-CPU inline helpers
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
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Christoph Hellwig <hch@lst.de>, Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Each driver is responsible for syncing buffers written by HW for CPU
before accessing them. Almost each PP-enabled driver uses the same
pattern, which could be shorthanded into a static inline to make driver
code a little bit more compact.
Introduce a couple such functions. The first one takes the actual size
of the data written by HW and is the main one to be used on Rx. The
second does the same, but only if the PP performs DMA synchronizations
at all. The last one picks max_len from the PP params and is designed
for more extreme cases when the size is unknown, but the buffer still
needs to be synced.
Also constify pointer arguments of page_pool_get_dma_dir() and
page_pool_get_dma_addr() to give a bit more room for optimization,
as both of them are read-only.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/net/page_pool.h | 64 ++++++++++++++++++++++++++++++++++++++---
 1 file changed, 60 insertions(+), 4 deletions(-)

diff --git a/include/net/page_pool.h b/include/net/page_pool.h
index 08e9571d2545..080778e8cf84 100644
--- a/include/net/page_pool.h
+++ b/include/net/page_pool.h
@@ -32,7 +32,7 @@
 
 #include <linux/mm.h> /* Needed by ptr_ring */
 #include <linux/ptr_ring.h>
-#include <linux/dma-direction.h>
+#include <linux/dma-mapping.h>
 
 #define PP_FLAG_DMA_MAP		BIT(0) /* Should page_pool do the DMA
 					* map/unmap
@@ -237,8 +237,8 @@ static inline struct page *page_pool_dev_alloc_frag(struct page_pool *pool,
 /* get the stored dma direction. A driver might decide to treat this locally and
  * avoid the extra cache line from page_pool to determine the direction
  */
-static
-inline enum dma_data_direction page_pool_get_dma_dir(struct page_pool *pool)
+static inline enum dma_data_direction
+page_pool_get_dma_dir(const struct page_pool *pool)
 {
 	return pool->p.dma_dir;
 }
@@ -361,7 +361,7 @@ static inline void page_pool_recycle_direct(struct page_pool *pool,
 #define PAGE_POOL_DMA_USE_PP_FRAG_COUNT	\
 		(sizeof(dma_addr_t) > sizeof(unsigned long))
 
-static inline dma_addr_t page_pool_get_dma_addr(struct page *page)
+static inline dma_addr_t page_pool_get_dma_addr(const struct page *page)
 {
 	dma_addr_t ret = page->dma_addr;
 
@@ -378,6 +378,62 @@ static inline void page_pool_set_dma_addr(struct page *page, dma_addr_t addr)
 		page->dma_addr_upper = upper_32_bits(addr);
 }
 
+/**
+ * __page_pool_dma_sync_for_cpu - sync Rx page for CPU after it's written by HW
+ * @pool: page_pool which this page belongs to
+ * @page: page to sync
+ * @dma_sync_size: size of the data written to the page
+ *
+ * Can be used as a shorthand to sync Rx pages before accessing them in the
+ * driver. Caller must ensure the pool was created with %PP_FLAG_DMA_MAP.
+ * Note that this version performs DMA sync unconditionally, even if the
+ * associated PP doesn't perform sync-for-device. Consider the non-underscored
+ * version first if unsure.
+ */
+static inline void __page_pool_dma_sync_for_cpu(const struct page_pool *pool,
+						const struct page *page,
+						u32 dma_sync_size)
+{
+	dma_sync_single_range_for_cpu(pool->p.dev,
+				      page_pool_get_dma_addr(page),
+				      pool->p.offset, dma_sync_size,
+				      page_pool_get_dma_dir(pool));
+}
+
+/**
+ * page_pool_dma_sync_for_cpu - sync Rx page for CPU if needed
+ * @pool: page_pool which this page belongs to
+ * @page: page to sync
+ * @dma_sync_size: size of the data written to the page
+ *
+ * Performs DMA sync for CPU, but *only* when:
+ * 1) page_pool was created with %PP_FLAG_DMA_SYNC_DEV to manage DMA syncs;
+ * 2) AND sync shortcut is not available (IOMMU, swiotlb, non-coherent DMA, ...)
+ */
+static inline void page_pool_dma_sync_for_cpu(const struct page_pool *pool,
+					      const struct page *page,
+					      u32 dma_sync_size)
+{
+	if (pool->p.flags & PP_FLAG_DMA_SYNC_DEV)
+		__page_pool_dma_sync_for_cpu(pool, page, dma_sync_size);
+}
+
+/**
+ * page_pool_dma_sync_full_for_cpu - sync full Rx page for CPU (if needed)
+ * @pool: page_pool which this page belongs to
+ * @page: page to sync
+ *
+ * Performs sync for the entire length exposed to hardware. Can be used on
+ * DMA errors or before freeing the page, when it's unknown whether the HW
+ * touched the buffer.
+ */
+static inline void
+page_pool_dma_sync_full_for_cpu(const struct page_pool *pool,
+				const struct page *page)
+{
+	page_pool_dma_sync_for_cpu(pool, page, pool->p.max_len);
+}
+
 static inline bool is_page_pool_compiled_in(void)
 {
 #ifdef CONFIG_PAGE_POOL
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
