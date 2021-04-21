Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6689C3664E6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Apr 2021 07:35:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E7D7A40645;
	Wed, 21 Apr 2021 05:35:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eYobqeMlYSHj; Wed, 21 Apr 2021 05:35:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F49A40634;
	Wed, 21 Apr 2021 05:35:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CAAAF1BF954
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 05:35:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B864783D5E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 05:35:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WK-n7pPCQYZk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Apr 2021 05:35:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E649583D4C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 05:35:46 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5ae88d.dynamic.kabel-deutschland.de
 [95.90.232.141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 65338206473D7;
 Wed, 21 Apr 2021 07:35:43 +0200 (CEST)
To: Salil Mehta <salil.mehta@huawei.com>
References: <20210413224446.16612-1-salil.mehta@huawei.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <7974e665-73bd-401c-f023-9da568e1dffc@molgen.mpg.de>
Date: Wed, 21 Apr 2021 07:35:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210413224446.16612-1-salil.mehta@huawei.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH V2 net] ice: Re-organizes reqstd/avail
 {R, T}XQ check/code for efficiency+readability
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
Cc: netdev@vger.kernel.org, linuxarm@huawei.com, linuxarm@openeuler.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBTYWxpbCwKCgpUaGFuayB5b3UgdmVyeSBtdWNoIGZvciB5b3VyIHBhdGNoLgoKSW4gdGhl
IGdpdCBjb21taXQgbWVzc2FnZSBzdW1tYXJ5LCBjb3VsZCB5b3UgcGxlYXNlIHVzZSBpbXBlcmF0
aXZlIG1vb2QgWzFdPwoKPiBSZS1vcmdhbml6ZSByZXFzdGQvYXZhaWwge1IsIFR9WFEgY2hlY2sv
Y29kZSBmb3IgZWZmaWNpZW5jeStyZWFkYWJpbGl0eQoKSXTigJlzIGEgYml0IGxvbmcgdGhvdWdo
LiBNYXliZToKCj4gQXZvaWQgdW5uZWNlc3NhcnkgYXNzaWdubWVudCB3aXRoIHVzZXIgc3BlY2lm
aWVkIHtSLFR9WFFzCgpBbSAxNC4wNC4yMSB1bSAwMDo0NCBzY2hyaWViIFNhbGlsIE1laHRhOgo+
IElmIHVzZXIgaGFzIGV4cGxpY2l0bHkgcmVxdWVzdGVkIHRoZSBudW1iZXIgb2Yge1IsVH1YUXMs
IHRoZW4gaXQgaXMKPiB1bm5lY2Vzc2FyeSB0byBnZXQgdGhlIGNvdW50IG9mIGFscmVhZHkgYXZh
aWxhYmxlIHtSLFR9WFFzIGZyb20gdGhlCj4gUEYgYXZhaWxfe3IsdH14cXMgYml0bWFwLiBUaGlz
IHZhbHVlIHdpbGwgZ2V0IG92ZXJyaWRkZW4gYnkgdXNlciBzcGVjaWZpZWQKPiB2YWx1ZSBpbiBh
bnkgY2FzZS4KPiAKPiBUaGlzIHBhdGNoIGRvZXMgbWlub3IgcmUtb3JnYW5pemF0aW9uIG9mIHRo
ZSBjb2RlIGZvciBpbXByb3ZpbmcgdGhlIGZsb3cKPiBhbmQgcmVhZGFiaWx0aXkuIFRoaXMgc2Nv
cGUgb2YgaW1wcm92ZW1lbnQgd2FzIGZvdW5kIGR1cmluZyB0aGUgcmV2aWV3IG9mCgpyZWFkYWJp
bCppdCp5Cgo+IHRoZSBJQ0UgZHJpdmVyIGNvZGUuCj4gCj4gRllJLCBJIGNvdWxkIG5vdCB0ZXN0
IHRoaXMgY2hhbmdlIGR1ZSB0byB1bmF2YWlsYWJpbGl0eSBvZiB0aGUgaGFyZHdhcmUuCj4gSXQg
d291bGQgYmUgaGVscGZ1bCBpZiBzb21lYm9keSBjYW4gdGVzdCB0aGlzIHBhdGNoIGFuZCBwcm92
aWRlIFRlc3RlZC1ieQo+IFRhZy4gTWFueSB0aGFua3MhCgpUaGlzIHNob3VsZCBnbyBvdXRzaWRl
IHRoZSBjb21taXQgbWVzc2FnZSAoYmVsb3cgdGhlIC0tLSBmb3IgZXhhbXBsZSkuCgo+IEZpeGVz
OiA4NzMyNGU3NDdmZGUgKCJpY2U6IEltcGxlbWVudCBldGh0b29sIG9wcyBmb3IgY2hhbm5lbHMi
KQoKRGlkIHlvdSBjaGVjayB0aGUgYmVoYXZpb3IgYmVmb3JlIGlzIGFjdHVhbGx5IGEgYnVnPyBP
ciBpcyBpdCBqdXN0IGZvciAKdGhlIGRldGVjdGlvbiBoZXVyaXN0aWMgZm9yIGNvbW1pdHMgdG8g
YmUgYXBwbGllZCB0byB0aGUgc3RhYmxlIHNlcmllcz8KCj4gQ2M6IGludGVsLXdpcmVkLWxhbkBs
aXN0cy5vc3Vvc2wub3JnCj4gQ2M6IEplZmYgS2lyc2hlciA8amVmZnJleS50LmtpcnNoZXJAaW50
ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFNhbGlsIE1laHRhIDxzYWxpbC5tZWh0YUBodWF3ZWku
Y29tPgo+IC0tCj4gQ2hhbmdlIFYxLT5WMgo+ICAgKCopIEZpeGVkIHRoZSBjb21tZW50cyBmcm9t
IEFudGhvbnkgTmd1eWVuKEludGVsKQo+ICAgICAgIExpbms6IGh0dHBzOi8vbGttbC5vcmcvbGtt
bC8yMDIxLzQvMTIvMTk5Nwo+IC0tLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV9saWIuYyB8IDE0ICsrKysrKysrLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNl
cnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xpYi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9saWIuYwo+IGluZGV4IGQxM2M3ZmM4ZmIwYS4uZDc3MTMzZDZiYWE3IDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGliLmMKPiArKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xpYi5jCj4gQEAgLTE2MSwxMiArMTYx
LDEzIEBAIHN0YXRpYyB2b2lkIGljZV92c2lfc2V0X251bV9xcyhzdHJ1Y3QgaWNlX3ZzaSAqdnNp
LCB1MTYgdmZfaWQpCj4gICAKPiAgIAlzd2l0Y2ggKHZzaS0+dHlwZSkgewo+ICAgCWNhc2UgSUNF
X1ZTSV9QRjoKPiAtCQl2c2ktPmFsbG9jX3R4cSA9IG1pbjMocGYtPm51bV9sYW5fbXNpeCwKPiAt
CQkJCSAgICAgIGljZV9nZXRfYXZhaWxfdHhxX2NvdW50KHBmKSwKPiAtCQkJCSAgICAgICh1MTYp
bnVtX29ubGluZV9jcHVzKCkpOwo+ICAgCQlpZiAodnNpLT5yZXFfdHhxKSB7Cj4gICAJCQl2c2kt
PmFsbG9jX3R4cSA9IHZzaS0+cmVxX3R4cTsKPiAgIAkJCXZzaS0+bnVtX3R4cSA9IHZzaS0+cmVx
X3R4cTsKPiArCQl9IGVsc2Ugewo+ICsJCQl2c2ktPmFsbG9jX3R4cSA9IG1pbjMocGYtPm51bV9s
YW5fbXNpeCwKPiArCQkJCQkgICAgICBpY2VfZ2V0X2F2YWlsX3R4cV9jb3VudChwZiksCj4gKwkJ
CQkJICAgICAgKHUxNiludW1fb25saW5lX2NwdXMoKSk7Cj4gICAJCX0KCkkgYW0gY3VyaW91cywg
ZGlkIHlvdSBjaGVjayB0aGUgY29tcGlsZXIgYWN0dWFsbHkgY3JlYXRlcyBkaWZmZXJlbnQgCmNv
ZGUsIG9yIGRpZCBpdCBub3RpY2UgdGhlIGluZWZmaWNpZW5jeSBieSBpdHNlbGYgYW5kIG9wdGlt
aXplZCBpdCBhbHJlYWR5PwoKPiAgIAo+ICAgCQlwZi0+bnVtX2xhbl90eCA9IHZzaS0+YWxsb2Nf
dHhxOwo+IEBAIC0xNzUsMTIgKzE3NiwxMyBAQCBzdGF0aWMgdm9pZCBpY2VfdnNpX3NldF9udW1f
cXMoc3RydWN0IGljZV92c2kgKnZzaSwgdTE2IHZmX2lkKQo+ICAgCQlpZiAoIXRlc3RfYml0KElD
RV9GTEFHX1JTU19FTkEsIHBmLT5mbGFncykpIHsKPiAgIAkJCXZzaS0+YWxsb2NfcnhxID0gMTsK
PiAgIAkJfSBlbHNlIHsKPiAtCQkJdnNpLT5hbGxvY19yeHEgPSBtaW4zKHBmLT5udW1fbGFuX21z
aXgsCj4gLQkJCQkJICAgICAgaWNlX2dldF9hdmFpbF9yeHFfY291bnQocGYpLAo+IC0JCQkJCSAg
ICAgICh1MTYpbnVtX29ubGluZV9jcHVzKCkpOwo+ICAgCQkJaWYgKHZzaS0+cmVxX3J4cSkgewo+
ICAgCQkJCXZzaS0+YWxsb2NfcnhxID0gdnNpLT5yZXFfcnhxOwo+ICAgCQkJCXZzaS0+bnVtX3J4
cSA9IHZzaS0+cmVxX3J4cTsKPiArCQkJfSBlbHNlIHsKPiArCQkJCXZzaS0+YWxsb2NfcnhxID0g
bWluMyhwZi0+bnVtX2xhbl9tc2l4LAo+ICsJCQkJCQkgICAgICBpY2VfZ2V0X2F2YWlsX3J4cV9j
b3VudChwZiksCj4gKwkJCQkJCSAgICAgICh1MTYpbnVtX29ubGluZV9jcHVzKCkpOwo+ICAgCQkJ
fQo+ICAgCQl9Cj4gICAKCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QK
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
