Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B727A33159B
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Mar 2021 19:13:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2567A40100;
	Mon,  8 Mar 2021 18:13:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T8_B-BjK5FGR; Mon,  8 Mar 2021 18:13:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0FDEA400FF;
	Mon,  8 Mar 2021 18:13:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4C93F1BF364
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Mar 2021 18:12:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 376FB6F554
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Mar 2021 18:12:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RKVu93Q_Mj9k for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Mar 2021 18:12:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4AC4F6F549
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Mar 2021 18:12:06 +0000 (UTC)
IronPort-SDR: UXuTxLrYyuVzQmD6cjinX4kr4bbqHmFuGSRbdgswTTMFAc0SpaLQf/Cv09tKtBmj/wH0odPKZK
 VBq4kzR2oTew==
X-IronPort-AV: E=McAfee;i="6000,8403,9917"; a="188187390"
X-IronPort-AV: E=Sophos;i="5.81,232,1610438400"; d="scan'208";a="188187390"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 10:12:05 -0800
IronPort-SDR: DfPMBFzFEKHdCWhqZbEQB2LcN0JAYGDns9h8unSbx3gApMGpHRFxCPDmscA/xnu63loafLOG4o
 kVCu+4WNTmpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,232,1610438400"; d="scan'208";a="598959700"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga006.fm.intel.com with ESMTP; 08 Mar 2021 10:12:04 -0800
Received: from debox1-desk1.jf.intel.com (debox1-desk1.jf.intel.com
 [10.54.75.57])
 by linux.intel.com (Postfix) with ESMTP id B4B7D580866;
 Mon,  8 Mar 2021 10:12:04 -0800 (PST)
Message-ID: <0069177abd6654eb36258cb089bc643e575b5ba7.camel@linux.intel.com>
From: "David E. Box" <david.e.box@linux.intel.com>
To: "Limonciello, Mario" <Mario.Limonciello@dell.com>, Rajneesh Bhardwaj
 <irenic.rajneesh@gmail.com>
Date: Mon, 08 Mar 2021 10:12:04 -0800
In-Reply-To: <SA1PR19MB49260612D4BEC9AA3FCA85A3FA939@SA1PR19MB4926.namprd19.prod.outlook.com>
References: <20210305190608.1834164-1-david.e.box@linux.intel.com>
 <SA1PR19MB49261823693E915E7D646B07FA939@SA1PR19MB4926.namprd19.prod.outlook.com>
 <CAE2upjT1SabzsEtxnVzFV9hVDVm-KuqXP9QEQqO6HHKVS0-HZg@mail.gmail.com>
 <SA1PR19MB49260612D4BEC9AA3FCA85A3FA939@SA1PR19MB4926.namprd19.prod.outlook.com>
