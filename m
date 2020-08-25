Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6591F251780
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Aug 2020 13:25:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DC0CE2046C;
	Tue, 25 Aug 2020 11:25:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V22lRAMJAWPv; Tue, 25 Aug 2020 11:25:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 90D7D22886;
	Tue, 25 Aug 2020 11:25:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 606CB1BF48D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 11:25:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 51119204A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 11:25:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IwnA-Qjyk-mi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Aug 2020 11:25:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id F3B7B2046C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 11:25:19 +0000 (UTC)
IronPort-SDR: rSXsZewRQXxdJScKHRTDsjOqS8glDOoX66JG3GedBiON0fZdLnCHXokVL6jp/SgUUaek2ArT0l
 tw3hiLVig8/A==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="136149608"
X-IronPort-AV: E=Sophos;i="5.76,352,1592895600"; d="scan'208";a="136149608"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2020 04:25:19 -0700
IronPort-SDR: OfAcv590sw3tD8nubF5BemCsespb/1u/MEDinFPhmuXQuv3aSmj3zEV5oy1FZnPjGzV7RY6yKs
 yHQMfUm6FBlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,352,1592895600"; d="scan'208";a="279954927"
Received: from zzombora-mobl1.ti.intel.com (HELO btopel-mobl.ger.intel.com)
 ([10.252.53.19])
 by fmsmga007.fm.intel.com with ESMTP; 25 Aug 2020 04:25:17 -0700
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
References: <20200825091629.12949-1-bjorn.topel@gmail.com>
 <20200825091629.12949-2-bjorn.topel@gmail.com>
 <20200825111336.GA38865@ranger.igk.intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <256ab09e-1cea-c8ab-9589-b0c5809bdea7@intel.com>
Date: Tue, 25 Aug 2020 13:25:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200825111336.GA38865@ranger.igk.intel.com>
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

