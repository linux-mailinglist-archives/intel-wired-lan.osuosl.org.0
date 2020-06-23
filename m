Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC2F204671
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jun 2020 03:00:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8659F876DA;
	Tue, 23 Jun 2020 01:00:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GhskqK1mBm+R; Tue, 23 Jun 2020 01:00:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0A00E887D7;
	Tue, 23 Jun 2020 01:00:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8723F1BF333
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 01:00:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 82C19886B7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 01:00:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BPqZ+V++33z6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jun 2020 01:00:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 78613876DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 01:00:33 +0000 (UTC)
IronPort-SDR: DQDi54ykyn0zB4d5vikznifzRFhVx/iUENy1SIUnBBhGOyhLANZjHpFLZPAQt2bzg6QBPuGLwl
 df7NMlj9UiYg==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="142186384"
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="142186384"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 18:00:31 -0700
IronPort-SDR: tBQe3H0eThX2RdYf0Su/yVbW48ZtDc4GmwTdfIUaUNn080kfJs6VFJcEo2MfiX9sadlUmRf7eH
 uwsYYQh761sQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="311111412"
Received: from samudral-mobl.amr.corp.intel.com (HELO [10.213.185.67])
 ([10.213.185.67])
 by fmsmga002.fm.intel.com with ESMTP; 22 Jun 2020 18:00:29 -0700
To: Magnus Karlsson <magnus.karlsson@intel.com>, bjorn.topel@intel.com,
 intel-wired-lan@lists.osuosl.org, jeffrey.t.kirsher@intel.com
References: <1592832083-23249-1-git-send-email-magnus.karlsson@intel.com>
 <1592832083-23249-2-git-send-email-magnus.karlsson@intel.com>
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Message-ID: <57effc14-afed-51c8-9926-686d1cdea803@intel.com>
Date: Mon, 22 Jun 2020 18:00:29 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <1592832083-23249-2-git-send-email-magnus.karlsson@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] i40e: optimize AF_XDP Tx
 completion path
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
Cc: maciejromanfijalkowski@gmail.com, maciej.fijalkowski@intel.com,
 netdev@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/22/2020 6:21 AM, Magnus Karlsson wrote:
