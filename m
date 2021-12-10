Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5B9470DAE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Dec 2021 23:25:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F0848563D;
	Fri, 10 Dec 2021 22:25:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xZILe9-cO22I; Fri, 10 Dec 2021 22:25:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D13458557B;
	Fri, 10 Dec 2021 22:25:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 326271BF3D6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 22:25:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 15739418DB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 22:25:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9a8Y_hidLR-i for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Dec 2021 22:25:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7C481418D7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 22:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639175125; x=1670711125;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K826OJzJv+UuStrd5FDItfpVrFf3oyQ4/Fl93N++Q2o=;
 b=fx88hKIkeW5XrhjL2NZ2vP+l3cq6TV1H7zJKuXQLseEeCx+Bxvzc5cJg
 slYk2ON0egfDYyiq71mzgmEh6gKafD8he5Yrmbd/fEOF3RIEiwGhDF3/o
 SX8eG3d59D8ERwtGgZeHmjDUaXgP4lVLxG6HoKQsZeH7Qz6oyvbwkfu7K
 XGPKMCNvflDCV4YMpZaL8FzckqNARtl3n/5hKaqBCBFJrNX0Yk+uTORCP
 5Ovsl5n4J1+DBYg6DGiQ/lGouWECHWayapzV8j++OUJyS10CUrHAK3Mu3
 KczqEBU1pfElFqZlEoeG5SBW2ST8LYI/p8eZ8SeokOdjtRiqYnx7RNlI7 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10194"; a="225727284"
X-IronPort-AV: E=Sophos;i="5.88,196,1635231600"; d="scan'208";a="225727284"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 14:25:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,196,1635231600"; d="scan'208";a="659772660"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga001.fm.intel.com with ESMTP; 10 Dec 2021 14:25:20 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 1BAMPJfn014400; Fri, 10 Dec 2021 22:25:20 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Fri, 10 Dec 2021 23:24:51 +0100
Message-Id: <20211210222451.2711162-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211210145941.5865-3-maciej.fijalkowski@intel.com>
References: <20211210145941.5865-1-maciej.fijalkowski@intel.com>
 <20211210145941.5865-3-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH intel-net 2/5] ice: xsk: allocate
 separate memory for XDP SW ring
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

From: Alexader Lobakin <alexandr.lobakin@intel.com>

From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Fri, 10 Dec 2021 15:59:38 +0100

> Currently, the zero-copy data path is reusing the memory region that was
> initially allocated for an array of struct ice_rx_buf for its own
> purposes. This is error prone as it is based on the ice_rx_buf struct
> always being the same size or bigger than what the zero-copy path needs.
> There can also be old values present in that array giving rise to errors
> when the zero-copy path uses it.
> 
> Fix this by freeing the ice_rx_buf region and allocating a new array for
> the zero-copy path that has the right length and is initialized to zero.
> 
> Fixes: 57f7f8b6bc0b ("ice: Use xdp_buf instead of rx_buf for xsk zero-copy")
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c | 19 +++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_txrx.c | 19 ++++++++++-----
>  drivers/net/ethernet/intel/ice/ice_xsk.c  | 29 ++++++++++++-----------
>  3 files changed, 47 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
> index 1efc635cc0f5..56606d477f05 100644
> --- a/drivers/net/ethernet/intel/ice/ice_base.c
> +++ b/drivers/net/ethernet/intel/ice/ice_base.c
> @@ -6,6 +6,18 @@
>  #include "ice_lib.h"
>  #include "ice_dcb_lib.h"
>  
> +static int ice_alloc_rx_buf_zc(struct ice_rx_ring *rx_ring)
> +{
> +	rx_ring->xdp_buf = kcalloc(rx_ring->count, sizeof(*rx_ring->xdp_buf), GFP_KERNEL);
> +	return rx_ring->xdp_buf ? 0 : -ENOMEM;
> +}
> +
> +static int ice_alloc_rx_buf(struct ice_rx_ring *rx_ring)
> +{
> +	rx_ring->rx_buf = kcalloc(rx_ring->count, sizeof(*rx_ring->rx_buf), GFP_KERNEL);
> +	return rx_ring->rx_buf ? 0 : -ENOMEM;
> +}
> +