T24gMjAyMC0wOC0yNSAxMzoxMywgTWFjaWVqIEZpamFsa293c2tpIHdyb3RlOgo+IE9uIFR1ZSwg
QXVnIDI1LCAyMDIwIGF0IDExOjE2OjI3QU0gKzAyMDAsIEJqw7ZybiBUw7ZwZWwgd3JvdGU6Clsu
Li5dCj4+ICAgCXN0cnVjdCBpNDBlX3J4X2J1ZmZlciAqcnhfYnVmZmVyOwo+PiAgIAo+PiAgIAly
eF9idWZmZXIgPSBpNDBlX3J4X2JpKHJ4X3JpbmcsIHJ4X3JpbmctPm5leHRfdG9fY2xlYW4pOwo+
PiArCSpyeF9idWZmZXJfcGdjbnQgPSBpNDBlX3J4X2J1ZmZlcl9wYWdlX2NvdW50KHJ4X2J1ZmZl
cik7Cj4gCj4gV2hhdCBpIHByZXZpb3VzbHkgbWVhbnQgd2FzOgo+IAo+ICNpZiAoUEFHRV9TSVpF
IDwgODE5MikKPiAJKnJ4X2J1ZmZlcl9wZ2NudCA9IHBhZ2VfY291bnQocnhfYnVmZmVyLT5wYWdl
KTsKPiAjZW5kaWYKPiAKPiBhbmQgc2VlIGJlbG93Cj4gCgpSaWdodC4uLgoKPj4gICAJcHJlZmV0
Y2h3KHJ4X2J1ZmZlci0+cGFnZSk7Cj4+ICAgCj4+ICAgCS8qIHdlIGFyZSByZXVzaW5nIHNvIHN5
bmMgdGhpcyBidWZmZXIgZm9yIENQVSB1c2UgKi8KPj4gQEAgLTIxMTIsOSArMjEyNCwxMCBAQCBz
dGF0aWMgc3RydWN0IHNrX2J1ZmYgKmk0MGVfYnVpbGRfc2tiKHN0cnVjdCBpNDBlX3JpbmcgKnJ4
X3JpbmcsCj4+ICAgICogZWl0aGVyIHJlY3ljbGUgdGhlIGJ1ZmZlciBvciB1bm1hcCBpdCBhbmQg
ZnJlZSB0aGUgYXNzb2NpYXRlZCByZXNvdXJjZXMuCj4+ICAgICovCj4+ICAgc3RhdGljIHZvaWQg
aTQwZV9wdXRfcnhfYnVmZmVyKHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3JpbmcsCj4+IC0JCQkgICAg
ICAgc3RydWN0IGk0MGVfcnhfYnVmZmVyICpyeF9idWZmZXIpCj4+ICsJCQkgICAgICAgc3RydWN0
IGk0MGVfcnhfYnVmZmVyICpyeF9idWZmZXIsCj4+ICsJCQkgICAgICAgaW50IHJ4X2J1ZmZlcl9w
Z2NudCkKPj4gICB7Cj4+IC0JaWYgKGk0MGVfY2FuX3JldXNlX3J4X3BhZ2UocnhfYnVmZmVyKSkg
ewo+PiArCWlmIChpNDBlX2Nhbl9yZXVzZV9yeF9wYWdlKHJ4X2J1ZmZlciwgcnhfYnVmZmVyX3Bn
Y250KSkgewo+PiAgIAkJLyogaGFuZCBzZWNvbmQgaGFsZiBvZiBwYWdlIGJhY2sgdG8gdGhlIHJp
bmcgKi8KPj4gICAJCWk0MGVfcmV1c2VfcnhfcGFnZShyeF9yaW5nLCByeF9idWZmZXIpOwo+PiAg
IAl9IGVsc2Ugewo+PiBAQCAtMjMxOSw2ICsyMzMyLDcgQEAgc3RhdGljIGludCBpNDBlX2NsZWFu
X3J4X2lycShzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nLCBpbnQgYnVkZ2V0KQo+PiAgIAl1bnNp
Z25lZCBpbnQgeGRwX3htaXQgPSAwOwo+PiAgIAlib29sIGZhaWx1cmUgPSBmYWxzZTsKPj4gICAJ
c3RydWN0IHhkcF9idWZmIHhkcDsKPj4gKwlpbnQgcnhfYnVmZmVyX3BnY250Owo+IAo+IHlvdSBj
b3VsZCBtb3ZlIHNjb3BlIHRoaXMgdmFyaWFibGUgb25seSBmb3IgdGhlCj4gCj4gd2hpbGUgKGxp
a2VseSh0b3RhbF9yeF9wYWNrZXRzIDwgKHVuc2lnbmVkIGludClidWRnZXQpKQo+IAo+IGxvb3Ag
YW5kIGluaXQgdGhpcyB0byAwLiB0aGVuIHlvdSBjb3VsZCBkcm9wIHRoZSBoZWxwZXIgZnVuY3Rp
b24geW91J3ZlCj4gYWRkZWQuIGFuZCBCVFcgdGhlIHBhZ2VfY291bnQgaXMgbm90IGJlaW5nIHVz
ZWQgZm9yIGJpZyBwYWdlcyBidXQgaSBhZ3JlZQo+IHRoYXQgaXQncyBiZXR0ZXIgdG8gaGF2ZSBp
dCBzZXQgdG8gMC4KPgoKLi4uYnV0IGlzbid0IGl0IGEgYml0IG5hc3R5IHdpdGggYW4gb3V0cHV0
IHBhcmFtZXRlciB0aGF0IHJlbGllcyBvbiB0aGUgCnRoYXQgdGhlIGlucHV0IHdhcyBzZXQgdG8g
emVyby4gSSBndWVzcyBpdCdzIGEgbWF0dGVyIG9mIHRhc3RlLCBidXQgSSAKZmluZCB0aGF0IG1v
cmUgZXJyb3IgcHJvbmUuCgpMZXQgbWUga25vdyBpZiB5b3UgaGF2ZSBzdHJvbmcgZmVlbGluZ3Mg
YWJvdXQgdGhpcywgYW5kIEknbGwgcmVzcGluIChidXQgCkkgcmF0aGVyIG5vdCEpLgoKCkJqw7Zy
bgoKCj4+ICAgCj4+ICAgI2lmIChQQUdFX1NJWkUgPCA4MTkyKQo+PiAgIAl4ZHAuZnJhbWVfc3og
PSBpNDBlX3J4X2ZyYW1lX3RydWVzaXplKHJ4X3JpbmcsIDApOwo+PiBAQCAtMjM3MCw3ICsyMzg0
LDcgQEAgc3RhdGljIGludCBpNDBlX2NsZWFuX3J4X2lycShzdHJ1Y3QgaTQwZV9yaW5nICpyeF9y
aW5nLCBpbnQgYnVkZ2V0KQo+PiAgIAkJCWJyZWFrOwo+PiAgIAo+PiAgIAkJaTQwZV90cmFjZShj
bGVhbl9yeF9pcnEsIHJ4X3JpbmcsIHJ4X2Rlc2MsIHNrYik7Cj4+IC0JCXJ4X2J1ZmZlciA9IGk0
MGVfZ2V0X3J4X2J1ZmZlcihyeF9yaW5nLCBzaXplKTsKPj4gKwkJcnhfYnVmZmVyID0gaTQwZV9n
ZXRfcnhfYnVmZmVyKHJ4X3JpbmcsIHNpemUsICZyeF9idWZmZXJfcGdjbnQpOwo+PiAgIAo+PiAg
IAkJLyogcmV0cmlldmUgYSBidWZmZXIgZnJvbSB0aGUgcmluZyAqLwo+PiAgIAkJaWYgKCFza2Ip
IHsKPj4gQEAgLTI0MTMsNyArMjQyNyw3IEBAIHN0YXRpYyBpbnQgaTQwZV9jbGVhbl9yeF9pcnEo
c3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywgaW50IGJ1ZGdldCkKPj4gICAJCQlicmVhazsKPj4g
ICAJCX0KPj4gICAKPj4gLQkJaTQwZV9wdXRfcnhfYnVmZmVyKHJ4X3JpbmcsIHJ4X2J1ZmZlcik7
Cj4+ICsJCWk0MGVfcHV0X3J4X2J1ZmZlcihyeF9yaW5nLCByeF9idWZmZXIsIHJ4X2J1ZmZlcl9w
Z2NudCk7Cj4+ICAgCQljbGVhbmVkX2NvdW50Kys7Cj4+ICAgCj4+ICAgCQlpZiAoaTQwZV9pc19u
b25fZW9wKHJ4X3JpbmcsIHJ4X2Rlc2MsIHNrYikpCj4+IC0tIAo+PiAyLjI1LjEKPj4KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFu
IG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9z
dW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
