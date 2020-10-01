Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA8B2809DE
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Oct 2020 00:07:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2683B864CF;
	Thu,  1 Oct 2020 22:07:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p0NKZSD1Nrgu; Thu,  1 Oct 2020 22:07:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D8B1386864;
	Thu,  1 Oct 2020 22:06:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 664101BF357
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 22:06:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4730820439
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 22:06:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 65TYu56JLMnT for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Oct 2020 22:06:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by silver.osuosl.org (Postfix) with ESMTPS id 2663A20433
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 22:06:51 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5af428.dynamic.kabel-deutschland.de
 [95.90.244.40])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id E0EF120646222;
 Fri,  2 Oct 2020 00:06:48 +0200 (CEST)
To: Jesse Brandeburg <jesse.brandeburg@gmail.com>
References: <20200918184152.604967-1-jesse.brandeburg@intel.com>
 <c270e596-b5db-005b-fa18-cd374981429c@molgen.mpg.de>
 <CAEuXFEwy5wbTwT+Xn_Ez-bPjmXpCrYaYf+x7ms=HWg5x_YztiA@mail.gmail.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <e9c38599-9da1-6c7f-2f93-e3dae64741ce@molgen.mpg.de>
Date: Fri, 2 Oct 2020 00:06:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <CAEuXFEwy5wbTwT+Xn_Ez-bPjmXpCrYaYf+x7ms=HWg5x_YztiA@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] e1000: remove unused and
 incorrect code
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

