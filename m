Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C45077482EA
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jul 2023 13:32:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A8D2440905;
	Wed,  5 Jul 2023 11:32:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A8D2440905
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688556746;
	bh=OCS2JaQLH0voZyl1X6fX3b0ULJXmxamQ1R/+p7AcNxI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zOQo6wjkALeZ8aBQBqbgOgcMUb2ConI701Yz2Pzkkqv4eLmpyRsj5h6r28rC5JzAH
	 CMX14vM8Gbvq3vS0jGhWqx6B5eXg+3Xbt997+/9+bipJIVyl8HsTAVoB3RtOSJ6q7p
	 ILVYDYhcxk/amTrksb+7WOV4TSjWOy3j6wsm2Mre3GZOQjppadM5y040jnhiBKUn5n
	 OIu6OZWNWsu+1mMqM7+h51e8OLtY7R2nUGmTqR6TvwkA8JofUUxbpT0eJdlmnw3ZlM
	 vPrOHf/JgxxK7mo07qz0iJlMZOFjYRVL6Ge3Abp4ME66ElTFyeFHpBqnbWUpOp/Vz6
	 MuzmO5YzZf1dQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mmdhFs5G3lGV; Wed,  5 Jul 2023 11:32:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 386DA40900;
	Wed,  5 Jul 2023 11:32:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 386DA40900
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1B2D51BF5DD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 11:32:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DFC5F40900
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 11:32:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DFC5F40900
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0SqFKycqE-jd for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jul 2023 11:32:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C92C408E7
Received: from mail-vs1-xe2a.google.com (mail-vs1-xe2a.google.com
 [IPv6:2607:f8b0:4864:20::e2a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6C92C408E7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 11:32:18 +0000 (UTC)
Received: by mail-vs1-xe2a.google.com with SMTP id
 ada2fe7eead31-440c5960b58so1983453137.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 05 Jul 2023 04:32:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688556737; x=1691148737;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=8UPFOtJ/1P+Kya9sAeKB3ss7jxb+Td3mNLUw65FXVZE=;
 b=SvBgSXT4DlBJPGf2wfACJTtueQ4rL+pOCmQuHEk8QOdVnYi3fqVcxbkUw5P6Hw27C0
 qJPYHpbhbpbM74CrJwG6OxjwhWF1Un0+U2eUAJomgRRRUm2kww1/8tBTv7rohGfRRGz1
 jylx4UV2i6mDtge5mz+O+6BCV/crqU3UvfnZeUVEk7nDt6lErniMCmwsaypBhK1K8kKC
 c5zlvhHlrT8ritbt6pBVofa8KSIxS/KANaNZkoabkWmJeVP5g1liEcOl1GBYOr4raZ0r
 bcwTtoS9srTPD6EAaaYQiBgnmJjtJE5Rlzl/zvyVGvL8BLZo2TzrNcVoOYJmk4H6cjYU
 PTOQ==
X-Gm-Message-State: ABy/qLbiBdCUAzqy9SBE6sZAn5bDzPMYWE2ywKw6+hCBdW45GjyAC7BJ
 BdrlqtTfGsZB7/1Z8uvIOXVUvwUehr+26Oh4UL0=
X-Google-Smtp-Source: APBJJlF0hWbdvodH2g95WBviS61zOGFQ9d1/z1V8mJ5O9ZaBq0Aq2eSqb143Uh5C9R4ktk2KV07RMhD6X7qGorlOS3U=
X-Received: by 2002:a67:ad0b:0:b0:444:d19c:8fed with SMTP id
 t11-20020a67ad0b000000b00444d19c8fedmr4895498vsl.27.1688556737167; Wed, 05
 Jul 2023 04:32:17 -0700 (PDT)
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
In-Reply-To: <d9bf21296a4691ac5aca11ccd832765b262f7088.camel@redhat.com>
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Wed, 5 Jul 2023 13:32:05 +0200
Message-ID: <CAA85sZsidN4ig=RaQ34PYFjnZGU-=zqR=r-5za=G4oeAtxDA7g@mail.gmail.com>
To: Paolo Abeni <pabeni@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1688556737; x=1691148737;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8UPFOtJ/1P+Kya9sAeKB3ss7jxb+Td3mNLUw65FXVZE=;
 b=ESpveTcNMTg2mV5NGM/HfQrKl9BdxreUVnQ2sVGv7BnhSpNl9NSD+XsDL1c29JZT4W
 dHaO3ha+964ysYnoo1hoSorY68xHBIR2yp04DR1nhZxrEmnY/3Woh2VcvysAV1/3PE9T
 4oxp67ZpwHB4gmFGZXm8h9wCX7VpE7j3YWoGSHhWAHECNt43FrOlciCizhyDQna8HRCv
 nvpFefyAlRF8Nm/OwzOEq+vENVZguAGFGKUxe9cgeGUPJ4mnozuNr3J/1Hskbm/FTs8r
 19Jps3LAyQCxhfCnUU0EXQ9BoWPiTjaXIb1XuTTeCDGa/A26anM8nrkFfHUM0nE8ytRq
 +KiA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=ESpveTcN
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

T24gV2VkLCBKdWwgNSwgMjAyMyBhdCAxMjoyOOKAr1BNIFBhb2xvIEFiZW5pIDxwYWJlbmlAcmVk
aGF0LmNvbT4gd3JvdGU6Cj4KPiBPbiBUdWUsIDIwMjMtMDctMDQgYXQgMTY6MjcgKzAyMDAsIElh
biBLdW1saWVuIHdyb3RlOgo+ID4gTW9yZSBzdGFja3RyYWNlcy4uID0pCj4gPgo+ID4gY2F0IGJ1
Zy50eHQgfCAuL3NjcmlwdHMvZGVjb2RlX3N0YWNrdHJhY2Uuc2ggdm1saW51eAo+ID4gWyAgNDEx
LjQxMzc2N10gLS0tLS0tLS0tLS0tWyBjdXQgaGVyZSBdLS0tLS0tLS0tLS0tCj4gPiBbICA0MTEu
NDEzNzkyXSBXQVJOSU5HOiBDUFU6IDkgUElEOiA5NDIgYXQgaW5jbHVkZS9uZXQvdWQgICAgIHAu
aDo1MDkKPiA+IHVkcHY2X3F1ZXVlX3Jjdl9za2IgKC4vaW5jbHVkZS9uZXQvdWRwLmg6NTA5IG5l
dC9pcHY2L3VkcC5jOjgwMAo+ID4gbmV0L2lwdjYvdWRwLmM6Nzg3KQo+Cj4gSSdtIHJlYWxseSBy
dW5uaW5nIG91dCBvZiBpZGVhcyBoZXJlLi4uCj4KPiBUaGlzIGlzOgo+Cj4gICAgICAgICBXQVJO
X09OX09OQ0UoVURQX1NLQl9DQihza2IpLT5wYXJ0aWFsX2Nvdik7Cj4KPiBzb3J0IG9mIGhpbnQg
c2tiIGJlaW5nIHNoYXJlZCAoc2tiLT51c2VycyA+IDEpIHdoaWxlIGVucXVldWVkIGluCj4gbXVs
dGlwbGUgcGxhY2VzIChicmlkZ2UgbG9jYWwgaW5wdXQgYW5kIGJyIGZvcndhcmQvZmxvb2QgdG8g
dHVuCj4gZGV2aWNlKS4gSSBhdWRpdGVkIHRoZSBicmlkZ2UgbWMgZmxvb2RpbmcgY29kZSwgYW5k
IEkgY291bGQgbm90IGZpbmQKPiBob3cgYSBzaGFyZWQgc2tiIGNvdWxkIGxhbmQgaW50byB0aGUg
bG9jYWwgaW5wdXQgcGF0aC4KPgo+IEFueXdheSB0aGUgb3RoZXIgc3BsYXRzIHJlcG9ydGVkIGhl
cmUgYW5kIGluIGxhdGVyIGVtYWlscyBhcmUKPiBjb21wYXRpYmxlIHdpdGggc2hhcmVkIHNrYnMu
Cj4KPiBUaGUgYWJvdmUgbGVhZHMgdG8gYW5vdGhlciBidW5jaCBvZiBxdWVzdGlvbnM6Cj4gKiBj
YW4geW91IHJlcHJvZHVjZSB0aGUgaXNzdWUgYWZ0ZXIgZGlzYWJsaW5nICdyeC1ncm8tbGlzdCcg
b24gdGhlCj4gaW5ncmVzcyBkZXZpY2U/ICh3aGlsZSBrZWVwaW5nICdyeC11ZHAtZ3JvLWZvcndh
cmRpbmcnIG9uKS4KCldpdGggcngtZ3JvLWxpc3Qgb2ZmLCBhcyBpbiBuZXZlciB0dXJuZWQgb24s
IGV2ZXJ5dGhpbmcgc2VlbXMgdG8gcnVuIGZpbmUKCj4gKiBkbyB5b3UgaGF2ZSBieSBjaGFuY2Ug
cWRpc2NzIG9uIHRvcCBvZiB0aGUgVk0gdHVuIGRldmljZXM/CgpkZWZhdWx0IHFkaXNjIGlzIGZx
Cgo+IFRoZSBsYXN0IHBhdGNoIEkgc2hhcmVkIHdhcyBidWdneSwgYXMgaXQgYXR0ZW1wdHMgdG8g
dW5jbG9uZSB0aGUgc2tiCj4gYWZ0ZXIgYWxyZWFkeSB0b3VjaGluZyBza2Jfc2hhcmVkX2luZm8u
Cj4KPiBDb3VsZCB5b3UgcGxlYXNlIHJlcGxhY2Ugc3VjaCBwYXRjaCB3aXRoIHRoZSBmb2xsb3dp
bmc/CgpXaWxsIGRvLCBidWlsZGluZyBhdG0KCj4gVGhhbmtzIQo+Cj4gUGFvbG8KPiAtLS0KPiBk
aWZmIC0tZ2l0IGEvbmV0L2NvcmUvc2tidWZmLmMgYi9uZXQvY29yZS9za2J1ZmYuYwo+IGluZGV4
IDZjNTkxNWVmYmMxNy4uMGIwZjQzMDk1MDZkIDEwMDY0NAo+IC0tLSBhL25ldC9jb3JlL3NrYnVm
Zi5jCj4gKysrIGIvbmV0L2NvcmUvc2tidWZmLmMKPiBAQCAtNDI2MSw2ICs0MjYxLDE3IEBAIHN0
cnVjdCBza19idWZmICpza2Jfc2VnbWVudF9saXN0KHN0cnVjdCBza19idWZmICpza2IsCj4KPiAg
ICAgICAgIHNrYl9wdXNoKHNrYiwgLXNrYl9uZXR3b3JrX29mZnNldChza2IpICsgb2Zmc2V0KTsK
Pgo+ICsgICAgICAgaWYgKFdBUk5fT05fT05DRShza2Jfc2hhcmVkKHNrYikpKSB7Cj4gKyAgICAg
ICAgICAgICAgIHNrYiA9IHNrYl9zaGFyZV9jaGVjayhza2IsIEdGUF9BVE9NSUMpOwo+ICsgICAg
ICAgICAgICAgICBpZiAoIXNrYikKPiArICAgICAgICAgICAgICAgICAgICAgICBnb3RvIGVycl9s
aW5lYXJpemU7Cj4gKyAgICAgICB9Cj4gKwo+ICsgICAgICAgLyogbGF0ZXIgY29kZSB3aWxsIGNs
ZWFyIHRoZSBnc28gYXJlYSBpbiB0aGUgc2hhcmVkIGluZm8gKi8KPiArICAgICAgIGVyciA9IHNr
Yl91bmNsb25lKHNrYiwgR0ZQX0FUT01JQyk7Cj4gKyAgICAgICBpZiAoZXJyKQo+ICsgICAgICAg
ICAgICAgICBnb3RvIGVycl9saW5lYXJpemU7Cj4gKwo+ICAgICAgICAgc2tiX3NoaW5mbyhza2Ip
LT5mcmFnX2xpc3QgPSBOVUxMOwo+Cj4gICAgICAgICB3aGlsZSAobGlzdF9za2IpIHsKPgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
