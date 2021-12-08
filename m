Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EA19646D458
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Dec 2021 14:22:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4794D84C37;
	Wed,  8 Dec 2021 13:22:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7cEnFI032mlt; Wed,  8 Dec 2021 13:22:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5486F84C3A;
	Wed,  8 Dec 2021 13:22:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1CE551BF313
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 13:22:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0A78440132
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 13:22:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kXcQB2jlbJYC for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Dec 2021 13:22:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 20746400D8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 13:21:59 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5aed2c.dynamic.kabel-deutschland.de
 [95.90.237.44])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id E710361EA191E;
 Wed,  8 Dec 2021 14:21:56 +0100 (CET)
Message-ID: <b98e863b-8c64-4092-67ac-dbf84295acc1@molgen.mpg.de>
Date: Wed, 8 Dec 2021 14:21:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Content-Language: en-US
To: Mateusz Palczewski <mateusz.palczewski@intel.com>
References: <20211207132525.26458-1-mateusz.palczewski@intel.com>
 <8e8f07cb-899a-b184-78ed-323d3b436b11@molgen.mpg.de>
 <BL1PR11MB52886124AEE0A8C9E6679731876E9@BL1PR11MB5288.namprd11.prod.outlook.com>
 <37f3e44a-cc8b-9632-2982-8b28ac98bbb1@molgen.mpg.de>
 <BL1PR11MB528851994C2A9AF2CD976985876F9@BL1PR11MB5288.namprd11.prod.outlook.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <BL1PR11MB528851994C2A9AF2CD976985876F9@BL1PR11MB5288.namprd11.prod.outlook.com>
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

