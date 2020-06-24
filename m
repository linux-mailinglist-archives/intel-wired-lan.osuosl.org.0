Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E889B206A7E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2020 05:22:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A792388C91;
	Wed, 24 Jun 2020 03:22:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tcn2FPJpx4Fv; Wed, 24 Jun 2020 03:22:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8A1E588CA8;
	Wed, 24 Jun 2020 03:22:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1D1BB1BF3BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 03:22:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 189B4861F1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 03:22:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ldEWc6CHauad for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2020 03:22:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A899C860DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 03:22:20 +0000 (UTC)
IronPort-SDR: XeFpSC9w+vHfuqFzoHune9ZsbPh+xw86Uu0DrQ2g2dRNNxg89NiSSc3CC2SU/vHfkifP/TVPst
 Z8jbWhKScm9g==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="123983263"
X-IronPort-AV: E=Sophos;i="5.75,273,1589266800"; d="scan'208";a="123983263"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2020 20:22:20 -0700
IronPort-SDR: UoT6Qn5JzL5CoAGL62eq9tgVDFgPnHsIFJ5H88dv6x9DDuRBJNZ2ZLqURlRXC64vlsiG0nr396
 0EMb04aR7bUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,273,1589266800"; d="scan'208";a="452486279"
Received: from zeshed-mobl1.ger.corp.intel.com (HELO [10.249.80.159])
 ([10.249.80.159])
 by orsmga005.jf.intel.com with ESMTP; 23 Jun 2020 20:22:18 -0700
To: "Brown, Aaron F" <aaron.f.brown@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <20200607085127.29281-1-sasha.neftin@intel.com>
 <DM6PR11MB2890FCA0CC2C4D5BB701DB3ABC950@DM6PR11MB2890.namprd11.prod.outlook.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <e85dca2a-0fae-d8de-f367-21050b694c8d@intel.com>
Date: Wed, 24 Jun 2020 06:22:18 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <DM6PR11MB2890FCA0CC2C4D5BB701DB3ABC950@DM6PR11MB2890.namprd11.prod.outlook.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove TCP segmentation
 TX fail counter
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/24/2020 04:15, Brown, Aaron F wrote:
> 
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>> Sasha Neftin
>> Sent: Sunday, June 7, 2020 1:51 AM
>> To: intel-wired-lan@lists.osuosl.org
>> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove TCP segmentation TX
>> fail counter
>>
>> TCP segmentation TX context fail counter is not
>> applicable for i225 devices.
>> This patch comes to clean up this counter.
> 
> 
> With this patch include I am seeing what appears to be the removed counter when I look at ethtool stats.
> ----
> u1322:[0]/usr/src/kernels/next-queue> ethtool -S eth1|grep seg
>       tx_tcp_seg_good: 857
>       tx_tcp_seg_failed: 0
> u1322:[0]/usr/src/kernels/next-queue>
> ----
> 
> Does something need to be done to strip the counter display?  Or am I just looking at a similar counter.
It is ok. You look at right counter exposed by ethtool. I've removed the 
"TCP Segmentation Context Tx" register not applicable to the i225 device.
> 
>>
>> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
>> ---
>>   drivers/net/ethernet/intel/igc/igc_mac.c  | 1 -
>>   drivers/net/ethernet/intel/igc/igc_main.c | 1 -
>>   drivers/net/ethernet/intel/igc/igc_regs.h | 1 -
>>   3 files changed, 3 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c
>> b/drivers/net/ethernet/intel/igc/igc_mac.c
>> index f3f7717b6233..9a5e44ef45f4 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_mac.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_mac.c
>> @@ -289,7 +289,6 @@ void igc_clear_hw_cntrs_base(struct igc_hw *hw)
>>   rd32(IGC_TNCRS);
>>   rd32(IGC_HTDPMC);
>>   rd32(IGC_TSCTC);
>> -rd32(IGC_TSCTFC);
>>
>>   rd32(IGC_MGTPRC);
>>   rd32(IGC_MGTPDC);
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
>> b/drivers/net/ethernet/intel/igc/igc_main.c
>> index b92e7e20ce78..5d70751e8ab3 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -3740,7 +3740,6 @@ void igc_update_stats(struct igc_adapter
>> *adapter)
>>   adapter->stats.algnerrc += rd32(IGC_ALGNERRC);
>>
>>   adapter->stats.tsctc += rd32(IGC_TSCTC);
>> -adapter->stats.tsctfc += rd32(IGC_TSCTFC);
>>
>>   adapter->stats.iac += rd32(IGC_IAC);
>>   adapter->stats.icrxoc += rd32(IGC_ICRXOC);
>> diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h
>> b/drivers/net/ethernet/intel/igc/igc_regs.h
>> index eb3e8e70501d..1c46cec5a799 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_regs.h
>> +++ b/drivers/net/ethernet/intel/igc/igc_regs.h
>> @@ -181,7 +181,6 @@
>>   #define IGC_MPTC0x040F0  /* Multicast Packets Tx Count - R/clr */
>>   #define IGC_BPTC0x040F4  /* Broadcast Packets Tx Count - R/clr */
>>   #define IGC_TSCTC0x040F8  /* TCP Segmentation Context Tx - R/clr */
>> -#define IGC_TSCTFC0x040FC  /* TCP Segmentation Context Tx Fail - R/clr
>> */
>>   #define IGC_IAC0x04100  /* Interrupt Assertion Count */
>>   #define IGC_ICTXPTC0x0410C  /* Interrupt Cause Tx Pkt Timer Expire
>> Count */
>>   #define IGC_ICTXATC0x04110  /* Interrupt Cause Tx Abs Timer Expire
>> Count */
>> --
>> 2.11.0
>>
>> _______________________________________________
>> Intel-wired-lan mailing list
>> Intel-wired-lan@osuosl.org
>> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
