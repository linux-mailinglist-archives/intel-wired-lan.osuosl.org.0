Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B2BC71690D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 18:18:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 08CDF81E13;
	Tue, 30 May 2023 16:18:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 08CDF81E13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685463532;
	bh=2GJCAphRlbhnPXnYLet89/taW0E1Y9aKtEvQKILY4RU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1+LT18PwaWANGvQiEjV/bGaHWgptCeny/IXAo0k66itgo+24nnBU3gUmrT2Bk18xo
	 Jfa0nNRfIs/lKff3dDfVqHAoNm5XazvEKfJJ6ZnApN4XISROjjzMbWYy0WzzQOYWHd
	 QZxUWAgYhwOPvHeDQL2ymaG8wCduEhTPzmnl9Fy9GG0fYQOGS4VUfqOiPZZJ5GuB64
	 J0nokZEI/lvsclibAW1NlNxLS0AwjMTEkuGA/bO6GG0MUI2MU8v65eCIu4K4JKTfrT
	 zCmHz+0pHxPOyehUa45nSziKvAyVniCugUGQCATbMQmtnKL3VrcYxWAhvKuwt2y9HE
	 Eez2V87Iub9RQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YYKKsuWOJzkg; Tue, 30 May 2023 16:18:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E33281EF6;
	Tue, 30 May 2023 16:18:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E33281EF6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 130861BF424
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 16:18:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EB77A81DEC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 16:18:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB77A81DEC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zp-lPCQnkEYH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 16:18:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 348F881D4D
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com
 [IPv6:2607:f8b0:4864:20::1031])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 348F881D4D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 16:18:43 +0000 (UTC)
Received: by mail-pj1-x1031.google.com with SMTP id
 98e67ed59e1d1-2562cc85d3dso3923659a91.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 09:18:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685463522; x=1688055522;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=qRkhmAxe/ihdypWznBipcA1eeKFosBifxnlNuMtEa1Y=;
 b=gY7RE3bUVVtXBkuS20Xz06puecbolRYY/6IyNhZzr9tgXJ+ThKWOX5tkdNVLI0IEFz
 rD60F+4xdiY/eb9Ak0t1lrP487ZCcQNkg/YrL5siXjpVRoNJefOE1A2Jb8GpwQsaK6E7
 8v56m0QKEvXG6Cx0iwu2+zRtLOzUrL/zZ8iBWztkqSQf1yr572Qppqb3tUTzhBF5opau
 CIaB2xE9xNOVW2WrujBIpgEk9hvt0g9EVEf64jcmsorcK06CuYGgUQaFjrdcWYMtg9of
 +plR72B768zmXRVlnvSEAYxETYhm6JUEANQXaz/KFkPW6lRaLxFKR3eEc9MmTJCCSGlx
 KOYQ==
X-Gm-Message-State: AC+VfDyVucuh7Eaj12q/uySen1r+4MWx4KWbTnAFQsHHr1CvjkeGQ1o1
 CEldaqL4OXB2RX/w/fk2Als=
X-Google-Smtp-Source: ACHHUZ49pxpPTwmau8gH+/WNZVbjXnc13agqCiaT1TCuJ3fovNebjVW8EMhaqM6m+0zQqpT7wf9ITw==
X-Received: by 2002:a17:90a:5216:b0:247:529f:92d7 with SMTP id
 v22-20020a17090a521600b00247529f92d7mr3052194pjh.8.1685463522170; 
 Tue, 30 May 2023 09:18:42 -0700 (PDT)
Received: from ?IPv6:2605:59c8:448:b800:82ee:73ff:fe41:9a02?
 ([2605:59c8:448:b800:82ee:73ff:fe41:9a02])
 by smtp.googlemail.com with ESMTPSA id
 t4-20020a17090a3b4400b0025023726fc4sm11735949pjf.26.2023.05.30.09.18.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 May 2023 09:18:41 -0700 (PDT)
Message-ID: <8828262f1c238ab28be9ec87a7701acd791af926.camel@gmail.com>
From: Alexander H Duyck <alexander.duyck@gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Date: Tue, 30 May 2023 09:18:40 -0700
In-Reply-To: <20230525125746.553874-4-aleksander.lobakin@intel.com>
References: <20230525125746.553874-1-aleksander.lobakin@intel.com>
 <20230525125746.553874-4-aleksander.lobakin@intel.com>
