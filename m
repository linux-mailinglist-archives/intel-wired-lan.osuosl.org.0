Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB0D51F24
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jun 2019 01:34:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9963E860F9;
	Mon, 24 Jun 2019 23:34:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WnJt+0u6Pucr; Mon, 24 Jun 2019 23:34:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CE21386174;
	Mon, 24 Jun 2019 23:34:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0F1881BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 23:34:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 03F9A860F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 23:34:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yC+SEVIo+FoL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jun 2019 23:34:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 923F485CD5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 23:34:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jun 2019 16:34:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,413,1557212400"; d="scan'208";a="169594252"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Jun 2019 16:34:34 -0700
Received: from orsmsx124.amr.corp.intel.com (10.22.240.120) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 24 Jun 2019 16:34:34 -0700
Received: from orsmsx115.amr.corp.intel.com ([169.254.4.248]) by
 ORSMSX124.amr.corp.intel.com ([169.254.2.150]) with mapi id 14.03.0439.000;
 Mon, 24 Jun 2019 16:34:34 -0700
From: "Patel, Vedang" <vedang.patel@intel.com>
To: Jakub Kicinski <jakub.kicinski@netronome.com>
Thread-Topic: [PATCH net-next v5 2/7] etf: Add skip_sock_check
Thread-Index: AQHVKFbNDyd+bM++9UqRiSWGp4bsQ6arz3qAgAAf8YA=
Date: Mon, 24 Jun 2019 23:34:33 +0000
Message-ID: <CAF959A4-553C-441D-A8E7-53F325D3B272@intel.com>
References: <1561138108-12943-1-git-send-email-vedang.patel@intel.com>
 <1561138108-12943-3-git-send-email-vedang.patel@intel.com>
 <20190624144013.3168dde2@cakuba.netronome.com>
In-Reply-To: <20190624144013.3168dde2@cakuba.netronome.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.11.19]
Content-ID: <6004587AB57A7E46BB369711B393B088@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 2/7] etf: Add
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
Cc: Jiri Pirko <jiri@resnulli.us>, "l@dorileo.org" <l@dorileo.org>,
 "sergei.shtylyov@cogentembedded.com" <sergei.shtylyov@cogentembedded.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Jamal
 Hadi Salim <jhs@mojatatu.com>, "m-karicheri2@ti.com" <m-karicheri2@ti.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Cong Wang <xiyou.wangcong@gmail.com>,
 "eric.dumazet@gmail.com" <eric.dumazet@gmail.com>,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> On Jun 24, 2019, at 2:40 PM, Jakub Kicinski <jakub.kicinski@netronome.com> wrote:
> 
> On Fri, 21 Jun 2019 10:28:23 -0700, Vedang Patel wrote:
>> diff --git a/include/uapi/linux/pkt_sched.h b/include/uapi/linux/pkt_sched.h
>> index 8b2f993cbb77..409d1616472d 100644
>> --- a/include/uapi/linux/pkt_sched.h
>> +++ b/include/uapi/linux/pkt_sched.h
>> @@ -990,6 +990,7 @@ struct tc_etf_qopt {
>> 	__u32 flags;
>> #define TC_ETF_DEADLINE_MODE_ON	BIT(0)
>> #define TC_ETF_OFFLOAD_ON	BIT(1)
>> +#define TC_ETF_SKIP_SOCK_CHECK	BIT(2)
>> };
>> 
>> enum {
> 
> I think build bot complained about the code not building on 32bit.
> When you respin could you include a patch to remove the uses of BIT()
> in UAPI?  See: https://www.spinics.net/lists/netdev/msg579344.html

Thanks for the info Jakub. Yeah I will include it in the next version.

-Vedang
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
