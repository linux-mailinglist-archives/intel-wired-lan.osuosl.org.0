Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 714652517C5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Aug 2020 13:37:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1874B204A9;
	Tue, 25 Aug 2020 11:37:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aVUhrTEGRk8Y; Tue, 25 Aug 2020 11:37:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 59615204DF;
	Tue, 25 Aug 2020 11:37:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1ADCB1BF48D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 11:37:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 11DBB8691A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 11:37:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lObAM8_i6xGu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Aug 2020 11:37:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4E6DC86918
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 11:37:39 +0000 (UTC)
IronPort-SDR: bOyUzK9VXNua9T/gdexBGeNdE8jWwDzjmavKzzY2j9GAKNbQRypTxvY+RBpvYUZjgBM53hnRN9
 3ILMttJnNjbA==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="220351746"
X-IronPort-AV: E=Sophos;i="5.76,352,1592895600"; d="scan'208";a="220351746"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2020 04:37:38 -0700
IronPort-SDR: pHGzFrlEYVyVOwqYA17IJGS+2iJVtwZng8QAbDi+c2MMGwvKAo0/iI7EAmap1Qbs2dfKeZavhv
 BX08i/cUZQMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,352,1592895600"; d="scan'208";a="279956995"
Received: from zzombora-mobl1.ti.intel.com (HELO btopel-mobl.ger.intel.com)
 ([10.252.53.19])
 by fmsmga007.fm.intel.com with ESMTP; 25 Aug 2020 04:37:36 -0700
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
References: <20200825091629.12949-1-bjorn.topel@gmail.com>
 <20200825091629.12949-2-bjorn.topel@gmail.com>
 <20200825111336.GA38865@ranger.igk.intel.com>
 <256ab09e-1cea-c8ab-9589-b0c5809bdea7@intel.com>
 <20200825112953.GB38865@ranger.igk.intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <378704b9-ad2c-ad63-2434-a2b34bb25f0f@intel.com>
