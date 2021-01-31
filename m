Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 425E0309C17
	for <lists+intel-wired-lan@lfdr.de>; Sun, 31 Jan 2021 13:48:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E1D2A86D82;
	Sun, 31 Jan 2021 12:48:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YuAl017foUCF; Sun, 31 Jan 2021 12:48:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F11DB8707C;
	Sun, 31 Jan 2021 12:48:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7E57B1BF2BC
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jan 2021 12:48:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7688786DCA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jan 2021 12:48:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bFtB2oy3W0xP for <intel-wired-lan@lists.osuosl.org>;
 Sun, 31 Jan 2021 12:48:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-40134.protonmail.ch (mail-40134.protonmail.ch
 [185.70.40.134])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 927CC86D82
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jan 2021 12:48:40 +0000 (UTC)
Date: Sun, 31 Jan 2021 12:48:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me; s=protonmail;
 t=1612097317; bh=y30s5J10nfJ05d+t9ObBLUOEaiYg0NNkaEvHUkJBLzA=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
 b=nhDCOWplzmyXPSzZmedhJPQwO/CC5dhY2EAtlfsC7hL96xVl0c+sIejcE+CS/6IpU
 gKKz74jA72t0iHZmFG4/Vph3vyY8VtWfQ6r65Fm6GYKbXLbfdZe10YKpES2uD/emi8
 SHz1PtfhWCTcQPkFFde1Xz7YXK4Bf9JUIsyZrdynXJ0OgIbBhvB6oa5SUdPL4/J0RW
 OXbOAw2zjJyP47AAvJbs6D6KnTLWmMU4i43Sbxw6nbusSdbY+qHSiPn5BRfN/WIU+l
 YrXmib/7xJ4qSyDdhsroCsfKrCT45hSewfuvdY91s9u3N/tjTddj5YDF4JW17JiqKy
 VR6FDnyinK+Zw==
To: Matthew Wilcox <willy@infradead.org>
From: Alexander Lobakin <alobakin@pm.me>
Message-ID: <20210131124802.8430-1-alobakin@pm.me>
In-Reply-To: <20210131122348.GM308988@casper.infradead.org>
References: <20210131120844.7529-1-alobakin@pm.me>
 <20210131120844.7529-6-alobakin@pm.me>
 <20210131122348.GM308988@casper.infradead.org>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v3 net-next 5/5] net: page_pool:
 simplify page recycling condition tests
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
Date: Sun, 31 Jan 2021 12:23:48 +0000

> On Sun, Jan 31, 2021 at 12:12:11PM +0000, Alexander Lobakin wrote:
> > pool_page_reusable() is a leftover from pre-NUMA-aware times. For now,
> > this function is just a redundant wrapper over page_is_pfmemalloc(),
> > so inline it into its sole call site.
> 
> Why doesn't this want to use {dev_}page_is_reusable()?

Page Pool handles NUMA on its own. Replacing plain page_is_pfmemalloc()
with dev_page_is_reusable() will only add a completely redundant and
always-false check on the fastpath.

Al

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
