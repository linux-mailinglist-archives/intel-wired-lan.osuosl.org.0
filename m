Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF56566EB8
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jul 2022 14:51:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5413C40A9A;
	Tue,  5 Jul 2022 12:51:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5413C40A9A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657025510;
	bh=pAQkfcNN3rWJmUpRyVA3sXR8+1KAvS+FmGDot9uFatA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1hDMBGVJs5u7YA/XSKA8ObMmcw/VW3tpprNxlX8wPvNZpGwJK8IpGfx+4VK4PoOPd
	 8krnGrUYEkf2jVGxRd7I5G5hs4JVjHk/7/peniIqv0CQwsdaGmModSDkbmneCDSle2
	 4LETDEaMWp+tBUoidPul1j6ZSeORMnwXzIrvXKybKFugNa/e5BoyG3VigK0X5i4w9C
	 oRfBwlQhpwuqauWEFcjCxW+W45cvoHK1E+6152OKrG5HD8e6lWMFNEQsk15T4g6I47
	 x6mtkg0qXPASKfL29zmSWoUAIKoiAfBkg2Vq82eGEBd4pVWfL5G/kA+ejFX59Z3Q6W
	 74/JidoImDNuw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sve7IY87AML4; Tue,  5 Jul 2022 12:51:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2C3D340A49;
	Tue,  5 Jul 2022 12:51:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C3D340A49
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 51B381BF5DA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 15:36:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 38B064187E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 15:36:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 38B064187E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cMuh-CS8iwli for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Jul 2022 15:36:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A666F41860
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A666F41860
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 15:36:47 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id mf9so4834511ejb.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 01 Jul 2022 08:36:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kVWP9v9nuRHyTkGEYSrcvx5uXVMOYJJ1wNoS0VDXg9k=;
 b=gz6XuhapjYJy0M6xvXd/9vq0Sd9GdDPX2sGYaWmDmx9gukegFtsh2H0i8BO6GeNQpx
 8ju9+Ha61bDvn3eaJuj7Crl5IeKNuqHcP4mlXq67Ie8hU4bLc4Inn1XYadnJlfeSdPhu
 p5Zs0bXDoTbP/olfk6TzI4tk5xrM8Ukawkr5wk9YwXgHnt0QAzt/NYj5/e5xS3/jPo1O
 TbgeCMil1J/q4SnezCH41sW9ot7Rc7844w4k5bf1Vt27/28nb/vjrKv/sO1FnP3sFEBW
 Gm4pkX0V4g0T8vwl0AKn6WPd9lOE1rUv0troiATc84TtZvntny0N2ssAEZ4OyCaf7fr5
 o2ug==
X-Gm-Message-State: AJIora8jcgfUIMQO0SGjDZp9dhPIhqg0TzuTV6k9waH8WefpVAQCVSzK
 fRWd0+NBSwasG1KWh7g0AGU=
X-Google-Smtp-Source: AGRyM1sbuKQmRTnINPADgbGRg8JQE2qKqhXWTCOypWUscwCJZKjHhyoe3fG2hqQGXqGDHtdjsw8lJA==
X-Received: by 2002:a17:907:628a:b0:6fe:526c:ebc with SMTP id
 nd10-20020a170907628a00b006fe526c0ebcmr14194125ejc.531.1656689805755; 
 Fri, 01 Jul 2022 08:36:45 -0700 (PDT)
Received: from opensuse.localnet (host-79-53-109-127.retail.telecomitalia.it.
 [79.53.109.127]) by smtp.gmail.com with ESMTPSA id
 c12-20020a170906d18c00b00727c6da69besm3853562ejz.38.2022.07.01.08.36.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Jul 2022 08:36:44 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Date: Fri, 01 Jul 2022 17:36:42 +0200
