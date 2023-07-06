Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F9674A2DE
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jul 2023 19:10:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 12F5B41595;
	Thu,  6 Jul 2023 17:10:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12F5B41595
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688663450;
	bh=f/xzYkeZxHfCzCt7YkfawdgttLxjU6jMv4IEUpIrK+8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=I59Bdwq+mhnzAV4oQbkf2gbMepOe3n6KE5pdFOIfrRBsZbttDsdifvxezlAuO1uz1
	 g6fENErUwfbiy83RoLsgbywSjQYYva6CHUi025MTdDL5hPja3V4OXJF3E35ncV+HCO
	 +0v/k29Euqs0EM2j45zQM0Vm27ZgBNVHhNx6pzgPiiJfhwiPGKlkDUL6uVzWFpbofj
	 f9/qiEI0kE6yyXwUDZE8Swj5qENVAty0WqwNUmdXxZxDi57hXmFY74uBtCI0CezBdM
	 CcpuKcDUod7uCeIgLfSOlk9vv/Zx+LyVpZgX/O5DWtWslkdfAVnKacAY4PDJ1QD3S4
	 ZHoynQHX1shWw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GlumbcH_Pma7; Thu,  6 Jul 2023 17:10:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 995DA4023D;
	Thu,  6 Jul 2023 17:10:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 995DA4023D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8C3341BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 17:10:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 61FEF418CA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 17:10:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 61FEF418CA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rZmrEpUXZlAb for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jul 2023 17:10:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 346A340342
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 346A340342
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 17:10:42 +0000 (UTC)
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-59-N4Epl2d9PIOADJT-sY-Yog-1; Thu, 06 Jul 2023 13:10:39 -0400
X-MC-Unique: N4Epl2d9PIOADJT-sY-Yog-1
Received: by mail-qv1-f71.google.com with SMTP id
 6a1803df08f44-62dd79f63e0so2383986d6.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Jul 2023 10:10:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688663439; x=1691255439;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=QgSGkwC/VbPEyvcLz6coLjJhFw/sYCngx6uA+dcMyis=;
 b=l28d8NeF1OTvbbOJOvKcfJDNTGlh8asDhgBUrHXORaOp5Qm827JK+tZqVmNdPI6lV1
 ExtNebaA07zEbYVAjqRQ5yHjcB35lRCM/PoKOcgtihT/agulVnObHBGYYseDNmibgEC7
 dtKrK4dlEUvQj2hZrygIgznSyxXgNRbqzChXuXqULkTfyGhzxYns38glblToJEXfBpgC
 lePZCCDM+yLPlYYS7sh11aPrHvMKCWZOVMs9M8YnDKzr1Qkph4yHfXevvBECEiEjiaA6
 uSiNBj9k2H+gZkYYKspwALRkAeIXBF8O8GfkyeR3rvY0kakXW1ujULyYHiZWRiBdNivf
 CE6g==
X-Gm-Message-State: ABy/qLa42R40MMyzNXnUCDM3xJZZDnXl4ZR7XNLd+paR8E5sT/CXCHK2
 W/de7KPxXTx+Rgur8l5LKn5jn5hBFkLoNBUes+q4i2cos30R0ga27kcrVdD46aeMUHtCIlGaA2x
 77/D9Of1P2Db5SfeYICNp1q/qIwSusQ==
X-Received: by 2002:a05:622a:1889:b0:400:7965:cfe with SMTP id
 v9-20020a05622a188900b0040079650cfemr3412721qtc.4.1688663438827; 
 Thu, 06 Jul 2023 10:10:38 -0700 (PDT)
