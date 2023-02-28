Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D5306A5CE6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Feb 2023 17:14:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A7A70813E0;
	Tue, 28 Feb 2023 16:14:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A7A70813E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677600883;
	bh=5gKsoOMRXUQcFIpVJeBSDueYgSNsLGiRXC7U17tjU2I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QIrWakgF959C+SIsbDyOAev4RLoE1uWMZos1rLwbxngf6pXNykv3NWlqx1pml4oNc
	 f9Mm0doQh5C1dZSmmSmi4ZAvUdSD0s63JFwX/61/H1M4DCI7tG1rh236qBZRdNIq+W
	 rEPiTaw7kA0/JgIWGSeTOrQdske+Pc9JWuG9c7rGX6JTE6/9N/p0d0IsSFXkAYOeR5
	 WRGhaqw2Ad88IlvQTtcspxdrxfXwgx9X60wiVecrDORkZ4T2Rgm7LLAi2+wU1yXhq3
	 vU5NBDSbrU4aEG+VT8OBkgRdqUVLpwrlm3eLSfj0XFa6XA8b5/N8APjndeMu1AsSh7
	 xYx/xmr/UB+bw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HWaV_CXkomsc; Tue, 28 Feb 2023 16:14:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA2A781854;
	Tue, 28 Feb 2023 16:14:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA2A781854
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D20591BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 16:14:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AA3E540650
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 16:14:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA3E540650
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PvsiAW-c5aPN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Feb 2023 16:14:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D98C40576
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3D98C40576
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 16:14:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="335666162"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="335666162"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 08:14:11 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="667513599"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="667513599"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.249.155.94])
 ([10.249.155.94])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 08:14:09 -0800
