Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 494E3718734
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 18:19:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA4E881FBF;
	Wed, 31 May 2023 16:19:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA4E881FBF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685549959;
	bh=kUG3a1XNz5b4iDlYlBHoYZ+os4zguo/1DNi564PmbnA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CyDETeLYnoIV8pVqLnihulIsxJAseFBLoVeiNqqh0biT43JyrWNQ4J/rrZ2x772Ho
	 TgBNUjssbs/iJXaKEdeY/DbcliZ5HRpaiaLPRDC6uGvUGnArQ2IK6HwPuMxMTBm4tN
	 oDiFVvhMf5enRVxz6PiCGztW2v+MjIUVywJWjIWB+EelmyWwd5cQJHRmSyTCEtf11x
	 hSGnpRg5tnCK2NdqSOArPQ5lzfLKe7CZmRQw/jV8bN3kfJdwilku8PoOfLK6DoRXbn
	 XiGfhUJlrX0oEt092qTJEcz9ocRskq7YwYMp4FKIf23uspwh/0cPocvMdH6Vl54HiU
	 TldsQs5p96RNw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jhpg7O5GNmlt; Wed, 31 May 2023 16:19:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC3A381F1C;
	Wed, 31 May 2023 16:19:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BC3A381F1C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 021D01BF37C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 16:19:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CDD044010C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 16:19:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CDD044010C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1mJVzzt4gxzZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 May 2023 16:19:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D06CD400DC
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D06CD400DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 16:19:10 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id
 d9443c01a7336-1b038064d97so9181325ad.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 09:19:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685549950; x=1688141950;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ay5rAxOHfx/B8chzAfePvV7fqVFxOZ0CT09CDjE+6L4=;
 b=MW6CsY78KGoVZAGuWw2uLdaCk/8ZRKZ55TB1yjsNIP55v/yYcjda8lS2oJlc3FULWK
 SmO+heFBBP+7NJnf6EHPVy27YKgyIKQlNMrMdAb+w9UvPcsWao/EBz8cVbBU0GxCfMwK
 rTHfEf4m6JV+D3da+6Z4LpQwC2BwKCLdRRO5DYeihuivT3HbVd3xAVS6UhXysKLajF1A
 hUBOxZz5+Y5HOeKdE4GxIpycYkTaW6khzUw+8DCNhDZLZXplCU+cqybG3UiUGGzWNM4l
 7pKnH2YZb4pxu9xi9zAnlfP3w82Xte2kg0x5U5TbwVwybUY8lA59fuaGRMGCxDG24NhO
 2Bhg==
X-Gm-Message-State: AC+VfDx1N8UdP94puQJfY/Wc8SSB+CHsvidp9eZwRdTeckiwqZrjDKYA
 xC9dIupXkeNKhQEPrgTZitA=
X-Google-Smtp-Source: ACHHUZ5mvO2SCwb+DkvQbEPPRjJArQgeeDDOKTxxCXL+aX0cwcvFMlyEEQoROraG+/PB/xyExoe1+w==
X-Received: by 2002:a17:902:e542:b0:1ac:6fc3:6beb with SMTP id
 n2-20020a170902e54200b001ac6fc36bebmr7362934plf.9.1685549949845; 
 Wed, 31 May 2023 09:19:09 -0700 (PDT)
Received: from ?IPv6:2605:59c8:448:b800:82ee:73ff:fe41:9a02?
 ([2605:59c8:448:b800:82ee:73ff:fe41:9a02])
 by smtp.googlemail.com with ESMTPSA id
 v5-20020a170902b7c500b001a98f844e60sm1562981plz.263.2023.05.31.09.19.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 May 2023 09:19:09 -0700 (PDT)
Message-ID: <0962a8a8493f0c892775cda8affb93c20f8b78f7.camel@gmail.com>
From: Alexander H Duyck <alexander.duyck@gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Date: Wed, 31 May 2023 09:19:06 -0700
In-Reply-To: <20230530150035.1943669-10-aleksander.lobakin@intel.com>
References: <20230530150035.1943669-1-aleksander.lobakin@intel.com>
 <20230530150035.1943669-10-aleksander.lobakin@intel.com>
