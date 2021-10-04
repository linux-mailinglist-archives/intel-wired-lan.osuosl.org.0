Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6736042169A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Oct 2021 20:35:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D0F4C83BEF;
	Mon,  4 Oct 2021 18:35:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2-pzZ4PUQnDX; Mon,  4 Oct 2021 18:35:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC7D881916;
	Mon,  4 Oct 2021 18:35:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 59E6A1BF3BA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Oct 2021 18:35:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 47E3E40716
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Oct 2021 18:35:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Pdnhwzd4939 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Oct 2021 18:35:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B3E314063B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Oct 2021 18:35:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10127"; a="248796747"
X-IronPort-AV: E=Sophos;i="5.85,346,1624345200"; d="scan'208";a="248796747"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2021 09:40:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,346,1624345200"; d="scan'208";a="713503076"
Received: from boxer.igk.intel.com (HELO boxer) ([10.102.20.173])
 by fmsmga005.fm.intel.com with ESMTP; 04 Oct 2021 09:40:06 -0700
Date: Mon, 4 Oct 2021 20:40:53 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Message-ID: <YVtKtYoyZtez1DsD@boxer>
References: <20210930140651.2249972-1-bigeasy@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210930140651.2249972-1-bigeasy@linutronix.de>
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ixgbe: Consider xsk
 pool's frame size for MTU size
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
Cc: netdev@vger.kernel.org, Kurt Kanzenbach <kurt@linutronix.de>,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Thomas Gleixner <tglx@linutronix.de>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCBTZXAgMzAsIDIwMjEgYXQgMDQ6MDY6NTFQTSArMDIwMCwgU2ViYXN0aWFuIEFuZHJ6
ZWogU2lld2lvciB3cm90ZToKPiBUaGUgZHJpdmVyIGhhcyB0byBhIGVuc3VyZSB0aGF0IGEgbmV0
d29yayBwYWNrZXQgaXMgbm90IHVzaW5nIG1vcmUgdGhhbgo+IG9uZSBwYWdlIGZvciBpdHMgZGF0
YSBpZiBhIFhEUCBwcm9ncmFtIGlzIHVzZWQuCj4gVGhpcyByZXN1bHRzIGluIGFuIHVwcGVyIGxp
bWl0IG9mIDE1MDAgYnl0ZXMuIFRoaXMgY2FuIGJlIGluY3JlYXNlZCBhCj4gbGl0dGxlIGlmIHRo
ZSBNVFUgd2FzIHByb2dyYW1tZWQgdG8gMTUxNC4uMzA3MiBieXRlcyBiZWZvcmUgbG9hZGluZyB0
aGUKPiBYRFAgcHJvZ3JhbS4gQnkgc2V0dGluZyB0aGlzIGluY3JlYXNlZCBNVFUgc2l6ZSB0aGUg
ZHJpdmVyIHdpbGwgc2V0IHRoZQo+IF9fSVhHQkVfUlhfM0tfQlVGRkVSIGZsYWcgd2hpY2ggaW4g
dHVybiB3aWxsIGFsbG93IHRvIHVzZSAzS2lCIGFzIHRoZQo+IHVwcGVyIGxpbWl0Lgo+IFRoaXMg
bG9va3MgbGlrZSBhIGhhY2sgYW5kIHRoZSB1cHBlciBsaW1pdCBpcyBjb3VsZCBpbmNyZWFzZWQg
ZnVydGhlci4KPiBJZiB0aGUgdXNlciBjb25maWd1cmVkIGEgbWVtb3J5IHBvb2wgdGhlbiBQQUdF
X1NJWkUgaXMgdXNlZCBhcyBCU0laRVBLVAo+IGFuZCBSTFBNTCBpcyBzZXQgdG8gcG9vbCdzIG1l
bW9yeSBzaXplIGFzIGlzIHRoZSBjYXJkJ3MgbWF4aW11bSBmcmFtZQo+IHNpemUuCgpGcm9tIHdo
YXQgSSBjYW4gdGVsbCB0aGlzIGlzIG9ubHkgdHJ1ZSBmb3IgaHctPm1hYy50eXBlICE9IGl4Z2Jl
X21hY184MjU5OUVCLgoKPiBUaGUgcmVzdWx0IGlzIHRoYXQgYSBNVFUgb2YgMzUyMCBieXRlcyBj
YW4gYmUgcHJvZ3JhbW1lZCBhbmQgZXZlcnkKPiBwYWNrZXQgaXMgc3RvcmVkIGEgc2luZ2xlIHBh
Z2UuCgpIb3cgZGlkIHlvdSBjb21lIHVwIHdpdGggMzUyMCBieXRlcz8gSXMgdGhpcyB3aGF0Cnhz
a19wb29sX2dldF9yeF9mcmFtZV9zaXplIHJldHVybnMgb24geW91ciBzeXN0ZW0/CgpPciBpcyBp
dDoKNGsgLSBYRFBfSEVBRFJPT00gKDI1NikgLSBzaXplb2Ygc2tiX3NoYXJlZF9pbmZvICgzMjAp
ID0gMzUyMD8KCkkgdGhpbmsgSSBhbHNvIG5lZWQgYSBiaXQgbW9yZSBvZiBhIGNvbnRleHQgaW4g
aGVyZSB3aGF0IHlvdSBhcmUgc29sdmluZwpoZXJlLiBCYXJlIGluIG1pbmQgdGhhdCB4c2tfcG9v
bCBiZWluZyBwcmVzZW50IG9uIFJ4IHJpbmcgaW1wbGllcyBhCmRpZmZlcmVudCBtZW1vcnkgbW9k
ZWwgdGhhbiB0aGUgc3RhbmRhcmQgb25lIHdoZXJlIF9fSVhHQkVfUlhfM0tfQlVGRkVSIGlzCm5v
dCB2YWxpZC4KCkl0IHNlZW1zIHRvIG1lIHRoYXQgeW91IHdlcmUgdXNpbmcgdGhlIGNvcHkgbW9k
ZSBmb3IgeHNrIHNvY2tldCwgb3IgaXMgbXkKYXNzdW1wdGlvbiB3cm9uZz8gSWYgeWVzLCB0aGVu
IGhvdyBkaWQgeW91IGVuZCB1cCB3aXRoIHhza19wb29sIGJlaW5nCnByZXNlbnQgb24gYSByaW5n
PwoKPgo+IElmIGEgUlggcmluZyBoYXMgYSBwb29sIGFzc2lnbmVkIHVzZSBpdHMgc2l6ZSB3aGls
ZSBjb21wYXJpbmcgZm9yIHRoZQo+IG1heGltYWwgTVRVIHNpemUuCgpXZXJlIHlvdSB0cnlpbmcg
dG8gY2hhbmdlIHRoZSBNVFUgd2l0aCB4c2sgc29ja2V0IGxvYWRlZCBvbiBhIHF1ZXVlPwoKPiAK
PiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gQW5kcnplaiBTaWV3aW9yIDxiaWdlYXN5QGxpbnV0
cm9uaXguZGU+Cj4gLS0tCj4gdjHigKZ2MjogUmVtb3ZlIFJGQy4gUmVwb3N0IG9mCj4gCWh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyMTA2MjIxNjI2MTYuZWFkazJ1NWhtZjRydTVqZEBsaW51
dHJvbml4LmRlCj4gCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX21h
aW4uYyB8IDIxICsrKysrKysrKysrKysrKysrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2l4Z2JlL2l4Z2JlX21haW4uYwo+IGluZGV4IDI0ZTA2YmE2ZjVlOTMuLmVkNDUxZjMyZTE5
ODAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVf
bWFpbi5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFp
bi5jCj4gQEAgLTY3MjIsNiArNjcyMiwyMyBAQCBzdGF0aWMgdm9pZCBpeGdiZV9mcmVlX2FsbF9y
eF9yZXNvdXJjZXMoc3RydWN0IGl4Z2JlX2FkYXB0ZXIgKmFkYXB0ZXIpCj4gIAkJCWl4Z2JlX2Zy
ZWVfcnhfcmVzb3VyY2VzKGFkYXB0ZXItPnJ4X3JpbmdbaV0pOwo+ICB9Cj4gIAo+ICtzdGF0aWMg
aW50IGl4Z2JlX3ZhbGlkYXRlX2ZyYW1lX3NpemUodW5zaWduZWQgaW50IGZyYW1lX3NpemUsCj4g
KwkJCQkgICAgIHN0cnVjdCBpeGdiZV9yaW5nICpyaW5nKQo+ICt7Cj4gKwlzdHJ1Y3QgeHNrX2J1
ZmZfcG9vbCAqeHNrX3Bvb2w7Cj4gKwl1bnNpZ25lZCBpbnQgYnVmX2xlbjsKPiArCj4gKwl4c2tf
cG9vbCA9IHJpbmctPnhza19wb29sOwo+ICsJaWYgKHhza19wb29sKQo+ICsJCWJ1Zl9sZW4gPSB4
c2tfcG9vbF9nZXRfcnhfZnJhbWVfc2l6ZSh4c2tfcG9vbCk7CgpJIHN0aWxsIGRvbid0IGdldCB3
aGF0IGlzIGJlaW5nIHNvbHZlZCBpbiBoZXJlLCBidXQgc2hvdWxkbid0IHdlIHJlcGVhdAp0aGUg
bG9naWMgZnJvbSBpeGdiZV9jb25maWd1cmVfc3JyY3RsIGluIGhlcmU/CgoJaWYgKHhza19wb29s
KSB7CgkJaWYgKGh3LT5tYWMudHlwZSAhPSBpeGdiZV9tYWNfODI1OTlFQikKCQkJYnVmX2xlbiA9
IFBBR0VfU0laRTsKCQllbHNlCgkJCWJ1Zl9sZW4gPSB4c2tfcG9vbF9nZXRfcnhfZnJhbWVfc2l6
ZSh4c2tfcG9vbCk7Cgl9IGVsc2UgewoJCWJ1Zl9sZW4gPSBpeGdiZV9yeF9idWZzeihyaW5nKTsK
CX0KCj4gKwllbHNlCj4gKwkJYnVmX2xlbiA9IGl4Z2JlX3J4X2J1ZnN6KHJpbmcpOwo+ICsKPiAr
CWlmIChmcmFtZV9zaXplID4gYnVmX2xlbikKPiArCQlyZXR1cm4gLUVJTlZBTDsKPiArCXJldHVy
biAwOwo+ICt9Cj4gKwo+ICAvKioKPiAgICogaXhnYmVfY2hhbmdlX210dSAtIENoYW5nZSB0aGUg
TWF4aW11bSBUcmFuc2ZlciBVbml0Cj4gICAqIEBuZXRkZXY6IG5ldHdvcmsgaW50ZXJmYWNlIGRl
dmljZSBzdHJ1Y3R1cmUKPiBAQCAtNjc0MSw3ICs2NzU4LDcgQEAgc3RhdGljIGludCBpeGdiZV9j
aGFuZ2VfbXR1KHN0cnVjdCBuZXRfZGV2aWNlICpuZXRkZXYsIGludCBuZXdfbXR1KQo+ICAJCWZv
ciAoaSA9IDA7IGkgPCBhZGFwdGVyLT5udW1fcnhfcXVldWVzOyBpKyspIHsKPiAgCQkJc3RydWN0
IGl4Z2JlX3JpbmcgKnJpbmcgPSBhZGFwdGVyLT5yeF9yaW5nW2ldOwo+ICAKPiAtCQkJaWYgKG5l
d19mcmFtZV9zaXplID4gaXhnYmVfcnhfYnVmc3oocmluZykpIHsKPiArCQkJaWYgKGl4Z2JlX3Zh
bGlkYXRlX2ZyYW1lX3NpemUobmV3X2ZyYW1lX3NpemUsIHJpbmcpKSB7Cj4gIAkJCQllX3dhcm4o
cHJvYmUsICJSZXF1ZXN0ZWQgTVRVIHNpemUgaXMgbm90IHN1cHBvcnRlZCB3aXRoIFhEUFxuIik7
Cj4gIAkJCQlyZXR1cm4gLUVJTlZBTDsKPiAgCQkJfQo+IEBAIC0xMDEyNiw3ICsxMDE0Myw3IEBA
IHN0YXRpYyBpbnQgaXhnYmVfeGRwX3NldHVwKHN0cnVjdCBuZXRfZGV2aWNlICpkZXYsIHN0cnVj
dCBicGZfcHJvZyAqcHJvZykKPiAgCQlpZiAocmluZ19pc19yc2NfZW5hYmxlZChyaW5nKSkKPiAg
CQkJcmV0dXJuIC1FSU5WQUw7Cj4gIAo+IC0JCWlmIChmcmFtZV9zaXplID4gaXhnYmVfcnhfYnVm
c3oocmluZykpCj4gKwkJaWYgKGl4Z2JlX3ZhbGlkYXRlX2ZyYW1lX3NpemUoZnJhbWVfc2l6ZSwg
cmluZykpCj4gIAkJCXJldHVybiAtRUlOVkFMOwo+ICAJfQo+ICAKPiAtLSAKPiAyLjMzLjAKPiAK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2ly
ZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xp
c3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
