Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA23793240
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Sep 2023 01:05:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B0BC61002;
	Tue,  5 Sep 2023 23:05:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B0BC61002
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693955130;
	bh=naJVdTKi+HsBJbiJjEoRK9PlhEe2A9uXTYMNwmcUqqw=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JIfhA6JLAxaoZUa8gRxS2VgP3X6l92MUTnI7ju4Ciwgs0SkAX0ERFatILJj8iTGZk
	 NjnjqoIjxo8W/cXiX8He+1a0XIRD1bVakDyBgNdswL2My7bPW1CcTTh02glu7Z4QGK
	 yhpq6uDH7R9fhSi9WCDJOIfnjfmjcxVvsYKLV1mX6eLJyexl5bQCGJRJYw20kZny5l
	 i6MP+PgyY+C7xWztzN+ETAfFLFjs85FQ6yaHKug3qmjQ6OZey8QYfdHvPtRSZYU4HE
	 JUrvSAbJPwYUl0JiyCU020o8g6b+1scovZ5TGqEIYKo0ccDDtXDoF0o9t4943nCaxF
	 zZnc4tKsvQDtA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b312T2XpezK5; Tue,  5 Sep 2023 23:05:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7490460AFC;
	Tue,  5 Sep 2023 23:05:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7490460AFC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A12021BF25F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 23:05:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 86B344036A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 23:05:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 86B344036A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o2txtfEOKSbA for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Sep 2023 23:05:22 +0000 (UTC)
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com
 [IPv6:2607:f8b0:4864:20::1035])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6EEC840116
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 23:05:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6EEC840116
Received: by mail-pj1-x1035.google.com with SMTP id
 98e67ed59e1d1-26fb8225268so1699014a91.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 05 Sep 2023 16:05:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693955122; x=1694559922;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=EsA0ttbPbxLvlnzlM3ZexALoYqBACRtr7kaj33Z6LrE=;
 b=jvFYLPVBBSHv6F4DokOfYyO7nVt4065JpSV1HBG/ISNtcA8NPAY9huZxLDiO+ezV2t
 g9nzRGHbY27yHN1oaOWTG5q/2LqbcXwCeH60X/PX4P3C+r6WsA0MGu03QhxzqpEcESwO
 z0ShochkNLtpSjF3FY2GoI2Jk/RDJglGaNWqTGYpb9yloloWnaKXC3TCGPc/FUEO8hrk
 vXlN+zNOdTjlfYPIURFNvPmCaTJb/oNASVQqRcaRjeu/2KcUCPangbX2lcILQHEY1rlq
 17Jn+MoP/Mn5voMXiFdmraq6aHEwmA/cXE8ZaaWq3l0LrX9cA6oLsYflGq1vjiN7hSZ1
 vVOw==
X-Gm-Message-State: AOJu0YwS0LocryW0Y7x+nx+hkNsXsrGnQnc641fo/0vQ8PyNfBhUzd75
 dp/nzqkYdR68xSl303ZA68ahQkX4huDycg6iSYVZew==
X-Google-Smtp-Source: AGHT+IFRj8YQuRHH/lR8GzALQ14CWdzMHrhNQIzuJlIFxeDKzkqQNw+dZisF+QvrHEtqjeegoSBGB6+wrouawe3F4dA=
X-Received: by 2002:a17:90a:d987:b0:263:5d25:150c with SMTP id
 d7-20020a17090ad98700b002635d25150cmr10427718pjv.29.1693955121670; Tue, 05
 Sep 2023 16:05:21 -0700 (PDT)
MIME-Version: 1.0
References: <20230904021455.3944605-1-junfeng.guo@intel.com>
 <20230905153734.18b9bc84@kernel.org>
