Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A98350E17
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jun 2019 16:32:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BECCC204CA;
	Mon, 24 Jun 2019 14:31:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JYsf3bf7v20D; Mon, 24 Jun 2019 14:31:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ADF83204CF;
	Mon, 24 Jun 2019 14:31:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E314D1BF2B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 14:31:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CEFC485B36
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 14:31:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZtG2kXfn4FnD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jun 2019 14:31:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F17AD85736
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 14:31:54 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id h21so14617963qtn.13
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 07:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=sVtypU4GWHEacgVvfmmVLLLgLvOwlxf2kDRa2VvrYBQ=;
 b=ZVruZtP96IoLEkNyypwJqhTSgJ6YnuOHFrX917RuTgSB57y9Q+pb1Uo2N/xpOxs7yf
 fCUbZtCzTwf6UwVYA+kqaa9lMHw6eBqNlVJpZsX9wGszIKtWjSGa6WujG3vnk6p4djmt
 dmnx9xuSAi8VLsEeqJnm7d96wLqCl6KNRtdDstJpau1rTrLq4LMDAifwfKXBDhrui3+K
 4ZLq+TVJmU/jxX/HTkZDOczUFbYrzAuATdCVdQg01Sq86fctikKBKMtAcN5JgkS8FZOv
 byTTY2WSbIl62DYlaeZIpS5JxvVRsmCAmJYU2LorEr0mjkWZUVeul1Mp1ifV838MNoe2
 yGgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=sVtypU4GWHEacgVvfmmVLLLgLvOwlxf2kDRa2VvrYBQ=;
 b=VHtJbuOwxCBNpLnxPylT2LEoBopm9ikKKRU5vziD6u/eHhP+b/eefCjWKvLKbMHBaw
 R0+IBrVkPJvyIZeet9jdxHzteKXZJ3nVXLupBr7IQBrOP/F3xb4eONboxxMlGJgNeo3m
 pDQrj1KHsNtb5oeLaNBhUXn0zsk0g74LozwcllvEi1W8ycQ/9mHo/iBMYEsZaQPrIkBf
 jwXKDmI9UFR47kj+XNw4kh2akWXPhFo+8xs56Gvbg/QcHho6erAa1odBCNpSbbzqlnK7
 6wjjAic5W2KwpZOLB8e/gaiFhWEblPtaLWYHZ4As/oVu0IkDQads6QjirXnfKDJolitR
 k74g==
X-Gm-Message-State: APjAAAWs4XVgEHrcadPOJOLn/eKCvYPFsansQnWUTWAkZHk5YBtd0gLK
 FaTxJUY+wcAFgEIU/OcXJIR296nDjU5GMcZIeUyb+PyC3LyIMw==
X-Google-Smtp-Source: APXvYqwAW3w08f3oZ69dGFCTKo1OTjPVYf5ev9zdr256/Xqvra9e0ccYdfVo8LB42FI5PzP+fHj+Ry92VjocaRUuC5E=
X-Received: by 2002:ac8:4442:: with SMTP id m2mr50657396qtn.107.1561386713971; 
 Mon, 24 Jun 2019 07:31:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190620090958.2135-1-kevin.laatz@intel.com>
 <20190620090958.2135-4-kevin.laatz@intel.com>
