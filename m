Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EE516749E82
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jul 2023 16:04:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A40482219;
	Thu,  6 Jul 2023 14:04:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A40482219
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688652279;
	bh=6D6U0r0WROtR1qDbq8OaF+jS4hTWB51q2YHZQ68FKO0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VOMLlO8JMVH3beU7vpEo7lYbGhqU3gq/7qCYaYOIN/KTNkHWWRhMjFTpDyw8R9TXu
	 opkubK8Oka/u+jZvUMf6TvW/dTmbTc41fxOO+KRtpSTZQt5+r7ZWF2e0/UfYENckez
	 ovX2GihcRaBJJ72ezg6mna3rv0tEhTYxu0+dkT3hBL/asok2Dmq7K0lyIML6hhtgaJ
	 gecvGzfSJFdtCxjUuThN78mJGcMJsfodGRb78Gwo7a71Aw49qDl6d2xgKB+1r31lHR
	 076vjl4LH68n2F9NfacS1pGWR3Cb9R9I97EpHz3G44rbcH924/Savl1mfRVMCUz+86
	 8liZi+A7ZENKA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SsuEJ5goNFhc; Thu,  6 Jul 2023 14:04:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E79E8220E;
	Thu,  6 Jul 2023 14:04:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E79E8220E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0190E1BF591
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 14:04:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C955660BD8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 14:04:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C955660BD8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w53OzvFakFpW for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jul 2023 14:04:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DFFF460AA7
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DFFF460AA7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 14:04:30 +0000 (UTC)
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-574-4g9FEDQROXaCQCl1vXVsYA-1; Thu, 06 Jul 2023 10:04:28 -0400
X-MC-Unique: 4g9FEDQROXaCQCl1vXVsYA-1
Received: by mail-qk1-f198.google.com with SMTP id
 af79cd13be357-76714d4beebso14013285a.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Jul 2023 07:04:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688652268; x=1691244268;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=EHTfnSRwUdQlWNgZN6CsLFTWCgyvgmK6xceI83/ifHY=;
 b=V/MOTOeB4wnX7mpIGcbhld9kt8+TMAWbZKf/vqUUkOrn4l4Ken4krvGP2sS2VCNxHJ
 8K3Q686v4MA0w+be+lpA15+BNmnfJvaJ+vY68QeOOVEaOLX1IXi96LAsmkwJhJWkqZQ0
 MIFo9SvMIMHp0ydxpdA/luw9PqeIU5wIRvTM45EwhVX6LFUDAdQNiV1PC7SuduP3inGe
 1R34YvxfcMGizPCu2PVZ/Db149jpFKn6fr3dSXRpv7kGZeewDOsp/VTpsIZi/ql/WISF
 JzSRC492wXo+aSavwkRTZyguQcY3MhiU0TSwkNt4QSdwa6HiXl4VkWoaGtxMILVLG3Ka
 Nk3w==
X-Gm-Message-State: ABy/qLYZazK50o1+R9guqUnSxHTyyJPHJaOo6dXH71QJfqbqz4AiVK3m
 6Un21M25/YFwqO6r+hGaB8w4z/lvvpRXpHB/ssOvd1TENoetPY7tUrGy49NghaTyZ4rTrZxU6FZ
 c5ukZrVLvEfRvf4HTsnlaPu3B/hhLnA==
X-Received: by 2002:a05:620a:1a95:b0:767:13cd:e17d with SMTP id
 bl21-20020a05620a1a9500b0076713cde17dmr2228724qkb.3.1688652268052; 
 Thu, 06 Jul 2023 07:04:28 -0700 (PDT)
