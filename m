Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A93716610
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 17:04:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E020683CD3;
	Tue, 30 May 2023 15:04:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E020683CD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685459091;
	bh=fkGWT0lpQyvcix5MSbtv79R0jIDk6MWnN4bhgn3SF10=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Uxy1yuWZMxfoxCuZk/ientSGFuhHAYjaDJIwfymBFi5oN0CpFmJHrnGM+2d8ZVDJL
	 SjYJViP2seyXevHxJiHFAZDNKBIzL7HpKALMHaiAtEYZzt0s/QaD2I/hAMYTcSXWC3
	 Mz0/PIIX09ozvmi2N7ZQuygR743bYHOcjGiO/6Ij2bKoKrA0RqwMX68kmDI9qt5khE
	 jwLEFFJzBnyMrd6Vb6Nv31cHKtO5DttOKcfn+wpVzYqXZIpR09tyfkceRXbKVkcKGG
	 IJmUTih8wLW3c5YQSzqCfH2yiiKAFOdVeD8yGpJvXz0CiBZs2U+PdFzGPAeFiJWyio
	 DqUuOeJlSRJfA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MZ0ivK8mHhRw; Tue, 30 May 2023 15:04:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A2018817A3;
	Tue, 30 May 2023 15:04:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2018817A3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 109A51BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 15:04:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EBB1B40901
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 15:04:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBB1B40901
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3y_eVuxpSjaM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 15:04:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3060E40574
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3060E40574
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 15:04:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="358192518"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="358192518"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 08:03:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="796304173"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="796304173"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by FMSMGA003.fm.intel.com with ESMTP; 30 May 2023 08:03:31 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Tue, 30 May 2023 17:00:30 +0200
Message-Id: <20230530150035.1943669-8-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230530150035.1943669-1-aleksander.lobakin@intel.com>
References: <20230530150035.1943669-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685459074; x=1716995074;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Qc32wr3Sot3sTRrntPIfsglvVZOOpvIVVghP/EIoq2w=;
 b=k5i1Sb67MeSrFNE8E8jr6Jty4T/qrKYUZY0vLxgQ4gLS6nfQvy0GokFs
 d5A0N5RE1aiL7H3d+FRQS13dVV7VpkhSxFJFTCfL1sOzJpxQ5wQEukHGr
 mAwj/ZXidiOJYLaFYef0EvwWOwXOklmnuEchHJ6ga8wCX4qdxUzIM0a9E
 bcXY9+PJ2zPwXx6Otremp/VQbMi4mXFUs7XqADGKadhrmMYrBi2gk6wOg
 w8TMgoj7TGEUgV86gjf6Lc8qXht5Itayn0DuK5WYKEToqtYt2BIlXg/WO
 UFUEdsIg0SrNrGld4Ff6BJhCRVeB6FevAIYAxQstqmtpMfANu6HJoulZv
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=k5i1Sb67
Subject: [Intel-wired-lan] [PATCH net-next v3 07/12] net: page_pool: avoid
 calling no-op externals when possible
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

Turned out page_pool_put{,_full}_page() can burn quite a bunch of cycles
even when on DMA-coherent platforms (like x86) with no active IOMMU or
swiotlb, just for the call ladder.
Indeed, it's

page_pool_put_page()
  page_pool_put_defragged_page()                  <- external
    __page_pool_put_page()
      page_pool_dma_sync_for_device()             <- non-inline
        dma_sync_single_range_for_device()
          dma_sync_single_for_device()            <- external
            dma_direct_sync_single_for_device()
              dev_is_dma_coherent()               <- exit

For the inline functions, no guarantees the compiler won't uninline them
(they're clearly not one-liners and sometimes compilers uninline even
2 + 2). The first external call is necessary, but the rest 2+ are done
for nothing each time, plus a bunch of checks here and there.
Since Page Pool mappings are long-term and for one "device + addr" pair
dma_need_sync() will always return the same value (basically, whether it
belongs to an swiotlb pool), addresses can be tested once right after
they're obtained and the result can be reused until the page is unmapped.
Define new PP flag, which will mean "do DMA syncs for device, but only
when needed" and turn it on by default when the driver asks to sync
pages. When a page is mapped, check whether it needs syncs and if so,
replace that "sync when needed" back to "always do syncs" globally for
the whole pool (better safe than sorry). As long as a pool has no pages
requiring DMA syncs, this cuts off a good piece of calls and checks.
On my x86_64, this gives from 2% to 5% performance benefit with no
negative impact for cases when IOMMU is on and the shortcut can't be
used.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/net/page_pool.h |  3 +++
 net/core/page_pool.c    | 10 ++++++++++
 2 files changed, 13 insertions(+)

diff --git a/include/net/page_pool.h b/include/net/page_pool.h
index 2a9ce2aa6eb2..ee895376270e 100644
--- a/include/net/page_pool.h
+++ b/include/net/page_pool.h
@@ -46,6 +46,9 @@
 					* device driver responsibility
 					*/
 #define PP_FLAG_PAGE_FRAG	BIT(2) /* for page frag feature */
+#define PP_FLAG_DMA_MAYBE_SYNC	BIT(3) /* Internal, should not be used in
+					* drivers
+					*/
 #define PP_FLAG_ALL		(PP_FLAG_DMA_MAP |\
 				 PP_FLAG_DMA_SYNC_DEV |\
 				 PP_FLAG_PAGE_FRAG)
diff --git a/net/core/page_pool.c b/net/core/page_pool.c
index a3e12a61d456..102b5e3718c2 100644
--- a/net/core/page_pool.c
+++ b/net/core/page_pool.c
@@ -198,6 +198,10 @@ static int page_pool_init(struct page_pool *pool,
 		/* pool->p.offset has to be set according to the address
 		 * offset used by the DMA engine to start copying rx data
 		 */
+
+		/* Try to avoid calling no-op syncs */
+		pool->p.flags |= PP_FLAG_DMA_MAYBE_SYNC;
+		pool->p.flags &= ~PP_FLAG_DMA_SYNC_DEV;
 	}
 
 	if (PAGE_POOL_DMA_USE_PP_FRAG_COUNT &&
@@ -346,6 +350,12 @@ static bool page_pool_dma_map(struct page_pool *pool, struct page *page)
 
 	page_pool_set_dma_addr(page, dma);
 
+	if ((pool->p.flags & PP_FLAG_DMA_MAYBE_SYNC) &&
+	    dma_need_sync(pool->p.dev, dma)) {
+		pool->p.flags |= PP_FLAG_DMA_SYNC_DEV;
+		pool->p.flags &= ~PP_FLAG_DMA_MAYBE_SYNC;
+	}
+
 	if (pool->p.flags & PP_FLAG_DMA_SYNC_DEV)
 		page_pool_dma_sync_for_device(pool, page, pool->p.max_len);
 
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
