Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0747D2E02DB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Dec 2020 00:19:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9146322D22;
	Mon, 21 Dec 2020 23:19:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QEU4xr9Y8j1O; Mon, 21 Dec 2020 23:19:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1141723042;
	Mon, 21 Dec 2020 23:19:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 73ECB1BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Dec 2020 23:19:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2525186490
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Dec 2020 23:19:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NmBrRSKj2Am8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Dec 2020 23:19:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 80EF58648C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Dec 2020 23:19:30 +0000 (UTC)
IronPort-SDR: h2GiULIKz02TTmSCAhOxP9lerhqOzTbB9dlvHoJ4vUH0FqhSujq6cKBnOfI/PvS5kVEdOMp1ka
 vPOpZ/ZLholA==
X-IronPort-AV: E=McAfee;i="6000,8403,9842"; a="155586225"
X-IronPort-AV: E=Sophos;i="5.78,437,1599548400"; d="scan'208";a="155586225"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2020 15:19:29 -0800
IronPort-SDR: LpuCNCX7W7XmiWhi2h0eaQpAuq5ulWUbIZHVqbGDjv+hXWWxOoXfOt9iipABkvhetyRkhT3VT5
 XgcdpfDu6yXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,437,1599548400"; d="scan'208";a="343491869"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga008.fm.intel.com with ESMTP; 21 Dec 2020 15:19:28 -0800
Date: Tue, 22 Dec 2020 00:09:05 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Andre Guedes <andre.guedes@intel.com>
Message-ID: <20201221230905.GD2943@ranger.igk.intel.com>
References: <20201217202415.77891-1-andre.guedes@intel.com>
 <20201217202415.77891-9-andre.guedes@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201217202415.77891-9-andre.guedes@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH 08/10] igc: Replace IGC_TX_FLAGS_XDP
 flag by an enum
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Dec 17, 2020 at 12:24:13PM -0800, Andre Guedes wrote:
> Up to this point, tx buffers are associated with either a skb or a xdpf,
> and the IGC_TX_FLAGS_XDP flag was enough to distinguish between these
> two case. However, with upcoming patches that will add AF_XDP zero-copy
> support, a third case will be introduced so this flag-based approach
> won't fit well.
> 
> In preparation to land AF_XDP zero-copy support, this patch replaces the
> IGC_TX_FLAGS_XDP flag by an enum which will be extended once zero-copy
> support is introduced to the driver.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h      |  8 +++++--
>  drivers/net/ethernet/intel/igc/igc_main.c | 27 ++++++++++++++++++-----
>  2 files changed, 28 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index 29be8833956a..b537488f5bae 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -376,8 +376,6 @@ enum igc_tx_flags {
>  	/* olinfo flags */
>  	IGC_TX_FLAGS_IPV4	= 0x10,
>  	IGC_TX_FLAGS_CSUM	= 0x20,
> -
> -	IGC_TX_FLAGS_XDP	= 0x100,
>  };
>  
>  enum igc_boards {
> @@ -394,12 +392,18 @@ enum igc_boards {
>  #define TXD_USE_COUNT(S)	DIV_ROUND_UP((S), IGC_MAX_DATA_PER_TXD)
>  #define DESC_NEEDED	(MAX_SKB_FRAGS + 4)
>  
> +enum igc_tx_buffer_type {
> +	IGC_TX_BUFFER_TYPE_SKB,
> +	IGC_TX_BUFFER_TYPE_XDP,
> +};
> +
>  /* wrapper around a pointer to a socket buffer,
>   * so a DMA handle can be stored along with the buffer
>   */
>  struct igc_tx_buffer {
>  	union igc_adv_tx_desc *next_to_watch;
>  	unsigned long time_stamp;
> +	enum igc_tx_buffer_type type;
>  	union {
>  		struct sk_buff *skb;
>  		struct xdp_frame *xdpf;
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 60987a5b4b72..ec366643f996 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -191,10 +191,18 @@ static void igc_clean_tx_ring(struct igc_ring *tx_ring)
>  	while (i != tx_ring->next_to_use) {
>  		union igc_adv_tx_desc *eop_desc, *tx_desc;
>  
> -		if (tx_buffer->tx_flags & IGC_TX_FLAGS_XDP)
> +		switch (tx_buffer->type) {
> +		case IGC_TX_BUFFER_TYPE_XDP:
>  			xdp_return_frame(tx_buffer->xdpf);
> -		else
> +			break;
> +		case IGC_TX_BUFFER_TYPE_SKB:
>  			dev_kfree_skb_any(tx_buffer->skb);
> +			break;
> +		default:
> +			netdev_warn_once(tx_ring->netdev,
> +					 "Unknown tx buffer type\n");
> +			break;
> +		}

nit: you've been doing some effort in order to reduce the code duplication
as much as it's possible, yet here you introduce duplicated code for that
desc cleanup :p maybe add a little helper for that as well?

>  
>  		igc_unmap_tx_buffer(tx_ring->dev, tx_buffer);
>  
> @@ -1371,6 +1379,7 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
>  
>  	/* record the location of the first descriptor for this packet */
>  	first = &tx_ring->tx_buffer_info[tx_ring->next_to_use];
> +	first->type = IGC_TX_BUFFER_TYPE_SKB;
>  	first->skb = skb;
>  	first->bytecount = skb->len;
>  	first->gso_segs = 1;
> @@ -1950,8 +1959,8 @@ static int igc_xdp_init_tx_buffer(struct igc_tx_buffer *buffer,
>  		return -ENOMEM;
>  	}
>  
> +	buffer->type = IGC_TX_BUFFER_TYPE_XDP;
>  	buffer->xdpf = xdpf;
> -	buffer->tx_flags = IGC_TX_FLAGS_XDP;
>  	buffer->protocol = 0;
>  	buffer->bytecount = xdpf->len;
>  	buffer->gso_segs = 1;
> @@ -2315,10 +2324,18 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
>  		total_bytes += tx_buffer->bytecount;
>  		total_packets += tx_buffer->gso_segs;
>  
> -		if (tx_buffer->tx_flags & IGC_TX_FLAGS_XDP)
> +		switch (tx_buffer->type) {
> +		case IGC_TX_BUFFER_TYPE_XDP:
>  			xdp_return_frame(tx_buffer->xdpf);
> -		else
> +			break;
> +		case IGC_TX_BUFFER_TYPE_SKB:
>  			napi_consume_skb(tx_buffer->skb, napi_budget);
> +			break;
> +		default:
> +			netdev_warn_once(tx_ring->netdev,
> +					 "Unknown tx buffer type\n");
> +			break;
> +		}
>  
>  		igc_unmap_tx_buffer(tx_ring->dev, tx_buffer);
>  
> -- 
> 2.29.2
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