X-Google-Smtp-Source: APBJJlGxZgQ1bMsrU4kU9bu5sFcUtkyAMCH1a4fdDD2/ba3E6cKqGY3UoRRM+J748ZFycPpsw5psXg==
X-Received: by 2002:a05:620a:1a95:b0:767:13cd:e17d with SMTP id
 bl21-20020a05620a1a9500b0076713cde17dmr2228693qkb.3.1688652267735; 
 Thu, 06 Jul 2023 07:04:27 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-240-43.dyn.eolo.it.
 [146.241.240.43]) by smtp.gmail.com with ESMTPSA id
 n14-20020a05620a152e00b00762f37b206dsm767199qkk.81.2023.07.06.07.04.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Jul 2023 07:04:27 -0700 (PDT)
Message-ID: <c4e40b45b41d0476afd8989d31e6bab74c51a72a.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Eric Dumazet <edumazet@google.com>, Willem de Bruijn <willemb@google.com>
Date: Thu, 06 Jul 2023 16:04:23 +0200
In-Reply-To: <CANn89i+F=R71refT8K_8hPaP+uWn15GeHz+FTMYU=VPTG24WFA@mail.gmail.com>
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
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1688652269;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EHTfnSRwUdQlWNgZN6CsLFTWCgyvgmK6xceI83/ifHY=;
 b=bKD8+/0EHlpQqgU4yYDZiomaK8xNAPPfOOOoXoB2JTG/vFMR+DORvLzhmgLlK1hnDqRkzh
 6lhoVu1WWF11+DN0kdxH0v7t5YUwZyyXKGOpvaZM970iYcqs7n1vjaMBY/1x3227ui3K1Y
 tco3WV89wsKUGwMW0IzSDl5b0l4QeR0=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=bKD8+/0E
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
 Ian Kumlien <ian.kumlien@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCAyMDIzLTA3LTA2IGF0IDE1OjU2ICswMjAwLCBFcmljIER1bWF6ZXQgd3JvdGU6Cj4g
