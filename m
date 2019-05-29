Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF9C2E2D8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2019 19:06:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5954F87D9F;
	Wed, 29 May 2019 17:06:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rPhZIML9ci9I; Wed, 29 May 2019 17:06:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 58AFD87E9F;
	Wed, 29 May 2019 17:06:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2FE3E1BF2A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2019 17:06:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2B5D786234
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2019 17:06:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q1UrkTHrhvSG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 May 2019 17:06:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8314F84ABB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2019 17:06:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 10:06:55 -0700
X-ExtLoop1: 1
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga002.jf.intel.com with ESMTP; 29 May 2019 10:06:54 -0700
Received: from orsmsx114.amr.corp.intel.com (10.22.240.10) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Wed, 29 May 2019 10:06:54 -0700
Received: from orsmsx115.amr.corp.intel.com ([169.254.4.95]) by
 ORSMSX114.amr.corp.intel.com ([169.254.8.116]) with mapi id 14.03.0415.000;
 Wed, 29 May 2019 10:06:54 -0700
From: "Patel, Vedang" <vedang.patel@intel.com>
To: Jakub Kicinski <jakub.kicinski@netronome.com>
Thread-Topic: [PATCH net-next v1 3/7] taprio: Add the skeleton to enable
 hardware offloading
Thread-Index: AQHVFX1jRoxwIAipQEiZCaa8URTGlqaBmGAAgAEzxgA=
Date: Wed, 29 May 2019 17:06:49 +0000
Message-ID: <62E2DD49-AC21-46DE-8E5B-EBC67230FA7D@intel.com>
References: <1559065608-27888-1-git-send-email-vedang.patel@intel.com>
 <1559065608-27888-4-git-send-email-vedang.patel@intel.com>
 <20190528154510.41b50723@cakuba.netronome.com>
In-Reply-To: <20190528154510.41b50723@cakuba.netronome.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.201]
Content-ID: <55D5CAF235ABE14E81A33FF047D69744@intel.com>
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

