Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 296207C5DAD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Oct 2023 21:32:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2DD9960E6B;
	Wed, 11 Oct 2023 19:32:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2DD9960E6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697052741;
	bh=Tr4RdKMfXr/N4nYQNkO09MKTkwiOnWd4ejPYFfBUsy8=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=h2oKkCxENN9LICL/9WYhvNr0SHoNIu+CTGiht3F47Uj+ur+aVUMasMLLqgyHHkplY
	 4+v2ESRLZ+LHaCj90pgPtNN4/l2AjAU5C+T7V686McLojhfVtN/TlPONDBOmEUI8mJ
	 jDVeuz1FprrTAqlBBhLTIrfRAW8KkA0AEwHkJPlC3MTIhKgj5pt6KpfwvhoeDFqRUW
	 4jm9kqd1xv7Hlrh4npsgWYBEG4uxHOb7XKpNp1z5e/yMKQlpovikquwqWXZjzqFGig
	 RK/eAigRyzX6nhtKiUoGgdvT8GGhvXcwQfYbxu0s5Pp4qPhxvl/MTZ6QUxR0AL9ls4
	 qToo8w0lc+aJw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id um3NH-yNBYaN; Wed, 11 Oct 2023 19:32:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0F8AD60ABF;
	Wed, 11 Oct 2023 19:32:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0F8AD60ABF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C50F11BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 19:32:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 96F574154D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 19:32:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96F574154D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YL6aIckrnOGX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Oct 2023 19:32:14 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0C7754154E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 19:32:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C7754154E
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id CAD73CE2527;
 Wed, 11 Oct 2023 19:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9236BC433C7;
 Wed, 11 Oct 2023 19:32:08 +0000 (UTC)
Date: Wed, 11 Oct 2023 14:32:06 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>
Message-ID: <20231011193206.GA1039708@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230918131103.24119-5-ilpo.jarvinen@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1697052728;
 bh=4k1m5qmcSDaP+SZOYD02LNDbpXJtj+6QzJq4iZ0fBT4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=PkSkfYndzZuEdhim2WqdUnaFkJa6/ULgDeXVhLamNMtNqjpEjDLFAOpinVDtpOf9t
 AUQ8IuXuDRsbGSvvuJcBOkesPKE+B6LOW3w499tPS1H5C+DTTGZEpqDhTJv73Rngtf
 R8n/q+wpIprV9354P5kNeMO1/5OdiCJZC921zzltoOp4qhTV4cqy8e0kXbMRCaqp4/
 wgSGTdLCtZ0E1cvfJh/3oqFSKgGnYoWCp1qvbc5VbvIvmnclEI+2/Ls3QSTesrpdOn
 1i9kPgcJmtJ/9DGNbL1W+mb7/ZJBeiArthYq4x+V47gI24Zx4H0qwEfuzJhfUtgURt
 hjOYzB4aN6mlQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=PkSkfYnd
Subject: Re: [Intel-wired-lan] [PATCH v2 04/13] PCI/ASPM: Move L0S/L1/sub
 states mask calculation into a helper
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
 "Rafael J . Wysocki" <rafael@kernel.org>, ath12k@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 ath11k@lists.infradead.org, Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 linux-bluetooth@vger.kernel.org, Lukas Wunner <lukas@wunner.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, linux-mediatek@lists.infradead.org,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCBTZXAgMTgsIDIwMjMgYXQgMDQ6MTA6NTRQTSArMDMwMCwgSWxwbyBKw6RydmluZW4g
