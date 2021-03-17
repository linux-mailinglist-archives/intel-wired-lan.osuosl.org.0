Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A835A33E28E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 01:16:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 65E3E4EBE8;
	Wed, 17 Mar 2021 00:16:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 23d44pAXq5f1; Wed, 17 Mar 2021 00:16:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 103FF4EBE6;
	Wed, 17 Mar 2021 00:16:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AF1731BF393
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 00:16:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A9EDC83794
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 00:16:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rl8g0y-mY0ky for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 00:16:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C3741835C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 00:16:34 +0000 (UTC)
IronPort-SDR: iYBz7XQlpZ5LuGDPvrJyOuAcg7E/xPMtcwD0wWEpsp8moBhfzway8nY0zEIt0ABPrTnLMrNIdG
 0H+7NtVeLNKw==
X-IronPort-AV: E=McAfee;i="6000,8403,9925"; a="209309974"
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="209309974"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 17:16:33 -0700
IronPort-SDR: ES7hco9yV08H1H+1/qPB0DaiC3NfT1hQLJ4CM+MVcdrfe2i9kvhHea52CccIXe0/h4M100mIQh
 cIqYSPtPcjyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="522670228"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga004.jf.intel.com with ESMTP; 16 Mar 2021 17:16:33 -0700
Received: from debox1-desk1.jf.intel.com (debox1-desk1.jf.intel.com
 [10.54.75.159])
 by linux.intel.com (Postfix) with ESMTP id 9D84E5807EA;
 Tue, 16 Mar 2021 17:16:33 -0700 (PDT)
Message-ID: <f1643467b66463833d4c7656570931d595ab2533.camel@linux.intel.com>
From: "David E. Box" <david.e.box@linux.intel.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Date: Tue, 16 Mar 2021 17:16:33 -0700
In-Reply-To: <20210316151032.000002d2@intel.com>
References: <20210316214934.2992637-1-david.e.box@linux.intel.com>
 <20210316214934.2992637-2-david.e.box@linux.intel.com>
 <20210316151032.000002d2@intel.com>
Organization: David E. Box
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH V2 2/2] platform/x86: intel_pmc:
 Ignore GBE LTR on Tiger Lake platforms
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
Reply-To: david.e.box@linux.intel.com
Cc: mgross@linux.intel.com, Mario.Limonciello@dell.com, hdegoede@redhat.com,
 intel-wired-lan@lists.osuosl.org, irenic.rajneesh@gmail.com,
 gayatri.kammela@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCAyMDIxLTAzLTE2IGF0IDE1OjEwIC0wNzAwLCBKZXNzZSBCcmFuZGVidXJnIHdyb3Rl
