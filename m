Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FD8758570
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jul 2023 21:25:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E97961016;
	Tue, 18 Jul 2023 19:25:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E97961016
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689708301;
	bh=GS7azS2Q9TFF/xxPfBLedwDz6dtOEKfB6xtp6/3aIgY=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=vstA2vAx5776zKmgmgp4ugMgsfA3iRKoxxcxw9vMJ2i9dKuG5U/PE1JyUrSP4nIMj
	 5rhftAQshe+ikjWvssMxveD8TPxEHiZggyio6cmbf+ymE3tnmqs7ttyeEAEcwMiJOA
	 7neYk/65b00ewcQoS1Jgu/RblYnelC/VG9ugJqj91UdHxoSvbrbgBrJjheAaEsmX8k
	 VW60I2i634My8HFGN+3Pbr2jDZDEp9R+bN02Mraa3iNN/zb7gacecZk34oxfwfMgJA
	 9pWEnGk386LL2cZRid7VqTqLC3Ur5mDsXKeOlGinfEJ7D7lmQd32aW8b91UWIypf1l
	 hPgTx2cKtQJWg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pDj5ziiHnyp1; Tue, 18 Jul 2023 19:25:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CEBE60C09;
	Tue, 18 Jul 2023 19:25:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CEBE60C09
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DA9C91BF349
 for <intel-wired-lan@osuosl.org>; Tue, 18 Jul 2023 19:24:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B2C8E4054B
 for <intel-wired-lan@osuosl.org>; Tue, 18 Jul 2023 19:24:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2C8E4054B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q0cyK0_gHuwM for <intel-wired-lan@osuosl.org>;
 Tue, 18 Jul 2023 19:24:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 693F64032A
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 693F64032A
 for <intel-wired-lan@osuosl.org>; Tue, 18 Jul 2023 19:24:54 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 93BC6616BA;
 Tue, 18 Jul 2023 19:24:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9E60C433C7;
 Tue, 18 Jul 2023 19:24:52 +0000 (UTC)
Date: Tue, 18 Jul 2023 14:24:50 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: "Limonciello, Mario" <mario.limonciello@amd.com>
Message-ID: <20230718192450.GA489825@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dc44cb41-b306-f18a-c9fc-3d956777f722@amd.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1689708293;
 bh=qdAhpK1XWeLAN71lc0Y9kyyM+NLhNWrfXG4CFOZK0OA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=n6TT8nZLi9Pu6qYPkbR79iGdZf/xTelKI4ID1ZvYs+ryvcky461erRgFpveupe0bW
 vQlmqTc2yT6Wv5QvPjbNK6zf6FKtcfgdb1cnVzLFFqhaakQe/2YIlYuhSlmDktNMU5
 D9jLWi+YFgLffoeWTZiOlduz+2+zJIz9TR6A8GLxl6CIqv1GdV9Wf0pwGhYDNMpckK
 6ffhu3AN24Jo1+5iUtdo2a81G01f6QOx/E8hdQhHwIeBWoTOXNZFPheEvoeDedkEgT
 i8eLcdxr2B//lGlpmdc9D++BTG1+NbR7HM0530JhdzFOabGgVfNfZTIRiphDD1VOOR
 V/79lOQ+fkd2g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=n6TT8nZL
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
Cc: Michael Bottini <michael.a.bottini@linux.intel.com>,
 Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>,
 linux-pci@vger.kernel.org, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 linux-kernel@vger.kernel.org, Vidya Sagar <vidyas@nvidia.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, intel-wired-lan@osuosl.org,
 bhelgaas@google.com, Mika Westerberg <mika.westerberg@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCBKdWwgMTcsIDIwMjMgYXQgMTE6NTE6MzJBTSAtMDUwMCwgTGltb25jaWVsbG8sIE1h
