Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B28E1294E26
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Oct 2020 15:59:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 26F0E873D6;
	Wed, 21 Oct 2020 13:59:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FuYBk8PArLya; Wed, 21 Oct 2020 13:59:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 387A8873DB;
	Wed, 21 Oct 2020 13:59:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3D0C71BF20F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Oct 2020 13:59:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 38A46858FC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Oct 2020 13:59:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2ofxSrR5Gnk2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Oct 2020 13:59:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 48E4A858F3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Oct 2020 13:59:29 +0000 (UTC)
IronPort-SDR: Od+YbSpu0TT4hLq6NAPFvGXZu4bKrqfzPpmUwNf86fZOKBGu/L/6FxQQUhQCO4D1Fk4Vt+oUgO
 xj1yN9j7t4fQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="185026293"
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="185026293"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 06:59:28 -0700
IronPort-SDR: +QO9hBqFDqwRUCW/ABgtX3Lvdp4TfVDfs6RV3Fv1yf7IRRyCdj0D/1lcQ6XdvNDKbSoTvh9aaR
 YL3KTwvEMU7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="348326959"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga004.fm.intel.com with ESMTP; 21 Oct 2020 06:59:27 -0700
Date: Wed, 21 Oct 2020 15:50:05 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Andre Guedes <andre.guedes@intel.com>
Message-ID: <20201021135005.GA58344@ranger.igk.intel.com>
References: <20201009025349.4037-1-andre.guedes@intel.com>
 <20201009025349.4037-2-andre.guedes@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201009025349.4037-2-andre.guedes@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH 1/9] igc: Fix igc_ptp_rx_pktstamp()
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

On Thu, Oct 08, 2020 at 07:53:41PM -0700, Andre Guedes wrote:
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

How is this related to adding XDP support?

> 
> Fixes: 81b055205e8ba ("igc: Add support for RX timestamping")
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h     |  2 +-
>  drivers/net/ethernet/intel/igc/igc_ptp.c | 72 +++++++++++++-----------
>  2 files changed, 41 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index 35baae900c1f..b9b924794b22 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -545,7 +545,7 @@ void igc_ptp_init(struct igc_adapter *adapter);
>  void igc_ptp_reset(struct igc_adapter *adapter);
>  void igc_ptp_suspend(struct igc_adapter *adapter);
>  void igc_ptp_stop(struct igc_adapter *adapter);
> -void igc_ptp_rx_pktstamp(struct igc_q_vector *q_vector, void *va,
> +void igc_ptp_rx_pktstamp(struct igc_q_vector *q_vector, u32 *va,
>  			 struct sk_buff *skb);
>  int igc_ptp_set_ts_config(struct net_device *netdev, struct ifreq *ifr);
>  int igc_ptp_get_ts_config(struct net_device *netdev, struct ifreq *ifr);
> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
> index ac0b9c85da7c..916721e2cd49 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> @@ -152,46 +152,54 @@ static void igc_ptp_systim_to_hwtstamp(struct igc_adapter *adapter,
>  }
>  
>  /**
> - * igc_ptp_rx_pktstamp - retrieve Rx per packet timestamp
> + * igc_ptp_rx_pktstamp - Retrieve timestamp from rx packet buffer
>   * @q_vector: Pointer to interrupt specific structure
>   * @va: Pointer to address containing Rx buffer
>   * @skb: Buffer containing timestamp and packet
>   *
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
>  			 struct sk_buff *skb)
>  {
>  	struct igc_adapter *adapter = q_vector->adapter;
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
> +	 * | 0              | 1              | 2              | 3              |
> +	 * | Timer1 SYSTIML | Timer1 SYSTIMH | Timer0 SYSTIML | Timer0 SYSTIMH |
> +	 *
> +	 * SYSTIML holds the nanoseconds part while SYSTIMH holds the seconds
> +	 * part of the timestamp.
>  	 */
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
>  	}
>  	skb_hwtstamps(skb)->hwtstamp =
>  		ktime_sub_ns(skb_hwtstamps(skb)->hwtstamp, adjust);
> -- 
> 2.26.2
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
