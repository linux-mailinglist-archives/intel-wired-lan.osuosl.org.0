Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C70C4B6BB1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Feb 2022 13:09:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B3EA14074E;
	Tue, 15 Feb 2022 12:09:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id svVjtRs-sPPk; Tue, 15 Feb 2022 12:09:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 82E5340127;
	Tue, 15 Feb 2022 12:09:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A13A31BF32B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Feb 2022 12:08:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8D86E40127
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Feb 2022 12:08:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2WDDQQleNzX0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Feb 2022 12:08:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B73514011C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Feb 2022 12:08:53 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aee0e.dynamic.kabel-deutschland.de
 [95.90.238.14])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id BC00B61EA1928;
 Tue, 15 Feb 2022 13:08:50 +0100 (CET)
Message-ID: <461aa065-347b-ef84-053a-00708f621d3a@molgen.mpg.de>
Date: Tue, 15 Feb 2022 13:08:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Content-Language: en-US
To: Michal Maloszewski <michal.maloszewski@intel.com>
References: <20220215133551.330076-1-michal.maloszewski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220215133551.330076-1-michal.maloszewski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix interface init with
 MSI interrupts (no MSI-X)
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
Cc: intel-wired-lan@lists.osuosl.org,
 Dawid Lukwinski <dawid.lukwinski@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBNaWNoYWwsCgoKQW0gMTUuMDIuMjIgdW0gMTQ6MzUgc2NocmllYiBNaWNoYWwgTWFsb3N6
ZXdza2k6CgoKSnVzdCBhIG5vdGUsIHRoYXQgdGhlIHRpbWUgaXMgZnJvbSB0aGUgZnV0dXJlIGFn
YWluLiAoU29tZSBJbnRlbCAKZW1wbG95ZWUgdG9sZCBtZSwgdGhlIEludGVsIGZpcmV3YWxsIChp
biBQb2xhbmQgb2ZmaWNlcz8pIGJsb2NrcyBOVFAsIAphbmQgeW91IGhhdmUgdG8gY29uZmlndXJl
IGFuIGludGVybmFsIE5UUCBzZXJ2ZXIsIHdoaWNoIHNob3VsZCBub3cgYWxzbyAKYmUgZG9jdW1l
bnRlZCB5b3VyIGludHJhbmV0LikKCj4gRml4IHRoZSBpbmFiaWxpdHkgdG8gYnJpbmcgYW4gaW50
ZXJmYWNlIHVwIG9uIGEgc2V0dXAgd2l0aAo+IG9ubHkgTVNJIGludGVycnVwdHMgZW5hYmxlZCAo
bm8gTVNJLVgpLgoKSXMgdGhlcmUgYW4gZXJyb3IgbG9nZ2VkPwoKPiBTb2x1dGlvbiBpcyB0byBh
ZGQgYSBkZWZhdWx0IG51bWJlciBvZiBRUHMgPSAxLiBUaGlzIGlzIGVub3VnaCwKPiBzaW5jZSB3
aXRob3V0IE1TSS1YIHN1cHBvcnQgZHJpdmVyIGVuYWJsZXMgb25seSBhIGJhc2ljIGZlYXR1cmUg
c2V0LgoKUGxlYXNlIHJlZmxvdyBmb3IgNzUgY2hhcmFjdGVycyBwZXIgbGluZSAoYW5kIG1heWJl
IGFkZCBhIGJsYW5rIGxpbmUgCmJldHdlZW4gcGFyYWdyYXBocykuCgo+IEZpeGVzOiBiYzZkMzNj
OGQ5M2YgKCJpNDBlOiBGaXggdGhlIG51bWJlciBvZiBxdWV1ZXMgYXZhaWxhYmxlIHRvIGJlIG1h
cHBlZCBmb3IgdXNlIikKCldvdywgdGhhdCB3ZW50IGludG8gNC4xNi1yYzEuIEFueSBpZGVhLCB3
aHkgaXQgaGFzbuKAmXQgYmVlbiByZXBvcnRlZCAKdW50aWwgbm93PwoKPiBTaWduZWQtb2ZmLWJ5
OiBEYXdpZCBMdWt3aW5za2kgPGRhd2lkLmx1a3dpbnNraUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9m
Zi1ieTogTWljaGFsIE1hbG9zemV3c2tpIDxtaWNoYWwubWFsb3N6ZXdza2lAaW50ZWwuY29tPgo+
IC0tLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYyB8IDMg
KysrCj4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMgYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jCj4gaW5kZXggODU3Mjk5Mzk3MmVmLi5k
ZmFhNTYyMzViNjAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQw
ZS9pNDBlX21haW4uYwo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQw
ZV9tYWluLmMKPiBAQCAtMTg0MCw2ICsxODQwLDkgQEAgc3RhdGljIHZvaWQgaTQwZV92c2lfc2V0
dXBfcXVldWVfbWFwKHN0cnVjdCBpNDBlX3ZzaSAqdnNpLAo+ICAgCQkJdnNpLT5udW1fcXVldWVf
cGFpcnMgPSB2c2ktPnJlcV9xdWV1ZV9wYWlyczsKPiAgIAkJZWxzZSBpZiAocGYtPmZsYWdzICYg
STQwRV9GTEFHX01TSVhfRU5BQkxFRCkKPiAgIAkJCXZzaS0+bnVtX3F1ZXVlX3BhaXJzID0gcGYt
Pm51bV9sYW5fbXNpeDsKPiArCQllbHNlCj4gKwkJCS8qIFdlIG5lZWQgYXQgbGVhc3Qgb25lIHF1
ZXVlIHBhaXIgZm9yIHRoZSBpbnRlcmZhY2UgdG8gYmUgdXNhYmxlICovCj4gKwkJCXZzaS0+bnVt
X3F1ZXVlX3BhaXJzID0gMTsKCk1heWJlIHlvdSBjb3VsZCByZXdyaXRlIHRoZSBjb21tZW50IGFi
b3ZlIHRoZSBpZiBzdGF0ZW1lbnQgKG5vdCBpbiB0aGlzIApkaWZmKSwgYW5kIGludGVncmF0ZSB0
aGUgaW5mb3JtYXRpb24gYWJvdXQgTVNJIGFuZCBNU0ktWC4KCj4gICAJfQo+ICAgCj4gICAJLyog
TnVtYmVyIG9mIHF1ZXVlcyBwZXIgZW5hYmxlZCBUQyAqLwoKCktpbmQgcmVnYXJkcywKClBhdWwK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2ly
ZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xp
c3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
