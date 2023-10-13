Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C02987C8B87
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Oct 2023 18:42:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4CF5940AE2;
	Fri, 13 Oct 2023 16:42:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4CF5940AE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697215363;
	bh=i2usFbVdfs5gaCJ4fSqXJIeyRJW/dfodocwpXMxGm6Q=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=0/IH6YCnTRZovc3uKajs9A6OHINfkt92zJ+jsUtYmZTuu7masd9CZbwoYLV1tf9Kc
	 lRriDueOP3KMBLhaiCAHlGzLw0tsUZiy/zW2FNcsGpHQ+KgcSDxSqMFDOLLCBMTRwU
	 EYgVdV8H10/toRcCXezERuTXhBKtyP6pe+kaOlpBhkFO5ByBe3fna72st91m7b1FqJ
	 GYerjP4LwBytyBrEyQituJwbhmgerNZ5OiTQ+B40iedk96NEwpWf0o8kHcXsAip83r
	 75M0OTfMu7luFVCYxl0k3WZ4Tc2dFbUHdhLXBfO2/B02M7d8JoK6o94aAsXrRVrKTs
	 e2O0Ab+RzwgHw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pgEvaQKvKyea; Fri, 13 Oct 2023 16:42:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C0AF140590;
	Fri, 13 Oct 2023 16:42:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C0AF140590
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 99D041BF37E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 16:42:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7DF8240590
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 16:42:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7DF8240590
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3r5QxQrYJQSZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Oct 2023 16:42:35 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2D250401CC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 16:42:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2D250401CC
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 2D17ACE315D;
 Fri, 13 Oct 2023 16:42:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C518C433C8;
 Fri, 13 Oct 2023 16:42:30 +0000 (UTC)
Date: Fri, 13 Oct 2023 11:42:28 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>
Message-ID: <20231013164228.GA1117889@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aa3386a4-c22d-6d5d-112d-f36b22cda6d3@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1697215350;
 bh=MqC3yrRRj3UMGOPti8ERknVNqGEUu0oFiV03E0Vidv0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=b86OTm7/vWPz1lXdWBiZn7RcGveX1aFsvL5jmXTq2YbcyNGIbGhWA6q1/AnMGbd1N
 IFYYegR+vc8lMskeUk8lajThoc+bo1PlPWPhNqD2fwOG3AfKYpg90Eza/kNH0uSNPW
 Jky7Vj9783vlIkTQS3O7jJucPYVzjXAq/DJZUjUVY+A/BEROWzFLMN0GpWgbN/I8Vu
 ImQsRWZuesvRBHjxd0H3/8ZdxSWJjJnhbYb4F5CAQ1P15D5R2lTSA+hkWwJq0LpHAe
 Bn/6fD9G+fr9mHm/5sCM1EEe3TdFQCGEcv6U3ysqKGhpLI6CBcvRuzJ9zOUE+g+0U1
 YdquVEXDnza8g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=b86OTm7/
Subject: Re: [Intel-wired-lan] [PATCH v2 03/13] PCI/ASPM: Disable ASPM when
 driver requests it
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
Cc: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 linux-rdma@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, ath12k@lists.infradead.org,
 linux-pci@vger.kernel.org, "Rafael J . Wysocki" <rafael@kernel.org>,
 linux-wireless@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 ath10k@lists.infradead.org, Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 linux-bluetooth@vger.kernel.org, Lukas Wunner <lukas@wunner.de>,
 intel-wired-lan@lists.osuosl.org, Netdev <netdev@vger.kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-mediatek@lists.infradead.org,
 ath11k@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCBPY3QgMTIsIDIwMjMgYXQgMDE6NTY6MTZQTSArMDMwMCwgSWxwbyBKw6RydmluZW4g
