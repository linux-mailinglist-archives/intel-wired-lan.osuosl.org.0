Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B71C501AC7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Apr 2022 20:06:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EF61D408E8;
	Thu, 14 Apr 2022 18:06:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nMygFjDZANDc; Thu, 14 Apr 2022 18:06:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B2E4E405AC;
	Thu, 14 Apr 2022 18:06:30 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0813E1BF397
 for <intel-wired-lan@osuosl.org>; Thu, 14 Apr 2022 18:06:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E85C5417A2
 for <intel-wired-lan@osuosl.org>; Thu, 14 Apr 2022 18:06:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M8ZRNKbLCmqT for <intel-wired-lan@osuosl.org>;
 Thu, 14 Apr 2022 18:06:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D23514177C
 for <intel-wired-lan@osuosl.org>; Thu, 14 Apr 2022 18:06:23 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae92a.dynamic.kabel-deutschland.de
 [95.90.233.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 60F5261EA1928;
 Thu, 14 Apr 2022 20:06:20 +0200 (CEST)
Message-ID: <093c4b1f-087e-40c3-5096-2f3a9cb05aa7@molgen.mpg.de>
Date: Thu, 14 Apr 2022 20:06:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Jeff Daly <jeffd@silicom-usa.com>
References: <20220414172020.22396-1-jeffd@silicom-usa.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220414172020.22396-1-jeffd@silicom-usa.com>
Subject: Re: [Intel-wired-lan] [PATCH] Treat 1G Cu SFPs as 1G SX for X550EM
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
Cc: intel-wired-lan@osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBKZWZmLAoKClRoYW5rIHlvdSBmb3IgeW91ciBwYXRjaC4KCkFtIDE0LjA0LjIyIHVtIDE5
OjIwIHNjaHJpZWIgSmVmZiBEYWx5OgoKUGxlYXNlIGFkZCBzb21lIHByZWZpeCB0byB0aGUgY29t
bWl0IG1lc3NhZ2Ugc3VtbWFyeS4gQWxzbywgSSB0aGluaywgeW91IApzaG91bGQgY2FyYm9uLWNv
cHkgdGhlIG1haW50YWluZXJzLgoKPiBYNTUwRU0gTklDcyBkbyBub3Qgc3VwcG9ydCAxRyBDdSBT
RlBzIGJ5IGRlZmF1bHQgZnJvbSBJbnRlbCwgdGhpcwo+IHBhdGNoIGVuYWJsZXMgdHJlYXRpbmcg
dGhlc2UgU0ZQcyBhcyAxRyBTWCBTRlBzIHZpYSBhIG1vZHVsZQo+IHBhcmFtZXRlciBzaW1pbGFy
IHRvIHRoZSBwYXJhbWV0ZXIgdGhhdCBhbGxvd3MgdGhlIGRyaXZlciB0byBiZQo+IGFibGUgdG8g
cmVjb2duaXplIHVuc3VwcG9ydGVkIChieSBJbnRlbCkgU0ZQcy4KCihQbGVhc2UgdXNlIGF0IGxl
YXN0IDcyIGNoYXJhY3RlcnMgcGVyIGxpbmUg4oCTIGNoZWNrcGF0Y2gucGwgY2hlY2tzIGZvciA3
NS4pCgo+IFNpZ25lZC1vZmYtYnk6IEplZmYgRGFseSA8amVmZmRAc2lsaWNvbS11c2EuY29tPgo+
IC0tLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFpbi5jIHwg
IDggKysrKysrKysKPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3R5
cGUuaCB8ICAxICsKPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3g1
NTAuYyB8IDE2ICsrKysrKysrKysrKysrKy0KPiAgIDMgZmlsZXMgY2hhbmdlZCwgMjQgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9peGdiZS9peGdiZV9tYWluLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9peGdiZS9peGdiZV9tYWluLmMKPiBpbmRleCBjNGE0OTU0YWEzMTcuLjBkNjM4ZTRiYmM2MCAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9tYWlu
LmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9tYWluLmMK
PiBAQCAtMTU2LDYgKzE1NiwxMSBAQCBtb2R1bGVfcGFyYW0oYWxsb3dfdW5zdXBwb3J0ZWRfc2Zw
LCB1aW50LCAwKTsKPiAgIE1PRFVMRV9QQVJNX0RFU0MoYWxsb3dfdW5zdXBwb3J0ZWRfc2ZwLAo+
ICAgCQkgIkFsbG93IHVuc3VwcG9ydGVkIGFuZCB1bnRlc3RlZCBTRlArIG1vZHVsZXMgb24gODI1
OTktYmFzZWQgYWRhcHRlcnMiKTsKPiAgIAo+ICtzdGF0aWMgdW5zaWduZWQgaW50IGN1X3NmcF9h
c19zeDsKPiArbW9kdWxlX3BhcmFtKGN1X3NmcF9hc19zeCwgdWludCwgMCk7CgpQbGVhc2UgdXNl
IGEgYm9vbGVhbi4KCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCgoKPiArTU9EVUxFX1BBUk1fREVTQyhj
dV9zZnBfYXNfc3gsCj4gKwkJICJBbGxvdyB0cmVhdGluZyAxRyBDdSBTRlAgbW9kdWxlcyBhcyAx
RyBTWCBtb2R1bGVzIG9uIFg1NTAtYmFzZWQgYWRhcHRlcnMiKTsKPiArCj4gICAjZGVmaW5lIERF
RkFVTFRfTVNHX0VOQUJMRSAoTkVUSUZfTVNHX0RSVnxORVRJRl9NU0dfUFJPQkV8TkVUSUZfTVNH
X0xJTkspCj4gICBzdGF0aWMgaW50IGRlYnVnID0gLTE7Cj4gICBtb2R1bGVfcGFyYW0oZGVidWcs
IGludCwgMCk7Cj4gQEAgLTEwODE0LDYgKzEwODE5LDkgQEAgc3RhdGljIGludCBpeGdiZV9wcm9i
ZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwgY29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgKmVudCkK
PiAgIAlpZiAoYWxsb3dfdW5zdXBwb3J0ZWRfc2ZwKQo+ICAgCQlody0+YWxsb3dfdW5zdXBwb3J0
ZWRfc2ZwID0gYWxsb3dfdW5zdXBwb3J0ZWRfc2ZwOwo+ICAgCj4gKwlpZiAoY3Vfc2ZwX2FzX3N4
KQo+ICsJCWh3LT5jdV9zZnBfYXNfc3ggPSBjdV9zZnBfYXNfc3g7Cj4gKwo+ICAgCS8qIHJlc2V0
X2h3IGZpbGxzIGluIHRoZSBwZXJtX2FkZHIgYXMgd2VsbCAqLwo+ICAgCWh3LT5waHkucmVzZXRf
aWZfb3ZlcnRlbXAgPSB0cnVlOwo+ICAgCWVyciA9IGh3LT5tYWMub3BzLnJlc2V0X2h3KGh3KTsK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfdHlw
ZS5oIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfdHlwZS5oCj4gaW5k
ZXggNmRhOTg4MGQ3NjZhLi4wZmZlMDljMGQ1YTggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfdHlwZS5oCj4gKysrIGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfdHlwZS5oCj4gQEAgLTM2NDUsNiArMzY0NSw3IEBAIHN0
cnVjdCBpeGdiZV9odyB7Cj4gICAJYm9vbAkJCQlhbGxvd191bnN1cHBvcnRlZF9zZnA7Cj4gICAJ
Ym9vbAkJCQl3b2xfZW5hYmxlZDsKPiAgIAlib29sCQkJCW5lZWRfY3Jvc3N0YWxrX2ZpeDsKPiAr
CWJvb2wJCQkJY3Vfc2ZwX2FzX3N4Owo+ICAgfTsKPiAgIAo+ICAgc3RydWN0IGl4Z2JlX2luZm8g
ewo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV94
NTUwLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV94NTUwLmMKPiBp
bmRleCBlNGI1MGM3NzgxZmYuLmFhMTJkNTg5YzM5YiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV94NTUwLmMKPiArKysgYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV94NTUwLmMKPiBAQCAtMTYwOSw2ICsxNjA5LDggQEAg
c3RhdGljIHMzMiBpeGdiZV9zZXR1cF9peGZpX3g1NTBlbShzdHJ1Y3QgaXhnYmVfaHcgKmh3LCBp
eGdiZV9saW5rX3NwZWVkICpzcGVlZCkKPiAgICAqLwo+ICAgc3RhdGljIHMzMiBpeGdiZV9zdXBw
b3J0ZWRfc2ZwX21vZHVsZXNfWDU1MGVtKHN0cnVjdCBpeGdiZV9odyAqaHcsIGJvb2wgKmxpbmVh
cikKPiAgIHsKPiArCXN0cnVjdCBpeGdiZV9hZGFwdGVyICphZGFwdGVyID0gaHctPmJhY2s7Cj4g
Kwo+ICAgCXN3aXRjaCAoaHctPnBoeS5zZnBfdHlwZSkgewo+ICAgCWNhc2UgaXhnYmVfc2ZwX3R5
cGVfbm90X3ByZXNlbnQ6Cj4gICAJCXJldHVybiBJWEdCRV9FUlJfU0ZQX05PVF9QUkVTRU5UOwo+
IEBAIC0xNjI2LDkgKzE2MjgsMjEgQEAgc3RhdGljIHMzMiBpeGdiZV9zdXBwb3J0ZWRfc2ZwX21v
ZHVsZXNfWDU1MGVtKHN0cnVjdCBpeGdiZV9odyAqaHcsIGJvb2wgKmxpbmVhcikKPiAgIAljYXNl
IGl4Z2JlX3NmcF90eXBlXzFnX2x4X2NvcmUxOgo+ICAgCQkqbGluZWFyID0gZmFsc2U7Cj4gICAJ
CWJyZWFrOwo+IC0JY2FzZSBpeGdiZV9zZnBfdHlwZV91bmtub3duOgo+ICAgCWNhc2UgaXhnYmVf
c2ZwX3R5cGVfMWdfY3VfY29yZTA6Cj4gKwkJaWYgKGh3LT5jdV9zZnBfYXNfc3gpIHsKPiArCQkJ
ZV93YXJuKGRydiwgIldBUk5JTkc6IFRyZWF0aW5nIEN1IFNGUCBtb2R1bGVzIGFzIFNYIG1vZHVs
ZXMgaXMgdW5zdXBwb3J0ZWQgYnkgSW50ZWwgYW5kIG1heSBjYXVzZSB1bnN0YWJsZSBvcGVyYXRp
b24gb3IgZGFtYWdlIHRvIHRoZSBtb2R1bGUgb3IgdGhlIGFkYXB0ZXIuICBJbnRlbCBDb3Jwb3Jh
dGlvbiBpcyBub3QgcmVzcG9uc2libGUgZm9yIGFueSBoYXJtIGNhdXNlZCBieSB1c2luZyBDdSBt
b2R1bGVzIGluIHRoaXMgd2F5IHdpdGggdGhpcyBhZGFwdGVyLlxuIik7Cj4gKwkJCSpsaW5lYXIg
PSBmYWxzZTsKPiArCQkJaHctPnBoeS5zZnBfdHlwZSA9IGl4Z2JlX3NmcF90eXBlXzFnX3N4X2Nv
cmUwOwo+ICsJCQlicmVhazsKPiArCQl9Cj4gICAJY2FzZSBpeGdiZV9zZnBfdHlwZV8xZ19jdV9j
b3JlMToKPiArCQlpZiAoaHctPmN1X3NmcF9hc19zeCkgewo+ICsJCQllX3dhcm4oZHJ2LCAiV0FS
TklORzogVHJlYXRpbmcgQ3UgU0ZQIG1vZHVsZXMgYXMgU1ggbW9kdWxlcyBpcyB1bnN1cHBvcnRl
ZCBieSBJbnRlbCBhbmQgbWF5IGNhdXNlIHVuc3RhYmxlIG9wZXJhdGlvbiBvciBkYW1hZ2UgdG8g
dGhlIG1vZHVsZSBvciB0aGUgYWRhcHRlci4gIEludGVsIENvcnBvcmF0aW9uIGlzIG5vdCByZXNw
b25zaWJsZSBmb3IgYW55IGhhcm0gY2F1c2VkIGJ5IHVzaW5nIEN1IG1vZHVsZXMgaW4gdGhpcyB3
YXkgd2l0aCB0aGlzIGFkYXB0ZXIuXG4iKTsKPiArCQkJKmxpbmVhciA9IGZhbHNlOwo+ICsJCQlo
dy0+cGh5LnNmcF90eXBlID0gaXhnYmVfc2ZwX3R5cGVfMWdfc3hfY29yZTE7Cj4gKwkJCWJyZWFr
Owo+ICsJCX0KPiArCWNhc2UgaXhnYmVfc2ZwX3R5cGVfdW5rbm93bjoKPiAgIAlkZWZhdWx0Ogo+
ICAgCQlyZXR1cm4gSVhHQkVfRVJSX1NGUF9OT1RfU1VQUE9SVEVEOwo+ICAgCX0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1h
aWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9z
bC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
