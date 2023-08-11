Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1144377891D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Aug 2023 10:44:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 725BB838E0;
	Fri, 11 Aug 2023 08:44:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 725BB838E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691743490;
	bh=IbeYA9qb0jd7wqqdTdNw/XYPrMDDl7d48stZ5ILZP7c=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vdUJiuoPxca7krgDXw6ib0czEQqdTfhvp6oIABcJyobg1O5qSgqiDmftppw86pHh/
	 Pggn+QW0wKPPwdgZAKjenam9QXbe/2BpCHQrHwuqD3RFU98iQ/6TEz7ABA75qGfEnw
	 uFDkaUjqdaN1JjwnLVJwYaL7VpnB8iZgbwyuP2lLGH+4Z9yM0vWptI1bpMZ14AkW8U
	 3EzUZEbJhjJKl3DJta0mEVxgUKs1gunqnfOjzyngaOxtLakQ9y6Te4SVxcv8ezUJ36
	 O7CErh17t70kIJn36m3WLbNUuGoQ5HdbVpC1TLMrjMR9C1kL5Xlzcxzc0AbzOtg8Fv
	 xcdNFxr+jxBJA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OwR67q4L_dn6; Fri, 11 Aug 2023 08:44:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1494F8209C;
	Fri, 11 Aug 2023 08:44:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1494F8209C
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 12EDE1BF3D7
 for <intel-wired-lan@osuosl.org>; Fri, 11 Aug 2023 08:44:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EC1754026E
 for <intel-wired-lan@osuosl.org>; Fri, 11 Aug 2023 08:44:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EC1754026E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ig9YHqCyxHEG for <intel-wired-lan@osuosl.org>;
 Fri, 11 Aug 2023 08:44:42 +0000 (UTC)
