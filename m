Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 630C7B1CA44
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Aug 2025 19:05:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1159E6117A;
	Wed,  6 Aug 2025 17:05:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xPqW2LdjdVS8; Wed,  6 Aug 2025 17:05:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1269F61195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754499950;
	bh=J8MbR8e6wdz5NVX9+HLgC96tIaS6bkAaGTYzJ5cbQl0=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=u4I5UIZ2qf+bcYABWb9VkxvHwBHnolek2iefbLMp8BGQVg/lBD4IdEQSkMvk9h9ty
	 rvlPKFzwivP60V3UfqDncicsO6pQHuPyisIF4hxKLOIWubAw/jBGHImUVpQNwPm1E2
	 PJvIBTeWZJ0GY5Mxk7Im0QEspu59LbbgqrzUTtRtFYfVMjdYC3OKEuoq05EcbVd+0e
	 ddmPg83uwFFdnQW65/iil+HBOfBlUJ8e0k7jY+swGxBuVayyTWDs8t14Qm4y4L0j3v
	 nSMK6RUlAnmczbBDD7NrhoTkdX3YAjTGGUnQt7sT5sy9JwMiQ3picPCZUBngGKMOEu
	 k3SRwf/v56mAA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1269F61195;
	Wed,  6 Aug 2025 17:05:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E672131
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Aug 2025 17:05:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D0D7884476
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Aug 2025 17:05:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JOf3f9GjdktD for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Aug 2025 17:05:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E774F842B6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E774F842B6
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E774F842B6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Aug 2025 17:05:45 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 5BE9861EA1BEA;
 Wed, 06 Aug 2025 19:05:20 +0200 (CEST)
Message-ID: <171ae15c-5c13-48b5-b5a6-e61e6f259681@molgen.mpg.de>
Date: Wed, 6 Aug 2025 19:05:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, magnus.karlsson@intel.com,
 tobias.boehm@hetzner-cloud.de, marcus.wichelmann@hetzner-cloud.de,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20250806165819.2162027-1-maciej.fijalkowski@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250806165819.2162027-1-maciej.fijalkowski@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net] ixgbe: fix ndo_xdp_xmit()
 workloads
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

Dear Maciej,


Thank you for your patch.


Am 06.08.25 um 18:58 schrieb Maciej Fijalkowski:
> Currently ixgbe driver checks periodically in its watchdog subtask if
> there is anything to be transmitted (considering both Tx and XDP rings)
> under state of carrier not being 'ok'. Such event is interpreted as Tx
> hang and therefore results in interface reset.

For people grepping through commit messages, add some more details how 
the hang manifests?

> This is currently problematic for ndo_xdp_xmit() as it is allowed to
> produce descriptors when interface is going through reset or its carrier
> is turned off.
> 
> Furthermore, XDP rings should not really be objects of Tx hang
> detection. This mechanism is rather a matter of ndo_tx_timeout() being
> called from dev_watchdog against Tx rings exposed to networking stack.
> 
> Taking into account issues described above, let us have a two fold fix -
> do not respect XDP rings in local ixgbe watchdog and do not produce Tx
> descriptors in ndo_xdp_xmit callback when there is some problem with
> carrier currently. For now, keep the Tx hang checks in clean Tx irq
> routine, but adjust it to not execute for XDP rings.

Do you have a reproducer for this?

