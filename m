Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8E627FAF4
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Oct 2020 10:03:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 619C381E1E;
	Thu,  1 Oct 2020 08:03:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pmJgAB1ucoRy; Thu,  1 Oct 2020 08:03:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 877AF87265;
	Thu,  1 Oct 2020 08:03:02 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CD5841BF38E
 for <intel-wired-lan@osuosl.org>; Thu,  1 Oct 2020 08:03:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C6A1786CD2
 for <intel-wired-lan@osuosl.org>; Thu,  1 Oct 2020 08:03:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B7_k5veOQTSY for <intel-wired-lan@osuosl.org>;
 Thu,  1 Oct 2020 08:03:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0A2ED86CB8
 for <intel-wired-lan@osuosl.org>; Thu,  1 Oct 2020 08:02:59 +0000 (UTC)
IronPort-SDR: yG9nHdrzDQLMpIZh1vrorucob+eWXpZOIUHnznt3Sd4FraI9FpUXDyHkdVOhNRhViYYfkke6nJ
 yQbSSNjBoUUA==
X-IronPort-AV: E=McAfee;i="6000,8403,9760"; a="142061535"
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="142061535"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2020 01:02:58 -0700
IronPort-SDR: 5QCGdu4IwZ77E2y5OlaSidmc2p7HEGK4Owlnf2ljE7eYmBXMG34QnG6Ud0IS2T0QeU+gsj3J4l
 jbrMnBGuP8Jw==
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="502264253"
Received: from sneftin-mobl.ger.corp.intel.com (HELO [10.251.177.83])
 ([10.251.177.83])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2020 01:02:52 -0700
From: "Neftin, Sasha" <sasha.neftin@intel.com>
To: intel-wired-lan@osuosl.org, "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Neftin, Sasha" <sasha.neftin@intel.com>
References: <20200908162330.4681-1-ztong0001@gmail.com>
 <d8c2fdeb-0ae1-5633-7cef-61607fb22d39@intel.com>
