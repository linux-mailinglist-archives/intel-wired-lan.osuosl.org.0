Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AECF174A725
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Jul 2023 00:41:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 438CA4046A;
	Thu,  6 Jul 2023 22:41:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 438CA4046A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688683298;
	bh=2VQQdPiTcvUUohJYu4CSF0P9Nb1URqbNfX3irv4oHjo=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xhbf8YWg7iMClnVaTit+5aqBs5AYR1fSnQpG+eBgRRL6YK1kRyzE4Mjf4835YCqzx
	 5+ZPxOjm4Y4UR3TsTc23eIBoDb8LEEJeeukEHUDBOVnT/5i7y5tlO75o+iB1a8jjbO
	 yIIYvhzru0+Aal4/l1QCMkO/eTXzNBBAk50Boao4spzsqcD+Ict6xZeL1P664UuWKK
	 QR2h4SCBZ+ayemVigYFRJLwHc7zaJ9Gwq9MNkgJeJxxObbeLY/u790ZkejQikQpCRO
	 tcmx67daD7vtxt6I3ybdqJkbk4Vi+ja2EIt2I6mqm0nl9tK6cha2wniydcOr0cbjGj
	 wA3ykdNoLsdxg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ovah3yKzgZq2; Thu,  6 Jul 2023 22:41:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 26950402F7;
	Thu,  6 Jul 2023 22:41:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 26950402F7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 666911BF4D5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 22:41:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3C49541916
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 22:41:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C49541916
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 45Y8_NaJDexj for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jul 2023 22:41:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B2DC4190A
Received: from mail-ua1-x932.google.com (mail-ua1-x932.google.com
 [IPv6:2607:f8b0:4864:20::932])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1B2DC4190A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 22:41:30 +0000 (UTC)
Received: by mail-ua1-x932.google.com with SMTP id
 a1e0cc1a2514c-791b8525b59so495974241.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Jul 2023 15:41:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688683289; x=1691275289;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=aTdMw3U8BFFOt8MvAKiw/gzh8jNiphNZNfXymWqvTuk=;
 b=GSKYUmtXY+t28EKyfn4tuk+IgRPhD7I75je/xmmA/VMB/MkAWwSxiS3tyKgi/OFmKV
 p1iPpcI0JM8tqGCVtQPQjL+nNuSTueQDP7ZKxGZo9TY6CTHsovK047DMdwtYODFQgzNm
 UtGstpKU5mx8nJLh071ShBJh1BP49gpmYQjvKPEF3x+HEG0RvA7XI0Q9pw/OLrOzcDdu
 qCLs8ELkN6Zw8+8Km7GARiL3QO1S0oTy73LF0xY1H6oc+KmwMojgXcpy1jqEE/8//6vj
 MadoMqE726o13edO6xLFEgbvGQBS97JbYBBPbC5lhqDyDXl9Yp7MKjZZlBQOFBiAjLxJ
 /ngQ==
X-Gm-Message-State: ABy/qLZTor4ve3tsBI9MtzpFTAYX25e/vqjyqyVLxMARE2QnQ4gP+gVH
 661AimDQnj7Zfve4PmU/kwxW57AotRebMi2p4pthGzpLFLA=
X-Google-Smtp-Source: APBJJlFWJdnvIGxW1yz69F4Wz6zWB/6GqSmKeTa56imfQj63pHpVZUTVNV+VjYTOZq/SMs6YSRSQpB/Z68pv8seWOwI=
X-Received: by 2002:a67:e21a:0:b0:440:ab90:7c95 with SMTP id
 g26-20020a67e21a000000b00440ab907c95mr2813497vsa.9.1688683288738; Thu, 06 Jul
 2023 15:41:28 -0700 (PDT)
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
 <CAA85sZs_R3W42m8YmXO-k08bPow7zKj_eOxceEB_3MJveGMZ7A@mail.gmail.com>
 <a46bb3de011002c2446a6d836aaddc9f6bce71bc.camel@redhat.com>
 <CAA85sZsHKb3Wtsa5ktSAPJsjLrcmahtgaemPhN5dTeTxEBWaqw@mail.gmail.com>
