Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D730A51C6B9
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 May 2022 20:06:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 726B360B38;
	Thu,  5 May 2022 18:06:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id puhCdOl-yLAv; Thu,  5 May 2022 18:06:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4A417607F6;
	Thu,  5 May 2022 18:06:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 95A231BF378
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 18:06:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 80B6940407
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 18:06:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cpLiKmf_qeAk for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 May 2022 18:06:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8167F400D1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 18:06:07 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aed98.dynamic.kabel-deutschland.de
 [95.90.237.152])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id B575461EA1929;
 Thu,  5 May 2022 20:06:03 +0200 (CEST)
Message-ID: <469d3c7f-fcd1-3e8b-b02d-4b6e1826fa67@molgen.mpg.de>
Date: Thu, 5 May 2022 20:06:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Lorenzo Bianconi <lorenzo@kernel.org>
References: <c4e15c421c5579da7bfc77512e8d40b6a76beae1.1651769002.git.lorenzo@kernel.org>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <c4e15c421c5579da7bfc77512e8d40b6a76beae1.1651769002.git.lorenzo@kernel.org>
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: add xdp frags support
 to ndo_xdp_xmit
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
Cc: tirthendu.sarkar@intel.com, daniel@iogearbox.net, netdev@vger.kernel.org,
 toke@redhat.com, ast@kernel.org, jbrouer@redhat.com, andrii@kernel.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, bpf@vger.kernel.org,
 pabeni@redhat.com, davem@davemloft.net, magnus.karlsson@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