User-Agent: Evolution 3.44.4 (3.44.4-3.fc36) 
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1685463522; x=1688055522;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
 :date:message-id:reply-to;
 bh=qRkhmAxe/ihdypWznBipcA1eeKFosBifxnlNuMtEa1Y=;
 b=R5elcjIJS8QuYtlBWjL0ZzDirDet76Py4TqIXD5h4AAEfdRlu1iirYprwTX+SxOAYr
 5Jh/lLbLocly8gtZFTM8o4ltStRAvOtHvmGpDsCQY2WkhbBQDsal6IRS/u/3zyRz1Xjn
 DC8MfVW1R+iKGnfjXm+BhM2XRlgQJFFh7dJmCzlD4KvdWTfHmJK+FY7imOYmkAB/LXc1
 rpuQec6eZ99inidTXdGZYfFE1eNJ9AHdJ5kE/dXfRCgSdrwQTo7poFkqeiFUjupU4hfL
 nQ0733ENNPTXuL97omkNmDM+svx+GEu3avONWOiggNQIdFzyTZL7dwxhC0vEdMTKLXfT
 8crw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=R5elcjIJ
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 03/12] iavf: optimize Rx
 buffer allocation a bunch
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

On Thu, 2023-05-25 at 14:57 +0200, Alexander Lobakin wrote:
> The Rx hotpath code of IAVF is not well-optimized TBH. Before doing any
> further buffer model changes, shake it up a bit. Notably:
> 
> 1. Cache more variables on the stack.
>    DMA device, Rx page size, NTC -- these are the most common things
>    used all throughout the hotpath, often in loops on each iteration.
>    Instead of fetching (or even calculating, as with the page size) them
>    from the ring all the time, cache them on the stack at the beginning
>    of the NAPI polling callback. NTC will be written back at the end,
>    the rest are used read-only, so no sync needed.

The advantage of this is going to vary based on the attribute. One of
the reasons why I left most of this on the ring is because the section
of the ring most of these variables were meant to be read-mostly and
shouldn't have resulted in any additional overhead versus accessing
them from the stack.

> 2. Don't move the recycled buffers around the ring.
>    The idea of passing the page of the right-now-recycled-buffer to a
>    different buffer, in this case, the first one that needs to be
>    allocated, moreover, on each new frame, is fundamentally wrong. It
>    involves a few o' fetches, branches and then writes (and one Rx
>    buffer struct is at least 32 bytes) where they're completely unneeded,
>    but gives no good -- the result is the same as if we'd recycle it
>    inplace, at the same position where it was used. So drop this and let
>    the main refilling function take care of all the buffers, which were
>    processed and now need to be recycled/refilled.

The next_to_alloc logic was put in place to deal with systems that are
experiencing memory issues. Specifically what can end up happening is
that the ring can stall due to failing memory allocations and the
memory can get stuck on the ring. For that reason we were essentially
defragmenting the buffers when we started suffering memory pressure so
that they could be reusued and/or freed following immediate use.

Basically what you are trading off is some exception handling for
performance by removing it.

> 3. Don't allocate with %GPF_ATOMIC on ifup.
>    This involved introducing the @gfp parameter to a couple functions.
>    Doesn't change anything for Rx -> softirq.

Any specific reason for this? Just wondering if this is meant to
address some sort of memory pressure issue since it basically just
means the allocation can go out and try to free other memory.

> 4. 1 budget unit == 1 descriptor, not skb.
>    There could be underflow when receiving a lot of fragmented frames.
>    If each of them would consist of 2 frags, it means that we'd process
>    64 descriptors at the point where we pass the 32th skb to the stack.
>    But the driver would count that only as a half, which could make NAPI
>    re-enable interrupts prematurely and create unnecessary CPU load.

Not sure I agree with this. The problem is the overhead for an skb
going up the stack versus a fragment are pretty signficant. Keep in
mind that most of the overhead for a single buffer occurs w/
napi_gro_receive and is not actually at the driver itself. The whole
point of the budget is to meter out units of work, not to keep you in
the busy loop. This starts looking like the old code where the Intel
drivers were returning either budget or 0 instead of supporting the
middle ground.

