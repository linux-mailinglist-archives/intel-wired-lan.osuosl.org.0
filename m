Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5D5206955
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2020 03:08:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CE7B787899;
	Wed, 24 Jun 2020 01:08:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e-X-VJpZZWRG; Wed, 24 Jun 2020 01:08:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 655718788E;
	Wed, 24 Jun 2020 01:08:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1575F1BF477
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 01:08:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0DB7C888B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 01:08:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Mo7AG-T2ugC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2020 01:08:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2B7D788898
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 01:08:41 +0000 (UTC)
IronPort-SDR: p7ZpYodXVAIurcfzACzZYfxMcYkRwuvmAvlNApyxT17tS55gdP67qnadvKlXx2mTkSmpSAJrNX
 7+YG+vMGZyIw==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="209460555"
X-IronPort-AV: E=Sophos;i="5.75,273,1589266800"; d="scan'208";a="209460555"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2020 18:08:40 -0700
IronPort-SDR: KicaQaAcZNLeoe+8RQsRt6+XcJk3bxsDN20PC0wvNpcO1z2r1NA4d/43q5JOICQsynV651H4uZ
 uCADq783NYVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,273,1589266800"; d="scan'208";a="288874659"
Received: from samudral-mobl.amr.corp.intel.com (HELO [10.251.139.150])
 ([10.251.139.150])
 by orsmga007.jf.intel.com with ESMTP; 23 Jun 2020 18:08:39 -0700
To: Magnus Karlsson <magnus.karlsson@intel.com>, bjorn.topel@intel.com,
 intel-wired-lan@lists.osuosl.org, jeffrey.t.kirsher@intel.com
References: <1592905458-850-1-git-send-email-magnus.karlsson@intel.com>
 <1592905458-850-2-git-send-email-magnus.karlsson@intel.com>
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Message-ID: <8cf93eaa-9c0d-3b5c-e9e2-1d95dd2fd1d8@intel.com>
Date: Tue, 23 Jun 2020 18:08:37 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <1592905458-850-2-git-send-email-magnus.karlsson@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/3] i40e: optimize AF_XDP
 Tx completion path
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



On 6/23/2020 2:44 AM, Magnus Karlsson wrote:
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

Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>

> ---
>   drivers/net/ethernet/intel/i40e/i40e_txrx.c |  3 +-
>   drivers/net/ethernet/intel/i40e/i40e_txrx.h |  1 +
>   drivers/net/ethernet/intel/i40e/i40e_xsk.c  | 43 +++++++++++++++--------------
>   drivers/net/ethernet/intel/i40e/i40e_xsk.h  |  3 +-
>   4 files changed, 27 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> index f9555c8..9334abd 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> @@ -2580,7 +2580,7 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
>   	 */
>   	i40e_for_each_ring(ring, q_vector->tx) {
>   		bool wd = ring->xsk_umem ?
> -			  i40e_clean_xdp_tx_irq(vsi, ring, budget) :
> +			  i40e_clean_xdp_tx_irq(vsi, ring) :
>   			  i40e_clean_tx_irq(vsi, ring, budget);
>   
>   		if (!wd) {
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
> index 7276580..86635f5 100644
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
> @@ -447,27 +453,25 @@ static void i40e_clean_xdp_tx_buffer(struct i40e_ring *tx_ring,
>    *
>    * Returns true if cleanup/tranmission is done.
>    **/
> -bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi,
> -			   struct i40e_ring *tx_ring, int napi_budget)
> +bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_ring)
>   {
> -	unsigned int ntc, total_bytes = 0, budget = vsi->work_limit;
> -	u32 i, completed_frames, frames_ready, xsk_frames = 0;
> +	unsigned int ntc, budget = vsi->work_limit;
>   	struct xdp_umem *umem = tx_ring->xsk_umem;
> +	u32 i, completed_frames, xsk_frames = 0;
>   	u32 head_idx = i40e_get_head(tx_ring);
> -	bool work_done = true, xmit_done;
>   	struct i40e_tx_buffer *tx_bi;
> +	bool xmit_done;
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
> @@ -475,18 +479,18 @@ bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi,
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
> @@ -494,8 +498,7 @@ bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi,
>   	if (xsk_frames)
>   		xsk_umem_complete_tx(umem, xsk_frames);
>   
> -	i40e_arm_wb(tx_ring, vsi, budget);
> -	i40e_update_tx_stats(tx_ring, completed_frames, total_bytes);
> +	i40e_arm_wb(tx_ring, vsi, completed_frames);
>   
>   out_xmit:
>   	if (xsk_umem_uses_need_wakeup(tx_ring->xsk_umem))
> @@ -503,7 +506,7 @@ bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi,
>   
>   	xmit_done = i40e_xmit_zc(tx_ring, budget);
>   
> -	return work_done && xmit_done;
> +	return xmit_done;
>   }
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.h b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
> index ea919a7d..c524c14 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
> @@ -15,8 +15,7 @@ int i40e_xsk_umem_setup(struct i40e_vsi *vsi, struct xdp_umem *umem,
>   bool i40e_alloc_rx_buffers_zc(struct i40e_ring *rx_ring, u16 cleaned_count);
>   int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget);
>   
> -bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi,
> -			   struct i40e_ring *tx_ring, int napi_budget);
> +bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_ring);
>   int i40e_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags);
>   int i40e_alloc_rx_bi_zc(struct i40e_ring *rx_ring);
>   void i40e_clear_rx_bi_zc(struct i40e_ring *rx_ring);
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
