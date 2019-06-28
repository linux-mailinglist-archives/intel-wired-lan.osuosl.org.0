Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E3E5A12A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jun 2019 18:41:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B62BB866F2;
	Fri, 28 Jun 2019 16:41:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4a56kVh2BZhM; Fri, 28 Jun 2019 16:41:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6E949866E5;
	Fri, 28 Jun 2019 16:41:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7624A1BF36D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 16:41:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 71E888820B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 16:41:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R5rC+sEEu7iv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jun 2019 16:41:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C9EAC881CC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 16:41:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jun 2019 09:41:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,428,1557212400"; d="scan'208";a="165108442"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by orsmga003.jf.intel.com with ESMTP; 28 Jun 2019 09:41:32 -0700
Received: from orsmsx125.amr.corp.intel.com (10.22.240.125) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 28 Jun 2019 09:41:32 -0700
Received: from orsmsx116.amr.corp.intel.com ([169.254.7.97]) by
 ORSMSX125.amr.corp.intel.com ([169.254.3.149]) with mapi id 14.03.0439.000;
 Fri, 28 Jun 2019 09:41:31 -0700
From: "Kaminski, Pawel" <pawel.kaminski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH S23 14/15] ice: Use smaller sized
 integer types
Thread-Index: AQHVLckUn6+xLEg8GESaavBx1HIToKaxQuUA
Date: Fri, 28 Jun 2019 16:41:31 +0000
Message-ID: <A9D51AEF55B75947B26EB5F21577182C99863193@ORSMSX116.amr.corp.intel.com>
References: <20190627144101.24280-1-anthony.l.nguyen@intel.com>
 <20190627144101.24280-14-anthony.l.nguyen@intel.com>
 <9105c11f-3101-8651-c07c-9fefbf87a841@molgen.mpg.de>
In-Reply-To: <9105c11f-3101-8651-c07c-9fefbf87a841@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNmU2NzFkYjktMDUxYy00MGJkLTlhNzQtMmNkYTE2NTY1ZmFlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoic0dyekxzbDZGUFNJUmpMdFg2RktEaW1rdjRSUTV5MjdMUFV3T0V1T2Zoc3hjUEFcL0RHc0ZoQ2FjMTlRaEZ4YU8ifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S23 14/15] ice: Use smaller sized
 integer types
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