X-Google-Smtp-Source: APBJJlFk76irS+IkXt8ws60zt0wa6S4QTludcf8uRoj2qFFVD6czmfyA1KdFcHfAZjcu/J8+YNpCvA==
X-Received: by 2002:a05:622a:1889:b0:400:7965:cfe with SMTP id
 v9-20020a05622a188900b0040079650cfemr3412685qtc.4.1688663438499; 
 Thu, 06 Jul 2023 10:10:38 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-240-43.dyn.eolo.it.
 [146.241.240.43]) by smtp.gmail.com with ESMTPSA id
 x8-20020ac80188000000b0040219e9dbcbsm822326qtf.11.2023.07.06.10.10.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Jul 2023 10:10:38 -0700 (PDT)
Message-ID: <a46bb3de011002c2446a6d836aaddc9f6bce71bc.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Ian Kumlien <ian.kumlien@gmail.com>
Date: Thu, 06 Jul 2023 19:10:35 +0200
In-Reply-To: <CAA85sZs_R3W42m8YmXO-k08bPow7zKj_eOxceEB_3MJveGMZ7A@mail.gmail.com>
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
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1688663440;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QgSGkwC/VbPEyvcLz6coLjJhFw/sYCngx6uA+dcMyis=;
 b=Ytno8CbbCvIdWVSkX1Wmb7mM+ynuxUnKMWgevUYEe0rkSfE9XgNqbgb7ZnphIyTXYX9gLJ
 EOfLGbKHeovHLbs80y3p3QXfTPGarPMT1nfQOGIoxOq6dPJNf8+Zy/dgjextMvOJ8muFF6
 +fxoiqdr2HUvSbVoJbfWXEpUbCGYOtI=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Ytno8Cbb
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

