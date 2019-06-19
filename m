Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C5584BF11
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jun 2019 18:54:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CEA5D86788;
	Wed, 19 Jun 2019 16:54:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fvNsCWSdhQIS; Wed, 19 Jun 2019 16:54:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C319B86767;
	Wed, 19 Jun 2019 16:54:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6AD681BF355
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 16:54:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6675687AFE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 16:54:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CfvlzZHGWCVa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jun 2019 16:54:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CFD3587985
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 16:54:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 09:54:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,392,1557212400"; d="scan'208";a="181673235"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by fmsmga001.fm.intel.com with ESMTP; 19 Jun 2019 09:54:37 -0700
Received: from orsmsx115.amr.corp.intel.com ([169.254.4.248]) by
 ORSMSX106.amr.corp.intel.com ([169.254.1.191]) with mapi id 14.03.0439.000;
 Wed, 19 Jun 2019 09:54:37 -0700
From: "Patel, Vedang" <vedang.patel@intel.com>
To: David Miller <davem@davemloft.net>
Thread-Topic: [PATCH net-next v3 4/6] taprio: Add support for txtime-assist
 mode.
Thread-Index: AQHVJUNFjRzMm4OAx0i6VLvdOGHz6qag8fWAgAK4KwA=
Date: Wed, 19 Jun 2019 16:54:32 +0000
Message-ID: <0EE3B2CB-5EEA-47B5-B90D-A74177A04570@intel.com>
References: <1560799870-18956-1-git-send-email-vedang.patel@intel.com>
 <1560799870-18956-5-git-send-email-vedang.patel@intel.com>
 <20190617.162245.717911211395007022.davem@davemloft.net>
In-Reply-To: <20190617.162245.717911211395007022.davem@davemloft.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.201]
Content-ID: <12346ECBE3DED8449C0F8A8F5C8EA8BF@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 4/6] taprio: Add support
 for txtime-assist mode.
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
Cc: "jiri@resnulli.us" <jiri@resnulli.us>, "l@dorileo.org" <l@dorileo.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jamal Hadi Salim <jhs@mojatatu.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thanks for the input David. 


> On Jun 17, 2019, at 4:22 PM, David Miller <davem@davemloft.net> wrote:
> 
> From: Vedang Patel <vedang.patel@intel.com>
> Date: Mon, 17 Jun 2019 12:31:08 -0700
> 
>> diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
>> index a41d7d4434ee..ab6080013666 100644
>> --- a/net/sched/sch_taprio.c
>> +++ b/net/sched/sch_taprio.c
> ...
>> +/* Get how much time has been already elapsed in the current cycle. */
>> +static inline s32 get_cycle_time_elapsed(struct sched_gate_list *sched, ktime_t time)
>> +{
> 
> Please do not use the inline directive in foo.c files, let the compiler decide.
> 
Okay, I will remove inline directive from all C files and send a new version.

-Vedang
> ...
>> +static inline int length_to_duration(struct taprio_sched *q, int len)
>> +{
>> +	return (len * atomic64_read(&q->picos_per_byte)) / 1000;
>> +}
> 
> Likewise.
> 
> ...
>> +static inline ktime_t get_cycle_start(struct sched_gate_list *sched,
>> +				      ktime_t time)
>> +{
> 
> Likewise.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