VGhhbmtzIEphY3ViIGZvciB0aGV5IGlucHV0cy4NCg0KPiBPbiBNYXkgMjgsIDIwMTksIGF0IDM6
NDUgUE0sIEpha3ViIEtpY2luc2tpIDxqYWt1Yi5raWNpbnNraUBuZXRyb25vbWUuY29tPiB3cm90
ZToNCj4gDQo+IE9uIFR1ZSwgMjggTWF5IDIwMTkgMTA6NDY6NDQgLTA3MDAsIFZlZGFuZyBQYXRl
bCB3cm90ZToNCj4+IEZyb206IFZpbmljaXVzIENvc3RhIEdvbWVzIDx2aW5pY2l1cy5nb21lc0Bp
bnRlbC5jb20+DQo+PiANCj4+IFRoaXMgYWRkcyB0aGUgVUFQSSBhbmQgdGhlIGNvcmUgYml0cyBu
ZWNlc3NhcnkgZm9yIHVzZXJzcGFjZSB0bw0KPj4gcmVxdWVzdCBoYXJkd2FyZSBvZmZsb2FkaW5n
IHRvIGJlIGVuYWJsZWQuDQo+PiANCj4+IFRoZSBmdXR1cmUgY29tbWl0cyB3aWxsIGVuYWJsZSBo
eWJyaWQgb3IgZnVsbCBvZmZsb2FkaW5nIGZvciB0YXByaW8uIFRoaXMNCj4+IGNvbW1pdCBzZXRz
IHVwIHRoZSBpbmZyYXN0cnVjdHVyZSB0byBlbmFibGUgaXQgdmlhIHRoZSBuZXRsaW5rIGludGVy
ZmFjZS4NCj4+IA0KPj4gU2lnbmVkLW9mZi1ieTogVmluaWNpdXMgQ29zdGEgR29tZXMgPHZpbmlj
aXVzLmdvbWVzQGludGVsLmNvbT4NCj4+IFNpZ25lZC1vZmYtYnk6IFZlZGFuZyBQYXRlbCA8dmVk
YW5nLnBhdGVsQGludGVsLmNvbT4NCj4gDQo+IE90aGVyIHFkaXNjcyBvZmZsb2FkIGJ5IGRlZmF1
bHQsIHRoaXMgb2ZmbG9hZC1sZXZlbCBzZWxlY3Rpb24gaGVyZSBpcyBhDQo+IGxpdHRsZSBiaXQg
aW5jb25zaXN0ZW50IHdpdGggdGhhdCA6KA0KPiANClRoZXJlIGFyZSAyIGRpZmZlcmVudCBvZmZs
b2FkIG1vZGVzIGludHJvZHVjZWQgaW4gdGhpcyBwYXRjaC4NCg0KMS4gVHh0aW1lIG9mZmxvYWQg
bW9kZTogVGhpcyBtb2RlIGRlcGVuZHMgb24gc2tpcF9zb2NrX2NoZWNrIGZsYWcgYmVpbmcgc2V0
IGluIHRoZSBldGYgcWRpc2MuIEFsc28sIGl0IHJlcXVpcmVzIHNvbWUgbWFudWFsIGNvbmZpZ3Vy
YXRpb24gd2hpY2ggbWlnaHQgYmUgc3BlY2lmaWMgdG8gdGhlIG5ldHdvcmsgYWRhcHRlciBjYXJk
LiBGb3IgZXhhbXBsZSwgZm9yIHRoZSBpMjEwIGNhcmQsIHRoZSB1c2VyIHdpbGwgaGF2ZSB0byBy
b3V0ZSBhbGwgdGhlIHRyYWZmaWMgdG8gdGhlIGhpZ2hlc3QgcHJpb3JpdHkgcXVldWUgYW5kIGlu
c3RhbGwgZXRmIHFkaXNjIHdpdGggb2ZmbG9hZCBlbmFibGVkIG9uIHRoYXQgcXVldWUuIFNvLCBJ
IGRvbuKAmXQgdGhpbmsgdGhpcyBtb2RlIHNob3VsZCBiZSBlbmFibGVkIGJ5IGRlZmF1bHQuDQoy
LiBGdWxsIG9mZmxvYWQgbW9kZTogVGhpcyBtb2RlIGlzIGN1cnJlbnRseSBub3Qgc3VwcG9ydGVk
IGJ5IGFueSBuZXR3b3JrIGRyaXZlci4gVGhlIHN1cHBvcnQgZm9yIHRoaXMgd2lsbCBiZSBjb21p
bmcgc29vbi4gQnV0LCB3ZSBjYW4gZW5hYmxlIHRoaXMgbW9kZSBieSBkZWZhdWx0LiANCg0KQWxz
bywgZnJvbSB3aGF0IFZpbmljaXVzIHRlbGxzIG1lLCBvZmZsb2FkIG1vZGVzIGZvciBjYnMsIGV0
ZiBhbmQgbXFwcmlvIGFyZSBhbHNvIGRpc2FibGVkIGJ5IGRlZmF1bHQuIFNvLCBpdCB3aWxsIG1h
a2UgbW9yZSBzZW5zZSB0byBrZWVwIGl0IGRpc2FibGVkIHRvIGJlIGNvbnNpc3RlbnQgd2l0aCBv
dGhlciBxZGlzY3Mgc2ltaWxhciB0byB0aGlzIG9uZS4NCj4+IEBAIC03MzEsNiArODU3LDkgQEAg
c3RhdGljIGludCB0YXByaW9fY2hhbmdlKHN0cnVjdCBRZGlzYyAqc2NoLCBzdHJ1Y3QgbmxhdHRy
ICpvcHQsDQo+PiAJaWYgKGVyciA8IDApDQo+PiAJCXJldHVybiBlcnI7DQo+PiANCj4+ICsJaWYg
KHRiW1RDQV9UQVBSSU9fQVRUUl9PRkZMT0FEX0ZMQUdTXSkNCj4+ICsJCW9mZmxvYWRfZmxhZ3Mg
PSBubGFfZ2V0X3UzMih0YltUQ0FfVEFQUklPX0FUVFJfT0ZGTE9BRF9GTEFHU10pOw0KPiANCj4g
WW91IHNob3VsZCBtYWtlIHN1cmUgdXNlciBkb2Vzbid0IHNldCB1bmtub3duIGJpdHMuICBPdGhl
cndpc2UgdXNpbmcNCj4gb3RoZXIgYml0cyB3aWxsIG5vdCBiZSBwb3NzaWJsZSBpbiB0aGUgZnV0
dXJlLg0KPiANClllcywgSSBhZ3JlZSBoZXJlLCB3aWxsIGluY2x1ZGUgdGhpcyBpbiB0aGUgbmV4
dCBwYXRjaHNldC4NCg0KVGhhbmtzLA0KVmVkYW5nDQo+PiAJbmV3X2FkbWluID0ga3phbGxvYyhz
aXplb2YoKm5ld19hZG1pbiksIEdGUF9LRVJORUwpOw0KPj4gCWlmICghbmV3X2FkbWluKSB7DQo+
PiAJCU5MX1NFVF9FUlJfTVNHKGV4dGFjaywgIk5vdCBlbm91Z2ggbWVtb3J5IGZvciBhIG5ldyBz
Y2hlZHVsZSIpOw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
