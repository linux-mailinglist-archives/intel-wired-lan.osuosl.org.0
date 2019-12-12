Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 754DF11D8CE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Dec 2019 22:51:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C742C8897B;
	Thu, 12 Dec 2019 21:51:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 90geKjcm8bPV; Thu, 12 Dec 2019 21:51:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7D4418895B;
	Thu, 12 Dec 2019 21:51:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7A7321BF3BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 21:51:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6C6D588345
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 21:51:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bCJ0p8WvTD7J for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2019 21:51:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9E14C88344
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 21:51:01 +0000 (UTC)
Received: from [192.168.0.8] (ip5f5bd290.dynamic.kabel-deutschland.de
 [95.91.210.144])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 5A9FC20645E90;
 Thu, 12 Dec 2019 22:50:58 +0100 (CET)
To: Sasha Neftin <sasha.neftin@intel.com>
References: <20191212112941.10923-1-sasha.neftin@intel.com>
 <e2b09135-7910-2290-297f-f8e690caa214@molgen.mpg.de>
 <5825cb7b-04f1-0fea-6de4-feb6239f70d0@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <f2eeeaec-3b0d-9a0f-3ddc-408ce85bb874@molgen.mpg.de>
Date: Thu, 12 Dec 2019 22:50:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <5825cb7b-04f1-0fea-6de4-feb6239f70d0@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Add PHY power management
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBTYXNoYSwKCgpBbSAxMi4xMi4xOSB1bSAxMzowOCBzY2hyaWViIE5lZnRpbiwgU2FzaGE6
Cj4gT24gMTIvMTIvMjAxOSAxMzozMywgUGF1bCBNZW56ZWwgd3JvdGU6Cgo+PiBPbiAyMDE5LTEy
LTEyIDEyOjI5LCBTYXNoYSBOZWZ0aW4gd3JvdGU6Cj4+PiBQSFkgcG93ZXIgbWFuYWdlbWVudCBj
b250cm9sIHNob3VsZCBwcm92aWRlIGEgcmVsaWFibGUgYW5kIGFjY3VyYXRlCj4+PiBpbmRpY2F0
aW9uIG9mIFBIWSByZXNldCBjb21wbGV0aW9uIGFuZCBkZWNyZWFzZSB0aGUgZGVsYXkgdGltZQo+
Pj4gYWZ0ZXIgYSBQSFkgcmVzZXQKPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBTYXNoYSBOZWZ0aW4g
PHNhc2hhLm5lZnRpbkBpbnRlbC5jb20+Cj4+PiAtLS0KPj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lnYy9pZ2NfZGVmaW5lcy5oIHwgMSArCj4+PiDCoCBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pZ2MvaWdjX3BoeS5jwqDCoMKgwqAgfCA5ICsrKysrKysrKwo+Pj4gwqAgZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19yZWdzLmjCoMKgwqAgfCAxICsKPj4+IMKg
IDMgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX2RlZmluZXMuaCAKPj4+IGIvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19kZWZpbmVzLmgKPj4+IGluZGV4IDIxMjFmYzM0
ZTMwMC4uNzFhNGIwMjgxYzAzIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWdjL2lnY19kZWZpbmVzLmgKPj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2lnYy9pZ2NfZGVmaW5lcy5oCj4+PiBAQCAtNDYwLDYgKzQ2MCw3IEBACj4+PiDCoCAvKiBQ
SFkgU3RhdHVzIFJlZ2lzdGVyICovCj4+PiDCoCAjZGVmaW5lIE1JSV9TUl9MSU5LX1NUQVRVU8Kg
wqDCoCAweDAwMDQgLyogTGluayBTdGF0dXMgMSA9IGxpbmsgKi8KPj4+IMKgICNkZWZpbmUgTUlJ
X1NSX0FVVE9ORUdfQ09NUExFVEXCoMKgwqAgMHgwMDIwIC8qIEF1dG8gTmVnIENvbXBsZXRlICov
Cj4+PiArI2RlZmluZSBJR0NfUEhZX1JTVF9DT01QwqDCoMKgIDB4MDEwMCAvKiBJbnRlcm5hbCBQ
SFkgcmVzZXQgY29tcGxldGlvbiAqLwo+Pj4gwqAgLyogUEhZIDEwMDAgTUlJIFJlZ2lzdGVyL0Jp
dCBEZWZpbml0aW9ucyAqLwo+Pj4gwqAgLyogUEhZIFJlZ2lzdGVycyBkZWZpbmVkIGJ5IElFRUUg
Ki8KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3Bo
eS5jIAo+Pj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3BoeS5jCj4+PiBp
bmRleCBmNGIwNWFmMGRkMmYuLmUxOWU4NjFkZjcxOSAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcGh5LmMKPj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lnYy9pZ2NfcGh5LmMKPj4+IEBAIC0xNzMsNiArMTczLDcgQEAgczMyIGln
Y19jaGVja19kb3duc2hpZnQoc3RydWN0IGlnY19odyAqaHcpCj4+PiDCoCBzMzIgaWdjX3BoeV9o
d19yZXNldChzdHJ1Y3QgaWdjX2h3ICpodykKPj4+IMKgIHsKPj4+IMKgwqDCoMKgwqAgc3RydWN0
IGlnY19waHlfaW5mbyAqcGh5ID0gJmh3LT5waHk7Cj4+PiArwqDCoMKgIHUzMiBwaHBtID0gMCwg
dGltZW91dCA9IDEwMDAwOwo+Pgo+PiBKdXN0IHVzZSBgdW5zaWduZWQgaW50YCBmb3IgYHRpbWVv
dXRgPwo+Pgo+IHUzMiBpcyB1bnNpZ25lZCBpbnQuCgpZZWFoLCBidXQgeW91IGNvbnN0cmFpbiB0
aGUgc2l6ZS4gV2h5IG5vdCB1c2UgdGhlIG5hdGl2ZSB0eXBlIGZvciB0aGUgCmdpdmVuIGFyY2hp
dGVjdHVyZT8gSXQgd29u4oCZdCBiZSBub3RpY2VhYmxlIGluIHNpemUgYW5kIHNwZWVkLCBidXQg
aXTigJlzIAptb3JlIGNsZWFuZXIuCgo+PiBwaHBtIGRvZXMgbm90IG5lZWQgdG8gYmUgaW5pdGlh
bGl6ZWQgdG8gMD8KPiBSU1RfQ09NUCBpbmRpY2F0aW9uIGluIHRoZSBQSFBNIHJlZ2lzdGVyIGlz
IGNsZWFyIG9uIHJlYWRpbmcuIEkgb25jZSAKPiAncmVhZCcgdGhlIFBIUE0gYmVmb3JlIHBvbGxp
bmcgYW5kIG1ha2Ugc3VyZSB6ZXJvIHZhbHVlLgoKU29ycnksIEkgZG8gbm90IHVuZGVyc3RhbmQu
IEkgc3VnZ2VzdCB0byBqdXN0IGRlY2xhcmUgdGhlIHZhcmlhYmxlLgoKICAgICB1MzIgcGhwbTsK
Cj4+PiDCoMKgwqDCoMKgIHMzMsKgIHJldF92YWw7Cj4+PiDCoMKgwqDCoMKgIHUzMiBjdHJsOwo+
Pj4gQEAgLTE4Niw2ICsxODcsOCBAQCBzMzIgaWdjX3BoeV9od19yZXNldChzdHJ1Y3QgaWdjX2h3
ICpodykKPj4+IMKgwqDCoMKgwqAgaWYgKHJldF92YWwpCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAg
Z290byBvdXQ7Cj4+PiArwqDCoMKgIHBocG0gPSByZDMyKElHQ19JMjI1X1BIUE0pOwoKSGVyZSB5
b3UgYXJlIG1ha2luZyBzdXJlLCB0aGF0IGl04oCZcyBzZXQuCgo+Pj4gKwo+Pj4gwqDCoMKgwqDC
oCBjdHJsID0gcmQzMihJR0NfQ1RSTCk7Cj4+PiDCoMKgwqDCoMKgIHdyMzIoSUdDX0NUUkwsIGN0
cmwgfCBJR0NfQ1RSTF9QSFlfUlNUKTsKPj4+IMKgwqDCoMKgwqAgd3JmbCgpOwo+Pj4gQEAgLTE5
NSw2ICsxOTgsMTIgQEAgczMyIGlnY19waHlfaHdfcmVzZXQoc3RydWN0IGlnY19odyAqaHcpCj4+
PiDCoMKgwqDCoMKgIHdyMzIoSUdDX0NUUkwsIGN0cmwpOwo+Pj4gwqDCoMKgwqDCoCB3cmZsKCk7
Cj4+PiArwqDCoMKgIGRvIHsKPj4+ICvCoMKgwqDCoMKgwqDCoCBwaHBtID0gcmQzMihJR0NfSTIy
NV9QSFBNKTsKPj4+ICvCoMKgwqDCoMKgwqDCoCB0aW1lb3V0LS07Cj4+PiArwqDCoMKgwqDCoMKg
wqAgdWRlbGF5KDEpOwo+Pj4gK8KgwqDCoCB9IHdoaWxlICghKHBocG0gJiBJR0NfUEhZX1JTVF9D
T01QKSAmJiB0aW1lb3V0KTsKPj4KPj4gUHJpbnQgYW4gZXJyb3IsIHdoZW4gdGhlIHRpbWVvdXQg
aXMgcmVhY2hlZD8KPiBHb29kIGlkZWEuIEkgd2lsbCBhZGQgaHdfZGJnIGluIHYyLiBUaGFua3Mu
Cj4+Cj4+PiArCj4+PiDCoMKgwqDCoMKgIHVzbGVlcF9yYW5nZSgxNTAwLCAyMDAwKTsKPj4+IMKg
wqDCoMKgwqAgcGh5LT5vcHMucmVsZWFzZShodyk7Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19yZWdzLmggCj4+PiBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lnYy9pZ2NfcmVncy5oCj4+PiBpbmRleCBjODIxMTEwNTE4OTguLjE2NGM0MmIz
OWRmYSAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2Nf
cmVncy5oCj4+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3JlZ3Mu
aAo+Pj4gQEAgLTEyLDYgKzEyLDcgQEAKPj4+IMKgICNkZWZpbmUgSUdDX01ESUPCoMKgwqDCoMKg
wqDCoCAweDAwMDIwwqAgLyogTURJIENvbnRyb2wgLSBSVyAqLwo+Pj4gwqAgI2RlZmluZSBJR0Nf
TURJQ05GR8KgwqDCoMKgwqDCoMKgIDB4MDBFMDTCoCAvKiBNREMvTURJTyBDb25maWd1cmF0aW9u
IC0gUlcgKi8KPj4+IMKgICNkZWZpbmUgSUdDX0NPTk5TV8KgwqDCoMKgwqDCoMKgIDB4MDAwMzTC
oCAvKiBDb3BwZXIvRmliZXIgc3dpdGNoIGNvbnRyb2wgLSAKPj4+IFJXICovCj4+PiArI2RlZmlu
ZSBJR0NfSTIyNV9QSFBNwqDCoMKgwqDCoMKgwqAgMHgwMEUxNMKgwqDCoMKgIC8qIEkyMjUgUEhZ
IFBvd2VyIAo+Pj4gTWFuYWdlbWVudCAqLwo+Pj4gwqAgLyogSW50ZXJuYWwgUGFja2V0IEJ1ZmZl
ciBTaXplIFJlZ2lzdGVycyAqLwo+Pj4gwqAgI2RlZmluZSBJR0NfUlhQQlPCoMKgwqDCoMKgwqDC
oCAweDAyNDA0wqAgLyogUnggUGFja2V0IEJ1ZmZlciBTaXplIC0gUlcgKi8KCj4gVGhhbmsgeW91
IHZlcnkgbXVjaCBmb3IgeW91ciBjb21tZW50cy4KCk5vIHByb2JsZW0uIFRoYW5rIHlvdSBmb3Ig
dGhlIGNvbW1pdHMuCgoKS2luZCByZWdhcmRzLAoKUGF1bApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cklu
dGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
