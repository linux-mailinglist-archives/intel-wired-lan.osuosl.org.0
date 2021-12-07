Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E54E546BCA1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Dec 2021 14:31:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7E05A41C0E;
	Tue,  7 Dec 2021 13:31:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OzUrkL8hb1tM; Tue,  7 Dec 2021 13:31:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6ADC8403EB;
	Tue,  7 Dec 2021 13:31:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8463C1BF2A4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Dec 2021 13:31:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 803D781D88
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Dec 2021 13:31:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b05f56BNeHHy for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Dec 2021 13:31:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2F60A8300C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Dec 2021 13:31:10 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5aea86.dynamic.kabel-deutschland.de
 [95.90.234.134])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id E26B361E6478B;
 Tue,  7 Dec 2021 14:31:06 +0100 (CET)
Message-ID: <8e8f07cb-899a-b184-78ed-323d3b436b11@molgen.mpg.de>
Date: Tue, 7 Dec 2021 14:31:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: Mateusz Palczewski <mateusz.palczewski@intel.com>
References: <20211207132525.26458-1-mateusz.palczewski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20211207132525.26458-1-mateusz.palczewski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v3] i40e: Fix for displaying
 message regarding NVM version
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

RGVhciBNYXRldXN6LAoKCkFtIDA3LjEyLjIxIHVtIDE0OjI1IHNjaHJpZWIgTWF0ZXVzeiBQYWxj
emV3c2tpOgo+IFdoZW4gbG9hZGluZyB0aGUgaTQwZSBkcml2ZXIsIGl0IHByaW50cyBhIG1lc3Nh
Z2UgbGlrZTogJ1RoZSBkcml2ZXIgZm9yIHRoZQo+IGRldmljZSBkZXRlY3RlZCBhIG5ld2VyIHZl
cnNpb24gb2YgdGhlIE5WTSBpbWFnZSB2MS54IHRoYW4gZXhwZWN0ZWQgdjEueS4KPiBQbGVhc2Ug
aW5zdGFsbCB0aGUgbW9zdCByZWNlbnQgdmVyc2lvbiBvZiB0aGUgbmV0d29yayBkcml2ZXIuJyBU
aGlzIGlzCj4gbWlzbGVhZGluZyBhcyB0aGUgZHJpdmVyIGlzIHdvcmtpbmcgYXMgZXhwZWN0ZWQu
Cj4gCj4gRml4IHRoYXQgYnkgcmVtb3ZpbmcgdGhlIHNlY29uZCBwYXJ0IG9mIG1lc3NhZ2UgYW5k
IGNoYW5naW5nIGl0IGZyb20KPiBkZXZfaW5mbyB0byBkZXZfZGdiLgo+IAo+IEZpeGVzOiA0ZmIy
OWJkZGIgKCJpNDBlOiBUaGUgZHJpdmVyIG5vdyBwcmludHMgdGhlIEFQSSB2ZXJzaW9uIGluIGVy
cm9yIG1lc3NhZ2UiKQo+IFNpZ25lZC1vZmYtYnk6IE1hdGV1c3ogUGFsY3pld3NraSA8bWF0ZXVz
ei5wYWxjemV3c2tpQGludGVsLmNvbT4KPiAtLS0KPiAgIHYzOiBDaGFuZ2VkIHRoZSBwYXRjaCBh
ZnRlciBjb21tdW5pdHkgcmV2aWV3Cj4gICB2MjogRml4ZWQgdGhlIGZpeGVzIHRhZyB0byBiZSAx
MiBkaWdpdHMgbG9uZwo+IC0tLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9p
NDBlX21haW4uYyB8IDQgKystLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaTQwZS9pNDBlX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQw
ZV9tYWluLmMKPiBpbmRleCA0NjY0ZDA3Li5jMDc3NDZiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMKPiArKysgYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jCj4gQEAgLTE1NDY5LDggKzE1NDY5LDggQEAg
c3RhdGljIGludCBpNDBlX3Byb2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LCBjb25zdCBzdHJ1Y3Qg
cGNpX2RldmljZV9pZCAqZW50KQo+ICAgCj4gICAJaWYgKGh3LT5hcS5hcGlfbWFqX3ZlciA9PSBJ
NDBFX0ZXX0FQSV9WRVJTSU9OX01BSk9SICYmCj4gICAJICAgIGh3LT5hcS5hcGlfbWluX3ZlciA+
IEk0MEVfRldfTUlOT1JfVkVSU0lPTihodykpCj4gLQkJZGV2X2luZm8oJnBkZXYtPmRldiwKPiAt
CQkJICJUaGUgZHJpdmVyIGZvciB0aGUgZGV2aWNlIGRldGVjdGVkIGEgbmV3ZXIgdmVyc2lvbiBv
ZiB0aGUgTlZNIGltYWdlIHYldS4ldSB0aGFuIGV4cGVjdGVkIHYldS4ldS4gUGxlYXNlIGluc3Rh
bGwgdGhlIG1vc3QgcmVjZW50IHZlcnNpb24gb2YgdGhlIG5ldHdvcmsgZHJpdmVyLlxuIiwKPiAr
CQlkZXZfZGJnKCZwZGV2LT5kZXYsCj4gKwkJCSJUaGUgZHJpdmVyIGZvciB0aGUgZGV2aWNlIGRl
dGVjdGVkIGEgbmV3ZXIgdmVyc2lvbiBvZiB0aGUgTlZNIGltYWdlIHYldS4ldSB0aGFuIGV4cGVj
dGVkIHYldS4ldS5cbiIsCj4gICAJCQkgaHctPmFxLmFwaV9tYWpfdmVyLAo+ICAgCQkJIGh3LT5h
cS5hcGlfbWluX3ZlciwKPiAgIAkJCSBJNDBFX0ZXX0FQSV9WRVJTSU9OX01BSk9SLAo+IAoKSXTi
gJlzIGEgZGVidWcgbWVzc2FnZSBub3csIHNvIG9ubHkgYSBmZXcgcGVvcGxlIGFyZSBnb2luZyB0
byBub3RpY2UsIGJ1dCAKYSBub3RlIG9uIHdoYXQgdG8gZG8gdG8gZ2V0IHJpZCBvZiB0aGUgbWVz
c2FnZSwgd291bGQgYmUgc3RpbGwgYmUgbmljZS4KCj4gVG8gZGlzYWJsZSB0aGlzIGluZm9ybWF0
aW9uYWwgbWVzc2FnZSwgdXBkYXRlIHRvIGEgbmV3ZXIgZHJpdmVyIHZlcnNpb24uCgoKS2luZCBy
ZWdhcmRzLAoKUGF1bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
