Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 68AF3325A9D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Feb 2021 01:16:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE5B66F943;
	Fri, 26 Feb 2021 00:16:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1xj6fw1C_Fwq; Fri, 26 Feb 2021 00:16:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BCE276F937;
	Fri, 26 Feb 2021 00:16:00 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D495D1BF2A9
 for <intel-wired-lan@osuosl.org>; Fri, 26 Feb 2021 00:15:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C340A6F937
 for <intel-wired-lan@osuosl.org>; Fri, 26 Feb 2021 00:15:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FB-gWIOh0hG5 for <intel-wired-lan@osuosl.org>;
 Fri, 26 Feb 2021 00:15:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F3FE66F936
 for <intel-wired-lan@osuosl.org>; Fri, 26 Feb 2021 00:15:54 +0000 (UTC)
IronPort-SDR: fsLNJcKC96Q01B5a1BmPiH8fI4ittZXUDZYr+0tqi7pitwwDyWmr7r6oRMAy3Orum/3RwvVmB9
 CfHKSC1kWxtA==
X-IronPort-AV: E=McAfee;i="6000,8403,9906"; a="185777465"
X-IronPort-AV: E=Sophos;i="5.81,207,1610438400"; d="scan'208";a="185777465"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2021 16:15:53 -0800
IronPort-SDR: 0l8w4WUEGV/fmTBg9vJf1jRty6TyuIDc4x0cuHxzNePSkmWF5F/ux50UBnx6lZ4PL4Ye1pWzzy
 9y/YtBo9q3hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,207,1610438400"; d="scan'208";a="404631819"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by orsmga008.jf.intel.com with ESMTP; 25 Feb 2021 16:15:52 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 26 Feb 2021 00:15:51 +0000
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.002;
 Thu, 25 Feb 2021 16:15:49 -0800
From: "Joseph, Jithu" <jithu.joseph@intel.com>
To: "bjorn.topel@gmail.com" <bjorn.topel@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH v4 4/9] igc: Refactor XDP rxq info
 registration
Thread-Index: AQHXCPpE846ObnfLtUqtK9aCGftabapkb4kAgAWtroA=
Date: Fri, 26 Feb 2021 00:15:49 +0000
Message-ID: <2114695f7949bf5d94dea6e6a04c44c226fcf8a8.camel@intel.com>
References: <20210222090936.6768-1-jithu.joseph@intel.com>
 <20210222090936.6768-5-jithu.joseph@intel.com>
 <CAJ+HfNhx5LhsS++sFxq2w50gmsnVd2QeXT35ZFVPwvaixbnPAQ@mail.gmail.com>
In-Reply-To: <CAJ+HfNhx5LhsS++sFxq2w50gmsnVd2QeXT35ZFVPwvaixbnPAQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.4-0ubuntu1 
x-originating-ip: [10.1.200.100]
Content-ID: <315CEB7365F0174EA0C437553D60E374@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v4 4/9] igc: Refactor XDP rxq info
 registration
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 "andre.guedes@intel.com" <andre.guedes@intel.com>, "Topel,
 Bjorn" <bjorn.topel@intel.com>, "Karlsson, Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCAyMDIxLTAyLTIyIGF0IDEwOjMyICswMTAwLCBCasO2cm4gVMO2cGVsIHdyb3RlOg0K