Am 05.05.22 um 18:48 schrieb Lorenzo Bianconi:
> Add the capability to map non-linear xdp frames in XDP_TX and ndo_xdp_xmit
> callback.
> 
> Tested-by: Sarkar Tirthendu <tirthendu.sarkar@intel.com>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_txrx.c | 87 +++++++++++++++------
>   1 file changed, 62 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> index 7bc1174edf6b..b7967105a549 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> @@ -2509,6 +2509,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget)
>   			hard_start = page_address(rx_buffer->page) +
>   				     rx_buffer->page_offset - offset;
>   			xdp_prepare_buff(&xdp, hard_start, offset, size, true);
> +			xdp_buff_clear_frags_flag(&xdp);
>   #if (PAGE_SIZE > 4096)
>   			/* At larger PAGE_SIZE, frame_sz depend on len size */
>   			xdp.frame_sz = i40e_rx_frame_truesize(rx_ring, size);
> @@ -3713,35 +3714,55 @@ u16 i40e_lan_select_queue(struct net_device *netdev,
>   static int i40e_xmit_xdp_ring(struct xdp_frame *xdpf,
>   			      struct i40e_ring *xdp_ring)
>   {
> -	u16 i = xdp_ring->next_to_use;
> -	struct i40e_tx_buffer *tx_bi;
> -	struct i40e_tx_desc *tx_desc;
> +	struct skb_shared_info *sinfo = xdp_get_shared_info_from_frame(xdpf);
> +	u8 nr_frags = unlikely(xdp_frame_has_frags(xdpf)) ? sinfo->nr_frags : 0;
> +	u16 i = 0, index = xdp_ring->next_to_use;
> +	struct i40e_tx_buffer *tx_head = &xdp_ring->tx_bi[index];
> +	struct i40e_tx_buffer *tx_bi = tx_head;
> +	struct i40e_tx_desc *tx_desc = I40E_TX_DESC(xdp_ring, index);
>   	void *data = xdpf->data;
>   	u32 size = xdpf->len;
> -	dma_addr_t dma;
>   
> -	if (!unlikely(I40E_DESC_UNUSED(xdp_ring))) {
> +	if (unlikely(I40E_DESC_UNUSED(xdp_ring) < 1 + nr_frags)) {
>   		xdp_ring->tx_stats.tx_busy++;
>   		return I40E_XDP_CONSUMED;
>   	}
> -	dma = dma_map_single(xdp_ring->dev, data, size, DMA_TO_DEVICE);
> -	if (dma_mapping_error(xdp_ring->dev, dma))
> -		return I40E_XDP_CONSUMED;
>   
> -	tx_bi = &xdp_ring->tx_bi[i];
> -	tx_bi->bytecount = size;
> -	tx_bi->gso_segs = 1;
> -	tx_bi->xdpf = xdpf;
> +	tx_head->bytecount = xdp_get_frame_len(xdpf);
> +	tx_head->gso_segs = 1;
> +	tx_head->xdpf = xdpf;
>   
> -	/* record length, and DMA address */
> -	dma_unmap_len_set(tx_bi, len, size);
> -	dma_unmap_addr_set(tx_bi, dma, dma);
> +	for (;;) {
> +		dma_addr_t dma;
>   
> -	tx_desc = I40E_TX_DESC(xdp_ring, i);
> -	tx_desc->buffer_addr = cpu_to_le64(dma);
> -	tx_desc->cmd_type_offset_bsz = build_ctob(I40E_TX_DESC_CMD_ICRC
> -						  | I40E_TXD_CMD,
> -						  0, size, 0);
> +		dma = dma_map_single(xdp_ring->dev, data, size, DMA_TO_DEVICE);
> +		if (dma_mapping_error(xdp_ring->dev, dma))
> +			goto unmap;
> +
> +		/* record length, and DMA address */
> +		dma_unmap_len_set(tx_bi, len, size);
> +		dma_unmap_addr_set(tx_bi, dma, dma);
> +
> +		tx_desc->buffer_addr = cpu_to_le64(dma);
> +		tx_desc->cmd_type_offset_bsz =
> +			build_ctob(I40E_TX_DESC_CMD_ICRC, 0, size, 0);
> +
> +		if (++index == xdp_ring->count)
> +			index = 0;
> +
> +		if (i == nr_frags)
> +			break;
> +
> +		tx_bi = &xdp_ring->tx_bi[index];
> +		tx_desc = I40E_TX_DESC(xdp_ring, index);
> +
> +		data = skb_frag_address(&sinfo->frags[i]);
> +		size = skb_frag_size(&sinfo->frags[i]);
> +		i++;
> +	}
> +
> +	tx_desc->cmd_type_offset_bsz |=
> +		cpu_to_le64(I40E_TXD_CMD << I40E_TXD_QW1_CMD_SHIFT);
>   
>   	/* Make certain all of the status bits have been updated
>   	 * before next_to_watch is written.
> @@ -3749,14 +3770,30 @@ static int i40e_xmit_xdp_ring(struct xdp_frame *xdpf,
>   	smp_wmb();
>   
>   	xdp_ring->xdp_tx_active++;
> -	i++;
> -	if (i == xdp_ring->count)
> -		i = 0;
>   
> -	tx_bi->next_to_watch = tx_desc;
> -	xdp_ring->next_to_use = i;
> +	tx_head->next_to_watch = tx_desc;
> +	xdp_ring->next_to_use = index;
>   
>   	return I40E_XDP_TX;
> +
> +unmap:
> +	for (;;) {
> +		tx_bi = &xdp_ring->tx_bi[index];
> +		if (dma_unmap_len(tx_bi, len))
> +			dma_unmap_page(xdp_ring->dev,
> +				       dma_unmap_addr(tx_bi, dma),
> +				       dma_unmap_len(tx_bi, len),
> +				       DMA_TO_DEVICE);
> +		dma_unmap_len_set(tx_bi, len, 0);
> +		if (tx_bi == tx_head)
> +			break;
> +
> +		if (!index)
> +			index += xdp_ring->count;
> +		index--;
> +	}

Could

```
do {
         tx_bi = &xdp_ring->tx_bi[index];
         if (dma_unmap_len(tx_bi, len))
                 dma_unmap_page(xdp_ring->dev,
                                dma_unmap_addr(tx_bi, dma),
                                dma_unmap_len(tx_bi, len),
                                DMA_TO_DEVICE);
         dma_unmap_len_set(tx_bi, len, 0);

         if (!index)
                 index += xdp_ring->count;
         index--;
} while (tx_bi != tx_head);
```

be used instead?

> +
> +	return I40E_XDP_CONSUMED;
>   }
>   
>   /**


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
