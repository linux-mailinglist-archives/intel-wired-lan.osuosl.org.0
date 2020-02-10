Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5982115844E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2020 21:34:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0F4F9203E3;
	Mon, 10 Feb 2020 20:34:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DE7JrOiKWglA; Mon, 10 Feb 2020 20:34:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 389CA204AE;
	Mon, 10 Feb 2020 20:34:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 15BB91BF29A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2020 20:34:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1272587987
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2020 20:34:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A7+QhPoxwduF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2020 20:34:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6ADE6878E5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2020 20:34:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Feb 2020 12:34:09 -0800
X-IronPort-AV: E=Sophos;i="5.70,426,1574150400"; d="scan'208";a="405704541"
Received: from unknown (HELO localhost) ([10.251.137.174])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Feb 2020 12:34:09 -0800
MIME-Version: 1.0
In-Reply-To: <20200207182443.1501016-3-vinicius.gomes@intel.com>
References: <20200207182443.1501016-1-vinicius.gomes@intel.com>
 <20200207182443.1501016-3-vinicius.gomes@intel.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
From: Andre Guedes <andre.guedes@linux.intel.com>
Message-ID: <158136684850.75536.15541483288653337386@1.0.0.127.in-addr.arpa>
User-Agent: alot/0.8.1
Date: Mon, 10 Feb 2020 12:34:08 -0800
Subject: Re: [Intel-wired-lan] [next-queue PATCH v2 2/2] igc: Add support
 for ETF offloading
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Vinicius,

Quoting Vinicius Costa Gomes (2020-02-07 10:24:43)
...
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
...
> @@ -4497,6 +4516,32 @@ static int igc_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
>         }
>  }
>  
> +static int igc_save_launchtime_params(struct igc_adapter *adapter, int queue,
> +                                     bool enable)
> +{
> +       struct igc_ring *ring;
> +       int i;
> +
> +       if (queue < 0 || queue > adapter->num_tx_queues)
> +               return -EINVAL;

I believe we have an off-by-one bug here. Shouldn't it be queue >=
adapter->num_tx_queues instead?

> @@ -4600,6 +4661,9 @@ static int igc_setup_tc(struct net_device *dev, enum tc_setup_type type,
>         case TC_SETUP_QDISC_TAPRIO:
>                 return igc_tsn_enable_qbv_scheduling(adapter, type_data);
>  
> +       case TC_SETUP_QDISC_ETF:
> +               return igc_tsn_enable_launchtime(adapter, type_data);

Consider the scenario where both TAPRIO and ETF offloads are disabled and we
want to enable ETF offload. ETF depends on adapter->base_time is set to work
properly, but I couldn't find where in this patch it is set. Could you please
clarify that?

Regards,

Andre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
