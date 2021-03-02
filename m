Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D963296DA
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Mar 2021 09:20:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6394343045;
	Tue,  2 Mar 2021 08:20:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Whi329R9KnUM; Tue,  2 Mar 2021 08:20:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4BFCF4302E;
	Tue,  2 Mar 2021 08:20:27 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 40DD11BF281
 for <intel-wired-lan@osuosl.org>; Tue,  2 Mar 2021 08:20:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2FBBB4302E
 for <intel-wired-lan@osuosl.org>; Tue,  2 Mar 2021 08:20:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fFlEGlXoJptY for <intel-wired-lan@osuosl.org>;
 Tue,  2 Mar 2021 08:20:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 78BA143015
 for <intel-wired-lan@osuosl.org>; Tue,  2 Mar 2021 08:20:21 +0000 (UTC)
IronPort-SDR: VJZ3wUF9owQPnHiaOfkv7j6oOE05JrZaAxXU4sV1dmmjq+OWcoqWX0MUxUGPb4y/ZyzF9kAXHB
 9N2SNiKOw27w==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="174365290"
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="174365290"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 00:20:20 -0800
IronPort-SDR: G2+IBXR83E4tY7CGi7RpAjFZA4qNLnRFmNzFksJrmIe8xpohgbefVYtq4PNSnyQuiYF1atyHb0
 6OZ7X4VbJoqA==
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="444650810"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 00:20:19 -0800
To: Vedang Patel <vedang.patel@intel.com>, intel-wired-lan@osuosl.org
References: <20210210215848.24514-1-vedang.patel@intel.com>
 <20210210215848.24514-2-vedang.patel@intel.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <63cb3da0-3074-7b39-da49-ea3517128aa7@linux.intel.com>
Date: Tue, 2 Mar 2021 10:20:17 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210210215848.24514-2-vedang.patel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 1/9] igc: Fix
 igc_ptp_rx_pktstamp()
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
> The comment describing the timestamps layout in the packet buffer is
> wrong and the code is actually retrieving the timestamp in Timer 1
> reference instead of Timer 0. This hasn't been a big issue so far
> because hardware is configured to report both timestamps using Timer 0
> (see IGC_SRRCTL register configuration in igc_ptp_enable_rx_timestamp()
> helper). This patch fixes the comment and the code so we retrieve the
> timestamp in Timer 0 reference as expected.
> 
> This patch also takes the opportunity to get rid of the hw.mac.type check
> since it is not required.
> 
> Fixes: 81b055205e8ba ("igc: Add support for RX timestamping")
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Vedang Patel <vedang.patel@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h     |  2 +-
>   drivers/net/ethernet/intel/igc/igc_ptp.c | 72 +++++++++++++-----------
>   2 files changed, 41 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index 5d2809dfd06a..fbd8c414c3c8 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -547,7 +547,7 @@ void igc_ptp_init(struct igc_adapter *adapter);
>   void igc_ptp_reset(struct igc_adapter *adapter);
>   void igc_ptp_suspend(struct igc_adapter *adapter);
>   void igc_ptp_stop(struct igc_adapter *adapter);
> -void igc_ptp_rx_pktstamp(struct igc_q_vector *q_vector, void *va,
> +void igc_ptp_rx_pktstamp(struct igc_q_vector *q_vector, u32 *va,
>   			 struct sk_buff *skb);
>   int igc_ptp_set_ts_config(struct net_device *netdev, struct ifreq *ifr);
>   int igc_ptp_get_ts_config(struct net_device *netdev, struct ifreq *ifr);
> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
> index ac0b9c85da7c..b6a640bfc991 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> @@ -152,46 +152,54 @@ static void igc_ptp_systim_to_hwtstamp(struct igc_adapter *adapter,
>   }
>   
>   /**
> - * igc_ptp_rx_pktstamp - retrieve Rx per packet timestamp
> + * igc_ptp_rx_pktstamp - Retrieve timestamp from Rx packet buffer
>    * @q_vector: Pointer to interrupt specific structure
>    * @va: Pointer to address containing Rx buffer
>    * @skb: Buffer containing timestamp and packet
>    *
> - * This function is meant to retrieve the first timestamp from the
> - * first buffer of an incoming frame. The value is stored in little
> - * endian format starting on byte 0. There's a second timestamp
> - * starting on byte 8.
> - **/
> -void igc_ptp_rx_pktstamp(struct igc_q_vector *q_vector, void *va,
> + * This function retrieves the timestamp saved in the beginning of packet
> + * buffer. While two timestamps are available, one in timer0 reference and the
> + * other in timer1 reference, this function considers only the timestamp in
> + * timer0 reference.
> + */
> +void igc_ptp_rx_pktstamp(struct igc_q_vector *q_vector, u32 *va,
>   			 struct sk_buff *skb)
>   {
>   	struct igc_adapter *adapter = q_vector->adapter;
> -	__le64 *regval = (__le64 *)va;
> -	int adjust = 0;
> -
> -	/* The timestamp is recorded in little endian format.
> -	 * DWORD: | 0          | 1           | 2          | 3
> -	 * Field: | Timer0 Low | Timer0 High | Timer1 Low | Timer1 High
> +	u64 regval;
> +	int adjust;
> +
> +	/* Timestamps are saved in little endian at the beginning of the packet
> +	 * buffer following the layout:
> +	 *
> +	 * DWORD: | 0              | 1              | 2              | 3              |
> +	 * Field: | Timer1 SYSTIML | Timer1 SYSTIMH | Timer0 SYSTIML | Timer0 SYSTIMH |
> +	 *
> +	 * SYSTIML holds the nanoseconds part while SYSTIMH holds the seconds
> +	 * part of the timestamp.
>   	 */
> -	igc_ptp_systim_to_hwtstamp(adapter, skb_hwtstamps(skb),
> -				   le64_to_cpu(regval[0]));
> -
> -	/* adjust timestamp for the RX latency based on link speed */
> -	if (adapter->hw.mac.type == igc_i225) {
> -		switch (adapter->link_speed) {
> -		case SPEED_10:
> -			adjust = IGC_I225_RX_LATENCY_10;
> -			break;
> -		case SPEED_100:
> -			adjust = IGC_I225_RX_LATENCY_100;
> -			break;
> -		case SPEED_1000:
> -			adjust = IGC_I225_RX_LATENCY_1000;
> -			break;
> -		case SPEED_2500:
> -			adjust = IGC_I225_RX_LATENCY_2500;
> -			break;
> -		}
> +	regval = le32_to_cpu(va[2]);
> +	regval |= (u64)le32_to_cpu(va[3]) << 32;
> +	igc_ptp_systim_to_hwtstamp(adapter, skb_hwtstamps(skb), regval);
> +
> +	/* Adjust timestamp for the RX latency based on link speed */
> +	switch (adapter->link_speed) {
> +	case SPEED_10:
> +		adjust = IGC_I225_RX_LATENCY_10;
> +		break;
> +	case SPEED_100:
> +		adjust = IGC_I225_RX_LATENCY_100;
> +		break;
> +	case SPEED_1000:
> +		adjust = IGC_I225_RX_LATENCY_1000;
> +		break;
> +	case SPEED_2500:
> +		adjust = IGC_I225_RX_LATENCY_2500;
> +		break;
> +	default:
> +		adjust = 0;
> +		netdev_warn_once(adapter->netdev, "Imprecise timestamp\n");
> +		break;
>   	}
>   	skb_hwtstamps(skb)->hwtstamp =
>   		ktime_sub_ns(skb_hwtstamps(skb)->hwtstamp, adjust);
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
