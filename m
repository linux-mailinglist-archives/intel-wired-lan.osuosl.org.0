Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE7E7078CD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 May 2023 06:12:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA34C6FF42;
	Thu, 18 May 2023 04:12:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA34C6FF42
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684383141;
	bh=b7upBYxikNLl/2K20USdyoMdy6zVb++0rmkit+NGtEs=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZERnh9DZMH64z4qmIHWI8VYwv4lEL7VjyTEgA8CVBF/FI9qFQDJGv33faJxKGxpt1
	 plDuVBQHcpyDXs+gx6LCT4uj2zXL1+CzTnpvNnFmJr6+b0vUUsVCOYZgFsYQ4JPI06
	 st3PFCV3lyUdIdp0xa2V4M4ztczselrMWDRXGkDmWNLmYEPLtlcmBEfR/f6v7QU3mr
	 MyAcafH2dXYNXyYdw8QJ4isW7r8MuH+72SB0AwuLSHGDPVGl5awOD7zmgmEcyVjOOS
	 4tj2aYPtlQQTxbPxjIt/0VjcVcvbbUPtTP2wKw83JrbmYGmz4IodaegOIveQ68MOIO
	 sIm7geGXefDog==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A4uI0_q-HbHw; Thu, 18 May 2023 04:12:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 637FD61409;
	Thu, 18 May 2023 04:12:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 637FD61409
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6CBF81BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 04:12:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 43286427FB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 04:12:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43286427FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PShjMiP8ZWBU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 May 2023 04:12:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 44FDE427EC
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 44FDE427EC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 04:12:14 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 8BBEB64B37;
 Thu, 18 May 2023 04:12:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D2F1C433EF;
 Thu, 18 May 2023 04:12:12 +0000 (UTC)
Date: Wed, 17 May 2023 21:12:11 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20230517211211.1d1bbd0b@kernel.org>
In-Reply-To: <20230516161841.37138-8-aleksander.lobakin@intel.com>
References: <20230516161841.37138-1-aleksander.lobakin@intel.com>
 <20230516161841.37138-8-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1684383133;
 bh=qGNLvFxonxA6l6xCteXuotmOKPJ70RuXFSolajrmk2Q=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hm2c1q4KPQ2Y4wfEz64Xyu4o/4eQqP+fb6otFMaZFhdttgZtZZ4HzUV6RSJCzWL12
 V8YPPtDhp5WvcVDkMe0l+ifFksDWYM1MTWGFRtxGOxhMVB+40FGt0vQDuTGdb5qQrM
 NrDejuHVEeRKb/p7oqKXEYmQb1tzZoDvdVub2y//s1FqezJK5TsXtyv/phpSy79Ljq
 mFmbZK8Vcrl0IyZS8pxN4DfKF8r0BluVJow3ceUcoXuMTQz+4ku395maKDR2MLdER6
 lKWh9x3CwMkKvJy9LyolkgiV97k3kyYK1FlU4jZuQzg7RPGcs+sxUjorh2PUDuwdbD
 L7kv/o5IBYgYA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=hm2c1q4K
Subject: Re: [Intel-wired-lan] [PATCH net-next 07/11] net: page_pool: add
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
 Christoph Hellwig <hch@lst.de>, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 16 May 2023 18:18:37 +0200 Alexander Lobakin wrote:
> Each driver is responsible for syncing buffers written by HW for CPU
> before accessing them. Almost each PP-enabled driver uses the same
> pattern, which could be shorthanded into a static inline to make driver
> code a little bit more compact.
> Introduce a couple such functions. The first one takes the actual size
> of the data written by HW and is the main one to be used on Rx. The
> second does the same, but only if the PP performs DMA synchronizations
> at all. The last one picks max_len from the PP params and is designed
> for more extreme cases when the size is unknown, but the buffer still
> needs to be synced.
> Also constify pointer arguments of page_pool_get_dma_dir() and
> page_pool_get_dma_addr() to give a bit more room for optimization,
> as both of them are read-only.

Very neat.

> diff --git a/include/net/page_pool.h b/include/net/page_pool.h
> index 8435013de06e..f740c50b661f 100644
> --- a/include/net/page_pool.h
> +++ b/include/net/page_pool.h
> @@ -32,7 +32,7 @@
>  
>  #include <linux/mm.h> /* Needed by ptr_ring */
>  #include <linux/ptr_ring.h>
> -#include <linux/dma-direction.h>
> +#include <linux/dma-mapping.h>

highly nit picky - but isn't dma-mapping.h pretty heavy?
And we include page_pool.h in skbuff.h. Not that it matters
today, but maybe one day we'll succeed putting skbuff.h
on a diet -- so perhaps it's better to put "inline helpers
with non-trivial dependencies" into a new header?

>  #define PP_FLAG_DMA_MAP		BIT(0) /* Should page_pool do the DMA
>  					* map/unmap

> +/**
> + * page_pool_dma_sync_for_cpu - sync Rx page for CPU after it's written by HW
> + * @pool: page_pool which this page belongs to
> + * @page: page to sync
> + * @dma_sync_size: size of the data written to the page
> + *
> + * Can be used as a shorthand to sync Rx pages before accessing them in the
> + * driver. Caller must ensure the pool was created with %PP_FLAG_DMA_MAP.
> + */
> +static inline void page_pool_dma_sync_for_cpu(const struct page_pool *pool,
> +					      const struct page *page,
> +					      u32 dma_sync_size)
> +{
> +	dma_sync_single_range_for_cpu(pool->p.dev,
> +				      page_pool_get_dma_addr(page),
> +				      pool->p.offset, dma_sync_size,
> +				      page_pool_get_dma_dir(pool));

Likely a dumb question but why does this exist?
Is there a case where the "maybe" version is not safe?

> +}
> +
> +/**
> + * page_pool_dma_maybe_sync_for_cpu - sync Rx page for CPU if needed
> + * @pool: page_pool which this page belongs to
> + * @page: page to sync
> + * @dma_sync_size: size of the data written to the page
> + *
> + * Performs DMA sync for CPU, but only when required (swiotlb, IOMMU etc.).
> + */
> +static inline void
> +page_pool_dma_maybe_sync_for_cpu(const struct page_pool *pool,
> +				 const struct page *page, u32 dma_sync_size)
> +{
> +	if (pool->p.flags & PP_FLAG_DMA_SYNC_DEV)
> +		page_pool_dma_sync_for_cpu(pool, page, dma_sync_size);
> +}
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
