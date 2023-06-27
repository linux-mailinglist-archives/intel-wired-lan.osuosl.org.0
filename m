Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E574273F690
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jun 2023 10:13:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7875582060;
	Tue, 27 Jun 2023 08:13:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7875582060
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687853598;
	bh=yZQ48431p9IOk/POKv0m+pDof3ZdaIl/wMMbweH8dZM=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=osKc/AbsmgGTKzN1d8QEtFwD9fNaLsIupIoTul1NyMGn0NR8JAzuHlokYMvo0eID7
	 /E1H3mZlZWow0EbJUvGA08ISuzANPcvNIxlajT42rUEfHe5esq8s3V8ljCcr3frLXr
	 HpbrGMzLaHuXnASReSnXe2mVueBc6P0hoR9VxnnB9e/a4IpkoMOKvvYMaxQVQGkFls
	 pgKeX/TNt8ufAcDywITcael8suc7/GsBDMbzyCspwO99x7/LlJjMwWGGl6CZoaC4Xe
	 ZTg3doE1utaNc93XNf/Ie87wVBUM2tM2EQVdIe9wXAfoTtj0gK7fj9kKb9qmYReg0I
	 4LoFlqYsjlNTA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5KYnhh6aGtcc; Tue, 27 Jun 2023 08:13:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25BA38203C;
	Tue, 27 Jun 2023 08:13:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 25BA38203C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 070551BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 08:13:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CD274416CD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 08:13:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD274416CD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s4P9YuPWWmha for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jun 2023 08:13:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4FFB7400EF
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4FFB7400EF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 08:13:11 +0000 (UTC)
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id C723E42409
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 08:13:07 +0000 (UTC)
Received: by mail-qk1-f199.google.com with SMTP id
 af79cd13be357-7623a751435so349935985a.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 01:13:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687853585; x=1690445585;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=gg3OEKCdXYQ44h8MuGgBj8DaSBevkCPyPNd3zprHKaY=;
 b=hWrDQ0GM/4/wu2IHUnT91VX4XAHX2esS4HLPzDei7El/Rivjj5+nK6FyjY1AyAksiP
 Q42PBX0YalAOM+LV/XOvj1Wcci1NB281IPkNaVDMwsxvVkc4OEL9v0LDscL5LtTxkBR8
 fy0lwLfccQKJtmZQXFV7bbV9DRCsxupkmwlQUAfeeGw+FDQ9YEm2+bT10uNigJM0hyAz
 UwhN7mjlbzcrmjYztcbQpA9K6VBbsfactmuJS8B/KS5yYgBk56BCzzg/6W60ewBmaYkk
 r0+NVk50RhowzLdBtjKLQMu/T79scnFV7jOkor0QFnf4dgJdPtX6Ckb8T+CU0FmxaAd4
 fcXw==
X-Gm-Message-State: AC+VfDyadMSj5APVlMp6vYGwXATS+oHBtU6s7F2SMxlKr3QJOK6kQCBY
 znN84KBjIWswZqgmavajJwJSl1PeGNnGJKoZVMGpokbR5tR5GaeiqUYwOYH0JeMWbROQTleEhwk
 3XC1+wYI/PmdtFv9i7rcVgnIXerCqGeAaIE8/7HphNOeTpetkf53gZ3I596TLULI=
X-Received: by 2002:a05:620a:b5d:b0:765:a99c:96f3 with SMTP id
 x29-20020a05620a0b5d00b00765a99c96f3mr3991335qkg.28.1687853585410; 
 Tue, 27 Jun 2023 01:13:05 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5fgqyY3eOukJw2FU7SKafinmfoAL+d8SvblNvlFQgx5Qor6fZJCGh2ay3cp5ysEdiBq4nqsWO1NHqtqMWrOIU=
X-Received: by 2002:a05:620a:b5d:b0:765:a99c:96f3 with SMTP id
 x29-20020a05620a0b5d00b00765a99c96f3mr3991319qkg.28.1687853585132; Tue, 27
 Jun 2023 01:13:05 -0700 (PDT)
MIME-Version: 1.0
References: <16bcc313-a4e1-ab50-4487-c99ccf5ecdf9@intel.com>
 <20230622131123.GA137990@bhelgaas>
