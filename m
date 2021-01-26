Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E230E304110
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Jan 2021 15:56:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 02A1186F72;
	Tue, 26 Jan 2021 14:56:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xZApZ4J0at+P; Tue, 26 Jan 2021 14:56:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 65C3786F3F;
	Tue, 26 Jan 2021 14:56:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 82E241BF47E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 11:08:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 75B468543E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 11:08:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AqzIHdRW6gWU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jan 2021 11:08:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0F8DA85359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 11:08:34 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id c12so16008451wrc.7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 03:08:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=YexESypTZUXGxM0RNYUq5KscUb8ruQBrW1cIhg1mZJ0=;
 b=bskZDSuMdTWcqASyQOy7OtS5KG6+pzOlrEOQmnZLWuKDog92AwWAC1iTsT88zhd+Ja
 ZTzLqQWfD+pNGaDtTg9/JwZGrg2jqNk3p00j0Vqeou4Es5qRMXi3/B5C/X8WDGdgvLC8
 Mj3oB0BD2rnEjNWyqV+6YxFkgxDX0gk7IrTBWoutXmKk+hMV/QjsiqUyNqRK8Iswsc7m
 L/hxU2h/VFLAZ4DsQP4cuQ7HTUZC0vC1x1KXSwSA/5/55OU/Ep4640dCRmO3bKDGb5Zn
 HmIQWYUROmzmI+3qbDfiEH9LsEymELXtGaIE2e6Wv5p2XA69vrlDal64gt7vPdqeUPwV
 TT1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YexESypTZUXGxM0RNYUq5KscUb8ruQBrW1cIhg1mZJ0=;
 b=WSc+7n6i/LDxBZyYfXc2ckrDMyY6qaCoJzmscQSo/fkppyu3lkBVFIA1qPRX5CrP9L
 sLrswnhRzHdPnmMZADgjobXKq+M9bSvbfmwfg6qMsHupnIxxVSpjfsjQfUy/Q23CQvZi
 Ah3EZ2Lk3WoF2XWqC7It/pUDKsI0lzAaYzSGvpHr/GP2ztVnAej4F1MD4HOim3ijiBCR
 YbWQ+EI9pqP45V/teKPzClgr1CM/As4ZgYVuBeoY673oS/eWLlYdaic0fAv4l2+2fxkq
 p14foQxNnogPbsaRKcNZBHfOJLtXLR1s/zo+9yZR7q9wCDj5njWy5WsbklaHwrK16Zk/
 +tlA==
X-Gm-Message-State: AOAM531PYcKj5elIiTUKxkNJ6Wrw3Y9NAIsU/ywKF4WpW+QHi5GbKIuY
 KMXInySTKP4pvz+4Tqi5Zz2eXQ==
X-Google-Smtp-Source: ABdhPJyfP85ucHm7H/Dm1TztP6OgLXgNB/BxHatQ80kHkb7XarU2/+PooSiT+4Wl68HlfXcBzEPDXg==
X-Received: by 2002:a5d:440a:: with SMTP id z10mr5556407wrq.266.1611659312476; 
 Tue, 26 Jan 2021 03:08:32 -0800 (PST)
Received: from apalos.home (athedsl-376992.home.otenet.gr. [79.131.24.158])
 by smtp.gmail.com with ESMTPSA id z18sm10610031wro.91.2021.01.26.03.08.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Jan 2021 03:08:31 -0800 (PST)
Date: Tue, 26 Jan 2021 13:08:28 +0200
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
To: Alexander Lobakin <alobakin@pm.me>
Message-ID: <YA/4LNJPEQJv++mo@apalos.home>
References: <20210125164612.243838-1-alobakin@pm.me>
 <20210125164612.243838-4-alobakin@pm.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210125164612.243838-4-alobakin@pm.me>
X-Mailman-Approved-At: Tue, 26 Jan 2021 14:56:40 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/3] net: page_pool: simplify
 page recycling condition tests
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
Cc: linux-mm@kvack.org, Jakub Sitnicki <jakub@cloudflare.com>,
 Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
 Dexuan Cui <decui@microsoft.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Pablo Neira Ayuso <pablo@netfilter.org>, Marco Elver <elver@google.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Willem de Bruijn <willemb@google.com>, Salil Mehta <salil.mehta@huawei.com>,
 netdev@vger.kernel.org, Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, Aleksandr Nogikh <nogikh@google.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jan 25, 2021 at 04:47:20PM +0000, Alexander Lobakin wrote:
> pool_page_reusable() is a leftover from pre-NUMA-aware times. For now,
> this function is just a redundant wrapper over page_is_pfmemalloc(),
> so Inline it into its sole call site.
> 
> Signed-off-by: Alexander Lobakin <alobakin@pm.me>
> ---
>  net/core/page_pool.c | 14 ++++----------
>  1 file changed, 4 insertions(+), 10 deletions(-)
> 
> diff --git a/net/core/page_pool.c b/net/core/page_pool.c
> index f3c690b8c8e3..ad8b0707af04 100644
> --- a/net/core/page_pool.c
> +++ b/net/core/page_pool.c
> @@ -350,14 +350,6 @@ static bool page_pool_recycle_in_cache(struct page *page,
>  	return true;
>  }
>  
> -/* page is NOT reusable when:
> - * 1) allocated when system is under some pressure. (page_is_pfmemalloc)
> - */
> -static bool pool_page_reusable(struct page_pool *pool, struct page *page)
> -{
> -	return !page_is_pfmemalloc(page);
> -}
> -
>  /* If the page refcnt == 1, this will try to recycle the page.
>   * if PP_FLAG_DMA_SYNC_DEV is set, we'll try to sync the DMA area for
>   * the configured size min(dma_sync_size, pool->max_len).
> @@ -373,9 +365,11 @@ __page_pool_put_page(struct page_pool *pool, struct page *page,
>  	 * regular page allocator APIs.
>  	 *
>  	 * refcnt == 1 means page_pool owns page, and can recycle it.
> +	 *
> +	 * page is NOT reusable when allocated when system is under
> +	 * some pressure. (page_is_pfmemalloc)
>  	 */
> -	if (likely(page_ref_count(page) == 1 &&
> -		   pool_page_reusable(pool, page))) {
> +	if (likely(page_ref_count(page) == 1 && !page_is_pfmemalloc(page))) {
>  		/* Read barrier done in page_ref_count / READ_ONCE */
>  
>  		if (pool->p.flags & PP_FLAG_DMA_SYNC_DEV)
> -- 
> 2.30.0
> 
> 

Reviewed-by: Ilias Apalodimas <ilias.apalodimas@linaro.org>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