Message-ID: <2834855.e9J7NaK4W3@opensuse>
In-Reply-To: <CAKgT0UfThk3MLcE38wQu5+2Qy7Ld2px-2WJgnD+2xbDsA8iEEw@mail.gmail.com>
References: <20220629085836.18042-1-fmdefrancesco@gmail.com>
 <2254584.ElGaqSPkdT@opensuse>
 <CAKgT0UfThk3MLcE38wQu5+2Qy7Ld2px-2WJgnD+2xbDsA8iEEw@mail.gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 05 Jul 2022 12:51:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kVWP9v9nuRHyTkGEYSrcvx5uXVMOYJJ1wNoS0VDXg9k=;
 b=SqZhVjf7YNNWixNsKmBLY6iXajXocLtajbIf7Rwa4/DgzXmfZOf929koyVGp5a4cJM
 9rrisSEADI6F7uCEphtjMSxcfpYNk6hkQn7MYGwsnEJI42VB5gSdrHMeISl1m0u/uNbM
 FKmTJpDjug72jjNeo2v6vGUKbrRVU6PK9rTE7g6l/txGHCOGAsbNNk3zbSU9w/LpDtbQ
 Qz0foezAvyKetuqKHK/Epagqzwa+luCiiN6hbGSzAqzVloMh5MoCcakiImRU8hb+v4tP
 LIlhFcBX1UfLysKyB5fLC+xNhn/ly0jvmTgqbw6LSKbR909kFJAWzGLH8VnoYHpd3R6d
 tXeQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=SqZhVjf7
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Use kmap_local_page in
 ixgbe_check_lbtest_frame()
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 Alexander Duyck <alexanderduyck@fb.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, bpf <bpf@vger.kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Ira Weiny <ira.weiny@intel.com>,
 "David S. Miller" <davem@davemloft.net>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gZ2lvdmVkw6wgMzAgZ2l1Z25vIDIwMjIgMjM6NTk6MjMgQ0VTVCBBbGV4YW5kZXIgRHV5Y2sg