Date: Tue, 25 Aug 2020 13:37:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200825112953.GB38865@ranger.igk.intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net 1/3] i40e: avoid premature Rx
 buffer reuse
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
Cc: maciej.machnikowski@intel.com, lirongqing@baidu.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 magnus.karlsson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMC0wOC0yNSAxMzoyOSwgTWFjaWVqIEZpamFsa293c2tpIHdyb3RlOgo+IE9uIFR1ZSwg
QXVnIDI1LCAyMDIwIGF0IDAxOjI1OjE2UE0gKzAyMDAsIEJqw7ZybiBUw7ZwZWwgd3JvdGU6Cj4+
IE9uIDIwMjAtMDgtMjUgMTM6MTMsIE1hY2llaiBGaWphbGtvd3NraSB3cm90ZToKPj4+IE9uIFR1
ZSwgQXVnIDI1LCAyMDIwIGF0IDExOjE2OjI3QU0gKzAyMDAsIEJqw7ZybiBUw7ZwZWwgd3JvdGU6
Cj4+IFsuLi5dCj4+Pj4gICAgCXN0cnVjdCBpNDBlX3J4X2J1ZmZlciAqcnhfYnVmZmVyOwo+Pj4+
ICAgIAlyeF9idWZmZXIgPSBpNDBlX3J4X2JpKHJ4X3JpbmcsIHJ4X3JpbmctPm5leHRfdG9fY2xl
YW4pOwo+Pj4+ICsJKnJ4X2J1ZmZlcl9wZ2NudCA9IGk0MGVfcnhfYnVmZmVyX3BhZ2VfY291bnQo
cnhfYnVmZmVyKTsKPj4+Cj4+PiBXaGF0IGkgcHJldmlvdXNseSBtZWFudCB3YXM6Cj4+Pgo+Pj4g
I2lmIChQQUdFX1NJWkUgPCA4MTkyKQo+Pj4gCSpyeF9idWZmZXJfcGdjbnQgPSBwYWdlX2NvdW50
KHJ4X2J1ZmZlci0+cGFnZSk7Cj4+PiAjZW5kaWYKPj4+Cj4+PiBhbmQgc2VlIGJlbG93Cj4+Pgo+
Pgo+PiBSaWdodC4uLgo+Pgo+Pj4+ICAgIAlwcmVmZXRjaHcocnhfYnVmZmVyLT5wYWdlKTsKPj4+
PiAgICAJLyogd2UgYXJlIHJldXNpbmcgc28gc3luYyB0aGlzIGJ1ZmZlciBmb3IgQ1BVIHVzZSAq
Lwo+Pj4+IEBAIC0yMTEyLDkgKzIxMjQsMTAgQEAgc3RhdGljIHN0cnVjdCBza19idWZmICppNDBl
X2J1aWxkX3NrYihzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nLAo+Pj4+ICAgICAqIGVpdGhlciBy
ZWN5Y2xlIHRoZSBidWZmZXIgb3IgdW5tYXAgaXQgYW5kIGZyZWUgdGhlIGFzc29jaWF0ZWQgcmVz
b3VyY2VzLgo+Pj4+ICAgICAqLwo+Pj4+ICAgIHN0YXRpYyB2b2lkIGk0MGVfcHV0X3J4X2J1ZmZl
cihzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nLAo+Pj4+IC0JCQkgICAgICAgc3RydWN0IGk0MGVf
cnhfYnVmZmVyICpyeF9idWZmZXIpCj4+Pj4gKwkJCSAgICAgICBzdHJ1Y3QgaTQwZV9yeF9idWZm
ZXIgKnJ4X2J1ZmZlciwKPj4+PiArCQkJICAgICAgIGludCByeF9idWZmZXJfcGdjbnQpCj4+Pj4g
ICAgewo+Pj4+IC0JaWYgKGk0MGVfY2FuX3JldXNlX3J4X3BhZ2UocnhfYnVmZmVyKSkgewo+Pj4+
ICsJaWYgKGk0MGVfY2FuX3JldXNlX3J4X3BhZ2UocnhfYnVmZmVyLCByeF9idWZmZXJfcGdjbnQp
KSB7Cj4+Pj4gICAgCQkvKiBoYW5kIHNlY29uZCBoYWxmIG9mIHBhZ2UgYmFjayB0byB0aGUgcmlu
ZyAqLwo+Pj4+ICAgIAkJaTQwZV9yZXVzZV9yeF9wYWdlKHJ4X3JpbmcsIHJ4X2J1ZmZlcik7Cj4+
Pj4gICAgCX0gZWxzZSB7Cj4+Pj4gQEAgLTIzMTksNiArMjMzMiw3IEBAIHN0YXRpYyBpbnQgaTQw
ZV9jbGVhbl9yeF9pcnEoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywgaW50IGJ1ZGdldCkKPj4+
PiAgICAJdW5zaWduZWQgaW50IHhkcF94bWl0ID0gMDsKPj4+PiAgICAJYm9vbCBmYWlsdXJlID0g
ZmFsc2U7Cj4+Pj4gICAgCXN0cnVjdCB4ZHBfYnVmZiB4ZHA7Cj4+Pj4gKwlpbnQgcnhfYnVmZmVy
X3BnY250Owo+Pj4KPj4+IHlvdSBjb3VsZCBtb3ZlIHNjb3BlIHRoaXMgdmFyaWFibGUgb25seSBm
b3IgdGhlCj4+Pgo+Pj4gd2hpbGUgKGxpa2VseSh0b3RhbF9yeF9wYWNrZXRzIDwgKHVuc2lnbmVk
IGludClidWRnZXQpKQo+Pj4KPj4+IGxvb3AgYW5kIGluaXQgdGhpcyB0byAwLiB0aGVuIHlvdSBj
b3VsZCBkcm9wIHRoZSBoZWxwZXIgZnVuY3Rpb24geW91J3ZlCj4+PiBhZGRlZC4gYW5kIEJUVyB0
aGUgcGFnZV9jb3VudCBpcyBub3QgYmVpbmcgdXNlZCBmb3IgYmlnIHBhZ2VzIGJ1dCBpIGFncmVl
Cj4+PiB0aGF0IGl0J3MgYmV0dGVyIHRvIGhhdmUgaXQgc2V0IHRvIDAuCj4+Pgo+Pgo+PiAuLi5i
dXQgaXNuJ3QgaXQgYSBiaXQgbmFzdHkgd2l0aCBhbiBvdXRwdXQgcGFyYW1ldGVyIHRoYXQgcmVs
aWVzIG9uIHRoZSB0aGF0Cj4+IHRoZSBpbnB1dCB3YXMgc2V0IHRvIHplcm8uIEkgZ3Vlc3MgaXQn
cyBhIG1hdHRlciBvZiB0YXN0ZSwgYnV0IEkgZmluZCB0aGF0Cj4+IG1vcmUgZXJyb3IgcHJvbmUu
Cj4+Cj4+IExldCBtZSBrbm93IGlmIHlvdSBoYXZlIHN0cm9uZyBmZWVsaW5ncyBhYm91dCB0aGlz
LCBhbmQgSSdsbCByZXNwaW4gKGJ1dCBJCj4+IHJhdGhlciBub3QhKS4KPiAKPiBVcCB0byB5b3Uu
IE5vIHN0cm9uZyBmZWVsaW5ncywgaSBqdXN0IHRoaW5rIHRoYXQgaTQwZV9yeF9idWZmZXJfcGFn
ZV9jb3VudAo+IGlzIG5vdCBuZWVkZWQuIEJ1dCBpZiB5b3Ugd2FudCB0byBrZWVwIGl0LCB0aGVu
IGkgd2FzIHVzdWFsbHkgYXNraW5nCj4gcGVvcGxlIHRvIHByb3ZpZGUgdGhlIGRveHlnZW4gZGVz
Y3JpcHRpb25zIGZvciBuZXdseSBpbnRyb2R1Y2VkCj4gZnVuY3Rpb25zLi4uIDpQCj4gCj4gYnV0
IHNjb3BpbmcgaXQgc3RpbGwgbWFrZXMgc2Vuc2UgdG8gbWUsIHN0YXRpYyBhbmFseXNpcyB0b29s
cyB3b3VsZCBhZ3JlZQo+IHdpdGggbWUgSSBndWVzcy4KPgoKRmFpciBlbm91Z2ghIEknbGwgc3Bp
biBhIHYyISBUaGFua3MgZm9yIHRha2luZyBhIGxvb2shCgoKQmrDtnJuCgoKPj4KPj4KPj4gQmrD
tnJuCj4+Cj4+Cj4+Pj4gICAgI2lmIChQQUdFX1NJWkUgPCA4MTkyKQo+Pj4+ICAgIAl4ZHAuZnJh
bWVfc3ogPSBpNDBlX3J4X2ZyYW1lX3RydWVzaXplKHJ4X3JpbmcsIDApOwo+Pj4+IEBAIC0yMzcw
LDcgKzIzODQsNyBAQCBzdGF0aWMgaW50IGk0MGVfY2xlYW5fcnhfaXJxKHN0cnVjdCBpNDBlX3Jp
bmcgKnJ4X3JpbmcsIGludCBidWRnZXQpCj4+Pj4gICAgCQkJYnJlYWs7Cj4+Pj4gICAgCQlpNDBl
X3RyYWNlKGNsZWFuX3J4X2lycSwgcnhfcmluZywgcnhfZGVzYywgc2tiKTsKPj4+PiAtCQlyeF9i
dWZmZXIgPSBpNDBlX2dldF9yeF9idWZmZXIocnhfcmluZywgc2l6ZSk7Cj4+Pj4gKwkJcnhfYnVm
ZmVyID0gaTQwZV9nZXRfcnhfYnVmZmVyKHJ4X3JpbmcsIHNpemUsICZyeF9idWZmZXJfcGdjbnQp
Owo+Pj4+ICAgIAkJLyogcmV0cmlldmUgYSBidWZmZXIgZnJvbSB0aGUgcmluZyAqLwo+Pj4+ICAg
IAkJaWYgKCFza2IpIHsKPj4+PiBAQCAtMjQxMyw3ICsyNDI3LDcgQEAgc3RhdGljIGludCBpNDBl
X2NsZWFuX3J4X2lycShzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nLCBpbnQgYnVkZ2V0KQo+Pj4+
ICAgIAkJCWJyZWFrOwo+Pj4+ICAgIAkJfQo+Pj4+IC0JCWk0MGVfcHV0X3J4X2J1ZmZlcihyeF9y
aW5nLCByeF9idWZmZXIpOwo+Pj4+ICsJCWk0MGVfcHV0X3J4X2J1ZmZlcihyeF9yaW5nLCByeF9i
dWZmZXIsIHJ4X2J1ZmZlcl9wZ2NudCk7Cj4+Pj4gICAgCQljbGVhbmVkX2NvdW50Kys7Cj4+Pj4g
ICAgCQlpZiAoaTQwZV9pc19ub25fZW9wKHJ4X3JpbmcsIHJ4X2Rlc2MsIHNrYikpCj4+Pj4gLS0g
Cj4+Pj4gMi4yNS4xCj4+Pj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1
b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13
aXJlZC1sYW4K
