Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A4E30B48A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Feb 2021 02:18:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E579787038;
	Tue,  2 Feb 2021 01:18:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HkJRk5WbEGOw; Tue,  2 Feb 2021 01:18:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 76A388703E;
	Tue,  2 Feb 2021 01:18:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 85CD41BF321
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Feb 2021 01:18:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 800FC87038
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Feb 2021 01:18:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A2Q+VGEbLtm1 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Feb 2021 01:18:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2321E87037
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Feb 2021 01:18:38 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id D0A8864DD4;
 Tue,  2 Feb 2021 01:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612228717;
 bh=nubjV5RxPS9rBe0ST4Of24Ui70x9oAYNdmJ0tl2QhWI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=VX5NiTQ9Jubs8sCIFZX5+4/UbBPOEWx5B+HxdzXkfH83BLJ+GDDV7Iksibf8AcKsp
 YfA7nFsLTTuZuK3Si2se9ublIX2GIHuhQaFxBHQXPQQ7QfAm80uvuUJgoAmb5S6UIT
 qfQx/CMJCrx2NKU8XM9OUfaY2v3TgsWmnM1DqRTXnyqXM7RcWfxTrWeTyaHcCakoSk
 bPqIsrVJ17Ex7s0pE+YPcbg7u0V9Xl6yRxHIcjI+OBMKo/BiXzFvUAuiyCt+NIrp66
 TSTBCwg6hwB5pvt97bywOh1JhP2Qz8xfI2P8BR1756EcewjICgpbewLVGatX5iYTgQ
 LM90b6lTC+rcw==
Date: Mon, 1 Feb 2021 17:18:35 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <alobakin@pm.me>
Message-ID: <20210201171835.690558df@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210131120844.7529-1-alobakin@pm.me>
References: <20210131120844.7529-1-alobakin@pm.me>
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
Cc: Randy Dunlap <rdunlap@infradead.org>, linux-mm@kvack.org,
 Jakub Sitnicki <jakub@cloudflare.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, Dexuan Cui <decui@microsoft.com>,
 intel-wired-lan@lists.osuosl.org, Jesper Dangaard Brouer <brouer@redhat.com>,
 Paolo Abeni <pabeni@redhat.com>, Yisen Zhuang <yisen.zhuang@huawei.com>,
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

On Sun, 31 Jan 2021 12:11:16 +0000 Alexander Lobakin wrote:
> page_is_pfmemalloc() is used mostly by networking drivers to test
> if a page can be considered for reusing/recycling.
> It doesn't write anything to the struct page itself, so its sole
> argument can be constified, as well as the first argument of
> skb_propagate_pfmemalloc().
> In Page Pool core code, it can be simply inlined instead.
> Most of the callers from NIC drivers were just doppelgangers of
> the same condition tests. Derive them into a new common function
> do deduplicate the code.

Please resend, this did not get into patchwork :/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
