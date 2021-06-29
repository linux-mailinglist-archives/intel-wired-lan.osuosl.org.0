Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EACAC3B72B7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Jun 2021 14:56:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7091782F11;
	Tue, 29 Jun 2021 12:56:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jUHWXCy9rEfB; Tue, 29 Jun 2021 12:56:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F35182D49;
	Tue, 29 Jun 2021 12:56:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9974F1BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 12:56:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 94EAB82CE5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 12:56:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G1F4ekPMCBvj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Jun 2021 12:56:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A19A882D49
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 12:56:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10029"; a="208084128"
X-IronPort-AV: E=Sophos;i="5.83,308,1616482800"; d="scan'208";a="208084128"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 05:56:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,308,1616482800"; d="scan'208";a="641299691"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga006.fm.intel.com with ESMTP; 29 Jun 2021 05:56:24 -0700
Date: Tue, 29 Jun 2021 14:44:03 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Maxim Mikityanskiy <maximmi@nvidia.com>
Message-ID: <20210629124403.GA60701@ranger.igk.intel.com>
References: <20210617145534.101458-1-xuanzhuo@linux.alibaba.com>
 <20210628104721.GA57589@ranger.igk.intel.com>
 <9d017748-3a4e-367f-94f4-2dcc6bb3e50e@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9d017748-3a4e-367f-94f4-2dcc6bb3e50e@nvidia.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH net v2] xdp,
 net: fix for construct skb by xdp inside xsk zc rx
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
Cc: Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Ong Boon Leong <boon.leong.ong@intel.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Xuan Zhuo <xuanzhuo@linux.alibaba.com>, Daniel Borkmann <daniel@iogearbox.net>,
 Jose Abreu <joabreu@synopsys.com>, intel-wired-lan@lists.osuosl.org,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>,
 =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, bpf@vger.kernel.org,
 Saeed Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 29, 2021 at 12:50:53PM +0300, Maxim Mikityanskiy wrote:
> On 2021-06-28 13:47, Maciej Fijalkowski wrote:
> > On Thu, Jun 17, 2021 at 10:55:34PM +0800, Xuan Zhuo wrote:
> > > When each driver supports xsk rx, if the received buff returns XDP_PASS
> > > after run xdp prog, it must construct skb based on xdp. This patch
> > > extracts this logic into a public function xdp_construct_skb().
> > > 
> > > There is a bug in the original logic. When constructing skb, we should
> > > copy the meta information to skb and then use __skb_pull() to correct
> > > the data.
> > 
> > Thanks for fixing the bug on Intel drivers, Xuan. However, together with
> > Magnus we feel that include/net/xdp.h is not a correct place for
> > introducing xdp_construct_skb. If mlx side could use it, then probably
> > include/net/xdp_sock_drv.h is a better fit for that.
> > 
> > Once again, CCing Maxim.
> > Maxim, any chances that mlx driver could be aligned in a way that we could
> > have a common function for creating skb on ZC path?
> 
> I'm sorry I missed the v1.
> 
> I have reviewed the differences between mlx5e_xsk_construct_skb and
> xdp_construct_skb. I would say it is possible for mlx5 to adapt and use the
> new API, but it may also require changes to xdp_construct_skb. Please see
> the list of differences below.

Great!

> 
> > 
> > Otherwise, maybe we should think about introducing the Intel-specific
> > common header in tree?
> 
> Sure, you can do it to share Intel-specific stuff between Intel drivers.
> However, in this particular case I think all XSK-enabled drivers would
> benefit from this function, especially after previous efforts that aimed to
> minimize the differences between drivers, the amount of code in the drivers
> and to share as much as possible. So, in my opinion, this stuff belongs to
> xdp_sock_drv.h. (Moreover, I see this patch also changes stmmac, so it's no
> longer Intel-specific.)

Right, stmmac just looked similar to what Intel is doing and AFAICT the
author of that code was from Intel, sorry for assumption.

