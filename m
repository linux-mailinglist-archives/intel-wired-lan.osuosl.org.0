Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB804DB46
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2019 22:32:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3265D86D05;
	Thu, 20 Jun 2019 20:32:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pZ+k0N22AmP2; Thu, 20 Jun 2019 20:32:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E14EB86DAE;
	Thu, 20 Jun 2019 20:32:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 646E61BF285
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 20:32:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5868C22053
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 20:32:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PkNf2wWJKwav for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2019 20:32:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id DF15820770
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 20:32:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 13:32:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,398,1557212400"; d="scan'208";a="162651450"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga003.jf.intel.com with ESMTP; 20 Jun 2019 13:32:26 -0700
Received: from orsmsx125.amr.corp.intel.com (10.22.240.125) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 20 Jun 2019 13:32:26 -0700
Received: from orsmsx115.amr.corp.intel.com ([169.254.4.248]) by
 ORSMSX125.amr.corp.intel.com ([169.254.3.149]) with mapi id 14.03.0439.000;
 Thu, 20 Jun 2019 13:32:26 -0700
From: "Patel, Vedang" <vedang.patel@intel.com>
To: Eric Dumazet <eric.dumazet@gmail.com>
Thread-Topic: [PATCH net-next v4 1/7] igb: clear out tstamp after sending
 the packet
Thread-Index: AQHVJsYWP6DikpavGkiqH8wEAgHHrKak0uSAgABk7YCAAAU5AIAAOU4A
Date: Thu, 20 Jun 2019 20:32:26 +0000
Message-ID: <D1A9515C-D317-40F3-81A2-451F7228A853@intel.com>
References: <1560966016-28254-1-git-send-email-vedang.patel@intel.com>
 <1560966016-28254-2-git-send-email-vedang.patel@intel.com>
 <d6655497-5246-c24e-de35-fc6acdad0bf1@gmail.com>
 <A1A5CF42-A7D4-4DC4-9D57-ED0340B04A6F@intel.com>
 <99e834ed-1c78-d35c-84dc-511d377284a1@gmail.com>
In-Reply-To: <99e834ed-1c78-d35c-84dc-511d377284a1@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.150]
Content-ID: <4A5961846A0290428DFDAA605BBA63F8@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/7] igb: clear out tstamp
 after sending the packet
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
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jakub Kicinski <jakub.kicinski@netronome.com>, Jamal
 Hadi Salim <jhs@mojatatu.com>, Murali Karicheri <m-karicheri2@ti.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Cong Wang <xiyou.wangcong@gmail.com>, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gT24gSnVuIDIwLCAyMDE5LCBhdCAxMDowNyBBTSwgRXJpYyBEdW1hemV0IDxlcmljLmR1
