Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B99D5BB8E2
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Sep 2022 16:55:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 47019843CB;
	Sat, 17 Sep 2022 14:55:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 47019843CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663426555;
	bh=/ZsjFDstJgyn9e8KIZvqTrY8yvWcpHCbPwL7OHiFp74=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dmaJPV96JmDtJL8jjBBQdRGu5iO1Es0JskaTbW8bqKVnlc5bOTUuwKJFuSH7B/qTZ
	 qCg9nTqpMSguapDN3S9/Ik7cV5eiuqvl9lR7pdA/A9lxUr1116f8Z04suQGZ0JKnFe
	 C1/IJJq3sNKsJvSE7eDccEAh4wIkkeq8OZd3Y7ePreDZ1pyiJqQgznJ0gV0BZm1vCc
	 Mc906z8Px/uBUvW0LPIMYOE/fiteBT4hTqUozgDKWsfRFOO8qLR/LOVxP3uPk7tIT/
	 nBOiQLFW7Kewwoy/NAM44W77Tyu5paUY6taNw57jty0+CIZ6N9JRdV1jqvjyoV9jl6
	 sL4ed4Ias8jbw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dA3nVYox7WAs; Sat, 17 Sep 2022 14:55:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EBB4583F63;
	Sat, 17 Sep 2022 14:55:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EBB4583F63
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 524591BF575
 for <intel-wired-lan@osuosl.org>; Sat, 17 Sep 2022 14:55:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2D1B84049C
 for <intel-wired-lan@osuosl.org>; Sat, 17 Sep 2022 14:55:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2D1B84049C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WsSlrZyV7JXo for <intel-wired-lan@osuosl.org>;
 Sat, 17 Sep 2022 14:55:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2E52640153
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2E52640153
 for <intel-wired-lan@osuosl.org>; Sat, 17 Sep 2022 14:55:46 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae884.dynamic.kabel-deutschland.de
 [95.90.232.132])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id B035361EA1929;
 Sat, 17 Sep 2022 16:55:43 +0200 (CEST)
Message-ID: <6f5f22c4-45dd-bfd4-cc9e-f1bb7035abaa@molgen.mpg.de>
Date: Sat, 17 Sep 2022 16:55:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
References: <20220917045801.15555-1-muhammad.husaini.zulkifli@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220917045801.15555-1-muhammad.husaini.zulkifli@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v2] igc: Correct the launchtime offset
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

