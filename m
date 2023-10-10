Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 857017C7649
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:07:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 122176128D;
	Thu, 12 Oct 2023 19:07:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 122176128D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137648;
	bh=5lhOGzfKc+dbFV0lmNxi7DAvMejYO3h0qICvUgSkQYI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=g6y95M8bT2atADFX0BT/XXh0d03zwQCvMFMh8G6/SLItSgMI/ZvKK+f3iyXWyRed5
	 ekRqES7XKD3u3SXv5NGhKscz7tykknMycFincVc4syoL+BX/n1AQ92z98iuJFIxOqo
	 RDo2hq36du8kaR1bkhKaZjFUB6ugBE2a4qd8yBRe7UreTBZsrotbItR9zfn0+xr+fX
	 KkYRf3NRDKQaWrdwhzn+yd0air4WtV1wGf0ZboERRa5mAxYZLMT6Y06mennXDy2Zwp
	 gkt7Uaj2x21lUMPqqxhiTd4tZF3Dr7dEVo3rct/cOvoWaORCHgd/s4jrWdGDs3YjZp
	 GsKiPappNFknQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RZbf_GL46oLJ; Thu, 12 Oct 2023 19:07:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EFBBD610B6;
	Thu, 12 Oct 2023 19:07:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EFBBD610B6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 74EF21BF310
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 21:43:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4C95082230
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 21:43:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C95082230
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S8w7RZ0zWwRq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 21:43:35 +0000 (UTC)
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2CD648222A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 21:43:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2CD648222A
Received: by mail-ed1-x533.google.com with SMTP id
 4fb4d7f45d1cf-53627feca49so10229263a12.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 14:43:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696974213; x=1697579013;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=CQ7LV7udIaMiewA1z3bMb8JW/Ylqm8aFLUitdTKsmZQ=;
 b=Kjc8bc8ltPHj8h3nTIBpy9gHTEdbxgyUUxmAkOKh6kw8yz9g625uePgFtHlCbv6+04
 0Zd9XxbOXUJFfcRs3vs5pDIo9IfB7+larhjjz485y9CnHyCUnjBnGZNwNvT9rjH5kpMy
 r3NGQOEnsoaRq8RJcOA4Iy1LE73xU4YZ9OwiLTJd7AP8lm9PYMRiU+E3+oPKKbiDqzdz
 zUeatMVLiS1lwF7Q9MzDV4sI4UkXq9g6RRw5Wf4OzS7dlfoP3ohY7PdCqG8zthgqSivq
 me2PIX7kJRHrXXSfk9Xm7m0wKRRXrZaux5oRUh06azjoYp1lRJM4JqBVZUC5JsXFm0gO
 HCVw==
X-Gm-Message-State: AOJu0Yzhiz3AU22JiOjZ0FTlU/ahNWaewHB4VidJKhI3u1241eF9pwkm
 4PSMTonkU1Wy4CkGc3vVF1CoOMTJbaLNENZHhnmABA==
X-Google-Smtp-Source: AGHT+IGOMNalWZyIJ6/M6e+qgCiNES2RiFczmxRyJOq7r5gdxadkHffHljA9WN4NZG0I3/lPm+rA1OuyNOLC/zBZBaM=
X-Received: by 2002:aa7:c30b:0:b0:530:b75d:7a83 with SMTP id
 l11-20020aa7c30b000000b00530b75d7a83mr16902772edq.21.1696974213069; Tue, 10
 Oct 2023 14:43:33 -0700 (PDT)
MIME-Version: 1.0
References: <20231010-strncpy-drivers-net-ethernet-intel-igc-igc_main-c-v1-1-f1f507ecc476@google.com>
 <128f5692-982a-7bba-d9b3-174881cba49e@intel.com>
In-Reply-To: <128f5692-982a-7bba-d9b3-174881cba49e@intel.com>
From: Justin Stitt <justinstitt@google.com>
Date: Tue, 10 Oct 2023 14:43:21 -0700
Message-ID: <CAFhGd8qE1oO0q91Y7sEq342qH1ty+KSMGUkczaQAJgghPBBX0w@mail.gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1696974213; x=1697579013; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=CQ7LV7udIaMiewA1z3bMb8JW/Ylqm8aFLUitdTKsmZQ=;
 b=rX5S2F7nLlMqEhdeGByZOP/bnA9kCtx+i/G/Fa1huJhjD44h77Wz6ugJZQC65/tp4N
 Gf1Ldk9XvH7Q7DVuHQlLdrv4SlK81rs4RzjXkUbgnx9YLzjvcIDU0XYK/HduGnlBJB8d
 AEe/va1SCAh6u0nMDUMpEeTpOFSddvbzt+D/Bqv8m3pgP0/vqsJiVQrr6iwaT6tJB7Nm
 8108cMkSYGN+Yuj7n4VcJtyVdb7mvZq2AukgyxYKUyVihBkACTpgq8n+FU17ihp+kLvB
 M2Ie4HeUsfpf4jC4tDeHDCp7QOCSn4uEjdvReJaaX1h/KThwStgz2fIxbbiH1WxTSQn1
 iaIg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=rX5S2F7n
