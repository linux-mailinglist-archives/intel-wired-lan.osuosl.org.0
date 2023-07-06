Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0244B74A219
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jul 2023 18:18:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2802260FFE;
	Thu,  6 Jul 2023 16:18:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2802260FFE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688660290;
	bh=GCcQUzeIMyWnVhUrTOtMQURhefN77zlgLme3Q7HHlbw=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NSZLvsCRAHFzcpKp0Z6F8PuXW+n0nCCSG7k18cunG/vLR9mD4zE0WbykpAyzjZ1LZ
	 JYJRnp2nRT5hwgZRoLnpNHylujVcWCsVBt4mbpwruf4zuSl3KpQO1CX+uxRPvCXNBz
	 F0eMV8peCByMIclgEZQGGJzr+FRCex5/fsz0ugjtrtKzbZGhGHbyeT4s4WTzYZDSeU
	 JuOR7k5QBlKfjek0bu0zd7eA53BmC/B8jRFq1KeUFv0aYQCvifNZ7vVVEPfuT5Q/Hh
	 BIj/LMLUD+MhbCztGaYU3v1klVpF7AHqXWSruxjE8IeamxXMzR75khZ279Zr70vfnp
	 IoB7wZwvvO+Ew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DVwShhcXQ1xz; Thu,  6 Jul 2023 16:18:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF4E561021;
	Thu,  6 Jul 2023 16:18:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF4E561021
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 657801BF3DE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 16:18:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3B07D40B34
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 16:18:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B07D40B34
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zs4UVK7IEj7B for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jul 2023 16:18:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 49BF840012
Received: from mail-vk1-xa30.google.com (mail-vk1-xa30.google.com
 [IPv6:2607:f8b0:4864:20::a30])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 49BF840012
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 16:18:02 +0000 (UTC)
Received: by mail-vk1-xa30.google.com with SMTP id
 71dfb90a1353d-47e3d3e859dso308184e0c.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Jul 2023 09:18:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688660281; x=1691252281;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=6trA7i/Q1+6Uh5pOaGbvlJJc0dwoyiShmt6TgrS7dQQ=;
 b=VKGs71VpoSpJHhgJ3pXyFheGUkc8l5Q2DtoVwZ7USvDdNjcCUJL2FFRVwtbr4nEvMv
 mWYT4h//2oDB1QoWAwNuKnV+7L8jZdwnBThc5e5CE28oXTEDPxHyInDJkvYrtynMCHvY
 ecX/Ce6iMofJp9uM2x2f3IYcFMBpp2MF/TPLDTo1F3Ag1EBqPK1s+XPcBvRSQKSiUy+v
 m81IjO/6hyLR810xsr5+6/c3REp5iUmILFvKXu53C9VS7nr1CefegE3pfVWSHVIPNkYT
 8SuqoXYY/YFHjEgDDYHxrA9FDobqRsi2qjtFeL5vuzaUEbVLzkdwmziCWnRQ0qT7VPMF
 mv2g==
X-Gm-Message-State: ABy/qLbVX4FSzgoKM1dgRkFFsNL6x09hqVkYlooa6+oaCh/OjHmWWLOJ
 PHN5Nhr61q5yziaHcj5Ux/L2W8dyX35nsjiHGQQ=
X-Google-Smtp-Source: APBJJlFkeB5xe0s3yx7qnzI0i2ss7i/hgubFrjNPzsX0wW7SaTcLfXaqstHcIwC21dRbgTg5NlwMzCFimAsvja+n8zA=
X-Received: by 2002:a1f:5c05:0:b0:47e:19b4:85e9 with SMTP id
 q5-20020a1f5c05000000b0047e19b485e9mr1670297vkb.0.1688660280885; Thu, 06 Jul
 2023 09:18:00 -0700 (PDT)
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
 <CAA85sZv9KCmw8mAzK4T-ORXB48wuLF+YXTYSWxkBhv3k_-wzcA@mail.gmail.com>
 <CAA85sZt6ssXRaZyq4awM0yTLFk62Gxbgw-0+bTKWsHwQvVzZXQ@mail.gmail.com>
 <d9bf21296a4691ac5aca11ccd832765b262f7088.camel@redhat.com>
 <CAA85sZsidN4ig=RaQ34PYFjnZGU-=zqR=r-5za=G4oeAtxDA7g@mail.gmail.com>
 <14cd6a50bd5de13825017b75c98cb3115e84acc1.camel@redhat.com>
 <CAA85sZuZLg+L7Sr51PPaOkPKbbiywXbbKzhTyjaw12_S6CsZHQ@mail.gmail.com>
 <c6cf7b4c0a561700d2015c970d52fc9d92b114c7.camel@redhat.com>
 <CAA85sZvZ_X=TqCXaPui0PDLq2pp5dw_uhga+wcXgBqudrLP9bQ@mail.gmail.com>
 <67ff0f7901e66d1c0d418c48c9a071068b32a77d.camel@redhat.com>
 <CANn89i+F=R71refT8K_8hPaP+uWn15GeHz+FTMYU=VPTG24WFA@mail.gmail.com>
 <c4e40b45b41d0476afd8989d31e6bab74c51a72a.camel@redhat.com>