In-Reply-To: <20190620090958.2135-4-kevin.laatz@intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Mon, 24 Jun 2019 16:31:42 +0200
Message-ID: <CAJ+HfNgkJJZhbUbK-DU70tNMRjT62WVO5_asCiX28zGQkHhmsg@mail.gmail.com>
To: Kevin Laatz <kevin.laatz@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH 03/11] xdp: add offset param to
 zero_copy_allocator
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
Cc: Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 ciara.loftus@intel.com, Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Bruce Richardson <bruce.richardson@intel.com>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCAyMCBKdW4gMjAxOSBhdCAxOToyNSwgS2V2aW4gTGFhdHogPGtldmluLmxhYXR6QGlu
dGVsLmNvbT4gd3JvdGU6Cj4KPiBUaGlzIHBhdGNoIGFkZHMgYW4gb2Zmc2V0IHBhcmFtZXRlciBm
b3IgemVyb19jb3B5X2FsbG9jYXRvci4KPgo+IFRoaXMgY2hhbmdlIGlzIHJlcXVpcmVkIGZvciB0
aGUgdW5hbGlnbmVkIGNodW5rIG1vZGUgd2hpY2ggd2lsbCBjb21lIGxhdGVyCj4gaW4gdGhpcyBw
YXRjaCBzZXQuIFRoZSBvZmZzZXQgcGFyYW1ldGVyIGlzIHJlcXVpcmVkIGZvciBjYWxjdWxhdGlu
ZyB0aGUKPiBvcmlnaW5hbCBoYW5kbGUgaW4gdW5hbGlnbmVkIG1vZGUgc2luY2Ugd2UgY2FuJ3Qg
ZWFzaWx5IG1hc2sgYmFjayB0byBpdAo+IGxpa2UgaW4gdGhlIGFsaWduZWQgY2FzZS4KPgo+IFNp
Z25lZC1vZmYtYnk6IEtldmluIExhYXR6IDxrZXZpbi5sYWF0ekBpbnRlbC5jb20+CgpBY2tlZC1i
eTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgoKCj4gLS0tCj4gIGluY2x1
ZGUvbmV0L3hkcC5oIHwgIDMgKystCj4gIG5ldC9jb3JlL3hkcC5jICAgIHwgMTEgKysrKysrLS0t
LS0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4K
PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9uZXQveGRwLmggYi9pbmNsdWRlL25ldC94ZHAuaAo+IGlu
ZGV4IDBmMjViMzY3NWM1Yy4uZWE4MDFmZDJiZjk4IDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvbmV0
L3hkcC5oCj4gKysrIGIvaW5jbHVkZS9uZXQveGRwLmgKPiBAQCAtNTMsNyArNTMsOCBAQCBzdHJ1
Y3QgeGRwX21lbV9pbmZvIHsKPiAgc3RydWN0IHBhZ2VfcG9vbDsKPgo+ICBzdHJ1Y3QgemVyb19j
b3B5X2FsbG9jYXRvciB7Cj4gLSAgICAgICB2b2lkICgqZnJlZSkoc3RydWN0IHplcm9fY29weV9h
bGxvY2F0b3IgKnpjYSwgdW5zaWduZWQgbG9uZyBoYW5kbGUpOwo+ICsgICAgICAgdm9pZCAoKmZy
ZWUpKHN0cnVjdCB6ZXJvX2NvcHlfYWxsb2NhdG9yICp6Y2EsIHVuc2lnbmVkIGxvbmcgaGFuZGxl
LAo+ICsgICAgICAgICAgICAgICAgICAgICAgIG9mZl90IG9mZik7Cj4gIH07Cj4KPiAgc3RydWN0
IHhkcF9yeHFfaW5mbyB7Cj4gZGlmZiAtLWdpdCBhL25ldC9jb3JlL3hkcC5jIGIvbmV0L2NvcmUv
eGRwLmMKPiBpbmRleCA0YjJiMTk0ZjRmMWYuLmE3N2E3MTYyZDIxMyAxMDA2NDQKPiAtLS0gYS9u
ZXQvY29yZS94ZHAuYwo+ICsrKyBiL25ldC9jb3JlL3hkcC5jCj4gQEAgLTMyMiw3ICszMjIsNyBA
QCBFWFBPUlRfU1lNQk9MX0dQTCh4ZHBfcnhxX2luZm9fcmVnX21lbV9tb2RlbCk7Cj4gICAqIG9m
IHhkcF9mcmFtZXMvcGFnZXMgaW4gdGhvc2UgY2FzZXMuCj4gICAqLwo+ICBzdGF0aWMgdm9pZCBf
X3hkcF9yZXR1cm4odm9pZCAqZGF0YSwgc3RydWN0IHhkcF9tZW1faW5mbyAqbWVtLCBib29sIG5h
cGlfZGlyZWN0LAo+IC0gICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBsb25nIGhhbmRs
ZSkKPiArICAgICAgICAgICAgICAgICAgICAgICAgdW5zaWduZWQgbG9uZyBoYW5kbGUsIG9mZl90
IG9mZikKPiAgewo+ICAgICAgICAgc3RydWN0IHhkcF9tZW1fYWxsb2NhdG9yICp4YTsKPiAgICAg
ICAgIHN0cnVjdCBwYWdlICpwYWdlOwo+IEBAIC0zNTMsNyArMzUzLDcgQEAgc3RhdGljIHZvaWQg
X194ZHBfcmV0dXJuKHZvaWQgKmRhdGEsIHN0cnVjdCB4ZHBfbWVtX2luZm8gKm1lbSwgYm9vbCBu
YXBpX2RpcmVjdCwKPiAgICAgICAgICAgICAgICAgcmN1X3JlYWRfbG9jaygpOwo+ICAgICAgICAg
ICAgICAgICAvKiBtZW0tPmlkIGlzIHZhbGlkLCBjaGVja2VkIGluIHhkcF9yeHFfaW5mb19yZWdf
bWVtX21vZGVsKCkgKi8KPiAgICAgICAgICAgICAgICAgeGEgPSByaGFzaHRhYmxlX2xvb2t1cCht
ZW1faWRfaHQsICZtZW0tPmlkLCBtZW1faWRfcmh0X3BhcmFtcyk7Cj4gLSAgICAgICAgICAgICAg
IHhhLT56Y19hbGxvYy0+ZnJlZSh4YS0+emNfYWxsb2MsIGhhbmRsZSk7Cj4gKyAgICAgICAgICAg
ICAgIHhhLT56Y19hbGxvYy0+ZnJlZSh4YS0+emNfYWxsb2MsIGhhbmRsZSwgb2ZmKTsKPiAgICAg
ICAgICAgICAgICAgcmN1X3JlYWRfdW5sb2NrKCk7Cj4gICAgICAgICBkZWZhdWx0Ogo+ICAgICAg
ICAgICAgICAgICAvKiBOb3QgcG9zc2libGUsIGNoZWNrZWQgaW4geGRwX3J4cV9pbmZvX3JlZ19t
ZW1fbW9kZWwoKSAqLwo+IEBAIC0zNjMsMTkgKzM2MywyMCBAQCBzdGF0aWMgdm9pZCBfX3hkcF9y
ZXR1cm4odm9pZCAqZGF0YSwgc3RydWN0IHhkcF9tZW1faW5mbyAqbWVtLCBib29sIG5hcGlfZGly
ZWN0LAo+Cj4gIHZvaWQgeGRwX3JldHVybl9mcmFtZShzdHJ1Y3QgeGRwX2ZyYW1lICp4ZHBmKQo+
ICB7Cj4gLSAgICAgICBfX3hkcF9yZXR1cm4oeGRwZi0+ZGF0YSwgJnhkcGYtPm1lbSwgZmFsc2Us
IDApOwo+ICsgICAgICAgX194ZHBfcmV0dXJuKHhkcGYtPmRhdGEsICZ4ZHBmLT5tZW0sIGZhbHNl
LCAwLCAwKTsKPiAgfQo+ICBFWFBPUlRfU1lNQk9MX0dQTCh4ZHBfcmV0dXJuX2ZyYW1lKTsKPgo+
ICB2b2lkIHhkcF9yZXR1cm5fZnJhbWVfcnhfbmFwaShzdHJ1Y3QgeGRwX2ZyYW1lICp4ZHBmKQo+
ICB7Cj4gLSAgICAgICBfX3hkcF9yZXR1cm4oeGRwZi0+ZGF0YSwgJnhkcGYtPm1lbSwgdHJ1ZSwg
MCk7Cj4gKyAgICAgICBfX3hkcF9yZXR1cm4oeGRwZi0+ZGF0YSwgJnhkcGYtPm1lbSwgdHJ1ZSwg
MCwgMCk7Cj4gIH0KPiAgRVhQT1JUX1NZTUJPTF9HUEwoeGRwX3JldHVybl9mcmFtZV9yeF9uYXBp
KTsKPgo+ICB2b2lkIHhkcF9yZXR1cm5fYnVmZihzdHJ1Y3QgeGRwX2J1ZmYgKnhkcCkKPiAgewo+
IC0gICAgICAgX194ZHBfcmV0dXJuKHhkcC0+ZGF0YSwgJnhkcC0+cnhxLT5tZW0sIHRydWUsIHhk
cC0+aGFuZGxlKTsKPiArICAgICAgIF9feGRwX3JldHVybih4ZHAtPmRhdGEsICZ4ZHAtPnJ4cS0+
bWVtLCB0cnVlLCB4ZHAtPmhhbmRsZSwKPiArICAgICAgICAgICAgICAgICAgICAgICB4ZHAtPmRh
dGEgLSB4ZHAtPmRhdGFfaGFyZF9zdGFydCk7Cj4gIH0KPiAgRVhQT1JUX1NZTUJPTF9HUEwoeGRw
X3JldHVybl9idWZmKTsKPgo+IC0tCj4gMi4xNy4xCj4KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
