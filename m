Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F3A23BD5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 May 2019 17:17:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8DF3320656;
	Mon, 20 May 2019 15:17:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i33JvEa3ef0k; Mon, 20 May 2019 15:17:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8EF4A2333F;
	Mon, 20 May 2019 15:17:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 68DC71BF3A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 May 2019 15:17:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 64B0B85A88
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 May 2019 15:17:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tF-na_ClN8lc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 May 2019 15:17:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7EC4A859BA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 May 2019 15:17:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 May 2019 08:17:29 -0700
X-ExtLoop1: 1
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.23.132])
 ([10.185.23.132])
 by orsmga006.jf.intel.com with ESMTP; 20 May 2019 08:17:26 -0700
From: "Neftin, Sasha" <sasha.neftin@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>
References: <d185164e-d09f-39ab-74f0-0c483ab52e67@molgen.mpg.de>
 <5507809f-b2f1-429a-64a7-e59d60c76a4a@intel.com>
Message-ID: <91202837-19cf-21c8-eadf-a1e2e90849c4@intel.com>
Date: Mon, 20 May 2019 18:17:26 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.3
MIME-Version: 1.0
In-Reply-To: <5507809f-b2f1-429a-64a7-e59d60c76a4a@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Increase pause and refresh
 time
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
Cc: intel-wired-lan@lists.osuosl.org, Arjan van de Ven <arjan@linux.intel.com>,
 Tim Pepper <timothy.c.pepper@linux.intel.com>,
 Miguel Bernal Marin <miguel.bernal.marin@linux.intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNS8yMC8yMDE5IDA5OjA4LCBOZWZ0aW4sIFNhc2hhIHdyb3RlOgo+IE9uIDUvMTcvMjAxOSAx
ODowMSwgUGF1bCBNZW56ZWwgd3JvdGU6Cj4+IEZyb206IE1pZ3VlbCBCZXJuYWwgTWFyaW4gPG1p
Z3VlbC5iZXJuYWwubWFyaW5AbGludXguaW50ZWwuY29tPgo+PiBEYXRlOiBNb24sIDI3IE1hciAy
MDE3IDE2OjAxOjU2IC0wNjAwCj4+Cj4+IFN1Z2dlc3RlZC1ieTogVGltIFBlcHBlciA8dGltb3Ro
eS5jLnBlcHBlckBsaW51eC5pbnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IE1pZ3VlbCBCZXJu
YWwgTWFyaW4gPG1pZ3VlbC5iZXJuYWwubWFyaW5AbGludXguaW50ZWwuY29tPgo+PiBTaWduZWQt
b2ZmLWJ5OiBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPgo+PiAtLS0KPj4gTWln
dWVsLCBpdOKAmWQgYmUgZ3JlYXQsIGlmIHlvdSBjb3VsZCB3cml0ZSBhIGNvbW1pdCBtZXNzYWdl
IHN0YXRpbmcgdGhlIAo+PiBtb3RpdmF0aW9uIGZvciB0aGF0IGNoYW5nZSwgdGhhdCBtZWFucywg
d2h5IGlzIGl0IHByZWZlcmFibGUgdG8gCj4+IGluY3JlYXNlIHRoZXNlIHZhbHVlcywgYW5kIHNl
dCB0aGUgcGF1c2UgdGltZSB1bmNvbmRpdGlvbmFsbHkuCj4+Cj4+IMKgwqBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMgfCA0ICsrLS0KPj4gwqDCoDEgZmlsZSBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMgCj4+IGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jCj4+IGluZGV4IGNlNGFhYTlmMjE2My4u
NTk3ZDNjYTE5NTU1IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9l
MTAwMGUvbmV0ZGV2LmMKPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBl
L25ldGRldi5jCj4+IEBAIC00MDQ3LDEyICs0MDQ3LDEyIEBAIHZvaWQgZTEwMDBlX3Jlc2V0KHN0
cnVjdCBlMTAwMF9hZGFwdGVyICphZGFwdGVyKQo+PiDCoMKgwqDCoMKgIGNhc2UgZTEwMDBfcGNo
X2xwdDoKPj4gwqDCoMKgwqDCoCBjYXNlIGUxMDAwX3BjaF9zcHQ6Cj4+IMKgwqDCoMKgwqAgY2Fz
ZSBlMTAwMF9wY2hfY25wOgo+PiAtwqDCoMKgwqDCoMKgwqAgZmMtPnJlZnJlc2hfdGltZSA9IDB4
MDQwMDsKPj4gK8KgwqDCoMKgwqDCoMKgIGZjLT5yZWZyZXNoX3RpbWUgPSAweEZGRkY7Cj4+ICvC
oMKgwqDCoMKgwqDCoCBmYy0+cGF1c2VfdGltZSA9IDB4RkZGRjsKPj4KPj4gwqDCoMKgwqDCoMKg
wqDCoMKgIGlmIChhZGFwdGVyLT5uZXRkZXYtPm10dSA8PSBFVEhfREFUQV9MRU4pIHsKPj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZmMtPmhpZ2hfd2F0ZXIgPSAweDA1QzIwOwo+PiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmYy0+bG93X3dhdGVyID0gMHgwNTA0ODsKPj4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgZmMtPnBhdXNlX3RpbWUgPSAweDA2NTA7Cj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGJyZWFrOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+Pgo+IEkgYW0g
Z29vZCB3aXRoIHRoaXMgcGF0Y2guCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cj4gSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKPiBodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC13aXJlZC1sYW4KQWNrZWQtYnk6IFNhc2hhIE5lZnRpbiA8c2FzaGEubmVmdGlu
QGludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9y
ZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1s
YW4K