> Improve the performance of the AF_XDP zero-copy Tx completion
> path. When there are no XDP buffers being sent using XDP_TX or
> XDP_REDIRECT, we do not have go through the SW ring to clean up any
> entries since the AF_XDP path does not use these. In these cases, just
> fast forward the next-to-use counter and skip going through the SW
> ring. The limit on the maximum number of entries to complete is also
> removed since the algorithm is now O(1). To simplify the code path, the
> maximum number of entries to complete for the XDP path is therefore
> also increased from 256 to 512 (the default number of Tx HW
> descriptors). This should be fine since the completion in the XDP path
> is faster than in the SKB path that has 256 as the maximum number.
> 
> This patch provides around 4% throughput improvement for the l2fwd
> application in xdpsock on my machine.
> 
> Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_txrx.c |  1 +
>   drivers/net/ethernet/intel/i40e/i40e_txrx.h |  1 +
>   drivers/net/ethernet/intel/i40e/i40e_xsk.c  | 34 ++++++++++++++++-------------
>   3 files changed, 21 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> index f9555c8..0ce9d1e 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> @@ -3538,6 +3538,7 @@ static int i40e_xmit_xdp_ring(struct xdp_frame *xdpf,
>   	 */
>   	smp_wmb();
>   
> +	xdp_ring->xdp_tx_active++;
>   	i++;
>   	if (i == xdp_ring->count)
>   		i = 0;
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
> index 5c25597..c16fcd9 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
> @@ -371,6 +371,7 @@ struct i40e_ring {
>   	/* used in interrupt processing */
>   	u16 next_to_use;
>   	u16 next_to_clean;
> +	u16 xdp_tx_active;
>   
>   	u8 atr_sample_rate;
>   	u8 atr_count;
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> index 7276580..c8cd6a6 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> @@ -378,6 +378,7 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
>    **/
>   static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
>   {
> +	unsigned int sent_frames = 0, total_bytes = 0;
>   	struct i40e_tx_desc *tx_desc = NULL;
>   	struct i40e_tx_buffer *tx_bi;
>   	bool work_done = true;
> @@ -408,6 +409,9 @@ static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
>   				   | I40E_TX_DESC_CMD_EOP,
>   				   0, desc.len, 0);
>   
> +		sent_frames++;
> +		total_bytes += tx_bi->bytecount;
> +
>   		xdp_ring->next_to_use++;
>   		if (xdp_ring->next_to_use == xdp_ring->count)
>   			xdp_ring->next_to_use = 0;
> @@ -420,6 +424,7 @@ static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
>   		i40e_xdp_ring_update_tail(xdp_ring);
>   
>   		xsk_umem_consume_tx_done(xdp_ring->xsk_umem);
> +		i40e_update_tx_stats(xdp_ring, sent_frames, total_bytes);
>   	}
>   
>   	return !!budget && work_done;
> @@ -434,6 +439,7 @@ static void i40e_clean_xdp_tx_buffer(struct i40e_ring *tx_ring,
>   				     struct i40e_tx_buffer *tx_bi)
>   {
>   	xdp_return_frame(tx_bi->xdpf);
> +	tx_ring->xdp_tx_active--;
>   	dma_unmap_single(tx_ring->dev,
>   			 dma_unmap_addr(tx_bi, dma),
>   			 dma_unmap_len(tx_bi, len), DMA_TO_DEVICE);
> @@ -450,24 +456,23 @@ static void i40e_clean_xdp_tx_buffer(struct i40e_ring *tx_ring,
>   bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi,
>   			   struct i40e_ring *tx_ring, int napi_budget)

napi_budget is not used. so the 3rd arg can be removed

>   {
> -	unsigned int ntc, total_bytes = 0, budget = vsi->work_limit;
> -	u32 i, completed_frames, frames_ready, xsk_frames = 0;
> +	unsigned int ntc, budget = vsi->work_limit;
>   	struct xdp_umem *umem = tx_ring->xsk_umem;
> +	u32 i, completed_frames, xsk_frames = 0;
>   	u32 head_idx = i40e_get_head(tx_ring);
>   	bool work_done = true, xmit_done;

work_done is no longer required

>   	struct i40e_tx_buffer *tx_bi;
>   
>   	if (head_idx < tx_ring->next_to_clean)
>   		head_idx += tx_ring->count;
> -	frames_ready = head_idx - tx_ring->next_to_clean;
> +	completed_frames = head_idx - tx_ring->next_to_clean;
>   
> -	if (frames_ready == 0) {
> +	if (completed_frames == 0)
>   		goto out_xmit;
> -	} else if (frames_ready > budget) {
> -		completed_frames = budget;
> -		work_done = false;
> -	} else {
> -		completed_frames = frames_ready;
> +
> +	if (likely(!tx_ring->xdp_tx_active)) {
> +		xsk_frames = completed_frames;
> +		goto skip;
>   	}
>   
>   	ntc = tx_ring->next_to_clean;
> @@ -475,18 +480,18 @@ bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi,
>   	for (i = 0; i < completed_frames; i++) {
>   		tx_bi = &tx_ring->tx_bi[ntc];
>   
> -		if (tx_bi->xdpf)
> +		if (tx_bi->xdpf) {
>   			i40e_clean_xdp_tx_buffer(tx_ring, tx_bi);
> -		else
> +			tx_bi->xdpf = NULL;
> +		} else {
>   			xsk_frames++;
> -
> -		tx_bi->xdpf = NULL;
> -		total_bytes += tx_bi->bytecount;
> +		}
>   
>   		if (++ntc >= tx_ring->count)
>   			ntc = 0;
>   	}
>   
> +skip:
>   	tx_ring->next_to_clean += completed_frames;
>   	if (unlikely(tx_ring->next_to_clean >= tx_ring->count))
>   		tx_ring->next_to_clean -= tx_ring->count;
> @@ -495,7 +500,6 @@ bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi,
>   		xsk_umem_complete_tx(umem, xsk_frames);
>   
>   	i40e_arm_wb(tx_ring, vsi, budget);

I guess budget here should be replaced with completed_frames

> -	i40e_update_tx_stats(tx_ring, completed_frames, total_bytes);
>   
>   out_xmit:
>   	if (xsk_umem_uses_need_wakeup(tx_ring->xsk_umem))


> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
