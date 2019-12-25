Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAFF012A850
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Dec 2019 15:18:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4086C86372;
	Wed, 25 Dec 2019 14:18:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6ZsleE4onSI1; Wed, 25 Dec 2019 14:18:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8246C85C56;
	Wed, 25 Dec 2019 14:17:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 648181BF317
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Dec 2019 14:17:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5FF8685964
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Dec 2019 14:17:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m1BqXTHeFEEj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Dec 2019 14:17:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A4E5F85960
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Dec 2019 14:17:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Dec 2019 06:17:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,355,1571727600"; d="scan'208";a="207854188"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.23.132])
 ([10.185.23.132])
 by orsmga007.jf.intel.com with ESMTP; 25 Dec 2019 06:17:53 -0800
From: "Neftin, Sasha" <sasha.neftin@intel.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, "Neftin, Sasha" <sasha.neftin@intel.com>
References: <20191212173650.14210-1-sasha.neftin@intel.com>
 <87imml5t8z.fsf@linux.intel.com>
 <f46101da-8d48-84a3-3229-653a36e6e1ae@intel.com>
Message-ID: <2a042920-d948-9b08-826d-492e4f81ec83@intel.com>
Date: Wed, 25 Dec 2019 16:17:52 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <f46101da-8d48-84a3-3229-653a36e6e1ae@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v2] igc: Add PHY power management
 control
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

