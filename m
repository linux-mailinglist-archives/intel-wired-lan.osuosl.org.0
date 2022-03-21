Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D6B04E2DA1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Mar 2022 17:14:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A588840930;
	Mon, 21 Mar 2022 16:14:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EWBs2DBtyUu9; Mon, 21 Mar 2022 16:14:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3D8D840905;
	Mon, 21 Mar 2022 16:14:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4FAE21BF2B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Mar 2022 16:14:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3D9164020C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Mar 2022 16:14:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DW1mofZeVnGY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Mar 2022 16:14:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4186D40200
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Mar 2022 16:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647879277; x=1679415277;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=S2/2Ph3wbyuVIAhabwXTkeOiPTkbn8YikpP2cXhr9FQ=;
 b=FACCwlPj/Qe4jBuPD20sUj+5URGFLTJrPCNRNkjDdDosbRnbhH4qulma
 jl2A8ZhzgWKm4D0wngayjQPpqioWtRCsPA6/VEJcDh21hcwznPdyG5p4t
 wfaKBJ5fd5f/2IVwTPYOrCNp9/rSsyvONmYaX1XcSEk3Fj5N/UoitTJmU
 Bor+h6+iWYnBsAlvygqanrzzYMltJU9h2jYzbwvprUudjaADl7NwFzI/o
 6KbjEbJLjbG74ijtBAbgD2EubRFtM2Upk1w/+sEfZm/eGC41s48gOCzIj
 DyGNA4/jVJO8+trb+qdjH9RdIECpG4XIlb/4Si1zp2DBoY5TTiDLU3n5G g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10292"; a="245060896"
X-IronPort-AV: E=Sophos;i="5.90,199,1643702400"; d="scan'208";a="245060896"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 09:14:35 -0700
X-IronPort-AV: E=Sophos;i="5.90,199,1643702400"; d="scan'208";a="648617534"
Received: from mszycik-mobl.ger.corp.intel.com (HELO [10.249.137.8])
 ([10.249.137.8])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 09:14:34 -0700
