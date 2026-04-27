Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDn/H9Rw72mHBQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 16:21:08 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E134743C0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 16:21:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 91930856ED;
	Mon, 27 Apr 2026 14:21:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ojegqf2bVy2I; Mon, 27 Apr 2026 14:21:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 00A8D856EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777299663;
	bh=55q/EuZy9fgWNTeQT/CdEjWjIme6/LO9q84OXFz2Ayo=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bR0mKZ2rewnkCbCYVJxR3IH7ueoMEGPmmKGspqtmKZIqR0by2/FODKF3dTSxQgNkJ
	 xkZ4KF96ZO/noC7xPayGG1Sg81zOsbVBEwhOv4HrbklxEW9eLyp4yVI09CE5rU2GfR
	 IHr4Yib0gpDop+JDRjcF4CwjrQEKFL5QcRJ1jRCIlwLQCaKx14R6dJmvQv0feVrZCC
	 WeOq0qqWq8JXVXGlOrgv3nKVzOhFCXjMjDqmVefUq40RcPyrdWzIUvqsk3IGqPAHri
	 +l3raoAy41bSdD4X4PuR5e23vTOQzOdnaoKHc9ErkMZS832GCqAtwIoXaH14zz9Jvy
	 80gprzDvgQppA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 00A8D856EE;
	Mon, 27 Apr 2026 14:21:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 03A382DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 14:21:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DE0E942B17
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 14:21:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RxmJtl20f4sD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Apr 2026 14:21:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1777D42B14
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1777D42B14
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1777D42B14
 for <intel-wired-lan@osuosl.org>; Mon, 27 Apr 2026 14:20:58 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id DE5F94C2C37D45;
 Mon, 27 Apr 2026 16:20:42 +0200 (CEST)
Message-ID: <eb6f6dbe-6d77-46cb-8abe-25d959fbf36c@molgen.mpg.de>
Date: Mon, 27 Apr 2026 16:20:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Matt Vollrath <tactii@gmail.com>
Cc: intel-wired-lan@osuosl.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20260427141227.19965-1-tactii@gmail.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260427141227.19965-1-tactii@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] e1000e: Avoid DMA
 re-mapping on RX copybreak
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 50E134743C0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:tactii@gmail.com,m:intel-wired-lan@osuosl.org,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	DMARC_NA(0.00)[mpg.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]

Dear Matt,


Thank you for your patch.

Am 27.04.26 um 16:12 schrieb Matt Vollrath:
> This patch factors out DMA re-mapping for skbs which were recycled in
> the RX path due to copybreak or errors. There is only one path out of
> the e1000_clean_rx_irq() loop where the skb is consumed and DMA needs
> to be re-mapped, so don't unmap it before checking the conditions.
> 
> The buffer allocation loop is adjusted to not assume that DMA is
> unmapped, handling mapping errors gracefully.
> 
> On systems with IOMMU enabled, the cost of re-mapping DMA is greater
> than the cost of copying data out of the ring buffer. When I use this
> patch and configure e1000e with copybreak=2048, my system with IOMMU
> completes RX twice as fast under load.

It’d be great if you could document the benchmark, and described your 
system and shared the numbers.

> The kludge of unconditional unmapping has existed since this driver was
> introduced in 2007, inherited from the e1000 driver which has since
> factored it out. IOMMU tech was new at the time.

Please share the commit factoring it out.

Also, what about systems where the IOMMU is disabled. (I think that is 
possible.)

