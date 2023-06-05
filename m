Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3527220F4
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 10:26:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4549822E3;
	Mon,  5 Jun 2023 08:25:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A4549822E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685953558;
	bh=o82pM1AWdYWUGUWg17PycLQkc6pMJOT2FCCaKzp+9B4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=G2t50aCSLfNidj1dY/UA+S5FUr0T3aBj1STcDWCxxzZhhxuKVaEs198V6+w8hHg7f
	 QGlQYK8EhXDHHk7VFSkrTx7JlnOXXr+N/OxzjShy5j1GptUJbZ08+MVXGtTfU1ef6F
	 j5JCUiCpk+syflP41DPA8xiRljo6blW2Zt3HjwsbUMxjClO0Cha8Rk7NnHTXGqb/Rw
	 bsBrg7VItl3L4JejG+IMMnGQMtW0ZwHuYNa7dv5SKZHQa7b3GuHvAU7cNKFTJvC7O3
	 5nL9HGuI4q3xyiR0b9S1kStEmpWQQcvwmZxTFcZu+4X3fYqpBJa9ysTX76fcfbkyHZ
	 i0yG9eJtyzeNQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vnumny5ZPdR6; Mon,  5 Jun 2023 08:25:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 53AA68217D;
	Mon,  5 Jun 2023 08:25:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 53AA68217D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 75EA01BF4E7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 08:25:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4B89C417D9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 08:25:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4B89C417D9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RuHaUDpbB3TE for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 08:25:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B1227417D2
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B1227417D2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 08:25:49 +0000 (UTC)
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 306D13F556
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 08:25:46 +0000 (UTC)
Received: by mail-qk1-f200.google.com with SMTP id
 af79cd13be357-75d6b90f933so106195485a.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 05 Jun 2023 01:25:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685953544; x=1688545544;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=w/vz4qy3Kc7GOpDb+K0VZMneVYxuO4mipxqG9LguKK8=;
 b=HAzE/ov5CbgzGDvqZn2jMUiR1KF8KiaNB4hku3pvIWslh2iyTXLJxerOi4a6ftaa7T
 WOSjJt3J/0Jk13kZSRCCp9xTMCwULQd7anunefSQd517NyQ2Q7Kq6w/tYNSQ/j/ueT8s
 elZjv7g0Q3RG3Y6VhpzIbWrqbPNiybgvRElNnbdQX/ceNvAQTXFPITJQXEAdUaYPaQ1W
 v5vHSfryhme47K2DIFu1ZyhQB2Uu1sVg/qFssBdsldevuNBVODrCeX6Q1l/FCR/IDZLI
 mHbwxIcR1tjUI5/jU2ScuZYt4RpUpbz7PjQMUFyg+GRp9f0pN1Zg9tGgXkmyRodUAKgn
 yr9g==
X-Gm-Message-State: AC+VfDxiowgwOS0x396Zg2K9jgxld+/O6CY/kbGN2WlwJiQjTfJR3uZW
 30HybWNwUusmET5CRGHp12zKaC3iqjIYEj+rK1i0aYriJvGVCofz3QPJgZSzjmwmDUnfTjSkWjB
 412MwADvyvbAAGEUUNXQkerVagkAKS5JQC0VdHokmcKaVwSEXxOfqtHLssZAzHL8=
X-Received: by 2002:a05:620a:678b:b0:75e:b9b8:ab57 with SMTP id
 rr11-20020a05620a678b00b0075eb9b8ab57mr1321533qkn.70.1685953544357; 
 Mon, 05 Jun 2023 01:25:44 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ4AgPS6tYIm8uNjvjRnd4X/dKtb3kpAGwevuMacOVrV0JiWen9kzqyAmGft2GuHieBV9kyujChRhnQqQi4e9Po=
X-Received: by 2002:a05:620a:678b:b0:75e:b9b8:ab57 with SMTP id
 rr11-20020a05620a678b00b0075eb9b8ab57mr1321510qkn.70.1685953544065; Mon, 05
 Jun 2023 01:25:44 -0700 (PDT)
