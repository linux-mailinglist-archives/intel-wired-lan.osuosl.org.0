Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 271392E5B4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2019 22:05:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C209930CE5;
	Wed, 29 May 2019 20:05:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wI-+leXKhMLn; Wed, 29 May 2019 20:05:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9082F30CA3;
	Wed, 29 May 2019 20:05:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 49DFB1BF5B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2019 20:05:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3F40387FB2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2019 20:05:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pvchBGMb7vSY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 May 2019 20:05:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9DA6586ECC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2019 20:05:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 13:05:17 -0700
X-ExtLoop1: 1
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by orsmga003.jf.intel.com with ESMTP; 29 May 2019 13:05:16 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Wed, 29 May 2019 13:05:16 -0700
Received: from orsmsx115.amr.corp.intel.com ([169.254.4.95]) by
 ORSMSX152.amr.corp.intel.com ([169.254.8.127]) with mapi id 14.03.0415.000;
 Wed, 29 May 2019 13:05:16 -0700
From: "Patel, Vedang" <vedang.patel@intel.com>
To: Jakub Kicinski <jakub.kicinski@netronome.com>
Thread-Topic: [PATCH net-next v1 3/7] taprio: Add the skeleton to enable
 hardware offloading
Thread-Index: AQHVFX1jRoxwIAipQEiZCaa8URTGlqaBmGAAgAEzxgCAACO+AIAADiQA
Date: Wed, 29 May 2019 20:05:16 +0000
Message-ID: <A9D05E0B-FC24-4904-B3E5-1E069C92A3DA@intel.com>
References: <1559065608-27888-1-git-send-email-vedang.patel@intel.com>
 <1559065608-27888-4-git-send-email-vedang.patel@intel.com>
 <20190528154510.41b50723@cakuba.netronome.com>
 <62E2DD49-AC21-46DE-8E5B-EBC67230FA7D@intel.com>
 <20190529121440.46c40967@cakuba.netronome.com>
In-Reply-To: <20190529121440.46c40967@cakuba.netronome.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.11.33]
Content-ID: <7F7CE8E2FA89224E943C2F13B0A18B4D@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 3/7] taprio: Add the
 skeleton to enable hardware offloading
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
Cc: "jiri@resnulli.us" <jiri@resnulli.us>, "l@dorileo.org" <l@dorileo.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jamal Hadi Salim <jhs@mojatatu.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Cong Wang <xiyou.wangcong@gmail.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

