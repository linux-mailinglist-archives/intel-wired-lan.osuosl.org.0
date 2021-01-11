Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EABD52F1FB9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Jan 2021 20:47:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 95E2B228A7;
	Mon, 11 Jan 2021 19:47:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PkEyqg4xYB-S; Mon, 11 Jan 2021 19:47:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C08A322844;
	Mon, 11 Jan 2021 19:47:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F05F01BF356
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jan 2021 19:47:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EB5BB870A7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jan 2021 19:47:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tBm5Rq9Ehrh1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Jan 2021 19:47:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id ED780870A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jan 2021 19:47:50 +0000 (UTC)
IronPort-SDR: BKG0LRih1cRE5EFS/YMuOKSas4c2HnNEYnkOw1yvkCrhlrb1a0q6arvUfuUVRI944b1XPSb4u7
 TRRjIKFe0TnQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9861"; a="241997682"
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="241997682"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 11:47:46 -0800
IronPort-SDR: vSMvzdE1rybLWHt5j7ZLLDBShm+gQWVX9NjaOc12Dv6FOxAKmjminMevil6uL9PmjVfi1RB//a
 avVV7JpNQz8Q==
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="381129269"
Received: from amburges-mobl1.ger.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.252.40.54])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 11:47:43 -0800
To: Cristian Dumitrescu <cristian.dumitrescu@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20210111181138.49757-1-cristian.dumitrescu@intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <ac36b7b2-bf0e-c58c-754b-d9ab4dbb9cae@intel.com>
Date: Mon, 11 Jan 2021 20:47:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210111181138.49757-1-cristian.dumitrescu@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: fix potential NULL pointer
 dereferencing
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org, magnus.karlsson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMS0wMS0xMSAxOToxMSwgQ3Jpc3RpYW4gRHVtaXRyZXNjdSB3cm90ZToKPiBDdXJyZW50
bHksIHRoZSBmdW5jdGlvbiBpNDBlX2NvbnN0cnVjdF9za2JfemMgb25seSBmcmVlcyB0aGUgaW5w
dXQgeGRwCj4gYnVmZmVyIHdoZW4gdGhlIG91dHB1dCBza2IgaXMgc3VjY2Vzc2Z1bGx5IGJ1aWx0
LiBPbiBlcnJvciwgdGhlCj4gZnVuY3Rpb24gaTQwZV9jbGVhbl9yeF9pcnFfemMgZG9lcyBub3Qg
Y29tbWl0IGFueXRoaW5nIGZvciB0aGUgY3VycmVudAo+IHBhY2tldCBkZXNjcmlwdG9yIGFuZCBz
aW1wbHkgZXhpdHMgdGhlIHBhY2tldCBkZXNjcmlwdG9yIHByb2Nlc3NpbmcKPiBsb29wLCB3aXRo
IHRoZSBwbGFuIHRvIHJlc3RhcnQgdGhlIHByb2Nlc3Npbmcgb2YgdGhpcyBkZXNjcmlwdG9yIG9u
Cj4gdGhlIG5leHQgaW52b2NhdGlvbi4gVGhlcmVmb3JlLCBvbiBlcnJvciB0aGUgcmluZyBuZXh0
LXRvLWNsZWFuCj4gcG9pbnRlciBzaG91bGQgbm90IGFkdmFuY2UsIHRoZSB4ZHAgaS5lLiAqYmkg
YnVmZmVyIHNob3VsZCBub3QgYmUKPiBmcmVlZCBhbmQgdGhlIGN1cnJlbnQgYnVmZmVyIGluZm8g
c2hvdWxkIG5vdCBiZSBpbnZhbGlkYXRlZCBieSBzZXR0aW5nCj4gKmJpIHRvIE5VTEwuIFRoZXJl
Zm9yZSwgdGhlICpiaSBzaG91bGQgb25seSBiZSBzZXQgdG8gTlVMTCB3aGVuIHRoZQo+IGZ1bmN0
aW9uIGk0MGVfY29uc3RydWN0X3NrYl96YyBpcyBzdWNjZXNzZnVsLCBvdGhlcndpc2UgYSBOVUxM
ICpiaQo+IHdpbGwgYmUgZGVyZWZlcmVuY2VkIHdoZW4gdGhlIHdvcmsgZm9yIHRoZSBjdXJyZW50
IGRlc2NyaXB0b3IgaXMKPiBldmVudHVhbGx5IHJlc3RhcnRlZC4KPiAKPiBGaXhlczogM2I0ZjBi
NjZjMmIzICgiaTQwZSwgeHNrOiBNaWdyYXRlIHRvIG5ldyBNRU1fVFlQRV9YU0tfQlVGRl9QT09M
IikKPiBTaWduZWQtb2ZmLWJ5OiBDcmlzdGlhbiBEdW1pdHJlc2N1IDxjcmlzdGlhbi5kdW1pdHJl
c2N1QGludGVsLmNvbT4KClRoYW5rcyBmb3IgZmluZGluZyBhbmQgZml4aW5nIHRoaXMsIENyaXN0
aWFuIQoKQWNrZWQtYnk6IEJqw7ZybiBUw7ZwZWwgPGJqb3JuLnRvcGVsQGludGVsLmNvbT4KCj4g
LS0tCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMgfCAyICst
Cj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jCj4gaW5kZXggNDdlYjlj
NTg0YTEyLi40OTJjZTIxMzIwOGQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaTQwZS9pNDBlX3hzay5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aTQwZS9pNDBlX3hzay5jCj4gQEAgLTM0OCwxMiArMzQ4LDEyIEBAIGludCBpNDBlX2NsZWFuX3J4
X2lycV96YyhzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nLCBpbnQgYnVkZ2V0KQo+ICAgCQkgKiBT
QlAgaXMgKm5vdCogc2V0IGluIFBSVF9TQlBWU0kgKGRlZmF1bHQgbm90IHNldCkuCj4gICAJCSAq
Lwo+ICAgCQlza2IgPSBpNDBlX2NvbnN0cnVjdF9za2JfemMocnhfcmluZywgKmJpKTsKPiAtCQkq
YmkgPSBOVUxMOwo+ICAgCQlpZiAoIXNrYikgewo+ICAgCQkJcnhfcmluZy0+cnhfc3RhdHMuYWxs
b2NfYnVmZl9mYWlsZWQrKzsKPiAgIAkJCWJyZWFrOwo+ICAgCQl9Cj4gICAKPiArCQkqYmkgPSBO
VUxMOwo+ICAgCQljbGVhbmVkX2NvdW50Kys7Cj4gICAJCWk0MGVfaW5jX250YyhyeF9yaW5nKTsK
PiAgIAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0
dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
