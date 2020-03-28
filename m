Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DED196533
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Mar 2020 11:56:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D1DC4875AD;
	Sat, 28 Mar 2020 10:56:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id syoz49HNz9CZ; Sat, 28 Mar 2020 10:56:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C9541875DD;
	Sat, 28 Mar 2020 10:56:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1B8311BF45A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Mar 2020 10:56:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 11E9E207A9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Mar 2020 10:56:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CZd9mJ3urbpB for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 Mar 2020 10:56:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [207.82.80.151])
 by silver.osuosl.org (Postfix) with ESMTPS id A79B52049D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Mar 2020 10:56:04 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-158-PrCUR8dHPimdEQBmJZmudQ-1; Sat, 28 Mar 2020 10:56:00 +0000
X-MC-Unique: PrCUR8dHPimdEQBmJZmudQ-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Sat, 28 Mar 2020 10:55:59 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Sat, 28 Mar 2020 10:55:59 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Kai-Heng Feng' <kai.heng.feng@canonical.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH] e1000e: bump up timeout to wait when
 ME un-configure ULP mode
Thread-Index: AQHWA2Hq7bFb0rGzkE6PnS/BmYqrOahd1i6w
Date: Sat, 28 Mar 2020 10:55:59 +0000
Message-ID: <8fa6ec1ce4ad4b89ae68107a55ce2381@AcuMS.aculab.com>
References: <20200323191639.48826-1-aaron.ma@canonical.com>
 <EC4F7F0B-90F8-4325-B170-84C65D8BBBB8@canonical.com>
 <2c765c59-556e-266b-4d0d-a4602db94476@intel.com>
 <899895bc-fb88-a97d-a629-b514ceda296d@canonical.com>
 <750ad0ad-816a-5896-de2f-7e034d2a2508@intel.com>
 <f9dc1980-fa8b-7df9-6460-b0944c7ebc43@molgen.mpg.de>
 <60A8493D-811B-4AD5-A8D3-82054B562A8C@canonical.com>
In-Reply-To: <60A8493D-811B-4AD5-A8D3-82054B562A8C@canonical.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: bump up timeout to wait when
 ME un-configure ULP mode
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, David
 Miller <davem@davemloft.net>, Rex Tsai <rex.tsai@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogS2FpLUhlbmcgRmVuZw0KPiBTZW50OiAyNiBNYXJjaCAyMDIwIDExOjMwDQouLi4NCj4g
PiBSZWdhcmRpbmcgSW50ZWwgTWFuYWdlbWVudCBFbmdpbmUsIG9ubHkgSW50ZWwga25vd3Mgd2hh
dCBpdCBkb2VzIGFuZCB3aGF0IHRoZSBlcnJvciBpcywgYXMgdGhlIE1FDQo+IGZpcm13YXJlIGlz
IHByb3ByaWV0YXJ5IGFuZCBjbG9zZWQuDQo+ID4NCj4gPiBMYXN0bHksIHRoZXJlIGlzIG5vIHdh
eSB0byBmdWxseSBkaXNhYmxlIHRoZSBJbnRlbCBNYW5hZ2VtZW50IEVuZ2luZS4NCj4gPiBUaGUg
SEFQIHN0dWZmIGNsYWltcyB0byBzdG9wDQo+ID4gdGhlIEludGVsIE1FIGV4ZWN1dGlvbiwgYnV0
IG5vYm9keSBrbm93cywgaWYgaXTigJlzIHN1Y2Nlc3NmdWwuDQoNClRoaXMgaXNuJ3QgdGhlIG9u
bHkgJ2J1ZycgY2F1c2VkIGJ5IHRoZSBNRSBsb2dpYy4NCg0KU29tZSBzeXN0ZW1zIG9jY2FzaW9u
YWxseSBzcGluIGZvciBtYW55IG11bHRpcGxlcyBvZiA1MHVzIG9uIGFueQ0Kd3JpdGUgdG8gYW55
IE1BQyByZWdpc3RlciAtIGVnIHRvIGluZGljYXRlIHRoZXJlIGlzIGEgcGFja2V0IHRvIHR4Lg0K
DQpJIHJlYWxseSBkb24ndCB1bmRlcnN0YW5kIFdURiB0aGlzIE1FIGlzIHBsYXlpbmcgYXQgb24g
YW4gdW5tYW5hZ2VkDQpkZXNrdG9wIHN5c3RlbSAtIGlmIGl0IHJlY2VpdmVzIG9yIHNlbmRzIGEg
cGFja2V0IGl0IGlzIG1vc3QgbGlrZWx5DQp0byBiZSBzb21lIGtpbmQgb2Ygc2VjdXJpdHkgYXR0
YWNrLg0KSSdtIG5vdCBldmVuIHN1cmUgaXQgbmVlZHMgYWNjZXNzIGR1cmluZyB0aGUgYm9vdCBz
ZXF1ZW5jZS4NCk1heWJlIHRoZXJlIGFyZSBzb21lIGZlYXR1cmVzIHRvIGdldCB0aGUgY29uc29s
ZSBvdXRwdXQgb3Zlcg0KZXRoZXJuZXQgLSBidXQgdGhleSBoYXZlIHRvIGJlIGVuYWJsZWQgaW4g
dGhlIEJJT1MuDQoNCldlIGhhdmUgc29tZSBzbWFsbCBzZXJ2ZXIgYm9hcmRzIChmb3IgMVUgc3lz
dGVtcykgdGhhdCBoYXZlIGENCnNlcGFyYXRlIGV0aGVybmV0IGludGVyZmFjZSBmb3IgKEkgdGhp
bmspIHRoZSBNRSBjb2RlLg0KQmV0dGVyIC0gZXhjZXB0IHlvdSBwbHVnIGEgY2FibGUgaW4gYW5k
IHdvbmRlciB3aHkgaXMgZG9lc24ndCB3b3JrLg0KDQoJRGF2aWQNCg0KLQ0KUmVnaXN0ZXJlZCBB
ZGRyZXNzIExha2VzaWRlLCBCcmFtbGV5IFJvYWQsIE1vdW50IEZhcm0sIE1pbHRvbiBLZXluZXMs
IE1LMSAxUFQsIFVLDQpSZWdpc3RyYXRpb24gTm86IDEzOTczODYgKFdhbGVzKQ0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1h
aWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9z
bC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