T24gVGh1LCBKdWwgNiwgMjAyMyBhdCAzOjAy4oCvUE0gUGFvbG8gQWJlbmkgPHBhYmVuaUByZWRo
YXQuY29tPiB3cm90ZToKPiA+IAo+ID4gT24gVGh1LCAyMDIzLTA3LTA2IGF0IDEzOjI3ICswMjAw
LCBJYW4gS3VtbGllbiB3cm90ZToKPiA+ID4gT24gVGh1LCBKdWwgNiwgMjAyMyBhdCAxMDo0MuKA
r0FNIFBhb2xvIEFiZW5pIDxwYWJlbmlAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPiA+ID4gT24gV2Vk
LCAyMDIzLTA3LTA1IGF0IDE1OjU4ICswMjAwLCBJYW4gS3VtbGllbiB3cm90ZToKPiA+ID4gPiA+
IE9uIFdlZCwgSnVsIDUsIDIwMjMgYXQgMzoyOeKAr1BNIFBhb2xvIEFiZW5pIDxwYWJlbmlAcmVk
aGF0LmNvbT4gd3JvdGU6Cj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBPbiBXZWQsIDIwMjMtMDct
MDUgYXQgMTM6MzIgKzAyMDAsIElhbiBLdW1saWVuIHdyb3RlOgo+ID4gPiA+ID4gPiA+IE9uIFdl
ZCwgSnVsIDUsIDIwMjMgYXQgMTI6MjjigK9QTSBQYW9sbyBBYmVuaSA8cGFiZW5pQHJlZGhhdC5j
b20+IHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiBPbiBUdWUsIDIwMjMt
MDctMDQgYXQgMTY6MjcgKzAyMDAsIElhbiBLdW1saWVuIHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4g
PiBNb3JlIHN0YWNrdHJhY2VzLi4gPSkKPiA+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4g
PiA+IGNhdCBidWcudHh0IHwgLi9zY3JpcHRzL2RlY29kZV9zdGFja3RyYWNlLnNoIHZtbGludXgK
PiA+ID4gPiA+ID4gPiA+ID4gWyAgNDExLjQxMzc2N10gLS0tLS0tLS0tLS0tWyBjdXQgaGVyZSBd
LS0tLS0tLS0tLS0tCj4gPiA+ID4gPiA+ID4gPiA+IFsgIDQxMS40MTM3OTJdIFdBUk5JTkc6IENQ
VTogOSBQSUQ6IDk0MiBhdCBpbmNsdWRlL25ldC91ZCAgICAgcC5oOjUwOQo+ID4gPiA+ID4gPiA+
ID4gPiB1ZHB2Nl9xdWV1ZV9yY3Zfc2tiICguL2luY2x1ZGUvbmV0L3VkcC5oOjUwOSBuZXQvaXB2
Ni91ZHAuYzo4MDAKPiA+ID4gPiA+ID4gPiA+ID4gbmV0L2lwdjYvdWRwLmM6Nzg3KQo+ID4gPiA+
ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiBJJ20gcmVhbGx5IHJ1bm5pbmcgb3V0IG9mIGlkZWFz
IGhlcmUuLi4KPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gVGhpcyBpczoKPiA+ID4g
PiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gICAgICAgICBXQVJOX09OX09OQ0UoVURQX1NLQl9D
Qihza2IpLT5wYXJ0aWFsX2Nvdik7Cj4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+IHNv
cnQgb2YgaGludCBza2IgYmVpbmcgc2hhcmVkIChza2ItPnVzZXJzID4gMSkgd2hpbGUgZW5xdWV1
ZWQgaW4KPiA+ID4gPiA+ID4gPiA+IG11bHRpcGxlIHBsYWNlcyAoYnJpZGdlIGxvY2FsIGlucHV0
IGFuZCBiciBmb3J3YXJkL2Zsb29kIHRvIHR1bgo+ID4gPiA+ID4gPiA+ID4gZGV2aWNlKS4gSSBh
dWRpdGVkIHRoZSBicmlkZ2UgbWMgZmxvb2RpbmcgY29kZSwgYW5kIEkgY291bGQgbm90IGZpbmQK
PiA+ID4gPiA+ID4gPiA+IGhvdyBhIHNoYXJlZCBza2IgY291bGQgbGFuZCBpbnRvIHRoZSBsb2Nh
bCBpbnB1dCBwYXRoLgo+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiBBbnl3YXkgdGhl
IG90aGVyIHNwbGF0cyByZXBvcnRlZCBoZXJlIGFuZCBpbiBsYXRlciBlbWFpbHMgYXJlCj4gPiA+
ID4gPiA+ID4gPiBjb21wYXRpYmxlIHdpdGggc2hhcmVkIHNrYnMuCj4gPiA+ID4gPiA+ID4gPiAK
PiA+ID4gPiA+ID4gPiA+IFRoZSBhYm92ZSBsZWFkcyB0byBhbm90aGVyIGJ1bmNoIG9mIHF1ZXN0
aW9uczoKPiA+ID4gPiA+ID4gPiA+ICogY2FuIHlvdSByZXByb2R1Y2UgdGhlIGlzc3VlIGFmdGVy
IGRpc2FibGluZyAncngtZ3JvLWxpc3QnIG9uIHRoZQo+ID4gPiA+ID4gPiA+ID4gaW5ncmVzcyBk
ZXZpY2U/ICh3aGlsZSBrZWVwaW5nICdyeC11ZHAtZ3JvLWZvcndhcmRpbmcnIG9uKS4KPiA+ID4g
PiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBXaXRoIHJ4LWdyby1saXN0IG9mZiwgYXMgaW4gbmV2ZXIg
dHVybmVkIG9uLCBldmVyeXRoaW5nIHNlZW1zIHRvIHJ1biBmaW5lCj4gPiA+ID4gPiA+ID4gCj4g
PiA+ID4gPiA+ID4gPiAqIGRvIHlvdSBoYXZlIGJ5IGNoYW5jZSBxZGlzY3Mgb24gdG9wIG9mIHRo
ZSBWTSB0dW4gZGV2aWNlcz8KPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBkZWZhdWx0IHFk
aXNjIGlzIGZxCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBJSVJDIGxpYnZpcnQgY291bGQgcmVz
ZXQgdGhlIHFkaXNjIHRvIG5vcXVldWUgZm9yIHRoZSBvd25lZCB0dW4KPiA+ID4gPiA+ID4gZGV2
aWNlcy4KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IENvdWxkIHlvdSBwbGVhc2UgcmVwb3J0IHRo
ZSBvdXRwdXQgb2Y6Cj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiB0YyAtZCAtcyBxZGlzYyBzaG93
IGRldiA8dHVuIGRldiBuYW1lPgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBJIGRvbid0IGhhdmUgdGhl
c2Ugc2V0Ogo+ID4gPiA+ID4gQ09ORklHX05FVF9TQ0hfSU5HUkVTUwo+ID4gPiA+ID4gQ09ORklH
X05FVF9TQ0hFRAo+ID4gPiA+ID4gCj4gPiA+ID4gPiBzbyB0YyBqdXN0IGdpdmVzIGFuIGVycm9y
Li4uCj4gPiA+ID4gCj4gPiA+ID4gVGhlIGFib3ZlIGlzIGNvbmZ1c2luZy4gQVMgQ09ORklHX05F
VF9TQ0hfREVGQVVMVCBkZXBlbmRzIG9uCj4gPiA+ID4gQ09ORklHX05FVF9TQ0hFRCwgeW91IHNo
b3VsZCBub3QgaGF2ZSBhIGRlZmF1bHQgcWRpc2MsIHRvbyA7KQo+ID4gPiAKPiA+ID4gV2VsbCBp
dCdzIHN0aWxsIHNldCBpbiBzeXNjdGwgLSBkdW5ubyBpZiBpdCBmYWlscwo+ID4gPiAKPiA+ID4g
PiBDb3VsZCB5b3UgcGxlYXNlIHNoYXJlIHlvdXIga2VybmVsIGNvbmZpZz8KPiA+ID4gCj4gPiA+
IFN1cmUuLi4KPiA+ID4gCj4gPiA+IEFzIGEgc2lkZSBub3RlLCBpdCBoYXNuJ3QgY3Jhc2hlZCAt
IG5vIHRyYWNlcyBzaW5jZSB3ZSBkaWQgdGhlIGxhc3QgY2hhbmdlCj4gPiAKPiA+IEl0IHNvdW5k
cyBsaWtlIGFuIGVuY291cmFnaW5nIHNpbmchIChsYXN0IGZhbW91cyB3b3Jkcy4uLikuIEknbGwg
d2FpdCAxCj4gPiBtb3JlIGRheSwgdGhhbiBJJ2xsIHN1Ym1pdCBmb3JtYWxseS4uLgo+ID4gCj4g
PiA+IEZvciByZWZlcmVuY2UsIHRoaXMgaXMgZ2l0IGRpZmYgb24gdGhlIHJ1bm5pbmcga2VybmVs
cyBzb3VyY2UgdHJlZToKPiA+ID4gZGlmZiAtLWdpdCBhL25ldC9jb3JlL3NrYnVmZi5jIGIvbmV0
L2NvcmUvc2tidWZmLmMKPiA+ID4gaW5kZXggY2VhMjhkMzBhYmI1Li4xYjIzOTRlYmFmMzMgMTAw
NjQ0Cj4gPiA+IC0tLSBhL25ldC9jb3JlL3NrYnVmZi5jCj4gPiA+ICsrKyBiL25ldC9jb3JlL3Nr
YnVmZi5jCj4gPiA+IEBAIC00MjcwLDYgKzQyNzAsMTcgQEAgc3RydWN0IHNrX2J1ZmYgKnNrYl9z
ZWdtZW50X2xpc3Qoc3RydWN0IHNrX2J1ZmYgKnNrYiwKPiA+ID4gCj4gPiA+ICAgICAgICAgc2ti
X3B1c2goc2tiLCAtc2tiX25ldHdvcmtfb2Zmc2V0KHNrYikgKyBvZmZzZXQpOwo+ID4gPiAKPiA+
ID4gKyAgICAgICBpZiAoV0FSTl9PTl9PTkNFKHNrYl9zaGFyZWQoc2tiKSkpIHsKPiA+ID4gKyAg
ICAgICAgICAgICAgIHNrYiA9IHNrYl9zaGFyZV9jaGVjayhza2IsIEdGUF9BVE9NSUMpOwo+ID4g
PiArICAgICAgICAgICAgICAgaWYgKCFza2IpCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
IGdvdG8gZXJyX2xpbmVhcml6ZTsKPiA+ID4gKyAgICAgICB9Cj4gPiA+ICsKPiA+ID4gKyAgICAg
ICAvKiBsYXRlciBjb2RlIHdpbGwgY2xlYXIgdGhlIGdzbyBhcmVhIGluIHRoZSBzaGFyZWQgaW5m
byAqLwo+ID4gPiArICAgICAgIGVyciA9IHNrYl9oZWFkZXJfdW5jbG9uZShza2IsIEdGUF9BVE9N
SUMpOwo+ID4gPiArICAgICAgIGlmIChlcnIpCj4gPiA+ICsgICAgICAgICAgICAgICBnb3RvIGVy
cl9saW5lYXJpemU7Cj4gPiA+ICsKPiA+ID4gICAgICAgICBza2Jfc2hpbmZvKHNrYiktPmZyYWdf
bGlzdCA9IE5VTEw7Cj4gPiA+IAo+ID4gPiAgICAgICAgIHdoaWxlIChsaXN0X3NrYikgewo+ID4g
Cj4gPiAuLi50aGUgYWJvdmUgY2hlY2sgb25seSwgYXMgdGhlIG90aGVyIDIgc2hvdWxkIG9ubHkg
Y2F0Y2gtdXAgc2lkZQo+ID4gZWZmZWN0cyBvZiBsYWNrIG9mIHRoaXMgb25lLiBJbiBhbnkgY2Fz
ZSB0aGUgYWJvdmUgYWRkcmVzcyBhIHJlYWwKPiA+IGlzc3VlLCBzbyB3ZSBsaWtlbHkgd2FudCBp
dCBuby1tYXR0ZXItd2hhdC4KPiA+IAo+IAo+IEludGVyZXN0aW5nLCBJIHdvbmRlciBpZiB0aGlz
IGNvdWxkIGFsc28gZml4IHNvbWUgc3l6Ym90IHJlcG9ydHMKPiBXaWxsZW0gYW5kIEkgYXJlIGlu
dmVzdGlnYXRpbmcuCj4gCj4gQW55IGlkZWEgb2Ygd2hlbiB0aGUgYnVnIHdhcyAnYWRkZWQnIG9y
ICdyZXZlYWxlZCcgPwoKVGhlIGlzc3VlIHNwZWNpZmljYWxseSBhZGRyZXNzZWQgYWJvdmUgc2hv
dWxkIGJlIHByZXNlbnQgc2luY2UKZnJhZ19saXN0IGludHJvZHVjdGlvbiBjb21taXQgM2ExMjk2
YTM4ZDBjICgibmV0OiBTdXBwb3J0IEdSTy9HU08KZnJhZ2xpc3QgY2hhaW5pbmcuIikuIEFGQUlD
UyB0cmlnZ2VyaW5nIGl0IHJlcXVpcmVzIG5vbiB0cml2aWFsIHNldHVwIC0KbWNhc3Qgcnggb24g
YnJpZGdlIHdpdGggZnJhZy1saXN0IGVuYWJsZWQgYW5kIGZvcndhcmRpbmcgdG8gbXVsdGlwbGUK
cG9ydHMgLSBzbyBwZXJoYXBzIHN5emthbGxlciBmb3VuZCBpdCBsYXRlciBkdWUgdG8gaW1wcm92
ZW1lbnRzIG9uIGl0cwpzaWRlID8hPwoKQ2hlZXJzLAoKUGFvbG8KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxp
c3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