d3JvdGU6Cj4gT24gVGh1LCBKdW4gMzAsIDIwMjIgYXQgMTE6MTggQU0gRmFiaW8gTS4gRGUgRnJh
bmNlc2NvCj4gPGZtZGVmcmFuY2VzY29AZ21haWwuY29tPiB3cm90ZToKPiA+Cj4gPiBPbiBnaW92
ZWTDrCAzMCBnaXVnbm8gMjAyMiAxODowOToxOCBDRVNUIEFsZXhhbmRlciBEdXljayB3cm90ZToK
PiA+ID4gT24gVGh1LCBKdW4gMzAsIDIwMjIgYXQgODoyNSBBTSBFcmljIER1bWF6ZXQgPGVkdW1h
emV0QGdvb2dsZS5jb20+IAp3cm90ZToKPiA+ID4gPgo+ID4gPiA+IE9uIFRodSwgSnVuIDMwLCAy
MDIyIGF0IDU6MTcgUE0gQWxleGFuZGVyIER1eWNrCj4gPiA+ID4gPGFsZXhhbmRlci5kdXlja0Bn
bWFpbC5jb20+IHdyb3RlOgo+ID4gPiA+ID4KPiA+ID4gPiA+IE9uIFRodSwgSnVuIDMwLCAyMDIy
IGF0IDM6MTAgQU0gTWFjaWVqIEZpamFsa293c2tpCj4gPiA+ID4gPiA8bWFjaWVqLmZpamFsa293
c2tpQGludGVsLmNvbT4gd3JvdGU6Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IE9uIFdlZCwgSnVu
IDI5LCAyMDIyIGF0IDEwOjU4OjM2QU0gKzAyMDAsIEZhYmlvIE0uIERlIEZyYW5jZXNjbwo+ID4g
d3JvdGU6Cj4gPiA+ID4gPiA+ID4gVGhlIHVzZSBvZiBrbWFwKCkgaXMgYmVpbmcgZGVwcmVjYXRl
ZCBpbiBmYXZvciBvZgo+ID4ga21hcF9sb2NhbF9wYWdlKCkuCj4gPiA+ID4gPiA+ID4KPiA+ID4g
PiA+ID4gPiBXaXRoIGttYXBfbG9jYWxfcGFnZSgpLCB0aGUgbWFwcGluZyBpcyBwZXIgdGhyZWFk
LCBDUFUgbG9jYWwgCmFuZAo+ID4gbm90Cj4gPiA+ID4gPiA+ID4gZ2xvYmFsbHkgdmlzaWJsZS4g
RnVydGhlcm1vcmUsIHRoZSBtYXBwaW5nIGNhbiBiZSBhY3F1aXJlZCAKZnJvbQo+ID4gYW55IGNv
bnRleHQKPiA+ID4gPiA+ID4gPiAoaW5jbHVkaW5nIGludGVycnVwdHMpLgo+ID4gPiA+ID4gPiA+
Cj4gPiA+ID4gPiA+ID4gVGhlcmVmb3JlLCB1c2Uga21hcF9sb2NhbF9wYWdlKCkgaW4gCml4Z2Jl
X2NoZWNrX2xidGVzdF9mcmFtZSgpCj4gPiBiZWNhdXNlCj4gPiA+ID4gPiA+ID4gdGhpcyBtYXBw
aW5nIGlzIHBlciB0aHJlYWQsIENQVSBsb2NhbCwgYW5kIG5vdCBnbG9iYWxseSAKdmlzaWJsZS4K
PiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gSGksCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IEknZCBs
aWtlIHRvIGFzayB3aHkga21hcCB3YXMgdGhlcmUgaW4gdGhlIGZpcnN0IHBsYWNlIGFuZCBub3Qg
CnBsYWluCj4gPiA+ID4gPiA+IHBhZ2VfYWRkcmVzcygpID8KPiA+ID4gPiA+ID4KPiA+ID4gPiA+
ID4gQWxleD8KPiA+ID4gPiA+Cj4gPiA+ID4gPiBUaGUgcGFnZV9hZGRyZXNzIGZ1bmN0aW9uIG9u
bHkgd29ya3Mgb24gYXJjaGl0ZWN0dXJlcyB0aGF0IGhhdmUKPiA+IGFjY2Vzcwo+ID4gPiA+ID4g
dG8gYWxsIG9mIHBoeXNpY2FsIG1lbW9yeSB2aWEgdmlydHVhbCBtZW1vcnkgYWRkcmVzc2VzLiBU
aGUga21hcAo+ID4gPiA+ID4gZnVuY3Rpb24gaXMgbWVhbnQgdG8gdGFrZSBjYXJlIG9mIGhpZ2ht
ZW0gd2hpY2ggd2lsbCBuZWVkIHRvIGJlCj4gPiBtYXBwZWQKPiA+ID4gPiA+IGJlZm9yZSBpdCBj
YW4gYmUgYWNjZXNzZWQuCj4gPiA+ID4gPgo+ID4gPiA+ID4gRm9yIG5vbi1oaWdobWVtIHBhZ2Vz
IGttYXAganVzdCBjYWxscyB0aGUgcGFnZV9hZGRyZXNzIGZ1bmN0aW9uLgo+ID4gPiA+ID4gaHR0
cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvbGF0ZXN0L3NvdXJjZS9pbmNsdWRlL2xpbnV4
LwpoaWdobWVtLWludGVybmFsLmgjTDQwCj4gPiA+ID4KPiA+ID4gPgo+ID4gPiA+IFN1cmUsIGJ1
dCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9tYWluLmMgaXMgCmFsbG9j
YXRpbmcKPiA+ID4gPiBwYWdlcyB0aGF0IGFyZSBub3QgaGlnaG1lbSA/Cj4gPiA+ID4KPiA+ID4g
PiBUaGlzIGttYXAoKSBkb2VzIG5vdCBzZWVtIG5lZWRlZC4KPiA+ID4KPiA+ID4gR29vZCBwb2lu
dC4gU28gb2RkcyBhcmUgcGFnZV9hZGRyZXNzIGlzIGZpbmUgdG8gdXNlLiBBY3R1YWxseSB0aGVy
ZSAKaXMKPiA+ID4gYSBub3RlIHRvIHRoYXQgZWZmZWN0IGluIGl4Z2JlX3B1bGxfdGFpbC4KPiA+
ID4KPiA+ID4gQXMgc3VjaCB3ZSBjb3VsZCBwcm9iYWJseSBnbyB0aHJvdWdoIGFuZCB1cGRhdGUg
aWdiLCBhbmQgc2V2ZXJhbCBvZgo+ID4gPiB0aGUgb3RoZXIgSW50ZWwgZHJpdmVycyBhcyB3ZWxs
Lgo+ID4gPgo+ID4gPiAtIEFsZXgKPiA+ID4KPiA+IEkgZG9uJ3Qga25vdyB0aGlzIGNvZGUsIGhv
d2V2ZXIgSSBrbm93IGttYXAqKCkuCj4gPgo+ID4gSSBhc3N1bWVkIHRoYXQsIGlmIGF1dGhvciB1
c2VkIGttYXAoKSwgdGhlcmUgd2FzIHBvc3NpYmlsaXR5IHRoYXQgdGhlIApwYWdlCj4gPiBjYW1l
IGZyb20gaGlnaG1lbS4KPiA+Cj4gPiBJbiB0aGF0IGNhc2Uga21hcF9sb2NhbF9wYWdlKCkgbG9v
a3MgY29ycmVjdCBoZXJlLgo+ID4KPiA+IEhvd2V2ZXIsIG5vdyBJIHJlYWQgdGhhdCB0aGF0IHBh
Z2UgX2Nhbm5vdF8gY29tZSBmcm9tIGhpZ2htZW0uIApUaGVyZWZvcmUsCj4gPiBwYWdlX2FkZHJl
c3MoKSB3b3VsZCBzdWZmaWNlLgo+ID4KPiA+IElmIHlvdSBhbGwgd2FudCBJIGNhbiByZXBsYWNl
IGttYXAoKSAvIGt1bm1hcCgpIHdpdGggYSAicGxhaW4iCj4gPiBwYWdlX2FkZHJlc3MoKS4gUGxl
YXNlIGxldCBtZSBrbm93Lgo+ID4KPiA+IFRoYW5rcywKPiA+Cj4gPiBGYWJpbwo+IAo+IFJlcGxh
Y2luZyBpdCB3aXRoIGp1c3QgcGFnZV9hZGRyZXNzKCkgc2hvdWxkIGJlIGZpbmUuIEJhY2sgd2hl
biBJCj4gd3JvdGUgdGhlIGNvZGUgSSBkaWRuJ3QgcmVhbGl6ZSB0aGF0IEdGUF9BVE9NSUMgcGFn
ZXMgd2VyZW4ndAo+IGFsbG9jYXRlZCBmcm9tIGhpZ2htZW0gc28gSSBzdXNwZWN0IEkganVzdCB1
c2VkIGttYXAgc2luY2UgaXQgd2FzIHRoZQo+IHdheSB0byBjb3ZlciBhbGwgdGhlIGJhc2VzLgo+
IAo+IFRoYW5rcywKPiAKPiAtIEFsZXgKPiAKCk9LLCBJJ20gYWJvdXQgdG8gcHJlcGFyZSBhbm90
aGVyIHBhdGNoIHdpdGggcGFnZV9hZGRyZXNzKCkgKG9idmlvdXNseSwgdGhpcyAKc2hvdWxkIGJl
IGRpc2NhcmRlZCkuCgpMYXN0IHRoaW5nLi4uIElzIHRoYXQgcGFnZSBhbGxvY2F0ZWQgd2l0aCBk
bWFfcG9vbF9hbGxvYygpIGF0Cml4Z2JlL2l4Z2JlX2Zjb2UuYzoxOTY/IFNvbWV3aGVyZSBlbHNl
PwoKVGhhbmtzLAoKRmFiaW8KClAuUy46IENhbiB5b3Ugc2F5IHNvbWV0aGluZyBhYm91dCBob3cg
cGFnZXMgYXJlIGFsbG9jYXRlZCBpbiBpbnRlbC9lMTAwMCAKYW5kIGluIGludGVsL2UxMDAwZT8g
SSBzZWUgdGhhdCB0aG9zZSBkcml2ZXJzIHVzZSBrbWFwX2F0b21pYygpLgoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFp
bGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3Ns
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
