Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 26CD7749CEA
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jul 2023 15:02:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D3384187E;
	Thu,  6 Jul 2023 13:02:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D3384187E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688648567;
	bh=LfbUaKdy9A7pWWK0PET2wvgRcAYl3v7berUWTuR2tUY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=w3uXhPO4ntv9o6/OHc4B9dpPNV58EteskPs83UTTwNcNGiYiTbMN9HpPH58UHq+YP
	 BD0tnhJTIgWWeNVEO/j2abtnbwY7jHDMn+LfjzKquIicVr+0lAfxcgGYthm8H0ILnB
	 WK82TKfyMNmr0qWG+pnnLn/y/m9qoZzv+zOIeD2REh0ZDjoUhboO2LmVBk4Dex2HRW
	 E7Qkpxc6pPDUzOnK8JHKJ5Duk10gj0Iq3a87KuPoaDxQyHy3jcOg81D6rqC+Cmy1+O
	 k5yiVhgloG/B1gI8rFbG5H/zgWBHeT2KE3UTcn3+2COdYHrGH6uMONAzndylY2c8Lt
	 6wrVrx6ITRgiA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7tnK3jFlMlG5; Thu,  6 Jul 2023 13:02:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4ABE4186A;
	Thu,  6 Jul 2023 13:02:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D4ABE4186A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 761D91BF85D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 13:02:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DB9F44157A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 13:02:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB9F44157A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4Hcr2Trhg4El for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jul 2023 13:02:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9F2FE41581
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9F2FE41581
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 13:02:02 +0000 (UTC)
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-44-v5ZmzWy3NnytBuOxNvUiiA-1; Thu, 06 Jul 2023 09:01:59 -0400
X-MC-Unique: v5ZmzWy3NnytBuOxNvUiiA-1
Received: by mail-qv1-f69.google.com with SMTP id
 6a1803df08f44-637948b24bdso931416d6.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Jul 2023 06:01:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688648519; x=1691240519;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=U8l5j8dIvhISCIIl0jqgAgLBzgTngAvLgUg9DnWFjWI=;
 b=eKpLsjG6A3j8XhZ1p7WTXUDgGbgPGxsUhcAW4rQCtFZ6lOUcKL4uFmavSRWEfFQlNd
 3y9VYPfX1X6BcmYJ7wvA1nbT2fJSqE8sbxfiW92jdfcZhNgMQ2BGdBftUc8CLUJ4wQHG
 vFDWBOQLObUh4jybRRWtfUPTrj2TCO9SAzR0cFdsrmhmYkIIQnN9Ze6ltFBFUGC3BVYi
 bLe6+QwK4UpEEbHdo1EldjKUVIgvGtnbay17yO0fgvGsoJC4GiXQ6LGkRWIHjcf8Gaxw
 uhgfBB6x8pYwo6ja7SPf0j7/4nC3jTJ5RI7JUWW6EXx/zd/b3hbldbB+csA7vUEN/7d3
 hvMw==
X-Gm-Message-State: ABy/qLYh0dN6iMiuU3AVh5npYW9zmeP5y/7dh5QMytit30Bzx4nv+bzG
 cfrBfstf7+UOa6ka7wueiWOB6nb6KiESB3taColY++2U/xk36HlxjgvxcVZFBfvsfv0vZO9AOJV
 4+sDEuxpOw/LYHYgPr523aP5koAct2A==
X-Received: by 2002:a05:6214:1c49:b0:635:e528:521a with SMTP id
 if9-20020a0562141c4900b00635e528521amr1733946qvb.5.1688648518819; 
 Thu, 06 Jul 2023 06:01:58 -0700 (PDT)
X-Google-Smtp-Source: APBJJlH6NwqA45p2o1N0C810pNF4XSaeufAnZsy9C63z4wRYMk8BdBigFlFD62tFXnEFTue7G6ekoA==
X-Received: by 2002:a05:6214:1c49:b0:635:e528:521a with SMTP id
 if9-20020a0562141c4900b00635e528521amr1733917qvb.5.1688648518513; 
 Thu, 06 Jul 2023 06:01:58 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-240-43.dyn.eolo.it.
 [146.241.240.43]) by smtp.gmail.com with ESMTPSA id
 y4-20020a0c8ec4000000b0062629cbff11sm856575qvb.11.2023.07.06.06.01.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Jul 2023 06:01:58 -0700 (PDT)
