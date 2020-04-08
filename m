Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4D91A3675
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Apr 2020 17:01:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2BB1C87BC8;
	Thu,  9 Apr 2020 15:01:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W1BlJg2IUWCX; Thu,  9 Apr 2020 15:01:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DA79087BCA;
	Thu,  9 Apr 2020 15:00:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A45B21BF228
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2020 17:32:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A054A87FEC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2020 17:32:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ibr-AlDc1Clb for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2020 17:32:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 35B1187FDD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2020 17:32:06 +0000 (UTC)
IronPort-SDR: 8khgce3lhJ4gXz6lzTZfG0f87dAcO27O0ZVVpQy3j+6c/tbdFih9yv8u5YuZnzoi2Kmtw0L+N5
 Nj+VTH2ZV4tA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 10:32:04 -0700
IronPort-SDR: 2I538bWVfJfLlF/ZOfIMcxUOCMMdomDh4bmOAqpFBpzjUODcD4SrUFpnnaTu8bU9Q6QyDz7GRj
 K6q4iMC2tuaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,359,1580803200"; d="scan'208";a="286617958"
Received: from hrotuna-mobl.ti.intel.com (HELO btopel-mobl.ger.intel.com)
 ([10.252.39.246])
 by fmsmga002.fm.intel.com with ESMTP; 08 Apr 2020 10:31:59 -0700
To: Jesper Dangaard Brouer <brouer@redhat.com>, sameehj@amazon.com
References: <158634658714.707275.7903484085370879864.stgit@firesoul>
 <158634677661.707275.17823370564281193008.stgit@firesoul>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <55b6684d-9097-e2c1-c939-bf3273bd70f6@intel.com>
Date: Wed, 8 Apr 2020 19:31:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <158634677661.707275.17823370564281193008.stgit@firesoul>
Content-Language: en-US
X-Mailman-Approved-At: Thu, 09 Apr 2020 15:00:49 +0000
Subject: Re: [Intel-wired-lan] [PATCH RFC v2 28/33] xdp: for Intel AF_XDP
 drivers add XDP frame_sz
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
Cc: Maxim Mikityanskiy <maximmi@mellanox.com>,
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, zorik@amazon.com,
 Lorenzo Bianconi <lorenzo@kernel.org>, netdev@vger.kernel.org,
 =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
 gtzalik@amazon.com, Saeed Mahameed <saeedm@mellanox.com>,
 intel-wired-lan@lists.osuosl.org, David Ahern <dsahern@gmail.com>,
 bpf@vger.kernel.org, Daniel Borkmann <borkmann@iogearbox.net>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>, akiyano@amazon.com,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMC0wNC0wOCAxMzo1MiwgSmVzcGVyIERhbmdhYXJkIEJyb3VlciB3cm90ZToKPiBJbnRl
