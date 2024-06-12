Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09189905C4C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jun 2024 21:49:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1B1E840413;
	Wed, 12 Jun 2024 19:49:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vg4OWdtsBLBE; Wed, 12 Jun 2024 19:49:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B4B52405EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718221769;
	bh=+GIHZs7jy4KPz+54O8vhriLzcMogom+Y6TD7PkMgfw8=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yFuqG+a1OHMul5Ew6iXuPz9eUub6za1IG3St74hRA1ypPCuTvsNKIZykoHxuylV3N
	 0HG/HJsry3ZrYXqQ6p/Cm3eL81CjvQqiLCEpmxf3iY55cnAyAOKZ3ist9DhWI8ayhe
	 aWP50Tv7OP82fpL2F4rVYWuLzF13y+I4HORrrp00kjEM9l6N/3QHFwBmF0aiO2t25H
	 /1YRL9sCzIkUWEwDIMgjlOoINddLLiBti0yNdIcO2zYDtv84KEThY1TMEHUegG2e4T
	 e7ln0RVJ6x4y77ACNmWDBmXrCyFPSHfGwVtLOVB2ZACFuKNmP2IgrS2Ym92z2HdJtB
	 nCNN7pSY5ZFug==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B4B52405EC;
	Wed, 12 Jun 2024 19:49:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 189681BF369
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 19:49:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 02FF68112E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 19:49:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UDeZezrnRixn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jun 2024 19:49:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6CF5A81112
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6CF5A81112
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6CF5A81112
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 19:49:25 +0000 (UTC)
X-CSE-ConnectionGUID: eukqUVYETUWv6p8TCw24hQ==
X-CSE-MsgGUID: 8pBSaXyBQySXBAIWJv6VDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="14730589"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="14730589"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2024 12:49:22 -0700
X-CSE-ConnectionGUID: wEqhUlUjS8ycowH9dLa9MA==
X-CSE-MsgGUID: i1X0OC1qRymk+HYeu8D1nA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="70694536"
Received: from unknown (HELO vcostago-mobl3) ([10.124.222.220])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2024 12:49:22 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240611-igc_irq-v1-1-49763284cb57@linutronix.de>
References: <20240611-igc_irq-v1-1-49763284cb57@linutronix.de>
Date: Wed, 12 Jun 2024 12:49:21 -0700
Message-ID: <87sexi2b7i.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718221766; x=1749757766;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=vdcTll95HYqQ4A5Lb6dhGfn/fHRvNXW4EaLsLqfCBuw=;
 b=TfbmbowzCh8vplhoGzEJrKooa6r53x02GsP9QZkBm59UO1ebb6ua8b4t
 7+Vb5EAMsV8227EOu/hRrLRD/R7kqF+R5OuzuUYTVtxlSFxmcK/FZiWld
 lMfs19xu/feyXh/HKHCQ4tNEIvPPFgUCSNdoM0OtkZBCPOIl3P4XzSQ7L
 Kj4VuNUfL2j4V57Is1CGfjeoi9vmftfz/IA1waZcw2gulfpql9xY2O1rC
 HD57zu0ynuKAIndQqG0Qobiw8Atf37/aTKb7Kib4zHHStqVurnu6VkQES
 tq4EuTKo2EEh4CIV6iHY/mBj3DKfjp20aJuO9vs0zbhjWZt64zwu9tL5H
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Tfbmbowz
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igc: Get rid of spurious
 interrupts
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, netdev@vger.kernel.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Kurt Kanzenbach <kurt@linutronix.de> writes:

> When running the igc with XDP/ZC in busy polling mode with deferral of hard
> interrupts, interrupts still happen from time to time. That is caused by
> the igc task watchdog which triggers Rx interrupts periodically.
>
> That mechanism has been introduced to overcome skb/memory allocation
> failures [1]. So the Rx clean functions stop processing the Rx ring in case
> of such failure. The task watchdog triggers Rx interrupts periodically in
> the hope that memory became available in the mean time.
>
> The current behavior is undesirable for real time applications, because the
> driver induced Rx interrupts trigger also the softirq processing. However,
> all real time packets should be processed by the application which uses the
> busy polling method.
>
> Therefore, only trigger the Rx interrupts in case of real allocation
> failures. Introduce a new flag for signaling that condition.
>
> [1] - https://git.kernel.org/pub/scm/linux/kernel/git/tglx/history.git/commit/?id=3be507547e6177e5c808544bd6a2efa2c7f1d436
>
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