W1NlbmRpbmcgdGhlIGVtYWlsIGFnYWluIHNpbmNlIHRoZSBsYXN0IG9uZSB3YXMgcmVqZWN0ZWQg
YnkgbmV0ZGV2IGJlY2F1c2UgaXQgd2FzIGh0bWwuXQ0KDQo+IE9uIE1heSAyOSwgMjAxOSwgYXQg
MTI6MTQgUE0sIEpha3ViIEtpY2luc2tpIDxqYWt1Yi5raWNpbnNraUBuZXRyb25vbWUuY29tPiB3
cm90ZToNCj4gDQo+IE9uIFdlZCwgMjkgTWF5IDIwMTkgMTc6MDY6NDkgKzAwMDAsIFBhdGVsLCBW
ZWRhbmcgd3JvdGU6DQo+Pj4gT24gTWF5IDI4LCAyMDE5LCBhdCAzOjQ1IFBNLCBKYWt1YiBLaWNp
bnNraSA8amFrdWIua2ljaW5za2lAbmV0cm9ub21lLmNvbT4gd3JvdGU6DQo+Pj4gT24gVHVlLCAy
OCBNYXkgMjAxOSAxMDo0Njo0NCAtMDcwMCwgVmVkYW5nIFBhdGVsIHdyb3RlOiAgDQo+Pj4+IEZy
b206IFZpbmljaXVzIENvc3RhIEdvbWVzIDx2aW5pY2l1cy5nb21lc0BpbnRlbC5jb20+DQo+Pj4+
IA0KPj4+PiBUaGlzIGFkZHMgdGhlIFVBUEkgYW5kIHRoZSBjb3JlIGJpdHMgbmVjZXNzYXJ5IGZv
ciB1c2Vyc3BhY2UgdG8NCj4+Pj4gcmVxdWVzdCBoYXJkd2FyZSBvZmZsb2FkaW5nIHRvIGJlIGVu
YWJsZWQuDQo+Pj4+IA0KPj4+PiBUaGUgZnV0dXJlIGNvbW1pdHMgd2lsbCBlbmFibGUgaHlicmlk
IG9yIGZ1bGwgb2ZmbG9hZGluZyBmb3IgdGFwcmlvLiBUaGlzDQo+Pj4+IGNvbW1pdCBzZXRzIHVw
IHRoZSBpbmZyYXN0cnVjdHVyZSB0byBlbmFibGUgaXQgdmlhIHRoZSBuZXRsaW5rIGludGVyZmFj
ZS4NCj4+Pj4gDQo+Pj4+IFNpZ25lZC1vZmYtYnk6IFZpbmljaXVzIENvc3RhIEdvbWVzIDx2aW5p
Y2l1cy5nb21lc0BpbnRlbC5jb20+DQo+Pj4+IFNpZ25lZC1vZmYtYnk6IFZlZGFuZyBQYXRlbCA8
dmVkYW5nLnBhdGVsQGludGVsLmNvbT4gIA0KPj4+IA0KPj4+IE90aGVyIHFkaXNjcyBvZmZsb2Fk
IGJ5IGRlZmF1bHQsIHRoaXMgb2ZmbG9hZC1sZXZlbCBzZWxlY3Rpb24gaGVyZSBpcyBhDQo+Pj4g
bGl0dGxlIGJpdCBpbmNvbnNpc3RlbnQgd2l0aCB0aGF0IDooDQo+Pj4gDQo+PiBUaGVyZSBhcmUg
MiBkaWZmZXJlbnQgb2ZmbG9hZCBtb2RlcyBpbnRyb2R1Y2VkIGluIHRoaXMgcGF0Y2guDQo+PiAN
Cj4+IDEuIFR4dGltZSBvZmZsb2FkIG1vZGU6IFRoaXMgbW9kZSBkZXBlbmRzIG9uIHNraXBfc29j
a19jaGVjayBmbGFnIGJlaW5nIHNldCBpbiB0aGUgZXRmIHFkaXNjLiBBbHNvLCBpdCByZXF1aXJl
cyBzb21lIG1hbnVhbCBjb25maWd1cmF0aW9uIHdoaWNoIG1pZ2h0IGJlIHNwZWNpZmljIHRvIHRo
ZSBuZXR3b3JrIGFkYXB0ZXIgY2FyZC4gRm9yIGV4YW1wbGUsIGZvciB0aGUgaTIxMCBjYXJkLCB0
aGUgdXNlciB3aWxsIGhhdmUgdG8gcm91dGUgYWxsIHRoZSB0cmFmZmljIHRvIHRoZSBoaWdoZXN0
IHByaW9yaXR5IHF1ZXVlIGFuZCBpbnN0YWxsIGV0ZiBxZGlzYyB3aXRoIG9mZmxvYWQgZW5hYmxl
ZCBvbiB0aGF0IHF1ZXVlLiBTbywgSSBkb27igJl0IHRoaW5rIHRoaXMgbW9kZSBzaG91bGQgYmUg
ZW5hYmxlZCBieSBkZWZhdWx0Lg0KPiANCj4gRXhjZWxsZW50LCBpdCBsb29rcyBsaWtlIHRoZXJl
IHdpbGwgYmUgZHJpdmVyIHBhdGNoZXMgbmVjZXNzYXJ5IGZvcg0KPiB0aGlzIG9mZmxvYWQgdG8g
ZnVuY3Rpb24sIGFsc28gaXQgc2VlbXMgeW91ciBvZmZsb2FkIGVuYWJsZSBmdW5jdGlvbg0KPiBz
dGlsbCBjb250YWlucyB0aGlzIGFmdGVyIHRoZSBzZXJpZXM6DQo+IA0KPiAJLyogRklYTUU6IGVu
YWJsZSBvZmZsb2FkaW5nICovDQo+IA0KPiBQbGVhc2Ugb25seSBwb3N0IG9mZmxvYWQgaW5mcmFz
dHJ1Y3R1cmUgd2hlbiBmdWxseSBmbGVzaGVkIG91dCBhbmQgd2l0aA0KPiBkcml2ZXIgcGF0Y2hl
cyBtYWtpbmcgdXNlIG9mIGl0Lg0KPiANClRoZSBhYm92ZSBjb21tZW50IHJlZmVycyB0byB0aGUg
ZnVsbCBvZmZsb2FkIG1vZGUgZGVzY3JpYmVkIGJlbG93LiBJdCBpcyBub3QgbmVlZGVkIGZvciB0
eHRpbWUgb2ZmbG9hZCBtb2RlLiBUeHRpbWUgb2ZmbG9hZCBtb2RlIGlzIGVzc2VudGlhbGx5IHNl
dHRpbmcgdGhlIHRyYW5zbWl0IHRpbWUgZm9yIGVhY2ggcGFja2V0ICBkZXBlbmRpbmcgb24gd2hh
dCBpbnRlcnZhbCBpdCBpcyBnb2luZyB0byBiZSB0cmFuc21pdHRlZCBpbnN0ZWFkIG9mIHJlbHlp
bmcgb24gdGhlIGhydGltZXJzIHRvIG9wZW4gZ2F0ZXMgYW5kIHNlbmQgcGFja2V0cy4gTW9yZSBk
ZXRhaWxzIGFib3V0IHdoeSBleGFjdGx5IHRoaXMgaXMgZG9uZSBpcyBtZW50aW9uZWQgaW4gcGF0
Y2ggIzVbMV0gb2YgdGhpcyBzZXJpZXMuDQoNCldoYXQgd2UgY2FuIGRvIGlzIGp1c3QgYWRkIHRo
ZSB0eHRpbWUgb2ZmbG9hZCByZWxhdGVkIGZsYWcgYW5kIGFkZCB0aGUgZnVsbCBvZmZsb2FkIGZs
YWcgd2hlbmV2ZXIgdGhlIGRyaXZlciBiaXRzIGFyZSByZWFkeS4gRG9lcyB0aGF0IGFkZHJlc3Mg
eW91ciBjb25jZXJuPw0KDQpUaGFua3MsDQpWZWRhbmcNCj4+IDIuIEZ1bGwgb2ZmbG9hZCBtb2Rl
OiBUaGlzIG1vZGUgaXMgY3VycmVudGx5IG5vdCBzdXBwb3J0ZWQgYnkgYW55IG5ldHdvcmsgZHJp
dmVyLiBUaGUgc3VwcG9ydCBmb3IgdGhpcyB3aWxsIGJlIGNvbWluZyBzb29uLiBCdXQsIHdlIGNh
biBlbmFibGUgdGhpcyBtb2RlIGJ5IGRlZmF1bHQuIA0KPj4gDQo+PiBBbHNvLCBmcm9tIHdoYXQg
VmluaWNpdXMgdGVsbHMgbWUsIG9mZmxvYWQgbW9kZXMgZm9yIGNicywgZXRmIGFuZCBtcXByaW8g
YXJlIGFsc28gZGlzYWJsZWQgYnkgZGVmYXVsdC4gU28sIGl0IHdpbGwgbWFrZSBtb3JlIHNlbnNl
IHRvIGtlZXAgaXQgZGlzYWJsZWQgdG8gYmUgY29uc2lzdGVudCB3aXRoIG90aGVyIHFkaXNjcyBz
aW1pbGFyIHRvIHRoaXMgb25lLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
