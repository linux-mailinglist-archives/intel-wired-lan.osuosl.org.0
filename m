Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 011D87497A0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jul 2023 10:42:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 75137409BE;
	Thu,  6 Jul 2023 08:42:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 75137409BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688632975;
	bh=C/6ZKUq4FSSfPBgvW9qxDpIvWyWZsqdIDzsfghE8AV8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nQLWZESl4axTb0CWODsd4wsKjIghc/RfTQ5wnFIs82asU4Pyb6Ji7b/6caxHEHnN9
	 uod2IkI0zDQVfjFfAXeXQKg9eA2zDz81gTBbcefh5g8DGlRfaFGmgESRuT/BuEZM1y
	 5uIVnO1H6GdeiZ2zOQMoOw6iRlhascnYm1usDIhhpy6hokOQONw9MgW3SbUVNRw0D/
	 31ffjgyQwtAzZVP+iOkohBhbmGL3Q3FgQgy0ErYf7wVMrmwrumCG+uLleIKHtgaEwb
	 7PFklWOYmGCqAa5rLATgRg/fT7ttzwRjrTU/1k3DVQGcBU5gsM9WT7Lfj9uQu+T1fC
	 uJMSM/dDTVWfA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Uarz4ruO16Hu; Thu,  6 Jul 2023 08:42:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F33F5400EA;
	Thu,  6 Jul 2023 08:42:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F33F5400EA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 162A71BF575
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 08:42:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E21A16109A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 08:42:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E21A16109A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lXuxKC2QXMfo for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jul 2023 08:42:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 13B0A61098
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 13B0A61098
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 08:42:46 +0000 (UTC)
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-302-cXNjslpSNpaGO8xjzmiDyw-1; Thu, 06 Jul 2023 04:42:44 -0400
X-MC-Unique: cXNjslpSNpaGO8xjzmiDyw-1
Received: by mail-qk1-f197.google.com with SMTP id
 af79cd13be357-765ad67e600so11538185a.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Jul 2023 01:42:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688632964; x=1691224964;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=u6rDF3CskNlnocyiQd+/MQFl4wcMc6bzpk2CUQ+RXxc=;
 b=SqFKTqO/JyUvtQoteeuKlIJzSSXAIH8SnkocgUFulSyeAQ0VzACdwt+oqzZXU7dJtF
 fIKFEc4ZFQqtdEHur81AFDbumgCs6E/NQrLE18i6LekShtoZ8CL17R/HAbqN2p563M5e
 RpN/gjD4EZbXhTyYM10Ll4+UV+xUv846nECoAOUykRwzaysiPH4jdx6O90OsuelVrUqc
 2FkSlcF2BVoUSk715gtZPr1riipSgRmilPr1mBgkSK1dDUEkMVVpGxnuk3Kkk2+ydDUq
 nJ6n5Yv6KdEOdc/T9BpiPsHFa7DRhUy59DvJSpPVJf6yJL+iKB+bLwVwAPfF5VAtPHBk
 vseg==
X-Gm-Message-State: ABy/qLY1pSDSynz2qMmV8/6cZPWwXn5vA1VpuY6TPjaECKDPdEmpJ1NE
 30OHAy7ZRg/OQJf+/sHqnbd2mZ2IR5XchVVWcNC8wV6a4C/o5fxfpnc94FZgQnjv3LBzvmebD6K
 KFbvWugrGL44Wf9ZDtklQLbGclXZmUg==
X-Received: by 2002:a05:620a:40c2:b0:765:9e34:a77e with SMTP id
 g2-20020a05620a40c200b007659e34a77emr1523538qko.2.1688632964083; 
 Thu, 06 Jul 2023 01:42:44 -0700 (PDT)
X-Google-Smtp-Source: APBJJlFzgaYXclsPfL9sEoyaeA9jji27GaEyrb+cFPy2fXy0aidVV/TNS07gc7ReWtcD6iCG08YP1Q==
X-Received: by 2002:a05:620a:40c2:b0:765:9e34:a77e with SMTP id
 g2-20020a05620a40c200b007659e34a77emr1523521qko.2.1688632963710; 
 Thu, 06 Jul 2023 01:42:43 -0700 (PDT)
