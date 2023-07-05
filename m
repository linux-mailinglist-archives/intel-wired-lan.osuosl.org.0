Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C5ACF7488A4
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jul 2023 17:58:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 62A7682154;
	Wed,  5 Jul 2023 15:58:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 62A7682154
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688572682;
	bh=faKszPNXFsgXcYllPyKJ7nVVB3eBiFvMnXRIMNn5Rmc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HGof149Ce+Qz1A1akcT4nBp4zrWdYKrCgCMGQQ7K1ZDyhLEYpbW4Vr44QyRK0SVQo
	 QtiN1w/phdhPvSuCgyGqESPB/R/if0bJJ0Qz4gXEfhUIy00tSp9JQOmCiNVFNWKoma
	 x4k+mZwAqH3l8a6RkzU2SqI3VvhWX8V9mgfXQo9T1ltEFeOfKy4OQ3cPxHcuwLcczT
	 H3lnc5kdtu1fbAKdEuAIc/FVz7XVMfL88aA/NhMXzzZw6Z/xiwW16S59lk8GJ6nx1D
	 LGdTlCm7seiYRyds+aT0MSUJ3ljM5GobDsoJ6B+QWbem0A4tG21riPexfMekxH7e2U
	 0bYW9tSwfYi3A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BXlcYLpk7wxI; Wed,  5 Jul 2023 15:58:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 237BD82090;
	Wed,  5 Jul 2023 15:58:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 237BD82090
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 117A81BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 15:57:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DF6324054E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 15:57:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DF6324054E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6CZRr8NDk2cG for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jul 2023 15:57:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 27A6240529
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 27A6240529
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 15:57:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="366863477"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="366863477"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 08:57:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="789205581"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="789205581"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmsmga004.fm.intel.com with ESMTP; 05 Jul 2023 08:57:42 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Wed,  5 Jul 2023 17:55:46 +0200
Message-ID: <20230705155551.1317583-5-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230705155551.1317583-1-aleksander.lobakin@intel.com>
References: <20230705155551.1317583-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688572666; x=1720108666;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dXx6qNLsL96U/ON3QIyHjka+O/2oSNQ2rn+/wVsm/FI=;
 b=PdcdsyEMsfxrN1tkghEF1MMXSHlkeLDaZCZTXYpoMiu2CIi+VZQaJRao
 1luJIV/rrb4aIgqKmOXn6BUgTDaH0A49BjyfbJeLrd3svWIz5vHgVZzNU
 TJ6yGfzyPd/J+SGXE0gtCOlemmBYhH5xEgp022hLYjpcDzzCaHgrm+KYp
 xQU93sVmdzfRIkXvpqfTj2AOYeYbNIqlxAsSThCUlLTz97x8CNQwWdqv1
 CD59KZRI/KGpnQjffCV6AYi5vXBKg7sd+wOIex2bzkcBT8VUnToq+wNPS
 uwO6ooWggiqPqhjK6gWy3wnCLc6d5WbVLRCW9oOCjokR1Uf/BmDLUZhNZ
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PdcdsyEM
Subject: [Intel-wired-lan] [PATCH RFC net-next v4 4/9] net: page_pool: add
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
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Yunsheng Lin <linyunsheng@huawei.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, David Christensen <drc@linux.vnet.ibm.com>
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
at all.
Also constify pointer arguments of page_pool_get_dma_dir() and
page_pool_get_dma_addr() to give a bit more room for optimization,
as both of them are read-only.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/net/page_pool.h | 49 ++++++++++++++++++++++++++++++++++++++---
 1 file changed, 46 insertions(+), 3 deletions(-)

diff --git a/include/net/page_pool.h b/include/net/page_pool.h
index ff3772fab707..89acf9e33639 100644
--- a/include/net/page_pool.h
+++ b/include/net/page_pool.h
@@ -304,8 +304,8 @@ static inline void *page_pool_dev_cache_alloc(struct page_pool *pool,
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
@@ -460,7 +460,7 @@ static inline void page_pool_cache_free(struct page_pool *pool, void *data,
 	page_pool_put_page(pool, virt_to_head_page(data), -1, allow_direct);
 }
 
-static inline dma_addr_t page_pool_get_dma_addr(struct page *page)
+static inline dma_addr_t page_pool_get_dma_addr(const struct page *page)
 {
 	dma_addr_t ret = page->dma_addr;
 
@@ -477,6 +477,49 @@ static inline void page_pool_set_dma_addr(struct page *page, dma_addr_t addr)
 		page->dma_addr_upper = upper_32_bits(addr);
 }
 
+/**
+ * __page_pool_dma_sync_for_cpu - sync Rx page for CPU after it's written by HW
+ * @pool: &page_pool the page belongs to
+ * @page: page to sync
+ * @offset: offset from page start to "hard" start if using frags
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
+						u32 offset, u32 dma_sync_size)
+{
+	dma_sync_single_range_for_cpu(pool->p.dev,
+				      page_pool_get_dma_addr(page),
+				      offset + pool->p.offset, dma_sync_size,
+				      page_pool_get_dma_dir(pool));
+}
+
+/**
+ * page_pool_dma_sync_for_cpu - sync Rx page for CPU if needed
+ * @pool: &page_pool the page belongs to
+ * @page: page to sync
+ * @offset: offset from page start to "hard" start if using frags
+ * @dma_sync_size: size of the data written to the page
+ *
+ * Performs DMA sync for CPU, but *only* when:
+ * 1) page_pool was created with %PP_FLAG_DMA_SYNC_DEV to manage DMA syncs;
+ * 2) AND sync shortcut is not available (IOMMU, swiotlb, non-coherent DMA, ...)
+ */
+static inline void page_pool_dma_sync_for_cpu(const struct page_pool *pool,
+					      const struct page *page,
+					      u32 offset, u32 dma_sync_size)
+{
+	if (pool->p.flags & PP_FLAG_DMA_SYNC_DEV)
+		__page_pool_dma_sync_for_cpu(pool, page, offset,
+					     dma_sync_size);
+}
+
 static inline bool is_page_pool_compiled_in(void)
 {
 #ifdef CONFIG_PAGE_POOL
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
