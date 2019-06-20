Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9D94DC4F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2019 23:13:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E2E78220D6;
	Thu, 20 Jun 2019 21:13:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uzynam0++K1w; Thu, 20 Jun 2019 21:13:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B7A112207F;
	Thu, 20 Jun 2019 21:13:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1C5CA1BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 21:13:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 186D187D8E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 21:13:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 90W1UZhj7cBk for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2019 21:13:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 772F987CC9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 21:13:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 14:13:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,398,1557212400"; d="scan'208";a="335627118"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga005.jf.intel.com with ESMTP; 20 Jun 2019 14:13:06 -0700
Received: from orsmsx115.amr.corp.intel.com ([169.254.4.248]) by
 ORSMSX107.amr.corp.intel.com ([169.254.1.18]) with mapi id 14.03.0439.000;
 Thu, 20 Jun 2019 14:13:06 -0700
From: "Patel, Vedang" <vedang.patel@intel.com>
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Thread-Topic: [PATCH net-next v4 2/7] etf: Add skip_sock_check
Thread-Index: AQHVJsYYwRIEYLZLfUSMExk3vowbhKakqMmAgADY6oA=
Date: Thu, 20 Jun 2019 21:13:05 +0000
Message-ID: <16905BC8-A604-4A74-A9BA-4FCA6F40FE55@intel.com>
References: <1560966016-28254-1-git-send-email-vedang.patel@intel.com>
 <1560966016-28254-3-git-send-email-vedang.patel@intel.com>
 <c304970a-1973-cdce-17b5-682f28856306@cogentembedded.com>
In-Reply-To: <c304970a-1973-cdce-17b5-682f28856306@cogentembedded.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.150]
Content-ID: <2EE590B8DFA63B42AF55B316B696B47E@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 2/7] etf: Add
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
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "jakub.kicinski@netronome.com" <jakub.kicinski@netronome.com>, Jamal
 Hadi Salim <jhs@mojatatu.com>, "m-karicheri2@ti.com" <m-karicheri2@ti.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gT24gSnVuIDIwLCAyMDE5LCBhdCAxOjE2IEFNLCBTZXJnZWkgU2h0eWx5b3YgPHNlcmdl
aS5zaHR5bHlvdkBjb2dlbnRlbWJlZGRlZC5jb20+IHdyb3RlOg0KPiANCj4gT24gMTkuMDYuMjAx
OSAyMDo0MCwgVmVkYW5nIFBhdGVsIHdyb3RlOg0KPiANCj4+IEN1cnJlbnRseSwgZXRmIGV4cGVj
dHMgYSBzb2NrZXQgd2l0aCBTT19UWFRJTUUgb3B0aW9uIHNldCBmb3IgZWFjaCBwYWNrZXQNCj4+
IGl0IGVuY291bnRlcnMuIFNvLCBpdCB3aWxsIGRyb3AgYWxsIG90aGVyIHBhY2tldHMuIEJ1dCwg
aW4gdGhlIGZ1dHVyZQ0KPj4gY29tbWl0cyB3ZSBhcmUgcGxhbm5pbmcgdG8gYWRkIGZ1bmN0aW9u
YWxpdHkgd2hpY2ggd2hlcmUgdHN0YW1wIHZhbHVlIHdpbGwNCj4gDQo+ICAgT25lIG9mICJ3aGlj
aCIgYW5kICJ3aGVyZSIsIG5vdCBib3RoLiA6LSkNCj4gDQpZZWFoLiBJdOKAmXMgYSB0eXBvLiBX
aWxsIGZpeCBpdCBpbiBuZXh0IHZlcnNpb24uDQoNClRoYW5rcywNClZlZGFuZw0KPj4gYmUgc2V0
IGJ5IGFub3RoZXIgcWRpc2MuIEFsc28sIHNvbWUgcGFja2V0cyB3aGljaCBhcmUgZ2VuZXJhdGVk
IGZyb20gd2l0aGluDQo+PiB0aGUga2VybmVsIChlLmcuIElDTVAgcGFja2V0cykgZG8gbm90IGhh
dmUgYW55IHNvY2tldCBhc3NvY2lhdGVkIHdpdGggdGhlbS4NCj4+IFNvLCB0aGlzIGNvbW1pdCBh
ZGRzIHN1cHBvcnQgZm9yIHNraXBfc29ja19jaGVjay4gV2hlbiB0aGlzIG9wdGlvbiBpcyBzZXQs
DQo+PiBldGYgd2lsbCBza2lwIGNoZWNraW5nIGZvciBhIHNvY2tldCBhbmQgb3RoZXIgYXNzb2Np
YXRlZCBvcHRpb25zIGZvciBhbGwNCj4+IHNrYnMuDQo+PiBTaWduZWQtb2ZmLWJ5OiBWZWRhbmcg
UGF0ZWwgPHZlZGFuZy5wYXRlbEBpbnRlbC5jb20+DQo+IFsuLi5dDQo+IA0KPiBNQlIsIFNlcmdl
aQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBz
Oi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
