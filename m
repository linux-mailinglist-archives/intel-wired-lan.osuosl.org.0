Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D968D2E02D0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Dec 2020 00:08:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7368F87347;
	Mon, 21 Dec 2020 23:08:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rBmK+yDOCx3P; Mon, 21 Dec 2020 23:08:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1EF0287329;
	Mon, 21 Dec 2020 23:08:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6C0841BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Dec 2020 23:08:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3E1BC87337
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Dec 2020 23:08:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q2emfZ4Yulv0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Dec 2020 23:08:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 86D2C8732F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Dec 2020 23:08:35 +0000 (UTC)
IronPort-SDR: yyOiT4yi3M51b3FGSSxd1kvbYj8uR2gQu+KLirNM5Ra9YedA1LBCAODU7pe10iQVJwflJnbJTp
 dJ6pNLWK2aPQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9842"; a="260526305"
X-IronPort-AV: E=Sophos;i="5.78,437,1599548400"; d="scan'208";a="260526305"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2020 15:08:35 -0800
IronPort-SDR: d38fh4vIuozr43HdKYJNHPuN6eNPN7Zk/R3wLRBWWfN8Bf9myib6gjtMpVX/GkWDDWzpRGGBDt
 PN0ZhEyC6+6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,437,1599548400"; d="scan'208";a="343487392"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga008.fm.intel.com with ESMTP; 21 Dec 2020 15:08:34 -0800
Date: Mon, 21 Dec 2020 23:58:11 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Andre Guedes <andre.guedes@intel.com>
Message-ID: <20201221225811.GC2943@ranger.igk.intel.com>
References: <20201217202415.77891-1-andre.guedes@intel.com>
 <20201217202415.77891-7-andre.guedes@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201217202415.77891-7-andre.guedes@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH 06/10] igc: Introduce
 igc_update_tx_stats()
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

On Thu, Dec 17, 2020 at 12:24:11PM -0800, Andre Guedes wrote:
> Likewise we do with the RX stats, this patch encapsulates the code that
> updates the driver TX stats in its own local helper.

I think you can squash this onto previous patch.

> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 22 ++++++++++++++++------
>  1 file changed, 16 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index e5cdebbe5637..26c2fc9977cc 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -2263,6 +2263,20 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>  	return total_packets;
>  }
>  
> +static void igc_update_tx_stats(struct igc_q_vector *q_vector,
> +				unsigned int packets, unsigned int bytes)
> +{
> +	struct igc_ring *ring = q_vector->tx.ring;
> +
> +	u64_stats_update_begin(&ring->tx_syncp);
> +	ring->tx_stats.bytes += bytes;
> +	ring->tx_stats.packets += packets;
> +	u64_stats_update_end(&ring->tx_syncp);
> +
> +	q_vector->tx.total_bytes += bytes;
> +	q_vector->tx.total_packets += packets;
> +}
> +
>  /**
>   * igc_clean_tx_irq - Reclaim resources after transmit completes
>   * @q_vector: pointer to q_vector containing needed info
> @@ -2365,12 +2379,8 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
>  
>  	i += tx_ring->count;
>  	tx_ring->next_to_clean = i;
> -	u64_stats_update_begin(&tx_ring->tx_syncp);
> -	tx_ring->tx_stats.bytes += total_bytes;
> -	tx_ring->tx_stats.packets += total_packets;
> -	u64_stats_update_end(&tx_ring->tx_syncp);
> -	q_vector->tx.total_bytes += total_bytes;
> -	q_vector->tx.total_packets += total_packets;
> +
> +	igc_update_tx_stats(q_vector, total_packets, total_bytes);
>  
>  	if (test_bit(IGC_RING_FLAG_TX_DETECT_HANG, &tx_ring->flags)) {
>  		struct igc_hw *hw = &adapter->hw;
> -- 
> 2.29.2
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
