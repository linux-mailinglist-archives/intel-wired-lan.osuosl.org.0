Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9505535076
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jun 2019 21:53:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3EE3C879DB;
	Tue,  4 Jun 2019 19:53:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bamQ5hlzccgv; Tue,  4 Jun 2019 19:53:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4FDF187A15;
	Tue,  4 Jun 2019 19:53:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A9F5C1BF5DD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2019 19:53:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A5FAA86B28
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2019 19:53:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NnINE2SSv6n2 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jun 2019 19:53:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8484286B17
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2019 19:53:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 12:53:22 -0700
X-ExtLoop1: 1
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by orsmga001.jf.intel.com with ESMTP; 04 Jun 2019 12:53:21 -0700
Received: from orsmsx163.amr.corp.intel.com (10.22.240.88) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Tue, 4 Jun 2019 12:53:21 -0700
Received: from orsmsx115.amr.corp.intel.com ([169.254.4.95]) by
 ORSMSX163.amr.corp.intel.com ([169.254.9.150]) with mapi id 14.03.0415.000;
 Tue, 4 Jun 2019 12:53:21 -0700
From: "Patel, Vedang" <vedang.patel@intel.com>
To: Murali Karicheri <m-karicheri2@ti.com>
Thread-Topic: [PATCH net-next v1 0/7] net/sched: Add txtime assist support
 for taprio
Thread-Index: AQHVFX1bn4bWaN6y30eW5FMSFiLej6aKcN4AgAABWgCAAfZqgA==
Date: Tue, 4 Jun 2019 19:53:17 +0000
Message-ID: <28C662B0-6B93-453B-B664-F3D8FFA8EFBB@intel.com>
References: <1559065608-27888-1-git-send-email-vedang.patel@intel.com>
 <007b6a78-48e7-e667-d84b-dec745f84603@ti.com>
 <4c4ec746-4282-ad3a-351c-1c7a355d093d@ti.com>
In-Reply-To: <4c4ec746-4282-ad3a-351c-1c7a355d093d@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.114]
Content-ID: <FB780A2B97BAB84B9B6CB4E4CBE63086@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 0/7] net/sched: Add txtime
 assist support for taprio
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
 Jamal Hadi Salim <jhs@mojatatu.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Cong Wang <xiyou.wangcong@gmail.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQo+IE9uIEp1biAzLCAyMDE5LCBhdCA2OjU0IEFNLCBNdXJhbGkgS2FyaWNoZXJpIDxtLWthcmlj
