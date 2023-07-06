Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 777FD749E4D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jul 2023 15:57:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C23D82207;
	Thu,  6 Jul 2023 13:56:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C23D82207
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688651819;
	bh=TsZQwcWJ8dK9piUaLSYJRfpLMZ1atLCEyrykJEecn4k=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=B7YBTdMrTB0OzKotEyDe+rTTMnffX1GCsSopv+SokZVOFrFPkWHGzhD01ns9/Jvdj
	 Y6Kg+nfOIQ0RA4wEEUy+0xSyT+cvIrMiNA0IoVNZrNMg12GulCI341jrSnLnJDXjDl
	 KwshbYVFmZv5/3z52c31Wu80f4xsk534sOp47I7/AoPSYb5MuMztzW7HqSmEl2q1xX
	 x+3z5DlG+Zcwk4p96cWBq2lvzANrdiebQTh2rRTz7ynZYZFzzYoMpYue6i894E1AfK
	 71THoavMvVLlZ0VYxJk2feFxyxXy9XI1hvzoVO2H+7u1DTItRkHBLZo5E8hiWSfYWj
	 TQjztLA6Zi3oA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YSsR-DAPuPuq; Thu,  6 Jul 2023 13:56:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 328B082205;
	Thu,  6 Jul 2023 13:56:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 328B082205
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BE3721BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 13:56:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A193B4182D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 13:56:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A193B4182D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Lgi3TBlMSBQ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jul 2023 13:56:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 79DA140629
Received: from mail-qt1-x82f.google.com (mail-qt1-x82f.google.com
 [IPv6:2607:f8b0:4864:20::82f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 79DA140629
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 13:56:51 +0000 (UTC)
Received: by mail-qt1-x82f.google.com with SMTP id
 d75a77b69052e-40371070eb7so250051cf.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Jul 2023 06:56:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688651810; x=1691243810;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=9o4NNAa0hEp40MVI+hiXpvFx+kGwffUnYwX0NvprFrM=;
 b=E+mkvIPijI64O1h830LQP/WjyW+ewD2oM90Kuf/Rm1n5RtvNnpC2g9ib3GNoeA1a90
 HN1drTBr6M+f3mPQxJ1Clf6REjmrhJ0y7+EVvbEBXvWMBd9+R50PNBO7USJe32PS92pC
 +sWUH/RboBs8Vw+egSZfcNA3IKDQWJFWHAJ+F+KBSxxUqrh+YzgM/0IdhWk+Ugp1nEQq
 0HZi9juea8r3PWLqWl32j2PsSkjZ1iXyGfsH+YlBviX1UnaJBY/uIwsmJfQfdncX0KIL
 wP9MsHy4QivTyQgDmHNRgBaPnyS9dmZvi+zUB93XXsUmvQsuEly68fO6i0jJC+dJbDIc
 4YLg==
X-Gm-Message-State: ABy/qLbi1nVF8ppDqrt2UAKPRqSyd961dBJz3wm5HZSi7q/Z13PWlK4G
 Ora9fA5DaUVFKgG/guOtFBOyAqyWt5lKHgk7/oJlLg==
X-Google-Smtp-Source: APBJJlEDtP/lmO1GgVOyh/3iYAbZvHjlNxw50iq/tp7xGY0Dwc7Y+VtoavfKVgkd36e3D4omB4TQ/Kh6tpmFL7Yl9qo=
X-Received: by 2002:ac8:5887:0:b0:3f9:6930:1308 with SMTP id
 t7-20020ac85887000000b003f969301308mr115350qta.13.1688651810098; Thu, 06 Jul
 2023 06:56:50 -0700 (PDT)
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
In-Reply-To: <67ff0f7901e66d1c0d418c48c9a071068b32a77d.camel@redhat.com>
From: Eric Dumazet <edumazet@google.com>
Date: Thu, 6 Jul 2023 15:56:38 +0200
Message-ID: <CANn89i+F=R71refT8K_8hPaP+uWn15GeHz+FTMYU=VPTG24WFA@mail.gmail.com>
To: Paolo Abeni <pabeni@redhat.com>, Willem de Bruijn <willemb@google.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1688651810; x=1691243810;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9o4NNAa0hEp40MVI+hiXpvFx+kGwffUnYwX0NvprFrM=;
 b=JnyflN6PUKyqI7ewT3XXEZWRKVLniQMvIuQLxFHC/dmxQ8lwB6HEcKrmIPpGMMDSuU
 jg7QLZ4mpNSokFlOr0Kgh1zJHmOxa8RpU1oiOHtLv23R7R+u+h18wBN+l8GxZfDMZFvC
 B56h3KzPm84Bf28/RdNWAxypmU0KMwM8Bw2kbSII1opUPHq1YC0LPhN7cKyAMDyhEb36
 ialNyHhaq6ZSRxGYMq/a+qGita4ERfSym1AeWkkUM7AIXZPg3etqC93IxawyLeNRKKct
 gjH5T+B7YWlLd7040vFwYE43AWsggser8E/WGSVcA/05/l4XEYT159HB6+5QCavjLe5o
 IzBg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20221208 header.b=JnyflN6P
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

T24gVGh1LCBKdWwgNiwgMjAyMyBhdCAzOjAy4oCvUE0gUGFvbG8gQWJlbmkgPHBhYmVuaUByZWRo
YXQuY29tPiB3cm90ZToKPgo+IE9uIFRodSwgMjAyMy0wNy0wNiBhdCAxMzoyNyArMDIwMCwgSWFu
IEt1bWxpZW4gd3JvdGU6Cj4gPiBPbiBUaHUsIEp1bCA2LCAyMDIzIGF0IDEwOjQy4oCvQU0gUGFv
bG8gQWJlbmkgPHBhYmVuaUByZWRoYXQuY29tPiB3cm90ZToKPiA+ID4gT24gV2VkLCAyMDIzLTA3
LTA1IGF0IDE1OjU4ICswMjAwLCBJYW4gS3VtbGllbiB3cm90ZToKPiA+ID4gPiBPbiBXZWQsIEp1
bCA1LCAyMDIzIGF0IDM6MjnigK9QTSBQYW9sbyBBYmVuaSA8cGFiZW5pQHJlZGhhdC5jb20+IHdy
b3RlOgo+ID4gPiA+ID4KPiA+ID4gPiA+IE9uIFdlZCwgMjAyMy0wNy0wNSBhdCAxMzozMiArMDIw
MCwgSWFuIEt1bWxpZW4gd3JvdGU6Cj4gPiA+ID4gPiA+IE9uIFdlZCwgSnVsIDUsIDIwMjMgYXQg
MTI6MjjigK9QTSBQYW9sbyBBYmVuaSA8cGFiZW5pQHJlZGhhdC5jb20+IHdyb3RlOgo+ID4gPiA+
ID4gPiA+Cj4gPiA+ID4gPiA+ID4gT24gVHVlLCAyMDIzLTA3LTA0IGF0IDE2OjI3ICswMjAwLCBJ
YW4gS3VtbGllbiB3cm90ZToKPiA+ID4gPiA+ID4gPiA+IE1vcmUgc3RhY2t0cmFjZXMuLiA9KQo+
ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+IGNhdCBidWcudHh0IHwgLi9zY3JpcHRzL2Rl
Y29kZV9zdGFja3RyYWNlLnNoIHZtbGludXgKPiA+ID4gPiA+ID4gPiA+IFsgIDQxMS40MTM3Njdd
IC0tLS0tLS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLQo+ID4gPiA+ID4gPiA+ID4gWyAg
NDExLjQxMzc5Ml0gV0FSTklORzogQ1BVOiA5IFBJRDogOTQyIGF0IGluY2x1ZGUvbmV0L3VkICAg
ICBwLmg6NTA5Cj4gPiA+ID4gPiA+ID4gPiB1ZHB2Nl9xdWV1ZV9yY3Zfc2tiICguL2luY2x1ZGUv
bmV0L3VkcC5oOjUwOSBuZXQvaXB2Ni91ZHAuYzo4MDAKPiA+ID4gPiA+ID4gPiA+IG5ldC9pcHY2
L3VkcC5jOjc4NykKPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IEknbSByZWFsbHkgcnVubmlu
ZyBvdXQgb2YgaWRlYXMgaGVyZS4uLgo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gVGhpcyBp
czoKPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+ICAgICAgICAgV0FSTl9PTl9PTkNFKFVEUF9T
S0JfQ0Ioc2tiKS0+cGFydGlhbF9jb3YpOwo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gc29y
dCBvZiBoaW50IHNrYiBiZWluZyBzaGFyZWQgKHNrYi0+dXNlcnMgPiAxKSB3aGlsZSBlbnF1ZXVl
ZCBpbgo+ID4gPiA+ID4gPiA+IG11bHRpcGxlIHBsYWNlcyAoYnJpZGdlIGxvY2FsIGlucHV0IGFu
ZCBiciBmb3J3YXJkL2Zsb29kIHRvIHR1bgo+ID4gPiA+ID4gPiA+IGRldmljZSkuIEkgYXVkaXRl
ZCB0aGUgYnJpZGdlIG1jIGZsb29kaW5nIGNvZGUsIGFuZCBJIGNvdWxkIG5vdCBmaW5kCj4gPiA+
ID4gPiA+ID4gaG93IGEgc2hhcmVkIHNrYiBjb3VsZCBsYW5kIGludG8gdGhlIGxvY2FsIGlucHV0
IHBhdGguCj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBBbnl3YXkgdGhlIG90aGVyIHNwbGF0
cyByZXBvcnRlZCBoZXJlIGFuZCBpbiBsYXRlciBlbWFpbHMgYXJlCj4gPiA+ID4gPiA+ID4gY29t
cGF0aWJsZSB3aXRoIHNoYXJlZCBza2JzLgo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gVGhl
IGFib3ZlIGxlYWRzIHRvIGFub3RoZXIgYnVuY2ggb2YgcXVlc3Rpb25zOgo+ID4gPiA+ID4gPiA+
ICogY2FuIHlvdSByZXByb2R1Y2UgdGhlIGlzc3VlIGFmdGVyIGRpc2FibGluZyAncngtZ3JvLWxp
c3QnIG9uIHRoZQo+ID4gPiA+ID4gPiA+IGluZ3Jlc3MgZGV2aWNlPyAod2hpbGUga2VlcGluZyAn
cngtdWRwLWdyby1mb3J3YXJkaW5nJyBvbikuCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IFdpdGgg
cngtZ3JvLWxpc3Qgb2ZmLCBhcyBpbiBuZXZlciB0dXJuZWQgb24sIGV2ZXJ5dGhpbmcgc2VlbXMg
dG8gcnVuIGZpbmUKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiAqIGRvIHlvdSBoYXZlIGJ5IGNo
YW5jZSBxZGlzY3Mgb24gdG9wIG9mIHRoZSBWTSB0dW4gZGV2aWNlcz8KPiA+ID4gPiA+ID4KPiA+
ID4gPiA+ID4gZGVmYXVsdCBxZGlzYyBpcyBmcQo+ID4gPiA+ID4KPiA+ID4gPiA+IElJUkMgbGli
dmlydCBjb3VsZCByZXNldCB0aGUgcWRpc2MgdG8gbm9xdWV1ZSBmb3IgdGhlIG93bmVkIHR1bgo+
ID4gPiA+ID4gZGV2aWNlcy4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBDb3VsZCB5b3UgcGxlYXNlIHJl
cG9ydCB0aGUgb3V0cHV0IG9mOgo+ID4gPiA+ID4KPiA+ID4gPiA+IHRjIC1kIC1zIHFkaXNjIHNo
b3cgZGV2IDx0dW4gZGV2IG5hbWU+Cj4gPiA+ID4KPiA+ID4gPiBJIGRvbid0IGhhdmUgdGhlc2Ug
c2V0Ogo+ID4gPiA+IENPTkZJR19ORVRfU0NIX0lOR1JFU1MKPiA+ID4gPiBDT05GSUdfTkVUX1ND
SEVECj4gPiA+ID4KPiA+ID4gPiBzbyB0YyBqdXN0IGdpdmVzIGFuIGVycm9yLi4uCj4gPiA+Cj4g
PiA+IFRoZSBhYm92ZSBpcyBjb25mdXNpbmcuIEFTIENPTkZJR19ORVRfU0NIX0RFRkFVTFQgZGVw
ZW5kcyBvbgo+ID4gPiBDT05GSUdfTkVUX1NDSEVELCB5b3Ugc2hvdWxkIG5vdCBoYXZlIGEgZGVm
YXVsdCBxZGlzYywgdG9vIDspCj4gPgo+ID4gV2VsbCBpdCdzIHN0aWxsIHNldCBpbiBzeXNjdGwg
LSBkdW5ubyBpZiBpdCBmYWlscwo+ID4KPiA+ID4gQ291bGQgeW91IHBsZWFzZSBzaGFyZSB5b3Vy
IGtlcm5lbCBjb25maWc/Cj4gPgo+ID4gU3VyZS4uLgo+ID4KPiA+IEFzIGEgc2lkZSBub3RlLCBp
dCBoYXNuJ3QgY3Jhc2hlZCAtIG5vIHRyYWNlcyBzaW5jZSB3ZSBkaWQgdGhlIGxhc3QgY2hhbmdl
Cj4KPiBJdCBzb3VuZHMgbGlrZSBhbiBlbmNvdXJhZ2luZyBzaW5nISAobGFzdCBmYW1vdXMgd29y
ZHMuLi4pLiBJJ2xsIHdhaXQgMQo+IG1vcmUgZGF5LCB0aGFuIEknbGwgc3VibWl0IGZvcm1hbGx5
Li4uCj4KPiA+IEZvciByZWZlcmVuY2UsIHRoaXMgaXMgZ2l0IGRpZmYgb24gdGhlIHJ1bm5pbmcg
a2VybmVscyBzb3VyY2UgdHJlZToKPiA+IGRpZmYgLS1naXQgYS9uZXQvY29yZS9za2J1ZmYuYyBi
L25ldC9jb3JlL3NrYnVmZi5jCj4gPiBpbmRleCBjZWEyOGQzMGFiYjUuLjFiMjM5NGViYWYzMyAx
MDA2NDQKPiA+IC0tLSBhL25ldC9jb3JlL3NrYnVmZi5jCj4gPiArKysgYi9uZXQvY29yZS9za2J1
ZmYuYwo+ID4gQEAgLTQyNzAsNiArNDI3MCwxNyBAQCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiX3NlZ21l
bnRfbGlzdChzdHJ1Y3Qgc2tfYnVmZiAqc2tiLAo+ID4KPiA+ICAgICAgICAgc2tiX3B1c2goc2ti
LCAtc2tiX25ldHdvcmtfb2Zmc2V0KHNrYikgKyBvZmZzZXQpOwo+ID4KPiA+ICsgICAgICAgaWYg
KFdBUk5fT05fT05DRShza2Jfc2hhcmVkKHNrYikpKSB7Cj4gPiArICAgICAgICAgICAgICAgc2ti
ID0gc2tiX3NoYXJlX2NoZWNrKHNrYiwgR0ZQX0FUT01JQyk7Cj4gPiArICAgICAgICAgICAgICAg
aWYgKCFza2IpCj4gPiArICAgICAgICAgICAgICAgICAgICAgICBnb3RvIGVycl9saW5lYXJpemU7
Cj4gPiArICAgICAgIH0KPiA+ICsKPiA+ICsgICAgICAgLyogbGF0ZXIgY29kZSB3aWxsIGNsZWFy
IHRoZSBnc28gYXJlYSBpbiB0aGUgc2hhcmVkIGluZm8gKi8KPiA+ICsgICAgICAgZXJyID0gc2ti
X2hlYWRlcl91bmNsb25lKHNrYiwgR0ZQX0FUT01JQyk7Cj4gPiArICAgICAgIGlmIChlcnIpCj4g
PiArICAgICAgICAgICAgICAgZ290byBlcnJfbGluZWFyaXplOwo+ID4gKwo+ID4gICAgICAgICBz
a2Jfc2hpbmZvKHNrYiktPmZyYWdfbGlzdCA9IE5VTEw7Cj4gPgo+ID4gICAgICAgICB3aGlsZSAo
bGlzdF9za2IpIHsKPgo+IC4uLnRoZSBhYm92ZSBjaGVjayBvbmx5LCBhcyB0aGUgb3RoZXIgMiBz
aG91bGQgb25seSBjYXRjaC11cCBzaWRlCj4gZWZmZWN0cyBvZiBsYWNrIG9mIHRoaXMgb25lLiBJ
biBhbnkgY2FzZSB0aGUgYWJvdmUgYWRkcmVzcyBhIHJlYWwKPiBpc3N1ZSwgc28gd2UgbGlrZWx5
IHdhbnQgaXQgbm8tbWF0dGVyLXdoYXQuCj4KCkludGVyZXN0aW5nLCBJIHdvbmRlciBpZiB0aGlz
IGNvdWxkIGFsc28gZml4IHNvbWUgc3l6Ym90IHJlcG9ydHMKV2lsbGVtIGFuZCBJIGFyZSBpbnZl
c3RpZ2F0aW5nLgoKQW55IGlkZWEgb2Ygd2hlbiB0aGUgYnVnIHdhcyAnYWRkZWQnIG9yICdyZXZl
YWxlZCcgPwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0
dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
