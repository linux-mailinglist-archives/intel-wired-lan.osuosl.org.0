Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A69FE437190
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Oct 2021 08:12:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 33EC04083C;
	Fri, 22 Oct 2021 06:12:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dIoQhwYz7Khw; Fri, 22 Oct 2021 06:12:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 280F0407C3;
	Fri, 22 Oct 2021 06:12:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 586701BF681
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Oct 2021 06:12:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 46AD383A5A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Oct 2021 06:12:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8YPNvERZeWZn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Oct 2021 06:12:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9BA3283A4F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Oct 2021 06:12:26 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae8ed.dynamic.kabel-deutschland.de
 [95.90.232.237])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 4943261E5FE02;
 Fri, 22 Oct 2021 08:12:24 +0200 (CEST)
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
References: <20210902103106.51917-1-jedrzej.jagielski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <4e29d380-54eb-a39c-9402-4d6aaebcea48@molgen.mpg.de>
Date: Fri, 22 Oct 2021 08:12:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20210902103106.51917-1-jedrzej.jagielski@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix delay after global
 reset
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBKZWRyemVqLAoKClRoYW5rIHlvdSBmb3IgeW91ciBwYXRjaC4KCkFtIDAyLjA5LjIxIHVt
IDEyOjMxIHNjaHJpZWIgSmVkcnplaiBKYWdpZWxza2k6CgpQbGVhc2UgYmUgbW9yZSBzcGVjaWZp
YyBpbiB0aGUgY29tbWl0IG1lc3NhZ2Ugc3VtbWFyeToKCmk0MGU6IEluY3JlYXNlIGRlbGF5IHRv
IDEgcyBhZnRlciBnbG9iYWwgcmVzZXQKPiBpNDBlOiBJbmNyZWFzZSBkZWxheSB0byAxIHMgYWZ0
ZXIgZ2xvYmFsIEVNUCByZXNldAoKCj4gUmVjZW50bHkgc2ltcGxpZmllZCBpNDBlX3JlYnVpbGQg
Y2F1c2VzIHRoYXQgRlcgc29tZXRpbWVzCj4gaXMgbm90IHJlYWR5IGFmdGVyIE5WTSB1cGRhdGUs
IHRoZSBwaW5nIGRvZXMgbm90IHJldHVybi4KCk9uIHdoYXQgY2FyZCB3YXMgdGhpcyBoYXBwZW5p
bmcgdXBkYXRpbmcgdGhlIGZpcm13YXJlIGZyb20gd2hhdCB2ZXJzaW9uIAp0byB3aGF0IHZlcnNp
b24/Cgo+IE1vZGlmeSB0aGUgZGVsYXkgaW4gY2FzZSBvZiBFTVBSIHJlc2V0LgoKUGxlYXNlIHdy
aXRlIG91dCBFTVAgb25jZS4KCk1heWJlOiBJbmNyZWFzZSB0aGUgZGVsYXkg4oCmCgo+IE9sZCBk
ZWxheSB3YXMgaW50cm9kdWNlZCBmb3Igc3BlY2lmaWMgY2FyZHMgZm9yIDcxMCBzZXJpZXMuCgpP
bGQgZGVsYXkgb2YgMzAwIG1zIOKApgoKPiBOb3cgaXQgd29ya3MgZm9yIGFsbCB0aGUgY2FyZHMg
YW5kIGRlbGF5IHdhcyBpbmNyZWFzZWQuCgpXaGljaCBjYXJkcyBkaWQgeW91IHRlc3Qgd2l0aD8K
CkhvdyBkaWQgeW91IGNob29zZSBvbmUgc2Vjb25kIChtb3JlIHRoYW4gdGhyZWUgdGltZXMgdGhl
IGN1cnJlbnQgb25lKT8gCklzIHRoZXJlIHNvbWUgZGF0YXNoZWV0PwoKPiBGaXhlczogMWZhNTFh
NjUwZTFkICgiaTQwZTogQWRkIGRlbGF5IGFmdGVyIEVNUCByZXNldCBmb3IgZmlybXdhcmUgdG8g
cmVjb3ZlciIpCj4gU2lnbmVkLW9mZi1ieTogQXJrYWRpdXN6IEt1YmFsZXdza2kgPGFya2FkaXVz
ei5rdWJhbGV3c2tpQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKZWRyemVqIEphZ2llbHNr
aSA8amVkcnplai5qYWdpZWxza2lAaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYyB8IDEyICsrKy0tLS0tLS0tLQo+ICAgMSBmaWxl
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMKPiBpbmRleCAwMDA5OTFhZmNmMjcu
LmUwYzllMGU4NGFlZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
NDBlL2k0MGVfbWFpbi5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9p
NDBlX21haW4uYwo+IEBAIC0xMDUzNSwxNSArMTA1MzUsOSBAQCBzdGF0aWMgdm9pZCBpNDBlX3Jl
YnVpbGQoc3RydWN0IGk0MGVfcGYgKnBmLCBib29sIHJlaW5pdCwgYm9vbCBsb2NrX2FjcXVpcmVk
KQo+ICAgCX0KPiAgIAlpNDBlX2dldF9vZW1fdmVyc2lvbigmcGYtPmh3KTsKPiAgIAo+IC0JaWYg
KHRlc3RfYml0KF9fSTQwRV9FTVBfUkVTRVRfSU5UUl9SRUNFSVZFRCwgcGYtPnN0YXRlKSAmJgo+
IC0JICAgICgoaHctPmFxLmZ3X21hal92ZXIgPT0gNCAmJiBody0+YXEuZndfbWluX3ZlciA8PSAz
MykgfHwKPiAtCSAgICAgaHctPmFxLmZ3X21hal92ZXIgPCA0KSAmJiBody0+bWFjLnR5cGUgPT0g
STQwRV9NQUNfWEw3MTApIHsKPiAtCQkvKiBUaGUgZm9sbG93aW5nIGRlbGF5IGlzIG5lY2Vzc2Fy
eSBmb3IgNC4zMyBmaXJtd2FyZSBhbmQgb2xkZXIKPiAtCQkgKiB0byByZWNvdmVyIGFmdGVyIEVN
UCByZXNldC4gMjAwIG1zIHNob3VsZCBzdWZmaWNlIGJ1dCB3ZQo+IC0JCSAqIHB1dCBoZXJlIDMw
MCBtcyB0byBiZSBzdXJlIHRoYXQgRlcgaXMgcmVhZHkgdG8gb3BlcmF0ZQo+IC0JCSAqIGFmdGVy
IHJlc2V0Lgo+IC0JCSAqLwo+IC0JCW1kZWxheSgzMDApOwo+ICsJaWYgKHRlc3RfYW5kX2NsZWFy
X2JpdChfX0k0MEVfRU1QX1JFU0VUX0lOVFJfUkVDRUlWRUQsIHBmLT5zdGF0ZSkpIHsKPiArCQkv
KiBUaGUgZm9sbG93aW5nIGRlbGF5IGlzIG5lY2Vzc2FyeSBmb3IgZmlybXdhcmUgdXBkYXRlLiAq
Lwo+ICsJCW1kZWxheSgxMDAwKTsKPiAgIAl9CgpPbmUgc2Vjb25kIGlzIHF1aXRlIGV4Y2Vzc2l2
ZSBpbiBtb2Rlcm4gdGltZXMuIElzIHRoZXJlIGEgd2F5IHRvIHBvbGwgYSAKcmVnaXN0ZXIgdG8g
c2VlIGlmIHRoZSByZXNldCB3YXMgc3VjY2Vzc2Z1bD8KCkFsc28sIHRoaXMgbWlnaHQgcmVncmVz
cyBzb21lIHNldHVwcywgd2hlcmUgdGltaW5nIGlzIGltcG9ydGFudCwgYW5kIAp3aGVyZSB0aGUg
bWF4aW11bSBvZiAzMDAgbXMgZGVsYXkgaXMgY3J1Y2lhbCBmb3IgdGhlIGFwcGxpY2F0aW9uLgoK
PiAgIAo+ICAgCS8qIHJlLXZlcmlmeSB0aGUgZWVwcm9tIGlmIHdlIGp1c3QgaGFkIGFuIEVNUCBy
ZXNldCAqLwo+IAoKU28sIE5BQ0sgZnJvbSBteSBzaWRlLiBRdWlya3Mgc2hvdWxkIGJlIGFkZGVk
IGZvciBjYXJkcy9maXJtd2FyZSAKdmVyc2lvbnMsIHdoaWNoIGV4cGxpY2l0bHkgbmVlZCBtb3Jl
IHRpbWUgdGhhbiBubyBkZWxheSBvciAzMDAgbXMuCgoKS2luZCByZWdhcmRzLAoKUGF1bApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
