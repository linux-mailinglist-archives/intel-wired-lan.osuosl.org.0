Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CB022BDE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 May 2019 08:08:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AD84522053;
	Mon, 20 May 2019 06:08:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HM7Badx-ndUU; Mon, 20 May 2019 06:08:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0875022115;
	Mon, 20 May 2019 06:08:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DB96A1BF2BA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 May 2019 06:08:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C140286FF8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 May 2019 06:08:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WCUXbSThWs38 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 May 2019 06:08:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D18B886AD4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 May 2019 06:08:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 May 2019 23:08:39 -0700
X-ExtLoop1: 1
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.23.132])
 ([10.185.23.132])
 by orsmga001.jf.intel.com with ESMTP; 19 May 2019 23:08:37 -0700
To: Paul Menzel <pmenzel@molgen.mpg.de>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>
References: <d185164e-d09f-39ab-74f0-0c483ab52e67@molgen.mpg.de>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <5507809f-b2f1-429a-64a7-e59d60c76a4a@intel.com>
Date: Mon, 20 May 2019 09:08:36 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.3
MIME-Version: 1.0
In-Reply-To: <d185164e-d09f-39ab-74f0-0c483ab52e67@molgen.mpg.de>
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
Cc: Arjan van de Ven <arjan@linux.intel.com>, intel-wired-lan@lists.osuosl.org,
 Miguel Bernal Marin <miguel.bernal.marin@linux.intel.com>,
 Tim Pepper <timothy.c.pepper@linux.intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNS8xNy8yMDE5IDE4OjAxLCBQYXVsIE1lbnplbCB3cm90ZToKPiBGcm9tOiBNaWd1ZWwgQmVy
bmFsIE1hcmluIDxtaWd1ZWwuYmVybmFsLm1hcmluQGxpbnV4LmludGVsLmNvbT4KPiBEYXRlOiBN
b24sIDI3IE1hciAyMDE3IDE2OjAxOjU2IC0wNjAwCj4gCj4gU3VnZ2VzdGVkLWJ5OiBUaW0gUGVw
cGVyIDx0aW1vdGh5LmMucGVwcGVyQGxpbnV4LmludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBN
aWd1ZWwgQmVybmFsIE1hcmluIDxtaWd1ZWwuYmVybmFsLm1hcmluQGxpbnV4LmludGVsLmNvbT4K
PiBTaWduZWQtb2ZmLWJ5OiBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPgo+IC0t
LQo+IE1pZ3VlbCwgaXTigJlkIGJlIGdyZWF0LCBpZiB5b3UgY291bGQgd3JpdGUgYSBjb21taXQg
bWVzc2FnZSBzdGF0aW5nIHRoZSAKPiBtb3RpdmF0aW9uIGZvciB0aGF0IGNoYW5nZSwgdGhhdCBt
ZWFucywgd2h5IGlzIGl0IHByZWZlcmFibGUgdG8gaW5jcmVhc2UgCj4gdGhlc2UgdmFsdWVzLCBh
bmQgc2V0IHRoZSBwYXVzZSB0aW1lIHVuY29uZGl0aW9uYWxseS4KPiAKPiAgwqBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMgfCA0ICsrLS0KPiAgwqAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMgCj4gYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMKPiBpbmRleCBjZTRhYWE5ZjIxNjMuLjU5
N2QzY2ExOTU1NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAw
MGUvbmV0ZGV2LmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0
ZGV2LmMKPiBAQCAtNDA0NywxMiArNDA0NywxMiBAQCB2b2lkIGUxMDAwZV9yZXNldChzdHJ1Y3Qg
ZTEwMDBfYWRhcHRlciAqYWRhcHRlcikKPiAgwqDCoMKgwqAgY2FzZSBlMTAwMF9wY2hfbHB0Ogo+
ICDCoMKgwqDCoCBjYXNlIGUxMDAwX3BjaF9zcHQ6Cj4gIMKgwqDCoMKgIGNhc2UgZTEwMDBfcGNo
X2NucDoKPiAtwqDCoMKgwqDCoMKgwqAgZmMtPnJlZnJlc2hfdGltZSA9IDB4MDQwMDsKPiArwqDC
oMKgwqDCoMKgwqAgZmMtPnJlZnJlc2hfdGltZSA9IDB4RkZGRjsKPiArwqDCoMKgwqDCoMKgwqAg
ZmMtPnBhdXNlX3RpbWUgPSAweEZGRkY7Cj4gCj4gIMKgwqDCoMKgwqDCoMKgwqAgaWYgKGFkYXB0
ZXItPm5ldGRldi0+bXR1IDw9IEVUSF9EQVRBX0xFTikgewo+ICDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgZmMtPmhpZ2hfd2F0ZXIgPSAweDA1QzIwOwo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgZmMtPmxvd193YXRlciA9IDB4MDUwNDg7Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZmMt
PnBhdXNlX3RpbWUgPSAweDA2NTA7Cj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBicmVhazsK
PiAgwqDCoMKgwqDCoMKgwqDCoCB9Cj4gCkkgYW0gZ29vZCB3aXRoIHRoaXMgcGF0Y2guCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxh
biBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5v
c3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
