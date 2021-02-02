Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4AC930BF18
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Feb 2021 14:13:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5524785734;
	Tue,  2 Feb 2021 13:13:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4WJKqVlozY-r; Tue,  2 Feb 2021 13:13:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3D8018653F;
	Tue,  2 Feb 2021 13:13:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 451651BF311
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Feb 2021 13:13:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2CBAD20456
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Feb 2021 13:13:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MSlrpWbpxn1f for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Feb 2021 13:13:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail1.protonmail.ch (mail1.protonmail.ch [185.70.40.18])
 by silver.osuosl.org (Postfix) with ESMTPS id F30CA20453
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Feb 2021 13:13:13 +0000 (UTC)
Date: Tue, 02 Feb 2021 13:13:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me; s=protonmail;
 t=1612271590; bh=wkrsDsmJrKMWDTAP0CgzaSOfN+12VWFr81Nb1Qb7W0A=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
 b=K7qCB1jwBd70fF7fnDVz7zwMpJCi3aRlkq6AbbrG0dMIDUTBab250VWxXM7d/JBeC
 imiSnG9/VbWmDCmxV4UOshgzGyFI06qGkOkjCPKDhepiMo/1oMQeS9oWgXTMs+qyXq
 D2ICe8QN/OKumGGOm2iLXsg0gHJUVLLbKU7F0CCCuB34jgsQAHDShDBtHlNkHppNNn
 JIKcB4hwUJDpwYyFakZ7zUnxsauJA8AMVC2iJMU7lT/KMC1WvYnzMj00ZtU0KrPxwN
 jyS8F0rt7d/4XC1FKuoG9uDC1kT6Fi/OnhzOUUiUB32HwX6pgyjODc3AEFyO2DD82t
 GQ5im5p3D47HQ==
To: Jakub Kicinski <kuba@kernel.org>
From: Alexander Lobakin <alobakin@pm.me>
Message-ID: <20210202131233.4180-1-alobakin@pm.me>
In-Reply-To: <20210201171835.690558df@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <20210131120844.7529-1-alobakin@pm.me>
 <20210201171835.690558df@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v3 net-next 0/5] net: consolidate
 page_is_pfmemalloc() usage
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

From: Jakub Kicinski <kuba@kernel.org>
Date: Mon, 1 Feb 2021 17:18:35 -0800

> On Sun, 31 Jan 2021 12:11:16 +0000 Alexander Lobakin wrote:
> > page_is_pfmemalloc() is used mostly by networking drivers to test
> > if a page can be considered for reusing/recycling.
> > It doesn't write anything to the struct page itself, so its sole
> > argument can be constified, as well as the first argument of
> > skb_propagate_pfmemalloc().
> > In Page Pool core code, it can be simply inlined instead.
> > Most of the callers from NIC drivers were just doppelgangers of
> > the same condition tests. Derive them into a new common function
> > do deduplicate the code.
> 
> Please resend, this did not get into patchwork :/

I suspected it would be so as I got reports about undelivered mails
due to unavailability of vger.kernel.org for some reasons Will do.

Al

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
