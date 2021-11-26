Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B355145F197
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Nov 2021 17:17:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 16DC740189;
	Fri, 26 Nov 2021 16:17:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yoaRXVnrdxEy; Fri, 26 Nov 2021 16:17:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BCB9640173;
	Fri, 26 Nov 2021 16:17:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5B8D31BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Nov 2021 16:17:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4823440173
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Nov 2021 16:17:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I3aWhSSvi_3R for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Nov 2021 16:17:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3B32240004
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Nov 2021 16:17:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10180"; a="215710771"
X-IronPort-AV: E=Sophos;i="5.87,266,1631602800"; d="scan'208";a="215710771"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2021 08:17:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,266,1631602800"; d="scan'208";a="742390899"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga006.fm.intel.com with ESMTP; 26 Nov 2021 08:17:33 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 1AQGHWJj004949; Fri, 26 Nov 2021 16:17:32 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>
Date: Fri, 26 Nov 2021 17:16:49 +0100
Message-Id: <20211126161649.151100-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <163700859087.565980.3578855072170209153.stgit@firesoul>
References: <163700856423.565980.10162564921347693758.stgit@firesoul>
 <163700859087.565980.3578855072170209153.stgit@firesoul>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] igc: enable XDP metadata
 in driver
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
Cc: intel-wired-lan@lists.osuosl.org, bjorn@kernel.org, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Daniel Borkmann <borkmann@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jesper Dangaard Brouer <brouer@redhat.com>
Date: Mon, 15 Nov 2021 21:36:30 +0100

> Enabling the XDP bpf_prog access to data_meta area is a very small
> change. Hint passing 'true' to xdp_prepare_buff().
> 
> The SKB layers can also access data_meta area, which required more
> driver changes to support. Reviewers, notice the igc driver have two
> different functions that can create SKBs, depending on driver config.
> 
> Hint for testers, ethtool priv-flags legacy-rx enables
> the function igc_construct_skb()
> 
>  ethtool --set-priv-flags DEV legacy-rx on
> 
> Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c |   29 +++++++++++++++++++----------
>  1 file changed, 19 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 76b0a7311369..b516f1b301b4 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -1718,24 +1718,26 @@ static void igc_add_rx_frag(struct igc_ring *rx_ring,
>  
>  static struct sk_buff *igc_build_skb(struct igc_ring *rx_ring,
>  				     struct igc_rx_buffer *rx_buffer,
> -				     union igc_adv_rx_desc *rx_desc,
> -				     unsigned int size)
> +				     struct xdp_buff *xdp)
>  {
> -	void *va = page_address(rx_buffer->page) + rx_buffer->page_offset;
> +	unsigned int size = xdp->data_end - xdp->data;
>  	unsigned int truesize = igc_get_rx_frame_truesize(rx_ring, size);
> +	unsigned int metasize = xdp->data - xdp->data_meta;
>  	struct sk_buff *skb;
>  
>  	/* prefetch first cache line of first page */
> -	net_prefetch(va);
> +	net_prefetch(xdp->data);

I'd prefer prefetching xdp->data_meta here. GRO layer accesses it.
Maximum meta size for now is 32, so at least 96 bytes of the frame
will stil be prefetched.

>  
>  	/* build an skb around the page buffer */
> -	skb = build_skb(va - IGC_SKB_PAD, truesize);
> +	skb = build_skb(xdp->data_hard_start, truesize);
>  	if (unlikely(!skb))
>  		return NULL;
>  
>  	/* update pointers within the skb to store the data */
> -	skb_reserve(skb, IGC_SKB_PAD);
> +	skb_reserve(skb, xdp->data - xdp->data_hard_start);
>  	__skb_put(skb, size);
> +	if (metasize)
> +		skb_metadata_set(skb, metasize);
>  
>  	igc_rx_buffer_flip(rx_buffer, truesize);
>  	return skb;
> @@ -1746,6 +1748,7 @@ static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
>  					 struct xdp_buff *xdp,
>  					 ktime_t timestamp)
>  {
> +	unsigned int metasize = xdp->data - xdp->data_meta;
>  	unsigned int size = xdp->data_end - xdp->data;
>  	unsigned int truesize = igc_get_rx_frame_truesize(rx_ring, size);
>  	void *va = xdp->data;
> @@ -1756,7 +1759,7 @@ static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
>  	net_prefetch(va);

...here as well.

>  
>  	/* allocate a skb to store the frags */
> -	skb = napi_alloc_skb(&rx_ring->q_vector->napi, IGC_RX_HDR_LEN);
> +	skb = napi_alloc_skb(&rx_ring->q_vector->napi, IGC_RX_HDR_LEN + metasize);
>  	if (unlikely(!skb))
>  		return NULL;
>  
> @@ -1769,7 +1772,13 @@ static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
>  		headlen = eth_get_headlen(skb->dev, va, IGC_RX_HDR_LEN);
>  
>  	/* align pull length to size of long to optimize memcpy performance */
> -	memcpy(__skb_put(skb, headlen), va, ALIGN(headlen, sizeof(long)));
> +	memcpy(__skb_put(skb, headlen + metasize), xdp->data_meta,
> +	       ALIGN(headlen + metasize, sizeof(long)));
> +
> +	if (metasize) {
> +		skb_metadata_set(skb, metasize);
> +		__skb_pull(skb, metasize);
> +	}
>  
>  	/* update all of the pointers */
>  	size -= headlen;
> @@ -2354,7 +2363,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>  		if (!skb) {
>  			xdp_init_buff(&xdp, truesize, &rx_ring->xdp_rxq);
>  			xdp_prepare_buff(&xdp, pktbuf - igc_rx_offset(rx_ring),
> -					 igc_rx_offset(rx_ring) + pkt_offset, size, false);
> +					 igc_rx_offset(rx_ring) + pkt_offset, size, true);
>  
>  			skb = igc_xdp_run_prog(adapter, &xdp);
>  		}
> @@ -2378,7 +2387,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>  		} else if (skb)
>  			igc_add_rx_frag(rx_ring, rx_buffer, skb, size);
>  		else if (ring_uses_build_skb(rx_ring))
> -			skb = igc_build_skb(rx_ring, rx_buffer, rx_desc, size);
> +			skb = igc_build_skb(rx_ring, rx_buffer, &xdp);
>  		else
>  			skb = igc_construct_skb(rx_ring, rx_buffer, &xdp,
>  						timestamp);

Thanks!
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