MIME-Version: 1.0
References: <20230601162537.1163270-1-kai.heng.feng@canonical.com>
 <269262acfcce8eb1b85ee1fe3424a5ef2991f481.camel@gmail.com>
 <CAAd53p7c6eEqxd3jecfgvpxuYO3nmmmovcqD=3PgbqSVCWFfxA@mail.gmail.com>
 <577f38ed-8532-c32e-07bd-4a3b384d5fe8@molgen.mpg.de>
In-Reply-To: <577f38ed-8532-c32e-07bd-4a3b384d5fe8@molgen.mpg.de>
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Date: Mon, 5 Jun 2023 16:25:32 +0800
Message-ID: <CAAd53p6TNFLrwJZaR5OJKnbDn6ggidOLgeaFSn8JVf4oXZUBcQ@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1685953546;
 bh=w/vz4qy3Kc7GOpDb+K0VZMneVYxuO4mipxqG9LguKK8=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=C9C+jzJWn3VQlOLWcKKQC5noy2dPLaxAYs5r5A/oHB5fX+epllJDKV6J8L24p7Q7q
 eCN2GcQS9xk0+dM3amZlstyJNnp3lHo+QYMT+ou5qblCkYa6OWZrm2siPHxVsuETxG
 GGTgtP4UES9ZpJBy2FH2NbPUCZnppkXYOEw7zHR/aSL3AVMffoh1q6uHEQNrisKyCJ
 40Lq11uaJr0sTXfS5lhvxFkJt9LKg6GPanwz6NocWqLptSTVic3SLHPxuPcgqoIS74
 q039cGRbS2U73L/hHSQa54j1lGTY2lQFjxxsVYUtJ9lh9VVOQ9x6o8nLCPsdgoVEXh
 +LJ4OxrMkcJ1g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=C9C+jzJW
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Use PME poll to circumvent
 unreliable ACPI wake
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
Cc: linux-pm@vger.kernel.org, netdev@vger.kernel.org, linux-pci@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgUGF1bCwKCk9uIEZyaSwgSnVuIDIsIDIwMjMgYXQgNDo0M+KAr1BNIFBhdWwgTWVuemVsIDxw
bWVuemVsQG1vbGdlbi5tcGcuZGU+IHdyb3RlOgo+Cj4gW0NjOiBsaW51eC1wY2lAdmdlci5rZXJu
ZWwub3JnXQo+Cj4gRGVhciBLYWksCj4KPgo+IFRoYW5rIHlvdSBmb3IgeW91ciBwYXRjaC4KPgo+
IEFtIDAyLjA2LjIzIHVtIDAzOjQ2IHNjaHJpZWIgS2FpLUhlbmcgRmVuZzoKPiA+IE9uIEZyaSwg
SnVuIDIsIDIwMjMgYXQgNDoyNOKAr0FNIEFsZXhhbmRlciBIIER1eWNrIHdyb3RlOgo+ID4+Cj4g
Pj4gT24gRnJpLCAyMDIzLTA2LTAyIGF0IDAwOjI1ICswODAwLCBLYWktSGVuZyBGZW5nIHdyb3Rl
Ogo+ID4+PiBPbiBzb21lIEkyMTkgZGV2aWNlcywgZXRoZXJuZXQgY2FibGUgcGx1Z2dpbmcgZGV0
ZWN0aW9uIG9ubHkgd29ya3Mgb25jZQo+ID4+PiBmcm9tIFBDSSBEMyBzdGF0ZS4gU3Vic2VxdWVu
dCBjYWJsZSBwbHVnZ2luZyBkb2VzIHNldCBQTUUgYml0IGNvcnJlY3RseSwKPiA+Pj4gYnV0IGRl
dmljZSBzdGlsbCBkb2Vzbid0IGdldCB3b2tlbiB1cC4KPgo+IENvdWxkIHlvdSBwbGVhc2UgYWRk
IHRoZSBsaXN0IG9mIGFsbCB0aGUgZGV2aWNlcyB3aXRoIHRoZSBmaXJtd2FyZQo+IHZlcnNpb24s
IHlvdSBrbm93IHRoaXMgcHJvYmxlbSBleGlzdHMgb24/IFBsZWFzZSBhbHNvIGFkZCB0aGUgVVJM
cyBvZgo+IHRoZSBidWcgcmVwb3J0cyBhdCB0aGUgZW5kIG9mIHRoZSBjb21taXQgbWVzc2FnZS4K
CkZpcm13YXJlIGRvIHlvdSBtZWFuIHRoZSBmaXJtd2FyZSBvbiBJMjE5IGRldmljZSwgb3IgQklP
Uz8KCj4KPiBJcyB0aGF0IHByb2JsZW0gbG9nZ2VkIHNvbWVob3c/IENvdWxkIGEgbG9nIG1lc3Nh
Z2UgYmUgYWRkZWQgZmlyc3Q/CgpUaGVyZSdzIG5vdGhpbmcgZ2V0cyBsb2dnZWQuIFdoZW4gdGhp
cyBoYXBwZW5zIHRoZSBBQ1BJIEdQRSBpcyBkZWFkIHNpbGVudC4KCj4KPiA+PiBEbyB3ZSBoYXZl
IGEgcm9vdCBjYXVzZSBvbiB3aHkgdGhpbmdzIGRvbid0IGdldCB3b2tlbiB1cD8gVGhpcyBzZWVt
cwo+ID4+IGxpa2UgYW4gaXNzdWUgd2hlcmUgc29tZXRoaW5nIGlzbid0IGdldHRpbmcgcmVzZXQg
YWZ0ZXIgdGhlIGZpcnN0Cj4gPj4gd2FrZXVwIGFuZCBzbyBmdXR1cmUgb25lcyBhcmUgYmxvY2tl
ZC4KPiA+Cj4gPiBObyB3ZSBkb24ndCBrbm93IHRoZSByb290IGNhdXNlLgo+ID4gSSBndWVzcyB0
aGUgRDMgd2FrZSBpc24ndCByZWFsbHkgdGVzdGVkIHVuZGVyIFdpbmRvd3MgYmVjYXVzZSBJMjE5
Cj4gPiBkb2Vzbid0IHVzZSBydW50aW1lIEQzIG9uIFdpbmRvd3MuCj4KPiBIb3cgZG8geW91IGtu
b3c/IFdoZXJlIHlvdSBhYmxlIHRvIGxvb2sgYXQgdGhlIE1pY3Jvc29mdCBXaW5kb3dzIGRyaXZl
cgo+IHNvdXJjZSBjb2RlPwoKRGV2aWNlIE1hbmFnZXIgc2hvd3MgdGhlIGN1cnJlbnQgUENJIHN0
YXRlLgoKPgo+ID4+PiBTaW5jZSBJMjE5IGNvbm5lY3RzIHRvIHRoZSByb290IGNvbXBsZXggZGly
ZWN0bHksIGl0IHJlbGllcyBvbiBwbGF0Zm9ybQo+ID4+PiBmaXJtd2FyZSAoQUNQSSkgdG8gd2Fr
ZSBpdCB1cC4gSW4gdGhpcyBjYXNlLCB0aGUgR1BFIGZyb20gX1BSVyBvbmx5Cj4gPj4+IHdvcmtz
IGZvciBmaXJzdCBjYWJsZSBwbHVnZ2luZyBidXQgZmFpbHMgdG8gbm90aWZ5IHRoZSBkcml2ZXIg
Zm9yCj4gPj4+IHN1YnNlcXVlbnQgcGx1Z2dpbmcgZXZlbnRzLgo+ID4+Pgo+ID4+PiBUaGUgaXNz
dWUgd2FzIG9yaWdpbmFsbHkgZm91bmQgb24gQ05QLCBidXQgdGhlIHNhbWUgaXNzdWUgY2FuIGJl
IGZvdW5kCj4gPj4+IG9uIEFETCB0b28uIFNvIHdvcmthcm91bmQgdGhlIGlzc3VlIGJ5IGNvbnRp
bnVpbmcgdXNlIFBNRSBwb2xsIGFmdGVyCj4KPiBUaGUgdmVyYiBpcyBzcGVsbGVkIHdpdGggYSBz
cGFjZTogd29yayBhcm91bmQuCgpTdXJlLCB3aWxsIGNoYW5nZSBpdC4KCj4KPiA+Pj4gZmlyc3Qg
QUNQSSB3YWtlLiBBcyBQTUUgcG9sbCBpcyBhbHdheXMgdXNlZCwgdGhlIHJ1bnRpbWUgc3VzcGVu
ZAo+ID4+PiByZXN0cmljdGlvbiBmb3IgQ05QIGNhbiBhbHNvIGJlIHJlbW92ZWQuCj4KPiBXaGVu
IHdhcyB0aGF0IHJlc3RyaWN0aW9uIGZvciBDTlAgYWRkZWQ/CgpUaGUgcmVzdHJpY3Rpb24gZm9y
IENOUCsgd2FzIGludHJvZHVjZWQgYnkgY29tbWl0IDQ1OWQ2OWM0MDdmOQooImUxMDAwZTogRGlz
YWJsZSBydW50aW1lIFBNIG9uIENOUCsiKSBhbmQgbW9kaWZpZWQgYnkgMzMzNTM2OWJhZDk5Cigi
ZTEwMDBlOiBSZW1vdmUgdGhlIHJ1bnRpbWUgc3VzcGVuZCByZXN0cmljdGlvbiBvbiBDTlArIiku
Cgo+Cj4gPj4+IFNpZ25lZC1vZmYtYnk6IEthaS1IZW5nIEZlbmcgPGthaS5oZW5nLmZlbmdAY2Fu
b25pY2FsLmNvbT4KPiA+Pj4gLS0tCj4gPj4+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
ZTEwMDBlL25ldGRldi5jIHwgNCArKystCj4gPj4+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4+Pgo+ID4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvZTEwMDBlL25ldGRldi5jCj4gPj4+IGluZGV4IGJkN2VmNTliMWYyZS4uZjBlNDhmMmJj
M2EyIDEwMDY0NAo+ID4+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUv
bmV0ZGV2LmMKPiA+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25l
dGRldi5jCj4gPj4+IEBAIC03MDIxLDYgKzcwMjEsOCBAQCBzdGF0aWMgX19tYXliZV91bnVzZWQg
aW50IGUxMDAwZV9wbV9ydW50aW1lX3Jlc3VtZShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gPj4+ICAg
ICAgICBzdHJ1Y3QgZTEwMDBfYWRhcHRlciAqYWRhcHRlciA9IG5ldGRldl9wcml2KG5ldGRldik7
Cj4gPj4+ICAgICAgICBpbnQgcmM7Cj4gPj4+Cj4gPj4+ICsgICAgIHBkZXYtPnBtZV9wb2xsID0g
dHJ1ZTsKPiA+Pj4gKwo+ID4+PiAgICAgICAgcmMgPSBfX2UxMDAwX3Jlc3VtZShwZGV2KTsKPiA+
Pj4gICAgICAgIGlmIChyYykKPiA+Pj4gICAgICAgICAgICAgICAgcmV0dXJuIHJjOwo+ID4+Cj4g
Pj4gRG9lc24ndCB0aGlzIGVuYWJsZSB0aGlzIHRvbyBicm9hZGx5LiBJIGtub3cgdGhlcmUgYXJl
IGEgbnVtYmVyIG9mCj4gPj4gZGV2aWNlcyB0aGF0IHJ1biB1bmRlciB0aGUgZTEwMDBlIGFuZCBJ
IHdvdWxkIGltYWdpbmUgdGhhdCB3ZSBkb24ndAo+ID4+IHdhbnQgdGhlbSBhbGwgcnVubmluZyB3
aXRoICJwbWVfcG9sbCA9IHRydWUiIGRvIHdlPwo+ID4KPiA+IFdoYWNrIGEgbW9sZSBpc24ndCBz
Y2FsaW5nLCBlaXRoZXIuCj4gPiBUaGUgZ2VuZXJhdGlvbiBiZXR3ZWVuIENOUCBhbmQgQURMIGFy
ZSBwcm9iYWJseSBhZmZlY3RlZCB0b28uCj4gPgo+ID4+IEl0IHNlZW1zIGxpa2UgYXQgYSBtaW5p
bXVtIHdlIHNob3VsZCBvbmx5IGJlIHNldHRpbmcgdGhpcyBmb3Igc3BlY2lmaWMKPiA+PiBwbGF0
b2ZybXMgb3IgZGV2aWNlcyBpbnN0ZWFkIG9mIG9uIGFsbCBvZiB0aGVtLgo+ID4+Cj4gPj4gQWxz
byB0aGlzIHNlZW1zIGxpa2Ugc29tZXRoaW5nIHdlIHNob3VsZCBiZSBzZXR0aW5nIG9uIHRoZSBz
dXNwZW5kIHNpZGUKPiA+PiBzaW5jZSBpdCBzZWVtcyB0byBiZSBjbGVhcmVkIGluIHRoZSB3YWtl
dXAgY2FsbHMuCj4gPgo+ID4gcG1lX3BvbGwgZ2V0cyBjbGVhcmVkIG9uIHdha2V1cCwgYW5kIG9u
Y2UgaXQncyBjbGVhcmVkIHRoZSBkZXZpY2Ugd2lsbAo+ID4gYmUgcmVtb3ZlZCBmcm9tIHBjaV9w
bWVfbGlzdC4KPiA+Cj4gPiBUbyBwcmV2ZW50IHRoYXQsIHJlc2V0IHBtZV9wb2xsIHRvIHRydWUg
aW1tZWRpYXRlbHkgb24gcnVudGltZSByZXN1bWUuCj4gPgo+ID4+IExhc3RseSBJIGFtIG5vdCBz
dXJlIHRoZSBmaXJzdCBvbmUgaXMgbmVjZXNzYXJpbHkgc3VjY2VlZGluZy4gWW91IG1pZ2h0Cj4g
Pj4gd2FudCB0byBjaGVjayB0aGUgc3RhdHVzIG9mIHBtZV9wb2xsIGJlZm9yZSB5b3UgcnVuIHlv
dXIgZmlyc3QgdGVzdC4KPiA+PiBGcm9tIHdoYXQgSSBjYW4gdGVsbCBpdCBsb29rcyBsaWtlIHRo
ZSBpbml0aWFsIHN0YXRlIGlzIHRydWUgaW4KPiA+PiBwY2lfcG1faW5pdC4gSWYgc28gaXQgbWln
aHQgYmUgZ2V0dGluZyBjbGVhcmVkIGFmdGVyIHRoZSBmaXJzdCB3YWtldXAKPiA+PiB3aGljaCBp
cyB3aGF0IGNhdXNlcyB5b3VyIGlzc3Vlcy4KPiA+Cj4gPiBUaGF0J3MgYnkgZGVzaWduLiBwbWVf
cG9sbCBnZXRzIGNsZWFyZWQgd2hlbiB0aGUgaGFyZHdhcmUgaXMgY2FwYWJsZQo+ID4gdG8gc2ln
bmFsIHdha2V1cCB2aWEgUE1FIyBvciBBQ1BJIEdQRS4gRm9yIGRldGVjdGVkIGhhcmR3YXJlcywg
dGhlCj4gPiBwbWVfcG9sbCB3aWxsIG5ldmVyIGJlIGNsZWFyZWQuCj4gPiBTbyB0aGlzIGJlY29t
ZXMgdHJpY2t5IGZvciB0aGUgaXNzdWUsIHNpbmNlIHRoZSBBQ1BJIEdQRSB3b3JrcyBmb3IKPiA+
IGp1c3Qgb25lIHRpbWUsIGJ1dCBuZXZlciBhZ2Fpbi4KPiA+Cj4gPj4+IEBAIC03NjgyLDcgKzc2
ODQsNyBAQCBzdGF0aWMgaW50IGUxMDAwX3Byb2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LCBjb25z
dCBzdHJ1Y3QgcGNpX2RldmljZV9pZCAqZW50KQo+ID4+Pgo+ID4+PiAgICAgICAgZGV2X3BtX3Nl
dF9kcml2ZXJfZmxhZ3MoJnBkZXYtPmRldiwgRFBNX0ZMQUdfU01BUlRfUFJFUEFSRSk7Cj4gPj4+
Cj4gPj4+IC0gICAgIGlmIChwY2lfZGV2X3J1bl93YWtlKHBkZXYpICYmIGh3LT5tYWMudHlwZSAh
PSBlMTAwMF9wY2hfY25wKQo+ID4+PiArICAgICBpZiAocGNpX2Rldl9ydW5fd2FrZShwZGV2KSkK
PiA+Pj4gICAgICAgICAgICAgICAgcG1fcnVudGltZV9wdXRfbm9pZGxlKCZwZGV2LT5kZXYpOwo+
ID4+Pgo+ID4+PiAgICAgICAgcmV0dXJuIDA7Cj4gPj4KPiA+PiBJIGFzc3VtZSB0aGlzIGlzIHRo
ZSBvcmlnaW5hbCB3b3JrYXJvdW5kIHRoYXQgd2FzIHB1dCBpbiB0byBhZGRyZXNzCj4gPj4gdGhp
cyBpc3N1ZS4gUGVyaGFwcyB5b3Ugc2hvdWxkIGFkZCBhIEZpeGVzIHRhZyB0byB0aGlzIHRvIGlk
ZW50aWZ5Cj4gPj4gd2hpY2ggd29ya2Fyb3VuZCB0aGlzIHBhdGNoIGlzIG1lYW50IHRvIGJlIHJl
cGxhY2luZy4KPiA+Cj4gPiBBbm90aGVyIHBvc3NpYmlsaXR5IGlzIHRvIHJlbW92ZSBydW50aW1l
IHBvd2VyIG1hbmFnZW1lbnQgY29tcGxldGVseS4KPiA+IEkgd29uZGVyIHdoeSBXaW5kb3dzIGtl
ZXAgdGhlIGRldmljZSBhdCBEMCBhbGwgdGhlIHRpbWU/Cj4KPiBXaG8ga25vd3MgaG93IHRvIGNv
bnRhY3QgSW50ZWzigJlzIGRyaXZlciBkZXZlbG9wZXJzIGZvciBNaWNyb3NvZnQgV2luZG93cz8K
ClByb2JhYmx5IHRoaXMgbWFpbGluZyBsaXN0PwoKPgo+ID4gQ2FuIExpbnV4IGFsaWduIHdpdGgg
V2luZG93cz8KPgo+IEJlZm9yZSBkZWNpZGluZyB0aGlzLCB0aGUgcG93ZXIgdXNhZ2UgaW4gdGhl
IGRpZmZlcmVudCBzdGF0ZXMgc2hvdWxkIGJlCj4gbWVhc3VyZWQuCgpUaGUgcG93ZXIgdXNhZ2Ug
ZG9lc24ndCBtYXR0ZXIgaWYgdGhlIGRldmljZSBjYW4ndCBmdW5jdGlvbiBwcm9wZXJseS4KCkth
aS1IZW5nCgo+Cj4KPiBLaW5kIHJlZ2FyZHMsCj4KPiBQYXVsCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QK
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
