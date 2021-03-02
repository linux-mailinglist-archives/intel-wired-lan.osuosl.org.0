Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 519783296DD
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Mar 2021 09:21:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E0061605C2;
	Tue,  2 Mar 2021 08:21:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wTVCojnSuY7m; Tue,  2 Mar 2021 08:21:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C365B605CB;
	Tue,  2 Mar 2021 08:21:23 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A86EC1BF281
 for <intel-wired-lan@osuosl.org>; Tue,  2 Mar 2021 08:21:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 96DF74EDD5
 for <intel-wired-lan@osuosl.org>; Tue,  2 Mar 2021 08:21:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z57fDctznSra for <intel-wired-lan@osuosl.org>;
 Tue,  2 Mar 2021 08:21:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B26404EDD1
 for <intel-wired-lan@osuosl.org>; Tue,  2 Mar 2021 08:21:18 +0000 (UTC)
IronPort-SDR: X2vm2PGxcpczknB8VZHjrpmI+vk2/jDAyFQgmBOKfN4ighuglL4ISNxoAkBNyXbVDU2rOVQabv
 v7+xqGQvKJCA==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="174365768"
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="174365768"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 00:21:18 -0800
IronPort-SDR: XqAGDkXni8ND5VKmOzLetJGkstHqdlIYJrRY6Rvylg5a9s0YtNUW68MwpdviHiWXrNji23FwjI
 wkO/W8X3enVw==
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="444651220"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 00:21:15 -0800
To: Vedang Patel <vedang.patel@intel.com>, intel-wired-lan@osuosl.org
References: <20210210215848.24514-1-vedang.patel@intel.com>
 <20210210215848.24514-5-vedang.patel@intel.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <4c45e43a-0407-00d3-3aae-f68b71963348@linux.intel.com>
Date: Tue, 2 Mar 2021 10:21:14 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210210215848.24514-5-vedang.patel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 4/9] igc: Introduce
 igc_get_rx_frame_truesize() helper
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
> The RX frame truesize calculation is scattered throughout the RX code.
> This patch creates the helper function igc_get_rx_frame_truesize() and
> uses it where applicable.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Vedang Patel <vedang.patel@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 29 ++++++++++++++---------
>   1 file changed, 18 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 1157a24f6d26..d1fc5baadf9b 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -1510,6 +1510,22 @@ static void igc_rx_buffer_flip(struct igc_rx_buffer *buffer,
>   #endif
>   }
>   
> +static unsigned int igc_get_rx_frame_truesize(struct igc_ring *ring,
> +					      unsigned int size)
> +{
> +	unsigned int truesize;
> +
> +#if (PAGE_SIZE < 8192)
> +	truesize = igc_rx_pg_size(ring) / 2;
> +#else
> +	truesize = ring_uses_build_skb(ring) ?
> +		   SKB_DATA_ALIGN(sizeof(struct skb_shared_info)) +
> +		   SKB_DATA_ALIGN(IGC_SKB_PAD + size) :
> +		   SKB_DATA_ALIGN(size);
> +#endif
> +	return truesize;
> +}
> +
>   /**
>    * igc_add_rx_frag - Add contents of Rx buffer to sk_buff
>    * @rx_ring: rx descriptor ring to transact packets on
> @@ -1545,12 +1561,7 @@ static struct sk_buff *igc_build_skb(struct igc_ring *rx_ring,
>   				     unsigned int size)
>   {
>   	void *va = page_address(rx_buffer->page) + rx_buffer->page_offset;
> -#if (PAGE_SIZE < 8192)
> -	unsigned int truesize = igc_rx_pg_size(rx_ring) / 2;
> -#else
> -	unsigned int truesize = SKB_DATA_ALIGN(sizeof(struct skb_shared_info)) +
> -				SKB_DATA_ALIGN(IGC_SKB_PAD + size);
> -#endif
> +	unsigned int truesize = igc_get_rx_frame_truesize(rx_ring, size);
>   	struct sk_buff *skb;
>   
>   	/* prefetch first cache line of first page */
> @@ -1575,11 +1586,7 @@ static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
>   					 unsigned int size)
>   {
>   	void *va = page_address(rx_buffer->page) + rx_buffer->page_offset;
> -#if (PAGE_SIZE < 8192)
> -	unsigned int truesize = igc_rx_pg_size(rx_ring) / 2;
> -#else
> -	unsigned int truesize = SKB_DATA_ALIGN(size);
> -#endif
> +	unsigned int truesize = igc_get_rx_frame_truesize(rx_ring, size);
>   	unsigned int headlen;
>   	struct sk_buff *skb;
>   
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