RGVhciBQYXVsLA0KDQp0aGFuayB5b3UgZm9yIHlvdXIgY29tbWVudC4NCg0KSW5kZWVkIHBhcnQg
b2YgdGhlIGludGVudGlvbiB3YXMgdG8gZGVub3RlIHRoYXQgdGhvc2UgYXJlL3Nob3VsZCBiZSB1
bnNpZ25lZCB2YWx1ZXMuDQpBbm90aGVyIHRoaW5nIHdhcyB0byBrZWVwIHVwIHdpdGggdGhlIHR5
cGVzIG9mIHZhcmlhYmxlcyB0aG9zZSB2YWx1ZXMgY29tZSBmcm9tLg0KDQpJIGhhdmUgdG8gYWdy
ZWUgd2l0aCB5b3UgY29tbWVudCBhc3N1bWluZyB0aGlzIG1heSB1c2UgbW9yZSBtZW1vcnkgdGhh
biBzdGFuZGFyZCB1bnNpZ25lZCBpbnQuDQoNClRvIGJlIHBlcmZlY3RseSBob25lc3QgSSBkaWQg
bm90IGtub3cgdGhhdCB1MTYgd2lsbCByZXN1bHQgaW4gd29yc2UgbWVtb3J5IHVzYWdlIHRoYW4g
dWludC4NCg0KUmVnYXJkcywNClBLDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9t
OiBQYXVsIE1lbnplbCBbbWFpbHRvOnBtZW56ZWxAbW9sZ2VuLm1wZy5kZV0gDQpTZW50OiBGcmlk
YXksIEp1bmUgMjgsIDIwMTkgODo0OSBBTQ0KVG86IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255
Lmwubmd1eWVuQGludGVsLmNvbT47IEthbWluc2tpLCBQYXdlbCA8cGF3ZWwua2FtaW5za2lAaW50
ZWwuY29tPg0KQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQpTdWJqZWN0OiBS
ZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIFMyMyAxNC8xNV0gaWNlOiBVc2Ugc21hbGxlciBz
aXplZCBpbnRlZ2VyIHR5cGVzDQoNCkRlYXIgVG9ueSwgZGVhciBQYXdlbCwNCg0KDQpPbiA2LzI3
LzE5IDQ6NDEgUE0sIFRvbnkgTmd1eWVuIHdyb3RlOg0KPiBGcm9tOiBQYXdlbCBLYW1pbnNraSA8
cGF3ZWwua2FtaW5za2lAaW50ZWwuY29tPg0KPiANCj4gVGhlIG1heCBudW1iZXIgcXVldWVzIHN1
cHBvcnRlZCBieSB0aGUgZGV2aWNlIGlzIDc2ODsgd2Ugb25seSBuZWVkDQo+IGEgdTE2IHRvIHJl
cHJlc2VudCB0aGlzLg0KDQpXaGF0IGlzIHRoZSBiZW5lZml0IG9mIHRoaXM/IEl0IHdvbuKAmXQg
bWFrZSBhbnkgZGlmZmVyZW5jZSBpbiB0aGUNCmdlbmVyYXRlZCBjb2RlIHRvIG15IGtub3dsZWRn
ZSBbMV0uDQoNCk1heWJlIGp1c3QgdXNlIHVuc2lnbmVkIGludCwgaWYgeW91IHdhbnQgdG8gZGVu
b3RlIHRoYXQgbmVnYXRpdmUNCm51bWJlcnMgYXJlIG5vdCBhbGxvd2VkPw0KDQo+IFNpZ25lZC1v
ZmYtYnk6IFBhd2VsIEthbWluc2tpIDxwYXdlbC5rYW1pbnNraUBpbnRlbC5jb20+DQo+IC0tLQ0K
PiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92aXJ0Y2hubF9wZi5jIHwgMTQg
KysrKysrKy0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDcgZGVs
ZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV92aXJ0Y2hubF9wZi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV92aXJ0Y2hubF9wZi5jDQo+IGluZGV4IGYyZWJiZTgzYWU0Yy4uNzJhOWU3OWRkNzZkIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3ZpcnRjaG5sX3Bm
LmMNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92aXJ0Y2hubF9w
Zi5jDQo+IEBAIC0yMzM5LDExICsyMzM5LDExIEBAIHN0YXRpYyBpbnQgaWNlX3ZjX3JlcXVlc3Rf
cXNfbXNnKHN0cnVjdCBpY2VfdmYgKnZmLCB1OCAqbXNnKQ0KPiAgCWVudW0gdmlydGNobmxfc3Rh
dHVzX2NvZGUgdl9yZXQgPSBWSVJUQ0hOTF9TVEFUVVNfU1VDQ0VTUzsNCj4gIAlzdHJ1Y3Qgdmly
dGNobmxfdmZfcmVzX3JlcXVlc3QgKnZmcmVzID0NCj4gIAkJKHN0cnVjdCB2aXJ0Y2hubF92Zl9y
ZXNfcmVxdWVzdCAqKW1zZzsNCj4gLQlpbnQgcmVxX3F1ZXVlcyA9IHZmcmVzLT5udW1fcXVldWVf
cGFpcnM7DQo+ICsJdTE2IHJlcV9xdWV1ZXMgPSB2ZnJlcy0+bnVtX3F1ZXVlX3BhaXJzOw0KPiAg
CXN0cnVjdCBpY2VfcGYgKnBmID0gdmYtPnBmOw0KPiAtCWludCBtYXhfYWxsb3dlZF92Zl9xdWV1
ZXM7DQo+IC0JaW50IHR4X3J4X3F1ZXVlX2xlZnQ7DQo+IC0JaW50IGN1cl9xdWV1ZXM7DQo+ICsJ
dTE2IG1heF9hbGxvd2VkX3ZmX3F1ZXVlczsNCj4gKwl1MTYgdHhfcnhfcXVldWVfbGVmdDsNCj4g
Kwl1MTYgY3VyX3F1ZXVlczsNCj4gIA0KPiAgCWlmICghdGVzdF9iaXQoSUNFX1ZGX1NUQVRFX0FD
VElWRSwgdmYtPnZmX3N0YXRlcykpIHsNCj4gIAkJdl9yZXQgPSBWSVJUQ0hOTF9TVEFUVVNfRVJS
X1BBUkFNOw0KPiBAQCAtMjM1MywxMCArMjM1MywxMCBAQCBzdGF0aWMgaW50IGljZV92Y19yZXF1
ZXN0X3FzX21zZyhzdHJ1Y3QgaWNlX3ZmICp2ZiwgdTggKm1zZykNCj4gIAljdXJfcXVldWVzID0g
dmYtPm51bV92Zl9xczsNCj4gIAl0eF9yeF9xdWV1ZV9sZWZ0ID0gbWluX3QoaW50LCBwZi0+cV9s
ZWZ0X3R4LCBwZi0+cV9sZWZ0X3J4KTsNCj4gIAltYXhfYWxsb3dlZF92Zl9xdWV1ZXMgPSB0eF9y
eF9xdWV1ZV9sZWZ0ICsgY3VyX3F1ZXVlczsNCj4gLQlpZiAocmVxX3F1ZXVlcyA8PSAwKSB7DQo+
ICsJaWYgKCFyZXFfcXVldWVzKSB7DQo+ICAJCWRldl9lcnIoJnBmLT5wZGV2LT5kZXYsDQo+IC0J
CQkiVkYgJWQgdHJpZWQgdG8gcmVxdWVzdCAlZCBxdWV1ZXMuIElnbm9yaW5nLlxuIiwNCj4gLQkJ
CXZmLT52Zl9pZCwgcmVxX3F1ZXVlcyk7DQo+ICsJCQkiVkYgJWQgdHJpZWQgdG8gcmVxdWVzdCAw
IHF1ZXVlcy4gSWdub3JpbmcuXG4iLA0KPiArCQkJdmYtPnZmX2lkKTsNCj4gIAl9IGVsc2UgaWYg
KHJlcV9xdWV1ZXMgPiBJQ0VfTUFYX0JBU0VfUVNfUEVSX1ZGKSB7DQo+ICAJCWRldl9lcnIoJnBm
LT5wZGV2LT5kZXYsDQo+ICAJCQkiVkYgJWQgdHJpZWQgdG8gcmVxdWVzdCBtb3JlIHRoYW4gJWQg
cXVldWVzLlxuIiwNCg0KDQpLaW5kIHJlZ2FyZHMsDQoNClBhdWwNCg0KDQpbMV06IGh0dHA6Ly9u
b3RhYnMub3JnL2NvZGluZy9zbWFsbEludHNCaWdQZW5hbHR5Lmh0bQ0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGlu
ZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
