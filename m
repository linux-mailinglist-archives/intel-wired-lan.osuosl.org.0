Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB46648AF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jul 2019 16:53:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DCE7121F76;
	Wed, 10 Jul 2019 14:53:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kjt3PpFkJU0E; Wed, 10 Jul 2019 14:53:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C182B2156F;
	Wed, 10 Jul 2019 14:53:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 565F91BF23C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2019 14:53:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 50D9186ADB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2019 14:53:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sOwrFCxh9s2T for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jul 2019 14:53:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7794B869EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2019 14:53:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 07:53:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,474,1557212400"; d="scan'208";a="341096567"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.133.85])
 ([10.185.133.85])
 by orsmga005.jf.intel.com with ESMTP; 10 Jul 2019 07:53:36 -0700
To: Paul Menzel <pmenzel@molgen.mpg.de>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>
References: <20190625143911.37284-1-vitaly.lifshits@intel.com>
 <9e661c44-4547-58a1-fc90-64132eda2e80@molgen.mpg.de>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <3363d8cb-a2f0-2918-7a39-3e5c8fef4999@intel.com>
Date: Wed, 10 Jul 2019 17:53:35 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <9e661c44-4547-58a1-fc90-64132eda2e80@molgen.mpg.de>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v3] e1000e: PCIm function state support
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

