Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C82F502DC9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Apr 2022 18:36:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44C4A60D4C;
	Fri, 15 Apr 2022 16:36:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dcULEAnm2jyI; Fri, 15 Apr 2022 16:36:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4667360D55;
	Fri, 15 Apr 2022 16:36:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6D9761BF33A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 16:36:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 688F060D4C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 16:36:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TPikWsMyeEC9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Apr 2022 16:36:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B0B75607A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 16:36:35 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae925.dynamic.kabel-deutschland.de
 [95.90.233.37])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 2EF9C61EA192D;
 Fri, 15 Apr 2022 18:36:32 +0200 (CEST)
Message-ID: <280c31b8-9f70-a0b5-2450-510903bd0d4e@molgen.mpg.de>
Date: Fri, 15 Apr 2022 18:36:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Michal Michalik <michal.michalik@intel.com>
References: <20220414102358.13486-1-michal.michalik@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220414102358.13486-1-michal.michalik@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: fix PTP stale Tx
 timestamps cleanup
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

RGVhciBNaWNoYWwsCgoKVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLgoKQW0gMTQuMDQuMjIgdW0g
MTI6MjMgc2NocmllYiBNaWNoYWwgTWljaGFsaWs6Cj4gUmVhZCBzdGFsZSBQVFAgVHggdGltZXN0
YW1wcyBmcm9tIFBIWSBvbiBjbGVhbnVwLgo+IAo+IEFmdGVyIHJ1bm5pbmcgb3V0IG9mIFR4IHRp
bWVzdGFtcHMgcmVxdWVzdCBoYW5kbGVycyBoYXJkd2FyZSAoSFcpIHN0b3BzCj4gcmVwb3J0aW5n
IGZpbmlzaGVkIHJlcXVlc3RzLiBGdW5jdGlvbiBpY2VfcHRwX3R4X3RzdGFtcF9jbGVhbnVwKCkg
dXNlZAo+IHRvIG9ubHkgY2xlYW51cCBzdGFsZSBoYW5kbGVycyBpbiBkcml2ZXIgYW5kIHdhcyBs
ZWF2aW5nIHRoZSBoYXJkd2FyZQoKTml0OiBjbGVhbiB1cAoKPiByZWdpc3RlcnMgbm90IHJlYWQu
IE5vdCByZWFkaW5nIHN0YWxlIFBUUCBUeCB0aW1lc3RhbXBzIHByZXZlbnRzIG5leHQKPiBpbnRl
cnJ1cHRzIGZyb20gYXJyaXZpbmcgYW5kIG1ha2VzIHRpbWVzdGFtcGluZyBub3QgdXNhYmxlLgoK
Tml0OiB1bnVzYWJsZQoKRG8geW91IGhhdmUgYSBtZXRob2QsIGhvdyB0byBmb3JjZSB0aGUgbmV0
d29yayBkZXZpY2UgdG8gcnVuIG91dCBvZiAKdGltZXN0YW1wcyByZXF1ZXN0IGhhbmRsZXJzPwoK
PiBGaXhlczogZWE5Yjg0N2NkYTY0ICgiaWNlOiBlbmFibGUgdHJhbnNtaXQgdGltZXN0YW1wcyBm
b3IgRTgxMCBkZXZpY2VzIikKPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgTWljaGFsaWsgPG1pY2hh
bC5taWNoYWxpa0BpbnRlbC5jb20+Cj4gUmV2aWV3ZWQtYnk6IEphY29iIEtlbGxlciA8amFjb2Iu
ZS5rZWxsZXJAaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9wdHAuYyB8IDkgKysrKysrKy0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX3B0cC5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV9wdHAuYwo+IGluZGV4IGExY2QzMzIuLjgyNmE1MDggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuYwo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwLmMKPiBAQCAtMjI4Nyw2ICsyMjg3LDcgQEAgaWNlX3B0
cF9pbml0X3R4X2U4MTAoc3RydWN0IGljZV9wZiAqcGYsIHN0cnVjdCBpY2VfcHRwX3R4ICp0eCkK
PiAgIAo+ICAgLyoqCj4gICAgKiBpY2VfcHRwX3R4X3RzdGFtcF9jbGVhbnVwIC0gQ2xlYW51cCBv
bGQgdGltZXN0YW1wIHJlcXVlc3RzIHRoYXQgZ290IGRyb3BwZWQKPiArICogQGh3OiBwb2ludGVy
IHRvIHRoZSBodyBzdHJ1Y3QKPiAgICAqIEB0eDogUFRQIFR4IHRyYWNrZXIgdG8gY2xlYW4gdXAK
PiAgICAqCj4gICAgKiBMb29wIHRocm91Z2ggdGhlIFR4IHRpbWVzdGFtcCByZXF1ZXN0cyBhbmQg
c2VlIGlmIGFueSBvZiB0aGVtIGhhdmUgYmVlbgo+IEBAIC0yMjk1LDcgKzIyOTYsNyBAQCBpY2Vf
cHRwX2luaXRfdHhfZTgxMChzdHJ1Y3QgaWNlX3BmICpwZiwgc3RydWN0IGljZV9wdHBfdHggKnR4
KQo+ICAgICogdGltZXN0YW1wIHdpbGwgbmV2ZXIgYmUgY2FwdHVyZWQuIFRoaXMgbWlnaHQgaGFw
cGVuIGlmIHRoZSBwYWNrZXQgZ2V0cwo+ICAgICogZGlzY2FyZGVkIGJlZm9yZSBpdCByZWFjaGVz
IHRoZSBQSFkgdGltZXN0YW1waW5nIGJsb2NrLgo+ICAgICovCj4gLXN0YXRpYyB2b2lkIGljZV9w
dHBfdHhfdHN0YW1wX2NsZWFudXAoc3RydWN0IGljZV9wdHBfdHggKnR4KQo+ICtzdGF0aWMgdm9p
ZCBpY2VfcHRwX3R4X3RzdGFtcF9jbGVhbnVwKHN0cnVjdCBpY2VfaHcgKmh3LCBzdHJ1Y3QgaWNl
X3B0cF90eCAqdHgpCj4gICB7Cj4gICAJdTggaWR4Owo+ICAgCj4gQEAgLTIzMDQsMTEgKzIzMDUs
MTUgQEAgc3RhdGljIHZvaWQgaWNlX3B0cF90eF90c3RhbXBfY2xlYW51cChzdHJ1Y3QgaWNlX3B0
cF90eCAqdHgpCj4gICAKPiAgIAlmb3JfZWFjaF9zZXRfYml0KGlkeCwgdHgtPmluX3VzZSwgdHgt
Pmxlbikgewo+ICAgCQlzdHJ1Y3Qgc2tfYnVmZiAqc2tiOwo+ICsJCXU2NCByYXdfdHN0YW1wOwo+
ICAgCj4gICAJCS8qIENoZWNrIGlmIHRoaXMgU0tCIGhhcyBiZWVuIHdhaXRpbmcgZm9yIHRvbyBs
b25nICovCj4gICAJCWlmICh0aW1lX2lzX2FmdGVyX2ppZmZpZXModHgtPnRzdGFtcHNbaWR4XS5z
dGFydCArIDIgKiBIWikpCj4gICAJCQljb250aW51ZTsKPiAgIAo+ICsJCWljZV9yZWFkX3BoeV90
c3RhbXAoaHcsIHR4LT5xdWFkLCBpZHggKyB0eC0+cXVhZF9vZmZzZXQsCj4gKwkJCQkgICAgJnJh
d190c3RhbXApOwo+ICsKCkFyZSBjb21waWxlcnMgb3IgY29kZSBhbmFseXplciBnb2luZyB0byBj
b21wbGFpbiwgdGhhdCBub3RoaW5nIHdpbGwgYmUgCmRvbmUgd2l0aCBgcmF3X3RzdGFtcGA/IElz
IHRoZXJlIHNvbWUgYXR0cmlidXRlLCB0aGF0IGl04oCZcyB1bnVzZWQ/IE1heWJlIAphbHNvIGFk
ZCBhIGNvbW1lbnQsIHRoaXMgaXMganVzdCB0byByZWFkIHRoZSB2YWx1ZSwgYW5kIGl04oCZcyBu
b3QgZ29pbmcgCnRvIGJlIHVzZWQuCgo+ICAgCQlzcGluX2xvY2soJnR4LT5sb2NrKTsKPiAgIAkJ
c2tiID0gdHgtPnRzdGFtcHNbaWR4XS5za2I7Cj4gICAJCXR4LT50c3RhbXBzW2lkeF0uc2tiID0g
TlVMTDsKPiBAQCAtMjMzMCw3ICsyMzM1LDcgQEAgc3RhdGljIHZvaWQgaWNlX3B0cF9wZXJpb2Rp
Y193b3JrKHN0cnVjdCBrdGhyZWFkX3dvcmsgKndvcmspCj4gICAKPiAgIAlpY2VfcHRwX3VwZGF0
ZV9jYWNoZWRfcGhjdGltZShwZik7Cj4gICAKPiAtCWljZV9wdHBfdHhfdHN0YW1wX2NsZWFudXAo
JnBmLT5wdHAucG9ydC50eCk7Cj4gKwlpY2VfcHRwX3R4X3RzdGFtcF9jbGVhbnVwKCZwZi0+aHcs
ICZwZi0+cHRwLnBvcnQudHgpOwo+ICAgCj4gICAJLyogUnVuIHR3aWNlIGEgc2Vjb25kICovCj4g
ICAJa3RocmVhZF9xdWV1ZV9kZWxheWVkX3dvcmsocHRwLT5rd29ya2VyLCAmcHRwLT53b3JrLAoK
UmV2aWV3ZWQtYnk6IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+CgoKS2luZCBy
ZWdhcmRzLAoKUGF1bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
