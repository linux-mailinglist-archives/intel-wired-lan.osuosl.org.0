Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B403F7D8B52
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Oct 2023 00:02:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 045054ABAD;
	Thu, 26 Oct 2023 22:02:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 045054ABAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698357750;
	bh=nYy/dSlwBlC5nZbNH7aUAV/Ko4EdQ6rKu1QQs24E7AI=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=s4o1MgJ69AChczo4eO0ZHTKihiiexPfkTgXqumtSZln/GKesFkaPajftsPVpg65FP
	 1k3JEnM02K+cGseOkiISiVA0KrowdT75nUreBwNHTZHsSqxUOdDrwozALtIaiVwrPY
	 WxtnmOrIdMvpq5dJ4nv9AVBIwULxn2nsd8HEIKNCAyvFRq7oTBvcL3h/5UYqDv3zYR
	 t+AKAcaDKTu86Mcv8WdTcwUZEulsiVujUELKn5di7hYU5u3zh+pAOAWC6xZtveJyuZ
	 cyk0hdrAMgIrLBGajM28qfB7r3exdtlg1MuDSlWfrDQnhCstLrOIzXABbU50iT8rCi
	 R/eS+SjNV3xmA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 88A0XoEnFB5k; Thu, 26 Oct 2023 22:02:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 93CBB4AB68;
	Thu, 26 Oct 2023 22:02:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93CBB4AB68
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8FF981BF314
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:02:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6BA4B847D2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:02:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6BA4B847D2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cS217k5_iYqJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Oct 2023 22:02:21 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EF641847D0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:02:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EF641847D0
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 98C59611F5;
 Thu, 26 Oct 2023 22:02:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA825C433C8;
 Thu, 26 Oct 2023 22:02:18 +0000 (UTC)
Date: Thu, 26 Oct 2023 17:02:16 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>
Message-ID: <20231026220216.GA1752508@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a434d9f-48ec-cfe5-900-8923361798a9@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1698357739;
 bh=v+OwCPCkufkei1OkZ0IK7OBnZIyQ/k2CAv18GMp5ECU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=n78Q8MakmY6S/n69Ux03t5U9WUOopOaUt6nDKsoVSQ7EwfcRn4luVSqYv4gLpBVda
 DrKIa1h7StitkkRiy4EE1uZV9ATfMIOdG1LH7fry+wsdgg7K0o8FZyDL0K8lk1O1cV
 t8tCIDdZoIwRLbl3rrSWnJxwraxqaVw/Gir1EFKFtZzjPUiogtA2KbpA/GPnWVFE75
 vFVT+iMPgWVgs1VDlgs/RGVAxhV9lLfl6E7IGtKj2DkZ2fYHoCBfSJQ4yR5Uj+vsRQ
 d1R5iC/0IUud8PHKgG7cpchJEmznQsL2QPpfVhJQJ4HgyUhDYk2WkITTtzPLdgWmQ9
 XkdZf2GExUM1w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=n78Q8Mak
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

