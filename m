Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EE95C6DFD1A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 19:56:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 75E9641EEB;
	Wed, 12 Apr 2023 17:56:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 75E9641EEB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681322193;
	bh=PQffkjSULBX5N4c/8wt85xeYHDTspqOs12WrEU0DeGA=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xIkGynf3hErYRP+7cJqlKBjoVwj+Mw0ad1ZtmdwJf6Xis3VXNnxrY3TYAtfBWDU6f
	 mo0oH9UVZWngt4Tk28g1FsCkmx+BYaQeE1IaECmKvoioi+rPJrndgvc0+5xol5mepq
	 5qlY+/FKqk8/PfzVYoGIESyu2s6NLk8JBxf8phoI2sXRLW+oSNQD4huvPRIDGYnbWl
	 hC9jKZN1VoLqzSVrp2VmrujEX6db1EVZZ4u5EuTOmffQ2pYKcFvsjxlT3alnbZZp1m
	 i/FpK9cpehL8U6TfXIfBb1TXQzmVNBSOzzBXEFw6aycjXaSy42nQaRcAqouYIJqGks
	 qntXRqcY3WsKw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fZR6WTWrd8_8; Wed, 12 Apr 2023 17:56:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1142941EEA;
	Wed, 12 Apr 2023 17:56:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1142941EEA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8C06D1BF37A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 17:56:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 61E0A41EEA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 17:56:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 61E0A41EEA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PhW0hAy15Nhp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 17:56:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6E40541EE8
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com
 [IPv6:2607:f8b0:4864:20::429])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6E40541EE8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 17:56:26 +0000 (UTC)
Received: by mail-pf1-x429.google.com with SMTP id
 d2e1a72fcca58-63b145b3b03so1135787b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 10:56:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681322186;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=qC0J8ipO5xQolwxkiv40AtEnP8cuuUuoL3jFk2sT+xU=;
 b=WjPSMF59NIpug6AAZvUJ7qYSBTFsWCPKbAYJKbL+PEDOaGN6ViSV2nSmQ8ohP9+moX
 GkXJ0WW/NzQVGWTZYDQRBI5nHb1I0dGMOV4AJEh5BLgyp8sTW+PDG177LmWeB4LXeA8N
 QIG7lqRucl3eWnGuXMmNWPrEOJs1626t6TAwgSJiV6AW7VzZn49E5NT6iT9iX0BVSCz1
 QF+Mn+zCwRcQQ/2VLGsjgiR0JAIk3+P1Dmx2aS56dDdm3JqR0y4HZTmyui+DyvyI7k7Z
 StPfTrInYv71RN1sY9OjnUxnRpaCotaDQjhF064jJvrpIT1hzlmhh6508o3Vv5rlSWwz
 ePXg==
X-Gm-Message-State: AAQBX9ezWx6YGero9oTbXnz4r13wEH+t1aiNhg9I4bCaSliuzHl4OrzB
 p3RzaUJXDnZB5cH6ke5Kff3R5dpn+P1JNrAlpGrYFA==
X-Google-Smtp-Source: AKy350bTungGNSfBzyJElO3L4Pqje2XW5a7VPmPwAVWRYoIgihrJFvryebkoCdI1ykq4RWf0nveqt5LC2WxIaa+L08g=
X-Received: by 2002:a05:6a00:2d22:b0:632:e692:55b2 with SMTP id
 fa34-20020a056a002d2200b00632e69255b2mr1762332pfb.2.1681322185562; Wed, 12
 Apr 2023 10:56:25 -0700 (PDT)
MIME-Version: 1.0
References: <168130333143.150247.11159481574477358816.stgit@firesoul>
 <168130336725.150247.12193228778654006957.stgit@firesoul>
 <ZDbiofWhQhFEfIsr@google.com>
 <34152b76-88c8-0848-9f30-bd9755b1ee25@redhat.com>
In-Reply-To: <34152b76-88c8-0848-9f30-bd9755b1ee25@redhat.com>
From: Stanislav Fomichev <sdf@google.com>
Date: Wed, 12 Apr 2023 10:56:14 -0700
Message-ID: <CAKH8qBub-b0R42k-J=3gyvKeWVDBy7DoxQCn7GAynEDB8z9rbw@mail.gmail.com>
To: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1681322186;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qC0J8ipO5xQolwxkiv40AtEnP8cuuUuoL3jFk2sT+xU=;
 b=av8In+IitDjEfmXBb9r8y8s0KgzNn33ghSZo9Q/jk4j+WAQ5n6xIBxI+GILpW98Qjw
 oKqYBzlcPSNfQuz1T69VJyUyRwvNF/j1lnG0AMnQtClFfd7W6vLOWA8ExKcFUGkAMoiL
 c+KXy6wLSah2RlGIMcie47xhVxhomLX2VJIb3ltpPCiVYD5+ca2hswJ9XChNykGs4tdB
 VwdC+KKIT3eSVFNuUeV4lTAhDPDqIXvieEuOSL97MDHwy0um3O9kg91OHYu2xjAT975e
 VAVOVzTiaIMUEkK7ELglagPtiCc/pLzAjvdlMLzVHhW6Pajbj2DDxksiWeVuMvgLYttB
 KqPg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20221208 header.b=av8In+Ii
