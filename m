Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F17B1748596
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jul 2023 15:59:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 02BC5402A6;
	Wed,  5 Jul 2023 13:59:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 02BC5402A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688565545;
	bh=e9im+QNw06pbk50YiUzRJRDWlzjiD2RjFBcyKCUlODU=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kjbT5riefsAm70a8/bndBXi7+xyZmTYEEqxV2OsvsJ1GEwuseg58KBMckM4papCih
	 FAy1R2T8CEBJbfKI3KYzyFlyJtWllQhsa98rdlklo3m5dOkSGiohDEMws+FoqshHoP
	 R6p4jlh/nD09q+uTeK1ZJGMs/6aBgnNq96BBR65xGh77tNNNEsAdTFVAIhxTN2jk5J
	 oYEJJUjKn/O08DEW1CAdb9dpEl4wqDfp7yQr7n9rMU1lc1D//Lg3KaB62Dxx2lY7CM
	 dM6j4os4v6XH9jEOUwNwvrKm291HIEBkr3EyhroQB95vf/a5FmM7BL8KgU7R/P/1l2
	 JDxydeIarXPTA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fxlgClmoSHqG; Wed,  5 Jul 2023 13:59:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 98DCF40093;
	Wed,  5 Jul 2023 13:59:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 98DCF40093
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B20851BF5A1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 13:58:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8A2DF40CA7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 13:58:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A2DF40CA7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V8tDwlqmxM2L for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jul 2023 13:58:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D1B944052C
Received: from mail-vk1-xa33.google.com (mail-vk1-xa33.google.com
 [IPv6:2607:f8b0:4864:20::a33])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D1B944052C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 13:58:56 +0000 (UTC)
Received: by mail-vk1-xa33.google.com with SMTP id
 71dfb90a1353d-47dcf42d3a0so529885e0c.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 05 Jul 2023 06:58:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688565535; x=1691157535;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=NmFh+BQT1+pGjJ/ogkEF9g/4D4Q9jOcfYFATuZt2yWQ=;
 b=iuVaSbH0P4VWll/VpdVAricgbHxyznqabBITQlKQjHF5F9iJx34W5ghcKTNu04x3dB
 swmXS5RTMNMUpBeTBtRLvx5HqOzapPcmdYnxsjIGGyJAVGY/bkpMMNL4okZmAO2HFe2+
 xxOP21tfRD6Gp+I6xW/+G1vENF3e5ExRRcK/a/iBqr0+8h5ZxxAVnRd1+G+6ewgAzI+Z
 YIUuwpHgztDSCXbH2ub/Vi1OLw06id5Rzc4Qljwhpu/qLR4f1kws2DiyQQ4f1qDMNPyS
 IG4iRdEQ0YLvGMIi5fXwtiooDV6VyIv1+FXqIocEAMt0n1U8Q7kwuKy5hFq9zSqGPq6u
 jXqQ==
X-Gm-Message-State: ABy/qLZVLL6Z8iX0jsQsLTRy6LI9olfD+l71KGrBWbQQzngOnX0dazlP
 GhsDyfsxfoDhsho6Hm+cNlmKp4NctQ/2No/m4z4=
X-Google-Smtp-Source: APBJJlH7sDTWvrcXOuG1twI0e6GfuI+IdpsQFIfNSBMaMdkOlCrqn3cUimp07Xml2NqrSQ4RQYxjT0WjMjD9z4d4liI=
X-Received: by 2002:a1f:9bc9:0:b0:477:4872:7f9d with SMTP id
 d192-20020a1f9bc9000000b0047748727f9dmr663119vke.4.1688565535543; Wed, 05 Jul
 2023 06:58:55 -0700 (PDT)
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
In-Reply-To: <14cd6a50bd5de13825017b75c98cb3115e84acc1.camel@redhat.com>
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Wed, 5 Jul 2023 15:58:43 +0200
Message-ID: <CAA85sZuZLg+L7Sr51PPaOkPKbbiywXbbKzhTyjaw12_S6CsZHQ@mail.gmail.com>
To: Paolo Abeni <pabeni@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1688565535; x=1691157535;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NmFh+BQT1+pGjJ/ogkEF9g/4D4Q9jOcfYFATuZt2yWQ=;
 b=HJi4haiCbFAKGCKMOQBx1dDphE8VEGpf+ciCnU4qW+jraWtXDJ7ajtTNWFudIJTAV2
 9YkziI0pu2awYR4WUWueHQg3NFmd7HkMzyYPCGQyBQTDA6pf3GvRf5nz+wwPZCoP0tqS
 +py/7LH8Nnqqn2hOUfdMUfYHfsOE7dgokCSnFnyohQfqHtk0ZxIa678FoF2wWJTLIli3
 CIWd5JL4dM1/LkhZRwELrGN7RrEqmMC5qPlPxwJSg8ArXE3XXGbHKn0vsWR4OVaqefoW
 htlwrD62c/Vi/GyMBdfAHXHvSOEKW34w2uW662YEQ/E1kAKKlhpyJuhyaB5S60GAiLfM
 sbjA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=HJi4haiC
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

