Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D41559B9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jun 2019 23:12:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 78DF387762;
	Tue, 25 Jun 2019 21:12:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TEeoxqALAGlf; Tue, 25 Jun 2019 21:12:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2DAA6875C7;
	Tue, 25 Jun 2019 21:12:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 07AE61BF417
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2019 13:12:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 020B020523
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2019 13:12:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jqTw1o-A9M5g for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jun 2019 13:12:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id D57932051B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2019 13:12:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 06:12:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,415,1557212400"; d="scan'208";a="166672815"
Received: from klaatz-mobl1.ger.corp.intel.com (HELO [10.237.221.70])
 ([10.237.221.70])
 by orsmga006.jf.intel.com with ESMTP; 25 Jun 2019 06:12:25 -0700
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
References: <20190620083924.1996-1-kevin.laatz@intel.com>
 <CAJ+HfNijp8BgMgiOuohiuqDPz+spAutdG34gUqKzepYo2noE-w@mail.gmail.com>
From: "Laatz, Kevin" <kevin.laatz@intel.com>
Message-ID: <e90c81b0-a419-49b0-4e2a-3d20956feb6e@intel.com>
Date: Tue, 25 Jun 2019 14:12:24 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAJ+HfNijp8BgMgiOuohiuqDPz+spAutdG34gUqKzepYo2noE-w@mail.gmail.com>
Content-Language: en-US
X-Mailman-Approved-At: Tue, 25 Jun 2019 21:12:38 +0000
Subject: Re: [Intel-wired-lan] [PATCH 00/11] XDP unaligned chunk placement
 support
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
Cc: Daniel Borkmann <daniel@iogearbox.net>, bpf@vger.kernel.com,
 Netdev <netdev@vger.kernel.org>, ciara.loftus@intel.com,
 Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Bruce Richardson <bruce.richardson@intel.com>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDI0LzA2LzIwMTkgMTY6MzgsIEJqw7ZybiBUw7ZwZWwgd3JvdGU6Cj4gT24gVGh1LCAyMCBK