In-Reply-To: <20230622131123.GA137990@bhelgaas>
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Date: Tue, 27 Jun 2023 16:12:53 +0800
Message-ID: <CAAd53p7EXmqe2CMnrVGK_DUcQZVxCPwcFdVFkPPSUZaPDjwz0g@mail.gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1687853587;
 bh=gg3OEKCdXYQ44h8MuGgBj8DaSBevkCPyPNd3zprHKaY=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=l9VaXRFlSrjjfvIddCX0D+ROs32wEd2nMlQOpqXXFhArBSn8aIQgInZl2tJIQbx+g
 c/VYK+CqPkiQm5bm/KuiVs2hKc+C2TjepLnAJiegKcDa5jBEmrFXj3g4HUCd6EstsO
 lp361EIJgx57lWIu/mSPRzVljwSAHqgufkqsPNoY8YxQtfk7imkbsuPULwdQr1cv0K
 MrnEE1vQv6arI6vBsGs4VMFH4iRNGjm294EEwZnITKbsaKIR/tvMOQg+y1khaq+Od2
 +2x03hd1ZSE2aurJONpHYGevlgjF5tFV2CM7Q1wVoaLoZdpyqRyh27CnvJgeWLhSMW
 1XGNAfvU0Sn2Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=l9VaXRFl
Subject: Re: [Intel-wired-lan] [PATCH] igc: Ignore AER reset when device is
 suspended
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
Cc: Kees Cook <keescook@chromium.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, linux-pci@vger.kernel.org, "Mushayev,
 Nikolay" <nikolay.mushayev@intel.com>, linux-kernel@vger.kernel.org,
 jesse.brandeburg@intel.com, "Edri, Michael" <michael.edri@intel.com>,
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
 Eric Dumazet <edumazet@google.com>, Tony Luck <tony.luck@intel.com>,
 anthony.l.nguyen@intel.com, linux-hardening@vger.kernel.org, "Ruinskiy,
 Dima" <dima.ruinskiy@intel.com>, Jakub Kicinski <kuba@kernel.org>, "Avivi,
 Amir" <amir.avivi@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCBKdW4gMjIsIDIwMjMgYXQgOToxMeKAr1BNIEJqb3JuIEhlbGdhYXMgPGhlbGdhYXNA