T24gTW9uLCBPY3QgMTYsIDIwMjMgYXQgMDU6Mjc6MzdQTSArMDMwMCwgSWxwbyBKw6RydmluZW4g
d3JvdGU6Cj4gT24gRnJpLCAxMyBPY3QgMjAyMywgQmpvcm4gSGVsZ2FhcyB3cm90ZToKPiA+IE9u
IFRodSwgT2N0IDEyLCAyMDIzIGF0IDAxOjU2OjE2UE0gKzAzMDAsIElscG8gSsOkcnZpbmVuIHdy
b3RlOgo+ID4gPiBPbiBXZWQsIDExIE9jdCAyMDIzLCBCam9ybiBIZWxnYWFzIHdyb3RlOgo+ID4g
PiA+IE9uIE1vbiwgU2VwIDE4LCAyMDIzIGF0IDA0OjEwOjUzUE0gKzAzMDAsIElscG8gSsOkcnZp
bmVuIHdyb3RlOgo+ID4gPiA+ID4gUENJIGNvcmUvQVNQTSBzZXJ2aWNlIGRyaXZlciBhbGxvd3Mg
Y29udHJvbGxpbmcgQVNQTSBzdGF0ZQo+ID4gPiA+ID4gdGhyb3VnaCBwY2lfZGlzYWJsZV9saW5r
X3N0YXRlKCkgYW5kIHBjaV9lbmFibGVfbGlua19zdGF0ZSgpCj4gPiA+ID4gPiBBUEkuIEl0IHdh
cyBkZWNpZGVkIGVhcmxpZXIgKHNlZSB0aGUgTGluayBiZWxvdyksIHRvIG5vdAo+ID4gPiA+ID4g
YWxsb3cgQVNQTSBjaGFuZ2VzIHdoZW4gT1MgZG9lcyBub3QgaGF2ZSBjb250cm9sIG92ZXIgaXQg
YnV0Cj4gPiA+ID4gPiBvbmx5IGxvZyBhIHdhcm5pbmcgYWJvdXQgdGhlIHByb2JsZW0gKGNvbW1p
dCAyYWRkMGVjMTRjMjUKPiA+ID4gPiA+ICgiUENJL0FTUE06IFdhcm4gd2hlbiBkcml2ZXIgYXNr
cyB0byBkaXNhYmxlIEFTUE0sIGJ1dCB3ZQo+ID4gPiA+ID4gY2FuJ3QgZG8gaXQiKSkuIFNpbWls
YXJseSwgaWYgQVNQTSBpcyBub3QgZW5hYmxlZCB0aHJvdWdoCj4gPiA+ID4gPiBjb25maWcsIEFT
UE0gY2Fubm90IGJlIGRpc2FibGVkLgo+ID4gPiAuLi4KPiA+IAo+ID4gPiA+IFRoaXMgZGlzYWJs
ZXMgKmFsbCogQVNQTSBzdGF0ZXMsIHVubGlrZSB0aGUgdmVyc2lvbiB3aGVuCj4gPiA+ID4gQ09O
RklHX1BDSUVBU1BNIGlzIGVuYWJsZWQuICBJIHN1cHBvc2UgdGhlcmUncyBhIHJlYXNvbiwgYW5k
Cj4gPiA+ID4gbWF5YmUgYSBjb21tZW50IGNvdWxkIGVsYWJvcmF0ZSBvbiBpdD8KPiA+ID4gPgo+
ID4gPiA+IFdoZW4gQ09ORklHX1BDSUVBU1BNIGlzIG5vdCBlbmFibGVkLCBJIGRvbid0IHRoaW5r
IHdlIGFjdGl2ZWx5Cj4gPiA+ID4gKmRpc2FibGUqIEFTUE0gaW4gdGhlIGhhcmR3YXJlOyB3ZSBq
dXN0IGxlYXZlIGl0IGFzLWlzLCBzbwo+ID4gPiA+IGZpcm13YXJlIG1pZ2h0IGhhdmUgbGVmdCBp
dCBlbmFibGVkLgo+ID4gPiAKPiA+ID4gVGhpcyB3aG9sZSB0cmlja2VyeSBpcyBpbnRlbmRlZCBm
b3IgZHJpdmVycyB0aGF0IGRvIG5vdCB3YW50IHRvCj4gPiA+IGhhdmUgQVNQTSBiZWNhdXNlIHRo
ZSBkZXZpY2VzIGFyZSBicm9rZW4gd2l0aCBpdC4gU28gbGVhdmluZyBpdAo+ID4gPiBhcy1pcyBp
cyBub3QgcmVhbGx5IGFuIG9wdGlvbiAoYXMgZGVtb25zdHJhdGVkIGJ5IHRoZSBjdXN0b20KPiA+
ID4gd29ya2Fyb3VuZHMpLgo+ID4gCj4gPiBSaWdodC4KPiA+IAo+ID4gPiA+IENvbmNlcHR1YWxs
eSBpdCBzZWVtcyBsaWtlIHRoZSBMTktDVEwgdXBkYXRlcyBoZXJlIHNob3VsZCBiZQo+ID4gPiA+
IHRoZSBzYW1lIHdoZXRoZXIgQ09ORklHX1BDSUVBU1BNIGlzIGVuYWJsZWQgb3Igbm90IChzdWJq
ZWN0IHRvCj4gPiA+ID4gdGhlIHF1ZXN0aW9uIGFib3ZlKS4KPiA+ID4gPiAKPiA+ID4gPiBXaGVu
IENPTkZJR19QQ0lFQVNQTSBpcyBlbmFibGVkLCB3ZSBtaWdodCBuZWVkIHRvIGRvIG1vcmUKPiA+
ID4gPiBzdHVmZiwgYnV0IGl0IHNlZW1zIGxpa2UgdGhlIGNvcmUgc2hvdWxkIGJlIHRoZSBzYW1l
Lgo+ID4gPiAKPiA+ID4gU28geW91IHRoaW5rIGl0J3Mgc2FmZXIgdG8gcGFydGlhbGx5IGRpc2Fi
bGUgQVNQTSAoYXMgcGVyCj4gPiA+IGRyaXZlcidzIHJlcXVlc3QpIHJhdGhlciB0aGFuIGRpc2Fi
bGUgaXQgY29tcGxldGVseT8gSSBnb3QgdGhlCj4gPiA+IGltcHJlc3Npb24gdGhhdCB0aGUgbGF0
dGVyIG1pZ2h0IGJlIHNhZmVyIGZyb20gd2hhdCBSYWZhZWwgc2FpZAo+ID4gPiBlYXJsaWVyIGJ1
dCBJIHN1cHBvc2UgSSBtaWdodCBoYXZlIG1pc2ludGVycHJldGVkIGhpbSBzaW5jZSBoZQo+ID4g
PiBkaWRuJ3QgZXhhY3RseSBzYXkgdGhhdCBpdCBtaWdodCBiZSBzYWZlciB0byBfY29tcGxldGVs
eV8KPiA+ID4gZGlzYWJsZSBpdC4KPiA+IAo+ID4gTXkgcXVlc3Rpb24gaXMgd2hldGhlciB0aGUg
c3RhdGUgb2YgdGhlIGRldmljZSBzaG91bGQgZGVwZW5kIG9uCj4gPiBDT05GSUdfUENJRUFTUE0u
ICBJZiB0aGUgZHJpdmVyIGRvZXMgdGhpczoKPiA+IAo+ID4gICBwY2lfZGlzYWJsZV9saW5rX3N0
YXRlKFBDSUVfTElOS19TVEFURV9MMFMpCj4gPiAKPiA+IGRvIHdlIHdhbnQgdG8gbGVhdmUgTDEg
ZW5hYmxlZCB3aGVuIENPTkZJR19QQ0lFQVNQTT15IGJ1dCBkaXNhYmxlIEwxCj4gPiB3aGVuIENP
TkZJR19QQ0lFQVNQTSBpcyB1bnNldD8KPiA+IAo+ID4gSSBjYW4gc2VlIGFyZ3VtZW50cyBib3Ro
IHdheXMuICBNeSB0aG91Z2h0IHdhcyB0aGF0IGl0IHdvdWxkIGJlIG5pY2UKPiA+IHRvIGVuZCB1
cCB3aXRoIGEgc2luZ2xlIGltcGxlbWVudGF0aW9uIG9mIHBjaV9kaXNhYmxlX2xpbmtfc3RhdGUo
KQo+ID4gd2l0aCBhbiAjaWZkZWYgYXJvdW5kIHRoZSBDT05GSUdfUENJRUFTUE0tZW5hYmxlZCBz
dHVmZiBiZWNhdXNlIGl0Cj4gPiBtYWtlcyB0aGUgY29kZSBlYXNpZXIgdG8gcmVhZC4KClJlc3Bv
bmRpbmcgdG8gbXlzZWxmIGhlcmUsIEkgdGhpbmsgd2Ugc2hvdWxkIGRvIHRoZSBwYXJ0aWFsIGRp
c2FibGVzCmJlY2F1c2UgaXQgbWF0Y2hlcyB3aGF0IHRoZSBkcml2ZXJzIGRpZCBwcmV2aW91c2x5
IGJ5IGhhbmQsIHdlIGNhbgpyZWR1Y2UgdGhlIG51bWJlciBvZiBjb2RlIHBhdGhzLCBhbmQgdGhl
IHJlc3VsdGluZyBkZXZpY2Ugc3RhdGUgd2lsbApiZSB0aGUgc2FtZSByZWdhcmRsZXNzIG9mIENP
TkZJR19QQ0lFQVNQTS4KCj4gSSB0aGluayB0aGVyZSdzIHN0aWxsIG9uZSBpbXBvcnRhbnQgdGhp
bmcgdG8gZGlzY3VzcyBhbmQgbm9uZSBvZiB0aGUKPiBjb21tZW50cyBoYXZlIGNvdmVyZWQgdGhh
dCBhcmVhIHNvIGZhci4KPiAKPiBUaGUgZHJpdmVycyB0aGF0IGhhdmUgd29ya2Fyb3VuZCBhcmUg
bm90IGdvaW5nIHRvIHR1cm4gbW9yZQo+IGRhbmdlcm91cyB0aGFuIHRoZXkncmUgYWxyZWFkeSB3
aXRob3V0IHRoaXMgY2hhbmdlLCBzbyB3ZSdyZSBtb3N0bHkKPiB3aXRoaW4gY2hhcnRlZCB3YXRl
cnMgdGhlcmUgZXZlbiB3aXRoIHdoYXQgeW91IHByb3Bvc2UuIEhvd2V2ZXIsIEkKPiB0aGluayB0
aGUgYmlnZ2VyIGNhdGNoIGFuZCBwb3RlbnRpYWwgc291cmNlIG9mIHByb2JsZW1zLCB3aXRoIGJv
dGgKPiB0aGlzIHYyIGFuZCB5b3VyIGFsdGVybmF0aXZlLCBhcmUgdGhlIGRyaXZlcnMgdGhhdCBk
byBub3QgaGF2ZSB0aGUKPiB3b3JrYXJvdW5kcyBhcm91bmQgQ09ORklHX1BDSUVBU1BNPW4gYW5k
L29yIF9PU0MgcGVybWlzc2lvbnMuIFRob3NlCj4gY29kZSBwYXRocyBqdXN0IGNhbGwgcGNpX2Rp
c2FibGVfbGlua19zdGF0ZSgpIGFuZCBkbyBub3RoaW5nIGVsc2UuCj4gCj4gRG8geW91IHRoaW5r
IGl0J3Mgb2theSB0byBhbHRlciB0aGUgYmVoYXZpb3IgZm9yIHRob3NlIGRyaXZlcnMgdG9vCj4g
KGRpc2FibGUgQVNQTSB3aGVyZSBpdCBwcmV2aW91c2x5IHdhcyBhIG5vLW9wKT8KClllcy4gIEkg
YXNzdW1lIHRoZSByZWFzb24gdGhvc2UgZHJpdmVycyBjYWxsIHBjaV9kaXNhYmxlX2xpbmtfc3Rh
dGUoKQppcyBiZWNhdXNlIHNvbWUgaGFyZHdhcmUgZGVmZWN0IG1lYW5zIEFTUE0gZG9lc24ndCB3
b3JrIGNvcnJlY3RseS4KClRoaXMgY2hhbmdlIG1lYW5zIHBjaV9kaXNhYmxlX2xpbmtfc3RhdGUo
KSB3aWxsIGRpc2FibGUgQVNQTSBldmVuIHdoZW4KdGhlIE9TIGRvZXNuJ3Qgb3duIEFTUE0gb3Ig
Q09ORklHX1BDSUVBU1BNIGlzIHVuc2V0LiAgSSB0aGluayB0aG9zZQpjYXNlcyBhcmUgdW51c3Vh
bCBhbmQgcHJvYmFibHkgbm90IHdlbGwgdGVzdGVkLCBhbmQgSSBzdXNwZWN0IHRoYXQgaWYKd2Ug
KmRpZCogdGVzdCB0aGVtLCB3ZSdkIGZpbmQgdGhhdCBBU1BNIGRvZXNuJ3Qgd29yayB3aXRoIHRo
ZSBjdXJyZW50Cmtlcm5lbC4KClNvIEkgdGhpbmsgdGhpcyBpcyBtb3JlIGxpa2VseSB0byAqZml4
KiBzb21ldGhpbmcgdGhhbiB0byBicmVhayBpdC4KCkJqb3JuCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QK
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