dW4gMjAxOSBhdCAxODo1NSwgS2V2aW4gTGFhdHogPGtldmluLmxhYXR6QGludGVsLmNvbT4gd3Jv
dGU6Cj4+Cj4+IFRoaXMgcGF0Y2hzZXQgYWRkcyB0aGUgYWJpbGl0eSB0byB1c2UgdW5hbGlnbmVk
IGNodW5rcyBpbiB0aGUgWERQIHVtZW0uCj4+Cj4+IEN1cnJlbnRseSwgYWxsIGNodW5rIGFkZHJl
c3NlcyBwYXNzZWQgdG8gdGhlIHVtZW0gYXJlIG1hc2tlZCB0byBiZSBjaHVuawo+PiBzaXplIGFs
aWduZWQgKGRlZmF1bHQgaXMgMmssIG1heCBpcyBQQUdFX1NJWkUpLiBUaGlzIGxpbWl0cyB3aGVy
ZSB3ZSBjYW4KPj4gcGxhY2UgY2h1bmtzIHdpdGhpbiB0aGUgdW1lbSBhcyB3ZWxsIGFzIGxpbWl0
aW5nIHRoZSBwYWNrZXQgc2l6ZXMgCj4+IHRoYXQgYXJlCj4+IHN1cHBvcnRlZC4KPj4KPj4gVGhl
IGNoYW5nZXMgaW4gdGhpcyBwYXRjaHNldCByZW1vdmVzIHRoZXNlIHJlc3RyaWN0aW9ucywgYWxs
b3dpbmcgWERQIAo+PiB0byBiZQo+PiBtb3JlIGZsZXhpYmxlIGluIHdoZXJlIGl0IGNhbiBwbGFj
ZSBhIGNodW5rIHdpdGhpbiBhIHVtZW0uIEJ5IAo+PiByZWxheGluZyB3aGVyZQo+PiB0aGUgY2h1
bmtzIGNhbiBiZSBwbGFjZWQsIGl0IGFsbG93cyB1cyB0byB1c2UgYW4gYXJiaXRyYXJ5IGJ1ZmZl
ciAKPj4gc2l6ZSBhbmQKPj4gcGxhY2UgdGhhdCB3aGVyZXZlciB3ZSBoYXZlIGEgZnJlZSBhZGRy
ZXNzIGluIHRoZSB1bWVtLiBUaGVzZSBjaGFuZ2VzIAo+PiBhZGQgdGhlCj4+IGFiaWxpdHkgdG8g
c3VwcG9ydCBqdW1ib2ZyYW1lcyBhbmQgbWFrZSBpdCBlYXN5IHRvIGludGVncmF0ZSB3aXRoIG90
aGVyCj4+IGV4aXN0aW5nIGZyYW1ld29ya3MgdGhhdCBoYXZlIHRoZWlyIG93biBtZW1vcnkgbWFu
YWdlbWVudCBzeXN0ZW1zLCAKPj4gc3VjaCBhcwo+PiBEUERLLgo+Pgo+Cj4gVGhhbmtzIGZvciB3
b3JraW5nIG9uIHRoaXMsIEtldmluIGFuZCBDaWFyYSEKPgo+IEkgaGF2ZSBzb21lIG1pbm9yIGNv
bW1lbnRzIG9uIHRoZSBzZXJpZXMsIGJ1dCBpbiBnZW5lcmFsIEkgdGhpbmsgaXQncwo+IGluIGdv
b2Qgc2hhcGUhCj4KPiBGb3Igc29tZSByZWFzb24gdGhlIHNlcmllcyB3YXMgc3VibWl0dGVkIHR3
aWNlIChhdCBsZWFzdCBvbiBteSBzaWRlKT8KQXBvbG9naWVzIGZvciB0aGUgY29uZnVzaW9uLi4u
IFRoZSBmaXJzdCBzZXQgaGFkIGEgdHlwbyBpbiB0aGUgYnBmIAptYWlsaW5nIGxpc3QgYWRkcmVz
cyAoLmNvbSB2cyAub3JnKS4gV2lsbCBmaXggZm9yIHRoZSB2Mi4KPgo+Cj4gVGhhbmtzLAo+IEJq
w7ZybgoKClRoYW5rcyBmb3IgcmV2aWV3aW5nLiBXaWxsIGFkZHJlc3MgeW91ciBjb21tZW50cyBp
biB0aGUgdjIuCgo+Cj4+IFN0cnVjdHVyZSBvZiB0aGUgcGF0Y2hzZXQ6Cj4+IFBhdGNoIDE6Cj4+
IMKgIC0gUmVtb3ZlIHVubmVjZXNzYXJ5IG1hc2tpbmcgYW5kIGhlYWRyb29tIGFkZGl0aW9uIGR1
cmluZyB6ZXJvLWNvcHkgUngKPj4gwqDCoMKgIGJ1ZmZlciByZWN5Y2xpbmcgaW4gaTQwZS4gVGhp
cyBjaGFuZ2UgaXMgcmVxdWlyZWQgaW4gb3JkZXIgZm9yIHRoZQo+PiDCoMKgwqAgYnVmZmVyIHJl
Y3ljbGluZyB0byB3b3JrIGluIHRoZSB1bmFsaWduZWQgY2h1bmsgbW9kZS4KPj4KPj4gUGF0Y2gg
MjoKPj4gwqAgLSBSZW1vdmUgdW5uZWNlc3NhcnkgbWFza2luZyBhbmQgaGVhZHJvb20gYWRkaXRp
b24gZHVyaW5nCj4+IMKgwqDCoCB6ZXJvLWNvcHkgUnggYnVmZmVyIHJlY3ljbGluZyBpbiBpeGdi
ZS4gVGhpcyBjaGFuZ2UgaXMgcmVxdWlyZWQgaW4KPj4gwqDCoMKgIG9yZGVyIGZvciB0aGXCoCBi
dWZmZXIgcmVjeWNsaW5nIHRvIHdvcmsgaW4gdGhlIHVuYWxpZ25lZCBjaHVuayBtb2RlLgo+Pgo+
PiBQYXRjaCAzOgo+PiDCoCAtIEFkZHMgYW4gb2Zmc2V0IHBhcmFtZXRlciB0byB6ZXJvX2NvcHlf
YWxsb2NhdG9yLiBUaGlzIGNoYW5nZSB3aWxsCj4+IMKgwqDCoCBlbmFibGUgdXMgdG8gY2FsY3Vs
YXRlIHRoZSBvcmlnaW5hbCBoYW5kbGUgaW4gemNhX2ZyZWUuIFRoaXMgd2lsbCBiZQo+PiDCoMKg
wqAgcmVxdWlyZWQgZm9yIHVuYWxpZ25lZCBjaHVuayBtb2RlIHNpbmNlIHdlIGNhbid0IGVhc2ls
eSBtYXNrIGJhY2sgdG8KPj4gwqDCoMKgIHRoZSBvcmlnaW5hbCBoYW5kbGUuCj4+Cj4+IFBhdGNo
IDQ6Cj4+IMKgIC0gQWRkcyB0aGUgb2Zmc2V0IHBhcmFtZXRlciB0byBpNDBlX3pjYV9mcmVlLiBU
aGlzIGNoYW5nZSBpcyBuZWVkZWQgCj4+IGZvcgo+PiDCoMKgwqAgY2FsY3VsYXRpbmcgdGhlIGhh
bmRsZSBzaW5jZSB3ZSBjYW4ndCBlYXNpbHkgbWFzayBiYWNrIHRvIHRoZSAKPj4gb3JpZ2luYWwK
Pj4gwqDCoMKgIGhhbmRsZSBsaWtlIHdlIGNhbiBpbiB0aGUgYWxpZ25lZCBjYXNlLgo+Pgo+PiBQ
YXRjaCA1Ogo+PiDCoCAtIEFkZHMgdGhlIG9mZnNldCBwYXJhbWV0ZXIgdG8gaXhnYmVfemNhX2Zy
ZWUuIFRoaXMgY2hhbmdlIGlzIAo+PiBuZWVkZWQgZm9yCj4+IMKgwqDCoCBjYWxjdWxhdGluZyB0
aGUgaGFuZGxlIHNpbmNlIHdlIGNhbid0IGVhc2lseSBtYXNrIGJhY2sgdG8gdGhlIAo+PiBvcmln
aW5hbAo+PiDCoMKgwqAgaGFuZGxlIGxpa2Ugd2UgY2FuIGluIHRoZSBhbGlnbmVkIGNhc2UuCj4+
Cj4+Cj4+IFBhdGNoIDY6Cj4+IMKgIC0gQWRkIGluZnJhc3RydWN0dXJlIGZvciB1bmFsaWduZWQg
Y2h1bmtzLiBTaW5jZSB3ZSBhcmUgZGVhbGluZwo+PiDCoMKgwqAgd2l0aCB1bmFsaWduZWQgY2h1
bmtzIHRoYXQgY291bGQgcG90ZW50aWFsbHkgY3Jvc3MgYSBwaHlzaWNhbCBwYWdlCj4+IMKgwqDC
oCBib3VuZGFyeSwgd2UgYWRkIGNoZWNrcyB0byBrZWVwIHRyYWNrIG9mIHRoYXQgaW5mb3JtYXRp
b24uIFdlIGNhbgo+PiDCoMKgwqAgbGF0ZXIgdXNlIHRoaXMgaW5mb3JtYXRpb24gdG8gY29ycmVj
dGx5IGhhbmRsZSBidWZmZXJzIHRoYXQgYXJlCj4+IMKgwqDCoCBwbGFjZWQgYXQgYW4gYWRkcmVz
cyB3aGVyZSB0aGV5IGNyb3NzIGEgcGFnZSBib3VuZGFyeS4KPj4KPj4gUGF0Y2ggNzoKPj4gwqAg
LSBBZGQgZmxhZ3MgZm9yIHVtZW0gY29uZmlndXJhdGlvbiB0byBsaWJicGYKPj4KPj4gUGF0Y2gg
ODoKPj4gwqAgLSBNb2RpZnkgeGRwc29jayBhcHBsaWNhdGlvbiB0byBhZGQgYSBjb21tYW5kIGxp
bmUgb3B0aW9uIGZvcgo+PiDCoMKgwqAgdW5hbGlnbmVkIGNodW5rcwo+Pgo+PiBQYXRjaCA5Ogo+
PiDCoCAtIEFkZGl0aW9uIG9mIGNvbW1hbmQgbGluZSBhcmd1bWVudCB0byBwYXNzIGluIGEgZGVz
aXJlZCBidWZmZXIgc2l6ZQo+PiDCoMKgwqAgYW5kIGJ1ZmZlciByZWN5Y2xpbmcgZm9yIHVuYWxp
Z25lZCBtb2RlLiBQYXNzaW5nIGluIGEgYnVmZmVyIHNpemUgCj4+IHdpbGwKPj4gwqDCoMKgIGFs
bG93IHRoZSBhcHBsaWNhdGlvbiB0byB1c2UgdW5hbGlnbmVkIGNodW5rcyB3aXRoIHRoZSB1bmFs
aWduZWQgCj4+IGNodW5rCj4+IMKgwqDCoCBtb2RlLiBTaW5jZSB3ZSBhcmUgbm93IHVzaW5nIHVu
YWxpZ25lZCBjaHVua3MsIHdlIG5lZWQgdG8gcmVjeWNsZSAKPj4gb3VyCj4+IMKgwqDCoCBidWZm
ZXJzIGluIGEgc2xpZ2h0bHkgZGlmZmVyZW50IHdheS4KPj4KPj4gUGF0Y2ggMTA6Cj4+IMKgIC0g
QWRkcyBodWdlcGFnZSBzdXBwb3J0IHRvIHRoZSB4ZHBzb2NrIGFwcGxpY2F0aW9uCj4+Cj4+IFBh
dGNoIDExOgo+PiDCoCAtIERvY3VtZW50YXRpb24gdXBkYXRlIHRvIGluY2x1ZGUgdGhlIHVuYWxp
Z25lZCBjaHVuayBzY2VuYXJpby4gV2UgCj4+IG5lZWQKPj4gwqDCoMKgIHRvIGV4cGxpY2l0bHkg
c3RhdGUgdGhhdCB0aGUgaW5jb21pbmcgYWRkcmVzc2VzIGFyZSBvbmx5IG1hc2tlZCAKPj4gaW4g
dGhlCj4+IMKgwqDCoCBhbGlnbmVkIGNodW5rIG1vZGUgYW5kIG5vdCB0aGUgdW5hbGlnbmVkIGNo
dW5rIG1vZGUuCj4+Cj4+IEtldmluIExhYXR6ICgxMSk6Cj4+IMKgIGk0MGU6IHNpbXBsaWZ5IFJ4
IGJ1ZmZlciByZWN5Y2xlCj4+IMKgIGl4Z2JlOiBzaW1wbGlmeSBSeCBidWZmZXIgcmVjeWNsZQo+
PiDCoCB4ZHA6IGFkZCBvZmZzZXQgcGFyYW0gdG8gemVyb19jb3B5X2FsbG9jYXRvcgo+PiDCoCBp
NDBlOiBhZGQgb2Zmc2V0IHRvIHpjYV9mcmVlCj4+IMKgIGl4Z2JlOiBhZGQgb2Zmc2V0IHRvIHpj
YV9mcmVlCj4+IMKgIHhzazogYWRkIHN1cHBvcnQgdG8gYWxsb3cgdW5hbGlnbmVkIGNodW5rIHBs
YWNlbWVudAo+PiDCoCBsaWJicGY6IGFkZCBmbGFncyB0byB1bWVtIGNvbmZpZwo+PiDCoCBzYW1w
bGVzL2JwZjogYWRkIHVuYWxpZ25lZCBjaHVua3MgbW9kZSBzdXBwb3J0IHRvIHhkcHNvY2sKPj4g
wqAgc2FtcGxlcy9icGY6IGFkZCBidWZmZXIgcmVjeWNsaW5nIGZvciB1bmFsaWduZWQgY2h1bmtz
IHRvIHhkcHNvY2sKPj4gwqAgc2FtcGxlcy9icGY6IHVzZSBodWdlcGFnZXMgaW4geGRwc29jayBh
cHAKPj4gwqAgZG9jL2FmX3hkcDogaW5jbHVkZSB1bmFsaWduZWQgY2h1bmsgY2FzZQo+Pgo+PiDC
oERvY3VtZW50YXRpb24vbmV0d29ya2luZy9hZl94ZHAucnN0wqDCoMKgwqDCoMKgwqDCoMKgwqAg
fCAxMCArLQo+PiDCoGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suY8Kg
wqDCoCB8IDIxICsrLS0KPj4gwqBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVf
eHNrLmjCoMKgwqAgfMKgIDMgKy0KPj4gwqAuLi4vZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVf
dHhyeF9jb21tb24uaMKgIHzCoCAzICstCj4+IMKgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aXhnYmUvaXhnYmVfeHNrLmPCoCB8IDIxICsrLS0KPj4gwqBpbmNsdWRlL25ldC94ZHAuaMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAz
ICstCj4+IMKgaW5jbHVkZS9uZXQveGRwX3NvY2suaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDIgKwo+PiDCoGluY2x1ZGUvdWFwaS9saW51eC9pZl94
ZHAuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgNCArCj4+IMKgbmV0
L2NvcmUveGRwLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCB8IDExICsrLQo+PiDCoG5ldC94ZHAveGRwX3VtZW0uY8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDE3ICsrLS0K
Pj4gwqBuZXQveGRwL3hzay5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDYwICsrKysrKysrKy0tCj4+IMKgbmV0L3hkcC94
c2tfcXVldWUuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgfCA2MCArKysrKysrKystLQo+PiDCoHNhbXBsZXMvYnBmL3hkcHNvY2tfdXNlci5jwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCA5OSArKysrKysrKysrKysrKy0t
LS0tCj4+IMKgdG9vbHMvaW5jbHVkZS91YXBpL2xpbnV4L2lmX3hkcC5owqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHzCoCA0ICsKPj4gwqB0b29scy9saWIvYnBmL3hzay5jwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgNyArKwo+PiDCoHRvb2xz
L2xpYi9icGYveHNrLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHzCoCAyICsKPj4gwqAxNiBmaWxlcyBjaGFuZ2VkLCAyNDEgaW5zZXJ0aW9ucygr
KSwgODYgZGVsZXRpb25zKC0pCj4+Cj4+IC0tIAo+PiAyLjE3LjEKPj4KPgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGlu
ZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