X-Greylist: delayed 574 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 11 Aug 2023 08:44:42 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 85876400D1
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 85876400D1
 for <intel-wired-lan@osuosl.org>; Fri, 11 Aug 2023 08:44:42 +0000 (UTC)
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com
 [209.85.216.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 4184B41BF7
 for <intel-wired-lan@osuosl.org>; Fri, 11 Aug 2023 08:35:06 +0000 (UTC)
Received: by mail-pj1-f70.google.com with SMTP id
 98e67ed59e1d1-26824cb0051so2379552a91.0
 for <intel-wired-lan@osuosl.org>; Fri, 11 Aug 2023 01:35:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691742905; x=1692347705;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=j+VhLT1PEgzO1srFP3LGEp7m6a2DNMmpqDUBO5tcKS8=;
 b=Z8LH/Dy/GwBBUqVBKstpKs0Yz6kyYC+tJxiGCWTsqsN+HmtIpsyuQFXIIpMfQ/qrhK
 abvihtARVIftzXOuteeW7TtY+13aeQZVqYUmWKimTPrH+oWMzPuZyLgXeAW6/7m5NjRX
 RDsepzFpcz+nXQLda0CBpwVkQHIfLujeN/3Cogd4EwyoOqM5B7bmYKkPAOJlXBSjzT9O
 yqHu3IA3y0yWXYiKeRFFIJBrreQtYc8xR/jGnfsi0lSqAmPk/vn5RhcRDrGQLXVSJd0M
 kheNs7sGfoGD0j2srxAPGgSYDvPQMNk5cXe1AGYiHML/+/z6qfV8faYdCXB97xdXsqB/
 d+xQ==
X-Gm-Message-State: AOJu0YznydbHj+m3imntaOTG58VluaZuc8LeoKIvUyzXFv2PMvEBA08w
 nZR/ycvIMivWJcJE7GD7drhP4VFctRdWYo/GoovaytNA4w4nSgDes0bwE8FdxfyG+bVn84+36cw
 3JpSFOnOna7Nh277K0NUMFdzUbsYVOg7+UkrNN9u+Z9JmYgYP/dSEc7g=
X-Received: by 2002:a17:90b:1244:b0:269:14eb:653a with SMTP id
 gx4-20020a17090b124400b0026914eb653amr882771pjb.4.1691742904868; 
 Fri, 11 Aug 2023 01:35:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHM4M6K2z/NWa24PavF6fY5APms59SNpRMS+3PFSr9ffbY8cl6ex9ctpm/3OdmQqE943mbsEAH4MhvKKp8EIao=
X-Received: by 2002:a17:90b:1244:b0:269:14eb:653a with SMTP id
 gx4-20020a17090b124400b0026914eb653amr882765pjb.4.1691742904587; Fri, 11 Aug
 2023 01:35:04 -0700 (PDT)
MIME-Version: 1.0
References: <dc44cb41-b306-f18a-c9fc-3d956777f722@amd.com>
 <20230718192450.GA489825@bhelgaas>
In-Reply-To: <20230718192450.GA489825@bhelgaas>
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Date: Fri, 11 Aug 2023 16:34:52 +0800
Message-ID: <CAAd53p5PAhX6OO0xzaF5TKJ4qT6=nMjQqv5vZM=7rFKtgr-H=A@mail.gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1691742906;
 bh=j+VhLT1PEgzO1srFP3LGEp7m6a2DNMmpqDUBO5tcKS8=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=jrX+qVavllWH+hBM8XdQV/Oo1m//s+xhoCKieq1BRrQIXyM93ZRa4xLRUdZ+z+7rx
 JsNYExlygC/SsQMUP7dEctoZdTG2BqKZZrzwTLn8tGua5t15nr/NvApi6MNHrU514L
 T8BZvnFHQBzinDCoTx8QzdXcS2QbXeoZdTOjc1GnzI6t5oDQtj2EwPMXxmXOOEFPVD
 ooy8LaDwu6RLBjtShyDzOEhHH8xAuNTuxyFkb2mVFK17CzbJNx9tuEZxTdh3Z0qyoI
 Rpsryusy/G27js76xQtHWtme33Iy4CZ9mPTEj70QEB/SmPzORT8OCWk9G1st0/tYrY
 KjWFnZw/bWZBA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=jrX+qVav
Subject: Re: [Intel-wired-lan] [PATCH] PCI/ASPM: Enable ASPM on external
 PCIe devices
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
Cc: Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>,
 linux-pci@vger.kernel.org, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 linux-kernel@vger.kernel.org, Vidya Sagar <vidyas@nvidia.com>,
 Michael Bottini <michael.a.bottini@linux.intel.com>, "Limonciello,
 Mario" <mario.limonciello@amd.com>, intel-wired-lan@osuosl.org,
 bhelgaas@google.com, Mika Westerberg <mika.westerberg@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBKdWwgMTksIDIwMjMgYXQgMzoyNOKAr0FNIEJqb3JuIEhlbGdhYXMgPGhlbGdhYXNA
a2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBNb24sIEp1bCAxNywgMjAyMyBhdCAxMTo1MTozMkFN
IC0wNTAwLCBMaW1vbmNpZWxsbywgTWFyaW8gd3JvdGU6Cj4gPiBPbiA3LzE2LzIwMjMgMTA6MzQg
UE0sIEthaS1IZW5nIEZlbmcgd3JvdGU6Cj4gPiA+IE9uIFNhdCwgSnVsIDE1LCAyMDIzIGF0IDEy
OjM34oCvQU0gTWFyaW8gTGltb25jaWVsbG8gPG1hcmlvLmxpbW9uY2llbGxvQGFtZC5jb20+IHdy
b3RlOgo+ID4gPiA+IE9uIDcvMTQvMjMgMDM6MTcsIEthaS1IZW5nIEZlbmcgd3JvdGU6Cj4KPiA+
ID4gPiA+IFRoZSBtYWluIHBvaW50IGlzIE9TIHNob3VsZCBzdGljayB0byB0aGUgQklPUyBkZWZh
dWx0LCB3aGljaCBpcyB0aGUKPiA+ID4gPiA+IG9ubHkgQVNQTSBzZXR0aW5nIHRlc3RlZCBiZWZv
cmUgcHV0dGluZyBoYXJkd2FyZSB0byB0aGUgbWFya2V0Lgo+ID4gPiA+Cj4gPiA+ID4gVW5mb3J0
dW5hdGVseTsgSSBkb24ndCB0aGluayB5b3UgY2FuIGp1bXAgdG8gdGhpcyBjb25jbHVzaW9uLgo+
Cj4gSSB0aGluayB1c2luZyB0aGUgQklPUyBkZWZhdWx0IGFzIGEgbGltaXQgaXMgcHJvYmxlbWF0
aWMuICBJIHRoaW5rIGl0Cj4gd291bGQgYmUgcGVyZmVjdGx5IHJlYXNvbmFibGUgZm9yIGEgQklP
UyB0byAoYSkgY29uZmlndXJlIG9ubHkgZGV2aWNlcwo+IGl0IG5lZWRzIGZvciBjb25zb2xlIGFu
ZCBib290LCBsZWF2aW5nIG90aGVycyBhdCBwb3dlci1vbiBkZWZhdWx0cywKPiBhbmQgKGIpIGNv
bmZpZ3VyZSBkZXZpY2VzIGluIHRoZSBzYWZlc3QgY29uZmlndXJhdGlvbiBwb3NzaWJsZSBvbiB0
aGUKPiBhc3N1bXB0aW9uIHRoYXQgYW4gT1MgY2FuIGRlY2lkZSB0aGUgcnVudGltZSBwb2xpY3kg
aXRzZWxmLgoKVGhpcyBpcyBub3QgdXNpbmcgQklPUyBhcyBhICJsaW1pdCIuIE9TIGlzIHN0aWxs
IGNhcGFibGUgb2YgY2hhbmdpbmcKdGhlIEFTUE0gcG9saWN5IGF0IGJvb3QgdGltZSBvciBydW50
aW1lLgpUaGUgbWFpbiBwb2ludCBpcyB0byBmaW5kIGEgInNhbmUiIHNldHRpbmcgZm9yIGRldmlj
ZXMgd2hlcmUgQklPUwpjYW4ndCBwcm9ncmFtIEFTUE0uCgo+Cj4gT2J2aW91c2x5IEknbSBub3Qg
YSBCSU9TIHdyaXRlciAodGhvdWdoIEkgc3VyZSB3aXNoIEkgY291bGQgdGFsayB0bwo+IHNvbWUh
KSwgc28gbWF5YmUgdGhlc2UgYXJlIGJhZCBhc3N1bXB0aW9ucy4KPgo+ID4gPiA+IEEgYmlnIGRp
ZmZlcmVuY2UgaW4gdGhlIFdpbmRvd3Mgd29ybGQgdG8gTGludXggd29ybGQgaXMgdGhhdCBPRU1z
IHNoaXAKPiA+ID4gPiB3aXRoIGEgZmFjdG9yeSBXaW5kb3dzIGltYWdlIHRoYXQgbWF5IHNldCBw
b2xpY2llcyBsaWtlIHRoaXMuICBPRU0KPiA+ID4gPiAicGxhdGZvcm0iIGRyaXZlcnMgY2FuIHNl
dCByZWdpc3RyeSBrZXlzIHRvby4KPgo+IEkgc3VwcG9zZSB0aGlzIG1lYW5zIHRoYXQgdGhlIE9F
TSBpbWFnZSBjb250YWlucyBkcml2ZXJzIHRoYXQgYXJlbid0Cj4gaW4gdGhlIE1pY3Jvc29mdCBt
ZWRpYSwgYW5kIHRob3NlIGRyaXZlcnMgbWF5IHNldCBjb25zdHJhaW50cyBvbiBBU1BNCj4gdXNh
Z2U/Cj4KPiBJZiB5b3UgYm9vdCB0aGUgTWljcm9zb2Z0IG1lZGlhIHRoYXQgbGFja3MgdGhvc2Ug
ZHJpdmVycywgbWF5YmUgaXQKPiBkb2Vzbid0IGJvdGhlciB0byBjb25maWd1cmUgQVNQTSBmb3Ig
dGhvc2UgZGV2aWNlcz8gIExpbnV4IGN1cnJlbnRseQo+IGNvbmZpZ3VyZXMgQVNQTSBmb3IgZXZl
cnl0aGluZyBhdCBlbnVtZXJhdGlvbi10aW1lLCBzbyB3ZSBkbyBpdCBldmVuCj4gaWYgdGhlcmUn
cyBubyBkcml2ZXIuCgpUaGlzIGNhbiBiZSBhbm90aGVyIHRvcGljIHRvIGV4cGxvcmUuIEJ1dCBz
b3VuZHMgbGlrZSBpdCBjYW4gYnJlYWsgdGhpbmdzLgoKPgo+ID4gPiBJIHdvbmRlciBpZiB0aGVy
ZSdzIGFueSBwYXJ0aWN1bGFyIG1vZGlmaWNhdGlvbiBzaG91bGQgYmUgaW1wcm92ZWQgZm9yCj4g
PiA+IHRoaXMgcGF0Y2g/Cj4gPgo+ID4gS25vd2luZyB0aGlzIGluZm9ybWF0aW9uIEkgcGVyc29u
YWxseSB0aGluayB0aGUgb3JpZ2luYWwgcGF0Y2ggdGhhdCBzdGFydGVkCj4gPiB0aGlzIHRocmVh
ZCBtYWtlcyBhIGxvdCBvZiBzZW5zZS4KPgo+IEknbSBzdGlsbCBvcHBvc2VkIHRvIHVzaW5nIGRl
dl9pc19yZW1vdmFibGUoKSBhcyBhIHByZWRpY2F0ZSBiZWNhdXNlIEkKPiBkb24ndCB0aGluayBp
dCBoYXMgYW55IHRlY2huaWNhbCBjb25uZWN0aW9uIHRvIEFTUE0gY29uZmlndXJhdGlvbi4KCk9L
LiBTbyB3aGF0IHNob3VsZCB3ZSBkbyBpbnN0ZWFkPyBDaGVja2luZyBpZiB0aGUgZGV2aWNlIGlz
IGNvbm5lY3RlZAp0byBUQlQgc3dpdGNoPwoKS2FpLUhlbmcKCgo+Cj4gQmpvcm4KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1h
aWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9z
bC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
