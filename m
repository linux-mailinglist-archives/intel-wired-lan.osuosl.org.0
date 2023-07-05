Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 19DC17484E7
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jul 2023 15:29:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 09EA6417B0;
	Wed,  5 Jul 2023 13:29:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 09EA6417B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688563759;
	bh=2otN/M8fWRcaga3kX5oh0nWK3TdWtzI6Fdbh4apT/1M=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DGnw/r3YTrQq2A/Sil0rXztSOMWuueFFXXlyPkcCIMYUTbRFyEDPI3W7IkwMZZMtC
	 8JkE1PK7UuAlt3Sn/3rh2yXaMByDgnK7nzZnE6YlfbRV7loVtntxEbo0+A8GY8cDji
	 aQsOZXTXi8xM91QAYVwcN3qjHf7OcBV6mMCjqFUmYmST6PLh5veYASppJYQemddRQd
	 AjL9x6LELUjwl3cvTnN9Ni18p4QKi8ljaSTUkfCVnqXpyw6Z1v55EyYiOlKUV9i3lz
	 hOCb4huuXv5FqYiQJYLsNPGnx56FRPpnF8PA4oSkoqlNlbEEoVwk8aNI10/l7bq8w7
	 x3o9ceNcbVlRw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cBEzMC7l6zJm; Wed,  5 Jul 2023 13:29:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7CE5F402F7;
	Wed,  5 Jul 2023 13:29:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7CE5F402F7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD3471BF5A1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 13:29:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9194D812D2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 13:29:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9194D812D2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fE-o0WtPO2st for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jul 2023 13:29:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CAE0E812BA
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CAE0E812BA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 13:29:10 +0000 (UTC)
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-582-DocfPAurMRiRbE1w5aSuDQ-1; Wed, 05 Jul 2023 09:29:08 -0400
X-MC-Unique: DocfPAurMRiRbE1w5aSuDQ-1
Received: by mail-qt1-f198.google.com with SMTP id
 d75a77b69052e-40359e38529so8781981cf.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 05 Jul 2023 06:29:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688563748; x=1691155748;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=LHqdHGePpqC3yYNk2DL1SaWLPtx1MBYVuRSI4Gok9W4=;
 b=bWkr9Hz0HohhcuCBnKpFFvw8RftbJYol2oovMekLbIi5guFBdI09SOw8D+rYcoTB46
 mEgccRPjjRnlZRDsa7w8rKoyEfwITTCyVXmtmMkwfvq/8mtZlD/xdPoAlC4/8Ugps/gw
 rU7BghfKsYV4D59TsiHGZLU0YBZ/UOmiBr6IhxABhm8AG//maMXYUagrG6lRM6CtjavQ
 2IY8Vyo32jba3w+CLhc+m57eoS6Um0QQPFwgVbQIHU1J81MicpYjrNpgCOoJKL23Efl3
 E5LPUK+OjwqQEYgHytRX10QfC9Y9S9ytreszkTRKfP6JAdp1v3tG903mXSpGjlt+kbG0
 qJkA==
X-Gm-Message-State: AC+VfDyd9IaeM+sWaVD7zi+3G5cvQehutudk1ZEmDpC2oVippLpouLAw
 rzVnCjSR8MTu8q4OMQwwfafTSyiqF/RvimNvVwNFyvehDtQrus945n2uiQgyRH+KYX4vCAySgHP
 a7DceRQMw4LCDUbh/mQ6FqqfeDm62Dw==
X-Received: by 2002:a05:622a:1895:b0:400:990c:8f7c with SMTP id
 v21-20020a05622a189500b00400990c8f7cmr22392524qtc.0.1688563748030; 
 Wed, 05 Jul 2023 06:29:08 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ62X9JsHoZCveZYUGcPACw/zB7DgpgPHX+6wLVD50UWEY3v0qArBGtMNDzVyNqun53gA+yjpA==
X-Received: by 2002:a05:622a:1895:b0:400:990c:8f7c with SMTP id
 v21-20020a05622a189500b00400990c8f7cmr22392507qtc.0.1688563747762; 
 Wed, 05 Jul 2023 06:29:07 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-249-75.dyn.eolo.it.
 [146.241.249.75]) by smtp.gmail.com with ESMTPSA id
 f3-20020ac80683000000b003ef189ffa82sm2961740qth.90.2023.07.05.06.29.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Jul 2023 06:29:07 -0700 (PDT)
Message-ID: <14cd6a50bd5de13825017b75c98cb3115e84acc1.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Ian Kumlien <ian.kumlien@gmail.com>
Date: Wed, 05 Jul 2023 15:29:04 +0200
In-Reply-To: <CAA85sZsidN4ig=RaQ34PYFjnZGU-=zqR=r-5za=G4oeAtxDA7g@mail.gmail.com>
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
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1688563749;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LHqdHGePpqC3yYNk2DL1SaWLPtx1MBYVuRSI4Gok9W4=;
 b=EgMUcrt90Ix35ZlT5KaspjhZSkPN2pEa9ULWJtCAUj6x7WJpoDwfRb2KABnGxDn9z+gSWm
 LFspMxCuRhl1Lunj6Q1Hkigrs4zdeOc2R578YN5mfxOSb46jIolkv8kEYtLg6kWWd8HrtE
 wOwpgZQf1Q1bd9sDD7mox3IGztXYeMM=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=EgMUcrt9
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

