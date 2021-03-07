Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC973305DC
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Mar 2021 03:23:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 483A3839E9;
	Mon,  8 Mar 2021 02:23:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GsaO8hKFGdBK; Mon,  8 Mar 2021 02:23:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1CDA9835A6;
	Mon,  8 Mar 2021 02:23:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E5E7F1BF352
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Mar 2021 19:09:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D4A3082BC4
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Mar 2021 19:09:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 62_HaVGt-ab3 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  7 Mar 2021 19:09:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E958E82BBD
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Mar 2021 19:09:15 +0000 (UTC)
IronPort-SDR: F1rPP+u7pLHC7zt6Sxmvss6IU+HHjp8/7+jP+jCmaO3wLhXWn7ObUAe3z32Y79FHX+iN0ktkUM
 QL7ra1HAU/vA==
X-IronPort-AV: E=McAfee;i="6000,8403,9916"; a="207678214"
X-IronPort-AV: E=Sophos;i="5.81,230,1610438400"; d="scan'208";a="207678214"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2021 11:09:14 -0800
IronPort-SDR: k4u/SFLJtT4v2Y95kgtSD8GHq87WnACa/lCo/6HdKs5XWe1Fru1ms6Do1R5S+gb2pdJ6KBmsji
 vMc2Y5nlDSRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,230,1610438400"; d="scan'208";a="601882081"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga005.fm.intel.com with ESMTP; 07 Mar 2021 11:09:14 -0800
Received: from debox1-desk1.jf.intel.com (debox1-desk1.jf.intel.com
 [10.54.75.57])
 by linux.intel.com (Postfix) with ESMTP id 8498758080F;
 Sun,  7 Mar 2021 11:09:14 -0800 (PST)
Message-ID: <35bca0efb7d485f66e3cacdac113ab9e42058846.camel@linux.intel.com>
From: "David E. Box" <david.e.box@linux.intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>, irenic.rajneesh@gmail.com, 
 hdegoede@redhat.com, mgross@linux.intel.com
Date: Sun, 07 Mar 2021 11:09:14 -0800
In-Reply-To: <113b08b2-ead1-7f4c-1b09-4f3572d6134f@intel.com>
References: <20210305190608.1834164-1-david.e.box@linux.intel.com>
 <113b08b2-ead1-7f4c-1b09-4f3572d6134f@intel.com>
