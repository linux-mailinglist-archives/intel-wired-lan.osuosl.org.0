Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A962536336
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 May 2022 15:11:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B64FA616B5;
	Fri, 27 May 2022 13:11:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TGe2bjN2PGyB; Fri, 27 May 2022 13:11:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BB460616B2;
	Fri, 27 May 2022 13:11:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 08E351BF232
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 13:11:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E155D410D5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 13:11:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oVnDpnFLwGMN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 May 2022 13:11:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D657A4184F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 13:11:11 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id ECD0161EA192D;
 Fri, 27 May 2022 15:11:09 +0200 (CEST)
Message-ID: <c808f098-2d17-db32-6106-8c75d5116508@molgen.mpg.de>
Date: Fri, 27 May 2022 15:11:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Marcin Szycik <marcin.szycik@linux.intel.com>
References: <20220527115131.7413-1-marcin.szycik@linux.intel.com>
 <6b4a6f01-dfde-e047-066f-15098633113c@molgen.mpg.de>
 <3fab057b-ef21-3bda-6535-a19e5c4c96ec@linux.intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <3fab057b-ef21-3bda-6535-a19e5c4c96ec@linux.intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net] ice: disable stripping in default
 VSI ctx
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

RGVhciBNYXJjaW4uCgoKQW0gMjcuMDUuMjIgdW0gMTU6MDEgc2NocmllYiBNYXJjaW4gU3p5Y2lr
OgoKPiBPbiAyNy1NYXktMjIgMTQ6MTUsIFBhdWwgTWVuemVsIHdyb3RlOgoKPj4gQW0gMjcuMDUu
MjIgdW0gMTM6NTEgc2NocmllYiBNYXJjaW4gU3p5Y2lrOgo+Pj4gRnJvbTogTWljaGFsIFN3aWF0
a293c2tpIDxtaWNoYWwuc3dpYXRrb3dza2lAbGludXguaW50ZWwuY29tPgo+Pj4KPj4+IEluIGNh
c2Ugd2hlbiBkcml2ZXIgaXMgaW4gZXN3aXRjaCBtb2RlLCBoYXZpbmcgVkxBTiBzdHJpcHBpbmcg
ZW5hYmxlZAo+Pj4gY2F1c2VzIGZhaWx1cmUgaW4gY29tbXVuaWNhdGlvbi4gQWxsIFZMQU4gY29u
ZmlndXJhdGlvbiBjb21tYW5kcyBhcmUKPj4+IGJsb2NrZWQsIGJlY2F1c2Ugb2YgdGhhdCBWRiBk
cml2ZXIgY2FuJ3QgZGlzYWJsZSBWTEFOIHN0cmlwcGluZyBhdAo+Pgo+PiBzL2Jsb2NrZWQsIGJl
Y2F1c2UvYmxvY2tlZC4gQmVjYXVzZS8KPiAKPiBTb3JyeSwgYnV0IEkgZG9uJ3QgdW5kZXJzdGFu
ZCB3aGF0IHRvIGNoYW5nZSBoZXJlLiBDb3VsZCB5b3UgZXhwbGFpbiBtb3JlIGNsZWFybHk/CgpJ
IGFtIHNvcnJ5IGZvciBiZWluZyB1bmNsZWFyLiBJIHRoaW5rIGl0IHNob3VsZCBiZSB0d28gc2Vu
dGVuY2VzLgoKPj4+IGluaXRpYWxpemF0aW9uLiBJdCBsZWFkcyB0byB0aGUgc2l0dWF0aW9uIHdo
ZW4gVkxBTiBzdHJpcHBpbmcgb24gVkYgVlNJCj4+PiBpcyBvbiwgYnV0IGluIGtlcm5lbCBpdCBp
cyBvZmYuCj4+Pgo+Pj4gVG8gcHJldmVudCB0aGlzLCBzZXQgVkxBTiBzdHJpcHBpbmcgdG8gZGlz
YWJsZWQgaW4gVlNJIGluaXRpYWxpemF0aW9uLgo+Pgo+PiBNYXliZTog4oCmLCBkaXNhYmxlIFZM
QU4gc3RyaXBwaW5nIGluIFZTSSBpbml0aWFsaXphdGlvbi4KPiAKPiBTb3VuZHMgZ29vZC4KPiAK
Pj4+IEl0IGRvZXNuJ3QgYnJlYWsgb3RoZXIgdXNlY2FzZXMsIGJlY2F1c2UgaXQgaXMgc2V0IGFj
Y29yZGluZyB0byBrZXJuZWwKPj4+IHNldHRpbmdzLgo+Pgo+PiBQbGVhc2UgZG9jdW1lbnQgeW91
ciB0ZXN0IHNldHVwLgo+IAo+IFdpbGwgcmVwcm9kdWN0aW9uIHN0ZXBzIGJlIGVub3VnaD8KClll
cywgdGhhdOKAmWQgYmUgZ3JlYXQuCgoKS2luZCByZWdhcmRzLAoKUGF1bAoKCj4+PiBGaXhlczog
ZjA5OTAxYWE1NTRhICgiaWNlOiByZW1vdmUgVkxBTiByZXByZXNlbnRvciBzcGVjaWZpYyBvcHMi
KQo+Pj4gU2lnbmVkLW9mZi1ieTogTWljaGFsIFN3aWF0a293c2tpIDxtaWNoYWwuc3dpYXRrb3dz
a2lAbGludXguaW50ZWwuY29tPgo+Pj4gU2lnbmVkLW9mZi1ieTogTWFyY2luIFN6eWNpayA8bWFy
Y2luLnN6eWNpa0BsaW51eC5pbnRlbC5jb20+Cj4+PiAtLS0KPj4+ICDCoCBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xpYi5jIHwgMyArKysKPj4+ICDCoCAxIGZpbGUgY2hhbmdl
ZCwgMyBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfbGliLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX2xpYi5jCj4+PiBpbmRleCA3MDk2MWMwMzQzZTcuLmIyOGZiOGVhY2ZmYiAxMDA2NDQKPj4+
IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGliLmMKPj4+ICsrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGliLmMKPj4+IEBAIC04ODcsNiAr
ODg3LDkgQEAgc3RhdGljIHZvaWQgaWNlX3NldF9kZmx0X3ZzaV9jdHgoc3RydWN0IGljZV9odyAq
aHcsIHN0cnVjdCBpY2VfdnNpX2N0eCAqY3R4dCkKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAoSUNFX0FRX1ZTSV9PVVRFUl9UQUdfVkxBTl84MTAwIDw8Cj4+PiAgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBJQ0VfQVFfVlNJX09VVEVSX1RBR19UWVBFX1MpICYKPj4+ICDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBJQ0VfQVFfVlNJX09VVEVSX1RBR19UWVBFX007Cj4+PiAr
wqDCoMKgwqDCoMKgwqAgY3R4dC0+aW5mby5vdXRlcl92bGFuX2ZsYWdzIHw9Cj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBGSUVMRF9QUkVQKElDRV9BUV9WU0lfT1VURVJfVkxBTl9FTU9ERV9N
LAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBJQ0VfQVFfVlNJX09V
VEVSX1ZMQU5fRU1PREVfTk9USElORyk7Cj4+PiAgwqDCoMKgwqDCoCB9Cj4+PiAgwqDCoMKgwqDC
oCAvKiBIYXZlIDE6MSBVUCBtYXBwaW5nIGZvciBib3RoIGluZ3Jlc3MvZWdyZXNzIHRhYmxlcyAq
Lwo+Pj4gIMKgwqDCoMKgwqAgdGFibGUgfD0gSUNFX1VQX1RBQkxFX1RSQU5TTEFURSgwLCAwKQo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdAo+IEludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCj4gaHR0
cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVk
LWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0
cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
