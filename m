Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C38D5302A2E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Jan 2021 19:27:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7F0D78717A;
	Mon, 25 Jan 2021 18:27:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9yowvfg7ZDvu; Mon, 25 Jan 2021 18:27:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3ADE187205;
	Mon, 25 Jan 2021 18:27:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CF8701BF36D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jan 2021 18:27:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C639187031
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jan 2021 18:27:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y3w4EDw3ZElb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Jan 2021 18:27:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail2.protonmail.ch (mail2.protonmail.ch [185.70.40.22])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D82A187030
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jan 2021 18:27:37 +0000 (UTC)
Date: Mon, 25 Jan 2021 18:27:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me; s=protonmail;
 t=1611599255; bh=BNsVpptmPCWnM/HSD7DFkyRUhexA9u11ZFBtrI8eXBw=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
 b=aw2vpID7+/tcFGlQBlD9SjxMuz+grORCsiUs4coVpZPWcuIL3pf1vkiYfr2JRZaZT
 EwhVJPGp3/tZwXNjCo8HiBvRNB9hO/AUA499dNaBjQzn5xAam5Sfdypp43gCxrTBsx
 nZWz6AhMji7ekBopTmogGQmAm02Ir/+PZU0xCzWxobwLTcq9S+o+av/RuMqjxh1qno
 jCu7otS0DW5MtXXM5XrHrcf1DWg4fRB1uVvyBRofxLUGowVVNpS5WgGrNWzJDCPpP+
 Yu5v0rgcUcRC4wejN4NhYEol36SE9E3WINOxv3ldpJtKfmAAbgK7gv9F42sBHN7c8x
 bc+pB4ZowJz6Q==
To: David Rientjes <rientjes@google.com>
From: Alexander Lobakin <alobakin@pm.me>
Message-ID: <20210125182702.247232-1-alobakin@pm.me>
In-Reply-To: <85978330-9753-f7a-f263-7a1cfd95b851@google.com>
References: <20210125164612.243838-1-alobakin@pm.me>
 <20210125164612.243838-3-alobakin@pm.me>
 <85978330-9753-f7a-f263-7a1cfd95b851@google.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/3] net: constify
 page_is_pfmemalloc() argument at call sites
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
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Pablo Neira Ayuso <pablo@netfilter.org>, Marco Elver <elver@google.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Willem de Bruijn <willemb@google.com>, Salil Mehta <salil.mehta@huawei.com>,
 netdev@vger.kernel.org, Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: David Rientjes <rientjes@google.com>
Date: Mon, 25 Jan 2021 10:19:48 -0800 (PST)

> On Mon, 25 Jan 2021, Alexander Lobakin wrote:
> 
> > Constify "page" argument for page_is_pfmemalloc() users where applicable.
> >
> > Signed-off-by: Alexander Lobakin <alobakin@pm.me>
> > ---
> >  drivers/net/ethernet/hisilicon/hns3/hns3_enet.c   | 2 +-
> >  drivers/net/ethernet/intel/fm10k/fm10k_main.c     | 2 +-
> >  drivers/net/ethernet/intel/i40e/i40e_txrx.c       | 2 +-
> >  drivers/net/ethernet/intel/iavf/iavf_txrx.c       | 2 +-
> >  drivers/net/ethernet/intel/ice/ice_txrx.c         | 2 +-
> >  drivers/net/ethernet/intel/igb/igb_main.c         | 2 +-
> >  drivers/net/ethernet/intel/igc/igc_main.c         | 2 +-
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c     | 2 +-
> >  drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c | 2 +-
> >  drivers/net/ethernet/mellanox/mlx5/core/en_rx.c   | 2 +-
> >  include/linux/skbuff.h                            | 4 ++--
> >  11 files changed, 12 insertions(+), 12 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/hisilicon/hns3/hns3_enet.c b/drivers/net/ethernet/hisilicon/hns3/hns3_enet.c
> > index 512080640cbc..0f8e962b5010 100644
> > --- a/drivers/net/ethernet/hisilicon/hns3/hns3_enet.c
> > +++ b/drivers/net/ethernet/hisilicon/hns3/hns3_enet.c
> > @@ -2800,7 +2800,7 @@ static void hns3_nic_alloc_rx_buffers(struct hns3_enet_ring *ring,
> >  	writel(i, ring->tqp->io_base + HNS3_RING_RX_RING_HEAD_REG);
> >  }
> >
> > -static bool hns3_page_is_reusable(struct page *page)
> > +static bool hns3_page_is_reusable(const struct page *page)
> >  {
> >  	return page_to_nid(page) == numa_mem_id() &&
> >  		!page_is_pfmemalloc(page);
> 
> Hi Alexander,

Hi David!

> All of these functions appear to be doing the same thing, would it make
> sense to simply add this to a header file and remove all the code
> duplication as well?

That's an interesting idea. I'll be glad to do this if drivers'
maintainers agree it's okay for them.

Thanks,
Al

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