Ogo+IERhdmlkIEUuIEJveCB3cm90ZToKPiAKPiA+IER1ZSB0byBhIEhXIGxpbWl0YXRpb24sIHRo
ZSBMYXRlbmN5IFRvbGVyYW5jZSBSZXBvcnRpbmcgKExUUikgdmFsdWUKPiA+IHByb2dyYW1tZWQg
aW4gdGhlIFRpZ2VyIExha2UgR0JFIGNvbnRyb2xsZXIgaXMgbm90IGxhcmdlIGVub3VnaCB0bwo+
ID4gYWxsb3cKPiA+IHRoZSBwbGF0Zm9ybSB0byBlbnRlciBQYWNrYWdlIEMxMCwgd2hpY2ggaW4g
dHVybiBwcmV2ZW50cyB0aGUKPiA+IHBsYXRmb3JtIGZyb20KPiA+IGFjaGlldmluZyBpdHMgbG93
IHBvd2VyIHRhcmdldCBkdXJpbmcgc3VzcGVuZC10by1pZGxlLsKgIElnbm9yZSB0aGUKPiA+IEdC
RSBMVFIKPiA+IHZhbHVlIG9uIFRpZ2VyIExha2UuIExUUiBpZ25vcmUgZnVuY3Rpb25hbGl0eSBp
cyBjdXJyZW50bHkKPiA+IHBlcmZvcm1lZCBzb2xlbHkKPiA+IGJ5IGEgZGVidWdmcyB3cml0ZSBj
YWxsLiBTcGxpdCBvdXQgdGhlIExUUiBjb2RlIGludG8gaXRzIG93bgo+ID4gZnVuY3Rpb24gdGhh
dAo+ID4gY2FuIGJlIGNhbGxlZCBieSBib3RoIHRoZSBkZWJ1Z2ZzIHdyaXRlciBhbmQgYnkgdGhp
cyB3b3JrIGFyb3VuZC4KPiAKPiBIaSBEYXZpZCwgdGhhbmtzIGZvciBsb29raW5nIGludG8gdGhp
cy4gQSBmZXcgcmV2aWV3IGNvbW1lbnRzIGZvbGxvdywKPiBhbmQgdGhlbiBJJ2xsIEFjayBpdC4K
CkhpIEplc3NlLiBUaGFua3MgZm9yIHJldmlld2luZy4KCj4gwqAKPiA+IFNpZ25lZC1vZmYtYnk6
IERhdmlkIEUuIEJveCA8ZGF2aWQuZS5ib3hAbGludXguaW50ZWwuY29tPgo+ID4gUmV2aWV3ZWQt
Ynk6IFNhc2hhIE5lZnRpbiA8c2FzaGEubmVmdGluQGludGVsLmNvbT4KPiA+IENjOiBpbnRlbC13
aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZwo+ID4gUmV2aWV3ZWQtYnk6IFJham5lZXNoIEJoYXJk
d2FqIDxpcmVuaWMucmFqbmVlc2hAZ21haWwuY29tPgo+ID4gLS0tCj4gPiBDaGFuZ2VzIGluIFYy
Ogo+ID4gwqDCoMKgwqDCoMKgwqDCoC0gUGFzcyB0aGUgYml0IHBvc2l0aW9uIGluc3RlYWQgb2Yg
dGhlIGVudGlyZSBtYXNrIHRvIHRoZQo+ID4gbHRyX2lnbm9yZQo+ID4gwqDCoMKgwqDCoMKgwqDC
oMKgIGZ1Y3Rpb24KPiA+IMKgwqDCoMKgwqDCoMKgwqAtIFJlbmFtZSB0aGUgd3JpdGVfbHRyX2ln
bm9yZSB0byBzZW5kX2x0cl9pZ25vcmUgdG8KPiA+IGRpZmZlcmVudGlhdGUgaXQKPiA+IMKgwqDC
oMKgwqDCoMKgwqDCoCBmcm9tIHRoZSBjYWxsZXIsIGx0cl9pZ25vcmVfd3JpdGUuCj4gPiDCoMKg
wqDCoMKgwqDCoMKgLSBSZW5hbWUgdmFyaWFibGVzIGZvciBjbGFyaXR5Cj4gPiAKPiA+IMKgZHJp
dmVycy9wbGF0Zm9ybS94ODYvaW50ZWxfcG1jX2NvcmUuYyB8IDU5ICsrKysrKysrKysrKysrKysr
KysrLS0tCj4gPiAtLS0tCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCA0NCBpbnNlcnRpb25zKCspLCAx
NSBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGxhdGZvcm0veDg2
L2ludGVsX3BtY19jb3JlLmMKPiA+IGIvZHJpdmVycy9wbGF0Zm9ybS94ODYvaW50ZWxfcG1jX2Nv
cmUuYwo+ID4gaW5kZXggZWUyZjc1NzUxNWIwLi44ZDc5OWNmYTBlOWYgMTAwNjQ0Cj4gPiAtLS0g
YS9kcml2ZXJzL3BsYXRmb3JtL3g4Ni9pbnRlbF9wbWNfY29yZS5jCj4gPiArKysgYi9kcml2ZXJz
L3BsYXRmb3JtL3g4Ni9pbnRlbF9wbWNfY29yZS5jCj4gPiBAQCAtODYzLDM0ICs4NjMsNDUgQEAg
c3RhdGljIGludCBwbWNfY29yZV9wbGxfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUKPiA+ICpzLCB2b2lk
ICp1bnVzZWQpCj4gPiDCoH0KPiA+IMKgREVGSU5FX1NIT1dfQVRUUklCVVRFKHBtY19jb3JlX3Bs
bCk7Cj4gPiDCoAo+ID4gLXN0YXRpYyBzc2l6ZV90IHBtY19jb3JlX2x0cl9pZ25vcmVfd3JpdGUo
c3RydWN0IGZpbGUgKmZpbGUsCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IGNoYXIg
X191c2VyCj4gPiAqdXNlcmJ1ZiwKPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2l6ZV90IGNv
dW50LCBsb2ZmX3QKPiA+ICpwcG9zKQo+ID4gK3N0YXRpYyBpbnQgcG1jX2NvcmVfc2VuZF9sdHJf
aWdub3JlKHUzMiB2YWx1ZSkKPiA+IMKgewo+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBwbWNf
ZGV2ICpwbWNkZXYgPSAmcG1jOwo+ID4gwqDCoMKgwqDCoMKgwqDCoGNvbnN0IHN0cnVjdCBwbWNf
cmVnX21hcCAqbWFwID0gcG1jZGV2LT5tYXA7Cj4gPiAtwqDCoMKgwqDCoMKgwqB1MzIgdmFsLCBi
dWZfc2l6ZSwgZmQ7Cj4gPiAtwqDCoMKgwqDCoMKgwqBpbnQgZXJyOwo+ID4gLQo+ID4gLcKgwqDC
oMKgwqDCoMKgYnVmX3NpemUgPSBjb3VudCA8IDY0ID8gY291bnQgOiA2NDsKPiA+IC0KPiA+IC3C
oMKgwqDCoMKgwqDCoGVyciA9IGtzdHJ0b3UzMl9mcm9tX3VzZXIodXNlcmJ1ZiwgYnVmX3NpemUs
IDEwLCAmdmFsKTsKPiA+IC3CoMKgwqDCoMKgwqDCoGlmIChlcnIpCj4gPiAtwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGVycjsKPiA+ICvCoMKgwqDCoMKgwqDCoHUzMiByZWc7
Cj4gPiArwqDCoMKgwqDCoMKgwqBpbnQgZXJyID0gMDsKPiA+IMKgCj4gPiDCoMKgwqDCoMKgwqDC
oMKgbXV0ZXhfbG9jaygmcG1jZGV2LT5sb2NrKTsKPiA+IMKgCj4gPiAtwqDCoMKgwqDCoMKgwqBp
ZiAodmFsID4gbWFwLT5sdHJfaWdub3JlX21heCkgewo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKHZh
bHVlID4gbWFwLT5sdHJfaWdub3JlX21heCkgewo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBlcnIgPSAtRUlOVkFMOwo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBnb3RvIG91dF91bmxvY2s7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgfQo+ID4gwqAKPiA+IC3CoMKg
wqDCoMKgwqDCoGZkID0gcG1jX2NvcmVfcmVnX3JlYWQocG1jZGV2LCBtYXAtPmx0cl9pZ25vcmVf
b2Zmc2V0KTsKPiA+IC3CoMKgwqDCoMKgwqDCoGZkIHw9ICgxVSA8PCB2YWwpOwo+ID4gLcKgwqDC
oMKgwqDCoMKgcG1jX2NvcmVfcmVnX3dyaXRlKHBtY2RldiwgbWFwLT5sdHJfaWdub3JlX29mZnNl
dCwgZmQpOwo+ID4gK8KgwqDCoMKgwqDCoMKgcmVnID0gcG1jX2NvcmVfcmVnX3JlYWQocG1jZGV2
LCBtYXAtPmx0cl9pZ25vcmVfb2Zmc2V0KTsKPiA+ICvCoMKgwqDCoMKgwqDCoHJlZyB8PSAoMVUg
PDwgdmFsdWUpOwo+IAo+IFRoaXMgc2hvdWxkIGp1c3QgYmUgQklUKHZhbHVlKS4KCkFjawoKPiAK
PiA+ICvCoMKgwqDCoMKgwqDCoHBtY19jb3JlX3JlZ193cml0ZShwbWNkZXYsIG1hcC0+bHRyX2ln
bm9yZV9vZmZzZXQsIHJlZyk7Cj4gPiDCoAo+ID4gwqBvdXRfdW5sb2NrOgo+ID4gwqDCoMKgwqDC
oMKgwqDCoG11dGV4X3VubG9jaygmcG1jZGV2LT5sb2NrKTsKPiA+ICsKPiA+ICvCoMKgwqDCoMKg
wqDCoHJldHVybiBlcnI7Cj4gPiArfQo+ID4gKwo+ID4gK3N0YXRpYyBzc2l6ZV90IHBtY19jb3Jl
X2x0cl9pZ25vcmVfd3JpdGUoc3RydWN0IGZpbGUgKmZpbGUsCj4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGNvbnN0IGNoYXIgX191c2VyCj4gPiAqdXNlcmJ1ZiwKPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgc2l6ZV90IGNvdW50LCBsb2ZmX3QKPiA+ICpwcG9zKQo+ID4gK3sKPiA+ICvCoMKg
wqDCoMKgwqDCoHUzMiBidWZfc2l6ZSwgdmFsdWU7Cj4gPiArwqDCoMKgwqDCoMKgwqBpbnQgZXJy
Owo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKgYnVmX3NpemUgPSBjb3VudCA8IDY0ID8gY291bnQg
OiA2NDsKPiAKPiBpc24ndCB0aGlzIGp1c3QgYW4gb3BlbiBjb2RlZCBidWZfc2l6ZSA9IG1pbl90
KHUzMiwgY291bnQsIDY0KTsgPwoKQWNrCgo+IAo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKgZXJy
ID0ga3N0cnRvdTMyX2Zyb21fdXNlcih1c2VyYnVmLCBidWZfc2l6ZSwgMTAsICZ2YWx1ZSk7Cj4g
PiArwqDCoMKgwqDCoMKgwqBpZiAoZXJyKQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoHJldHVybiBlcnI7Cj4gCj4gV2h5IGlzIHRoZXJlIG5vIHJhbmdlIGNoZWNrIG9yIGNoZWNr
aW5nIG9uICZ2YWx1ZT8KClRoaXMgaXMgcmFuZ2UgY2hlY2tlZCBpbiBwbWNfY29yZV9zZW5kX2x0
cl9pZ25vcmUgd2hpY2ggaGFzIG11bHRpcGxlCmNhbGxlcnMuCgo+IAo+IAo+ID4gKwo+ID4gK8Kg
wqDCoMKgwqDCoMKgZXJyID0gcG1jX2NvcmVfc2VuZF9sdHJfaWdub3JlKHZhbHVlKTsKPiA+ICsK
PiA+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZXJyID09IDAgPyBjb3VudCA6IGVycjsKPiA+IMKg
fQo+ID4gwqAKPiA+IEBAIC0xMTg5LDYgKzEyMDAsMTUgQEAgc3RhdGljIGludCBxdWlya194dGFs
X2lnbm9yZShjb25zdCBzdHJ1Y3QKPiA+IGRtaV9zeXN0ZW1faWQgKmlkKQo+ID4gwqDCoMKgwqDC
oMKgwqDCoHJldHVybiAwOwo+ID4gwqB9Cj4gPiDCoAo+ID4gK3N0YXRpYyBpbnQgcXVpcmtfbHRy
X2lnbm9yZSh1MzIgdmFsdWUpCj4gPiArewo+ID4gK8KgwqDCoMKgwqDCoMKgaW50IGVycjsKPiA+
ICsKPiA+ICvCoMKgwqDCoMKgwqDCoGVyciA9IHBtY19jb3JlX3NlbmRfbHRyX2lnbm9yZSh2YWx1
ZSk7Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKgwqByZXR1cm4gZXJyOwo+IAo+IHJldHVybiBwbWNf
Y29yZV9zZW5kX2x0cl9pZ25vcmUodmFsdWUpOyA/CgpEb2ghIFdlJ2xsIGp1c3QgY2FsbCBkaXJl
Y3RseSBhbmQgZ2V0IHJpZCBvZiB0aGlzIHdyYXBwZXIuCgpUaGFua3MuCgo+IAo+ID4gK30KPiA+
ICsKPiA+IMKgc3RhdGljIGNvbnN0IHN0cnVjdCBkbWlfc3lzdGVtX2lkIHBtY19jb3JlX2RtaV90
YWJsZVtdwqAgPSB7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgewo+ID4gwqDCoMKgwqDCoMKgwqDCoC5j
YWxsYmFjayA9IHF1aXJrX3h0YWxfaWdub3JlLAo+ID4gQEAgLTEyNDQsNiArMTI2NCwxNSBAQCBz
dGF0aWMgaW50IHBtY19jb3JlX3Byb2JlKHN0cnVjdAo+ID4gcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQo+ID4gwqDCoMKgwqDCoMKgwqDCoHBtY2Rldi0+cG1jX3hyYW1fcmVhZF9iaXQgPSBwbWNfY29y
ZV9jaGVja19yZWFkX2xvY2tfYml0KCk7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgZG1pX2NoZWNrX3N5
c3RlbShwbWNfY29yZV9kbWlfdGFibGUpOwo+ID4gwqAKPiA+ICvCoMKgwqDCoMKgwqDCoC8qCj4g
PiArwqDCoMKgwqDCoMKgwqAgKiBPbiBUR0wsIGR1ZSB0byBhIGhhcmR3YXJlIGxpbWl0YXRpb24s
IHRoZSBHQkUgTFRSIGJsb2Nrcwo+ID4gUEMxMCB3aGVuCj4gPiArwqDCoMKgwqDCoMKgwqAgKiBh
IGNhYmxlIGlzIGF0dGFjaGVkLiBUZWxsIHRoZSBQTUMgdG8gaWdub3JlIGl0Lgo+ID4gK8KgwqDC
oMKgwqDCoMKgICovCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAocG1jZGV2LT5tYXAgPT0gJnRnbF9y
ZWdfbWFwKSB7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZGV2X2RiZygmcGRl
di0+ZGV2LCAiaWdub3JpbmcgR0JFIExUUlxuIik7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgcXVpcmtfbHRyX2lnbm9yZSgzKTsKPiA+ICvCoMKgwqDCoMKgwqDCoH0KPiA+ICsK
PiA+IMKgwqDCoMKgwqDCoMKgwqBwbWNfY29yZV9kYmdmc19yZWdpc3RlcihwbWNkZXYpOwo+ID4g
wqAKPiA+IMKgwqDCoMKgwqDCoMKgwqBkZXZpY2VfaW5pdGlhbGl6ZWQgPSB0cnVlOwo+IAo+IAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
