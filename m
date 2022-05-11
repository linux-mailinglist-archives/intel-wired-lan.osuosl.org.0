Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 70058522C7A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 May 2022 08:41:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 170706068D;
	Wed, 11 May 2022 06:41:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1D45kgF17c-8; Wed, 11 May 2022 06:41:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 29337606E7;
	Wed, 11 May 2022 06:41:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7FE251BF23C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 06:41:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 693B280C97
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 06:41:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ym1A90Ca7dw0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 May 2022 06:41:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B448880C8C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 06:41:36 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5aeb08.dynamic.kabel-deutschland.de
 [95.90.235.8])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 594A561E6478B;
 Wed, 11 May 2022 08:41:34 +0200 (CEST)
Message-ID: <8d7e86ad-932c-d08c-3131-762edd553b22@molgen.mpg.de>
Date: Wed, 11 May 2022 08:41:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: lianglixue <lixue.liang5086@gmail.com>
References: <20220510012159.8924-1-lianglixue@greatwall.com.cn>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220510012159.8924-1-lianglixue@greatwall.com.cn>
Subject: Re: [Intel-wired-lan] [PATCH] igb_ethtool: fix efficiency issues in
 igb_set_eeprom
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
Cc: kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 lianglixue <lianglixue@greatwall.com.cn>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBsaWFuZ2xpeHVlLAoKClRoYW5rIHlvdSBmb3IgeW91ciBwYXRjaC4KCkFtIDEwLjA1LjIy
IHVtIDAzOjIxIHNjaHJpZWIgbGlhbmdsaXh1ZToKCkl04oCZZCBiZSBncmVhdCBpZiB5b3Ugc3Bl
bGxlZCB5b3VyIG5hbWUgd2l0aCBzcGFjZXMgKGlmIHBvc3NpYmxlKS4KCkFsc28sIGN1cnJlbnRs
eSB5b3VyIEdvb2dsZSBNYWlsIGFkZHJlc3Mgd291bGQgYmUgdXNlZCBmb3IgdGhlIEF1dGhvciAK
ZmllbGQuIElmIHlvdSB3YW50IHRvIHVzZSB5b3VyIGNvbXBhbnkoPykgYWRkcmVzcywgcGxlYXNl
IGFkZCBhIEZyb206IApsaW5lIGF0IHRoZSB0b3AuCgo+IE1vZGlmeSB0aGUgdmFsdWUgb2YgZWVw
cm9tIGluIGlnYl9zZXRfZWVwcm9tLiBJZiB0aGUgbWFjIGFkZHJlc3MKPiBvZiBpMjEwIGlzIGNo
YW5nZWQgdG8gaWxsZWdhbCwgdGhlbiBpbiBpZ3BfcHJvYmUgaW4gdGhlCj4gaWdiX21haW4gZmls
ZSwgaXNfdmFsaWRfZXRoX2FkZHIgKG5ldGRldi0+ZGV2X2FkZHIpIGV4aXRzCj4gd2l0aCBhbiBl
cnJvciwgY2F1c2luZyB0aGUgaWdiIGRyaXZlciB0byBmYWlsIHRvIGxvYWQsCj4gc3VjaCBhcyBl
dGh0b29sIC1FIGV0aDAgbWFnaWMgMHgxNTMzODA4NiBvZmZzZXQgMCB2YWx1ZSAweDAxLgo+IAo+
IEluIHRoaXMgd2F5LCB0aGUgaWdiIGRyaXZlciBjYW4gbm8gbG9uZ2VyIGJlIGxvYWRlZCwKPiBh
bmQgdGhlIGxlZ2FsIG1hYyBhZGRyZXNzIGNhbm5vdCBiZSByZWNvdmVyZWQgdGhyb3VnaCBldGh0
b29sOwo+IGFkZCBpc192YWxpZF9ldGhfYWRkciB0byBpZ2Jfc2V0X2VlcHJvbSB0byBkZXRlcm1p
bmUKPiB3aGV0aGVyIGl0IGlzIGxlZ2FsIHRvIHJld3JpdGUsIHNvIGFzIHRvIGF2b2lkIGRyaXZl
cgo+IGVycm9ycyBkdWUgdG8gaWxsZWdhbCBtYWMgYWRkcmVzc2VzLgoKUGxlYXNlIHJlZmxvdyB0
aGUgdGV4dCBmb3IgNzUgY2hhcmFjdGVycyBwZXIgbGluZS4KCj4gU2lnbmVkLW9mZi1ieTogbGlh
bmdsaXh1ZSA8bGlhbmdsaXh1ZUBncmVhdHdhbGwuY29tLmNuPgo+IC0tLQo+ICAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9ldGh0b29sLmMgfCA3ICsrKysrKysKPiAgIDEgZmls
ZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9ldGh0b29sLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pZ2IvaWdiX2V0aHRvb2wuYwo+IGluZGV4IDJhNTc4MjA2M2Y0Yy4uMzA1NTRmZDY4NGRi
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfZXRodG9v
bC5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9ldGh0b29sLmMK
PiBAQCAtNzk4LDYgKzc5OCwxMyBAQCBzdGF0aWMgaW50IGlnYl9zZXRfZWVwcm9tKHN0cnVjdCBu
ZXRfZGV2aWNlICpuZXRkZXYsCj4gICAJaWYgKGVlcHJvbS0+bWFnaWMgIT0gKGh3LT52ZW5kb3Jf
aWQgfCAoaHctPmRldmljZV9pZCA8PCAxNikpKQo+ICAgCQlyZXR1cm4gLUVGQVVMVDsKPiAgIAo+
ICsJaWYgKGh3LT5tYWMudHlwZSA9PSBlMTAwMF9pMjEwICYmIGVlcHJvbS0+b2Zmc2V0ID09IDAp
IHsKPiArCQlpZiAoIWlzX3ZhbGlkX2V0aGVyX2FkZHIoYnl0ZXMpKSB7Cj4gKwkJCWRldl9lcnIo
JmFkYXB0ZXItPnBkZXYtPmRldiwgIkludmFsaWQgTUFDIEFkZHJlc3MgZm9yIGkyMTBcbiIpOwo+
ICsJCQlyZXR1cm4gLUVJTlZBTDsKPiArCQl9Cj4gKwl9Cj4gKwo+ICAgCW1heF9sZW4gPSBody0+
bnZtLndvcmRfc2l6ZSAqIDI7Cj4gICAKPiAgIAlmaXJzdF93b3JkID0gZWVwcm9tLT5vZmZzZXQg
Pj4gMTsKCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtd2lyZWQtbGFuCg==