Message-ID: <ee2f6552-aee1-a601-7d24-ed18b6c756ed@intel.com>
Date: Thu, 1 Oct 2020 11:02:49 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <d8c2fdeb-0ae1-5633-7cef-61607fb22d39@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: do not panic on malformed
 rx_desc
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGVsbG8gVG9uZywKT24gOS8xMC8yMDIwIDExOjIyLCBOZWZ0aW4sIFNhc2hhIHdyb3RlOgo+IE9u
IDkvOC8yMDIwIDE5OjIzLCBUb25nIFpoYW5nIHdyb3RlOgo+PiBsZW5ndGggbWF5IGJlIGNvcnJ1
cHRlZCBpbiByeF9kZXNjIGFuZCBsZWFkIHRvIHBhbmljLCBzbyBjaGVjayB0aGUKPj4gc2FuaXR5
IGJlZm9yZSBwYXNzaW5nIGl0IHRvIHNrYl9wdXQKPj4KPiBUb25nLCB3aGF0IGlzIHNjZW5hcmlv
IGNhdXNlZCB0byBza2IgcGFuaWM/IEhvdyBpdCBpcyBoYXBwZW4gb24geW91ciAKPiBzeXN0ZW0/
IENhbiB5b3UgcGxlYXNlIHNoYXJlIHRoZSB0ZXN0IGhpbnQgYW5kIHlvdXIgc2V0dXAgd2l0aCB1
cz8KUGxlYXNlLCBzaGFyZSB5b3VyIHNjZW5hcmlvIGFuZCBzZXR1cCBkZXRhaWxzIChIVyBzZXR0
aW5ncywgQklPUywgCktlcm5lbCwgZXRjLi4uKS4gV2Ugd291bGQgbGlrZSB0byB1bmRlcnN0YW5k
IGhvdyBleGFjdGx5IGxlbmd0aCAKY29ycnVwdGlvbiBpcyBoYXBwZW4uCgpUaGFua3MsClNhc2hh
Cgo+PiBbwqAgMTAzLjg0MDU3Ml0gc2tidWZmOiBza2Jfb3Zlcl9wYW5pYzogdGV4dDpmZmZmZmZm
ZjhmNDMyY2MxIGxlbjo2MTU4NSAKPj4gcHV0OjYxNTg1IGhlYWQ6ZmZmZjg4ODA1NjQyYjgwMCBk
YXRhOmZmZmY4ODgwNTY0MmI4NDAgdGFpbDoweGYwZDEgCj4+IGVuZDoweDZjMCBkZXY6ZQo+PiB0
aDAKPj4gW8KgIDEwMy44NDEyODNdIC0tLS0tLS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0t
LQo+PiBbwqAgMTAzLjg0MTUxNV0ga2VybmVsIEJVRyBhdCBuZXQvY29yZS9za2J1ZmYuYzoxMDkh
Cj4+IFvCoCAxMDMuODQxNzQ5XSBpbnZhbGlkIG9wY29kZTogMDAwMCBbIzFdIFNNUCBERUJVR19Q
QUdFQUxMT0MgS0FTQU4gUFRJCj4+IFvCoCAxMDMuODQyMDYzXSBDUFU6IDEgUElEOiAyNzYgQ29t
bTogcGluZyBUYWludGVkOiBHwqDCoMKgwqDCoMKgwqAgVyAgICAgICAgIAo+PiA1LjguMCsgIzQK
Pj4gW8KgIDEwMy44NDI4NTddIFJJUDogMDAxMDpza2JfcGFuaWMrMHhjNC8weGM2Cj4+IFvCoCAx
MDMuODQzMDIyXSBDb2RlOiA4OSBmMCA0OCBjNyBjNyA2MCBmMiAzZSA5MCA1NSA0OCA4YiA3NCAy
NCAxOCA0ZCAKPj4gODkgZjkgNTYgNDggOGIgNTQgMjQgMTggNGMgODkgZTYgNTIgNDggOGIgNDQg
MjQgMTggNGMgODkgZWEgNTAgZTggMDEgCj4+IGM1IDJhIGZmIDwwZj4KPj4gMGIgNGMgOGIgNjQg
MjQgMTggZTggYzEgYjQgNDggZmYgNDggYzcgYzEgZTAgZmMgM2UgOTAgNDQgODkgZWUKPj4gW8Kg
IDEwMy44NDM3NjZdIFJTUDogMDAxODpmZmZmODg4MDZkMTA5YzU4IEVGTEFHUzogMDAwMTAyODIK
Pj4gW8KgIDEwMy44NDM5NzZdIFJBWDogMDAwMDAwMDAwMDAwMDA4YyBSQlg6IGZmZmY4ODgwNjgz
NDA3YzAgUkNYOiAKPj4gMDAwMDAwMDAwMDAwMDAwMAo+PiBbwqAgMTAzLjg0NDI2Ml0gUkRYOiAx
ZmZmZjExMDBkYTI0YzkxIFJTSTogMDAwMDAwMDAwMDAwMDAwOCBSREk6IAo+PiBmZmZmZWQxMDBk
YTIxMzdlCj4+IFvCoCAxMDMuODQ0NTQ4XSBSQlA6IGZmZmY4ODgwNmJkY2MwMDAgUjA4OiAwMDAw
MDAwMDAwMDAwMDhjIFIwOTogCj4+IGZmZmZlZDEwMGRhMjVjZmIKPj4gW8KgIDEwMy44NDQ4MzRd
IFIxMDogZmZmZjg4ODA2ZDEyZTdkNyBSMTE6IGZmZmZlZDEwMGRhMjVjZmEgUjEyOiAKPj4gZmZm
ZmZmZmY5MDNlZmQyMAo+PiBbwqAgMTAzLjg0NTEyM10gUjEzOiBmZmZmZmZmZjhmNDMyY2MxIFIx
NDogMDAwMDAwMDAwMDAwZjA5MSBSMTU6IAo+PiBmZmZmODg4MDU2NDJiODAwCj4+IFvCoCAxMDMu
ODQ1NDEwXSBGUzrCoCAwMDAwN2VmY2QwNjg1MmMwKDAwMDApIEdTOmZmZmY4ODgwNmQxMDAwMDAo
MDAwMCkgCj4+IGtubEdTOjAwMDAwMDAwMDAwMDAwMDAKPj4gW8KgIDEwMy44NDU3MzRdIENTOsKg
IDAwMTAgRFM6IDAwMDAgRVM6IDAwMDAgQ1IwOiAwMDAwMDAwMDgwMDUwMDMzCj4+IFvCoCAxMDMu
ODQ1OTY2XSBDUjI6IDAwMDA3ZWZjY2Y5NGY4ZGMgQ1IzOiAwMDAwMDAwMDY0ODEwMDAwIENSNDog
Cj4+IDAwMDAwMDAwMDAwMDA2ZTAKPj4gW8KgIDEwMy44NDYyNTRdIERSMDogMDAwMDAwMDAwMDAw
MDAwMCBEUjE6IDAwMDAwMDAwMDAwMDAwMDAgRFIyOiAKPj4gMDAwMDAwMDAwMDAwMDAwMAo+PiBb
wqAgMTAzLjg0NjUzOV0gRFIzOiAwMDAwMDAwMDAwMDAwMDAwIERSNjogMDAwMDAwMDBmZmZlMGZm
MCBEUjc6IAo+PiAwMDAwMDAwMDAwMDAwNDAwCj4+IFvCoCAxMDMuODQ2ODIzXSBDYWxsIFRyYWNl
Ogo+PiBbwqAgMTAzLjg0NjkyNV3CoCA8SVJRPgo+PiBbwqAgMTAzLjg0NzAxM13CoCA/IGUxMDAw
X2NsZWFuX3J4X2lycSsweDMxMS8weDYzMAo+PiBbwqAgMTAzLjg0NzE5MF3CoCBza2JfcHV0LmNv
bGQrMHgyYi8weDRkCj4+IFvCoCAxMDMuODQ3MzM0XcKgIGUxMDAwX2NsZWFuX3J4X2lycSsweDMx
MS8weDYzMAo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBUb25nIFpoYW5nIDx6dG9uZzAwMDFAZ21haWwu
Y29tPgo+PiAtLS0KPj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRl
di5jIHwgNCArKysrCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKPj4KPj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYyAK
Pj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMKPj4gaW5kZXgg
NjY0ZThjY2M4OGQyLi5mMTJiZDAwYjJkYmYgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYwo+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMKPj4gQEAgLTEwNDcsNiArMTA0NywxMCBAQCBzdGF0aWMg
Ym9vbCBlMTAwMF9jbGVhbl9yeF9pcnEoc3RydWN0IAo+PiBlMTAwMF9yaW5nICpyeF9yaW5nLCBp
bnQgKndvcmtfZG9uZSwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+PiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAvKiBlbHNlIGp1c3QgY29udGludWUgd2l0aCB0aGUgb2xkIG9u
ZSAqLwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+PiArwqDCoMKgwqDCoMKgwqAgLyogY2hlY2sg
bGVuZ3RoIHNhbml0eSAqLwo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKHNrYi0+dGFpbCArIGxlbmd0
aCA+IHNrYi0+ZW5kKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxlbmd0aCA9IHNrYi0+
ZW5kIC0gc2tiLT50YWlsOwo+PiArwqDCoMKgwqDCoMKgwqAgfQo+PiDCoMKgwqDCoMKgwqDCoMKg
wqAgLyogZW5kIGNvcHlicmVhayBjb2RlICovCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBza2JfcHV0
KHNrYiwgbGVuZ3RoKTsKPj4KPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IEludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKPiBJbnRlbC13aXJl
ZC1sYW5Ab3N1b3NsLm9yZwo+IGh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLXdpcmVkLWxhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
