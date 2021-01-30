Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 079E3309815
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Jan 2021 20:45:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7EFF787051;
	Sat, 30 Jan 2021 19:45:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VOPxjqAI3bJ4; Sat, 30 Jan 2021 19:45:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6DF3F87228;
	Sat, 30 Jan 2021 19:45:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DECA21BF46D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jan 2021 19:45:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DA2EF859D9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jan 2021 19:45:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LWlqPBWN481i for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Jan 2021 19:45:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail1.protonmail.ch (mail1.protonmail.ch [185.70.40.18])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0D338859D2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jan 2021 19:45:40 +0000 (UTC)
Date: Sat, 30 Jan 2021 19:45:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me; s=protonmail;
 t=1612035938; bh=KSS1WvHH+UXhfQLYUW4Daeb2Nv6yueVQ+VvjzEee/oA=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
 b=GyORbfU+/iCXjaGF+dybJTXC9VvnAg4Yv47+oBL5y2ZsjMfuSNNu9ada072bWwz3G
 GJ1CogfM/BwCFIyL+YpjA0G7iY/z8dYQDD7uIQLCfNbYz2RLUS4TcyG55EFfJjlCBF
 DdaXtFEVU4OtuU0zNge83VNKL/NAg/cRtX8RrOz++4yhtNMD7kNU3GCt0xBl1IeP7i
 l5mPl/Zzcq0KSA7yhR9i6z+tO8uWgKGN0xWm07zlODJ3HEjhQK7IWuQV7iBTJic8oy
 U1VOjsuEKkRpcZl7/B5FuDSI2Jhbo7R91ouAZTWeUrEpFhPtlpvM8Gi4SFC3KQFCoK
 cOI3C6b1kSKFA==
To: Jakub Kicinski <kuba@kernel.org>
From: Alexander Lobakin <alobakin@pm.me>
Message-ID: <20210130194459.37837-1-alobakin@pm.me>
In-Reply-To: <20210130110707.3122a360@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <20210127201031.98544-1-alobakin@pm.me>
 <20210127201031.98544-4-alobakin@pm.me>
 <20210129183907.2ae5ca3d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20210130154149.8107-1-alobakin@pm.me>
 <20210130110707.3122a360@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 3/4] net: introduce common
 dev_page_is_reserved()
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

From: Jakub Kicinski <kuba@kernel.org>
Date: Sat, 30 Jan 2021 11:07:07 -0800

> On Sat, 30 Jan 2021 15:42:29 +0000 Alexander Lobakin wrote:
> > > On Wed, 27 Jan 2021 20:11:23 +0000 Alexander Lobakin wrote:
> > > > + * dev_page_is_reserved - check whether a page can be reused for network Rx
> > > > + * @page: the page to test
> > > > + *
> > > > + * A page shouldn't be considered for reusing/recycling if it was allocated
> > > > + * under memory pressure or at a distant memory node.
> > > > + *
> > > > + * Returns true if this page should be returned to page allocator, false
> > > > + * otherwise.
> > > > + */
> > > > +static inline bool dev_page_is_reserved(const struct page *page)
> > >
> > > Am I the only one who feels like "reusable" is a better term than
> > > "reserved".
> >
> > I thought about it, but this will need to inverse the conditions in
> > most of the drivers. I decided to keep it as it is.
> > I can redo if "reusable" is preferred.
> 
> Naming is hard. As long as the condition is not a double negative it
> reads fine to me, but that's probably personal preference.
> The thing that doesn't sit well is the fact that there is nothing
> "reserved" about a page from another NUMA node.. But again, if nobody
> +1s this it's whatever...

Agree on NUMA and naming. I'm a bit surprised that 95% of drivers
have this helper called "reserved" (one of the reasons why I finished
with this variant).
Let's say, if anybody else will vote for "reusable", I'll pick it for
v3.

> That said can we move the likely()/unlikely() into the helper itself?
> People on the internet may say otherwise but according to my tests
> using __builtin_expect() on a return value of a static inline helper
> works just fine.

Sounds fine, this will make code more elegant. Will publish v3 soon.

Thanks,
Al

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
