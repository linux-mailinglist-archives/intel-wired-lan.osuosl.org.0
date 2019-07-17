Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A85316C361
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jul 2019 01:02:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B96BF876A4;
	Wed, 17 Jul 2019 23:02:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NcdQ3iDjNiL3; Wed, 17 Jul 2019 23:02:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B398087695;
	Wed, 17 Jul 2019 23:02:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5B4A21BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jul 2019 17:32:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5379482383
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jul 2019 17:32:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z49HZFO8iKaX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Jul 2019 17:32:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 378C7831F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jul 2019 17:32:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 10:32:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,275,1559545200"; d="scan'208";a="178968431"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by orsmga002.jf.intel.com with ESMTP; 17 Jul 2019 10:32:15 -0700
Received: from orsmsx159.amr.corp.intel.com (10.22.240.24) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 17 Jul 2019 10:32:15 -0700
Received: from orsmsx115.amr.corp.intel.com ([169.254.4.240]) by
 ORSMSX159.amr.corp.intel.com ([169.254.11.26]) with mapi id 14.03.0439.000;
 Wed, 17 Jul 2019 10:32:14 -0700
From: "Patel, Vedang" <vedang.patel@intel.com>
To: David Miller <davem@davemloft.net>
Thread-Topic: [PATCH net-next v1] fix: taprio: Change type of txtime-delay
 parameter to u32
Thread-Index: AQHVPBAH2Iab5gicXE2VxFW40gJB96bONWkAgAFS4wA=
Date: Wed, 17 Jul 2019 17:32:10 +0000
Message-ID: <D18998A5-4B08-4F27-897F-A34B7C15684F@intel.com>
References: <1563306738-2779-1-git-send-email-vedang.patel@intel.com>
 <20190716.141904.308520366333461345.davem@davemloft.net>
In-Reply-To: <20190716.141904.308520366333461345.davem@davemloft.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.140]
Content-ID: <25F096A2937A7A4CA810742E06D34141@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 17 Jul 2019 23:02:21 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] fix: taprio: Change type
 of txtime-delay parameter to u32
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
Cc: Jiri Pirko <jiri@resnulli.us>, "l@dorileo.org" <l@dorileo.org>,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>,
 Stephen Hemminger <stephen@networkplumber.org>, Murali
 Karicheri <m-karicheri2@ti.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Cong Wang <xiyou.wangcong@gmail.com>, Eric Dumazet <eric.dumazet@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> On Jul 16, 2019, at 2:19 PM, David Miller <davem@davemloft.net> wrote:
> 
> From: Vedang Patel <vedang.patel@intel.com>
> Date: Tue, 16 Jul 2019 12:52:18 -0700
> 
>> During the review of the iproute2 patches for txtime-assist mode, it was
>> pointed out that it does not make sense for the txtime-delay parameter to
>> be negative. So, change the type of the parameter from s32 to u32.
>> 
>> Fixes: 4cfd5779bd6e ("taprio: Add support for txtime-assist mode")
>> Reported-by: Stephen Hemminger <stephen@networkplumber.org>
>> Signed-off-by: Vedang Patel <vedang.patel@intel.com>
> 
> You should have targetted this at 'net' as that's the only tree open
> right now.
> 
> I'll apply this.

Sorry about that.

I will keep this in mind from next time. 

Thanks,
Vedang
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
