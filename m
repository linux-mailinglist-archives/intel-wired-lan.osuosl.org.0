Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D07A4C80DB
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Mar 2022 03:15:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C49F60E61;
	Tue,  1 Mar 2022 02:15:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lESAZztrhZ0i; Tue,  1 Mar 2022 02:15:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9115D60BC6;
	Tue,  1 Mar 2022 02:15:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A374F1BF215
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 02:15:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8F93181763
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 02:15:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hlweLofnGXvU for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Mar 2022 02:15:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [185.58.86.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 07E838174F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 02:15:14 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 uk-mta-311-AiLIJJiTPXKF2aB_irlgEQ-1; Tue, 01 Mar 2022 02:15:11 +0000
X-MC-Unique: AiLIJJiTPXKF2aB_irlgEQ-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.28; Tue, 1 Mar 2022 02:15:09 +0000
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.028; Tue, 1 Mar 2022 02:15:09 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Linus Torvalds' <torvalds@linux-foundation.org>,
 =?utf-8?B?Q2hyaXN0aWFuIEvDtm5pZw==?= <christian.koenig@amd.com>
Thread-Topic: [PATCH 2/6] treewide: remove using list iterator after loop body
 as a ptr
Thread-Index: AQHYLN1fDoOXhdJpm02jJhIGc9kG8qypx5SQ
Date: Tue, 1 Mar 2022 02:15:09 +0000
Message-ID: <d245f691cfdf43d9a1e1e33acb570325@AcuMS.aculab.com>
References: <20220228110822.491923-1-jakobkoschel@gmail.com>
 <20220228110822.491923-3-jakobkoschel@gmail.com>
 <2e4e95d6-f6c9-a188-e1cd-b1eae465562a@amd.com>
 <CAHk-=wgQps58DPEOe4y5cTh5oE9EdNTWRLXzgMiETc+mFX7jzw@mail.gmail.com>
In-Reply-To: <CAHk-=wgQps58DPEOe4y5cTh5oE9EdNTWRLXzgMiETc+mFX7jzw@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=C51A453 smtp.mailfrom=david.laight@aculab.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH 2/6] treewide: remove using list
 iterator after loop body as a ptr
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
Cc: "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "nouveau@lists.freedesktop.org" <nouveau@lists.freedesktop.org>, Rasmus
 Villemoes <linux@rasmusvillemoes.dk>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Cristiano Giuffrida <c.giuffrida@vu.nl>, "Bos, H.J." <h.j.bos@vu.nl>,
 "samba-technical@lists.samba.org" <samba-technical@lists.samba.org>,
 "linux1394-devel@lists.sourceforge.net"
 <linux1394-devel@lists.sourceforge.net>,
 "drbd-dev@lists.linbit.com" <drbd-dev@lists.linbit.com>,
 linux-arch <linux-arch@vger.kernel.org>, CIFS <linux-cifs@vger.kernel.org>,
 KVM list <kvm@vger.kernel.org>, linux-scsi <linux-scsi@vger.kernel.org>,
 linux-rdma <linux-rdma@vger.kernel.org>,
 "linux-staging@lists.linux.dev" <linux-staging@lists.linux.dev>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kgdb-bugreport@lists.sourceforge.net" <kgdb-bugreport@lists.sourceforge.net>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, Arnd
 Bergman <arnd@arndb.de>, Linux PM <linux-pm@vger.kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Brian Johannesmeyer <bjohannesmeyer@gmail.com>,
 Nathan Chancellor <nathan@kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Jakob Koschel <jakobkoschel@gmail.com>,
 "v9fs-developer@lists.sourceforge.net" <v9fs-developer@lists.sourceforge.net>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Andy
 Shevchenko <andriy.shevchenko@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-sgx@vger.kernel.org" <linux-sgx@vger.kernel.org>,
 linux-block <linux-block@vger.kernel.org>, Netdev <netdev@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux F2FS Dev Mailing List <linux-f2fs-devel@lists.sourceforge.net>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 dma <dmaengine@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogTGludXMgVG9ydmFsZHMNCj4gU2VudDogMjggRmVicnVhcnkgMjAyMiAxOTo1Ng0KPiBP
