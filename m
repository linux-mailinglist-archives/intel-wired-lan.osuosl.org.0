Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DE770D1306C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 15:12:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D949427D9;
	Mon, 12 Jan 2026 14:12:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vY0EhNwEw_i5; Mon, 12 Jan 2026 14:12:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBFAE427DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768227131;
	bh=diec4hfbDauZO2c9I1fCLrBUq3/BSszuyhfmcUdB7wM=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Z9NGj9Z0FtoyrJM66qf/uzcXhP9GK3pymq7ApfyvaWt1f43GUWo7w/wOyNRQGoN19
	 NEVckj5b+hZG7+bjFVD+cUuP6g0rE160dgDfkUnJvYawDCL095yhyNPlomzqnIje8o
	 efDAk9MlywP7/vm5RhPJj6KcGh/asLdyV+KO74WUII8jxKVosOfFFwgyStzqBxCUxm
	 sHCKykhejG0+KIZ4l5SX0oesjpvWxvrtCjmc+9ChMlWFTxWPMnM6AHcsEJwdH4wdFx
	 62Zl8PfregBvMKJvbNNzdVqt99iHtASvsATebmZ/U1UedTaVTdB6WF/nhaBSA3xqQZ
	 G1GAnf6gbR7Qw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBFAE427DA;
	Mon, 12 Jan 2026 14:12:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 21ACB12E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 14:12:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1393B427D6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 14:12:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4NXrxGfR3S5a for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 14:12:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E16FE427D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E16FE427D7
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E16FE427D7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 14:12:06 +0000 (UTC)
Received: from [192.168.2.217] (p5b13a106.dip0.t-ipconnect.de [91.19.161.6])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 918062394AFE9;
 Mon, 12 Jan 2026 15:11:32 +0100 (CET)
Message-ID: <156b1eb6-fde4-454b-9603-fbed1814204f@molgen.mpg.de>
Date: Mon, 12 Jan 2026 15:11:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vivek Behera <vivek.behera@siemens.com>
Cc: aleksandr.loktionov@intel.com, jacob.e.keller@intel.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 maciej.fijalkowski@intel.com, sriram.yagnaraman@ericsson.com,
 kurt@linutronix.de, intel-wired-lan@lists.osuosl.org
References: <20260112130349.1737901-1-vivek.behera@siemens.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260112130349.1737901-1-vivek.behera@siemens.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v5] igb: Fix trigger of
 incorrect irq in igb_xsk_wakeup
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


Thank you for your patch. Some minor comments below.

Am 12.01.26 um 14:03 schrieb Vivek Behera via Intel-wired-lan:
> The current implementation in the igb_xsk_wakeup expects the Rx and Tx queues

Please re-flow for 75 characters per line.

> to share the same irq. This would lead to triggering of incorrect irq
> in split irq configuration.
> This patch addresses this issue which could impact environments
> with 2 active cpu cores
> or when the number of queues is reduced to 2 or less

Why break the line in the middle of the sentence?

> cat /proc/interrupts | grep eno2
>   167:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
>   0-edge      eno2
>   168:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
>   1-edge      eno2-rx-0
>   169:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
>   2-edge      eno2-rx-1
>   170:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
>   3-edge      eno2-tx-0
>   171:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
>   4-edge      eno2-tx-1
> 
> Furthermore it uses the flags input argument to trigger either rx, tx or
> both rx and tx irqs as specified in the ndo_xsk_wakeup api documentation

Please add a dot/period at the end of sentences.

> Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and helpers")
> Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1: https://lore.kernel.org/intel-wired-lan/20251212131454.124116-1-vivek.behera@siemens.com/
> v2: https://lore.kernel.org/intel-wired-lan/20251215115416.410619-1-vivek.behera@siemens.com/
> v3: https://lore.kernel.org/intel-wired-lan/20251220114936.140473-1-vivek.behera@siemens.com/
> v4: https://lore.kernel.org/intel-wired-lan/20251222115747.230521-1-vivek.behera@siemens.com/
> 
> changelog:
> v1
> - Inital description of the Bug and fixes made in the patch

Initial