> Tested on an I218-V.
> 
> Assisted-by: Claude:claude-4-7-opus
> Signed-off-by: Matt Vollrath <tactii@gmail.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v2:
> * proofread description with Aleksandr
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 34 +++++++++++++++-------
>   1 file changed, 23 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 9befdacd6730..b1d6119171df 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -663,6 +663,8 @@ static void e1000_alloc_rx_buffers(struct e1000_ring *rx_ring,
>   		skb = buffer_info->skb;
>   		if (skb) {
>   			skb_trim(skb, 0);
> +			if (likely(buffer_info->dma))
> +				goto write_desc;
>   			goto map_skb;
>   		}
>   
> @@ -680,10 +682,12 @@ static void e1000_alloc_rx_buffers(struct e1000_ring *rx_ring,
>   						  DMA_FROM_DEVICE);
>   		if (dma_mapping_error(&pdev->dev, buffer_info->dma)) {
>   			dev_err(&pdev->dev, "Rx DMA map failed\n");
> +			buffer_info->dma = 0;
>   			adapter->rx_dma_failed++;
>   			break;
>   		}
>   
> +write_desc:
>   		rx_desc = E1000_RX_DESC_EXT(*rx_ring, i);
>   		rx_desc->read.buffer_addr = cpu_to_le64(buffer_info->dma);
>   
> @@ -941,7 +945,6 @@ static bool e1000_clean_rx_irq(struct e1000_ring *rx_ring, int *work_done,
>   		dma_rmb();	/* read descriptor and rx_buffer_info after status DD */
>   
>   		skb = buffer_info->skb;
> -		buffer_info->skb = NULL;
>   
>   		prefetch(skb->data - NET_IP_ALIGN);
>   
> @@ -955,9 +958,6 @@ static bool e1000_clean_rx_irq(struct e1000_ring *rx_ring, int *work_done,
>   
>   		cleaned = true;
>   		cleaned_count++;
> -		dma_unmap_single(&pdev->dev, buffer_info->dma,
> -				 adapter->rx_buffer_len, DMA_FROM_DEVICE);
> -		buffer_info->dma = 0;
>   
>   		length = le16_to_cpu(rx_desc->wb.upper.length);
>   
> @@ -973,8 +973,6 @@ static bool e1000_clean_rx_irq(struct e1000_ring *rx_ring, int *work_done,
>   		if (adapter->flags2 & FLAG2_IS_DISCARDING) {
>   			/* All receives must fit into a single buffer */
>   			e_dbg("Receive packet consumed multiple buffers\n");
> -			/* recycle */
> -			buffer_info->skb = skb;
>   			if (staterr & E1000_RXD_STAT_EOP)
>   				adapter->flags2 &= ~FLAG2_IS_DISCARDING;
>   			goto next_desc;
> @@ -982,8 +980,6 @@ static bool e1000_clean_rx_irq(struct e1000_ring *rx_ring, int *work_done,
>   
>   		if (unlikely((staterr & E1000_RXDEXT_ERR_FRAME_ERR_MASK) &&
>   			     !(netdev->features & NETIF_F_RXALL))) {
> -			/* recycle */
> -			buffer_info->skb = skb;
>   			goto next_desc;
>   		}
>   
> @@ -1010,19 +1006,35 @@ static bool e1000_clean_rx_irq(struct e1000_ring *rx_ring, int *work_done,
>   			struct sk_buff *new_skb =
>   				napi_alloc_skb(&adapter->napi, length);
>   			if (new_skb) {
> +				dma_sync_single_for_cpu(&pdev->dev,
> +							buffer_info->dma,
> +							adapter->rx_buffer_len,
> +							DMA_FROM_DEVICE);
>   				skb_copy_to_linear_data_offset(new_skb,
>   							       -NET_IP_ALIGN,
>   							       (skb->data -
>   								NET_IP_ALIGN),
>   							       (length +
>   								NET_IP_ALIGN));
> -				/* save the skb in buffer_info as good */
> -				buffer_info->skb = skb;
> +				dma_sync_single_for_device(&pdev->dev,
> +							   buffer_info->dma,
> +							   adapter->rx_buffer_len,
> +							   DMA_FROM_DEVICE);
>   				skb = new_skb;
>   			}
>   			/* else just continue with the old one */
>   		}
> -		/* end copybreak code */
> +
> +		/* If skb was not replaced by copybreak, we are consuming
> +		 * the original buffer and must release the DMA mapping.
> +		 */
> +		if (skb == buffer_info->skb) {
> +			buffer_info->skb = NULL;
> +			dma_unmap_single(&pdev->dev, buffer_info->dma,
> +					 adapter->rx_buffer_len,
> +					 DMA_FROM_DEVICE);
> +			buffer_info->dma = 0;
> +		}
>   		skb_put(skb, length);
>   
>   		/* Receive Checksum Offload */


Kind regards,

Paul