> 5. Shortcut !size case.
>    It's super rare, but possible -- for example, if the last buffer of
>    the fragmented frame contained only FCS, which was then stripped by
>    the HW. Instead of checking for size several times when processing,
>    quickly reuse the buffer and jump to the skb fields part.
> 6. Refill the ring after finishing the polling loop.
>    Previously, the loop wasn't starting a new iteration after the 64th
>    desc, meaning that we were always leaving 16 buffers non-refilled
>    until the next NAPI poll. It's better to refill them while they're
>    still hot, so do that right after exiting the loop as well.
>    For a full cycle of 64 descs, there will be 4 refills of 16 descs
>    from now on.
> 
> Function: add/remove: 4/2 grow/shrink: 0/5 up/down: 473/-647 (-174)
> 
> + up to 2% performance.
> 

What is the test you saw the 2% performance improvement in? Is it
something XDP related or a full stack test?

> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Also one thing I am not a huge fan of is a patch that is really a
patchset onto itself. With all 6 items called out here I would have
preferred to see this as 6 patches as it would have been easier to
review.

> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c |   2 +-
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c | 259 +++++++++-----------
>  drivers/net/ethernet/intel/iavf/iavf_txrx.h |   3 +-
>  3 files changed, 114 insertions(+), 150 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index a5a6c9861a93..ade32aa1ed78 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -1236,7 +1236,7 @@ static void iavf_configure(struct iavf_adapter *adapter)
>  	for (i = 0; i < adapter->num_active_queues; i++) {
>  		struct iavf_ring *ring = &adapter->rx_rings[i];
>  
> -		iavf_alloc_rx_buffers(ring, IAVF_DESC_UNUSED(ring));
> +		iavf_alloc_rx_buffers(ring);
>  	}
>  }
>  
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> index a7121dc5c32b..fd08ce67380e 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> @@ -736,7 +736,6 @@ void iavf_clean_rx_ring(struct iavf_ring *rx_ring)
>  	/* Zero out the descriptor ring */
>  	memset(rx_ring->desc, 0, rx_ring->size);
>  
> -	rx_ring->next_to_alloc = 0;
>  	rx_ring->next_to_clean = 0;
>  	rx_ring->next_to_use = 0;
>  }
> @@ -792,7 +791,6 @@ int iavf_setup_rx_descriptors(struct iavf_ring *rx_ring)
>  		goto err;
>  	}
>  
> -	rx_ring->next_to_alloc = 0;
>  	rx_ring->next_to_clean = 0;
>  	rx_ring->next_to_use = 0;
>  
> @@ -812,9 +810,6 @@ static inline void iavf_release_rx_desc(struct iavf_ring *rx_ring, u32 val)
>  {
>  	rx_ring->next_to_use = val;
>  
> -	/* update next to alloc since we have filled the ring */
> -	rx_ring->next_to_alloc = val;
> -
>  	/* Force memory writes to complete before letting h/w
>  	 * know there are new descriptors to fetch.  (Only
>  	 * applicable for weak-ordered memory model archs,
> @@ -828,12 +823,17 @@ static inline void iavf_release_rx_desc(struct iavf_ring *rx_ring, u32 val)
>   * iavf_alloc_mapped_page - recycle or make a new page
>   * @rx_ring: ring to use
>   * @bi: rx_buffer struct to modify
> + * @dev: device used for DMA mapping
> + * @order: page order to allocate
> + * @gfp: GFP mask to allocate page
>   *
>   * Returns true if the page was successfully allocated or
>   * reused.
>   **/
>  static bool iavf_alloc_mapped_page(struct iavf_ring *rx_ring,
> -				   struct iavf_rx_buffer *bi)
> +				   struct iavf_rx_buffer *bi,
> +				   struct device *dev, u32 order,
> +				   gfp_t gfp)
>  {
>  	struct page *page = bi->page;
>  	dma_addr_t dma;
> @@ -845,23 +845,21 @@ static bool iavf_alloc_mapped_page(struct iavf_ring *rx_ring,
>  	}
>  
>  	/* alloc new page for storage */
> -	page = dev_alloc_pages(iavf_rx_pg_order(rx_ring));
> +	page = __dev_alloc_pages(gfp, order);
>  	if (unlikely(!page)) {
>  		rx_ring->rx_stats.alloc_page_failed++;
>  		return false;
>  	}
>  
>  	/* map page for use */
> -	dma = dma_map_page_attrs(rx_ring->dev, page, 0,
> -				 iavf_rx_pg_size(rx_ring),
> -				 DMA_FROM_DEVICE,
> -				 IAVF_RX_DMA_ATTR);
> +	dma = dma_map_page_attrs(dev, page, 0, PAGE_SIZE << order,
> +				 DMA_FROM_DEVICE, IAVF_RX_DMA_ATTR);
>  
>  	/* if mapping failed free memory back to system since
>  	 * there isn't much point in holding memory we can't use
>  	 */
> -	if (dma_mapping_error(rx_ring->dev, dma)) {
> -		__free_pages(page, iavf_rx_pg_order(rx_ring));
> +	if (dma_mapping_error(dev, dma)) {
> +		__free_pages(page, order);
>  		rx_ring->rx_stats.alloc_page_failed++;
>  		return false;
>  	}
> @@ -898,32 +896,36 @@ static void iavf_receive_skb(struct iavf_ring *rx_ring,
>  }
>  
>  /**
> - * iavf_alloc_rx_buffers - Replace used receive buffers
> + * __iavf_alloc_rx_buffers - Replace used receive buffers
>   * @rx_ring: ring to place buffers on
> - * @cleaned_count: number of buffers to replace
> + * @to_refill: number of buffers to replace
> + * @gfp: GFP mask to allocate pages
>   *
> - * Returns false if all allocations were successful, true if any fail
> + * Returns 0 if all allocations were successful or the number of buffers left
> + * to refill in case of an allocation failure.
>   **/
> -bool iavf_alloc_rx_buffers(struct iavf_ring *rx_ring, u16 cleaned_count)
> +static u32 __iavf_alloc_rx_buffers(struct iavf_ring *rx_ring, u32 to_refill,
> +				   gfp_t gfp)
>  {
> -	u16 ntu = rx_ring->next_to_use;
> +	u32 order = iavf_rx_pg_order(rx_ring);
> +	struct device *dev = rx_ring->dev;
> +	u32 ntu = rx_ring->next_to_use;
>  	union iavf_rx_desc *rx_desc;
>  	struct iavf_rx_buffer *bi;
>  
>  	/* do nothing if no valid netdev defined */
> -	if (!rx_ring->netdev || !cleaned_count)
> -		return false;
> +	if (unlikely(!rx_ring->netdev || !to_refill))
> +		return 0;
>  
>  	rx_desc = IAVF_RX_DESC(rx_ring, ntu);
>  	bi = &rx_ring->rx_bi[ntu];
>  
>  	do {
> -		if (!iavf_alloc_mapped_page(rx_ring, bi))
> -			goto no_buffers;
> +		if (!iavf_alloc_mapped_page(rx_ring, bi, dev, order, gfp))
> +			break;
>  
>  		/* sync the buffer for use by the device */
> -		dma_sync_single_range_for_device(rx_ring->dev, bi->dma,
> -						 bi->page_offset,
> +		dma_sync_single_range_for_device(dev, bi->dma, bi->page_offset,
>  						 rx_ring->rx_buf_len,
>  						 DMA_FROM_DEVICE);
>  
> @@ -943,23 +945,17 @@ bool iavf_alloc_rx_buffers(struct iavf_ring *rx_ring, u16 cleaned_count)
>  
>  		/* clear the status bits for the next_to_use descriptor */
>  		rx_desc->wb.qword1.status_error_len = 0;
> -
> -		cleaned_count--;
> -	} while (cleaned_count);
> +	} while (--to_refill);

Just a nit. You might want to break this up into two statements like I
had before. I know some people within Intel weren't a huge fan of when
I used to do that kind of thing all the time in loops where I would do
the decrement and test in one line.. :)

>  
>  	if (rx_ring->next_to_use != ntu)
>  		iavf_release_rx_desc(rx_ring, ntu);
>  
> -	return false;
> -
> -no_buffers:
> -	if (rx_ring->next_to_use != ntu)
> -		iavf_release_rx_desc(rx_ring, ntu);
> +	return to_refill;
> +}
>  
> -	/* make sure to come back via polling to try again after
> -	 * allocation failure
> -	 */
> -	return true;
> +void iavf_alloc_rx_buffers(struct iavf_ring *rxr)
> +{
> +	__iavf_alloc_rx_buffers(rxr, IAVF_DESC_UNUSED(rxr), GFP_KERNEL);
>  }
>  
>  /**
> @@ -1104,32 +1100,6 @@ static bool iavf_cleanup_headers(struct iavf_ring *rx_ring, struct sk_buff *skb)
>  	return false;
>  }
>  
> -/**
> - * iavf_reuse_rx_page - page flip buffer and store it back on the ring
> - * @rx_ring: rx descriptor ring to store buffers on
> - * @old_buff: donor buffer to have page reused
> - *
> - * Synchronizes page for reuse by the adapter
> - **/
> -static void iavf_reuse_rx_page(struct iavf_ring *rx_ring,
> -			       struct iavf_rx_buffer *old_buff)
> -{
> -	struct iavf_rx_buffer *new_buff;
> -	u16 nta = rx_ring->next_to_alloc;
> -
> -	new_buff = &rx_ring->rx_bi[nta];
> -
> -	/* update, and store next to alloc */
> -	nta++;
> -	rx_ring->next_to_alloc = (nta < rx_ring->count) ? nta : 0;
> -
> -	/* transfer page from old buffer to new buffer */
> -	new_buff->dma		= old_buff->dma;
> -	new_buff->page		= old_buff->page;
> -	new_buff->page_offset	= old_buff->page_offset;
> -	new_buff->pagecnt_bias	= old_buff->pagecnt_bias;
> -}
> -
>  /**
>   * iavf_can_reuse_rx_page - Determine if this page can be reused by
>   * the adapter for another receive
> @@ -1191,30 +1161,26 @@ static bool iavf_can_reuse_rx_page(struct iavf_rx_buffer *rx_buffer)
>  
>  /**
>   * iavf_add_rx_frag - Add contents of Rx buffer to sk_buff
> - * @rx_ring: rx descriptor ring to transact packets on
> - * @rx_buffer: buffer containing page to add
>   * @skb: sk_buff to place the data into
> + * @rx_buffer: buffer containing page to add
>   * @size: packet length from rx_desc
> + * @pg_size: Rx buffer page size
>   *
>   * This function will add the data contained in rx_buffer->page to the skb.
>   * It will just attach the page as a frag to the skb.
>   *
>   * The function will then update the page offset.
>   **/
> -static void iavf_add_rx_frag(struct iavf_ring *rx_ring,
> +static void iavf_add_rx_frag(struct sk_buff *skb,
>  			     struct iavf_rx_buffer *rx_buffer,
> -			     struct sk_buff *skb,
> -			     unsigned int size)
> +			     u32 size, u32 pg_size)
>  {
>  #if (PAGE_SIZE < 8192)
> -	unsigned int truesize = iavf_rx_pg_size(rx_ring) / 2;
> +	unsigned int truesize = pg_size / 2;
>  #else
>  	unsigned int truesize = SKB_DATA_ALIGN(size + IAVF_SKB_PAD);
>  #endif
>  
> -	if (!size)
> -		return;
> -
>  	skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, rx_buffer->page,
>  			rx_buffer->page_offset, size, truesize);
>  
> @@ -1224,63 +1190,47 @@ static void iavf_add_rx_frag(struct iavf_ring *rx_ring,
>  #else
>  	rx_buffer->page_offset += truesize;
>  #endif
> +
> +	/* We have pulled a buffer for use, so decrement pagecnt_bias */
> +	rx_buffer->pagecnt_bias--;
>  }
>  
>  /**
> - * iavf_get_rx_buffer - Fetch Rx buffer and synchronize data for use
> - * @rx_ring: rx descriptor ring to transact packets on
> - * @size: size of buffer to add to skb
> + * iavf_sync_rx_buffer - Synchronize received data for use
> + * @dev: device used for DMA mapping
> + * @buf: Rx buffer containing the data
> + * @size: size of the received data
>   *
> - * This function will pull an Rx buffer from the ring and synchronize it
> - * for use by the CPU.
> + * This function will synchronize the Rx buffer for use by the CPU.
>   */
> -static struct iavf_rx_buffer *iavf_get_rx_buffer(struct iavf_ring *rx_ring,
> -						 const unsigned int size)
> +static void iavf_sync_rx_buffer(struct device *dev, struct iavf_rx_buffer *buf,
> +				u32 size)
>  {
> -	struct iavf_rx_buffer *rx_buffer;
> -
> -	rx_buffer = &rx_ring->rx_bi[rx_ring->next_to_clean];
> -	prefetchw(rx_buffer->page);
> -	if (!size)
> -		return rx_buffer;
> -
> -	/* we are reusing so sync this buffer for CPU use */
> -	dma_sync_single_range_for_cpu(rx_ring->dev,
> -				      rx_buffer->dma,
> -				      rx_buffer->page_offset,
> -				      size,
> +	dma_sync_single_range_for_cpu(dev, buf->dma, buf->page_offset, size,
>  				      DMA_FROM_DEVICE);
> -
> -	/* We have pulled a buffer for use, so decrement pagecnt_bias */
> -	rx_buffer->pagecnt_bias--;
> -
> -	return rx_buffer;
>  }
>  
>  /**
>   * iavf_build_skb - Build skb around an existing buffer
> - * @rx_ring: Rx descriptor ring to transact packets on
> - * @rx_buffer: Rx buffer to pull data from
> - * @size: size of buffer to add to skb
> + * @rx_buffer: Rx buffer with the data
> + * @size: size of the data
> + * @pg_size: size of the Rx page
>   *
>   * This function builds an skb around an existing Rx buffer, taking care
>   * to set up the skb correctly and avoid any memcpy overhead.
>   */
> -static struct sk_buff *iavf_build_skb(struct iavf_ring *rx_ring,
> -				      struct iavf_rx_buffer *rx_buffer,
> -				      unsigned int size)
> +static struct sk_buff *iavf_build_skb(struct iavf_rx_buffer *rx_buffer,
> +				      u32 size, u32 pg_size)
>  {
>  	void *va;
>  #if (PAGE_SIZE < 8192)
> -	unsigned int truesize = iavf_rx_pg_size(rx_ring) / 2;
> +	unsigned int truesize = pg_size / 2;
>  #else
>  	unsigned int truesize = SKB_DATA_ALIGN(sizeof(struct skb_shared_info)) +
>  				SKB_DATA_ALIGN(IAVF_SKB_PAD + size);
>  #endif
>  	struct sk_buff *skb;
>  
> -	if (!rx_buffer || !size)
> -		return NULL;
>  	/* prefetch first cache line of first page */
>  	va = page_address(rx_buffer->page) + rx_buffer->page_offset;
>  	net_prefetch(va);
> @@ -1301,36 +1251,33 @@ static struct sk_buff *iavf_build_skb(struct iavf_ring *rx_ring,
>  	rx_buffer->page_offset += truesize;
>  #endif
>  
> +	rx_buffer->pagecnt_bias--;
> +
>  	return skb;
>  }
>  
>  /**
> - * iavf_put_rx_buffer - Clean up used buffer and either recycle or free
> + * iavf_put_rx_buffer - Recycle or free used buffer
>   * @rx_ring: rx descriptor ring to transact packets on
> - * @rx_buffer: rx buffer to pull data from
> + * @dev: device used for DMA mapping
> + * @rx_buffer: Rx buffer to handle
> + * @pg_size: Rx page size
>   *
> - * This function will clean up the contents of the rx_buffer.  It will
> - * either recycle the buffer or unmap it and free the associated resources.
> + * Either recycle the buffer if possible or unmap and free the page.
>   */
> -static void iavf_put_rx_buffer(struct iavf_ring *rx_ring,
> -			       struct iavf_rx_buffer *rx_buffer)
> +static void iavf_put_rx_buffer(struct iavf_ring *rx_ring, struct device *dev,
> +			       struct iavf_rx_buffer *rx_buffer, u32 pg_size)
>  {
> -	if (!rx_buffer)
> -		return;
> -
>  	if (iavf_can_reuse_rx_page(rx_buffer)) {
> -		/* hand second half of page back to the ring */
> -		iavf_reuse_rx_page(rx_ring, rx_buffer);
>  		rx_ring->rx_stats.page_reuse_count++;
> -	} else {
> -		/* we are not reusing the buffer so unmap it */
> -		dma_unmap_page_attrs(rx_ring->dev, rx_buffer->dma,
> -				     iavf_rx_pg_size(rx_ring),
> -				     DMA_FROM_DEVICE, IAVF_RX_DMA_ATTR);
> -		__page_frag_cache_drain(rx_buffer->page,
> -					rx_buffer->pagecnt_bias);
> +		return;
>  	}
>  
> +	/* we are not reusing the buffer so unmap it */
> +	dma_unmap_page_attrs(dev, rx_buffer->dma, pg_size,
> +			     DMA_FROM_DEVICE, IAVF_RX_DMA_ATTR);
> +	__page_frag_cache_drain(rx_buffer->page, rx_buffer->pagecnt_bias);
> +
>  	/* clear contents of buffer_info */
>  	rx_buffer->page = NULL;
>  }
> @@ -1350,14 +1297,6 @@ static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
>  			    union iavf_rx_desc *rx_desc,
>  			    struct sk_buff *skb)
>  {
> -	u32 ntc = rx_ring->next_to_clean + 1;
> -
> -	/* fetch, update, and store next to clean */
> -	ntc = (ntc < rx_ring->count) ? ntc : 0;
> -	rx_ring->next_to_clean = ntc;
> -
> -	prefetch(IAVF_RX_DESC(rx_ring, ntc));
> -
>  	/* if we are the last buffer then there is nothing else to do */
>  #define IAVF_RXD_EOF BIT(IAVF_RX_DESC_STATUS_EOF_SHIFT)
>  	if (likely(iavf_test_staterr(rx_desc, IAVF_RXD_EOF)))

You may want to see if you can get rid of this function entirely,
perhaps you do in a later patch. This function was added for ixgbe back
in the day to allow us to place the skb back in the ring for the RSC
based workloads where we had to deal with interleaved frames in the Rx
path.

For example, one question here would be why are we passing skb? It
isn't used as far as I can tell.

> @@ -1383,11 +1322,16 @@ static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
>  static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
>  {
>  	unsigned int total_rx_bytes = 0, total_rx_packets = 0;
> +	const gfp_t gfp = GFP_ATOMIC | __GFP_NOWARN;
> +	u32 to_refill = IAVF_DESC_UNUSED(rx_ring);
> +	u32 pg_size = iavf_rx_pg_size(rx_ring);
>  	struct sk_buff *skb = rx_ring->skb;
> -	u16 cleaned_count = IAVF_DESC_UNUSED(rx_ring);
> -	bool failure = false;
> +	struct device *dev = rx_ring->dev;
> +	u32 ntc = rx_ring->next_to_clean;
> +	u32 ring_size = rx_ring->count;
> +	u32 cleaned_count = 0;
>  
> -	while (likely(total_rx_packets < (unsigned int)budget)) {
> +	while (likely(cleaned_count < budget)) {
>  		struct iavf_rx_buffer *rx_buffer;
>  		union iavf_rx_desc *rx_desc;
>  		unsigned int size;
> @@ -1396,13 +1340,11 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
>  		u64 qword;
>  
>  		/* return some buffers to hardware, one at a time is too slow */
> -		if (cleaned_count >= IAVF_RX_BUFFER_WRITE) {
> -			failure = failure ||
> -				  iavf_alloc_rx_buffers(rx_ring, cleaned_count);
> -			cleaned_count = 0;
> -		}
> +		if (to_refill >= IAVF_RX_BUFFER_WRITE)
> +			to_refill = __iavf_alloc_rx_buffers(rx_ring, to_refill,
> +							    gfp);
>  
> -		rx_desc = IAVF_RX_DESC(rx_ring, rx_ring->next_to_clean);
> +		rx_desc = IAVF_RX_DESC(rx_ring, ntc);
>  
>  		/* status_error_len will always be zero for unused descriptors
>  		 * because it's cleared in cleanup, and overlaps with hdr_addr
> @@ -1424,24 +1366,38 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
>  		       IAVF_RXD_QW1_LENGTH_PBUF_SHIFT;
>  
>  		iavf_trace(clean_rx_irq, rx_ring, rx_desc, skb);
> -		rx_buffer = iavf_get_rx_buffer(rx_ring, size);
> +		rx_buffer = &rx_ring->rx_bi[ntc];
> +
> +		/* Very rare, but possible case. The most common reason:
> +		 * the last fragment contained FCS only, which was then
> +		 * stripped by the HW.
> +		 */
> +		if (unlikely(!size))
> +			goto skip_data;
> +
> +		iavf_sync_rx_buffer(dev, rx_buffer, size);
>  
>  		/* retrieve a buffer from the ring */
>  		if (skb)
> -			iavf_add_rx_frag(rx_ring, rx_buffer, skb, size);
> +			iavf_add_rx_frag(skb, rx_buffer, size, pg_size);
>  		else
> -			skb = iavf_build_skb(rx_ring, rx_buffer, size);
> +			skb = iavf_build_skb(rx_buffer, size, pg_size);
>  
>  		/* exit if we failed to retrieve a buffer */
>  		if (!skb) {
>  			rx_ring->rx_stats.alloc_buff_failed++;
> -			if (rx_buffer && size)
> -				rx_buffer->pagecnt_bias++;
>  			break;
>  		}
>  
> -		iavf_put_rx_buffer(rx_ring, rx_buffer);
> +skip_data:
> +		iavf_put_rx_buffer(rx_ring, dev, rx_buffer, pg_size);
> +
>  		cleaned_count++;
> +		to_refill++;
> +		if (unlikely(++ntc == ring_size))
> +			ntc = 0;
> +
> +		prefetch(IAVF_RX_DESC(rx_ring, ntc));
>  
>  		if (iavf_is_non_eop(rx_ring, rx_desc, skb))
>  			continue;
> @@ -1488,8 +1444,18 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
>  		total_rx_packets++;
>  	}
>  
> +	rx_ring->next_to_clean = ntc;
>  	rx_ring->skb = skb;
>  
> +	if (to_refill >= IAVF_RX_BUFFER_WRITE) {
> +		to_refill = __iavf_alloc_rx_buffers(rx_ring, to_refill, gfp);
> +		/* guarantee a trip back through this routine if there was
> +		 * a failure
> +		 */
> +		if (unlikely(to_refill))
> +			cleaned_count = budget;
> +	}
> +
>  	u64_stats_update_begin(&rx_ring->syncp);
>  	rx_ring->stats.packets += total_rx_packets;
>  	rx_ring->stats.bytes += total_rx_bytes;
> @@ -1497,8 +1463,7 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
>  	rx_ring->q_vector->rx.total_packets += total_rx_packets;
>  	rx_ring->q_vector->rx.total_bytes += total_rx_bytes;
>  
> -	/* guarantee a trip back through this routine if there was a failure */
> -	return failure ? budget : (int)total_rx_packets;
> +	return cleaned_count;
>  }
>  
>  static inline u32 iavf_buildreg_itr(const int type, u16 itr)
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
> index 234e189c1987..9c6661a6edf2 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
> @@ -383,7 +383,6 @@ struct iavf_ring {
>  	struct iavf_q_vector *q_vector;	/* Backreference to associated vector */
>  
>  	struct rcu_head rcu;		/* to avoid race on free */
> -	u16 next_to_alloc;
>  	struct sk_buff *skb;		/* When iavf_clean_rx_ring_irq() must
>  					 * return before it sees the EOP for
>  					 * the current packet, we save that skb
> @@ -426,7 +425,7 @@ static inline unsigned int iavf_rx_pg_order(struct iavf_ring *ring)
>  
>  #define iavf_rx_pg_size(_ring) (PAGE_SIZE << iavf_rx_pg_order(_ring))
>  
> -bool iavf_alloc_rx_buffers(struct iavf_ring *rxr, u16 cleaned_count);
> +void iavf_alloc_rx_buffers(struct iavf_ring *rxr);
>  netdev_tx_t iavf_xmit_frame(struct sk_buff *skb, struct net_device *netdev);
>  void iavf_clean_tx_ring(struct iavf_ring *tx_ring);
>  void iavf_clean_rx_ring(struct iavf_ring *rx_ring);

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
