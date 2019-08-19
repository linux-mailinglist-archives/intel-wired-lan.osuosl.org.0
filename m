Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2F092766
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Aug 2019 16:48:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D70F887D36;
	Mon, 19 Aug 2019 14:47:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 54Y-xvhkDMUb; Mon, 19 Aug 2019 14:47:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5F8E187DD4;
	Mon, 19 Aug 2019 14:47:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9611D1BF36B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2019 14:47:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 91C5C87DCC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2019 14:47:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d9iRLcSqAvos for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Aug 2019 14:47:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A8FA087DB2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2019 14:47:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 07:47:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,405,1559545200"; d="scan'208";a="180382468"
Received: from klaatz-mobl1.ger.corp.intel.com (HELO [10.237.221.61])
 ([10.237.221.61])
 by orsmga003.jf.intel.com with ESMTP; 19 Aug 2019 07:47:52 -0700
To: Maxim Mikityanskiy <maximmi@mellanox.com>
References: <20190724051043.14348-1-kevin.laatz@intel.com>
 <20190730085400.10376-1-kevin.laatz@intel.com>
 <20190730085400.10376-8-kevin.laatz@intel.com>
 <bc0c966f-4cda-4d48-566f-f5bff376210a@mellanox.com>
 <390f80fc-3f8a-a9ed-6ac7-8a1a41621559@mellanox.com>
From: "Laatz, Kevin" <kevin.laatz@intel.com>
Message-ID: <68cc44b5-7846-ec0b-4cb1-99dbe7faabcc@intel.com>
Date: Mon, 19 Aug 2019 15:47:52 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <390f80fc-3f8a-a9ed-6ac7-8a1a41621559@mellanox.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 07/11] mlx5e: modify
 driver for handling offsets
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
Cc: "jakub.kicinski@netronome.com" <jakub.kicinski@netronome.com>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "ciara.loftus@intel.com" <ciara.loftus@intel.com>,
 "ast@kernel.org" <ast@kernel.org>,
 "stephen@networkplumber.org" <stephen@networkplumber.org>,
 Saeed Mahameed <saeedm@mellanox.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>,
 "bruce.richardson@intel.com" <bruce.richardson@intel.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "bjorn.topel@intel.com" <bjorn.topel@intel.com>,
 "magnus.karlsson@intel.com" <magnus.karlsson@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTkvMDgvMjAxOSAxNTozNiwgTWF4aW0gTWlraXR5YW5za2l5IHdyb3RlOgo+IE9uIDIwMTkt
