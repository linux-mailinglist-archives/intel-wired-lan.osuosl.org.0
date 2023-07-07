Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 801B874AB6F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Jul 2023 08:55:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C6CC841571;
	Fri,  7 Jul 2023 06:55:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C6CC841571
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688712922;
	bh=k/ZCx8IL0EYtQ66xiSm7/WC7b5Lkde8bF3kdrkooCtg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=s2R7aalyCAh2ObSt8w86lHzhMPFL216Nm/yxIXRsQJoxqTzHUOTbulCMiystsgH1c
	 hxQlGxJ2Im7N1ljM42Zej/y0zn48PZmOSjoMh+Qp2pvblAobI5P1HhBJ40iHqkR/2j
	 +3lIE4VxglDGPqV7bXG4/NtPZeX5Yv+hNPaPXIzLgcm0oQhUz5j0SGXchYmRLvqOrY
	 89/zaUb/F6EoCQziF9TlhirAI1XiYVGET2jDwgoMWcqffnm7aIOHotx2FX2wDKFyL8
	 2Ih34rBfqAsAp+/1oFtoQuxi0+Ju6ZOdbI+7kCI9giPNht9H/f+sac4dMkXg6fmcxw
	 YCb9AVJ87H5FA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3-FdtzuD5qRE; Fri,  7 Jul 2023 06:55:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3F0BB40BE1;
	Fri,  7 Jul 2023 06:55:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F0BB40BE1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 29E931BF859
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jul 2023 06:55:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0CD1241727
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jul 2023 06:55:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0CD1241727
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E18UQkNy-vCk for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Jul 2023 06:55:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83CCD4171E
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 83CCD4171E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jul 2023 06:55:14 +0000 (UTC)
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-370-LA3P5d4INNG2sFkAVg8eEg-1; Fri, 07 Jul 2023 02:55:12 -0400
X-MC-Unique: LA3P5d4INNG2sFkAVg8eEg-1
Received: by mail-qk1-f198.google.com with SMTP id
 af79cd13be357-765ad67e690so36111385a.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Jul 2023 23:55:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688712911; x=1691304911;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=AiuIFdEbuG/V7vt0go6BhvTNeG2l7bZFx0tKuvLez8w=;
 b=GYn4fSakFgqPd9ZURe0w1jA71/KbiDqqx+e5LE5ejVBmYUDbg5OvJ1Luty6S9qsB4O
 XlNFWFkHdBPkotJNImLW2SSTPbo2yGLMxQRRMwjEzfIsKsJllTmBjtR2b+neGHwf3KmJ
 TpCPlrgXu2k/CGNSYVPdhxNvUJi/rzT4kdu8IJrwUR32m4yC2lzeYpJp1VM9gBvcpC/r
 T+bwlb4bWRizEyOw2K4LiX1EAAN2txrUPn9Bm81Yh2yHyPV+gJVJixO3jT2pD8VKaxfA
 bQyODa0kufDJX1jqHjzwkHJ3ZIk+gqP6MKGM8ICpCouI5lIr6bV41+CQlAv3G1VpREyO
 6kcA==
X-Gm-Message-State: ABy/qLb4breKK31VfgRYNQPRGQtZhnfrXUTyyaF9uH6O6z5dCwyFy/c4
 qY8c+0gqMsd3Q85onaxW8QV2SE/xJTjVmTKmUeIs/2LkXsT1+tgwu1KlrC3eSltuLZl05CDK7XK
 riwonUtAM9FGVFKa7da7Je72EuY8fdA==
X-Received: by 2002:a05:620a:244a:b0:767:170d:887a with SMTP id
 h10-20020a05620a244a00b00767170d887amr5365480qkn.2.1688712911676; 
 Thu, 06 Jul 2023 23:55:11 -0700 (PDT)
X-Google-Smtp-Source: APBJJlE1hIX2H/C32J0vYUFsa3n7kXbchn8wnbtPcqrhcTOHsi1P4Q9291eV8i6EzR3Hfc5vN2z5zw==
X-Received: by 2002:a05:620a:244a:b0:767:170d:887a with SMTP id
 h10-20020a05620a244a00b00767170d887amr5365455qkn.2.1688712911174; 
 Thu, 06 Jul 2023 23:55:11 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-240-43.dyn.eolo.it.
 [146.241.240.43]) by smtp.gmail.com with ESMTPSA id
 x1-20020a05620a12a100b00767177a5bebsm1550954qki.56.2023.07.06.23.55.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Jul 2023 23:55:10 -0700 (PDT)
