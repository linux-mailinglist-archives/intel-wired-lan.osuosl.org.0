Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E88D846BD94
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Dec 2021 15:25:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 602BA40194;
	Tue,  7 Dec 2021 14:25:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yBfqnciWN2Yo; Tue,  7 Dec 2021 14:25:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1F6DD40277;
	Tue,  7 Dec 2021 14:25:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DFCBD1BF304
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Dec 2021 14:25:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CB9EE40277
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Dec 2021 14:25:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JLTpnZqB5Em8 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Dec 2021 14:25:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EAADA40194
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Dec 2021 14:25:26 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5aea86.dynamic.kabel-deutschland.de
 [95.90.234.134])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 32A2B61E6478B;
 Tue,  7 Dec 2021 15:25:25 +0100 (CET)
Message-ID: <37f3e44a-cc8b-9632-2982-8b28ac98bbb1@molgen.mpg.de>
Date: Tue, 7 Dec 2021 15:25:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: Mateusz Palczewski <mateusz.palczewski@intel.com>
References: <20211207132525.26458-1-mateusz.palczewski@intel.com>
 <8e8f07cb-899a-b184-78ed-323d3b436b11@molgen.mpg.de>
 <BL1PR11MB52886124AEE0A8C9E6679731876E9@BL1PR11MB5288.namprd11.prod.outlook.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <BL1PR11MB52886124AEE0A8C9E6679731876E9@BL1PR11MB5288.namprd11.prod.outlook.com>
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