T24gV2VkLCAyMDIzLTA3LTA1IGF0IDEzOjMyICswMjAwLCBJYW4gS3VtbGllbiB3cm90ZToKPiBP
biBXZWQsIEp1bCA1LCAyMDIzIGF0IDEyOjI44oCvUE0gUGFvbG8gQWJlbmkgPHBhYmVuaUByZWRo
YXQuY29tPiB3cm90ZToKPiA+IAo+ID4gT24gVHVlLCAyMDIzLTA3LTA0IGF0IDE2OjI3ICswMjAw
LCBJYW4gS3VtbGllbiB3cm90ZToKPiA+ID4gTW9yZSBzdGFja3RyYWNlcy4uID0pCj4gPiA+IAo+
ID4gPiBjYXQgYnVnLnR4dCB8IC4vc2NyaXB0cy9kZWNvZGVfc3RhY2t0cmFjZS5zaCB2bWxpbnV4
Cj4gPiA+IFsgIDQxMS40MTM3NjddIC0tLS0tLS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0t
LQo+ID4gPiBbICA0MTEuNDEzNzkyXSBXQVJOSU5HOiBDUFU6IDkgUElEOiA5NDIgYXQgaW5jbHVk
ZS9uZXQvdWQgICAgIHAuaDo1MDkKPiA+ID4gdWRwdjZfcXVldWVfcmN2X3NrYiAoLi9pbmNsdWRl
L25ldC91ZHAuaDo1MDkgbmV0L2lwdjYvdWRwLmM6ODAwCj4gPiA+IG5ldC9pcHY2L3VkcC5jOjc4
NykKPiA+IAo+ID4gSSdtIHJlYWxseSBydW5uaW5nIG91dCBvZiBpZGVhcyBoZXJlLi4uCj4gPiAK
PiA+IFRoaXMgaXM6Cj4gPiAKPiA+ICAgICAgICAgV0FSTl9PTl9PTkNFKFVEUF9TS0JfQ0Ioc2ti
KS0+cGFydGlhbF9jb3YpOwo+ID4gCj4gPiBzb3J0IG9mIGhpbnQgc2tiIGJlaW5nIHNoYXJlZCAo
c2tiLT51c2VycyA+IDEpIHdoaWxlIGVucXVldWVkIGluCj4gPiBtdWx0aXBsZSBwbGFjZXMgKGJy
aWRnZSBsb2NhbCBpbnB1dCBhbmQgYnIgZm9yd2FyZC9mbG9vZCB0byB0dW4KPiA+IGRldmljZSku
IEkgYXVkaXRlZCB0aGUgYnJpZGdlIG1jIGZsb29kaW5nIGNvZGUsIGFuZCBJIGNvdWxkIG5vdCBm
aW5kCj4gPiBob3cgYSBzaGFyZWQgc2tiIGNvdWxkIGxhbmQgaW50byB0aGUgbG9jYWwgaW5wdXQg
cGF0aC4KPiA+IAo+ID4gQW55d2F5IHRoZSBvdGhlciBzcGxhdHMgcmVwb3J0ZWQgaGVyZSBhbmQg
aW4gbGF0ZXIgZW1haWxzIGFyZQo+ID4gY29tcGF0aWJsZSB3aXRoIHNoYXJlZCBza2JzLgo+ID4g
Cj4gPiBUaGUgYWJvdmUgbGVhZHMgdG8gYW5vdGhlciBidW5jaCBvZiBxdWVzdGlvbnM6Cj4gPiAq
IGNhbiB5b3UgcmVwcm9kdWNlIHRoZSBpc3N1ZSBhZnRlciBkaXNhYmxpbmcgJ3J4LWdyby1saXN0
JyBvbiB0aGUKPiA+IGluZ3Jlc3MgZGV2aWNlPyAod2hpbGUga2VlcGluZyAncngtdWRwLWdyby1m
b3J3YXJkaW5nJyBvbikuCj4gCj4gV2l0aCByeC1ncm8tbGlzdCBvZmYsIGFzIGluIG5ldmVyIHR1
cm5lZCBvbiwgZXZlcnl0aGluZyBzZWVtcyB0byBydW4gZmluZQo+IAo+ID4gKiBkbyB5b3UgaGF2
ZSBieSBjaGFuY2UgcWRpc2NzIG9uIHRvcCBvZiB0aGUgVk0gdHVuIGRldmljZXM/Cj4gCj4gZGVm
YXVsdCBxZGlzYyBpcyBmcQoKSUlSQyBsaWJ2aXJ0IGNvdWxkIHJlc2V0IHRoZSBxZGlzYyB0byBu
b3F1ZXVlIGZvciB0aGUgb3duZWQgdHVuCmRldmljZXMuCgpDb3VsZCB5b3UgcGxlYXNlIHJlcG9y
dCB0aGUgb3V0cHV0IG9mOgoKdGMgLWQgLXMgcWRpc2Mgc2hvdyBkZXYgPHR1biBkZXYgbmFtZT4K
ClRoYW5rcyEKCi9QCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