d3JvdGU6Cj4gT24gV2VkLCAxMSBPY3QgMjAyMywgQmpvcm4gSGVsZ2FhcyB3cm90ZToKPiA+IE9u
IE1vbiwgU2VwIDE4LCAyMDIzIGF0IDA0OjEwOjUzUE0gKzAzMDAsIElscG8gSsOkcnZpbmVuIHdy
b3RlOgo+ID4gPiBQQ0kgY29yZS9BU1BNIHNlcnZpY2UgZHJpdmVyIGFsbG93cyBjb250cm9sbGlu
ZyBBU1BNIHN0YXRlIHRocm91Z2gKPiA+ID4gcGNpX2Rpc2FibGVfbGlua19zdGF0ZSgpIGFuZCBw
Y2lfZW5hYmxlX2xpbmtfc3RhdGUoKSBBUEkuIEl0IHdhcwo+ID4gPiBkZWNpZGVkIGVhcmxpZXIg
KHNlZSB0aGUgTGluayBiZWxvdyksIHRvIG5vdCBhbGxvdyBBU1BNIGNoYW5nZXMgd2hlbiBPUwo+
ID4gPiBkb2VzIG5vdCBoYXZlIGNvbnRyb2wgb3ZlciBpdCBidXQgb25seSBsb2cgYSB3YXJuaW5n
IGFib3V0IHRoZSBwcm9ibGVtCj4gPiA+IChjb21taXQgMmFkZDBlYzE0YzI1ICgiUENJL0FTUE06
IFdhcm4gd2hlbiBkcml2ZXIgYXNrcyB0byBkaXNhYmxlIEFTUE0sCj4gPiA+IGJ1dCB3ZSBjYW4n
dCBkbyBpdCIpKS4gU2ltaWxhcmx5LCBpZiBBU1BNIGlzIG5vdCBlbmFibGVkIHRocm91Z2gKPiA+
ID4gY29uZmlnLCBBU1BNIGNhbm5vdCBiZSBkaXNhYmxlZC4KPiAuLi4KCj4gPiBUaGlzIGRpc2Fi
bGVzICphbGwqIEFTUE0gc3RhdGVzLCB1bmxpa2UgdGhlIHZlcnNpb24gd2hlbgo+ID4gQ09ORklH
X1BDSUVBU1BNIGlzIGVuYWJsZWQuICBJIHN1cHBvc2UgdGhlcmUncyBhIHJlYXNvbiwgYW5kIG1h
eWJlIGEKPiA+IGNvbW1lbnQgY291bGQgZWxhYm9yYXRlIG9uIGl0Pwo+ID4KPiA+IFdoZW4gQ09O
RklHX1BDSUVBU1BNIGlzIG5vdCBlbmFibGVkLCBJIGRvbid0IHRoaW5rIHdlIGFjdGl2ZWx5Cj4g
PiAqZGlzYWJsZSogQVNQTSBpbiB0aGUgaGFyZHdhcmU7IHdlIGp1c3QgbGVhdmUgaXQgYXMtaXMs
IHNvIGZpcm13YXJlCj4gPiBtaWdodCBoYXZlIGxlZnQgaXQgZW5hYmxlZC4KPiAKPiBUaGlzIHdo
b2xlIHRyaWNrZXJ5IGlzIGludGVuZGVkIGZvciBkcml2ZXJzIHRoYXQgZG8gbm90IHdhbnQgdG8g
aGF2ZSBBU1BNIAo+IGJlY2F1c2UgdGhlIGRldmljZXMgYXJlIGJyb2tlbiB3aXRoIGl0LiBTbyBs
ZWF2aW5nIGl0IGFzLWlzIGlzIG5vdCByZWFsbHkgCj4gYW4gb3B0aW9uIChhcyBkZW1vbnN0cmF0
ZWQgYnkgdGhlIGN1c3RvbSB3b3JrYXJvdW5kcykuCgpSaWdodC4KCj4gPiBDb25jZXB0dWFsbHkg
aXQgc2VlbXMgbGlrZSB0aGUgTE5LQ1RMIHVwZGF0ZXMgaGVyZSBzaG91bGQgYmUgdGhlIHNhbWUK
PiA+IHdoZXRoZXIgQ09ORklHX1BDSUVBU1BNIGlzIGVuYWJsZWQgb3Igbm90IChzdWJqZWN0IHRv
IHRoZSBxdWVzdGlvbgo+ID4gYWJvdmUpLgo+ID4gCj4gPiBXaGVuIENPTkZJR19QQ0lFQVNQTSBp
cyBlbmFibGVkLCB3ZSBtaWdodCBuZWVkIHRvIGRvIG1vcmUgc3R1ZmYsIGJ1dAo+ID4gaXQgc2Vl
bXMgbGlrZSB0aGUgY29yZSBzaG91bGQgYmUgdGhlIHNhbWUuCj4gCj4gU28geW91IHRoaW5rIGl0
J3Mgc2FmZXIgdG8gcGFydGlhbGx5IGRpc2FibGUgQVNQTSAoYXMgcGVyIGRyaXZlcidzIAo+IHJl
cXVlc3QpIHJhdGhlciB0aGFuIGRpc2FibGUgaXQgY29tcGxldGVseT8gSSBnb3QgdGhlIGltcHJl
c3Npb24gdGhhdCB0aGUgCj4gbGF0dGVyIG1pZ2h0IGJlIHNhZmVyIGZyb20gd2hhdCBSYWZhZWwg
c2FpZCBlYXJsaWVyIGJ1dCBJIHN1cHBvc2UgSSBtaWdodCAKPiBoYXZlIG1pc2ludGVycHJldGVk
IGhpbSBzaW5jZSBoZSBkaWRuJ3QgZXhhY3RseSBzYXkgdGhhdCBpdCBtaWdodCBiZSBzYWZlciAK
PiB0byBfY29tcGxldGVseV8gZGlzYWJsZSBpdC4KCk15IHF1ZXN0aW9uIGlzIHdoZXRoZXIgdGhl
IHN0YXRlIG9mIHRoZSBkZXZpY2Ugc2hvdWxkIGRlcGVuZCBvbgpDT05GSUdfUENJRUFTUE0uICBJ
ZiB0aGUgZHJpdmVyIGRvZXMgdGhpczoKCiAgcGNpX2Rpc2FibGVfbGlua19zdGF0ZShQQ0lFX0xJ
TktfU1RBVEVfTDBTKQoKZG8gd2Ugd2FudCB0byBsZWF2ZSBMMSBlbmFibGVkIHdoZW4gQ09ORklH
X1BDSUVBU1BNPXkgYnV0IGRpc2FibGUgTDEKd2hlbiBDT05GSUdfUENJRUFTUE0gaXMgdW5zZXQ/
CgpJIGNhbiBzZWUgYXJndW1lbnRzIGJvdGggd2F5cy4gIE15IHRob3VnaHQgd2FzIHRoYXQgaXQg
d291bGQgYmUgbmljZQp0byBlbmQgdXAgd2l0aCBhIHNpbmdsZSBpbXBsZW1lbnRhdGlvbiBvZiBw
Y2lfZGlzYWJsZV9saW5rX3N0YXRlKCkKd2l0aCBhbiAjaWZkZWYgYXJvdW5kIHRoZSBDT05GSUdf
UENJRUFTUE0tZW5hYmxlZCBzdHVmZiBiZWNhdXNlIGl0Cm1ha2VzIHRoZSBjb2RlIGVhc2llciB0
byByZWFkLgoKQmpvcm4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3Ns
Lm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJl
ZC1sYW4K
