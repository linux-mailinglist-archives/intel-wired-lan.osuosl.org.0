Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF123BDE37
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jul 2021 21:54:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4FF5A401E3;
	Tue,  6 Jul 2021 19:54:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gZvaxuVJOMY0; Tue,  6 Jul 2021 19:54:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 463CE401D7;
	Tue,  6 Jul 2021 19:54:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BFA291BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jul 2021 19:54:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BAFD0401D7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jul 2021 19:54:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kG9Tz3TSZU38 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jul 2021 19:54:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E142C401CF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jul 2021 19:54:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="209228102"
X-IronPort-AV: E=Sophos;i="5.83,329,1616482800"; d="scan'208";a="209228102"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 12:54:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,329,1616482800"; d="scan'208";a="410340221"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga006.jf.intel.com with ESMTP; 06 Jul 2021 12:54:50 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 6 Jul 2021 12:54:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 6 Jul 2021 12:54:49 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.010;
 Tue, 6 Jul 2021 12:54:49 -0700
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [net-next 04/13] ice: restart periodic outputs
 around time changes
Thread-Index: AQHXbg/b4NXz4SyGm0aLaw0HeYSpFKs0fpYAgAHmsgA=
Date: Tue, 6 Jul 2021 19:54:48 +0000
Message-ID: <f1e78a778b994402b0a85ad59592a426@intel.com>
References: <20210701002713.3486336-1-jacob.e.keller@intel.com>
 <20210701002713.3486336-5-jacob.e.keller@intel.com>
 <29cb4977-3559-094c-cc18-d2d32819e227@molgen.mpg.de>
