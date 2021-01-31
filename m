Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D30A309C24
	for <lists+intel-wired-lan@lfdr.de>; Sun, 31 Jan 2021 13:57:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ECF7D87028;
	Sun, 31 Jan 2021 12:57:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mt9Pyg6PZL9V; Sun, 31 Jan 2021 12:57:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7F19B87082;
	Sun, 31 Jan 2021 12:57:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7E2FC1BF2BC
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jan 2021 12:57:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 78B8787082
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jan 2021 12:57:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uC6N23yS60pE for <intel-wired-lan@lists.osuosl.org>;
 Sun, 31 Jan 2021 12:57:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail2.protonmail.ch (mail2.protonmail.ch [185.70.40.22])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2C47D87028
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jan 2021 12:57:33 +0000 (UTC)
Date: Sun, 31 Jan 2021 12:57:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me; s=protonmail;
 t=1612097850; bh=hy3HTU1Gr4SJ412CK0eDCO6whxGXOGwlEZQ/bHzh0IY=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
 b=gOF3DQLDOPbnITXBUL2KPwaqec06jg7hgwxBrpixduvxzEnKNGsfv8ItuXKrxv9Ng
 JiqbWegAiSb0RANpw00MRZt5dHVkVaU/4aT5yLL76tDfJs1aAdwYldD7IWkRc5kxbh
 1BAJMWanlZQ2JqPkXy6HSIYWPNKbrH0EQAF1HDdchGDHYnALdR6ajs+2btoq67GU9f
 f5YZ1517Lx6mBTrwwu58TBCcS9IuiaspQ6k7jtFh66w62CLwSumleX42KAPMkjKfzH
 bHZna372czPrByZznTmm5VyRMiP9VCQ0UQEj/5CLGRQO8Ef03IeNcCrs59678BmNjl
 NGoTfgARWpgvw==
To: Matthew Wilcox <willy@infradead.org>
From: Alexander Lobakin <alobakin@pm.me>
Message-ID: <20210131125713.8710-1-alobakin@pm.me>
In-Reply-To: <20210131122205.GL308988@casper.infradead.org>
References: <20210131120844.7529-1-alobakin@pm.me>
 <20210131120844.7529-4-alobakin@pm.me>
 <20210131122205.GL308988@casper.infradead.org>
MIME-Version: 1.0
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
Reply-To: Alexander Lobakin <alobakin@pm.me>
Cc: Randy Dunlap <rdunlap@infradead.org>, Alexander Lobakin <alobakin@pm.me>,
 Jakub Sitnicki <jakub@cloudflare.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, Dexuan Cui <decui@microsoft.com>,
 intel-wired-lan@lists.osuosl.org, Jesper Dangaard Brouer <brouer@redhat.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Pablo Neira Ayuso <pablo@netfilter.org>, Marco Elver <elver@google.com>,
 John Hubbard <jhubbard@nvidia.com>, David Rientjes <rientjes@google.com>,
 Willem de Bruijn <willemb@google.com>, linux-mm@kvac.osuosl.org,
 Salil Mehta <salil.mehta@huawei.com>, netdev@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 k.org@osuosl.org, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Matthew Wilcox <willy@infradead.org>
Date: Sun, 31 Jan 2021 12:22:05 +0000

> On Sun, Jan 31, 2021 at 12:11:52PM +0000, Alexander Lobakin wrote:
> > A bunch of drivers test the page before reusing/recycling for two
> > common conditions:
> >  - if a page was allocated under memory pressure (pfmemalloc page);
> >  - if a page was allocated at a distant memory node (to exclude
> >    slowdowns).
> >
> > Introduce a new common inline for doing this, with likely() already
> > folded inside to make driver code a bit simpler.
> 
> I don't see the need for the 'dev_' prefix.  That actually confuses me
> because it makes me think this is tied to ZONE_DEVICE or some such.

Several functions right above this one also use 'dev_' prefix. It's
a rather old mark that it's about network devices.

> So how about calling it just 'page_is_reusable' and putting it in mm.h
> with page_is_pfmemalloc() and making the comment a little less network-centric?

This pair of conditions (!pfmemalloc + local memory node) is really
specific to network drivers. I didn't see any other instances of such
tests, so I don't see a reason to place it in a more common mm.h.

> Or call it something like skb_page_is_recyclable() since it's only used
> by networking today.  But I bet it could/should be used more widely.

There's nothing about skb. Tested page is just a memory chunk for DMA
transaction. It can be used as skb head/frag, for XDP buffer/frame or
for XSK umem.

> > +/**
> > + * dev_page_is_reusable - check whether a page can be reused for network Rx
> > + * @page: the page to test
> > + *
> > + * A page shouldn't be considered for reusing/recycling if it was allocated
> > + * under memory pressure or at a distant memory node.
> > + *
> > + * Returns false if this page should be returned to page allocator, true
> > + * otherwise.
> > + */
> > +static inline bool dev_page_is_reusable(const struct page *page)
> > +{
> > +	return likely(page_to_nid(page) == numa_mem_id() &&
> > +		      !page_is_pfmemalloc(page));
> > +}
> > +

Al

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
