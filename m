Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD067C417C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Oct 2023 22:41:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC58F60FBE;
	Tue, 10 Oct 2023 20:41:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC58F60FBE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696970487;
	bh=DkBKD7zVQUm8od1r1BAuUL4hYmyFRedkgT7jaNIXtko=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a/6FyfRLKy4RYCPmoM6lgysT+DXsaU6NWoJWQg8mHn4Z1dtcgGlAQFje/Bfpckpxc
	 lyFoyi8r1KMSatWfic4ExhoibWfxNS47MEuXV9uCpYLVInFvDnDjkV2BMnfpINFMud
	 TpF6ICcOjo+bb4pOTv7fZz89mzRlx79ufIHqpBMJd/aFnem3oKNdNfTenjq3bDA08O
	 hORadqpFc2EuLxI2fjZBPOPg/X/tlRt2fb9CywGotb//WmyR4DPcXO4J3E4SKp0+Fu
	 Og4eIOxVv7vJ+Yd09eBdpgD2mK6cJS2awvEW27Kf8wKQc9x0/76tGIJ94jzl99G0Gy
	 wt7gtvcQxRPSg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1setOKQ_3uYI; Tue, 10 Oct 2023 20:41:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD8BD60F96;
	Tue, 10 Oct 2023 20:41:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD8BD60F96
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6412B1BF389
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 20:41:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3C2F94090E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 20:41:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3C2F94090E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8MJ-9KHtqeqf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 20:41:20 +0000 (UTC)
Received: from mail-vs1-xe2b.google.com (mail-vs1-xe2b.google.com
 [IPv6:2607:f8b0:4864:20::e2b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 07F97400B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 20:41:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 07F97400B9
Received: by mail-vs1-xe2b.google.com with SMTP id
 ada2fe7eead31-45274236ef6so2529951137.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 13:41:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696970479; x=1697575279;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=KTF6MCoYDoeUf+zV7URO5R9YigP5bU5Jr4VwKHYzrPk=;
 b=X7SX7k/VJKS7KXSGVHIaszLW/vRauIKRw8/rXuDMrrVcU3QThQ6IzARThROizCbWwV
 xAXhsv6kIqnRFQlVowd+6llx2PXo087Krozwz3kVWa3Z3CSTcC5Mvxn8lV2IlRvsTXCr
 mFp7B35WkPW/EvY2TZCNRwu5mXgYFFjIg7Rh9eVJspgnsk2tQ2xnRdGHPfjtjcCsnDHt
 zOK3qJRWhoW/sz6ymZ7t12AdRBNGGV06edv8vTtQld+X0T49KJLkdIoqnUHe5hG167cU
 qwJ0NqEmFSXBpPfPDpplc965LY8XJ4XL0ym9wFIvFqY/eTQD/+cRFZO5QEbcwqqABpTo
 pQ/Q==
X-Gm-Message-State: AOJu0YwQXbMMBz1cSwm/FQsUwKAJZ/SmXbkThKAKqGECyvVilmb8rZa5
 oGe1/z7D/o9T0OweduTVpB+Gv6MWPnPc/ysvAas=
X-Google-Smtp-Source: AGHT+IH7+jO+GducYPOm5h1Hr2zXIUuhTzMulpkrAYoct2e/rNppCwjjo91sw9oj9ZDZLcJCNwydeSmPJbML/qoiV9A=
X-Received: by 2002:a05:6102:3169:b0:44d:48bf:591c with SMTP id
 l9-20020a056102316900b0044d48bf591cmr16921661vsm.30.1696970478566; Tue, 10
 Oct 2023 13:41:18 -0700 (PDT)
MIME-Version: 1.0
References: <20231010200437.9794-1-ahmed.zaki@intel.com>
 <20231010200437.9794-2-ahmed.zaki@intel.com>
In-Reply-To: <20231010200437.9794-2-ahmed.zaki@intel.com>
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Date: Tue, 10 Oct 2023 16:40:41 -0400
Message-ID: <CAF=yD-+=3=MqqsHESPsgD0yCQSCA9qBe1mB1OVhSYuB_GhZK6g@mail.gmail.com>
To: Ahmed Zaki <ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696970479; x=1697575279; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=KTF6MCoYDoeUf+zV7URO5R9YigP5bU5Jr4VwKHYzrPk=;
 b=RKvrQlUtgILVvWUaRLROfT/j94q+L6gGKli4hStk5+wTFfP1BLSYKEO25Vk0SYSIhh
 qgeRlx6mB2wi4AM9+9ViJByoZmAlsmcACUMtzdXXjAIn9fw/Uv33q4X5XNxIaiFOnXvI
 OgDv0hTjJJ1vD99T1QLry4mI/qsIu7RvQPhqFA8DCBD2HJjUY37wccAeP+gwFxqqmLla
 O9nUNgEQk1uRqjq0/TinPbcfeyNO7jFg6504x0EUyEKDVbyD72NcdEKL04OKqFtP2DJo
 3PjDefAx3peW8FKfGJvwLESAUaOBv8QYS/BqWlXxBjN3e1i0kl1jgLgaKbpgoEK4ESmx
 3KNg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=RKvrQlUt
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/6] net: ethtool: allow
 symmetric-xor RSS hash for any flow type
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
Cc: mkubecek@suse.cz, andrew@lunn.ch,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 vladimir.oltean@nxp.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBPY3QgMTAsIDIwMjMgYXQgNDowNeKAr1BNIEFobWVkIFpha2kgPGFobWVkLnpha2lA
aW50ZWwuY29tPiB3cm90ZToKPgo+IFN5bW1ldHJpYyBSU1MgaGFzaCBmdW5jdGlvbnMgYXJlIGJl
bmVmaWNpYWwgaW4gYXBwbGljYXRpb25zIHRoYXQgbW9uaXRvcgo+IGJvdGggVHggYW5kIFJ4IHBh
Y2tldHMgb2YgdGhlIHNhbWUgZmxvdyAoSURTLCBzb2Z0d2FyZSBmaXJld2FsbHMsIC4uZXRjKS4K
PiBHZXR0aW5nIGFsbCB0cmFmZmljIG9mIHRoZSBzYW1lIGZsb3cgb24gdGhlIHNhbWUgUlggcXVl
dWUgcmVzdWx0cyBpbgo+IGhpZ2hlciBDUFUgY2FjaGUgZWZmaWNpZW5jeS4KPgo+IEEgTklDIHRo
YXQgc3VwcG9ydHMgInN5bW1ldHJpYy14b3IiIGNhbiBhY2hpZXZlIHRoaXMgUlNTIGhhc2ggc3lt
bWV0cnkKPiBieSBYT1JpbmcgdGhlIHNvdXJjZSBhbmQgZGVzdGluYXRpb24gZmllbGRzIGFuZCBw
YXNzIHRoZSB2YWx1ZXMgdG8gdGhlCj4gUlNTIGhhc2ggYWxnb3JpdGhtLgo+Cj4gT25seSBmaWVs
ZHMgdGhhdCBoYXMgY291bnRlcnBhcnRzIGluIHRoZSBvdGhlciBkaXJlY3Rpb24gY2FuIGJlCj4g
YWNjZXB0ZWQ7IElQIHNyYy9kc3QgYW5kIEw0IHNyYy9kc3QgcG9ydHMuCj4KPiBUaGUgdXNlciBt
YXkgcmVxdWVzdCBSU1MgaGFzaCBzeW1tZXRyeSBmb3IgYSBzcGVjaWZpYyBmbG93IHR5cGUsIHZp
YToKPgo+ICAgICAjIGV0aHRvb2wgLU58LVUgZXRoMCByeC1mbG93LWhhc2ggPGZsb3dfdHlwZT4g
c3xkfGZ8biBzeW1tZXRyaWMteG9yCj4KPiBvciB0dXJuIHN5bW1ldHJ5IG9mZiAoYXN5bW1ldHJp
YykgYnk6Cj4KPiAgICAgIyBldGh0b29sIC1OfC1VIGV0aDAgcngtZmxvdy1oYXNoIDxmbG93X3R5
cGU+IHN8ZHxmfG4KPgo+IFJldmlld2VkLWJ5OiBXb2pjaWVjaCBEcmV3ZWsgPHdvamNpZWNoLmRy
ZXdla0BpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQWhtZWQgWmFraSA8YWhtZWQuemFraUBp
bnRlbC5jb20+Cj4gLS0tCj4gIERvY3VtZW50YXRpb24vbmV0d29ya2luZy9zY2FsaW5nLnJzdCB8
ICA2ICsrKysrKwo+ICBpbmNsdWRlL3VhcGkvbGludXgvZXRodG9vbC5oICAgICAgICAgfCAxNyAr
KysrKysrKystLS0tLS0tLQo+ICBuZXQvZXRodG9vbC9pb2N0bC5jICAgICAgICAgICAgICAgICAg
fCAxMSArKysrKysrKysrKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKyksIDgg
ZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL3Nj
YWxpbmcucnN0IGIvRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL3NjYWxpbmcucnN0Cj4gaW5kZXgg
OTJjOWZiNDZkNmEyLi42NGYzZDc1NjY0MDcgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9u
ZXR3b3JraW5nL3NjYWxpbmcucnN0Cj4gKysrIGIvRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL3Nj
YWxpbmcucnN0Cj4gQEAgLTQ0LDYgKzQ0LDEyIEBAIGJ5IG1hc2tpbmcgb3V0IHRoZSBsb3cgb3Jk
ZXIgc2V2ZW4gYml0cyBvZiB0aGUgY29tcHV0ZWQgaGFzaCBmb3IgdGhlCj4gIHBhY2tldCAodXN1
YWxseSBhIFRvZXBsaXR6IGhhc2gpLCB0YWtpbmcgdGhpcyBudW1iZXIgYXMgYSBrZXkgaW50byB0
aGUKPiAgaW5kaXJlY3Rpb24gdGFibGUgYW5kIHJlYWRpbmcgdGhlIGNvcnJlc3BvbmRpbmcgdmFs
dWUuCj4KPiArU29tZSBOSUNzIHN1cHBvcnQgc3ltbWV0cmljIFJTUyBoYXNoaW5nIHdoZXJlLCBp
ZiB0aGUgSVAgKHNvdXJjZSBhZGRyZXNzLAo+ICtkZXN0aW5hdGlvbiBhZGRyZXNzKSBhbmQgVENQ
L1VEUCAoc291cmNlIHBvcnQsIGRlc3RpbmF0aW9uIHBvcnQpIHR1cGxlcwo+ICthcmUgc3dhcHBl
ZCwgdGhlIGNvbXB1dGVkIGhhc2ggaXMgdGhlIHNhbWUuIFRoaXMgaXMgYmVuZWZpY2lhbCBpbiBz
b21lCj4gK2FwcGxpY2F0aW9ucyB0aGF0IG1vbml0b3IgVENQL0lQIGZsb3dzIChJRFMsIGZpcmV3
YWxscywgLi4uZXRjKSBhbmQgbmVlZAo+ICtib3RoIGRpcmVjdGlvbnMgb2YgdGhlIGZsb3cgdG8g
bGFuZCBvbiB0aGUgc2FtZSBSeCBxdWV1ZSAoYW5kIENQVSkuCj4gKwoKTWF5YmUgYWRkIGEgc2hv
cnQgZXRodG9vbCBleGFtcGxlPwoKPiAgU29tZSBhZHZhbmNlZCBOSUNzIGFsbG93IHN0ZWVyaW5n
IHBhY2tldHMgdG8gcXVldWVzIGJhc2VkIG9uCj4gIHByb2dyYW1tYWJsZSBmaWx0ZXJzLiBGb3Ig
ZXhhbXBsZSwgd2Vic2VydmVyIGJvdW5kIFRDUCBwb3J0IDgwIHBhY2tldHMKPiAgY2FuIGJlIGRp
cmVjdGVkIHRvIHRoZWlyIG93biByZWNlaXZlIHF1ZXVlLiBTdWNoIOKAnG4tdHVwbGXigJ0gZmls
dGVycyBjYW4KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2xpbnV4L2V0aHRvb2wuaCBiL2lu
Y2x1ZGUvdWFwaS9saW51eC9ldGh0b29sLmgKPiBpbmRleCBmN2ZiYTBkYzg3ZTUuLmI5ZWU2Njdh
ZDdlNSAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL3VhcGkvbGludXgvZXRodG9vbC5oCj4gKysrIGIv
aW5jbHVkZS91YXBpL2xpbnV4L2V0aHRvb2wuaAo+IEBAIC0yMDE4LDE0ICsyMDE4LDE1IEBAIHN0
YXRpYyBpbmxpbmUgaW50IGV0aHRvb2xfdmFsaWRhdGVfZHVwbGV4KF9fdTggZHVwbGV4KQo+ICAj
ZGVmaW5lICAgICAgICBGTE9XX1JTUyAgICAgICAgMHgyMDAwMDAwMAo+Cj4gIC8qIEwzLUw0IG5l
dHdvcmsgdHJhZmZpYyBmbG93IGhhc2ggb3B0aW9ucyAqLwo+IC0jZGVmaW5lICAgICAgICBSWEhf
TDJEQSAgICAgICAgKDEgPDwgMSkKPiAtI2RlZmluZSAgICAgICAgUlhIX1ZMQU4gICAgICAgICgx
IDw8IDIpCj4gLSNkZWZpbmUgICAgICAgIFJYSF9MM19QUk9UTyAgICAoMSA8PCAzKQo+IC0jZGVm
aW5lICAgICAgICBSWEhfSVBfU1JDICAgICAgKDEgPDwgNCkKPiAtI2RlZmluZSAgICAgICAgUlhI
X0lQX0RTVCAgICAgICgxIDw8IDUpCj4gLSNkZWZpbmUgICAgICAgIFJYSF9MNF9CXzBfMSAgICAo
MSA8PCA2KSAvKiBzcmMgcG9ydCBpbiBjYXNlIG9mIFRDUC9VRFAvU0NUUCAqLwo+IC0jZGVmaW5l
ICAgICAgICBSWEhfTDRfQl8yXzMgICAgKDEgPDwgNykgLyogZHN0IHBvcnQgaW4gY2FzZSBvZiBU
Q1AvVURQL1NDVFAgKi8KPiAtI2RlZmluZSAgICAgICAgUlhIX0RJU0NBUkQgICAgICgxIDw8IDMx
KQo+ICsjZGVmaW5lICAgICAgICBSWEhfTDJEQSAgICAgICAgICAgICAgICAoMSA8PCAxKQo+ICsj
ZGVmaW5lICAgICAgICBSWEhfVkxBTiAgICAgICAgICAgICAgICAoMSA8PCAyKQo+ICsjZGVmaW5l
ICAgICAgICBSWEhfTDNfUFJPVE8gICAgICAgICAgICAoMSA8PCAzKQo+ICsjZGVmaW5lICAgICAg
ICBSWEhfSVBfU1JDICAgICAgICAgICAgICAoMSA8PCA0KQo+ICsjZGVmaW5lICAgICAgICBSWEhf
SVBfRFNUICAgICAgICAgICAgICAoMSA8PCA1KQo+ICsjZGVmaW5lICAgICAgICBSWEhfTDRfQl8w
XzEgICAgICAgICAgICAoMSA8PCA2KSAvKiBzcmMgcG9ydCBpbiBjYXNlIG9mIFRDUC9VRFAvU0NU
UCAqLwo+ICsjZGVmaW5lICAgICAgICBSWEhfTDRfQl8yXzMgICAgICAgICAgICAoMSA8PCA3KSAv
KiBkc3QgcG9ydCBpbiBjYXNlIG9mIFRDUC9VRFAvU0NUUCAqLwo+ICsjZGVmaW5lICAgICAgICBS
WEhfU1lNTUVUUklDX1hPUiAgICAgICAoMSA8PCAzMCkKPiArI2RlZmluZSAgICAgICAgUlhIX0RJ
U0NBUkQgICAgICAgICAgICAgKDEgPDwgMzEpCgpBcmUgdGhlc2UgaW5kZW50YXRpb24gY2hhbmdl
cyBpbnRlbnRpb25hbD8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3Ns
Lm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJl
ZC1sYW4K
