Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9F519BB99
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Apr 2020 08:19:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A7C6286091;
	Thu,  2 Apr 2020 06:19:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W0y8c9JHW5tJ; Thu,  2 Apr 2020 06:19:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F235686B78;
	Thu,  2 Apr 2020 06:19:29 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 499A41BF405
 for <intel-wired-lan@osuosl.org>; Thu,  2 Apr 2020 06:19:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 44FD78800F
 for <intel-wired-lan@osuosl.org>; Thu,  2 Apr 2020 06:19:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KAXTYWghhPXs for <intel-wired-lan@osuosl.org>;
 Thu,  2 Apr 2020 06:19:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B5C5787E91
 for <intel-wired-lan@osuosl.org>; Thu,  2 Apr 2020 06:19:27 +0000 (UTC)
IronPort-SDR: m6tIA6475Qt3swDJoXYas8Z/6QbjqGSM/9Uqe3Hvxdpe/h7BbP0uKQeeVwZCLwW1bpedRIDM6I
 PZUF0QjK1SKg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 23:19:27 -0700
IronPort-SDR: obg3lJyZrs6wKZCek19rM0f7uNdUaE5PSz04ZUrryPCo0D7mNixmtbPoxjaffgYAc5sRgfMD+t
 SsK1C4oHABgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,334,1580803200"; d="scan'208";a="423011262"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.214.218.243])
 ([10.214.218.243])
 by orsmga005.jf.intel.com with ESMTP; 01 Apr 2020 23:19:26 -0700
From: "Neftin, Sasha" <sasha.neftin@intel.com>
To: Vitaly Lifshits <vitaly.lifshits@intel.com>, intel-wired-lan@osuosl.org
References: <20200401091644.5863-1-vitaly.lifshits@intel.com>
 <08d29d85-9f5b-f97b-d6dc-9346b5844beb@intel.com>
Message-ID: <1c5fb458-dd3e-e488-b63d-71268a878e35@intel.com>
Date: Thu, 2 Apr 2020 09:19:25 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <08d29d85-9f5b-f97b-d6dc-9346b5844beb@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: remove IGC_REMOVED function
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