RGVhciBNYXRldXN6LAoKCkFtIDA4LjEyLjIxIHVtIDExOjEzIHNjaHJpZWIgUGFsY3pld3NraSwg
TWF0ZXVzejoKCj4+Pj4gQW0gMDcuMTIuMjEgdW0gMTQ6MjUgc2NocmllYiBNYXRldXN6IFBhbGN6
ZXdza2k6Cj4+Pj4+IFdoZW4gbG9hZGluZyB0aGUgaTQwZSBkcml2ZXIsIGl0IHByaW50cyBhIG1l
c3NhZ2UgbGlrZTogJ1RoZSBkcml2ZXIgZm9yIHRoZQo+Pj4+PiBkZXZpY2UgZGV0ZWN0ZWQgYSBu
ZXdlciB2ZXJzaW9uIG9mIHRoZSBOVk0gaW1hZ2UgdjEueCB0aGFuIGV4cGVjdGVkIHYxLnkuCj4+
Pj4+IFBsZWFzZSBpbnN0YWxsIHRoZSBtb3N0IHJlY2VudCB2ZXJzaW9uIG9mIHRoZSBuZXR3b3Jr
IGRyaXZlci4nIFRoaXMgaXMKPj4+Pj4gbWlzbGVhZGluZyBhcyB0aGUgZHJpdmVyIGlzIHdvcmtp
bmcgYXMgZXhwZWN0ZWQuCj4+Pj4+Cj4+Pj4+IEZpeCB0aGF0IGJ5IHJlbW92aW5nIHRoZSBzZWNv
bmQgcGFydCBvZiBtZXNzYWdlIGFuZCBjaGFuZ2luZyBpdCBmcm9tCj4+Pj4+IGRldl9pbmZvIHRv
IGRldl9kZ2IuCj4+Pj4+Cj4+Pj4+IEZpeGVzOiA0ZmIyOWJkZGIgKCJpNDBlOiBUaGUgZHJpdmVy
IG5vdyBwcmludHMgdGhlIEFQSSB2ZXJzaW9uIGluIGVycm9yIG1lc3NhZ2UiKQo+Pj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBNYXRldXN6IFBhbGN6ZXdza2kgPG1hdGV1c3oucGFsY3pld3NraUBpbnRlbC5j
b20+Cj4+Pj4+IC0tLQo+Pj4+PiAgICAgdjM6IENoYW5nZWQgdGhlIHBhdGNoIGFmdGVyIGNvbW11
bml0eSByZXZpZXcKPj4+Pj4gICAgIHYyOiBGaXhlZCB0aGUgZml4ZXMgdGFnIHRvIGJlIDEyIGRp
Z2l0cyBsb25nCj4+Pj4+IC0tLQo+Pj4+PiAgICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aTQwZS9pNDBlX21haW4uYyB8IDQgKystLQo+Pj4+PiAgICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4+Pj4KPj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMgYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jCj4+Pj4+IGluZGV4IDQ2NjRkMDcuLmMwNzc0NmIg
MTAwNjQ0Cj4+Pj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9t
YWluLmMKPj4+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21h
aW4uYwo+Pj4+PiBAQCAtMTU0NjksOCArMTU0NjksOCBAQCBzdGF0aWMgaW50IGk0MGVfcHJvYmUo
c3RydWN0IHBjaV9kZXYgKnBkZXYsIGNvbnN0IHN0cnVjdCBwY2lfZGV2aWNlX2lkICplbnQpCj4+
Pj4+ICAgICAKPj4+Pj4gICAgIAlpZiAoaHctPmFxLmFwaV9tYWpfdmVyID09IEk0MEVfRldfQVBJ
X1ZFUlNJT05fTUFKT1IgJiYKPj4+Pj4gICAgIAkgICAgaHctPmFxLmFwaV9taW5fdmVyID4gSTQw
RV9GV19NSU5PUl9WRVJTSU9OKGh3KSkKPj4+Pj4gLQkJZGV2X2luZm8oJnBkZXYtPmRldiwKPj4+
Pj4gLQkJCSAiVGhlIGRyaXZlciBmb3IgdGhlIGRldmljZSBkZXRlY3RlZCBhIG5ld2VyIHZlcnNp
b24gb2YgdGhlIE5WTSBpbWFnZSB2JXUuJXUgdGhhbiBleHBlY3RlZCB2JXUuJXUuIFBsZWFzZSBp
bnN0YWxsIHRoZSBtb3N0IHJlY2VudCB2ZXJzaW9uIG9mIHRoZSBuZXR3b3JrIGRyaXZlci5cbiIs
Cj4+Pj4+ICsJCWRldl9kYmcoJnBkZXYtPmRldiwKPj4+Pj4gKwkJCSJUaGUgZHJpdmVyIGZvciB0
aGUgZGV2aWNlIGRldGVjdGVkIGEgbmV3ZXIgdmVyc2lvbiBvZiB0aGUgTlZNIGltYWdlIHYldS4l
dSB0aGFuIGV4cGVjdGVkIHYldS4ldS5cbiIsCj4+Pj4+ICAgICAJCQkgaHctPmFxLmFwaV9tYWpf
dmVyLAo+Pj4+PiAgICAgCQkJIGh3LT5hcS5hcGlfbWluX3ZlciwKPj4+Pj4gICAgIAkJCSBJNDBF
X0ZXX0FQSV9WRVJTSU9OX01BSk9SLAo+Pj4+Pgo+Pj4+Cj4+Pj4gSXTigJlzIGEgZGVidWcgbWVz
c2FnZSBub3csIHNvIG9ubHkgYSBmZXcgcGVvcGxlIGFyZSBnb2luZyB0byBub3RpY2UsIGJ1dAo+
Pj4+IGEgbm90ZSBvbiB3aGF0IHRvIGRvIHRvIGdldCByaWQgb2YgdGhlIG1lc3NhZ2UsIHdvdWxk
IGJlIHN0aWxsIGJlIG5pY2UuCj4+Pj4KPj4+Pj4gVG8gZGlzYWJsZSB0aGlzIGluZm9ybWF0aW9u
YWwgbWVzc2FnZSwgdXBkYXRlIHRvIGEgbmV3ZXIgZHJpdmVyIHZlcnNpb24uCj4+Pgo+Pj4gSSBi
ZWxpZXZlIHRoYXQsIHNpbmNlIHRoZSBkcml2ZXIgaXMgd29ya2luZyBjb3JyZWN0bHksIHdlIHNo
b3VsZG4ndAo+Pj4gcmVxdWVzdCBhbnkgYWN0aW9uIGZyb20gdGhlIHVzZXIgYnV0IGp1c3QgdG8g
aW5mb3JtIGFib3V0IGEgTlZNIGJlaW5nCj4+PiBuZXdlciB2ZXJzaW9uIHRoYXQgZXhwZWN0ZWQu
Cj4+Cj4+IFRoZW4g4oCcZXhwZWN0ZWTigJ0gc2hvdWxkIGFsc28gYmUgcmVtb3ZlZCBmcm9tIHRo
ZSBtZXNzYWdlLgo+IEkgZG9uJ3QgYWdyZWUuIEkgYmVsaWV2ZSB0aGF0IG1lc3NhZ2Ugd2l0aG91
dCB0aGUgaW5mb3JtYXRpb24gYWJvdXQKPiBleHBlY3RlZCBOVk0gdmVyc2lvbiB3aWxsIGJlIG1v
cmUgY29uZnVzaW5nIHRoYW4gdGhlIG9uIHdpdGggaXQuCgpJIGp1c3QgbWVhbnQgdG8gcmVtb3Zl
IHRoZSB3b3JkIOKAnGV4cGVjdGVk4oCdLiBJZiBzb21ldGhpbmcgZXhwZWN0ZWQgZmFpbHMgCnRv
IGhhcHBlbiwgaXTigJlzIHVuZXhwZWN0ZWQsIHdoaWNoIHN1Z2dlc3RzIGEgcHJvYmxlbS4gSW4g
dGhpcyBjYXNlIGl0IApzZWVtcyBleHBlY3RlZCwgdGhhdCBuZXdlciBOVk0gdmVyc2lvbnMgY2Fu
IGJlIHByZXNlbnQuCgooSSBkbyBub3Qgd2FudCB0byBiaWtlc2hlZCwgYW5kIGp1c3Qgdm9pY2Vk
IG15IHVzZXIgcG9pbnQgb2Ygdmlldy4pCgoKS2luZCByZWdhcmRzLAoKUGF1bApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFp
bGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3Ns
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
