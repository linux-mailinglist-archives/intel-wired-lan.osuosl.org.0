Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uE6kCXPe8Wn3kwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 12:33:23 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D12492FE9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 12:33:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D06D861349;
	Wed, 29 Apr 2026 10:33:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y_mz42iOHgOs; Wed, 29 Apr 2026 10:33:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BAB0E6153C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777458795;
	bh=GCALGF1sFSq0A9og39bcbq5S8AizQ4w9uO5M5kWGWGI=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mDEednAtAcLJo4S2+hV5xgyF3QUKLGqrFIpY/t8KlibOAt9IJrvObvbLFh9MTLQE+
	 SIME6FxVkg80c8MGS06N3CWcIBK/qMgsNRHRCGxjvKfCv7sEFXMR4JvV9geh3tx9z+
	 GwplHvZUYXSSqK4WYUDugFLrQv169fDgb3+updMApS2VFcPXPTgK5dsf6TO/6NkJBG
	 ZhUefp2WDReijD85Itnodjs+nGjzUPNJH8QOprF2SXgH2OeXaTbkx6/al0MeWqves9
	 yikPSWB6akobxMIRpX5DcE13+/sQ3KSClBshXApHhHu1XPqZ3WAN3BSkdiyRp2mAcU
	 XEc5455nwPUoA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BAB0E6153C;
	Wed, 29 Apr 2026 10:33:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id BF30A23D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 10:33:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B0E7C42310
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 10:33:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DYJBG1pQ60uC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Apr 2026 10:33:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D90174230D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D90174230D
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D90174230D
 for <intel-wired-lan@osuosl.org>; Wed, 29 Apr 2026 10:33:11 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id BE00E4C2C37F03;
 Wed, 29 Apr 2026 12:32:53 +0200 (CEST)
Message-ID: <89e43943-d114-4de5-8fec-efabc3cdc20e@molgen.mpg.de>
Date: Wed, 29 Apr 2026 12:32:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Matt Vollrath <tactii@gmail.com>
Cc: intel-wired-lan@osuosl.org,
 Aleksander Loktionov <aleksandr.loktionov@intel.com>
References: <20260429014325.19136-1-tactii@gmail.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260429014325.19136-1-tactii@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] e1000e: Avoid DMA
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
X-Rspamd-Queue-Id: 99D12492FE9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:tactii@gmail.com,m:intel-wired-lan@osuosl.org,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	DMARC_NA(0.00)[mpg.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
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


Thank you for this iteration.

Am 29.04.26 um 03:43 schrieb Matt Vollrath:
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
> completes RX roughly twice as fast under load.
> 
> Informal performance comparisons were based on Asus Gryphon Z97 which
> includes an I218-V and with a Xeon E3-1240 v3 in the socket. ktime_get()
> measurement was injected into e1000e_poll() wrapping the
> adapter->clean_rx() call. The total time spent in clean_rx() was divided
> by work_done to print the average time spent per buffer. iperf3 -R was
> used to saturate the RX path and awk was used for statistics. Control
> revision was set to 7.1-rc1 because iwl-next hadn't been updated yet.
> 
>   rev     | iommu | copybreak | samples | mean (ns) |   stdev
>   7.1-rc1 |   off |         0 |    4748 |    453.72 |  155.82
>   7.1-rc1 |   off |      2048 |    4743 |    554.83 |  103.67
>   7.1-rc1 |    on |         0 |    4751 |   1139.22 |  150.56
> * 7.1-rc1 |    on |      2048 |    4737 |   1267.02 |  184.62
>    +patch |   off |         0 |    4739 |    456.30 |  146.33
>    +patch |   off |      2048 |    4739 |    538.56 |  132.97
>    +patch |    on |         0 |    4769 |   1165.97 |  140.19
> *  +patch |    on |      2048 |    4745 |    562.25 |  171.80

Awesome description and overview. Thank you! Values for the default case 
of `copybreak=256` would be nice to have. But no need to resend for my sake.

> No surprises here, IOMMU DMA ops are known to be expensive. For most
> users the kernel default is iommu=on and driver default is
> copybreak=256, so unless the workload is small packets, some tuning of
> either knob would be needed to see the full benefit of this change.
> 
> The kludge of unconditional unmapping has existed since this driver was
> introduced in 2007[1], inherited from the e1000 driver which has since
> factored it out[2]. IOMMU tech was new at the time.
> 
> [1] Commit bc7f75fa9788 ("[E1000E]: New pci-express e1000 driver (currently for ICH9 devices only)")
> [2] Commit 2b294b18689c ("e1000: perform copybreak ahead of DMA unmap")
> 
> Assisted-by: Claude:claude-4-7-opus
> Signed-off-by: Matt Vollrath <tactii@gmail.com>
> ---
> v3:
> * refactor unmapping bypass, use goto instead of redundant branch
> * remove Aleksandr's sign-off due to logic change
> * benchmark details
> * cite historic commits
> v2:
> * proofread description with Aleksandr
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 32 ++++++++++++++--------
>   1 file changed, 21 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 7ce0cc8ab8f4..62bf85c768d6 100644
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
> @@ -1010,19 +1006,33 @@ static bool e1000_clean_rx_irq(struct e1000_ring *rx_ring, int *work_done,
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
> +				goto copybreak_done;
>   			}
>   			/* else just continue with the old one */
>   		}
> -		/* end copybreak code */
> +
> +		buffer_info->skb = NULL;
> +		dma_unmap_single(&pdev->dev, buffer_info->dma,
> +				 adapter->rx_buffer_len,
> +				 DMA_FROM_DEVICE);
> +		buffer_info->dma = 0;
> +
> +copybreak_done:
>   		skb_put(skb, length);
>   
>   		/* Receive Checksum Offload */

Feel free to add:

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