bCBkcml2ZXJzIGltcGxlbWVudCBuYXRpdmUgQUZfWERQIHplcm9jb3B5IGluIHNlcGFyYXRlIEMt
ZmlsZXMsCj4gdGhhdCBoYXZlIGl0cyBvd24gaW52b2NhdGlvbiBvZiBicGZfcHJvZ19ydW5feGRw
KCkuIFRoZSBzZXR1cCBvZgo+IHhkcF9idWZmIGlzIGFsc28gaGFuZGxlZCBpbiBzZXBhcmF0ZWx5
IGZyb20gbm9ybWFsIGNvZGUgcGF0aC4KPiAKPiBUaGlzIHBhdGNoIHVwZGF0ZSBYRFAgZnJhbWVf
c3ogZm9yIEFGX1hEUCB6ZXJvY29weSBkcml2ZXJzIGk0MGUsIGljZQo+IGFuZCBpeGdiZSwgYXMg
dGhlIGNvZGUgY2hhbmdlcyBuZWVkZWQgYXJlIHZlcnkgc2ltaWxhci4gIEludHJvZHVjZSBhCj4g
aGVscGVyIGZ1bmN0aW9uIHhza191bWVtX3hkcF9mcmFtZV9zeigpIGZvciBjYWxjdWxhdGluZyBm
cmFtZSBzaXplLgo+IAo+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZwo+IENj
OiBCasO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBpbnRlbC5jb20+Cj4gQ2M6IE1hZ251cyBLYXJs
c3NvbiA8bWFnbnVzLmthcmxzc29uQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKZXNwZXIg
RGFuZ2FhcmQgQnJvdWVyIDxicm91ZXJAcmVkaGF0LmNvbT4KClRoYW5rcyBmb3IgdGhlIHBhdGNo
LCBKZXNwZXIhIE5vdGUgdGhhdCBtbHg1IGhhcyBBRl9YRFAgc3VwcG9ydCBhcyB3ZWxsLAphbmQg
bWlnaHQgbmVlZCBzaW1pbGFyIGNoYW5nZXMuIEFkZGluZyBNYXggZm9yIGlucHV0IQoKRm9yIHRo
ZSBJbnRlbCBkcml2ZXJzLCBhbmQgY29yZSBBRl9YRFA6CkFja2VkLWJ5OiBCasO2cm4gVMO2cGVs
IDxiam9ybi50b3BlbEBpbnRlbC5jb20+Cgo+IC0tLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaTQwZS9pNDBlX3hzay5jICAgfCAgICAyICsrCj4gICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX3hzay5jICAgICB8ICAgIDIgKysKPiAgIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3hzay5jIHwgICAgMiArKwo+ICAgaW5jbHVkZS9uZXQveGRw
X3NvY2suaCAgICAgICAgICAgICAgICAgICAgICAgfCAgIDExICsrKysrKysrKysrCj4gICA0IGZp
bGVzIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaTQwZS9pNDBlX3hzay5jCj4gaW5kZXggMGI3ZDI5MTkyYjJjLi4yYjkxODRhZWFkNWYg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5j
Cj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jCj4gQEAg
LTUzMSwxMiArNTMxLDE0IEBAIGludCBpNDBlX2NsZWFuX3J4X2lycV96YyhzdHJ1Y3QgaTQwZV9y
aW5nICpyeF9yaW5nLCBpbnQgYnVkZ2V0KQo+ICAgewo+ICAgCXVuc2lnbmVkIGludCB0b3RhbF9y
eF9ieXRlcyA9IDAsIHRvdGFsX3J4X3BhY2tldHMgPSAwOwo+ICAgCXUxNiBjbGVhbmVkX2NvdW50
ID0gSTQwRV9ERVNDX1VOVVNFRChyeF9yaW5nKTsKPiArCXN0cnVjdCB4ZHBfdW1lbSAqdW1lbSA9
IHJ4X3JpbmctPnhza191bWVtOwo+ICAgCXVuc2lnbmVkIGludCB4ZHBfcmVzLCB4ZHBfeG1pdCA9
IDA7Cj4gICAJYm9vbCBmYWlsdXJlID0gZmFsc2U7Cj4gICAJc3RydWN0IHNrX2J1ZmYgKnNrYjsK
PiAgIAlzdHJ1Y3QgeGRwX2J1ZmYgeGRwOwo+ICAgCj4gICAJeGRwLnJ4cSA9ICZyeF9yaW5nLT54
ZHBfcnhxOwo+ICsJeGRwLmZyYW1lX3N6ID0geHNrX3VtZW1feGRwX2ZyYW1lX3N6KHVtZW0pOwo+
ICAgCj4gICAJd2hpbGUgKGxpa2VseSh0b3RhbF9yeF9wYWNrZXRzIDwgKHVuc2lnbmVkIGludCli
dWRnZXQpKSB7Cj4gICAJCXN0cnVjdCBpNDBlX3J4X2J1ZmZlciAqYmk7Cj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfeHNrLmMgYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX3hzay5jCj4gaW5kZXggODI3OWRiMTVlODcwLi4yM2U1NTE1
ZDQ1MjcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV94
c2suYwo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfeHNrLmMKPiBA
QCAtODQwLDExICs4NDAsMTMgQEAgaW50IGljZV9jbGVhbl9yeF9pcnFfemMoc3RydWN0IGljZV9y
aW5nICpyeF9yaW5nLCBpbnQgYnVkZ2V0KQo+ICAgewo+ICAgCXVuc2lnbmVkIGludCB0b3RhbF9y
eF9ieXRlcyA9IDAsIHRvdGFsX3J4X3BhY2tldHMgPSAwOwo+ICAgCXUxNiBjbGVhbmVkX2NvdW50
ID0gSUNFX0RFU0NfVU5VU0VEKHJ4X3JpbmcpOwo+ICsJc3RydWN0IHhkcF91bWVtICp1bWVtID0g
cnhfcmluZy0+eHNrX3VtZW07Cj4gICAJdW5zaWduZWQgaW50IHhkcF94bWl0ID0gMDsKPiAgIAli
b29sIGZhaWx1cmUgPSBmYWxzZTsKPiAgIAlzdHJ1Y3QgeGRwX2J1ZmYgeGRwOwo+ICAgCj4gICAJ
eGRwLnJ4cSA9ICZyeF9yaW5nLT54ZHBfcnhxOwo+ICsJeGRwLmZyYW1lX3N6ID0geHNrX3VtZW1f
eGRwX2ZyYW1lX3N6KHVtZW0pOwo+ICAgCj4gICAJd2hpbGUgKGxpa2VseSh0b3RhbF9yeF9wYWNr
ZXRzIDwgKHVuc2lnbmVkIGludClidWRnZXQpKSB7Cj4gICAJCXVuaW9uIGljZV8zMmJfcnhfZmxl
eF9kZXNjICpyeF9kZXNjOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9peGdiZS9peGdiZV94c2suYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4
Z2JlX3hzay5jCj4gaW5kZXggNzRiNTQwZWJiM2RjLi5hNjU2ZWU5YTFmYWUgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfeHNrLmMKPiArKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV94c2suYwo+IEBAIC00MzEsMTIg
KzQzMSwxNCBAQCBpbnQgaXhnYmVfY2xlYW5fcnhfaXJxX3pjKHN0cnVjdCBpeGdiZV9xX3ZlY3Rv
ciAqcV92ZWN0b3IsCj4gICAJdW5zaWduZWQgaW50IHRvdGFsX3J4X2J5dGVzID0gMCwgdG90YWxf
cnhfcGFja2V0cyA9IDA7Cj4gICAJc3RydWN0IGl4Z2JlX2FkYXB0ZXIgKmFkYXB0ZXIgPSBxX3Zl
Y3Rvci0+YWRhcHRlcjsKPiAgIAl1MTYgY2xlYW5lZF9jb3VudCA9IGl4Z2JlX2Rlc2NfdW51c2Vk
KHJ4X3JpbmcpOwo+ICsJc3RydWN0IHhkcF91bWVtICp1bWVtID0gcnhfcmluZy0+eHNrX3VtZW07
Cj4gICAJdW5zaWduZWQgaW50IHhkcF9yZXMsIHhkcF94bWl0ID0gMDsKPiAgIAlib29sIGZhaWx1
cmUgPSBmYWxzZTsKPiAgIAlzdHJ1Y3Qgc2tfYnVmZiAqc2tiOwo+ICAgCXN0cnVjdCB4ZHBfYnVm
ZiB4ZHA7Cj4gICAKPiAgIAl4ZHAucnhxID0gJnJ4X3JpbmctPnhkcF9yeHE7Cj4gKwl4ZHAuZnJh
bWVfc3ogPSB4c2tfdW1lbV94ZHBfZnJhbWVfc3oodW1lbSk7Cj4gICAKPiAgIAl3aGlsZSAobGlr
ZWx5KHRvdGFsX3J4X3BhY2tldHMgPCBidWRnZXQpKSB7Cj4gICAJCXVuaW9uIGl4Z2JlX2Fkdl9y
eF9kZXNjICpyeF9kZXNjOwo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL25ldC94ZHBfc29jay5oIGIv
aW5jbHVkZS9uZXQveGRwX3NvY2suaAo+IGluZGV4IGU4NmVjNDhlZjYyNy4uMWNkMWVjM2NlYTk3
IDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvbmV0L3hkcF9zb2NrLmgKPiArKysgYi9pbmNsdWRlL25l
dC94ZHBfc29jay5oCj4gQEAgLTIzNyw2ICsyMzcsMTIgQEAgc3RhdGljIGlubGluZSB1NjQgeHNr
X3VtZW1fYWRqdXN0X29mZnNldChzdHJ1Y3QgeGRwX3VtZW0gKnVtZW0sIHU2NCBhZGRyZXNzLAo+
ICAgCWVsc2UKPiAgIAkJcmV0dXJuIGFkZHJlc3MgKyBvZmZzZXQ7Cj4gICB9Cj4gKwo+ICtzdGF0
aWMgaW5saW5lIHUzMiB4c2tfdW1lbV94ZHBfZnJhbWVfc3ooc3RydWN0IHhkcF91bWVtICp1bWVt
KQo+ICt7Cj4gKwlyZXR1cm4gdW1lbS0+Y2h1bmtfc2l6ZV9ub2hyICsgdW1lbS0+aGVhZHJvb207
Cj4gK30KPiArCj4gICAjZWxzZQo+ICAgc3RhdGljIGlubGluZSBpbnQgeHNrX2dlbmVyaWNfcmN2
KHN0cnVjdCB4ZHBfc29jayAqeHMsIHN0cnVjdCB4ZHBfYnVmZiAqeGRwKQo+ICAgewo+IEBAIC0z
NjcsNiArMzczLDExIEBAIHN0YXRpYyBpbmxpbmUgdTY0IHhza191bWVtX2FkanVzdF9vZmZzZXQo
c3RydWN0IHhkcF91bWVtICp1bWVtLCB1NjQgaGFuZGxlLAo+ICAgCXJldHVybiAwOwo+ICAgfQo+
ICAgCj4gK3N0YXRpYyBpbmxpbmUgdTMyIHhza191bWVtX3hkcF9mcmFtZV9zeihzdHJ1Y3QgeGRw
X3VtZW0gKnVtZW0pCj4gK3sKPiArCXJldHVybiAwOwo+ICt9Cj4gKwo+ICAgc3RhdGljIGlubGlu
ZSBpbnQgX194c2tfbWFwX3JlZGlyZWN0KHN0cnVjdCB4ZHBfc29jayAqeHMsIHN0cnVjdCB4ZHBf
YnVmZiAqeGRwKQo+ICAgewo+ICAgCXJldHVybiAtRU9QTk9UU1VQUDsKPiAKPiAKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1h
aWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9z
bC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