PiBPbiBNb24sIDIyIEZlYiAyMDIxIGF0IDEwOjA4LCBKaXRodSBKb3NlcGggPGppdGh1Lmpvc2Vw
aEBpbnRlbC5jb20+DQo+IHdyb3RlOg0KPiA+IEZyb206IEFuZHJlIEd1ZWRlcyA8YW5kcmUuZ3Vl
ZGVzQGludGVsLmNvbT4NCj4gPiANCj4gPiBSZWZhY3RvciBYRFAgcnhxIGluZm8gcmVnaXN0cmF0
aW9uIGNvZGUsIHByZXBhcmluZyB0aGUgZHJpdmVyIGZvcg0KPiA+IEFGX1hEUA0KPiA+IHplcm8t
Y29weSBzdXBwb3J0IHdoaWNoIGlzIGFkZGVkIGJ5IHVwY29taW5nIHBhdGNoZXMuDQo+ID4gDQo+
ID4gQ3VycmVudGx5LCB4ZHBfcnhxIGFuZCBtZW1vcnkgbW9kZWwgYXJlIGJvdGggcmVnaXN0ZXJl
ZCBkdXJpbmcgUlgNCj4gPiByZXNvdXJjZSBzZXR1cCB0aW1lIGJ5IGlnY194ZHBfcmVnaXN0ZXJf
cnhxX2luZm8oKSBoZWxwZXIuIFdpdGgNCj4gPiBBRl9YRFAsDQo+ID4gd2Ugd2FudCB0byByZWdp
c3RlciB0aGUgbWVtb3J5IG1vZGVsIGxhdGVyIG9uIHdoaWxlIGNvbmZpZ3VyaW5nIHRoZQ0KPiA+
IHJpbmcNCj4gPiBiZWNhdXNlIHdlIHdpbGwga25vdyB3aGljaCBtZW1vcnkgbW9kZWwgdHlwZSB0
byByZWdpc3Rlcg0KPiA+IChNRU1fVFlQRV9QQUdFX1NIQVJFRCBvciBNRU1fVFlQRV9YU0tfQlVG
Rl9QT09MKS4NCj4gPiANCj4gPiBUaGUgaGVscGVycyBpZ2NfeGRwX3JlZ2lzdGVyX3J4cV9pbmZv
KCkgYW5kIGlnY194ZHBfdW5yZWdpc3Rlcl9yeHFfDQo+ID4gaW5mbygpIGFyZSBub3QgdXNlZnVs
IGFueW1vcmUgc28gdGhleSBhcmUgcmVtb3ZlZC4NCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBB
bmRyZSBHdWVkZXMgPGFuZHJlLmd1ZWRlc0BpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTog
VmVkYW5nIFBhdGVsIDx2ZWRhbmcucGF0ZWxAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6
IEppdGh1IEpvc2VwaCA8aml0aHUuam9zZXBoQGludGVsLmNvbT4NCj4gPiBSZXZpZXdlZC1ieTog
TWFjaWVqIEZpamFsa293c2tpIDxtYWNpZWouZmlqYWxrb3dza2lAaW50ZWwuY29tPg0KPiA+IC0t
LQ0KPiA+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYyB8IDE1ICsr
KysrKysrKy0tLS0NCj4gPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY194ZHAu
YyAgfCAyNyAtLS0tLS0tLS0tLS0tLS0tLQ0KPiA+IC0tLS0tLQ0KPiA+ICBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3hkcC5oICB8ICAzIC0tLQ0KPiA+ICAzIGZpbGVzIGNoYW5n
ZWQsIDExIGluc2VydGlvbnMoKyksIDM0IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYw0KPiA+IGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMNCj4gPiBpbmRleCBiYzA4NmQy
ZjczOGIuLjI2MjA4NDQxYWFkMyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2MvaWdjX21haW4uYw0KPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2lnYy9pZ2NfbWFpbi5jDQo+ID4gQEAgLTQxOSw3ICs0MTksNyBAQCB2b2lkIGlnY19mcmVl
X3J4X3Jlc291cmNlcyhzdHJ1Y3QgaWdjX3JpbmcNCj4gPiAqcnhfcmluZykNCj4gPiAgew0KPiA+
ICAgICAgICAgaWdjX2NsZWFuX3J4X3JpbmcocnhfcmluZyk7DQo+ID4gDQo+ID4gLSAgICAgICBp
Z2NfeGRwX3VucmVnaXN0ZXJfcnhxX2luZm8ocnhfcmluZyk7DQo+ID4gKyAgICAgICB4ZHBfcnhx
X2luZm9fdW5yZWcoJnJ4X3JpbmctPnhkcF9yeHEpOw0KPiA+IA0KPiA+ICAgICAgICAgdmZyZWUo
cnhfcmluZy0+cnhfYnVmZmVyX2luZm8pOw0KPiA+ICAgICAgICAgcnhfcmluZy0+cnhfYnVmZmVy
X2luZm8gPSBOVUxMOw0KPiA+IEBAIC00NTgsMTEgKzQ1OCwxNSBAQCBpbnQgaWdjX3NldHVwX3J4
X3Jlc291cmNlcyhzdHJ1Y3QgaWdjX3JpbmcNCj4gPiAqcnhfcmluZykNCj4gPiAgew0KPiA+ICAg
ICAgICAgc3RydWN0IG5ldF9kZXZpY2UgKm5kZXYgPSByeF9yaW5nLT5uZXRkZXY7DQo+ID4gICAg
ICAgICBzdHJ1Y3QgZGV2aWNlICpkZXYgPSByeF9yaW5nLT5kZXY7DQo+ID4gKyAgICAgICB1OCBp
bmRleCA9IHJ4X3JpbmctPnF1ZXVlX2luZGV4Ow0KPiA+ICAgICAgICAgaW50IHNpemUsIGRlc2Nf
bGVuLCByZXM7DQo+ID4gDQo+ID4gLSAgICAgICByZXMgPSBpZ2NfeGRwX3JlZ2lzdGVyX3J4cV9p
bmZvKHJ4X3JpbmcpOw0KPiA+IC0gICAgICAgaWYgKHJlcyA8IDApDQo+ID4gKyAgICAgICByZXMg
PSB4ZHBfcnhxX2luZm9fcmVnKCZyeF9yaW5nLT54ZHBfcnhxLCBuZGV2LCBpbmRleCwgMCk7DQo+
IA0KPiBUaGFua3MgZm9yIHdvcmtpbmcgb24gQUZfWERQIFpDIHN1cHBvcnQhDQo+IA0KPiBUaGUg
bGFzdCBhcmd1bWVudCBpcyB0aGUgbmFwaV9pZC4gU2V0dGluZyB0aGlzIHRvIDAsIG1lYW5zIHRo
YXQgdGhlDQo+IG5hcGlfaWQgaXMgdW5rbm93bi9ub3QgYXZhaWxhYmxlIGF0IHRoaXMgcG9pbnQu
IEl0IGFsc28gbWVhbnMgdGhhdA0KPiB0aGUNCj4gQUZfWERQIGJ1c3ktcG9sbGluZyB1c2luZyBw
cmVmZXJyZWQgYnVzeS1wb2xsaW5nIFsxXSB3aWxsIG5vdCB3b3JrLg0KPiBJZg0KPiB0aGUgbmFw
aSBpcyByZWdpc3RlcmVkIGF0IHRoaXMgcG9pbnQsIHBsZWFzZSBwYXNzOg0KPiByeF9yaW5nLT5x
X3ZlY3Rvci0+bmFwaS5uYXBpX2lkIGluc3RlYWQgb2YgMCENCg0KVGhhbmtzIGZvciByZXZpZXdp
bmcgdGhlIHBhdGNoIGFuZCBzdWdnZXN0aW5nIHRoZSBjaGFuZ2UuIEkgaGF2ZQ0KcmV2aXNlZCB0
aGUgc2VyaWVzIHdpdGggdGhpcyBjaGFuZ2UgKGluIHY1KSBhZnRlciB2ZXJpZnlpbmcgdGhhdA0K
bmFwaV9pZCBpcyBhdmFpbGFibGUgYXQgdGhpcyBwb2ludC4NCihBbHNvIGFwb2xvZ2llcyBmb3Ig
dGhlIGRlbGF5IGFzIEkgYW0gc3RpbGwgcmFtcGluZyB1cCBvbiB0aGUgZHJpdmVyDQphbmQgWERQ
KQ0KDQoNClRoYW5rcw0KSml0aHUNCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVk
LWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLXdpcmVkLWxhbgo=
