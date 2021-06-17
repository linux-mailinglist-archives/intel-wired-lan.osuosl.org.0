Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D273AB4A1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Jun 2021 15:23:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3885C83DF1;
	Thu, 17 Jun 2021 13:23:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iW7VrXYihmfZ; Thu, 17 Jun 2021 13:23:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F53883DDF;
	Thu, 17 Jun 2021 13:23:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F1A0A1BF309
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 13:23:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DCFED60D8C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 13:23:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wlarCxWdDFfv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jun 2021 13:23:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0875F60D89
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 13:23:25 +0000 (UTC)
IronPort-SDR: 51B19S+BUb9NMgHJrIppkiMxLVYNXbKm5oM/s5yxkkM6Y0Rig42/nNEMLROTW2iMMCllU38nXg
 Fx46kaw/RDDg==
X-IronPort-AV: E=McAfee;i="6200,9189,10017"; a="204538042"
X-IronPort-AV: E=Sophos;i="5.83,280,1616482800"; d="scan'208";a="204538042"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2021 06:23:24 -0700
IronPort-SDR: cGjORf0vy6UXUnvDarnwkqjtxzUqMxH10FkxwNyZtvPzojWIkpZMFp+WSjB+M1HVCYqdT4mnEH
 UUD3XQSTSJuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,280,1616482800"; d="scan'208";a="421874926"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga002.jf.intel.com with ESMTP; 17 Jun 2021 06:23:18 -0700
Date: Thu, 17 Jun 2021 15:09:48 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Xuan Zhuo <xuanzhuo@linux.alibaba.com>
Message-ID: <20210617130948.GA20486@ranger.igk.intel.com>
References: <20210615033719.72294-1-xuanzhuo@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210615033719.72294-1-xuanzhuo@linux.alibaba.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH net] xdp,
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
 Daniel Borkmann <daniel@iogearbox.net>, maximmi@nvidia.com,
 Jose Abreu <joabreu@synopsys.com>, intel-wired-lan@lists.osuosl.org,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, bpf@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 15, 2021 at 11:37:19AM +0800, Xuan Zhuo wrote:
> When each driver supports xsk rx, if the received buff returns XDP_PASS
> after run xdp prog, it must construct skb based on xdp. This patch
> extracts this logic into a public function xdp_construct_skb().
> 
> There is a bug in the original logic. When constructing skb, we should
> copy the meta information to skb and then use __skb_pull() to correct
> the data.
> 
> Fixes: 0a714186d3c0f ("i40e: add AF_XDP zero-copy Rx support")
> Fixes: 2d4238f556972 ("ice: Add support for AF_XDP")
> Fixes: bba2556efad66 ("net: stmmac: Enable RX via AF_XDP zero-copy")
> Signed-off-by: Xuan Zhuo <xuanzhuo@linux.alibaba.com>
> ---
> 
> This patch depends on the previous patch:
>     [PATCH net] ixgbe: xsk: fix for metasize when construct skb by xdp_buff

That doesn't make much sense if you ask me, I'd rather squash the patch
mentioned above to this one.

Also, I wanted to introduce such function to the kernel for a long time
but I always head in the back of my head mlx5's AF_XDP ZC implementation
which I'm not sure if it can adjust to something like Intel drivers are
doing.

Maxim? :)

> 
>  drivers/net/ethernet/intel/i40e/i40e_xsk.c    | 16 +---------
>  drivers/net/ethernet/intel/ice/ice_xsk.c      | 12 +-------
>  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  | 14 +--------
>  .../net/ethernet/stmicro/stmmac/stmmac_main.c | 23 +-------------
>  include/net/xdp.h                             | 30 +++++++++++++++++++
>  5 files changed, 34 insertions(+), 61 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> index 68f177a86403..81b0f44eedda 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> @@ -246,23 +246,9 @@ bool i40e_alloc_rx_buffers_zc(struct i40e_ring *rx_ring, u16 count)
>  static struct sk_buff *i40e_construct_skb_zc(struct i40e_ring *rx_ring,
>  					     struct xdp_buff *xdp)
>  {
> -	unsigned int metasize = xdp->data - xdp->data_meta;
> -	unsigned int datasize = xdp->data_end - xdp->data;
>  	struct sk_buff *skb;
> 
> -	/* allocate a skb to store the frags */
> -	skb = __napi_alloc_skb(&rx_ring->q_vector->napi,
> -			       xdp->data_end - xdp->data_hard_start,
> -			       GFP_ATOMIC | __GFP_NOWARN);
> -	if (unlikely(!skb))
> -		goto out;
> -
> -	skb_reserve(skb, xdp->data - xdp->data_hard_start);
> -	memcpy(__skb_put(skb, datasize), xdp->data, datasize);
> -	if (metasize)
> -		skb_metadata_set(skb, metasize);
> -
> -out:
> +	skb = xdp_construct_skb(xdp, &rx_ring->q_vector->napi);
>  	xsk_buff_free(xdp);
>  	return skb;
>  }
> diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
> index a1f89ea3c2bd..f95e1adcebda 100644
> --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
> +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
> @@ -430,22 +430,12 @@ static void ice_bump_ntc(struct ice_ring *rx_ring)
>  static struct sk_buff *
>  ice_construct_skb_zc(struct ice_ring *rx_ring, struct ice_rx_buf *rx_buf)
>  {
> -	unsigned int metasize = rx_buf->xdp->data - rx_buf->xdp->data_meta;
> -	unsigned int datasize = rx_buf->xdp->data_end - rx_buf->xdp->data;
> -	unsigned int datasize_hard = rx_buf->xdp->data_end -
> -				     rx_buf->xdp->data_hard_start;
>  	struct sk_buff *skb;
> 
> -	skb = __napi_alloc_skb(&rx_ring->q_vector->napi, datasize_hard,
> -			       GFP_ATOMIC | __GFP_NOWARN);
> +	skb = xdp_construct_skb(rx_buf->xdp, &rx_ring->q_vector->napi);
>  	if (unlikely(!skb))
>  		return NULL;
> 
> -	skb_reserve(skb, rx_buf->xdp->data - rx_buf->xdp->data_hard_start);
> -	memcpy(__skb_put(skb, datasize), rx_buf->xdp->data, datasize);
> -	if (metasize)
> -		skb_metadata_set(skb, metasize);
> -
>  	xsk_buff_free(rx_buf->xdp);
>  	rx_buf->xdp = NULL;
>  	return skb;
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> index ee88107fa57a..123945832c96 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> @@ -203,24 +203,12 @@ bool ixgbe_alloc_rx_buffers_zc(struct ixgbe_ring *rx_ring, u16 count)
>  static struct sk_buff *ixgbe_construct_skb_zc(struct ixgbe_ring *rx_ring,
>  					      struct ixgbe_rx_buffer *bi)
>  {
> -	unsigned int metasize = bi->xdp->data - bi->xdp->data_meta;
> -	unsigned int datasize = bi->xdp->data_end - bi->xdp->data_meta;
>  	struct sk_buff *skb;
> 
> -	/* allocate a skb to store the frags */
> -	skb = __napi_alloc_skb(&rx_ring->q_vector->napi,
> -			       bi->xdp->data_end - bi->xdp->data_hard_start,
> -			       GFP_ATOMIC | __GFP_NOWARN);
> +	skb = xdp_construct_skb(bi->xdp, &rx_ring->q_vector->napi);
>  	if (unlikely(!skb))
>  		return NULL;
> 
> -	skb_reserve(skb, bi->xdp->data_meta - bi->xdp->data_hard_start);
> -	memcpy(__skb_put(skb, datasize), bi->xdp->data_meta, datasize);
> -	if (metasize) {
> -		__skb_pull(skb, metasize);
> -		skb_metadata_set(skb, metasize);
> -	}
> -
>  	xsk_buff_free(bi->xdp);
>  	bi->xdp = NULL;
>  	return skb;
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> index c87202cbd3d6..143ac1edb876 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> @@ -4729,27 +4729,6 @@ static void stmmac_finalize_xdp_rx(struct stmmac_priv *priv,
>  		xdp_do_flush();
>  }
> 
> -static struct sk_buff *stmmac_construct_skb_zc(struct stmmac_channel *ch,
> -					       struct xdp_buff *xdp)
> -{
> -	unsigned int metasize = xdp->data - xdp->data_meta;
> -	unsigned int datasize = xdp->data_end - xdp->data;
> -	struct sk_buff *skb;
> -
> -	skb = __napi_alloc_skb(&ch->rxtx_napi,
> -			       xdp->data_end - xdp->data_hard_start,
> -			       GFP_ATOMIC | __GFP_NOWARN);
> -	if (unlikely(!skb))
> -		return NULL;
> -
> -	skb_reserve(skb, xdp->data - xdp->data_hard_start);
> -	memcpy(__skb_put(skb, datasize), xdp->data, datasize);
> -	if (metasize)
> -		skb_metadata_set(skb, metasize);
> -
> -	return skb;
> -}
> -
>  static void stmmac_dispatch_skb_zc(struct stmmac_priv *priv, u32 queue,
>  				   struct dma_desc *p, struct dma_desc *np,
>  				   struct xdp_buff *xdp)
> @@ -4761,7 +4740,7 @@ static void stmmac_dispatch_skb_zc(struct stmmac_priv *priv, u32 queue,
>  	struct sk_buff *skb;
>  	u32 hash;
> 
> -	skb = stmmac_construct_skb_zc(ch, xdp);
> +	skb = xdp_construct_skb(xdp, &ch->rxtx_napi);
>  	if (!skb) {
>  		priv->dev->stats.rx_dropped++;
>  		return;
> diff --git a/include/net/xdp.h b/include/net/xdp.h
> index a5bc214a49d9..561e21eaf718 100644
> --- a/include/net/xdp.h
> +++ b/include/net/xdp.h
> @@ -95,6 +95,36 @@ xdp_prepare_buff(struct xdp_buff *xdp, unsigned char *hard_start,
>  	xdp->data_meta = meta_valid ? data : data + 1;
>  }
> 
> +static __always_inline struct sk_buff *
> +xdp_construct_skb(struct xdp_buff *xdp, struct napi_struct *napi)
> +{
> +	unsigned int metasize;
> +	unsigned int datasize;
> +	unsigned int headroom;
> +	struct sk_buff *skb;
> +	unsigned int len;
> +
> +	/* this include metasize */
> +	datasize = xdp->data_end  - xdp->data_meta;
> +	metasize = xdp->data      - xdp->data_meta;
> +	headroom = xdp->data_meta - xdp->data_hard_start;
> +	len      = xdp->data_end  - xdp->data_hard_start;
> +
> +	/* allocate a skb to store the frags */
> +	skb = __napi_alloc_skb(napi, len, GFP_ATOMIC | __GFP_NOWARN);
> +	if (unlikely(!skb))
> +		return NULL;
> +
> +	skb_reserve(skb, headroom);
> +	memcpy(__skb_put(skb, datasize), xdp->data_meta, datasize);
> +	if (metasize) {
> +		__skb_pull(skb, metasize);
> +		skb_metadata_set(skb, metasize);
> +	}
> +
> +	return skb;
> +}
> +
>  /* Reserve memory area at end-of data area.
>   *
>   * This macro reserves tailroom in the XDP buffer by limiting the
> --
> 2.31.0
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