In-Reply-To: <20230905153734.18b9bc84@kernel.org>
From: Tom Herbert <tom@herbertland.com>
Date: Tue, 5 Sep 2023 16:05:09 -0700
Message-ID: <CALx6S34B_BvkNuqALCCT+2V2dL8rwr9n_DnRfevjkW4UwMF=pw@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=herbertland.com; s=google; t=1693955122; x=1694559922; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=EsA0ttbPbxLvlnzlM3ZexALoYqBACRtr7kaj33Z6LrE=;
 b=HHTqyzHWENzqmzp7f4rbM6cvNODNndqilm7HtWkrGy941wH1bMDlEWCVVuqC1Yk5E2
 4g3xRr4UayD1Lb2GqASIKwmbu0Egg92htGT924D1V31VWVamTGHGKqB3Zim0SihVpbOk
 D/NE2c17jWBqML3W53cxhFwWrj4SNPP2moxKK7oOlPndNNQmjOT1m7Zsd2lTNYvosyGo
 mKp3fLufguOR3DYQ3qqIJxLn+pstzeyWWdZPmkswAECK97lbZCk/8OWS2vSJHd2y1fjE
 ZYFZ/v6eWwH3DNkcgZvHdzio4soAQytjTamCGblo93WWLfrq7h8f/Pd0lQvRcZxud3w2
 TQFw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=herbertland.com header.i=@herbertland.com
 header.a=rsa-sha256 header.s=google header.b=HHTqyzHW
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9 00/15] Introduce the
 Parser Library
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
Cc: ivecera@redhat.com, netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 qi.z.zhang@intel.com, anthony.l.nguyen@intel.com, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBTZXAgNSwgMjAyMyBhdCAzOjM34oCvUE0gSmFrdWIgS2ljaW5za2kgPGt1YmFAa2Vy
bmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBNb24sICA0IFNlcCAyMDIzIDEwOjE0OjQwICswODAwIEp1
bmZlbmcgR3VvIHdyb3RlOgo+ID4gQ3VycmVudCBzb2Z0d2FyZSBhcmNoaXRlY3R1cmUgZm9yIGZs
b3cgZmlsdGVyaW5nIG9mZmxvYWRpbmcgbGltaXRlZAo+ID4gdGhlIGNhcGFiaWxpdHkgb2YgSW50
ZWwgRXRoZXJuZXQgODAwIFNlcmllcyBEeW5hbWljIERldmljZQo+ID4gUGVyc29uYWxpemF0aW9u
IChERFApIFBhY2thZ2UuIFRoZSBmbG93IGZpbHRlcmluZyBvZmZsb2FkaW5nIGluIHRoZQo+ID4g
ZHJpdmVyIGlzIGVuYWJsZWQgYmFzZWQgb24gdGhlIG5hbWluZyBwYXJzZXJzLCBlYWNoIGZsb3cg
cGF0dGVybiBpcwo+ID4gcmVwcmVzZW50ZWQgYnkgYSBwcm90b2NvbCBoZWFkZXIgc3RhY2suIEFu
ZCB0aGVyZSBhcmUgbXVsdGlwbGUgbGF5ZXJzCj4gPiAoZS5nLiwgdmlydGNobmwpIHRvIG1haW50
YWluIHRoZWlyIG93biBlbnVtL21hY3JvL3N0cnVjdHVyZQo+ID4gdG8gcmVwcmVzZW50IGEgcHJv
dG9jb2wgaGVhZGVyIChJUCwgVENQLCBVRFAgLi4uKSwgdGh1cyB0aGUgZXh0cmEKPiA+IHBhcnNl
cnMgdG8gdmVyaWZ5IGlmIGEgcGF0dGVybiBpcyBzdXBwb3J0ZWQgYnkgaGFyZHdhcmUgb3Igbm90
IGFzCj4gPiB3ZWxsIGFzIHRoZSBleHRyYSBjb252ZXJ0ZXJzIHRoYXQgdG8gdHJhbnNsYXRlIHJl
cHJlc2VudHMgYmV0d2Vlbgo+ID4gZGlmZmVyZW50IGxheWVycy4gRXZlcnkgdGltZSBhIG5ldyBw
cm90b2NvbC9maWVsZCBpcyByZXF1ZXN0ZWQgdG8gYmUKPiA+IHN1cHBvcnRlZCwgdGhlIGNvcnJl
c3BvbmRpbmcgbG9naWMgZm9yIHRoZSBwYXJzZXJzIGFuZCB0aGUgY29udmVydGVycwo+ID4gbmVl
ZHMgdG8gYmUgbW9kaWZpZWQgYWNjb3JkaW5nbHkuIFRodXMsIGh1Z2UgJiByZWR1bmRhbnQgZWZm
b3J0cyBhcmUKPiA+IHJlcXVpcmVkIHRvIHN1cHBvcnQgdGhlIGluY3JlYXNpbmcgZmxvdyBmaWx0
ZXJpbmcgb2ZmbG9hZGluZyBmZWF0dXJlcywKPiA+IGVzcGVjaWFsbHkgZm9yIHRoZSB0dW5uZWwg
dHlwZXMgZmxvdyBmaWx0ZXJpbmcuCj4KPiBBcmUgeW91IHRhbGtpbmcgYWJvdXQgcHJvYmxlbXMg
aW50ZXJuYWwgdG8gSUNFIG9yIHRoZSBmbG93ZXIgaW50ZXJmYWNlPwo+Cj4gPiBUaGlzIHBhdGNo
IHNldCBwcm92aWRlcyBhIHdheSBmb3IgYXBwbGljYXRpb25zIHRvIHNlbmQgZG93biB0cmFpbmlu
Zwo+ID4gcGFja2V0cyAmIG1hc2tzIChpbiBiaW5hcnkpIHRvIHRoZSBkcml2ZXIuIFRoZW4gdGhl
c2UgYmluYXJ5IGRhdGEKPiA+IHdvdWxkIGJlIHVzZWQgYnkgdGhlIGRyaXZlciB0byBnZW5lcmF0
ZSBjZXJ0YWluIGRhdGEgdGhhdCBhcmUgbmVlZGVkCj4gPiB0byBjcmVhdGUgYSBmaWx0ZXIgcnVs
ZSBpbiB0aGUgZmlsdGVyaW5nIHN0YWdlIG9mIHN3aXRjaC9SU1MvRkRJUi4KPgo+IFdoYXQncyB0
aGUgQVBJIGZvciB0aGUgdXNlcj8gSSBzZWUgYSB3aG9sZSBidW5jaCBvZiBmdW5jdGlvbnMgYWRk
ZWQgaGVyZQo+IHdoaWNoIG5ldmVyIGdldCBjYWxsZWQuCj4KPiA+IE5vdGUgdGhhdCB0aGUgaW1w
YWN0IG9mIGEgbWFsaWNpb3VzIHJ1bGUgaW4gdGhlIHJhdyBwYWNrZXQgZmlsdGVyIGlzCj4gPiBs
aW1pdGVkIHRvIHBlcmZvcm1hbmNlIHJhdGhlciB0aGFuIGZ1bmN0aW9uYWxpdHkuIEl0IG1heSBh
ZmZlY3QgdGhlCj4gPiBwZXJmb3JtYW5jZSBvZiB0aGUgd29ya2xvYWQsIHNpbWlsYXIgdG8gb3Ro
ZXIgbGltaXRhdGlvbnMgaW4gRkRJUi9SU1MKPiA+IG9uIEFWRi4gRm9yIGV4YW1wbGUsIHRoZXJl
IGlzIG5vIHJlc291cmNlIGJvdW5kYXJ5IGZvciBWRiBGRElSL1JTUwo+ID4gcnVsZXMsIHNvIG9u
ZSBtYWxpY2lvdXMgVkYgY291bGQgcG90ZW50aWFsbHkgbWFrZSBvdGhlciBWRnMKPiA+IGluZWZm
aWNpZW50IGluIG9mZmxvYWRpbmcuCj4gPgo+ID4gVGhlIHBhcnNlciBsaWJyYXJ5IGlzIGV4cGVj
dGVkIHRvIGluY2x1ZGUgYm91bmRhcnkgY2hlY2tzIHRvIHByZXZlbnQKPiA+IGNyaXRpY2FsIGVy
cm9ycyBzdWNoIGFzIGluZmluaXRlIGxvb3BzIG9yIHNlZ21lbnRhdGlvbiBmYXVsdHMuCj4gPiBI
b3dldmVyLCBvbmx5IGltcGxlbWVudGluZyBhbmQgdmFsaWRhdGluZyB0aGUgcGFyc2VyIGVtdWxh
dG9yIGluIGEKPiA+IHNhbmRib3ggZW52aXJvbm1lbnQgKGxpa2UgZWJwZikgcHJlc2VudHMgYSBj
aGFsbGVuZ2UuCj4gPgo+ID4gVGhlIGlkZWEgaXMgdG8gbWFrZSB0aGUgZHJpdmVyIGJlIGFibGUg
dG8gbGVhcm4gZnJvbSB0aGUgRERQIHBhY2thZ2UKPiA+IGRpcmVjdGx5IHRvIHVuZGVyc3RhbmQg
aG93IHRoZSBoYXJkd2FyZSBwYXJzZXIgd29ya3MgKGkuZS4sIHRoZQo+ID4gUGFyc2VyIExpYnJh
cnkpLCBzbyB0aGF0IGl0IGNhbiBwcm9jZXNzIG9uIHRoZSByYXcgdHJhaW5pbmcgcGFja2V0Cj4g
PiAoaW4gYmluYXJ5KSBkaXJlY3RseSBhbmQgY3JlYXRlIHRoZSBmaWx0ZXIgcnVsZSBhY2NvcmRp
bmdseS4KPgo+IE5vIGlkZWEgd2hhdCB0aGlzIG1lYW5zIGluIHRlcm1zIG9mIHRoZSBsYXJnZXIg
bmV0d29ya2luZyBzdGFjay4KPgoKWWVzLCBjcmVhdGluZyBhbiBlbGFib3JhdGUgbWVjaGFuaXNt
IHRoYXQgaXMgb25seSB1c2FibGUgZm9yIG9uZQp2ZW5kb3IsIGUuZy4gYSBmZWF0dXJlIG9mIERE
UCwgcmVhbGx5IGlzbid0IHZlcnkgaGVscGZ1bC4gUGFyc2luZyBpcyBhCnZlcnkgY29tbW9uIG9w
ZXJhdGlvbiBpbiB0aGUgbmV0d29ya2luZyBzdGFjaywgYW5kIGlmIHRoZXJlJ3MKc29tZXRoaW5n
IHdpdGggdGhlIHZhbmdsb3Jpb3VzIG5hbWUgb2YgIlBhcnNlciBMaWJyYXJ5IiByZWFsbHkgc2hv
dWxkCnN0YXJ0IG9mZiBhcyBiZWluZyBhIGNvbW1vbiwgZm91bmRhdGlvbmFsLCB2ZW5kb3IgYWdu
b3N0aWMgbGlicmFyeSB0bwpzb2x2ZSB0aGUgbGFyZ2VyIHByb2JsZW0gYW5kIHByb3ZpZGUgdGhl
IG1vc3QgdXRpbGl0eS4gVGhlIGNvbW1vbgpjb21wb25lbnRzIHdvdWxkIGRlZmluZSBjb25zaXN0
ZW50IHVzZXIgYW5kIGtlcm5lbCBpbnRlcmZhY2VzIGZvcgpwYXJzZXIgb2ZmbG9hZCwgaW50ZXJm
YWNlcyBpbnRvIHRoZSBOSUMgZHJpdmVycyB3b3VsZCBiZSBkZWZpbmVkIHRvCmFsbG93IGRpZmZl
cmVudCB2ZW5kb3JzIHRvIGltcGxlbWVudCBwYXJzZXIgb2ZmbG9hZCBpbiB0aGVpciBkZXZpY2Vz
LgoKVGhlIGNvbmNlcHRzIGluIGtQYXJzZXIgcGF0Y2ggIm5ldC9rcGFyc2VyOiBhZGQga1BhcnNl
ciIgd2VyZSBhbGlnbmVkCndpdGggd2hhdCB0aGUgYmFja2VuZCBvZiBQYXJzZXIgTGlicmFyeSBt
aWdodCBiZS4gVGhhdCBwYXRoIGludHJvZHVjZWQKaXByb3V0ZSBjb21tYW5kcyB0byBwcm9ncmFt
IGFuIGluIGtlcm5lbCBwYXJzZXIgZXh0ZW5zaWJsZSB0byBzdXBwb3J0CmFyYml0cmFyeSBwcm90
b2NvbHMgKGluY2x1ZGluZyBjb25zdHJ1Y3RzIGxpa2UgVExWcywgZmxhZyBmaWVsZHMsIGFuZApu
b3cgZXZlbiBuZXN0ZWQgVExWcykuIEl0IGlzIHF1aXRlIGNvbmNlaXZhYmxlIHRoYXQgdGhlc2Ug
Y29tbWFuZHMKY291bGQgYmUgc2VudCB0byB0aGUgZGV2aWNlIHRvIGFjaGlldmUgcHJvZ3JhbW1h
YmxlIHBhcnNlciBvZmZsb2FkLgoKVG9tCgoKPiA+IEJhc2VkIG9uIHRoaXMgUGFyc2VyIExpYnJh
cnksIHRoZSByYXcgZmxvdyBmaWx0ZXJpbmcgb2YKPiA+IHN3aXRjaC9SU1MvRkRJUiBjb3VsZCBi
ZSBlbmFibGVkIHRvIGFsbG93IG5ldyBmbG93IGZpbHRlcmluZwo+ID4gb2ZmbG9hZGluZyBmZWF0
dXJlcyB0byBiZSBzdXBwb3J0ZWQgd2l0aG91dCBhbnkgZHJpdmVyIGNoYW5nZXMgKG9ubHkKPiA+
IG5lZWQgdG8gdXBkYXRlIHRoZSBERFAgcGFja2FnZSkuCj4KPiBTb3VuZHMgbGlrZSB5b3UgYXJl
IHRhbGtpbmcgYWJvdXQgc29tZSB2YWd1ZSAidmlzaW9uIiByYXRoZXIgdGhhbgo+IHRoZSBjb2Rl
IHlvdSdyZSBhY3R1YWxseSBwb3N0aW5nLgo+Cj4gR2l2ZW4gdGhhdCB5b3UndmUgcG9zdGVkIDUg
dmVyc2lvbnMgb2YgdGhpcyB0byBuZXRkZXYgYW5kIGdvdCBubwo+IG5vdGFibGUgY29tbWVudHMs
IHBsZWFzZSBkb24ndCBDQyBuZXRkZXYgb24gdGhlIG5leHQgdmVyc2lvbgo+IHVudGlsIHlvdSBn
ZXQgc29tZSByZXZpZXdzIGluc2lkZSBJbnRlbC4gU3R1ZmYgbGlrZToKPgo+ICsjZGVmaW5lIElD
RV9FUlJfTk9UX0lNUEwgICAgICAgICAgICAgICAtMQo+Cj4gc2hvdWxkIGdldCBjYXVnaHQgYnkg
aW50ZXJuYWwgcmV2aWV3Lgo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9z
dW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
d2lyZWQtbGFuCg==
