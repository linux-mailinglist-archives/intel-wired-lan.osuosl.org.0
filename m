Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB37484623
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Aug 2019 09:47:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4DADA8746E;
	Wed,  7 Aug 2019 07:47:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s+nz9CynPnoT; Wed,  7 Aug 2019 07:47:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 26D2D8745D;
	Wed,  7 Aug 2019 07:47:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 07F071BF568
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2019 07:47:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 002688648C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2019 07:47:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IX-fJYuAGn4z for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2019 07:47:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 61A148652A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2019 07:47:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 00:47:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,356,1559545200"; d="scan'208";a="176885382"
Received: from vlifsht-mobl1.ger.corp.intel.com (HELO [10.185.169.50])
 ([10.185.169.50])
 by orsmga003.jf.intel.com with ESMTP; 07 Aug 2019 00:47:07 -0700
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20190804074026.25198-1-vitaly.lifshits@intel.com>
 <8829b684-518d-2233-d618-4f1367c2dbbd@molgen.mpg.de>
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Message-ID: <bc5fbdcb-6afe-dac0-b498-c5e26d539d6d@intel.com>
Date: Wed, 7 Aug 2019 10:47:06 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <8829b684-518d-2233-d618-4f1367c2dbbd@molgen.mpg.de>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v4] e1000e: PCIm function state support
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

