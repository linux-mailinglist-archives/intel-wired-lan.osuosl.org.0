Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B57F394978
	for <lists+intel-wired-lan@lfdr.de>; Sat, 29 May 2021 02:19:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB47D8453D;
	Sat, 29 May 2021 00:19:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uNPDYoe3hop9; Sat, 29 May 2021 00:19:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F9C784502;
	Sat, 29 May 2021 00:19:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 480831BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 May 2021 00:19:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4352B6075E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 May 2021 00:19:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z1-TWOoOpKsU for <intel-wired-lan@lists.osuosl.org>;
 Sat, 29 May 2021 00:19:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2E4EC606F3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 May 2021 00:19:51 +0000 (UTC)
IronPort-SDR: wECupPPwuFQSY+o+uOqPVXJxXcZSiFu9G/+KvXsksHbpnKBn0aJGqTx0a1o126gzwNOkmKdEXZ
 ZH9olBzyJ3gQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9998"; a="200028340"
X-IronPort-AV: E=Sophos;i="5.83,231,1616482800"; d="scan'208";a="200028340"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2021 17:19:50 -0700
IronPort-SDR: yM4H1kiYcL4vsoGcvN1O1vn6FSaCmwIKWaQ56/mT7dkSk/YL/eF6+dJAgVQKTg55RVlyleKpMC
 5hITojADKrOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,231,1616482800"; d="scan'208";a="466070463"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 28 May 2021 17:19:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 28 May 2021 17:19:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 28 May 2021 17:19:48 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.008;
 Fri, 28 May 2021 17:19:48 -0700
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "gustavoars@kernel.org" <gustavoars@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH][next] virtchnl: Replace one-element
 array in struct virtchnl_vsi_queue_config_info
Thread-Index: AQHXVAxTTpyIawm9JEKlnQyWjKRps6r5+PqA//+d+mA=
Date: Sat, 29 May 2021 00:19:48 +0000
Message-ID: <7273a541a4864fcfb1a7ba2e105885d3@intel.com>
References: <20210525231658.GA176466@embeddedor>
 <f3674339c0390ced22b365101f2d3e3a2bf26845.camel@intel.com>
 <85e62583-5db9-ac5c-fdf9-8e3f6a50f3fa@embeddedor.com>
