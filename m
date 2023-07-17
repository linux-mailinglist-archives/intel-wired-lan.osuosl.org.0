Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 785C7755A1D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jul 2023 05:34:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D42840968;
	Mon, 17 Jul 2023 03:34:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D42840968
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689564875;
	bh=w7H8hBRYtFS/An8tkd9fDjWOTAn2Wa9y51745ejuPXk=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1xGmQciv8/1u1vAeOiJMv8p3jKcdbWVonTpYcvPaA6bAjIaI6PpHUFbNoVaS97fcv
	 Tq+JwcKytFTBkCywjdKzCWbQ5M8WcIKG5JjK3OGM1SUTeRuH/GT4lpI+t+UfeKWpd7
	 DPujK9XCTUHOAraUgnx9ZFxjgbS2Nc2BN48aQ3Q36jJGe99R8YVagG8/6qhcaPqq/L
	 3HstcdlcYsHC9pOMs8O8BFmAA76C5q+erAdyE50GMUZRG/X9MygUWFKU4Wxgx3iXB9
	 9xbNXAEg0pbidFTcjwpUiXtx5GfSEr8ZSx3MRWexiM5QWnZ8TjaztxjKkrFhw2krS1
	 uoJZe4JVaxPtg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ErrIZ6deegfZ; Mon, 17 Jul 2023 03:34:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6A88408A8;
	Mon, 17 Jul 2023 03:34:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6A88408A8
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B20251BF377
 for <intel-wired-lan@osuosl.org>; Mon, 17 Jul 2023 03:34:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7A2D460E61
 for <intel-wired-lan@osuosl.org>; Mon, 17 Jul 2023 03:34:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A2D460E61
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 31mTJ7UQo_pG for <intel-wired-lan@osuosl.org>;
 Mon, 17 Jul 2023 03:34:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C145C60E5E
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C145C60E5E
 for <intel-wired-lan@osuosl.org>; Mon, 17 Jul 2023 03:34:26 +0000 (UTC)
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 7CCC13F10B
 for <intel-wired-lan@osuosl.org>; Mon, 17 Jul 2023 03:34:23 +0000 (UTC)
Received: by mail-qt1-f199.google.com with SMTP id
 d75a77b69052e-403be92a8eeso51208691cf.1
 for <intel-wired-lan@osuosl.org>; Sun, 16 Jul 2023 20:34:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689564862; x=1692156862;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=DnRdLOx1Ivb7fT2g6W01ng/Xf0iUV7nR0rj9XNZC/LM=;
 b=ZH16oUb34II2h8PQTn2jZpp1tNDTUKmjk210Bst2F7ABNN6Ck2JOwlkNd57pGyKgmB
 6oEu6KLce3t3gP8xBRLk8j1dHDiBxksWdy/jTgukfkX3HsrTpUmQ6EdIOUyXHb2Sii3/
 i+3UUBt2Cmb0pUA5vqFXo2Diu4W8W5Ps8mp0OL9wq307NSKsYn1PoQWbT56MVk5pKQby
 nAJwZxVxhzTJAye+Etq+IX+Bmi99F/1dGpWS48DgNwBxJUGDP8plq4oMN8KcfzWOI7Q5
 ICYVh7RE1wZgywSFN+FMPlggH1yCfsaN0RlPRdoj7jXSS6MAU+6Y+B6j5xzNHICnITCA
 HoOA==
X-Gm-Message-State: ABy/qLZGhLiS2GY/RzWU8xEIJX1HKcFJtN4lnDqE3Ra5ztPXTEShwhJV
 hjFUdsuFw2TsRO8C39EGOHiiE+JjRetDsjRe2HlnGdRVfx63rBJEOd9SEgKXYdwKFB1DQ1Rcqvu
 4kXgJX1lm1jeAqk1v8J6SdGouQvQrra8ZuAsIXauwSBRrqaCsLimHpEw=
X-Received: by 2002:a05:622a:1113:b0:403:eb71:1fa6 with SMTP id
 e19-20020a05622a111300b00403eb711fa6mr3643090qty.5.1689564861896; 
 Sun, 16 Jul 2023 20:34:21 -0700 (PDT)
