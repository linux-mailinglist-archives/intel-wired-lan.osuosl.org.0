Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 915A13FFB3C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Sep 2021 09:43:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0D0EB4028B;
	Fri,  3 Sep 2021 07:43:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wMeOPWfqSayH; Fri,  3 Sep 2021 07:43:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 058584016F;
	Fri,  3 Sep 2021 07:43:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BF3991BF46D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Sep 2021 07:43:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A9E758330B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Sep 2021 07:43:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hMfIIh5zPMeq for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Sep 2021 07:43:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DB4BF832EB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Sep 2021 07:43:20 +0000 (UTC)
Received: from [192.168.0.4] (ip5f5aed59.dynamic.kabel-deutschland.de
 [95.90.237.89])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 80A8461E5FE33;
 Fri,  3 Sep 2021 09:43:17 +0200 (CEST)
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
References: <20210903064846.71507-1-jedrzej.jagielski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <f4a7fedd-968f-f683-f3ac-a444a927d397@molgen.mpg.de>
Date: Fri, 3 Sep 2021 09:43:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210903064846.71507-1-jedrzej.jagielski@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix refreshing iavf
 adapter stats on ethtool request
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Jedrzej,


Am 03.09.21 um 08:48 schrieb Jedrzej Jagielski:

Should the summary have a net prefix or so? Also shorter:

> iavf: Refresh iavf adapter stats on ethtool request


> Currently iavf adapter statistics are refreshed only in a
> watchdog task, triggered approximately every two seconds,
> which causes some ethtool requests to return outdated values.
> 
> Add explicit statistics refresh when requested by ethtool -S.
> 
> Fixes: b476b0030e61 ("iavf: Move commands processing to the separate function")
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>   drivers/net/ethernet/intel/iavf/iavf.h         |  2 ++
>   drivers/net/ethernet/intel/iavf/iavf_ethtool.c |  3 +++
>   drivers/net/ethernet/intel/iavf/iavf_main.c    | 18 ++++++++++++++++++
>   3 files changed, 23 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
> index 21c95775509a..afe6b0d24a9a 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -306,6 +306,7 @@ struct iavf_adapter {
>   #define IAVF_FLAG_AQ_DEL_FDIR_FILTER		BIT(26)
>   #define IAVF_FLAG_AQ_ADD_ADV_RSS_CFG		BIT(27)
>   #define IAVF_FLAG_AQ_DEL_ADV_RSS_CFG		BIT(28)
> +#define IAVF_FLAG_AQ_REQUEST_STATS		BIT(29)
>   
>   	/* OS defined structs */
>   	struct net_device *netdev;
> @@ -399,6 +400,7 @@ int iavf_up(struct iavf_adapter *adapter);
>   void iavf_down(struct iavf_adapter *adapter);
>   int iavf_process_config(struct iavf_adapter *adapter);
>   void iavf_schedule_reset(struct iavf_adapter *adapter);
> +void iavf_schedule_request_stats(struct iavf_adapter *adapter);
>   void iavf_reset(struct iavf_adapter *adapter);
>   void iavf_set_ethtool_ops(struct net_device *netdev);
>   void iavf_update_stats(struct iavf_adapter *adapter);
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> index 7cbe59beeebb..21c4d4180f3e 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> @@ -354,6 +354,9 @@ static void iavf_get_ethtool_stats(struct net_device *netdev,
>   	struct iavf_adapter *adapter = netdev_priv(netdev);
>   	unsigned int i;
>   
> +	/* Explicitly request stats refresh */
> +	iavf_schedule_request_stats(adapter);
> +
>   	iavf_add_ethtool_stats(&data, adapter, iavf_gstrings_stats);
>   
>   	rcu_read_lock();
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 80437ef26391..e7ac6356772b 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -165,6 +165,19 @@ void iavf_schedule_reset(struct iavf_adapter *adapter)
>   	}
>   }
>   
> +/**
> + * iavf_schedule_request_stats - Set the flags and schedule statistics request
> + * @adapter: board private structure
> + *
> + * Sets IAVF_FLAG_AQ_REQUEST_STATS flag so iavf_watchdog_task() will explicitly
> + * request and refresh ethtool stats
> + **/
> +void iavf_schedule_request_stats(struct iavf_adapter *adapter)
> +{
> +	adapter->aq_required |= IAVF_FLAG_AQ_REQUEST_STATS;
> +	queue_work(iavf_wq, &adapter->watchdog_task.work);
> +}
> +
>   /**
>    * iavf_tx_timeout - Respond to a Tx Hang
>    * @netdev: network interface device structure
> @@ -1700,6 +1713,11 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
>   		iavf_del_adv_rss_cfg(adapter);
>   		return 0;
>   	}
> +	if (adapter->aq_required & IAVF_FLAG_AQ_REQUEST_STATS) {
> +		iavf_request_stats(adapter);

Should that be `iavf_schedule_request_stats()`?

> +		return IAVF_SUCCESS;
> +	}
> +
>   	return -EAGAIN;
>   }


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
