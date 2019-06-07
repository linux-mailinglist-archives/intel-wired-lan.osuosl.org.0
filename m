Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E14273989E
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Jun 2019 00:27:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 991A486311;
	Fri,  7 Jun 2019 22:27:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xy9b5xnTPx2s; Fri,  7 Jun 2019 22:27:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A44E9863E0;
	Fri,  7 Jun 2019 22:27:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5F4231BF40D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2019 22:27:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5B22287476
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2019 22:27:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QiVdrCS9F5m5 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Jun 2019 22:27:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B9A4D87397
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2019 22:27:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 15:27:08 -0700
X-ExtLoop1: 1
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by fmsmga001.fm.intel.com with ESMTP; 07 Jun 2019 15:27:08 -0700
Received: from orsmsx115.amr.corp.intel.com ([169.254.4.13]) by
 ORSMSX110.amr.corp.intel.com ([169.254.10.60]) with mapi id 14.03.0415.000;
 Fri, 7 Jun 2019 15:27:07 -0700
From: "Patel, Vedang" <vedang.patel@intel.com>
To: Jakub Kicinski <jakub.kicinski@netronome.com>
Thread-Topic: [PATCH net-next v2 4/6] taprio: Add support for txtime-assist
 mode.
Thread-Index: AQHVHJBzjS7vryb4PEKbp2Rx8Aj1tqaPuV4AgAFmBICAABZMgIAABssA
Date: Fri, 7 Jun 2019 22:27:07 +0000
Message-ID: <0ED5E88B-E95A-4899-975D-00912685CEEF@intel.com>
References: <1559843458-12517-1-git-send-email-vedang.patel@intel.com>
 <1559843458-12517-5-git-send-email-vedang.patel@intel.com>
 <20190606162132.0591cc37@cakuba.netronome.com>
 <FF3C8B8E-421E-4C93-8895-C21A38BB55EE@intel.com>
 <20190607150243.369f6e2c@cakuba.netronome.com>
In-Reply-To: <20190607150243.369f6e2c@cakuba.netronome.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.138]
Content-ID: <1B4A59B9DD932D4A86C885652AE398AF@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 4/6] taprio: Add support
 for txtime-assist mode.
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
Cc: Jiri Pirko <jiri@resnulli.us>, "l@dorileo.org" <l@dorileo.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Murali Karicheri <m-karicheri2@ti.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Cong Wang <xiyou.wangcong@gmail.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgSmFjdWIsIA0KDQo+IE9uIEp1biA3LCAyMDE5LCBhdCAzOjAyIFBNLCBKYWt1YiBLaWNpbnNr
aSA8amFrdWIua2ljaW5za2lAbmV0cm9ub21lLmNvbT4gd3JvdGU6DQo+IA0KPiBPbiBGcmksIDcg
SnVuIDIwMTkgMjA6NDI6NTUgKzAwMDAsIFBhdGVsLCBWZWRhbmcgd3JvdGU6DQo+Pj4gVGhhbmtz
IGZvciB0aGUgY2hhbmdlcywgc2luY2UgeW91IG5vdyB2YWxpZGF0ZSBubyB1bmtub3duIGZsYWdz
IGFyZQ0KPj4+IHBhc3NlZCwgcGVyaGFwcyB0aGVyZSBpcyBubyBuZWVkIHRvIGNoZWNrIGlmIGZs
YWdzIGFyZSA9PSB+MD8NCj4+PiANCj4+PiBJU19FTkFCTEVEKCkgY291bGQganVzdCBkbzogKGZs
YWdzKSAmIFRDQV9UQVBSSU9fQVRUUl9GTEFHX1RYVElNRV9BU1NJU1QNCj4+PiBObz8NCj4+PiAN
Cj4+IFRoaXMgaXMgc3BlY2lmaWNhbGx5IGRvbmUgc28gdGhhdCB1c2VyIGRvZXMgbm90IGhhdmUg
dG8gc3BlY2lmeSB0aGUNCj4+IG9mZmxvYWQgZmxhZ3Mgd2hlbiB0cnlpbmcgdG8gaW5zdGFsbCB0
aGUgYW5vdGhlciBzY2hlZHVsZSB3aGljaCB3aWxsDQo+PiBiZSBzd2l0Y2hlZCB0byBhdCBhIGxh
dGVyIHBvaW50IG9mIHRpbWUgKGkuZS4gdGhlIGFkbWluIHNjaGVkdWxlDQo+PiBpbnRyb2R1Y2Vk
IGluIFZpbmljaXVz4oCZIGxhc3Qgc2VyaWVzKS4gU2V0dGluZyB0YXByaW9fZmxhZ3MgdG8gfjAN
Cj4+IHdpbGwgaGVscCB1cyBkaXN0aW5ndWlzaCBiZXR3ZWVuIHRoZSBmbGFncyBwYXJhbWV0ZXIg
bm90IHNwZWNpZmllZA0KPj4gYW5kIGZsYWdzIHNldCB0byAwLg0KPiANCj4gSSdtIG5vdCBzdXBl
ciBjbGVhciBvbiB0aGlzLCBiZWNhdXNlIG9mIGJhY2t3YXJkIGNvbXBhdCB5b3UgaGF2ZSB0bw0K
PiB0cmVhdCBhdHRyIG5vdCBwcmVzZW50IGFzIHVuc2V0LiAgTGV0J3Mgc2VlOg0KPiANCj4gbmV3
IHFkaXNjOg0KPiAtIGZsYWdzIGF0dHIgPSAwIC0+IHR4dGltZSBub3QgdXNlZA0KPiAtIGZsYWdz
IGF0dHIgPSAxIC0+IHR4dGltZSB1c2VkDQo+IC0+IG5vIGZsYWdzIGF0dHIgLT4gdHh0aW1lIG5v
dCB1c2VkDQo+IGNoYW5nZSBxZGlzYzoNCj4gLSBmbGFncyBhdHRyID0gb2xkIGZsYWdzIGF0dHIg
LT4gbGVhdmUgdW5jaGFuZ2VkDQo+IC0gZmxhZ3MgYXR0ciAhPSBvbGQgZmxhZ3MgYXR0ciAtPiBl
cnJvcg0KPiAtIG5vIGZsYWdzIGF0dHIgLT4gbGVhdmUgdHh0aW1lIHVuY2hhbmdlZA0KPiANCj4g
RG9lc24ndCB0aGF0IGNvdmVyIHRoZSBjYXNlcz8gIFdlcmUgeW91IHBsYW5uaW5nIHRvIGhhdmUg
bm8gZmxhZyBhdHRyDQo+IG9uIGNoYW5nZSBtZWFuIGRpc2FibGVkIHJhdGhlciB0aGFuIG5vIGNo
YW5nZT8NCg0KWW91IGNvdmVyZWQgYWxsIHRoZSBjYXNlcyBhYm92ZS4NCg0KVGhpbmtpbmcgYSBi
aXQgbW9yZSBhYm91dCBpdCwgeWVzIHlvdSBhcmUgcmlnaHQuIEluaXRpaWFsaXppbmcgZmxhZ3Mg
dG8gMCB3aWxsIHdvcmsuICBJIHdpbGwgaW5jb3Jwb3JhdGUgdGhpcyBjaGFuZ2UgaW4gdGhlIG5l
eHQgdmVyc2lvbi4NCg0KVGhhbmtzLA0KVmVkYW5nCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
