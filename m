Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 417DE3296DE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Mar 2021 09:21:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9FD2E43038;
	Tue,  2 Mar 2021 08:21:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rIrfr4qB__dE; Tue,  2 Mar 2021 08:21:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 805844303A;
	Tue,  2 Mar 2021 08:21:44 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 663201BF281
 for <intel-wired-lan@osuosl.org>; Tue,  2 Mar 2021 08:21:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5389B4EBB5
 for <intel-wired-lan@osuosl.org>; Tue,  2 Mar 2021 08:21:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nTBTNul_2Bi5 for <intel-wired-lan@osuosl.org>;
 Tue,  2 Mar 2021 08:21:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2F8DE4EB9C
 for <intel-wired-lan@osuosl.org>; Tue,  2 Mar 2021 08:21:38 +0000 (UTC)
IronPort-SDR: Evs00lx9XPAqrdDNaNEGA9YG/Fq5JrZehzJOEa4LAifycR58X2RqXxvwM9FJ//G9mHoAqhVtp2
 QeyKOawqihDA==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="248141250"
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="248141250"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 00:21:37 -0800
IronPort-SDR: H7T6cmWNweumIVy6BFCjpRHlrWB4gs9qro9egYLwtut82ecOkgQ5SKggCWMNfjmN48bfc8hN50
 aNywQ+kdtVTg==
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="444651303"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 00:21:35 -0800
To: Vedang Patel <vedang.patel@intel.com>, intel-wired-lan@osuosl.org
References: <20210210215848.24514-1-vedang.patel@intel.com>
 <20210210215848.24514-6-vedang.patel@intel.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <17441c4a-ebc5-b8c5-a924-e9e5bae94a36@linux.intel.com>
