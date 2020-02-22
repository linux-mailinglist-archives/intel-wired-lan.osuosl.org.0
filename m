Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BCEE6168BEC
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 Feb 2020 03:02:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3B5438759C;
	Sat, 22 Feb 2020 02:02:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 62is10FGa4Mu; Sat, 22 Feb 2020 02:02:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E3D3487594;
	Sat, 22 Feb 2020 02:01:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 121241BF3BA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Feb 2020 02:01:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0AF4E878A4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Feb 2020 02:01:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aOnqZUl7hEhb for <intel-wired-lan@lists.osuosl.org>;
 Sat, 22 Feb 2020 02:01:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7C8998774C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Feb 2020 02:01:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 18:01:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,470,1574150400"; d="scan'208";a="437139619"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
 by fmsmga006.fm.intel.com with ESMTP; 21 Feb 2020 18:01:52 -0800
Received: from orsmsx158.amr.corp.intel.com (10.22.240.20) by
 ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 21 Feb 2020 18:01:52 -0800
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.43]) by
 ORSMSX158.amr.corp.intel.com ([169.254.10.89]) with mapi id 14.03.0439.000;
 Fri, 21 Feb 2020 18:01:52 -0800
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: Kees Cook <keescook@chromium.org>, "Kirsher, Jeffrey T"
 <jeffrey.t.kirsher@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH] e1000: Distribute switch variables
 for initialization
Thread-Index: AQHV57Y+5dhSGYdeGkOTOhbTCfzrnqgmeD4A
Date: Sat, 22 Feb 2020 02:01:51 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B971F92DA@ORSMSX103.amr.corp.intel.com>
References: <20200220062302.68898-1-keescook@chromium.org>
In-Reply-To: <20200220062302.68898-1-keescook@chromium.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] e1000: Distribute switch variables
 for initialization
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
Cc: Alexander Potapenko <glider@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGludGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5v
cmc+IE9uIEJlaGFsZiBPZg0KPiBLZWVzIENvb2sNCj4gU2VudDogV2VkbmVzZGF5LCBGZWJydWFy
eSAxOSwgMjAyMCAxMDoyMyBQTQ0KPiBUbzogS2lyc2hlciwgSmVmZnJleSBUIDxqZWZmcmV5LnQu
a2lyc2hlckBpbnRlbC5jb20+DQo+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9y
ZzsgQWxleGFuZGVyIFBvdGFwZW5rbw0KPiA8Z2xpZGVyQGdvb2dsZS5jb20+OyBLZWVzIENvb2sg
PGtlZXNjb29rQGNocm9taXVtLm9yZz47IGxpbnV4LQ0KPiBrZXJuZWxAdmdlci5rZXJuZWwub3Jn
DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSF0gZTEwMDA6IERpc3RyaWJ1dGUg
c3dpdGNoIHZhcmlhYmxlcyBmb3INCj4gaW5pdGlhbGl6YXRpb24NCj4gDQo+IFZhcmlhYmxlcyBk
ZWNsYXJlZCBpbiBhIHN3aXRjaCBzdGF0ZW1lbnQgYmVmb3JlIGFueSBjYXNlIHN0YXRlbWVudHMN
Cj4gY2Fubm90IGJlIGF1dG9tYXRpY2FsbHkgaW5pdGlhbGl6ZWQgd2l0aCBjb21waWxlciBpbnN0
cnVtZW50YXRpb24gKGFzDQo+IHRoZXkgYXJlIG5vdCBwYXJ0IG9mIGFueSBleGVjdXRpb24gZmxv
dykuIFdpdGggR0NDJ3MgcHJvcG9zZWQgYXV0b21hdGljDQo+IHN0YWNrIHZhcmlhYmxlIGluaXRp
YWxpemF0aW9uIGZlYXR1cmUsIHRoaXMgdHJpZ2dlcnMgYSB3YXJuaW5nIChhbmQgdGhleQ0KPiBk
b24ndCBnZXQgaW5pdGlhbGl6ZWQpLiBDbGFuZydzIGF1dG9tYXRpYyBzdGFjayB2YXJpYWJsZSBp
bml0aWFsaXphdGlvbg0KPiAodmlhIENPTkZJR19JTklUX1NUQUNLX0FMTD15KSBkb2Vzbid0IHRo
cm93IGEgd2FybmluZywgYnV0IGl0IGFsc28NCj4gZG9lc24ndCBpbml0aWFsaXplIHN1Y2ggdmFy
aWFibGVzWzFdLiBOb3RlIHRoYXQgdGhlc2Ugd2FybmluZ3MgKG9yIHNpbGVudA0KPiBza2lwcGlu
ZykgaGFwcGVuIGJlZm9yZSB0aGUgZGVhZC1zdG9yZSBlbGltaW5hdGlvbiBvcHRpbWl6YXRpb24g
cGhhc2UsDQo+IHNvIGV2ZW4gd2hlbiB0aGUgYXV0b21hdGljIGluaXRpYWxpemF0aW9ucyBhcmUg
bGF0ZXIgZWxpZGVkIGluIGZhdm9yIG9mDQo+IGRpcmVjdCBpbml0aWFsaXphdGlvbnMsIHRoZSB3
YXJuaW5ncyByZW1haW4uDQo+IA0KPiBUbyBhdm9pZCB0aGVzZSBwcm9ibGVtcywgbW92ZSBzdWNo
IHZhcmlhYmxlcyBpbnRvIHRoZSAiY2FzZSIgd2hlcmUNCj4gdGhleSdyZSB1c2VkIG9yIGxpZnQg
dGhlbSB1cCBpbnRvIHRoZSBtYWluIGZ1bmN0aW9uIGJvZHkuDQo+IA0KPiBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9lMTAwMC9lMTAwMF9tYWluLmM6IEluIGZ1bmN0aW9uDQo+IOKAmGUxMDAw
X3htaXRfZnJhbWXigJk6DQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwL2UxMDAw
X21haW4uYzozMTQzOjE4OiB3YXJuaW5nOg0KPiBzdGF0ZW1lbnQgd2lsbCBuZXZlciBiZSBleGVj
dXRlZCBbLVdzd2l0Y2gtdW5yZWFjaGFibGVdDQo+ICAzMTQzIHwgICAgIHVuc2lnbmVkIGludCBw
dWxsX3NpemU7DQo+ICAgICAgIHwgICAgICAgICAgICAgICAgICBefn5+fn5+fn4NCj4gDQo+IFsx
XSBodHRwczovL2J1Z3MubGx2bS5vcmcvc2hvd19idWcuY2dpP2lkPTQ0OTE2DQo+IA0KPiBTaWdu
ZWQtb2ZmLWJ5OiBLZWVzIENvb2sgPGtlZXNjb29rQGNocm9taXVtLm9yZz4NCj4gLS0tDQo+ICBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMC9lMTAwMF9tYWluLmMgfCAgICA0ICsrKy0N
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCg0KVGVz
dGVkLWJ5OiBBYXJvbiBCcm93biA8YWFyb24uZi5icm93bkBpbnRlbC5jb20+DQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFp
bGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3Ns
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
