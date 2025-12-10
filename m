Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 02215CB380F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Dec 2025 17:42:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5C0840A3C;
	Wed, 10 Dec 2025 16:42:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qVQlHeYilUtx; Wed, 10 Dec 2025 16:42:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E97AC40A55
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765384940;
	bh=ms3P8pFgznAWWzcplCh8oRgzv/3Y4/R9ryD7bwqad7c=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Z4Iqj0K4Na0D8Sz6wAToRtIYzkQ1gSNcV2Spe3za2DIHt+rgazXST/a8b0xxFqiNH
	 cEMWZx+AN1lZ2woURw2FpTWfghEzqgAX0BDaUKhVZsmyDIEscyRc4WhPNOD7UmL5Lx
	 D9UrtZxCGDeccrE+wltYzhracukEgYHvrVBasmZOu2iIUEhEVGYr/Un6x/MvpXP1fe
	 nKWoXdd+n2/AOb9Cu30WTc6dUjjAsMw3mVL49orN9B33c4rflj85BUs5kKUH/EJcPT
	 txacuZGigTZ6ubdaKvnGXX6/IEZj6J0IVHu/YN5uToWrLqYt+yHeYgvXZ3IKd6RGTN
	 Dc5lUMBcm6pFQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E97AC40A55;
	Wed, 10 Dec 2025 16:42:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id F23CF2C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 16:42:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E1B9F409AE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 16:42:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pBmZ5XFUh70z for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Dec 2025 16:42:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4F0884088A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F0884088A
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4F0884088A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 16:42:15 +0000 (UTC)
Received: from [10.0.39.109] (unknown [62.214.191.67])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id D4FBE617C4F85;
 Wed, 10 Dec 2025 17:41:39 +0100 (CET)
Message-ID: <ae675b47-1c9d-4dc3-8808-1e6cd6589acd@molgen.mpg.de>
Date: Wed, 10 Dec 2025 17:41:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vivek Behera <vivek.behera@siemens.com>
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Jacob E Keller <jacob.e.keller@intel.com>,
 Anthony L Nguyen <anthony.l.nguyen@intel.com>,
 Przemyslaw Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <AS1PR10MB5392B7268416DB8A1624FDB88FA7A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <4c90ed4e-307c-429a-9f8c-29032cc146ee@intel.com>
 <AS1PR10MB5392C71EED7AB2446036FB9F8FA3A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <AS1PR10MB539202E6B3C43BE259831AD88FA3A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <IA3PR11MB89863C74B0554055470B9EE0E5A3A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <IA3PR11MB8986E4ACB7F264CF2DD1D750E5A0A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <AS1PR10MB5392FCA415A38B9DD7BB5F218FA0A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <AS1PR10MB5392FCA415A38B9DD7BB5F218FA0A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-net] igc: Fix trigger of
 incorrect irq in igc_xsk_wakeup function
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

Dear Vivek,


Thank you for your patch.


Am 10.12.25 um 08:50 schrieb Behera, VIVEK:

What is your given name? ;-) I think in French, it’s common to 
capitalize the surname.

> Changes in v5:
> - Updated comment style from multi-star to standard /* */ as
> suggested by Aleksandr.

It’s common to add that below the --- and above the diffstat.

>  From ab2583ff8a17405d3aa6caf4df1c4fdfb21f5e98 Mon Sep 17 00:00:00 2001
> From: Vivek Behera <vivek.behera@siemens.com>
> Date: Fri, 5 Dec 2025 10:26:05 +0100
> Subject: [PATCH v5] [iwl-net] igc: Fix trigger of incorrect irq in
>   igc_xsk_wakeup function
> 
> This patch addresses the issue where the igc_xsk_wakeup function
> was triggering an incorrect IRQ for tx-0 when the i226 is configured
> with only 2 combined queues or in an environment with 2 active CPU cores.
> This prevented XDP Zero-copy send functionality in such split IRQ
> configurations.
> 
> The fix implements the correct logic for extracting q_vectors saved
> during rx and tx ring allocation and utilizes flags provided by the
> ndo_xsk_wakeup API to trigger the appropriate IRQ.
> 
> Changed comment blocks to align with standard Linux comments

Maybe “Also, change the comment blocks to …” and a dot/period at the end.

Do you have a reproducer for this? If yes, it’d be great if you 
documented this in the commit message.

> 
> Fixes: fc9df2a0b520d7d439ecf464794d53e91be74b93 ("igc: Enable RX via AF_XDP zero-copy")

It’s common to use 14(?) characters of the hash.

> Fixes: 15fd021bc4270273d8f4b7f58fdda8a16214a377 ("igc: Add Tx hardware timestamp request for AF_XDP zero-copy packet")

Ditto.

> Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> Reviewed-by: Jacob Keller <jacob.keller@intel.com>
> Reviewed-by: Aleksandr loktinov <aleksandr.loktionov@intel.com>

Please capitalize the last name.

> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 81 ++++++++++++++++++-----
>   drivers/net/ethernet/intel/igc/igc_ptp.c  |  2 +-
>   2 files changed, 64 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 7aafa60ba0c8..c7bf5a4b89e9 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -6908,21 +6908,13 @@ static int igc_xdp_xmit(struct net_device *dev, int num_frames,
>   	return nxmit;
>   }
>   
> -static void igc_trigger_rxtxq_interrupt(struct igc_adapter *adapter,
> -					struct igc_q_vector *q_vector)
> -{
> -	struct igc_hw *hw = &adapter->hw;
> -	u32 eics = 0;
> -
> -	eics |= q_vector->eims_value;
> -	wr32(IGC_EICS, eics);
> -}
> -
>   int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)
>   {
>   	struct igc_adapter *adapter = netdev_priv(dev);
> +	struct igc_hw *hw = &adapter->hw;
>   	struct igc_q_vector *q_vector;
>   	struct igc_ring *ring;
> +	u32 eics = 0;
>   
>   	if (test_bit(__IGC_DOWN, &adapter->state))
>   		return -ENETDOWN;
> @@ -6930,18 +6922,71 @@ int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)
>   	if (!igc_xdp_is_enabled(adapter))
>   		return -ENXIO;
>   
> -	if (queue_id >= adapter->num_rx_queues)
> -		return -EINVAL;
> +	if ((flags & XDP_WAKEUP_RX) && (flags & XDP_WAKEUP_TX)) {
> +		/* If both TX and RX need to be woken up */
> +		/* check if queue pairs are active. */
> +		if ((adapter->flags & IGC_FLAG_QUEUE_PAIRS)) {
> +			/* Just get the ring params from Rx */
> +			if (queue_id >= adapter->num_rx_queues)
> +				return -EINVAL;
> +			ring = adapter->rx_ring[queue_id];
> +		} else {
> +			/* Two irqs for Rx AND Tx need to be triggered */
> +			if (queue_id >= adapter->num_rx_queues)
> +				return -EINVAL; /*queue_id is invalid*/
>   
> -	ring = adapter->rx_ring[queue_id];
> +			if (queue_id >= adapter->num_tx_queues)
> +				return -EINVAL; /* queue_id invalid */
>   
> -	if (!ring->xsk_pool)
> -		return -ENXIO;
> +			/* IRQ trigger preparation for Rx */
> +			ring = adapter->rx_ring[queue_id];
> +			if (!ring->xsk_pool)
> +				return -ENXIO;
>   
> -	q_vector = adapter->q_vector[queue_id];
> -	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
> -		igc_trigger_rxtxq_interrupt(adapter, q_vector);
> +			/* Retrieve the q_vector saved in the ring */
> +			q_vector = ring->q_vector;
> +			if (!napi_if_scheduled_mark_missed(&q_vector->napi))
> +				eics |= q_vector->eims_value;
> +			/* IRQ trigger preparation for Tx */
> +			ring = adapter->tx_ring[queue_id];
>   
> +			if (!ring->xsk_pool)
> +				return -ENXIO;
> +
> +			/* Retrieve the q_vector saved in the ring */
> +			q_vector = ring->q_vector;
> +			if (!napi_if_scheduled_mark_missed(&q_vector->napi))
> +				eics |= q_vector->eims_value; /* Extend the BIT mask for eics */
> +
> +			/* Now we trigger the split irqs for Rx and Tx over eics */
> +			if (eics != 0)
> +				wr32(IGC_EICS, eics);
> +
> +			return 0;
> +		}
> +	} else if (flags & XDP_WAKEUP_TX) {
> +		if (queue_id >= adapter->num_tx_queues)
> +			return -EINVAL;
> +		/* Get the ring params from Tx */
> +		ring = adapter->tx_ring[queue_id];
> +	} else if (flags & XDP_WAKEUP_RX) {
> +		if (queue_id >= adapter->num_rx_queues)
> +			return -EINVAL;
> +		/* Get the ring params from Rx */
> +		ring = adapter->rx_ring[queue_id];
> +	} else {
> +		/* Invalid Flags */
> +		return -EINVAL;
> +	}
> +	/* Prepare to trigger single irq */
> +	if (!ring->xsk_pool)
> +		return -ENXIO;
> +	/* Retrieve the q_vector saved in the ring */
> +	q_vector = ring->q_vector;
> +	if (!napi_if_scheduled_mark_missed(&q_vector->napi)) {
> +		eics |= q_vector->eims_value;
> +		wr32(IGC_EICS, eics);
> +	}
>   	return 0;
>   }
>   
> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
> index b7b46d863bee..6d8c2d639cd7 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> @@ -550,7 +550,7 @@ static void igc_ptp_free_tx_buffer(struct igc_adapter *adapter,
>   		tstamp->buffer_type = 0;
>   
>   		/* Trigger txrx interrupt for transmit completion */
> -		igc_xsk_wakeup(adapter->netdev, tstamp->xsk_queue_index, 0);
> +		igc_xsk_wakeup(adapter->netdev, tstamp->xsk_queue_index, XDP_WAKEUP_TX);
>   
>   		return;
>   	}


Kind regards,

Paul
