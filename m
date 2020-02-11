Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DBB1587C1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Feb 2020 02:11:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 16CBE8631D;
	Tue, 11 Feb 2020 01:11:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b+vz5ogu3fs2; Tue, 11 Feb 2020 01:11:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 139F686214;
	Tue, 11 Feb 2020 01:11:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 65E751BF368
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2020 01:11:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6164D2044D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2020 01:11:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n0pEeHmF4ucT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Feb 2020 01:11:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 0B90C20013
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2020 01:11:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Feb 2020 17:11:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,427,1574150400"; d="scan'208";a="433518928"
Received: from vcostago-desk1.jf.intel.com (HELO vcostago-desk1)
 ([10.54.70.26])
 by fmsmga006.fm.intel.com with ESMTP; 10 Feb 2020 17:11:39 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Andre Guedes <andre.guedes@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org
In-Reply-To: <158136684850.75536.15541483288653337386@1.0.0.127.in-addr.arpa>
References: <20200207182443.1501016-1-vinicius.gomes@intel.com>
 <20200207182443.1501016-3-vinicius.gomes@intel.com>
 <158136684850.75536.15541483288653337386@1.0.0.127.in-addr.arpa>
Date: Mon, 10 Feb 2020 17:13:13 -0800
Message-ID: <87pnemx6xi.fsf@linux.intel.com>
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

I will test this. Thanks for noticing.

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

'->base_time' doesn't need to be set, i.e. if it's zero (which is the
case that only ETF offloading is enabled), it should be fine. H

ow we calculate the launchtime in igc_tx_launchtime() is able to handle
'base_time_ being zero just fine, and the BASET_{L,H} registers will
have sane values when it's zero as well.


Cheers,
--
Vinicius


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
