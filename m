Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E59A12274DD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Jul 2020 03:42:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6777821135;
	Tue, 21 Jul 2020 01:42:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qcBtJ7bvIzD3; Tue, 21 Jul 2020 01:42:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D5A4F220D6;
	Tue, 21 Jul 2020 01:42:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6DEDE1BF31D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jul 2020 01:42:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 61EB787E19
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jul 2020 01:42:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W54Dh8LHOYly for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Jul 2020 01:42:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from baidu.com (mx20.baidu.com [111.202.115.85])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2B36087E16
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jul 2020 01:42:44 +0000 (UTC)
Received: from BC-Mail-Ex30.internal.baidu.com (unknown [172.31.51.24])
 by Forcepoint Email with ESMTPS id CF3085222703471FC498;
 Tue, 21 Jul 2020 09:42:39 +0800 (CST)
Received: from BJHW-Mail-Ex13.internal.baidu.com (10.127.64.36) by
 BC-Mail-Ex30.internal.baidu.com (172.31.51.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1979.3; Tue, 21 Jul 2020 09:42:39 +0800
Received: from BJHW-Mail-Ex13.internal.baidu.com ([100.100.100.36]) by
 BJHW-Mail-Ex13.internal.baidu.com ([100.100.100.36]) with mapi id
 15.01.1979.003; Tue, 21 Jul 2020 09:42:39 +0800
From: "Li,Rongqing" <lirongqing@baidu.com>
To: Magnus Karlsson <magnus.karlsson@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH 1/2] xdp: i40e: ixgbe: ixgbevf: not
 flip rx buffer for copy mode xdp
Thread-Index: AQHWXmZtsIr9AHsudEOLFGU9se5TiKkRPZUQ
Date: Tue, 21 Jul 2020 01:42:39 +0000
Message-ID: <7b87919a454c4c7ba3d431783069e686@baidu.com>
References: <1594967062-20674-1-git-send-email-lirongqing@baidu.com>
 <1594967062-20674-2-git-send-email-lirongqing@baidu.com>
 <CAJ8uoz2hdemss9S5vuF=Ttapkfb8U4YJy41oVjpMUVLiCOJTkw@mail.gmail.com>
In-Reply-To: <CAJ8uoz2hdemss9S5vuF=Ttapkfb8U4YJy41oVjpMUVLiCOJTkw@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.197.254]
x-baidu-bdmsfe-datecheck: 1_BC-Mail-Ex30_2020-07-21 09:42:39:679
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

