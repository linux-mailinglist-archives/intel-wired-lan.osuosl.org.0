Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 086E9748E90
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jul 2023 22:06:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A608540500;
	Wed,  5 Jul 2023 20:06:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A608540500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688587588;
	bh=E4J4WFmfG2IMNCExnsJdD/Fxu08SR6izg0nYKdY3MEk=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=Po1V1fyLtbf1KNw+jvbwDex21sdxsuXTMBEkNiKBqp5+BpmTudWdXgw85FvavT9FO
	 Udd3qJadp+QQbO6nyoZM71+5UiFxZdwgJEZE21/YMPK3WRicS/6Loc39Ipo0wCCbga
	 NmfdJ578rZuk2WRm64NdH4aaNckRMwt0M3x+QI5X4eLVo10yV+lj+94BZ6MIHhvfSZ
	 3t5A6zQDj4b2/mjcazT62KeT4Ph8PamD91ovZzqooMU8aMzoLKM1CCQqSiltLvq2VN
	 hR/Sv/WBA8rQzHi6oYscOYfFbWH7XE4I8NJeNRFOsDLvS+W7J8chcsUnRut0u78DFx
	 AsLYvXa5HH0Zw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rqzrJ4PYRO9P; Wed,  5 Jul 2023 20:06:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 53B6640166;
	Wed,  5 Jul 2023 20:06:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 53B6640166
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EC0C01BF281
 for <intel-wired-lan@osuosl.org>; Wed,  5 Jul 2023 20:06:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C250E4014E
 for <intel-wired-lan@osuosl.org>; Wed,  5 Jul 2023 20:06:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C250E4014E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p1YyBOL0vvB5 for <intel-wired-lan@osuosl.org>;
 Wed,  5 Jul 2023 20:06:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D643A400A2
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D643A400A2
 for <intel-wired-lan@osuosl.org>; Wed,  5 Jul 2023 20:06:20 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A812A616E4;
 Wed,  5 Jul 2023 20:06:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA81FC433C7;
 Wed,  5 Jul 2023 20:06:18 +0000 (UTC)
Date: Wed, 5 Jul 2023 15:06:17 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Message-ID: <20230705200617.GA72825@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAd53p5YjKbOkzBUmhu=EctusO7d38tHhg_b+zzvfVt97hLuOA@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1688587579;
 bh=z5pOaz2o7vAP2YYNhfS0EUOnW70/UEHkLQ7tR3WqAaY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=TJPC1G02VrF+X/MQY3zvnWf6w99sv8SGZs9esbh15UwTqy6jsR65e63GQtj722Ga+
 sq/DUutey0colk4gWe6ebEUHNlsAzuvaAMfhFi48dzCaiPsgGA1nBM9bqPRdSOvBWQ
 2wuAP8qRvEJSBlQknfZWecUcsfm6SmBXo9yISo4Ce991HvVCsB9Gvojx/CkIoqYIPo
 dU9ELI48fKtEvId/VkyrFa4H/lvR2vO14QoutBBvhAN2as+ABkqX4wALhxwK/Vi2Ag
 y+QEdaIyU1c8hHh20mDzai1AswiWVRQy6XL3s+kRSwzExHpWC6f/jhrRDU4sc8QqWj
 jnfdHKJhlNhFg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=TJPC1G02
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
 Michael Bottini <michael.a.bottini@linux.intel.com>, "Limonciello,
 Mario" <mario.limonciello@amd.com>, intel-wired-lan@osuosl.org,
 bhelgaas@google.com, Mika Westerberg <mika.westerberg@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBKdW4gMjgsIDIwMjMgYXQgMDE6MDk6NDlQTSArMDgwMCwgS2FpLUhlbmcgRmVuZyB3
