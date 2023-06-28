Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E3A740935
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jun 2023 07:10:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F8BB81EE9;
	Wed, 28 Jun 2023 05:10:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0F8BB81EE9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687929015;
	bh=fI4K42riPP4eevq6v7Ts6DBmarvcdabCqek7I35RTFk=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eXNzbtSi5GdE1stGMDVTW+sC7bz07HjPlv1E++F/j61f317KZPLWpbP5NlgUqlsuI
	 H0ZdI3nC9qUsPqNwiPbYPwwTtFxBPiBjr2tat6mD/LaQAmwJD9M6pP2iINkDZIa4FW
	 PlfiRW2EfAsQC/U9fEBR7YsbZFB8jviG5993FAVNO3v5kM94zsHLBaw5ILYLZhyi+S
	 YJgpjAAbZxwwgWIu2kzCxkMmxo0rItTpIjtDRrjUW8jYxe7fXJSr19FOwsLrRCDkoz
	 O67yraFxr3WgM2In9CGUzjd8cETZ1C6sWxZi8sOlvZbG2O2Oy85/SuSFBAUIjkzU9N
	 m3xbtgAcKEpOQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xwFZQ0IVs8Gm; Wed, 28 Jun 2023 05:10:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F10081DE2;
	Wed, 28 Jun 2023 05:10:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F10081DE2
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 04F601BF301
 for <intel-wired-lan@osuosl.org>; Wed, 28 Jun 2023 05:10:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D0D5A81DE2
 for <intel-wired-lan@osuosl.org>; Wed, 28 Jun 2023 05:10:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D0D5A81DE2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iVCTknm2txtY for <intel-wired-lan@osuosl.org>;
 Wed, 28 Jun 2023 05:10:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B4F081D35
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8B4F081D35
 for <intel-wired-lan@osuosl.org>; Wed, 28 Jun 2023 05:10:06 +0000 (UTC)
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com
 [209.85.167.200])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 3FF21413A5
 for <intel-wired-lan@osuosl.org>; Wed, 28 Jun 2023 05:10:03 +0000 (UTC)
Received: by mail-oi1-f200.google.com with SMTP id
 5614622812f47-39acaa239b2so5948561b6e.1
 for <intel-wired-lan@osuosl.org>; Tue, 27 Jun 2023 22:10:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687929001; x=1690521001;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=3bdC+uUyIZz0PgxeLe6K/fSeIXVXdbQUHA0MK3WxvKU=;
 b=lnom9z8058VsjHmKHtCXDd2zRAhZL0aYIC1mwHwR8Qc+c1D5lDCUhou38G9sK6gQ85
 GazfRLZH8o+O+fS2DZocNgZHu9PLe9tKjsis7H7bwHueDfvzUgMI5+cCGErVoZMdsIi4
 d5UVMGDp1P2P66aAPvweekmuVxaVM5WVrtRPfk3xfFDK7VHgpPe0vxdXfsD1+97Z27vQ
 Ia3Cf75VkM2a6p9fO7jbMUQMoUvaks07WO9wkVDX1OaMWJAfXV/WDLiYvSbC5Ntaq3Jt
 nksbjQkzVU6qjUrmOitULDS5WA0xU3DLn21RmKNKoq24nJJumpzMvdFpzI5TVRGUTqk8
 LuNQ==
X-Gm-Message-State: AC+VfDyDRvRsTKuqMW3/iRxzPk5tlVH1VgtJ3Rm2LFL+ftdurGKvGdSs
 tIyAZ3P6EHDnikTgRE6blLifqHXPpxGXCYJOxette25+kwufW4Mv7QUiFarO66YpVbEtJTnA1/M
 aONS6KGaqedEgI44mzbRatbZWzfvvfNM4hmRYfVkgYB5UehLNFNdqWx8=
X-Received: by 2002:a05:6808:f11:b0:3a0:663d:fd18 with SMTP id
 m17-20020a0568080f1100b003a0663dfd18mr20647406oiw.57.1687929001319; 
 Tue, 27 Jun 2023 22:10:01 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ42ji0zs3PoUsCX1nWOxZzCYOQcakZVi3alWc7EDIew9NqDWXdRzRhCW/XfEnOwyZd2T3eG1ytrMp03ePtGO48=
