Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 207F43A211C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Jun 2021 02:03:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A957C40260;
	Thu, 10 Jun 2021 00:03:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M58LODiMRudD; Thu, 10 Jun 2021 00:03:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C9507401FE;
	Thu, 10 Jun 2021 00:03:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 463F31BF424
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 00:03:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 407A0401FE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 00:03:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id onPN1PNWD55T for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Jun 2021 00:03:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 917E4401FB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 00:03:41 +0000 (UTC)
IronPort-SDR: Er3RZDNu1+e3WomlqemWakRmC5ItfcChWq4isAwRSHtg7RKVZlTWiAa9snSNloEQ5vrQA0X2wb
 6gNO1bQL9PpA==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="192306914"
X-IronPort-AV: E=Sophos;i="5.83,262,1616482800"; d="scan'208";a="192306914"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 17:03:40 -0700
IronPort-SDR: yQ9XbE3ioBOMpgwBiZgmK6aoedyIUTWAc0ZsTA5XekRJtCdZrw0zFNjsgI+ak8tu720GIW71Im
 0qhQCYD+JFoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,262,1616482800"; d="scan'208";a="552848385"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga001.fm.intel.com with ESMTP; 09 Jun 2021 17:03:39 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 9 Jun 2021 17:03:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 9 Jun 2021 17:03:38 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.008;
 Wed, 9 Jun 2021 17:03:38 -0700
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Kees Cook <keescook@chromium.org>
Thread-Topic: [Intel-wired-lan] [PATCH][next] virtchnl: Replace one-element
 array in struct virtchnl_vsi_queue_config_info
Thread-Index: AQHXVAxTTpyIawm9JEKlnQyWjKRps6r5+PqA//+d+mCAEye5gP//sIJg
Date: Thu, 10 Jun 2021 00:03:38 +0000
Message-ID: <f2fe13346f1d44ee9047254a95914d00@intel.com>
References: <20210525231658.GA176466@embeddedor>
 <f3674339c0390ced22b365101f2d3e3a2bf26845.camel@intel.com>
 <85e62583-5db9-ac5c-fdf9-8e3f6a50f3fa@embeddedor.com>
 <7273a541a4864fcfb1a7ba2e105885d3@intel.com>
 <202106091424.37E833794@keescook>