T24gMTIvMTIvMjAxOSAyMDowMCwgTmVmdGluLCBTYXNoYSB3cm90ZToKPiBPbiAxMi8xMi8yMDE5
IDE5OjQ5LCBWaW5pY2l1cyBDb3N0YSBHb21lcyB3cm90ZToKPj4KPj4gU2FzaGEgTmVmdGluIDxz
YXNoYS5uZWZ0aW5AaW50ZWwuY29tPiB3cml0ZXM6Cj4+Cj4+PiBQSFkgcG93ZXIgbWFuYWdlbWVu
dCBjb250cm9sIHNob3VsZCBwcm92aWRlIGEgcmVsaWFibGUgYW5kIGFjY3VyYXRlCj4+PiBpbmRp
Y2F0aW9uIG9mIFBIWSByZXNldCBjb21wbGV0aW9uIGFuZCBkZWNyZWFzZSB0aGUgZGVsYXkgdGlt
ZQo+Pj4gYWZ0ZXIgYSBQSFkgcmVzZXQKPj4+Cj4+PiB2MSAtPiB2MjogYWRkIGh3X2RiZyBwcmlu
dCBmb3IgYSB0aW1lb3V0Cj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogU2FzaGEgTmVmdGluIDxzYXNo
YS5uZWZ0aW5AaW50ZWwuY29tPgo+Pj4gLS0tCj4+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pZ2MvaWdjX2RlZmluZXMuaCB8wqAgMSArCj4+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2MvaWdjX3BoeS5jwqDCoMKgwqAgfCAxMiArKysrKysrKysrKysKPj4+IMKgIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcmVncy5owqDCoMKgIHzCoCAxICsKPj4+
IMKgIDMgZmlsZXMgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKQo+Pj4KPj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX2RlZmluZXMuaCAKPj4+IGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19kZWZpbmVzLmgKPj4+IGluZGV4IDIxMjFm
YzM0ZTMwMC4uNzFhNGIwMjgxYzAzIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWdjL2lnY19kZWZpbmVzLmgKPj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2lnYy9pZ2NfZGVmaW5lcy5oCj4+PiBAQCAtNDYwLDYgKzQ2MCw3IEBACj4+PiDCoCAv
KiBQSFkgU3RhdHVzIFJlZ2lzdGVyICovCj4+PiDCoCAjZGVmaW5lIE1JSV9TUl9MSU5LX1NUQVRV
U8KgwqDCoCAweDAwMDQgLyogTGluayBTdGF0dXMgMSA9IGxpbmsgKi8KPj4+IMKgICNkZWZpbmUg
TUlJX1NSX0FVVE9ORUdfQ09NUExFVEXCoMKgwqAgMHgwMDIwIC8qIEF1dG8gTmVnIENvbXBsZXRl
ICovCj4+PiArI2RlZmluZSBJR0NfUEhZX1JTVF9DT01QwqDCoMKgIDB4MDEwMCAvKiBJbnRlcm5h
bCBQSFkgcmVzZXQgY29tcGxldGlvbiAqLwo+Pj4gwqAgLyogUEhZIDEwMDAgTUlJIFJlZ2lzdGVy
L0JpdCBEZWZpbml0aW9ucyAqLwo+Pj4gwqAgLyogUEhZIFJlZ2lzdGVycyBkZWZpbmVkIGJ5IElF
RUUgKi8KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdj
X3BoeS5jIAo+Pj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3BoeS5jCj4+
PiBpbmRleCBmNGIwNWFmMGRkMmYuLmE1NDgzMzY4NjkwYSAxMDA2NDQKPj4+IC0tLSBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcGh5LmMKPj4+ICsrKyBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcGh5LmMKPj4+IEBAIC0xNzMsNiArMTczLDcgQEAgczMy
IGlnY19jaGVja19kb3duc2hpZnQoc3RydWN0IGlnY19odyAqaHcpCj4+PiDCoCBzMzIgaWdjX3Bo
eV9od19yZXNldChzdHJ1Y3QgaWdjX2h3ICpodykKPj4+IMKgIHsKPj4+IMKgwqDCoMKgwqAgc3Ry
dWN0IGlnY19waHlfaW5mbyAqcGh5ID0gJmh3LT5waHk7Cj4+PiArwqDCoMKgIHUzMiBwaHBtID0g
MCwgdGltZW91dCA9IDEwMDAwOwo+Pj4gwqDCoMKgwqDCoCBzMzLCoCByZXRfdmFsOwo+Pj4gwqDC
oMKgwqDCoCB1MzIgY3RybDsKPj4+IEBAIC0xODYsNiArMTg3LDggQEAgczMyIGlnY19waHlfaHdf
cmVzZXQoc3RydWN0IGlnY19odyAqaHcpCj4+PiDCoMKgwqDCoMKgIGlmIChyZXRfdmFsKQo+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gb3V0Owo+Pj4gK8KgwqDCoCBwaHBtID0gcmQzMihJR0Nf
STIyNV9QSFBNKTsKPj4+ICsKPj4+IMKgwqDCoMKgwqAgY3RybCA9IHJkMzIoSUdDX0NUUkwpOwo+
Pj4gwqDCoMKgwqDCoCB3cjMyKElHQ19DVFJMLCBjdHJsIHwgSUdDX0NUUkxfUEhZX1JTVCk7Cj4+
PiDCoMKgwqDCoMKgIHdyZmwoKTsKPj4+IEBAIC0xOTUsNiArMTk4LDE1IEBAIHMzMiBpZ2NfcGh5
X2h3X3Jlc2V0KHN0cnVjdCBpZ2NfaHcgKmh3KQo+Pj4gwqDCoMKgwqDCoCB3cjMyKElHQ19DVFJM
LCBjdHJsKTsKPj4+IMKgwqDCoMKgwqAgd3JmbCgpOwo+Pj4gK8KgwqDCoCBkbyB7Cj4+PiArwqDC
oMKgwqDCoMKgwqAgcGhwbSA9IHJkMzIoSUdDX0kyMjVfUEhQTSk7Cj4+PiArwqDCoMKgwqDCoMKg
wqAgdGltZW91dC0tOwo+Pj4gK8KgwqDCoMKgwqDCoMKgIHVkZWxheSgxKTsKPj4+ICvCoMKgwqAg
fSB3aGlsZSAoIShwaHBtICYgSUdDX1BIWV9SU1RfQ09NUCkgJiYgdGltZW91dCk7Cj4+PiArCj4+
PiArwqDCoMKgIGlmICghdGltZW91dCkKPj4+ICvCoMKgwqDCoMKgwqDCoCBod19kYmcoIlRpbWVv
dWkgaXMgZXhwaXJlZCBhZnRlciBhIHBoeSByZXNldFxuIik7Cj4+Cj4+IG5pdHBpY2s6IFRpbWVv
dWkgLT4gVGltZW91dAo+Pgo+IHRoYW5rcyAtIEkgd2lsbCBzZW5kIHYzIGFuZCBmaXggdGhlIHR5
cG8KVW5mb3J0dW5hdGVseSwgUlNUX0NPTVBMIHNpZ25hbCBpbiBhIFBIWSBwb3dlciBtYW5hZ2Vt
ZW50IHJlZ2lzdGVycyAKc3RpbGwgbm90IHdvcmsgYXMgcHJvcGVybHkuIFBsZWFzZSwgZGlzcmVn
YXJkIHRoaXMgcGF0Y2guIFRoZSBSU1RfQ09NUEwgCmluZGljYXRpb24gc2hvdWxkIGJlIGZpeGVk
LiBJIHdpbGwgcmVsZWFzZSBhbm90aGVyIHBhdGNoIHNvLgo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KX19fX19fXwo+IEludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxp
c3QKPiBJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwo+IGh0dHBzOi8vbGlzdHMub3N1b3NsLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJ
bnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
