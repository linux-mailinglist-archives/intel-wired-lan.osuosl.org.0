Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 475E6306503
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jan 2021 21:23:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A18968738B;
	Wed, 27 Jan 2021 20:23:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AolxrLxm67ZP; Wed, 27 Jan 2021 20:23:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 16F5C87385;
	Wed, 27 Jan 2021 20:23:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D876D1BF4DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 20:23:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D411B86456
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 20:23:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LO5phnCVU42d for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jan 2021 20:23:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail2.protonmail.ch (mail2.protonmail.ch [185.70.40.22])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A56D686406
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 20:23:53 +0000 (UTC)
Date: Wed, 27 Jan 2021 20:23:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me; s=protonmail;
 t=1611779031; bh=3sWElGNGgappUnF5Kd8jNAGLD06GNdAvPcxILY0B8/A=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
 b=aL522TuVAVSb+jpMVRrLVwgiG1dCW9GEbIHyzFs87eJU7GVqp4P8e4F5QHTWm4pw/
 EBdtAWI6Oz2JqrRSppbIfGq0YFJAiZ5sPqwFTiQSona97bz3spHMzlATmxRxLSe0qM
 e+X+aOUv8CFYm4aNs0GcX6sIxKx9rzkQ2pJZYDAuIyxDPIcpcOseQSAuPBqfaVxzYj
 AMqImLK2tiGV1YUEezS2oSOkiofo/MfwTX3Acuc0z9J6kFkmTLpJJFBoiBENXzPo5r
 lb3ocltvxlyGrb6vH6f9uElRMGhRYQZT2FHflaCI9QauYyEmNYBCh4kVah0mD7j9sN
 RgutLUDfUQfrQ==
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
From: Alexander Lobakin <alobakin@pm.me>
Message-ID: <20210127202322.99523-1-alobakin@pm.me>
In-Reply-To: <20210125164612.243838-1-alobakin@pm.me>
References: <20210125164612.243838-1-alobakin@pm.me>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] net: constify
 page_is_pfmemalloc() and its users
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
Cc: Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Alexander Lobakin <alobakin@pm.me>, linux-mm@kvack.org,
 Jakub Sitnicki <jakub@cloudflare.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, Dexuan Cui <decui@microsoft.com>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Pablo Neira Ayuso <pablo@netfilter.org>, Marco Elver <elver@google.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Willem de Bruijn <willemb@google.com>, Salil Mehta <salil.mehta@huawei.com>,
 netdev@vger.kernel.org, Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Saeed Mahameed <saeedm@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Lobakin <alobakin@pm.me>
Date: Mon, 25 Jan 2021 16:46:48 +0000

> page_is_pfmemalloc() is used mostly by networking drivers. It doesn't
> write anything to the struct page itself, so constify its argument and
> a bunch of callers and wrappers around this function in drivers.
> In Page Pool core code, it can be simply inlined instead.
> 
> Alexander Lobakin (3):
>   mm: constify page_is_pfmemalloc() argument
>   net: constify page_is_pfmemalloc() argument at call sites
>   net: page_pool: simplify page recycling condition tests

Superseded with v2 [0].

>  drivers/net/ethernet/hisilicon/hns3/hns3_enet.c   |  2 +-
>  drivers/net/ethernet/intel/fm10k/fm10k_main.c     |  2 +-
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c       |  2 +-
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c       |  2 +-
>  drivers/net/ethernet/intel/ice/ice_txrx.c         |  2 +-
>  drivers/net/ethernet/intel/igb/igb_main.c         |  2 +-
>  drivers/net/ethernet/intel/igc/igc_main.c         |  2 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c     |  2 +-
>  drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c |  2 +-
>  drivers/net/ethernet/mellanox/mlx5/core/en_rx.c   |  2 +-
>  include/linux/mm.h                                |  2 +-
>  include/linux/skbuff.h                            |  4 ++--
>  net/core/page_pool.c                              | 14 ++++----------
>  13 files changed, 17 insertions(+), 23 deletions(-)
> 
> -- 
> 2.30.0

[0] https://lore.kernel.org/netdev/20210127201031.98544-1-alobakin@pm.me

Thanks,
Al

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
