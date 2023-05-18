Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B1015707A85
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 May 2023 09:03:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4BE7160B15;
	Thu, 18 May 2023 07:03:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4BE7160B15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684393435;
	bh=dG7km2K7sPRGRkoOlVcN8dz9iUetSRj24dVFkE7oKyc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j5GjOTnn+iFONKdzUzDrgdY6k34Qv0fACVlkZ+seZlNHF4Rv6Ckf16ECGvzElIcpi
	 9+eEeVxlN98qWM90a8j6/cMSN3TeNUqYnPFpLB4b/i9eiuulpWdoEqKzCC0nYsPE1p
	 FOMi8XD3YVd5DEzT80y024zrP4z3I8ulcdosy8vlGmMoI9KqngZdEhmxaoTnYns0+w
	 tZ36tJ9O12udj4Ords2P8rpK4fpV8CC1BV5F6+UN/kujrChtDunDW9wzfiAscRnQMK
	 GSSbZYW5hKG22+j+hFWhO1R+e/V8HF64m7c7h6HX9Jayv6Vsm2P1EW3zQRueB+JOEK
	 q4fEM62Ka9dpQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fI12Sk4ZMCJc; Thu, 18 May 2023 07:03:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DEFA560B09;
	Thu, 18 May 2023 07:03:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DEFA560B09
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A4A141BF846
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 07:03:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7AB37417CD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 07:03:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7AB37417CD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hpv_rrRWkLqw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 May 2023 07:03:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2CB8F417A7
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2CB8F417A7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 07:03:47 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id
 5b1f17b1804b1-3f41d087b24so11534195e9.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 00:03:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684393425; x=1686985425;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=cmE3Hw/g7PPXrHo8vcI6AjK/ohP/P6DVA7E2EEZA5aw=;
 b=aF4iuR39r5vWv7gv794qDAHt7Cm1dgG7jEE0aJ9tmTh6Sam6KFaL1Ddpul3rFDFFzH
 Huvl5AcMmuvYx6fEWkBt40fw1ip3sM6mavnEZ4hkaZzL8YEsKSLM8NOydUHv/uGiSBUk
 85o8PNMnl8EnafaEGxG3BDKBRuq1tMF5p/3DtZgZZ2z6eI9Fb0n0+LGAnGxLzT3QoxmA
 T/h0+871EOK9oEjwtrIWXwhG53vylQqiDiEhsmfRuy8kFcCgQ5EExTx0M3JtdthR4Vkq
 79UhqImLtp59xGkAcNiyQvhlhEzyoTYw7ksytBpp9gxZ0g5VFxd5V5KdXcW1ATOuOZLh
 MMBA==
X-Gm-Message-State: AC+VfDxzznq/5OqnuD6jRvCLx93PciNE5NGzS88Y4S+sUxSatpSRxroU
 ldXm7eY7LroGSGKZWZSvjP4ZVA==
X-Google-Smtp-Source: ACHHUZ7KA7gW++urZQKvPGWLM/0di9BvXzgoPwnUHrCMESNRXMuASR1PwcyqGPzX8tXB+3miGBskrg==
X-Received: by 2002:adf:fb08:0:b0:309:3c0c:b2c1 with SMTP id
 c8-20020adffb08000000b003093c0cb2c1mr572723wrr.23.1684393424852; 
 Thu, 18 May 2023 00:03:44 -0700 (PDT)
Received: from hera (ppp176092130041.access.hol.gr. [176.92.130.41])
 by smtp.gmail.com with ESMTPSA id
 d15-20020a5d644f000000b00307a83ea722sm1110439wrw.58.2023.05.18.00.03.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 May 2023 00:03:44 -0700 (PDT)
Date: Thu, 18 May 2023 10:03:41 +0300
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <ZGXNzX77/5cXqAhe@hera>
References: <20230516161841.37138-1-aleksander.lobakin@intel.com>
 <20230516161841.37138-8-aleksander.lobakin@intel.com>
 <20230517211211.1d1bbd0b@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230517211211.1d1bbd0b@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1684393425; x=1686985425;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=cmE3Hw/g7PPXrHo8vcI6AjK/ohP/P6DVA7E2EEZA5aw=;
 b=lNypA+WGF2vO1hR7ikW9cji9tuOPvcbtbUBOxHzGqO4xtpMGVB6DkS1/BXmv9xnBAj
 L4XUoIwAROLoDGxQc7FPnw+nIJnpo0e5vuiaPH3mNf8/Qm9m4WgJUXgFSHOMVqF8kQF0
 lGq98PFQ6c+vLqDalLC72hlWN0qUAALcjHXfF3pijF/1SVHSRbm3z5gN8zvLEWFu69aR
 1Gw5PfG+ns+3qIjk+4WbR6QqLMby0ilKS4tz60gv8qfooG6Py867g57LRIEukAXUBzpm
 D2thI7uvQKTaDqu89O5+AjN7X/RqPl6B4z+gsMxjNPlT9HOo3ORGOIDxnBauldOllBpk
 vwfg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org
 header.a=rsa-sha256 header.s=google header.b=lNypA+WG
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
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi all,

