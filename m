Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF8C70537D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 May 2023 18:20:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D738822B8;
	Tue, 16 May 2023 16:20:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D738822B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684254051;
	bh=+VNBLbzwrD3VUzLOCA8NeN0zYY6SsrFC374aO4rg/HU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pz6dZeH//Q2bNmlK/DN00BwfZH7OpO/XItwLYN8zQbCqMvTMrwAvkA2j2ZNTQsTCq
	 o0oEnv5JuXuM/OBMFKFCsbCvym+cvZsqxibIDcdqscbnyQYFd599/aF4HfxqF+Dc0t
	 cjzKjI1tmkr1uA1hBkWIw/k6b7StWiwY40Nfo6fAM671y5A2ptoZOwsqFOeI7Y1FdP
	 8Ps4BG3KUll9FpiO9XcmDhD3K1+FIFLYnmjJ9vQgBGpJsYEIC+Fm+rxTgKrw7x3+iP
	 a5dkcpjMi9u/yZvtP2ZkYDvoPT3mNa4iBULJOEztKGeng48zfOtX8Fh9nEUVTC0Sk+
	 7bKBihgyjWvwA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mg7YtiBKbI4F; Tue, 16 May 2023 16:20:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D730A821D6;
	Tue, 16 May 2023 16:20:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D730A821D6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7027B1BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 16:20:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4659141516
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 16:20:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4659141516
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id re3o5Yyg-MLX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 May 2023 16:20:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3EFBF414C8
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3EFBF414C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 16:20:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="340896700"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="340896700"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 09:20:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="701414465"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="701414465"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orsmga002.jf.intel.com with ESMTP; 16 May 2023 09:20:26 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Tue, 16 May 2023 18:18:37 +0200
Message-Id: <20230516161841.37138-8-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230516161841.37138-1-aleksander.lobakin@intel.com>
References: <20230516161841.37138-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684254044; x=1715790044;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=peHjIVqWZsKOM9GvZy/kWyMJy5lP3sTMvyjBMczKWBI=;
 b=kP5n93YVX1C+UZGMZOO9+gzKzVnCuQmn1lmaiUQvBJHjedkBVCR4JfvV
 gG+YR1u30xByW1gSP3bE0No875UX+zdMbHRXLuC1pgcKEksxSpHEJ/GxI
 P7ffCp671CdtqvFIhMk6vH9R+QolGYyK2iuMDfJIbaLhXcko9+eW/Ejt3
 eJm0uoZaIwTFGhMq3fqk3c2FPohpa9qDkO1geK5UeYJvTpuCRJVBnO2Ex
 d869f8yLH/E/UJUJwGsCY1sGmol9fHWtzAr3lnU7Q8lwkOG8IKMP6B9dS
 rOeKYYgR6lbxf/vW+3+qvA8LEM5FeW0b1wcQx5lEKp623KwlibmdReXxn
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kP5n93YV
Subject: [Intel-wired-lan] [PATCH net-next 07/11] net: page_pool: add
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
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
 include/net/page_pool.h | 59 ++++++++++++++++++++++++++++++++++++++---
 1 file changed, 55 insertions(+), 4 deletions(-)

diff --git a/include/net/page_pool.h b/include/net/page_pool.h
index 8435013de06e..f740c50b661f 100644
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
@@ -363,7 +363,7 @@ static inline void page_pool_recycle_direct(struct page_pool *pool,
 #define PAGE_POOL_DMA_USE_PP_FRAG_COUNT	\
 		(sizeof(dma_addr_t) > sizeof(unsigned long))
 
-static inline dma_addr_t page_pool_get_dma_addr(struct page *page)
+static inline dma_addr_t page_pool_get_dma_addr(const struct page *page)
 {
 	dma_addr_t ret = page->dma_addr;
 
@@ -380,6 +380,57 @@ static inline void page_pool_set_dma_addr(struct page *page, dma_addr_t addr)
 		page->dma_addr_upper = upper_32_bits(addr);
 }
 
+/**
+ * page_pool_dma_sync_for_cpu - sync Rx page for CPU after it's written by HW
+ * @pool: page_pool which this page belongs to
+ * @page: page to sync
+ * @dma_sync_size: size of the data written to the page
+ *
+ * Can be used as a shorthand to sync Rx pages before accessing them in the
+ * driver. Caller must ensure the pool was created with %PP_FLAG_DMA_MAP.
+ */
+static inline void page_pool_dma_sync_for_cpu(const struct page_pool *pool,
+					      const struct page *page,
+					      u32 dma_sync_size)
+{
+	dma_sync_single_range_for_cpu(pool->p.dev,
+				      page_pool_get_dma_addr(page),
+				      pool->p.offset, dma_sync_size,
+				      page_pool_get_dma_dir(pool));
+}
+
+/**
+ * page_pool_dma_maybe_sync_for_cpu - sync Rx page for CPU if needed
+ * @pool: page_pool which this page belongs to
+ * @page: page to sync
+ * @dma_sync_size: size of the data written to the page
+ *
+ * Performs DMA sync for CPU, but only when required (swiotlb, IOMMU etc.).
+ */
+static inline void
+page_pool_dma_maybe_sync_for_cpu(const struct page_pool *pool,
+				 const struct page *page, u32 dma_sync_size)
+{
+	if (pool->p.flags & PP_FLAG_DMA_SYNC_DEV)
+		page_pool_dma_sync_for_cpu(pool, page, dma_sync_size);
+}
+
+/**
+ * page_pool_dma_sync_for_cpu - sync full Rx page for CPU
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
