Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 633237A71D4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Sep 2023 07:18:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AFBF6409E9;
	Wed, 20 Sep 2023 05:18:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AFBF6409E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695187137;
	bh=gdlqI3c1LqN8HpoNolsDHVHVMoCHk05gei7Tgt0l3AM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=khNvBsPTdDYto/69tNko2v6CrPft2BOn44oeEz+ymJfVhq4nlUNBEgB7sqsA5Jmgv
	 uxNKtF3zbe4i5iqsABxqRifZQu5xTPGolHA5FLPz5wPiP2UhKQJrRiNw6XEGbQKisL
	 JVJqrb7sSdjoKTcf7Bkausd2QzmaB6UnG4iHnw6yhgXBBnbm8z6aAQIrxwMehO2dJX
	 Z1bTDSHPwK3rI5zw7cponvwIx1G6RbHL2w8n40VtfOz4CQaxbSN+z+mnCYHcI9fF12
	 IB+ha3v8pO6YgJ6MiyFhE8I/3Ym+4jyGr5udZMiaPFSAlhJgmWohWco8PnQgjmvDPm
	 cFizu+YYB5eOw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1GIiItuIq-3y; Wed, 20 Sep 2023 05:18:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8C1EA405B2;
	Wed, 20 Sep 2023 05:18:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C1EA405B2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 809221BF3DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 05:18:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 503A34021C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 05:18:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 503A34021C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GbS_4eaViQ3Z for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Sep 2023 05:18:49 +0000 (UTC)
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 937C740180
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 05:18:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 937C740180
Received: from [192.168.0.2] (ip5f5ae845.dynamic.kabel-deutschland.de
 [95.90.232.69])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 737BB61E5FE01;
 Wed, 20 Sep 2023 07:18:22 +0200 (CEST)
