Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8292279D0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Jul 2020 09:49:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1229581AEC;
	Tue, 21 Jul 2020 07:49:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id moiitgqccqPB; Tue, 21 Jul 2020 07:49:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 03FAC85404;
	Tue, 21 Jul 2020 07:49:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F33281BF303
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jul 2020 07:49:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EED2489219
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jul 2020 07:49:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bVdmiMXI-csM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Jul 2020 07:49:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from baidu.com (mx24.baidu.com [111.206.215.185])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6D5ED89200
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jul 2020 07:49:14 +0000 (UTC)
Received: from BJHW-Mail-Ex13.internal.baidu.com (unknown [10.127.64.36])
 by Forcepoint Email with ESMTPS id 67670E92BED48DA19C78;
 Tue, 21 Jul 2020 15:49:06 +0800 (CST)
Received: from BJHW-Mail-Ex13.internal.baidu.com (10.127.64.36) by
 BJHW-Mail-Ex13.internal.baidu.com (10.127.64.36) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1979.3; Tue, 21 Jul 2020 15:49:06 +0800
Received: from BJHW-Mail-Ex13.internal.baidu.com ([100.100.100.36]) by
 BJHW-Mail-Ex13.internal.baidu.com ([100.100.100.36]) with mapi id
 15.01.1979.003; Tue, 21 Jul 2020 15:49:00 +0800
From: "Li,Rongqing" <lirongqing@baidu.com>
To: Magnus Karlsson <magnus.karlsson@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH 1/2] xdp: i40e: ixgbe: ixgbevf: not
 flip rx buffer for copy mode xdp
