Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77275708461
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 May 2023 16:56:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6715142B83;
	Thu, 18 May 2023 14:56:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6715142B83
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684421814;
	bh=m88l8nsZOojXKQw5nnPTkzQdfaSk4nE38gINFZBkB0g=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=I72QarnoVNs6/9qiG0QP+3k8g3G9K+U+3zAJ0ef2Pa7PhZxAAI5tkiyyrUaObGYUY
	 elVpCNah6FY2B4B4qIBNaoePS3skrYeteIC9ihSIXMh1TcJI0H/FQo2vZK/2MMtxDT
	 26HM4MLv1EpYQdzc6oVPMwYA9X9TnRMHkUi8gidJxJ491acyqfghWmz/jdazj6eHd6
	 0tFZO2LGMxhi6qGb3riKzSQQvvd2XuJWO7sIXwQzXNbECLJMK3B1T0a4pX3K8a0xSo
	 3hpj1OB+/Swy4PuYjfrmmwXFnO8+nKR16Cv4agQd7YvjLNI7pMgf6r6FYUd9hPQ3bw
	 rhtRgUAfCa1Ow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GbVH9NnJlQOz; Thu, 18 May 2023 14:56:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 28AFA417EE;
	Thu, 18 May 2023 14:56:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 28AFA417EE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7050A1BF947
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 14:56:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 523D440AA1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 14:56:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 523D440AA1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cNscgL5KUoAG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 May 2023 14:56:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 883F4417C0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 883F4417C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 14:56:46 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id CD87E60A52;
 Thu, 18 May 2023 14:56:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA7CCC433EF;
 Thu, 18 May 2023 14:56:44 +0000 (UTC)
Date: Thu, 18 May 2023 07:56:43 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20230518075643.3a242837@kernel.org>
In-Reply-To: <9feef136-7ff3-91a4-4198-237b07a91c0c@intel.com>
References: <20230516161841.37138-1-aleksander.lobakin@intel.com>
 <20230516161841.37138-8-aleksander.lobakin@intel.com>
 <20230517211211.1d1bbd0b@kernel.org>
 <9feef136-7ff3-91a4-4198-237b07a91c0c@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1684421805;
 bh=falOcbL4ZZzvoQbqldjfq18URK37IBRaR29UBqVOjsk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=dDDWYbaKviNkf6e5ZNGk+G/Cbzx/2OiZ2ynEHeldkHvdLZMetuHksyWOJmATx2ysB
 uvQfUuFerlLwgNbz+KAD2e/oPzHYgHx/iL58dhb/Hue8WKHacs/NwB6gq7wWqbdT4K
 BOyBNHIwj7aYjsMnuoljesAIG4CVio4ZyJZe3LnOYNaegS8PtbAfnljjSGKhVXT41l
 BPk87oVE5+9u4zM5U2od2Rkn6oG5S8l+zQzPCDjv75/nB5ZE+wf7vWYlo1Cc47Kz2Q
 fUcNN7RSTXcwXNUCajZgIOkEs0RZ34+oLCdsWRz4Y1PDw3emRweMsSqkLL0MJeyDRa
 WVHqU0xDpaZeQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=dDDWYbaK
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
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, Christoph
 Hellwig <hch@lst.de>, Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 18 May 2023 15:45:33 +0200 Alexander Lobakin wrote:
> >> diff --git a/include/net/page_pool.h b/include/net/page_pool.h
> >> index 8435013de06e..f740c50b661f 100644
> >> --- a/include/net/page_pool.h
> >> +++ b/include/net/page_pool.h
> >> @@ -32,7 +32,7 @@
> >>  
> >>  #include <linux/mm.h> /* Needed by ptr_ring */
> >>  #include <linux/ptr_ring.h>
> >> -#include <linux/dma-direction.h>
> >> +#include <linux/dma-mapping.h>  
> > 
> > highly nit picky - but isn't dma-mapping.h pretty heavy?
> > And we include page_pool.h in skbuff.h. Not that it matters
> > today, but maybe one day we'll succeed putting skbuff.h
> > on a diet -- so perhaps it's better to put "inline helpers
> > with non-trivial dependencies" into a new header?  
> 
> Maybe we could rather stop including page_pool.h into skbuff.h? It's
> used there only for  1 external, which could be declared directly in
> skbuff.h. When Matteo was developing PP recycling, he was storing
> mem_info in skb as well, but then it was optimized and we don't do that
> anymore.
> It annoys sometimes to see the whole kernel rebuilt each time I edit
> pag_pool.h :D In fact, only PP-enabled drivers and core code need it.

Or maybe we can do both? I think that separating types, defines and
simple wrappers from helpers should be considered good code hygiene.

> >>  #define PP_FLAG_DMA_MAP		BIT(0) /* Should page_pool do the DMA
> >>  					* map/unmap  
> >   
> >> +/**
> >> + * page_pool_dma_sync_for_cpu - sync Rx page for CPU after it's written by HW
> >> + * @pool: page_pool which this page belongs to
> >> + * @page: page to sync
> >> + * @dma_sync_size: size of the data written to the page
> >> + *
> >> + * Can be used as a shorthand to sync Rx pages before accessing them in the
> >> + * driver. Caller must ensure the pool was created with %PP_FLAG_DMA_MAP.
> >> + */
> >> +static inline void page_pool_dma_sync_for_cpu(const struct page_pool *pool,
> >> +					      const struct page *page,
> >> +					      u32 dma_sync_size)
> >> +{
> >> +	dma_sync_single_range_for_cpu(pool->p.dev,
> >> +				      page_pool_get_dma_addr(page),
> >> +				      pool->p.offset, dma_sync_size,
> >> +				      page_pool_get_dma_dir(pool));  
> > 
> > Likely a dumb question but why does this exist?
> > Is there a case where the "maybe" version is not safe?  
> 
> If the driver doesn't set DMA_SYNC_DEV flag, then the "maybe" version
> will never do anything. But we may want to use these helpers in such
> drivers too?

Oh, I see, the polarity of the flag is awkward. Hm.
Maybe just rename things, drop the "maybe_" and prefix the non-checking
version with __ ? We expect drivers to call the version which check the
flag mostly (AFAIU), so it should have the most obvious name.
Plus perhaps a sentence in the kdoc explaining why __ exists would be
good, if it wasn't obvious to me it may not be obvious to others..
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