Subject: Re: [Intel-wired-lan] [PATCH] igc: replace deprecated strncpy with
 strscpy
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 linux-hardening@vger.kernel.org, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBPY3QgMTAsIDIwMjMgYXQgMjoyMuKAr1BNIEplc3NlIEJyYW5kZWJ1cmcKPGplc3Nl
LmJyYW5kZWJ1cmdAaW50ZWwuY29tPiB3cm90ZToKPgo+IE9uIDEwLzEwLzIwMjMgMjoxNSBQTSwg
SnVzdGluIFN0aXR0IHdyb3RlOgo+ID4gYHN0cm5jcHlgIGlzIGRlcHJlY2F0ZWQgZm9yIHVzZSBv
biBOVUwtdGVybWluYXRlZCBkZXN0aW5hdGlvbiBzdHJpbmdzCj4gPiBbMV0gYW5kIGFzIHN1Y2gg
d2Ugc2hvdWxkIHByZWZlciBtb3JlIHJvYnVzdCBhbmQgbGVzcyBhbWJpZ3VvdXMgc3RyaW5nCj4g
PiBpbnRlcmZhY2VzLgo+ID4KPiA+IFdlIGV4cGVjdCBuZXRkZXYtPm5hbWUgdG8gYmUgTlVMLXRl
cm1pbmF0ZWQgYmFzZWQgb24gaXRzIHVzZSB3aXRoIGZvcm1hdAo+ID4gc3RyaW5nczoKPiA+IHwg
ICAgICAgaWYgKHFfdmVjdG9yLT5yeC5yaW5nICYmIHFfdmVjdG9yLT50eC5yaW5nKQo+ID4gfCAg
ICAgICAgICAgICAgIHNwcmludGYocV92ZWN0b3ItPm5hbWUsICIlcy1UeFJ4LSV1IiwgbmV0ZGV2
LT5uYW1lLAo+ID4KPiA+IEZ1cnRoZXJtb3JlLCB3ZSBkbyBub3QgbmVlZCBOVUwtcGFkZGluZyBh
cyBuZXRkZXYgaXMgYWxyZWFkeQo+ID4gemVyby1hbGxvY2F0ZWQ6Cj4gPiB8ICAgICAgIG5ldGRl
diA9IGFsbG9jX2V0aGVyZGV2X21xKHNpemVvZihzdHJ1Y3QgaWdjX2FkYXB0ZXIpLAo+ID4gfCAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJR0NfTUFYX1RYX1FVRVVFUyk7Cj4gPiAu
Li4KPiA+IGFsbG9jX2V0aGVyZGV2KCkgLT4gYWxsb2NfZXRoZXJkZXZfbXEoKSAtPiBhbGxvY19l
dGhlcmRldl9tcXMoKSAtPgo+ID4gYWxsb2NfbmV0ZGV2X21xcygpIC4uLgo+ID4gfCAgICAgICBw
ID0ga3Z6YWxsb2MoYWxsb2Nfc2l6ZSwgR0ZQX0tFUk5FTF9BQ0NPVU5UIHwgX19HRlBfUkVUUllf
TUFZRkFJTCk7Cj4gPgo+ID4gQ29uc2lkZXJpbmcgdGhlIGFib3ZlLCBhIHN1aXRhYmxlIHJlcGxh
Y2VtZW50IGlzIGBzdHJzY3B5YCBbMl0gZHVlIHRvCj4gPiB0aGUgZmFjdCB0aGF0IGl0IGd1YXJh
bnRlZXMgTlVMLXRlcm1pbmF0aW9uIG9uIHRoZSBkZXN0aW5hdGlvbiBidWZmZXIKPiA+IHdpdGhv
dXQgdW5uZWNlc3NhcmlseSBOVUwtcGFkZGluZy4KPiA+Cj4gPiBMZXQncyBhbHNvIG9wdCBmb3Ig
dGhlIG1vcmUgaWRpb21hdGljIHN0cnNjcHkgdXNhZ2Ugb2YgKGRlc3QsIHNyYywKPiA+IHNpemVv
ZihkZXN0KSkgaW5zdGVhZCBvZiAoZGVzdCwgc3JjLCBTT01FX0xFTikuCj4gPgo+Cj4KPiBQbGVh
c2Ugc2VlIG15IGNvbW1lbnRzIG9uIHRoZSBpZ2J2ZiBwYXRjaC4KCkFoLCBJIHNlbnQgdG9vIG1h
bnkgYmVmb3JlIGNoZWNraW5nIGJhY2sgaW4uIEkgc2VlCnlvdXIgY29tbWVudHMgbm93LiBSZXNw
b25kZWQgb3ZlciB0aGVyZSEKCj4KPgpUaGFua3MKSnVzdGluCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QK
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
