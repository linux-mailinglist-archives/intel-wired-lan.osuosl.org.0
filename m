Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1903415B5BE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2020 01:21:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 94A5A85F3D;
	Thu, 13 Feb 2020 00:21:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id er99pM_1qU3X; Thu, 13 Feb 2020 00:21:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 91E7885F41;
	Thu, 13 Feb 2020 00:21:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6A8661BF9B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 00:21:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 65A4620421
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 00:21:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bv8iiLJXVmmM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2020 00:21:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 27866203BB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 00:21:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 16:21:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,434,1574150400"; d="scan'208";a="434239093"
Received: from vcostago-desk1.jf.intel.com (HELO vcostago-desk1)
 ([10.54.70.26])
 by fmsmga006.fm.intel.com with ESMTP; 12 Feb 2020 16:21:26 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Andre Guedes <andre.guedes@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org
In-Reply-To: <158136684850.75536.15541483288653337386@1.0.0.127.in-addr.arpa>
References: <20200207182443.1501016-1-vinicius.gomes@intel.com>
 <20200207182443.1501016-3-vinicius.gomes@intel.com>
 <158136684850.75536.15541483288653337386@1.0.0.127.in-addr.arpa>
Date: Wed, 12 Feb 2020 16:23:03 -0800
Message-ID: <87a75nwd20.fsf@linux.intel.com>
MIME-Version: 1.0
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

Andre Guedes <andre.guedes@linux.intel.com> writes:

> Hi Vinicius,
>
> Quoting Vinicius Costa Gomes (2020-02-07 10:24:43)
> ...
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> ...
>> @@ -4497,6 +4516,32 @@ static int igc_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
>>         }
>>  }
>>  
>> +static int igc_save_launchtime_params(struct igc_adapter *adapter, int queue,
>> +                                     bool enable)
>> +{
>> +       struct igc_ring *ring;
>> +       int i;
>> +
>> +       if (queue < 0 || queue > adapter->num_tx_queues)
>> +               return -EINVAL;
>
> I believe we have an off-by-one bug here. Shouldn't it be queue >=
> adapter->num_tx_queues instead?

Will fix this. (just a note that this off-by-one cannot be exploited by
luck almost, mqprio/taprio do the check correctly on their side)

>
>> @@ -4600,6 +4661,9 @@ static int igc_setup_tc(struct net_device *dev, enum tc_setup_type type,
>>         case TC_SETUP_QDISC_TAPRIO:
>>                 return igc_tsn_enable_qbv_scheduling(adapter, type_data);
>>  
>> +       case TC_SETUP_QDISC_ETF:
>> +               return igc_tsn_enable_launchtime(adapter, type_data);
>
> Consider the scenario where both TAPRIO and ETF offloads are disabled and we
> want to enable ETF offload. ETF depends on adapter->base_time is set to work
> properly, but I couldn't find where in this patch it is set. Could you please
> clarify that?
>
> Regards,
>
> Andre

-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