Message-ID: <67ff0f7901e66d1c0d418c48c9a071068b32a77d.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Ian Kumlien <ian.kumlien@gmail.com>
Date: Thu, 06 Jul 2023 15:01:55 +0200
In-Reply-To: <CAA85sZvZ_X=TqCXaPui0PDLq2pp5dw_uhga+wcXgBqudrLP9bQ@mail.gmail.com>
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
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1688648521;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=U8l5j8dIvhISCIIl0jqgAgLBzgTngAvLgUg9DnWFjWI=;
 b=PZ6Y2ICCP02SeSSfXEYdtR/M6RH9tR23DN7xr/QiyAb2Eco++CieBqDtHQo1vKaIqnlYDw
 gtLNmmnrmO6yAOtRB4qYfHt+4lpwOqRWi5PeKEFX6wH2fxgNE8zHE+ryR4hK54wC+2tqfQ
 /91+UXEicY5obkQVEJ88NoacC/qCc3o=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=PZ6Y2ICC
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

T24gVGh1LCAyMDIzLTA3LTA2IGF0IDEzOjI3ICswMjAwLCBJYW4gS3VtbGllbiB3cm90ZToKPiBP
biBUaHUsIEp1bCA2LCAyMDIzIGF0IDEwOjQy4oCvQU0gUGFvbG8gQWJlbmkgPHBhYmVuaUByZWRo
YXQuY29tPiB3cm90ZToKPiA+IE9uIFdlZCwgMjAyMy0wNy0wNSBhdCAxNTo1OCArMDIwMCwgSWFu
IEt1bWxpZW4gd3JvdGU6Cj4gPiA+IE9uIFdlZCwgSnVsIDUsIDIwMjMgYXQgMzoyOeKAr1BNIFBh
b2xvIEFiZW5pIDxwYWJlbmlAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPiA+ID4gCj4gPiA+ID4gT24g
V2VkLCAyMDIzLTA3LTA1IGF0IDEzOjMyICswMjAwLCBJYW4gS3VtbGllbiB3cm90ZToKPiA+ID4g
PiA+IE9uIFdlZCwgSnVsIDUsIDIwMjMgYXQgMTI6MjjigK9QTSBQYW9sbyBBYmVuaSA8cGFiZW5p
QHJlZGhhdC5jb20+IHdyb3RlOgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gT24gVHVlLCAyMDIz
LTA3LTA0IGF0IDE2OjI3ICswMjAwLCBJYW4gS3VtbGllbiB3cm90ZToKPiA+ID4gPiA+ID4gPiBN
b3JlIHN0YWNrdHJhY2VzLi4gPSkKPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBjYXQgYnVn
LnR4dCB8IC4vc2NyaXB0cy9kZWNvZGVfc3RhY2t0cmFjZS5zaCB2bWxpbnV4Cj4gPiA+ID4gPiA+
ID4gWyAgNDExLjQxMzc2N10gLS0tLS0tLS0tLS0tWyBjdXQgaGVyZSBdLS0tLS0tLS0tLS0tCj4g
PiA+ID4gPiA+ID4gWyAgNDExLjQxMzc5Ml0gV0FSTklORzogQ1BVOiA5IFBJRDogOTQyIGF0IGlu
Y2x1ZGUvbmV0L3VkICAgICBwLmg6NTA5Cj4gPiA+ID4gPiA+ID4gdWRwdjZfcXVldWVfcmN2X3Nr
YiAoLi9pbmNsdWRlL25ldC91ZHAuaDo1MDkgbmV0L2lwdjYvdWRwLmM6ODAwCj4gPiA+ID4gPiA+
ID4gbmV0L2lwdjYvdWRwLmM6Nzg3KQo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gSSdtIHJlYWxs
eSBydW5uaW5nIG91dCBvZiBpZGVhcyBoZXJlLi4uCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBU
aGlzIGlzOgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gICAgICAgICBXQVJOX09OX09OQ0UoVURQ
X1NLQl9DQihza2IpLT5wYXJ0aWFsX2Nvdik7Cj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBzb3J0
IG9mIGhpbnQgc2tiIGJlaW5nIHNoYXJlZCAoc2tiLT51c2VycyA+IDEpIHdoaWxlIGVucXVldWVk
IGluCj4gPiA+ID4gPiA+IG11bHRpcGxlIHBsYWNlcyAoYnJpZGdlIGxvY2FsIGlucHV0IGFuZCBi
ciBmb3J3YXJkL2Zsb29kIHRvIHR1bgo+ID4gPiA+ID4gPiBkZXZpY2UpLiBJIGF1ZGl0ZWQgdGhl
IGJyaWRnZSBtYyBmbG9vZGluZyBjb2RlLCBhbmQgSSBjb3VsZCBub3QgZmluZAo+ID4gPiA+ID4g
PiBob3cgYSBzaGFyZWQgc2tiIGNvdWxkIGxhbmQgaW50byB0aGUgbG9jYWwgaW5wdXQgcGF0aC4K
PiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IEFueXdheSB0aGUgb3RoZXIgc3BsYXRzIHJlcG9ydGVk
IGhlcmUgYW5kIGluIGxhdGVyIGVtYWlscyBhcmUKPiA+ID4gPiA+ID4gY29tcGF0aWJsZSB3aXRo
IHNoYXJlZCBza2JzLgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gVGhlIGFib3ZlIGxlYWRzIHRv
IGFub3RoZXIgYnVuY2ggb2YgcXVlc3Rpb25zOgo+ID4gPiA+ID4gPiAqIGNhbiB5b3UgcmVwcm9k
dWNlIHRoZSBpc3N1ZSBhZnRlciBkaXNhYmxpbmcgJ3J4LWdyby1saXN0JyBvbiB0aGUKPiA+ID4g
PiA+ID4gaW5ncmVzcyBkZXZpY2U/ICh3aGlsZSBrZWVwaW5nICdyeC11ZHAtZ3JvLWZvcndhcmRp
bmcnIG9uKS4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gV2l0aCByeC1ncm8tbGlzdCBvZmYsIGFzIGlu
IG5ldmVyIHR1cm5lZCBvbiwgZXZlcnl0aGluZyBzZWVtcyB0byBydW4gZmluZQo+ID4gPiA+ID4g
Cj4gPiA+ID4gPiA+ICogZG8geW91IGhhdmUgYnkgY2hhbmNlIHFkaXNjcyBvbiB0b3Agb2YgdGhl
IFZNIHR1biBkZXZpY2VzPwo+ID4gPiA+ID4gCj4gPiA+ID4gPiBkZWZhdWx0IHFkaXNjIGlzIGZx
Cj4gPiA+ID4gCj4gPiA+ID4gSUlSQyBsaWJ2aXJ0IGNvdWxkIHJlc2V0IHRoZSBxZGlzYyB0byBu
b3F1ZXVlIGZvciB0aGUgb3duZWQgdHVuCj4gPiA+ID4gZGV2aWNlcy4KPiA+ID4gPiAKPiA+ID4g
PiBDb3VsZCB5b3UgcGxlYXNlIHJlcG9ydCB0aGUgb3V0cHV0IG9mOgo+ID4gPiA+IAo+ID4gPiA+
IHRjIC1kIC1zIHFkaXNjIHNob3cgZGV2IDx0dW4gZGV2IG5hbWU+Cj4gPiA+IAo+ID4gPiBJIGRv
bid0IGhhdmUgdGhlc2Ugc2V0Ogo+ID4gPiBDT05GSUdfTkVUX1NDSF9JTkdSRVNTCj4gPiA+IENP
TkZJR19ORVRfU0NIRUQKPiA+ID4gCj4gPiA+IHNvIHRjIGp1c3QgZ2l2ZXMgYW4gZXJyb3IuLi4K
PiA+IAo+ID4gVGhlIGFib3ZlIGlzIGNvbmZ1c2luZy4gQVMgQ09ORklHX05FVF9TQ0hfREVGQVVM
VCBkZXBlbmRzIG9uCj4gPiBDT05GSUdfTkVUX1NDSEVELCB5b3Ugc2hvdWxkIG5vdCBoYXZlIGEg
ZGVmYXVsdCBxZGlzYywgdG9vIDspCj4gCj4gV2VsbCBpdCdzIHN0aWxsIHNldCBpbiBzeXNjdGwg
LSBkdW5ubyBpZiBpdCBmYWlscwo+IAo+ID4gQ291bGQgeW91IHBsZWFzZSBzaGFyZSB5b3VyIGtl
cm5lbCBjb25maWc/Cj4gCj4gU3VyZS4uLgo+IAo+IEFzIGEgc2lkZSBub3RlLCBpdCBoYXNuJ3Qg
Y3Jhc2hlZCAtIG5vIHRyYWNlcyBzaW5jZSB3ZSBkaWQgdGhlIGxhc3QgY2hhbmdlCgpJdCBzb3Vu
ZHMgbGlrZSBhbiBlbmNvdXJhZ2luZyBzaW5nISAobGFzdCBmYW1vdXMgd29yZHMuLi4pLiBJJ2xs
IHdhaXQgMQptb3JlIGRheSwgdGhhbiBJJ2xsIHN1Ym1pdCBmb3JtYWxseS4uLgoKPiBGb3IgcmVm
ZXJlbmNlLCB0aGlzIGlzIGdpdCBkaWZmIG9uIHRoZSBydW5uaW5nIGtlcm5lbHMgc291cmNlIHRy
ZWU6Cj4gZGlmZiAtLWdpdCBhL25ldC9jb3JlL3NrYnVmZi5jIGIvbmV0L2NvcmUvc2tidWZmLmMK
PiBpbmRleCBjZWEyOGQzMGFiYjUuLjFiMjM5NGViYWYzMyAxMDA2NDQKPiAtLS0gYS9uZXQvY29y
ZS9za2J1ZmYuYwo+ICsrKyBiL25ldC9jb3JlL3NrYnVmZi5jCj4gQEAgLTQyNzAsNiArNDI3MCwx
NyBAQCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiX3NlZ21lbnRfbGlzdChzdHJ1Y3Qgc2tfYnVmZiAqc2ti
LAo+IAo+ICAgICAgICAgc2tiX3B1c2goc2tiLCAtc2tiX25ldHdvcmtfb2Zmc2V0KHNrYikgKyBv
ZmZzZXQpOwo+IAo+ICsgICAgICAgaWYgKFdBUk5fT05fT05DRShza2Jfc2hhcmVkKHNrYikpKSB7
Cj4gKyAgICAgICAgICAgICAgIHNrYiA9IHNrYl9zaGFyZV9jaGVjayhza2IsIEdGUF9BVE9NSUMp
Owo+ICsgICAgICAgICAgICAgICBpZiAoIXNrYikKPiArICAgICAgICAgICAgICAgICAgICAgICBn
b3RvIGVycl9saW5lYXJpemU7Cj4gKyAgICAgICB9Cj4gKwo+ICsgICAgICAgLyogbGF0ZXIgY29k
ZSB3aWxsIGNsZWFyIHRoZSBnc28gYXJlYSBpbiB0aGUgc2hhcmVkIGluZm8gKi8KPiArICAgICAg
IGVyciA9IHNrYl9oZWFkZXJfdW5jbG9uZShza2IsIEdGUF9BVE9NSUMpOwo+ICsgICAgICAgaWYg
KGVycikKPiArICAgICAgICAgICAgICAgZ290byBlcnJfbGluZWFyaXplOwo+ICsKPiAgICAgICAg
IHNrYl9zaGluZm8oc2tiKS0+ZnJhZ19saXN0ID0gTlVMTDsKPiAKPiAgICAgICAgIHdoaWxlIChs
aXN0X3NrYikgewoKLi4udGhlIGFib3ZlIGNoZWNrIG9ubHksIGFzIHRoZSBvdGhlciAyIHNob3Vs
ZCBvbmx5IGNhdGNoLXVwIHNpZGUKZWZmZWN0cyBvZiBsYWNrIG9mIHRoaXMgb25lLiBJbiBhbnkg
Y2FzZSB0aGUgYWJvdmUgYWRkcmVzcyBhIHJlYWwKaXNzdWUsIHNvIHdlIGxpa2VseSB3YW50IGl0
IG5vLW1hdHRlci13aGF0LgoKVGhhbmtzLAoKUGFvbG8KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