Organization: David E. Box
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33) 
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 08 Mar 2021 18:13:14 +0000
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
Cc: "mgross@linux.intel.com" <mgross@linux.intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 "hdegoede@redhat.com" <hdegoede@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCAyMDIxLTAzLTA4IGF0IDE4OjAyICswMDAwLCBMaW1vbmNpZWxsbywgTWFyaW8gd3Jv
dGU6Cj4gCj4gCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTogUmFqbmVl
c2ggQmhhcmR3YWogPGlyZW5pYy5yYWpuZWVzaEBnbWFpbC5jb20+Cj4gPiBTZW50OiBNb25kYXks
IE1hcmNoIDgsIDIwMjEgMTE6MzIKPiA+IFRvOiBMaW1vbmNpZWxsbywgTWFyaW8KPiA+IENjOiBE
YXZpZCBFLiBCb3g7IGhkZWdvZWRlQHJlZGhhdC5jb207IG1ncm9zc0BsaW51eC5pbnRlbC5jb207
Cj4gPiBzYXNoYS5uZWZ0aW5AaW50ZWwuY29tOyBwbGF0Zm9ybS1kcml2ZXIteDg2QHZnZXIua2Vy
bmVsLm9yZzsgbGludXgtCj4gPiBrZXJuZWxAdmdlci5rZXJuZWwub3JnOyBpbnRlbC13aXJlZC1s
YW5AbGlzdHMub3N1b3NsLm9yZwo+ID4gU3ViamVjdDogUmU6IFtQQVRDSF0gcGxhdGZvcm0veDg2
OiBpbnRlbF9wbWM6IElnbm9yZSBHQkUgTFRSIG9uCj4gPiBUaWdlciBMYWtlCj4gPiBwbGF0Zm9y
bXMKPiA+IAo+ID4gCj4gPiBbRVhURVJOQUwgRU1BSUxdCj4gPiAKPiA+IE9uIE1vbiwgTWFyIDgs
IDIwMjEgYXQgMTI6MjAgUE0gTGltb25jaWVsbG8sIE1hcmlvCj4gPiA8TWFyaW8uTGltb25jaWVs
bG9AZGVsbC5jb20+IHdyb3RlOgo+ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBbRVhURVJOQUwgRU1B
SUxdCj4gPiA+ID4gCj4gPiA+ID4gRHVlIHRvIGEgSFcgbGltaXRhdGlvbiwgdGhlIExhdGVuY3kg
VG9sZXJhbmNlIFJlcG9ydGluZyAoTFRSKQo+ID4gPiA+IHZhbHVlCj4gPiA+ID4gcHJvZ3JhbW1l
ZCBpbiB0aGUgVGlnZXIgTGFrZSBHQkUgY29udHJvbGxlciBpcyBub3QgbGFyZ2UgZW5vdWdoCj4g
PiA+ID4gdG8gYWxsb3cKPiA+ID4gPiB0aGUgcGxhdGZvcm0gdG8gZW50ZXIgUGFja2FnZSBDMTAs
IHdoaWNoIGluIHR1cm4gcHJldmVudHMgdGhlCj4gPiA+ID4gcGxhdGZvcm0KPiA+IGZyb20KPiA+
ID4gPiBhY2hpZXZpbmcgaXRzIGxvdyBwb3dlciB0YXJnZXQgZHVyaW5nIHN1c3BlbmQtdG8taWRs
ZS7CoCBJZ25vcmUKPiA+ID4gPiB0aGUgR0JFIExUUgo+ID4gPiA+IHZhbHVlIG9uIFRpZ2VyIExh
a2UuIExUUiBpZ25vcmUgZnVuY3Rpb25hbGl0eSBpcyBjdXJyZW50bHkKPiA+ID4gPiBwZXJmb3Jt
ZWQKPiA+IHNvbGVseQo+ID4gPiA+IGJ5IGEgZGVidWdmcyB3cml0ZSBjYWxsLiBTcGxpdCBvdXQg
dGhlIExUUiBjb2RlIGludG8gaXRzIG93bgo+ID4gPiA+IGZ1bmN0aW9uIHRoYXQKPiA+ID4gPiBj
YW4gYmUgY2FsbGVkIGJ5IGJvdGggdGhlIGRlYnVnZnMgd3JpdGVyIGFuZCBieSB0aGlzIHdvcmsK
PiA+ID4gPiBhcm91bmQuCj4gPiA+ID4gCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogRGF2aWQgRS4g
Qm94IDxkYXZpZC5lLmJveEBsaW51eC5pbnRlbC5jb20+Cj4gPiA+ID4gUmV2aWV3ZWQtYnk6IFNh
c2hhIE5lZnRpbiA8c2FzaGEubmVmdGluQGludGVsLmNvbT4KPiA+ID4gPiBDYzogaW50ZWwtd2ly
ZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcKPiA+ID4gPiAtLS0KPiA+ID4gPiDCoGRyaXZlcnMvcGxh
dGZvcm0veDg2L2ludGVsX3BtY19jb3JlLmMgfCA1NQo+ID4gPiA+ICsrKysrKysrKysrKysrKysr
KysrLS0tLS0tLQo+ID4gPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDQyIGluc2VydGlvbnMoKyksIDEz
IGRlbGV0aW9ucygtKQo+ID4gPiAKPiA+ID4gSSBmZWVsIGxpa2UgdGhpcyBkcml2ZXIgY2hhbmdl
IGNhdXNlcyBhIHdlYWsgcmVmZXJlbmNlIGJldHdlZW4KPiA+ID4gZTEwMDBlIGFuZAo+ID4gaW50
ZWxfcG1jX2NvcmUuCj4gPiA+IEl0IHdvdWxkIG1lYW4gc2lnbmlmaWNhbnRseSBkaWZmZXJlbnQg
YmVoYXZpb3IgaWYgeW91IHVzZSBlMTAwMGUKPiA+ID4gYnV0IGRvbid0Cj4gPiBoYXZlIFBNQyBt
b2R1bGUKPiA+ID4gYXZhaWxhYmxlIGZvciBhbnkgcmVhc29uLgo+ID4gCj4gPiBDYW4geW91IGVs
YWJvcmF0ZSB3aGF0IHdvdWxkIGNoYW5nZSBzaWduaWZpY2FudGx5PyBUaGlzIGlzIGEgRlcvSFcK
PiA+IGlzc3VlIGFuZCB0aGUgZHJpdmVyIGlzIGp1c3QgZG9pbmcgYSB3b3JrIGFyb3VuZCB0byBs
ZXQgdGhlCj4gPiBwbGF0Zm9ybQo+ID4gZW50ZXIgYSBkZWVwIGlkbGUgc3RhdGUgYmV5b25kIFBD
MTAuIElmIHRoZSBzeXN0ZW0gY291bGQgZW50ZXIgUEMxMAo+ID4gYW5kIHdhcyBkZW5pZWQgZW50
cnkgYnkgUE1DIG9ubHkgYmVjYXVzZSBvZiBhIGJhZCBMQU4gTFRSLCB0aGVuCj4gPiB0aGF0J3MK
PiA+IHB1cmVseSBhbiBlMTAwMGUgZHJpdmVyL0dCRSBmdyBpc3N1ZS4KPiA+IAo+IEJlY2F1c2Ug
dGhlIHdvcmthcm91bmQgaXMgaW4gcG1jIGRyaXZlciwgdGhlIHBsYXRmb3JtIGJlaGF2aW9yCj4g
YmVjb21lcyB0aWVkCj4gdG8gd2hldGhlciB0aGlzIGRyaXZlciB3YXMgZW5hYmxlZC7CoCBCZWZv
cmUgdGhpcyB0aGUgZHJpdmVyIHdhcwo+IG1vc3RseSBmb3IgZGVidWdnaW5nCj4gcHVycG9zZSBh
bmQgcmVhbGx5IG5vdCBuZWNlc3NhcnkuwqAgTm93IGl0IGhhcyBhIGZ1bmN0aW9uYWwgcHVycG9z
ZS4KPiAKPiBBcyBzdWNoIEkgdGhpbmsgaXQgc2hvdWxkIGJlIG1hZGUgYXBwYXJlbnQgdGhhdCB5
b3UgbmVlZCBpdCBub3cgZm9yCj4gc29tZSBzeXN0ZW1zLgoKQWdyZWVkLiBUaGlzIGlzIG5vdCB0
aGUgZmlyc3QgZml4IGVpdGhlci4gVGhlIGRyaXZlciBuZWVkcyB0byBiZSBidWlsdApmb3IgYWxs
IHBsYXRmb3JtcyB3ZSBhZGQgc3VwcG9ydCBmb3IuIEknbGwgY2hhbmdlIHRoZSBLY29uZmlnLgoK
RGF2aWQKCj4gCj4gPiA+IAo+ID4gPiBJbiB0aGlzIGNhc2UgZG9lcyBpdCBtYXliZSBtYWtlIHNl
bnNlIHRvIGF0IGxlYXN0IHVzZSAiaW1wbHkiIGluCj4gPiA+IHRoZSBLY29uZmlnCj4gPiBmb3Ig
ZTEwMDBlIHNvCj4gPiA+IHRoYXQgc2VsZWN0aW5nIGUxMDAwZSBnZXRzIGludGVsLXBtYy1jb3Jl
IGVuYWJsZWQgdG9vPwo+ID4gCj4gPiBUaGlzIGNoYW5nZSB3b3VsZCB0ZWxsIFBNQyB0byBpZ25v
cmUgR0JFIExUUiwgcmVnYXJkbGVzcyBvZiB3aGljaAo+ID4gR0JFCj4gPiBkcml2ZXIgaXMgc2Vs
ZWN0ZWQuIFRoaXMgZG9lc24ndCBiaW5kIGUxMDAwZS4KPiAKPiBZZWFoLCB0aGF0J3MgYSBnb29k
IHBvaW50Lgo+IAo+IE1heWJlIG15IHN1Z2dlc3Rpb24gY2FuIGJlIHRvIHRha2UgdGhpcyBpbnRv
IGRvY3VtZW50YXRpb24gc29tZXdoZXJlCj4gaW5zdGVhZC4KPiAKPiA+IAo+ID4gPiAKPiA+ID4g
PiAKPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wbGF0Zm9ybS94ODYvaW50ZWxfcG1jX2Nv
cmUuYwo+ID4gPiA+IGIvZHJpdmVycy9wbGF0Zm9ybS94ODYvaW50ZWxfcG1jX2NvcmUuYwo+ID4g
PiA+IGluZGV4IGVlMmY3NTc1MTViMC4uYWIzMWViNjQ2YTFhIDEwMDY0NAo+ID4gPiA+IC0tLSBh
L2RyaXZlcnMvcGxhdGZvcm0veDg2L2ludGVsX3BtY19jb3JlLmMKPiA+ID4gPiArKysgYi9kcml2
ZXJzL3BsYXRmb3JtL3g4Ni9pbnRlbF9wbWNfY29yZS5jCj4gPiA+ID4gQEAgLTg2MywzNCArODYz
LDQ1IEBAIHN0YXRpYyBpbnQgcG1jX2NvcmVfcGxsX3Nob3coc3RydWN0Cj4gPiA+ID4gc2VxX2Zp
bGUgKnMsCj4gPiB2b2lkCj4gPiA+ID4gKnVudXNlZCkKPiA+ID4gPiDCoH0KPiA+ID4gPiDCoERF
RklORV9TSE9XX0FUVFJJQlVURShwbWNfY29yZV9wbGwpOwo+ID4gPiA+IAo+ID4gPiA+IC1zdGF0
aWMgc3NpemVfdCBwbWNfY29yZV9sdHJfaWdub3JlX3dyaXRlKHN0cnVjdCBmaWxlICpmaWxlLAo+
ID4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25zdCBjaGFyIF9fdXNlcgo+ID4gPiA+ICp1c2Vy
YnVmLAo+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzaXplX3QgY291bnQsIGxvZmZfdAo+ID4g
PiA+ICpwcG9zKQo+ID4gPiA+ICtzdGF0aWMgaW50IHBtY19jb3JlX3dyaXRlX2x0cl9pZ25vcmUo
dTMyIHZhbHVlKQo+ID4gPiA+IMKgewo+ID4gPiA+IMKgwqDCoMKgwqAgc3RydWN0IHBtY19kZXYg
KnBtY2RldiA9ICZwbWM7Cj4gPiA+ID4gwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgcG1jX3JlZ19t
YXAgKm1hcCA9IHBtY2Rldi0+bWFwOwo+ID4gPiA+IC3CoMKgwqDCoCB1MzIgdmFsLCBidWZfc2l6
ZSwgZmQ7Cj4gPiA+ID4gLcKgwqDCoMKgIGludCBlcnI7Cj4gPiA+ID4gLQo+ID4gPiA+IC3CoMKg
wqDCoCBidWZfc2l6ZSA9IGNvdW50IDwgNjQgPyBjb3VudCA6IDY0Owo+ID4gPiA+IC0KPiA+ID4g
PiAtwqDCoMKgwqAgZXJyID0ga3N0cnRvdTMyX2Zyb21fdXNlcih1c2VyYnVmLCBidWZfc2l6ZSwg
MTAsICZ2YWwpOwo+ID4gPiA+IC3CoMKgwqDCoCBpZiAoZXJyKQo+ID4gPiA+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgcmV0dXJuIGVycjsKPiA+ID4gPiArwqDCoMKgwqAgdTMyIGZkOwo+ID4g
PiA+ICvCoMKgwqDCoCBpbnQgZXJyID0gMDsKPiA+ID4gPiAKPiA+ID4gPiDCoMKgwqDCoMKgIG11
dGV4X2xvY2soJnBtY2Rldi0+bG9jayk7Cj4gPiA+ID4gCj4gPiA+ID4gLcKgwqDCoMKgIGlmICh2
YWwgPiBtYXAtPmx0cl9pZ25vcmVfbWF4KSB7Cj4gPiA+ID4gK8KgwqDCoMKgIGlmIChmbHModmFs
dWUpID4gbWFwLT5sdHJfaWdub3JlX21heCkgewo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGVyciA9IC1FSU5WQUw7Cj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Z290byBvdXRfdW5sb2NrOwo+ID4gPiA+IMKgwqDCoMKgwqAgfQo+ID4gPiA+IAo+ID4gPiA+IMKg
wqDCoMKgwqAgZmQgPSBwbWNfY29yZV9yZWdfcmVhZChwbWNkZXYsIG1hcC0+bHRyX2lnbm9yZV9v
ZmZzZXQpOwo+ID4gPiA+IC3CoMKgwqDCoCBmZCB8PSAoMVUgPDwgdmFsKTsKPiA+ID4gPiArwqDC
oMKgwqAgZmQgfD0gdmFsdWU7Cj4gPiA+ID4gwqDCoMKgwqDCoCBwbWNfY29yZV9yZWdfd3JpdGUo
cG1jZGV2LCBtYXAtPmx0cl9pZ25vcmVfb2Zmc2V0LCBmZCk7Cj4gPiA+ID4gCj4gPiA+ID4gwqBv
dXRfdW5sb2NrOgo+ID4gPiA+IMKgwqDCoMKgwqAgbXV0ZXhfdW5sb2NrKCZwbWNkZXYtPmxvY2sp
Owo+ID4gPiA+ICsKPiA+ID4gPiArwqDCoMKgwqAgcmV0dXJuIGVycjsKPiA+ID4gPiArfQo+ID4g
PiA+ICsKPiA+ID4gPiArc3RhdGljIHNzaXplX3QgcG1jX2NvcmVfbHRyX2lnbm9yZV93cml0ZShz
dHJ1Y3QgZmlsZSAqZmlsZSwKPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3QgY2hhciBf
X3VzZXIKPiA+ID4gPiAqdXNlcmJ1ZiwKPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2l6ZV90
IGNvdW50LCBsb2ZmX3QKPiA+ID4gPiAqcHBvcykKPiA+ID4gPiArewo+ID4gPiA+ICvCoMKgwqDC
oCB1MzIgYnVmX3NpemUsIHZhbDsKPiA+ID4gPiArwqDCoMKgwqAgaW50IGVycjsKPiA+ID4gPiAr
Cj4gPiA+ID4gK8KgwqDCoMKgIGJ1Zl9zaXplID0gY291bnQgPCA2NCA/IGNvdW50IDogNjQ7Cj4g
PiA+ID4gKwo+ID4gPiA+ICvCoMKgwqDCoCBlcnIgPSBrc3RydG91MzJfZnJvbV91c2VyKHVzZXJi
dWYsIGJ1Zl9zaXplLCAxMCwgJnZhbCk7Cj4gPiA+ID4gK8KgwqDCoMKgIGlmIChlcnIpCj4gPiA+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gZXJyOwo+ID4gPiA+ICsKPiA+ID4g
PiArwqDCoMKgwqAgZXJyID0gcG1jX2NvcmVfd3JpdGVfbHRyX2lnbm9yZSgxVSA8PCB2YWwpOwo+
ID4gPiA+ICsKPiA+ID4gPiDCoMKgwqDCoMKgIHJldHVybiBlcnIgPT0gMCA/IGNvdW50IDogZXJy
Owo+ID4gPiA+IMKgfQo+ID4gPiA+IAo+ID4gPiA+IEBAIC0xMTg5LDYgKzEyMDAsMTUgQEAgc3Rh
dGljIGludCBxdWlya194dGFsX2lnbm9yZShjb25zdAo+ID4gPiA+IHN0cnVjdAo+ID4gZG1pX3N5
c3RlbV9pZAo+ID4gPiA+ICppZCkKPiA+ID4gPiDCoMKgwqDCoMKgIHJldHVybiAwOwo+ID4gPiA+
IMKgfQo+ID4gPiA+IAo+ID4gPiA+ICtzdGF0aWMgaW50IHF1aXJrX2x0cl9pZ25vcmUodTMyIHZh
bCkKPiA+ID4gPiArewo+ID4gPiA+ICvCoMKgwqDCoCBpbnQgZXJyOwo+ID4gPiA+ICsKPiA+ID4g
PiArwqDCoMKgwqAgZXJyID0gcG1jX2NvcmVfd3JpdGVfbHRyX2lnbm9yZSh2YWwpOwo+ID4gPiA+
ICsKPiA+ID4gPiArwqDCoMKgwqAgcmV0dXJuIGVycjsKPiA+ID4gPiArfQo+ID4gPiA+ICsKPiA+
ID4gPiDCoHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1pX3N5c3RlbV9pZCBwbWNfY29yZV9kbWlfdGFi
bGVbXcKgID0gewo+ID4gPiA+IMKgwqDCoMKgwqAgewo+ID4gPiA+IMKgwqDCoMKgwqAgLmNhbGxi
YWNrID0gcXVpcmtfeHRhbF9pZ25vcmUsCj4gPiA+ID4gQEAgLTEyNDQsNiArMTI2NCwxNSBAQCBz
dGF0aWMgaW50IHBtY19jb3JlX3Byb2JlKHN0cnVjdAo+ID4gPiA+IHBsYXRmb3JtX2RldmljZQo+
ID4gKnBkZXYpCj4gPiA+ID4gwqDCoMKgwqDCoCBwbWNkZXYtPnBtY194cmFtX3JlYWRfYml0ID0K
PiA+ID4gPiBwbWNfY29yZV9jaGVja19yZWFkX2xvY2tfYml0KCk7Cj4gPiA+ID4gwqDCoMKgwqDC
oCBkbWlfY2hlY2tfc3lzdGVtKHBtY19jb3JlX2RtaV90YWJsZSk7Cj4gPiA+ID4gCj4gPiA+ID4g
K8KgwqDCoMKgIC8qCj4gPiA+ID4gK8KgwqDCoMKgwqAgKiBPbiBUR0wsIGR1ZSB0byBhIGhhcmR3
YXJlIGxpbWl0YXRpb24sIHRoZSBHQkUgTFRSCj4gPiA+ID4gYmxvY2tzIFBDMTAKPiA+IHdoZW4K
PiA+ID4gPiArwqDCoMKgwqDCoCAqIGEgY2FibGUgaXMgYXR0YWNoZWQuIFRlbGwgdGhlIFBNQyB0
byBpZ25vcmUgaXQuCj4gPiA+ID4gK8KgwqDCoMKgwqAgKi8KPiA+ID4gPiArwqDCoMKgwqAgaWYg
KHBtY2Rldi0+bWFwID09ICZ0Z2xfcmVnX21hcCkgewo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgZGV2X2RiZygmcGRldi0+ZGV2LCAiaWdub3JpbmcgR0JFIExUUlxuIik7Cj4gPiA+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBxdWlya19sdHJfaWdub3JlKDFVIDw8IDMpOwo+
ID4gPiA+ICvCoMKgwqDCoCB9Cj4gPiA+ID4gKwo+ID4gPiA+IMKgwqDCoMKgwqAgcG1jX2NvcmVf
ZGJnZnNfcmVnaXN0ZXIocG1jZGV2KTsKPiA+ID4gPiAKPiA+ID4gPiDCoMKgwqDCoMKgIGRldmlj
ZV9pbml0aWFsaXplZCA9IHRydWU7Cj4gPiA+ID4gLS0KPiA+ID4gPiAyLjI1LjEKPiA+ID4gCj4g
PiAKPiA+IAo+ID4gLS0KPiA+IFRoYW5rcywKPiA+IFJham5lZXNoCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
