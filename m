Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B23752CE4F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 May 2022 10:29:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ABF8860E24;
	Thu, 19 May 2022 08:29:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HcbGvPDI7EkD; Thu, 19 May 2022 08:29:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D59160C06;
	Thu, 19 May 2022 08:29:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 59DF01BF426
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 May 2022 08:28:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 402A54057C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 May 2022 08:28:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1mQbE67_I0mu for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 May 2022 08:28:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8152B400DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 May 2022 08:28:56 +0000 (UTC)
Received: from [141.65.233.90] (unknown [141.65.233.90])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 0F49961EA192A;
 Thu, 19 May 2022 10:28:53 +0200 (CEST)
Message-ID: <a814caad-5e32-90fb-547d-4e211d60d848@molgen.mpg.de>
Date: Thu, 19 May 2022 10:28:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20220519080246.1906390-1-aleksandr.loktionov@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220519080246.1906390-1-aleksandr.loktionov@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix call trace in
 setup_tx_descriptors
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
Cc: Michal Jaron <michalx.jaron@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBBbGVrc2FuZHIsCgoKQW0gMTkuMDUuMjIgdW0gMTA6MDIgc2NocmllYiBMb2t0aW9ub3Ys
IEFsZWtzYW5kcjoKPiBGcm9tOiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlv
bm92QGludGVsLmNvbT4KPiAKPiBBZnRlciBwZiByZXNldCBhbmQgZXRodG9vbCAtdCB0aGVyZSB3
YXMgY2FsbCB0cmFjZSBpcyBkbWVzZwo+IHNvbWV0aW1lcyBwcm92aWRpbmcgdG8gcGFuaWMuIFdo
ZW4gdGhlcmUgd2FzIHNvbWUgdGltZSwgYXJvdW5kIDUKCuKAnHNvbWV0aW1lcyBwcm92aWRpbmcg
dG8gcGFuaWPigJ0gc291bmRzIHN0cmFuZ2UuIENhbiB5b3UgcGxlYXNlIGNsYXJpZnksIAphbmQg
cmVwaHJhc2UgZm9yIHYyPwoKPiBzZWNvbmRzLCBiZXR3ZWVuIHJlc2V0IGFuZCB0ZXN0IHRoZXJl
IHdhcyBubyBlcnJvcnMuCj4gCj4gUHJvYmxlbSB3YXMgdGhhdCBwZiByZXNldCBjYWxscyBpNDBl
X3ZzaV9jbG9zZSBpbiBwcmVwX2Zvcl9yZXNldAo+IGFuZCBldGh0b29sIC10IGNhbGxzIGk0MGVf
dnNpX2Nsb3NlIGluIGRpYWdfdGVzdC4gSWYgdGhlcmUgd2FzIG5vdAo+IGVub3VnaCB0aW1lIGJl
dHdlZW4gdGhvc2UgY29tbWFuZHMgdGhlIHNlY29uZCBpNDBlX3ZzaV9jbG9zZSBzdGFydHMKPiBi
ZWZvcmUgcHJldmlvdXMgaTQwZV92c2lfY2xvc2Ugd2FzIGRvbmUgd2hpY2ggbGVhZHMgdG8gY3Jh
c2guCj4gCj4gQWRkIGNoZWNrIHRvIGRpYWdfdGVzdCBpZiBwZiBpcyBpbiByZXNldCBhbmQgZG9u
J3Qgc3RhcnQgb2ZmbGluZQo+IHRlc3RzIGlmIGl0IGlzIHRydWUuCgpNYXliZSBhbHNvIG1lbnRp
b24gdGhlIG5ldyBsb2cgbWVzc2FnZToKCiAgICAgbmV0aWZfaW5mbyhwZiwgZHJ2LCBuZXRkZXYs
ICJ0ZXN0aW5nIGZhaWxlZFxuIik7Cgo+IEZpeGVzOiBlMTdiYzQxMWFlYTggKCJpNDBlOiBEaXNh
YmxlIG9mZmxpbmUgZGlhZ25vc3RpY3MgaWYgVkZzIGFyZSBlbmFibGVkIikKPiBTaWduZWQtb2Zm
LWJ5OiBNaWNoYWwgSmFyb24gPG1pY2hhbHguamFyb25AaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYt
Ynk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPgo+
IC0tLQo+ICAgLi4uL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfZXRodG9vbC5jICAgIHwg
MjUgKysrKysrKysrKysrKy0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMo
KyksIDggZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2k0MGUvaTQwZV9ldGh0b29sLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
NDBlL2k0MGVfZXRodG9vbC5jCj4gaW5kZXggZTQ4NDk5Ni4uMDZjMDVhNiAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfZXRodG9vbC5jCj4gKysrIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2V0aHRvb2wuYwo+IEBAIC0yNTg0
LDE1ICsyNTg0LDE2IEBAIHN0YXRpYyB2b2lkIGk0MGVfZGlhZ190ZXN0KHN0cnVjdCBuZXRfZGV2
aWNlICpuZXRkZXYsCj4gICAKPiAgIAkJc2V0X2JpdChfX0k0MEVfVEVTVElORywgcGYtPnN0YXRl
KTsKPiAgIAo+ICsJCWlmICh0ZXN0X2JpdChfX0k0MEVfUkVTRVRfUkVDT1ZFUllfUEVORElORywg
cGYtPnN0YXRlKSB8fAo+ICsJCSAgICB0ZXN0X2JpdChfX0k0MEVfUkVTRVRfSU5UUl9SRUNFSVZF
RCwgcGYtPnN0YXRlKSkgewo+ICsJCQlkZXZfd2FybigmcGYtPnBkZXYtPmRldiwKPiArCQkJCSAi
Q2Fubm90IHN0YXJ0IG9mZmxpbmUgdGVzdGluZyB3aGVuIFBGIGlzIGluIHJlc2V0IHN0YXRlLlxu
Iik7Cj4gKwkJCWdvdG8gc2tpcF9vbF90ZXN0czsKPiArCQl9Cj4gKwo+ICAgCQlpZiAoaTQwZV9h
Y3RpdmVfdmZzKHBmKSB8fCBpNDBlX2FjdGl2ZV92bWRxcyhwZikpIHsKPiAgIAkJCWRldl93YXJu
KCZwZi0+cGRldi0+ZGV2LAo+ICAgCQkJCSAiUGxlYXNlIHRha2UgYWN0aXZlIFZGcyBhbmQgTmV0
cXVldWVzIG9mZmxpbmUgYW5kIHJlc3RhcnQgdGhlIGFkYXB0ZXIgYmVmb3JlIHJ1bm5pbmcgTklD
IGRpYWdub3N0aWNzXG4iKTsKPiAtCQkJZGF0YVtJNDBFX0VUSF9URVNUX1JFR10JCT0gMTsKPiAt
CQkJZGF0YVtJNDBFX0VUSF9URVNUX0VFUFJPTV0JPSAxOwo+IC0JCQlkYXRhW0k0MEVfRVRIX1RF
U1RfSU5UUl0JPSAxOwo+IC0JCQlkYXRhW0k0MEVfRVRIX1RFU1RfTElOS10JPSAxOwo+IC0JCQll
dGhfdGVzdC0+ZmxhZ3MgfD0gRVRIX1RFU1RfRkxfRkFJTEVEOwo+IC0JCQljbGVhcl9iaXQoX19J
NDBFX1RFU1RJTkcsIHBmLT5zdGF0ZSk7Cj4gICAJCQlnb3RvIHNraXBfb2xfdGVzdHM7Cj4gICAJ
CX0KPiAgIAo+IEBAIC0yNjM5LDkgKzI2NDAsMTcgQEAgc3RhdGljIHZvaWQgaTQwZV9kaWFnX3Rl
c3Qoc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiwKPiAgIAkJZGF0YVtJNDBFX0VUSF9URVNUX0lO
VFJdID0gMDsKPiAgIAl9Cj4gICAKPiAtc2tpcF9vbF90ZXN0czoKPiAtCj4gICAJbmV0aWZfaW5m
byhwZiwgZHJ2LCBuZXRkZXYsICJ0ZXN0aW5nIGZpbmlzaGVkXG4iKTsKPiArCXJldHVybjsKPiAr
Cj4gK3NraXBfb2xfdGVzdHM6Cj4gKwlkYXRhW0k0MEVfRVRIX1RFU1RfUkVHXQkJPSAxOwo+ICsJ
ZGF0YVtJNDBFX0VUSF9URVNUX0VFUFJPTV0JPSAxOwo+ICsJZGF0YVtJNDBFX0VUSF9URVNUX0lO
VFJdCT0gMTsKPiArCWRhdGFbSTQwRV9FVEhfVEVTVF9MSU5LXQk9IDE7Cj4gKwlldGhfdGVzdC0+
ZmxhZ3MgfD0gRVRIX1RFU1RfRkxfRkFJTEVEOwo+ICsJY2xlYXJfYml0KF9fSTQwRV9URVNUSU5H
LCBwZi0+c3RhdGUpOwo+ICsJbmV0aWZfaW5mbyhwZiwgZHJ2LCBuZXRkZXYsICJ0ZXN0aW5nIGZh
aWxlZFxuIik7Cj4gICB9Cj4gICAKPiAgIHN0YXRpYyB2b2lkIGk0MGVfZ2V0X3dvbChzdHJ1Y3Qg
bmV0X2RldmljZSAqbmV0ZGV2LAoKCktpbmQgcmVnYXJkcywKClBhdWwKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