In-Reply-To: <85e62583-5db9-ac5c-fdf9-8e3f6a50f3fa@embeddedor.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH][next] virtchnl: Replace one-element
 array in struct virtchnl_vsi_queue_config_info
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YNCj4gR3Vz
dGF2byBBLiBSLiBTaWx2YQ0KPiBTZW50OiBGcmlkYXksIE1heSAyOCwgMjAyMSA0OjA1IFBNDQo+
IFRvOiBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBCcmFu
ZGVidXJnLCBKZXNzZQ0KPiA8amVzc2UuYnJhbmRlYnVyZ0BpbnRlbC5jb20+OyBndXN0YXZvYXJz
QGtlcm5lbC5vcmcNCj4gQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBsaW51
eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBsaW51eC0NCj4gaGFyZGVuaW5nQHZnZXIua2VybmVs
Lm9yZw0KPiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIXVtuZXh0XSB2aXJ0
Y2hubDogUmVwbGFjZSBvbmUtZWxlbWVudCBhcnJheQ0KPiBpbiBzdHJ1Y3QgdmlydGNobmxfdnNp
X3F1ZXVlX2NvbmZpZ19pbmZvDQo+IA0KPiANCj4gDQo+IE9uIDUvMjgvMjEgMTY6NTYsIE5ndXll
biwgQW50aG9ueSBMIHdyb3RlOg0KPiA+IE9uIFR1ZSwgMjAyMS0wNS0yNSBhdCAxODoxNiAtMDUw
MCwgR3VzdGF2byBBLiBSLiBTaWx2YSB3cm90ZToNCj4gPj4gVGhlcmUgaXMgYSByZWd1bGFyIG5l
ZWQgaW4gdGhlIGtlcm5lbCB0byBwcm92aWRlIGEgd2F5IHRvIGRlY2xhcmUNCj4gPj4gaGF2aW5n
IGENCj4gPj4gZHluYW1pY2FsbHkgc2l6ZWQgc2V0IG9mIHRyYWlsaW5nIGVsZW1lbnRzIGluIGEg
c3RydWN0dXJlLiBLZXJuZWwNCj4gPj4gY29kZQ0KPiA+PiBzaG91bGQgYWx3YXlzIHVzZSDigJxm
bGV4aWJsZSBhcnJheSBtZW1iZXJz4oCdWzFdIGZvciB0aGVzZSBjYXNlcy4gVGhlDQo+ID4+IG9s
ZGVyDQo+ID4+IHN0eWxlIG9mIG9uZS1lbGVtZW50IG9yIHplcm8tbGVuZ3RoIGFycmF5cyBzaG91
bGQgbm8gbG9uZ2VyIGJlDQo+ID4+IHVzZWRbMl0uDQo+ID4+DQo+ID4+IFJlZmFjdG9yIHRoZSBj
b2RlIGFjY29yZGluZyB0byB0aGUgdXNlIG9mIGEgZmxleGlibGUtYXJyYXkgbWVtYmVyIGluDQo+
ID4+IHN0cnVjdA0KPiA+PiB2aXJ0Y2hubF92c2lfcXVldWVfY29uZmlnX2luZm8gaW5zdGVhZCBv
ZiBvbmUtZWxlbWVudCBhcnJheSwgYW5kIHVzZQ0KPiA+PiB0aGUNCj4gPj4gZmxleF9hcnJheV9z
aXplKCkgaGVscGVyLg0KPiA+Pg0KPiA+PiBbMV0gaHR0cHM6Ly9lbi53aWtpcGVkaWEub3JnL3dp
a2kvRmxleGlibGVfYXJyYXlfbWVtYmVyDQo+ID4+IFsyXQ0KPiA+PiBodHRwczovL3d3dy5rZXJu
ZWwub3JnL2RvYy9odG1sL3Y1LjEwL3Byb2Nlc3MvZGVwcmVjYXRlZC5odG1sI3plcm8tDQo+IGxl
bmd0aC1hbmQtb25lLWVsZW1lbnQtYXJyYXlzDQo+ID4+DQo+ID4+IExpbms6IGh0dHBzOi8vZ2l0
aHViLmNvbS9LU1BQL2xpbnV4L2lzc3Vlcy83OQ0KPiA+PiBTaWduZWQtb2ZmLWJ5OiBHdXN0YXZv
IEEuIFIuIFNpbHZhIDxndXN0YXZvYXJzQGtlcm5lbC5vcmc+DQo+ID4+IC0tLQ0KPiA+PiAgaW5j
bHVkZS9saW51eC9hdmYvdmlydGNobmwuaCB8IDkgKysrKy0tLS0tDQo+ID4+ICAxIGZpbGUgY2hh
bmdlZCwgNCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiA+Pg0KPiA+PiBkaWZmIC0t
Z2l0IGEvaW5jbHVkZS9saW51eC9hdmYvdmlydGNobmwuaA0KPiA+PiBiL2luY2x1ZGUvbGludXgv
YXZmL3ZpcnRjaG5sLmgNCj4gPj4gaW5kZXggYjU1NDkxMzgwNGJkLi5lZDljNDk5OGY4YWMgMTAw
NjQ0DQo+ID4+IC0tLSBhL2luY2x1ZGUvbGludXgvYXZmL3ZpcnRjaG5sLmgNCj4gPj4gKysrIGIv
aW5jbHVkZS9saW51eC9hdmYvdmlydGNobmwuaA0KPiA+PiBAQCAtMzM4LDEwICszMzgsMTAgQEAg
c3RydWN0IHZpcnRjaG5sX3ZzaV9xdWV1ZV9jb25maWdfaW5mbyB7DQo+ID4+ICAJdTE2IHZzaV9p
ZDsNCj4gPj4gIAl1MTYgbnVtX3F1ZXVlX3BhaXJzOw0KPiA+PiAgCXUzMiBwYWQ7DQo+ID4+IC0J
c3RydWN0IHZpcnRjaG5sX3F1ZXVlX3BhaXJfaW5mbyBxcGFpclsxXTsNCj4gPj4gKwlzdHJ1Y3Qg
dmlydGNobmxfcXVldWVfcGFpcl9pbmZvIHFwYWlyW107DQo+ID4+ICB9Ow0KPiA+Pg0KPiA+PiAt
VklSVENITkxfQ0hFQ0tfU1RSVUNUX0xFTig3MiwgdmlydGNobmxfdnNpX3F1ZXVlX2NvbmZpZ19p
bmZvKTsNCj4gPj4gK1ZJUlRDSE5MX0NIRUNLX1NUUlVDVF9MRU4oOCwgdmlydGNobmxfdnNpX3F1
ZXVlX2NvbmZpZ19pbmZvKTsNCj4gPj4NCj4gPj4gIC8qIFZJUlRDSE5MX09QX1JFUVVFU1RfUVVF
VUVTDQo+ID4+ICAgKiBWRiBzZW5kcyB0aGlzIG1lc3NhZ2UgdG8gcmVxdWVzdCB0aGUgUEYgdG8g
YWxsb2NhdGUgYWRkaXRpb25hbA0KPiA+PiBxdWV1ZXMgdG8NCj4gPj4gQEAgLTk5Nyw5ICs5OTcs
OCBAQCB2aXJ0Y2hubF92Y192YWxpZGF0ZV92Zl9tc2coc3RydWN0DQo+ID4+IHZpcnRjaG5sX3Zl
cnNpb25faW5mbyAqdmVyLCB1MzIgdl9vcGNvZGUsDQo+ID4+ICAJCWlmIChtc2dsZW4gPj0gdmFs
aWRfbGVuKSB7DQo+ID4+ICAJCQlzdHJ1Y3QgdmlydGNobmxfdnNpX3F1ZXVlX2NvbmZpZ19pbmZv
ICp2cWMgPQ0KPiA+PiAgCQkJICAgIChzdHJ1Y3QgdmlydGNobmxfdnNpX3F1ZXVlX2NvbmZpZ19p
bmZvDQo+ID4+ICopbXNnOw0KPiA+PiAtCQkJdmFsaWRfbGVuICs9ICh2cWMtPm51bV9xdWV1ZV9w
YWlycyAqDQo+ID4+IC0JCQkJICAgICAgc2l6ZW9mKHN0cnVjdA0KPiA+PiAtCQkJCQkgICAgIHZp
cnRjaG5sX3F1ZXVlX3BhaXJfaW5mbykpDQo+ID4+IDsNCj4gPj4gKwkJCXZhbGlkX2xlbiArPSBm
bGV4X2FycmF5X3NpemUodnFjLCBxcGFpciwNCj4gPj4gKwkJCQkJCSAgICAgdnFjLQ0KPiA+Pj4g
bnVtX3F1ZXVlX3BhaXJzKTsNCj4gPg0KPiA+IFRoZSB2aXJ0Y2hubCBmaWxlIGFjdHMgYXMgYSBi
aW5hcnkgaW50ZXJmYWNlIGJldHdlZW4gcGh5c2ljYWwgYW5kDQo+ID4gdmlydHVhbCBmdW5jdGlv
bnMuIFRoZXJlJ3Mgbm8gZ3VhcnVudGVlIHRoYXQgdGhlIFBGIGFuZCBWRiB3aWxsIGJvdGgNCj4g
PiBoYXZlIHRoZSBuZXdlc3QgdmVyc2lvbi4gVGh1cyBjaGFuZ2luZyB0aGlzIHdpbGwgYnJlYWsg
Y29tcGF0aWJpbGl0eS4NCj4gPiBTcGVjaWZpY2FsbHksIHRoZSB3YXkgdGhlIHNpemUgd2FzIHZh
bGlkYXRlZCBmb3IgdGhpcyBvcCBjb2RlDQo+ID4gaW5jb3JyZWN0bHkgZXhwZWN0cyBhbiBleHRy
YSBxdWV1ZSBwYWlyIHN0cnVjdHVyZS4gU29tZSBvdGhlcg0KPiA+IHN0cnVjdHVyZXMgaGF2ZSBz
aW1pbGFyIGxlbmd0aCBjYWxjdWxhdGlvbiBmbGF3cy4gV2UgYWdyZWUgdGhhdCBmaXhpbmcNCj4g
PiB0aGlzIGlzIGltcG9ydGFudCwgYnV0IHRoZSBmaXggbmVlZHMgdG8gYWNjb3VudCB0aGF0IG9s
ZCBkcml2ZXJzIHdpbGwNCj4gPiBzZW5kIGFuIG9mZiBieSAxIHNpemUuDQo+ID4NCj4gPiBUbyBw
cm9wZXJseSBoYW5kbGUgY29tcGF0aWJpbGl0eSB3ZSBuZWVkIHRvIGludHJvZHVjZSBhIGZlYXR1
cmUgZmxhZyB0bw0KPiA+IGluZGljYXRlIHRoZSBuZXcgYmVoYXZpb3IuIElmIHRoZSBmZWF0dXJl
IGZsYWcgaXMgbm90IHNldCwgd2UgYWNjY2VwdA0KPiA+IG1lc3NhZ2VzIHdpdGggdGhlIG9sZCBm
b3JtYXQgKHdpdGggdGhlIGV4dHJhIHNpemUpLiBJZiBib3RoIHRoZSBQRiBhbmQNCj4gPiBWRiBz
dXBwb3J0IHRoZSBmZWF0dXJlIGZsYWcsIHdlJ2xsIHVzZSB0aGUgY29ycmVjdCBzaXplIGNhbGN1
bGF0aW9ucy4NCj4gPiBXZSdyZSBsb29raW5nIHRvIGFkZCB0aGlzIGFuZCB3b3VsZCBsaWtlIHRv
IGRvIGFsbCB0aGUgdmlydGNobmwNCj4gPiBzdHJ1Y3R1cmUgZml4ZXMgaW4gb25lIHNlcmllcy4N
Cj4gPg0KPiANCj4gT2ggT0ssIEkgc2VlLiBJbiB0aGlzIGNhc2UsIEkgdGhpbmsgc29tZXRoaW5n
IGxpa2UgdGhpcyBtaWdodCB3b3JrIGp1c3QNCj4gZmluZToNCj4gDQo+IGh0dHBzOi8vZ2l0Lmtl
cm5lbC5vcmcvbGludXMvYzBhNzQ0ZGNhYTI5ZTk1MzdlODYwN2FlOWM5NjVhZDkzNjEyNGE0ZA0K
PiANCj4gV2hhdCBkbyB5b3UgdGhpbms/DQo+IA0KDQpBYm91dCBoYWxmIG91ciB2aXJ0Y2hubCBz
dHJ1Y3R1cmVzIGNvcnJlY3RseSB2YWxpZGF0ZSB0aGUgbGVuZ3RoIChpLmUuIGVuZm9yY2luZyB0
aGF0IHRoZSBudW1iZXIgb2YgbWVtYmVycyBpbmNsdWRpbmcgdGhlIGltcGxpY2l0IG9uZSBhcmUg
Y29ycmVjdCkuIFRoZXJlIGFyZSBtYXliZSAzLTQgd2hpY2ggZG9uJ3QgZG8gdGhhdCBhbmQgYWNj
aWRlbnRhbGx5IGFsbG93IHNpemVzIHRoYXQgYXJlIG9mZiBieSAxIG1lbWJlci4NCg0KV2UgYmVs
aWV2ZSB0aGUgY29ycmVjdCBmaXggaXMgdG8gZml4IHRoZSBzdHJ1Y3R1cmUgZGVmaW5pdGlvbnMg
dG8gdXNlIFtdIGFuZCB0aGVuIGludHJvZHVjZSBhIFZBTElEQVRFX01TR19WMiBmZWF0dXJlIGZs
YWcgd2hpY2ggaXMgbmVnb3RpYXRlZCBieSB0aGUgVkYgaW5kaWNhdGluZyB3aGV0aGVyIGl0IHN1
cHBvcnRzIHRoaXMgYmVoYXZpb3IsIGFuZCB0aGUgUEYgcmVwbHlpbmcgdG8gVkYgaWYgaXQgc3Vw
cG9ydHMuDQoNCkluIHRoZSBjYXNlIHdoZXJlIHRoZSBWRiBkb2Vzbid0IHN1cHBvcnQgdGhpcywg
dGhlIFBGIHdpbGwgbm90aWNlIHRoaXMgYW5kIG1vZGlmeSBpdHMgbGVuZ3RoIGNhbGN1bGF0aW9u
cyBmb3IgdGhlIGhhbmRmdWwgb2YgY3VycmVudGx5IGJyb2tlbiBjaGVja3MgdG8gaW5jbHVkZSBv
bmUgZXh0cmEgbWVtYmVyLiBJbiB0aGUgY2FzZSB3aGVyZSB0aGUgVkYgc3VwcG9ydHMgdGhpcyBi
dXQgdGhlIFBGIGRvZXMgbm90LCB0aGUgVkYgbXVzdCBhbGxvY2F0ZSBleHRyYSBtZW1vcnkgYW5k
IGVuc3VyZSBpdCBwYXNzZXMgdGhlIGxhcmdlciBtZXNzYWdlIGxlbmd0aC4gSW4gdGhlIGNhc2Ug
d2hlcmUgYm90aCBQRiBhbmQgVkYgc3VwcG9ydCB0aGUgbmV3ICJmZWF0dXJlIiB3ZSdsbCBjb3Jy
ZWN0bHkgc3dpdGNoIHRvIHVzaW5nIDAgbGVuZ3RoIGZsZXhpYmxlIGFycmF5cy4NCg0KSXQncyBh
Y3R1YWxseSBldmVuIHNsaWdodGx5IG1vcmUgY29udm9sdXRlZCBiZWNhdXNlIGFub3RoZXIgMy00
IG9wcyBvbmx5IG1pcy12YWxpZGF0ZSB0aGUgc2l6ZSB3aGVuIHRoZSBsZW5ndGggb2YgdGhlIGZs
ZXhpYmxlIGFycmF5IGlzIDAuIEluIHRoYXQgY2FzZSwgdGhleSByZXF1aXJlIHRoZSBmdWxsIHNp
emUgb2YgdGhlIHN0cnVjdHVyZSwgYnV0IGluIHRoZSBjYXNlIHdoZXJlIGl0J3MgMSBvciBtb3Jl
LCB0aGV5IHJlcXVpcmUgdGhlIHNpemUgdG8gbWF0Y2ggYXMgeW91IHdvdWxkIGV4cGVjdCB3aXRo
IGEgMC1zaXplZCBhcnJheS4NCg0KSSdtIG5vdCBzdXJlIHRoZSB1bmlvbiBhcHByb2FjaCBpcyBz
dWl0YWJsZSBmb3IgdGhhdD8gV2UgYmVsaWV2ZSB0aGUgdXNlIG9mIGEgbmV3IGNhcGFiaWxpdHkg
Yml0IGlzIHRoZSBiZXN0IG1lY2hhbmlzbTogd2UgY2FuIGZpeCB0aGUgY29kZSB0byB1c2UgZmxl
eGlibGUgYXJyYXkgZGVmaW5pdGlvbnMgZXZlcnl3aGVyZSBhbmQgc2ltcGx5IGVuc3VyZSB0aGF0
IHdoZW4gY29tbXVuaWNhdGluZyB3aXRoIG9sZCBQRiBvciBWRiwgd2UgYWRkIGFkZGl0aW9uYWwg
cGFkZGluZyBhcyBuZWNlc3NhcnkgdG8gdGhlIG1lc3NhZ2UuDQoNClRoYW5rcywNCkpha2UNCiAN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
