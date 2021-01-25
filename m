Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 048AD302B7A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Jan 2021 20:22:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B1FAC8707F;
	Mon, 25 Jan 2021 19:22:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lw63Ly-ok2IE; Mon, 25 Jan 2021 19:22:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0A6A58706A;
	Mon, 25 Jan 2021 19:22:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 706A11BF361
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jan 2021 19:22:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6BE0E87379
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jan 2021 19:22:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uLSL2w-NiTLj for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Jan 2021 19:22:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6F4E986BF5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jan 2021 19:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1611602559;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sLaxbldCpmtlUDFodMqs6EtRoH2fJw9kHTicx3mvJQs=;
 b=hvPyM2X0t8/a1Hl1GHJUJLTZnwM2EAdqO/HQuzPvzyIHHGLuYA1hndLkJWsPQo2SlLMmlx
 rBSv1bD2J9G58sOhE8Qc4GaQ3RthaZOgz8ExP4ct5PUXHbFNIiwrrzgFcNNNnVjRqdEGvD
 cM+3mRzbbfYxJEF8RaPDVA8+wiI5oM0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-561-wbF-Bqt3NsKIoD6ejRlndQ-1; Mon, 25 Jan 2021 14:22:34 -0500
X-MC-Unique: wbF-Bqt3NsKIoD6ejRlndQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E23E9100C601;
 Mon, 25 Jan 2021 19:22:30 +0000 (UTC)
Received: from carbon (unknown [10.36.110.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 251C960C0F;
 Mon, 25 Jan 2021 19:22:21 +0000 (UTC)
Date: Mon, 25 Jan 2021 20:22:19 +0100
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: Alexander Lobakin <alobakin@pm.me>
Message-ID: <20210125202219.43d3d0f0@carbon>
In-Reply-To: <20210125164612.243838-4-alobakin@pm.me>
References: <20210125164612.243838-1-alobakin@pm.me>
 <20210125164612.243838-4-alobakin@pm.me>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
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
Cc: Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-mm@kvack.org,
 Jakub Sitnicki <jakub@cloudflare.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, Dexuan Cui <decui@microsoft.com>,
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com,
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

On Mon, 25 Jan 2021 16:47:20 +0000
Alexander Lobakin <alobakin@pm.me> wrote:

> pool_page_reusable() is a leftover from pre-NUMA-aware times. For now,
> this function is just a redundant wrapper over page_is_pfmemalloc(),
> so Inline it into its sole call site.
> 
> Signed-off-by: Alexander Lobakin <alobakin@pm.me>
> ---
>  net/core/page_pool.c | 14 ++++----------
>  1 file changed, 4 insertions(+), 10 deletions(-)

Acked-by: Jesper Dangaard Brouer <brouer@redhat.com>

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



-- 
Best regards,
  Jesper Dangaard Brouer
  MSc.CS, Principal Kernel Engineer at Red Hat
  LinkedIn: http://www.linkedin.com/in/brouer

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
