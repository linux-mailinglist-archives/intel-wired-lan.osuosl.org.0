Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB697309652
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Jan 2021 16:42:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 69C78871C4;
	Sat, 30 Jan 2021 15:42:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EGA76UF1MCf7; Sat, 30 Jan 2021 15:42:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A8401871EC;
	Sat, 30 Jan 2021 15:42:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BC0871BF31E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jan 2021 15:42:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B6BA485108
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jan 2021 15:42:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dz8T1KPdrd29 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Jan 2021 15:42:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-40136.protonmail.ch (mail-40136.protonmail.ch
 [185.70.40.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CFBB18458F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jan 2021 15:42:35 +0000 (UTC)
Date: Sat, 30 Jan 2021 15:42:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me; s=protonmail;
 t=1612021352; bh=SqOOfzeH0noXKgcwnW/E6N5QTvdiF5329lwzLQGnSBA=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
 b=QNesXZCqMsxg9WWq30zTsSxoLyYfcPmwRs7aX304JT8WeHNT2iGeKEibhU43V9vgT
 OcUNJmqqlVZvquPt6J7MLkmBaKhnUDCH23CFKrtXuP8CIQAzp8bYEWC7Ml27/Xc8Kv
 f1C/khyFadsGNsXhEO1dzJJ1HgqXdA5r7yJfx+tsRajwQc82BlDqw5ZjlanwRvD1p/
 Z6/yyOW9dpxawki7sSDlRjQ8u8VXcF1HC/BOx5w/k5QhQxYz3scGwOIxNqXL+3s/5C
 rCuWxQuQ5OT/DcRqoNddGAAnHcb6UjvmotgX1eW2NpSx7FLK/lnTTT8mb84wIIyEYx
 YpUaky0ym1igA==
To: Jakub Kicinski <kuba@kernel.org>
From: Alexander Lobakin <alobakin@pm.me>
Message-ID: <20210130154149.8107-1-alobakin@pm.me>
In-Reply-To: <20210129183907.2ae5ca3d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <20210127201031.98544-1-alobakin@pm.me>
 <20210127201031.98544-4-alobakin@pm.me>
 <20210129183907.2ae5ca3d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
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
Date: Fri, 29 Jan 2021 18:39:07 -0800

> On Wed, 27 Jan 2021 20:11:23 +0000 Alexander Lobakin wrote:
> > + * dev_page_is_reserved - check whether a page can be reused for network Rx
> > + * @page: the page to test
> > + *
> > + * A page shouldn't be considered for reusing/recycling if it was allocated
> > + * under memory pressure or at a distant memory node.
> > + *
> > + * Returns true if this page should be returned to page allocator, false
> > + * otherwise.
> > + */
> > +static inline bool dev_page_is_reserved(const struct page *page)
> 
> Am I the only one who feels like "reusable" is a better term than
> "reserved".

I thought about it, but this will need to inverse the conditions in
most of the drivers. I decided to keep it as it is.
I can redo if "reusable" is preferred.

Regarding "no objectives to take patch 1 through net-next": patches
2-3 depend on it, so I can't put it in a separate series.

Thanks,
Al

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
