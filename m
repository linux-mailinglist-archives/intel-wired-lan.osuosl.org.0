Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4427473A3
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jul 2023 16:07:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5056640207;
	Tue,  4 Jul 2023 14:07:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5056640207
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688479638;
	bh=jVkDOjjCEUzisZKZJaaYG/DnfbWHjItyNORVUw74eGs=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=y+5+r/s6LSkx1cUs+yohCCqXu6GjKM2ytWRhAphdZMSvtLUVxkSz28oD447yvkgwY
	 XvKiGx9i1LQMnxOyPDGiX3miF+yE0w3taqxE/ViFhBnZoO8hRY0HL/EhpJqiWbx2Je
	 0QrMVGpXFLbfQcpULJ3mWAInOEzlG6xUxL4LBaXPXKpLJVIwNh8OFn60rgSBlSoaMT
	 VTsQe478gPf7On+WOrgZDLJWMtE9t879cAJqoxQaVZ+SWg/f+jtzkl/vkHevX4AJtL
	 xLNOEx9fhvgaLe0Dts9Dps0s5RUX70IBQNqtrZ+LGJ3sMXYN/v084TYq6BZ2jeJFLC
	 qKOCV4GsUdmqg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BBIt-mZx8tuz; Tue,  4 Jul 2023 14:07:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E92DB401CE;
	Tue,  4 Jul 2023 14:07:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E92DB401CE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A38341BF83E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 14:07:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8673781C19
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 14:07:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8673781C19
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 16Ba-yO2IXEF for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jul 2023 14:07:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F65981BBD
Received: from mail-ua1-x936.google.com (mail-ua1-x936.google.com
 [IPv6:2607:f8b0:4864:20::936])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8F65981BBD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 14:07:11 +0000 (UTC)
Received: by mail-ua1-x936.google.com with SMTP id
 a1e0cc1a2514c-783f17f0a00so1735518241.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 04 Jul 2023 07:07:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688479630; x=1691071630;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Pj5JGVPPeauGQvIpeFlKIni7HhsZGoS4BNs5ZO3Pxmo=;
 b=RCDY+EF1Mt8xuWyMdeZmIDai33aMol2N3SLil3CVG+VBujs6RGliPcC2DAfiw478SS
 qKydRifa7efVF5DIoczShaJKH/ewpVde5kB+xckth2+Zc2gbp2evRJocZA6Mv1ka05Eu
 NZ8/dqfH7xRkjEJDlQ3I5SGLpbMqNQsvV48SbbxAAPHP2dazOeuBR+2X0W8j/5HFy+Th
 RniXkRDgddblc7UDh4ZwTGGCVZz2Nj7A3MQjzw9Xp/DbDJCTvvm4I+haGrHRg03E00dJ
 ODGw9GZzV89cSV97R+az8fcxBqYrZNqWMykhFxCnyKY5ObWg/89t2F0z2T0gfw/Bk8nZ
 CCzQ==
X-Gm-Message-State: ABy/qLYlMSGIstJllQlmOcbZkIhYFUJyBs1XywjfGdFREZrAYHagfyG5
 xIHXOEjBRmalUhHPyeCXsXffC85tGv7IADWol38=
X-Google-Smtp-Source: APBJJlFJCJlldECWB48kizoK0CfFTHjLP8z9IyEugdv2pBN84c6O0kzGnkzh7+BqYt8iLgUwD/ZmpI0SaBD/Af9mE38=
X-Received: by 2002:a05:6102:2852:b0:444:c9b4:25bc with SMTP id
 az18-20020a056102285200b00444c9b425bcmr5391006vsb.17.1688479630313; Tue, 04
 Jul 2023 07:07:10 -0700 (PDT)
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
 <CAA85sZuQh0FMoGDFVyOad6G1UB9keodd3OCZ4d4r+xgXDArcVA@mail.gmail.com>
 <062061fc4d4d3476e3b0255803b726956686eb19.camel@redhat.com>