Re that those functions can only return 0 or -ENOMEM, wouldn't it be
more elegant to make them bool

	return !!rx_ring->rx_buf; /* true on success,
				     false otherwise */
}

	if (!ice_alloc_rx_buf(rx_ring))
		return -ENOMEM;

?

>  /**
>   * __ice_vsi_get_qs_contig - Assign a contiguous chunk of queues to VSI
>   * @qs_cfg: gathered variables needed for PF->VSI queues assignment
> @@ -492,8 +504,12 @@ int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
>  			xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
>  					 ring->q_index, ring->q_vector->napi.napi_id);
>  
> +		kfree(ring->rx_buf);
>  		ring->xsk_pool = ice_xsk_pool(ring);
>  		if (ring->xsk_pool) {
> +			err = ice_alloc_rx_buf_zc(ring);
> +			if (err)
> +				return err;
>  			xdp_rxq_info_unreg_mem_model(&ring->xdp_rxq);
>  
>  			ring->rx_buf_len =
> @@ -508,6 +524,9 @@ int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
>  			dev_info(dev, "Registered XDP mem model MEM_TYPE_XSK_BUFF_POOL on Rx ring %d\n",
>  				 ring->q_index);
>  		} else {
> +			err = ice_alloc_rx_buf(ring);
> +			if (err)
> +				return err;
>  			if (!xdp_rxq_info_is_reg(&ring->xdp_rxq))
>  				/* coverity[check_return] */
>  				xdp_rxq_info_reg(&ring->xdp_rxq,
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
> index bc3ba19dc88f..227513b687b9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> @@ -419,7 +419,10 @@ void ice_clean_rx_ring(struct ice_rx_ring *rx_ring)
>  	}
>  
>  rx_skip_free:
> -	memset(rx_ring->rx_buf, 0, sizeof(*rx_ring->rx_buf) * rx_ring->count);
> +	if (rx_ring->xsk_pool)
> +		memset(rx_ring->xdp_buf, 0, sizeof(*rx_ring->xdp_buf) * rx_ring->count);
> +	else
> +		memset(rx_ring->rx_buf, 0, sizeof(*rx_ring->rx_buf) * rx_ring->count);