MDgtMDEgMTM6MDUsIE1heGltIE1pa2l0eWFuc2tpeSB3cm90ZToKPj4gT24gMjAxOS0wNy0zMCAx
MTo1MywgS2V2aW4gTGFhdHogd3JvdGU6Cj4+PiBXaXRoIHRoZSBhZGRpdGlvbiBvZiB0aGUgdW5h
bGlnbmVkIGNodW5rcyBvcHRpb24sIHdlIG5lZWQgdG8gbWFrZSBzdXJlIHdlCj4+PiBoYW5kbGUg
dGhlIG9mZnNldHMgYWNjb3JkaW5nbHkgYmFzZWQgb24gdGhlIG1vZGUgd2UgYXJlIGN1cnJlbnRs
eSBydW5uaW5nCj4+PiBpbi4gVGhpcyBwYXRjaCBtb2RpZmllcyB0aGUgZHJpdmVyIHRvIGFwcHJv
cHJpYXRlbHkgbWFzayB0aGUgYWRkcmVzcyBmb3IKPj4+IGVhY2ggY2FzZS4KPj4+Cj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBLZXZpbiBMYWF0eiA8a2V2aW4ubGFhdHpAaW50ZWwuY29tPgo+PiBQbGVhc2Ug
bm90ZSB0aGF0IHRoaXMgcGF0Y2ggZG9lc24ndCBhY3R1YWxseSBhZGQgdGhlIHN1cHBvcnQgZm9y
IHRoZSBuZXcKPj4gZmVhdHVyZSwgYmVjYXVzZSB0aGUgdmFsaWRhdGlvbiBjaGVja3MgaW4gbWx4
NWVfcnhfZ2V0X2xpbmVhcl9mcmFnX3N6Cj4+IGFuZCBtbHg1ZV92YWxpZGF0ZV94c2tfcGFyYW0g
bmVlZCB0byBiZSByZWxheGVkLiBDdXJyZW50bHkgdGhlIGZyYW1lCj4+IHNpemUgb2YgUEFHRV9T
SVpFIGlzIGZvcmNlZCwgYW5kIHRoZSBmcmFnbWVudCBzaXplIGlzIGluY3JlYXNlZCB0bwo+PiBQ
QUdFX1NJWkUgaW4gY2FzZSBvZiBYRFAgKGluY2x1ZGluZyBYU0spLgo+Pgo+PiBBZnRlciBtYWtp
bmcgdGhlIGNoYW5nZXMgcmVxdWlyZWQgdG8gcGVybWl0IGZyYW1lIHNpemVzIHNtYWxsZXIgdGhh
bgo+PiBQQUdFX1NJWkUsIG91ciBTdHJpZGluZyBSUSBmZWF0dXJlIHdpbGwgYmUgdXNlZCBpbiBh
IHdheSB3ZSBoYXZlbid0IHVzZWQKPj4gaXQgYmVmb3JlLCBzbyB3ZSBuZWVkIHRvIHZlcmlmeSB3
aXRoIHRoZSBoYXJkd2FyZSB0ZWFtIHRoYXQgdGhpcyB1c2FnZQo+PiBpcyBsZWdpdGltYXRlLgo+
IEFmdGVyIGRpc2N1c3NpbmcgaXQgaW50ZXJuYWxseSwgd2UgZm91bmQgYSB3YXkgdG8gc3VwcG9y
dCB1bmFsaWduZWQgWFNLCj4gd2l0aCBTdHJpZGluZyBSUSwgYW5kIHRoZSBoYXJkd2FyZSBpcyBj
b21wYXRpYmxlIHdpdGggdGhpcyB3YXkuIEkgaGF2ZQo+IHBlcmZvcm1lZCBzb21lIHRlc3Rpbmcs
IGFuZCBpdCBsb29rcyB3b3JraW5nLgpHcmVhdCBuZXdzISA6LSkKPgo+IFlvdXIgcGF0Y2ggb25s
eSBhZGRzIHN1cHBvcnQgZm9yIHRoZSBuZXcgaGFuZGxlIGZvcm1hdCB0byBvdXIgZHJpdmVyLAo+
IGFuZCBJJ3ZlIG1hZGUgYW5vdGhlciBwYXRjaCB0aGF0IGFjdHVhbGx5IGVuYWJsZXMgdGhlIG5l
dyBmZWF0dXJlIChtYWtlcwo+IG1seDVlIGFjY2VwdCBmcmFtZSBzaXplcyBkaWZmZXJlbnQgZnJv
bSBQQUdFX1NJWkUpLiBJdCdzIGN1cnJlbnRseSBvbgo+IGludGVybmFsIHJldmlldy4KVGhhbmtz
IGZvciB0YWtpbmcgdGhlIHRpbWUgdG8gcHJlcGFyZSB0aGUgcGF0Y2ghCj4KPiBQbGVhc2UgYWxz
byBkb24ndCBmb3JnZXQgdG8gZml4IHRoZSBzL19oYW5kbGVfL19hZGp1c3RfLyB0eXBvLgoKSSBo
YXZlIGZpeGVkIGl0IGluIHRoZSBuZXh0IHZlcnNpb24gKGFsc28gY3VycmVudGx5IG9uIGludGVy
bmFsIHJldmlldykuCgpSZWdhcmRzLAoKS2V2aW4KCj4KPj4+IC0tLQo+Pj4gdjM6Cj4+PiAgwqDC
oCAtIFVzZSBuZXcgaGVscGVyIGZ1bmN0aW9uIHRvIGhhbmRsZSBvZmZzZXQKPj4+Cj4+PiB2NDoK
Pj4+ICDCoMKgIC0gZml4ZWQgaGVhZHJvb20gYWRkaXRpb24gdG8gaGFuZGxlLiBVc2luZyB4c2tf
dW1lbV9hZGp1c3RfaGVhZHJvb20oKQo+Pj4gIMKgwqDCoMKgIG5vdy4KPj4+IC0tLQo+Pj4gIMKg
IGRyaXZlcnMvbmV0L2V0aGVybmV0L21lbGxhbm94L21seDUvY29yZS9lbi94ZHAuY8KgwqDCoCB8
IDggKysrKysrLS0KPj4+ICDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9tZWxsYW5veC9tbHg1L2Nv
cmUvZW4veHNrL3J4LmMgfCAzICsrLQo+Pj4gIMKgIDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRp
b25zKCspLCAzIGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9tZWxsYW5veC9tbHg1L2NvcmUvZW4veGRwLmMKPj4+IGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvbWVsbGFub3gvbWx4NS9jb3JlL2VuL3hkcC5jCj4+PiBpbmRleCBiMGI5ODJjZjY5YmIu
LmQ1MjQ1ODkzZDJjOCAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lbGxh
bm94L21seDUvY29yZS9lbi94ZHAuYwo+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVs
bGFub3gvbWx4NS9jb3JlL2VuL3hkcC5jCj4+PiBAQCAtMTIyLDYgKzEyMiw3IEBAIGJvb2wgbWx4
NWVfeGRwX2hhbmRsZShzdHJ1Y3QgbWx4NWVfcnEgKnJxLCBzdHJ1Y3QKPj4+IG1seDVlX2RtYV9p
bmZvICpkaSwKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdm9pZCAqdmEsIHUx
NiAqcnhfaGVhZHJvb20sIHUzMiAqbGVuLCBib29sIHhzaykKPj4+ICDCoCB7Cj4+PiAgwqDCoMKg
wqDCoCBzdHJ1Y3QgYnBmX3Byb2cgKnByb2cgPSBSRUFEX09OQ0UocnEtPnhkcF9wcm9nKTsKPj4+
ICvCoMKgwqAgc3RydWN0IHhkcF91bWVtICp1bWVtID0gcnEtPnVtZW07Cj4+PiAgwqDCoMKgwqDC
oCBzdHJ1Y3QgeGRwX2J1ZmYgeGRwOwo+Pj4gIMKgwqDCoMKgwqAgdTMyIGFjdDsKPj4+ICDCoMKg
wqDCoMKgIGludCBlcnI7Cj4+PiBAQCAtMTM4LDggKzEzOSwxMSBAQCBib29sIG1seDVlX3hkcF9o
YW5kbGUoc3RydWN0IG1seDVlX3JxICpycSwgc3RydWN0Cj4+PiBtbHg1ZV9kbWFfaW5mbyAqZGks
Cj4+PiAgwqDCoMKgwqDCoCB4ZHAucnhxID0gJnJxLT54ZHBfcnhxOwo+Pj4gIMKgwqDCoMKgwqAg
YWN0ID0gYnBmX3Byb2dfcnVuX3hkcChwcm9nLCAmeGRwKTsKPj4+IC3CoMKgwqAgaWYgKHhzaykK
Pj4+IC3CoMKgwqDCoMKgwqDCoCB4ZHAuaGFuZGxlICs9IHhkcC5kYXRhIC0geGRwLmRhdGFfaGFy
ZF9zdGFydDsKPj4+ICvCoMKgwqAgaWYgKHhzaykgewo+Pj4gK8KgwqDCoMKgwqDCoMKgIHU2NCBv
ZmYgPSB4ZHAuZGF0YSAtIHhkcC5kYXRhX2hhcmRfc3RhcnQ7Cj4+PiArCj4+PiArwqDCoMKgwqDC
oMKgwqAgeGRwLmhhbmRsZSA9IHhza191bWVtX2hhbmRsZV9vZmZzZXQodW1lbSwgeGRwLmhhbmRs
ZSwgb2ZmKTsKPj4+ICvCoMKgwqAgfQo+Pj4gIMKgwqDCoMKgwqAgc3dpdGNoIChhY3QpIHsKPj4+
ICDCoMKgwqDCoMKgIGNhc2UgWERQX1BBU1M6Cj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgICpyeF9o
ZWFkcm9vbSA9IHhkcC5kYXRhIC0geGRwLmRhdGFfaGFyZF9zdGFydDsKPj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWxsYW5veC9tbHg1L2NvcmUvZW4veHNrL3J4LmMKPj4+
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVsbGFub3gvbWx4NS9jb3JlL2VuL3hzay9yeC5jCj4+
PiBpbmRleCA2YTU1NTczZWM4ZjIuLjdjNDlhNjZkMjhjOSAxMDA2NDQKPj4+IC0tLSBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L21lbGxhbm94L21seDUvY29yZS9lbi94c2svcnguYwo+Pj4gKysrIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVsbGFub3gvbWx4NS9jb3JlL2VuL3hzay9yeC5jCj4+PiBA
QCAtMjQsNyArMjQsOCBAQCBpbnQgbWx4NWVfeHNrX3BhZ2VfYWxsb2NfdW1lbShzdHJ1Y3QgbWx4
NWVfcnEgKnJxLAo+Pj4gIMKgwqDCoMKgwqAgaWYgKCF4c2tfdW1lbV9wZWVrX2FkZHJfcnEodW1l
bSwgJmhhbmRsZSkpCj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRU5PTUVNOwo+Pj4g
LcKgwqDCoCBkbWFfaW5mby0+eHNrLmhhbmRsZSA9IGhhbmRsZSArIHJxLT5idWZmLnVtZW1faGVh
ZHJvb207Cj4+PiArwqDCoMKgIGRtYV9pbmZvLT54c2suaGFuZGxlID0geHNrX3VtZW1fYWRqdXN0
X29mZnNldCh1bWVtLCBoYW5kbGUsCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBycS0+YnVmZi51bWVtX2hlYWRyb29tKTsKPj4+
ICDCoMKgwqDCoMKgIGRtYV9pbmZvLT54c2suZGF0YSA9IHhkcF91bWVtX2dldF9kYXRhKHVtZW0s
IGRtYV9pbmZvLT54c2suaGFuZGxlKTsKPj4+ICDCoMKgwqDCoMKgIC8qIE5vIG5lZWQgdG8gYWRk
IGhlYWRyb29tIHRvIHRoZSBETUEgYWRkcmVzcy4gSW4gc3RyaWRpbmcgUlEKPj4+IGNhc2UsIHdl
Cj4+PgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBz
Oi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