In-Reply-To: <062061fc4d4d3476e3b0255803b726956686eb19.camel@redhat.com>
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Tue, 4 Jul 2023 16:06:58 +0200
Message-ID: <CAA85sZv9KCmw8mAzK4T-ORXB48wuLF+YXTYSWxkBhv3k_-wzcA@mail.gmail.com>
To: Paolo Abeni <pabeni@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1688479630; x=1691071630;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Pj5JGVPPeauGQvIpeFlKIni7HhsZGoS4BNs5ZO3Pxmo=;
 b=hn28cFzPMECl6LNgOehfydKarGWRszOgkN4J5a7gUd5vmZLo2CQsUGFHlBCEIIRVVW
 h/MhsLmUAkU/ST/RsPiGNr1sybZKGP1i1NZJNSVn76l+m5V9+PDhJ/M6b6YKoqEY3MaY
 W3PqkQbyfj/Ai/EAiaINxJnCGKaYtQHBKconjODUGLUaT4mz5qKVWagR5RNdnH/v/RkP
 511XSggaErLed2FYj89tK/iO1V/ikIfkKzh9/GomZhI8Ri7FXslVDVS8fhrUz3dWGrv1
 VPXQJM8HU+mfKDy7jmqaX4AKOqRwns+zaI+BzufJx6DEh0Zdzpl3N6T272/QOdmy0vGG
 8exg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=hn28cFzP
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

