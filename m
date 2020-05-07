Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C00B1C9E89
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 May 2020 00:37:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 56CC5897AE;
	Thu,  7 May 2020 22:37:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aHka9dUtPjpm; Thu,  7 May 2020 22:37:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9A245897AF;
	Thu,  7 May 2020 22:37:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5855F1BF327
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2020 22:37:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4E63B26DCD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2020 22:37:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fzpPdgde1JjS for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 May 2020 22:37:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by silver.osuosl.org (Postfix) with ESMTPS id 5D83626661
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2020 22:37:12 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5af0bb.dynamic.kabel-deutschland.de
 [95.90.240.187])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 3CBC3206442C1;
 Fri,  8 May 2020 00:37:09 +0200 (CEST)
To: Vitaly Lifshits <vitaly.lifshits@intel.com>
References: <20200507171406.6883-1-vitaly.lifshits@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <c48737dd-8d6e-cc3b-2e91-29c81de66957@molgen.mpg.de>
Date: Fri, 8 May 2020 00:37:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200507171406.6883-1-vitaly.lifshits@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1] e1000e: disable s0ix entry and
 exit flows for ME systems
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

RGVhciBWaXRhbHksCgoKQW0gMDcuMDUuMjAgdW0gMTk6MTQgc2NocmllYiBWaXRhbHkgTGlmc2hp
dHM6Cj4gU2luY2UgTUUgc3lzdGVtcyBkbyBub3Qgc3VwcG9ydCBTTFBfUzAgaW4gUzBpeCBzdGF0
ZSwgYW5kIFMwaXggZW50cnkKPiBhbmQgZXhpdCBmbG93cyBtYXkgY2F1c2UgZXJyb3JzIG9uIHRo
ZW0gaXQgaXMgYmVzdCB0byBhdm9pZCB1c2luZwo+IGUxMDAwZV9zMGl4X2VudHJ5X2Zsb3cgYW5k
IGUxMDAwZV9zMGl4X2V4aXRfZmxvdyBmdW5jdGlvbnMuCgpDYW4geW91IHBsZWFzZSBlbGFib3Jh
dGU/IEkgYW0gdW5hYmxlIHRvIHBhcnNlIHRoZSBzZW50ZW5jZS4gRG8geW91IG1lYW4gCnRoZSBT
TFBfUzAjIHNpZ25hbCBvbiBhIG1haW5ib2FyZD8gV2hhdCBhcmUg4oCcTUUgc3lzdGVtc+KAnT8g
RG8geW91IG1lYW4gQU1UPwoKV2hlcmUgaXMgdGhhdCBsaW1pdGF0aW9uIHlvdSBzdGF0ZSBkb2N1
bWVudGVkPwoKQWxzbyBwbGVhc2UgbWVudGlvbiwgdGhhdCB0aGVyZSBhcmUgcHJvYmxlbSByZXBv
cnRzLiAoQnV0IHdhc27igJl0IGl0IG9ubHkgCmZvciBzb21lIGRldmljZXM/KQoKPiBUaGlzIHdh
cyBkb25lIGJ5IGNyZWF0aW5nIGEgc3RydWN0IG9mIGFsbCBkZXZpY2VzIHRoYXQgY29tZXMgd2l0
aCBNRQo+IGFuZCBieSBjaGVja2luZyBpZiB0aGUgY3VycmVudCBkZXZpY2UgaGFzIE1FLgoKUGxl
YXNlIGxpc3QgdGhlIGJ1ZyByZXBvcnRzIGFuZCBkaXNjdXNzaW9ucy4gQWxzbywgcGxlYXNlIEND
IHRoZSAKYWZmZWN0ZWQgcGVvcGxlLgoKPiBTaWduZWQtb2ZmLWJ5OiBWaXRhbHkgTGlmc2hpdHMg
PHZpdGFseS5saWZzaGl0c0BpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMgfCA0NSArKysrKysrKysrKysrKysrKysrKysrKysrKysr
LS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA0MyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2
LmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMKPiBpbmRleCBl
MGIwNzQ4MjBiNDcuLjU3YWY2YjgxZDc5ZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9lMTAwMGUvbmV0ZGV2LmMKPiBAQCAtMTA3LDYgKzEwNyw0NSBAQCBzdGF0aWMgY29uc3Qg
c3RydWN0IGUxMDAwX3JlZ19pbmZvIGUxMDAwX3JlZ19pbmZvX3RibFtdID0gewo+ICAgCXswLCBO
VUxMfQo+ICAgfTsKPiAgIAo+ICtzdHJ1Y3QgZTEwMDBlX21lX3N1cHBvcnRlZCB7Cj4gKwl1MTYg
ZGV2aWNlX2lkOwkJLyogc3VwcG9ydGVkIGRldmljZSBJRCAqLwo+ICt9Owo+ICsKPiArc3RhdGlj
IGNvbnN0IHN0cnVjdCBlMTAwMGVfbWVfc3VwcG9ydGVkIG1lX3N1cHBvcnRlZFtdID0gewo+ICsJ
e0UxMDAwX0RFVl9JRF9QQ0hfTFBUX0kyMTdfTE19LAo+ICsJe0UxMDAwX0RFVl9JRF9QQ0hfTFBU
TFBfSTIxOF9MTX0sCj4gKwl7RTEwMDBfREVWX0lEX1BDSF9JMjE4X0xNMn0sCj4gKwl7RTEwMDBf
REVWX0lEX1BDSF9JMjE4X0xNM30sCj4gKwl7RTEwMDBfREVWX0lEX1BDSF9TUFRfSTIxOV9MTX0s
Cj4gKwl7RTEwMDBfREVWX0lEX1BDSF9TUFRfSTIxOV9MTTJ9LAo+ICsJe0UxMDAwX0RFVl9JRF9Q
Q0hfTEJHX0kyMTlfTE0zfSwKPiArCXtFMTAwMF9ERVZfSURfUENIX1NQVF9JMjE5X0xNNH0sCj4g
Kwl7RTEwMDBfREVWX0lEX1BDSF9TUFRfSTIxOV9MTTV9LAo+ICsJe0UxMDAwX0RFVl9JRF9QQ0hf
Q05QX0kyMTlfTE02fSwKPiArCXtFMTAwMF9ERVZfSURfUENIX0NOUF9JMjE5X0xNN30sCj4gKwl7
RTEwMDBfREVWX0lEX1BDSF9JQ1BfSTIxOV9MTTh9LAo+ICsJe0UxMDAwX0RFVl9JRF9QQ0hfSUNQ
X0kyMTlfTE05fSwKPiArCXtFMTAwMF9ERVZfSURfUENIX0NNUF9JMjE5X0xNMTB9LAo+ICsJe0Ux
MDAwX0RFVl9JRF9QQ0hfQ01QX0kyMTlfTE0xMX0sCj4gKwl7RTEwMDBfREVWX0lEX1BDSF9DTVBf
STIxOV9MTTEyfSwKPiArCXtFMTAwMF9ERVZfSURfUENIX1RHUF9JMjE5X0xNMTN9LAo+ICsJe0Ux
MDAwX0RFVl9JRF9QQ0hfVEdQX0kyMTlfTE0xNH0sCj4gKwl7RTEwMDBfREVWX0lEX1BDSF9UR1Bf
STIxOV9MTTE1fSwKPiArCXswfQo+ICt9Owo+ICsKPiArc3RhdGljIGJvb2wgZTEwMDBlX2NoZWNr
X21lKHUxNiBkZXZpY2VfaWQpCj4gK3sKPiArCXN0cnVjdCBlMTAwMGVfbWVfc3VwcG9ydGVkICpp
ZDsKPiArCj4gKwlmb3IgKGlkID0gKHN0cnVjdCBlMTAwMGVfbWVfc3VwcG9ydGVkICopbWVfc3Vw
cG9ydGVkOwo+ICsJICAgICBpZC0+ZGV2aWNlX2lkOyBpZCsrKQo+ICsJCWlmIChkZXZpY2VfaWQg
PT0gaWQtPmRldmljZV9pZCkKPiArCQkJcmV0dXJuIHRydWU7Cj4gKwo+ICsJcmV0dXJuIGZhbHNl
Owo+ICt9Cj4gKwo+ICAgLyoqCj4gICAgKiBfX2V3MzJfcHJlcGFyZSAtIHByZXBhcmUgdG8gd3Jp
dGUgdG8gTUFDIENTUiByZWdpc3RlciBvbiBjZXJ0YWluIHBhcnRzCj4gICAgKiBAaHc6IHBvaW50
ZXIgdG8gdGhlIEhXIHN0cnVjdHVyZQo+IEBAIC02OTEyLDcgKzY5NTEsOCBAQCBzdGF0aWMgaW50
IGUxMDAwZV9wbV9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPiAgIAkJZTEwMDBlX3BtX3Ro
YXcoZGV2KTsKPiAgIAo+ICAgCS8qIEludHJvZHVjZSBTMGl4IGltcGxlbWVudGF0aW9uICovCj4g
LQlpZiAoaHctPm1hYy50eXBlID49IGUxMDAwX3BjaF9jbnApCj4gKwlpZiAoaHctPm1hYy50eXBl
ID49IGUxMDAwX3BjaF9jbnAgJiYKPiArCSAgICAhZTEwMDBlX2NoZWNrX21lKGh3LT5hZGFwdGVy
LT5wZGV2LT5kZXZpY2UpKQo+ICAgCQllMTAwMGVfczBpeF9lbnRyeV9mbG93KGFkYXB0ZXIpOwo+
ICAgCj4gICAJcmV0dXJuIHJjOwo+IEBAIC02OTI3LDcgKzY5NjcsOCBAQCBzdGF0aWMgaW50IGUx
MDAwZV9wbV9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQo+ICAgCWludCByYzsKPiAgIAo+ICAg
CS8qIEludHJvZHVjZSBTMGl4IGltcGxlbWVudGF0aW9uICovCj4gLQlpZiAoaHctPm1hYy50eXBl
ID49IGUxMDAwX3BjaF9jbnApCj4gKwlpZiAoaHctPm1hYy50eXBlID49IGUxMDAwX3BjaF9jbnAg
JiYKPiArCSAgICAhZTEwMDBlX2NoZWNrX21lKGh3LT5hZGFwdGVyLT5wZGV2LT5kZXZpY2UpKQo+
ICAgCQllMTAwMGVfczBpeF9leGl0X2Zsb3coYWRhcHRlcik7Cj4gICAKPiAgIAlyYyA9IF9fZTEw
MDBfcmVzdW1lKHBkZXYpOwo+IAoKCktpbmQgcmVnYXJkcywKClBhdWwKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
