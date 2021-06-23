Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 136483B23A4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Jun 2021 00:43:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 52D5D83B24;
	Wed, 23 Jun 2021 22:43:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1CCsxsP2bBRR; Wed, 23 Jun 2021 22:43:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3ABB283B23;
	Wed, 23 Jun 2021 22:43:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3B9B81BF385
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 22:43:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 36935606CF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 22:43:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lrcjM0uA41le for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jun 2021 22:43:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 98D7A605E9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 22:43:23 +0000 (UTC)
IronPort-SDR: a/5Anzar1ON1L0phpHFFQbkqhl0wNuzTWUuJAdelLVPALP0KBzpmuu/bto4+RhNsLaCUQQ72kf
 x4PHGj89eLew==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="271200948"
X-IronPort-AV: E=Sophos;i="5.83,295,1616482800"; d="scan'208";a="271200948"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 15:43:18 -0700
IronPort-SDR: r2ALTYhtcQaFt1FYvRTU+9GAwyO3yXFltGrDZSQyz3Nyv/TrIhdXyls0/aMbJf3MgkoWLy9Kpr
 QgEIRsdAM61w==
X-IronPort-AV: E=Sophos;i="5.83,295,1616482800"; d="scan'208";a="406835421"
Received: from samudral-mobl.amr.corp.intel.com (HELO [10.212.149.45])
 ([10.212.149.45])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 15:43:17 -0700
To: "Singhai, Anjali" <anjali.singhai@intel.com>,
 "Creeley, Brett" <brett.creeley@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