RGVhciBQYXVsLAoKVGhhbmsgeW91IGFnYWluIGZvciB5b3VyIGNvbW1lbnRzLgpJIHNlbnQgYSBu
ZXcgdmVyc2lvbiBmb3IgbXkgcGF0Y2ggKFY1KS4KCk9uIDgvNC8yMDE5IDE2OjQ0LCBQYXVsIE1l
bnplbCB3cm90ZToKPiBEZWFyIFZpdGFseSwKPgo+Cj4gVGhhbmsgeW91IGZvciB0aGUgdXBkYXRl
ZCB2ZXJzaW9uLgo+Cj4gT24gMDQuMDguMTkgMDk6NDAsIFZpdGFseSBMaWZzaGl0cyB3cm90ZToK
Pj4gRHVlIHRvIGNvbW1pdDogNWQ4NjgyNTg4NjA1ICgiW21pc2NdIG1laTogbWU6IGFsbG93IHJ1
bnRpbWUKPj4gcG0gZm9yIHBsYXRmb3JtIHdpdGggRDBpMyIpCj4+IHdoZW4gZGlzY29ubmVjdGlu
ZyB0aGUgY2FibGUgYW5kIHJlY29ubmVjdGluZyBpdCB0aGUgTklDCj4+IGVudGVycyBETW9mZiBz
dGF0ZS4gVGhpcyBjYXVzZWQgd3JvbmcgbGluayBpbmRpY2F0aW9uCj4+IGFuZCBkdXBsZXggbWlz
bWF0Y2guCj4KPiAqYW5kKiBzaG91bGQgZml0IG9uIHRoZSBsaW5lIGFib3ZlLgo+Cj4+IENoZWNr
aW5nIFBDSW0gZnVuY3Rpb24gc3RhdGUgYW5kIHBlcmZvcm1pbmcgUEhZIHJlc2V0IGFmdGVyCj4+
IGV4aXRpbmcgRE1vZmYgc3RhdGUgaW4gd2F0Y2hkb2cgdGFzaywgc29sdmVzIHRoaXMgaXNzdWUu
Cj4+Cj4+IExpbms6IGh0dHBzOi8vYnVnemlsbGEucmVkaGF0LmNvbS9zaG93X2J1Zy5jZ2k/aWQ9
MTY4OTQzNgo+PiBTaWduZWQtb2ZmLWJ5OiBWaXRhbHkgTGlmc2hpdHMgPHZpdGFseS5saWZzaGl0
c0BpbnRlbC5jb20+Cj4+IC0tLQo+Pgo+PiBWMjogRml4IHR5cG9zIGluIGNvbW1pdCBtZXNzYWdl
Cj4+IFYzOiBGaXggbWlub3IgdHlwbwo+PiBWNDogQWRkcmVzcyBjb21tdW5pdHkgY29tbWVudHMK
Pj4gLS0tCj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9kZWZpbmVzLmgg
fMKgIDQgKysrKwo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2
LmPCoCB8IDIwICsrKysrKysrKysrKysrKysrKystCj4+IMKgIDIgZmlsZXMgY2hhbmdlZCwgMjMg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2RlZmluZXMuaCAKPj4gYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9lMTAwMGUvZGVmaW5lcy5oCj4+IGluZGV4IGZkNTUwZGVlNDk4Mi4uNGNmZjcz
Y2JkMDMyIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUv
ZGVmaW5lcy5oCj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9kZWZp
bmVzLmgKPj4gQEAgLTIyMiw2ICsyMjIsMTAgQEAKPj4gwqAgI2RlZmluZSBFMTAwMF9TVEFUVVNf
UEhZUkHCoMKgwqDCoMKgIDB4MDAwMDA0MDDCoMKgwqDCoMKgIC8qIFBIWSBSZXNldCAKPj4gQXNz
ZXJ0ZWQgKi8KPj4gwqAgI2RlZmluZSBFMTAwMF9TVEFUVVNfR0lPX01BU1RFUl9FTkFCTEXCoMKg
wqAgMHgwMDA4MDAwMMKgwqDCoCAvKiBNYXN0ZXIgCj4+IFJlcSBzdGF0dXMgKi8KPj4gwqAgKy8q
IFBDSW0gZnVuY3Rpb24gc3RhdGUgKi8KPj4gKyNkZWZpbmUgRTEwMDBfU1RBVFVTX1BDSU1fU1RB
VEXCoMKgwqAgMHg0MDAwMDAwMAo+PiArI2RlZmluZSBQQ0lNX0RNT0ZGX0VYSVRfVElNRU9VVCAx
MDAKPgo+IEFsaWduIHRoZSB2YWx1ZXM/Cj4KPj4gKwo+PiDCoCAjZGVmaW5lIEhBTEZfRFVQTEVY
IDEKPj4gwqAgI2RlZmluZSBGVUxMX0RVUExFWCAyCj4+IMKgIGRpZmYgLS1naXQgYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMgCj4+IGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jCj4+IGluZGV4IGI1ZmVkNjE3N2FkNi4uMmQyOWMw
ZDBiZTFiIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUv
bmV0ZGV2LmMKPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRl
di5jCj4+IEBAIC01MTYyLDcgKzUxNjIsNyBAQCBzdGF0aWMgdm9pZCBlMTAwMF93YXRjaGRvZ190
YXNrKHN0cnVjdCAKPj4gd29ya19zdHJ1Y3QgKndvcmspCj4+IMKgwqDCoMKgwqAgc3RydWN0IGUx
MDAwX3BoeV9pbmZvICpwaHkgPSAmYWRhcHRlci0+aHcucGh5Owo+PiDCoMKgwqDCoMKgIHN0cnVj
dCBlMTAwMF9yaW5nICp0eF9yaW5nID0gYWRhcHRlci0+dHhfcmluZzsKPj4gwqDCoMKgwqDCoCBz
dHJ1Y3QgZTEwMDBfaHcgKmh3ID0gJmFkYXB0ZXItPmh3Owo+PiAtwqDCoMKgIHUzMiBsaW5rLCB0
Y3RsOwo+PiArwqDCoMKgIHUzMiBsaW5rLCB0Y3RsLCBwY2ltX3N0YXRlLCB0cmllcyA9IDA7Cj4+
IMKgIMKgwqDCoMKgwqAgaWYgKHRlc3RfYml0KF9fRTEwMDBfRE9XTiwgJmFkYXB0ZXItPnN0YXRl
KSkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybjsKPj4gQEAgLTUxODcsNiArNTE4NywyNCBA
QCBzdGF0aWMgdm9pZCBlMTAwMF93YXRjaGRvZ190YXNrKHN0cnVjdCAKPj4gd29ya19zdHJ1Y3Qg
KndvcmspCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qIENhbmNlbCBzY2hlZHVsZWQg
c3VzcGVuZCByZXF1ZXN0cy4gKi8KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcG1fcnVu
dGltZV9yZXN1bWUobmV0ZGV2LT5kZXYucGFyZW50KTsKPj4gwqAgK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgLyogQ2hlY2tpbmcgaWYgTUFDIGlzIGluIERNb2ZmIHN0YXRlKi8KPgo+IHMvQ2hlY2tp
bmcvQ2hlY2svCj4KPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcGNpbV9zdGF0ZSA9IGVyMzIo
U1RBVFVTKTsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgd2hpbGUgKHBjaW1fc3RhdGUgJiBF
MTAwMF9TVEFUVVNfUENJTV9TVEFURSkgewo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGlmICh0cmllcysrID09IFBDSU1fRE1PRkZfRVhJVF9USU1FT1VUKSB7Cj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlX2RiZygiRXJyb3IgaW4gZXhpdGluZyBk
bW9mZlxuIik7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlX2Vy
cigiUENJbSBETW9mZiB0aW1lb3V0IGV4cGlyZWRcbiIpOwo+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgYnJlYWs7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgfQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVzbGVlcF9yYW5nZSgx
MDAwMCwgMjAwMDApOwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBjaW1fc3Rh
dGUgPSBlcjMyKFNUQVRVUyk7Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAvKiBJZiBNQUMgZW50ZXJlZCBETW9mZiBzdGF0ZSwgUEhZIHJlc2V0IGlzCj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIG5lZWRlZCBhZnRlciBleGl0aW5nIGl0Cj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqLwo+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGlmICghKHBjaW1fc3RhdGUgJiBFMTAwMF9TVEFUVVNfUENJTV9TVEFURSkp
Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlMTAwMF9waHlfaHdf
cmVzZXQoJmFkYXB0ZXItPmh3KTsKPgo+IEkgc3RpbGwgYmVsaWV2ZSwgdGhlIGlmIHN0YXRlbWVu
dCBzaG91bGQgYmUgbW92ZWQgKm91dHNpZGUqIHRoZSBsb29wLgoKVGhlIGlmIHN0YXRlbWVudCBo
YXMgdG8gc3RheSBpbiB0aGUgbG9vcCBzaW5jZSB0aGUgUEhZIHJlc2V0IGlzIG5lZWRlZCAKb25s
eSBpZiB0aGUgTUFDIGVudGVyZWQgRE1vZmYgc3RhdGUuCgo+Cj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIH0KPj4gKwo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvKiB1cGRhdGUgc25h
cHNob3Qgb2YgUEhZIHJlZ2lzdGVycyBvbiBMU0MgKi8KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgZTEwMDBfcGh5X3JlYWRfc3RhdHVzKGFkYXB0ZXIpOwo+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBtYWMtPm9wcy5nZXRfbGlua191cF9pbmZvKCZhZGFwdGVyLT5odywKPgo+Cj4g
S2luZCByZWdhcmRzLAo+Cj4gUGF1bAoKVGhhbmtzLAoKVml0YWx5CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBs
aXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