Message-ID: <1cc59274-4555-409a-9f9b-16707f832b52@molgen.mpg.de>
Date: Wed, 20 Sep 2023 07:18:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
References: <20230919212959.1939749-1-jesse.brandeburg@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230919212959.1939749-1-jesse.brandeburg@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: reset first in crash
 dump kernels
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, jkc@redhat.com,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBKZXNzZSwKCgpUaGFuayB5b3UgZm9yIHlvdXIgcGF0Y2guCgpBbSAxOS4wOS4yMyB1bSAy
MzoyOSBzY2hyaWViIEplc3NlIEJyYW5kZWJ1cmc6Cj4gV2hlbiBib290aW5nIGludG8gdGhlIGNy
YXNoIGR1bXAga2VybmVscyB0aGVyZSBhcmUgY2FzZXMgd2hlcmUgdXBvbgo+IGVuYWJsaW5nIHRo
ZSBkZXZpY2UsIHRoZSBzeXN0ZW0gdW5kZXIgdGVzdCB3aWxsIHBhbmljIG9yIG1hY2hpbmUgY2hl
Y2suCj4gCj4gT25lIHN1Y2ggdGVzdCBpcyB0bwo+IC0gbG9hZCBpY2UgZHJpdmVyCj4gJCBtb2Rw
cm9iZSBpY2UKPiAtIGVuYWJsZSBTUi1JT1YgKDIgVkZzKQo+ICQgZWNobyAyID4gL3N5cy9jbGFz
cy9uZXQvZXRoMC9kZXZpY2Uvc3Jpb3ZfbnVtX3Zmcwo+IC0gY3Jhc2gKPiBlY2hvIGMgPiAvcHJv
Yy9zeXNycS10cmlnZ2VyCgpBYm92ZSB5b3UgcHJlcGVuZGVkIGEgJC4KCj4gLSBsb2FkIGljZSBk
cml2ZXIgKG9yIGhhcHBlbnMgYXV0b21hdGljYWxseSkKPiBtb2Rwcm9iZSBpY2UKPiAtIGNyYXNo
IGR1cmluZyBwY2ltX2VuYWJsZV9kZXZpY2UoKQo+IAo+IEF2b2lkIHRoaXMgcHJvYmxlbSBieSBp
c3N1aW5nIGEgRkxSIHRvIHRoZSBkZXZpY2UgdmlhIFBDSWUgY29uZmlnIHNwYWNlCj4gb24gdGhl
IGNyYXNoIGtlcm5lbCwgdG8gY2xlYXIgb3V0IGFueSBvdXRzdGFuZGluZyB0cmFuc2FjdGlvbnMg
YW5kIHN0b3AKPiBhbGwgcXVldWVzIGFuZCBpbnRlcnJ1cHRzLiBSZXN0b3JlIGNvbmZpZyBzcGFj
ZSBhZnRlcndvcmQgYmVjYXVzZSB0aGUKCmFmdGVydyphKnJkCgo+IGRyaXZlciB3b24ndCBsb2Fk
IHN1Y2Nlc3NmdWxseSBvdGhlcndpc2UuCgpFeGN1c2UgbXkgaWdub3JhbmNlLCBjb3VsZCB5b3Ug
cGxlYXNlIGFkZCwgd2hhdCB0aGUgY3Jhc2hkdW1wIGtlcm5lbCAKZG9lcyBkaWZmZXJlbnRseSBm
cm9tIHRoZSDigJxub3JtYWzigJ0ga2VybmVsLCBzbyB0aGlzIHNwZWNpYWwgaGFuZGxpbmcgaXMg
Cm5lZWRlZD8KCj4gUmV2aWV3ZWQtYnk6IFByemVtZWsgS2l0c3plbCA8cHJ6ZW15c2xhdy5raXRz
emVsQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKZXNzZSBCcmFuZGVidXJnIDxqZXNzZS5i
cmFuZGVidXJnQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2VfbWFpbi5jIHwgMTUgKysrKysrKysrKysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwg
MTUgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
bWFpbi5jCj4gaW5kZXggYzgyODZhZGFlOTQ2Li42NTUwYzQ2ZTRlMzYgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMKPiArKysgYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYwo+IEBAIC02LDYgKzYsNyBAQAo+ICAg
I2RlZmluZSBwcl9mbXQoZm10KSBLQlVJTERfTU9ETkFNRSAiOiAiIGZtdAo+ICAgCj4gICAjaW5j
bHVkZSA8Z2VuZXJhdGVkL3V0c3JlbGVhc2UuaD4KPiArI2luY2x1ZGUgPGxpbnV4L2NyYXNoX2R1
bXAuaD4KPiAgICNpbmNsdWRlICJpY2UuaCIKPiAgICNpbmNsdWRlICJpY2VfYmFzZS5oIgo+ICAg
I2luY2x1ZGUgImljZV9saWIuaCIKPiBAQCAtNTAxNCw2ICs1MDE1LDIwIEBAIGljZV9wcm9iZShz
dHJ1Y3QgcGNpX2RldiAqcGRldiwgY29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgX19hbHdheXNf
dW51c2VkICplbnQpCj4gICAJCXJldHVybiAtRUlOVkFMOwo+ICAgCX0KPiAgIAo+ICsJLyogd2hl
biB1bmRlciBhIGtkdW1wIGtlcm5lbCBpbml0aWF0ZSBhIHJlc2V0IGJlZm9yZSBlbmFibGluZyB0
aGUKPiArCSAqIGRldmljZSBpbiBvcmRlciB0byBjbGVhciBvdXQgYW55IHBlbmRpbmcgRE1BIHRy
YW5zYWN0aW9ucy4gVGhlc2UKPiArCSAqIHRyYW5zYWN0aW9ucyBjYW4gY2F1c2Ugc29tZSBzeXN0
ZW1zIHRvIG1hY2hpbmUgY2hlY2sgd2hlbiBkb2luZwo+ICsJICogdGhlIHBjaW1fZW5hYmxlX2Rl
dmljZSgpIGJlbG93Lgo+ICsJICovCj4gKwlpZiAoaXNfa2R1bXBfa2VybmVsKCkpIHsKPiArCQlw
Y2lfc2F2ZV9zdGF0ZShwZGV2KTsKPiArCQlwY2lfY2xlYXJfbWFzdGVyKHBkZXYpOwo+ICsJCWVy
ciA9IHBjaWVfZmxyKHBkZXYpOwo+ICsJCWlmIChlcnIpCj4gKwkJCXJldHVybiBlcnI7Cj4gKwkJ
cGNpX3Jlc3RvcmVfc3RhdGUocGRldik7Cj4gKwl9Cj4gKwoKU2hvdWxkIHRoaXMgYmUgYWRkZWQg
dG8gdGhlIGNvbW1vbiBQQ0kgY29kZT8gTWF5YmUgbG9vcCB0aGUgUENJIApzdWJzeXN0ZW0gZm9s
a3MgaW4/Cgo+ICAgCS8qIHRoaXMgZHJpdmVyIHVzZXMgZGV2cmVzLCBzZWUKPiAgIAkgKiBEb2N1
bWVudGF0aW9uL2RyaXZlci1hcGkvZHJpdmVyLW1vZGVsL2RldnJlcy5yc3QKPiAgIAkgKi8KCgpL
aW5kIHJlZ2FyZHMsCgpQYXVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9z
dW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
d2lyZWQtbGFuCg==