RGVhciBNYXRldXN6LAoKCkFtIDA3LjEyLjIxIHVtIDE1OjIzIHNjaHJpZWIgUGFsY3pld3NraSwg
TWF0ZXVzejoKCj4+IEFtIDA3LjEyLjIxIHVtIDE0OjI1IHNjaHJpZWIgTWF0ZXVzeiBQYWxjemV3
c2tpOgo+Pj4gV2hlbiBsb2FkaW5nIHRoZSBpNDBlIGRyaXZlciwgaXQgcHJpbnRzIGEgbWVzc2Fn
ZSBsaWtlOiAnVGhlIGRyaXZlciBmb3IgdGhlCj4+PiBkZXZpY2UgZGV0ZWN0ZWQgYSBuZXdlciB2
ZXJzaW9uIG9mIHRoZSBOVk0gaW1hZ2UgdjEueCB0aGFuIGV4cGVjdGVkIHYxLnkuCj4+PiBQbGVh
c2UgaW5zdGFsbCB0aGUgbW9zdCByZWNlbnQgdmVyc2lvbiBvZiB0aGUgbmV0d29yayBkcml2ZXIu
JyBUaGlzIGlzCj4+PiBtaXNsZWFkaW5nIGFzIHRoZSBkcml2ZXIgaXMgd29ya2luZyBhcyBleHBl
Y3RlZC4KPj4+Cj4+PiBGaXggdGhhdCBieSByZW1vdmluZyB0aGUgc2Vjb25kIHBhcnQgb2YgbWVz
c2FnZSBhbmQgY2hhbmdpbmcgaXQgZnJvbQo+Pj4gZGV2X2luZm8gdG8gZGV2X2RnYi4KPj4+Cj4+
PiBGaXhlczogNGZiMjliZGRiICgiaTQwZTogVGhlIGRyaXZlciBub3cgcHJpbnRzIHRoZSBBUEkg
dmVyc2lvbiBpbiBlcnJvciBtZXNzYWdlIikKPj4+IFNpZ25lZC1vZmYtYnk6IE1hdGV1c3ogUGFs
Y3pld3NraSA8bWF0ZXVzei5wYWxjemV3c2tpQGludGVsLmNvbT4KPj4+IC0tLQo+Pj4gICAgdjM6
IENoYW5nZWQgdGhlIHBhdGNoIGFmdGVyIGNvbW11bml0eSByZXZpZXcKPj4+ICAgIHYyOiBGaXhl
ZCB0aGUgZml4ZXMgdGFnIHRvIGJlIDEyIGRpZ2l0cyBsb25nCj4+PiAtLS0KPj4+ICAgIGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMgfCA0ICsrLS0KPj4+ICAgIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jCj4+PiBpbmRleCA0NjY0
ZDA3Li5jMDc3NDZiIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aTQwZS9pNDBlX21haW4uYwo+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQw
ZS9pNDBlX21haW4uYwo+Pj4gQEAgLTE1NDY5LDggKzE1NDY5LDggQEAgc3RhdGljIGludCBpNDBl
X3Byb2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LCBjb25zdCBzdHJ1Y3QgcGNpX2RldmljZV9pZCAq
ZW50KQo+Pj4gICAgCj4+PiAgICAJaWYgKGh3LT5hcS5hcGlfbWFqX3ZlciA9PSBJNDBFX0ZXX0FQ
SV9WRVJTSU9OX01BSk9SICYmCj4+PiAgICAJICAgIGh3LT5hcS5hcGlfbWluX3ZlciA+IEk0MEVf
RldfTUlOT1JfVkVSU0lPTihodykpCj4+PiAtCQlkZXZfaW5mbygmcGRldi0+ZGV2LAo+Pj4gLQkJ
CSAiVGhlIGRyaXZlciBmb3IgdGhlIGRldmljZSBkZXRlY3RlZCBhIG5ld2VyIHZlcnNpb24gb2Yg
dGhlIE5WTSBpbWFnZSB2JXUuJXUgdGhhbiBleHBlY3RlZCB2JXUuJXUuIFBsZWFzZSBpbnN0YWxs
IHRoZSBtb3N0IHJlY2VudCB2ZXJzaW9uIG9mIHRoZSBuZXR3b3JrIGRyaXZlci5cbiIsCj4+PiAr
CQlkZXZfZGJnKCZwZGV2LT5kZXYsCj4+PiArCQkJIlRoZSBkcml2ZXIgZm9yIHRoZSBkZXZpY2Ug
ZGV0ZWN0ZWQgYSBuZXdlciB2ZXJzaW9uIG9mIHRoZSBOVk0gaW1hZ2UgdiV1LiV1IHRoYW4gZXhw
ZWN0ZWQgdiV1LiV1LlxuIiwKPj4+ICAgIAkJCSBody0+YXEuYXBpX21hal92ZXIsCj4+PiAgICAJ
CQkgaHctPmFxLmFwaV9taW5fdmVyLAo+Pj4gICAgCQkJIEk0MEVfRldfQVBJX1ZFUlNJT05fTUFK
T1IsCj4+Pgo+Pgo+PiBJdOKAmXMgYSBkZWJ1ZyBtZXNzYWdlIG5vdywgc28gb25seSBhIGZldyBw
ZW9wbGUgYXJlIGdvaW5nIHRvIG5vdGljZSwgYnV0Cj4+IGEgbm90ZSBvbiB3aGF0IHRvIGRvIHRv
IGdldCByaWQgb2YgdGhlIG1lc3NhZ2UsIHdvdWxkIGJlIHN0aWxsIGJlIG5pY2UuCj4+Cj4+PiBU
byBkaXNhYmxlIHRoaXMgaW5mb3JtYXRpb25hbCBtZXNzYWdlLCB1cGRhdGUgdG8gYSBuZXdlciBk
cml2ZXIgdmVyc2lvbi4KPiAKPiBJIGJlbGlldmUgdGhhdCwgc2luY2UgdGhlIGRyaXZlciBpcyB3
b3JraW5nIGNvcnJlY3RseSwgd2Ugc2hvdWxkbid0Cj4gcmVxdWVzdCBhbnkgYWN0aW9uIGZyb20g
dGhlIHVzZXIgYnV0IGp1c3QgdG8gaW5mb3JtIGFib3V0IGEgTlZNIGJlaW5nCj4gbmV3ZXIgdmVy
c2lvbiB0aGF0IGV4cGVjdGVkLgoKVGhlbiDigJxleHBlY3RlZOKAnSBzaG91bGQgYWxzbyBiZSBy
ZW1vdmVkIGZyb20gdGhlIG1lc3NhZ2UuCgoKS2luZCByZWdhcmRzLAoKUGF1bApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFp
bGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3Ns
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
