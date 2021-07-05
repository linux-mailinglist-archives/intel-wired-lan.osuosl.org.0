Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F633BB841
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jul 2021 09:52:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 78A3C8297F;
	Mon,  5 Jul 2021 07:52:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lZnLsXwgGSNy; Mon,  5 Jul 2021 07:52:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 70CFB827D2;
	Mon,  5 Jul 2021 07:52:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 771B71BF334
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 07:52:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 65AED40109
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 07:52:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6_WOc_6KfDtK for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jul 2021 07:52:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C411A400B5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 07:52:22 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aeda9.dynamic.kabel-deutschland.de
 [95.90.237.169])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id C18EE61E64761;
 Mon,  5 Jul 2021 09:52:20 +0200 (CEST)
To: Jacob Keller <jacob.e.keller@intel.com>
References: <20210701002713.3486336-1-jacob.e.keller@intel.com>
 <20210701002713.3486336-5-jacob.e.keller@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <29cb4977-3559-094c-cc18-d2d32819e227@molgen.mpg.de>
Date: Mon, 5 Jul 2021 09:52:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210701002713.3486336-5-jacob.e.keller@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [net-next 04/13] ice: restart periodic
 outputs around time changes
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

RGVhciBKYWNvYiwKCgpBbSAwMS4wNy4yMSB1bSAwMjoyNyBzY2hyaWViIEphY29iIEtlbGxlcjoK
PiBXZW4gd2UgZW5hYmxlZCBhdXhpbGlhcnkgaW5wdXQvb3V0cHV0IHN1cHBvcnQgZm9yIHRoZSBF
ODEwIGRldmljZSwgd2UKCldoZW4KCj4gZm9yZ290IHRvIGFkZCBsb2dpYyB0byByZXN0YXJ0IHRo
ZSBvdXRwdXQgd2hlbiB3ZSBjaGFuZ2UgdGltZS4gVGhpcyBpcwo+IGltcG9ydGFudCBhcyB0aGUg
cGVyaW9kaWMgb3V0cHV0IHdpbGwgYmUgaW5jb3JyZWN0IGFmdGVyIGEgdGltZSBjaGFuZ2UKPiBv
dGhlcndpc2UuCj4gCj4gVGhpcyB1bmZvcnR1bmF0ZWx5IGluY2x1ZGVzIHRoZSBhZGp1c3QgdGlt
ZSBmdW5jdGlvbiwgZXZlbiB0aG91Z2ggaXQKPiB1c2VzIGFuIGF0b21pYyBoYXJkd2FyZSBpbnRl
cmZhY2UuIFRoZSBhdG9taWMgYWRqdXN0bWVudCBjYW4gc3RpbGwgY2F1c2UKPiB0aGUgcGluIG91
dHB1dCB0byBzdGFsbCBwZXJtYW5lbnRseSwgc28gd2UgbmVlZCB0byBzdG9wIGFuZCByZXN0YXJ0
IGl0Lgo+IAo+IEZpeGVzOiAxNzJkYjVmOTFkNWYgKCJpY2U6IGFkZCBzdXBwb3J0IGZvciBhdXhp
bGlhcnkgaW5wdXQvb3V0cHV0IHBpbnMiKQo+IFNpZ25lZC1vZmYtYnk6IEphY29iIEtlbGxlciA8
amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9wdHAuYyB8IDMwICsrKysrKysrKysrKysrKysrKysrKysrKwo+ICAgMSBm
aWxlIGNoYW5nZWQsIDMwIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfcHRwLmMKPiBpbmRleCA4M2JhMGJmMjgxN2EuLjA4YWNkYjI0OTRlZCAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cC5jCj4gKysr
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuYwo+IEBAIC03NzYsNiAr
Nzc2LDcgQEAgaWNlX3B0cF9zZXR0aW1lNjQoc3RydWN0IHB0cF9jbG9ja19pbmZvICppbmZvLCBj
b25zdCBzdHJ1Y3QgdGltZXNwZWM2NCAqdHMpCj4gICAJc3RydWN0IGljZV9wZiAqcGYgPSBwdHBf
aW5mb190b19wZihpbmZvKTsKPiAgIAlzdHJ1Y3QgdGltZXNwZWM2NCB0czY0ID0gKnRzOwo+ICAg
CXN0cnVjdCBpY2VfaHcgKmh3ID0gJnBmLT5odzsKPiArCXU4IGk7CgpGb3IgY291bnQgdmFyaWFi
bGVzLCBpdOKAmXMgYmV0dGVyIHRvIHVzZSBuYXRpdmUgdHlwZXMsIHNpemVfdC91bnNpZ25lZCAK
aW50IGluIHRoaXMgY2FzZS4KCiAgICAgc3RhdGljIGludCBpY2VfcHRwX2NmZ19jbGtvdXQoc3Ry
dWN0IGljZV9wZiAqcGYsIHVuc2lnbmVkIGludCBjaGFuLAogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHN0cnVjdCBpY2VfcGVyb3V0X2NoYW5uZWwgKmNvbmZpZywgCmJvb2wgc3Rv
cmUpCgo+ICAgCWludCBlcnI7Cj4gICAKPiAgIAlpZiAoIWljZV9wdHBfbG9jayhodykpIHsKPiBA
QCAtNzgzLDEyICs3ODQsMjIgQEAgaWNlX3B0cF9zZXR0aW1lNjQoc3RydWN0IHB0cF9jbG9ja19p
bmZvICppbmZvLCBjb25zdCBzdHJ1Y3QgdGltZXNwZWM2NCAqdHMpCj4gICAJCWdvdG8gZXhpdDsK
PiAgIAl9Cj4gICAKPiArCS8qIERpc2FibGUgcGVyaW9kaWMgb3V0cHV0cyAqLwo+ICsJZm9yIChp
ID0gMDsgaSA8IGluZm8tPm5fcGVyX291dDsgaSsrKQo+ICsJCWlmIChwZi0+cHRwLnBlcm91dF9j
aGFubmVsc1tpXS5lbmEpCj4gKwkJCWljZV9wdHBfY2ZnX2Nsa291dChwZiwgaSwgTlVMTCwgZmFs
c2UpOwo+ICsKPiAgIAllcnIgPSBpY2VfcHRwX3dyaXRlX2luaXQocGYsICZ0czY0KTsKPiAgIAlp
Y2VfcHRwX3VubG9jayhodyk7Cj4gICAKPiAgIAlpZiAoIWVycikKPiAgIAkJaWNlX3B0cF91cGRh
dGVfY2FjaGVkX3BoY3RpbWUocGYpOwo+ICAgCj4gKwkvKiBSZWVuYWJsZSBwZXJpb2RpYyBvdXRw
dXRzICovCj4gKwlmb3IgKGkgPSAwOyBpIDwgaW5mby0+bl9wZXJfb3V0OyBpKyspCj4gKwkJaWYg
KHBmLT5wdHAucGVyb3V0X2NoYW5uZWxzW2ldLmVuYSkKPiArCQkJaWNlX3B0cF9jZmdfY2xrb3V0
KHBmLCBpLCAmcGYtPnB0cC5wZXJvdXRfY2hhbm5lbHNbaV0sCj4gKwkJCQkJICAgZmFsc2UpOwo+
ICAgZXhpdDoKPiAgIAlpZiAoZXJyKSB7Cj4gICAJCWRldl9lcnIoaWNlX3BmX3RvX2RldihwZiks
ICJQVFAgZmFpbGVkIHRvIHNldCB0aW1lICVkXG4iLCBlcnIpOwo+IEBAIC04MjUsNiArODM2LDcg
QEAgc3RhdGljIGludCBpY2VfcHRwX2FkanRpbWUoc3RydWN0IHB0cF9jbG9ja19pbmZvICppbmZv
LCBzNjQgZGVsdGEpCj4gICAJc3RydWN0IGljZV9odyAqaHcgPSAmcGYtPmh3Owo+ICAgCXN0cnVj
dCBkZXZpY2UgKmRldjsKPiAgIAlpbnQgZXJyOwo+ICsJdTggaTsKPiAgIAo+ICAgCWRldiA9IGlj
ZV9wZl90b19kZXYocGYpOwo+ICAgCj4gQEAgLTg0Miw4ICs4NTQsMTkgQEAgc3RhdGljIGludCBp
Y2VfcHRwX2FkanRpbWUoc3RydWN0IHB0cF9jbG9ja19pbmZvICppbmZvLCBzNjQgZGVsdGEpCj4g
ICAJCXJldHVybiAtRUJVU1k7Cj4gICAJfQo+ICAgCj4gKwkvKiBEaXNhYmxlIHBlcmlvZGljIG91
dHB1dHMgKi8KPiArCWZvciAoaSA9IDA7IGkgPCBpbmZvLT5uX3Blcl9vdXQ7IGkrKykKPiArCQlp
ZiAocGYtPnB0cC5wZXJvdXRfY2hhbm5lbHNbaV0uZW5hKQo+ICsJCQlpY2VfcHRwX2NmZ19jbGtv
dXQocGYsIGksIE5VTEwsIGZhbHNlKTsKPiArCj4gICAJZXJyID0gaWNlX3B0cF93cml0ZV9hZGoo
cGYsIGRlbHRhKTsKPiAgIAo+ICsJLyogUmVlbmFibGUgcGVyaW9kaWMgb3V0cHV0cyAqLwo+ICsJ
Zm9yIChpID0gMDsgaSA8IGluZm8tPm5fcGVyX291dDsgaSsrKQo+ICsJCWlmIChwZi0+cHRwLnBl
cm91dF9jaGFubmVsc1tpXS5lbmEpCj4gKwkJCWljZV9wdHBfY2ZnX2Nsa291dChwZiwgaSwgJnBm
LT5wdHAucGVyb3V0X2NoYW5uZWxzW2ldLAo+ICsJCQkJCSAgIGZhbHNlKTsKPiArCj4gICAJaWNl
X3B0cF91bmxvY2soaHcpOwo+ICAgCj4gICAJaWYgKGVycikgewo+IEBAIC0xNTI2LDYgKzE1NDks
OCBAQCB2b2lkIGljZV9wdHBfaW5pdChzdHJ1Y3QgaWNlX3BmICpwZikKPiAgICAqLwo+ICAgdm9p
ZCBpY2VfcHRwX3JlbGVhc2Uoc3RydWN0IGljZV9wZiAqcGYpCj4gICB7Cj4gKwlpbnQgaTsKPiAr
Cj4gICAJLyogRGlzYWJsZSB0aW1lc3RhbXBpbmcgZm9yIGJvdGggVHggYW5kIFJ4ICovCj4gICAJ
aWNlX3B0cF9jZmdfdGltZXN0YW1wKHBmLCBmYWxzZSk7Cj4gICAKPiBAQCAtMTU0Myw2ICsxNTY4
LDExIEBAIHZvaWQgaWNlX3B0cF9yZWxlYXNlKHN0cnVjdCBpY2VfcGYgKnBmKQo+ICAgCWlmICgh
cGYtPnB0cC5jbG9jaykKPiAgIAkJcmV0dXJuOwo+ICAgCj4gKwkvKiBEaXNhYmxlIHBlcmlvZGlj
IG91dHB1dHMgKi8KPiArCWZvciAoaSA9IDA7IGkgPCBwZi0+cHRwLmluZm8ubl9wZXJfb3V0OyBp
KyspCj4gKwkJaWYgKHBmLT5wdHAucGVyb3V0X2NoYW5uZWxzW2ldLmVuYSkKPiArCQkJaWNlX3B0
cF9jZmdfY2xrb3V0KHBmLCBpLCBOVUxMLCBmYWxzZSk7Cj4gKwoKQ291bGQgdGhpcyBiZSBwdXQg
aW50byBhIGRlZGljYXRlZCBlbmFibGUvZGlzYWJsZSBmdW5jdGlvbiAob25seSBwZiAKc2VlbXMg
dG8gYmUgbmVlZGVkIHRvIGJlIHBhc3NlZCkuCgo+ICAgCWljZV9jbGVhcl9wdHBfY2xvY2tfaW5k
ZXgocGYpOwo+ICAgCXB0cF9jbG9ja191bnJlZ2lzdGVyKHBmLT5wdHAuY2xvY2spOwo+ICAgCXBm
LT5wdHAuY2xvY2sgPSBOVUxMOwoKCktpbmQgcmVnYXJkcywKClBhdWwKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