> Cc: Tobias Böhm <tobias.boehm@hetzner-cloud.de>
> Reported-by: Marcus Wichelmann <marcus.wichelmann@hetzner-cloud.de>
> Closes: https://lore.kernel.org/netdev/eca1880f-253a-4955-afe6-732d7c6926ee@hetzner-cloud.de/
> Fixes: 6453073987ba ("ixgbe: add initial support for xdp redirect")
> Fixes: 33fdc82f0883 ("ixgbe: add support for XDP_TX action")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Tested-by: Marcus Wichelmann <marcus.wichelmann@hetzner-cloud.de>
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
> v1->v2:
> * collect tags
> * fix typos (Dawid)
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 34 ++++++-------------
>   1 file changed, 11 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 03d31e5b131d..7c0db3b3ee8e 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -967,10 +967,6 @@ static void ixgbe_update_xoff_rx_lfc(struct ixgbe_adapter *adapter)
>   	for (i = 0; i < adapter->num_tx_queues; i++)
>   		clear_bit(__IXGBE_HANG_CHECK_ARMED,
>   			  &adapter->tx_ring[i]->state);
> -
> -	for (i = 0; i < adapter->num_xdp_queues; i++)
> -		clear_bit(__IXGBE_HANG_CHECK_ARMED,
> -			  &adapter->xdp_ring[i]->state);
>   }
>   
>   static void ixgbe_update_xoff_received(struct ixgbe_adapter *adapter)
> @@ -1264,10 +1260,13 @@ static bool ixgbe_clean_tx_irq(struct ixgbe_q_vector *q_vector,
>   				   total_bytes);
>   	adapter->tx_ipsec += total_ipsec;
>   
> +	if (ring_is_xdp(tx_ring))
> +		return !!budget;
> +
>   	if (check_for_tx_hang(tx_ring) && ixgbe_check_tx_hang(tx_ring)) {
>   		/* schedule immediate reset if we believe we hung */
>   		struct ixgbe_hw *hw = &adapter->hw;
> -		e_err(drv, "Detected Tx Unit Hang %s\n"
> +		e_err(drv, "Detected Tx Unit Hang\n"
>   			"  Tx Queue             <%d>\n"
>   			"  TDH, TDT             <%x>, <%x>\n"
>   			"  next_to_use          <%x>\n"
> @@ -1275,16 +1274,14 @@ static bool ixgbe_clean_tx_irq(struct ixgbe_q_vector *q_vector,
>   			"tx_buffer_info[next_to_clean]\n"
>   			"  time_stamp           <%lx>\n"
>   			"  jiffies              <%lx>\n",
> -			ring_is_xdp(tx_ring) ? "(XDP)" : "",
>   			tx_ring->queue_index,
>   			IXGBE_READ_REG(hw, IXGBE_TDH(tx_ring->reg_idx)),
>   			IXGBE_READ_REG(hw, IXGBE_TDT(tx_ring->reg_idx)),
>   			tx_ring->next_to_use, i,
>   			tx_ring->tx_buffer_info[i].time_stamp, jiffies);
>   
> -		if (!ring_is_xdp(tx_ring))
> -			netif_stop_subqueue(tx_ring->netdev,
> -					    tx_ring->queue_index);
> +		netif_stop_subqueue(tx_ring->netdev,
> +				    tx_ring->queue_index);
>   
>   		e_info(probe,
>   		       "tx hang %d detected on queue %d, resetting adapter\n",
> @@ -1297,9 +1294,6 @@ static bool ixgbe_clean_tx_irq(struct ixgbe_q_vector *q_vector,
>   		return true;
>   	}
>   
> -	if (ring_is_xdp(tx_ring))
> -		return !!budget;
> -
>   #define TX_WAKE_THRESHOLD (DESC_NEEDED * 2)
>   	txq = netdev_get_tx_queue(tx_ring->netdev, tx_ring->queue_index);
>   	if (!__netif_txq_completed_wake(txq, total_packets, total_bytes,
> @@ -7796,12 +7790,9 @@ static void ixgbe_check_hang_subtask(struct ixgbe_adapter *adapter)
>   		return;
>   
>   	/* Force detection of hung controller */
> -	if (netif_carrier_ok(adapter->netdev)) {
> +	if (netif_carrier_ok(adapter->netdev))
>   		for (i = 0; i < adapter->num_tx_queues; i++)
>   			set_check_for_tx_hang(adapter->tx_ring[i]);
> -		for (i = 0; i < adapter->num_xdp_queues; i++)
> -			set_check_for_tx_hang(adapter->xdp_ring[i]);
> -	}
>   
>   	if (!(adapter->flags & IXGBE_FLAG_MSIX_ENABLED)) {
>   		/*
> @@ -8016,13 +8007,6 @@ static bool ixgbe_ring_tx_pending(struct ixgbe_adapter *adapter)
>   			return true;
>   	}
>   
> -	for (i = 0; i < adapter->num_xdp_queues; i++) {
> -		struct ixgbe_ring *ring = adapter->xdp_ring[i];
> -
> -		if (ring->next_to_use != ring->next_to_clean)
> -			return true;
> -	}
> -
>   	return false;
>   }
>   
> @@ -10825,6 +10809,10 @@ static int ixgbe_xdp_xmit(struct net_device *dev, int n,
>   	if (unlikely(test_bit(__IXGBE_DOWN, &adapter->state)))
>   		return -ENETDOWN;
>   
> +	if (!netif_carrier_ok(adapter->netdev) ||
> +	    !netif_running(adapter->netdev))
> +		return -ENETDOWN;
> +

I am no expert here, but should the commit be split into two?

>   	if (unlikely(flags & ~XDP_XMIT_FLAGS_MASK))
>   		return -EINVAL;
>   


Kind regards,

Paul
