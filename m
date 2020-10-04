Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1371928291D
	for <lists+intel-wired-lan@lfdr.de>; Sun,  4 Oct 2020 07:58:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 249EC84476;
	Sun,  4 Oct 2020 05:58:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a5zIC1AL1TuR; Sun,  4 Oct 2020 05:58:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B9A1C841B4;
	Sun,  4 Oct 2020 05:58:50 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 59DAD1BF5A4
 for <intel-wired-lan@osuosl.org>; Sun,  4 Oct 2020 05:58:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4FCA5846AD
 for <intel-wired-lan@osuosl.org>; Sun,  4 Oct 2020 05:58:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7xHtWtEP7zap for <intel-wired-lan@osuosl.org>;
 Sun,  4 Oct 2020 05:58:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0821D84115
 for <intel-wired-lan@osuosl.org>; Sun,  4 Oct 2020 05:58:46 +0000 (UTC)
IronPort-SDR: Ht/4NAktAzyFfx3wrajQ5weQfnwjhn1brqwQjcGd9ak+uCiKUkAgrnR2znKZvm8OvLlugw3pnX
 oilsKzxZixQw==
X-IronPort-AV: E=McAfee;i="6000,8403,9763"; a="224887264"
X-IronPort-AV: E=Sophos;i="5.77,334,1596524400"; d="scan'208";a="224887264"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2020 22:58:45 -0700
IronPort-SDR: qeEel8W/zybHQLekuTckZo4CIbMsKIXI0brcUIZOrEvg4aj458pdKW/me409S2ZCFzffjGWBbS
 A4qQ78W1zJtg==
X-IronPort-AV: E=Sophos;i="5.77,334,1596524400"; d="scan'208";a="518212113"
Received: from sneftin-mobl.ger.corp.intel.com (HELO [10.251.179.145])
 ([10.251.179.145])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2020 22:58:42 -0700
To: intel-wired-lan@osuosl.org, "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Neftin, Sasha" <sasha.neftin@intel.com>
References: <20200908162330.4681-1-ztong0001@gmail.com>
 <d8c2fdeb-0ae1-5633-7cef-61607fb22d39@intel.com>
 <ee2f6552-aee1-a601-7d24-ed18b6c756ed@intel.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <2b44c5f0-4749-ca10-4d51-1ea9cc20793c@intel.com>
Date: Sun, 4 Oct 2020 08:58:39 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <ee2f6552-aee1-a601-7d24-ed18b6c756ed@intel.com>
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

