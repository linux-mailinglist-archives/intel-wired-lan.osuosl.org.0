Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB8664CED1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Dec 2022 18:20:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 99BE260E1B;
	Wed, 14 Dec 2022 17:20:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 99BE260E1B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671038453;
	bh=Gk5z+f5TssuOYC8OYO9uz2/pi+RB5dp3ZozDYBdeUlI=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wa+uK3j/bvtmEuFY7G8myov4xV6TvkzMZCGNk/DNnakCN1jq7794wJ5HBhDgwFx3G
	 V3iU55g59WrcTaUqrhnyQQqJterYJ/8hzMVNriYWyX0vUimpVIScUT8q/B9eHYDDVT
	 gDk/FPRZRwvyScLbkCx4YGDQLhMxBjEsZi2/EQHgfQETdvUUFvZ227ppwC8RkHTwTD
	 mdaXvSgTMcixKEsf8uZIU5aYkt+ZTylnwDXvhKwBVSP4aYhKJNuHBjlg8OE3OpIt/8
	 IYCq1E8QTq7hq2YqvYIDb0rHC9+xewiC/VD5JLDTJdvlw2Hi5paTTlFEwT7nIcjnpr
	 7ussw/K7MrE0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zXwsjS5WmJB3; Wed, 14 Dec 2022 17:20:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 871C060BE6;
	Wed, 14 Dec 2022 17:20:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 871C060BE6
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8B4101BF45A
 for <intel-wired-lan@osuosl.org>; Wed, 14 Dec 2022 17:20:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 652A440BB9
 for <intel-wired-lan@osuosl.org>; Wed, 14 Dec 2022 17:20:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 652A440BB9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f1o0EqcrP5wN for <intel-wired-lan@osuosl.org>;
 Wed, 14 Dec 2022 17:20:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A7E540328
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7A7E540328
 for <intel-wired-lan@osuosl.org>; Wed, 14 Dec 2022 17:20:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="382764807"
X-IronPort-AV: E=Sophos;i="5.96,245,1665471600"; d="scan'208";a="382764807"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 09:17:29 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="712583562"
X-IronPort-AV: E=Sophos;i="5.96,245,1665471600"; d="scan'208";a="712583562"
Received: from seetaram-mobl.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.212.66.98])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 09:17:24 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org
In-Reply-To: <20221214144514.15931-1-muhammad.husaini.zulkifli@intel.com>
References: <20221214144514.15931-1-muhammad.husaini.zulkifli@intel.com>
Date: Wed, 14 Dec 2022 14:17:20 -0300
Message-ID: <87tu1xc3bz.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671038446; x=1702574446;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=aoQDKxcbgkz88mq+Z+NChHYJbtwIPvbJRPyZBzcaLlU=;
 b=IKav2o4dBpI0qPEdO6F2kJ4dURKDeyayDtssIJpctbpOTPu4E6rTKoIK
 GqPgWrrGqIUzb/Nnvyt1Q6qmrNkEk7NcJj3/pgiNcETg8jfZU1eRyA2X3
 MGR4MGVau05Lcaae8EhIrmBIy1W3KCVqsM1GQZHoqXhaBkOQXCBotgWkQ
 ZS4jK/LDI2Pl/I/vxALbwlFZJq47Vehd66Y7EkYdp83UhAeeFn5+GmFGe
 xbhbF88mU6UN+vTpT/XiWam1SPKVHk6Dn7rvQlOhD5skgsVFTjhtD0O6m
 4LNNH9KoHB6dzhKsvC1rFvHVOFV/fM/qN6WiooFrilLVtWicwo/LG9qai
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IKav2o4d
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] igc: offload queue max
 SDU from tc-taprio
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, kuba@kernel.org,
 muhammad.husaini.zulkifli@intel.com, davem@davemloft.net,
 tee.min.tan@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com> writes:

> From: Tan Tee Min <tee.min.tan@linux.intel.com>
>
> Add support for configuring the max SDU for each Tx queue.
> If not specified, keep the default.
>
> Signed-off-by: Tan Tee Min <tee.min.tan@linux.intel.com>
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h      |  1 +
>  drivers/net/ethernet/intel/igc/igc_main.c | 45 +++++++++++++++++++++++
>  include/net/pkt_sched.h                   |  1 +
>  net/sched/sch_taprio.c                    |  4 +-
>  4 files changed, 50 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index 5da8d162cd38..ce9e88687d8c 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -99,6 +99,7 @@ struct igc_ring {
>  
>  	u32 start_time;
>  	u32 end_time;
> +	u32 max_sdu;
>  
>  	/* CBS parameters */
>  	bool cbs_enable;                /* indicates if CBS is enabled */
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index e07287e05862..7ce05c31e371 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -1508,6 +1508,7 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
>  	__le32 launch_time = 0;
>  	u32 tx_flags = 0;
>  	unsigned short f;
> +	u32 max_sdu = 0;
>  	ktime_t txtime;
>  	u8 hdr_len = 0;
>  	int tso = 0;
> @@ -1527,6 +1528,16 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
>  		return NETDEV_TX_BUSY;
>  	}
>  
> +	if (tx_ring->max_sdu > 0) {
> +		if (skb_vlan_tagged(skb))
> +			max_sdu = tx_ring->max_sdu + VLAN_HLEN;
> +		else
> +			max_sdu = tx_ring->max_sdu;

perhaps this?
    max_sdu = tx_ring->max_sdu + (skb_vlan_tagged(skb) ? VLAN_HLEN : 0);

Totally optional.

> +
> +		if (skb->len > max_sdu)
> +			goto skb_drop;
> +	}
> +

