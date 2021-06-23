Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F993B135E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jun 2021 07:48:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A397340247;
	Wed, 23 Jun 2021 05:48:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o0_XfAjYfJK1; Wed, 23 Jun 2021 05:48:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 77519401D2;
	Wed, 23 Jun 2021 05:48:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6FA0F1BF584
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 05:48:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5F098400D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 05:48:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RB7bEIw9yMbg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jun 2021 05:48:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 97DA9400BE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 05:48:32 +0000 (UTC)
Received: from [192.168.0.5] (ip5f5ae8bc.dynamic.kabel-deutschland.de
 [95.90.232.188])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 71F7461E5FE33;
 Wed, 23 Jun 2021 07:48:29 +0200 (CEST)
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
References: <20210622212134.341728-1-michal.swiatkowski@linux.intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <c2378b90-a307-aa00-471b-247a15423527@molgen.mpg.de>
Date: Wed, 23 Jun 2021 07:48:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210622212134.341728-1-michal.swiatkowski@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 00/12] Add switchdev
 driver model for ice driver
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBNaWNoYWwsCgoKQW0gMjIuMDYuMjEgdW0gMjM6MjEgc2NocmllYiBNaWNoYWwgU3dpYXRr
b3dza2k6Cj4gVGhlIGZvbGxvd2luZyBwYXRjaCBzZXJpZXMgaW50cm9kdWNlcyBiYXNpYyBzd2l0
Y2hkZXYgbW9kZWwKPiBzdXBwb3J0IGluIGljZSBkcml2ZXIuIEltcGxlbWVudCB0aGUgZm9sbG93
aW5nIGJsb2NrcyBvZgo+IHN3aXRjaGRldiBmcmFtZXdvcms6Cj4gLSBWRiBwb3J0IHJlcHJlc2Vu
dG9ycyBjcmVhdGlvbgo+IC0gY29udHJvbCBwbGFuZSBWU0kgZGVmaW5pdGlvbgo+IC0gZXhjZXB0
aW9uIHBhdGggKGEuIGsuIGEuICJzbG93LXBhdGgiKSAtIHRvIGFsbG93IGEgdmlydHVhbAo+IHN3
aXRjaCBvciBsaW51eCBicmlkZ2UgdG8gcmVjZWl2ZSBhbnkgcGFja2V0IHRoYXQgZG9lc24ndCBt
YXRjaAo+IGFueSBodyBmaWx0ZXIKPiAtIGxpbmsgc3RhdGUgbWFuYWdlbWVudCBvZiB2aXJ0dWFs
IHBvcnRzCj4gLSBxdWVyeSB2aXJ0dWFsIHBvcnQgc3RhdGlzdGljcwo+IAo+IEhhcmR3YXJlIG9m
ZmxvYWQgc3VwcG9ydCBpbiBzd2l0Y2hkZXYgbW9kZSBpcyBvdXQgb2Ygc2NvcGUgb2YKPiB0aGlz
IHBhdGNoc2V0LiBEZXZsaW5rIGludGVyZmFjZSBpcyB1c2VkIHRvIHRvZ2dsZSBiZXR3ZWVuCj4g
c3dpdGNoZGV2IGFuZCBsZWdhY3kgKHRoZSBkZWZhdWx0KSBtb2RlcyBvZiB0aGUgZHJpdmVyLgoK
VGhlc2UgYXJlIGdyZWF0IG5ld3MuIENvdWxkIHlvdSBwbGVhc2UgZWxhYm9yYXRlIGluIHRoZSBz
dW1tYXJ5IGhvdyB0byAKc3dpdGNoIHRvIHRoZSBuZXcgbW9kZSBvZiB0aGUgZHJpdmVyPyBXaGF0
IGFyZSB0aGUgYmVuZWZpdHMgb2Ygc3dpdGNoZGV2IAppbiB0aGlzIGNhc2U/IExlc3MgbWFpbnRl
bmFuY2Ugb3IgYmV0dGVyIHBlcmZvcm1hbmNlPwoKU2hvdWxkIHRoZSBzd2l0Y2hkZXYgZm9sa3Mg
YmUgaW52b2x2ZWQgaW4gcmV2aWV3PwoKPiBDaGFuZ2Vsb2c6Cj4gICB2MjoKPiAgICAqIGZpeCBi
dWlsZCBpc3N1ZSBpbiBpY2U6IHNldHRpbmcgYW5kIHJlbGVhc2luZyBzd2l0Y2hkZXYgZW52aXJv
bm1lbnQKPiAgICBieSBtb3ZpbmcgY2FsbCBvZiBpY2VfdnNpX3NldHVwIHRvIG5leHQgcGF0Y2gg
d2hpY2ggaGF2ZSBkZWZpbml0aW9uCj4gICAgZm9yIHN3aXRjaGRldiBWU0kKPiAKPiBHcnplZ29y
eiBOaXRrYSAoNSk6Cj4gICAgaWNlOiBzZXR0aW5nIGFuZCByZWxlYXNpbmcgc3dpdGNoZGV2IGVu
dmlyb25tZW50CgpJdOKAmWQgYmUgZ3JlYXQgaWYgeW91IGNvdWxkIHVzZSB2ZXJicyBpbiBpbXBl
cmF0aXZlIG1vb2QuCgoKS2luZCByZWdhcmRzLAoKUGF1bAoKCj4gICAgaWNlOiBpbnRyb2R1Y2Ug
bmV3IHR5cGUgb2YgVlNJIGZvciBzd2l0Y2hkZXYKPiAgICBpY2U6IGVuYWJsZS9kaXNhYmxlIHN3
aXRjaGRldiB3aGVuIG1hbmFnaW5nIFZGcwo+ICAgIGljZTogcmVidWlsZCBzd2l0Y2hkZXYgd2hl
biByZXNldHRpbmcgYWxsIFZGcwo+ICAgIGljZTogc3dpdGNoZGV2IHNsb3cgcGF0aAo+IAo+IE1p
Y2hhbCBTd2lhdGtvd3NraSAoNSk6Cj4gICAgaWNlOiBiYXNpYyBzdXBwb3J0IGZvciBlc3dpdGNo
IG1vZGUgbWFuYWdlbWVudAo+ICAgIGljZTogaW50cm9kdWNlIFZGIHBvcnQgcmVwcmVzZW50b3IK
PiAgICBpY2U6IGFsbG93IHByb2Nlc3MgdmYgb3Bjb2RlcyBpbiBkaWZmZXJlbnQgd2F5cwo+ICAg
IGljZTogbWFuYWdlIFZTSSBhbnRpc3Bvb2YgYW5kIGRlc3RpbmF0aW9uIG92ZXJyaWRlCj4gICAg
aWNlOiBhbGxvdyBjaGFuZ2luZyBsYW5fZW4gYW5kIGxiX2VuIG9uIGRmbHQgcnVsZXMKPiAKPiBX
b2pjaWVjaCBEcmV3ZWsgKDIpOgo+ICAgIGljZTogTW92ZSBkZXZsaW5rIHBvcnQgdG8gUEYvVkYg
c3RydWN0Cj4gICAgaWNlOiBhZGQgcG9ydCByZXByZXNlbnRvciBldGh0b29sIG9wcyBhbmQgc3Rh
dHMKPiAKPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL0tjb25maWcgICAgICAgICAgICB8
ICAxMCArCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvTWFrZWZpbGUgICAgICAg
fCAgIDQgKy0KPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2UuaCAgICAgICAg
ICB8ICA0OCArLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9iYXNlLmMg
ICAgIHwgIDM3ICstCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Rldmxp
bmsuYyAgfCAxMDkgKystCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Rl
dmxpbmsuaCAgfCAgIDYgKy0KPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
ZXN3aXRjaC5jICB8IDY1NiArKysrKysrKysrKysrKysrKysKPiAgIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfZXN3aXRjaC5oICB8ICA4MiArKysKPiAgIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfZXRodG9vbC5jICB8ICAzMiArLQo+ICAgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9mbHRyLmMgICAgIHwgIDgwICsrKwo+ICAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9mbHRyLmggICAgIHwgICA3ICsKPiAgIC4uLi9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9sYW5fdHhfcnguaCAgICB8ICA0MyArKwo+ICAgZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9saWIuYyAgICAgIHwgMTEyICsrLQo+ICAgZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9saWIuaCAgICAgIHwgIDExICsKPiAgIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jICAgICB8ICA0NyArLQo+ICAg
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9yZXByLmMgICAgIHwgMzI5ICsrKysr
KysrKwo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9yZXByLmggICAgIHwg
IDI3ICsKPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc3dpdGNoLmMgICB8
ICAgMiArLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9zd2l0Y2guaCAg
IHwgICA2ICsKPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHhyeC5jICAg
ICB8ICAgMyArCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4cnhfbGli
LmMgfCAgIDQgKy0KPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHlwZS5o
ICAgICB8ICAgMSArCj4gICAuLi4vbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdmlydGNobmxf
cGYuYyAgfCAxOTYgKysrKystCj4gICAuLi4vbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfdmly
dGNobmxfcGYuaCAgfCAgNDUgKysKPiAgIDI0IGZpbGVzIGNoYW5nZWQsIDE4MTcgaW5zZXJ0aW9u
cygrKSwgODAgZGVsZXRpb25zKC0pCj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9lc3dpdGNoLmMKPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Vzd2l0Y2guaAo+ICAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcmVwci5jCj4gICBj
cmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9yZXBy
LmgKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRw
czovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