Date: Tue, 2 Mar 2021 10:21:34 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210210215848.24514-6-vedang.patel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 5/9] igc: Refactor Rx
 timestamp handling
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
> Refactor the Rx timestamp handling in preparation to land
> XDP support.
> 
> Rx timestamps are put in the Rx buffer by hardware, before the packet
> data. When creating the xdp buffer, we will need to check the Rx
> descriptor to determine if the buffer contains timestamp information
> and consider the offset when setting xdp.data.
> 
> The Rx descriptor check is already done in igc_construct_skb(). To
> avoid code duplication, this patch moves the timestamp handling to
> igc_clean_rx_irq() so both skb and xdp paths can reuse it.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Vedang Patel <vedang.patel@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h      |  3 +--
>   drivers/net/ethernet/intel/igc/igc_main.c | 30 +++++++++++++++--------
>   drivers/net/ethernet/intel/igc/igc_ptp.c  | 25 ++++++++++---------
>   3 files changed, 34 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index fbd8c414c3c8..72544b5e747e 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -547,8 +547,7 @@ void igc_ptp_init(struct igc_adapter *adapter);
>   void igc_ptp_reset(struct igc_adapter *adapter);
>   void igc_ptp_suspend(struct igc_adapter *adapter);
>   void igc_ptp_stop(struct igc_adapter *adapter);
> -void igc_ptp_rx_pktstamp(struct igc_q_vector *q_vector, u32 *va,
> -			 struct sk_buff *skb);
> +ktime_t igc_ptp_rx_pktstamp(struct igc_adapter *adapter, u32 *buf);
>   int igc_ptp_set_ts_config(struct net_device *netdev, struct ifreq *ifr);
>   int igc_ptp_get_ts_config(struct net_device *netdev, struct ifreq *ifr);
>   void igc_ptp_tx_hang(struct igc_adapter *adapter);
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index d1fc5baadf9b..5f77f1f43a7c 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -1582,10 +1582,11 @@ static struct sk_buff *igc_build_skb(struct igc_ring *rx_ring,
>   
>   static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
>   					 struct igc_rx_buffer *rx_buffer,
> -					 union igc_adv_rx_desc *rx_desc,
> -					 unsigned int size)
> +					 unsigned int size, int pkt_offset,
> +					 ktime_t timestamp)
>   {
> -	void *va = page_address(rx_buffer->page) + rx_buffer->page_offset;
> +	void *va = page_address(rx_buffer->page) + rx_buffer->page_offset +
> +		   pkt_offset;
>   	unsigned int truesize = igc_get_rx_frame_truesize(rx_ring, size);
>   	unsigned int headlen;
>   	struct sk_buff *skb;
> @@ -1598,11 +1599,8 @@ static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
>   	if (unlikely(!skb))
>   		return NULL;
>   
> -	if (unlikely(igc_test_staterr(rx_desc, IGC_RXDADV_STAT_TSIP))) {
> -		igc_ptp_rx_pktstamp(rx_ring->q_vector, va, skb);
> -		va += IGC_TS_HDR_LEN;
> -		size -= IGC_TS_HDR_LEN;
> -	}
> +	if (timestamp)
> +		skb_hwtstamps(skb)->hwtstamp = timestamp;
>   
>   	/* Determine available headroom for copy */
>   	headlen = size;
> @@ -1896,6 +1894,8 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>   	while (likely(total_packets < budget)) {
>   		union igc_adv_rx_desc *rx_desc;
>   		struct igc_rx_buffer *rx_buffer;
> +		ktime_t timestamp = 0;
> +		int pkt_offset = 0;
>   		unsigned int size;
>   
>   		/* return some buffers to hardware, one at a time is too slow */
> @@ -1917,14 +1917,24 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>   
>   		rx_buffer = igc_get_rx_buffer(rx_ring, size);
>   
> +		if (igc_test_staterr(rx_desc, IGC_RXDADV_STAT_TSIP)) {
> +			void *pktbuf = page_address(rx_buffer->page) +
> +				       rx_buffer->page_offset;
> +
> +			timestamp = igc_ptp_rx_pktstamp(q_vector->adapter,
> +							pktbuf);
> +			pkt_offset = IGC_TS_HDR_LEN;
> +			size -= IGC_TS_HDR_LEN;
> +		}
> +
>   		/* retrieve a buffer from the ring */
>   		if (skb)
>   			igc_add_rx_frag(rx_ring, rx_buffer, skb, size);
>   		else if (ring_uses_build_skb(rx_ring))
>   			skb = igc_build_skb(rx_ring, rx_buffer, rx_desc, size);
>   		else
> -			skb = igc_construct_skb(rx_ring, rx_buffer,
> -						rx_desc, size);
> +			skb = igc_construct_skb(rx_ring, rx_buffer, size,
> +						pkt_offset, timestamp);
>   
>   		/* exit if we failed to retrieve a buffer */
>   		if (!skb) {
> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
> index b6a640bfc991..7301a7b3fadc 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> @@ -153,20 +153,20 @@ static void igc_ptp_systim_to_hwtstamp(struct igc_adapter *adapter,
>   
>   /**
>    * igc_ptp_rx_pktstamp - Retrieve timestamp from Rx packet buffer
> - * @q_vector: Pointer to interrupt specific structure
> - * @va: Pointer to address containing Rx buffer
> - * @skb: Buffer containing timestamp and packet
> + * @adapter: Pointer to adapter the packet buffer belongs to
> + * @buf: Pointer to packet buffer
>    *
>    * This function retrieves the timestamp saved in the beginning of packet
>    * buffer. While two timestamps are available, one in timer0 reference and the
>    * other in timer1 reference, this function considers only the timestamp in
>    * timer0 reference.
> + *
> + * Returns timestamp value.
>    */
> -void igc_ptp_rx_pktstamp(struct igc_q_vector *q_vector, u32 *va,
> -			 struct sk_buff *skb)
> +ktime_t igc_ptp_rx_pktstamp(struct igc_adapter *adapter, u32 *buf)
>   {
> -	struct igc_adapter *adapter = q_vector->adapter;
> -	u64 regval;
> +	ktime_t timestamp;
> +	u32 secs, nsecs;
>   	int adjust;
>   
>   	/* Timestamps are saved in little endian at the beginning of the packet
> @@ -178,9 +178,10 @@ void igc_ptp_rx_pktstamp(struct igc_q_vector *q_vector, u32 *va,
>   	 * SYSTIML holds the nanoseconds part while SYSTIMH holds the seconds
>   	 * part of the timestamp.
>   	 */
> -	regval = le32_to_cpu(va[2]);
> -	regval |= (u64)le32_to_cpu(va[3]) << 32;
> -	igc_ptp_systim_to_hwtstamp(adapter, skb_hwtstamps(skb), regval);
> +	nsecs = le32_to_cpu(buf[2]);
> +	secs = le32_to_cpu(buf[3]);
> +
> +	timestamp = ktime_set(secs, nsecs);
>   
>   	/* Adjust timestamp for the RX latency based on link speed */
>   	switch (adapter->link_speed) {
> @@ -201,8 +202,8 @@ void igc_ptp_rx_pktstamp(struct igc_q_vector *q_vector, u32 *va,
>   		netdev_warn_once(adapter->netdev, "Imprecise timestamp\n");
>   		break;
>   	}
> -	skb_hwtstamps(skb)->hwtstamp =
> -		ktime_sub_ns(skb_hwtstamps(skb)->hwtstamp, adjust);
> +
> +	return ktime_sub_ns(timestamp, adjust);
>   }
>   
>   static void igc_ptp_disable_rx_timestamp(struct igc_adapter *adapter)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
