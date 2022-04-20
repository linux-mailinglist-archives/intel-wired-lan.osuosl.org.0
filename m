Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF2450859F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Apr 2022 12:16:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 230AE40B93;
	Wed, 20 Apr 2022 10:16:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xvekt49PKykD; Wed, 20 Apr 2022 10:16:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2F3A3401AE;
	Wed, 20 Apr 2022 10:16:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 82F451BF5A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 10:16:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7B18E8297F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 10:16:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z3RmhHRjbXLE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Apr 2022 10:16:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C4912826DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 10:16:23 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id CD60061CCD785;
 Wed, 20 Apr 2022 12:16:19 +0200 (CEST)
Message-ID: <38b3db7f-af23-1ab5-ba5d-a79d02e90fda@molgen.mpg.de>
Date: Wed, 20 Apr 2022 12:16:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Wojciech Drewek <wojciech.drewek@intel.com>
References: <20220401095958.438230-1-wojciech.drewek@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220401095958.438230-1-wojciech.drewek@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: return proper error
 code in ice_add_adv_rule
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

RGVhciBXb2pjaWVjaCwKCgpUaGFuayB5b3UgZm9yIHlvdXIgcGF0Y2guCgpBbSAwMS4wNC4yMiB1
bSAxMTo1OSBzY2hyaWViIFdvamNpZWNoIERyZXdlazoKPiBXaGVuIG51bWJlciBvZiB3b3JkcyBl
eGNlZWRzIElDRV9NQVhfQ0hBSU5fV09SRFMsIC1FTk9TUEMKPiBzaG91bGQgYmUgcmV0dXJuZWQg
bm90IC1FSU5WQUwuIERvIG5vdCBvdmVyd3JpdGUgdGhpcwo+IGVycm9yIGNvZGUgaW4gaWNlX2Fk
ZF90Y19mbG93ZXJfYWR2X2ZsdHIuCgpNYXliZSBtYWtlIHRoYXQgdHdvIGNvbW1pdHM/CgpBbHNv
IGZvciB0aGUgc3ViamVjdCwgaW5zdGVhZCBvZiDigJxwcm9wZXIgZXJyb3IgY29kZeKAnSwganVz
dCBuYW1lIGl0LiBNYXliZToKCj4gaWNlOiBpY2VfYWRkX2Fkdl9ydWxlOiByZXR1cm4gRU5PU1BD
IHdoZW4gZXhjZWVkaW5nIElDRV9NQVhfQ0hBSU5fV09SRFMKCgpLaW5kIHJlZ2FyZHMsCgpQYXVs
CgoKPiBTaWduZWQtb2ZmLWJ5OiBXb2pjaWVjaCBEcmV3ZWsgPHdvamNpZWNoLmRyZXdla0BpbnRl
bC5jb20+Cj4gU3VnZ2VzdGVkLWJ5OiBNYXJjaW4gU3p5Y2lrIDxtYXJjaW4uc3p5Y2lrQGxpbnV4
LmludGVsLmNvbT4KPiBBY2tlZC1ieTogTWFjaWVqIEZpamFsa293c2tpIDxtYWNpZWouZmlqYWxr
b3dza2lAaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV9zd2l0Y2guYyB8IDUgKysrKy0KPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfdGNfbGliLmMgfCAxIC0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX3N3aXRjaC5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9zd2l0Y2guYwo+IGluZGV4IGVkNzEzMGI3YWJmZS4uMDFmNzAyOWVjMjJmIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc3dpdGNoLmMKPiArKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3N3aXRjaC5jCj4gQEAgLTU5OTIsOSAr
NTk5MiwxMiBAQCBpY2VfYWRkX2Fkdl9ydWxlKHN0cnVjdCBpY2VfaHcgKmh3LCBzdHJ1Y3QgaWNl
X2Fkdl9sa3VwX2VsZW0gKmxrdXBzLAo+ICAgCQkJCXdvcmRfY250Kys7Cj4gICAJfQo+ICAgCj4g
LQlpZiAoIXdvcmRfY250IHx8IHdvcmRfY250ID4gSUNFX01BWF9DSEFJTl9XT1JEUykKPiArCWlm
ICghd29yZF9jbnQpCj4gICAJCXJldHVybiAtRUlOVkFMOwo+ICAgCj4gKwlpZiAod29yZF9jbnQg
PiBJQ0VfTUFYX0NIQUlOX1dPUkRTKQo+ICsJCXJldHVybiAtRU5PU1BDOwo+ICsKPiAgIAkvKiBs
b2NhdGUgYSBkdW1teSBwYWNrZXQgKi8KPiAgIAlwcm9maWxlID0gaWNlX2ZpbmRfZHVtbXlfcGFj
a2V0KGxrdXBzLCBsa3Vwc19jbnQsIHJpbmZvLT50dW5fdHlwZSk7Cj4gICAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90Y19saWIuYyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdGNfbGliLmMKPiBpbmRleCBmM2E1MTU5N2Y3ZjYu
LjRjZWUwZmNmOTFkMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX3RjX2xpYi5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV90Y19saWIuYwo+IEBAIC03NDgsNyArNzQ4LDYgQEAgaWNlX2FkZF90Y19mbG93ZXJfYWR2X2Zs
dHIoc3RydWN0IGljZV92c2kgKnZzaSwKPiAgIAl9IGVsc2UgaWYgKHJldCkgewo+ICAgCQlOTF9T
RVRfRVJSX01TR19NT0QodGNfZmx0ci0+ZXh0YWNrLAo+ICAgCQkJCSAgICJVbmFibGUgdG8gYWRk
IGZpbHRlciBkdWUgdG8gZXJyb3IiKTsKPiAtCQlyZXQgPSAtRUlPOwo+ICAgCQlnb3RvIGV4aXQ7
Cj4gICAJfQo+ICAgCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5v
cmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQt
bGFuCg==