RGVhciBKZXNzZSwKCgpBbSAwMS4xMC4yMCB1bSAyMDowOCBzY2hyaWViIEplc3NlIEJyYW5kZWJ1
cmc6Cj4gT24gVGh1LCBPY3QgMSwgMjAyMCBhdCAxMjoyMiBBTSBQYXVsIE1lbnplbCA8cG1lbnpl
bEBtb2xnZW4ubXBnLmRlPiB3cm90ZToKPj4+IEZpeCB0aGlzIHdhcm5pbmcgYnkgcmVtb3Zpbmcg
dGhlIG9mZmVuZGluZyBjb2RlIGFuZCBzaW1wbGlmeWluZwo+Pj4gdGhlIHJvdXRpbmUgdG8gZG8g
ZXhhY3RseSB3aGF0IGl0IGRpZCBiZWZvcmUsIG5vIGZ1bmN0aW9uYWwKPj4+IGNoYW5nZS4KPj4K
Pj4gSXQgbG9va3MgbGlrZSB0aGlzIGZpeGVzIGNvbW1pdCAxNTMyZWNlYSAoZTEwMDA6IGRyb3Ag
ZGVhZCBwY2llIGNvZGUKPj4gZnJvbSBlMTAwMCkgcmVtb3Zpbmcgc3VwcG9ydCBmb3IgZTEwMDBf
ODI1NzM/Cj4gCj4gSXQgbWF5LCBidXQgdGhhdCBjb21taXQgaXMgZnJvbSAyMDA5LCBhbmQgc2lu
Y2UgdGhpcyBjb2RlIGNoYW5nZQo+IGFjdHVhbGx5IGRvZXNuJ3QgZml4IGFueSBidWcgSSBkaWRu
J3QgdGhpbmsgaXQgd2FzIGEpIHdvcnRoIGRhdmVtCj4gdGFyZ2V0aW5nIHRvIG5ldCwgYikgd29y
dGggdGhlIGJvdHMgcGlja2luZyB1cCBmb3IgYmFja3BvcnRpbmcgdG8KPiBzdGFibGUsIGFzIGl0
IGlzIGp1c3Qgd2FzdGUgb2YgdGltZSwgYW5kIG1heWJlIHdvdWxkbid0IGJlIGNvbnNpZGVyZWQK
PiBhcyBpbXBvcnRhbnQgZW5vdWdoIGZvciBzdGFibGUuCgpZb3UgZG8gbm90IGhhdmUgdG8gY3Jl
YXRlIGEgRml4ZXMgdGFnLCBidXQgbWVudGlvbmluZyBpdCBpbiB0aGUgY29tbWl0IAptZXNzYWdl
IGlzIHdlbGwgd2FycmFudGVkLCBhcyBpdOKAmXMgdW5jbGVhciwgd2h5IHRoZSBjb21wbGljYXRl
ZCBjb2RlIGlzIAp0aGVyZSBpbiB0aGUgZmlyc3QgcGxhY2UsIGFuZCBpdCB0b29rIG1lIHNldmVy
YWwgbWludXRlcyB0byBmaWd1cmUgaXQgb3V0LgoKPj4+IFNpZ25lZC1vZmYtYnk6IEplc3NlIEJy
YW5kZWJ1cmcgPGplc3NlLmJyYW5kZWJ1cmdAaW50ZWwuY29tPgo+Pj4gLS0tCj4+Pgo+Pj4gTk9U
RTogSSBkb24ndCByZWNvbW1lbmQgdGhpcyBnbyB0byBzdGFibGUgYXMgdGhlcmUgaXMgbm8gZnVu
Y3Rpb25hbAo+Pj4gY2hhbmdlLgo+IAo+IFlvdSdsbCBub3RlIEkgYXR0ZW1wdGVkIHRvIGFkZHJl
c3MgeW91ciBjb21tZW50IHdpdGggdGhlIGFib3ZlIGxpbmUKPiBldmVuIGJlZm9yZSB5b3UgbWFk
ZSBpdC4KCkkgZGlkbuKAmXQgd3JpdGUsIGl0IHNob3VsZCBiZSBhcHBsaWVkIHRvIHRoZSBzdGFi
bGUgc2VyaWVzLgoKPj4+IC0tLQo+Pj4gICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEw
MDAvZTEwMDBfaHcuYyB8IDEwICstLS0tLS0tLS0KPj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgOSBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDAvZTEwMDBfaHcuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2UxMDAwL2UxMDAwX2h3LmMKPj4+IGluZGV4IDIxMjBkYWNmZDU1Yy4uYzVkNzAyNTQz
ZGFhIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDAvZTEw
MDBfaHcuYwo+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDAvZTEwMDBf
aHcuYwo+Pj4gQEAgLTQ0MDMsMTcgKzQ0MDMsOSBAQCB2b2lkIGUxMDAwX3dyaXRlX3ZmdGEoc3Ry
dWN0IGUxMDAwX2h3ICpodywgdTMyIG9mZnNldCwgdTMyIHZhbHVlKQo+Pj4gICAgc3RhdGljIHZv
aWQgZTEwMDBfY2xlYXJfdmZ0YShzdHJ1Y3QgZTEwMDBfaHcgKmh3KQo+Pgo+PiAoV2h5IGlzIHRo
ZSBkaWZmIGFsc28gbWVudGlvbmluZyB0aGUgZnVuY3Rpb24gYmVmb3JlIGB2b2lkCj4+IGUxMDAw
X3dyaXRlX3ZmdGEoKWA/KQo+IAo+IFRoaXMgaXMgYW4gYXJ0aWZhY3Qgb2YgaG93IGRpZmYgd29y
a3MsIHNpbmNlIHRoZSBlMTAwMF9jbGVhcl92ZnRhCj4gZnVuY3Rpb24gd2FzIHBhcnQgb2YgdGhl
IGRpZmYgY29udGV4dCwgdGhlICJwcmV2aW91cyBmdW5jdGlvbiBzZWFyY2giCj4gdGhhdCBkaWZm
IGRvZXMgZm91bmQgd3JpdGVfdmZ0YS4gVGhlcmUgaXMgbm8gaXNzdWUgaGVyZSwgZXZlcnl0aGlu
ZyBpcwo+IHdvcmtpbmcgYXMgaXQgc2hvdWxkLgo+IAo+Pgo+Pj4gICAgewo+Pj4gICAgICAgIHUz
MiBvZmZzZXQ7Cj4+PiAtICAgICB1MzIgdmZ0YV92YWx1ZSA9IDA7Cj4+PiAtICAgICB1MzIgdmZ0
YV9vZmZzZXQgPSAwOwo+Pj4gLSAgICAgdTMyIHZmdGFfYml0X2luX3JlZyA9IDA7Cj4+Pgo+Pj4g
ICAgICAgIGZvciAob2Zmc2V0ID0gMDsgb2Zmc2V0IDwgRTEwMDBfVkxBTl9GSUxURVJfVEJMX1NJ
WkU7IG9mZnNldCsrKSB7Cj4+PiAtICAgICAgICAgICAgIC8qIElmIHRoZSBvZmZzZXQgd2Ugd2Fu
dCB0byBjbGVhciBpcyB0aGUgc2FtZSBvZmZzZXQgb2YgdGhlCj4+PiAtICAgICAgICAgICAgICAq
IG1hbmFnZWFiaWxpdHkgVkxBTiBJRCwgdGhlbiBjbGVhciBhbGwgYml0cyBleGNlcHQgdGhhdCBv
ZiB0aGUKPj4+IC0gICAgICAgICAgICAgICogbWFuYWdlYWJpbGl0eSB1bml0Cj4+PiAtICAgICAg
ICAgICAgICAqLwo+Pj4gLSAgICAgICAgICAgICB2ZnRhX3ZhbHVlID0gKG9mZnNldCA9PSB2ZnRh
X29mZnNldCkgPyB2ZnRhX2JpdF9pbl9yZWcgOiAwOwo+Pj4gLSAgICAgICAgICAgICBFMTAwMF9X
UklURV9SRUdfQVJSQVkoaHcsIFZGVEEsIG9mZnNldCwgdmZ0YV92YWx1ZSk7Cj4+PiArICAgICAg
ICAgICAgIEUxMDAwX1dSSVRFX1JFR19BUlJBWShodywgVkZUQSwgb2Zmc2V0LCAwKTsKPj4+ICAg
ICAgICAgICAgICAgIEUxMDAwX1dSSVRFX0ZMVVNIKCk7Cj4+PiAgICAgICAgfQo+Pj4gICAgfQo+
Pgo+PiBJdOKAmWQgYmUgZ3JlYXQgaWYgeW91IHVwZGF0ZWQgdGhlIGNvbW1pdCBkZXNjcmlwdGlv
bi4KPiAKPiBUaGFua3MgZm9yIHlvdXIgZmVlZGJhY2ssIGJ1dCBpbiB0aGlzIGNhc2UgSSBkb24n
dCB0aGluayB0aGVyZSBpcwo+IGFueXRoaW5nIHRvIGNoYW5nZSwgSSByZWNvbW1lbmQgd2Ugc2Vu
ZCB0aGUgcGF0Y2ggYXMtaXMuIEkgYXBwcmVjaWF0ZQo+IHlvdXIgdGltZSBzcGVudCByZXZpZXdp
bmchCgpUaGFuayB5b3UgZm9yIHRoZSByZXBseS4KCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxh
biBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5v
c3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