T24gVHVlLCBKdWwgNCwgMjAyMyBhdCAzOjQx4oCvUE0gUGFvbG8gQWJlbmkgPHBhYmVuaUByZWRo
YXQuY29tPiB3cm90ZToKPgo+IE9uIFR1ZSwgMjAyMy0wNy0wNCBhdCAxNToyMyArMDIwMCwgSWFu
IEt1bWxpZW4gd3JvdGU6Cj4gPiBPbiBUdWUsIEp1bCA0LCAyMDIzIGF0IDI6NTTigK9QTSBQYW9s
byBBYmVuaSA8cGFiZW5pQHJlZGhhdC5jb20+IHdyb3RlOgo+ID4gPgo+ID4gPiBPbiBUdWUsIDIw
MjMtMDctMDQgYXQgMTM6MzYgKzAyMDAsIElhbiBLdW1saWVuIHdyb3RlOgo+ID4gPiA+IFByb3Bw
ZXIgYnVnIHRoaXMgdGltZToKPiA+ID4gPiBjYXQgYnVnLnR4dCB8IC4vc2NyaXB0cy9kZWNvZGVf
c3RhY2t0cmFjZS5zaCB2bWxpbnV4Cj4gPiA+Cj4gPiA+IFRvIGJlIHN1cmUsIGlzIHRoaXMgd2l0
aCB0aGUgbGFzdCBwYXRjaCBJIHNoYXJlZD8gdGhpcyBvbmUgSSBtZWFuOgo+ID4KPiA+IFRoZSBj
dXJyZW50IG1vZGlmaWNhdGlvbnMgSSBoYXZlLCBvbiB0b3Agb2YgdjYuNC4xLCBpczoKPiA+IGRp
ZmYgLS1naXQgYS9uZXQvY29yZS9za2J1ZmYuYyBiL25ldC9jb3JlL3NrYnVmZi5jCj4gPiBpbmRl
eCBjZWEyOGQzMGFiYjUuLjg1NTJjYWExOTdmOSAxMDA2NDQKPiA+IC0tLSBhL25ldC9jb3JlL3Nr
YnVmZi5jCj4gPiArKysgYi9uZXQvY29yZS9za2J1ZmYuYwo+ID4gQEAgLTQyNzIsNiArNDI3Miwx
MSBAQCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiX3NlZ21lbnRfbGlzdChzdHJ1Y3Qgc2tfYnVmZiAqc2ti
LAo+ID4KPiA+ICAgICAgICAgc2tiX3NoaW5mbyhza2IpLT5mcmFnX2xpc3QgPSBOVUxMOwo+ID4K
PiA+ICsgICAgICAgLyogbGF0ZXIgY29kZSB3aWxsIGNsZWFyIHRoZSBnc28gYXJlYSBpbiB0aGUg
c2hhcmVkIGluZm8gKi8KPiA+ICsgICAgICAgZXJyID0gc2tiX2hlYWRlcl91bmNsb25lKHNrYiwg
R0ZQX0FUT01JQyk7Cj4gPiArICAgICAgIGlmIChlcnIpCj4gPiArICAgICAgICAgICAgICAgZ290
byBlcnJfbGluZWFyaXplOwo+ID4gKwo+ID4gICAgICAgICB3aGlsZSAobGlzdF9za2IpIHsKPiA+
ICAgICAgICAgICAgICAgICBuc2tiID0gbGlzdF9za2I7Cj4gPiAgICAgICAgICAgICAgICAgbGlz
dF9za2IgPSBsaXN0X3NrYi0+bmV4dDsKPiA+IEBAIC00MzI4LDYgKzQzMzMsOSBAQCBzdHJ1Y3Qg
c2tfYnVmZiAqc2tiX3NlZ21lbnRfbGlzdChzdHJ1Y3Qgc2tfYnVmZiAqc2tiLAo+ID4KPiA+ICAg
ICAgICAgc2tiLT5wcmV2ID0gdGFpbDsKPiA+Cj4gPiArICAgICAgIGlmIChXQVJOX09OX09OQ0Uo
IXNrYi0+bmV4dCkpCj4gPiArICAgICAgICAgICAgICAgZ290byBlcnJfbGluZWFyaXplOwo+ID4g
Kwo+ID4gICAgICAgICBpZiAoc2tiX25lZWRzX2xpbmVhcml6ZShza2IsIGZlYXR1cmVzKSAmJgo+
ID4gICAgICAgICAgICAgX19za2JfbGluZWFyaXplKHNrYikpCj4gPiAgICAgICAgICAgICAgICAg
Z290byBlcnJfbGluZWFyaXplOwo+ID4gLS0tCj4gPgo+ID4gPiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9uZXRkZXYvOTJhNGQ0MjQ5MWEyYzIxOTE5MmFlODZmYTA0YjU3OWVhMzY3NmQ4Yy5jYW1l
bEByZWRoYXQuY29tLwo+ID4gPgo+ID4gPiBDb3VsZCB5b3UgcGxlYXNlIGFkZGl0aW9uYWxseSBl
bmFibGUgQ09ORklHX0RFQlVHX05FVCBpbiB5b3VyIGJ1aWxkPwo+ID4KPiA+IFN1cmUsIHdpbGwg
ZG8KPiA+Cj4gPiA+IENvdWxkIHlvdSBwbGVhc2UgZ2l2ZSBhIGRldGFpbGVkIGRlc2NyaXB0aW9u
IG9mIHlvdXIgbmV0d29yayB0b3BvbG9neQo+ID4gPiBhbmQgdGhlIHJ1bm5pbmcgdHJhZmZpYz8K
PiA+Cj4gPiBUaGlzIG1hY2hpbmUgaGFzIHR3byAicmVhbCBpbnRlcmZhY2VzIiBhbmQgdHdvIGlu
dGVyZmFjZXMgdGhhdCBydW5zIGFzCj4gPiBicmlkZ2VzIGZvciB2aXJ0dWFsIG1hY2hpbmVzCj4g
PiBlbm8xIC0gcmVhbCBpbnRlcm5hbAo+ID4gZW5vMiAtIGJyaWRnZSAtIGludGVybmFsCj4gPiBl
bm8zIC0gcmVhbCBleHRlcm5hbAo+ID4gZW5vNCAtIGJyaWRnZSAtIGV4dGVybmFsCj4gPgo+ID4g
VGhlIGJyaWRnZXMgYXJlIHVzZWQgYnkgdGhyZWUgdmlydHVhbCBtYWNoaW5lcywgdHdvIG9mIHdo
aWNoIGFyZQo+ID4gYXR0YWNoZWQgb24gYm90aCBuZXR3b3Jrcwo+ID4KPiA+IFRyYWZmaWMgc2Vl
bWVkIHRvIGJlIHZpZGVvIHN0cmVhbWluZywgYXQgbGVhc3QgYXQgZmlyc3QsIG5vdyBJIGRvbid0
Cj4gPiByZWFsbHkga25vdy4gSSBkbyBoYXZlIGEgZmV3IHNtYXJ0IGRldmljZXMgc28gSSBhc3N1
bWUgdGhlcmUgaXMKPiA+IGEgYml0IG9mIG11bHRpY2FzdCB0cmFmZmljIGFzIHdlbGwgLSBidXQg
bm90IHJlYWxseSBhbnl0aGluZyB1bnVzdWFsIGFzIHN1Y2guCj4KPiBJbiB0aGVyZSBhbnkgWERQ
IHByb2dyYW0gcnVubmluZyBvbiB0aGUgaG9zdCBzaWRlPyBQb3NzaWJseSBjaGFuZ2luZwo+IHRo
ZSBwYWNrZXQgaGRyPwoKT25seSBzeXN0ZW1kIHN0YW5kYXJkIHRoaW5ncywgSSBoYXZlbid0IGRv
bmUgYW55dGhpbmcgYW5kIHRoZSBub3JtYWwKbmZ0YWJsZXMgZncgZG9lc24ndCBkbyBhbnl0aGlu
ZyBzcGVjaWFsCgo+IFRoYW5rcyEKPgo+IC9QCj4KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13
aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC13aXJlZC1sYW4K