d3JvdGU6Cj4gQVNQTSBzZXJ2aWNlIGRyaXZlciBkb2VzIHRoZSBzYW1lIEwwUyAvIEwxUyAvIHN1
YiBzdGF0ZXMgYWxsb3dlZAo+IGNhbGN1bGF0aW9uIGluIF9fcGNpX2Rpc2FibGVfbGlua19zdGF0
ZSgpIGFuZAo+IHBjaV9zZXRfZGVmYXVsdF9saW5rX3N0YXRlKCkuCgpJcyB0aGVyZSBhIHR5cG8g
b3Igc29tZXRoaW5nIGhlcmU/ICBUaGlzIHBhdGNoIG9ubHkgYWRkcyBhIGNhbGwgdG8KX19wY2lf
ZGlzYWJsZV9saW5rX3N0YXRlKCksIG5vdCB0byBwY2lfc2V0X2RlZmF1bHRfbGlua19zdGF0ZSgp
LgoKPiBDcmVhdGUgYSBoZWxwZXIgdG8gY2FsY3VsYXRlIHRoZSBtYXNrIGZvciB0aGUgYWxsb3dl
ZCBzdGF0ZXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogSWxwbyBKw6RydmluZW4gPGlscG8uamFydmlu
ZW5AbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL3BjaS9wY2llL2FzcG0uYyB8IDMz
ICsrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMjEg
aW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cGNpL3BjaWUvYXNwbS5jIGIvZHJpdmVycy9wY2kvcGNpZS9hc3BtLmMKPiBpbmRleCBlYzZkN2Ew
OTJhYzEuLjkxZGM5NWFjYTkwZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BjaS9wY2llL2FzcG0u
Ywo+ICsrKyBiL2RyaXZlcnMvcGNpL3BjaWUvYXNwbS5jCj4gQEAgLTEwMzQsNiArMTAzNCwyNiBA
QCBzdGF0aWMgc3RydWN0IHBjaWVfbGlua19zdGF0ZSAqcGNpZV9hc3BtX2dldF9saW5rKHN0cnVj
dCBwY2lfZGV2ICpwZGV2KQo+ICAJcmV0dXJuIGJyaWRnZS0+bGlua19zdGF0ZTsKPiAgfQo+ICAK
PiArc3RhdGljIHU4IHBjaV9saW5rX3N0YXRlX21hc2soaW50IHN0YXRlKQo+ICt7Cj4gKwl1OCBy
ZXN1bHQgPSAwOwo+ICsKPiArCWlmIChzdGF0ZSAmIFBDSUVfTElOS19TVEFURV9MMFMpCj4gKwkJ
cmVzdWx0IHw9IEFTUE1fU1RBVEVfTDBTOwo+ICsJaWYgKHN0YXRlICYgUENJRV9MSU5LX1NUQVRF
X0wxKQo+ICsJCXJlc3VsdCB8PSBBU1BNX1NUQVRFX0wxOwo+ICsJaWYgKHN0YXRlICYgUENJRV9M
SU5LX1NUQVRFX0wxXzEpCj4gKwkJcmVzdWx0IHw9IEFTUE1fU1RBVEVfTDFfMTsKPiArCWlmIChz
dGF0ZSAmIFBDSUVfTElOS19TVEFURV9MMV8yKQo+ICsJCXJlc3VsdCB8PSBBU1BNX1NUQVRFX0wx
XzI7Cj4gKwlpZiAoc3RhdGUgJiBQQ0lFX0xJTktfU1RBVEVfTDFfMV9QQ0lQTSkKPiArCQlyZXN1
bHQgfD0gQVNQTV9TVEFURV9MMV8xX1BDSVBNOwo+ICsJaWYgKHN0YXRlICYgUENJRV9MSU5LX1NU
QVRFX0wxXzJfUENJUE0pCj4gKwkJcmVzdWx0IHw9IEFTUE1fU1RBVEVfTDFfMl9QQ0lQTTsKPiAr
Cj4gKwlyZXR1cm4gcmVzdWx0Owo+ICt9Cj4gKwo+ICBzdGF0aWMgaW50IF9fcGNpX2Rpc2FibGVf
bGlua19zdGF0ZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwgaW50IHN0YXRlLCBib29sIHNlbSkKPiAg
ewo+ICAJc3RydWN0IHBjaWVfbGlua19zdGF0ZSAqbGluayA9IHBjaWVfYXNwbV9nZXRfbGluayhw
ZGV2KTsKPiBAQCAtMTA2MywxOCArMTA4Myw3IEBAIHN0YXRpYyBpbnQgX19wY2lfZGlzYWJsZV9s
aW5rX3N0YXRlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LCBpbnQgc3RhdGUsIGJvb2wgc2VtKQo+ICAJ
aWYgKHNlbSkKPiAgCQlkb3duX3JlYWQoJnBjaV9idXNfc2VtKTsKPiAgCW11dGV4X2xvY2soJmFz
cG1fbG9jayk7Cj4gLQlpZiAoc3RhdGUgJiBQQ0lFX0xJTktfU1RBVEVfTDBTKQo+IC0JCWxpbmst
PmFzcG1fZGlzYWJsZSB8PSBBU1BNX1NUQVRFX0wwUzsKPiAtCWlmIChzdGF0ZSAmIFBDSUVfTElO
S19TVEFURV9MMSkKPiAtCQlsaW5rLT5hc3BtX2Rpc2FibGUgfD0gQVNQTV9TVEFURV9MMTsKPiAt
CWlmIChzdGF0ZSAmIFBDSUVfTElOS19TVEFURV9MMV8xKQo+IC0JCWxpbmstPmFzcG1fZGlzYWJs
ZSB8PSBBU1BNX1NUQVRFX0wxXzE7Cj4gLQlpZiAoc3RhdGUgJiBQQ0lFX0xJTktfU1RBVEVfTDFf
MikKPiAtCQlsaW5rLT5hc3BtX2Rpc2FibGUgfD0gQVNQTV9TVEFURV9MMV8yOwo+IC0JaWYgKHN0
YXRlICYgUENJRV9MSU5LX1NUQVRFX0wxXzFfUENJUE0pCj4gLQkJbGluay0+YXNwbV9kaXNhYmxl
IHw9IEFTUE1fU1RBVEVfTDFfMV9QQ0lQTTsKPiAtCWlmIChzdGF0ZSAmIFBDSUVfTElOS19TVEFU
RV9MMV8yX1BDSVBNKQo+IC0JCWxpbmstPmFzcG1fZGlzYWJsZSB8PSBBU1BNX1NUQVRFX0wxXzJf
UENJUE07Cj4gKwlsaW5rLT5hc3BtX2Rpc2FibGUgfD0gcGNpX2xpbmtfc3RhdGVfbWFzayhzdGF0
ZSk7Cj4gIAlwY2llX2NvbmZpZ19hc3BtX2xpbmsobGluaywgcG9saWN5X3RvX2FzcG1fc3RhdGUo
bGluaykpOwo+ICAKPiAgCWlmIChzdGF0ZSAmIFBDSUVfTElOS19TVEFURV9DTEtQTSkKPiAtLSAK
PiAyLjMwLjIKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtd2lyZWQtbGFuCg==