T24gNi8yOC8yMDE5IDExOjU3LCBQYXVsIE1lbnplbCB3cm90ZToKPiBEZWFyIFZpdGFseSwKPiAK
PiAKPiBUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4gU29tZSBzdWdnZXN0aW9ucyBiZWxvdy4KPiAK
PiBPbiAwNi8yNS8xOSAxNjozOSwgVml0YWx5IExpZnNoaXRzIHdyb3RlOgo+PiBEdWUgdG8gY29t
bWl0OiA1ZDg2ODI1ODg2MDUgKCJbbWlzY10gbWVpOiBtZTogYWxsb3cgcnVudGltZQo+PiAJCQlw
bSBmb3IgcGxhdGZvcm0gd2l0aCBEMGkzIikKPiAKPiBEbyBub3QgaW5kZW50IGl0IGJ1dCBpbnRl
Z3JhdGUgaXQgaW50byB0aGUgbGluZS4KPiAKPj4gV2hlbiBkaXNjb25uZWN0aW5nIHRoZSBjYWJs
ZSBhbmQgcmVjb25uZWN0aW5nIGl0IHRoZSBOSUMKPiAKPiBzL1doZW4vd2hlbi8KPiAKPj4gZW50
ZXJzIERNb2ZmIHN0YXRlLiBUaGlzIGNhdXNlZCB3cm9uZyBsaW5rIGluZGljYXRpb24KPj4gYW5k
IGR1cGxleCBtaXNtYXRjaC4gVGhpcyBidWcgaXMgZGVzY3JpYmVkIGluOgo+PiBodHRwczovL2J1
Z3ppbGxhLnJlZGhhdC5jb20vc2hvd19idWcuY2dpP2lkPTE2ODk0MzYKPiAKPiBJc27igJl0IHRo
ZXJlIGEgdGFnIExpbms6IG9yIEJ1Z3ppbGxhOiB0byBtZW50aW9uIHRoZXNlIFVSTHM/Cj4gTWF5
YmUgYWRkIGl0IGJlbG93PyAoU2VlIGBnaXQgbG9nIC0tZ3JlcCBidWd6aWxsYWAgZm9yIGhvdyB0
aGlzCj4gaXMgdXNlZC4pCj4gCj4+IENoZWNraW5nIFBDSW0gZnVuY3Rpb24gc3RhdGUgYW5kIHBl
cmZvcm1pbmcgUEhZIHJlc2V0IGFmdGVyIGEKPj4gdGltZW91dCBpbiB3YXRjaGRvZyB0YXNrIHNv
bHZlcyB0aGlzIGlzc3VlLgo+IAo+IEluIHdoYXQgZGF0YSBzaGVldCBpcyB0aGUgZnVuY3Rpb24g
c3RhdGUgZGVzY3JpYmVkPwo+IAo+PiBTaWduZWQtb2ZmLWJ5OiBWaXRhbHkgTGlmc2hpdHMgPHZp
dGFseS5saWZzaGl0c0BpbnRlbC5jb20+Cj4+IC0tLQo+Pgo+PiBWMjogRml4ZWQgdHlwb3MgaW4g
Y29tbWl0IG1hc3NhZ2UKPj4gVjM6IEZpeGVkIG1pbm9yIHR5cG8KPj4gLS0tCj4+ICAgZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2RlZmluZXMuaCB8ICAzICsrKwo+PiAgIGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYyAgfCAxOCArKysrKysrKysrKysr
KysrKy0KPj4gICAyIGZpbGVzIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9k
ZWZpbmVzLmggYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvZGVmaW5lcy5oCj4+
IGluZGV4IGZkNTUwZGVlNDk4Mi4uMTM4NzdmZTMwMGYxIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvZGVmaW5lcy5oCj4+ICsrKyBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2UxMDAwZS9kZWZpbmVzLmgKPj4gQEAgLTIyMiw2ICsyMjIsOSBAQAo+
PiAgICNkZWZpbmUgRTEwMDBfU1RBVFVTX1BIWVJBICAgICAgMHgwMDAwMDQwMCAgICAgIC8qIFBI
WSBSZXNldCBBc3NlcnRlZCAqLwo+PiAgICNkZWZpbmUgRTEwMDBfU1RBVFVTX0dJT19NQVNURVJf
RU5BQkxFCTB4MDAwODAwMDAJLyogTWFzdGVyIFJlcSBzdGF0dXMgKi8KPj4gICAKPj4gKy8qIFBD
SW0gZnVuY3Rpb24gc3RhdGUgKi8KPj4gKyNkZWZpbmUgRTEwMDBfU1RBVFVTX1BDSU1fU1RBVEUg
ICAgICAgICAweDQwMDAwMDAwCj4gCj4gU2hvdWxkbuKAmXQgdGhlIG5hbWUgYmUgc29tZXRoaW5n
IEUxMDAwX1NUQVRVU19QQ0lNX1NUQVRFX0RNT0ZGPwo+IAo+PiArCj4+ICAgI2RlZmluZSBIQUxG
X0RVUExFWCAxCj4+ICAgI2RlZmluZSBGVUxMX0RVUExFWCAyCj4+ICAgCj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMgYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMKPj4gaW5kZXggYjA4MWExZWY2ODU5Li5j
NmExMGZkMzBlNGUgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2Ux
MDAwZS9uZXRkZXYuYwo+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUv
bmV0ZGV2LmMKPj4gQEAgLTUxNzMsOCArNTE3Myw5IEBAIHN0YXRpYyB2b2lkIGUxMDAwX3dhdGNo
ZG9nX3Rhc2soc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQo+PiAgIAlzdHJ1Y3QgZTEwMDBfbWFj
X2luZm8gKm1hYyA9ICZhZGFwdGVyLT5ody5tYWM7Cj4+ICAgCXN0cnVjdCBlMTAwMF9waHlfaW5m
byAqcGh5ID0gJmFkYXB0ZXItPmh3LnBoeTsKPj4gICAJc3RydWN0IGUxMDAwX3JpbmcgKnR4X3Jp
bmcgPSBhZGFwdGVyLT50eF9yaW5nOwo+PiArCXUzMiBkbW9mZl9leGl0X3RpbWVvdXQgPSAxMDAs
IHRyaWVzID0gMDsKPiAKPiBTaG91bGRu4oCZdCBhIG1hY3JvIGJlIHVzZWQgZm9yIHRoZSB0aW1l
LW91dCB2YWx1ZT8KPiAKPj4gICAJc3RydWN0IGUxMDAwX2h3ICpodyA9ICZhZGFwdGVyLT5odzsK
Pj4gLQl1MzIgbGluaywgdGN0bDsKPj4gKwl1MzIgbGluaywgdGN0bCwgcGNpbV9zdGF0ZTsKPj4g
ICAKPj4gICAJaWYgKHRlc3RfYml0KF9fRTEwMDBfRE9XTiwgJmFkYXB0ZXItPnN0YXRlKSkKPj4g
ICAJCXJldHVybjsKPj4gQEAgLTUxOTksNiArNTIwMCwyMSBAQCBzdGF0aWMgdm9pZCBlMTAwMF93
YXRjaGRvZ190YXNrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKPj4gICAJCQkvKiBDYW5jZWwg
c2NoZWR1bGVkIHN1c3BlbmQgcmVxdWVzdHMuICovCj4+ICAgCQkJcG1fcnVudGltZV9yZXN1bWUo
bmV0ZGV2LT5kZXYucGFyZW50KTsKPj4gICAKPj4gKwkJCS8qIENoZWNraW5nIGlmIE1BQyBpcyBp
biBETW9mZiBzdGF0ZSovCj4+ICsJCQlwY2ltX3N0YXRlID0gZXIzMihTVEFUVVMpOwo+PiArCQkJ
d2hpbGUgKHBjaW1fc3RhdGUgJiBFMTAwMF9TVEFUVVNfUENJTV9TVEFURSkgewo+PiArCQkJCWlm
ICh0cmllcysrID09IGRtb2ZmX2V4aXRfdGltZW91dCkgewo+PiArCQkJCQllX2RiZygiRXJyb3Ig
aW4gZXhpdGluZyBkbW9mZlxuIik7Cj4gCj4gU2hvdWxkbuKAmXQgdGhpcyBiZSBhIHVzZXIgdmlz
aWJsZSBlcnJvciBtZXNzYWdlPyBJZiBzbywgcGxlYXNlIGVsYWJvcmF0ZSBhbmQKPiBtZW50aW9u
IHRoZSB0aW1lLW91dC4KPiAKPj4gQ291bGRu4oCZdCBleGl0IERNb2ZmIGFmdGVyICVpIHMuIFlv
dXIgY2FyZCBtaWdodCBub3Qgd29yayBjb3JyZWN0bHksCj4+IFRJTUVPVVRNQUNST05BTUUKPiAK
Pj4gKwkJCQkJYnJlYWs7Cj4+ICsJCQkJfQo+PiArCQkJCXVzbGVlcF9yYW5nZSgxMDAwMCwgMjAw
MDApOwo+PiArCQkJCXBjaW1fc3RhdGUgPSBlcjMyKFNUQVRVUyk7Cj4+ICsKPj4gKwkJCQkvKiBD
aGVja2luZyBpZiBNQUMgZXhpdGVkIERNb2ZmIHN0YXRlICovCj4+ICsJCQkJaWYgKCEocGNpbV9z
dGF0ZSAmIEUxMDAwX1NUQVRVU19QQ0lNX1NUQVRFKSkKPiAKPiBJZiB0aGUgbWFjcm8gbmFtZSBp
cyBtb3JlIHNwZWNpZmljLCB0aGUgY29tbWVudCBjb3VsZCBiZSByZW1vdmVkLiBJZiBub3QsCj4g
dGhlIGNvbW1lbnQgc2hvdWxkIHVzZSBpbXBlcmF0aXZlIG1vb2QgKGFzIGJlbG93KTogQ2hlY2sg
aWYg4oCmLgo+IAo+IEFsc28gY2FuIHRoZSB3aGlsZSBsb29wIGFuZCBpZiBjb25kaXRpb24gYmUg
cmVmYWN0b3JlZCwgYXMgdGhlIGNvbmRpdGlvbgo+IGNoZWNrIGlmIHRoZSBzYW1lPwo+IAo+PiAr
CQkJCQllMTAwMF9waHlfaHdfcmVzZXQoJmFkYXB0ZXItPmh3KTsKPj4gKwkJCX0KPj4gKwo+PiAg
IAkJCS8qIHVwZGF0ZSBzbmFwc2hvdCBvZiBQSFkgcmVnaXN0ZXJzIG9uIExTQyAqLwo+PiAgIAkJ
CWUxMDAwX3BoeV9yZWFkX3N0YXR1cyhhZGFwdGVyKTsKPj4gICAJCQltYWMtPm9wcy5nZXRfbGlu
a191cF9pbmZvKCZhZGFwdGVyLT5odywKPiAKPiAKPiBLaW5kIHJlZ2FyZHMsCj4gCj4gUGF1bAo+
IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
SW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdAo+IEludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3Jn
Cj4gaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQt
bGFuCj4gClBhdWwsIHRoYW5rcyBmb3IgeW91ciBjb21tZW50cy4gSSB3b3JrZWQgd2l0aCBWaXRh
bGlrIG9uIHRoaXMgLSB3ZSB3aWxsIAphZGRyZXNzIHlvdXIgc3VnZ2VzdGlvbnMgYW5kIHJlLXN1
Ym1pdCB0aGUgcGF0Y2guCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2ly
ZWQtbGFuCg==
