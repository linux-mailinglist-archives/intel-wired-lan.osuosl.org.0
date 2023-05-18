Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8CE7078C1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 May 2023 06:08:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 02D6A613FD;
	Thu, 18 May 2023 04:08:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 02D6A613FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684382895;
	bh=qDMT2nLXxHokJDhJmxohWDO7YOVNeDC1fX08bFoIx2Y=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HWkt3xK1ceeuGqBMzjM2osZJ9k7s6cPNHZP5l5pq6wwfPgPsGjELkJOarcg1ZFamw
	 4Ls9lKQwRi5gNJAZFRDkFVUF9zDRY4YXN+9O78B4PfXP1NEH+jBwaLxFDoMA23/3Iu
	 n/OaLLC6VVl2Fe5gj7kW/4ZPSHsbkxIDllqcMOLTRocS8SdAukFDJ2C7tSzjGJIqAV
	 yavXUcDTkJIviPQjdQo5NmHpK9E3423fLikZu7UlMqE0eddmkZaKdOwJ8yst+zu7/a
	 NRiZO+3b7IHfqLs4jwwrLi9EBykTyLnc3ibAF7wHSu/d1cZ7u9vLU4htR4l+cU9cXZ
	 SnTrU7tIZf4ig==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Y7zYBrorXEi; Thu, 18 May 2023 04:08:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D0B4E60F2F;
	Thu, 18 May 2023 04:08:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D0B4E60F2F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DE4531BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 04:08:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A931084324
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 04:08:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A931084324
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lKXBdDvYauCa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 May 2023 04:08:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0DE6D84316
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0DE6D84316
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 04:08:07 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id DD5AA64CCC;
 Thu, 18 May 2023 04:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6DAFC433EF;
 Thu, 18 May 2023 04:08:05 +0000 (UTC)
Date: Wed, 17 May 2023 21:08:04 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20230517210804.7de610bd@kernel.org>
In-Reply-To: <20230516161841.37138-7-aleksander.lobakin@intel.com>
References: <20230516161841.37138-1-aleksander.lobakin@intel.com>
 <20230516161841.37138-7-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1684382886;
 bh=ADz8kxD3Luyc/5/5hhVRSVuuJbhH+25ni9y4rvosUjo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=fVrI0irRX5VsTxRAKOoWx+H3FkBZ4ItcOevDWVNX+Sykq22FT8OQzNyzomFxA9+98
 tR5zFpOhvHTLs2w+xiHklppIvqhxKmavy0kipowd/fsGbQyR3G6+k8306KWzrrWCg9
 pRO7C0Ht/9AHEmuouBckI4umXvClVr8IsH+b1OEJyT3maHzaQiCEcphaS1it/cVQkj
 n10hKZ43zivv43EX06PqmToFieGnOxFDR4vDtSGWRhQZdYYpAHLB9UL1rtu7vQUlzz
 I64wOU4/Ivoz5CEw8cxBrs7MLzO/OwdE3mIXWTNilX1xqIbndGLr27mxGMf74f7vTo
 TqEU9TYgtDUqg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=fVrI0irR
Subject: Re: [Intel-wired-lan] [PATCH net-next 06/11] net: page_pool: avoid
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
 Christoph Hellwig <hch@lst.de>, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 16 May 2023 18:18:36 +0200 Alexander Lobakin wrote:
> +		/* Try to avoid calling no-op syncs */
> +		pool->p.flags |= PP_FLAG_DMA_MAYBE_SYNC;
> +		pool->p.flags &= ~PP_FLAG_DMA_SYNC_DEV;
>  	}
>  
>  	if (PAGE_POOL_DMA_USE_PP_FRAG_COUNT &&
> @@ -323,6 +327,12 @@ static bool page_pool_dma_map(struct page_pool *pool, struct page *page)
>  
>  	page_pool_set_dma_addr(page, dma);
>  
> +	if ((pool->p.flags & PP_FLAG_DMA_MAYBE_SYNC) &&
> +	    dma_need_sync(pool->p.dev, dma)) {
> +		pool->p.flags |= PP_FLAG_DMA_SYNC_DEV;
> +		pool->p.flags &= ~PP_FLAG_DMA_MAYBE_SYNC;
> +	}

is it just me or does it feel cleaner to allocate a page at init,
and throw it into the cache, rather than adding a condition to a
fast(ish) path?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