Received: from gerbillo.redhat.com
 (host-95-248-55-118.retail.telecomitalia.it. [95.248.55.118])
 by smtp.gmail.com with ESMTPSA id
 i22-20020ae9ee16000000b00767765561absm512848qkg.100.2023.07.06.01.42.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Jul 2023 01:42:43 -0700 (PDT)
Message-ID: <c6cf7b4c0a561700d2015c970d52fc9d92b114c7.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Ian Kumlien <ian.kumlien@gmail.com>
Date: Thu, 06 Jul 2023 10:42:38 +0200
In-Reply-To: <CAA85sZuZLg+L7Sr51PPaOkPKbbiywXbbKzhTyjaw12_S6CsZHQ@mail.gmail.com>
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
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1688632965;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=u6rDF3CskNlnocyiQd+/MQFl4wcMc6bzpk2CUQ+RXxc=;
 b=Ht273YKvwoq8jpbfGh1ihE5QZjVpUI1PAFktjR8gue1rd3RIsvNuefkTh2s0aHm6bRU/Zv
 /LXe85U7RmXmHQZSswGvGksSJXd0NR7LEygu/MsZB7/o0hy4+OjrSUOAmzy9t6DW19JpiN
 fteoUwL3Owow02jTyC8d40nV0NNciNQ=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Ht273YKv
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