In-Reply-To: <c4e40b45b41d0476afd8989d31e6bab74c51a72a.camel@redhat.com>
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Thu, 6 Jul 2023 18:17:49 +0200
Message-ID: <CAA85sZs_R3W42m8YmXO-k08bPow7zKj_eOxceEB_3MJveGMZ7A@mail.gmail.com>
To: Paolo Abeni <pabeni@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1688660281; x=1691252281;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6trA7i/Q1+6Uh5pOaGbvlJJc0dwoyiShmt6TgrS7dQQ=;
 b=SA0osFoY8Rg2TDWN4qQRQk2GMTbD3SoAHjED27fW7Dzb3Vs2Zgddnov7iQXOAF+WqA
 7CWZFOzGs8NyJ/N6whbQLrBeD57Tre03a3G7tEqDjbaYgt+KG5UeRU89vyJDNQ2V+QJ1
 PxZEnSfidXJeLdZ6kMb5HKp5ACbU/rBfPjjYWfoXV8wNtnCDTonCAG3IA8Ut4Zsugvmp
 ykokh97BXLM/WrD3iuieWvnyC7Mo0oFscVTxd8xYFEVUvE9IC0R4OVHeFEfuLSUCf+pk
 5jNTP3PB9scTt3vSGJGpXEYuBh8FHHjLuubupCEMHaZoHW3a+wPP9ge4qW5EGsBKxxIf
 jjBQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=SA0osFoY
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
Cc: Willem de Bruijn <willemb@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCBKdWwgNiwgMjAyMyBhdCA0OjA04oCvUE0gUGFvbG8gQWJlbmkgPHBhYmVuaUByZWRo
YXQuY29tPiB3cm90ZToKPgo+IE9uIFRodSwgMjAyMy0wNy0wNiBhdCAxNTo1NiArMDIwMCwgRXJp
YyBEdW1hemV0IHdyb3RlOgo+ID4gT24gVGh1LCBKdWwgNiwgMjAyMyBhdCAzOjAy4oCvUE0gUGFv
bG8gQWJlbmkgPHBhYmVuaUByZWRoYXQuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gT24gVGh1LCAy
MDIzLTA3LTA2IGF0IDEzOjI3ICswMjAwLCBJYW4gS3VtbGllbiB3cm90ZToKPiA+ID4gPiBPbiBU
aHUsIEp1bCA2LCAyMDIzIGF0IDEwOjQy4oCvQU0gUGFvbG8gQWJlbmkgPHBhYmVuaUByZWRoYXQu
Y29tPiB3cm90ZToKPiA+ID4gPiA+IE9uIFdlZCwgMjAyMy0wNy0wNSBhdCAxNTo1OCArMDIwMCwg
SWFuIEt1bWxpZW4gd3JvdGU6Cj4gPiA+ID4gPiA+IE9uIFdlZCwgSnVsIDUsIDIwMjMgYXQgMzoy
OeKAr1BNIFBhb2xvIEFiZW5pIDxwYWJlbmlAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPiA+ID4gPiA+
ID4KPiA+ID4gPiA+ID4gPiBPbiBXZWQsIDIwMjMtMDctMDUgYXQgMTM6MzIgKzAyMDAsIElhbiBL
dW1saWVuIHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4gT24gV2VkLCBKdWwgNSwgMjAyMyBhdCAxMjoy
OOKAr1BNIFBhb2xvIEFiZW5pIDxwYWJlbmlAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPiA+ID4gPiA+
ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiA+IE9uIFR1ZSwgMjAyMy0wNy0wNCBhdCAxNjoyNyArMDIw
MCwgSWFuIEt1bWxpZW4gd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiA+ID4gTW9yZSBzdGFja3RyYWNl
cy4uID0pCj4gPiA+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+ID4gPiBjYXQgYnVnLnR4
dCB8IC4vc2NyaXB0cy9kZWNvZGVfc3RhY2t0cmFjZS5zaCB2bWxpbnV4Cj4gPiA+ID4gPiA+ID4g
PiA+ID4gWyAgNDExLjQxMzc2N10gLS0tLS0tLS0tLS0tWyBjdXQgaGVyZSBdLS0tLS0tLS0tLS0t
Cj4gPiA+ID4gPiA+ID4gPiA+ID4gWyAgNDExLjQxMzc5Ml0gV0FSTklORzogQ1BVOiA5IFBJRDog
OTQyIGF0IGluY2x1ZGUvbmV0L3VkICAgICBwLmg6NTA5Cj4gPiA+ID4gPiA+ID4gPiA+ID4gdWRw
djZfcXVldWVfcmN2X3NrYiAoLi9pbmNsdWRlL25ldC91ZHAuaDo1MDkgbmV0L2lwdjYvdWRwLmM6
ODAwCj4gPiA+ID4gPiA+ID4gPiA+ID4gbmV0L2lwdjYvdWRwLmM6Nzg3KQo+ID4gPiA+ID4gPiA+
ID4gPgo+ID4gPiA+ID4gPiA+ID4gPiBJJ20gcmVhbGx5IHJ1bm5pbmcgb3V0IG9mIGlkZWFzIGhl
cmUuLi4KPiA+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+ID4gVGhpcyBpczoKPiA+ID4g
PiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+ID4gICAgICAgICBXQVJOX09OX09OQ0UoVURQX1NL
Ql9DQihza2IpLT5wYXJ0aWFsX2Nvdik7Cj4gPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4g
PiA+IHNvcnQgb2YgaGludCBza2IgYmVpbmcgc2hhcmVkIChza2ItPnVzZXJzID4gMSkgd2hpbGUg
ZW5xdWV1ZWQgaW4KPiA+ID4gPiA+ID4gPiA+ID4gbXVsdGlwbGUgcGxhY2VzIChicmlkZ2UgbG9j
YWwgaW5wdXQgYW5kIGJyIGZvcndhcmQvZmxvb2QgdG8gdHVuCj4gPiA+ID4gPiA+ID4gPiA+IGRl
dmljZSkuIEkgYXVkaXRlZCB0aGUgYnJpZGdlIG1jIGZsb29kaW5nIGNvZGUsIGFuZCBJIGNvdWxk
IG5vdCBmaW5kCj4gPiA+ID4gPiA+ID4gPiA+IGhvdyBhIHNoYXJlZCBza2IgY291bGQgbGFuZCBp
bnRvIHRoZSBsb2NhbCBpbnB1dCBwYXRoLgo+ID4gPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+
ID4gPiBBbnl3YXkgdGhlIG90aGVyIHNwbGF0cyByZXBvcnRlZCBoZXJlIGFuZCBpbiBsYXRlciBl
bWFpbHMgYXJlCj4gPiA+ID4gPiA+ID4gPiA+IGNvbXBhdGlibGUgd2l0aCBzaGFyZWQgc2ticy4K
PiA+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+ID4gVGhlIGFib3ZlIGxlYWRzIHRvIGFu
b3RoZXIgYnVuY2ggb2YgcXVlc3Rpb25zOgo+ID4gPiA+ID4gPiA+ID4gPiAqIGNhbiB5b3UgcmVw
cm9kdWNlIHRoZSBpc3N1ZSBhZnRlciBkaXNhYmxpbmcgJ3J4LWdyby1saXN0JyBvbiB0aGUKPiA+
ID4gPiA+ID4gPiA+ID4gaW5ncmVzcyBkZXZpY2U/ICh3aGlsZSBrZWVwaW5nICdyeC11ZHAtZ3Jv
LWZvcndhcmRpbmcnIG9uKS4KPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiBXaXRoIHJ4
LWdyby1saXN0IG9mZiwgYXMgaW4gbmV2ZXIgdHVybmVkIG9uLCBldmVyeXRoaW5nIHNlZW1zIHRv
IHJ1biBmaW5lCj4gPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+ID4gPiAqIGRvIHlvdSBoYXZl
IGJ5IGNoYW5jZSBxZGlzY3Mgb24gdG9wIG9mIHRoZSBWTSB0dW4gZGV2aWNlcz8KPiA+ID4gPiA+
ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiBkZWZhdWx0IHFkaXNjIGlzIGZxCj4gPiA+ID4gPiA+ID4K
PiA+ID4gPiA+ID4gPiBJSVJDIGxpYnZpcnQgY291bGQgcmVzZXQgdGhlIHFkaXNjIHRvIG5vcXVl
dWUgZm9yIHRoZSBvd25lZCB0dW4KPiA+ID4gPiA+ID4gPiBkZXZpY2VzLgo+ID4gPiA+ID4gPiA+
Cj4gPiA+ID4gPiA+ID4gQ291bGQgeW91IHBsZWFzZSByZXBvcnQgdGhlIG91dHB1dCBvZjoKPiA+
ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IHRjIC1kIC1zIHFkaXNjIHNob3cgZGV2IDx0dW4gZGV2
IG5hbWU+Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IEkgZG9uJ3QgaGF2ZSB0aGVzZSBzZXQ6Cj4g
PiA+ID4gPiA+IENPTkZJR19ORVRfU0NIX0lOR1JFU1MKPiA+ID4gPiA+ID4gQ09ORklHX05FVF9T
Q0hFRAo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBzbyB0YyBqdXN0IGdpdmVzIGFuIGVycm9yLi4u
Cj4gPiA+ID4gPgo+ID4gPiA+ID4gVGhlIGFib3ZlIGlzIGNvbmZ1c2luZy4gQVMgQ09ORklHX05F
VF9TQ0hfREVGQVVMVCBkZXBlbmRzIG9uCj4gPiA+ID4gPiBDT05GSUdfTkVUX1NDSEVELCB5b3Ug
c2hvdWxkIG5vdCBoYXZlIGEgZGVmYXVsdCBxZGlzYywgdG9vIDspCj4gPiA+ID4KPiA+ID4gPiBX
ZWxsIGl0J3Mgc3RpbGwgc2V0IGluIHN5c2N0bCAtIGR1bm5vIGlmIGl0IGZhaWxzCj4gPiA+ID4K
PiA+ID4gPiA+IENvdWxkIHlvdSBwbGVhc2Ugc2hhcmUgeW91ciBrZXJuZWwgY29uZmlnPwo+ID4g
PiA+Cj4gPiA+ID4gU3VyZS4uLgo+ID4gPiA+Cj4gPiA+ID4gQXMgYSBzaWRlIG5vdGUsIGl0IGhh
c24ndCBjcmFzaGVkIC0gbm8gdHJhY2VzIHNpbmNlIHdlIGRpZCB0aGUgbGFzdCBjaGFuZ2UKPiA+
ID4KPiA+ID4gSXQgc291bmRzIGxpa2UgYW4gZW5jb3VyYWdpbmcgc2luZyEgKGxhc3QgZmFtb3Vz
IHdvcmRzLi4uKS4gSSdsbCB3YWl0IDEKPiA+ID4gbW9yZSBkYXksIHRoYW4gSSdsbCBzdWJtaXQg
Zm9ybWFsbHkuLi4KPiA+ID4KPiA+ID4gPiBGb3IgcmVmZXJlbmNlLCB0aGlzIGlzIGdpdCBkaWZm
IG9uIHRoZSBydW5uaW5nIGtlcm5lbHMgc291cmNlIHRyZWU6Cj4gPiA+ID4gZGlmZiAtLWdpdCBh
L25ldC9jb3JlL3NrYnVmZi5jIGIvbmV0L2NvcmUvc2tidWZmLmMKPiA+ID4gPiBpbmRleCBjZWEy
OGQzMGFiYjUuLjFiMjM5NGViYWYzMyAxMDA2NDQKPiA+ID4gPiAtLS0gYS9uZXQvY29yZS9za2J1
ZmYuYwo+ID4gPiA+ICsrKyBiL25ldC9jb3JlL3NrYnVmZi5jCj4gPiA+ID4gQEAgLTQyNzAsNiAr
NDI3MCwxNyBAQCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiX3NlZ21lbnRfbGlzdChzdHJ1Y3Qgc2tfYnVm
ZiAqc2tiLAo+ID4gPiA+Cj4gPiA+ID4gICAgICAgICBza2JfcHVzaChza2IsIC1za2JfbmV0d29y
a19vZmZzZXQoc2tiKSArIG9mZnNldCk7Cj4gPiA+ID4KPiA+ID4gPiArICAgICAgIGlmIChXQVJO
X09OX09OQ0Uoc2tiX3NoYXJlZChza2IpKSkgewo+ID4gPiA+ICsgICAgICAgICAgICAgICBza2Ig
PSBza2Jfc2hhcmVfY2hlY2soc2tiLCBHRlBfQVRPTUlDKTsKPiA+ID4gPiArICAgICAgICAgICAg
ICAgaWYgKCFza2IpCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgZ290byBlcnJfbGlu
ZWFyaXplOwo+ID4gPiA+ICsgICAgICAgfQo+ID4gPiA+ICsKPiA+ID4gPiArICAgICAgIC8qIGxh
dGVyIGNvZGUgd2lsbCBjbGVhciB0aGUgZ3NvIGFyZWEgaW4gdGhlIHNoYXJlZCBpbmZvICovCj4g
PiA+ID4gKyAgICAgICBlcnIgPSBza2JfaGVhZGVyX3VuY2xvbmUoc2tiLCBHRlBfQVRPTUlDKTsK
PiA+ID4gPiArICAgICAgIGlmIChlcnIpCj4gPiA+ID4gKyAgICAgICAgICAgICAgIGdvdG8gZXJy
X2xpbmVhcml6ZTsKPiA+ID4gPiArCj4gPiA+ID4gICAgICAgICBza2Jfc2hpbmZvKHNrYiktPmZy
YWdfbGlzdCA9IE5VTEw7Cj4gPiA+ID4KPiA+ID4gPiAgICAgICAgIHdoaWxlIChsaXN0X3NrYikg
ewo+ID4gPgo+ID4gPiAuLi50aGUgYWJvdmUgY2hlY2sgb25seSwgYXMgdGhlIG90aGVyIDIgc2hv
dWxkIG9ubHkgY2F0Y2gtdXAgc2lkZQo+ID4gPiBlZmZlY3RzIG9mIGxhY2sgb2YgdGhpcyBvbmUu
IEluIGFueSBjYXNlIHRoZSBhYm92ZSBhZGRyZXNzIGEgcmVhbAo+ID4gPiBpc3N1ZSwgc28gd2Ug
bGlrZWx5IHdhbnQgaXQgbm8tbWF0dGVyLXdoYXQuCj4gPiA+Cj4gPgo+ID4gSW50ZXJlc3Rpbmcs
IEkgd29uZGVyIGlmIHRoaXMgY291bGQgYWxzbyBmaXggc29tZSBzeXpib3QgcmVwb3J0cwo+ID4g
V2lsbGVtIGFuZCBJIGFyZSBpbnZlc3RpZ2F0aW5nLgo+ID4KPiA+IEFueSBpZGVhIG9mIHdoZW4g
dGhlIGJ1ZyB3YXMgJ2FkZGVkJyBvciAncmV2ZWFsZWQnID8KPgo+IFRoZSBpc3N1ZSBzcGVjaWZp
Y2FsbHkgYWRkcmVzc2VkIGFib3ZlIHNob3VsZCBiZSBwcmVzZW50IHNpbmNlCj4gZnJhZ19saXN0
IGludHJvZHVjdGlvbiBjb21taXQgM2ExMjk2YTM4ZDBjICgibmV0OiBTdXBwb3J0IEdSTy9HU08K
PiBmcmFnbGlzdCBjaGFpbmluZy4iKS4gQUZBSUNTIHRyaWdnZXJpbmcgaXQgcmVxdWlyZXMgbm9u
IHRyaXZpYWwgc2V0dXAgLQo+IG1jYXN0IHJ4IG9uIGJyaWRnZSB3aXRoIGZyYWctbGlzdCBlbmFi
bGVkIGFuZCBmb3J3YXJkaW5nIHRvIG11bHRpcGxlCj4gcG9ydHMgLSBzbyBwZXJoYXBzIHN5emth
bGxlciBmb3VuZCBpdCBsYXRlciBkdWUgdG8gaW1wcm92ZW1lbnRzIG9uIGl0cwo+IHNpZGUgPyE/
CgpJJ20gYWxzbyBhIGJpdCBhZnJhaWQgdGhhdCB3ZSBqdXN0IGhhdmVuJ3QgdHJpZ2dlcmVkIGl0
IC0gaSBkb24ndCBzZWUKYW55IHdhcm5pbmdzIG9yIGFueXRoaW5nLi4uIDovCgo+IENoZWVycywK
Pgo+IFBhb2xvCj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9y
ZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1s
YW4K