X-Received: by 2002:a05:6808:f11:b0:3a0:663d:fd18 with SMTP id
 m17-20020a0568080f1100b003a0663dfd18mr20647388oiw.57.1687929001077; Tue, 27
 Jun 2023 22:10:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAAd53p4kH7E92++jabBhvsM_+M7Dpyk2JP+aoVdb_sxZn47eyQ@mail.gmail.com>
 <20230627205417.GA366405@bhelgaas>
In-Reply-To: <20230627205417.GA366405@bhelgaas>
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Date: Wed, 28 Jun 2023 13:09:49 +0800
Message-ID: <CAAd53p5YjKbOkzBUmhu=EctusO7d38tHhg_b+zzvfVt97hLuOA@mail.gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1687929003;
 bh=3bdC+uUyIZz0PgxeLe6K/fSeIXVXdbQUHA0MK3WxvKU=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=Ac34EwWCowBXFjE2vzEph9dTcZk9WiQ76Ta+YaYaSC7IqXj3C/Y5YwsyrYsJ2C+fp
 2YqB5+U1wTVXIaad91DoR45lWQFgBfcrAubuFyHhiSPC90smud+jH0/okwdjOWAIK2
 bH07PUH5UTNjhVRR5i6Fyh7J1v/LZD8GFD1BBWl0QD2AS1XKp1BAKRl7/GEoOZR/BU
 q5MBt+Sj1DidKkzGtuWO2pYf9+j1M+hu0kRN8TqXKBnVbCdILW2G4C4jEluetvlL+N
 5WRM6oGOZfI7ZekwZS0Uq+y73XtMNlyaoGzBxnlxe35az2IThaFiUqP3Inqjly6NFX
 bw+YTOFLg+O1Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=Ac34EwWC
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