DQoNCj4gLS0tLS3pgq7ku7bljp/ku7YtLS0tLQ0KPiDlj5Hku7bkuro6IE1hZ251cyBLYXJsc3Nv
biBbbWFpbHRvOm1hZ251cy5rYXJsc3NvbkBnbWFpbC5jb21dDQo+IOWPkemAgeaXtumXtDogMjAy
MOW5tDfmnIgyMOaXpSAxNToyMQ0KPiDmlLbku7bkuro6IExpLFJvbmdxaW5nIDxsaXJvbmdxaW5n
QGJhaWR1LmNvbT4NCj4g5oqE6YCBOiBOZXR3b3JrIERldmVsb3BtZW50IDxuZXRkZXZAdmdlci5r
ZXJuZWwub3JnPjsgaW50ZWwtd2lyZWQtbGFuDQo+IDxpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1
b3NsLm9yZz47IEthcmxzc29uLCBNYWdudXMNCj4gPG1hZ251cy5rYXJsc3NvbkBpbnRlbC5jb20+
OyBCasO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBpbnRlbC5jb20+DQo+IOS4u+mimDogUmU6IFtJ
bnRlbC13aXJlZC1sYW5dIFtQQVRDSCAxLzJdIHhkcDogaTQwZTogaXhnYmU6IGl4Z2JldmY6IG5v
dCBmbGlwIHJ4DQo+IGJ1ZmZlciBmb3IgY29weSBtb2RlIHhkcA0KPiANCj4gT24gRnJpLCBKdWwg
MTcsIDIwMjAgYXQgODoyNCBBTSBMaSBSb25nUWluZyA8bGlyb25ncWluZ0BiYWlkdS5jb20+IHdy
b3RlOg0KPiA+DQo+ID4gaTQwZS9peGdiZS9peGdiZXZmX3J4X2J1ZmZlcl9mbGlwIGluIGNvcHkg
bW9kZSB4ZHAgY2FuIGxlYWQgdG8gZGF0YQ0KPiA+IGNvcnJ1cHRpb24sIGxpa2UgdGhlIGZvbGxv
d2luZyBmbG93Og0KPiA+DQo+ID4gICAgMS4gZmlyc3Qgc2tiIGlzIG5vdCBmb3IgeHNrLCBhbmQg
Zm9yd2FyZGVkIHRvIGFub3RoZXIgZGV2aWNlDQo+ID4gICAgICAgb3Igc29ja2V0IHF1ZXVlDQo+
ID4gICAgMi4gc2Vjb25kcyBza2IgaXMgZm9yIHhzaywgY29weSBkYXRhIHRvIHhzayBtZW1vcnks
IGFuZCBwYWdlDQo+ID4gICAgICAgb2Ygc2tiLT5kYXRhIGlzIHJlbGVhc2VkDQo+ID4gICAgMy4g
cnhfYnVmZiBpcyByZXVzYWJsZSBzaW5jZSBvbmx5IGZpcnN0IHNrYiBpcyBpbiBpdCwgYnV0DQo+
ID4gICAgICAgKl9yeF9idWZmZXJfZmxpcCB3aWxsIG1ha2UgdGhhdCBwYWdlX29mZnNldCBpcyBz
ZXQgdG8NCj4gPiAgICAgICBmaXJzdCBza2IgZGF0YQ0KPiA+ICAgIDQuIHRoZW4gcmV1c2Ugcngg
YnVmZmVyLCBmaXJzdCBza2Igd2hpY2ggc3RpbGwgaXMgbGl2aW5nDQo+ID4gICAgICAgd2lsbCBi
ZSBjb3JydXB0ZWQuDQplLCBidXQga25vd24gc2l6ZSB0eXBlICovDQo+ID4gICAgICAgICB1MzIg
aWQ7DQo+ID4gQEAgLTczLDYgKzc1LDcgQEAgc3RydWN0IHhkcF9idWZmIHsNCj4gPiAgICAgICAg
IHN0cnVjdCB4ZHBfcnhxX2luZm8gKnJ4cTsNCj4gPiAgICAgICAgIHN0cnVjdCB4ZHBfdHhxX2lu
Zm8gKnR4cTsNCj4gPiAgICAgICAgIHUzMiBmcmFtZV9zejsgLyogZnJhbWUgc2l6ZSB0byBkZWR1
Y2UgZGF0YV9oYXJkX2VuZC9yZXNlcnZlZA0KPiA+IHRhaWxyb29tKi8NCj4gPiArICAgICAgIHUz
MiBmbGFnczsNCj4gDQo+IFJvbmdRaW5nLA0KPiANCj4gU29ycnkgdGhhdCBJIHdhcyBub3QgY2xl
YXIgZW5vdWdoLiBDb3VsZCB5b3UgcGxlYXNlIHN1Ym1pdCB0aGUgc2ltcGxlIHBhdGNoDQo+IHlv
dSBoYWQsIHRoZSBvbmUgdGhhdCBvbmx5IHRlc3RzIGZvciB0aGUgbWVtb3J5IHR5cGUuDQo+IA0K
PiBpZiAoeGRwLT5yeHEtPm1lbS50eXBlICE9IE1FTV9UWVBFX1hTS19CVUZGX1BPT0wpDQo+ICAg
ICAgIGk0MGVfcnhfYnVmZmVyX2ZsaXAocnhfcmluZywgcnhfYnVmZmVyLCBzaXplKTsNCj4gDQo+
IEkgZG8gbm90IHRoaW5rIHRoYXQgYWRkaW5nIGEgZmxhZ3MgZmllbGQgaW4gdGhlIHhkcF9tZW1f
aW5mbyB0byBmaXggYW4gSW50ZWwgZHJpdmVyDQo+IHByb2JsZW0gd2lsbCBiZSBodWdlbHkgcG9w
dWxhci4gVGhlIHN0cnVjdCBpcyBhbHNvIG1lYW50IHRvIGNvbnRhaW4gbG9uZyBsaXZlZA0KPiBp
bmZvcm1hdGlvbiwgbm90IHRoaW5ncyB0aGF0IHdpbGwgZnJlcXVlbnRseSBjaGFuZ2UuDQo+IA0K
DQoNClRoYW5rIHlvdSBNYWdudXMNCg0KTXkgb3JpZ2luYWwgc3VnZ2VzdGlvbiBpcyB3cm9uZyAs
IGl0IHNob3VsZCBiZSBmb2xsb3dpbmcNCg0KaWYgKHhkcC0+cnhxLT5tZW0udHlwZSA9PSBNRU1f
VFlQRV9YU0tfQlVGRl9QT09MKQ0KICAgICAgIGk0MGVfcnhfYnVmZmVyX2ZsaXAocnhfcmluZywg
cnhfYnVmZmVyLCBzaXplKTsNCg0KDQpidXQgSSBmZWVsIGl0IGlzIG5vdCBlbm91Z2ggdG8gb25s
eSBjaGVjayBtZW0udHlwZSwgaXQgbXVzdCBlbnN1cmUgdGhhdCBtYXBfdHlwZSBpcyBCUEZfTUFQ
X1RZUEVfWFNLTUFQID8gYnV0IGl0IGlzIG5vdCBleHBvc2UuIA0KDQpvdGhlciBtYXB0eXBlLCBs
aWtlIEJQRl9NQVBfVFlQRV9ERVZNQVAsICBhbmQgaWYgbWVtLnR5cGUgaXMgTUVNX1RZUEVfUEFH
RV9TSEFSRUQsIG5vdCBmbGlwIHRoZSByeCBidWZmZXIsIHdpbGwgY2F1c2UgZGF0YSBjb3JydXB0
aW9uLg0KDQoNCi1MaSANCg0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFu
QG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtd2lyZWQtbGFuCg==
