Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4108A73D03F
	for <lists+intel-wired-lan@lfdr.de>; Sun, 25 Jun 2023 13:00:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B308F81E64;
	Sun, 25 Jun 2023 11:00:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B308F81E64
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687690815;
	bh=r8KuNQt1e85KGSLd2zzNn+VrBkPfuDIraeP7KycTUJA=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cOPo1RGGnDrYK753f/MhQIlnr6BwUt+B+R8jyU2aEYoO/rdOGQfQ9WJNkq3QlSjPF
	 Rr7+Lrm95a5AvvVpVuvQRYloCWjVkPSU+CS23PAgJ0fPTbDxnmLTcZo6VqZtrpMPMG
	 xrvJd2hdUhHNfxmEtRs+FQe+PUHuLLnEPa+Io+uZNl37XsdCdb2hQ3/Y5rWQhc3Rys
	 rRchQrKZg7zdb2IxUpjJxPup3HVQDldEQs7lcRU7kzbPAZnKDT/V6oMO7wrxPhzPFS
	 rwijHKO+9RiFRnCYoqKMaCEyV0YHaQ9PBQ7XECphqws8goRI5np9E0x9TvFc92OqXx
	 zO65yFsXRaadA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XLk5PEaTwZWf; Sun, 25 Jun 2023 11:00:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 89ED281E56;
	Sun, 25 Jun 2023 11:00:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 89ED281E56
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 46E991BF310
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Jun 2023 11:00:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1EB4E81E56
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Jun 2023 11:00:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1EB4E81E56
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yRZFyVJ86pJx for <intel-wired-lan@lists.osuosl.org>;
 Sun, 25 Jun 2023 11:00:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D183581E52
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com
 [IPv6:2607:f8b0:4864:20::732])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D183581E52
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Jun 2023 11:00:08 +0000 (UTC)
Received: by mail-qk1-x732.google.com with SMTP id
 af79cd13be357-76547539775so192046185a.3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Jun 2023 04:00:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687690806; x=1690282806;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=dKAqS1IRHxaG8p0D5W59MTZOs24Gb0NtrebwVnd10no=;
 b=Qv6GjjnFpSur11rw75IgBvNHqp8lV2xcN9nUEocTmX/Q3r5p8E88U90wVltuBwu8Zj
 BQ04yVI2/dj83WE8QVLPrlhk4OVAQQztreTiAfQ7vGoJaoT1U5uV3WTBkDBf1cxw/Q8M
 KoKtPiuRxB+SuTsp6uEH3VlPJ6jA6tAzKoGGJUYOJil4JGbSeVZMfjJaRKwx5tx4KbgH
 fR7xbUCFTlCmzqbD2CVoBu0Xi7rNqEFusfb9ROdKS40iTJXPnib1rff7fVW/EXQcFozO
 AJkzIOLdEtxQYysXDLXaFOY0OPWY+rrpkmk2JZR3v8GNDia2ElQYZb7f5sTT1r5FxheB
 OVBA==
X-Gm-Message-State: AC+VfDxpc8qFDJOwCiBASwRDP2TScxcSjYLIynQY+a76Lt+gzPy+40A9
 CN8KBqnZOs0388z5ntRaSRkLZFivol2NHD8MOer3vmGKaVY=
X-Google-Smtp-Source: ACHHUZ5Ci1RJLtTHdKj5xJiYxyEVNHPV3JF/yMJpYbPaJvnDo6HJFTHj8N6mW6CJu6uUFYGf73cKbRqqxIujLVJcBUQ=
X-Received: by 2002:a05:6214:c86:b0:630:228d:6d2d with SMTP id
 r6-20020a0562140c8600b00630228d6d2dmr22709964qvr.56.1687690806500; Sun, 25
 Jun 2023 04:00:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAA85sZukiFq4A+b9+en_G85eVDNXMQsnGc4o-4NZ9SfWKqaULA@mail.gmail.com>