WytDYyBTYXNoYSBhbmQgSW50ZWwgV2lyZWQgTGFuXQoKT24gV2VkLCBKdW4gMjgsIDIwMjMgYXQg
NDo1NOKAr0FNIEJqb3JuIEhlbGdhYXMgPGhlbGdhYXNAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBP
biBUdWUsIEp1biAyNywgMjAyMyBhdCAwNDozNToyNVBNICswODAwLCBLYWktSGVuZyBGZW5nIHdy
b3RlOgo+ID4gT24gRnJpLCBKdW4gMjMsIDIwMjMgYXQgNzowNuKAr0FNIEJqb3JuIEhlbGdhYXMg
PGhlbGdhYXNAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPiA+IE9uIFR1ZSwgSnVuIDIwLCAyMDIzIGF0
IDAxOjM2OjU5UE0gLTA1MDAsIExpbW9uY2llbGxvLCBNYXJpbyB3cm90ZToKPiA+ID4gPiA8c25p
cD4KPiA+ID4gPiA+ID4gQSB2YXJpZXR5IG9mIEludGVsIGNoaXBzZXRzIGRvbid0IHN1cHBvcnQg
bGFuZSB3aWR0aCBzd2l0Y2hpbmcKPiA+ID4gPiA+ID4gb3Igc3BlZWQgc3dpdGNoaW5nLiAgV2hl
biBBU1BNIGhhcyBiZWVuIGVuYWJsZWQgb24gYSBkR1BVLAo+ID4gPiA+ID4gPiB0aGVzZSBmZWF0
dXJlcyBhcmUgdXRpbGl6ZWQgYW5kIGJyZWFrYWdlIGVuc3Vlcy4KPiA+ID4gPiA+Cj4gPiA+ID4g
PiBNYXliZSB0aGlzIGhlbHBzIGV4cGxhaW4gYWxsIHRoZSBjb21wbGV0ZWx5IHVubWFpbnRhaW5h
YmxlIEFTUE0KPiA+ID4gPiA+IGdhcmJhZ2UgaW4gYW1kZ3B1IGFuZCByYWRlb24uCj4gPiA+ID4g
Pgo+ID4gPiA+ID4gSWYgdGhlc2UgZGV2aWNlcyBhcmUgYnJva2VuLCB3ZSBuZWVkIHF1aXJrcyBm
b3IgdGhlbS4KPiA+ID4gPgo+ID4gPiA+IFRoZSBwcm9ibGVtIGlzIHdoaWNoIGRldmljZSBkbyB5
b3UgY29uc2lkZXIgImJyb2tlbiI/Cj4gPiA+ID4gVGhlIGRHUFUgdGhhdCB1c2VzIHRoZXNlIGZl
YXR1cmVzIHdoZW4gdGhlIHBsYXRmb3JtIGFkdmVydGlzZXMgQVNQTQo+ID4gPiA+IG9yIHRoZSBj
aGlwc2V0IHdoaWNoIGRvZXNuJ3Qgc3VwcG9ydCB0aGUgZmVhdHVyZXMgdGhhdCB0aGUgZGV2aWNl
Cj4gPiA+ID4gdXNlcyB3aGVuIEFTUE0gaXMgYWN0aXZlPwo+ID4gPiA+Cj4gPiA+ID4gV2l0aCB0
aGlzIHByb2JsZW0gSSdtIHRhbGtpbmcgYWJvdXQgdGhlIGRHUFUgd29ya3MgZmluZSBvbiBob3N0
cwo+ID4gPiA+IHRoYXQgc3VwcG9ydCB0aGVzZSBmZWF0dXJlcy4KPiA+ID4KPiA+ID4gV2l0aG91
dCBtb3JlIGRldGFpbHMgYWJvdXQgd2hhdCdzIGJyb2tlbiBhbmQgd2hlbiwgSSBjYW4ndCBzYXku
ICBXaGF0Cj4gPiA+IEkgKnRoaW5rKiBpcyB0aGF0IGEgZGV2aWNlIHRoYXQgZG9lc24ndCB3b3Jr
IHBlciBzcGVjIG5lZWRzIGEgcXVpcmsuCj4gPiA+IFR5cGljYWxseSBpdCdzIGEgZGV2aWNlIHRo
YXQgYWR2ZXJ0aXNlcyBhIGNhcGFiaWxpdHkgdGhhdCBkb2Vzbid0IHdvcmsKPiA+ID4gY29ycmVj
dGx5Lgo+ID4KPiA+IE1hbnkgc2lsaWNvbiB2ZW5kb3JzIHVzZSB0aGUgc2FtZSAiUENJIElQIiBh
bmQgaW50ZWdyYXRlIGl0IGludG8gdGhlaXIKPiA+IG93biBjaGlwLiBUaGF0J3Mgb25lIG9mIHRo
ZSByZWFzb24gd2h5IHRoZSBjYXBhYmlsaXR5IGRvZXNuJ3QgcmVhbGx5Cj4gPiByZWZsZWN0IHdo
YXQgYWN0dWFsbHkgYmVpbmcgc3VwcG9ydC4KPiA+IFRoZSB2ZW5kb3JzIHRoZW4gc2VuZCB0aGVp
ciBwcml2YXRlIGRhdGFzaGVldCB0byBzeXN0ZW0gaW50ZWdyYXRvciBzbwo+ID4gQklPUyBjYW4g
ZW5hYmxlIHdoYXQncyByZWFsbHkgc3VwcG9ydGVkLgo+Cj4gSXQncyBwZXJmZWN0bHkgZmluZSBm
b3IgdGhlIElQIHRvIHN1cHBvcnQgUENJIGZlYXR1cmVzIHRoYXQgYXJlIG5vdAo+IGFuZCBjYW4g
bm90IGJlIGVuYWJsZWQgaW4gYSBzeXN0ZW0gZGVzaWduLiAgQnV0IEkgZXhwZWN0IHRoYXQKPiBz
dHJhcHBpbmcgb3IgZmlybXdhcmUgd291bGQgZGlzYWJsZSB0aG9zZSBmZWF0dXJlcyBzbyB0aGV5
IGFyZSBub3QKPiBhZHZlcnRpc2VkIGluIGNvbmZpZyBzcGFjZS4KPgo+IElmIEJJT1MgbGVhdmVz
IGZlYXR1cmVzIGRpc2FibGVkIGJlY2F1c2UgdGhleSBjYW5ub3Qgd29yaywgYnV0IGF0IHRoZQo+
IHNhbWUgdGltZSBsZWF2ZXMgdGhlbSBhZHZlcnRpc2VkIGluIGNvbmZpZyBzcGFjZSwgSSdkIHNh
eSB0aGF0J3MgYQo+IEJJT1MgZGVmZWN0LiAgSW4gdGhhdCBjYXNlLCB3ZSBzaG91bGQgaGF2ZSBh
IERNSSBxdWlyayBvciBzb21ldGhpbmcgdG8KPiB3b3JrIGFyb3VuZCB0aGUgZGVmZWN0LgoKVGhh
dCBtZWFucyBtb3N0IGlmIG5vdCBhbGwgQklPUyBhcmUgZGVmZWN0ZWQuCkJJT1MgdmVuZG9ycyBh
bmQgT0RNIG5ldmVyIGJvdGhlcmVkIChhbmQgcHJvYmFibHkgd2lsbCBub3QpIHRvIGNoYW5nZQp0
aGUgY2FwYWJpbGl0aWVzIGFkdmVydGlzZWQgYnkgY29uZmlnIHNwYWNlIGJlY2F1c2UgIml0IGFs
cmVhZHkgd29ya3MKdW5kZXIgV2luZG93cyIuCgo+Cj4gPiBTbyB0aGUgbG9naWMgaXMgdG8gaWdu
b3JlIHRoZSBjYXBhYmlsaXR5IGFuZCB0cnVzdCB0aGUgZGVmYXVsdCBzZXQKPiA+IGJ5IEJJT1Mu
Cj4KPiBJIHRoaW5rIGxpbWl0aW5nIEFTUE0gc3VwcG9ydCB0byB3aGF0ZXZlciBCSU9TIGNvbmZp
Z3VyZWQgYXQgYm9vdC10aW1lCj4gaXMgcHJvYmxlbWF0aWMuICBJIGRvbid0IHRoaW5rIHdlIGNh
biBhc3N1bWUgdGhhdCBhbGwgcGxhdGZvcm1zIGhhdmUKPiBmaXJtd2FyZSB0aGF0IGNvbmZpZ3Vy
ZXMgQVNQTSBhcyBhZ2dyZXNzaXZlbHkgYXMgcG9zc2libGUsIGFuZAo+IG9idmlvdXNseSBmaXJt
d2FyZSB3b24ndCBjb25maWd1cmUgaG90LWFkZGVkIGRldmljZXMgYXQgYWxsIChpbgo+IGdlbmVy
YWw7IEkga25vdyBBQ1BJIF9IUFggY2FuIGRvIHNvbWUgb2YgdGhhdCkuCgpUb3RhbGx5IGFncmVl
LiBJIHdhcyBub3Qgc3VnZ2VzdGluZyB0byBsaW1pdGluZyB0aGUgc2V0dGluZyBhdCBhbGwuCkEg
Ym9vdC10aW1lIHBhcmFtZXRlciB0byBmbGlwIEFTUE0gc2V0dGluZyBpcyB2ZXJ5IHVzZWZ1bC4g
SWYgbm9uZSBoYXMKYmVlbiBzZXQsIGRlZmF1bHQgdG8gQklPUyBzZXR0aW5nLgoKPgo+IEl0J3Mg
cG9zc2libGUgd2UgbmVlZCBzb21lIGtpbmQgb2YgcG9saWN5IHRoYXQgbGltaXRzIEFTUE0gdG8g
dGhlIEJJT1MKPiBjb25maWcgdW50aWwgZGF0ZSBYLCBidXQgSSBkb24ndCB3YW50IHRvIGxpbWl0
IHRoYXQgZm9yZXZlci4KCkRlc2t0b3AgY2FuIGhhdmUgdmVyeSBkaWZmZXJlbnQgUENJZSBjYXJk
cyBpbiB0aGUgc2xvdHMgc28gQklPUyBkYXRlCmlzbid0IGEgZ29vZCBpbmRpY2F0b3IgZm9yIEFT
UE0gc3VwcG9ydC4KTGV0IGFsb25lIEJJT1MgZGF0ZSBjaGFuZ2VzIG9uIGVhY2ggQklPUyB1cGdy
YWRlLCB0aGlzIG1lYW5zIHBvdGVudGlhbApyZWdyZXNzaW9uIHJpc2suCgo+Cj4gPiA+ID4gSWYg
eW91IGZvbGxvdyBteSBpZGVhIG9mIGhvdCBhZGRlZCBkZXZpY2VzIHRoZSBwb2xpY3kgZm9sbG93
cwo+ID4gPiA+IHRoZSBwYXJlbnQgd291bGQgaXQgd29yayBmb3IgdGhlIGkyMjUgUENJZSBkZXZp
Y2UgY2FzZT8KPiA+ID4KPiA+ID4gVGhhdCBkb2Vzbid0ICpzb3VuZCogcmVhbGx5IHJvYnVzdCB0
byBtZSBiZWNhdXNlIGV2ZW4gaWYgdGhlIGRlZmF1bHQKPiA+ID4gY29uZmlnIGFmdGVyIGhvdC1h
ZGQgd29ya3MsIHRoZSB1c2VyIGNhbiBjaGFuZ2UgdGhpbmdzIHZpYSBzeXNmcywgYW5kCj4gPiA+
IGFueSBjb25maWd1cmF0aW9uIHdlIHNldCBpdCB0byBzaG91bGQgd29yayBhcyB3ZWxsLiAgSWYg
dGhlcmUgYXJlCj4gPiA+IGxhbmQtbWluZXMgdGhlcmUsIHdlIG5lZWQgYSBxdWlyayB0aGF0IHBy
ZXZlbnRzIHN5c2ZzIGZyb20gcnVubmluZwo+ID4gPiBpbnRvIGl0Lgo+ID4KPiA+IEZvciB0aGlz
IGNhc2UgaXQgbWVhbnMgZHJpdmVyIG5lZWRzIHRvIHByb3ZpZGUgYSBBU1BNIGNhbGxiYWNrIHRv
IGZsaXAKPiA+IFBUTSBiYXNlZCBvbiBBU1BNIHN5c2ZzLgo+Cj4gSSdtIG5vdCBzdXJlIEkgZm9s
bG93IHRoaXMsIGJ1dCBpdCBzb3VuZHMgbGlrZSB5b3UncmUgc2F5aW5nIFBUTQo+IGRvZXNuJ3Qg
d29yayBjb3JyZWN0bHkgd2l0aCBzb21lIEFTUE0gY29uZmlndXJhdGlvbnMuICBJcyB0aGlzIGFs
bG93ZWQKPiBieSB0aGUgUENJZSBzcGVjIG9yIGlzIGl0IGEgaGFyZHdhcmUgZGVmZWN0PyAgSWYg
dGhlIGxhdHRlciwgbWF5YmUgd2UKPiBqdXN0IG5lZWQgYSBxdWlyayB0byBkaXNhYmxlIFBUTSBv
biB0aGUgZGV2aWNlLgoKSSdsbCBsZWF2ZSB0aGlzIG9uZSB0byBJbnRlbCBmb2xrcy4KCj4KPiBJ
J20gbm90IHN1cmUgUFRNIGlzIHZhbHVhYmxlIGVub3VnaCB0byBhZGQgYSBnZW5lcmljIGNhbGxi
YWNrCj4gbWVjaGFuaXNtIHRvIHdvcmsgYXJvdW5kIGEgZGVmZWN0IGluIGFuIGluZGl2aWR1YWwg
ZGV2aWNlLgoKQWdyZWUuIFJpZ2h0IG5vdyB0aGUgaXNzdWUgaXMgb25seSBvYnNlcnZlZCB3aGVu
IEkyMjUgaXMgaW4gYSBUQlQgZG9jay4KCkthaS1IZW5nCgo+Cj4gQmpvcm4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxp
bmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