In-Reply-To: <29cb4977-3559-094c-cc18-d2d32819e227@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [net-next 04/13] ice: restart periodic
 outputs around time changes
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUGF1bCBNZW56ZWwgPHBt
ZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gU2VudDogTW9uZGF5LCBKdWx5IDA1LCAyMDIxIDEyOjUy
IEFNDQo+IFRvOiBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4g
Q2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+IFN1YmplY3Q6IFJlOiBbSW50
ZWwtd2lyZWQtbGFuXSBbbmV0LW5leHQgMDQvMTNdIGljZTogcmVzdGFydCBwZXJpb2RpYyBvdXRw
dXRzIGFyb3VuZA0KPiB0aW1lIGNoYW5nZXMNCj4gDQo+IERlYXIgSmFjb2IsDQo+IA0KPiANCj4g
QW0gMDEuMDcuMjEgdW0gMDI6Mjcgc2NocmllYiBKYWNvYiBLZWxsZXI6DQo+ID4gV2VuIHdlIGVu
YWJsZWQgYXV4aWxpYXJ5IGlucHV0L291dHB1dCBzdXBwb3J0IGZvciB0aGUgRTgxMCBkZXZpY2Us
IHdlDQo+IA0KPiBXaGVuDQo+IA0KPiA+IGZvcmdvdCB0byBhZGQgbG9naWMgdG8gcmVzdGFydCB0
aGUgb3V0cHV0IHdoZW4gd2UgY2hhbmdlIHRpbWUuIFRoaXMgaXMNCj4gPiBpbXBvcnRhbnQgYXMg
dGhlIHBlcmlvZGljIG91dHB1dCB3aWxsIGJlIGluY29ycmVjdCBhZnRlciBhIHRpbWUgY2hhbmdl
DQo+ID4gb3RoZXJ3aXNlLg0KPiA+DQo+ID4gVGhpcyB1bmZvcnR1bmF0ZWx5IGluY2x1ZGVzIHRo
ZSBhZGp1c3QgdGltZSBmdW5jdGlvbiwgZXZlbiB0aG91Z2ggaXQNCj4gPiB1c2VzIGFuIGF0b21p
YyBoYXJkd2FyZSBpbnRlcmZhY2UuIFRoZSBhdG9taWMgYWRqdXN0bWVudCBjYW4gc3RpbGwgY2F1
c2UNCj4gPiB0aGUgcGluIG91dHB1dCB0byBzdGFsbCBwZXJtYW5lbnRseSwgc28gd2UgbmVlZCB0
byBzdG9wIGFuZCByZXN0YXJ0IGl0Lg0KPiA+DQo+ID4gRml4ZXM6IDE3MmRiNWY5MWQ1ZiAoImlj
ZTogYWRkIHN1cHBvcnQgZm9yIGF1eGlsaWFyeSBpbnB1dC9vdXRwdXQgcGlucyIpDQo+ID4gU2ln
bmVkLW9mZi1ieTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+ID4g
LS0tDQo+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cC5jIHwgMzAg
KysrKysrKysrKysrKysrKysrKysrKysrDQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMzAgaW5zZXJ0
aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2VfcHRwLmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0
cC5jDQo+ID4gaW5kZXggODNiYTBiZjI4MTdhLi4wOGFjZGIyNDk0ZWQgMTAwNjQ0DQo+ID4gLS0t
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuYw0KPiA+ICsrKyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwLmMNCj4gPiBAQCAtNzc2LDYgKzc3
Niw3IEBAIGljZV9wdHBfc2V0dGltZTY0KHN0cnVjdCBwdHBfY2xvY2tfaW5mbyAqaW5mbywgY29u
c3QNCj4gc3RydWN0IHRpbWVzcGVjNjQgKnRzKQ0KPiA+ICAgCXN0cnVjdCBpY2VfcGYgKnBmID0g
cHRwX2luZm9fdG9fcGYoaW5mbyk7DQo+ID4gICAJc3RydWN0IHRpbWVzcGVjNjQgdHM2NCA9ICp0
czsNCj4gPiAgIAlzdHJ1Y3QgaWNlX2h3ICpodyA9ICZwZi0+aHc7DQo+ID4gKwl1OCBpOw0KPiAN
Cj4gRm9yIGNvdW50IHZhcmlhYmxlcywgaXTigJlzIGJldHRlciB0byB1c2UgbmF0aXZlIHR5cGVz
LCBzaXplX3QvdW5zaWduZWQNCj4gaW50IGluIHRoaXMgY2FzZS4NCj4gDQoNClN1cmUuDQoNCj4g
ICAgICBzdGF0aWMgaW50IGljZV9wdHBfY2ZnX2Nsa291dChzdHJ1Y3QgaWNlX3BmICpwZiwgdW5z
aWduZWQgaW50IGNoYW4sDQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3Ry
dWN0IGljZV9wZXJvdXRfY2hhbm5lbCAqY29uZmlnLA0KPiBib29sIHN0b3JlKQ0KPiANCj4gPiAg
IAlpbnQgZXJyOw0KPiA+DQo+ID4gICAJaWYgKCFpY2VfcHRwX2xvY2soaHcpKSB7DQo+ID4gQEAg
LTc4MywxMiArNzg0LDIyIEBAIGljZV9wdHBfc2V0dGltZTY0KHN0cnVjdCBwdHBfY2xvY2tfaW5m
byAqaW5mbywgY29uc3QNCj4gc3RydWN0IHRpbWVzcGVjNjQgKnRzKQ0KPiA+ICAgCQlnb3RvIGV4
aXQ7DQo+ID4gICAJfQ0KPiA+DQo+ID4gKwkvKiBEaXNhYmxlIHBlcmlvZGljIG91dHB1dHMgKi8N
Cj4gPiArCWZvciAoaSA9IDA7IGkgPCBpbmZvLT5uX3Blcl9vdXQ7IGkrKykNCj4gPiArCQlpZiAo
cGYtPnB0cC5wZXJvdXRfY2hhbm5lbHNbaV0uZW5hKQ0KPiA+ICsJCQlpY2VfcHRwX2NmZ19jbGtv
dXQocGYsIGksIE5VTEwsIGZhbHNlKTsNCj4gPiArDQo+ID4gICAJZXJyID0gaWNlX3B0cF93cml0
ZV9pbml0KHBmLCAmdHM2NCk7DQo+ID4gICAJaWNlX3B0cF91bmxvY2soaHcpOw0KPiA+DQo+ID4g
ICAJaWYgKCFlcnIpDQo+ID4gICAJCWljZV9wdHBfdXBkYXRlX2NhY2hlZF9waGN0aW1lKHBmKTsN
Cj4gPg0KPiA+ICsJLyogUmVlbmFibGUgcGVyaW9kaWMgb3V0cHV0cyAqLw0KPiA+ICsJZm9yIChp
ID0gMDsgaSA8IGluZm8tPm5fcGVyX291dDsgaSsrKQ0KPiA+ICsJCWlmIChwZi0+cHRwLnBlcm91
dF9jaGFubmVsc1tpXS5lbmEpDQo+ID4gKwkJCWljZV9wdHBfY2ZnX2Nsa291dChwZiwgaSwgJnBm
LT5wdHAucGVyb3V0X2NoYW5uZWxzW2ldLA0KPiA+ICsJCQkJCSAgIGZhbHNlKTsNCj4gPiAgIGV4
aXQ6DQo+ID4gICAJaWYgKGVycikgew0KPiA+ICAgCQlkZXZfZXJyKGljZV9wZl90b19kZXYocGYp
LCAiUFRQIGZhaWxlZCB0byBzZXQgdGltZSAlZFxuIiwgZXJyKTsNCj4gPiBAQCAtODI1LDYgKzgz
Niw3IEBAIHN0YXRpYyBpbnQgaWNlX3B0cF9hZGp0aW1lKHN0cnVjdCBwdHBfY2xvY2tfaW5mbyAq
aW5mbywNCj4gczY0IGRlbHRhKQ0KPiA+ICAgCXN0cnVjdCBpY2VfaHcgKmh3ID0gJnBmLT5odzsN
Cj4gPiAgIAlzdHJ1Y3QgZGV2aWNlICpkZXY7DQo+ID4gICAJaW50IGVycjsNCj4gPiArCXU4IGk7
DQo+ID4NCj4gPiAgIAlkZXYgPSBpY2VfcGZfdG9fZGV2KHBmKTsNCj4gPg0KPiA+IEBAIC04NDIs
OCArODU0LDE5IEBAIHN0YXRpYyBpbnQgaWNlX3B0cF9hZGp0aW1lKHN0cnVjdCBwdHBfY2xvY2tf
aW5mbyAqaW5mbywNCj4gczY0IGRlbHRhKQ0KPiA+ICAgCQlyZXR1cm4gLUVCVVNZOw0KPiA+ICAg
CX0NCj4gPg0KPiA+ICsJLyogRGlzYWJsZSBwZXJpb2RpYyBvdXRwdXRzICovDQo+ID4gKwlmb3Ig
KGkgPSAwOyBpIDwgaW5mby0+bl9wZXJfb3V0OyBpKyspDQo+ID4gKwkJaWYgKHBmLT5wdHAucGVy
b3V0X2NoYW5uZWxzW2ldLmVuYSkNCj4gPiArCQkJaWNlX3B0cF9jZmdfY2xrb3V0KHBmLCBpLCBO
VUxMLCBmYWxzZSk7DQo+ID4gKw0KPiA+ICAgCWVyciA9IGljZV9wdHBfd3JpdGVfYWRqKHBmLCBk
ZWx0YSk7DQo+ID4NCj4gPiArCS8qIFJlZW5hYmxlIHBlcmlvZGljIG91dHB1dHMgKi8NCj4gPiAr
CWZvciAoaSA9IDA7IGkgPCBpbmZvLT5uX3Blcl9vdXQ7IGkrKykNCj4gPiArCQlpZiAocGYtPnB0
cC5wZXJvdXRfY2hhbm5lbHNbaV0uZW5hKQ0KPiA+ICsJCQlpY2VfcHRwX2NmZ19jbGtvdXQocGYs
IGksICZwZi0+cHRwLnBlcm91dF9jaGFubmVsc1tpXSwNCj4gPiArCQkJCQkgICBmYWxzZSk7DQo+
ID4gKw0KPiA+ICAgCWljZV9wdHBfdW5sb2NrKGh3KTsNCj4gPg0KPiA+ICAgCWlmIChlcnIpIHsN
Cj4gPiBAQCAtMTUyNiw2ICsxNTQ5LDggQEAgdm9pZCBpY2VfcHRwX2luaXQoc3RydWN0IGljZV9w
ZiAqcGYpDQo+ID4gICAgKi8NCj4gPiAgIHZvaWQgaWNlX3B0cF9yZWxlYXNlKHN0cnVjdCBpY2Vf
cGYgKnBmKQ0KPiA+ICAgew0KPiA+ICsJaW50IGk7DQo+ID4gKw0KPiA+ICAgCS8qIERpc2FibGUg
dGltZXN0YW1waW5nIGZvciBib3RoIFR4IGFuZCBSeCAqLw0KPiA+ICAgCWljZV9wdHBfY2ZnX3Rp
bWVzdGFtcChwZiwgZmFsc2UpOw0KPiA+DQo+ID4gQEAgLTE1NDMsNiArMTU2OCwxMSBAQCB2b2lk
IGljZV9wdHBfcmVsZWFzZShzdHJ1Y3QgaWNlX3BmICpwZikNCj4gPiAgIAlpZiAoIXBmLT5wdHAu
Y2xvY2spDQo+ID4gICAJCXJldHVybjsNCj4gPg0KPiA+ICsJLyogRGlzYWJsZSBwZXJpb2RpYyBv
dXRwdXRzICovDQo+ID4gKwlmb3IgKGkgPSAwOyBpIDwgcGYtPnB0cC5pbmZvLm5fcGVyX291dDsg
aSsrKQ0KPiA+ICsJCWlmIChwZi0+cHRwLnBlcm91dF9jaGFubmVsc1tpXS5lbmEpDQo+ID4gKwkJ
CWljZV9wdHBfY2ZnX2Nsa291dChwZiwgaSwgTlVMTCwgZmFsc2UpOw0KPiA+ICsNCj4gDQo+IENv
dWxkIHRoaXMgYmUgcHV0IGludG8gYSBkZWRpY2F0ZWQgZW5hYmxlL2Rpc2FibGUgZnVuY3Rpb24g
KG9ubHkgcGYNCj4gc2VlbXMgdG8gYmUgbmVlZGVkIHRvIGJlIHBhc3NlZCkuDQo+IA0KDQpZZWEg
dGhhdCBzZWVtcyBsaWtlIGEgZ29vZCBjbGVhbnVwLg0KDQo+ID4gICAJaWNlX2NsZWFyX3B0cF9j
bG9ja19pbmRleChwZik7DQo+ID4gICAJcHRwX2Nsb2NrX3VucmVnaXN0ZXIocGYtPnB0cC5jbG9j
ayk7DQo+ID4gICAJcGYtPnB0cC5jbG9jayA9IE5VTEw7DQo+IA0KPiANCj4gS2luZCByZWdhcmRz
LA0KPiANCj4gUGF1bA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3Ns
Lm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJl
ZC1sYW4K