cm90ZToKPiBPbiBXZWQsIEp1biAyOCwgMjAyMyBhdCA0OjU04oCvQU0gQmpvcm4gSGVsZ2FhcyA8
aGVsZ2Fhc0BrZXJuZWwub3JnPiB3cm90ZToKPiA+IE9uIFR1ZSwgSnVuIDI3LCAyMDIzIGF0IDA0
OjM1OjI1UE0gKzA4MDAsIEthaS1IZW5nIEZlbmcgd3JvdGU6Cj4gPiA+IE9uIEZyaSwgSnVuIDIz
LCAyMDIzIGF0IDc6MDbigK9BTSBCam9ybiBIZWxnYWFzIDxoZWxnYWFzQGtlcm5lbC5vcmc+IHdy
b3RlOgo+ID4gPiA+IE9uIFR1ZSwgSnVuIDIwLCAyMDIzIGF0IDAxOjM2OjU5UE0gLTA1MDAsIExp
bW9uY2llbGxvLCBNYXJpbyB3cm90ZToKCj4gPiBJdCdzIHBlcmZlY3RseSBmaW5lIGZvciB0aGUg
SVAgdG8gc3VwcG9ydCBQQ0kgZmVhdHVyZXMgdGhhdCBhcmUgbm90Cj4gPiBhbmQgY2FuIG5vdCBi
ZSBlbmFibGVkIGluIGEgc3lzdGVtIGRlc2lnbi4gIEJ1dCBJIGV4cGVjdCB0aGF0Cj4gPiBzdHJh
cHBpbmcgb3IgZmlybXdhcmUgd291bGQgZGlzYWJsZSB0aG9zZSBmZWF0dXJlcyBzbyB0aGV5IGFy
ZSBub3QKPiA+IGFkdmVydGlzZWQgaW4gY29uZmlnIHNwYWNlLgo+ID4KPiA+IElmIEJJT1MgbGVh
dmVzIGZlYXR1cmVzIGRpc2FibGVkIGJlY2F1c2UgdGhleSBjYW5ub3Qgd29yaywgYnV0IGF0IHRo
ZQo+ID4gc2FtZSB0aW1lIGxlYXZlcyB0aGVtIGFkdmVydGlzZWQgaW4gY29uZmlnIHNwYWNlLCBJ
J2Qgc2F5IHRoYXQncyBhCj4gPiBCSU9TIGRlZmVjdC4gIEluIHRoYXQgY2FzZSwgd2Ugc2hvdWxk
IGhhdmUgYSBETUkgcXVpcmsgb3Igc29tZXRoaW5nIHRvCj4gPiB3b3JrIGFyb3VuZCB0aGUgZGVm
ZWN0Lgo+IAo+IFRoYXQgbWVhbnMgbW9zdCBpZiBub3QgYWxsIEJJT1MgYXJlIGRlZmVjdGVkLgo+
IEJJT1MgdmVuZG9ycyBhbmQgT0RNIG5ldmVyIGJvdGhlcmVkIChhbmQgcHJvYmFibHkgd2lsbCBu
b3QpIHRvIGNoYW5nZQo+IHRoZSBjYXBhYmlsaXRpZXMgYWR2ZXJ0aXNlZCBieSBjb25maWcgc3Bh
Y2UgYmVjYXVzZSAiaXQgYWxyZWFkeSB3b3Jrcwo+IHVuZGVyIFdpbmRvd3MiLgoKVGhpcyBpcyB3
aGF0IHNlZW1zIHN0cmFuZ2UgdG8gbWUuICBBcmUgeW91IHNheWluZyB0aGF0IFdpbmRvd3MgbmV2
ZXIKZW5hYmxlcyB0aGVzZSBwb3dlci1zYXZpbmcgZmVhdHVyZXM/ICBPciB0aGF0IFdpbmRvd3Mg
aW5jbHVkZXMgcXVpcmtzCmZvciBhbGwgdGhlc2UgYnJva2VuIEJJT1Nlcz8gIE5laXRoZXIgaWRl
YSBzZWVtcyB2ZXJ5IGNvbnZpbmNpbmcuCgo+ID4gPiBTbyB0aGUgbG9naWMgaXMgdG8gaWdub3Jl
IHRoZSBjYXBhYmlsaXR5IGFuZCB0cnVzdCB0aGUgZGVmYXVsdCBzZXQKPiA+ID4gYnkgQklPUy4K
PiA+Cj4gPiBJIHRoaW5rIGxpbWl0aW5nIEFTUE0gc3VwcG9ydCB0byB3aGF0ZXZlciBCSU9TIGNv
bmZpZ3VyZWQgYXQgYm9vdC10aW1lCj4gPiBpcyBwcm9ibGVtYXRpYy4gIEkgZG9uJ3QgdGhpbmsg
d2UgY2FuIGFzc3VtZSB0aGF0IGFsbCBwbGF0Zm9ybXMgaGF2ZQo+ID4gZmlybXdhcmUgdGhhdCBj
b25maWd1cmVzIEFTUE0gYXMgYWdncmVzc2l2ZWx5IGFzIHBvc3NpYmxlLCBhbmQKPiA+IG9idmlv
dXNseSBmaXJtd2FyZSB3b24ndCBjb25maWd1cmUgaG90LWFkZGVkIGRldmljZXMgYXQgYWxsIChp
bgo+ID4gZ2VuZXJhbDsgSSBrbm93IEFDUEkgX0hQWCBjYW4gZG8gc29tZSBvZiB0aGF0KS4KPiAK
PiBUb3RhbGx5IGFncmVlLiBJIHdhcyBub3Qgc3VnZ2VzdGluZyB0byBsaW1pdGluZyB0aGUgc2V0
dGluZyBhdCBhbGwuCj4gQSBib290LXRpbWUgcGFyYW1ldGVyIHRvIGZsaXAgQVNQTSBzZXR0aW5n
IGlzIHZlcnkgdXNlZnVsLiBJZiBub25lIGhhcwo+IGJlZW4gc2V0LCBkZWZhdWx0IHRvIEJJT1Mg
c2V0dGluZy4KCkEgYm9vdC10aW1lIHBhcmFtZXRlciBmb3IgZGVidWdnaW5nIGFuZCB3b3JrYXJv
dW5kcyBpcyBmaW5lLiAgSU1PLApuZWVkaW5nIGEgYm9vdC10aW1lIHBhcmFtZXRlciBpbiB0aGUg
Y291cnNlIG9mIG5vcm1hbCBvcGVyYXRpb24gaXMKbm90IE9LLgoKQmpvcm4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxp
bmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