aGVyaTJAdGkuY29tPiB3cm90ZToNCj4gDQo+IE9uIDA2LzAzLzIwMTkgMDk6NTAgQU0sIE11cmFs
aSBLYXJpY2hlcmkgd3JvdGU6DQo+PiBIaSBWZWRhbmcsDQo+PiBPbiAwNS8yOC8yMDE5IDAxOjQ2
IFBNLCBWZWRhbmcgUGF0ZWwgd3JvdGU6DQo+Pj4gQ3VycmVudGx5LCB3ZSBhcmUgc2VlaW5nIHBh
Y2tldHMgYmVpbmcgdHJhbnNtaXR0ZWQgb3V0c2lkZSB0aGVpciB0aW1lc2xpY2VzLiBXZQ0KPj4+
IGNhbiBjb25maXJtIHRoYXQgdGhlIHBhY2tldHMgYXJlIGJlaW5nIGRlcXVldWVkIGF0IHRoZSBy
aWdodCB0aW1lLiBTbywgdGhlDQo+Pj4gZGVsYXkgaXMgaW5kdWNlZCBhZnRlciB0aGUgcGFja2V0
IGlzIGRlcXVldWVkLCBiZWNhdXNlIHRhcHJpbywgd2l0aG91dCBhbnkNCj4+PiBvZmZsb2FkaW5n
LCBoYXMgbm8gY29udHJvbCBvZiB3aGVuIGEgcGFja2V0IGlzIGFjdHVhbGx5IHRyYW5zbWl0dGVk
Lg0KPj4+IA0KPj4+IEluIG9yZGVyIHRvIHNvbHZlIHRoaXMsIHdlIGFyZSBtYWtpbmcgdXNlIG9m
IHRoZSB0eHRpbWUgZmVhdHVyZSBwcm92aWRlZCBieSBFVEYNCj4+PiBxZGlzYy4gSGFyZHdhcmUg
b2ZmbG9hZGluZyBuZWVkcyB0byBiZSBzdXBwb3J0ZWQgYnkgdGhlIEVURiBxZGlzYyBpbiBvcmRl
ciB0bw0KPj4+IHRha2UgYWR2YW50YWdlIG9mIHRoaXMgZmVhdHVyZS4gVGhlIHRhcHJpbyBxZGlz
YyB3aWxsIGFzc2lnbiB0eHRpbWUgKGluDQo+Pj4gc2tiLT50c3RhbXApIGZvciBhbGwgdGhlIHBh
Y2tldHMgd2hpY2ggZG8gbm90IGhhdmUgdGhlIHR4dGltZSBhbGxvY2F0ZWQgdmlhIHRoZQ0KPj4+
IFNPX1RYVElNRSBzb2NrZXQgb3B0aW9uLiBGb3IgdGhlIHBhY2tldHMgd2hpY2ggYWxyZWFkeSBo
YXZlIFNPX1RYVElNRSBzZXQsDQo+Pj4gdGFwcmlvIHdpbGwgdmFsaWRhdGUgd2hldGhlciB0aGUg
cGFja2V0IHdpbGwgYmUgdHJhbnNtaXR0ZWQgaW4gdGhlIGNvcnJlY3QNCj4+PiBpbnRlcnZhbC4N
Cj4+PiANCj4+PiBJbiBvcmRlciB0byBzdXBwb3J0IHRoaXMsIHRoZSBmb2xsb3dpbmcgcGFyYW1l
dGVycyBoYXZlIGJlZW4gYWRkZWQ6DQo+Pj4gLSBvZmZsb2FkICh0YXByaW8pOiBUaGlzIGlzIGFk
ZGVkIGluIG9yZGVyIHRvIHN1cHBvcnQgZGlmZmVyZW50IG9mZmxvYWRpbmcNCj4+PiAgICBtb2Rl
cyB3aGljaCB3aWxsIGJlIGFkZGVkIGluIHRoZSBmdXR1cmUuDQo+Pj4gLSB0eHRpbWUtZGVsYXkg
KHRhcHJpbyk6IHRoaXMgaXMgdGhlIHRpbWUgdGhlIHBhY2tldCB0YWtlcyB0byB0cmF2ZXJzZSB0
aHJvdWdoDQo+Pj4gICAgdGhlIGtlcm5lbCB0byBhZGFwdGVyIGNhcmQuDQo+PiBJIGFtIHZlcnkg
bmV3IHRvIHRoaXMgVEMgYW5kIFFvUyBoYW5kbGluZyBvZiBMaW51eCBrZXJuZWwgYW5kIFRTTi4g
U28gc29ycnkgc29tZSBvZiB0aGUgIHF1ZXN0aW9ucyBiZWxvdyBhcmUgdmVyeSBiYXNpYyBpbiBu
YXR1cmUuIEkgd291bGQgc29vbiB3b3VsZCBiZSB3b3JraW5nIHRvIGFkZCB0aGlzIHN1cHBvcnQg
aW4gb3VyIHBsYXRmb3JtIGJhc2VkIG9uIHRoaXMuDQo+PiBTbyBwbGVhc2UgYW5zd2VyLg0KPj4g
SXMgdHh0aW1lLWRlbGF5IGZyb20gdGhlIGluc3RhbmNlIHFkaXNjIGRlLXF1ZXVlIHRoZSBwYWNr
ZXQgdG8gdGhlIHRpbWUNCj4+IHBhY2tldHMgZ2V0IG9udG8gdGhlIHdpcmU/IEkgYW0gd29uZGVy
aW5nIGlmIHRoaXMgdGltZSBpcyBkZXRlcm1pbmlzdGljDQo+PiBvciB3ZSBoYXZlIHNvbWUgd2F5
IHRvIGVuc3VyZSB0aGlzIGNhbiBiZSB0dW5lZCB0byBtZWV0IGEgbWF4IHZhbHVlPw0KPj4gQWxz
byBob3cgd291bGQgb25lIGNhbGN1bGF0ZSB0aGlzIHZhbHVlIG9yIGhhdmUgdG8gbWVhc3VyZSBp
dD8NCj4+PiAtIHNraXBfc29ja19jaGVjayAoZXRmKTogZXRmIHFkaXNjIGN1cnJlbnRseSBkcm9w
cyBhbnkgcGFja2V0IHdoaWNoIGRvZXMgbm90DQo+Pj4gICAgaGF2ZSB0aGUgU09fVFhUSU1FIHNv
Y2tldCBvcHRpb24gc2V0LiBUaGlzIGNoZWNrIGNhbiBiZSBza2lwcGVkIGJ5IHNwZWNpZnlpbmcN
Cj4+PiAgICB0aGlzIG9wdGlvbi4NCj4+PiANCj4+PiBGb2xsb3dpbmcgaXMgYW4gZXhhbXBsZSBj
b25maWd1cmF0aW9uOg0KPj4+IA0KPj4+ICQgdGMgcWRpc2MgcmVwbGFjZSBkZXYgJElGQUNFIHBh
cmVudCByb290IGhhbmRsZSAxMDAgdGFwcmlvIFxcDQo+Pj4gICAgICAgIG51bV90YyAzIFxcDQo+
Pj4gICAgICAgIG1hcCAyIDIgMSAwIDIgMiAyIDIgMiAyIDIgMiAyIDIgMiAyIFxcDQo+Pj4gICAg
ICAgIHF1ZXVlcyAxQDAgMUAwIDFAMCBcXA0KPj4+ICAgICAgICBiYXNlLXRpbWUgJEJBU0VfVElN
RSBcXA0KPj4+ICAgICAgICBzY2hlZC1lbnRyeSBTIDAxIDMwMDAwMCBcXA0KPj4+ICAgICAgICBz
Y2hlZC1lbnRyeSBTIDAyIDMwMDAwMCBcXA0KPj4+ICAgICAgICBzY2hlZC1lbnRyeSBTIDA0IDQw
MDAwMCBcXA0KPj4+ICAgICAgICBvZmZsb2FkIDIgXFwNCj4+PiAgICAgICAgdHh0aW1lLWRlbGF5
IDQwMDAwIFxcDQo+Pj4gICAgICAgIGNsb2NraWQgQ0xPQ0tfVEFJDQo+Pj4gDQo+PiBDb3VsZCB5
b3UgdGVsbCBtZSB3aGF0IGlzIENMT0NLX1RBST8/IEkgc2VlIGJlbG93IGluIHRoZSBzb3VyY2Ug
Y29kZSBmb3INCj4+IHRoZSBkZWZpbml0aW9uIGluIGluY2x1ZGUvdWFwaS9saW51eC90aW1lLmgN
Cj4+IC8qDQo+PiAgKiBUaGUgZHJpdmVyIGltcGxlbWVudGluZyB0aGlzIGdvdCByZW1vdmVkLiBU
aGUgY2xvY2sgSUQgaXMga2VwdCBhcyBhDQo+PiAgKiBwbGFjZSBob2xkZXIuIERvIG5vdCByZXVz
ZSENCj4+ICAqLw0KPj4gI2RlZmluZSBDTE9DS19TR0lfQ1lDTEUgICAgICAgICAgICAxMA0KPj4g
I2RlZmluZSBDTE9DS19UQUkgICAgICAgICAgICAxMQ0KPj4gU28gd2h5IGRvIEkgc2VlIHN1Y2gg
ZGVmaW5lcyBiZWluZyB1c2VkIGluIHRoZSBleGFtcGxlIHRoYXQgaXMgYmVpbmcNCj4+IHJlbW92
ZWQ/DQo+PiBBRkFJSywgRnJvbSB0aGUgdXNhZ2UgcG9pbnQgb2YgdmlldywgVFNOIHJlcXVpcmVz
IHRoZSBuZXR3b3JrIGJlaW5nDQo+PiBzeW5jaHJvbml6ZWQgdGhyb3VnaCBsaW51eCBQVFAuIEZv
ciBzeW5jaHJvbml6YXRpb24gcGhjMnN5cyBpcyB1c2VkIHRvDQo+PiBzeW5jaHJvbml6ZSBzeXN0
ZW0gdGltZSB0byB0aGUgUEhDLiBTbyB3aHkgZG9uJ3Qgb25lIHVzZSBzeXN0ZW0gdGltZSBmb3IN
Cj4+IHRoaXM/DQo+PiBTbyBhcHBsaWNhdGlvbiB3aWxsIHVzZSBjbG9ja19nZXR0aW1lKCkgdG8g
a25vdyBjdXJyZW50IHRpbWUgYW5kDQo+PiBzY2hlZHVsZSB0aGUgcGFja2V0IGZvciB0cmFuc21p
c3Npb24gYXMgd2VsbCBhcyB1c2VyIHdvdWxkIHVzZSBzY3JpcHRzDQo+PiBvciBzdWNoIHRvIGNo
ZWNrIGN1cnJlbnQgc3lzdGVtIHRpbWUgYW5kIGlzc3VlIHRjIGNvbW1hbmQgYWJvdmUuIFNvIHRo
ZQ0KPj4gY29tbWFuZCBzaG91bGQgdXNlIENMT0NLX1JFQUxUSU1FIGluIHRoYXQgY2FzZS4gU28g
YWxsIGgvdyBhbmQgc29mdHdhcmUNCj4+IGFyZSBhbGlnbmVkIHRvIHRoZSBzYW1lIHRpbWUgc291
cmNlLiBPciBIYXZlIEkgdW5kZXJzdG9vZCBpdCB3cm9uZz8gSSBhbQ0KPj4gYXNzdW1pbmcgdGhh
dCBmb3IgdGhlIG9mZmxvYWRlZCBjYXNlLCBoL3cgc2NoZWR1bGUgR2F0ZSBvcGVuLCBzZW5kDQo+
PiBwYWNrZXQgZXRjIGFyZSBzeW5jaHJvbml6ZWQgdG8gdGhlIFBIQyBvciB1c2UgYSB0cmFuc2xh
dGVkIHRpbWUgdy5yLnQgdGhlIGNvbW1vbiB0aW1lIChuZXR3b3JrIHRpbWUuIEFzc3VtaW5nIFBI
QyB0cmFja3MgdGhpcykuDQo+PiBUaGFua3MgaW4gYWR2YW5jZSBmb3IgY2xhcmlmeWluZyB0aGlz
Lg0KPj4+ICQgdGMgcWRpc2MgcmVwbGFjZSBkZXYgJElGQUNFIHBhcmVudCAxMDA6MSBldGYgXFwN
Cj4+PiAgICAgICAgb2ZmbG9hZCBkZWx0YSAyMDAwMDAgY2xvY2tpZCBDTE9DS19UQUkgc2tpcF9z
b2NrX2NoZWNrDQo+Pj4gDQo+Pj4gSGVyZSwgdGhlICJvZmZsb2FkIiBwYXJhbWV0ZXIgaXMgaW5k
aWNhdGluZyB0aGF0IHRoZSBUWFRJTUVfT0ZGTE9BRCBtb2RlIGlzDQo+Pj4gZW5hYmxlZC4gQWxz
bywgdGhhdCBhbGwgdGhlIHRyYWZmaWMgY2xhc3NlcyBoYXZlIGJlZW4gYXNzaWduZWQgdGhlIHNh
bWUgcXVldWUuDQo+IA0KPiBBY3R1YWxseSB0aGUgdGMgY2xhc3MgaXMgbWFwcGVkIHRvIHRoZSBz
YW1lIHF1ZXVlIGluIHRoZSBwcmV2aW91cw0KPiBjb21tYW5kLCBub3QgdGhpcyBvbmUsIHJpZ2h0
Pw0KPiANClllcywgeW91IGFyZSByaWdodC4gSXQgaXMgZG9uZSB3aGlsZSBzZXR0aW5nIHVwIHRh
cHJpby4gVGhlIHdheSBpdOKAmXMgd3JpdHRlbiBsb29rcyBjb25mdXNpbmcuIEkgd2lsbCBtb2Rp
ZnkgYW5kIGNsYXJpZnkgdGhpcyBpbiB0aGUgbmV4dCB2ZXJzaW9uIG9mIHRoZSBzZXJpZXMuDQoN
ClRoYW5rcywNClZlZGFuZw0KPiBNdXJhbGkNCj4+PiBUaGlzIGlzIHRvIHByZXZlbnQgdGhlIHRy
YWZmaWMgY2xhc3NlcyBpbiB0aGUgbG93ZXIgcHJpb3JpdHkgcXVldWVzIGZyb20NCj4+PiBnZXR0
aW5nIHN0YXJ2ZWQuIE5vdGUgdGhhdCB0aGlzIGNvbmZpZ3VyYXRpb24gaXMgc3BlY2lmaWMgdG8g
dGhlIGkyMTAgZXRoZXJuZXQNCj4+PiBjYXJkLiBPdGhlciBuZXR3b3JrIGNhcmRzIHdoZXJlIHRo
ZSBoYXJkd2FyZSBxdWV1ZXMgYXJlIGdpdmVuIHRoZSBzYW1lDQo+Pj4gcHJpb3JpdHksIG1pZ2h0
IGJlIGFibGUgdG8gdXRpbGl6ZSBtb3JlIHRoYW4gb25lIHF1ZXVlLg0KPj4+IA0KPj4+IEZvbGxv
d2luZyBhcmUgc29tZSBvZiB0aGUgb3RoZXIgaGlnaGxpZ2h0cyBvZiB0aGUgc2VyaWVzOg0KPj4+
IC0gRml4IGEgYnVnIHdoZXJlIGhhcmR3YXJlIHRpbWVzdGFtcGluZyBhbmQgU09fVFhUSU1FIG9w
dGlvbnMgY2Fubm90IGJlIHVzZWQNCj4+PiAgICB0b2dldGhlci4gKFBhdGNoIDEpDQo+Pj4gLSBJ
bnRyb2R1Y2UgaGFyZHdhcmUgb2ZmbG9hZGluZy4gVGhpcyBwYXRjaCBpbnRyb2R1Y2VzIG9mZmxv
YWQgcGFyYW1ldGVyIHdoaWNoDQo+Pj4gICAgY2FuIGJlIHVzZWQgdG8gZW5hYmxlIHRoZSB0eHRp
bWUgb2ZmbG9hZCBtb2RlLiBJdCB3aWxsIGFsc28gc3VwcG9ydCBlbmFibGluZw0KPj4+ICAgIGZ1
bGwgb2ZmbG9hZCB3aGVuIHRoZSBzdXBwb3J0IGlzIGF2YWlsYWJsZSBpbiBkcml2ZXJzLiAoUGF0
Y2ggMykNCj4+PiAtIE1ha2UgVHhUaW1lIGFzc2lzdCBtb2RlIHdvcmsgd2l0aCBUQ1AgcGFja2V0
cy4gKFBhdGNoIDYgJiA3KQ0KPj4+IA0KPj4+IA0KPj4+IFRoZSBmb2xsb3dpbmcgY2hhbmdlcyBh
cmUgcmVjb21tZW5kZWQgdG8gYmUgZG9uZSBpbiBvcmRlciB0byBnZXQgdGhlIGJlc3QNCj4+PiBw
ZXJmb3JtYW5jZSBmcm9tIHRhcHJpbyBpbiB0aGlzIG1vZGU6DQo+Pj4gIyBpcCBsaW5rIHNldCBk
ZXYgZW5wMXMwIG10dSAxNTE0DQo+PiBNYXkgSSBrbm93IHdoeSBNVFUgaXMgY2hhbmdlZCB0byAx
NTE0IHRvIGluY2x1ZGUgdGhlIEV0aGVybmV0IGhlYWRlcj8NCj4+PiAjIGV0aHRvb2wgLUsgZXRo
MCBnc28gb2ZmDQo+Pj4gIyBldGh0b29sIC1LIGV0aDAgdHNvIG9mZg0KPj4+ICMgZXRodG9vbCAt
LXNldC1lZWUgZXRoMCBlZWUgb2ZmDQo+PiBDb3VsZCB5b3UgcGxlYXNlIGV4cGxhaW4gd2h5IHRo
ZXNlIGFyZSBuZWVkZWQ/DQo+PiBUaGFua3MNCj4+IE11cmFsaQ0KPj4+IA0KPj4+IFRoYW5rcywN
Cj4+PiBWZWRhbmcgUGF0ZWwNCj4+PiANCj4+PiBWZWRhbmcgUGF0ZWwgKDYpOg0KPj4+ICAgIGln
YjogY2xlYXIgb3V0IHRzdGFtcCBhZnRlciBzZW5kaW5nIHRoZSBwYWNrZXQuDQo+Pj4gICAgZXRm
OiBBZGQgc2tpcF9zb2NrX2NoZWNrDQo+Pj4gICAgdGFwcmlvOiBjYWxjdWxhdGUgY3ljbGVfdGlt
ZSB3aGVuIHNjaGVkdWxlIGlzIGluc3RhbGxlZA0KPj4+ICAgIHRhcHJpbzogQWRkIHN1cHBvcnQg
Zm9yIHR4dGltZSBvZmZsb2FkIG1vZGUuDQo+Pj4gICAgdGFwcmlvOiBtYWtlIGNsb2NrIHJlZmVy
ZW5jZSBjb252ZXJzaW9ucyBlYXNpZXINCj4+PiAgICB0YXByaW86IEFkanVzdCB0aW1lc3RhbXBz
IGZvciBUQ1AgcGFja2V0cy4NCj4+PiANCj4+PiBWaW5pY2l1cyBDb3N0YSBHb21lcyAoMSk6DQo+
Pj4gICAgdGFwcmlvOiBBZGQgdGhlIHNrZWxldG9uIHRvIGVuYWJsZSBoYXJkd2FyZSBvZmZsb2Fk
aW5nDQo+Pj4gDQo+Pj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4u
YyB8ICAgMSArDQo+Pj4gICBpbmNsdWRlL3VhcGkvbGludXgvcGt0X3NjaGVkLmggICAgICAgICAg
ICB8ICAgNiArDQo+Pj4gICBuZXQvc2NoZWQvc2NoX2V0Zi5jICAgICAgICAgICAgICAgICAgICAg
ICB8ICAxMCArDQo+Pj4gICBuZXQvc2NoZWQvc2NoX3RhcHJpby5jICAgICAgICAgICAgICAgICAg
ICB8IDU0OCArKysrKysrKysrKysrKysrKysrKy0tDQo+Pj4gICA0IGZpbGVzIGNoYW5nZWQsIDUz
MiBpbnNlcnRpb25zKCspLCAzMyBkZWxldGlvbnMoLSkNCj4+PiANCj4gDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWls
aW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wu
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