I don't think the overhead would be measurable for the pkt/s rates that
a 2.5G link can handle. But a test and a note in the commit message
confirming that would be nice.

>  	if (!tx_ring->launchtime_enable)
>  		goto done;
>  
> @@ -1606,6 +1617,12 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
>  	dev_kfree_skb_any(first->skb);
>  	first->skb = NULL;
>  
> +	return NETDEV_TX_OK;
> +
> +skb_drop:
> +	dev_kfree_skb_any(skb);
> +	skb = NULL;
> +
>  	return NETDEV_TX_OK;
>  }
>  
> @@ -6015,6 +6032,7 @@ static int igc_tsn_clear_schedule(struct igc_adapter *adapter)
>  
>  		ring->start_time = 0;
>  		ring->end_time = NSEC_PER_SEC;
> +		ring->max_sdu = 0;
>  	}
>  
>  	return 0;
> @@ -6097,6 +6115,15 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
>  		}
>  	}
>  
> +	for (i = 0; i < adapter->num_tx_queues; i++) {
> +		struct igc_ring *ring = adapter->tx_ring[i];
> +
> +		if (qopt->max_frm_len[i] == U32_MAX)
> +			ring->max_sdu = 0;
> +		else
> +			ring->max_sdu = qopt->max_frm_len[i];
> +	}
> +
>  	return 0;
>  }
>  
> @@ -6184,12 +6211,30 @@ static int igc_tsn_enable_cbs(struct igc_adapter *adapter,
>  	return igc_tsn_offload_apply(adapter);
>  }
>  
> +static int igc_tsn_query_caps(struct tc_query_caps_base *base)
> +{
> +	switch (base->type) {
> +	case TC_SETUP_QDISC_TAPRIO: {
> +		struct tc_taprio_caps *caps = base->caps;
> +
> +		caps->supports_queue_max_sdu = true;
> +
> +		return 0;
> +	}
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +}
> +
>  static int igc_setup_tc(struct net_device *dev, enum tc_setup_type type,
>  			void *type_data)
>  {
>  	struct igc_adapter *adapter = netdev_priv(dev);
>  
>  	switch (type) {
> +	case TC_QUERY_CAPS:
> +		return igc_tsn_query_caps(type_data);
> +
>  	case TC_SETUP_QDISC_TAPRIO:
>  		return igc_tsn_enable_qbv_scheduling(adapter, type_data);
>  
> diff --git a/include/net/pkt_sched.h b/include/net/pkt_sched.h
> index 38207873eda6..d2539b1f6529 100644
> --- a/include/net/pkt_sched.h
> +++ b/include/net/pkt_sched.h
> @@ -178,6 +178,7 @@ struct tc_taprio_qopt_offload {
>  	u64 cycle_time;
>  	u64 cycle_time_extension;
>  	u32 max_sdu[TC_MAX_QUEUE];
> +	u32 max_frm_len[TC_MAX_QUEUE];
>

'max_frm_len' is an internal taprio optimization, to simplify the code
where the underlying HW doesn't support offload.

For offloading, only 'max_sdu' should be used. Unless you have a strong
reason. If you have that reason, it should be a separate commit.

>  	size_t num_entries;
>  	struct tc_taprio_sched_entry entries[];
> diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
> index 570389f6cdd7..d39164074756 100644
> --- a/net/sched/sch_taprio.c
> +++ b/net/sched/sch_taprio.c
> @@ -1263,8 +1263,10 @@ static int taprio_enable_offload(struct net_device *dev,
>  	offload->enable = 1;
>  	taprio_sched_to_offload(dev, sched, offload);
>  
> -	for (tc = 0; tc < TC_MAX_QUEUE; tc++)
> +	for (tc = 0; tc < TC_MAX_QUEUE; tc++) {
>  		offload->max_sdu[tc] = q->max_sdu[tc];
> +		offload->max_frm_len[tc] = q->max_frm_len[tc];
> +	}
>  
>  	err = ops->ndo_setup_tc(dev, TC_SETUP_QDISC_TAPRIO, offload);
>  	if (err < 0) {
> -- 
> 2.17.1
>

-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