References: <20210426181940.14847-1-sridhar.samudrala@intel.com>
 <CO1PR11MB48359F4AB09484353280CBA9F52D9@CO1PR11MB4835.namprd11.prod.outlook.com>
 <c78efee5-d864-7903-98b5-207aadae19fa@intel.com>
 <DM6PR11MB32913145E3D57435455C206893089@DM6PR11MB3291.namprd11.prod.outlook.com>
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Message-ID: <31788b56-c3aa-f17f-b788-8a0f3129ad4e@intel.com>
Date: Wed, 23 Jun 2021 15:43:16 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <DM6PR11MB32913145E3D57435455C206893089@DM6PR11MB3291.namprd11.prod.outlook.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: Enable configuration
 of number of qps per VF via devlink
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
Cc: "Ismail, Mustafa" <mustafa.ismail@intel.com>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNi8yMy8yMDIxIDM6MTUgUE0sIFNpbmdoYWksIEFuamFsaSB3cm90ZToKPiBTcmlkaGFyLCBo
b3cgZG8geW91IGRvIGFzeW1tZXRyaWMgbnVtYmVyIG9mIHF1ZXVlcyBhbmQgdmVjdG9ycyB0byB0
aGUgVkYgdXNpbmcgZGV2bGluaz8gT3IgdGhpcyBlbmRzIHVwIGFzIGEgY29uZmlndXJhdGlvbiBv
biBWRiByZXByZXNlbnRvcnMuLi4gSSBob3BlIG5vdC4KPgo+IFNvIEkgYW0gZ3Vlc3NpbmcgeW91
IGNhbiBlaXRoZXIgYnVsayBzZXQgdGhlIG51bWJlciBvZiBxdWV1ZXMgZm9yIGVhY2ggb2YgdGhl
IFZGcyBvciB5b3UgY2FuIHNldCBpdCBwZXIgU1JJT1YgVkYgcG9ydHM/CgpUaGlzIGlzIGZpcnN0
IHN0ZXAgaW4gYSBzZXJpZXMgb2YgcGF0Y2hlcyB0byBtYWtlIFZGIHJlc291cmNlcyBjb25maWd1
cmFibGUuClRoZSBuZXh0IHN0ZXAgaXMgdG8gZW5hYmxlIGNyZWF0aW5nIGEgZGV2bGluayBwb3J0
IGZvciBlYWNoIFZGIGFuZCAKc3VwcG9ydCBwb3J0IHNwZWNpZmljIHBhcmFtZXRlcnMKdmlhIHRo
ZSBkZXZsaW5rIHBvcnQuClRoZW4gd2UgY2FuIGVuYWJsZSBjaGFuZ2luZyB0aGUgcXVldWUgcGFp
cnMgb3IgbXNpeC12ZWN0b3JzIGZvciBhIApzcGVjaWZpYyBpbnN0YW5jZSBvZiBhIFZGCmJlZm9y
ZSBpdCBpcyBhY3RpdmF0ZWQgcmF0aGVywqAgdGhhbiBhbGwgVkZzIGhhdmluZyBlcXVhbCBudW1i
ZXIgb2YgCnJlc291cmNlcy4KCj4KPiBUaGFua3MKPiBBbmphbGkKPgo+IC0tLS0tT3JpZ2luYWwg
TWVzc2FnZS0tLS0tCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFuIDxpbnRlbC13aXJlZC1sYW4tYm91
bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YgU2FtdWRyYWxhLCBTcmlkaGFyCj4gU2VudDog
V2VkbmVzZGF5LCBKdW5lIDIzLCAyMDIxIDk6MjEgQU0KPiBUbzogQ3JlZWxleSwgQnJldHQgPGJy
ZXR0LmNyZWVsZXlAaW50ZWwuY29tPjsgaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7
IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT4KPiBDYzogSXNt
YWlsLCBNdXN0YWZhIDxtdXN0YWZhLmlzbWFpbEBpbnRlbC5jb20+OyBTYWxlZW0sIFNoaXJheiA8
c2hpcmF6LnNhbGVlbUBpbnRlbC5jb20+Cj4gU3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5d
IFtQQVRDSCBuZXQtbmV4dCB2Ml0gaWNlOiBFbmFibGUgY29uZmlndXJhdGlvbiBvZiBudW1iZXIg
b2YgcXBzIHBlciBWRiB2aWEgZGV2bGluawo+Cj4gT24gNS8xNy8yMDIxIDI6NDkgUE0sIENyZWVs
ZXksIEJyZXR0IHdyb3RlOgo+Pj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4+IEZyb206
IEludGVsLXdpcmVkLWxhbiA8aW50ZWwtd2lyZWQtbGFuLWJvdW5jZXNAb3N1b3NsLm9yZz4gT24g
QmVoYWxmCj4+PiBPZiBTcmlkaGFyIFNhbXVkcmFsYQo+Pj4gU2VudDogTW9uZGF5LCBBcHJpbCAy
NiwgMjAyMSAxMToyMCBBTQo+Pj4gVG86IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3Jn
OyBOZ3V5ZW4sIEFudGhvbnkgTAo+Pj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgU2Ft
dWRyYWxhLCBTcmlkaGFyCj4+PiA8c3JpZGhhci5zYW11ZHJhbGFAaW50ZWwuY29tPgo+Pj4gU3Vi
amVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIG5ldC1uZXh0IHYyXSBpY2U6IEVuYWJsZQo+
Pj4gY29uZmlndXJhdGlvbiBvZiBudW1iZXIgb2YgcXBzIHBlciBWRiB2aWEgZGV2bGluawo+Pj4K
Pj4+IEludHJvZHVjZSBhIGRldmxpbmsgcGFyYW1ldGVyICdudW1fcXBzX3Blcl92ZicgdG8gYWxs
b3cgdXNlciB0bwo+Pj4gY29uZmlndXJlIHRoZSBtYXhpbXVtIG51bWJlciBvZiBxdWV1ZSBwYWly
cyBnaXZlbiB0byBTUi1JT1YgVkZzCj4+PiBiZWZvcmUgdGhleSBhcmUgY3JlYXRlZC4KPj4+Cj4+
PiBUaGlzIGlzIGN1cnJlbnRseSBkZXRlcm1pbmVkIGJ5IHRoZSBkcml2ZXIgYmFzZWQgb24gdGhl
IG51bWJlciBvZgo+Pj4gU1ItSU9WIFZGcyBjcmVhdGVkLiBJbiBvcmRlciB0byBrZWVwIHRoaXMg
YmVoYXZpb3IgYnkgZGVmYXVsdCB0aGUKPj4+IHBhcmFtZXRlciBpcyBpbml0aWFsaXplZCB0byAw
LiBUbyBjaGFuZ2UgdGhlIGRlZmF1bHQgYmVoYXZpb3IsIHVzZXIKPj4+IGNhbiBzZXQgbnVtX3Fw
c19wZXJfdmYgcGFyYW1ldGVyIHZpYSBkZXZsaW5rIGFuZCB0aGlzIHdpbGwgYmUgdXNlZCBhcwo+
Pj4gdGhlIHByZWZlcnJlZCB2YWx1ZSB0byBkZXRlcm1pbmUgdGhlIHF1ZXVlcyBhbmQgdmVjdG9y
cyBhc3NpZ25lZCBwZXIKPj4+IFZGLgo+PiBXaGF0IGlmIHRoZSBob3N0IGFkbWluaXN0cmF0b3Ig
d2FudHMgdG8gZ2l2ZSB0aGUgVkYgYSBkaWZmZXJlbnQgbnVtYmVyCj4+IG9mIHZlY3RvcnMgdGhh
biBxdWV1ZXM/IEZvciBleGFtcGxlLCBpZiB0aGUgYWRtaW4ga25vd3MgdGhlIFZGCj4+IGluc3Rh
bmNlIHdpbGwgYmUgZXhlcmNpc2luZyBWRiBSRE1BIGFuZCB0aGUgVkYgbmVlZHMgbW9yZSB2ZWN0
b3JzIGZvcgo+PiBSRE1BIHRyYWZmaWMuCj4+Cj4+IFNob3VsZCB3ZSBoYXZlIDIgc2VwYXJhdGUg
dmFsdWVzLCBpLmUuICJudW1fcXBzX3Blcl92ZiIgYW5kCj4+ICJudW1fbXNpeF9wZXJfdmYiPwo+
IEkgbWlzc2VkIHJlc3BvbmRpbmcgdG8gdGhpcyBjb21tZW50Lgo+IFN1cmUuIFdlIGNhbiBhZGQg
bnVtX21zaXhfcHJfdmYgYXMgYSBsYXRlciBwYXRjaCB0byBlbmFibGUgYWRkaXRpb25hbCB2ZWN0
b3JzIGZvciBSRE1BLgo+Cj4gVG9ueSwKPiBDYW4gdGhpcyBwYXRjaCBiZSBpbmNsdWRlZCBpbiB5
b3VyIHNlcmllcyB3aGVuIHlvdSBzdWJtaXQgdG8gbmV0ZGV2Pwo+IE9SIGRvIGkgbmVlZCB0byBy
ZWJhc2UgaXQgYmFzZWQgb24gdGhlIGxhdGVzdCBuZXQtbmV4dD8KPgo+IFRoYW5rcwo+IFNyaWRo
YXIKPj4+IFVTQUdFOgo+Pj4gT24gYSAyIHBvcnQgTklDCj4+PiAgICAjIGRldmxpbmsgZGV2IHBh
cmFtIHNob3cKPj4+ICAgIHBjaS8wMDAwOjQyOjAwLjA6Cj4+PiAgICAgIG5hbWUgbnVtX3Fwc19w
ZXJfdmYgdHlwZSBkcml2ZXItc3BlY2lmaWMKPj4+ICAgICAgICB2YWx1ZXM6Cj4+PiAgICAgICAg
ICBjbW9kZSBydW50aW1lIHZhbHVlIDAKPj4+ICAgIHBjaS8wMDAwOjQyOjAwLjE6Cj4+PiAgICAg
IG5hbWUgbnVtX3Fwc19wZXJfdmYgdHlwZSBkcml2ZXItc3BlY2lmaWMKPj4+ICAgICAgICB2YWx1
ZXM6Cj4+PiAgICAgICAgICBjbW9kZSBydW50aW1lIHZhbHVlIDAKPj4+Cj4+PiAgICAvKiBTZXQg
bnVtX3Fwc19wZXJfdmYgdG8gNCAqLwo+Pj4gICAgIyBkZXZsaW5rIGRldiBwYXJhbSBzZXQgcGNp
LzAwMDA6NDI6MDAuMCBuYW1lIG51bV9xcHNfcGVyX3ZmIHZhbHVlCj4+PiA0IGNtb2RlIHJ1bnRp
bWUKPj4+Cj4+PiAgICAjIGRldmxpbmsgZGV2IHBhcmFtIHNob3cgcGNpLzAwMDA6NDI6MDAuMCBu
YW1lIG51bV9xcHNfcGVyX3ZmCj4+PiAgICBwY2kvMDAwMDo0MjowMC4wOgo+Pj4gICAgICBuYW1l
IG51bV9xcHNfcGVyX3ZmIHR5cGUgZHJpdmVyLXNwZWNpZmljCj4+PiAgICAgICAgdmFsdWVzOgo+
Pj4gICAgICAgICAgY21vZGUgcnVudGltZSB2YWx1ZSA0Cj4+Pgo+Pj4gICAgIyBlY2hvIDggPiAv
c3lzL2NsYXNzL25ldC9lbnA2NnMwZjAvZGV2aWNlL3NyaW92X251bXZmcwo+Pj4KPj4+IFRoaXMg
d2lsbCBjcmVhdGUgOCBWRnMgd2l0aCA0IHF1ZXVlIHBhaXJzIGFuZCA1IHZlY3RvcnMgcGVyIFZG
Cj4+PiBjb21wYXJlZCB0byB0aGUgZGVmYXVsdCBiZWhhdmlvciBvZiAxNiBxdWV1ZSBwYWlycyBh
bmQgMTcgdmVjdG9ycyBwZXIKPj4+IFZGLgo+Pj4KPj4+IHYyOgo+Pj4gRml4ZWQga2RvYyBmb3Ig
aWNlX2RldmxpbmtfbnVtX3Fwc19wZXJfdmZfdmFsaWRhdGUoKQo+Pj4KPj4+IFNpZ25lZC1vZmYt
Ynk6IFNyaWRoYXIgU2FtdWRyYWxhIDxzcmlkaGFyLnNhbXVkcmFsYUBpbnRlbC5jb20+Cj4+PiAt
LS0KPj4+ICAgIERvY3VtZW50YXRpb24vbmV0d29ya2luZy9kZXZsaW5rL2ljZS5yc3QgICAgICB8
ICAyMyArKysrCj4+PiAgICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Rldmxp
bmsuYyAgfCAxMTAgKysrKysrKysrKysrKysrKystCj4+PiAgICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX21haW4uYyAgICAgfCAgIDMgKwo+Pj4gICAgLi4uL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX3ZpcnRjaG5sX3BmLmMgIHwgICA1ICstCj4+PiAgICA0IGZpbGVzIGNo
YW5nZWQsIDEzOSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pj4KPj4gPHNuaXA+Cj4+
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRl
bC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cj4gSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKPiBo
dHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