a2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBUaHUsIEp1biAyMiwgMjAyMyBhdCAwODowOTozNEFN
ICswMzAwLCBOZWZ0aW4sIFNhc2hhIHdyb3RlOgo+ID4gT24gNi8yMS8yMDIzIDIzOjQzLCBCam9y
biBIZWxnYWFzIHdyb3RlOgo+ID4gPiBPbiBUdWUsIEp1biAyMCwgMjAyMyBhdCAwODozNjozNlBN
ICswODAwLCBLYWktSGVuZyBGZW5nIHdyb3RlOgo+ID4gPiA+IFdoZW4gYSBzeXN0ZW0gdGhhdCBj
b25uZWN0cyB0byBhIFRodW5kZXJib2x0IGRvY2sgZXF1aXBwZWQgd2l0aCBJMjI1LAo+ID4gPiA+
IEkyMjUgc3RvcHMgd29ya2luZyBhZnRlciBTMyByZXN1bWU6Cj4KPiA+ID4gPiBUaGUgaXNzdWUg
aXMgdGhhdCB0aGUgUFRNIHJlcXVlc3RzIGFyZSBzZW5kaW5nIGJlZm9yZSBkcml2ZXIgcmVzdW1l
cyB0aGUKPiA+ID4gPiBkZXZpY2UuIFNpbmNlIHRoZSBpc3N1ZSBjYW4gYWxzbyBiZSBvYnNlcnZl
ZCBvbiBXaW5kb3dzLCBpdCdzIHF1aXRlCj4gPiA+ID4gbGlrZWx5IGEgZmlybXdhcmUvaGFyZHdh
ciBsaW1pdGF0aW9uLgo+ID4gPgo+ID4gPiBJIHRob3VnaHQgYzAxMTYzZGJkMWI4ICgiUENJL1BN
OiBBbHdheXMgZGlzYWJsZSBQVE0gZm9yIGFsbCBkZXZpY2VzCj4gPiA+IGR1cmluZyBzdXNwZW5k
Iikgd291bGQgdHVybiBvZmYgUFRNLiAgSXMgdGhhdCBub3Qgd29ya2luZyBmb3IgdGhpcwo+ID4g
PiBwYXRoLCBvciBhcmUgd2UgcmUtZW5hYmxpbmcgUFRNIGluY29ycmVjdGx5LCBvciBzb21ldGhp
bmcgZWxzZT8KPiA+Cj4gPiBJIHRoaW5rIHdlIGhpdCBvbiB0aGUgSFcgYnVnIGhlcmUuIE9uIHNv
bWUgaTIyNS82IHBhcnRzLCBQVE0gcmVxdWVzdHMgYXJlCj4gPiBzZW50IGJlZm9yZSBTVyB0YWtl
cyBvd25lcnNoaXAgb2YgdGhlIGRldmljZS4gVGhpcyBwYXRjaCBjb3VsZCBoZWxwLgo+Cj4gSXMg
dGhlcmUgYW4gZXJyYXR1bSB3ZSBjYW4gcmVhZD8gIElmIHRoaXMgaXMgbmVlZGVkIHRvIHdvcmsg
YXJvdW5kIGEKPiBoYXJkd2FyZSBkZWZlY3QsIHRoZXJlIHNob3VsZCBiZSBhIGNvbW1lbnQgaW4g
dGhlIGNvZGUgdG8gdGhhdCBlZmZlY3QsCj4gYW5kIHdlIHNob3VsZCBoYXZlIGEgYmV0dGVyIHVu
ZGVyc3RhbmRpbmcgYmVjYXVzZSB0aGVyZSBtYXkgYmUgb3RoZXIKPiBzY2VuYXJpb3MgKHN1c3Bl
bmQvcmVzdW1lLCBob3RwbHVnLCBldGMpIHRoYXQgbmVlZCBzaW1pbGFyIGNoYW5nZXMuCgpBY3R1
YWxseSwgc2ltaWxhciBtZXNzYWdlIGNhbiBiZSBzZWVuIG9uIGhvdHBsdWdnaW5nIHRoZSBkZXZp
Y2UuIFRoZQpBRVIgbWVzc2FnZSB3aWxsIGJlIGdvbmUgc2hvcnRseSBhZnRlciB0aGUgZHJpdmVy
IGRvbmUgaXQncyBwcm9iaW5nLgoKPgo+IChJIGtub3cgdGhpcyBwYXRjaCBpcyB0byB3b3JrIGFy
b3VuZCBhIHN1c3BlbmQvcmVzdW1lIGlzc3VlLCBidXQgdGhlCj4gY2hhbmdlIGlzIGluIHRoZSBB
RVIgZXJyb3IgcmVjb3ZlcnkgcGF0aCwgc28gaXQgZG9lc24ndCBxdWl0ZSBmaXQKPiB0b2dldGhl
ciBmb3IgbWUgeWV0LikKClRoaXMgaXMgc29tZXRoaW5nIEkgcmVhbGx5IHdhbnQgdG8gZGlzY3Vz
cy4KVGhpcyBpcyBub3QgdGhlIGZpcnN0IHRpbWUgdGhhdCBBRVIgaGFuZGxpbmcgZG9lc24ndCBw
bGF5IHdlbGwgd2l0aApzeXN0ZW0gcmVzdW1lIGJlY2F1c2UgdGhlIGVycm9yIGhhbmRsaW5nIGFu
ZCByZXN1bWUgcm91dGluZSBjYW4gaGFwcGVuCmF0IHRoZSBzYW1lIHRpbWUuIFNvbWUgcG9zc2li
bGUgd2F5IGdvaW5nIGZvcndhcmQ6CjEpIFNlcmlhbGl6ZSBlcnJvciByZWNvdmVyeSBhbmQgcmVz
dW1lIHJvdXRpbmUuCiAgLSBJZiBlcnJvciByZWNvdmVyeSBoYXBwZW5zIGZpcnN0IGFuZCBpdCdz
IGEgc3VjY2Vzc2Z1bCByZWNvdmVyeSwKZG9lcyB0aGUgcmVzdW1lIGNhbGxiYWNrIHN0aWxsIG5l
ZWQgdG8gYmUgY2FsbGVkPwogIC0gSWYgdGhlIGRldmljZSBzdWNjZXNzZnVsbHkgcmVzdW1lLCBp
cyB0aGUgZXJyb3IgcmVjb3Zlcnkgcm91dGluZQpzdGlsbCBuZWVkZWQ/CiBTbyBJIHRoaW5rIHRo
ZSBtb3N0IHBsYXVzaWJsZSB3YXkgaXMgdG8gY2FsbCBlcnJvciByZWNvdmVyeSBvbmx5IGlmCnRo
ZSByZXN1bWUgZmFpbHMuIElnbm9yZSB0aGUgQUVSIGlmIHJlc3VtZSBzdWNjZXNzLgoKMikgRGlz
YWJsZSB0aGUgQUVSIGludGVycnVwdCBkdXJpbmcgc3VzcGVuZAogLSBTaW5jZSB0aGUgQUVSIGlz
IHN0aWxsIHJlY29yZGVkIGFuZCBBRVIgaW50ZXJydXB0IGdldHMgZW5hYmxlZCBieQpwb3J0IGRy
aXZlciBiZWZvcmUgY2hpbGQgZGV2aWNlIHJlc3VtaW5nLCB0aGUgZXJyb3IgcmVjb3ZlcnkvcmVz
dW1lCnJhY2UgY2FuIHN0aWxsIGhhcHBlbi4KIC0gU28gdGhlIHBvcnQgc2VydmljZXMgcmVzdW1l
IHJvdXRpbmVzIGNhbiBvbmx5IGJlIGNhbGxlZCBhZnRlciB0aGUKZW50aXJlIFBDSWUgaGllcmFy
Y2h5IGlzIHJlc3VtZWQuCgozKSBEaXNhYmxlIHRoZSBBRVIgc2VydmljZSBjb21wbGV0ZWx5IGR1
cmluZyBzdXNwZW5kCiAtIFRoaXMgaXMgd2hhdCdzIGluIG15IG1pbmQuIElmIHRoZSBBRVIgaXMg
Y2F1c2VkIGJ5IGZpcm13YXJlIGFuZApoYXJkd2FyZSAobGlrZSBtb3N0IGNhc2VzKSwgdGhlIG1v
c3QgZmVhc2libGUgd2F5IGlzIHRvIHdvcmthcm91bmQgdGhlCmlzc3VlIGluIHRoZSBkcml2ZXIu
CgpJTU8gZXRoZXIgMSkgb3IgMikgcmVxdWlyZXMgaW52b2x2ZW1lbnRzIHRoYXQgYWRkIGxpdHRs
ZSBiZW5lZml0LiBTbwpob3BlZnVsbHkgd2UgY2FuIG9wdCB0byAzKS4KCj4KPiBBcmUgeW91IHNh
eWluZyB0aGUgTklDIHNlbmRzIFBUTSByZXF1ZXN0cyB3aGVuIGl0IGRvZXNuJ3QgaGF2ZSBQVE0K
PiBFbmFibGUgc2V0PwoKSSB0aGluayBJIG1lbnRpb25lZCBkdXJpbmcgcHJldmlvdXMgZGlzY3Vz
c2lvbi4gVGhlIFBUTSBnZXRzIGVuYWJsZWQKYnkgdGhlIGZpcm13YXJlL2hhcmR3YXJlIG9uIHRo
ZSBUQlQgZG9jayByaWdodCBvbiBTMyByZXN1bWUuClRoZSBpc3N1ZSBpcyBhbHNvIGxvZ2dlZCBv
biBXaW5kb3dzJyBFdmVudCBWaWV3ZXIsIGJ1dCBoYXJkd2FyZSB2ZW5kb3IKZG9lc24ndCBjYXJl
IGF0IGFsbCBzaW5jZSB0aGUgZGV2aWNlIGlzIHN0aWxsIGZ1bmN0aW9uYWwgOikKCj4KPiBXaGF0
IGV4YWN0bHkgZG9lcyBpdCBtZWFuIGZvciAiU1cgdG8gdGFrZSBvd25lcnNoaXAgb2YgdGhlIGRl
dmljZSI/Cj4gV2hhdCBQQ0llIHRyYW5zYWN0aW9uIHdvdWxkIHRlbGwgdGhlIGRldmljZSB0aGUg
U1cgaGFzIHRha2VuCj4gb3duZXJzaGlwPwoKUGxlYXNlIGNvcnJlY3QgbWUgaWYgSSBhbSB3cm9u
ZywgYnV0IEludGVsIGV0aGVybmV0IGRldmljZXMgbWF5IG5lZWQKdGhlIGRyaXZlciB0byBwZXJm
b3JtIHNvbWUgYWN0aW9ucyBzbyB0aGUgb3duZXJzaGlwIGNhbiBiZSBzd2l0Y2hlZApiZXR3ZWVu
IHNvZnR3YXJlIGFuZCBmaXJtd2FyZS4KCkthaS1IZW5nCgo+Cj4gU28gZmFyIHRoaXMgZmVlbHMg
a2luZCBvZiBoYW5kLXdhdmV5Lgo+Cj4gPiA+IENoZWNraW5nIHBjaV9pc19lbmFibGUoKSBpbiB0
aGUgLmVycm9yX2RldGVjdGVkKCkgY2FsbGJhY2sgbG9va3MgbGlrZQo+ID4gPiBhIHBhdHRlcm4g
dGhhdCBtYXkgbmVlZCB0byBiZSByZXBsaWNhdGVkIGluIG1hbnkgb3RoZXIgZHJpdmVycywgd2hp
Y2gKPiA+ID4gbWFrZXMgbWUgdGhpbmsgaXQgbWF5IG5vdCBiZSB0aGUgYmVzdCBhcHByb2FjaC4K
PiA+ID4KPiA+ID4gPiBTbyBhdm9pZCByZXNldHRpbmcgdGhlIGRldmljZSBpZiBpdCdzIG5vdCBy
ZXN1bWVkLiBPbmNlIHRoZSBkZXZpY2UgaXMKPiA+ID4gPiBmdWxseSByZXN1bWVkLCB0aGUgZGV2
aWNlIGNhbiB3b3JrIG5vcm1hbGx5Lgo+ID4gPiA+Cj4gPiA+ID4gTGluazogaHR0cHM6Ly9idWd6
aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0yMTY4NTAKPiA+ID4gPiBTaWduZWQtb2Zm
LWJ5OiBLYWktSGVuZyBGZW5nIDxrYWkuaGVuZy5mZW5nQGNhbm9uaWNhbC5jb20+Cj4gPiA+ID4g
LS0tCj4gPiA+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYyB8
IDMgKysrCj4gPiA+ID4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4gPiA+ID4K
PiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19t
YWluLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYwo+ID4gPiA+
IGluZGV4IGZhNzY0MTkwZjI3MC4uNmE0NmY4ODZmZjQzIDEwMDY0NAo+ID4gPiA+IC0tLSBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jCj4gPiA+ID4gKysrIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMKPiA+ID4gPiBAQCAtNjk2Miw2
ICs2OTYyLDkgQEAgc3RhdGljIHBjaV9lcnNfcmVzdWx0X3QgaWdjX2lvX2Vycm9yX2RldGVjdGVk
KHN0cnVjdCBwY2lfZGV2ICpwZGV2LAo+ID4gPiA+ICAgICAgICAgICBzdHJ1Y3QgbmV0X2Rldmlj
ZSAqbmV0ZGV2ID0gcGNpX2dldF9kcnZkYXRhKHBkZXYpOwo+ID4gPiA+ICAgICAgICAgICBzdHJ1
Y3QgaWdjX2FkYXB0ZXIgKmFkYXB0ZXIgPSBuZXRkZXZfcHJpdihuZXRkZXYpOwo+ID4gPiA+ICsg
aWYgKCFwY2lfaXNfZW5hYmxlZChwZGV2KSkKPiA+ID4gPiArICAgICAgICAgcmV0dXJuIDA7Cj4g
PiA+ID4gKwo+ID4gPiA+ICAgICAgICAgICBuZXRpZl9kZXZpY2VfZGV0YWNoKG5ldGRldik7Cj4g
PiA+ID4gICAgICAgICAgIGlmIChzdGF0ZSA9PSBwY2lfY2hhbm5lbF9pb19wZXJtX2ZhaWx1cmUp
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