Message-ID: <c21f6cc32ac9d1ee78d60452e52b62654152ae69.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Ian Kumlien <ian.kumlien@gmail.com>
Date: Fri, 07 Jul 2023 08:55:07 +0200
In-Reply-To: <CAA85sZsHKb3Wtsa5ktSAPJsjLrcmahtgaemPhN5dTeTxEBWaqw@mail.gmail.com>
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
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1688712913;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AiuIFdEbuG/V7vt0go6BhvTNeG2l7bZFx0tKuvLez8w=;
 b=Harerm3Ce4XUELpj3dIoJdwxzw1IX7ZBRDwT9CjskID9pbucdAMX1bILhmplz59vlkhgfJ
 Iz8shqj8pDmdRLzKcXh4maTI+0ilOrY4M2nUkg+YholOV8QksLW8OyjlRaf6sKF0NJgAaT
 zClihjj+lRRi9DvIzjyaKiBnmyiKa7c=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Harerm3C
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

T24gRnJpLCAyMDIzLTA3LTA3IGF0IDAwOjMyICswMjAwLCBJYW4gS3VtbGllbiB3cm90ZToKPiBP
biBUaHUsIEp1bCA2LCAyMDIzIGF0IDc6MTDigK9QTSBQYW9sbyBBYmVuaSA8cGFiZW5pQHJlZGhh
dC5jb20+IHdyb3RlOgo+ID4gT24gVGh1LCAyMDIzLTA3LTA2IGF0IDE4OjE3ICswMjAwLCBJYW4g
S3VtbGllbiB3cm90ZToKPiA+ID4gT24gVGh1LCBKdWwgNiwgMjAyMyBhdCA0OjA04oCvUE0gUGFv
bG8gQWJlbmkgPHBhYmVuaUByZWRoYXQuY29tPiB3cm90ZToKPiA+ID4gPiAKPiA+ID4gPiBPbiBU
aHUsIDIwMjMtMDctMDYgYXQgMTU6NTYgKzAyMDAsIEVyaWMgRHVtYXpldCB3cm90ZToKPiA+ID4g
PiA+IE9uIFRodSwgSnVsIDYsIDIwMjMgYXQgMzowMuKAr1BNIFBhb2xvIEFiZW5pIDxwYWJlbmlA
cmVkaGF0LmNvbT4gd3JvdGU6Cj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBPbiBUaHUsIDIwMjMt
MDctMDYgYXQgMTM6MjcgKzAyMDAsIElhbiBLdW1saWVuIHdyb3RlOgo+ID4gPiA+ID4gPiA+IE9u
IFRodSwgSnVsIDYsIDIwMjMgYXQgMTA6NDLigK9BTSBQYW9sbyBBYmVuaSA8cGFiZW5pQHJlZGhh
dC5jb20+IHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4gT24gV2VkLCAyMDIzLTA3LTA1IGF0IDE1OjU4
ICswMjAwLCBJYW4gS3VtbGllbiB3cm90ZToKPiA+ID4gPiA+ID4gPiA+ID4gT24gV2VkLCBKdWwg
NSwgMjAyMyBhdCAzOjI54oCvUE0gUGFvbG8gQWJlbmkgPHBhYmVuaUByZWRoYXQuY29tPiB3cm90
ZToKPiA+ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gPiBPbiBXZWQsIDIwMjMt
MDctMDUgYXQgMTM6MzIgKzAyMDAsIElhbiBLdW1saWVuIHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4g
PiA+ID4gT24gV2VkLCBKdWwgNSwgMjAyMyBhdCAxMjoyOOKAr1BNIFBhb2xvIEFiZW5pIDxwYWJl
bmlAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4g
PiA+ID4gPiA+ID4gPiBPbiBUdWUsIDIwMjMtMDctMDQgYXQgMTY6MjcgKzAyMDAsIElhbiBLdW1s
aWVuIHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IE1vcmUgc3RhY2t0cmFjZXMuLiA9
KQo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IGNh
dCBidWcudHh0IHwgLi9zY3JpcHRzL2RlY29kZV9zdGFja3RyYWNlLnNoIHZtbGludXgKPiA+ID4g
PiA+ID4gPiA+ID4gPiA+ID4gPiBbICA0MTEuNDEzNzY3XSAtLS0tLS0tLS0tLS1bIGN1dCBoZXJl
IF0tLS0tLS0tLS0tLS0KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiBbICA0MTEuNDEzNzkyXSBX
QVJOSU5HOiBDUFU6IDkgUElEOiA5NDIgYXQgaW5jbHVkZS9uZXQvdWQgICAgIHAuaDo1MDkKPiA+
ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiB1ZHB2Nl9xdWV1ZV9yY3Zfc2tiICguL2luY2x1ZGUvbmV0
L3VkcC5oOjUwOSBuZXQvaXB2Ni91ZHAuYzo4MDAKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiBu
ZXQvaXB2Ni91ZHAuYzo3ODcpCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+
ID4gPiA+ID4gPiBJJ20gcmVhbGx5IHJ1bm5pbmcgb3V0IG9mIGlkZWFzIGhlcmUuLi4KPiA+ID4g
PiA+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IFRoaXMgaXM6Cj4gPiA+
ID4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiAgICAgICAgIFdBUk5f
T05fT05DRShVRFBfU0tCX0NCKHNrYiktPnBhcnRpYWxfY292KTsKPiA+ID4gPiA+ID4gPiA+ID4g
PiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IHNvcnQgb2YgaGludCBza2IgYmVpbmcgc2hh
cmVkIChza2ItPnVzZXJzID4gMSkgd2hpbGUgZW5xdWV1ZWQgaW4KPiA+ID4gPiA+ID4gPiA+ID4g
PiA+ID4gbXVsdGlwbGUgcGxhY2VzIChicmlkZ2UgbG9jYWwgaW5wdXQgYW5kIGJyIGZvcndhcmQv
Zmxvb2QgdG8gdHVuCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IGRldmljZSkuIEkgYXVkaXRlZCB0
aGUgYnJpZGdlIG1jIGZsb29kaW5nIGNvZGUsIGFuZCBJIGNvdWxkIG5vdCBmaW5kCj4gPiA+ID4g
PiA+ID4gPiA+ID4gPiA+IGhvdyBhIHNoYXJlZCBza2IgY291bGQgbGFuZCBpbnRvIHRoZSBsb2Nh
bCBpbnB1dCBwYXRoLgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4g
PiA+ID4gQW55d2F5IHRoZSBvdGhlciBzcGxhdHMgcmVwb3J0ZWQgaGVyZSBhbmQgaW4gbGF0ZXIg
ZW1haWxzIGFyZQo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiBjb21wYXRpYmxlIHdpdGggc2hhcmVk
IHNrYnMuCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiBU
aGUgYWJvdmUgbGVhZHMgdG8gYW5vdGhlciBidW5jaCBvZiBxdWVzdGlvbnM6Cj4gPiA+ID4gPiA+
ID4gPiA+ID4gPiA+ICogY2FuIHlvdSByZXByb2R1Y2UgdGhlIGlzc3VlIGFmdGVyIGRpc2FibGlu
ZyAncngtZ3JvLWxpc3QnIG9uIHRoZQo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiBpbmdyZXNzIGRl
dmljZT8gKHdoaWxlIGtlZXBpbmcgJ3J4LXVkcC1ncm8tZm9yd2FyZGluZycgb24pLgo+ID4gPiA+
ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiBXaXRoIHJ4LWdyby1saXN0IG9m
ZiwgYXMgaW4gbmV2ZXIgdHVybmVkIG9uLCBldmVyeXRoaW5nIHNlZW1zIHRvIHJ1biBmaW5lCj4g
PiA+ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gKiBkbyB5b3UgaGF2
ZSBieSBjaGFuY2UgcWRpc2NzIG9uIHRvcCBvZiB0aGUgVk0gdHVuIGRldmljZXM/Cj4gPiA+ID4g
PiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gPiA+IGRlZmF1bHQgcWRpc2MgaXMgZnEK
PiA+ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gPiBJSVJDIGxpYnZpcnQgY291
bGQgcmVzZXQgdGhlIHFkaXNjIHRvIG5vcXVldWUgZm9yIHRoZSBvd25lZCB0dW4KPiA+ID4gPiA+
ID4gPiA+ID4gPiBkZXZpY2VzLgo+ID4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4g
PiA+IENvdWxkIHlvdSBwbGVhc2UgcmVwb3J0IHRoZSBvdXRwdXQgb2Y6Cj4gPiA+ID4gPiA+ID4g
PiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+ID4gdGMgLWQgLXMgcWRpc2Mgc2hvdyBkZXYgPHR1biBk
ZXYgbmFtZT4KPiA+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+IEkgZG9uJ3QgaGF2
ZSB0aGVzZSBzZXQ6Cj4gPiA+ID4gPiA+ID4gPiA+IENPTkZJR19ORVRfU0NIX0lOR1JFU1MKPiA+
ID4gPiA+ID4gPiA+ID4gQ09ORklHX05FVF9TQ0hFRAo+ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4g
PiA+ID4gPiA+ID4gc28gdGMganVzdCBnaXZlcyBhbiBlcnJvci4uLgo+ID4gPiA+ID4gPiA+ID4g
Cj4gPiA+ID4gPiA+ID4gPiBUaGUgYWJvdmUgaXMgY29uZnVzaW5nLiBBUyBDT05GSUdfTkVUX1ND
SF9ERUZBVUxUIGRlcGVuZHMgb24KPiA+ID4gPiA+ID4gPiA+IENPTkZJR19ORVRfU0NIRUQsIHlv
dSBzaG91bGQgbm90IGhhdmUgYSBkZWZhdWx0IHFkaXNjLCB0b28gOykKPiA+ID4gPiA+ID4gPiAK
PiA+ID4gPiA+ID4gPiBXZWxsIGl0J3Mgc3RpbGwgc2V0IGluIHN5c2N0bCAtIGR1bm5vIGlmIGl0
IGZhaWxzCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiBDb3VsZCB5b3UgcGxlYXNlIHNo
YXJlIHlvdXIga2VybmVsIGNvbmZpZz8KPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBTdXJl
Li4uCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gQXMgYSBzaWRlIG5vdGUsIGl0IGhhc24n
dCBjcmFzaGVkIC0gbm8gdHJhY2VzIHNpbmNlIHdlIGRpZCB0aGUgbGFzdCBjaGFuZ2UKPiA+ID4g
PiA+ID4gCj4gPiA+ID4gPiA+IEl0IHNvdW5kcyBsaWtlIGFuIGVuY291cmFnaW5nIHNpbmchIChs
YXN0IGZhbW91cyB3b3Jkcy4uLikuIEknbGwgd2FpdCAxCj4gPiA+ID4gPiA+IG1vcmUgZGF5LCB0
aGFuIEknbGwgc3VibWl0IGZvcm1hbGx5Li4uCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IEZv
ciByZWZlcmVuY2UsIHRoaXMgaXMgZ2l0IGRpZmYgb24gdGhlIHJ1bm5pbmcga2VybmVscyBzb3Vy
Y2UgdHJlZToKPiA+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvbmV0L2NvcmUvc2tidWZmLmMgYi9u
ZXQvY29yZS9za2J1ZmYuYwo+ID4gPiA+ID4gPiA+IGluZGV4IGNlYTI4ZDMwYWJiNS4uMWIyMzk0
ZWJhZjMzIDEwMDY0NAo+ID4gPiA+ID4gPiA+IC0tLSBhL25ldC9jb3JlL3NrYnVmZi5jCj4gPiA+
ID4gPiA+ID4gKysrIGIvbmV0L2NvcmUvc2tidWZmLmMKPiA+ID4gPiA+ID4gPiBAQCAtNDI3MCw2
ICs0MjcwLDE3IEBAIHN0cnVjdCBza19idWZmICpza2Jfc2VnbWVudF9saXN0KHN0cnVjdCBza19i
dWZmICpza2IsCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gICAgICAgICBza2JfcHVzaChz
a2IsIC1za2JfbmV0d29ya19vZmZzZXQoc2tiKSArIG9mZnNldCk7Cj4gPiA+ID4gPiA+ID4gCj4g
PiA+ID4gPiA+ID4gKyAgICAgICBpZiAoV0FSTl9PTl9PTkNFKHNrYl9zaGFyZWQoc2tiKSkpIHsK
PiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgc2tiID0gc2tiX3NoYXJlX2NoZWNrKHNrYiwg
R0ZQX0FUT01JQyk7Cj4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgIGlmICghc2tiKQo+ID4g
PiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGdvdG8gZXJyX2xpbmVhcml6ZTsKPiA+
ID4gPiA+ID4gPiArICAgICAgIH0KPiA+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ID4gKyAgICAg
ICAvKiBsYXRlciBjb2RlIHdpbGwgY2xlYXIgdGhlIGdzbyBhcmVhIGluIHRoZSBzaGFyZWQgaW5m
byAqLwo+ID4gPiA+ID4gPiA+ICsgICAgICAgZXJyID0gc2tiX2hlYWRlcl91bmNsb25lKHNrYiwg
R0ZQX0FUT01JQyk7Cj4gPiA+ID4gPiA+ID4gKyAgICAgICBpZiAoZXJyKQo+ID4gPiA+ID4gPiA+
ICsgICAgICAgICAgICAgICBnb3RvIGVycl9saW5lYXJpemU7Cj4gPiA+ID4gPiA+ID4gKwo+ID4g
PiA+ID4gPiA+ICAgICAgICAgc2tiX3NoaW5mbyhza2IpLT5mcmFnX2xpc3QgPSBOVUxMOwo+ID4g
PiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ICAgICAgICAgd2hpbGUgKGxpc3Rfc2tiKSB7Cj4gPiA+
ID4gPiA+IAo+ID4gPiA+ID4gPiAuLi50aGUgYWJvdmUgY2hlY2sgb25seSwgYXMgdGhlIG90aGVy
IDIgc2hvdWxkIG9ubHkgY2F0Y2gtdXAgc2lkZQo+ID4gPiA+ID4gPiBlZmZlY3RzIG9mIGxhY2sg
b2YgdGhpcyBvbmUuIEluIGFueSBjYXNlIHRoZSBhYm92ZSBhZGRyZXNzIGEgcmVhbAo+ID4gPiA+
ID4gPiBpc3N1ZSwgc28gd2UgbGlrZWx5IHdhbnQgaXQgbm8tbWF0dGVyLXdoYXQuCj4gPiA+ID4g
PiA+IAo+ID4gPiA+ID4gCj4gPiA+ID4gPiBJbnRlcmVzdGluZywgSSB3b25kZXIgaWYgdGhpcyBj
b3VsZCBhbHNvIGZpeCBzb21lIHN5emJvdCByZXBvcnRzCj4gPiA+ID4gPiBXaWxsZW0gYW5kIEkg
YXJlIGludmVzdGlnYXRpbmcuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IEFueSBpZGVhIG9mIHdoZW4g
dGhlIGJ1ZyB3YXMgJ2FkZGVkJyBvciAncmV2ZWFsZWQnID8KPiA+ID4gPiAKPiA+ID4gPiBUaGUg
aXNzdWUgc3BlY2lmaWNhbGx5IGFkZHJlc3NlZCBhYm92ZSBzaG91bGQgYmUgcHJlc2VudCBzaW5j
ZQo+ID4gPiA+IGZyYWdfbGlzdCBpbnRyb2R1Y3Rpb24gY29tbWl0IDNhMTI5NmEzOGQwYyAoIm5l
dDogU3VwcG9ydCBHUk8vR1NPCj4gPiA+ID4gZnJhZ2xpc3QgY2hhaW5pbmcuIikuIEFGQUlDUyB0
cmlnZ2VyaW5nIGl0IHJlcXVpcmVzIG5vbiB0cml2aWFsIHNldHVwIC0KPiA+ID4gPiBtY2FzdCBy
eCBvbiBicmlkZ2Ugd2l0aCBmcmFnLWxpc3QgZW5hYmxlZCBhbmQgZm9yd2FyZGluZyB0byBtdWx0
aXBsZQo+ID4gPiA+IHBvcnRzIC0gc28gcGVyaGFwcyBzeXprYWxsZXIgZm91bmQgaXQgbGF0ZXIg
ZHVlIHRvIGltcHJvdmVtZW50cyBvbiBpdHMKPiA+ID4gPiBzaWRlID8hPwo+ID4gPiAKPiA+ID4g
SSdtIGFsc28gYSBiaXQgYWZyYWlkIHRoYXQgd2UganVzdCBoYXZlbid0IHRyaWdnZXJlZCBpdCAt
IGkgZG9uJ3Qgc2VlCj4gPiA+IGFueSB3YXJuaW5ncyBvciBhbnl0aGluZy4uLiA6Lwo+ID4gCj4g
PiBMZXQgbWUgdHJ5IHRvIGNsYXJpZnk6IEkgaG9wZS90aGluayB0aGF0IHRoaXMgY2h1bmsgYWxv
bmU6Cj4gPiAKPiA+ICsgICAgICAgLyogbGF0ZXIgY29kZSB3aWxsIGNsZWFyIHRoZSBnc28gYXJl
YSBpbiB0aGUgc2hhcmVkIGluZm8gKi8KPiA+ICsgICAgICAgZXJyID0gc2tiX2hlYWRlcl91bmNs
b25lKHNrYiwgR0ZQX0FUT01JQyk7Cj4gPiArICAgICAgIGlmIChlcnIpCj4gPiArICAgICAgICAg
ICAgICAgZ290byBlcnJfbGluZWFyaXplOwo+ID4gKwo+ID4gICAgICAgICBza2Jfc2hpbmZvKHNr
YiktPmZyYWdfbGlzdCA9IE5VTEw7Cj4gPiAKPiA+ICAgICAgICAgd2hpbGUgKGxpc3Rfc2tiKSB7
Cj4gPiAKPiA+IGRvZXMgdGhlIG1hZ2ljL2F2b2lkcyB0aGUgc2tiIGNvcnJ1cHRpb25zIC0+IGl0
IGV2ZXJ5dGhpbmcgZ29lcyB3ZWxsLAo+ID4geW91IHNob3VsZCBub3Qgc2VlIGFueSB3YXJuaW5n
cyBhdCBhbGwuIFJ1bm5pbmcgJ25zdGF0JyBpbiB0aGUgRFVUCj4gPiBzaG91bGQgZ2l2ZSBzb21l
IGhpbnRzIGFib3V0IHJlYWNoaW5nIHRoZSByZWxldmFudCBjb2RlIHBhdGhzLgo+IAo+IFNvcnJ5
IGFib3V0IHRoZSBodG1sIG1haWwuLi4gYnV0Li4uCj4gCj4gSSB3YXMgZnVsbHkgZXhwZWN0aW5n
IGEgd2FybmluZyBmcm9tOgo+ICBpZiAoV0FSTl9PTl9PTkNFKHNrYl9zaGFyZWQoc2tiKSkpIHsK
PiAKPiBCdXQgSSBjb3VsZCBiZSBjb21wbGV0ZWx5IHdyb25nIGFuZCB0aGluZ3MgPSkKPiAKPiBX
aGljaCBmaWVsZHMgd291bGQgaSBiZSBsb29raW5nIGF0IGluIG5zdGF0ClsuLi5dCj4gVWRwSW5E
YXRhZ3JhbXMgICAgICAgICAgICAgICAgICA0ODkzICAgICAgICAgICAgICAgMC4wClsuLi5dCj4g
SXA2SW5NY2FzdFBrdHMgICAgICAgICAgICAgICAgICA3MTQ2ICAgICAgICAgICAgICAgMC4wClsu
Li5dCj4gSXA2SW5NY2FzdE9jdGV0cyAgICAgICAgICAgICAgICAxMDYxMjkyICAgICAgICAgICAg
MC4wCgpUaGUgYWJvdmUgb25lcy4gV2UgaGF2ZSBpbmdyZXNzIG1jYXN0IHRyYWZmaWMsIGJ1dCB0
aGUgZmlndXJlcyBhcmUKaW5jb25jbHVzaXZlIGFib3V0IEdSTyBhZ2dyZWdhdGlvbiB0YWtpbmcg
cGxhY2UgKElwNkluTWNhc3RPY3RldHMgLwpJcDZJbk1jYXN0UGt0cyA+IE1UVSB3b3VsZCBwcm92
ZSB0aGF0KS4gU2ltaWxhciB0aGluZyBmb3IgSVB2NCBtY2FzdC4KClN0aWxsIHRoZSBjaGFuZ2Ug
bG9vayBzYW5lLCB0aGUgYWxpdmUgdGltZSBlbmNvdXJhZ2luZy4gSSdsbCBzdWJtaXQgaXQKZm9y
bWFsbHkgd2l0aCB5b3VyIHJlcG9ydGVkL3Rlc3RlZC1ieSB0YWdzLgoKTWFueSB0aGFua3MgZm9y
IGFsbCB0aGUgZGVidWdnaW5nIGVmZm9ydCEKClBhb2xvCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cklu
dGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