T24gV2VkLCAyMDIzLTA3LTA1IGF0IDE1OjU4ICswMjAwLCBJYW4gS3VtbGllbiB3cm90ZToKPiBP
biBXZWQsIEp1bCA1LCAyMDIzIGF0IDM6MjnigK9QTSBQYW9sbyBBYmVuaSA8cGFiZW5pQHJlZGhh
dC5jb20+IHdyb3RlOgo+ID4gCj4gPiBPbiBXZWQsIDIwMjMtMDctMDUgYXQgMTM6MzIgKzAyMDAs
IElhbiBLdW1saWVuIHdyb3RlOgo+ID4gPiBPbiBXZWQsIEp1bCA1LCAyMDIzIGF0IDEyOjI44oCv
UE0gUGFvbG8gQWJlbmkgPHBhYmVuaUByZWRoYXQuY29tPiB3cm90ZToKPiA+ID4gPiAKPiA+ID4g
PiBPbiBUdWUsIDIwMjMtMDctMDQgYXQgMTY6MjcgKzAyMDAsIElhbiBLdW1saWVuIHdyb3RlOgo+
ID4gPiA+ID4gTW9yZSBzdGFja3RyYWNlcy4uID0pCj4gPiA+ID4gPiAKPiA+ID4gPiA+IGNhdCBi
dWcudHh0IHwgLi9zY3JpcHRzL2RlY29kZV9zdGFja3RyYWNlLnNoIHZtbGludXgKPiA+ID4gPiA+
IFsgIDQxMS40MTM3NjddIC0tLS0tLS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLQo+ID4g
PiA+ID4gWyAgNDExLjQxMzc5Ml0gV0FSTklORzogQ1BVOiA5IFBJRDogOTQyIGF0IGluY2x1ZGUv
bmV0L3VkICAgICBwLmg6NTA5Cj4gPiA+ID4gPiB1ZHB2Nl9xdWV1ZV9yY3Zfc2tiICguL2luY2x1
ZGUvbmV0L3VkcC5oOjUwOSBuZXQvaXB2Ni91ZHAuYzo4MDAKPiA+ID4gPiA+IG5ldC9pcHY2L3Vk
cC5jOjc4NykKPiA+ID4gPiAKPiA+ID4gPiBJJ20gcmVhbGx5IHJ1bm5pbmcgb3V0IG9mIGlkZWFz
IGhlcmUuLi4KPiA+ID4gPiAKPiA+ID4gPiBUaGlzIGlzOgo+ID4gPiA+IAo+ID4gPiA+ICAgICAg
ICAgV0FSTl9PTl9PTkNFKFVEUF9TS0JfQ0Ioc2tiKS0+cGFydGlhbF9jb3YpOwo+ID4gPiA+IAo+
ID4gPiA+IHNvcnQgb2YgaGludCBza2IgYmVpbmcgc2hhcmVkIChza2ItPnVzZXJzID4gMSkgd2hp
bGUgZW5xdWV1ZWQgaW4KPiA+ID4gPiBtdWx0aXBsZSBwbGFjZXMgKGJyaWRnZSBsb2NhbCBpbnB1
dCBhbmQgYnIgZm9yd2FyZC9mbG9vZCB0byB0dW4KPiA+ID4gPiBkZXZpY2UpLiBJIGF1ZGl0ZWQg
dGhlIGJyaWRnZSBtYyBmbG9vZGluZyBjb2RlLCBhbmQgSSBjb3VsZCBub3QgZmluZAo+ID4gPiA+
IGhvdyBhIHNoYXJlZCBza2IgY291bGQgbGFuZCBpbnRvIHRoZSBsb2NhbCBpbnB1dCBwYXRoLgo+
ID4gPiA+IAo+ID4gPiA+IEFueXdheSB0aGUgb3RoZXIgc3BsYXRzIHJlcG9ydGVkIGhlcmUgYW5k
IGluIGxhdGVyIGVtYWlscyBhcmUKPiA+ID4gPiBjb21wYXRpYmxlIHdpdGggc2hhcmVkIHNrYnMu
Cj4gPiA+ID4gCj4gPiA+ID4gVGhlIGFib3ZlIGxlYWRzIHRvIGFub3RoZXIgYnVuY2ggb2YgcXVl
c3Rpb25zOgo+ID4gPiA+ICogY2FuIHlvdSByZXByb2R1Y2UgdGhlIGlzc3VlIGFmdGVyIGRpc2Fi
bGluZyAncngtZ3JvLWxpc3QnIG9uIHRoZQo+ID4gPiA+IGluZ3Jlc3MgZGV2aWNlPyAod2hpbGUg
a2VlcGluZyAncngtdWRwLWdyby1mb3J3YXJkaW5nJyBvbikuCj4gPiA+IAo+ID4gPiBXaXRoIHJ4
LWdyby1saXN0IG9mZiwgYXMgaW4gbmV2ZXIgdHVybmVkIG9uLCBldmVyeXRoaW5nIHNlZW1zIHRv
IHJ1biBmaW5lCj4gPiA+IAo+ID4gPiA+ICogZG8geW91IGhhdmUgYnkgY2hhbmNlIHFkaXNjcyBv
biB0b3Agb2YgdGhlIFZNIHR1biBkZXZpY2VzPwo+ID4gPiAKPiA+ID4gZGVmYXVsdCBxZGlzYyBp
cyBmcQo+ID4gCj4gPiBJSVJDIGxpYnZpcnQgY291bGQgcmVzZXQgdGhlIHFkaXNjIHRvIG5vcXVl
dWUgZm9yIHRoZSBvd25lZCB0dW4KPiA+IGRldmljZXMuCj4gPiAKPiA+IENvdWxkIHlvdSBwbGVh
c2UgcmVwb3J0IHRoZSBvdXRwdXQgb2Y6Cj4gPiAKPiA+IHRjIC1kIC1zIHFkaXNjIHNob3cgZGV2
IDx0dW4gZGV2IG5hbWU+Cj4gCj4gSSBkb24ndCBoYXZlIHRoZXNlIHNldDoKPiBDT05GSUdfTkVU
X1NDSF9JTkdSRVNTCj4gQ09ORklHX05FVF9TQ0hFRAo+IAo+IHNvIHRjIGp1c3QgZ2l2ZXMgYW4g
ZXJyb3IuLi4KClRoZSBhYm92ZSBpcyBjb25mdXNpbmcuIEFTIENPTkZJR19ORVRfU0NIX0RFRkFV
TFQgZGVwZW5kcyBvbgpDT05GSUdfTkVUX1NDSEVELCB5b3Ugc2hvdWxkIG5vdCBoYXZlIGEgZGVm
YXVsdCBxZGlzYywgdG9vIDspCgpDb3VsZCB5b3UgcGxlYXNlIHNoYXJlIHlvdXIga2VybmVsIGNv
bmZpZz8KClRoYW5rcyEKCi9QCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
