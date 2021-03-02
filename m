Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D693296DB
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Mar 2021 09:21:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 508E083EF7;
	Tue,  2 Mar 2021 08:21:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fBN-WWTZlyfg; Tue,  2 Mar 2021 08:21:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2801D83D28;
	Tue,  2 Mar 2021 08:21:07 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5C4BE1BF281
 for <intel-wired-lan@osuosl.org>; Tue,  2 Mar 2021 08:21:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4A3226F686
 for <intel-wired-lan@osuosl.org>; Tue,  2 Mar 2021 08:21:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o-3l-BVhvqSj for <intel-wired-lan@osuosl.org>;
 Tue,  2 Mar 2021 08:21:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7EBD46F65C
 for <intel-wired-lan@osuosl.org>; Tue,  2 Mar 2021 08:21:01 +0000 (UTC)
IronPort-SDR: kOLf6kGdCYpEW+Alvn+xNXmsmJbMrxRDOj+bwm5/p4hXp73J23yY0w6hf5ttgaqaUHt8aL+GOI
 mXkqJCqwVxmA==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="186850364"
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="186850364"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 00:21:00 -0800
IronPort-SDR: GyonoMcSt1klRCM52jwumkejz0Oq8OMhLb4ZY1XA/sseqvGwiGvoCMj9F3DVvUHNu6c2oNaMDg
 EgrUCUpHmdpg==
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="444651099"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 00:20:58 -0800
To: Vedang Patel <vedang.patel@intel.com>, intel-wired-lan@osuosl.org
References: <20210210215848.24514-1-vedang.patel@intel.com>
 <20210210215848.24514-4-vedang.patel@intel.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <7dba7277-1e6b-1093-474b-8002c0e1b1b6@linux.intel.com>
Date: Tue, 2 Mar 2021 10:20:57 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210210215848.24514-4-vedang.patel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 3/9] igc: Introduce
 igc_rx_buffer_flip() helper
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
Cc: Andre Guedes <andre.guedes@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/02/2021 23:58, Vedang Patel wrote:
> From: Andre Guedes <andre.guedes@intel.com>
> 
> The igc driver implements the same page recycling scheme from other
> Intel drivers which reuses the page by flipping the buffer. The code
> to handle buffer flips is duplicated in many locations so introduce
> the igc_rx_buffer_flip() helper and use it where applicable.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Vedang Patel <vedang.patel@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 43 +++++++++++------------
>   1 file changed, 21 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 261672797346..1157a24f6d26 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -1500,6 +1500,16 @@ static struct igc_rx_buffer *igc_get_rx_buffer(struct igc_ring *rx_ring,
>   	return rx_buffer;
>   }
>   
> +static void igc_rx_buffer_flip(struct igc_rx_buffer *buffer,
> +			       unsigned int truesize)
> +{
> +#if (PAGE_SIZE < 8192)
> +	buffer->page_offset ^= truesize;
> +#else
> +	buffer->page_offset += truesize;
> +#endif
> +}
> +
>   /**
>    * igc_add_rx_frag - Add contents of Rx buffer to sk_buff
>    * @rx_ring: rx descriptor ring to transact packets on
> @@ -1514,20 +1524,19 @@ static void igc_add_rx_frag(struct igc_ring *rx_ring,
>   			    struct sk_buff *skb,
>   			    unsigned int size)
>   {
> -#if (PAGE_SIZE < 8192)
> -	unsigned int truesize = igc_rx_pg_size(rx_ring) / 2;
> +	unsigned int truesize;
>   
> -	skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, rx_buffer->page,
> -			rx_buffer->page_offset, size, truesize);
> -	rx_buffer->page_offset ^= truesize;
> +#if (PAGE_SIZE < 8192)
> +	truesize = igc_rx_pg_size(rx_ring) / 2;
>   #else
> -	unsigned int truesize = ring_uses_build_skb(rx_ring) ?
> -				SKB_DATA_ALIGN(IGC_SKB_PAD + size) :
> -				SKB_DATA_ALIGN(size);
> +	truesize = ring_uses_build_skb(rx_ring) ?
> +		   SKB_DATA_ALIGN(IGC_SKB_PAD + size) :
> +		   SKB_DATA_ALIGN(size);
> +#endif
>   	skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, rx_buffer->page,
>   			rx_buffer->page_offset, size, truesize);
> -	rx_buffer->page_offset += truesize;
> -#endif
> +
> +	igc_rx_buffer_flip(rx_buffer, truesize);
>   }
>   
>   static struct sk_buff *igc_build_skb(struct igc_ring *rx_ring,
> @@ -1556,13 +1565,7 @@ static struct sk_buff *igc_build_skb(struct igc_ring *rx_ring,
>   	skb_reserve(skb, IGC_SKB_PAD);
>   	__skb_put(skb, size);
>   
> -	/* update buffer offset */
> -#if (PAGE_SIZE < 8192)
> -	rx_buffer->page_offset ^= truesize;
> -#else
> -	rx_buffer->page_offset += truesize;
> -#endif
> -
> +	igc_rx_buffer_flip(rx_buffer, truesize);
>   	return skb;
>   }
>   
> @@ -1608,11 +1611,7 @@ static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
>   		skb_add_rx_frag(skb, 0, rx_buffer->page,
>   				(va + headlen) - page_address(rx_buffer->page),
>   				size, truesize);
> -#if (PAGE_SIZE < 8192)
> -		rx_buffer->page_offset ^= truesize;
> -#else
> -		rx_buffer->page_offset += truesize;
> -#endif
> +		igc_rx_buffer_flip(rx_buffer, truesize);
>   	} else {
>   		rx_buffer->pagecnt_bias++;
>   	}
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
