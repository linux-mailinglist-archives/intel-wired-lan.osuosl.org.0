Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9536A505D9F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Apr 2022 19:44:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F71261250;
	Mon, 18 Apr 2022 17:44:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XRTn4wkXrKK5; Mon, 18 Apr 2022 17:44:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6D2A96111D;
	Mon, 18 Apr 2022 17:44:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2AE471BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Apr 2022 17:44:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 17D2282702
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Apr 2022 17:44:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KB9fiHLMxBMT for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Apr 2022 17:44:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5FA1C81A64
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Apr 2022 17:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650303878; x=1681839878;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=D/Flz0ZSVs+oASuVLiQaVr825MaM3PoEU2QzN/vdta4=;
 b=lZXt3jNqxM2G4x6/V+Wmwmkge4k0+rUgCroz8FH9DQgZudwHZEDxQ66H
 xkIvfJD9L5jWX+YagfHduZrfo/39bLfGyAZE5XQ7v/3WIGT2VI4ER58fi
 C8XckD6QqSsKmiLMdoGdNBjqlQOiRYAHbzxgoQPvOBvm7sfrMx7xfXUII
 eK75AFkbyKMBrJdG2rwX2OWtVsZ5SlWyCSsn34e2pVslllKEeaKPLfTWl
 olxPzg691Nxx1rhx/bHEyYfbSJrsc+Sxl57nwVzHXlDp2tfCgT/pyWgG2
 y6ktl3aB5hhC78pCWiUuoRSdfFeqTTthSaEXAcgY4pf2VxHDs/mx/6Wpj w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10321"; a="326475339"
X-IronPort-AV: E=Sophos;i="5.90,270,1643702400"; d="scan'208";a="326475339"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 10:44:37 -0700
X-IronPort-AV: E=Sophos;i="5.90,270,1643702400"; d="scan'208";a="804372037"
Received: from alanadu-mobl2.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.251.2.172])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 10:44:36 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Jeff Evanson <jeff.evanson@gmail.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
In-Reply-To: <20220415210546.11294-1-jeff.evanson@qsc.com>
References: <20220415210546.11294-1-jeff.evanson@qsc.com>
Date: Mon, 18 Apr 2022 13:44:35 -0400
Message-ID: <87v8v6477g.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 2/2] Trigger proper interrupts in
 igc_xsk_wakeup
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
Cc: jeff.evanson@qsc.com, jeff.evanson@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Jeff Evanson <jeff.evanson@gmail.com> writes:

> in igc_xsk_wakeup, trigger the proper interrupt based on whether flags
> contains XDP_WAKEUP_RX and/or XDP_WAKEUP_TX
>
> Signed-off-by: Jeff Evanson <jeff.evanson@qsc.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 36 +++++++++++++++++------
>  1 file changed, 27 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index a36a18c84aeb..d706de95dc06 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -6073,7 +6073,7 @@ static void igc_trigger_rxtxq_interrupt(struct igc_adapter *adapter,
>  int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)
>  {
>  	struct igc_adapter *adapter = netdev_priv(dev);
> -	struct igc_q_vector *q_vector;
> +	struct igc_q_vector *txq_vector = 0, *rxq_vector = 0;
>  	struct igc_ring *ring;
>  
>  	if (test_bit(__IGC_DOWN, &adapter->state))
> @@ -6082,17 +6082,35 @@ int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)
>  	if (!igc_xdp_is_enabled(adapter))
>  		return -ENXIO;
>  
> -	if (queue_id >= adapter->num_rx_queues)
> -		return -EINVAL;
> +	if (flags & XDP_WAKEUP_RX) {
> +		if (queue_id >= adapter->num_rx_queues)
> +			return -EINVAL;
>  
> -	ring = adapter->rx_ring[queue_id];
> +		ring = adapter->rx_ring[queue_id];
> +		if (!ring->xsk_pool)
> +			return -ENXIO;
>  
> -	if (!ring->xsk_pool)
> -		return -ENXIO;
> +		rxq_vector = ring->q_vector;
> +	}
> +
> +	if (flags & XDP_WAKEUP_TX) {
> +		if (queue_id >= adapter->num_tx_queues)
> +			return -EINVAL;
> +
> +		ring = adapter->tx_ring[queue_id];
> +		if (!ring->xsk_pool)
> +			return -ENXIO;
> +
> +		txq_vector = ring->q_vector;
> +	}
> +
> +	if (rxq_vector &&
> +	    !napi_if_scheduled_mark_missed(&rxq_vector->napi))
> +		igc_trigger_rxtxq_interrupt(adapter, rxq_vector);
>  
> -	q_vector = adapter->q_vector[queue_id];
> -	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
> -		igc_trigger_rxtxq_interrupt(adapter, q_vector);
> +	if (txq_vector && txq_vector != rxq_vector &&
> +	    !napi_if_scheduled_mark_missed(&txq_vector->napi))
> +		igc_trigger_rxtxq_interrupt(adapter, txq_vector);

Two things:
 - My imagination was not able to produce a scenario where this commit
 would solve any problems. Can you explain better the case where the
 current code would cause the wrong interrupt to be generated (or miss
 generating an interrupt)? (this should be in the commit message)
 - I think that with this patch applied, there would cases (both TX and
 RX flags set) that we cause two writes into the EICS register. That
 could cause unnecessary wakeups.

>  
>  	return 0;
>  }
> -- 
> 2.17.1
>

Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