T24gVGh1LCAyMDIzLTA3LTA2IGF0IDE4OjE3ICswMjAwLCBJYW4gS3VtbGllbiB3cm90ZToKPiBP
biBUaHUsIEp1bCA2LCAyMDIzIGF0IDQ6MDTigK9QTSBQYW9sbyBBYmVuaSA8cGFiZW5pQHJlZGhh
dC5jb20+IHdyb3RlOgo+ID4gCj4gPiBPbiBUaHUsIDIwMjMtMDctMDYgYXQgMTU6NTYgKzAyMDAs
IEVyaWMgRHVtYXpldCB3cm90ZToKPiA+ID4gT24gVGh1LCBKdWwgNiwgMjAyMyBhdCAzOjAy4oCv
UE0gUGFvbG8gQWJlbmkgPHBhYmVuaUByZWRoYXQuY29tPiB3cm90ZToKPiA+ID4gPiAKPiA+ID4g
PiBPbiBUaHUsIDIwMjMtMDctMDYgYXQgMTM6MjcgKzAyMDAsIElhbiBLdW1saWVuIHdyb3RlOgo+
ID4gPiA+ID4gT24gVGh1LCBKdWwgNiwgMjAyMyBhdCAxMDo0MuKAr0FNIFBhb2xvIEFiZW5pIDxw
YWJlbmlAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPiA+ID4gPiA+IE9uIFdlZCwgMjAyMy0wNy0wNSBh
dCAxNTo1OCArMDIwMCwgSWFuIEt1bWxpZW4gd3JvdGU6Cj4gPiA+ID4gPiA+ID4gT24gV2VkLCBK
dWwgNSwgMjAyMyBhdCAzOjI54oCvUE0gUGFvbG8gQWJlbmkgPHBhYmVuaUByZWRoYXQuY29tPiB3
cm90ZToKPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gT24gV2VkLCAyMDIzLTA3LTA1
IGF0IDEzOjMyICswMjAwLCBJYW4gS3VtbGllbiB3cm90ZToKPiA+ID4gPiA+ID4gPiA+ID4gT24g
V2VkLCBKdWwgNSwgMjAyMyBhdCAxMjoyOOKAr1BNIFBhb2xvIEFiZW5pIDxwYWJlbmlAcmVkaGF0
LmNvbT4gd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+ID4gT24g
VHVlLCAyMDIzLTA3LTA0IGF0IDE2OjI3ICswMjAwLCBJYW4gS3VtbGllbiB3cm90ZToKPiA+ID4g
PiA+ID4gPiA+ID4gPiA+IE1vcmUgc3RhY2t0cmFjZXMuLiA9KQo+ID4gPiA+ID4gPiA+ID4gPiA+
ID4gCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiBjYXQgYnVnLnR4dCB8IC4vc2NyaXB0cy9kZWNvZGVf
c3RhY2t0cmFjZS5zaCB2bWxpbnV4Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiBbICA0MTEuNDEzNzY3
XSAtLS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0tLS0tLS0tLS0tLS0KPiA+ID4gPiA+ID4gPiA+ID4g
PiA+IFsgIDQxMS40MTM3OTJdIFdBUk5JTkc6IENQVTogOSBQSUQ6IDk0MiBhdCBpbmNsdWRlL25l
dC91ZCAgICAgcC5oOjUwOQo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gdWRwdjZfcXVldWVfcmN2X3Nr
YiAoLi9pbmNsdWRlL25ldC91ZHAuaDo1MDkgbmV0L2lwdjYvdWRwLmM6ODAwCj4gPiA+ID4gPiA+
ID4gPiA+ID4gPiBuZXQvaXB2Ni91ZHAuYzo3ODcpCj4gPiA+ID4gPiA+ID4gPiA+ID4gCj4gPiA+
ID4gPiA+ID4gPiA+ID4gSSdtIHJlYWxseSBydW5uaW5nIG91dCBvZiBpZGVhcyBoZXJlLi4uCj4g
PiA+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+ID4gVGhpcyBpczoKPiA+ID4gPiA+
ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gPiAgICAgICAgIFdBUk5fT05fT05DRShVRFBf
U0tCX0NCKHNrYiktPnBhcnRpYWxfY292KTsKPiA+ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+
ID4gPiA+ID4gPiBzb3J0IG9mIGhpbnQgc2tiIGJlaW5nIHNoYXJlZCAoc2tiLT51c2VycyA+IDEp
IHdoaWxlIGVucXVldWVkIGluCj4gPiA+ID4gPiA+ID4gPiA+ID4gbXVsdGlwbGUgcGxhY2VzIChi
cmlkZ2UgbG9jYWwgaW5wdXQgYW5kIGJyIGZvcndhcmQvZmxvb2QgdG8gdHVuCj4gPiA+ID4gPiA+
ID4gPiA+ID4gZGV2aWNlKS4gSSBhdWRpdGVkIHRoZSBicmlkZ2UgbWMgZmxvb2RpbmcgY29kZSwg
YW5kIEkgY291bGQgbm90IGZpbmQKPiA+ID4gPiA+ID4gPiA+ID4gPiBob3cgYSBzaGFyZWQgc2ti
IGNvdWxkIGxhbmQgaW50byB0aGUgbG9jYWwgaW5wdXQgcGF0aC4KPiA+ID4gPiA+ID4gPiA+ID4g
PiAKPiA+ID4gPiA+ID4gPiA+ID4gPiBBbnl3YXkgdGhlIG90aGVyIHNwbGF0cyByZXBvcnRlZCBo
ZXJlIGFuZCBpbiBsYXRlciBlbWFpbHMgYXJlCj4gPiA+ID4gPiA+ID4gPiA+ID4gY29tcGF0aWJs
ZSB3aXRoIHNoYXJlZCBza2JzLgo+ID4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4g
PiA+IFRoZSBhYm92ZSBsZWFkcyB0byBhbm90aGVyIGJ1bmNoIG9mIHF1ZXN0aW9uczoKPiA+ID4g
PiA+ID4gPiA+ID4gPiAqIGNhbiB5b3UgcmVwcm9kdWNlIHRoZSBpc3N1ZSBhZnRlciBkaXNhYmxp
bmcgJ3J4LWdyby1saXN0JyBvbiB0aGUKPiA+ID4gPiA+ID4gPiA+ID4gPiBpbmdyZXNzIGRldmlj
ZT8gKHdoaWxlIGtlZXBpbmcgJ3J4LXVkcC1ncm8tZm9yd2FyZGluZycgb24pLgo+ID4gPiA+ID4g
PiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gV2l0aCByeC1ncm8tbGlzdCBvZmYsIGFzIGluIG5l
dmVyIHR1cm5lZCBvbiwgZXZlcnl0aGluZyBzZWVtcyB0byBydW4gZmluZQo+ID4gPiA+ID4gPiA+
ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gPiAqIGRvIHlvdSBoYXZlIGJ5IGNoYW5jZSBxZGlzY3Mg
b24gdG9wIG9mIHRoZSBWTSB0dW4gZGV2aWNlcz8KPiA+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4g
PiA+ID4gPiA+IGRlZmF1bHQgcWRpc2MgaXMgZnEKPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4g
PiA+ID4gSUlSQyBsaWJ2aXJ0IGNvdWxkIHJlc2V0IHRoZSBxZGlzYyB0byBub3F1ZXVlIGZvciB0
aGUgb3duZWQgdHVuCj4gPiA+ID4gPiA+ID4gPiBkZXZpY2VzLgo+ID4gPiA+ID4gPiA+ID4gCj4g
PiA+ID4gPiA+ID4gPiBDb3VsZCB5b3UgcGxlYXNlIHJlcG9ydCB0aGUgb3V0cHV0IG9mOgo+ID4g
PiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiB0YyAtZCAtcyBxZGlzYyBzaG93IGRldiA8dHVu
IGRldiBuYW1lPgo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IEkgZG9uJ3QgaGF2ZSB0aGVz
ZSBzZXQ6Cj4gPiA+ID4gPiA+ID4gQ09ORklHX05FVF9TQ0hfSU5HUkVTUwo+ID4gPiA+ID4gPiA+
IENPTkZJR19ORVRfU0NIRUQKPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBzbyB0YyBqdXN0
IGdpdmVzIGFuIGVycm9yLi4uCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBUaGUgYWJvdmUgaXMg
Y29uZnVzaW5nLiBBUyBDT05GSUdfTkVUX1NDSF9ERUZBVUxUIGRlcGVuZHMgb24KPiA+ID4gPiA+
ID4gQ09ORklHX05FVF9TQ0hFRCwgeW91IHNob3VsZCBub3QgaGF2ZSBhIGRlZmF1bHQgcWRpc2Ms
IHRvbyA7KQo+ID4gPiA+ID4gCj4gPiA+ID4gPiBXZWxsIGl0J3Mgc3RpbGwgc2V0IGluIHN5c2N0
bCAtIGR1bm5vIGlmIGl0IGZhaWxzCj4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gQ291bGQgeW91IHBs
ZWFzZSBzaGFyZSB5b3VyIGtlcm5lbCBjb25maWc/Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IFN1cmUu
Li4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gQXMgYSBzaWRlIG5vdGUsIGl0IGhhc24ndCBjcmFzaGVk
IC0gbm8gdHJhY2VzIHNpbmNlIHdlIGRpZCB0aGUgbGFzdCBjaGFuZ2UKPiA+ID4gPiAKPiA+ID4g
PiBJdCBzb3VuZHMgbGlrZSBhbiBlbmNvdXJhZ2luZyBzaW5nISAobGFzdCBmYW1vdXMgd29yZHMu
Li4pLiBJJ2xsIHdhaXQgMQo+ID4gPiA+IG1vcmUgZGF5LCB0aGFuIEknbGwgc3VibWl0IGZvcm1h
bGx5Li4uCj4gPiA+ID4gCj4gPiA+ID4gPiBGb3IgcmVmZXJlbmNlLCB0aGlzIGlzIGdpdCBkaWZm
IG9uIHRoZSBydW5uaW5nIGtlcm5lbHMgc291cmNlIHRyZWU6Cj4gPiA+ID4gPiBkaWZmIC0tZ2l0
IGEvbmV0L2NvcmUvc2tidWZmLmMgYi9uZXQvY29yZS9za2J1ZmYuYwo+ID4gPiA+ID4gaW5kZXgg
Y2VhMjhkMzBhYmI1Li4xYjIzOTRlYmFmMzMgMTAwNjQ0Cj4gPiA+ID4gPiAtLS0gYS9uZXQvY29y
ZS9za2J1ZmYuYwo+ID4gPiA+ID4gKysrIGIvbmV0L2NvcmUvc2tidWZmLmMKPiA+ID4gPiA+IEBA
IC00MjcwLDYgKzQyNzAsMTcgQEAgc3RydWN0IHNrX2J1ZmYgKnNrYl9zZWdtZW50X2xpc3Qoc3Ry
dWN0IHNrX2J1ZmYgKnNrYiwKPiA+ID4gPiA+IAo+ID4gPiA+ID4gICAgICAgICBza2JfcHVzaChz
a2IsIC1za2JfbmV0d29ya19vZmZzZXQoc2tiKSArIG9mZnNldCk7Cj4gPiA+ID4gPiAKPiA+ID4g
PiA+ICsgICAgICAgaWYgKFdBUk5fT05fT05DRShza2Jfc2hhcmVkKHNrYikpKSB7Cj4gPiA+ID4g
PiArICAgICAgICAgICAgICAgc2tiID0gc2tiX3NoYXJlX2NoZWNrKHNrYiwgR0ZQX0FUT01JQyk7
Cj4gPiA+ID4gPiArICAgICAgICAgICAgICAgaWYgKCFza2IpCj4gPiA+ID4gPiArICAgICAgICAg
ICAgICAgICAgICAgICBnb3RvIGVycl9saW5lYXJpemU7Cj4gPiA+ID4gPiArICAgICAgIH0KPiA+
ID4gPiA+ICsKPiA+ID4gPiA+ICsgICAgICAgLyogbGF0ZXIgY29kZSB3aWxsIGNsZWFyIHRoZSBn
c28gYXJlYSBpbiB0aGUgc2hhcmVkIGluZm8gKi8KPiA+ID4gPiA+ICsgICAgICAgZXJyID0gc2ti
X2hlYWRlcl91bmNsb25lKHNrYiwgR0ZQX0FUT01JQyk7Cj4gPiA+ID4gPiArICAgICAgIGlmIChl
cnIpCj4gPiA+ID4gPiArICAgICAgICAgICAgICAgZ290byBlcnJfbGluZWFyaXplOwo+ID4gPiA+
ID4gKwo+ID4gPiA+ID4gICAgICAgICBza2Jfc2hpbmZvKHNrYiktPmZyYWdfbGlzdCA9IE5VTEw7
Cj4gPiA+ID4gPiAKPiA+ID4gPiA+ICAgICAgICAgd2hpbGUgKGxpc3Rfc2tiKSB7Cj4gPiA+ID4g
Cj4gPiA+ID4gLi4udGhlIGFib3ZlIGNoZWNrIG9ubHksIGFzIHRoZSBvdGhlciAyIHNob3VsZCBv
bmx5IGNhdGNoLXVwIHNpZGUKPiA+ID4gPiBlZmZlY3RzIG9mIGxhY2sgb2YgdGhpcyBvbmUuIElu
IGFueSBjYXNlIHRoZSBhYm92ZSBhZGRyZXNzIGEgcmVhbAo+ID4gPiA+IGlzc3VlLCBzbyB3ZSBs
aWtlbHkgd2FudCBpdCBuby1tYXR0ZXItd2hhdC4KPiA+ID4gPiAKPiA+ID4gCj4gPiA+IEludGVy
ZXN0aW5nLCBJIHdvbmRlciBpZiB0aGlzIGNvdWxkIGFsc28gZml4IHNvbWUgc3l6Ym90IHJlcG9y
dHMKPiA+ID4gV2lsbGVtIGFuZCBJIGFyZSBpbnZlc3RpZ2F0aW5nLgo+ID4gPiAKPiA+ID4gQW55
IGlkZWEgb2Ygd2hlbiB0aGUgYnVnIHdhcyAnYWRkZWQnIG9yICdyZXZlYWxlZCcgPwo+ID4gCj4g
PiBUaGUgaXNzdWUgc3BlY2lmaWNhbGx5IGFkZHJlc3NlZCBhYm92ZSBzaG91bGQgYmUgcHJlc2Vu
dCBzaW5jZQo+ID4gZnJhZ19saXN0IGludHJvZHVjdGlvbiBjb21taXQgM2ExMjk2YTM4ZDBjICgi
bmV0OiBTdXBwb3J0IEdSTy9HU08KPiA+IGZyYWdsaXN0IGNoYWluaW5nLiIpLiBBRkFJQ1MgdHJp
Z2dlcmluZyBpdCByZXF1aXJlcyBub24gdHJpdmlhbCBzZXR1cCAtCj4gPiBtY2FzdCByeCBvbiBi
cmlkZ2Ugd2l0aCBmcmFnLWxpc3QgZW5hYmxlZCBhbmQgZm9yd2FyZGluZyB0byBtdWx0aXBsZQo+
ID4gcG9ydHMgLSBzbyBwZXJoYXBzIHN5emthbGxlciBmb3VuZCBpdCBsYXRlciBkdWUgdG8gaW1w
cm92ZW1lbnRzIG9uIGl0cwo+ID4gc2lkZSA/IT8KPiAKPiBJJ20gYWxzbyBhIGJpdCBhZnJhaWQg
dGhhdCB3ZSBqdXN0IGhhdmVuJ3QgdHJpZ2dlcmVkIGl0IC0gaSBkb24ndCBzZWUKPiBhbnkgd2Fy
bmluZ3Mgb3IgYW55dGhpbmcuLi4gOi8KCkxldCBtZSB0cnkgdG8gY2xhcmlmeTogSSBob3BlL3Ro
aW5rIHRoYXQgdGhpcyBjaHVuayBhbG9uZToKCisgICAgICAgLyogbGF0ZXIgY29kZSB3aWxsIGNs
ZWFyIHRoZSBnc28gYXJlYSBpbiB0aGUgc2hhcmVkIGluZm8gKi8KKyAgICAgICBlcnIgPSBza2Jf
aGVhZGVyX3VuY2xvbmUoc2tiLCBHRlBfQVRPTUlDKTsKKyAgICAgICBpZiAoZXJyKQorICAgICAg
ICAgICAgICAgZ290byBlcnJfbGluZWFyaXplOworCiAgICAgICAgc2tiX3NoaW5mbyhza2IpLT5m
cmFnX2xpc3QgPSBOVUxMOwoKICAgICAgICB3aGlsZSAobGlzdF9za2IpIHsKCmRvZXMgdGhlIG1h
Z2ljL2F2b2lkcyB0aGUgc2tiIGNvcnJ1cHRpb25zIC0+IGl0IGV2ZXJ5dGhpbmcgZ29lcyB3ZWxs
LAp5b3Ugc2hvdWxkIG5vdCBzZWUgYW55IHdhcm5pbmdzIGF0IGFsbC4gUnVubmluZyAnbnN0YXQn
IGluIHRoZSBEVVQKc2hvdWxkIGdpdmUgc29tZSBoaW50cyBhYm91dCByZWFjaGluZyB0aGUgcmVs
ZXZhbnQgY29kZSBwYXRocy4KCkNoZWVycywKClBhb2xvCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cklu
dGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