Thread-Index: AQHWXmZtsIr9AHsudEOLFGU9se5TiKkRPZUQgABrUQA=
Date: Tue, 21 Jul 2020 07:49:00 +0000
Message-ID: <b3ca06b2292742c39b7362030055869f@baidu.com>
References: <1594967062-20674-1-git-send-email-lirongqing@baidu.com>
 <1594967062-20674-2-git-send-email-lirongqing@baidu.com>
 <CAJ8uoz2hdemss9S5vuF=Ttapkfb8U4YJy41oVjpMUVLiCOJTkw@mail.gmail.com> 
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.197.254]
x-baidu-bdmsfe-datecheck: 1_BJHW-Mail-Ex13_2020-07-21 15:49:06:416
MIME-Version: 1.0
Subject: [Intel-wired-lan] =?utf-8?b?562U5aSNOiAgW1BBVENIIDEvMl0geGRwOiBp?=
 =?utf-8?q?40e=3A_ixgbe=3A_ixgbevf=3A_not_flip_rx_buffer_for_copy_mode_xdp?=
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
Cc: Network Development <netdev@vger.kernel.org>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS3pgq7ku7bljp/ku7YtLS0tLQ0KPiDlj5Hku7bkuro6IExpLFJvbmdxaW5nDQo+
IOWPkemAgeaXtumXtDogMjAyMOW5tDfmnIgyMeaXpSA5OjQzDQo+IOaUtuS7tuS6ujogJ01hZ251
cyBLYXJsc3NvbicgPG1hZ251cy5rYXJsc3NvbkBnbWFpbC5jb20+DQo+IOaKhOmAgTogTmV0d29y
ayBEZXZlbG9wbWVudCA8bmV0ZGV2QHZnZXIua2VybmVsLm9yZz47IGludGVsLXdpcmVkLWxhbg0K
PiA8aW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc+OyBLYXJsc3NvbiwgTWFnbnVzDQo+
IDxtYWdudXMua2FybHNzb25AaW50ZWwuY29tPjsgQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxA
aW50ZWwuY29tPg0KPiDkuLvpopg6IOetlOWkjTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIDEv
Ml0geGRwOiBpNDBlOiBpeGdiZTogaXhnYmV2Zjogbm90IGZsaXAgcngNCj4gYnVmZmVyIGZvciBj
b3B5IG1vZGUgeGRwDQo+IA0KPiANCj4gDQo+ID4gLS0tLS3pgq7ku7bljp/ku7YtLS0tLQ0KPiA+
IOWPkeS7tuS6ujogTWFnbnVzIEthcmxzc29uIFttYWlsdG86bWFnbnVzLmthcmxzc29uQGdtYWls
LmNvbV0NCj4gPiDlj5HpgIHml7bpl7Q6IDIwMjDlubQ35pyIMjDml6UgMTU6MjENCj4gPiDmlLbk
u7bkuro6IExpLFJvbmdxaW5nIDxsaXJvbmdxaW5nQGJhaWR1LmNvbT4NCj4gPiDmioTpgIE6IE5l
dHdvcmsgRGV2ZWxvcG1lbnQgPG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc+OyBpbnRlbC13aXJlZC1s
YW4NCj4gPiA8aW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc+OyBLYXJsc3NvbiwgTWFn
bnVzDQo+ID4gPG1hZ251cy5rYXJsc3NvbkBpbnRlbC5jb20+OyBCasO2cm4gVMO2cGVsIDxiam9y
bi50b3BlbEBpbnRlbC5jb20+DQo+ID4g5Li76aKYOiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BB
VENIIDEvMl0geGRwOiBpNDBlOiBpeGdiZTogaXhnYmV2Zjogbm90DQo+ID4gZmxpcCByeCBidWZm
ZXIgZm9yIGNvcHkgbW9kZSB4ZHANCj4gPg0KPiA+IE9uIEZyaSwgSnVsIDE3LCAyMDIwIGF0IDg6
MjQgQU0gTGkgUm9uZ1FpbmcgPGxpcm9uZ3FpbmdAYmFpZHUuY29tPiB3cm90ZToNCj4gPiA+DQo+
ID4gPiBpNDBlL2l4Z2JlL2l4Z2JldmZfcnhfYnVmZmVyX2ZsaXAgaW4gY29weSBtb2RlIHhkcCBj
YW4gbGVhZCB0byBkYXRhDQo+ID4gPiBjb3JydXB0aW9uLCBsaWtlIHRoZSBmb2xsb3dpbmcgZmxv
dzoNCj4gPiA+DQo+ID4gPiAgICAxLiBmaXJzdCBza2IgaXMgbm90IGZvciB4c2ssIGFuZCBmb3J3
YXJkZWQgdG8gYW5vdGhlciBkZXZpY2UNCj4gPiA+ICAgICAgIG9yIHNvY2tldCBxdWV1ZQ0KPiA+
ID4gICAgMi4gc2Vjb25kcyBza2IgaXMgZm9yIHhzaywgY29weSBkYXRhIHRvIHhzayBtZW1vcnks
IGFuZCBwYWdlDQo+ID4gPiAgICAgICBvZiBza2ItPmRhdGEgaXMgcmVsZWFzZWQNCj4gPiA+ICAg
IDMuIHJ4X2J1ZmYgaXMgcmV1c2FibGUgc2luY2Ugb25seSBmaXJzdCBza2IgaXMgaW4gaXQsIGJ1
dA0KPiA+ID4gICAgICAgKl9yeF9idWZmZXJfZmxpcCB3aWxsIG1ha2UgdGhhdCBwYWdlX29mZnNl
dCBpcyBzZXQgdG8NCj4gPiA+ICAgICAgIGZpcnN0IHNrYiBkYXRhDQo+ID4gPiAgICA0LiB0aGVu
IHJldXNlIHJ4IGJ1ZmZlciwgZmlyc3Qgc2tiIHdoaWNoIHN0aWxsIGlzIGxpdmluZw0KPiA+ID4g
ICAgICAgd2lsbCBiZSBjb3JydXB0ZWQuDQo+IGUsIGJ1dCBrbm93biBzaXplIHR5cGUgKi8NCj4g
PiA+ICAgICAgICAgdTMyIGlkOw0KPiA+ID4gQEAgLTczLDYgKzc1LDcgQEAgc3RydWN0IHhkcF9i
dWZmIHsNCj4gPiA+ICAgICAgICAgc3RydWN0IHhkcF9yeHFfaW5mbyAqcnhxOw0KPiA+ID4gICAg
ICAgICBzdHJ1Y3QgeGRwX3R4cV9pbmZvICp0eHE7DQo+ID4gPiAgICAgICAgIHUzMiBmcmFtZV9z
ejsgLyogZnJhbWUgc2l6ZSB0byBkZWR1Y2UgZGF0YV9oYXJkX2VuZC9yZXNlcnZlZA0KPiA+ID4g
dGFpbHJvb20qLw0KPiA+ID4gKyAgICAgICB1MzIgZmxhZ3M7DQo+ID4NCj4gPiBSb25nUWluZywN
Cj4gPg0KPiA+IFNvcnJ5IHRoYXQgSSB3YXMgbm90IGNsZWFyIGVub3VnaC4gQ291bGQgeW91IHBs
ZWFzZSBzdWJtaXQgdGhlIHNpbXBsZQ0KPiA+IHBhdGNoIHlvdSBoYWQsIHRoZSBvbmUgdGhhdCBv
bmx5IHRlc3RzIGZvciB0aGUgbWVtb3J5IHR5cGUuDQo+ID4NCj4gPiBpZiAoeGRwLT5yeHEtPm1l
bS50eXBlICE9IE1FTV9UWVBFX1hTS19CVUZGX1BPT0wpDQo+ID4gICAgICAgaTQwZV9yeF9idWZm
ZXJfZmxpcChyeF9yaW5nLCByeF9idWZmZXIsIHNpemUpOw0KPiA+DQo+ID4gSSBkbyBub3QgdGhp
bmsgdGhhdCBhZGRpbmcgYSBmbGFncyBmaWVsZCBpbiB0aGUgeGRwX21lbV9pbmZvIHRvIGZpeCBh
bg0KPiA+IEludGVsIGRyaXZlciBwcm9ibGVtIHdpbGwgYmUgaHVnZWx5IHBvcHVsYXIuIFRoZSBz
dHJ1Y3QgaXMgYWxzbyBtZWFudA0KPiA+IHRvIGNvbnRhaW4gbG9uZyBsaXZlZCBpbmZvcm1hdGlv
biwgbm90IHRoaW5ncyB0aGF0IHdpbGwgZnJlcXVlbnRseSBjaGFuZ2UuDQo+ID4NCj4gDQo+IA0K
PiBUaGFuayB5b3UgTWFnbnVzDQo+IA0KPiBNeSBvcmlnaW5hbCBzdWdnZXN0aW9uIGlzIHdyb25n
ICwgaXQgc2hvdWxkIGJlIGZvbGxvd2luZw0KPiANCj4gaWYgKHhkcC0+cnhxLT5tZW0udHlwZSA9
PSBNRU1fVFlQRV9YU0tfQlVGRl9QT09MKQ0KPiAgICAgICAgaTQwZV9yeF9idWZmZXJfZmxpcChy
eF9yaW5nLCByeF9idWZmZXIsIHNpemUpOw0KPiANCj4gDQo+IGJ1dCBJIGZlZWwgaXQgaXMgbm90
IGVub3VnaCB0byBvbmx5IGNoZWNrIG1lbS50eXBlLCBpdCBtdXN0IGVuc3VyZSB0aGF0DQo+IG1h
cF90eXBlIGlzIEJQRl9NQVBfVFlQRV9YU0tNQVAgPyBidXQgaXQgaXMgbm90IGV4cG9zZS4NCj4g
DQo+IG90aGVyIG1hcHR5cGUsIGxpa2UgQlBGX01BUF9UWVBFX0RFVk1BUCwgIGFuZCBpZiBtZW0u
dHlwZSBpcw0KPiBNRU1fVFlQRV9QQUdFX1NIQVJFRCwgbm90IGZsaXAgdGhlIHJ4IGJ1ZmZlciwg
d2lsbCBjYXVzZSBkYXRhIGNvcnJ1cHRpb24uDQo+IA0KPiANCj4gLUxpDQo+IA0KPiANCg0KSG93
IGFib3V0IHRoaXM/DQoNCi0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQw
ZV90eHJ4LmMNCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV90eHJ4
LmMNCkBAIC0yMzk0LDcgKzIzOTQsMTAgQEAgc3RhdGljIGludCBpNDBlX2NsZWFuX3J4X2lycShz
dHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nLCBpbnQgYnVkZ2V0KQ0KIA0KICAgICAgICAgICAgICAg
ICAgICAgICAgaWYgKHhkcF9yZXMgJiAoSTQwRV9YRFBfVFggfCBJNDBFX1hEUF9SRURJUikpIHsN
CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgeGRwX3htaXQgfD0geGRwX3JlczsNCi0g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaTQwZV9yeF9idWZmZXJfZmxpcChyeF9yaW5n
LCByeF9idWZmZXIsIHNpemUpOw0KKw0KKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBp
ZiAoeGRwLnJ4cS0+bWVtLnR5cGUgPT0gTUVNX1RZUEVfWFNLX0JVRkZfUE9PTCB8fA0KKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgeGRwX2dldF9tYXBfdHlwZSgpICE9IEJQRl9N
QVBfVFlQRV9YU0tNQVApDQorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
aTQwZV9yeF9idWZmZXJfZmxpcChyeF9yaW5nLCByeF9idWZmZXIsIHNpemUpOw0KICAgICAgICAg
ICAgICAgICAgICAgICAgfSBlbHNlIHsNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
cnhfYnVmZmVyLT5wYWdlY250X2JpYXMrKzsNCiAgICAgICAgICAgICAgICAgICAgICAgIH0NCmRp
ZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2ZpbHRlci5oIGIvaW5jbHVkZS9saW51eC9maWx0ZXIu
aA0KaW5kZXggMjU5Mzc3NzIzNjAzLi45NGY0NDM1YTc3ZjMgMTAwNjQ0DQotLS0gYS9pbmNsdWRl
L2xpbnV4L2ZpbHRlci5oDQorKysgYi9pbmNsdWRlL2xpbnV4L2ZpbHRlci5oDQpAQCAtOTE5LDYg
KzkxOSwxNyBAQCBzdGF0aWMgaW5saW5lIHZvaWQgeGRwX2NsZWFyX3JldHVybl9mcmFtZV9ub19k
aXJlY3Qodm9pZCkNCiAgICAgICAgcmktPmtlcm5fZmxhZ3MgJj0gfkJQRl9SSV9GX1JGX05PX0RJ
UkVDVDsNCiB9DQogDQorc3RhdGljIGVudW0gYnBmX21hcF90eXBlIHhkcF9nZXRfbWFwX3R5cGUo
dm9pZCkNCit7DQorICAgICAgIHN0cnVjdCBicGZfcmVkaXJlY3RfaW5mbyAqcmkgPSB0aGlzX2Nw
dV9wdHIoJmJwZl9yZWRpcmVjdF9pbmZvKTsNCisgICAgICAgc3RydWN0IGJwZl9tYXAgKm1hcCA9
IFJFQURfT05DRShyaS0+bWFwKTsNCisNCisgICAgICAgaWYgKG1hcCkNCisgICAgICAgICAgICAg
ICByZXR1cm4gbWFwLT5tYXBfdHlwZTsNCisgICAgICAgZWxzZQ0KKyAgICAgICAgICAgICAgIHJl
dHVybiBCUEZfTUFQX1RZUEVfVU5TUEVDOw0KK30NCisNCiBzdGF0aWMgaW5saW5lIGludCB4ZHBf
b2tfZndkX2Rldihjb25zdCBzdHJ1Y3QgbmV0X2RldmljZSAqZndkLA0KICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgdW5zaWduZWQgaW50IHBrdGxlbikNCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
