Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 23691530915
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 May 2022 08:01:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ACCE083F91;
	Mon, 23 May 2022 06:01:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FArd13AmuSQb; Mon, 23 May 2022 06:01:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 906BA83F93;
	Mon, 23 May 2022 06:01:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D816A1BF589
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 May 2022 06:01:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C53A583F8B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 May 2022 06:01:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1NjEghDXcwfn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 May 2022 06:01:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3F30983F8A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 May 2022 06:01:02 +0000 (UTC)
Received: from [192.168.0.6] (ip5f5aedde.dynamic.kabel-deutschland.de
 [95.90.237.222])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 749C961EA1928;
 Mon, 23 May 2022 08:01:00 +0200 (CEST)
Message-ID: <834bb0a6-3085-7725-d176-f83ec7912903@molgen.mpg.de>
Date: Mon, 23 May 2022 08:01:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Julia Lawall <julia.lawall@inria.fr>
References: <20220521111145.81697-50-Julia.Lawall@inria.fr>
 <71292e14-fe6c-f475-009d-1ea8cde0ea46@molgen.mpg.de>
 <alpine.DEB.2.22.394.2205230736190.2777@hadrien>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <alpine.DEB.2.22.394.2205230736190.2777@hadrien>
Subject: Re: [Intel-wired-lan] [PATCH] drivers/net/ethernet/intel: fix typos
 in comments
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
Cc: netdev@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBKdWxpYSwKCgpBbSAyMy4wNS4yMiB1bSAwNzo0MCBzY2hyaWViIEp1bGlhIExhd2FsbDoK
Cj4gT24gTW9uLCAyMyBNYXkgMjAyMiwgUGF1bCBNZW56ZWwgd3JvdGU6Cgo+PiBUaGFuayB5b3Ug
Zm9yIHlvdXIgcGF0Y2guCj4+Cj4+IEkgbm90aWNlZCwgdGhhdCB0aGUgbWFpbnRhaW5lciBUb255
IHdhc27igJl0IGluIHRoZSBDYzogbGlzdC4KPiAKPiBnZXRfbWFpbnRhaW5lciByZXBvcnRzIGhp
bSBhcyBhICJzdXBwb3J0ZXIiLCBhbmQgSSB0aGluayB0aGF0IG15IHNjcmlwdAo+IG9ubHkgdGFr
ZXMgcGVvcGxlIGxpc3RlZCBhcyAibWFpbnRhaW5lciIuCgogICAgIElOVEVMIEVUSEVSTkVUIERS
SVZFUlMKICAgICBNOiAgICAgIEplc3NlIEJyYW5kZWJ1cmcgPGplc3NlLmJyYW5kZWJ1cmdAaW50
ZWwuY29tPgogICAgIE06ICAgICAgVG9ueSBOZ3V5ZW4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwu
Y29tPgoKRm9yIHRoZSBjaGFuZ2VkIGZpbGVzLCBib3RoIGFyZSBsaXN0ZWQgYXMgc3VwcG9ydGVy
IGJ5IApgZ2V0X21haW50YWluZXIucGxgLCBidXQgb25seSBKZXNzZSB3YXMgdGFrZW4uIE5vdCBp
bXBvcnRhbnQsIGp1c3QgCndhbnRlZCB0byBtZW50aW9uIGl0LgoKPiAKPj4gQW0gMjEuMDUuMjIg
dW0gMTM6MTEgc2NocmllYiBKdWxpYSBMYXdhbGw6Cj4+PiBTcGVsbGluZyBtaXN0YWtlcyAodHJp
cGxlIGxldHRlcnMpIGluIGNvbW1lbnRzLgo+Pj4gRGV0ZWN0ZWQgd2l0aCB0aGUgaGVscCBvZiBD
b2NjaW5lbGxlLgo+Pgo+PiBJ4oCZZCBiZSBpbnRlcmVzdGVkIGluIHRoZSBzY3JpcHQgeW91IHVz
ZWQuCj4gCj4gQXR0YWNoZWQuICBJdCBzaG91bGQgaGF2ZSBhIHByZXR0eSBsb3cgcmF0ZSBvZiBm
YWxzZSBwb3NpdGl2ZXMuICBNb3N0bHkKPiB0aGluZ3MgbGlrZSBFZWV3IGFuZCBXaGVlZS4KClRo
YW5rIHlvdS4KCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCgoKPj4+IFNpZ25lZC1vZmYtYnk6IEp1bGlh
IExhd2FsbCA8SnVsaWEuTGF3YWxsQGlucmlhLmZyPgo+Pj4KPj4KPj4gTml0OiBPbmUgdW5uZWVk
ZWQgYmxhbmsgbGluZS4KPiAKPiBPSywgdGhhbmtzLgo+IAo+IGp1bGlhCj4gCj4+PiAtLS0KPj4+
ICAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ZtMTBrL2ZtMTBrX21ieC5jICAgfCAgICAy
ICstCj4+PiAgICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xpYi5jICAgICAg
IHwgICAgMiArLQo+Pj4gICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVf
c3Jpb3YuYyB8ICAgIDIgKy0KPj4+ICAgIDMgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCsp
LCAzIGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9mbTEway9mbTEwa19tYnguYwo+Pj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9mbTEway9mbTEwa19tYnguYwo+Pj4gaW5kZXggMzBjYTllZTE5MDBiLi5mMmZiYTZlMWQwZjcg
MTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9mbTEway9mbTEwa19t
YnguYwo+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZm0xMGsvZm0xMGtfbWJ4
LmMKPj4+IEBAIC0xODI1LDcgKzE4MjUsNyBAQCBzdGF0aWMgdm9pZCBmbTEwa19zbV9tYnhfcHJv
Y2Vzc19lcnJvcihzdHJ1Y3QKPj4+IGZtMTBrX21ieF9pbmZvICptYngpCj4+PiAgICAJCWZtMTBr
X3NtX21ieF9jb25uZWN0X3Jlc2V0KG1ieCk7Cj4+PiAgICAJCWJyZWFrOwo+Pj4gICAgCWNhc2Ug
Rk0xMEtfU1RBVEVfQ09OTkVDVDoKPj4+IC0JCS8qIHRyeSBjb25ubmVjdGluZyBhdCBsb3dlciB2
ZXJzaW9uICovCj4+PiArCQkvKiB0cnkgY29ubmVjdGluZyBhdCBsb3dlciB2ZXJzaW9uICovCj4+
PiAgICAJCWlmIChtYngtPnJlbW90ZSkgewo+Pj4gICAgCQkJd2hpbGUgKG1ieC0+bG9jYWwgPiAx
KQo+Pj4gICAgCQkJCW1ieC0+bG9jYWwtLTsKPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xpYi5jCj4+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfbGliLmMKPj4+IGluZGV4IDQ1NGUwMWFlMDliOS4uNzA5NjFjMDM0M2U3IDEw
MDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9saWIuYwo+
Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9saWIuYwo+Pj4gQEAg
LTI0MDMsNyArMjQwMyw3IEBAIHN0YXRpYyB2b2lkIGljZV9zZXRfYWdnX3ZzaShzdHJ1Y3QgaWNl
X3ZzaSAqdnNpKQo+Pj4gICAgCQkJCWFnZ19pZCk7Cj4+PiAgICAJCQlyZXR1cm47Cj4+PiAgICAJ
CX0KPj4+IC0JCS8qIGFnZ3JlZ2F0b3Igbm9kZSBpcyBjcmVhdGVkLCBzdG9yZSB0aGUgbmVlZWRl
ZCBpbmZvICovCj4+PiArCQkvKiBhZ2dyZWdhdG9yIG5vZGUgaXMgY3JlYXRlZCwgc3RvcmUgdGhl
IG5lZWRlZCBpbmZvICovCj4+PiAgICAJCWFnZ19ub2RlLT52YWxpZCA9IHRydWU7Cj4+PiAgICAJ
CWFnZ19ub2RlLT5hZ2dfaWQgPSBhZ2dfaWQ7Cj4+PiAgICAJfQo+Pj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3NyaW92LmMKPj4+IGIvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfc3Jpb3YuYwo+Pj4gaW5kZXggM2U3NGFi
ODI4NjhiLi4zZjVlZjUyNjliYjIgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9peGdiZS9peGdiZV9zcmlvdi5jCj4+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9peGdiZS9peGdiZV9zcmlvdi5jCj4+PiBAQCAtNzcsNyArNzcsNyBAQCBzdGF0aWMg
aW50IF9faXhnYmVfZW5hYmxlX3NyaW92KHN0cnVjdCBpeGdiZV9hZGFwdGVyCj4+PiAqYWRhcHRl
ciwKPj4+ICAgIAlJWEdCRV9XUklURV9SRUcoaHcsIElYR0JFX1BGRFRYR1NXQywgSVhHQkVfUEZE
VFhHU1dDX1ZUX0xCRU4pOwo+Pj4gICAgCWFkYXB0ZXItPmJyaWRnZV9tb2RlID0gQlJJREdFX01P
REVfVkVCOwo+Pj4gICAgLQkvKiBsaW1pdCB0cmFmZmZpYyBjbGFzc2VzIGJhc2VkIG9uIFZGcyBl
bmFibGVkICovCj4+PiArCS8qIGxpbWl0IHRyYWZmaWMgY2xhc3NlcyBiYXNlZCBvbiBWRnMgZW5h
YmxlZCAqLwo+Pj4gICAgCWlmICgoYWRhcHRlci0+aHcubWFjLnR5cGUgPT0gaXhnYmVfbWFjXzgy
NTk5RUIpICYmIChudW1fdmZzIDwgMTYpKSB7Cj4+PiAgICAJCWFkYXB0ZXItPmRjYl9jZmcubnVt
X3Rjcy5wZ190Y3MgPSBNQVhfVFJBRkZJQ19DTEFTUzsKPj4+ICAgIAkJYWRhcHRlci0+ZGNiX2Nm
Zy5udW1fdGNzLnBmY190Y3MgPSBNQVhfVFJBRkZJQ19DTEFTUzsKPj4KPj4gUmV2aWV3ZWQtYnk6
IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+Cj4+Cj4+Cj4+IEtpbmQgcmVnYXJk
cywKPj4KPj4gUGF1bAo+PgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vv
c2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdp
cmVkLWxhbgo=
