Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4652610F5
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Sep 2020 13:50:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 25F708729C;
	Tue,  8 Sep 2020 11:50:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vcGMjEg7gWZj; Tue,  8 Sep 2020 11:50:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DB80587293;
	Tue,  8 Sep 2020 11:50:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B8FB31BF82B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 11:50:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ADA0027366
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 11:50:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jYndvH8P0hSX for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Sep 2020 11:49:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 28871203C3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 11:49:59 +0000 (UTC)
IronPort-SDR: GEDKeSaEnqPS5/ncEDvJPQ59pBr5/sk/k17+Yh6oyZdt9MRQTqb0j/OQHYcgJ2sDESJRzSjwF9
 8bnQ2Wz3Z3tg==
X-IronPort-AV: E=McAfee;i="6000,8403,9737"; a="158139168"
X-IronPort-AV: E=Sophos;i="5.76,405,1592895600"; d="scan'208";a="158139168"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2020 04:49:58 -0700
IronPort-SDR: 5FSVB/y7Pehr2OXRnNhTk4Mc2Rdqw20SWp9xRaQbrEmJvk2smAgX5KzK/d83KrIwbtDWO4+s+f
 6nT+2pVAblKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,405,1592895600"; d="scan'208";a="284487161"
Received: from pgierasi-mobl.ger.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.252.39.2])
 by fmsmga007.fm.intel.com with ESMTP; 08 Sep 2020 04:49:55 -0700
To: Eric Dumazet <eric.dumazet@gmail.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?=
 <bjorn.topel@gmail.com>, ast@kernel.org, daniel@iogearbox.net,
 netdev@vger.kernel.org, bpf@vger.kernel.org
References: <20200907150217.30888-1-bjorn.topel@gmail.com>
 <20200907150217.30888-5-bjorn.topel@gmail.com>
 <6bbf1793-d2be-b724-eec4-65546d4cbc9c@gmail.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <c5dac6d2-e2aa-05a4-2606-7db0687dd12b@intel.com>