Message-ID: <3cbd7420-3803-e830-9347-652e53a3dd02@linux.intel.com>
Date: Mon, 21 Mar 2022 17:14:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20220321144731.3935-1-marcin.szycik@linux.intel.com>
 <a7dcc837-e24e-86d6-059c-416ad3357fe0@molgen.mpg.de>
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <a7dcc837-e24e-86d6-059c-416ad3357fe0@molgen.mpg.de>
Subject: Re: [Intel-wired-lan] [PATCH net-next] Revert "ice: Hide bus-info
 in ethtool for PRs in switchdev mode"
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAyMS1NYXItMjIgMTU6NTcsIFBhdWwgTWVuemVsIHdyb3RlOgo+IERlYXIgTWFyY2luLAo+
IAo+IAo+IEFtIDIxLjAzLjIyIHVtIDE1OjQ3IHNjaHJpZWIgTWFyY2luIFN6eWNpazoKPj4gVGhp
cyByZXZlcnRzIGNvbW1pdCBiZmFhYmE5OWU2ODBiZjgyYmYyY2JmNjk4NjZjM2YzNzQzNGZmNzY2
Lgo+Pgo+PiBDb21taXQgYmZhYWJhOTllNjgwICgiaWNlOiBIaWRlIGJ1cy1pbmZvIGluIGV0aHRv
b2wgZm9yIFBScyBpbiBzd2l0Y2hkZXYKPj4gbW9kZSIpIHdhcyBhIHdvcmthcm91bmQgZm9yIGxz
aHcgdG9vbCBkaXNwbGF5aW5nIGluY29ycmVjdAo+PiBkZXNjcmlwdGlvbnMgZm9yIHBvcnQgcmVw
cmVzZW50b3JzIGFuZCBQRiBpbiBzd2l0Y2hkZXYgbW9kZS4gTm93IHRoZSBpc3N1ZQo+PiBoYXMg
YmVlbiBmaXhlZCBpbiB0aGUgbHNodyB0b29sIGl0c2VsZiBbMV0uCj4+Cj4+IFsxXSBodHRwczov
L2V6aXgub3JnL3NyYy9wa2cvbHNody9jb21taXQvOWJmNGU0YzljMQo+IAo+IEFzIHlvdSBjYW5u
b3Qga25vdyB3aGF0IGxzaHcgdmVyc2lvbiB1c2VycyBoYXZlIGluc3RhbGxlZCwgSSBhbSBhZnJh
aWQgdGhlIHdvcmthcm91bmQgKHBhcnQgb2YgTGludXggNS4xNi4gYW5kIDUuMTcpIGhhcyB0byBz
dGF5IGluIHRoZSBMaW51eCBrZXJuZWwgdG8gbm90IHZpb2xhdGUgTGludXjigJkgbm8tcmVncmVz
c2lvbiBwb2xpY3kuCj4gCj4gV2hhdCBhcmUgdGhlIGRvd25zaWRlcyBvZiBrZWVwaW5nIHRoZSB3
b3JrYXJvdW5kIGFyb3VuZD8KClRoZSBvbmx5IGRvd25zaWRlIG9mIGxlYXZpbmcgdGhpcyB3b3Jr
YXJvdW5kIGlzIHRoYXQgUENJIG51bWJlciB3b24ndCBiZSBzaG93biBpbiBldGh0b29sIGZvciBw
b3J0IHJlcHJlc2VudG9yIG5ldGRldnMuIEknbSBub3QgYXdhcmUgb2YgYW55IGFwcGxpY2F0aW9u
cyAob3RoZXIgdGhhbiBsc2h3KSB0aGF0IGRlcGVuZCBvbiB0aGlzIGluZm9ybWF0aW9uLCBidXQg
dGhlcmUgbWlnaHQgYmUgc29tZS4KCj4gCj4gCj4gS2luZCByZWdhcmRzLAo+IAo+IFBhdWwKPiAK
PiAKPj4gU2lnbmVkLW9mZi1ieTogTWFyY2luIFN6eWNpayA8bWFyY2luLnN6eWNpa0BsaW51eC5p
bnRlbC5jb20+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X2V0aHRvb2wuYyB8IDggKysrLS0tLS0KPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKSwgNSBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfZXRodG9vbC5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9ldGh0b29sLmMKPj4gaW5kZXggMjRjZGE3ZTFmOTE2Li40NzZiZDFjODNjODcgMTAw
NjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZXRodG9vbC5j
Cj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZXRodG9vbC5jCj4+
IEBAIC0xOTAsMTkgKzE5MCwxNyBAQCBfX2ljZV9nZXRfZHJ2aW5mbyhzdHJ1Y3QgbmV0X2Rldmlj
ZSAqbmV0ZGV2LCBzdHJ1Y3QgZXRodG9vbF9kcnZpbmZvICpkcnZpbmZvLAo+PiDCoMKgwqDCoMKg
IHNucHJpbnRmKGRydmluZm8tPmZ3X3ZlcnNpb24sIHNpemVvZihkcnZpbmZvLT5md192ZXJzaW9u
KSwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgIiV4LiUwMnggMHgleCAlZC4lZC4lZCIsIG52bS0+
bWFqb3IsIG52bS0+bWlub3IsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIG52bS0+ZWV0cmFjaywg
b3JvbS0+bWFqb3IsIG9yb20tPmJ1aWxkLCBvcm9tLT5wYXRjaCk7Cj4+ICsKPj4gK8KgwqDCoCBz
dHJzY3B5KGRydmluZm8tPmJ1c19pbmZvLCBwY2lfbmFtZShwZi0+cGRldiksCj4+ICvCoMKgwqDC
oMKgwqDCoCBzaXplb2YoZHJ2aW5mby0+YnVzX2luZm8pKTsKPj4gwqAgfQo+PiDCoCDCoCBzdGF0
aWMgdm9pZAo+PiDCoCBpY2VfZ2V0X2RydmluZm8oc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiwg
c3RydWN0IGV0aHRvb2xfZHJ2aW5mbyAqZHJ2aW5mbykKPj4gwqAgewo+PiDCoMKgwqDCoMKgIHN0
cnVjdCBpY2VfbmV0ZGV2X3ByaXYgKm5wID0gbmV0ZGV2X3ByaXYobmV0ZGV2KTsKPj4gLcKgwqDC
oCBzdHJ1Y3QgaWNlX3BmICpwZiA9IG5wLT52c2ktPmJhY2s7Cj4+IMKgIMKgwqDCoMKgwqAgX19p
Y2VfZ2V0X2RydmluZm8obmV0ZGV2LCBkcnZpbmZvLCBucC0+dnNpKTsKPj4gLQo+PiAtwqDCoMKg
IHN0cnNjcHkoZHJ2aW5mby0+YnVzX2luZm8sIHBjaV9uYW1lKHBmLT5wZGV2KSwKPj4gLcKgwqDC
oMKgwqDCoMKgIHNpemVvZihkcnZpbmZvLT5idXNfaW5mbykpOwo+PiAtCj4+IMKgwqDCoMKgwqAg
ZHJ2aW5mby0+bl9wcml2X2ZsYWdzID0gSUNFX1BSSVZfRkxBR19BUlJBWV9TSVpFOwo+PiDCoCB9
Cj4+IMKgIApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0
dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