> 
> Differences between mlx5e_xsk_construct_skb and xdp_construct_skb:
> 
> 1. __napi_alloc_skb is called with __GFP_NOWARN in xdp_construct_skb, but
> without this flag in mlx5. Why do we need to use non-default flags? Why
> can't we stick with napi_alloc_skb? I see only Intel drivers and XSK in
> stmmac use __napi_alloc_skb instead of napi_alloc_skb, and it looks to me as
> it was just copied from the regular (non-XSK) datapath of i40e
> (i40e_construct_skb) to i40e's XSK, then to stmmac, then to
> xdp_construct_skb, and I don't truly understand the reason of having
> __GFP_NOWARN where it first appeared (i40e_construct_skb). Could someone
> explain the reason for __GFP_NOWARN, so that we could decide whether we want
> it in a generic XSK helper?

It's a c&p to me.

> 
> 2. skb_put in mlx5 vs __skb_put in xdp_construct_skb - shouldn't be a big
> deal, the difference is just an extra overflow check in skb_put.
> 
> 3. XDP metadata. mlx5 calls xdp_set_data_meta_invalid, while other
> XSK-enabled drivers set metadata size to 0 and allow the XDP program to push
> some metadata. xdp_construct_skb only supports xdp_buffs with metadata, it
> will break if xdp_data_meta_unsupported. There are a few possible ways to
> address it:
> 
> 3.1. Add a check for xdp_data_meta_unsupported to xdp_construct_skb. It will
> lift the undocumented limitation of this function and allow it to handle all
> valid kinds of xdp_buff.
> 
> 3.2. Have two versions of xdp_construct_skb: one for xdp_buffs with
> metadata, the other for ones without metadata. Sounds ugly and not robust,
> but could spare a few CPU cycles for drivers that can't have metadata.
> 
> 3.3. Remove xdp_set_data_meta_invalid from mlx5. I think the reason for this
> call was some design decision, rather than a technical limitation. On the
> other hand, even though it will allow mlx5 to work with xdp_construct_skb in
> its current implementation, it would still be nice to combine it with 3.1 to
> avoid having issues with future drivers (if not, at least document in a
> clear way that the xdp_buff parameter must have metadata). Tariq/Saeed,
> could you comment on this point?

So this sounds like we need to hear from you guys if you're going to add a
support to metadata in AF_XDP ZC. Then we can decide with steps forward.
Thanks for this breakdown!

