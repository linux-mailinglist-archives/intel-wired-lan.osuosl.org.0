Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C81309BF7
	for <lists+intel-wired-lan@lfdr.de>; Sun, 31 Jan 2021 13:24:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0914B203A0;
	Sun, 31 Jan 2021 12:24:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8+ti6ZPnlFUB; Sun, 31 Jan 2021 12:24:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 06F98203B0;
	Sun, 31 Jan 2021 12:24:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A71FD1BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jan 2021 12:24:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A2ACC847D1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jan 2021 12:24:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7eni7xOs9_4y for <intel-wired-lan@lists.osuosl.org>;
 Sun, 31 Jan 2021 12:24:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 33A068461B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jan 2021 12:24:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=R8+JxZSpbHiMxsv5TLCmqmv2hyGPLbx0zPwRvsESoT8=; b=Va5+mSbba56ABTdMGmAv/C++pK
 /W28Q6TwZmVEZsX8HgZZ/HPOcp3zr1hv4YthleldIqNIt6uZunVSsFBBPx7eVDMAcIxW/UPzjIBK5
 JzdEItl1XJXViz7h1EG+4LZkx3G5PCgKizGxtld/r8iEXwUUG3e0JVvNMhEfSDlbaT/yh74y4FaJ8
 QQQnRSuWCRET8KgpOA/4ZSLVJTDpR5loU560WdMG4vfu8TxXuXVk3Rol1BRuFWcMico3hLQmcDDsg
 oMCrWMWO9JPD3DrPG2o6sr2SJtf2cN0pjPpXTlIBrnkM+qtkIE0xt/2OAwNKiOgwxuI2ErKOc6zc5
 R124FSfg==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1l6Blc-00CQnr-Gg; Sun, 31 Jan 2021 12:23:48 +0000
Date: Sun, 31 Jan 2021 12:23:48 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Alexander Lobakin <alobakin@pm.me>
Message-ID: <20210131122348.GM308988@casper.infradead.org>
References: <20210131120844.7529-1-alobakin@pm.me>
 <20210131120844.7529-6-alobakin@pm.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210131120844.7529-6-alobakin@pm.me>
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

On Sun, Jan 31, 2021 at 12:12:11PM +0000, Alexander Lobakin wrote:
> pool_page_reusable() is a leftover from pre-NUMA-aware times. For now,
> this function is just a redundant wrapper over page_is_pfmemalloc(),
> so inline it into its sole call site.

Why doesn't this want to use {dev_}page_is_reusable()?

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