T24gV2VkLCBKdWwgNSwgMjAyMyBhdCAzOjI54oCvUE0gUGFvbG8gQWJlbmkgPHBhYmVuaUByZWRo
YXQuY29tPiB3cm90ZToKPgo+IE9uIFdlZCwgMjAyMy0wNy0wNSBhdCAxMzozMiArMDIwMCwgSWFu
IEt1bWxpZW4gd3JvdGU6Cj4gPiBPbiBXZWQsIEp1bCA1LCAyMDIzIGF0IDEyOjI44oCvUE0gUGFv
bG8gQWJlbmkgPHBhYmVuaUByZWRoYXQuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gT24gVHVlLCAy
MDIzLTA3LTA0IGF0IDE2OjI3ICswMjAwLCBJYW4gS3VtbGllbiB3cm90ZToKPiA+ID4gPiBNb3Jl
IHN0YWNrdHJhY2VzLi4gPSkKPiA+ID4gPgo+ID4gPiA+IGNhdCBidWcudHh0IHwgLi9zY3JpcHRz
L2RlY29kZV9zdGFja3RyYWNlLnNoIHZtbGludXgKPiA+ID4gPiBbICA0MTEuNDEzNzY3XSAtLS0t
LS0tLS0tLS1bIGN1dCBoZXJlIF0tLS0tLS0tLS0tLS0KPiA+ID4gPiBbICA0MTEuNDEzNzkyXSBX
QVJOSU5HOiBDUFU6IDkgUElEOiA5NDIgYXQgaW5jbHVkZS9uZXQvdWQgICAgIHAuaDo1MDkKPiA+
ID4gPiB1ZHB2Nl9xdWV1ZV9yY3Zfc2tiICguL2luY2x1ZGUvbmV0L3VkcC5oOjUwOSBuZXQvaXB2
Ni91ZHAuYzo4MDAKPiA+ID4gPiBuZXQvaXB2Ni91ZHAuYzo3ODcpCj4gPiA+Cj4gPiA+IEknbSBy
ZWFsbHkgcnVubmluZyBvdXQgb2YgaWRlYXMgaGVyZS4uLgo+ID4gPgo+ID4gPiBUaGlzIGlzOgo+
ID4gPgo+ID4gPiAgICAgICAgIFdBUk5fT05fT05DRShVRFBfU0tCX0NCKHNrYiktPnBhcnRpYWxf
Y292KTsKPiA+ID4KPiA+ID4gc29ydCBvZiBoaW50IHNrYiBiZWluZyBzaGFyZWQgKHNrYi0+dXNl
cnMgPiAxKSB3aGlsZSBlbnF1ZXVlZCBpbgo+ID4gPiBtdWx0aXBsZSBwbGFjZXMgKGJyaWRnZSBs
b2NhbCBpbnB1dCBhbmQgYnIgZm9yd2FyZC9mbG9vZCB0byB0dW4KPiA+ID4gZGV2aWNlKS4gSSBh
dWRpdGVkIHRoZSBicmlkZ2UgbWMgZmxvb2RpbmcgY29kZSwgYW5kIEkgY291bGQgbm90IGZpbmQK
PiA+ID4gaG93IGEgc2hhcmVkIHNrYiBjb3VsZCBsYW5kIGludG8gdGhlIGxvY2FsIGlucHV0IHBh
dGguCj4gPiA+Cj4gPiA+IEFueXdheSB0aGUgb3RoZXIgc3BsYXRzIHJlcG9ydGVkIGhlcmUgYW5k
IGluIGxhdGVyIGVtYWlscyBhcmUKPiA+ID4gY29tcGF0aWJsZSB3aXRoIHNoYXJlZCBza2JzLgo+
ID4gPgo+ID4gPiBUaGUgYWJvdmUgbGVhZHMgdG8gYW5vdGhlciBidW5jaCBvZiBxdWVzdGlvbnM6
Cj4gPiA+ICogY2FuIHlvdSByZXByb2R1Y2UgdGhlIGlzc3VlIGFmdGVyIGRpc2FibGluZyAncngt
Z3JvLWxpc3QnIG9uIHRoZQo+ID4gPiBpbmdyZXNzIGRldmljZT8gKHdoaWxlIGtlZXBpbmcgJ3J4
LXVkcC1ncm8tZm9yd2FyZGluZycgb24pLgo+ID4KPiA+IFdpdGggcngtZ3JvLWxpc3Qgb2ZmLCBh
cyBpbiBuZXZlciB0dXJuZWQgb24sIGV2ZXJ5dGhpbmcgc2VlbXMgdG8gcnVuIGZpbmUKPiA+Cj4g
PiA+ICogZG8geW91IGhhdmUgYnkgY2hhbmNlIHFkaXNjcyBvbiB0b3Agb2YgdGhlIFZNIHR1biBk
ZXZpY2VzPwo+ID4KPiA+IGRlZmF1bHQgcWRpc2MgaXMgZnEKPgo+IElJUkMgbGlidmlydCBjb3Vs
ZCByZXNldCB0aGUgcWRpc2MgdG8gbm9xdWV1ZSBmb3IgdGhlIG93bmVkIHR1bgo+IGRldmljZXMu
Cj4KPiBDb3VsZCB5b3UgcGxlYXNlIHJlcG9ydCB0aGUgb3V0cHV0IG9mOgo+Cj4gdGMgLWQgLXMg
cWRpc2Mgc2hvdyBkZXYgPHR1biBkZXYgbmFtZT4KCkkgZG9uJ3QgaGF2ZSB0aGVzZSBzZXQ6CkNP
TkZJR19ORVRfU0NIX0lOR1JFU1MKQ09ORklHX05FVF9TQ0hFRAoKc28gdGMganVzdCBnaXZlcyBh
biBlcnJvci4uLgoKPiBUaGFua3MhCj4KPiAvUAo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
