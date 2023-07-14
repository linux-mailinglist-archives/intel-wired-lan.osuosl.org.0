Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5684C7534E5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jul 2023 10:17:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E6BF861401;
	Fri, 14 Jul 2023 08:17:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E6BF861401
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689322672;
	bh=RFTqLnucgIWG/DpEsBdirNj6OwZTZP8sCex1F2hshq0=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5dH6EQgu5ahAHjwMFaJA4A+nECSRNHZKRSXSf9m4U7DAlQpv/Z584XSY0sRb6kFn1
	 lY8WOYDloCBuBcqlgZD2T4KRW3mUEmfBimXKuwdI01r+7xwr8rVaAc1fvLuOO9iUtY
	 HO7yRYy9llL8GNCpNaw7uNWd7CoYDYFpooyDk6tdOe4k9KkC+Ng/x8DoDbeIQhPfC0
	 nfRrTbdbdUhoEjlfA859uqOLMqH5OghBPt/PdXYwQ/gtxwoiaP2GEvdsOxmHznk2R9
	 htRVR7KjRZewCcUGfFwjCkxO+TdDQ9L8Q+0Bl818IkKoJOu6Eiop0mzqrU5pUCDtEL
	 kAK+Tu5LHaDdg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hSZpTUMOakGp; Fri, 14 Jul 2023 08:17:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 557C7613F9;
	Fri, 14 Jul 2023 08:17:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 557C7613F9
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C93DE1BF31B
 for <intel-wired-lan@osuosl.org>; Fri, 14 Jul 2023 08:17:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A061360B43
 for <intel-wired-lan@osuosl.org>; Fri, 14 Jul 2023 08:17:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A061360B43
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YmKbN4M8Zba7 for <intel-wired-lan@osuosl.org>;
 Fri, 14 Jul 2023 08:17:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ADB2A605AC
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ADB2A605AC
 for <intel-wired-lan@osuosl.org>; Fri, 14 Jul 2023 08:17:40 +0000 (UTC)
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com
 [209.85.216.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 998D73F71E
 for <intel-wired-lan@osuosl.org>; Fri, 14 Jul 2023 08:17:37 +0000 (UTC)
Received: by mail-pj1-f72.google.com with SMTP id
 98e67ed59e1d1-26337f5d2daso1179683a91.0
 for <intel-wired-lan@osuosl.org>; Fri, 14 Jul 2023 01:17:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689322656; x=1691914656;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=3A/0HA6ZWMQbciYz9VJPXRi0Ox92FUy0gWHLPShyPBU=;
 b=N3Z8J1gxOW60YdQRoFBK61PfqvJJwztIiuZFk7zJfNB2DlQhRHBYzQQzL4U0iD9jwR
 l6l4PGjH6B7hc2NNcrGzZvf4mi9Od+1xRQrBxsECA6wSoTKW3oS8V4S6msHEm3Ps8obF
 YqRLg5j5TYJ420+0m0TIed4He8qAa/YgA09+3tlLLRSC1uq2LWGggU9Jc7DShBZqKUrr
 /KoABXAwBKbNf5vvJgzDcAbWdZjjnETGo5ComP5kR1zjOHORKH3RSGsysZL43ggjLq9r
 aD6Tq9sD3nF5FtO3O7NNghgKXVNAc41ttkPXtwmERAU8tOmkqIPONxHRpvv+gEmw3+xA
 KHtw==
X-Gm-Message-State: ABy/qLZApbqyH80bcWgl0ggGwY/jPg34svZwQ5IwFr+AAzuZNWqWqU2F
 7jDtcss+FwpYOj7PfRAwWNv9vVwkWR3bI6zZVXV2sd29DQfbC7SKHUUJe3G4v40Q3dr4muL0Orb
 gp7cDOqkiWVCikX+o3r9C6e3fLO3+UhjKvbrUr7qvyhqn2N9cRiSfIXA=
X-Received: by 2002:a17:90a:2d8d:b0:262:e598:6046 with SMTP id
 p13-20020a17090a2d8d00b00262e5986046mr3727590pjd.28.1689322655928; 
 Fri, 14 Jul 2023 01:17:35 -0700 (PDT)
X-Google-Smtp-Source: APBJJlHxON4/AXRLxhYG285c3DgIbtfg/pDUKu1PUe+rASKqNPVZaH88A4YiyS+yuhcwBdAsxe3+anSxFsA/g9hfaUE=
X-Received: by 2002:a17:90a:2d8d:b0:262:e598:6046 with SMTP id
 p13-20020a17090a2d8d00b00262e5986046mr3727571pjd.28.1689322655622; Fri, 14
 Jul 2023 01:17:35 -0700 (PDT)
MIME-Version: 1.0
References: <20230705200617.GA72825@bhelgaas>
 <9d1095ab-23e5-3df3-58d6-b2974f87ee72@amd.com>
In-Reply-To: <9d1095ab-23e5-3df3-58d6-b2974f87ee72@amd.com>
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Date: Fri, 14 Jul 2023 16:17:24 +0800
Message-ID: <CAAd53p7L27dkzwb_Q9vhENhBye-JTcx2AuCG_YXAgb0F6MG-9w@mail.gmail.com>
To: Mario Limonciello <mario.limonciello@amd.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1689322657;
 bh=3A/0HA6ZWMQbciYz9VJPXRi0Ox92FUy0gWHLPShyPBU=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=u+xSgpwltrpiAz3JxM7Nz+Gf/CZIgQNy7+6tOXMko3PtjnGPhvPP562ZKxfpB5dgp
 +JK4Wmgp8bouA5F2kGGTIzcjb47X05v112/d36g6wnyB6K3Ft3gNaMGA6jHSD0KRe3
 /yh83rhizwQwj2Xp8a1uH68EBC5DmfpohvpJCMsmCk3mQOUiztIx9z4xXUSPETufhH
 59zBXOC+NSd7eH9c5YpE4wTY7PIaPjaDd2ZVnTEufQwxIIduwXfo5yMlCh+/gjZzzf
 sdgntxKNd/mciIFHgWYALfNV4oejFxl70A4WO+w8kTu8qMkP5Gzxjnz98INfWUWp6O
 FX1NkM+U0LcjQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=u+xSgpwl
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

T24gVGh1LCBKdWwgNiwgMjAyMyBhdCAxMjowN+KAr1BNIE1hcmlvIExpbW9uY2llbGxvCjxtYXJp
by5saW1vbmNpZWxsb0BhbWQuY29tPiB3cm90ZToKPgo+IE9uIDcvNS8yMyAxNTowNiwgQmpvcm4g
SGVsZ2FhcyB3cm90ZToKPiA+IE9uIFdlZCwgSnVuIDI4LCAyMDIzIGF0IDAxOjA5OjQ5UE0gKzA4
MDAsIEthaS1IZW5nIEZlbmcgd3JvdGU6Cj4gPj4gT24gV2VkLCBKdW4gMjgsIDIwMjMgYXQgNDo1
NOKAr0FNIEJqb3JuIEhlbGdhYXMgPGhlbGdhYXNAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPj4+IE9u
IFR1ZSwgSnVuIDI3LCAyMDIzIGF0IDA0OjM1OjI1UE0gKzA4MDAsIEthaS1IZW5nIEZlbmcgd3Jv
dGU6Cj4gPj4+PiBPbiBGcmksIEp1biAyMywgMjAyMyBhdCA3OjA24oCvQU0gQmpvcm4gSGVsZ2Fh
cyA8aGVsZ2Fhc0BrZXJuZWwub3JnPiB3cm90ZToKPiA+Pj4+PiBPbiBUdWUsIEp1biAyMCwgMjAy
MyBhdCAwMTozNjo1OVBNIC0wNTAwLCBMaW1vbmNpZWxsbywgTWFyaW8gd3JvdGU6Cj4gPgo+ID4+
PiBJdCdzIHBlcmZlY3RseSBmaW5lIGZvciB0aGUgSVAgdG8gc3VwcG9ydCBQQ0kgZmVhdHVyZXMg
dGhhdCBhcmUgbm90Cj4gPj4+IGFuZCBjYW4gbm90IGJlIGVuYWJsZWQgaW4gYSBzeXN0ZW0gZGVz
aWduLiAgQnV0IEkgZXhwZWN0IHRoYXQKPiA+Pj4gc3RyYXBwaW5nIG9yIGZpcm13YXJlIHdvdWxk
IGRpc2FibGUgdGhvc2UgZmVhdHVyZXMgc28gdGhleSBhcmUgbm90Cj4gPj4+IGFkdmVydGlzZWQg
aW4gY29uZmlnIHNwYWNlLgo+ID4+Pgo+ID4+PiBJZiBCSU9TIGxlYXZlcyBmZWF0dXJlcyBkaXNh
YmxlZCBiZWNhdXNlIHRoZXkgY2Fubm90IHdvcmssIGJ1dCBhdCB0aGUKPiA+Pj4gc2FtZSB0aW1l
IGxlYXZlcyB0aGVtIGFkdmVydGlzZWQgaW4gY29uZmlnIHNwYWNlLCBJJ2Qgc2F5IHRoYXQncyBh
Cj4gPj4+IEJJT1MgZGVmZWN0LiAgSW4gdGhhdCBjYXNlLCB3ZSBzaG91bGQgaGF2ZSBhIERNSSBx
dWlyayBvciBzb21ldGhpbmcgdG8KPiA+Pj4gd29yayBhcm91bmQgdGhlIGRlZmVjdC4KPiA+Pgo+
ID4+IFRoYXQgbWVhbnMgbW9zdCBpZiBub3QgYWxsIEJJT1MgYXJlIGRlZmVjdGVkLgo+ID4+IEJJ
T1MgdmVuZG9ycyBhbmQgT0RNIG5ldmVyIGJvdGhlcmVkIChhbmQgcHJvYmFibHkgd2lsbCBub3Qp
IHRvIGNoYW5nZQo+ID4+IHRoZSBjYXBhYmlsaXRpZXMgYWR2ZXJ0aXNlZCBieSBjb25maWcgc3Bh
Y2UgYmVjYXVzZSAiaXQgYWxyZWFkeSB3b3Jrcwo+ID4+IHVuZGVyIFdpbmRvd3MiLgo+ID4KPiA+
IFRoaXMgaXMgd2hhdCBzZWVtcyBzdHJhbmdlIHRvIG1lLiAgQXJlIHlvdSBzYXlpbmcgdGhhdCBX
aW5kb3dzIG5ldmVyCj4gPiBlbmFibGVzIHRoZXNlIHBvd2VyLXNhdmluZyBmZWF0dXJlcz8gIE9y
IHRoYXQgV2luZG93cyBpbmNsdWRlcyBxdWlya3MKPiA+IGZvciBhbGwgdGhlc2UgYnJva2VuIEJJ
T1Nlcz8gIE5laXRoZXIgaWRlYSBzZWVtcyB2ZXJ5IGNvbnZpbmNpbmcuCj4gPgo+Cj4gSSBzZWUg
eW91ciBwb2ludC4gIEkgd2FzIGxvb2tpbmcgdGhyb3VnaCBNaWNyb3NvZnQgZG9jdW1lbnRhdGlv
biBmb3IKPiBoaW50cyBhbmQgY2FtZSBhY3Jvc3MgdGhpczoKPgo+IGh0dHBzOi8vbGVhcm4ubWlj
cm9zb2Z0LmNvbS9lbi11cy93aW5kb3dzLWhhcmR3YXJlL2N1c3RvbWl6ZS9wb3dlci1zZXR0aW5n
cy9wY2ktZXhwcmVzcy1zZXR0aW5ncy1saW5rLXN0YXRlLXBvd2VyLW1hbmFnZW1lbnQKPgo+IFRo
ZXkgaGF2ZSBhIHBvbGljeSBrbm9iIHRvIGdsb2JhbGx5IHNldCBMMCBvciBMMSBmb3IgUENJZSBs
aW5rcy4KPgo+IFRoZXkgZG9uJ3QgZXhwbGljaXRseSBzYXkgaXQsIGJ1dCBzdXJlbHkgaXQncyBi
YXNlZCBvbiB3aGF0IHRoZSBkZXZpY2VzCj4gYWR2ZXJ0aXNlIGluIHRoZSBjYXBhYmlsaXRpZXMg
cmVnaXN0ZXJzLgoKU28gZXNzZW50aWFsbHkgaXQgY2FuIGJlIGFjaGlldmVkIHZpYSBib290IHRp
bWUga2VybmVsIHBhcmFtZXRlcgphbmQvb3Igc3lzZnMga25vYi4KClRoZSBtYWluIHBvaW50IGlz
IE9TIHNob3VsZCBzdGljayB0byB0aGUgQklPUyBkZWZhdWx0LCB3aGljaCBpcyB0aGUKb25seSBB
U1BNIHNldHRpbmcgdGVzdGVkIGJlZm9yZSBwdXR0aW5nIGhhcmR3YXJlIHRvIHRoZSBtYXJrZXQu
CgpLYWktSGVuZwoKPgo+ID4+Pj4gU28gdGhlIGxvZ2ljIGlzIHRvIGlnbm9yZSB0aGUgY2FwYWJp
bGl0eSBhbmQgdHJ1c3QgdGhlIGRlZmF1bHQgc2V0Cj4gPj4+PiBieSBCSU9TLgo+ID4+Pgo+ID4+
PiBJIHRoaW5rIGxpbWl0aW5nIEFTUE0gc3VwcG9ydCB0byB3aGF0ZXZlciBCSU9TIGNvbmZpZ3Vy
ZWQgYXQgYm9vdC10aW1lCj4gPj4+IGlzIHByb2JsZW1hdGljLiAgSSBkb24ndCB0aGluayB3ZSBj
YW4gYXNzdW1lIHRoYXQgYWxsIHBsYXRmb3JtcyBoYXZlCj4gPj4+IGZpcm13YXJlIHRoYXQgY29u
ZmlndXJlcyBBU1BNIGFzIGFnZ3Jlc3NpdmVseSBhcyBwb3NzaWJsZSwgYW5kCj4gPj4+IG9idmlv
dXNseSBmaXJtd2FyZSB3b24ndCBjb25maWd1cmUgaG90LWFkZGVkIGRldmljZXMgYXQgYWxsIChp
bgo+ID4+PiBnZW5lcmFsOyBJIGtub3cgQUNQSSBfSFBYIGNhbiBkbyBzb21lIG9mIHRoYXQpLgo+
ID4+Cj4gPj4gVG90YWxseSBhZ3JlZS4gSSB3YXMgbm90IHN1Z2dlc3RpbmcgdG8gbGltaXRpbmcg
dGhlIHNldHRpbmcgYXQgYWxsLgo+ID4+IEEgYm9vdC10aW1lIHBhcmFtZXRlciB0byBmbGlwIEFT
UE0gc2V0dGluZyBpcyB2ZXJ5IHVzZWZ1bC4gSWYgbm9uZSBoYXMKPiA+PiBiZWVuIHNldCwgZGVm
YXVsdCB0byBCSU9TIHNldHRpbmcuCj4gPgo+ID4gQSBib290LXRpbWUgcGFyYW1ldGVyIGZvciBk
ZWJ1Z2dpbmcgYW5kIHdvcmthcm91bmRzIGlzIGZpbmUuICBJTU8sCj4gPiBuZWVkaW5nIGEgYm9v
dC10aW1lIHBhcmFtZXRlciBpbiB0aGUgY291cnNlIG9mIG5vcm1hbCBvcGVyYXRpb24gaXMKPiA+
IG5vdCBPSy4KPiA+Cj4gPiBCam9ybgo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQt
bGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtd2lyZWQtbGFuCg==