bWF6ZXRAZ21haWwuY29tPiB3cm90ZToNCj4gDQo+IA0KPiANCj4gT24gNi8yMC8xOSA5OjQ5IEFN
LCBQYXRlbCwgVmVkYW5nIHdyb3RlOg0KPj4gDQo+PiANCj4+PiBPbiBKdW4gMjAsIDIwMTksIGF0
IDM6NDcgQU0sIEVyaWMgRHVtYXpldCA8ZXJpYy5kdW1hemV0QGdtYWlsLmNvbT4gd3JvdGU6DQo+
Pj4gDQo+Pj4gDQo+Pj4gDQo+Pj4gT24gNi8xOS8xOSAxMDo0MCBBTSwgVmVkYW5nIFBhdGVsIHdy
b3RlOg0KPj4+PiBza2ItPnRzdGFtcCBpcyBiZWluZyB1c2VkIGF0IG11bHRpcGxlIHBsYWNlcy4g
T24gdGhlIHRyYW5zbWl0IHNpZGUsIGl0DQo+Pj4+IGlzIHVzZWQgdG8gZGV0ZXJtaW5lIHRoZSBs
YXVuY2h0aW1lIG9mIHRoZSBwYWNrZXQuIEl0IGlzIGFsc28gdXNlZCB0bw0KPj4+PiBkZXRlcm1p
bmUgdGhlIHNvZnR3YXJlIHRpbWVzdGFtcCBhZnRlciB0aGUgcGFja2V0IGhhcyBiZWVuIHRyYW5z
bWl0dGVkLg0KPj4+PiANCj4+Pj4gU28sIGNsZWFyIG91dCB0aGUgdHN0YW1wIHZhbHVlIGFmdGVy
IGl0IGhhcyBiZWVuIHJlYWQgc28gdGhhdCB3ZSBkbyBub3QNCj4+Pj4gcmVwb3J0IGZhbHNlIHNv
ZnR3YXJlIHRpbWVzdGFtcCBvbiB0aGUgcmVjZWl2ZSBzaWRlLg0KPj4+PiANCj4+Pj4gU2lnbmVk
LW9mZi1ieTogVmVkYW5nIFBhdGVsIDx2ZWRhbmcucGF0ZWxAaW50ZWwuY29tPg0KPj4+PiAtLS0N
Cj4+Pj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9tYWluLmMgfCAxICsNCj4+
Pj4gMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspDQo+Pj4+IA0KPj4+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9tYWluLmMgYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYw0KPj4+PiBpbmRleCBmYzkyNWFkYmQ5ZmEu
LmY2NmRhZTcyZmUzNyAxMDA2NDQNCj4+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWdiL2lnYl9tYWluLmMNCj4+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWdiL2lnYl9tYWluLmMNCj4+Pj4gQEAgLTU2ODgsNiArNTY4OCw3IEBAIHN0YXRpYyB2b2lkIGln
Yl90eF9jdHh0ZGVzYyhzdHJ1Y3QgaWdiX3JpbmcgKnR4X3JpbmcsDQo+Pj4+IAkgKi8NCj4+Pj4g
CWlmICh0eF9yaW5nLT5sYXVuY2h0aW1lX2VuYWJsZSkgew0KPj4+PiAJCXRzID0gbnNfdG9fdGlt
ZXNwZWM2NChmaXJzdC0+c2tiLT50c3RhbXApOw0KPj4+PiArCQlmaXJzdC0+c2tiLT50c3RhbXAg
PSAwOw0KPj4+IA0KPj4+IFBsZWFzZSBwcm92aWRlIG1vcmUgZXhwbGFuYXRpb25zLg0KPj4+IA0K
Pj4+IFdoeSBvbmx5IHRoaXMgZHJpdmVyIHdvdWxkIG5lZWQgdGhpcyA/DQo+Pj4gDQo+PiBDdXJy
ZW50bHksIGlnYiBpcyB0aGUgb25seSBkcml2ZXIgd2hpY2ggdXNlcyB0aGUgc2tiLT50c3RhbXAg
b3B0aW9uIG9uIHRoZSB0cmFuc21pdCBzaWRlICh0byBzZXQgdGhlIGhhcmR3YXJlIHRyYW5zbWl0
IHRpbWVzdGFtcCkuIEFsbCB0aGUgb3RoZXIgZHJpdmVycyBvbmx5IHVzZSBpdCBvbiB0aGUgcmVj
ZWl2ZSBzaWRlICh0byBjb2xsZWN0IGFuZCBzZW5kIHRoZSBoYXJkd2FyZSB0cmFuc21pdCB0aW1l
c3RhbXAgdG8gdGhlIHVzZXJzcGFjZSBhZnRlciBwYWNrZXQgaGFzIGJlZW4gc2VudCkuDQo+PiAN
Cj4+IFNvLCBhbnkgZHJpdmVyIHdoaWNoIHN1cHBvcnRzIHRoZSBoYXJkd2FyZSB0eHRpbWUgaW4g
dGhlIGZ1dHVyZSB3aWxsIGhhdmUgdG8gY2xlYXIgc2tiLT50c3RhbXAgdG8gbWFrZSBzdXJlIHRo
YXQgaGFyZHdhcmUgdHggdHJhbnNtaXQgYW5kIHR4IHRpbWVzdGFtcGluZyBjYW4gYmUgZG9uZSBv
biB0aGUgc2FtZSBwYWNrZXQuDQo+IA0KPiBUaGUgY2hhbmdlbG9nIGlzIHJhdGhlciBjb25mdXNp
bmcgOg0KPiANCj4gIlNvLCBjbGVhciBvdXQgdGhlIHRzdGFtcCB2YWx1ZSBhZnRlciBpdCBoYXMg
YmVlbiByZWFkIHNvIHRoYXQgd2UgZG8gbm90DQo+IHJlcG9ydCBmYWxzZSBzb2Z0d2FyZSB0aW1l
c3RhbXAgb24gdGhlIHJlY2VpdmUgc2lkZS4iDQo+IA0KPiBJIGhhdmUgaGFyZCB0aW1lIHVuZGVy
c3RhbmRpbmcgd2h5IHNlbmRpbmcgYW4gc2tiIHRocm91Z2ggdGhpcyBkcml2ZXINCj4gY291bGQg
Y2F1c2UgYSBwcm9ibGVtIG9uIHJlY2VpdmUgc2lkZSA/DQo+IA0KQWhoLi4gdGhhdOKAmXMgY2xl
YXJseSBhIGZhbHNlIHN0YXRlbWVudC4gU2tiLT50c3RhbXAgaXMgY2xlYXJlZCBzbyB0aGF0IGl0
IGlzIG5vdCBpbnRlcnByZXRlZCBhcyBhIHNvZnR3YXJlIHRpbWVzdGFtcCB3aGVuIHRyeWluZyB0
byBzZW5kIHRoZSBIYXJkd2FyZSBUWCB0aW1lc3RhbXAgdG8gdGhlIHVzZXJzcGFjZS4gSSB3aWxs
IHJlcGhyYXNlIHRoZSBjb21taXQgbWVzc2FnZSBpbiB0aGUgbmV4dCB2ZXJzaW9uLg0KDQpTb21l
IG1vcmUgZGV0YWlsczoNClRoZSBwcm9ibGVtIG9jY3VycyB3aGVuIHVzaW5nIHRoZSB0eHRpbWUt
YXNzaXN0IG1vZGUgb2YgdGFwcmlvIHdpdGggcGFja2V0cyB3aGljaCBhbHNvIHJlcXVlc3QgdGhl
IGhhcmR3YXJlIHRyYW5zbWl0IHRpbWVzdGFtcCAoZS5nLiBQVFAgcGFja2V0cykuIFdoZW5ldmVy
IHR4dGltZS1hc3Npc3QgbW9kZSBpcyBzZXQsIHRhcHJpbyB3aWxsIGFzc2lnbiBhIGhhcmR3YXJl
IHRyYW5zbWl0IHRpbWVzdGFtcCB0byBhbGwgdGhlIHBhY2tldHMgKGluIHNrYi0+dHN0YW1wKS4g
UFRQIHBhY2tldHMgd2lsbCBhbHNvIHJlcXVlc3QgdGhlIGhhcmR3YXJlIHRyYW5zbWl0IHRpbWVz
dGFtcCBiZSBzZW50IHRvIHRoZSB1c2Vyc3BhY2UgYWZ0ZXIgcGFja2V0IGlzIHRyYW5zbWl0dGVk
Lg0KDQpXaGVuZXZlciBhIG5ldyB0aW1lc3RhbXAgaXMgZGV0ZWN0ZWQgYnkgdGhlIGRyaXZlciAo
dGhpcyB3b3JrIGlzIGRvbmUgaW4gaWdiX3B0cF90eF93b3JrKCkgd2hpY2ggY2FsbHMgaWdiX3B0
cF90eF9od3RzdGFtcHMoKSBpbiBpZ2JfcHRwLmNbMV0pLCBpdCB3aWxsIHF1ZXVlIHRoZSB0aW1l
c3RhbXAgaW4gdGhlIEVSUl9RVUVVRSBmb3IgdGhlIHVzZXJzcGFjZSB0byByZWFkLiBXaGVuIHRo
ZSB1c2Vyc3BhY2UgaXMgcmVhZHksIGl0IHdpbGwgaXNzdWUgYSByZWN2bXNnKCkgY2FsbCB0byBj
b2xsZWN0IHRoaXMgdGltZXN0YW1wLiBUaGUgcHJvYmxlbSBpcyBpbiB0aGlzIHJlY3Ztc2coKSBj
YWxsLiBJZiB0aGUgc2tiLT50c3RhbXAgaXMgbm90IGNsZWFyZWQgb3V0LCBpdCB3aWxsIGJlIGlu
dGVycHJldGVkIGFzIGEgc29mdHdhcmUgdGltZXN0YW1wIGFuZCB0aGUgaGFyZHdhcmUgdHggdGlt
ZXN0YW1wIHdpbGwgbm90IGJlIHN1Y2Nlc3NmdWxseSBzZW50IHRvIHRoZSB1c2Vyc3BhY2UuIExv
b2sgYXQgc2tiX2lzX3N3dHhfdHN0YW1wKCkgYW5kIHRoZSBjYWxsZWUgZnVuY3Rpb24gX19zb2Nr
X3JlY3ZfdGltZXN0YW1wKCkgaW4gbmV0L3NvY2tldC5jIGZvciBtb3JlIGRldGFpbHMuIA0KDQpU
aGFua3MsIA0KVmVkYW5nDQoNClsxXSAtIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9s
aW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lnYi9pZ2JfcHRwLmM/aD12NS4yLXJjNSNuNjY2DQoNCj4gSSBzdWdnZXN0IHRv
IHJlcGhyYXNlIGl0IHRvIGNsZWFyIHRoZSBjb25mdXNpb24uDQo+IA0KPj4gDQo+PiBUaGFua3Ms
DQo+PiBWZWRhbmcNCj4+PiANCj4+Pj4gCQljb250ZXh0X2Rlc2MtPnNlcW51bV9zZWVkID0gY3B1
X3RvX2xlMzIodHMudHZfbnNlYyAvIDMyKTsNCj4+Pj4gCX0gZWxzZSB7DQo+Pj4+IAkJY29udGV4
dF9kZXNjLT5zZXFudW1fc2VlZCA9IDA7DQo+Pj4+IA0KPj4gDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxp
c3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