Message-ID: <da0317a6-117f-4e9a-d2d2-65a26ea216a3@linux.intel.com>
Date: Tue, 28 Feb 2023 17:14:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>,
 Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20230228084915.2866564-1-kalyan.kodamagula@intel.com>
 <08101843-9284-a9ae-8898-559ef2ed6a20@intel.com>
 <4434d991-a5e5-4499-2045-89ece2940385@molgen.mpg.de>
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <4434d991-a5e5-4499-2045-89ece2940385@molgen.mpg.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677600877; x=1709136877;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=eT2pKeyUlnqvPw9RHJ5ZdAPwoIE2t8NyDNQ4EWT0gL0=;
 b=P42cLJ/ijNlPfkEUK1zzb2XBY/PAOXsrTbt5NBQa1gzWZvuvAhI5C882
 4/AQZpZg+KSC8l2XOWVT4gRCG/QYU5aNdWUVL611VWYm6l8blaWHe4BeF
 ElP2qfYwSmR9iqOpojOwgoFUjRXq30o9PDBtWuyQbPIfuqgVLHXDLGFHM
 QvqEfgWYeQU3WDQApu32lFgWw7jTodkjWGgP5bAChK22hcSsoTUd/SzzR
 pmiGO875vueXE0s9NMHxFjnd1h1asjyxQHc6K1QKFP5IE5t5IyunORuGu
 7ijdoRY/DKkbgq7A8ufFTbrRRP/TXdWyvlVF7rva4MPiZEE07Cw/Xll8l
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=P42cLJ/i
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Fix implicit cast u32
 to u16
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
Cc: intel-wired-lan@lists.osuosl.org, Marcin Szycik <marcin.szycik@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgUGF1bCwKCk9uIDI4LjAyLjIwMjMgMTY6NDAsIFBhdWwgTWVuemVsIHdyb3RlOgo+IERlYXIg
QWxleGFuZGVyLAo+IAo+IAo+IEFtIDI4LjAyLjIzIHVtIDE2OjI5IHNjaHJpZWIgQWxleGFuZGVy
IExvYmFraW46Cj4+IEZyb206IEthbHlhbiBLb2RhbWFndWxhIDxrYWx5YW4ua29kYW1hZ3VsYUBp
bnRlbC5jb20+Cj4+IERhdGU6IFR1ZSwgMjggRmViIDIwMjMgMDk6NDk6MTUgKzAxMDAKPj4KPj4+
IEZyb206IE1hcmNpbiBTenljaWsgPG1hcmNpbi5zenljaWtAaW50ZWwuY29tPgo+Pj4KPj4+IEZp
eCBpbXBsaWNpdCBjYXN0IGJ5IGNoYW5naW5nIGFyZ3VtZW50IHR5cGVzIG9mIHR3byBmdW5jdGlv
bnMgdG8gY29ycmVjdAo+Pj4gdHlwZXMuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogTWFyY2luIFN6
eWNpayA8bWFyY2luLnN6eWNpa0BpbnRlbC5jb20+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBLYWx5YW4g
S29kYW1hZ3VsYSA8a2FseWFuLmtvZGFtYWd1bGFAaW50ZWwuY29tPgo+Pgo+PiBSZWdhcmRpbmcg
dGhlIGFjdHVhbCBwYXRjaCAoYmVsb3cpLAo+Pgo+Pj4gLS0tCj4+PiDCoCBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX2RkcC5jIHwgNCArKy0tCj4+PiDCoCAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2RkcC5jIGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV9kZHAuYwo+Pj4gaW5kZXggZDcxZWQyMTBmOWM0Li44MzBmYTUz
YjVlMGEgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X2RkcC5jCj4+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2RkcC5j
Cj4+PiBAQCAtNzAxLDE0ICs3MDEsMTQgQEAgc3RydWN0IGljZV9idWZfYnVpbGQgKmljZV9wa2df
YnVmX2FsbG9jKHN0cnVjdCBpY2VfaHcgKmh3KQo+Pj4gwqDCoMKgwqDCoCByZXR1cm4gYmxkOwo+
Pj4gwqAgfQo+Pj4gwqAgLXN0YXRpYyBib29sIGljZV9pc19ndHBfdV9wcm9maWxlKHUxNiBwcm9m
X2lkeCkKPj4+ICtzdGF0aWMgYm9vbCBpY2VfaXNfZ3RwX3VfcHJvZmlsZSh1MzIgcHJvZl9pZHgp
Cj4+PiDCoCB7Cj4+PiDCoMKgwqDCoMKgIHJldHVybiAocHJvZl9pZHggPj0gSUNFX1BST0ZJRF9J
UFY2X0dUUFVfVEVJRCAmJgo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHByb2ZfaWR4IDw9IElDRV9Q
Uk9GSURfSVBWNl9HVFBVX0lQVjZfVENQX0lOTkVSKSB8fAo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHByb2ZfaWR4ID09IElDRV9QUk9GSURfSVBWNF9HVFBVX1RFSUQ7Cj4+PiDCoCB9Cj4+
PiDCoCAtc3RhdGljIGJvb2wgaWNlX2lzX2d0cF9jX3Byb2ZpbGUodTE2IHByb2ZfaWR4KQo+Pj4g
K3N0YXRpYyBib29sIGljZV9pc19ndHBfY19wcm9maWxlKHUzMiBwcm9mX2lkeCkKPj4+IMKgIHsK
Pj4+IMKgwqDCoMKgwqAgc3dpdGNoIChwcm9mX2lkeCkgewo+Pj4gwqDCoMKgwqDCoCBjYXNlIElD
RV9QUk9GSURfSVBWNF9HVFBDX1RFSUQ6Cj4+Cj4+IFdoYXQgaXMgdGhpcyBjaGFuZ2UgcmVhbGx5
IGFib3V0PyBJdCBtaWdodCd2ZSBiZWVuIGEgcGFydCBvZiBzb21lIGJpZ2dlcgo+PiBzZXJpZXMs
IGlzbid0IGl0PyBEb2VzIGl0IGZpeCBhbnkgdHJ1bmNhdGluZy1yZWxhdGVkIGJ1Z3Mgb3IgaW1w
cm92ZQo+PiBjb2RlZ2VuLCB3aGljaCBjb3VsZCBiZSBvYnNlcnZlZCBieSBvYmpkaWZmIG9yIGJs
b2F0LW8tbWV0ZXI/IEl0IGZlZWxzCj4+IGNvbXBsZXRlbHkgb3V0IG9mIGNvbnRleHQuCj4gCj4g
SSBhc2tlZCBteXNlbGYgdGhlIHNhbWUgdGhpbmcgcmlnaHQgbm93IHJlYWRpbmcgeW91ciBvdGhl
ciByZXBseToKPiAKPiBgYGAKPiAvKioKPiDCoCogaWNlX2dldF9zd19wcm9mX3R5cGUgLSBkZXRl
cm1pbmUgc3dpdGNoIHByb2ZpbGUgdHlwZQo+IMKgKiBAaHc6IHBvaW50ZXIgdG8gdGhlIEhXIHN0
cnVjdHVyZQo+IMKgKiBAZnY6IHBvaW50ZXIgdG8gdGhlIHN3aXRjaCBmaWVsZCB2ZWN0b3IKPiDC
oCogQHByb2ZfaWR4OiBwcm9maWxlIGluZGV4IHRvIGNoZWNrCj4gwqAqLwo+IHN0YXRpYyBlbnVt
IGljZV9wcm9mX3R5cGUgaWNlX2dldF9zd19wcm9mX3R5cGUoc3RydWN0IGljZV9odyAqaHcsCj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGljZV9mdiAqZnYsIHUz
MiBwcm9mX2lkeCkKPiB7Cj4gwqDCoMKgwqDCoMKgwqAgdTE2IGk7Cj4gCj4gwqDCoMKgwqDCoMKg
wqAgaWYgKGljZV9pc19ndHBfY19wcm9maWxlKHByb2ZfaWR4KSkKPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgcmV0dXJuIElDRV9QUk9GX1RVTl9HVFBDOwo+IAo+IMKgwqDCoMKgwqDC
oMKgIGlmIChpY2VfaXNfZ3RwX3VfcHJvZmlsZShwcm9mX2lkeCkpCj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHJldHVybiBJQ0VfUFJPRl9UVU5fR1RQVTsKPiAKPiBb4oCmXQo+IGBg
YAo+IAo+IEkgdGhpbmsgdGhleSBtZWFuIHRoYXQgdGhlIHNpZ25hdHVyZSBvZiBpY2VfcHJvZl90
eXBlIGljZV9nZXRfc3dfcHJvZl90eXBlKCkgdGFrZXMgcHJvZl9pZHggYXMgdTMyLgoKVGhpcyBw
YXRjaCB3YXMgbWFkZSB0byBhdm9pZCB0eXBlIHdhcm5pbmdzIGluIGNlcnRhaW4gaW50ZXJuYWwg
YnVpbGRzLgpJIGFncmVlIHRoYXQgdGhlIGNoYW5nZSBpcyBwcmV0dHkgdXNlbGVzcyBieSBpdHNl
bGYsIGFuZCBJIGFwb2xvZ2l6ZSBmb3IKbm90IGNhdGNoaW5nIGl0IGluIGludGVybmFsIHJldmll
dywgaXQgc2hvdWxkbid0IGhhdmUgcGFzc2VkIHRvIElXTC4KSSBzdWdnZXN0IHRvIGlnbm9yZSB0
aGlzIHBhdGNoLgoKPiAKPiAKPiBLaW5kIHJlZ2FyZHMsCj4gCj4gUGF1bAo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtd2lyZWQtbGFuIG1h
aWxpbmcgbGlzdAo+IEludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCj4gaHR0cHM6Ly9saXN0cy5v
c3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCgpSZWdhcmRzLApNYXJj
aW4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
