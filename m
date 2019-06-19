Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E7C4BF18
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jun 2019 18:56:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D60F884B40;
	Wed, 19 Jun 2019 16:56:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t0JRig4FT0Fw; Wed, 19 Jun 2019 16:56:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9130484C3E;
	Wed, 19 Jun 2019 16:56:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 311071BF355
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 16:56:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2A55D86749
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 16:56:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0tTLEzkDTHEV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jun 2019 16:56:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 73094813ED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 16:56:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 09:56:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,392,1557212400"; d="scan'208";a="153861538"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga008.jf.intel.com with ESMTP; 19 Jun 2019 09:56:18 -0700
Received: from orsmsx159.amr.corp.intel.com (10.22.240.24) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 19 Jun 2019 09:56:18 -0700
Received: from orsmsx115.amr.corp.intel.com ([169.254.4.248]) by
 ORSMSX159.amr.corp.intel.com ([169.254.11.185]) with mapi id 14.03.0439.000;
 Wed, 19 Jun 2019 09:56:18 -0700
From: "Patel, Vedang" <vedang.patel@intel.com>
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Thread-Topic: [PATCH net-next v3 2/6] etf: Add skip_sock_check
Thread-Index: AQHVJUNDCz9qKl2Ng0aWJgMU0X4IqqahmzmAgAIPRYA=
Date: Wed, 19 Jun 2019 16:55:47 +0000
Message-ID: <6AA5A401-97AE-47D6-BD0D-2746C4FE3DAE@intel.com>
References: <1560799870-18956-1-git-send-email-vedang.patel@intel.com>
 <1560799870-18956-3-git-send-email-vedang.patel@intel.com>
 <3b9b74f4-526e-143e-21a9-ffd841b26bcb@cogentembedded.com>
In-Reply-To: <3b9b74f4-526e-143e-21a9-ffd841b26bcb@cogentembedded.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.201]
Content-ID: <654E82A170329043BC955417DA758152@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/6] etf: Add
 skip_sock_check
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
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Jamal
 Hadi Salim <jhs@mojatatu.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Cong Wang <xiyou.wangcong@gmail.com>, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thanks Sergei for the input.

> On Jun 18, 2019, at 2:28 AM, Sergei Shtylyov <sergei.shtylyov@cogentembedded.com> wrote:
> 
> Hello!
> 
> On 17.06.2019 22:31, Vedang Patel wrote:
> 
>> Currently, etf expects a socket with SO_TXTIME option set for each packet
>> it encounters. So, it will drop all other packets. But, in the future
>> commits we are planning to add functionality which where tstamp value will
>> be set by another qdisc. Also, some packets which are generated from within
>> the kernel (e.g. ICMP packets) do not have any socket associated with them.
>> So, this commit adds support for skip_sock_check. When this option is set,
>> etf will skip checking for a socket and other associated options for all
>> skbs.
>> Signed-off-by: Vedang Patel <vedang.patel@intel.com>
>> ---
>>  include/uapi/linux/pkt_sched.h |  1 +
>>  net/sched/sch_etf.c            | 10 ++++++++++
>>  2 files changed, 11 insertions(+)
>> diff --git a/include/uapi/linux/pkt_sched.h b/include/uapi/linux/pkt_sched.h
>> index 8b2f993cbb77..69fc52e4d6bd 100644
>> --- a/include/uapi/linux/pkt_sched.h
>> +++ b/include/uapi/linux/pkt_sched.h
>> @@ -990,6 +990,7 @@ struct tc_etf_qopt {
>>  	__u32 flags;
>>  #define TC_ETF_DEADLINE_MODE_ON	BIT(0)
>>  #define TC_ETF_OFFLOAD_ON	BIT(1)
>> +#define TC_ETF_SKIP_SOCK_CHECK  BIT(2)
> 
>  Please indent with a tab like above, not 2 spaces.
> 
I will include this in the next version.

-Vedang
> [...]
> 
> MBR, Sergei

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