User-Agent: Evolution 3.44.4 (3.44.4-3.fc36) 
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1685549950; x=1688141950;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
 :date:message-id:reply-to;
 bh=ay5rAxOHfx/B8chzAfePvV7fqVFxOZ0CT09CDjE+6L4=;
 b=JeNxbciEz2rTFdTBq/gT0vdHwMILZznBuPzm1VfrgeuuHMMBZ78mwGTc0DioxN/7VI
 myMgQEJ4sfU9b4WfeFaGEZaOcGOX8dB0UEIjzh4847ir3di0vEXu2R23kYGM1vuXmelj
 If+lMxxUEpA831fWc4jXJrF18OoDCLfpDBGdnVogbPtzU2BZH0ln8eKxVYqJt4za2F34
 IIz0cPFVChFQGFqcmYxF5b5dRh0xfB5HSVNZykEzp3IT+VxMMsE8p5i4ajw3utGldD+0
 UA8Cp0AeMip+FFz8SCUYZyQgbbMJyBk4rFDOMhlBTCloKAYLUFLI7pjZNX3xrinc4RAu
 jSGQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=JeNxbciE
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 09/12] iavf: switch to
 Page Pool
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

On Tue, 2023-05-30 at 17:00 +0200, Alexander Lobakin wrote:
> Now that the IAVF driver simply uses dev_alloc_page() + free_page() with
> no custom recycling logics and one whole page per frame, it can easily
> be switched to using Page Pool API instead.
> Introduce libie_rx_page_pool_create(), a wrapper for creating a PP with
> the default libie settings applicable to all Intel hardware, and replace
> the alloc/free calls with the corresponding PP functions, including the
> newly added sync-for-CPU helpers. Use skb_mark_for_recycle() to bring
> back the recycling and restore the initial performance.
> 
> From the important object code changes, worth mentioning that
> __iavf_alloc_rx_pages() is now inlined due to the greatly reduced size.
> The resulting driver is on par with the pre-series code and 1-2% slower
> than the "optimized" version right before the recycling removal.
> But the number of locs and object code bytes slaughtered is much more
> important here after all, not speaking of that there's still a vast
> space for optimization and improvements.
> 
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>  drivers/net/ethernet/intel/Kconfig          |   1 +
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c | 126 +++++---------------
>  drivers/net/ethernet/intel/iavf/iavf_txrx.h |   8 +-
>  drivers/net/ethernet/intel/libie/rx.c       |  28 +++++
>  include/linux/net/intel/libie/rx.h          |   5 +-
>  5 files changed, 69 insertions(+), 99 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
> index cec4a938fbd0..a368afc42b8d 100644
> --- a/drivers/net/ethernet/intel/Kconfig
> +++ b/drivers/net/ethernet/intel/Kconfig
> @@ -86,6 +86,7 @@ config E1000E_HWTS
>  
>  config LIBIE
>  	tristate
> +	select PAGE_POOL
>  	help
>  	  libie (Intel Ethernet library) is a common library containing
>  	  routines shared by several Intel Ethernet drivers.
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> index c33a3d681c83..1de67a70f045 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> @@ -3,7 +3,6 @@
>  
>  #include <linux/net/intel/libie/rx.h>
>  #include <linux/prefetch.h>
> -#include <net/page_pool.h>
>  
>  #include "iavf.h"
>  #include "iavf_trace.h"
> @@ -691,8 +690,6 @@ int iavf_setup_tx_descriptors(struct iavf_ring *tx_ring)
>   **/
>  void iavf_clean_rx_ring(struct iavf_ring *rx_ring)
>  {
> -	u16 i;
> -
>  	/* ring already cleared, nothing to do */
>  	if (!rx_ring->rx_pages)
>  		return;
> @@ -703,28 +700,17 @@ void iavf_clean_rx_ring(struct iavf_ring *rx_ring)
>  	}
>  
>  	/* Free all the Rx ring sk_buffs */
> -	for (i = 0; i < rx_ring->count; i++) {
> +	for (u32 i = 0; i < rx_ring->count; i++) {

Did we make a change to our coding style to allow declaration of
variables inside of for statements? Just wondering if this is a change
since the recent updates to the ISO C standard, or if this doesn't
match up with what we would expect per the coding standard.

>  		struct page *page = rx_ring->rx_pages[i];
> -		dma_addr_t dma;
>  
>  		if (!page)
>  			continue;
>  
> -		dma = page_pool_get_dma_addr(page);
> -
>  		/* Invalidate cache lines that may have been written to by
>  		 * device so that we avoid corrupting memory.
>  		 */
> -		dma_sync_single_range_for_cpu(rx_ring->dev, dma,
> -					      LIBIE_SKB_HEADROOM,
> -					      LIBIE_RX_BUF_LEN,
> -					      DMA_FROM_DEVICE);
> -
> -		/* free resources associated with mapping */
> -		dma_unmap_page_attrs(rx_ring->dev, dma, LIBIE_RX_TRUESIZE,
> -				     DMA_FROM_DEVICE, IAVF_RX_DMA_ATTR);
> -
> -		__free_page(page);
> +		page_pool_dma_sync_full_for_cpu(rx_ring->pool, page);
> +		page_pool_put_full_page(rx_ring->pool, page, false);
>  	}
>  
>  	rx_ring->next_to_clean = 0;
> @@ -739,10 +725,15 @@ void iavf_clean_rx_ring(struct iavf_ring *rx_ring)
>   **/
>  void iavf_free_rx_resources(struct iavf_ring *rx_ring)
>  {
> +	struct device *dev = rx_ring->pool->p.dev;
> +
>  	iavf_clean_rx_ring(rx_ring);
>  	kfree(rx_ring->rx_pages);
>  	rx_ring->rx_pages = NULL;
>  
> +	page_pool_destroy(rx_ring->pool);
> +	rx_ring->dev = dev;
> +
>  	if (rx_ring->desc) {
>  		dma_free_coherent(rx_ring->dev, rx_ring->size,
>  				  rx_ring->desc, rx_ring->dma);

Not a fan of this switching back and forth between being a page pool
pointer and a dev pointer. Seems problematic as it is easily
misinterpreted. I would say that at a minimum stick to either it is
page_pool(Rx) or dev(Tx) on a ring type basis.

> @@ -759,13 +750,15 @@ void iavf_free_rx_resources(struct iavf_ring *rx_ring)
>  int iavf_setup_rx_descriptors(struct iavf_ring *rx_ring)
>  {
>  	struct device *dev = rx_ring->dev;
> +	struct page_pool *pool;
> +	int ret = -ENOMEM;
>  
>  	/* warn if we are about to overwrite the pointer */
>  	WARN_ON(rx_ring->rx_pages);
>  	rx_ring->rx_pages = kcalloc(rx_ring->count, sizeof(*rx_ring->rx_pages),
>  				    GFP_KERNEL);
>  	if (!rx_ring->rx_pages)
> -		return -ENOMEM;
> +		return ret;
>  
>  	u64_stats_init(&rx_ring->syncp);
>  
> @@ -781,15 +774,27 @@ int iavf_setup_rx_descriptors(struct iavf_ring *rx_ring)
>  		goto err;
>  	}
>  
> +	pool = libie_rx_page_pool_create(&rx_ring->q_vector->napi,
> +					 rx_ring->count);
> +	if (IS_ERR(pool)) {
> +		ret = PTR_ERR(pool);
> +		goto err_free_dma;
> +	}
> +
> +	rx_ring->pool = pool;
> +
>  	rx_ring->next_to_clean = 0;
>  	rx_ring->next_to_use = 0;
>  
>  	return 0;
> +
> +err_free_dma:
> +	dma_free_coherent(dev, rx_ring->size, rx_ring->desc, rx_ring->dma);
>  err:
>  	kfree(rx_ring->rx_pages);
>  	rx_ring->rx_pages = NULL;
>  
> -	return -ENOMEM;
> +	return ret;
>  }
>  
>  /**

This setup works for iavf, however for i40e/ice you may run into issues
since the setup_rx_descriptors call is also used to setup the ethtool
loopback test w/o a napi struct as I recall so there may not be a
q_vector.

> @@ -810,40 +815,6 @@ static inline void iavf_release_rx_desc(struct iavf_ring *rx_ring, u32 val)
>  	writel(val, rx_ring->tail);
>  }
>  
> -/**
> - * iavf_alloc_mapped_page - allocate and map a new page
> - * @dev: device used for DMA mapping
> - * @gfp: GFP mask to allocate page
> - *
> - * Returns a new &page if the it was successfully allocated, %NULL otherwise.
> - **/
> -static struct page *iavf_alloc_mapped_page(struct device *dev, gfp_t gfp)
> -{
> -	struct page *page;
> -	dma_addr_t dma;
> -
> -	/* alloc new page for storage */
> -	page = __dev_alloc_page(gfp);
> -	if (unlikely(!page))
> -		return NULL;
> -
> -	/* map page for use */
> -	dma = dma_map_page_attrs(dev, page, 0, PAGE_SIZE, DMA_FROM_DEVICE,
> -				 IAVF_RX_DMA_ATTR);
> -
> -	/* if mapping failed free memory back to system since
> -	 * there isn't much point in holding memory we can't use
> -	 */
> -	if (dma_mapping_error(dev, dma)) {
> -		__free_page(page);
> -		return NULL;
> -	}
> -
> -	page_pool_set_dma_addr(page, dma);
> -
> -	return page;
> -}
> -
>  /**
>   * iavf_receive_skb - Send a completed packet up the stack
>   * @rx_ring:  rx ring in play
> @@ -877,7 +848,7 @@ static void iavf_receive_skb(struct iavf_ring *rx_ring,
>  static u32 __iavf_alloc_rx_pages(struct iavf_ring *rx_ring, u32 to_refill,
>  				 gfp_t gfp)
>  {
> -	struct device *dev = rx_ring->dev;
> +	struct page_pool *pool = rx_ring->pool;
>  	u32 ntu = rx_ring->next_to_use;
>  	union iavf_rx_desc *rx_desc;
>  
> @@ -891,7 +862,7 @@ static u32 __iavf_alloc_rx_pages(struct iavf_ring *rx_ring, u32 to_refill,
>  		struct page *page;
>  		dma_addr_t dma;
>  
> -		page = iavf_alloc_mapped_page(dev, gfp);
> +		page = page_pool_alloc_pages(pool, gfp);
>  		if (!page) {
>  			rx_ring->rx_stats.alloc_page_failed++;
>  			break;
> @@ -900,11 +871,6 @@ static u32 __iavf_alloc_rx_pages(struct iavf_ring *rx_ring, u32 to_refill,
>  		rx_ring->rx_pages[ntu] = page;
>  		dma = page_pool_get_dma_addr(page);
>  
> -		/* sync the buffer for use by the device */
> -		dma_sync_single_range_for_device(dev, dma, LIBIE_SKB_HEADROOM,
> -						 LIBIE_RX_BUF_LEN,
> -						 DMA_FROM_DEVICE);
> -
>  		/* Refresh the desc even if buffer_addrs didn't change
>  		 * because each write-back erases this info.
>  		 */
> @@ -1091,21 +1057,6 @@ static void iavf_add_rx_frag(struct sk_buff *skb, struct page *page, u32 size)
>  			LIBIE_SKB_HEADROOM, size, LIBIE_RX_TRUESIZE);
>  }
>  
> -/**
> - * iavf_sync_rx_page - Synchronize received data for use
> - * @dev: device used for DMA mapping
> - * @page: Rx page containing the data
> - * @size: size of the received data
> - *
> - * This function will synchronize the Rx buffer for use by the CPU.
> - */
> -static void iavf_sync_rx_page(struct device *dev, struct page *page, u32 size)
> -{
> -	dma_sync_single_range_for_cpu(dev, page_pool_get_dma_addr(page),
> -				      LIBIE_SKB_HEADROOM, size,
> -				      DMA_FROM_DEVICE);
> -}
> -
>  /**
>   * iavf_build_skb - Build skb around an existing buffer
>   * @page: Rx page to with the data
> @@ -1128,6 +1079,8 @@ static struct sk_buff *iavf_build_skb(struct page *page, u32 size)
>  	if (unlikely(!skb))
>  		return NULL;
>  
> +	skb_mark_for_recycle(skb);
> +
>  	/* update pointers within the skb to store the data */
>  	skb_reserve(skb, LIBIE_SKB_HEADROOM);
>  	__skb_put(skb, size);
> @@ -1135,19 +1088,6 @@ static struct sk_buff *iavf_build_skb(struct page *page, u32 size)
>  	return skb;
>  }
>  
> -/**
> - * iavf_unmap_rx_page - Unmap used page
> - * @dev: device used for DMA mapping
> - * @page: page to release
> - */
> -static void iavf_unmap_rx_page(struct device *dev, struct page *page)
> -{
> -	dma_unmap_page_attrs(dev, page_pool_get_dma_addr(page),
> -			     LIBIE_RX_TRUESIZE, DMA_FROM_DEVICE,
> -			     IAVF_RX_DMA_ATTR);
> -	page_pool_set_dma_addr(page, 0);
> -}
> -
>  /**
>   * iavf_is_non_eop - process handling of non-EOP buffers
>   * @rx_ring: Rx ring being processed
> @@ -1190,8 +1130,8 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
>  	unsigned int total_rx_bytes = 0, total_rx_packets = 0;
>  	const gfp_t gfp = GFP_ATOMIC | __GFP_NOWARN;
>  	u32 to_refill = IAVF_DESC_UNUSED(rx_ring);
> +	struct page_pool *pool = rx_ring->pool;
>  	struct sk_buff *skb = rx_ring->skb;
> -	struct device *dev = rx_ring->dev;
>  	u32 ntc = rx_ring->next_to_clean;
>  	u32 ring_size = rx_ring->count;
>  	u32 cleaned_count = 0;
> @@ -1240,13 +1180,11 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
>  		 * stripped by the HW.
>  		 */
>  		if (unlikely(!size)) {
> -			iavf_unmap_rx_page(dev, page);
> -			__free_page(page);
> +			page_pool_recycle_direct(pool, page);
>  			goto skip_data;
>  		}
>  
> -		iavf_sync_rx_page(dev, page, size);
> -		iavf_unmap_rx_page(dev, page);
> +		page_pool_dma_sync_for_cpu(pool, page, size);
>  
>  		/* retrieve a buffer from the ring */
>  		if (skb)
> @@ -1256,7 +1194,7 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
>  
>  		/* exit if we failed to retrieve a buffer */
>  		if (!skb) {
> -			__free_page(page);
> +			page_pool_put_page(pool, page, size, true);
>  			rx_ring->rx_stats.alloc_buff_failed++;
>  			break;
>  		}
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
> index 1421e90c7c4e..8fbe549ce6a5 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
> @@ -83,9 +83,6 @@ enum iavf_dyn_idx_t {
>  
>  #define iavf_rx_desc iavf_32byte_rx_desc
>  
> -#define IAVF_RX_DMA_ATTR \
> -	(DMA_ATTR_SKIP_CPU_SYNC | DMA_ATTR_WEAK_ORDERING)
> -
>  /**
>   * iavf_test_staterr - tests bits in Rx descriptor status and error fields
>   * @rx_desc: pointer to receive descriptor (in le64 format)
> @@ -240,7 +237,10 @@ struct iavf_rx_queue_stats {
>  struct iavf_ring {
>  	struct iavf_ring *next;		/* pointer to next ring in q_vector */
>  	void *desc;			/* Descriptor ring memory */
> -	struct device *dev;		/* Used for DMA mapping */
> +	union {
> +		struct page_pool *pool;	/* Used for Rx page management */
> +		struct device *dev;	/* Used for DMA mapping on Tx */
> +	};
>  	struct net_device *netdev;	/* netdev ring maps to */
>  	union {
>  		struct iavf_tx_buffer *tx_bi;

Would it make more sense to have the page pool in the q_vector rather
than the ring? Essentially the page pool is associated per napi
instance so it seems like it would make more sense to store it with the
napi struct rather than potentially have multiple instances per napi.

> diff --git a/drivers/net/ethernet/intel/libie/rx.c b/drivers/net/ethernet/intel/libie/rx.c
> index f503476d8eef..d68eab76593c 100644
> --- a/drivers/net/ethernet/intel/libie/rx.c
> +++ b/drivers/net/ethernet/intel/libie/rx.c
> @@ -105,6 +105,34 @@ const struct libie_rx_ptype_parsed libie_rx_ptype_lut[LIBIE_RX_PTYPE_NUM] = {
>  };
>  EXPORT_SYMBOL_NS_GPL(libie_rx_ptype_lut, LIBIE);
>  
> +/* Page Pool */
> +
> +/**
> + * libie_rx_page_pool_create - create a PP with the default libie settings
> + * @napi: &napi_struct covering this PP (no usage outside its poll loops)
> + * @size: size of the PP, usually simply Rx queue len
> + *
> + * Returns &page_pool on success, casted -errno on failure.
> + */
> +struct page_pool *libie_rx_page_pool_create(struct napi_struct *napi,
> +					    u32 size)
> +{
> +	const struct page_pool_params pp = {
> +		.flags		= PP_FLAG_DMA_MAP | PP_FLAG_DMA_SYNC_DEV,
> +		.order		= LIBIE_RX_PAGE_ORDER,
> +		.pool_size	= size,
> +		.nid		= NUMA_NO_NODE,
> +		.dev		= napi->dev->dev.parent,
> +		.napi		= napi,
> +		.dma_dir	= DMA_FROM_DEVICE,
> +		.max_len	= LIBIE_RX_BUF_LEN,
> +		.offset		= LIBIE_SKB_HEADROOM,
> +	};
> +
> +	return page_pool_create(&pp);
> +}
> +EXPORT_SYMBOL_NS_GPL(libie_rx_page_pool_create, LIBIE);
> +
>  MODULE_AUTHOR("Intel Corporation");
>  MODULE_DESCRIPTION("Intel(R) Ethernet common library");
>  MODULE_LICENSE("GPL");
> diff --git a/include/linux/net/intel/libie/rx.h b/include/linux/net/intel/libie/rx.h
> index 3e8d0d5206e1..b86cadd281f1 100644
> --- a/include/linux/net/intel/libie/rx.h
> +++ b/include/linux/net/intel/libie/rx.h
> @@ -5,7 +5,7 @@
>  #define __LIBIE_RX_H
>  
>  #include <linux/if_vlan.h>
> -#include <linux/netdevice.h>
> +#include <net/page_pool.h>
>  
>  /* O(1) converting i40e/ice/iavf's 8/10-bit hardware packet type to a parsed
>   * bitfield struct.
> @@ -160,4 +160,7 @@ static inline void libie_skb_set_hash(struct sk_buff *skb, u32 hash,
>  /* Maximum frame size minus LL overhead */
>  #define LIBIE_MAX_MTU		(LIBIE_MAX_RX_FRM_LEN - LIBIE_RX_LL_LEN)
>  
> +struct page_pool *libie_rx_page_pool_create(struct napi_struct *napi,
> +					    u32 size);
> +
>  #endif /* __LIBIE_RX_H */

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