biBNb24sIEZlYiAyOCwgMjAyMiBhdCA0OjE5IEFNIENocmlzdGlhbiBLw7ZuaWcNCj4gPGNocmlz
dGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBJIGRvbid0IHRoaW5rIHRoYXQg
dXNpbmcgdGhlIGV4dHJhIHZhcmlhYmxlIG1ha2VzIHRoZSBjb2RlIGluIGFueSB3YXkNCj4gPiBt
b3JlIHJlbGlhYmxlIG9yIGVhc2llciB0byByZWFkLg0KPiANCj4gU28gSSB0aGluayB0aGUgbmV4
dCBzdGVwIGlzIHRvIGRvIHRoZSBhdHRhY2hlZCBwYXRjaCAod2hpY2ggcmVxdWlyZXMNCj4gdGhh
dCAiLXN0ZD1nbnUxMSIgdGhhdCB3YXMgZGlzY3Vzc2VkIGluIHRoZSBvcmlnaW5hbCB0aHJlYWQp
Lg0KPiANCj4gVGhhdCB3aWxsIGd1YXJhbnRlZSB0aGF0IHRoZSAncG9zJyBwYXJhbWV0ZXIgb2Yg
bGlzdF9mb3JfZWFjaF9lbnRyeSgpDQo+IGlzIG9ubHkgdXBkYXRlZCBJTlNJREUgdGhlIGZvcl9l
YWNoX2xpc3RfZW50cnkoKSBsb29wLCBhbmQgY2FuIG5ldmVyDQo+IHBvaW50IHRvIHRoZSAod3Jv
bmdseSB0eXBlZCkgaGVhZCBlbnRyeS4NCj4gDQo+IEFuZCBJIHdvdWxkIGFjdHVhbGx5IGhvcGUg
dGhhdCBpdCBzaG91bGQgYWN0dWFsbHkgY2F1c2UgY29tcGlsZXINCj4gd2FybmluZ3MgYWJvdXQg
cG9zc2libHkgdW5pbml0aWFsaXplZCB2YXJpYWJsZXMgaWYgcGVvcGxlIHRoZW4gdXNlIHRoZQ0K
PiAncG9zJyBwb2ludGVyIG91dHNpZGUgdGhlIGxvb3AuIEV4Y2VwdA0KPiANCj4gIChhKSB0aGF0
IGNvZGUgaW4gc2d4L2VuY2wuYyBjdXJyZW50bHkgaW5pdGlhbGl6ZXMgJ3RtcCcgdG8gTlVMTCBm
b3INCj4gaW5leHBsaWNhYmxlIHJlYXNvbnMgLSBwb3NzaWJseSBiZWNhdXNlIGl0IGFscmVhZHkg
ZXhwZWN0ZWQgdGhpcw0KPiBiZWhhdmlvcg0KPiANCj4gIChiKSB3aGVuIEkgcmVtb3ZlIHRoYXQg
TlVMTCBpbml0aWFsaXplciwgSSBzdGlsbCBkb24ndCBnZXQgYSB3YXJuaW5nLA0KPiBiZWNhdXNl
IHdlJ3ZlIGRpc2FibGVkIC1Xbm8tbWF5YmUtdW5pbml0aWFsaXplZCBzaW5jZSBpdCByZXN1bHRz
IGluIHNvDQo+IG1hbnkgZmFsc2UgcG9zaXRpdmVzLg0KPiANCj4gT2ggd2VsbC4NCj4gDQo+IEFu
eXdheSwgZ2l2ZSB0aGlzIHBhdGNoIGEgbG9vaywgYW5kIGF0IGxlYXN0IGlmIGl0J3MgZXhwYW5k
ZWQgdG8gZG8NCj4gIihwb3MpID0gTlVMTCIgaW4gdGhlIGVudHJ5IHN0YXRlbWVudCBmb3IgdGhl
IGZvci1sb29wLCBpdCB3aWxsIGF2b2lkDQo+IHRoZSBIRUFEIHR5cGUgY29uZnVzaW9uIHRoYXQg
SmFrb2IgaXMgd29ya2luZyBvbi4gQW5kIEkgdGhpbmsgaW4gYQ0KPiBjbGVhbmVyIHdheSB0aGFu
IHRoZSBob3JyaWQgZ2FtZXMgaGUgcGxheXMuDQo+IA0KPiAoQnV0IGl0IHdvbid0IGF2b2lkIHBv
c3NpYmxlIENQVSBzcGVjdWxhdGlvbiBvZiBzdWNoIHR5cGUgY29uZnVzaW9uLg0KPiBUaGF0LCBp
biBteSBvcGluaW9uLCBpcyBhIGNvbXBsZXRlbHkgZGlmZmVyZW50IGlzc3VlKQ0KPiANCj4gSSBk
byB3aXNoIHdlIGNvdWxkIGFjdHVhbGx5IHBvaXNvbiB0aGUgJ3BvcycgdmFsdWUgYWZ0ZXIgdGhl
IGxvb3ANCj4gc29tZWhvdyAtIGJ1dCBjbGVhcmx5IHRoZSAibWlnaHQgYmUgdW5pbml0aWFsaXpl
ZCIgSSB3YXMgaG9waW5nIGZvcg0KPiBpc24ndCB0aGUgd2F5IHRvIGRvIGl0Lg0KPiANCj4gQW55
Ym9keSBoYXZlIGFueSBpZGVhcz8NCj4gDQo+ICAgICAgICAgICAgICAgICBMaW51cw0KZGlmZiAt
LWdpdCBhL2luY2x1ZGUvbGludXgvbGlzdC5oIGIvaW5jbHVkZS9saW51eC9saXN0LmgNCmluZGV4
IGRkNmMyMDQxZDA5Yy4uYmFiOTk1NTk2YWFhIDEwMDY0NA0KLS0tIGEvaW5jbHVkZS9saW51eC9s
aXN0LmgNCisrKyBiL2luY2x1ZGUvbGludXgvbGlzdC5oDQpAQCAtNjM0LDEwICs2MzQsMTAgQEAg
c3RhdGljIGlubGluZSB2b2lkIGxpc3Rfc3BsaWNlX3RhaWxfaW5pdChzdHJ1Y3QgbGlzdF9oZWFk
ICpsaXN0LA0KICAqIEBoZWFkOgl0aGUgaGVhZCBmb3IgeW91ciBsaXN0Lg0KICAqIEBtZW1iZXI6
CXRoZSBuYW1lIG9mIHRoZSBsaXN0X2hlYWQgd2l0aGluIHRoZSBzdHJ1Y3QuDQogICovDQotI2Rl
ZmluZSBsaXN0X2Zvcl9lYWNoX2VudHJ5KHBvcywgaGVhZCwgbWVtYmVyKQkJCQlcDQotCWZvciAo
cG9zID0gbGlzdF9maXJzdF9lbnRyeShoZWFkLCB0eXBlb2YoKnBvcyksIG1lbWJlcik7CVwNCi0J
ICAgICAhbGlzdF9lbnRyeV9pc19oZWFkKHBvcywgaGVhZCwgbWVtYmVyKTsJCQlcDQotCSAgICAg
cG9zID0gbGlzdF9uZXh0X2VudHJ5KHBvcywgbWVtYmVyKSkNCisjZGVmaW5lIGxpc3RfZm9yX2Vh
Y2hfZW50cnkocG9zLCBoZWFkLCBtZW1iZXIpCQkJCQlcDQorCWZvciAodHlwZW9mKHBvcykgX19p
dGVyID0gbGlzdF9maXJzdF9lbnRyeShoZWFkLCB0eXBlb2YoKnBvcyksIG1lbWJlcik7CVwNCisJ
ICAgICAhbGlzdF9lbnRyeV9pc19oZWFkKF9faXRlciwgaGVhZCwgbWVtYmVyKSAmJiAoKChwb3Mp
PV9faXRlciksMSk7CVwNCisJICAgICBfX2l0ZXIgPSBsaXN0X25leHRfZW50cnkoX19pdGVyLCBt
ZW1iZXIpKQ0KIA0KIC8qKg0KICAqIGxpc3RfZm9yX2VhY2hfZW50cnlfcmV2ZXJzZSAtIGl0ZXJh
dGUgYmFja3dhcmRzIG92ZXIgbGlzdCBvZiBnaXZlbiB0eXBlLg0KDQpJIHRoaW5rIHlvdSBhY3R1
YWxseSB3YW50Og0KCSFsaXN0X2VudHJ5X2lzX2hlYWQoX19pdGVyLCBoZWFkLCBtZW1iZXIpID8g
KCgocG9zKT1fX2l0ZXIpLDEpIDogKCgocG9zKSA9IE5VTEwpLDApOw0KDQpXaGljaCBjYW4gYmUg
ZG9uZSBpbiB0aGUgb3JpZ2luYWwgYnk6DQoJIWxpc3RfZW50cnlfaXNfaGVhZChwb3MsIGhlYWQs
IG1lbWJlcikgPyAxIDogKCgocG9zKSA9IE5VTEwpLCAwKTsNCg0KQWx0aG91Z2ggaXQgd291bGQg
YmUgc2FmZXIgdG8gaGF2ZSAod2l0aG91dCBsb29raW5nIHVwIHRoZSBhY3R1YWwgbmFtZSk6DQoJ
Zm9yIChpdGVtICpfX2l0ZW0gPSBoZWFkOyBcDQoJCV9faXRlbSA/ICgoKHBvcykgPSBsaXN0X2l0
ZW0oX19pdGVtLCBtZW1iZXIpKSwgMSkgOiAoKChwb3MpID0gTlVMTCksIDApOw0KCQlfX2l0ZW0g
PSAocG9zKS0+bWVtYmVyKQ0KDQpUaGUgbG9jYWwgZG9lcyBuZWVkICdmaXhpbmcnIHRvIGF2b2lk
IHNoYWRvd2luZyBmb3IgbmVzdGVkIGxvb3BzLg0KDQoJRGF2aWQNCg0KLQ0KUmVnaXN0ZXJlZCBB
ZGRyZXNzIExha2VzaWRlLCBCcmFtbGV5IFJvYWQsIE1vdW50IEZhcm0sIE1pbHRvbiBLZXluZXMs
IE1LMSAxUFQsIFVLDQpSZWdpc3RyYXRpb24gTm86IDEzOTczODYgKFdhbGVzKQ0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1h
aWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9z
bC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