X-Google-Smtp-Source: APBJJlFL0RrWSbm/eHaMFX84hG1Bm9HWdXpoOqnEIJ9bXrUWpBRxfKw3w6Qjf11YyL6jSsCIllYQFoOjL4W9r/AWpug=
X-Received: by 2002:a05:622a:1113:b0:403:eb71:1fa6 with SMTP id
 e19-20020a05622a111300b00403eb711fa6mr3643069qty.5.1689564861653; Sun, 16 Jul
 2023 20:34:21 -0700 (PDT)
MIME-Version: 1.0
References: <20230705200617.GA72825@bhelgaas>
 <9d1095ab-23e5-3df3-58d6-b2974f87ee72@amd.com>
 <CAAd53p7L27dkzwb_Q9vhENhBye-JTcx2AuCG_YXAgb0F6MG-9w@mail.gmail.com>
 <60b2f5fb-8294-d104-16d8-0acfc70426c1@amd.com>
In-Reply-To: <60b2f5fb-8294-d104-16d8-0acfc70426c1@amd.com>
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Date: Mon, 17 Jul 2023 11:34:10 +0800
Message-ID: <CAAd53p42jiTCOsRZwEY0jtBejMDs1FbTOBNEknijnVNk3ENxuA@mail.gmail.com>
To: Mario Limonciello <mario.limonciello@amd.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1689564863;
 bh=DnRdLOx1Ivb7fT2g6W01ng/Xf0iUV7nR0rj9XNZC/LM=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=kLPh7o4uKOF3cFVFLER/SNzh0npZ37TN4KWCy1/fbTwp40uiW2KK+vjyqKtQXBwkL
 bBt3egiM6OJJIEwQNg3SjK4U53r29xERObxZILm0ideAy9R77NRg4iI2eLgNAdmAf1
 4jPDcUasKx0MUbE/IMufY7vd6BTwfl5uAPcAHAY/0EUQYRYQ6Pt1n49mlA2X9iQ8eG
 qCPL52VBwquQ9UbK3AAtVi+nPlUf5W3auZ5lRqumiQdKfZaRP3QTlM/gaiENzwfyfX
 1hJtwKNNmLhUqLT/KQlE6+MknpRa81tbD+WSM3284bSnQyBgp2kw43NDGhMnP2p5nE
 lLLQSVfmEff8w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=kLPh7o4u
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
 Michael Bottini <michael.a.bottini@linux.intel.com>,
 Bjorn Helgaas <helgaas@kernel.org>, intel-wired-lan@osuosl.org,
 bhelgaas@google.com, Mika Westerberg <mika.westerberg@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gU2F0LCBKdWwgMTUsIDIwMjMgYXQgMTI6MzfigK9BTSBNYXJpbyBMaW1vbmNpZWxsbwo8bWFy