In-Reply-To: <CAA85sZukiFq4A+b9+en_G85eVDNXMQsnGc4o-4NZ9SfWKqaULA@mail.gmail.com>
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Sun, 25 Jun 2023 12:59:54 +0200
Message-ID: <CAA85sZvm1dL3oGO85k4R+TaqBiJsggUTpZmGpH1+dqdC+U_s1w@mail.gmail.com>
To: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1687690806; x=1690282806;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=dKAqS1IRHxaG8p0D5W59MTZOs24Gb0NtrebwVnd10no=;
 b=nGOMrEZyyIxS8Fi3iZhj7GaliyoxeilYrAuIzxyGqsPsBnKHxdaAW9Ak0K27oMLL78
 hMj5eJycpyR123eZK3NBB9Qmtc3rNYvcl5c/YF6LT//snWEWobGNQ8tPLwGz61+MSWvX
 BJ23Wy72XiaHB1qd9quFeAY2iOMPrZwWhkQBlzAfaUJvZo4/ReA2FWiGXfkIK5fCz4ye
 yZAKbcaxd6PXn9gcspzk1Nj88Y/1V7TdJAZeGQTJpuOFVw7GZiivlogwl4XhgJM2I8yN
 OSgffPSUG/7AJDZsi5tf0ZnmupLLxvYpsV4xUJKQSZCl1rytq40Z35g3atDiuLkxaYnB
 L1kA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=nGOMrEZy
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SXQgY291bGQgYWN0dWFsbHkgYmUgdGhhdCBpdCdzIHJlbGF0ZWQgdG86IHJ4LWdyby1saXN0IGJ1
dApyeC11ZHAtZ3JvLWZvcndhcmRpbmcgbWFrZXMgaXQgdHJpZ2dlciBxdWlja2VyLi4uICBJIGhh
dmUgeWV0IHRvCnRyaWdnZXIgaXQgb24gaWdiCgpPbiBTYXQsIEp1biAyNCwgMjAyMyBhdCAxMDow
M+KAr1BNIElhbiBLdW1saWVuIDxpYW4ua3VtbGllbkBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gSGkg
YWdhaW4sCj4KPiBJIHN1c3BlY3QgdGhhdCBJIGhhdmUgcm91bmRlZCB0aGlzIGRvd24gdG8gdGhl
IHJ4LXVkcC1ncm8tZm9yd2FyZGluZwo+IG9wdGlvbi4uLiBJIGtub3cgaXQncyBub3Qgb24gYnkg
ZGVmYXVsdCBidXQuLi4uCj4KPiBTbywgSSBoYXZlIGEgbWFjaGluZSB3aXRoIGZvdXIgbmljcywg
YWxsIHVzaW5nIGl4Z2JlLCB0aGV5IGFyZSBhbGw6Cj4gMDY6MDAuMCBFdGhlcm5ldCBjb250cm9s
bGVyOiBJbnRlbCBDb3Jwb3JhdGlvbiBFdGhlcm5ldCBDb25uZWN0aW9uCj4gWDU1MyAxR2JFIChy
ZXYgMTEpCj4gMDY6MDAuMSBFdGhlcm5ldCBjb250cm9sbGVyOiBJbnRlbCBDb3Jwb3JhdGlvbiBF
dGhlcm5ldCBDb25uZWN0aW9uCj4gWDU1MyAxR2JFIChyZXYgMTEpCj4gMDc6MDAuMCBFdGhlcm5l
dCBjb250cm9sbGVyOiBJbnRlbCBDb3Jwb3JhdGlvbiBFdGhlcm5ldCBDb25uZWN0aW9uCj4gWDU1
MyAxR2JFIChyZXYgMTEpCj4gMDc6MDAuMSBFdGhlcm5ldCBjb250cm9sbGVyOiBJbnRlbCBDb3Jw
b3JhdGlvbiBFdGhlcm5ldCBDb25uZWN0aW9uCj4gWDU1MyAxR2JFIChyZXYgMTEpCj4KPiBCdXQg
SSBoYXZlIGJlZW4gcGxheWluZyB3aXRoIHZhcmlvdXMuLi4gY3VycmVudGx5IGkgZG86Cj4gZm9y
IGludGVyZmFjZSBpbiBlbm8xIGVubzIgZW5vMyBlbm80IDsgZG8KPiAgIGZvciBvZmZsb2FkIGlu
IG50dXBsZSBody10Yy1vZmZsb2FkIHJ4LWdyby1saXN0IDsgZG8KPiAgICAgZXRodG9vbCAtSyAk
aW50ZXJmYWNlICRvZmZsb2FkIG9uID4gL2Rldi9udWxsCj4gICBkb25lCj4gICBldGh0b29sIC1H
ICRpbnRlcmZhY2UgcnggODE5MiB0eCA4MTkyID4gL2RldlludWxsCj4gZG9uZQo+Cj4gQW5kIGl0
IGFsbCBzZWVtcyB0byB3b3JrIGp1c3QgZmluZSBmb3IgbXkgbGl0dGxlIGZpcmV3YWxsCj4KPiBI
b3dldmVyLCBlbmFibGluZyByeC11ZHAtZ3JvLWZvcndhcmRpbmcgcmVzdWx0cyBpbiB0aGUgYXR0
YWNoZWQgb29vb3BzCj4gKHNvcnJ5LCBjYW4ndCBzZWUgbW9yZSwgYmVlbiByZWNyZWF0aW5nIGJ5
IHdhdGNoaW5nIHNob3dzIG9uIEhCTwo+IG1heC4uLiApCj4KPiBUaGUgY29kZSBzZWVtcyB0byBk
ZWNvZGUgdG86Cj4gQ29kZTogYzMgMDggNjYgODkgNWMgMDIgMDQgNDUgODQgZTQgMGYgODUgMjcg
ZmQgZmYgZmYgNDkgOGIgMWUgNDkgOGIKPiBhZSBjOCAwMCAwMCAwMCA0MSAwZiBiNyA4NiBiOCAw
MCAwMCAwMCA0NSAwZiBiNyBhNiBiNiAwMCAwMCAwMCA8NDg+IDhiCj4gYjMgYzggMDAgMDAgMDAg
MGYgYjcgOGIgYjYgMDAgMDAgMDAgNDkgMDEgZWMgNDggMDEgYzUgNDggOGQKPiBBbGwgY29kZQo+
ID09PT09PT09Cj4gICAgMDogYzMgICAgICAgICAgICAgICAgICAgIHJldAo+ICAgIDE6IDA4IDY2
IDg5ICAgICAgICAgICAgICBvciAgICAgJWFoLC0weDc3KCVyc2kpCj4gICAgNDogNWMgICAgICAg
ICAgICAgICAgICAgIHBvcCAgICAlcnNwCj4gICAgNTogMDIgMDQgNDUgODQgZTQgMGYgODUgYWRk
ICAgIC0weDdhZjAxYjdjKCwlcmF4LDIpLCVhbAo+ICAgIGM6IDI3ICAgICAgICAgICAgICAgICAg
ICAoYmFkKQo+ICAgIGQ6IGZkICAgICAgICAgICAgICAgICAgICBzdGQKPiAgICBlOiBmZiAgICAg
ICAgICAgICAgICAgICAgKGJhZCkKPiAgICBmOiBmZiA0OSA4YiAgICAgICAgICAgICAgZGVjbCAg
IC0weDc1KCVyY3gpCj4gICAxMjogMWUgICAgICAgICAgICAgICAgICAgIChiYWQpCj4gICAxMzog
NDkgOGIgYWUgYzggMDAgMDAgMDAgbW92ICAgIDB4YzgoJXIxNCksJXJicAo+ICAgMWE6IDQxIDBm
IGI3IDg2IGI4IDAwIDAwIG1vdnp3bCAweGI4KCVyMTQpLCVlYXgKPiAgIDIxOiAwMAo+ICAgMjI6
IDQ1IDBmIGI3IGE2IGI2IDAwIDAwIG1vdnp3bCAweGI2KCVyMTQpLCVyMTJkCj4gICAyOTogMDAK
PiAgIDJhOiogNDggOGIgYjMgYzggMDAgMDAgMDAgbW92ICAgIDB4YzgoJXJieCksJXJzaSA8LS0g
dHJhcHBpbmcgaW5zdHJ1Y3Rpb24KPiAgIDMxOiAwZiBiNyA4YiBiNiAwMCAwMCAwMCBtb3Z6d2wg
MHhiNiglcmJ4KSwlZWN4Cj4gICAzODogNDkgMDEgZWMgICAgICAgICAgICAgIGFkZCAgICAlcmJw
LCVyMTIKPiAgIDNiOiA0OCAwMSBjNSAgICAgICAgICAgICAgYWRkICAgICVyYXgsJXJicAo+ICAg
M2U6IDQ4ICAgICAgICAgICAgICAgICAgICByZXguVwo+ICAgM2Y6IDhkICAgICAgICAgICAgICAg
ICAgICAuYnl0ZSAweDhkCj4KPiBDb2RlIHN0YXJ0aW5nIHdpdGggdGhlIGZhdWx0aW5nIGluc3Ry
dWN0aW9uCj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+ICAg
IDA6IDQ4IDhiIGIzIGM4IDAwIDAwIDAwIG1vdiAgICAweGM4KCVyYngpLCVyc2kKPiAgICA3OiAw
ZiBiNyA4YiBiNiAwMCAwMCAwMCBtb3Z6d2wgMHhiNiglcmJ4KSwlZWN4Cj4gICAgZTogNDkgMDEg
ZWMgICAgICAgICAgICAgIGFkZCAgICAlcmJwLCVyMTIKPiAgIDExOiA0OCAwMSBjNSAgICAgICAg
ICAgICAgYWRkICAgICVyYXgsJXJicAo+ICAgMTQ6IDQ4ICAgICAgICAgICAgICAgICAgICByZXgu
Vwo+ICAgMTU6IDhkICAgICAgICAgICAgICAgICAgICAuYnl0ZSAweDhkCj4KPiBCdXQgY29ycmVs
YXRpbmcgdGhhdCB3aXRoIHRoZSBzb3VyY2UgaXMgYmV5b25kIG1lLCBpdCBjb3VsZCBiZSBnZW5l
cmljCj4gYnV0IGkgdGhvdWdodCBpJ2Qgc2VuZCBpdCB5b3UgZmlyc3Qgc2luY2UgaXQncyBwYXJ0
IG9mIHRoZSByZWRoYXQKPiBndWlkZSB0byBzcGVlZGluZyB1cCB1ZHAgdHJhZmZpYwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4g
bWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1
b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