>  drivers/net/ethernet/intel/igc/igc.h      |  1 +
>  drivers/net/ethernet/intel/igc/igc_main.c | 24 ++++++++++++++++++++----
>  2 files changed, 21 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index 8b14c029eda1..7bfe5030e2c0 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -682,6 +682,7 @@ enum igc_ring_flags_t {
>  	IGC_RING_FLAG_TX_DETECT_HANG,
>  	IGC_RING_FLAG_AF_XDP_ZC,
>  	IGC_RING_FLAG_TX_HWTSTAMP,
> +	IGC_RING_FLAG_RX_ALLOC_FAILED,
>  };
>  
>  #define ring_uses_large_buffer(ring) \
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 305e05294a26..e666739dfac7 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -2192,6 +2192,7 @@ static bool igc_alloc_mapped_page(struct igc_ring *rx_ring,
>  	page = dev_alloc_pages(igc_rx_pg_order(rx_ring));
>  	if (unlikely(!page)) {
>  		rx_ring->rx_stats.alloc_failed++;
> +		set_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags);
>  		return false;
>  	}
>  
> @@ -2208,6 +2209,7 @@ static bool igc_alloc_mapped_page(struct igc_ring *rx_ring,
>  		__free_page(page);
>  
>  		rx_ring->rx_stats.alloc_failed++;
> +		set_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags);
>  		return false;
>  	}
>  
> @@ -2659,6 +2661,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>  		if (!skb) {
>  			rx_ring->rx_stats.alloc_failed++;
>  			rx_buffer->pagecnt_bias++;
> +			set_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags);
>  			break;
>  		}
>  
> @@ -2739,6 +2742,7 @@ static void igc_dispatch_skb_zc(struct igc_q_vector *q_vector,
>  	skb = igc_construct_skb_zc(ring, xdp);
>  	if (!skb) {
>  		ring->rx_stats.alloc_failed++;
> +		set_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &ring->flags);
>  		return;
>  	}
>  
> @@ -5811,11 +5815,23 @@ static void igc_watchdog_task(struct work_struct *work)
>  	if (adapter->flags & IGC_FLAG_HAS_MSIX) {
>  		u32 eics = 0;
>  
> -		for (i = 0; i < adapter->num_q_vectors; i++)
> -			eics |= adapter->q_vector[i]->eims_value;
> -		wr32(IGC_EICS, eics);
> +		for (i = 0; i < adapter->num_q_vectors; i++) {
> +			struct igc_ring *rx_ring = adapter->rx_ring[i];
> +
> +			if (test_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags)) {

Minor and optional: I guess you can replace test_bit() -> clear_bit()
with __test_and_clear_bit() here and below.

In any case:

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

> +				eics |= adapter->q_vector[i]->eims_value;
> +				clear_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags);
> +			}
> +		}
> +		if (eics)
> +			wr32(IGC_EICS, eics);
>  	} else {
> -		wr32(IGC_ICS, IGC_ICS_RXDMT0);
> +		struct igc_ring *rx_ring = adapter->rx_ring[0];
> +
> +		if (test_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags)) {
> +			clear_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags);
> +			wr32(IGC_ICS, IGC_ICS_RXDMT0);
> +		}
>  	}
>  
>  	igc_ptp_tx_hang(adapter);
>
> ---
> base-commit: bb678f01804ccaa861b012b2b9426d69673d8a84
> change-id: 20240611-igc_irq-ccc1c8bc6890
>
> Best regards,
> -- 
> Kurt Kanzenbach <kurt@linutronix.de>
>

-- 
Vinicius
