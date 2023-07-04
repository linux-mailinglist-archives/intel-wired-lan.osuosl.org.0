Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8CF7472AF
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jul 2023 15:24:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 117BD416DD;
	Tue,  4 Jul 2023 13:24:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 117BD416DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688477042;
	bh=0l11X0aIBe3Kk9K3GFWQuMq/93xMj25h/B1jDRYiHcQ=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FDDWEoauQZFBGJvIuv0kX0OXm0qcKjP4A/adcpSzXBvgOGJwakivyNbtSTgf9yJEj
	 0paa+kGHnKaSSJDolvcarZ9hK48RxoGxDE4Hwbx5ChEOPW2AX/RPznwo5/ZV3Wo3F1
	 09xO0l8SYM9qm8IIP4j0azG5D5OYlRMCW0PX+k7oXBWPTYCrHwzOBA77NPLV0q3Wyr
	 EOTx33B5OXcZmlDZ/2Hd+0/IoEzI6oONsEX41gnFvgE88SdmLVVqTW5JWPsh+CKRXX
	 bcO8dryW9fNgnMi0oESyZW9CfJbGepU5Q2p5Mqea76Z/Zu9EjhmPXhLgb8oUAGuwk2
	 qyEijVcuh6DmQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7vyEor2pT6dr; Tue,  4 Jul 2023 13:24:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BFF2A4085A;
	Tue,  4 Jul 2023 13:24:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BFF2A4085A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 93BCE1BF5B4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 13:23:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6B7F281351
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 13:23:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B7F281351
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HDFs6mFKUmbM for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jul 2023 13:23:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2BA768130C
Received: from mail-vk1-xa2d.google.com (mail-vk1-xa2d.google.com
 [IPv6:2607:f8b0:4864:20::a2d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2BA768130C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 13:23:53 +0000 (UTC)
Received: by mail-vk1-xa2d.google.com with SMTP id
 71dfb90a1353d-47e611669e5so463210e0c.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 04 Jul 2023 06:23:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688477032; x=1691069032;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=VSiiFDXjl+Lpp4E2QISeF/M9219YCHb8h6as4n+mP/Q=;
 b=Dg+DUJxfTYnM2I3lXQUcoIHFBLQNrgSjwIsXzQSEjN1xHmLLMwKUFwbip3GGnkvK7i
 s5HVuIl32HzxHWvddfcmplHpXa+416tQ5PqA8edEolcEKHaAVASQn5oil4Z6wd7U81N/
 ggZxIhCISGgXuDCurcjC4yCR058oUW+oegXdhE+P3e4x1DajXnmsPg7srjryWz5ICnpZ
 0Kn5DW2DZeiZhXrQuMXjmu1oJ1o0EhK6wQhOOI1zEtloxnZ6jG5rk346xVGR1nQKpoUw
 qGJSi2bwov1bbkMjx2iAHtlaUrz3hKg0x+63mUI9Qf6I4vSwh/p5DQIFBf/JAWAIXCc7
 DFsg==
X-Gm-Message-State: ABy/qLaZ9uvE6dWcLWr9jrL2wqoF2I+jreNGd8UCtzS9xPcKwRU69L64
 0hCAf9etOBetkgRTdI9xcCP6OyBSV7e33JXY42I=
X-Google-Smtp-Source: APBJJlFgXvjChDNg5wodLBZkohrCxkIzY+gZW7QVCivYwEif4CcDQcEG6lbpp3JpXOlkwmA8WP73UkcMZ3ip4jlrOuw=
X-Received: by 2002:a1f:e484:0:b0:471:b18a:f9e5 with SMTP id
 b126-20020a1fe484000000b00471b18af9e5mr4149205vkh.4.1688477031784; Tue, 04
 Jul 2023 06:23:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAA85sZukiFq4A+b9+en_G85eVDNXMQsnGc4o-4NZ9SfWKqaULA@mail.gmail.com>
 <CAA85sZvm1dL3oGO85k4R+TaqBiJsggUTpZmGpH1+dqdC+U_s1w@mail.gmail.com>
 <e7e49ed5-09e2-da48-002d-c7eccc9f9451@intel.com>
 <CAA85sZtyM+X_oHcpOBNSgF=kmB6k32bpB8FCJN5cVE14YCba+A@mail.gmail.com>
 <22aad588-47d6-6441-45b2-0e685ed84c8d@intel.com>
 <CAA85sZti1=ET=Tc3MoqCX0FqthHLf6MSxGNAhJUNiMms1TfoKA@mail.gmail.com>
 <CAA85sZvn04k7=oiTQ=4_C8x7pNEXRWzeEStcaXvi3v63ah7OUQ@mail.gmail.com>
 <ffb554bfa4739381d928406ad24697a4dbbbe4a2.camel@redhat.com>
 <CAA85sZunA=tf0FgLH=MNVYq3Edewb1j58oBAoXE1Tyuy3GJObg@mail.gmail.com>
 <CAA85sZsH1tMwLtL=VDa5=GBdVNWgifvhK+eG-hQg69PeSxBWkg@mail.gmail.com>
 <CAA85sZu=CzJx9QD87-vehOStzO9qHUSWk6DXZg3TzJeqOV5-aw@mail.gmail.com>
 <0a040331995c072c56fce58794848f5e9853c44f.camel@redhat.com>
 <CAA85sZuuwxtAQcMe3LHpFVeF7y-bVoHtO1nukAa2+NyJw3zcyg@mail.gmail.com>
 <CAA85sZurk7-_0XGmoCEM93vu3vbqRgPTH4QVymPR5BeeFw6iFg@mail.gmail.com>
 <486ae2687cd2e2624c0db1ea1f3d6ca36db15411.camel@redhat.com>
 <CAA85sZsJEZK0g0fGfH+toiHm_o4pdN+Wo0Wq9fgsUjHXGxgxQA@mail.gmail.com>
 <CAA85sZs4KkfVojx=vxbDaWhWRpxiHc-RCc2OLD2c+VefRjpTfw@mail.gmail.com>
 <5688456234f5d15ea9ca0f000350c28610ed2639.camel@redhat.com>
 <CAA85sZvT-vAHQooy8+i0-bTxgv4JjkqMorLL1HjkXK6XDKX41w@mail.gmail.com>
 <CAA85sZs2biYueZsbDqdrMyYfaqH6hnSMpymgbsk=b3W1B7TNRA@mail.gmail.com>
 <CAA85sZs_H3Dc-mYnj8J5VBEwUJwbHUupP+U-4eG20nfAHBtv4w@mail.gmail.com>
 <92a4d42491a2c219192ae86fa04b579ea3676d8c.camel@redhat.com>
 <CAA85sZvtspqfep+6rH8re98-A6rHNNWECvwqVaM=r=0NSSsGzA@mail.gmail.com>
 <dfbbe91a9c0abe8aba2c00afd3b7f7d6af801d8e.camel@redhat.com>
In-Reply-To: <dfbbe91a9c0abe8aba2c00afd3b7f7d6af801d8e.camel@redhat.com>
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Tue, 4 Jul 2023 15:23:40 +0200
Message-ID: <CAA85sZuQh0FMoGDFVyOad6G1UB9keodd3OCZ4d4r+xgXDArcVA@mail.gmail.com>
To: Paolo Abeni <pabeni@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1688477032; x=1691069032;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=VSiiFDXjl+Lpp4E2QISeF/M9219YCHb8h6as4n+mP/Q=;
 b=df8tRDBXMoxgCjpKyZV1RhrAkbjCqRs9SQcULafs37VE6+gBEGVE9JC+UfSVWT1my6
 OM2LQm1wB3r4Il+kqWIumo5eVmVqpJGiOPV6tOSId6VzIBL5NrIWzHKbnILstoreJ1+Q
 0xAlKBk4yPeQZjm2lwjILl8TW0a2nGc5aHyYhYmysf3JKTmJrMNVdzFmGRcylFNiaWjb
 7vdLE8UJKjlJRZ5r1g6q0Vhcrqtw5TXwZ9Nz2iHZIYA/VFFLBROlorbNVe8LrCFli7tq
 /WBsC1lCxzlal+h/eQxFtLuyEymlzePbagQD6gJ4NZgOkLJnWFEBt0MtugNeQjCZx1SZ
 WaUw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=df8tRDBX
Subject: Re: [Intel-wired-lan] bug with rx-udp-gro-forwarding offloading?
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBKdWwgNCwgMjAyMyBhdCAyOjU04oCvUE0gUGFvbG8gQWJlbmkgPHBhYmVuaUByZWRo
YXQuY29tPiB3cm90ZToKPgo+IE9uIFR1ZSwgMjAyMy0wNy0wNCBhdCAxMzozNiArMDIwMCwgSWFu
IEt1bWxpZW4gd3JvdGU6Cj4gPiBQcm9wcGVyIGJ1ZyB0aGlzIHRpbWU6Cj4gPiBjYXQgYnVnLnR4
dCB8IC4vc2NyaXB0cy9kZWNvZGVfc3RhY2t0cmFjZS5zaCB2bWxpbnV4Cj4KPiBUbyBiZSBzdXJl
LCBpcyB0aGlzIHdpdGggdGhlIGxhc3QgcGF0Y2ggSSBzaGFyZWQ/IHRoaXMgb25lIEkgbWVhbjoK
ClRoZSBjdXJyZW50IG1vZGlmaWNhdGlvbnMgSSBoYXZlLCBvbiB0b3Agb2YgdjYuNC4xLCBpczoK
ZGlmZiAtLWdpdCBhL25ldC9jb3JlL3NrYnVmZi5jIGIvbmV0L2NvcmUvc2tidWZmLmMKaW5kZXgg
Y2VhMjhkMzBhYmI1Li44NTUyY2FhMTk3ZjkgMTAwNjQ0Ci0tLSBhL25ldC9jb3JlL3NrYnVmZi5j
CisrKyBiL25ldC9jb3JlL3NrYnVmZi5jCkBAIC00MjcyLDYgKzQyNzIsMTEgQEAgc3RydWN0IHNr
X2J1ZmYgKnNrYl9zZWdtZW50X2xpc3Qoc3RydWN0IHNrX2J1ZmYgKnNrYiwKCiAgICAgICAgc2ti
X3NoaW5mbyhza2IpLT5mcmFnX2xpc3QgPSBOVUxMOwoKKyAgICAgICAvKiBsYXRlciBjb2RlIHdp
bGwgY2xlYXIgdGhlIGdzbyBhcmVhIGluIHRoZSBzaGFyZWQgaW5mbyAqLworICAgICAgIGVyciA9
IHNrYl9oZWFkZXJfdW5jbG9uZShza2IsIEdGUF9BVE9NSUMpOworICAgICAgIGlmIChlcnIpCisg
ICAgICAgICAgICAgICBnb3RvIGVycl9saW5lYXJpemU7CisKICAgICAgICB3aGlsZSAobGlzdF9z
a2IpIHsKICAgICAgICAgICAgICAgIG5za2IgPSBsaXN0X3NrYjsKICAgICAgICAgICAgICAgIGxp
c3Rfc2tiID0gbGlzdF9za2ItPm5leHQ7CkBAIC00MzI4LDYgKzQzMzMsOSBAQCBzdHJ1Y3Qgc2tf
YnVmZiAqc2tiX3NlZ21lbnRfbGlzdChzdHJ1Y3Qgc2tfYnVmZiAqc2tiLAoKICAgICAgICBza2It
PnByZXYgPSB0YWlsOwoKKyAgICAgICBpZiAoV0FSTl9PTl9PTkNFKCFza2ItPm5leHQpKQorICAg
ICAgICAgICAgICAgZ290byBlcnJfbGluZWFyaXplOworCiAgICAgICAgaWYgKHNrYl9uZWVkc19s
aW5lYXJpemUoc2tiLCBmZWF0dXJlcykgJiYKICAgICAgICAgICAgX19za2JfbGluZWFyaXplKHNr
YikpCiAgICAgICAgICAgICAgICBnb3RvIGVycl9saW5lYXJpemU7Ci0tLQoKPiBodHRwczovL2xv
cmUua2VybmVsLm9yZy9uZXRkZXYvOTJhNGQ0MjQ5MWEyYzIxOTE5MmFlODZmYTA0YjU3OWVhMzY3
NmQ4Yy5jYW1lbEByZWRoYXQuY29tLwo+Cj4gQ291bGQgeW91IHBsZWFzZSBhZGRpdGlvbmFsbHkg
ZW5hYmxlIENPTkZJR19ERUJVR19ORVQgaW4geW91ciBidWlsZD8KClN1cmUsIHdpbGwgZG8KCj4g
Q291bGQgeW91IHBsZWFzZSBnaXZlIGEgZGV0YWlsZWQgZGVzY3JpcHRpb24gb2YgeW91ciBuZXR3
b3JrIHRvcG9sb2d5Cj4gYW5kIHRoZSBydW5uaW5nIHRyYWZmaWM/CgpUaGlzIG1hY2hpbmUgaGFz
IHR3byAicmVhbCBpbnRlcmZhY2VzIiBhbmQgdHdvIGludGVyZmFjZXMgdGhhdCBydW5zIGFzCmJy
aWRnZXMgZm9yIHZpcnR1YWwgbWFjaGluZXMKZW5vMSAtIHJlYWwgaW50ZXJuYWwKZW5vMiAtIGJy
aWRnZSAtIGludGVybmFsCmVubzMgLSByZWFsIGV4dGVybmFsCmVubzQgLSBicmlkZ2UgLSBleHRl
cm5hbAoKVGhlIGJyaWRnZXMgYXJlIHVzZWQgYnkgdGhyZWUgdmlydHVhbCBtYWNoaW5lcywgdHdv
IG9mIHdoaWNoIGFyZQphdHRhY2hlZCBvbiBib3RoIG5ldHdvcmtzCgpUcmFmZmljIHNlZW1lZCB0
byBiZSB2aWRlbyBzdHJlYW1pbmcsIGF0IGxlYXN0IGF0IGZpcnN0LCBub3cgSSBkb24ndApyZWFs
bHkga25vdy4gSSBkbyBoYXZlIGEgZmV3IHNtYXJ0IGRldmljZXMgc28gSSBhc3N1bWUgdGhlcmUg
aXMKYSBiaXQgb2YgbXVsdGljYXN0IHRyYWZmaWMgYXMgd2VsbCAtIGJ1dCBub3QgcmVhbGx5IGFu
eXRoaW5nIHVudXN1YWwgYXMgc3VjaC4KCj4gVGhhbmtzIQo+Cj4gUGFvbG8KPgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFp
bGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3Ns
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