Date: Tue, 8 Sep 2020 13:49:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <6bbf1793-d2be-b724-eec4-65546d4cbc9c@gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 4/4] ixgbe,
 xsk: use XSK_NAPI_WEIGHT as NAPI poll budget
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
Cc: kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 magnus.karlsson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMC0wOS0wOCAxMTo0NSwgRXJpYyBEdW1hemV0IHdyb3RlOgo+IAo+IAo+IE9uIDkvNy8y
MCA1OjAyIFBNLCBCasO2cm4gVMO2cGVsIHdyb3RlOgo+PiBGcm9tOiBCasO2cm4gVMO2cGVsIDxi
am9ybi50b3BlbEBpbnRlbC5jb20+Cj4+Cj4+IFN0YXJ0IHVzaW5nIFhTS19OQVBJX1dFSUdIVCBh
cyBOQVBJIHBvbGwgYnVkZ2V0IGZvciB0aGUgQUZfWERQIFJ4Cj4+IHplcm8tY29weSBwYXRoLgo+
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBCasO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBpbnRlbC5jb20+
Cj4+IC0tLQo+PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3hzay5j
IHwgMiArLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhn
YmVfeHNrLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV94c2suYwo+
PiBpbmRleCAzNzcxODU3Y2Y4ODcuLmYzMmMxYmEwZDIzNyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfeHNrLmMKPj4gKysrIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfeHNrLmMKPj4gQEAgLTIzOSw3ICsyMzksNyBA
QCBpbnQgaXhnYmVfY2xlYW5fcnhfaXJxX3pjKHN0cnVjdCBpeGdiZV9xX3ZlY3RvciAqcV92ZWN0
b3IsCj4+ICAgCWJvb2wgZmFpbHVyZSA9IGZhbHNlOwo+PiAgIAlzdHJ1Y3Qgc2tfYnVmZiAqc2ti
Owo+PiAgIAo+PiAtCXdoaWxlIChsaWtlbHkodG90YWxfcnhfcGFja2V0cyA8IGJ1ZGdldCkpIHsK
Pj4gKwl3aGlsZSAobGlrZWx5KHRvdGFsX3J4X3BhY2tldHMgPCBYU0tfTkFQSV9XRUlHSFQpKSB7
Cj4+ICAgCQl1bmlvbiBpeGdiZV9hZHZfcnhfZGVzYyAqcnhfZGVzYzsKPj4gICAJCXN0cnVjdCBp
eGdiZV9yeF9idWZmZXIgKmJpOwo+PiAgIAkJdW5zaWduZWQgaW50IHNpemUKPiAKPiBUaGlzIGlz
IGEgdmlvbGF0aW9uIG9mIE5BUEkgQVBJLiBJWEdCRSBpcyBhbHJlYWR5IGRpdmVyZ2luZyBhIGJp
dCBmcm9tIGJlc3QgcHJhY3RpY2VzLgo+CgpUaGFua3MgZm9yIGhhdmluZyBhIGxvb2ssIEVyaWMh
IEJ5IGRpdmVyZ2luZyBmcm9tIGJlc3QgcHJhY3RpY2VzLCBkbwp5b3UgbWVhbiB0aGF0IG11bHRp
cGxlIHF1ZXVlcyBzaGFyZSBvbmUgTkFQSSBjb250ZXh0LCBhbmQgdGhlIGJ1ZGdldAppcyBzcGxp
dCBvdmVyIHRoZSBxdWV1ZXMgKHNheSwgNCBxdWV1ZXMsIDY0LzQgcGVyIHF1ZXVlKSwgb3IgdGhh
dCBUeApzaW1wbHkgaWdub3JlcyB0aGUgYnVkZ2V0PyBPciBib3RoPwoKPiBUaGVyZSBhcmUgcmVh
c29ucyB3ZSB3YW50IHRvIGNvbnRyb2wgdGhlIGJ1ZGdldCBmcm9tIGNhbGxlcnMsCj4gaWYgeW91
IHdhbnQgYmlnZ2VyIGJ1ZGdldCBqdXN0IGluY3JlYXNlIGl0IGluc3RlYWQgb2YgdXNpbmcgeW91
ciBvd24gPwo+IAo+IEkgd291bGQgcmF0aGVyIHVzZSBhIGdlbmVyaWMgcGF0Y2guCj4KCkhtbSwg
c28gYSBjb25maWd1cmFibGUgTkFQSSBidWRnZXQgZm9yLCBzYXksIHRoZSBBRl9YRFAgZW5hYmxl
ZApxdWV1ZXMvTkFQSXM/IEFtIEkgcmVhZGluZyB0aGF0IGNvcnJlY3Q/IChOb3RlIHRoYXQgdGhp
cyBpcyAqb25seSogZm9yCnRoZSBBRl9YRFAgZW5hYmxlZCBxdWV1ZXMuKQoKSSdsbCB0cnkgdG8g
cmV3b3JrIHRoaXMgdG8gc29tZXRoaW5nIG1vcmUgcGFsYXRhYmxlLgoKClRoYW5rcywKQmrDtnJu
CgoKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9uZXRkZXZpY2UuaCBiL2luY2x1ZGUvbGlu
dXgvbmV0ZGV2aWNlLmgKPiBpbmRleCA3YmQ0ZmNkZDA3MzhhNzE4ZDhiMGY3MTM0NTIzY2Q4N2U0
ZGNkYjdiLi4zM2JjYmRiNmZlZjQ4ODk4MzQzOGM2NTg0ZTNjYmIwYTQ0ZmViYjFhIDEwMDY0NAo+
IC0tLSBhL2luY2x1ZGUvbGludXgvbmV0ZGV2aWNlLmgKPiArKysgYi9pbmNsdWRlL2xpbnV4L25l
dGRldmljZS5oCj4gQEAgLTIzMTEsMTEgKzIzMTEsMTQgQEAgc3RhdGljIGlubGluZSB2b2lkICpu
ZXRkZXZfcHJpdihjb25zdCBzdHJ1Y3QgbmV0X2RldmljZSAqZGV2KQo+ICAgICovCj4gICAjZGVm
aW5lIFNFVF9ORVRERVZfREVWVFlQRShuZXQsIGRldnR5cGUpICAgICAgICgobmV0KS0+ZGV2LnR5
cGUgPSAoZGV2dHlwZSkpCj4gICAKPiAtLyogRGVmYXVsdCBOQVBJIHBvbGwoKSB3ZWlnaHQKPiAt
ICogRGV2aWNlIGRyaXZlcnMgYXJlIHN0cm9uZ2x5IGFkdmlzZWQgdG8gbm90IHVzZSBiaWdnZXIg
dmFsdWUKPiAtICovCj4gKy8qIERlZmF1bHQgTkFQSSBwb2xsKCkgd2VpZ2h0LiBIaWdobHkgcmVj
b21tZW5kZWQuICovCj4gICAjZGVmaW5lIE5BUElfUE9MTF9XRUlHSFQgNjQKPiAgIAo+ICsvKiBE
ZXZpY2UgZHJpdmVycyBhcmUgc3Ryb25nbHkgYWR2aXNlZCB0byBub3QgdXNlIGJpZ2dlciB2YWx1
ZSwKPiArICogYXMgdGhpcyBtaWdodCBjYXVzZSBsYXRlbmNpZXMgaW4gc3RyZXNzIGNvbmRpdGlv
bnMuCj4gKyAqLwo+ICsjZGVmaW5lIE5BUElfUE9MTF9XRUlHSFRfTUFYIDI1Ngo+ICsKPiAgIC8q
Kgo+ICAgICogICAgIG5ldGlmX25hcGlfYWRkIC0gaW5pdGlhbGl6ZSBhIE5BUEkgY29udGV4dAo+
ICAgICogICAgIEBkZXY6ICBuZXR3b3JrIGRldmljZQo+IGRpZmYgLS1naXQgYS9uZXQvY29yZS9k
ZXYuYyBiL25ldC9jb3JlL2Rldi5jCj4gaW5kZXggNDA4NmQzMzU5NzhjMWJmNjJiZDM5NjViZDJl
YTk2YTRhYzA2YjEzZC4uNDk2NzEzZmI2MDc1YmQ4ZTVlMjI3MjVlN2M4MTcxNzI4NThlMWRkNyAx
MDA2NDQKPiAtLS0gYS9uZXQvY29yZS9kZXYuYwo+ICsrKyBiL25ldC9jb3JlL2Rldi5jCj4gQEAg
LTY2MDgsNyArNjYwOCw3IEBAIHZvaWQgbmV0aWZfbmFwaV9hZGQoc3RydWN0IG5ldF9kZXZpY2Ug
KmRldiwgc3RydWN0IG5hcGlfc3RydWN0ICpuYXBpLAo+ICAgICAgICAgIElOSVRfTElTVF9IRUFE
KCZuYXBpLT5yeF9saXN0KTsKPiAgICAgICAgICBuYXBpLT5yeF9jb3VudCA9IDA7Cj4gICAgICAg
ICAgbmFwaS0+cG9sbCA9IHBvbGw7Cj4gLSAgICAgICBpZiAod2VpZ2h0ID4gTkFQSV9QT0xMX1dF
SUdIVCkKPiArICAgICAgIGlmICh3ZWlnaHQgPiBOQVBJX1BPTExfV0VJR0hUX01BWCkKPiAgICAg
ICAgICAgICAgICAgIG5ldGRldl9lcnJfb25jZShkZXYsICIlcygpIGNhbGxlZCB3aXRoIHdlaWdo
dCAlZFxuIiwgX19mdW5jX18sCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgd2Vp
Z2h0KTsKPiAgICAgICAgICBuYXBpLT53ZWlnaHQgPSB3ZWlnaHQ7Cj4gCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5n
IGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