In-Reply-To: <CAA85sZsHKb3Wtsa5ktSAPJsjLrcmahtgaemPhN5dTeTxEBWaqw@mail.gmail.com>
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Fri, 7 Jul 2023 00:41:17 +0200
Message-ID: <CAA85sZtAixvRQnzs5+nad_pFsN9VZ67a2_CLCPFrHfieijn18A@mail.gmail.com>
To: Paolo Abeni <pabeni@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1688683289; x=1691275289;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=aTdMw3U8BFFOt8MvAKiw/gzh8jNiphNZNfXymWqvTuk=;
 b=ILPQtduyeC9q2XK3+eksLVJDW/FwkgBS06MwLrr02VqB+BM4pm1jrcYvFASCd84UrV
 xbHm7SkMPgt35Vm6Z/OBsTK/NwM0reX6XJKIRIJjqrQy/E2ysBCzBto4EN62gUi+QnzV
 Sk9DeMslwnoIOMy3DNGnxd6LezTrF7QrJWTn3I0w6guIowqJ7yeDjMJra6gwTK9Lwzl0
 XkoWcL5BFZiOkcmnvUigP45I29zcDJhJ7MznVHuJL8TOJshTeJLhsg8IhSd6VCTNoC2I
 4aJy5vP6gbHp4KDzcuqlUm2zbv4S77xD275RicrabKMThqly8DlHafbdD458yiJu/LRT
 VrUA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=ILPQtduy
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

T24gRnJpLCBKdWwgNywgMjAyMyBhdCAxMjozMuKAr0FNIElhbiBLdW1saWVuIDxpYW4ua3VtbGll
bkBnbWFpbC5jb20+IHdyb3RlOgo+IE9uIFRodSwgSnVsIDYsIDIwMjMgYXQgNzoxMOKAr1BNIFBh
b2xvIEFiZW5pIDxwYWJlbmlAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPiBMZXQgbWUgdHJ5IHRvIGNs
YXJpZnk6IEkgaG9wZS90aGluayB0aGF0IHRoaXMgY2h1bmsgYWxvbmU6Cj4gPgo+ID4gKyAgICAg
ICAvKiBsYXRlciBjb2RlIHdpbGwgY2xlYXIgdGhlIGdzbyBhcmVhIGluIHRoZSBzaGFyZWQgaW5m
byAqLwo+ID4gKyAgICAgICBlcnIgPSBza2JfaGVhZGVyX3VuY2xvbmUoc2tiLCBHRlBfQVRPTUlD
KTsKPiA+ICsgICAgICAgaWYgKGVycikKPiA+ICsgICAgICAgICAgICAgICBnb3RvIGVycl9saW5l
YXJpemU7Cj4gPiArCj4gPiAgICAgICAgIHNrYl9zaGluZm8oc2tiKS0+ZnJhZ19saXN0ID0gTlVM
TDsKPiA+Cj4gPiAgICAgICAgIHdoaWxlIChsaXN0X3NrYikgewo+ID4KPiA+IGRvZXMgdGhlIG1h
Z2ljL2F2b2lkcyB0aGUgc2tiIGNvcnJ1cHRpb25zIC0+IGl0IGV2ZXJ5dGhpbmcgZ29lcyB3ZWxs
LAo+ID4geW91IHNob3VsZCBub3Qgc2VlIGFueSB3YXJuaW5ncyBhdCBhbGwuIFJ1bm5pbmcgJ25z
dGF0JyBpbiB0aGUgRFVUCj4gPiBzaG91bGQgZ2l2ZSBzb21lIGhpbnRzIGFib3V0IHJlYWNoaW5n
IHRoZSByZWxldmFudCBjb2RlIHBhdGhzLgoKQWggeWVhaC4uLiBJJ20gYSBiaXQgdGlyZWQgYXRt
IC0gSSBzZWUgeW91ciBwb2ludCAtICB3aXRoIG1vdmluZyBpdCB1cCBhIGJpdC4KClNvIGFueXdh
eSwgVGVzdGVkLWJ5OiBpYW4ua3VtbGllbkBnbWFpbC5jb20gZXRjID0pCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5n
IGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