Organization: David E. Box
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33) 
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 08 Mar 2021 02:23:11 +0000
Subject: Re: [Intel-wired-lan] [PATCH] platform/x86: intel_pmc: Ignore GBE
 LTR on Tiger Lake platforms
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgU2FzaGEsCgpPbiBTdW4sIDIwMjEtMDMtMDcgYXQgMTA6MzkgKzAyMDAsIE5lZnRpbiwgU2Fz
aGEgd3JvdGU6Cj4gT24gMy81LzIwMjEgMjE6MDYsIERhdmlkIEUuIEJveCB3cm90ZToKPiA+IER1
ZSB0byBhIEhXIGxpbWl0YXRpb24sIHRoZSBMYXRlbmN5IFRvbGVyYW5jZSBSZXBvcnRpbmcgKExU
UikgdmFsdWUKPiA+IHByb2dyYW1tZWQgaW4gdGhlIFRpZ2VyIExha2UgR0JFIGNvbnRyb2xsZXIg
aXMgbm90IGxhcmdlIGVub3VnaCB0bwo+ID4gYWxsb3cKPiA+IHRoZSBwbGF0Zm9ybSB0byBlbnRl
ciBQYWNrYWdlIEMxMCwgd2hpY2ggaW4gdHVybiBwcmV2ZW50cyB0aGUKPiA+IHBsYXRmb3JtIGZy
b20KPiA+IGFjaGlldmluZyBpdHMgbG93IHBvd2VyIHRhcmdldCBkdXJpbmcgc3VzcGVuZC10by1p
ZGxlLsKgIElnbm9yZSB0aGUKPiA+IEdCRSBMVFIKPiA+IHZhbHVlIG9uIFRpZ2VyIExha2UuIExU
UiBpZ25vcmUgZnVuY3Rpb25hbGl0eSBpcyBjdXJyZW50bHkKPiA+IHBlcmZvcm1lZCBzb2xlbHkK
PiA+IGJ5IGEgZGVidWdmcyB3cml0ZSBjYWxsLiBTcGxpdCBvdXQgdGhlIExUUiBjb2RlIGludG8g
aXRzIG93bgo+ID4gZnVuY3Rpb24gdGhhdAo+ID4gY2FuIGJlIGNhbGxlZCBieSBib3RoIHRoZSBk
ZWJ1Z2ZzIHdyaXRlciBhbmQgYnkgdGhpcyB3b3JrIGFyb3VuZC4KPiA+IAo+ID4gU2lnbmVkLW9m
Zi1ieTogRGF2aWQgRS4gQm94IDxkYXZpZC5lLmJveEBsaW51eC5pbnRlbC5jb20+Cj4gPiBSZXZp
ZXdlZC1ieTogU2FzaGEgTmVmdGluIDxzYXNoYS5uZWZ0aW5AaW50ZWwuY29tPgo+ID4gQ2M6IGlu
dGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnCj4gPiAtLS0KPiA+IMKgIGRyaXZlcnMvcGxh
dGZvcm0veDg2L2ludGVsX3BtY19jb3JlLmMgfCA1NSArKysrKysrKysrKysrKysrKysrKy0tCj4g
PiAtLS0tLQo+ID4gwqAgMSBmaWxlIGNoYW5nZWQsIDQyIGluc2VydGlvbnMoKyksIDEzIGRlbGV0
aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wbGF0Zm9ybS94ODYvaW50ZWxf
cG1jX2NvcmUuYwo+ID4gYi9kcml2ZXJzL3BsYXRmb3JtL3g4Ni9pbnRlbF9wbWNfY29yZS5jCj4g
PiBpbmRleCBlZTJmNzU3NTE1YjAuLmFiMzFlYjY0NmExYSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZl
cnMvcGxhdGZvcm0veDg2L2ludGVsX3BtY19jb3JlLmMKPiA+ICsrKyBiL2RyaXZlcnMvcGxhdGZv
cm0veDg2L2ludGVsX3BtY19jb3JlLmMKPiA+IEBAIC04NjMsMzQgKzg2Myw0NSBAQCBzdGF0aWMg
aW50IHBtY19jb3JlX3BsbF9zaG93KHN0cnVjdCBzZXFfZmlsZQo+ID4gKnMsIHZvaWQgKnVudXNl
ZCkKPiA+IMKgIH0KPiA+IMKgIERFRklORV9TSE9XX0FUVFJJQlVURShwbWNfY29yZV9wbGwpOwo+
ID4gwqAgCj4gPiAtc3RhdGljIHNzaXplX3QgcG1jX2NvcmVfbHRyX2lnbm9yZV93cml0ZShzdHJ1
Y3QgZmlsZSAqZmlsZSwKPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3QgY2hhciBfX3Vz
ZXIKPiA+ICp1c2VyYnVmLAo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzaXplX3QgY291bnQs
IGxvZmZfdAo+ID4gKnBwb3MpCj4gPiArc3RhdGljIGludCBwbWNfY29yZV93cml0ZV9sdHJfaWdu
b3JlKHUzMiB2YWx1ZSkKPiA+IMKgIHsKPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgcG1jX2Rl
diAqcG1jZGV2ID0gJnBtYzsKPiA+IMKgwqDCoMKgwqDCoMKgwqBjb25zdCBzdHJ1Y3QgcG1jX3Jl
Z19tYXAgKm1hcCA9IHBtY2Rldi0+bWFwOwo+ID4gLcKgwqDCoMKgwqDCoMKgdTMyIHZhbCwgYnVm
X3NpemUsIGZkOwo+ID4gLcKgwqDCoMKgwqDCoMKgaW50IGVycjsKPiA+IC0KPiA+IC3CoMKgwqDC
oMKgwqDCoGJ1Zl9zaXplID0gY291bnQgPCA2NCA/IGNvdW50IDogNjQ7Cj4gPiAtCj4gPiAtwqDC
oMKgwqDCoMKgwqBlcnIgPSBrc3RydG91MzJfZnJvbV91c2VyKHVzZXJidWYsIGJ1Zl9zaXplLCAx
MCwgJnZhbCk7Cj4gPiAtwqDCoMKgwqDCoMKgwqBpZiAoZXJyKQo+ID4gLcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHJldHVybiBlcnI7Cj4gPiArwqDCoMKgwqDCoMKgwqB1MzIgZmQ7Cj4g
PiArwqDCoMKgwqDCoMKgwqBpbnQgZXJyID0gMDsKPiA+IMKgIAo+ID4gwqDCoMKgwqDCoMKgwqDC
oG11dGV4X2xvY2soJnBtY2Rldi0+bG9jayk7Cj4gPiDCoCAKPiA+IC3CoMKgwqDCoMKgwqDCoGlm
ICh2YWwgPiBtYXAtPmx0cl9pZ25vcmVfbWF4KSB7Cj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoZmxz
KHZhbHVlKSA+IG1hcC0+bHRyX2lnbm9yZV9tYXgpIHsKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgZXJyID0gLUVJTlZBTDsKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgZ290byBvdXRfdW5sb2NrOwo+ID4gwqDCoMKgwqDCoMKgwqDCoH0KPiA+IMKgIAo+ID4g
wqDCoMKgwqDCoMKgwqDCoGZkID0gcG1jX2NvcmVfcmVnX3JlYWQocG1jZGV2LCBtYXAtPmx0cl9p
Z25vcmVfb2Zmc2V0KTsKPiA+IC3CoMKgwqDCoMKgwqDCoGZkIHw9ICgxVSA8PCB2YWwpOwo+ID4g
K8KgwqDCoMKgwqDCoMKgZmQgfD0gdmFsdWU7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgcG1jX2NvcmVf
cmVnX3dyaXRlKHBtY2RldiwgbWFwLT5sdHJfaWdub3JlX29mZnNldCwgZmQpOwo+ID4gwqAgCj4g
PiDCoCBvdXRfdW5sb2NrOgo+ID4gwqDCoMKgwqDCoMKgwqDCoG11dGV4X3VubG9jaygmcG1jZGV2
LT5sb2NrKTsKPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDCoHJldHVybiBlcnI7Cj4gPiArfQo+ID4g
Kwo+ID4gK3N0YXRpYyBzc2l6ZV90IHBtY19jb3JlX2x0cl9pZ25vcmVfd3JpdGUoc3RydWN0IGZp
bGUgKmZpbGUsCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IGNoYXIgX191c2VyCj4g
PiAqdXNlcmJ1ZiwKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2l6ZV90IGNvdW50LCBsb2Zm
X3QKPiA+ICpwcG9zKQo+ID4gK3sKPiA+ICvCoMKgwqDCoMKgwqDCoHUzMiBidWZfc2l6ZSwgdmFs
Owo+ID4gK8KgwqDCoMKgwqDCoMKgaW50IGVycjsKPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDCoGJ1
Zl9zaXplID0gY291bnQgPCA2NCA/IGNvdW50IDogNjQ7Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKg
wqBlcnIgPSBrc3RydG91MzJfZnJvbV91c2VyKHVzZXJidWYsIGJ1Zl9zaXplLCAxMCwgJnZhbCk7
Cj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoZXJyKQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHJldHVybiBlcnI7Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKgwqBlcnIgPSBwbWNfY29y
ZV93cml0ZV9sdHJfaWdub3JlKDFVIDw8IHZhbCk7Cj4gPiArCj4gPiDCoMKgwqDCoMKgwqDCoMKg
cmV0dXJuIGVyciA9PSAwID8gY291bnQgOiBlcnI7Cj4gPiDCoCB9Cj4gPiDCoCAKPiA+IEBAIC0x
MTg5LDYgKzEyMDAsMTUgQEAgc3RhdGljIGludCBxdWlya194dGFsX2lnbm9yZShjb25zdCBzdHJ1
Y3QKPiA+IGRtaV9zeXN0ZW1faWQgKmlkKQo+ID4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiAwOwo+
ID4gwqAgfQo+ID4gwqAgCj4gPiArc3RhdGljIGludCBxdWlya19sdHJfaWdub3JlKHUzMiB2YWwp
Cj4gPiArewo+ID4gK8KgwqDCoMKgwqDCoMKgaW50IGVycjsKPiA+ICsKPiA+ICvCoMKgwqDCoMKg
wqDCoGVyciA9IHBtY19jb3JlX3dyaXRlX2x0cl9pZ25vcmUodmFsKTsKPiA+ICsKPiA+ICvCoMKg
wqDCoMKgwqDCoHJldHVybiBlcnI7Cj4gPiArfQo+ID4gKwo+ID4gwqAgc3RhdGljIGNvbnN0IHN0
cnVjdCBkbWlfc3lzdGVtX2lkIHBtY19jb3JlX2RtaV90YWJsZVtdwqAgPSB7Cj4gPiDCoMKgwqDC
oMKgwqDCoMKgewo+ID4gwqDCoMKgwqDCoMKgwqDCoC5jYWxsYmFjayA9IHF1aXJrX3h0YWxfaWdu
b3JlLAo+ID4gQEAgLTEyNDQsNiArMTI2NCwxNSBAQCBzdGF0aWMgaW50IHBtY19jb3JlX3Byb2Jl
KHN0cnVjdAo+ID4gcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gwqDCoMKgwqDCoMKgwqDCoHBt
Y2Rldi0+cG1jX3hyYW1fcmVhZF9iaXQgPSBwbWNfY29yZV9jaGVja19yZWFkX2xvY2tfYml0KCk7
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgZG1pX2NoZWNrX3N5c3RlbShwbWNfY29yZV9kbWlfdGFibGUp
Owo+ID4gwqAgCj4gPiArwqDCoMKgwqDCoMKgwqAvKgo+ID4gK8KgwqDCoMKgwqDCoMKgICogT24g
VEdMLCBkdWUgdG8gYSBoYXJkd2FyZSBsaW1pdGF0aW9uLCB0aGUgR0JFIExUUiBibG9ja3MKPiA+
IFBDMTAgd2hlbgo+ID4gK8KgwqDCoMKgwqDCoMKgICogYSBjYWJsZSBpcyBhdHRhY2hlZC4gVGVs
bCB0aGUgUE1DIHRvIGlnbm9yZSBpdC4KPiA+ICvCoMKgwqDCoMKgwqDCoCAqLwo+ID4gK8KgwqDC
oMKgwqDCoMKgaWYgKHBtY2Rldi0+bWFwID09ICZ0Z2xfcmVnX21hcCkgewo+IEkgd291bGQgc3Vn
Z2VzdDogaWYgKHBtY2Rldi0+bWFwID49ICZ0Z2xfcmVnX21hcCkKClRoaXMgd2lsbCBhbHJlYWR5
IGNvdmVyIFJvY2tldCBMYWtlIHNpbmNlIGl0IHVzZXMgVGlnZXIgTGFrZSBQQ0guIFRob3NlCmFy
ZSB0aGUgbmV3ZXN0IHBsYXRmb3JtcyB0aGlzIGRyaXZlciBjb3ZlcnMuIE90aGVyd2lzZSwgSSBk
b24ndCB3YW50IHRvCnJlbHkgb24gdGhpcyBhcyB0aGUgcGVybWFuZW50IHNvbHV0aW9uLiBXZSBj
YW4gZXZhbHVhdGUgdGhpcyBvbiBhIHBlcgpwbGF0Zm9ybSBiYXNpcyB3aGlsZSBwZXJzdWluZyBv
dGhlciBtZWFzdXJlcyB0byBtb3JlIHByb3Blcmx5IHJlc29sdmUKaXQuCgpEYXZpZAoKPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkZXZfZGJnKCZwZGV2LT5kZXYsICJpZ25vcmlu
ZyBHQkUgTFRSXG4iKTsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBxdWlya19s
dHJfaWdub3JlKDFVIDw8IDMpOwo+ID4gK8KgwqDCoMKgwqDCoMKgfQo+ID4gKwo+ID4gwqDCoMKg
wqDCoMKgwqDCoHBtY19jb3JlX2RiZ2ZzX3JlZ2lzdGVyKHBtY2Rldik7Cj4gPiDCoCAKPiA+IMKg
wqDCoMKgwqDCoMKgwqBkZXZpY2VfaW5pdGlhbGl6ZWQgPSB0cnVlOwo+ID4gCj4gCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFu
IG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9z
dW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