Consider using array_size() instead of a plain multiplication in
both of these:

	memset(s, 0, array_size(n, sizeof(*s));

It has the same internals as kcalloc() for array multiplication and
overflow checking.

>  
>  	/* Zero out the descriptor ring */
>  	size = ALIGN(rx_ring->count * sizeof(union ice_32byte_rx_desc),
> @@ -446,8 +449,13 @@ void ice_free_rx_ring(struct ice_rx_ring *rx_ring)
>  		if (xdp_rxq_info_is_reg(&rx_ring->xdp_rxq))
>  			xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
>  	rx_ring->xdp_prog = NULL;
> -	devm_kfree(rx_ring->dev, rx_ring->rx_buf);
> -	rx_ring->rx_buf = NULL;
> +	if (rx_ring->xsk_pool) {
> +		kfree(rx_ring->xdp_buf);
> +		rx_ring->xdp_buf = NULL;
> +	} else {
> +		kfree(rx_ring->rx_buf);
> +		rx_ring->rx_buf = NULL;
> +	}
>  
>  	if (rx_ring->desc) {
>  		size = ALIGN(rx_ring->count * sizeof(union ice_32byte_rx_desc),
> @@ -475,8 +483,7 @@ int ice_setup_rx_ring(struct ice_rx_ring *rx_ring)
>  	/* warn if we are about to overwrite the pointer */
>  	WARN_ON(rx_ring->rx_buf);
>  	rx_ring->rx_buf =
> -		devm_kcalloc(dev, sizeof(*rx_ring->rx_buf), rx_ring->count,
> -			     GFP_KERNEL);
> +		kcalloc(rx_ring->count, sizeof(*rx_ring->rx_buf), GFP_KERNEL);
>  	if (!rx_ring->rx_buf)
>  		return -ENOMEM;
>  
> @@ -505,7 +512,7 @@ int ice_setup_rx_ring(struct ice_rx_ring *rx_ring)
>  	return 0;
>  
>  err:
> -	devm_kfree(dev, rx_ring->rx_buf);
> +	kfree(rx_ring->rx_buf);
>  	rx_ring->rx_buf = NULL;
>  	return -ENOMEM;
>  }
> diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
> index 75c3e98241e0..5cb61955c1f3 100644
> --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
> +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
> @@ -12,6 +12,11 @@
>  #include "ice_txrx_lib.h"
>  #include "ice_lib.h"
>  
> +static struct xdp_buff **ice_xdp_buf(struct ice_rx_ring *rx_ring, u32 idx)
> +{
> +	return &rx_ring->xdp_buf[idx];
> +}
> +
>  /**
>   * ice_qp_reset_stats - Resets all stats for rings of given index
>   * @vsi: VSI that contains rings of interest
> @@ -372,7 +377,7 @@ bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
>  	dma_addr_t dma;
>  
>  	rx_desc = ICE_RX_DESC(rx_ring, ntu);
> -	xdp = &rx_ring->xdp_buf[ntu];
> +	xdp = ice_xdp_buf(rx_ring, ntu);
>  
>  	nb_buffs = min_t(u16, count, rx_ring->count - ntu);
>  	nb_buffs = xsk_buff_alloc_batch(rx_ring->xsk_pool, xdp, nb_buffs);
> @@ -425,9 +430,8 @@ static void ice_bump_ntc(struct ice_rx_ring *rx_ring)
>   * Returns the skb on success, NULL on failure.
>   */
>  static struct sk_buff *
> -ice_construct_skb_zc(struct ice_rx_ring *rx_ring, struct xdp_buff **xdp_arr)
> +ice_construct_skb_zc(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp)
>  {
> -	struct xdp_buff *xdp = *xdp_arr;

RCT army strikes back lol.

>  	unsigned int metasize = xdp->data - xdp->data_meta;
>  	unsigned int datasize = xdp->data_end - xdp->data;
>  	unsigned int datasize_hard = xdp->data_end - xdp->data_hard_start;
> @@ -444,7 +448,6 @@ ice_construct_skb_zc(struct ice_rx_ring *rx_ring, struct xdp_buff **xdp_arr)
>  		skb_metadata_set(skb, metasize);
>  
>  	xsk_buff_free(xdp);
> -	*xdp_arr = NULL;
>  	return skb;
>  }
>  
> @@ -521,7 +524,7 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
>  	while (likely(total_rx_packets < (unsigned int)budget)) {
>  		union ice_32b_rx_flex_desc *rx_desc;
>  		unsigned int size, xdp_res = 0;
> -		struct xdp_buff **xdp;
> +		struct xdp_buff *xdp;
>  		struct sk_buff *skb;
>  		u16 stat_err_bits;
>  		u16 vlan_tag = 0;
> @@ -544,18 +547,17 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
>  		if (!size)
>  			break;
>  
> -		xdp = &rx_ring->xdp_buf[rx_ring->next_to_clean];
> -		xsk_buff_set_size(*xdp, size);
> -		xsk_buff_dma_sync_for_cpu(*xdp, rx_ring->xsk_pool);
> +		xdp = *ice_xdp_buf(rx_ring, rx_ring->next_to_clean);
> +		xsk_buff_set_size(xdp, size);
> +		xsk_buff_dma_sync_for_cpu(xdp, rx_ring->xsk_pool);
>  
> -		xdp_res = ice_run_xdp_zc(rx_ring, *xdp, xdp_prog, xdp_ring);
> +		xdp_res = ice_run_xdp_zc(rx_ring, xdp, xdp_prog, xdp_ring);
>  		if (xdp_res) {
>  			if (xdp_res & (ICE_XDP_TX | ICE_XDP_REDIR))
>  				xdp_xmit |= xdp_res;
>  			else
> -				xsk_buff_free(*xdp);
> +				xsk_buff_free(xdp);
>  
> -			*xdp = NULL;
>  			total_rx_bytes += size;
>  			total_rx_packets++;
>  			cleaned_count++;
> @@ -815,10 +817,9 @@ void ice_xsk_clean_rx_ring(struct ice_rx_ring *rx_ring)
>  	u16 ntu = rx_ring->next_to_use;
>  
>  	for ( ; ntc != ntu; ntc = (ntc + 1) & count_mask) {
> -		struct xdp_buff **xdp = &rx_ring->xdp_buf[ntc];
> +		struct xdp_buff *xdp = *ice_xdp_buf(rx_ring, ntc);
>  
> -		xsk_buff_free(*xdp);
> -		*xdp = NULL;
> +		xsk_buff_free(xdp);
>  	}
>  }
>  
> -- 
> 2.33.1

Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