In-Reply-To: <202106091424.37E833794@keescook>
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "gustavoars@kernel.org" <gustavoars@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2VlcyBDb29rIDxrZWVz
Y29va0BjaHJvbWl1bS5vcmc+DQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSAwOSwgMjAyMSAyOjQ1
IFBNDQo+IFRvOiBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4g
Q2M6IEd1c3Rhdm8gQS4gUi4gU2lsdmEgPGd1c3Rhdm9AZW1iZWRkZWRvci5jb20+OyBOZ3V5ZW4s
IEFudGhvbnkgTA0KPiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBCcmFuZGVidXJnLCBK
ZXNzZQ0KPiA8amVzc2UuYnJhbmRlYnVyZ0BpbnRlbC5jb20+OyBndXN0YXZvYXJzQGtlcm5lbC5v
cmc7IGludGVsLXdpcmVkLQ0KPiBsYW5AbGlzdHMub3N1b3NsLm9yZzsgbGludXgta2VybmVsQHZn
ZXIua2VybmVsLm9yZzsgbGludXgtDQo+IGhhcmRlbmluZ0B2Z2VyLmtlcm5lbC5vcmcNCj4gU3Vi
amVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSF1bbmV4dF0gdmlydGNobmw6IFJlcGxh
Y2Ugb25lLWVsZW1lbnQgYXJyYXkNCj4gaW4gc3RydWN0IHZpcnRjaG5sX3ZzaV9xdWV1ZV9jb25m
aWdfaW5mbw0KPiANCj4gT24gU2F0LCBNYXkgMjksIDIwMjEgYXQgMTI6MTk6NDhBTSArMDAwMCwg
S2VsbGVyLCBKYWNvYiBFIHdyb3RlOg0KPiA+DQo+ID4NCj4gPiA+IC0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tDQo+ID4gPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGludGVsLXdpcmVkLWxhbi1i
b3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiA+ID4gR3VzdGF2byBBLiBSLiBTaWx2
YQ0KPiA+ID4gU2VudDogRnJpZGF5LCBNYXkgMjgsIDIwMjEgNDowNSBQTQ0KPiA+ID4gVG86IE5n
dXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEJyYW5kZWJ1cmcs
IEplc3NlDQo+ID4gPiA8amVzc2UuYnJhbmRlYnVyZ0BpbnRlbC5jb20+OyBndXN0YXZvYXJzQGtl
cm5lbC5vcmcNCj4gPiA+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbGlu
dXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgbGludXgtDQo+ID4gPiBoYXJkZW5pbmdAdmdlci5r
ZXJuZWwub3JnDQo+ID4gPiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIXVtu
ZXh0XSB2aXJ0Y2hubDogUmVwbGFjZSBvbmUtZWxlbWVudA0KPiBhcnJheQ0KPiA+ID4gaW4gc3Ry
dWN0IHZpcnRjaG5sX3ZzaV9xdWV1ZV9jb25maWdfaW5mbw0KPiA+ID4NCj4gPiA+DQo+ID4gPg0K
PiA+ID4gT24gNS8yOC8yMSAxNjo1NiwgTmd1eWVuLCBBbnRob255IEwgd3JvdGU6DQo+ID4gPiA+
IE9uIFR1ZSwgMjAyMS0wNS0yNSBhdCAxODoxNiAtMDUwMCwgR3VzdGF2byBBLiBSLiBTaWx2YSB3
cm90ZToNCj4gPiA+ID4+IFRoZXJlIGlzIGEgcmVndWxhciBuZWVkIGluIHRoZSBrZXJuZWwgdG8g
cHJvdmlkZSBhIHdheSB0byBkZWNsYXJlDQo+ID4gPiA+PiBoYXZpbmcgYQ0KPiA+ID4gPj4gZHlu
YW1pY2FsbHkgc2l6ZWQgc2V0IG9mIHRyYWlsaW5nIGVsZW1lbnRzIGluIGEgc3RydWN0dXJlLiBL
ZXJuZWwNCj4gPiA+ID4+IGNvZGUNCj4gPiA+ID4+IHNob3VsZCBhbHdheXMgdXNlIOKAnGZsZXhp
YmxlIGFycmF5IG1lbWJlcnPigJ1bMV0gZm9yIHRoZXNlIGNhc2VzLiBUaGUNCj4gPiA+ID4+IG9s
ZGVyDQo+ID4gPiA+PiBzdHlsZSBvZiBvbmUtZWxlbWVudCBvciB6ZXJvLWxlbmd0aCBhcnJheXMg
c2hvdWxkIG5vIGxvbmdlciBiZQ0KPiA+ID4gPj4gdXNlZFsyXS4NCj4gPiA+ID4+DQo+ID4gPiA+
PiBSZWZhY3RvciB0aGUgY29kZSBhY2NvcmRpbmcgdG8gdGhlIHVzZSBvZiBhIGZsZXhpYmxlLWFy
cmF5IG1lbWJlciBpbg0KPiA+ID4gPj4gc3RydWN0DQo+ID4gPiA+PiB2aXJ0Y2hubF92c2lfcXVl
dWVfY29uZmlnX2luZm8gaW5zdGVhZCBvZiBvbmUtZWxlbWVudCBhcnJheSwgYW5kIHVzZQ0KPiA+
ID4gPj4gdGhlDQo+ID4gPiA+PiBmbGV4X2FycmF5X3NpemUoKSBoZWxwZXIuDQo+ID4gPiA+Pg0K
PiA+ID4gPj4gWzFdIGh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL0ZsZXhpYmxlX2FycmF5
X21lbWJlcg0KPiA+ID4gPj4gWzJdDQo+ID4gPiA+PiBodHRwczovL3d3dy5rZXJuZWwub3JnL2Rv
Yy9odG1sL3Y1LjEwL3Byb2Nlc3MvZGVwcmVjYXRlZC5odG1sI3plcm8tDQo+ID4gPiBsZW5ndGgt
YW5kLW9uZS1lbGVtZW50LWFycmF5cw0KPiA+ID4gPj4NCj4gPiA+ID4+IExpbms6IGh0dHBzOi8v
Z2l0aHViLmNvbS9LU1BQL2xpbnV4L2lzc3Vlcy83OQ0KPiA+ID4gPj4gU2lnbmVkLW9mZi1ieTog
R3VzdGF2byBBLiBSLiBTaWx2YSA8Z3VzdGF2b2Fyc0BrZXJuZWwub3JnPg0KPiA+ID4gPj4gLS0t
DQo+ID4gPiA+PiAgaW5jbHVkZS9saW51eC9hdmYvdmlydGNobmwuaCB8IDkgKysrKy0tLS0tDQo+
ID4gPiA+PiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkN
Cj4gPiA+ID4+DQo+ID4gPiA+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9hdmYvdmlydGNo
bmwuaA0KPiA+ID4gPj4gYi9pbmNsdWRlL2xpbnV4L2F2Zi92aXJ0Y2hubC5oDQo+ID4gPiA+PiBp
bmRleCBiNTU0OTEzODA0YmQuLmVkOWM0OTk4ZjhhYyAxMDA2NDQNCj4gPiA+ID4+IC0tLSBhL2lu
Y2x1ZGUvbGludXgvYXZmL3ZpcnRjaG5sLmgNCj4gPiA+ID4+ICsrKyBiL2luY2x1ZGUvbGludXgv
YXZmL3ZpcnRjaG5sLmgNCj4gPiA+ID4+IEBAIC0zMzgsMTAgKzMzOCwxMCBAQCBzdHJ1Y3Qgdmly
dGNobmxfdnNpX3F1ZXVlX2NvbmZpZ19pbmZvIHsNCj4gPiA+ID4+ICAJdTE2IHZzaV9pZDsNCj4g
PiA+ID4+ICAJdTE2IG51bV9xdWV1ZV9wYWlyczsNCj4gPiA+ID4+ICAJdTMyIHBhZDsNCj4gPiA+
ID4+IC0Jc3RydWN0IHZpcnRjaG5sX3F1ZXVlX3BhaXJfaW5mbyBxcGFpclsxXTsNCj4gPiA+ID4+
ICsJc3RydWN0IHZpcnRjaG5sX3F1ZXVlX3BhaXJfaW5mbyBxcGFpcltdOw0KPiA+ID4gPj4gIH07
DQo+ID4gPiA+Pg0KPiA+ID4gPj4gLVZJUlRDSE5MX0NIRUNLX1NUUlVDVF9MRU4oNzIsIHZpcnRj
aG5sX3ZzaV9xdWV1ZV9jb25maWdfaW5mbyk7DQo+ID4gPiA+PiArVklSVENITkxfQ0hFQ0tfU1RS
VUNUX0xFTig4LCB2aXJ0Y2hubF92c2lfcXVldWVfY29uZmlnX2luZm8pOw0KPiA+ID4gPj4NCj4g
PiA+ID4+ICAvKiBWSVJUQ0hOTF9PUF9SRVFVRVNUX1FVRVVFUw0KPiA+ID4gPj4gICAqIFZGIHNl
bmRzIHRoaXMgbWVzc2FnZSB0byByZXF1ZXN0IHRoZSBQRiB0byBhbGxvY2F0ZSBhZGRpdGlvbmFs
DQo+ID4gPiA+PiBxdWV1ZXMgdG8NCj4gPiA+ID4+IEBAIC05OTcsOSArOTk3LDggQEAgdmlydGNo
bmxfdmNfdmFsaWRhdGVfdmZfbXNnKHN0cnVjdA0KPiA+ID4gPj4gdmlydGNobmxfdmVyc2lvbl9p
bmZvICp2ZXIsIHUzMiB2X29wY29kZSwNCj4gPiA+ID4+ICAJCWlmIChtc2dsZW4gPj0gdmFsaWRf
bGVuKSB7DQo+ID4gPiA+PiAgCQkJc3RydWN0IHZpcnRjaG5sX3ZzaV9xdWV1ZV9jb25maWdfaW5m
byAqdnFjID0NCj4gPiA+ID4+ICAJCQkgICAgKHN0cnVjdCB2aXJ0Y2hubF92c2lfcXVldWVfY29u
ZmlnX2luZm8NCj4gPiA+ID4+ICopbXNnOw0KPiA+ID4gPj4gLQkJCXZhbGlkX2xlbiArPSAodnFj
LT5udW1fcXVldWVfcGFpcnMgKg0KPiA+ID4gPj4gLQkJCQkgICAgICBzaXplb2Yoc3RydWN0DQo+
ID4gPiA+PiAtCQkJCQkgICAgIHZpcnRjaG5sX3F1ZXVlX3BhaXJfaW5mbykpDQo+ID4gPiA+PiA7
DQo+ID4gPiA+PiArCQkJdmFsaWRfbGVuICs9IGZsZXhfYXJyYXlfc2l6ZSh2cWMsIHFwYWlyLA0K
PiA+ID4gPj4gKwkJCQkJCSAgICAgdnFjLQ0KPiA+ID4gPj4+IG51bV9xdWV1ZV9wYWlycyk7DQo+
ID4gPiA+DQo+ID4gPiA+IFRoZSB2aXJ0Y2hubCBmaWxlIGFjdHMgYXMgYSBiaW5hcnkgaW50ZXJm
YWNlIGJldHdlZW4gcGh5c2ljYWwgYW5kDQo+ID4gPiA+IHZpcnR1YWwgZnVuY3Rpb25zLiBUaGVy
ZSdzIG5vIGd1YXJ1bnRlZSB0aGF0IHRoZSBQRiBhbmQgVkYgd2lsbCBib3RoDQo+ID4gPiA+IGhh
dmUgdGhlIG5ld2VzdCB2ZXJzaW9uLiBUaHVzIGNoYW5naW5nIHRoaXMgd2lsbCBicmVhayBjb21w
YXRpYmlsaXR5Lg0KPiA+ID4gPiBTcGVjaWZpY2FsbHksIHRoZSB3YXkgdGhlIHNpemUgd2FzIHZh
bGlkYXRlZCBmb3IgdGhpcyBvcCBjb2RlDQo+ID4gPiA+IGluY29ycmVjdGx5IGV4cGVjdHMgYW4g
ZXh0cmEgcXVldWUgcGFpciBzdHJ1Y3R1cmUuIFNvbWUgb3RoZXINCj4gPiA+ID4gc3RydWN0dXJl
cyBoYXZlIHNpbWlsYXIgbGVuZ3RoIGNhbGN1bGF0aW9uIGZsYXdzLiBXZSBhZ3JlZSB0aGF0IGZp
eGluZw0KPiA+ID4gPiB0aGlzIGlzIGltcG9ydGFudCwgYnV0IHRoZSBmaXggbmVlZHMgdG8gYWNj
b3VudCB0aGF0IG9sZCBkcml2ZXJzIHdpbGwNCj4gPiA+ID4gc2VuZCBhbiBvZmYgYnkgMSBzaXpl
Lg0KPiA+ID4gPg0KPiA+ID4gPiBUbyBwcm9wZXJseSBoYW5kbGUgY29tcGF0aWJpbGl0eSB3ZSBu
ZWVkIHRvIGludHJvZHVjZSBhIGZlYXR1cmUgZmxhZyB0bw0KPiA+ID4gPiBpbmRpY2F0ZSB0aGUg
bmV3IGJlaGF2aW9yLiBJZiB0aGUgZmVhdHVyZSBmbGFnIGlzIG5vdCBzZXQsIHdlIGFjY2NlcHQN
Cj4gPiA+ID4gbWVzc2FnZXMgd2l0aCB0aGUgb2xkIGZvcm1hdCAod2l0aCB0aGUgZXh0cmEgc2l6
ZSkuIElmIGJvdGggdGhlIFBGIGFuZA0KPiA+ID4gPiBWRiBzdXBwb3J0IHRoZSBmZWF0dXJlIGZs
YWcsIHdlJ2xsIHVzZSB0aGUgY29ycmVjdCBzaXplIGNhbGN1bGF0aW9ucy4NCj4gPiA+ID4gV2Un
cmUgbG9va2luZyB0byBhZGQgdGhpcyBhbmQgd291bGQgbGlrZSB0byBkbyBhbGwgdGhlIHZpcnRj
aG5sDQo+ID4gPiA+IHN0cnVjdHVyZSBmaXhlcyBpbiBvbmUgc2VyaWVzLg0KPiA+ID4gPg0KPiA+
ID4NCj4gPiA+IE9oIE9LLCBJIHNlZS4gSW4gdGhpcyBjYXNlLCBJIHRoaW5rIHNvbWV0aGluZyBs
aWtlIHRoaXMgbWlnaHQgd29yayBqdXN0DQo+ID4gPiBmaW5lOg0KPiA+ID4NCj4gPiA+IGh0dHBz
Oi8vZ2l0Lmtlcm5lbC5vcmcvbGludXMvYzBhNzQ0ZGNhYTI5ZTk1MzdlODYwN2FlOWM5NjVhZDkz
NjEyNGE0ZA0KPiA+ID4NCj4gPiA+IFdoYXQgZG8geW91IHRoaW5rPw0KPiA+ID4NCj4gPg0KPiA+
IEFib3V0IGhhbGYgb3VyIHZpcnRjaG5sIHN0cnVjdHVyZXMgY29ycmVjdGx5IHZhbGlkYXRlIHRo
ZSBsZW5ndGggKGkuZS4gZW5mb3JjaW5nDQo+IHRoYXQgdGhlIG51bWJlciBvZiBtZW1iZXJzIGlu
Y2x1ZGluZyB0aGUgaW1wbGljaXQgb25lIGFyZSBjb3JyZWN0KS4gVGhlcmUgYXJlDQo+IG1heWJl
IDMtNCB3aGljaCBkb24ndCBkbyB0aGF0IGFuZCBhY2NpZGVudGFsbHkgYWxsb3cgc2l6ZXMgdGhh
dCBhcmUgb2ZmIGJ5IDENCj4gbWVtYmVyLg0KPiA+DQo+ID4gV2UgYmVsaWV2ZSB0aGUgY29ycmVj
dCBmaXggaXMgdG8gZml4IHRoZSBzdHJ1Y3R1cmUgZGVmaW5pdGlvbnMgdG8gdXNlIFtdIGFuZCB0
aGVuDQo+IGludHJvZHVjZSBhIFZBTElEQVRFX01TR19WMiBmZWF0dXJlIGZsYWcgd2hpY2ggaXMg
bmVnb3RpYXRlZCBieSB0aGUgVkYNCj4gaW5kaWNhdGluZyB3aGV0aGVyIGl0IHN1cHBvcnRzIHRo
aXMgYmVoYXZpb3IsIGFuZCB0aGUgUEYgcmVwbHlpbmcgdG8gVkYgaWYgaXQNCj4gc3VwcG9ydHMu
DQo+ID4NCj4gPiBJbiB0aGUgY2FzZSB3aGVyZSB0aGUgVkYgZG9lc24ndCBzdXBwb3J0IHRoaXMs
IHRoZSBQRiB3aWxsIG5vdGljZSB0aGlzIGFuZCBtb2RpZnkNCj4gaXRzIGxlbmd0aCBjYWxjdWxh
dGlvbnMgZm9yIHRoZSBoYW5kZnVsIG9mIGN1cnJlbnRseSBicm9rZW4gY2hlY2tzIHRvIGluY2x1
ZGUgb25lDQo+IGV4dHJhIG1lbWJlci4gSW4gdGhlIGNhc2Ugd2hlcmUgdGhlIFZGIHN1cHBvcnRz
IHRoaXMgYnV0IHRoZSBQRiBkb2VzIG5vdCwgdGhlIFZGDQo+IG11c3QgYWxsb2NhdGUgZXh0cmEg
bWVtb3J5IGFuZCBlbnN1cmUgaXQgcGFzc2VzIHRoZSBsYXJnZXIgbWVzc2FnZSBsZW5ndGguIElu
DQo+IHRoZSBjYXNlIHdoZXJlIGJvdGggUEYgYW5kIFZGIHN1cHBvcnQgdGhlIG5ldyAiZmVhdHVy
ZSIgd2UnbGwgY29ycmVjdGx5IHN3aXRjaA0KPiB0byB1c2luZyAwIGxlbmd0aCBmbGV4aWJsZSBh
cnJheXMuDQo+ID4NCj4gPiBJdCdzIGFjdHVhbGx5IGV2ZW4gc2xpZ2h0bHkgbW9yZSBjb252b2x1
dGVkIGJlY2F1c2UgYW5vdGhlciAzLTQgb3BzIG9ubHkgbWlzLQ0KPiB2YWxpZGF0ZSB0aGUgc2l6
ZSB3aGVuIHRoZSBsZW5ndGggb2YgdGhlIGZsZXhpYmxlIGFycmF5IGlzIDAuIEluIHRoYXQgY2Fz
ZSwgdGhleQ0KPiByZXF1aXJlIHRoZSBmdWxsIHNpemUgb2YgdGhlIHN0cnVjdHVyZSwgYnV0IGlu
IHRoZSBjYXNlIHdoZXJlIGl0J3MgMSBvciBtb3JlLCB0aGV5DQo+IHJlcXVpcmUgdGhlIHNpemUg
dG8gbWF0Y2ggYXMgeW91IHdvdWxkIGV4cGVjdCB3aXRoIGEgMC1zaXplZCBhcnJheS4NCj4gPg0K
PiA+IEknbSBub3Qgc3VyZSB0aGUgdW5pb24gYXBwcm9hY2ggaXMgc3VpdGFibGUgZm9yIHRoYXQ/
IFdlIGJlbGlldmUgdGhlIHVzZSBvZiBhDQo+IG5ldyBjYXBhYmlsaXR5IGJpdCBpcyB0aGUgYmVz
dCBtZWNoYW5pc206IHdlIGNhbiBmaXggdGhlIGNvZGUgdG8gdXNlIGZsZXhpYmxlIGFycmF5DQo+
IGRlZmluaXRpb25zIGV2ZXJ5d2hlcmUgYW5kIHNpbXBseSBlbnN1cmUgdGhhdCB3aGVuIGNvbW11
bmljYXRpbmcgd2l0aCBvbGQgUEYNCj4gb3IgVkYsIHdlIGFkZCBhZGRpdGlvbmFsIHBhZGRpbmcg
YXMgbmVjZXNzYXJ5IHRvIHRoZSBtZXNzYWdlLg0KPiANCj4gSXQgc2VlbXMgbGlrZSB0aGlzIGNh
biBhbGwgYmUgc29sdmVkIGVhc2lseSB3aXRob3V0IHZlcnNpb25pbmcgbm9yDQo+IHVuaW9ucy4g
Q3VycmVudGx5LCBWSVJUQ0hOTF9PUF9DT05GSUdfVlNJX1FVRVVFUyByZXF1aXJlcyB0aGF0ICJt
c2dsZW4iDQo+IG11c3QgYmUgdGhlIGhlYWRlciAoc3RydWN0IHZpcnRjaG5sX3ZzaV9xdWV1ZV9j
b25maWdfaW5mbykgYW5kIGF0IGxlYXN0DQo+IDEgdHJhaWxpbmcgcXBhaXIgKHN0cnVjdCB2aXJ0
Y2hubF9xdWV1ZV9wYWlyX2luZm8pLiBUaGVyZSdzIG5vIHJlYXNvbiB0bw0KPiBjaGFuZ2UgdGhp
cyByZXF1aXJlbWVudC4NCj4gDQo+IFdlIGNhbiBsZWF2ZSB0aGUgIm92ZXIgYWxsb2NhdGlvbiIg
dGhhdCBpcyBwcmVzZW50IGluDQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2
Zl92aXJ0Y2hubC5jIHRvbzoNCj4gDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3ZpcnRjaG5sLmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pYXZmL2lhdmZfdmlydGNobmwuYw0KPiBpbmRleCAwZWFiM2M0M2JkYzUuLjY2YzNk
MTQ0MmNlZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9p
YXZmX3ZpcnRjaG5sLmMNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9p
YXZmX3ZpcnRjaG5sLmMNCj4gQEAgLTI1Niw3ICsyNTYsNyBAQCB2b2lkIGlhdmZfY29uZmlndXJl
X3F1ZXVlcyhzdHJ1Y3QgaWF2Zl9hZGFwdGVyDQo+ICphZGFwdGVyKQ0KPiAgCQlyZXR1cm47DQo+
ICAJfQ0KPiAgCWFkYXB0ZXItPmN1cnJlbnRfb3AgPSBWSVJUQ0hOTF9PUF9DT05GSUdfVlNJX1FV
RVVFUzsNCj4gLQlsZW4gPSBzdHJ1Y3Rfc2l6ZSh2cWNpLCBxcGFpciwgcGFpcnMpOw0KPiArCWxl
biA9IHN0cnVjdF9zaXplKHZxY2ksIHFwYWlyLCBwYWlycyArIDEpOw0KPiAgCXZxY2kgPSBremFs
bG9jKGxlbiwgR0ZQX0tFUk5FTCk7DQo+ICAJaWYgKCF2cWNpKQ0KPiAgCQlyZXR1cm47DQo+IGRp
ZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2F2Zi92aXJ0Y2hubC5oIGIvaW5jbHVkZS9saW51eC9h
dmYvdmlydGNobmwuaA0KPiBpbmRleCA4NjEyZjhmYzg2YzEuLmQ4ZDMwZGM5OGNkMSAxMDA2NDQN
Cj4gLS0tIGEvaW5jbHVkZS9saW51eC9hdmYvdmlydGNobmwuaA0KPiArKysgYi9pbmNsdWRlL2xp
bnV4L2F2Zi92aXJ0Y2hubC5oDQo+IEBAIC0zMzgsMTAgKzMzOCwxMCBAQCBzdHJ1Y3QgdmlydGNo
bmxfdnNpX3F1ZXVlX2NvbmZpZ19pbmZvIHsNCj4gIAl1MTYgdnNpX2lkOw0KPiAgCXUxNiBudW1f
cXVldWVfcGFpcnM7DQo+ICAJdTMyIHBhZDsNCj4gLQlzdHJ1Y3QgdmlydGNobmxfcXVldWVfcGFp
cl9pbmZvIHFwYWlyWzFdOw0KPiArCXN0cnVjdCB2aXJ0Y2hubF9xdWV1ZV9wYWlyX2luZm8gcXBh
aXJbMF07DQo+ICB9Ow0KPiANCj4gLVZJUlRDSE5MX0NIRUNLX1NUUlVDVF9MRU4oNzIsIHZpcnRj
aG5sX3ZzaV9xdWV1ZV9jb25maWdfaW5mbyk7DQo+ICtWSVJUQ0hOTF9DSEVDS19TVFJVQ1RfTEVO
KDgsIHZpcnRjaG5sX3ZzaV9xdWV1ZV9jb25maWdfaW5mbyk7DQo+IA0KPiAgLyogVklSVENITkxf
T1BfUkVRVUVTVF9RVUVVRVMNCj4gICAqIFZGIHNlbmRzIHRoaXMgbWVzc2FnZSB0byByZXF1ZXN0
IHRoZSBQRiB0byBhbGxvY2F0ZSBhZGRpdGlvbmFsIHF1ZXVlcyB0bw0KPiBAQCAtOTkzLDE4ICs5
OTMsMTkgQEAgdmlydGNobmxfdmNfdmFsaWRhdGVfdmZfbXNnKHN0cnVjdA0KPiB2aXJ0Y2hubF92
ZXJzaW9uX2luZm8gKnZlciwgdTMyIHZfb3Bjb2RlLA0KPiAgCWNhc2UgVklSVENITkxfT1BfQ09O
RklHX1JYX1FVRVVFOg0KPiAgCQl2YWxpZF9sZW4gPSBzaXplb2Yoc3RydWN0IHZpcnRjaG5sX3J4
cV9pbmZvKTsNCj4gIAkJYnJlYWs7DQo+IC0JY2FzZSBWSVJUQ0hOTF9PUF9DT05GSUdfVlNJX1FV
RVVFUzoNCj4gLQkJdmFsaWRfbGVuID0gc2l6ZW9mKHN0cnVjdCB2aXJ0Y2hubF92c2lfcXVldWVf
Y29uZmlnX2luZm8pOw0KPiArCWNhc2UgVklSVENITkxfT1BfQ09ORklHX1ZTSV9RVUVVRVM6IHsN
Cj4gKwkJc3RydWN0IHZpcnRjaG5sX3ZzaV9xdWV1ZV9jb25maWdfaW5mbyAqdnFjID0NCj4gKwkJ
ICAgIChzdHJ1Y3QgdmlydGNobmxfdnNpX3F1ZXVlX2NvbmZpZ19pbmZvICopbXNnOw0KPiArDQo+
ICsJCXZhbGlkX2xlbiA9IHN0cnVjdF9zaXplKHZxYywgcXBhaXIsIDEpOw0KPiAgCQlpZiAobXNn
bGVuID49IHZhbGlkX2xlbikgew0KPiAtCQkJc3RydWN0IHZpcnRjaG5sX3ZzaV9xdWV1ZV9jb25m
aWdfaW5mbyAqdnFjID0NCj4gLQkJCSAgICAoc3RydWN0IHZpcnRjaG5sX3ZzaV9xdWV1ZV9jb25m
aWdfaW5mbyAqKW1zZzsNCj4gLQkJCXZhbGlkX2xlbiArPSAodnFjLT5udW1fcXVldWVfcGFpcnMg
Kg0KPiAtCQkJCSAgICAgIHNpemVvZihzdHJ1Y3QNCj4gLQkJCQkJICAgICB2aXJ0Y2hubF9xdWV1
ZV9wYWlyX2luZm8pKTsNCj4gKwkJCXZhbGlkX2xlbiArPSBmbGV4X2FycmF5X3NpemUodnFjLCBx
cGFpciwNCj4gKwkJCQkJCSAgICAgdnFjLT5udW1fcXVldWVfcGFpcnMpOw0KPiAgCQkJaWYgKHZx
Yy0+bnVtX3F1ZXVlX3BhaXJzID09IDApDQo+ICAJCQkJZXJyX21zZ19mb3JtYXQgPSB0cnVlOw0K
PiAgCQl9DQo+ICAJCWJyZWFrOw0KPiArCX0NCj4gIAljYXNlIFZJUlRDSE5MX09QX0NPTkZJR19J
UlFfTUFQOg0KPiAgCQl2YWxpZF9sZW4gPSBzaXplb2Yoc3RydWN0IHZpcnRjaG5sX2lycV9tYXBf
aW5mbyk7DQo+ICAJCWlmIChtc2dsZW4gPj0gdmFsaWRfbGVuKSB7DQo+IA0KPiANCj4gDQo+IFRo
ZSBhYm92ZSBpcyBhIG5vLW9wIGNoYW5nZSwgYW5kIHN3aXRjaGVzIHRvIGZsZXggYXJyYXlzLg0K
PiANCg0KSSB0aGluayB0aGVyZSBhcmUgdGhyZWUgY2FzZXMsIGJ1dCB0aGlzIGFwcHJvYWNoIHNo
b3VsZCB3b3JrIGZvciB0aGVtIGFsbDoNCg0KMSkgbWVzc2FnZXMgd2hpY2ggcmVxdWlyZSB0aGUg
ZXh0cmEgYWxsb2NhdGlvbiByZWdhcmRsZXNzIG9mIHNpemUgb2YgdGhlIGZsZXhpYmxlIGFycmF5
DQoyKSBtZXNzYWdlcyB3aGljaCBvbmx5IHJlcXVpcmUgdGhlIGV4dHJhIGFsbG9jYXRpb24gaWYg
dGhlIHNpemUgaXMgMA0KMykgbWVzc2FnZXMgd2hpY2ggZG9uJ3QgaGF2ZSB0aGlzIGlzc3VlIGJl
Y2F1c2UgYSBzaXplIG9mIDAgaXMgaW52YWxpZCBhbmQgcmVqZWN0ZWQuDQoNCkFzIGxvbmcgYXMg
d2UgZml4IHRoZW0gYWxsIHRvIGNvcnJlY3RseSBlbmZvcmNlIHRoZSAic2VuZCAxIGV4dHJhIHNp
emUiIGluIHRoZSByaWdodCBwbGFjZXMsIEkgdGhpbmsgd2UgYXJlIG9rLg0KDQo+IEFkZGl0aW9u
YWxseSwgdGhlc2Ugc2hvdWxkIGJlIGZpeGVkIGFzIHdlbGw6DQo+IA0KPiBzdHJ1Y3QgdmlydGNo
bmxfdmZfcmVzb3VyY2UNCj4gc3RydWN0IHZpcnRjaG5sX2lycV9tYXBfaW5mbw0KPiBzdHJ1Y3Qg
dmlydGNobmxfZXRoZXJfYWRkcl9saXN0DQo+IHN0cnVjdCB2aXJ0Y2hubF92bGFuX2ZpbHRlcl9s
aXN0DQo+IHN0cnVjdCB2aXJ0Y2hubF9yc3Nfa2V5DQo+IHN0cnVjdCB2aXJ0Y2hubF9yc3NfbHV0
DQo+IHN0cnVjdCB2aXJ0Y2hubF90Y19pbmZvDQo+IHN0cnVjdCB2aXJ0Y2hubF9pd2FycF9xdmxp
c3RfaW5mbw0KPiANCj4gDQo+IC0tDQo+IEtlZXMgQ29vaw0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJ
bnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
