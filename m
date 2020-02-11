Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30AB4159556
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Feb 2020 17:48:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D5AFE879FC;
	Tue, 11 Feb 2020 16:48:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ijKTEBL6vIUj; Tue, 11 Feb 2020 16:48:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D89C887A11;
	Tue, 11 Feb 2020 16:48:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DFAA71BF370
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2020 16:48:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DA207204F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2020 16:48:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UAXzDfbIflqf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Feb 2020 16:48:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id ADA21204EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2020 16:48:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 08:48:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="432014072"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by fmsmga005.fm.intel.com with ESMTP; 11 Feb 2020 08:48:17 -0800
Received: from orsmsx160.amr.corp.intel.com (10.22.226.43) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 11 Feb 2020 08:48:16 -0800
Received: from orsmsx113.amr.corp.intel.com ([169.254.9.183]) by
 ORSMSX160.amr.corp.intel.com ([169.254.13.167]) with mapi id 14.03.0439.000;
 Tue, 11 Feb 2020 08:48:16 -0800
From: "Allan, Bruce W" <bruce.w.allan@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S39 09/15] ice: Don't reject odd
 values of usecs set by user
Thread-Index: AQHV1TfJZclkW6kgUEqp5a9zW2CqpagWSP6g
Date: Tue, 11 Feb 2020 16:48:15 +0000
Message-ID: <804857E1F29AAC47BF68C404FC60A184010AFD98AD@ORSMSX113.amr.corp.intel.com>
References: <20200127085927.13999-1-anthony.l.nguyen@intel.com>
 <20200127085927.13999-9-anthony.l.nguyen@intel.com>
In-Reply-To: <20200127085927.13999-9-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNWQ1ZTJhNTEtYWIxOS00MWFmLTg2NTktYjRiOTg4N2VkMzAyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiYm1tRlJQUFlYdnRwV3JDQkRYMTdsYkNBZVBkNzNTQUJXWDg4d0Exb040RHZCSVBuVzUyQXdtdFwvRlNnTmtRRGIifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S39 09/15] ice: Don't reject odd
 values of usecs set by user
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
Cc: "Rowden, Aaron F" <aaron.f.rowden@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Monday, January 27, 2020 12:59 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S39 09/15] ice: Don't reject odd values of
> usecs set by user
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently if a user sets an odd [tx|rx]-usecs value through ethtool,
> the request is denied because the hardware is set to have an ITR
> granularity of 2us. This caused poor customer experience. Fix this by
> aligning to a register allowed value, which results in rounding down.
> Also, print a once per ring container type message to be clear about
> our intentions.
> 
> Also, change the ITR_TO_REG define to be the bitwise and of the ITR
> setting and the ICE_ITR_MASK. This makes the purpose of ITR_TO_REG more
> obvious.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>

Cc: aaron.f.rowden@intel.com

> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 49 +++++++++++++++-----
>  drivers/net/ethernet/intel/ice/ice_txrx.h    |  2 +-
>  2 files changed, 39 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index db14ec2e0b46..ae0b63d5673d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -3488,21 +3488,13 @@ ice_set_rc_coalesce(enum ice_container_type
> c_type, struct ethtool_coalesce *ec,
>  		return -EINVAL;
>  	}
> 
> -	/* hardware only supports an ITR granularity of 2us */
> -	if (coalesce_usecs % 2 != 0) {
> -		netdev_info(vsi->netdev, "Invalid value, %s-usecs must be
> even\n",
> -			    c_type_str);
> -		return -EINVAL;
> -	}
> -
>  	if (use_adaptive_coalesce) {
>  		rc->itr_setting |= ICE_ITR_DYNAMIC;
>  	} else {
> -		/* store user facing value how it was set */
> +		/* save the user set usecs */
>  		rc->itr_setting = coalesce_usecs;
> -		/* set to static and convert to value HW understands */
> -		rc->target_itr =
> -			ITR_TO_REG(ITR_REG_ALIGN(rc->itr_setting));
> +		/* device ITR granularity is in 2 usec increments */
> +		rc->target_itr = ITR_REG_ALIGN(rc->itr_setting);
>  	}
> 
>  	return 0;
> @@ -3595,6 +3587,30 @@ ice_is_coalesce_param_invalid(struct net_device
> *netdev,
>  	return 0;
>  }
> 
> +/**
> + * ice_print_if_odd_usecs - print message if user tries to set odd [tx|rx]-usecs
> + * @netdev: netdev used for print
> + * @itr_setting: previous user setting
> + * @use_adaptive_coalesce: if adaptive coalesce is enabled or being enabled
> + * @coalesce_usecs: requested value of [tx|rx]-usecs
> + * @c_type_str: either "rx" or "tx" to match user set field of [tx|rx]-usecs
> + */
> +static void
> +ice_print_if_odd_usecs(struct net_device *netdev, u16 itr_setting,
> +		       u32 use_adaptive_coalesce, u32 coalesce_usecs,
> +		       const char *c_type_str)
> +{
> +	if (use_adaptive_coalesce)
> +		return;
> +
> +	itr_setting = ITR_TO_REG(itr_setting);
> +
> +	if (itr_setting != coalesce_usecs && (coalesce_usecs % 2))
> +		netdev_info(netdev, "User set %s-usecs to %d, device only
> supports even values. Rounding down and attempting to set %s-usecs to
> %d\n",
> +			    c_type_str, coalesce_usecs, c_type_str,
> +			    ITR_REG_ALIGN(coalesce_usecs));
> +}
> +
>  /**
>   * __ice_set_coalesce - set ITR/INTRL values for the device
>   * @netdev: pointer to the netdev associated with this query
> @@ -3615,8 +3631,19 @@ __ice_set_coalesce(struct net_device *netdev,
> struct ethtool_coalesce *ec,
>  		return -EINVAL;
> 
>  	if (q_num < 0) {
> +		struct ice_q_vector *q_vector = vsi->q_vectors[0];
>  		int v_idx;
> 
> +		if (q_vector) {
> +			ice_print_if_odd_usecs(netdev, q_vector-
> >rx.itr_setting,
> +					       ec->use_adaptive_rx_coalesce,
> +					       ec->rx_coalesce_usecs, "rx");
> +
> +			ice_print_if_odd_usecs(netdev, q_vector-
> >tx.itr_setting,
> +					       ec->use_adaptive_tx_coalesce,
> +					       ec->tx_coalesce_usecs, "tx");
> +		}
> +
>  		ice_for_each_q_vector(vsi, v_idx) {
>  			/* In some cases if DCB is configured the num_[rx|tx]q
>  			 * can be less than vsi->num_q_vectors. This check
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h
> b/drivers/net/ethernet/intel/ice/ice_txrx.h
> index a86270696df1..3e3cc2599824 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.h
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
> @@ -222,7 +222,7 @@ enum ice_rx_dtype {
>  #define ICE_ITR_GRAN_S		1	/* ITR granularity is always
> 2us */
>  #define ICE_ITR_GRAN_US		BIT(ICE_ITR_GRAN_S)
>  #define ICE_ITR_MASK		0x1FFE	/* ITR register value alignment mask
> */
> -#define ITR_REG_ALIGN(setting)	__ALIGN_MASK(setting,
> ~ICE_ITR_MASK)
> +#define ITR_REG_ALIGN(setting)	((setting) & ICE_ITR_MASK)
> 
>  #define ICE_ITR_ADAPTIVE_MIN_INC	0x0002
>  #define ICE_ITR_ADAPTIVE_MIN_USECS	0x0002
> --
> 2.20.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
