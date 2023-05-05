Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E853D6F8A27
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 May 2023 22:28:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3677060F54;
	Fri,  5 May 2023 20:28:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3677060F54
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683318518;
	bh=RUKo/N3xeCmqvnr23q4jVXqdELTGS0/q5pPY5YkY+Xo=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=caxnpJhO27+rgcmWqYOWa7noE3muAmqzin2DRzMvw8Fp68y9pseYj8UYkFjoSqNWo
	 AxZqXtddRvagYtyXR7KGwCYFf7iGPJ07maqC41/iQCcfO9JiptYGtupzUCW+2hEOqG
	 Dy3KktIAIjtEoJBYxO13RZmqc+4IXVVuoiFwsmzf21OB5JUyzTXSPXfC1h/3RLuKzC
	 s8WGWeoup92BuDJVob6kQ22A2hYwdnF4phZ5Hsjwnw7BgHGul7gjbQiYKrUPG5gnrM
	 LaRZQH1yDUPyubWna85YBKmGZgKBpOzK5dIGqoqB4GtbmHyHjsZJMZmSQ/+0PR6h1G
	 Kobog2apiUo/A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qXETA-xg5f-1; Fri,  5 May 2023 20:28:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0987060BC0;
	Fri,  5 May 2023 20:28:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0987060BC0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 825F31BF388
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 20:28:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 503894208B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 20:28:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 503894208B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id knt1BlrHp02S for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 May 2023 20:28:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6399E42058
Received: from mail-vk1-xa2c.google.com (mail-vk1-xa2c.google.com
 [IPv6:2607:f8b0:4864:20::a2c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6399E42058
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 20:28:30 +0000 (UTC)
Received: by mail-vk1-xa2c.google.com with SMTP id
 71dfb90a1353d-44fcbe08ae2so761946e0c.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 05 May 2023 13:28:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683318509; x=1685910509;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=t6ZrsRqJR5qM9jxAu/uts504i/K+P1m1rrTD7FAjDAU=;
 b=UtsSRIWsnPDKs1F3jWRu8STG5tg8xoTaglEEvNOTUDrYhm81lIR5c5VtIhEn7n9v2/
 NTLoUBJR4mrladaEa9RWZub9aXK4LKCPlbYE8IcPN95qAXCD8znapGZxtDCq1MaAFjWn
 MzgNeTXru0/rlyRQXUwYK9UXmPmbRYXvRYDi0vcSpTVW8buHO5VquT8IYXPazHS8ztZx
 yTzz2W8tDbZ7c/qH2nLl2o5Adrsd2iVHYGKpijN4W5zBjwxqv6dAuFKl6YiNMclbiht2
 4kSUVIZi5x9D7J9Gwk0eebNYlUaekE35ao2ofBMpMJqE0PjbEQ/BRH+PcpehHDRvWdhd
 foiw==
X-Gm-Message-State: AC+VfDyYM/uR8p6SMul4tG8RFaOJ5CvYjZpz4Td81CvFCQE4+n17EPjx
 nqAXNVUz2V6MlQdBJiiE5mszitTnslrPdPpLwCA=
X-Google-Smtp-Source: ACHHUZ6wfG2g2IWLyM0WM4/UeOaKdedbu5HmwnNa3hnLIk56BMY7PGd1GrES5U5kVcTszpgaHXiJ0Uf1z/JX4+hji4A=
X-Received: by 2002:a1f:e601:0:b0:435:b4a5:d3c0 with SMTP id
 d1-20020a1fe601000000b00435b4a5d3c0mr834970vkh.10.1683318509080; Fri, 05 May
 2023 13:28:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAA85sZvQV2_aTP=2_TZQOMm0cMfxp+NdLx2_yf_qzB=dUKFuwg@mail.gmail.com>
 <20230505142144.46622-1-piotrx.skajewski@intel.com>
 <CAA85sZsMdK6xWjf7JdujOhdXjKaLvSjbTjiGRw7n_Y+7afe5Vw@mail.gmail.com>
In-Reply-To: <CAA85sZsMdK6xWjf7JdujOhdXjKaLvSjbTjiGRw7n_Y+7afe5Vw@mail.gmail.com>
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Fri, 5 May 2023 22:28:17 +0200
Message-ID: <CAA85sZsZMFMCLtL_70AMXvVsQ+jNze0C=sNmZfwNdwUhTp_kxw@mail.gmail.com>
To: Piotr Skajewski <piotrx.skajewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683318509; x=1685910509;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=t6ZrsRqJR5qM9jxAu/uts504i/K+P1m1rrTD7FAjDAU=;
 b=FK19FrLQ6YP+Yhtc/+hary/RB8S3hIxwHg2I0jKQYWtSgtjiX/P22bUdFLAfYk6gCH
 hLcUqqZPv0Dd8HnJRb6mXf86vf+HbquAiq5jcjy+GNyiO4rbfPAzfNSka52tQMWOAOg1
 kJXtdXTBuCOTnWqnmETZK3RIC2NyF/dKDbV+ATZ6y1QNL/zMCA1enoLG24yC0GQ/+64p
 ZOFifYbW3BJSa679YdaoKoIHvg2oJeib88DtlASD6btZCp7FBXanqUWrVXLWj7HiIu7O
 mMTg+ZcfAx265hJDaQIYt6WUxWIaCDdy/OcIBUj9FNZqt0Yu8eEJSrMyyEjzS5x3mWyS
 bE+w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=FK19FrLQ
Subject: Re: [Intel-wired-lan] [ixgbe] regression: jumbo frames not working
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
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

QXMgYSBzaWRlIG5vdGUsIEkgZG9uJ3QgdW5kZXJzdGFuZCBob3cgdGhlIHN3aXRjaCBib290ZWQg
d2l0aCBqdW1ibwpmcmFtZXMgb2ZmIC0gdGhlIGNvbmZpZyBzdGF0ZWQgdGhhdCB0aGV5IHNob3Vs
ZCBiZSBvbi4uLi4KU28sIHNvbWUga2luZCBvZiBmYWlsb3Zlci4uLiBzb3JyeSBmb3IgdGhlIG5v
aXNlLi4KCk9uIEZyaSwgTWF5IDUsIDIwMjMgYXQgNzo1MOKAr1BNIElhbiBLdW1saWVuIDxpYW4u
a3VtbGllbkBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gU29ycnkuLi4gSXQgc2VlbXMgbGlrZSBteSBj
aXNjbyBzd2l0Y2ggYm9vdGVkIHdpdGgganVtYm8tZnJhbWVzCj4gZGlzYWJsZWQgYWZ0ZXIgYSBw
b3dlciBvdXRhZ2UuLi4KPiBUaGUgY29uZiBzYXlzIGl0IHNob3VsZCBiZSBlbmFibGVkIC0gYnV0
IHNvbWVob3cgaXQgd2Fzbid0IDovCj4KPiBPbiBGcmksIE1heSA1LCAyMDIzIGF0IDQ6MjPigK9Q
TSBQaW90ciBTa2FqZXdza2kKPiA8cGlvdHJ4LnNrYWpld3NraUBpbnRlbC5jb20+IHdyb3RlOgo+
ID4KPiA+IE9uIFN1biwgQXJwIDMwLCAyMDIzIGF0IDc6MDEgUE0gSWFuIEt1bWxpZW4gPGlhbi5r
dW1saWVuQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+IE9uIFN1biwgQXByIDMwLCAyMDIzIGF0IDY6
MjkgUE0gSmVzc2UgQnJhbmRlYnVyZwo+ID4gPiA8amVzc2UuYnJhbmRlYnVyZ0BnbWFpbC5jb20+
IHdyb3RlOgo+ID4gPj4KPiA+ID4+Cj4gPiA+Pgo+ID4gPj4gT24gRnJpLCBBcHIgMjgsIDIwMjMg
YXQgMjoxMyBQTSBJYW4gS3VtbGllbiA8aWFuLmt1bWxpZW5AZ21haWwuY29tPiB3cm90ZToKPiA+
ID4+Pgo+ID4gPj4+IEhpLAo+ID4gPj4+Cj4gPiA+Pj4gU2luY2UgdXBncmFkaW5nIHRvIGtlbmVs
IDYuMywgSSd2ZSBoaXQgYW4gaXNzdWUuLi4KPiA+ID4+Pgo+ID4gPj4+IEkgaGlzdG9yaWNhbGx5
IHVzZSA5ayBqdW1ib2ZyYW1lcyBvbiBteSBuZXR3b3JrIGFzIHN1Y2g6Cj4gPiA+Pj4gMzogZW5v
MTogPEJST0FEQ0FTVCxNVUxUSUNBU1QsVVAsTE9XRVJfVVA+IG10dSAxNTAwIHFkaXNjIG1xIHN0
YXRlIFVQCj4gPiA+Pj4gZ3JvdXAgZGVmYXVsdCBxbGVuIDEwMDAKPiA+ID4+Cj4gPiA+Pgo+ID4g
Pj4gVGhhbmtzIGZvciB0aGUgcmVwb3J0ISBPdXIgdGVhbSBpcyBpbnZlc3RpZ2F0aW5nLCBob3Bl
ZnVsbHkgd2Ugd2lsbCBiZSBhYmxlIHRvIHJlcHJvZHVjZSBhbmQgZ2V0IGJhY2sgdG8geW91IHRo
aXMgd2Vlay4KPiA+ID4+Cj4gPiA+PiBBIGRldGFpbCB0aGF0IHdvdWxkIGhlbHAgaXMgbHNwY2kg
LW5uIC1kIDo6MDIwMCB0byBnZXQgYSBsaXN0IG9mIHRoZSBhZGFwdGVyIHR5cGUgeW91J3JlIHVz
aW5nIGluIGNhc2UgaXQncyByZWxldmFudC4KPiA+ID4KPiA+ID4gMDY6MDAuMCBFdGhlcm5ldCBj
b250cm9sbGVyIFswMjAwXTogSW50ZWwgQ29ycG9yYXRpb24gRXRoZXJuZXQKPiA+ID4gQ29ubmVj
dGlvbiBYNTUzIDFHYkUgWzgwODY6MTVlNF0gKHJldiAxMSkKPiA+ID4gMDY6MDAuMSBFdGhlcm5l
dCBjb250cm9sbGVyIFswMjAwXTogSW50ZWwgQ29ycG9yYXRpb24gRXRoZXJuZXQKPiA+ID4gQ29u
bmVjdGlvbiBYNTUzIDFHYkUgWzgwODY6MTVlNF0gKHJldiAxMSkKPiA+ID4gMDc6MDAuMCBFdGhl
cm5ldCBjb250cm9sbGVyIFswMjAwXTogSW50ZWwgQ29ycG9yYXRpb24gRXRoZXJuZXQKPiA+ID4g
Q29ubmVjdGlvbiBYNTUzIDFHYkUgWzgwODY6MTVlNF0gKHJldiAxMSkKPiA+ID4gMDc6MDAuMSBF
dGhlcm5ldCBjb250cm9sbGVyIFswMjAwXTogSW50ZWwgQ29ycG9yYXRpb24gRXRoZXJuZXQKPiA+
ID4gQ29ubmVjdGlvbiBYNTUzIDFHYkUgWzgwODY6MTVlNF0gKHJldiAxMSkKPiA+ID4KPiA+ID4g
ZXRodG9vbCAtaSBlbm8xCj4gPiA+IGRyaXZlcjogaXhnYmUKPiA+ID4gdmVyc2lvbjogNi4zLjAK
PiA+ID4gZmlybXdhcmUtdmVyc2lvbjogMHg4MDAwMDg3Nwo+ID4gPiBleHBhbnNpb24tcm9tLXZl
cnNpb246Cj4gPiA+IGJ1cy1pbmZvOiAwMDAwOjA2OjAwLjAKPiA+ID4gc3VwcG9ydHMtc3RhdGlz
dGljczogeWVzCj4gPiA+IHN1cHBvcnRzLXRlc3Q6IHllcwo+ID4gPiBzdXBwb3J0cy1lZXByb20t
YWNjZXNzOiB5ZXMKPiA+ID4gc3VwcG9ydHMtcmVnaXN0ZXItZHVtcDogeWVzCj4gPiA+IHN1cHBv
cnRzLXByaXYtZmxhZ3M6IHllcwo+ID4gPgo+ID4gPj4+IEJ1dCBub3cgdGhlIGxhcmdlc3QgZnJh
bWUgaSBjYW4gc2VuZCBpcyAyMDMwIGJ5dGVzIChpZSBwaW5nIC1zIDIwMDIpLi4uCj4gPiA+Pj4K
PiA+ID4+PiBJIGRvbid0IHNlZSBhbnkgd2FybmluZyBmcm9tIHRoZSBYRFAgc3Vic3lzdGVtIHNv
IEkgYWxtb3N0IGFzc3VtZQo+ID4gPj4+IHRoYXQncyBub3QgaXQuLi4KPiA+Cj4gPiBBZnRlciB0
ZXN0IHdlIGRvbid0IHNlZSBhbnkgZGlzY3JlcGFuY2llcyBpbiBob3cganVtYm8gZnJhbWVzIHdv
cmsgYmV0d2VlbiBtZW50aW9uZWQga2VybmVscy4KPiA+IFBsZWFzZSBhZGQgbW9yZSBkZXRhaWxz
IGFib3V0IGNvbmZpZ3VyYXRpb24geW91IGFyZSB1c2luZyBhbmQgc3RlcHMgaG93IHRvIHJlcHJv
ZHVjZSB0aGlzIGlzc3VlLgo+ID4KPiA+Cj4gPiBUaGFua3MsCj4gPiBQaW90cgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFp
bGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3Ns
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