RGVhciBNdWhhbW1hZCwKCgpUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4KCkFtIDE3LjA5LjIyIHVt
IDA2OjU4IHNjaHJpZWIgTXVoYW1tYWQgSHVzYWluaSBadWxraWZsaToKPiBUaGUgbGF1bmNodGlt
ZSBvZmZzZXQgc2hvdWxkIGJlIGNvcnJlY3RlZCBhY2NvcmRpbmcgdG8gc2VjdGlvbnMgNy41LjIu
Ngo+IFRyYW5zbWl0IFNjaGVkdWxpbmcgTGF0ZW5jeSBvZiB0aGUgSW50ZWwgRXRoZXJuZXQgSTIy
NS9JMjI2IFNvZnR3YXJlCj4gVXNlciBNYW51YWwuCgpQbGVhc2UgbWVudGlvbiBkZXNjcmliZSB0
aGUgY3VycmVudCBzdGF0ZS4gV2hhdCBpcyB0aGUgY3VycmVudCAKbGF1bmNodGltZSBvZmZzZXQs
IGFuZCB3aGF0IHByb2JsZW1zIGRvZXMgaXQgY2F1c2UuCgo+IFNvZnR3YXJlIGNhbiBjb21wZW5z
YXRlIHRoZSBsYXRlbmN5IGJldHdlZW4gdGhlIHRyYW5zbWlzc2lvbiBzY2hlZHVsaW5nCj4gYW5k
IHRoZSB0aW1lIHRoYXQgcGFja2V0IGlzIHRyYW5zbWl0dGVkIHRvIHRoZSBuZXR3b3JrIGJ5IHNl
dHRpbmcgdGhpcwo+IEdUeE9mZnNldCByZWdpc3Rlci4gV2l0aG91dCBzZXR0aW5nIHRoaXMgcmVn
aXN0ZXIsIHRoZXJlIG1heSBiZSBhCj4gc2lnbmlmaWNhbnQgZGVsYXkgYmV0d2VlbiB0aGUgcGFj
a2V0IHNjaGVkdWxpbmcgYW5kIHRoZSBuZXR3b3JrIHBvaW50LgoKUGxlYXNlIGRvY3VtZW50IHRo
ZSB0ZXN0IHNldHVwIGFuZCBudW1iZXJzIGluIHRoZSBjb21taXQgbWVzc2FnZS4KCj4gVGhpcyBw
YXRjaCBoZWxwIHRvIHJlZHVjZSB0aGUgbGF0ZW5jeSBmb3IgZWFjaCBvZiB0aGUgbGluayBzcGVl
ZC4KCmhlbHAqcyoKCj4gU2lnbmVkLW9mZi1ieTogVmluaWNpdXMgQ29zdGEgR29tZXMgPHZpbmlj
aXVzLmdvbWVzQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNdWhhbW1hZCBIdXNhaW5pIFp1
bGtpZmxpIDxtdWhhbW1hZC5odXNhaW5pLnp1bGtpZmxpQGludGVsLmNvbT4KPiAtLS0KPiAgIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfZGVmaW5lcy5oIHwgIDYgKysrKwo+ICAg
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMgICAgfCAgNiArKysrCj4g
ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3JlZ3MuaCAgICB8ICAxICsKPiAg
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfdHNuLmMgICAgIHwgMzAgKysrKysr
KysrKysrKysrKysrKysKPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfdHNu
LmggICAgIHwgIDEgKwo+ICAgNSBmaWxlcyBjaGFuZ2VkLCA0NCBpbnNlcnRpb25zKCspCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfZGVmaW5lcy5o
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19kZWZpbmVzLmgKPiBpbmRleCA0
ZjlkN2YwMTNhOTUuLjQ2ZGUxZGMyNmVmMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pZ2MvaWdjX2RlZmluZXMuaAo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2lnYy9pZ2NfZGVmaW5lcy5oCj4gQEAgLTQwMCw2ICs0MDAsMTIgQEAKPiAgICNkZWZp
bmUgSUdDX0RUWE1YUEtUU1pfVFNOCTB4MTkgLyogMTYwMCBieXRlcyBvZiBtYXggVFggRE1BIHBh
Y2tldCBzaXplICovCj4gICAjZGVmaW5lIElHQ19EVFhNWFBLVFNaX0RFRkFVTFQJMHg5OCAvKiA5
NzI4LWJ5dGUgSnVtYm8gZnJhbWVzICovCj4gICAKPiArLyogVHJhbnNtaXQgU2NoZWR1bGluZyBM
YXRlbmN5ICovCj4gKyNkZWZpbmUgSUdDX1RYT0ZGU0VUX1NQRUVEXzEwCTB4MDAwMDM0QkMKPiAr
I2RlZmluZSBJR0NfVFhPRkZTRVRfU1BFRURfMTAwCTB4MDAwMDA1NzgKPiArI2RlZmluZSBJR0Nf
VFhPRkZTRVRfU1BFRURfMTAwMAkweDAwMDAwMTJDCj4gKyNkZWZpbmUgSUdDX1RYT0ZGU0VUX1NQ
RUVEXzI1MDAJMHgwMDAwMDU3OAo+ICsKCkxhdGVuY3kgc291bmRzIGxpa2UgYSB0aW1lIHZhbHVl
LiBDYW4gYSB1bml0IGJlIGFkZGVkIHRvIHRoZSBtYWNyb3M/IApNYXliZSBhZGQgYXMgYSBjb21t
ZW50LCB3aGF0IGxhdGVuY3kgaXQgYWN0dWFsbHkgaXMuCgo+ICAgLyogVGltZSBTeW5jIEludGVy
cnVwdCBDYXVzZXMgKi8KPiAgICNkZWZpbmUgSUdDX1RTSUNSX1NZU19XUkFQCUJJVCgwKSAvKiBT
WVNUSU0gV3JhcCBhcm91bmQuICovCj4gICAjZGVmaW5lIElHQ19UU0lDUl9UWFRTCQlCSVQoMSkg
LyogVHJhbnNtaXQgVGltZXN0YW1wLiAqLwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ln
Yy9pZ2NfbWFpbi5jCj4gaW5kZXggYmY2YzQ2MWUxYTJhLi43MGUwYWU3Zjk5ZDkgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMKPiArKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYwo+IEBAIC01MzgyLDYgKzUz
ODIsMTIgQEAgc3RhdGljIHZvaWQgaWdjX3dhdGNoZG9nX3Rhc2soc3RydWN0IHdvcmtfc3RydWN0
ICp3b3JrKQo+ICAgCQkJCWJyZWFrOwo+ICAgCQkJfQo+ICAgCj4gKwkJCS8qIE9uY2UgdGhlIGxh
dW5jaCB0aW1lIGhhcyBiZWVuIHNldCBvbiB0aGUgd2lyZSwgdGhlcmUgaXMgYSBkZWxheQo+ICsJ
CQkgKiBiZWZvcmUgdGhlIGxpbmsgc3BlZWQgY2FuIGJlIGRldGVybWluZWQgYmFzZWQgb24gbGlu
ayB1cCBhY3Rpdml0eS4KCmxpbmstdXAgb3IgbGlua3VwPwoKPiArCQkJICogV3JpdGUgaW50byB0
aGUgcmVnaXN0ZXIgYXMgc29vbiBhcyB3ZSBrbm93IHRoZSBjb3JyZWN0IGxpbmsgc3BlZWQuCj4g
KwkJCSAqLwo+ICsJCQlpZ2NfdHNuX2FkanVzdF90eHRpbWVfb2Zmc2V0KGFkYXB0ZXIpOwo+ICsK
PiAgIAkJCWlmIChhZGFwdGVyLT5saW5rX3NwZWVkICE9IFNQRUVEXzEwMDApCj4gICAJCQkJZ290
byBub193YWl0Owo+ICAgCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lnYy9pZ2NfcmVncy5oIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19yZWdz
LmgKPiBpbmRleCBjMGQ4MjE0MTQ4ZDEuLjAxYzg2ZDM2ODU2ZCAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3JlZ3MuaAo+ICsrKyBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcmVncy5oCj4gQEAgLTIyNCw2ICsyMjQsNyBAQAo+ICAg
LyogVHJhbnNtaXQgU2NoZWR1bGluZyBSZWdpc3RlcnMgKi8KPiAgICNkZWZpbmUgSUdDX1RRQVZD
VFJMCQkweDM1NzAKPiAgICNkZWZpbmUgSUdDX1RYUUNUTChfbikJCSgweDMzNDQgKyAweDQgKiAo
X24pKQo+ICsjZGVmaW5lIElHQ19HVFhPRkZTRVQJCTB4MzMxMAo+ICAgI2RlZmluZSBJR0NfQkFT
RVRfTAkJMHgzMzE0Cj4gICAjZGVmaW5lIElHQ19CQVNFVF9ICQkweDMzMTgKPiAgICNkZWZpbmUg
SUdDX1FCVkNZQ0xFVAkJMHgzMzFDCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2lnYy9pZ2NfdHNuLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdj
X3Rzbi5jCj4gaW5kZXggMGZjZTIyZGUyYWI4Li5mOTc1ZWQ4MDdkYTEgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY190c24uYwo+ICsrKyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfdHNuLmMKPiBAQCAtNDgsNiArNDgsMzUgQEAgc3Rh
dGljIHVuc2lnbmVkIGludCBpZ2NfdHNuX25ld19mbGFncyhzdHJ1Y3QgaWdjX2FkYXB0ZXIgKmFk
YXB0ZXIpCj4gICAJcmV0dXJuIG5ld19mbGFnczsKPiAgIH0KPiAgIAo+ICt2b2lkIGlnY190c25f
YWRqdXN0X3R4dGltZV9vZmZzZXQoc3RydWN0IGlnY19hZGFwdGVyICphZGFwdGVyKQo+ICt7Cj4g
KwlzdHJ1Y3QgaWdjX2h3ICpodyA9ICZhZGFwdGVyLT5odzsKPiArCXUxNiB0eG9mZnNldDsKPiAr
Cj4gKwlpZiAoIWlzX2FueV9sYXVuY2h0aW1lKGFkYXB0ZXIpKQo+ICsJCXJldHVybjsKPiArCj4g
Kwlzd2l0Y2ggKGFkYXB0ZXItPmxpbmtfc3BlZWQpIHsKPiArCWNhc2UgU1BFRURfMTA6Cj4gKwkJ
dHhvZmZzZXQgPSBJR0NfVFhPRkZTRVRfU1BFRURfMTA7Cj4gKwkJYnJlYWs7Cj4gKwljYXNlIFNQ
RUVEXzEwMDoKPiArCQl0eG9mZnNldCA9IElHQ19UWE9GRlNFVF9TUEVFRF8xMDA7Cj4gKwkJYnJl
YWs7Cj4gKwljYXNlIFNQRUVEXzEwMDA6Cj4gKwkJdHhvZmZzZXQgPSBJR0NfVFhPRkZTRVRfU1BF
RURfMTAwMDsKPiArCQlicmVhazsKPiArCWNhc2UgU1BFRURfMjUwMDoKPiArCQl0eG9mZnNldCA9
IElHQ19UWE9GRlNFVF9TUEVFRF8yNTAwOwo+ICsJCWJyZWFrOwo+ICsJZGVmYXVsdDoKPiArCQl0
eG9mZnNldCA9IDA7Cj4gKwkJYnJlYWs7Cj4gKwl9Cj4gKwo+ICsJd3IzMihJR0NfR1RYT0ZGU0VU
LCB0eG9mZnNldCk7CgpTaG91bGRu4oCZdCB0eG9mZnNldCBiZSB1MzIgdGhlbj8KCj4gK30KPiAr
Cj4gICAvKiBSZXR1cm5zIHRoZSBUU04gc3BlY2lmaWMgcmVnaXN0ZXJzIHRvIHRoZWlyIGRlZmF1
bHQgdmFsdWVzIGFmdGVyCj4gICAgKiB0aGUgYWRhcHRlciBpcyByZXNldC4KPiAgICAqLwo+IEBA
IC01Nyw2ICs4Niw3IEBAIHN0YXRpYyBpbnQgaWdjX3Rzbl9kaXNhYmxlX29mZmxvYWQoc3RydWN0
IGlnY19hZGFwdGVyICphZGFwdGVyKQo+ICAgCXUzMiB0cWF2Y3RybDsKPiAgIAlpbnQgaTsKPiAg
IAo+ICsJd3IzMihJR0NfR1RYT0ZGU0VULCAwKTsKPiAgIAl3cjMyKElHQ19UWFBCUywgSTIyNV9U
WFBCU0laRV9ERUZBVUxUKTsKPiAgIAl3cjMyKElHQ19EVFhNWFBLVFNaLCBJR0NfRFRYTVhQS1RT
Wl9ERUZBVUxUKTsKPiAgIAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pZ2MvaWdjX3Rzbi5oIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY190c24u
aAo+IGluZGV4IDE1MTIzMDdmNWE1Mi4uYjUzZTZhZjU2MGI3IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfdHNuLmgKPiArKysgYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3Rzbi5oCj4gQEAgLTYsNSArNiw2IEBACj4gICAKPiAgIGlu
dCBpZ2NfdHNuX29mZmxvYWRfYXBwbHkoc3RydWN0IGlnY19hZGFwdGVyICphZGFwdGVyKTsKPiAg
IGludCBpZ2NfdHNuX3Jlc2V0KHN0cnVjdCBpZ2NfYWRhcHRlciAqYWRhcHRlcik7Cj4gK3ZvaWQg
aWdjX3Rzbl9hZGp1c3RfdHh0aW1lX29mZnNldChzdHJ1Y3QgaWdjX2FkYXB0ZXIgKmFkYXB0ZXIp
Owo+ICAgCj4gICAjZW5kaWYgLyogX0lHQ19CQVNFX0ggKi8KCgpLaW5kIHJlZ2FyZHMsCgpQYXVs
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
