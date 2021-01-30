Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D90309186
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Jan 2021 03:31:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 13475857EB;
	Sat, 30 Jan 2021 02:31:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BNGc+UOgsa6V; Sat, 30 Jan 2021 02:31:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0D13A872C5;
	Sat, 30 Jan 2021 02:31:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 02C081BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jan 2021 02:31:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E37A7874E4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jan 2021 02:31:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FZUyBg6l8gcV for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Jan 2021 02:31:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0D81C874E3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jan 2021 02:31:32 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9DE0464E1A;
 Sat, 30 Jan 2021 02:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611973892;
 bh=cGf3iJ+ecwtb9Ubl0TlE4VdI62kqOG/SRgvcxfXZejg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Wyotr9H9B00UJUKheIXtljvx8UCaT02HI/9TZ//h3FJLuKKoSlXIoUT4dm6LRRuVv
 AUVjtQBdvXqMf4nJUiAd8k1d8TkppgzKPcKYBIq527jRWD3XHIy0fiJkEkxNZthJvx
 3YD6JzlBY2rtZOnwnxCqjZYRG3Tp9Iz5+9HEbe3615xDxhTdjSuGf9yxlvpeK5zzmO
 D4fPKYi/j0h0Urv7ObZS28fLIdKiQL90fnnAcGF9W2dFqKpeV5tNQ+h8miISEY0PSP
 NEFeNtttgTEBEGpKv4rAQDR1NI7PhXdj4rbOefks8jgfQ61g1GQ/k+Y4dxmeqiybEk
 Yu2M65T9m2x7w==
Date: Fri, 29 Jan 2021 18:30:51 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Message-ID: <20210129183051.62874a6d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210127201031.98544-2-alobakin@pm.me>
References: <20210127201031.98544-1-alobakin@pm.me>
 <20210127201031.98544-2-alobakin@pm.me>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 1/4] mm: constify
 page_is_pfmemalloc() argument
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
Cc: Randy Dunlap <rdunlap@infradead.org>, Alexander Lobakin <alobakin@pm.me>,
 linux-mm@kvack.org, Jakub Sitnicki <jakub@cloudflare.com>,
 Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
 Dexuan Cui <decui@microsoft.com>, intel-wired-lan@lists.osuosl.org,
 Jesper Dangaard Brouer <brouer@redhat.com>, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Pablo Neira Ayuso <pablo@netfilter.org>, Marco Elver <elver@google.com>,
 David Rientjes <rientjes@google.com>, Willem de Bruijn <willemb@google.com>,
 Salil Mehta <salil.mehta@huawei.com>, netdev@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 27 Jan 2021 20:11:01 +0000 Alexander Lobakin wrote:
> The function only tests for page->index, so its argument should be
> const.
> 
> Signed-off-by: Alexander Lobakin <alobakin@pm.me>
> ---
>  include/linux/mm.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/linux/mm.h b/include/linux/mm.h
> index ecdf8a8cd6ae..078633d43af9 100644
> --- a/include/linux/mm.h
> +++ b/include/linux/mm.h
> @@ -1584,7 +1584,7 @@ struct address_space *page_mapping_file(struct page *page);
>   * ALLOC_NO_WATERMARKS and the low watermark was not
>   * met implying that the system is under some pressure.
>   */
> -static inline bool page_is_pfmemalloc(struct page *page)
> +static inline bool page_is_pfmemalloc(const struct page *page)
>  {
>  	/*
>  	 * Page index cannot be this large so this must be

No objections for this going via net-next?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
