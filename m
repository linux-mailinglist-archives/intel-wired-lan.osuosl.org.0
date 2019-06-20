Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 909244D423
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2019 18:49:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 35C3886027;
	Thu, 20 Jun 2019 16:49:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4mr3zNaj1u1I; Thu, 20 Jun 2019 16:49:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0613C85F92;
	Thu, 20 Jun 2019 16:49:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 80AFF1BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 16:49:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7C0F321FA9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 16:49:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NQshxXNQ6LKj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2019 16:49:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 7ED9620770
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 16:49:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 09:49:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,397,1557212400"; d="scan'208";a="154181740"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by orsmga008.jf.intel.com with ESMTP; 20 Jun 2019 09:49:10 -0700
Received: from orsmsx163.amr.corp.intel.com (10.22.240.88) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 20 Jun 2019 09:49:10 -0700
Received: from orsmsx115.amr.corp.intel.com ([169.254.4.248]) by
 ORSMSX163.amr.corp.intel.com ([169.254.9.84]) with mapi id 14.03.0439.000;
 Thu, 20 Jun 2019 09:49:09 -0700
From: "Patel, Vedang" <vedang.patel@intel.com>
To: Eric Dumazet <eric.dumazet@gmail.com>
Thread-Topic: [PATCH net-next v4 1/7] igb: clear out tstamp after sending
 the packet
Thread-Index: AQHVJsYWP6DikpavGkiqH8wEAgHHrKak0uSAgABk7YA=
Date: Thu, 20 Jun 2019 16:49:05 +0000
Message-ID: <A1A5CF42-A7D4-4DC4-9D57-ED0340B04A6F@intel.com>
References: <1560966016-28254-1-git-send-email-vedang.patel@intel.com>
 <1560966016-28254-2-git-send-email-vedang.patel@intel.com>
 <d6655497-5246-c24e-de35-fc6acdad0bf1@gmail.com>
In-Reply-To: <d6655497-5246-c24e-de35-fc6acdad0bf1@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.150]
Content-ID: <240ADF7AD22D274989F89AB520E5E961@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/7] igb: clear out tstamp
 after sending the packet
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
 Jakub Kicinski <jakub.kicinski@netronome.com>, Jamal
 Hadi Salim <jhs@mojatatu.com>, Murali Karicheri <m-karicheri2@ti.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Cong Wang <xiyou.wangcong@gmail.com>, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> On Jun 20, 2019, at 3:47 AM, Eric Dumazet <eric.dumazet@gmail.com> wrote:
> 
> 
> 
> On 6/19/19 10:40 AM, Vedang Patel wrote:
>> skb->tstamp is being used at multiple places. On the transmit side, it
>> is used to determine the launchtime of the packet. It is also used to
>> determine the software timestamp after the packet has been transmitted.
>> 
>> So, clear out the tstamp value after it has been read so that we do not
>> report false software timestamp on the receive side.
>> 
>> Signed-off-by: Vedang Patel <vedang.patel@intel.com>
>> ---
>> drivers/net/ethernet/intel/igb/igb_main.c | 1 +
>> 1 file changed, 1 insertion(+)
>> 
>> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
>> index fc925adbd9fa..f66dae72fe37 100644
>> --- a/drivers/net/ethernet/intel/igb/igb_main.c
>> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
>> @@ -5688,6 +5688,7 @@ static void igb_tx_ctxtdesc(struct igb_ring *tx_ring,
>> 	 */
>> 	if (tx_ring->launchtime_enable) {
>> 		ts = ns_to_timespec64(first->skb->tstamp);
>> +		first->skb->tstamp = 0;
> 
> Please provide more explanations.
> 
> Why only this driver would need this ?
> 
Currently, igb is the only driver which uses the skb->tstamp option on the transmit side (to set the hardware transmit timestamp). All the other drivers only use it on the receive side (to collect and send the hardware transmit timestamp to the userspace after packet has been sent).

So, any driver which supports the hardware txtime in the future will have to clear skb->tstamp to make sure that hardware tx transmit and tx timestamping can be done on the same packet.

Thanks,
Vedang
> 
>> 		context_desc->seqnum_seed = cpu_to_le32(ts.tv_nsec / 32);
>> 	} else {
>> 		context_desc->seqnum_seed = 0;
>> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