cmlvIHdyb3RlOgo+IE9uIDcvMTYvMjAyMyAxMDozNCBQTSwgS2FpLUhlbmcgRmVuZyB3cm90ZToK
PiA+IE9uIFNhdCwgSnVsIDE1LCAyMDIzIGF0IDEyOjM34oCvQU0gTWFyaW8gTGltb25jaWVsbG8g
PG1hcmlvLmxpbW9uY2llbGxvQGFtZC5jb20+IHdyb3RlOgo+ID4gPiBPbiA3LzE0LzIzIDAzOjE3
LCBLYWktSGVuZyBGZW5nIHdyb3RlOgoKPiA+ID4gPiBUaGUgbWFpbiBwb2ludCBpcyBPUyBzaG91
bGQgc3RpY2sgdG8gdGhlIEJJT1MgZGVmYXVsdCwgd2hpY2ggaXMgdGhlCj4gPiA+ID4gb25seSBB
U1BNIHNldHRpbmcgdGVzdGVkIGJlZm9yZSBwdXR0aW5nIGhhcmR3YXJlIHRvIHRoZSBtYXJrZXQu
Cj4gPiA+IAo+ID4gPiBVbmZvcnR1bmF0ZWx5OyBJIGRvbid0IHRoaW5rIHlvdSBjYW4ganVtcCB0
byB0aGlzIGNvbmNsdXNpb24uCgpJIHRoaW5rIHVzaW5nIHRoZSBCSU9TIGRlZmF1bHQgYXMgYSBs
aW1pdCBpcyBwcm9ibGVtYXRpYy4gIEkgdGhpbmsgaXQKd291bGQgYmUgcGVyZmVjdGx5IHJlYXNv
bmFibGUgZm9yIGEgQklPUyB0byAoYSkgY29uZmlndXJlIG9ubHkgZGV2aWNlcwppdCBuZWVkcyBm
b3IgY29uc29sZSBhbmQgYm9vdCwgbGVhdmluZyBvdGhlcnMgYXQgcG93ZXItb24gZGVmYXVsdHMs
CmFuZCAoYikgY29uZmlndXJlIGRldmljZXMgaW4gdGhlIHNhZmVzdCBjb25maWd1cmF0aW9uIHBv
c3NpYmxlIG9uIHRoZQphc3N1bXB0aW9uIHRoYXQgYW4gT1MgY2FuIGRlY2lkZSB0aGUgcnVudGlt
ZSBwb2xpY3kgaXRzZWxmLgoKT2J2aW91c2x5IEknbSBub3QgYSBCSU9TIHdyaXRlciAodGhvdWdo
IEkgc3VyZSB3aXNoIEkgY291bGQgdGFsayB0bwpzb21lISksIHNvIG1heWJlIHRoZXNlIGFyZSBi
YWQgYXNzdW1wdGlvbnMuCgo+ID4gPiBBIGJpZyBkaWZmZXJlbmNlIGluIHRoZSBXaW5kb3dzIHdv
cmxkIHRvIExpbnV4IHdvcmxkIGlzIHRoYXQgT0VNcyBzaGlwCj4gPiA+IHdpdGggYSBmYWN0b3J5
IFdpbmRvd3MgaW1hZ2UgdGhhdCBtYXkgc2V0IHBvbGljaWVzIGxpa2UgdGhpcy4gIE9FTQo+ID4g
PiAicGxhdGZvcm0iIGRyaXZlcnMgY2FuIHNldCByZWdpc3RyeSBrZXlzIHRvby4KCkkgc3VwcG9z
ZSB0aGlzIG1lYW5zIHRoYXQgdGhlIE9FTSBpbWFnZSBjb250YWlucyBkcml2ZXJzIHRoYXQgYXJl
bid0CmluIHRoZSBNaWNyb3NvZnQgbWVkaWEsIGFuZCB0aG9zZSBkcml2ZXJzIG1heSBzZXQgY29u
c3RyYWludHMgb24gQVNQTQp1c2FnZT8KCklmIHlvdSBib290IHRoZSBNaWNyb3NvZnQgbWVkaWEg
dGhhdCBsYWNrcyB0aG9zZSBkcml2ZXJzLCBtYXliZSBpdApkb2Vzbid0IGJvdGhlciB0byBjb25m
aWd1cmUgQVNQTSBmb3IgdGhvc2UgZGV2aWNlcz8gIExpbnV4IGN1cnJlbnRseQpjb25maWd1cmVz
IEFTUE0gZm9yIGV2ZXJ5dGhpbmcgYXQgZW51bWVyYXRpb24tdGltZSwgc28gd2UgZG8gaXQgZXZl
bgppZiB0aGVyZSdzIG5vIGRyaXZlci4KCj4gPiBJIHdvbmRlciBpZiB0aGVyZSdzIGFueSBwYXJ0
aWN1bGFyIG1vZGlmaWNhdGlvbiBzaG91bGQgYmUgaW1wcm92ZWQgZm9yCj4gPiB0aGlzIHBhdGNo
Pwo+IAo+IEtub3dpbmcgdGhpcyBpbmZvcm1hdGlvbiBJIHBlcnNvbmFsbHkgdGhpbmsgdGhlIG9y
aWdpbmFsIHBhdGNoIHRoYXQgc3RhcnRlZAo+IHRoaXMgdGhyZWFkIG1ha2VzIGEgbG90IG9mIHNl
bnNlLgoKSSdtIHN0aWxsIG9wcG9zZWQgdG8gdXNpbmcgZGV2X2lzX3JlbW92YWJsZSgpIGFzIGEg
cHJlZGljYXRlIGJlY2F1c2UgSQpkb24ndCB0aGluayBpdCBoYXMgYW55IHRlY2huaWNhbCBjb25u
ZWN0aW9uIHRvIEFTUE0gY29uZmlndXJhdGlvbi4KCkJqb3JuCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QK
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
