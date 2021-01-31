Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79AB1309BF6
	for <lists+intel-wired-lan@lfdr.de>; Sun, 31 Jan 2021 13:23:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 17A0687079;
	Sun, 31 Jan 2021 12:23:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DlZIM-bLvOBp; Sun, 31 Jan 2021 12:23:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6FB1F8706D;
	Sun, 31 Jan 2021 12:23:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6AB111BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jan 2021 12:23:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 662CD86961
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jan 2021 12:23:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vngLjA-urO08 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 31 Jan 2021 12:23:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 72C5686957
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jan 2021 12:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=3ierbyMbeaakxC40P45R1nniLaglqq7PY9us93p+KQw=; b=qikTLHGH1/fMk3qHWKTEUrYKqH
 etPBhwUXi1FP84nl4bQv22D1vd7cXGv1k3A2f0MR8w4bQVcChcXIBzUeUgK1INLwq0kvSXZIUwDox
 SPtHCeDYP+1+P2kT3BFBRC0r3bqMxLC0UwoZOEcmVDEAZy7pKWzOCVqS8GiF/guphGy85q0IfoJrD
 6+8p98UD5vx+Cw2dtA98qN7b/xLPz3tqpy4S+GWv5XhneeDzuHjPw3Ts0lyDTV7hs8PReKkQdAXnb
 dnaOvjZEtkMKNa33REsiB1lFXuKg59mF/vT3GVvd1mGxU9H9JTUpjEFS9KQXcS36kLRDGuUrsfM1w
 MH6iUUog==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1l6Bjx-00CQj7-90; Sun, 31 Jan 2021 12:22:05 +0000
Date: Sun, 31 Jan 2021 12:22:05 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Alexander Lobakin <alobakin@pm.me>
Message-ID: <20210131122205.GL308988@casper.infradead.org>
References: <20210131120844.7529-1-alobakin@pm.me>
 <20210131120844.7529-4-alobakin@pm.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210131120844.7529-4-alobakin@pm.me>
Subject: Re: [Intel-wired-lan] [PATCH v3 net-next 3/5] net: introduce common
 dev_page_is_reusable()
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
Cc: Randy Dunlap <rdunlap@infradead.org>, linux-mm@kvack.org,
 Jakub Sitnicki <jakub@cloudflare.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, Dexuan Cui <decui@microsoft.com>,
 intel-wired-lan@lists.osuosl.org, Jesper Dangaard Brouer <brouer@redhat.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Pablo Neira Ayuso <pablo@netfilter.org>, Marco Elver <elver@google.com>,
 John Hubbard <jhubbard@nvidia.com>, David Rientjes <rientjes@google.com>,
 Willem de Bruijn <willemb@google.com>, Salil Mehta <salil.mehta@huawei.com>,
 netdev@vger.kernel.org, Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 linux-kernel@vger.kernel.org, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Jan 31, 2021 at 12:11:52PM +0000, Alexander Lobakin wrote:
> A bunch of drivers test the page before reusing/recycling for two
> common conditions:
>  - if a page was allocated under memory pressure (pfmemalloc page);
>  - if a page was allocated at a distant memory node (to exclude
>    slowdowns).
> 
> Introduce a new common inline for doing this, with likely() already
> folded inside to make driver code a bit simpler.

I don't see the need for the 'dev_' prefix.  That actually confuses me
because it makes me think this is tied to ZONE_DEVICE or some such.

So how about calling it just 'page_is_reusable' and putting it in mm.h
with page_is_pfmemalloc() and making the comment a little less network-centric?

Or call it something like skb_page_is_recyclable() since it's only used
by networking today.  But I bet it could/should be used more widely.

> +/**
> + * dev_page_is_reusable - check whether a page can be reused for network Rx
> + * @page: the page to test
> + *
> + * A page shouldn't be considered for reusing/recycling if it was allocated
> + * under memory pressure or at a distant memory node.
> + *
> + * Returns false if this page should be returned to page allocator, true
> + * otherwise.
> + */
> +static inline bool dev_page_is_reusable(const struct page *page)
> +{
> +	return likely(page_to_nid(page) == numa_mem_id() &&
> +		      !page_is_pfmemalloc(page));
> +}
> +
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