Subject: Re: [Intel-wired-lan] [PATCH bpf V8 2/7] selftests/bpf: Add
 counters to xdp_hw_metadata
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
Cc: ast@kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 boon.leong.ong@intel.com, hawk@kernel.org, xdp-hints@xdp-project.net,
 daniel@iogearbox.net, linux-rdma@vger.kernel.org, john.fastabend@gmail.com,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org,
 brouer@redhat.com, kuba@kernel.org, pabeni@redhat.com, martin.lau@kernel.org,
 larysa.zaremba@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>,
 linux-kernel@vger.kernel.org, tariqt@nvidia.com, yoong.siang.song@intel.com,
 bpf@vger.kernel.org, saeedm@nvidia.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBBcHIgMTIsIDIwMjMgYXQgMTA6NTLigK9BTSBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVy
CjxqYnJvdWVyQHJlZGhhdC5jb20+IHdyb3RlOgo+Cj4KPiBPbiAxMi8wNC8yMDIzIDE4LjU2LCBT
dGFuaXNsYXYgRm9taWNoZXYgd3JvdGU6Cj4gPiBPbiAwNC8xMiwgSmVzcGVyIERhbmdhYXJkIEJy
b3VlciB3cm90ZToKPiA+PiBBZGQgY291bnRlcnMgZm9yIHNraXBwZWQsIGZhaWxlZCBhbmQgcmVk
aXJlY3RlZCBwYWNrZXRzLgo+ID4+IFRoZSB4ZHBfaHdfbWV0YWRhdGEgcHJvZ3JhbSBvbmx5IHJl
ZGlyZWN0cyBVRFAgcG9ydCA5MDkxLgo+ID4+IFRoaXMgaGVscHMgdXNlcnMgdG8gcXVpY2tseSBp
ZGVudGlmeSB0aGVuIHBhY2tldHMgYXJlCj4gPj4gc2tpcHBlZCBhbmQgaWRlbnRpZnkgZmFpbHVy
ZXMgb2YgYnBmX3hkcF9hZGp1c3RfbWV0YS4KPiA+Pgo+ID4+IFNpZ25lZC1vZmYtYnk6IEplc3Bl
ciBEYW5nYWFyZCBCcm91ZXIgPGJyb3VlckByZWRoYXQuY29tPgo+ID4+IC0tLQo+ID4+ICAgLi4u
L3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYyAgfCAgIDE1ICsr
KysrKysrKysrKystLQo+ID4+ICAgdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3hkcF9od19t
ZXRhZGF0YS5jICAgICAgfCAgICA0ICsrKy0KPiA+PiAgIDIgZmlsZXMgY2hhbmdlZCwgMTYgaW5z
ZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiA+Pgo+ID4+IGRpZmYgLS1naXQgYS90b29scy90
ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MveGRwX2h3X21ldGFkYXRhLmMgYi90b29scy90ZXN0
aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MveGRwX2h3X21ldGFkYXRhLmMKPiA+PiBpbmRleCBiMDEw
NDc2MzQwNWEuLmEwN2VmNzUzNDAxMyAxMDA2NDQKPiA+PiAtLS0gYS90b29scy90ZXN0aW5nL3Nl
bGZ0ZXN0cy9icGYvcHJvZ3MveGRwX2h3X21ldGFkYXRhLmMKPiA+PiArKysgYi90b29scy90ZXN0
aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MveGRwX2h3X21ldGFkYXRhLmMKPiA+PiBAQCAtMjUsNiAr
MjUsMTAgQEAgc3RydWN0IHsKPiA+PiAgICAgIF9fdHlwZSh2YWx1ZSwgX191MzIpOwo+ID4+ICAg
fSB4c2sgU0VDKCIubWFwcyIpOwo+ID4+Cj4gPj4gK3ZvbGF0aWxlIF9fdTY0IHBrdHNfc2tpcCA9
IDA7Cj4gPj4gK3ZvbGF0aWxlIF9fdTY0IHBrdHNfZmFpbCA9IDA7Cj4gPj4gK3ZvbGF0aWxlIF9f
dTY0IHBrdHNfcmVkaXIgPSAwOwo+ID4+ICsKPiA+PiAgIGV4dGVybiBpbnQgYnBmX3hkcF9tZXRh
ZGF0YV9yeF90aW1lc3RhbXAoY29uc3Qgc3RydWN0IHhkcF9tZCAqY3R4LAo+ID4+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgX191NjQgKnRpbWVzdGFtcCkgX19rc3ltOwo+
ID4+ICAgZXh0ZXJuIGludCBicGZfeGRwX21ldGFkYXRhX3J4X2hhc2goY29uc3Qgc3RydWN0IHhk
cF9tZCAqY3R4LAo+ID4+IEBAIC01OSwxNiArNjMsMjEgQEAgaW50IHJ4KHN0cnVjdCB4ZHBfbWQg
KmN0eCkKPiA+PiAgICAgICAgICAgICAgICAgICAgICB1ZHAgPSBOVUxMOwo+ID4+ICAgICAgfQo+
ID4+Cj4gPj4gLSAgICBpZiAoIXVkcCkKPiA+PiArICAgIGlmICghdWRwKSB7Cj4gPj4gKyAgICAg
ICAgICAgIHBrdHNfc2tpcCsrOwo+ID4+ICAgICAgICAgICAgICByZXR1cm4gWERQX1BBU1M7Cj4g
Pj4gKyAgICB9Cj4gPj4KPiA+PiAgICAgIC8qIEZvcndhcmRpbmcgVURQOjkwOTEgdG8gQUZfWERQ
ICovCj4gPj4gLSAgICBpZiAodWRwLT5kZXN0ICE9IGJwZl9odG9ucyg5MDkxKSkKPiA+PiArICAg
IGlmICh1ZHAtPmRlc3QgIT0gYnBmX2h0b25zKDkwOTEpKSB7Cj4gPj4gKyAgICAgICAgICAgIHBr
dHNfc2tpcCsrOwo+ID4+ICAgICAgICAgICAgICByZXR1cm4gWERQX1BBU1M7Cj4gPj4gKyAgICB9
Cj4gPj4KPiA+PiAgICAgIHJldCA9IGJwZl94ZHBfYWRqdXN0X21ldGEoY3R4LCAtKGludClzaXpl
b2Yoc3RydWN0IHhkcF9tZXRhKSk7Cj4gPj4gICAgICBpZiAocmV0ICE9IDApIHsKPiA+Cj4gPiBb
Li5dCj4gPgo+ID4+ICAgICAgICAgICAgICBicGZfcHJpbnRrKCJicGZfeGRwX2FkanVzdF9tZXRh
IHJldHVybmVkICVkIiwgcmV0KTsKPiA+Cj4gPiBNYXliZSBsZXQncyByZW1vdmUgdGhlc2UgY29t
cGxldGVseT8gTWVyZ2UgcGF0Y2ggMSBhbmQgMiwgcmVtb3ZlIHByaW50aywKPiA+IGFkZCBjb3Vu
dGVycy4gV2UgY2FuIGFkZCBtb3JlIGNvdW50ZXJzIGluIHRoZSBmdXR1cmUgaWYgdGhlIGV4aXN0
aW5nCj4gPiBvbmVzIGFyZSBub3QgZW5vdWdoLi4gV0RZVD8KPiA+Cj4KPiBTdXJlLCBsZXRzIGp1
c3QgcmVtb3ZlIGFsbCBvZiB0aGUgYnBmX3ByaW50aywgYW5kIGFkZCB0aGVzZSBjb3VudGVyIGlu
c3RlYWQuCj4gUm9sbGluZyBWOS4KPgo+ID4+ICsgICAgICAgICAgICBwa3RzX2ZhaWwrKzsKPgo+
IFRoaXMgZmFpbCBjb3VudGVyIHNob3VsZCBiZSBlbm91Z2ggZm9yIGRyaXZlciBkZXZlbCB0byBy
ZWFsaXplIHRoYXQgdGhleQo+IGFsc28gbmVlZCB0byBpbXBsZW1lbnQvc2V0dXAgWERQIG1ldGFk
YXRhIHBvaW50ZXJzIGNvcnJlY3RseSAoZm9yCj4gYnBmX3hkcF9hZGp1c3RfbWV0YSB0byB3b3Jr
KS4KCkFncmVlZC4gQXMgbG9uZyBhcyB3ZSBoYXZlIGEgY2xlYXIgc2lnbmFsICJzb21ldGhpbmcn
cyBub3Qgd29ya2luZyIKKGluc3RlYWQgb2YgZmFpbGluZyBzaWxlbnRseSksIHRoYXQgc2hvdWxk
IGJlIGVub3VnaCB0byBnZXQgdG8gdGhlCmJvdHRvbSBvZiBpdC4uCgo+ID4+ICAgICAgICAgICAg
ICByZXR1cm4gWERQX1BBU1M7Cj4gPj4gICAgICB9Cj4KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