T24gMTAvMS8yMDIwIDExOjAyLCBOZWZ0aW4sIFNhc2hhIHdyb3RlOgo+IEhlbGxvIFRvbmcsCj4g
T24gOS8xMC8yMDIwIDExOjIyLCBOZWZ0aW4sIFNhc2hhIHdyb3RlOgo+PiBPbiA5LzgvMjAyMCAx
OToyMywgVG9uZyBaaGFuZyB3cm90ZToKPj4+IGxlbmd0aCBtYXkgYmUgY29ycnVwdGVkIGluIHJ4
X2Rlc2MgYW5kIGxlYWQgdG8gcGFuaWMsIHNvIGNoZWNrIHRoZQo+Pj4gc2FuaXR5IGJlZm9yZSBw
YXNzaW5nIGl0IHRvIHNrYl9wdXQKPj4+Cj4+IFRvbmcsIHdoYXQgaXMgc2NlbmFyaW8gY2F1c2Vk
IHRvIHNrYiBwYW5pYz8gSG93IGl0IGlzIGhhcHBlbiBvbiB5b3VyIAo+PiBzeXN0ZW0/IENhbiB5
b3UgcGxlYXNlIHNoYXJlIHRoZSB0ZXN0IGhpbnQgYW5kIHlvdXIgc2V0dXAgd2l0aCB1cz8KPiBQ
bGVhc2UsIHNoYXJlIHlvdXIgc2NlbmFyaW8gYW5kIHNldHVwIGRldGFpbHMgKEhXIHNldHRpbmdz
LCBCSU9TLCAKPiBLZXJuZWwsIGV0Yy4uLikuIFdlIHdvdWxkIGxpa2UgdG8gdW5kZXJzdGFuZCBo
b3cgZXhhY3RseSBsZW5ndGggCj4gY29ycnVwdGlvbiBpcyBoYXBwZW4uCj4gClNpbmNlIG5vIHdh
eSB0byByZXByb2R1Y2UgdGhlIHByb2JsZW0sIEkgd291bGQgcmVjb21tZW5kIGRyb3BwaW5nIHRo
aXMgCnBhdGNoLgo+IFRoYW5rcywKPiBTYXNoYQo+IAo+Pj4gW8KgIDEwMy44NDA1NzJdIHNrYnVm
Zjogc2tiX292ZXJfcGFuaWM6IHRleHQ6ZmZmZmZmZmY4ZjQzMmNjMSAKPj4+IGxlbjo2MTU4NSBw
dXQ6NjE1ODUgaGVhZDpmZmZmODg4MDU2NDJiODAwIGRhdGE6ZmZmZjg4ODA1NjQyYjg0MCAKPj4+
IHRhaWw6MHhmMGQxIGVuZDoweDZjMCBkZXY6ZQo+Pj4gdGgwCj4+PiBbwqAgMTAzLjg0MTI4M10g
LS0tLS0tLS0tLS0tWyBjdXQgaGVyZSBdLS0tLS0tLS0tLS0tCj4+PiBbwqAgMTAzLjg0MTUxNV0g
a2VybmVsIEJVRyBhdCBuZXQvY29yZS9za2J1ZmYuYzoxMDkhCj4+PiBbwqAgMTAzLjg0MTc0OV0g
aW52YWxpZCBvcGNvZGU6IDAwMDAgWyMxXSBTTVAgREVCVUdfUEFHRUFMTE9DIEtBU0FOIFBUSQo+
Pj4gW8KgIDEwMy44NDIwNjNdIENQVTogMSBQSUQ6IDI3NiBDb21tOiBwaW5nIFRhaW50ZWQ6IEfC
oMKgwqDCoMKgwqDCoCBXIDUuOC4wKyAjNAo+Pj4gW8KgIDEwMy44NDI4NTddIFJJUDogMDAxMDpz
a2JfcGFuaWMrMHhjNC8weGM2Cj4+PiBbwqAgMTAzLjg0MzAyMl0gQ29kZTogODkgZjAgNDggYzcg
YzcgNjAgZjIgM2UgOTAgNTUgNDggOGIgNzQgMjQgMTggNGQgCj4+PiA4OSBmOSA1NiA0OCA4YiA1
NCAyNCAxOCA0YyA4OSBlNiA1MiA0OCA4YiA0NCAyNCAxOCA0YyA4OSBlYSA1MCBlOCAwMSAKPj4+
IGM1IDJhIGZmIDwwZj4KPj4+IDBiIDRjIDhiIDY0IDI0IDE4IGU4IGMxIGI0IDQ4IGZmIDQ4IGM3
IGMxIGUwIGZjIDNlIDkwIDQ0IDg5IGVlCj4+PiBbwqAgMTAzLjg0Mzc2Nl0gUlNQOiAwMDE4OmZm
ZmY4ODgwNmQxMDljNTggRUZMQUdTOiAwMDAxMDI4Mgo+Pj4gW8KgIDEwMy44NDM5NzZdIFJBWDog
MDAwMDAwMDAwMDAwMDA4YyBSQlg6IGZmZmY4ODgwNjgzNDA3YzAgUkNYOiAKPj4+IDAwMDAwMDAw
MDAwMDAwMDAKPj4+IFvCoCAxMDMuODQ0MjYyXSBSRFg6IDFmZmZmMTEwMGRhMjRjOTEgUlNJOiAw
MDAwMDAwMDAwMDAwMDA4IFJESTogCj4+PiBmZmZmZWQxMDBkYTIxMzdlCj4+PiBbwqAgMTAzLjg0
NDU0OF0gUkJQOiBmZmZmODg4MDZiZGNjMDAwIFIwODogMDAwMDAwMDAwMDAwMDA4YyBSMDk6IAo+
Pj4gZmZmZmVkMTAwZGEyNWNmYgo+Pj4gW8KgIDEwMy44NDQ4MzRdIFIxMDogZmZmZjg4ODA2ZDEy
ZTdkNyBSMTE6IGZmZmZlZDEwMGRhMjVjZmEgUjEyOiAKPj4+IGZmZmZmZmZmOTAzZWZkMjAKPj4+
IFvCoCAxMDMuODQ1MTIzXSBSMTM6IGZmZmZmZmZmOGY0MzJjYzEgUjE0OiAwMDAwMDAwMDAwMDBm
MDkxIFIxNTogCj4+PiBmZmZmODg4MDU2NDJiODAwCj4+PiBbwqAgMTAzLjg0NTQxMF0gRlM6wqAg
MDAwMDdlZmNkMDY4NTJjMCgwMDAwKSBHUzpmZmZmODg4MDZkMTAwMDAwKDAwMDApIAo+Pj4ga25s
R1M6MDAwMDAwMDAwMDAwMDAwMAo+Pj4gW8KgIDEwMy44NDU3MzRdIENTOsKgIDAwMTAgRFM6IDAw
MDAgRVM6IDAwMDAgQ1IwOiAwMDAwMDAwMDgwMDUwMDMzCj4+PiBbwqAgMTAzLjg0NTk2Nl0gQ1Iy
OiAwMDAwN2VmY2NmOTRmOGRjIENSMzogMDAwMDAwMDA2NDgxMDAwMCBDUjQ6IAo+Pj4gMDAwMDAw
MDAwMDAwMDZlMAo+Pj4gW8KgIDEwMy44NDYyNTRdIERSMDogMDAwMDAwMDAwMDAwMDAwMCBEUjE6
IDAwMDAwMDAwMDAwMDAwMDAgRFIyOiAKPj4+IDAwMDAwMDAwMDAwMDAwMDAKPj4+IFvCoCAxMDMu
ODQ2NTM5XSBEUjM6IDAwMDAwMDAwMDAwMDAwMDAgRFI2OiAwMDAwMDAwMGZmZmUwZmYwIERSNzog
Cj4+PiAwMDAwMDAwMDAwMDAwNDAwCj4+PiBbwqAgMTAzLjg0NjgyM10gQ2FsbCBUcmFjZToKPj4+
IFvCoCAxMDMuODQ2OTI1XcKgIDxJUlE+Cj4+PiBbwqAgMTAzLjg0NzAxM13CoCA/IGUxMDAwX2Ns
ZWFuX3J4X2lycSsweDMxMS8weDYzMAo+Pj4gW8KgIDEwMy44NDcxOTBdwqAgc2tiX3B1dC5jb2xk
KzB4MmIvMHg0ZAo+Pj4gW8KgIDEwMy44NDczMzRdwqAgZTEwMDBfY2xlYW5fcnhfaXJxKzB4MzEx
LzB4NjMwCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogVG9uZyBaaGFuZyA8enRvbmcwMDAxQGdtYWls
LmNvbT4KPj4+IC0tLQo+Pj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25l
dGRldi5jIHwgNCArKysrCj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCj4+
Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRk
ZXYuYyAKPj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jCj4+
PiBpbmRleCA2NjRlOGNjYzg4ZDIuLmYxMmJkMDBiMmRiZiAxMDA2NDQKPj4+IC0tLSBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYwo+Pj4gKysrIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jCj4+PiBAQCAtMTA0Nyw2ICsxMDQ3LDEw
IEBAIHN0YXRpYyBib29sIGUxMDAwX2NsZWFuX3J4X2lycShzdHJ1Y3QgCj4+PiBlMTAwMF9yaW5n
ICpyeF9yaW5nLCBpbnQgKndvcmtfZG9uZSwKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IH0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qIGVsc2UganVzdCBjb250aW51ZSB3
aXRoIHRoZSBvbGQgb25lICovCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+Pj4gK8KgwqDCoMKg
wqDCoMKgIC8qIGNoZWNrIGxlbmd0aCBzYW5pdHkgKi8KPj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAo
c2tiLT50YWlsICsgbGVuZ3RoID4gc2tiLT5lbmQpIHsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGxlbmd0aCA9IHNrYi0+ZW5kIC0gc2tiLT50YWlsOwo+Pj4gK8KgwqDCoMKgwqDCoMKgIH0K
Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCAvKiBlbmQgY29weWJyZWFrIGNvZGUgKi8KPj4+IMKgwqDC
oMKgwqDCoMKgwqDCoCBza2JfcHV0KHNrYiwgbGVuZ3RoKTsKPj4+Cj4+Cj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEludGVsLXdpcmVkLWxhbiBt
YWlsaW5nIGxpc3QKPj4gSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKPj4gaHR0cHM6Ly9saXN0
cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCj4gClRoYW5rcywK
U2FzaGEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRw
czovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
