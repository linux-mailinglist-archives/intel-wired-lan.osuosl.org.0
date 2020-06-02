Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 043661EC3B4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jun 2020 22:33:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 997088874E;
	Tue,  2 Jun 2020 20:33:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XqlkMuirtEPN; Tue,  2 Jun 2020 20:33:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CE0608875D;
	Tue,  2 Jun 2020 20:33:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3DF261BF33D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2020 12:26:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3623F204B4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2020 12:26:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id awTmSLPod3do for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jun 2020 12:26:28 +0000 (UTC)
X-Greylist: delayed 00:16:07 by SQLgrey-1.7.6
Received: from baidu.com (mx20.baidu.com [111.202.115.85])
 by silver.osuosl.org (Postfix) with ESMTP id B5BDC2044F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2020 12:26:27 +0000 (UTC)
Received: from BC-Mail-Ex30.internal.baidu.com (unknown [172.31.51.24])
 by Forcepoint Email with ESMTPS id 6E037A58FCA89FDDD2C4;
 Tue,  2 Jun 2020 20:10:18 +0800 (CST)
Received: from BJHW-Mail-Ex13.internal.baidu.com (10.127.64.36) by
 BC-Mail-Ex30.internal.baidu.com (172.31.51.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1979.3; Tue, 2 Jun 2020 20:10:18 +0800
Received: from BJHW-Mail-Ex13.internal.baidu.com ([100.100.100.36]) by
 BJHW-Mail-Ex13.internal.baidu.com ([100.100.100.36]) with mapi id
 15.01.1713.004; Tue, 2 Jun 2020 20:10:18 +0800
From: "Li,Rongqing" <lirongqing@baidu.com>
To: =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>, intel-wired-lan
 <intel-wired-lan@lists.osuosl.org>, Netdev <netdev@vger.kernel.org>
Thread-Topic: [PATCH] i40e: fix wrong index in i40e_xsk_umem_dma_map
Thread-Index: AQHWONDBAVHG9ypJN0SpezjEH297HKjFO9eQ
Date: Tue, 2 Jun 2020 12:10:18 +0000
Message-ID: <562a0ea8fe694d5c82dba6f446d1b518@baidu.com>
References: <1591089148-959-1-git-send-email-lirongqing@baidu.com>
 <CAJ+HfNjXh882Dc2N9qpYDGhEuTed9Vp36RuHSXnBMmWXfV9iHg@mail.gmail.com>
In-Reply-To: <CAJ+HfNjXh882Dc2N9qpYDGhEuTed9Vp36RuHSXnBMmWXfV9iHg@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.198.7]
x-baidu-bdmsfe-datecheck: 1_BC-Mail-Ex30_2020-06-02 20:10:18:298
x-baidu-bdmsfe-viruscheck: BC-Mail-Ex30_GRAY_Inside_WithoutAtta_2020-06-02
 20:10:18:298
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 02 Jun 2020 20:33:04 +0000
Subject: [Intel-wired-lan] =?utf-8?b?562U5aSNOiBbUEFUQ0hdIGk0MGU6IGZpeCB3?=
 =?utf-8?q?rong_index_in_i40e=5Fxsk=5Fumem=5Fdma=5Fmap?=
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
Cc: bpf <bpf@vger.kernel.org>, "Karlsson, Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS3pgq7ku7bljp/ku7YtLS0tLQ0KPiDlj5Hku7bkuro6IEJqw7ZybiBUw7ZwZWwg
W21haWx0bzpiam9ybi50b3BlbEBnbWFpbC5jb21dDQo+IOWPkemAgeaXtumXtDogMjAyMOW5tDbm
nIgy5pelIDE5OjI3DQo+IOaUtuS7tuS6ujogTGksUm9uZ3FpbmcgPGxpcm9uZ3FpbmdAYmFpZHUu
Y29tPjsgaW50ZWwtd2lyZWQtbGFuDQo+IDxpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9y
Zz47IE5ldGRldiA8bmV0ZGV2QHZnZXIua2VybmVsLm9yZz4NCj4g5oqE6YCBOiBicGYgPGJwZkB2
Z2VyLmtlcm5lbC5vcmc+OyBLYXJsc3NvbiwgTWFnbnVzDQo+IDxtYWdudXMua2FybHNzb25AaW50
ZWwuY29tPg0KPiDkuLvpopg6IFJlOiBbUEFUQ0hdIGk0MGU6IGZpeCB3cm9uZyBpbmRleCBpbiBp
NDBlX3hza191bWVtX2RtYV9tYXANCj4gDQo+IE9uIFR1ZSwgMiBKdW4gMjAyMCBhdCAxMToyMCwg
TGkgUm9uZ1FpbmcgPGxpcm9uZ3FpbmdAYmFpZHUuY29tPiB3cm90ZToNCj4gPg0KPiANCj4gTGks
IHRoYW5rcyBmb3IgdGhlIHBhdGNoISBHb29kIGNhdGNoIQ0KPiANCj4gUGxlYXNlIGFkZCBhIHBy
b3BlciBkZXNjcmlwdGlvbiBmb3IgdGhlIHBhdGNoLiBUaGUgZml4IHNob3VsZCBiZSBhZGRlZCB0
byB0aGUNCj4gc3RhYmxlIGJyYW5jaGVzICg1LjcgYW5kIGVhcmxpZXIpLiBOb3RlIHRoYXQgdGhp
cyBjb2RlIHdhcyByZWNlbnRseSByZW1vdmVkIGluDQo+IGZhdm9yIG9mIHRoZSBuZXcgQUZfWERQ
IGJ1ZmZlciBhbGxvY2F0aW9uIHNjaGVtZS4NCj4gDQo+IA0KDQpPaw0KDQotTGlSb25nUWluZyAN
Cg0KPiBCasO2cm4NCj4gDQo+ID4gRml4ZXM6IDBhNzE0MTg2ZDNjMCAiKGk0MGU6IGFkZCBBRl9Y
RFAgemVyby1jb3B5IFJ4IHN1cHBvcnQpIg0KPiA+IFNpZ25lZC1vZmYtYnk6IExpIFJvbmdRaW5n
IDxsaXJvbmdxaW5nQGJhaWR1LmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jIHwgNCArKy0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jDQo+ID4gYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMNCj4gPiBpbmRleCAwYjdkMjkxOTJiMmMu
LmM5MjY0MzgxMThlYSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pNDBlL2k0MGVfeHNrLmMNCj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
NDBlL2k0MGVfeHNrLmMNCj4gPiBAQCAtMzcsOSArMzcsOSBAQCBzdGF0aWMgaW50IGk0MGVfeHNr
X3VtZW1fZG1hX21hcChzdHJ1Y3QgaTQwZV92c2kNCj4gPiAqdnNpLCBzdHJ1Y3QgeGRwX3VtZW0g
KnVtZW0pDQo+ID4NCj4gPiAgb3V0X3VubWFwOg0KPiA+ICAgICAgICAgZm9yIChqID0gMDsgaiA8
IGk7IGorKykgew0KPiA+IC0gICAgICAgICAgICAgICBkbWFfdW5tYXBfcGFnZV9hdHRycyhkZXYs
IHVtZW0tPnBhZ2VzW2ldLmRtYSwNCj4gUEFHRV9TSVpFLA0KPiA+ICsgICAgICAgICAgICAgICBk
bWFfdW5tYXBfcGFnZV9hdHRycyhkZXYsIHVtZW0tPnBhZ2VzW2pdLmRtYSwNCj4gPiArIFBBR0Vf
U0laRSwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgRE1BX0JJRElS
RUNUSU9OQUwsDQo+IEk0MEVfUlhfRE1BX0FUVFIpOw0KPiA+IC0gICAgICAgICAgICAgICB1bWVt
LT5wYWdlc1tpXS5kbWEgPSAwOw0KPiA+ICsgICAgICAgICAgICAgICB1bWVtLT5wYWdlc1tqXS5k
bWEgPSAwOw0KPiA+ICAgICAgICAgfQ0KPiA+DQo+ID4gICAgICAgICByZXR1cm4gLTE7DQo+ID4g
LS0NCj4gPiAyLjE2LjINCj4gPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