aW8ubGltb25jaWVsbG9AYW1kLmNvbT4gd3JvdGU6Cj4KPiBPbiA3LzE0LzIzIDAzOjE3LCBLYWkt
SGVuZyBGZW5nIHdyb3RlOgo+ID4gT24gVGh1LCBKdWwgNiwgMjAyMyBhdCAxMjowN+KAr1BNIE1h
cmlvIExpbW9uY2llbGxvCj4gPiA8bWFyaW8ubGltb25jaWVsbG9AYW1kLmNvbT4gd3JvdGU6Cj4g
Pj4KPiA+PiBPbiA3LzUvMjMgMTU6MDYsIEJqb3JuIEhlbGdhYXMgd3JvdGU6Cj4gPj4+IE9uIFdl
ZCwgSnVuIDI4LCAyMDIzIGF0IDAxOjA5OjQ5UE0gKzA4MDAsIEthaS1IZW5nIEZlbmcgd3JvdGU6
Cj4gPj4+PiBPbiBXZWQsIEp1biAyOCwgMjAyMyBhdCA0OjU04oCvQU0gQmpvcm4gSGVsZ2FhcyA8
aGVsZ2Fhc0BrZXJuZWwub3JnPiB3cm90ZToKPiA+Pj4+PiBPbiBUdWUsIEp1biAyNywgMjAyMyBh
dCAwNDozNToyNVBNICswODAwLCBLYWktSGVuZyBGZW5nIHdyb3RlOgo+ID4+Pj4+PiBPbiBGcmks
IEp1biAyMywgMjAyMyBhdCA3OjA24oCvQU0gQmpvcm4gSGVsZ2FhcyA8aGVsZ2Fhc0BrZXJuZWwu
b3JnPiB3cm90ZToKPiA+Pj4+Pj4+IE9uIFR1ZSwgSnVuIDIwLCAyMDIzIGF0IDAxOjM2OjU5UE0g
LTA1MDAsIExpbW9uY2llbGxvLCBNYXJpbyB3cm90ZToKPiA+Pj4KPiA+Pj4+PiBJdCdzIHBlcmZl
Y3RseSBmaW5lIGZvciB0aGUgSVAgdG8gc3VwcG9ydCBQQ0kgZmVhdHVyZXMgdGhhdCBhcmUgbm90
Cj4gPj4+Pj4gYW5kIGNhbiBub3QgYmUgZW5hYmxlZCBpbiBhIHN5c3RlbSBkZXNpZ24uICBCdXQg
SSBleHBlY3QgdGhhdAo+ID4+Pj4+IHN0cmFwcGluZyBvciBmaXJtd2FyZSB3b3VsZCBkaXNhYmxl
IHRob3NlIGZlYXR1cmVzIHNvIHRoZXkgYXJlIG5vdAo+ID4+Pj4+IGFkdmVydGlzZWQgaW4gY29u
ZmlnIHNwYWNlLgo+ID4+Pj4+Cj4gPj4+Pj4gSWYgQklPUyBsZWF2ZXMgZmVhdHVyZXMgZGlzYWJs
ZWQgYmVjYXVzZSB0aGV5IGNhbm5vdCB3b3JrLCBidXQgYXQgdGhlCj4gPj4+Pj4gc2FtZSB0aW1l
IGxlYXZlcyB0aGVtIGFkdmVydGlzZWQgaW4gY29uZmlnIHNwYWNlLCBJJ2Qgc2F5IHRoYXQncyBh
Cj4gPj4+Pj4gQklPUyBkZWZlY3QuICBJbiB0aGF0IGNhc2UsIHdlIHNob3VsZCBoYXZlIGEgRE1J
IHF1aXJrIG9yIHNvbWV0aGluZyB0bwo+ID4+Pj4+IHdvcmsgYXJvdW5kIHRoZSBkZWZlY3QuCj4g
Pj4+Pgo+ID4+Pj4gVGhhdCBtZWFucyBtb3N0IGlmIG5vdCBhbGwgQklPUyBhcmUgZGVmZWN0ZWQu
Cj4gPj4+PiBCSU9TIHZlbmRvcnMgYW5kIE9ETSBuZXZlciBib3RoZXJlZCAoYW5kIHByb2JhYmx5
IHdpbGwgbm90KSB0byBjaGFuZ2UKPiA+Pj4+IHRoZSBjYXBhYmlsaXRpZXMgYWR2ZXJ0aXNlZCBi
eSBjb25maWcgc3BhY2UgYmVjYXVzZSAiaXQgYWxyZWFkeSB3b3Jrcwo+ID4+Pj4gdW5kZXIgV2lu
ZG93cyIuCj4gPj4+Cj4gPj4+IFRoaXMgaXMgd2hhdCBzZWVtcyBzdHJhbmdlIHRvIG1lLiAgQXJl
IHlvdSBzYXlpbmcgdGhhdCBXaW5kb3dzIG5ldmVyCj4gPj4+IGVuYWJsZXMgdGhlc2UgcG93ZXIt
c2F2aW5nIGZlYXR1cmVzPyAgT3IgdGhhdCBXaW5kb3dzIGluY2x1ZGVzIHF1aXJrcwo+ID4+PiBm
b3IgYWxsIHRoZXNlIGJyb2tlbiBCSU9TZXM/ICBOZWl0aGVyIGlkZWEgc2VlbXMgdmVyeSBjb252
aW5jaW5nLgo+ID4+Pgo+ID4+Cj4gPj4gSSBzZWUgeW91ciBwb2ludC4gIEkgd2FzIGxvb2tpbmcg
dGhyb3VnaCBNaWNyb3NvZnQgZG9jdW1lbnRhdGlvbiBmb3IKPiA+PiBoaW50cyBhbmQgY2FtZSBh
Y3Jvc3MgdGhpczoKPiA+Pgo+ID4+IGh0dHBzOi8vbGVhcm4ubWljcm9zb2Z0LmNvbS9lbi11cy93
aW5kb3dzLWhhcmR3YXJlL2N1c3RvbWl6ZS9wb3dlci1zZXR0aW5ncy9wY2ktZXhwcmVzcy1zZXR0
aW5ncy1saW5rLXN0YXRlLXBvd2VyLW1hbmFnZW1lbnQKPiA+Pgo+ID4+IFRoZXkgaGF2ZSBhIHBv
bGljeSBrbm9iIHRvIGdsb2JhbGx5IHNldCBMMCBvciBMMSBmb3IgUENJZSBsaW5rcy4KPiA+Pgo+
ID4+IFRoZXkgZG9uJ3QgZXhwbGljaXRseSBzYXkgaXQsIGJ1dCBzdXJlbHkgaXQncyBiYXNlZCBv
biB3aGF0IHRoZSBkZXZpY2VzCj4gPj4gYWR2ZXJ0aXNlIGluIHRoZSBjYXBhYmlsaXRpZXMgcmVn
aXN0ZXJzLgo+ID4KPiA+IFNvIGVzc2VudGlhbGx5IGl0IGNhbiBiZSBhY2hpZXZlZCB2aWEgYm9v
dCB0aW1lIGtlcm5lbCBwYXJhbWV0ZXIKPiA+IGFuZC9vciBzeXNmcyBrbm9iLgo+ID4KPiA+IFRo
ZSBtYWluIHBvaW50IGlzIE9TIHNob3VsZCBzdGljayB0byB0aGUgQklPUyBkZWZhdWx0LCB3aGlj
aCBpcyB0aGUKPiA+IG9ubHkgQVNQTSBzZXR0aW5nIHRlc3RlZCBiZWZvcmUgcHV0dGluZyBoYXJk
d2FyZSB0byB0aGUgbWFya2V0Lgo+Cj4gVW5mb3J0dW5hdGVseTsgSSBkb24ndCB0aGluayB5b3Ug
Y2FuIGp1bXAgdG8gdGhpcyBjb25jbHVzaW9uLgo+Cj4gQSBiaWcgZGlmZmVyZW5jZSBpbiB0aGUg
V2luZG93cyB3b3JsZCB0byBMaW51eCB3b3JsZCBpcyB0aGF0IE9FTXMgc2hpcAo+IHdpdGggYSBm
YWN0b3J5IFdpbmRvd3MgaW1hZ2UgdGhhdCBtYXkgc2V0IHBvbGljaWVzIGxpa2UgdGhpcy4gIE9F
TQo+ICJwbGF0Zm9ybSIgZHJpdmVycyBjYW4gc2V0IHJlZ2lzdHJ5IGtleXMgdG9vLgoKVGhhbmtz
LiBUaGlzIGlzIG5ldyB0byBtZS4KCj4KPiBJIHRoaW5rIHRoZSBuZXh0IEFTUE0gaXNzdWUgdGhh
dCBjb21lcyB1cCB3aGF0IHdlIChjb2xsZWN0aXZlbHkpIG5lZWQgdG8KPiBkbyBpcyBjb21wYXJl
IEFTUE0gcG9saWN5IGFuZCBQQ0kgcmVnaXN0ZXJzIGZvcjoKPiAxKSBBICJjbGVhbiIgV2luZG93
cyBpbnN0YWxsIGZyb20gTWljcm9zb2Z0IG1lZGlhIGJlZm9yZSBhbGwgdGhlIE9FTQo+IGRyaXZl
cnMgYXJlIGluc3RhbGxlZC4KPiAyKSBBIFdpbmRvd3MgaW5zdGFsbCB0aGF0IHRoZSBkcml2ZXJz
IGhhdmUgYmVlbiBpbnN0YWxsZWQuCj4gMykgQSB1cCB0byBkYXRlIG1haW5saW5lIExpbnV4IGtl
cm5lbC4KPgo+IEFjdHVhbGx5IGFzIHRoaXMgdGhyZWFkIHN0YXJ0ZWQgZm9yIGRldGVybWluaW5n
IHBvbGljeSBmb3IgZXh0ZXJuYWwgUENJZQo+IGRldmljZXMsIG1heWJlIHRoYXQgd291bGQgYmUg
Z29vZCB0byBjaGVjayB3aXRoIHRob3NlLgoKRGlkIHRoYXQgYmVmb3JlIHN1Ym1pdHRpbmcgdGhl
IHBhdGNoLgpGcm9tIHZlcnkgbGltaXRlZCBkZXZpY2VzIEkgdGVzdGVkLCBBU1BNIGlzIGVuYWJs
ZWQgZm9yIGV4dGVybmFsCmNvbm5lY3RlZCBQQ0llIGRldmljZSB2aWEgVEJUIHBvcnRzLgoKSSB3
b25kZXIgaWYgdGhlcmUncyBhbnkgcGFydGljdWxhciBtb2RpZmljYXRpb24gc2hvdWxkIGJlIGlt
cHJvdmVkIGZvcgp0aGlzIHBhdGNoPwoKS2FpLUhlbmcKCj4KPiA+Cj4gPiBLYWktSGVuZwo+ID4K
PiA+Pgo+ID4+Pj4+PiBTbyB0aGUgbG9naWMgaXMgdG8gaWdub3JlIHRoZSBjYXBhYmlsaXR5IGFu
ZCB0cnVzdCB0aGUgZGVmYXVsdCBzZXQKPiA+Pj4+Pj4gYnkgQklPUy4KPiA+Pj4+Pgo+ID4+Pj4+
IEkgdGhpbmsgbGltaXRpbmcgQVNQTSBzdXBwb3J0IHRvIHdoYXRldmVyIEJJT1MgY29uZmlndXJl
ZCBhdCBib290LXRpbWUKPiA+Pj4+PiBpcyBwcm9ibGVtYXRpYy4gIEkgZG9uJ3QgdGhpbmsgd2Ug
Y2FuIGFzc3VtZSB0aGF0IGFsbCBwbGF0Zm9ybXMgaGF2ZQo+ID4+Pj4+IGZpcm13YXJlIHRoYXQg
Y29uZmlndXJlcyBBU1BNIGFzIGFnZ3Jlc3NpdmVseSBhcyBwb3NzaWJsZSwgYW5kCj4gPj4+Pj4g
b2J2aW91c2x5IGZpcm13YXJlIHdvbid0IGNvbmZpZ3VyZSBob3QtYWRkZWQgZGV2aWNlcyBhdCBh
bGwgKGluCj4gPj4+Pj4gZ2VuZXJhbDsgSSBrbm93IEFDUEkgX0hQWCBjYW4gZG8gc29tZSBvZiB0
aGF0KS4KPiA+Pj4+Cj4gPj4+PiBUb3RhbGx5IGFncmVlLiBJIHdhcyBub3Qgc3VnZ2VzdGluZyB0
byBsaW1pdGluZyB0aGUgc2V0dGluZyBhdCBhbGwuCj4gPj4+PiBBIGJvb3QtdGltZSBwYXJhbWV0
ZXIgdG8gZmxpcCBBU1BNIHNldHRpbmcgaXMgdmVyeSB1c2VmdWwuIElmIG5vbmUgaGFzCj4gPj4+
PiBiZWVuIHNldCwgZGVmYXVsdCB0byBCSU9TIHNldHRpbmcuCj4gPj4+Cj4gPj4+IEEgYm9vdC10
aW1lIHBhcmFtZXRlciBmb3IgZGVidWdnaW5nIGFuZCB3b3JrYXJvdW5kcyBpcyBmaW5lLiAgSU1P
LAo+ID4+PiBuZWVkaW5nIGEgYm9vdC10aW1lIHBhcmFtZXRlciBpbiB0aGUgY291cnNlIG9mIG5v
cm1hbCBvcGVyYXRpb24gaXMKPiA+Pj4gbm90IE9LLgo+ID4+Pgo+ID4+PiBCam9ybgo+ID4+Cj4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2ly
ZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xp
c3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
