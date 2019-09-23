Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B07F1BBAF8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Sep 2019 20:10:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 71A1486230;
	Mon, 23 Sep 2019 18:10:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id paqAScNziaK6; Mon, 23 Sep 2019 18:10:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A076F860A8;
	Mon, 23 Sep 2019 18:10:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 20AEE1BF395
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2019 18:10:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1BC14207A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2019 18:10:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QyRDqHtqfIQF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Sep 2019 18:10:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id E6A391FF11
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2019 18:10:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 11:10:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,541,1559545200"; d="scan'208";a="213409500"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga004.fm.intel.com with ESMTP; 23 Sep 2019 11:10:42 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 23 Sep 2019 11:10:42 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 23 Sep 2019 11:10:28 -0700
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Mon, 23 Sep 2019 11:10:28 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next PATCH S10 03/10] i40e: Wrong 'Advertised
 FEC modes' after set FEC to AUTO
Thread-Index: AQHVb9rScX3aJVyaZ0aT71CHyyVOVac5lJOA
Date: Mon, 23 Sep 2019 18:10:28 +0000
Message-ID: <b75849c37ce949e28023159abca99bd1@intel.com>
References: <20190920091724.51767-1-alice.michael@intel.com>
 <20190920091724.51767-3-alice.michael@intel.com>
In-Reply-To: <20190920091724.51767-3-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZjZlNDg0NzAtZGYxYy00NWUwLTg1MGUtYzFiNjEzYzlhNTI4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiYWQ1ZTJyd0Zna3EzNjI2YVNhWklobHF6eXRwNmR6dDdcL2lramtNNHdtZXhMa1wvYmNOWEVmM1lINGpZR2xhcUpvIn0=
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S10 03/10] i40e: Wrong
 'Advertised FEC modes' after set FEC to AUTO
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gW21h
aWx0bzppbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnXSBPbg0KPiBCZWhhbGYgT2Yg
QWxpY2UgTWljaGFlbA0KPiBTZW50OiBGcmlkYXksIFNlcHRlbWJlciAyMCwgMjAxOSAyOjE3IEFN
DQo+IFRvOiBNaWNoYWVsLCBBbGljZSA8YWxpY2UubWljaGFlbEBpbnRlbC5jb20+OyBpbnRlbC13
aXJlZC0NCj4gbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gQ2M6IEdhd2luLCBKYXJvc2xhd1ggPGph
cm9zbGF3eC5nYXdpbkBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtu
ZXh0IFBBVENIIFMxMCAwMy8xMF0gaTQwZTogV3JvbmcgJ0FkdmVydGlzZWQNCj4gRkVDIG1vZGVz
JyBhZnRlciBzZXQgRkVDIHRvIEFVVE8NCj4gDQo+IEZyb206IEphcm9zbGF3IEdhd2luIDxqYXJv
c2xhd3guZ2F3aW5AaW50ZWwuY29tPg0KPiANCj4gRml4IGRpc3BsYXkgb2YgcGFyYW1ldGVycyAi
Q29uZmlndXJlZCBGRUMgZW5jb2RpbmdzOiIgYW5kICJBZHZlcnRpc2VkIEZFQw0KPiBtb2Rlczoi
IGluIGV0aHRvb2wuICBJbXBsZW1lbnRlZCBieSBzZXR0aW5nIHByb3BlciBGRUMgYml0cyBpbiDi
gJxhZHZlcnRpc2luZ+KAnQ0KPiBiaXRtYXNrIG9mIGxpbmtfbW9kZXMgc3RydWN0IGFuZCDigJxm
ZWPigJ0gYml0bWFzayBpbiBldGh0b29sX2ZlY3BhcmFtIHN0cnVjdC4NCj4gV2l0aG91dCB0aGlz
IHBhdGNoIHdyb25nIEZFQyBzZXR0aW5ncyBjYW4gYmUgc2hvd24uDQo+IA0KPiBTaWduZWQtb2Zm
LWJ5OiBKYXJvc2xhdyBHYXdpbiA8amFyb3NsYXd4Lmdhd2luQGludGVsLmNvbT4NCj4gLS0tDQo+
ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfY29tbW9uLmMgfCAxMyArKysr
KystLQ0KPiAgLi4uL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfZXRodG9vbC5jICAgIHwg
MzIgKysrKysrKysrLS0tLS0tLS0tLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAyNiBpbnNlcnRpb25z
KCspLCAxOSBkZWxldGlvbnMoLSkNCg0KVGVzdGVkLWJ5OiBBbmRyZXcgQm93ZXJzIDxhbmRyZXd4
LmJvd2Vyc0BpbnRlbC5jb20+DQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1s
YW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC13aXJlZC1sYW4K