> 
> Thanks,
> Max
> 
> > > 
> > > Fixes: 0a714186d3c0f ("i40e: add AF_XDP zero-copy Rx support")
> > > Fixes: 2d4238f556972 ("ice: Add support for AF_XDP")
> > > Fixes: bba2556efad66 ("net: stmmac: Enable RX via AF_XDP zero-copy")
> > > Fixes: d0bcacd0a1309 ("ixgbe: add AF_XDP zero-copy Rx support")
> > > Signed-off-by: Xuan Zhuo <xuanzhuo@linux.alibaba.com>
> > > ---
> > >   drivers/net/ethernet/intel/i40e/i40e_xsk.c    | 16 +---------
> > >   drivers/net/ethernet/intel/ice/ice_xsk.c      | 12 +-------
> > >   drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  | 12 +-------
> > >   .../net/ethernet/stmicro/stmmac/stmmac_main.c | 23 +-------------
> > >   include/net/xdp.h                             | 30 +++++++++++++++++++
> > >   5 files changed, 34 insertions(+), 59 deletions(-)
> > > 
> > > diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > > index 68f177a86403..81b0f44eedda 100644
> > > --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > > +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > > @@ -246,23 +246,9 @@ bool i40e_alloc_rx_buffers_zc(struct i40e_ring *rx_ring, u16 count)
> > >   static struct sk_buff *i40e_construct_skb_zc(struct i40e_ring *rx_ring,
> > >   					     struct xdp_buff *xdp)
> > >   {
> > > -	unsigned int metasize = xdp->data - xdp->data_meta;
> > > -	unsigned int datasize = xdp->data_end - xdp->data;
> > >   	struct sk_buff *skb;
> > > -	/* allocate a skb to store the frags */
> > > -	skb = __napi_alloc_skb(&rx_ring->q_vector->napi,
> > > -			       xdp->data_end - xdp->data_hard_start,
> > > -			       GFP_ATOMIC | __GFP_NOWARN);
> > > -	if (unlikely(!skb))
> > > -		goto out;
> > > -
> > > -	skb_reserve(skb, xdp->data - xdp->data_hard_start);
> > > -	memcpy(__skb_put(skb, datasize), xdp->data, datasize);
> > > -	if (metasize)
> > > -		skb_metadata_set(skb, metasize);
> > > -
> > > -out:
> > > +	skb = xdp_construct_skb(xdp, &rx_ring->q_vector->napi);
> > >   	xsk_buff_free(xdp);
> > >   	return skb;
> > >   }
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
> > > index a1f89ea3c2bd..f95e1adcebda 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
> > > @@ -430,22 +430,12 @@ static void ice_bump_ntc(struct ice_ring *rx_ring)
> > >   static struct sk_buff *
> > >   ice_construct_skb_zc(struct ice_ring *rx_ring, struct ice_rx_buf *rx_buf)
> > >   {
> > > -	unsigned int metasize = rx_buf->xdp->data - rx_buf->xdp->data_meta;
> > > -	unsigned int datasize = rx_buf->xdp->data_end - rx_buf->xdp->data;
> > > -	unsigned int datasize_hard = rx_buf->xdp->data_end -
> > > -				     rx_buf->xdp->data_hard_start;
> > >   	struct sk_buff *skb;
> > > -	skb = __napi_alloc_skb(&rx_ring->q_vector->napi, datasize_hard,
> > > -			       GFP_ATOMIC | __GFP_NOWARN);
> > > +	skb = xdp_construct_skb(rx_buf->xdp, &rx_ring->q_vector->napi);
> > >   	if (unlikely(!skb))
> > >   		return NULL;
> > > -	skb_reserve(skb, rx_buf->xdp->data - rx_buf->xdp->data_hard_start);
> > > -	memcpy(__skb_put(skb, datasize), rx_buf->xdp->data, datasize);
> > > -	if (metasize)
> > > -		skb_metadata_set(skb, metasize);
> > > -
> > >   	xsk_buff_free(rx_buf->xdp);
> > >   	rx_buf->xdp = NULL;
> > >   	return skb;
> > > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > > index f72d2978263b..123945832c96 100644
> > > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > > @@ -203,22 +203,12 @@ bool ixgbe_alloc_rx_buffers_zc(struct ixgbe_ring *rx_ring, u16 count)
> > >   static struct sk_buff *ixgbe_construct_skb_zc(struct ixgbe_ring *rx_ring,
> > >   					      struct ixgbe_rx_buffer *bi)
> > >   {
> > > -	unsigned int metasize = bi->xdp->data - bi->xdp->data_meta;
> > > -	unsigned int datasize = bi->xdp->data_end - bi->xdp->data;
> > >   	struct sk_buff *skb;
> > > -	/* allocate a skb to store the frags */
> > > -	skb = __napi_alloc_skb(&rx_ring->q_vector->napi,
> > > -			       bi->xdp->data_end - bi->xdp->data_hard_start,
> > > -			       GFP_ATOMIC | __GFP_NOWARN);
> > > +	skb = xdp_construct_skb(bi->xdp, &rx_ring->q_vector->napi);
> > >   	if (unlikely(!skb))
> > >   		return NULL;
> > > -	skb_reserve(skb, bi->xdp->data - bi->xdp->data_hard_start);
> > > -	memcpy(__skb_put(skb, datasize), bi->xdp->data, datasize);
> > > -	if (metasize)
> > > -		skb_metadata_set(skb, metasize);
> > > -
> > >   	xsk_buff_free(bi->xdp);
> > >   	bi->xdp = NULL;
> > >   	return skb;
> > > diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> > > index c87202cbd3d6..143ac1edb876 100644
> > > --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> > > +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> > > @@ -4729,27 +4729,6 @@ static void stmmac_finalize_xdp_rx(struct stmmac_priv *priv,
> > >   		xdp_do_flush();
> > >   }
> > > -static struct sk_buff *stmmac_construct_skb_zc(struct stmmac_channel *ch,
> > > -					       struct xdp_buff *xdp)
> > > -{
> > > -	unsigned int metasize = xdp->data - xdp->data_meta;
> > > -	unsigned int datasize = xdp->data_end - xdp->data;
> > > -	struct sk_buff *skb;
> > > -
> > > -	skb = __napi_alloc_skb(&ch->rxtx_napi,
> > > -			       xdp->data_end - xdp->data_hard_start,
> > > -			       GFP_ATOMIC | __GFP_NOWARN);
> > > -	if (unlikely(!skb))
> > > -		return NULL;
> > > -
> > > -	skb_reserve(skb, xdp->data - xdp->data_hard_start);
> > > -	memcpy(__skb_put(skb, datasize), xdp->data, datasize);
> > > -	if (metasize)
> > > -		skb_metadata_set(skb, metasize);
> > > -
> > > -	return skb;
> > > -}
> > > -
> > >   static void stmmac_dispatch_skb_zc(struct stmmac_priv *priv, u32 queue,
> > >   				   struct dma_desc *p, struct dma_desc *np,
> > >   				   struct xdp_buff *xdp)
> > > @@ -4761,7 +4740,7 @@ static void stmmac_dispatch_skb_zc(struct stmmac_priv *priv, u32 queue,
> > >   	struct sk_buff *skb;
> > >   	u32 hash;
> > > -	skb = stmmac_construct_skb_zc(ch, xdp);
> > > +	skb = xdp_construct_skb(xdp, &ch->rxtx_napi);
> > >   	if (!skb) {
> > >   		priv->dev->stats.rx_dropped++;
> > >   		return;
> > > diff --git a/include/net/xdp.h b/include/net/xdp.h
> > > index a5bc214a49d9..561e21eaf718 100644
> > > --- a/include/net/xdp.h
> > > +++ b/include/net/xdp.h
> > > @@ -95,6 +95,36 @@ xdp_prepare_buff(struct xdp_buff *xdp, unsigned char *hard_start,
> > >   	xdp->data_meta = meta_valid ? data : data + 1;
> > >   }
> > > +static __always_inline struct sk_buff *
> > > +xdp_construct_skb(struct xdp_buff *xdp, struct napi_struct *napi)
> > > +{
> > > +	unsigned int metasize;
> > > +	unsigned int datasize;
> > > +	unsigned int headroom;
> > > +	struct sk_buff *skb;
> > > +	unsigned int len;
> > > +
> > > +	/* this include metasize */
> > > +	datasize = xdp->data_end  - xdp->data_meta;
> > > +	metasize = xdp->data      - xdp->data_meta;
> > > +	headroom = xdp->data_meta - xdp->data_hard_start;
> > > +	len      = xdp->data_end  - xdp->data_hard_start;
> > > +
> > > +	/* allocate a skb to store the frags */
> > > +	skb = __napi_alloc_skb(napi, len, GFP_ATOMIC | __GFP_NOWARN);
> > > +	if (unlikely(!skb))
> > > +		return NULL;
> > > +
> > > +	skb_reserve(skb, headroom);
> > > +	memcpy(__skb_put(skb, datasize), xdp->data_meta, datasize);
> > > +	if (metasize) {
> > > +		__skb_pull(skb, metasize);
> > > +		skb_metadata_set(skb, metasize);
> > > +	}
> > > +
> > > +	return skb;
> > > +}
> > > +
> > >   /* Reserve memory area at end-of data area.
> > >    *
> > >    * This macro reserves tailroom in the XDP buffer by limiting the
> > > -- 
> > > 2.31.0
> > > 
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
