Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7445070537B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 May 2023 18:20:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1044D41E6C;
	Tue, 16 May 2023 16:20:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1044D41E6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684254045;
	bh=M2IaCuWuChkboWuFeH5VVgKheTi+aDGjRPI8qOgGHDs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OGAuuz/pE3pb1xkGBBISuPNj/L0nsXfYKv6+CzKC7CVlakj81WgXMAWCBKLTGwspl
	 TGKIGiqU3pNzERtf7tIYjuYBKd+L+PsxT3vb6Z8xVrmVb8FCkZLqW6WJJq9vnmjrl8
	 wMOCZWjqJGX/xoLsX4wzm7W0BqCyhDJ6fQNZpqnnCdL/KTvgTKlZD+xmCGt71jNB8Q
	 bdXpT768/ftEeBA47TzsadDA0xqsRUz0Ec0NrLoEZ2vJKoEwOpAQdh/opPD+Eq/YHn
	 xrznQqz8CO4e5RtfdSUw6ci/Q641oNWmYzsJhOER3DzMyGA7d1MkuJFGnQJttEINuv
	 d95mWCXp0gpug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GKLczmy-4K1k; Tue, 16 May 2023 16:20:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A4E2241E61;
	Tue, 16 May 2023 16:20:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A4E2241E61
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 289C81BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 16:20:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 01A0241E61
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 16:20:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 01A0241E61
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lXkyv-rEzWvZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 May 2023 16:20:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4AB3C41E58
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4AB3C41E58
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 16:20:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="340896640"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="340896640"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 09:20:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="701414320"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="701414320"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orsmga002.jf.intel.com with ESMTP; 16 May 2023 09:20:21 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Tue, 16 May 2023 18:18:36 +0200
Message-Id: <20230516161841.37138-7-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230516161841.37138-1-aleksander.lobakin@intel.com>
References: <20230516161841.37138-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684254026; x=1715790026;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cKf5GIQpwgn4asoKhHVHPT6MqSF8s62d3tlMsMp4IMU=;
 b=HQm4gBupI2U8slTbp/eIhOLgFDcZVo8lrQThOUIwKb2ueTxrPjB1R1zi
 gO58Nuc6CMnnEsfFC5B3N816SYifFvvK4upV2e2C9bD2CEbLXMF1F9gck
 L9PtC3kByS0/AviI+Ak30s57KVCYlUFAJZrpvf2QpXt1jKi3hyebntvND
 E6Ue+/jfAeJMCbfelc6tUZUXuMsgwQOPSyyvUmP3JoJDblM5ThA/I3fqd
 0NDRrrwFE4wowHvbOS9CU5cNLRAu99WhNH/DolVm1JU7hTaHHvWNKB5FA
 rfl21gxFKkH1XgT4HLkbiLLG0kVOKgx/2IMamwiZqEoU2vc0LPJFqT9FW
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HQm4gBup
Subject: [Intel-wired-lan] [PATCH net-next 06/11] net: page_pool: avoid
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
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
index c8ec2f34722b..8435013de06e 100644
--- a/include/net/page_pool.h
+++ b/include/net/page_pool.h
@@ -46,6 +46,9 @@
 					* device driver responsibility
 					*/
 #define PP_FLAG_PAGE_FRAG	BIT(2) /* for page frag feature */
+#define PP_FLAG_DMA_MAYBE_SYNC	BIT(3) /* Internal, should not be used in the
+					* drivers
+					*/
 #define PP_FLAG_ALL		(PP_FLAG_DMA_MAP |\
 				 PP_FLAG_DMA_SYNC_DEV |\
 				 PP_FLAG_PAGE_FRAG)
diff --git a/net/core/page_pool.c b/net/core/page_pool.c
index e212e9d7edcb..57f323dee6c4 100644
--- a/net/core/page_pool.c
+++ b/net/core/page_pool.c
@@ -175,6 +175,10 @@ static int page_pool_init(struct page_pool *pool,
 		/* pool->p.offset has to be set according to the address
 		 * offset used by the DMA engine to start copying rx data
 		 */
+
+		/* Try to avoid calling no-op syncs */
+		pool->p.flags |= PP_FLAG_DMA_MAYBE_SYNC;
+		pool->p.flags &= ~PP_FLAG_DMA_SYNC_DEV;
 	}
 
 	if (PAGE_POOL_DMA_USE_PP_FRAG_COUNT &&
@@ -323,6 +327,12 @@ static bool page_pool_dma_map(struct page_pool *pool, struct page *page)
 
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