> On Wed, May 17, 2023 at 09:12:11PM -0700, Jakub Kicinski wrote:
> On Tue, 16 May 2023 18:18:37 +0200 Alexander Lobakin wrote:
> > Each driver is responsible for syncing buffers written by HW for CPU
> > before accessing them. Almost each PP-enabled driver uses the same
> > pattern, which could be shorthanded into a static inline to make driver
> > code a little bit more compact.
> > Introduce a couple such functions. The first one takes the actual size
> > of the data written by HW and is the main one to be used on Rx. The
> > second does the same, but only if the PP performs DMA synchronizations
> > at all. The last one picks max_len from the PP params and is designed
> > for more extreme cases when the size is unknown, but the buffer still
> > needs to be synced.
> > Also constify pointer arguments of page_pool_get_dma_dir() and
> > page_pool_get_dma_addr() to give a bit more room for optimization,
> > as both of them are read-only.
>
> Very neat.
>
> > diff --git a/include/net/page_pool.h b/include/net/page_pool.h
> > index 8435013de06e..f740c50b661f 100644
> > --- a/include/net/page_pool.h
> > +++ b/include/net/page_pool.h
> > @@ -32,7 +32,7 @@
> >
> >  #include <linux/mm.h> /* Needed by ptr_ring */
> >  #include <linux/ptr_ring.h>
> > -#include <linux/dma-direction.h>
> > +#include <linux/dma-mapping.h>
>
> highly nit picky - but isn't dma-mapping.h pretty heavy?
> And we include page_pool.h in skbuff.h. Not that it matters
> today, but maybe one day we'll succeed putting skbuff.h
> on a diet -- so perhaps it's better to put "inline helpers
> with non-trivial dependencies" into a new header?
>
> >  #define PP_FLAG_DMA_MAP		BIT(0) /* Should page_pool do the DMA
> >  					* map/unmap
>
> > +/**
> > + * page_pool_dma_sync_for_cpu - sync Rx page for CPU after it's written by HW
> > + * @pool: page_pool which this page belongs to
> > + * @page: page to sync
> > + * @dma_sync_size: size of the data written to the page
> > + *
> > + * Can be used as a shorthand to sync Rx pages before accessing them in the
> > + * driver. Caller must ensure the pool was created with %PP_FLAG_DMA_MAP.
> > + */
> > +static inline void page_pool_dma_sync_for_cpu(const struct page_pool *pool,
> > +					      const struct page *page,
> > +					      u32 dma_sync_size)
> > +{
> > +	dma_sync_single_range_for_cpu(pool->p.dev,
> > +				      page_pool_get_dma_addr(page),
> > +				      pool->p.offset, dma_sync_size,
> > +				      page_pool_get_dma_dir(pool));
>
> Likely a dumb question but why does this exist?
> Is there a case where the "maybe" version is not safe?
>

I got similar concerns here.  Syncing for the cpu is currently a
responsibility for the driver.  The reason for having an automated DMA sync
is that we know when we allocate buffers for the NIC to consume so we can
safely sync them accordingly.  I am fine having a page pool version for the
cpu sync, but do we really have to check the pp flags for that?  IOW if you
are at the point that you need to sync a buffer for the cpu *someone*
already mapped it for you.  Regardsless of who mapped it the sync is
identical

> > +}
> > +
> > +/**
> > + * page_pool_dma_maybe_sync_for_cpu - sync Rx page for CPU if needed
> > + * @pool: page_pool which this page belongs to
> > + * @page: page to sync
> > + * @dma_sync_size: size of the data written to the page
> > + *
> > + * Performs DMA sync for CPU, but only when required (swiotlb, IOMMU etc.).
> > + */
> > +static inline void
> > +page_pool_dma_maybe_sync_for_cpu(const struct page_pool *pool,
> > +				 const struct page *page, u32 dma_sync_size)
> > +{
> > +	if (pool->p.flags & PP_FLAG_DMA_SYNC_DEV)
> > +		page_pool_dma_sync_for_cpu(pool, page, dma_sync_size);
> > +}

Thanks
/Ilias
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