> 
> v1 -> v2
> - Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ configuration
> - Review suggestions by Aleksander: Modified sequence to complete all
>    error checks for rx and tx before updating napi states and triggering irqs
> - Corrected trigger of TX and RX interrupts over E1000_ICS (non msix use case)
> - Added define for Tx interrupt trigger bit mask for E1000_ICS
> 
> v2 -> v3
> - Included applicable feedback and suggestions from igc patch
> - Fixed logic in updating eics value when  both TX and RX need wakeup
> 
> v3 -> v4
> - Added comments to explain trigerring of both TX and RX with active queue pairs
> - Fixed check of xsk pools in if statement
> 
> v4 -> v5
> - Introduced a simplified logic for sequential check for RX and TX
> ---
>   .../net/ethernet/intel/igb/e1000_defines.h    |  1 +
>   drivers/net/ethernet/intel/igb/igb_xsk.c      | 75 +++++++++++++++----
>   2 files changed, 61 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/e1000_defines.h b/drivers/net/ethernet/intel/igb/e1000_defines.h
> index fa028928482f..9357564a2d58 100644
> --- a/drivers/net/ethernet/intel/igb/e1000_defines.h
> +++ b/drivers/net/ethernet/intel/igb/e1000_defines.h
> @@ -443,6 +443,7 @@
>   #define E1000_ICS_LSC       E1000_ICR_LSC       /* Link Status Change */
>   #define E1000_ICS_RXDMT0    E1000_ICR_RXDMT0    /* rx desc min. threshold */
>   #define E1000_ICS_DRSTA     E1000_ICR_DRSTA     /* Device Reset Aserted */
> +#define E1000_ICS_TXDW      E1000_ICR_TXDW	/* Transmit desc written back */
>   
>   /* Extended Interrupt Cause Set */
>   /* E1000_EITR_CNT_IGNR is only for 82576 and newer */
> diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/igb/igb_xsk.c
> index 30ce5fbb5b77..6e51b5b6f131 100644
> --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> @@ -529,6 +529,13 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
>   	struct igb_adapter *adapter = netdev_priv(dev);
>   	struct e1000_hw *hw = &adapter->hw;
>   	struct igb_ring *ring;
> +	struct igb_q_vector *q_vector;
> +	struct napi_struct *rx_napi;
> +	struct napi_struct *tx_napi;
> +	bool trigger_irq_tx = false;
> +	bool trigger_irq_rx = false;
> +	u32 eics_tx = 0;
> +	u32 eics_rx = 0;
>   	u32 eics = 0;
>   
>   	if (test_bit(__IGB_DOWN, &adapter->state))
> @@ -536,27 +543,65 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
>   
>   	if (!igb_xdp_is_enabled(adapter))
>   		return -EINVAL;
> -

Why remove the blank line.

> -	if (qid >= adapter->num_tx_queues)
> +	/* Check if queue_id is valid. Tx and Rx queue numbers are always same */
> +	if (qid >= adapter->num_rx_queues)
>   		return -EINVAL;
> -
> -	ring = adapter->tx_ring[qid];
> -
> -	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> -		return -ENETDOWN;
> -
> -	if (!READ_ONCE(ring->xsk_pool))
> +	/* Check if flags are valid */
> +	if (!(flags & XDP_WAKEUP_RX) && !(flags & XDP_WAKEUP_TX))
>   		return -EINVAL;

The comment seems redundant.

> -
> -	if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
> -		/* Cause software interrupt */
> +	if (flags & XDP_WAKEUP_RX) {
> +		/* IRQ trigger preparation for Rx */
> +		ring = adapter->rx_ring[qid];
> +		if (!READ_ONCE(ring->xsk_pool))
> +			return -ENXIO;
> +		q_vector = ring->q_vector;
> +		rx_napi = &q_vector->napi;
> +		/* Extend the BIT mask for eics */
> +		eics_rx = ring->q_vector->eims_value;
> +		trigger_irq_rx = true;
> +	}
> +	if (flags & XDP_WAKEUP_TX) {
> +		if (adapter->flags & IGB_FLAG_QUEUE_PAIRS) {
> +		/* In queue-pair mode, rx_ring and tx_ring share the same q_vector,
> +		 * so a single IRQ trigger will wake both RX and TX processing
> +		 */
> +		} else {
> +			/* IRQ trigger preparation for Tx */
> +			ring = adapter->tx_ring[qid];
> +			if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> +				return -ENETDOWN;
> +
> +			if (!READ_ONCE(ring->xsk_pool))
> +				return -ENXIO;
> +			q_vector = ring->q_vector;
> +			tx_napi = &q_vector->napi;
> +			/* Extend the BIT mask for eics */
> +			eics_tx = ring->q_vector->eims_value;
> +			trigger_irq_tx = true;
> +		}
> +	}
> +	/* All error checks are finished. Check and update napi states for rx and tx */
> +	if (trigger_irq_rx) {
> +		if (!napi_if_scheduled_mark_missed(rx_napi))
> +			eics |= eics_rx;
> +	}
> +	if (trigger_irq_tx) {
> +		if (!napi_if_scheduled_mark_missed(tx_napi))
> +			eics |= eics_tx;
> +	}
> +	/* Now we trigger the required irqs for Rx and Tx */
> +	if ((trigger_irq_rx) || (trigger_irq_tx)) {
>   		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
> -			eics |= ring->q_vector->eims_value;
>   			wr32(E1000_EICS, eics);
>   		} else {
> -			wr32(E1000_ICS, E1000_ICS_RXDMT0);
> +			if ((trigger_irq_rx) && (trigger_irq_tx))
> +				wr32(E1000_ICS,
> +				     E1000_ICS_RXDMT0 | E1000_ICS_TXDW);
> +			else if (trigger_irq_rx)
> +				wr32(E1000_ICS, E1000_ICS_RXDMT0);
> +			else
> +				wr32(E1000_ICS, E1000_ICS_TXDW);
>   		}
>   	}
> -

The removal of the blank line is unrelated. It looks like you divert 
from the coding style of this file. I’d suggest to avoid that.

>   	return 0;
>   }


Kind regards,

Paul
