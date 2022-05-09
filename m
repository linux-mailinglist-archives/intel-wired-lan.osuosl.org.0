Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2AB51F7D6
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 May 2022 11:23:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2243C81BF5;
	Mon,  9 May 2022 09:23:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T7nffNfiCBU8; Mon,  9 May 2022 09:23:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F084080DC5;
	Mon,  9 May 2022 09:23:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CC64F1BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 May 2022 09:23:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C7CF14028D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 May 2022 09:23:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id enHnk2cUydoZ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 May 2022 09:23:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8A076400C1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 May 2022 09:23:31 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 1253F61E6478B;
 Mon,  9 May 2022 11:23:28 +0200 (CEST)
Message-ID: <197c20a7-dea9-6466-5965-85cd271c7f8d@molgen.mpg.de>
Date: Mon, 9 May 2022 11:23:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>
References: <20220509085254.2436296-1-sasha.neftin@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220509085254.2436296-1-sasha.neftin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] Revert "e1000e: Fix possible
 HW unit hang after an s0ix exit"
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
Cc: dima.ruinskiy@intel.com, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBTYXNoYSwKCgpUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4KCkFtIDA5LjA1LjIyIHVtIDEw
OjUyIHNjaHJpZWIgU2FzaGEgTmVmdGluOgo+IFRoaXMgcmV2ZXJ0cyBjb21taXQgMTg2NmFhMGQw
ZDY0OTJiYzJmOGQyMmQwZGY0OWFiYWNjZjUwY2RkZC4KPiAKPiBDb21taXQgMTg2NmFhMGQwZDY0
KCJlMTAwMGU6IEZpeCBwb3NzaWJsZSBIVyB1bml0IGhhbmcgYWZ0ZXIgYW4gczBpeCBleGl0IikK
ClBsZWFzZSBhZGQgYSBzcGFjZSBiZWZvcmUgdGhlICguCgo+IHdhcyBhIHdvcmthcm91bmQgZm9y
IENTTUUgcHJvYmxlbSB0byBoYW5kbGUgbWVzc2FnZXMgY29tZXMgdmlhIEgyTUUKPiBtYWlsYm94
LiBUaGlzIHByb2JsZW0gaGFzIGJlZW4gZml4ZWQgYnkgcGF0Y2ggImUxMDAwZTogRW5hYmxlIHRo
ZSBHUFQKPiBjbG9jayBiZWZvcmUgc2VuZGluZyBtZXNzYWdlIHRvIHRoZSBDU01FIi4KClBsZWFz
ZSBzZW5kIGJvdGggcGF0Y2hlcyBhcyBhIHNlcmllcyB0aGVuLgoKPiBGaXhlczogM2U1NWQyMzE3
MTZlICgiZTEwMDBlOiBBZGQgaGFuZHNoYWtlIHdpdGggdGhlIENTTUUgdG8gc3VwcG9ydCBTMGl4
IikKPiBCdWd6aWxsYTogaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9p
ZD0yMTQ4MjEKPiBTaWduZWQtb2ZmLWJ5OiBTYXNoYSBOZWZ0aW4gPHNhc2hhLm5lZnRpbkBpbnRl
bC5jb20+CgpTaG91bGQgcGVvcGxlIGFmZmVjdGVkIGJ5IHRoaXMgKHJlcG9ydGVycywg4oCmKSBi
ZSBhZGRlZCB0byB0aGUgQ2M6IGxpc3QsIApzbyB0aGV5IGNhbiB0ZXN0IHRoZSBwYXRjaGVzPwoK
CktpbmQgcmVnYXJkcywKClBhdWwKCgo+IC0tLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvZTEwMDBlL2h3LmggICAgICB8ICAxIC0KPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2UxMDAwZS9pY2g4bGFuLmMgfCAgNCAtLS0tCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9lMTAwMGUvaWNoOGxhbi5oIHwgIDEgLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
ZTEwMDBlL25ldGRldi5jICB8IDI2IC0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICAgNCBmaWxlcyBj
aGFuZ2VkLCAzMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvZTEwMDBlL2h3LmggYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAw
MGUvaHcuaAo+IGluZGV4IDEzMzgyZGYyZjJlZi4uYmNmNjgwZTgzODExIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9ody5oCj4gKysrIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2h3LmgKPiBAQCAtNjMwLDcgKzYzMCw2IEBAIHN0cnVj
dCBlMTAwMF9waHlfaW5mbyB7Cj4gICAJYm9vbCBkaXNhYmxlX3BvbGFyaXR5X2NvcnJlY3Rpb247
Cj4gICAJYm9vbCBpc19tZGl4Owo+ICAgCWJvb2wgcG9sYXJpdHlfY29ycmVjdGlvbjsKPiAtCWJv
b2wgcmVzZXRfZGlzYWJsZTsKPiAgIAlib29sIHNwZWVkX2Rvd25ncmFkZWQ7Cj4gICAJYm9vbCBh
dXRvbmVnX3dhaXRfdG9fY29tcGxldGU7Cj4gICB9Owo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvZTEwMDBlL2ljaDhsYW4uYwo+IGluZGV4IGU2YzhlNmQ1MjM0Zi4uOTQ2NmY2NWE2ZGE3
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFu
LmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jCj4g
QEAgLTIwNTAsMTAgKzIwNTAsNiBAQCBzdGF0aWMgczMyIGUxMDAwX2NoZWNrX3Jlc2V0X2Jsb2Nr
X2ljaDhsYW4oc3RydWN0IGUxMDAwX2h3ICpodykKPiAgIAlib29sIGJsb2NrZWQgPSBmYWxzZTsK
PiAgIAlpbnQgaSA9IDA7Cj4gICAKPiAtCS8qIENoZWNrIHRoZSBQSFkgKExDRCkgcmVzZXQgZmxh
ZyAqLwo+IC0JaWYgKGh3LT5waHkucmVzZXRfZGlzYWJsZSkKPiAtCQlyZXR1cm4gdHJ1ZTsKPiAt
Cj4gICAJd2hpbGUgKChibG9ja2VkID0gIShlcjMyKEZXU00pICYgRTEwMDBfSUNIX0ZXU01fUlNQ
Q0lQSFkpKSAmJgo+ICAgCSAgICAgICAoaSsrIDwgMzApKQo+ICAgCQl1c2xlZXBfcmFuZ2UoMTAw
MDAsIDExMDAwKTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEw
MDBlL2ljaDhsYW4uaCBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFu
LmgKPiBpbmRleCA2MzhhM2RkZDdhZGEuLjI1MDRiMTFjMzE2OSAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5oCj4gKysrIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4uaAo+IEBAIC0yNzEsNyArMjcxLDYgQEAK
PiAgICNkZWZpbmUgSTIxN19DR0ZSRUdfRU5BQkxFX01UQV9SRVNFVAkweDAwMDIKPiAgICNkZWZp
bmUgSTIxN19NRU1QV1IJCQlQSFlfUkVHKDc3MiwgMjYpCj4gICAjZGVmaW5lIEkyMTdfTUVNUFdS
X0RJU0FCTEVfU01CX1JFTEVBU0UJMHgwMDEwCj4gLSNkZWZpbmUgSTIxN19NRU1QV1JfTU9FTQkJ
MHgxMDAwCj4gICAKPiAgIC8qIFJlY2VpdmUgQWRkcmVzcyBJbml0aWFsIENSQyBDYWxjdWxhdGlv
biAqLwo+ICAgI2RlZmluZSBFMTAwMF9QQ0hfUkFJQ0MoX24pCSgweDA1RjUwICsgKChfbikgKiA0
KSkKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRl
di5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jCj4gaW5kZXgg
YzY0MTAyYjI5ODYyLi5mMTcyOTk0MGU0NmMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvZTEwMDBlL25ldGRldi5jCj4gQEAgLTY5OTEsMjEgKzY5OTEsOCBAQCBzdGF0aWMgX19t
YXliZV91bnVzZWQgaW50IGUxMDAwZV9wbV9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPiAg
IAlzdHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2ID0gcGNpX2dldF9kcnZkYXRhKHRvX3BjaV9kZXYo
ZGV2KSk7Cj4gICAJc3RydWN0IGUxMDAwX2FkYXB0ZXIgKmFkYXB0ZXIgPSBuZXRkZXZfcHJpdihu
ZXRkZXYpOwo+ICAgCXN0cnVjdCBwY2lfZGV2ICpwZGV2ID0gdG9fcGNpX2RldihkZXYpOwo+IC0J
c3RydWN0IGUxMDAwX2h3ICpodyA9ICZhZGFwdGVyLT5odzsKPiAtCXUxNiBwaHlfZGF0YTsKPiAg
IAlpbnQgcmM7Cj4gICAKPiAtCWlmIChlcjMyKEZXU00pICYgRTEwMDBfSUNIX0ZXU01fRldfVkFM
SUQgJiYKPiAtCSAgICBody0+bWFjLnR5cGUgPj0gZTEwMDBfcGNoX2FkcCkgewo+IC0JCS8qIE1h
c2sgT0VNIEJpdHMgLyBHaWcgRGlzYWJsZSAvIFJlc3RhcnQgQU4gKDc3Ml8yNlsxMl0gPSAxKSAq
Lwo+IC0JCWUxZV9ycGh5KGh3LCBJMjE3X01FTVBXUiwgJnBoeV9kYXRhKTsKPiAtCQlwaHlfZGF0
YSB8PSBJMjE3X01FTVBXUl9NT0VNOwo+IC0JCWUxZV93cGh5KGh3LCBJMjE3X01FTVBXUiwgcGh5
X2RhdGEpOwo+IC0KPiAtCQkvKiBEaXNhYmxlIExDRCByZXNldCAqLwo+IC0JCWh3LT5waHkucmVz
ZXRfZGlzYWJsZSA9IHRydWU7Cj4gLQl9Cj4gLQo+ICAgCWUxMDAwZV9mbHVzaF9scGljKHBkZXYp
Owo+ICAgCj4gICAJZTEwMDBlX3BtX2ZyZWV6ZShkZXYpOwo+IEBAIC03MDI3LDggKzcwMTQsNiBA
QCBzdGF0aWMgX19tYXliZV91bnVzZWQgaW50IGUxMDAwZV9wbV9yZXN1bWUoc3RydWN0IGRldmlj
ZSAqZGV2KQo+ICAgCXN0cnVjdCBuZXRfZGV2aWNlICpuZXRkZXYgPSBwY2lfZ2V0X2RydmRhdGEo
dG9fcGNpX2RldihkZXYpKTsKPiAgIAlzdHJ1Y3QgZTEwMDBfYWRhcHRlciAqYWRhcHRlciA9IG5l
dGRldl9wcml2KG5ldGRldik7Cj4gICAJc3RydWN0IHBjaV9kZXYgKnBkZXYgPSB0b19wY2lfZGV2
KGRldik7Cj4gLQlzdHJ1Y3QgZTEwMDBfaHcgKmh3ID0gJmFkYXB0ZXItPmh3Owo+IC0JdTE2IHBo
eV9kYXRhOwo+ICAgCWludCByYzsKPiAgIAo+ICAgCS8qIEludHJvZHVjZSBTMGl4IGltcGxlbWVu
dGF0aW9uICovCj4gQEAgLTcwMzksMTcgKzcwMjQsNiBAQCBzdGF0aWMgX19tYXliZV91bnVzZWQg
aW50IGUxMDAwZV9wbV9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQo+ICAgCWlmIChyYykKPiAg
IAkJcmV0dXJuIHJjOwo+ICAgCj4gLQlpZiAoZXIzMihGV1NNKSAmIEUxMDAwX0lDSF9GV1NNX0ZX
X1ZBTElEICYmCj4gLQkgICAgaHctPm1hYy50eXBlID49IGUxMDAwX3BjaF9hZHApIHsKPiAtCQkv
KiBVbm1hc2sgT0VNIEJpdHMgLyBHaWcgRGlzYWJsZSAvIFJlc3RhcnQgQU4gNzcyXzI2WzEyXSA9
IDAgKi8KPiAtCQllMWVfcnBoeShodywgSTIxN19NRU1QV1IsICZwaHlfZGF0YSk7Cj4gLQkJcGh5
X2RhdGEgJj0gfkkyMTdfTUVNUFdSX01PRU07Cj4gLQkJZTFlX3dwaHkoaHcsIEkyMTdfTUVNUFdS
LCBwaHlfZGF0YSk7Cj4gLQo+IC0JCS8qIEVuYWJsZSBMQ0QgcmVzZXQgKi8KPiAtCQlody0+cGh5
LnJlc2V0X2Rpc2FibGUgPSBmYWxzZTsKPiAtCX0KPiAtCj4gICAJcmV0dXJuIGUxMDAwZV9wbV90
aGF3KGRldik7Cj4gICB9Cj4gICAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