T24gNC8yLzIwMjAgMDk6MTYsIE5lZnRpbiwgU2FzaGEgd3JvdGU6Cj4gT24gNC8xLzIwMjAgMTI6
MTYsIFZpdGFseSBMaWZzaGl0cyB3cm90ZToKPj4gaWdjIGRyaXZlciBoYXMgbGVmdG92ZXJzIGZy
b20gdGhlIHByZXZpb3VzIGRldmljZSB0aGF0IHN1cHBvcnRlZAo+PiB2aXJ0dWFsaXphdGlvbi4g
VGhpcyBjYW4gYmUgZm91bmQgaW4gdGhlIGZ1bmN0aW9uIElHQ19SRU1PVkVEIHdoaWNoCj4+IGJl
Y2FtZSBvYnNvbGV0ZSwgYW5kIGNhbiBiZSByZW1vdmVkLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBW
aXRhbHkgTGlmc2hpdHMgPHZpdGFseS5saWZzaGl0c0BpbnRlbC5jb20+Cj4+IC0tLQo+PiDCoCBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21hYy5owqAgfCA0IC0tLS0KPj4gwqAg
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMgfCAzIC0tLQo+PiDCoCBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3JlZ3MuaCB8IDMgKy0tCj4+IMKgIDMg
ZmlsZXMgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDkgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21hYy5oIAo+PiBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFjLmgKPj4gaW5kZXggODMyY2NjZWM4
N2NkLi5iNTk2M2Y4NmRlZmIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2lnYy9pZ2NfbWFjLmgKPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdj
L2lnY19tYWMuaAo+PiBAQCAtOCwxMCArOCw2IEBACj4+IMKgICNpbmNsdWRlICJpZ2NfcGh5Lmgi
Cj4+IMKgICNpbmNsdWRlICJpZ2NfZGVmaW5lcy5oIgo+PiAtI2lmbmRlZiBJR0NfUkVNT1ZFRAo+
PiAtI2RlZmluZSBJR0NfUkVNT1ZFRChhKSAoMCkKPj4gLSNlbmRpZiAvKiBJR0NfUkVNT1ZFRCAq
Lwo+PiAtCj4+IMKgIC8qIGZvcndhcmQgZGVjbGFyYXRpb24gKi8KPj4gwqAgczMyIGlnY19kaXNh
YmxlX3BjaWVfbWFzdGVyKHN0cnVjdCBpZ2NfaHcgKmh3KTsKPj4gwqAgczMyIGlnY19jaGVja19m
b3JfY29wcGVyX2xpbmsoc3RydWN0IGlnY19odyAqaHcpOwo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMgCj4+IGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMKPj4gaW5kZXggYzM1NTUxNDhjYTBlLi5jYjBkNTIz
ZmZjMTkgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2Nf
bWFpbi5jCj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5j
Cj4+IEBAIC00NjYyLDkgKzQ2NjIsNiBAQCB1MzIgaWdjX3JkMzIoc3RydWN0IGlnY19odyAqaHcs
IHUzMiByZWcpCj4+IMKgwqDCoMKgwqAgdTggX19pb21lbSAqaHdfYWRkciA9IFJFQURfT05DRSho
dy0+aHdfYWRkcik7Cj4+IMKgwqDCoMKgwqAgdTMyIHZhbHVlID0gMDsKPj4gLcKgwqDCoCBpZiAo
SUdDX1JFTU9WRUQoaHdfYWRkcikpCj4+IC3CoMKgwqDCoMKgwqDCoCByZXR1cm4gfnZhbHVlOwo+
PiAtCj4+IMKgwqDCoMKgwqAgdmFsdWUgPSByZWFkbCgmaHdfYWRkcltyZWddKTsKPj4gwqDCoMKg
wqDCoCAvKiByZWFkcyBzaG91bGQgbm90IHJldHVybiBhbGwgRidzICovCj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3JlZ3MuaCAKPj4gYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3JlZ3MuaAo+PiBpbmRleCA4MjE1ODE3NjYzNGMu
LjIxYjZmYzQyZWRiYiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWdjL2lnY19yZWdzLmgKPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2ln
Y19yZWdzLmgKPj4gQEAgLTI3Nyw4ICsyNzcsNyBAQCB1MzIgaWdjX3JkMzIoc3RydWN0IGlnY19o
dyAqaHcsIHUzMiByZWcpOwo+PiDCoCAjZGVmaW5lIHdyMzIocmVnLCB2YWwpIFwKPj4gwqAgZG8g
eyBcCj4+IMKgwqDCoMKgwqAgdTggX19pb21lbSAqaHdfYWRkciA9IFJFQURfT05DRSgoaHcpLT5o
d19hZGRyKTsgXAo+PiAtwqDCoMKgIGlmICghSUdDX1JFTU9WRUQoaHdfYWRkcikpIFwKPj4gLcKg
wqDCoMKgwqDCoMKgIHdyaXRlbCgodmFsKSwgJmh3X2FkZHJbKHJlZyldKTsgXAo+PiArwqDCoMKg
IHdyaXRlbCgodmFsKSwgJmh3X2FkZHJbKHJlZyldKTsgXAo+PiDCoCB9IHdoaWxlICgwKQo+PiDC
oCAjZGVmaW5lIHJkMzIocmVnKSAoaWdjX3JkMzIoaHcsIHJlZykpCj4+Cj4gQWNrZWQtYnk6IFNh
c2hhIE5lZnRpbiA8c2FzaGEubmVmdGluQGludGVsLmNvbT4KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxp
c3QKPiBJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwo+IGh0dHBzOi8vbGlzdHMub3N1b3NsLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJ
bnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
