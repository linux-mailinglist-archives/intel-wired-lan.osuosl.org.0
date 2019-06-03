Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F53833715
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jun 2019 19:47:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3CAB185EA4;
	Mon,  3 Jun 2019 17:47:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xw83gE8q60Wv; Mon,  3 Jun 2019 17:47:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A239C85C9D;
	Mon,  3 Jun 2019 17:47:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B73281BF285
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2019 14:54:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B2669220C1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2019 14:54:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E6egtJa35B8v for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jun 2019 14:54:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
 by silver.osuosl.org (Postfix) with ESMTPS id 5B0C321FF6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2019 14:54:05 +0000 (UTC)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x53DokHU081801;
 Mon, 3 Jun 2019 08:50:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559569846;
 bh=NdovAWZTPscVD4sa6lqUt3AjBE008dxgbM7KZYjTAQ4=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=hb4bNjmPBde10Nq+b2N7lJjFt3f19MAAsxWeNw8vgPAGV/zKxncfKcW38yw/AKxF3
 zHHQjdBaIevyu1/M3zhRWtI1R4wi7lIBj53MwGSit5+vIowvD3Rm+WKrludOrZ3Txt
 DMA08Gi7mQpnulmHqlrW9lW2mLt/4cUHa4Xok1hg=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x53DokXu095906
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 3 Jun 2019 08:50:46 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 3 Jun
 2019 08:50:45 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 3 Jun 2019 08:50:45 -0500
Received: from [158.218.117.39] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x53DojxA009754;
 Mon, 3 Jun 2019 08:50:45 -0500
To: Vedang Patel <vedang.patel@intel.com>, <netdev@vger.kernel.org>
References: <1559065608-27888-1-git-send-email-vedang.patel@intel.com>
 <007b6a78-48e7-e667-d84b-dec745f84603@ti.com>
From: Murali Karicheri <m-karicheri2@ti.com>
Message-ID: <4c4ec746-4282-ad3a-351c-1c7a355d093d@ti.com>
Date: Mon, 3 Jun 2019 09:54:56 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <007b6a78-48e7-e667-d84b-dec745f84603@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Mailman-Approved-At: Mon, 03 Jun 2019 17:47:06 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 0/7] net/sched: Add txtime
 assist support for taprio
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
Cc: jiri@resnulli.us, l@dorileo.org, jhs@mojatatu.com,
 intel-wired-lan@lists.osuosl.org, xiyou.wangcong@gmail.com,
 davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMDYvMDMvMjAxOSAwOTo1MCBBTSwgTXVyYWxpIEthcmljaGVyaSB3cm90ZToKPiBIaSBWZWRh
bmcsCj4gCj4gT24gMDUvMjgvMjAxOSAwMTo0NiBQTSwgVmVkYW5nIFBhdGVsIHdyb3RlOgo+PiBD
dXJyZW50bHksIHdlIGFyZSBzZWVpbmcgcGFja2V0cyBiZWluZyB0cmFuc21pdHRlZCBvdXRzaWRl
IHRoZWlyIAo+PiB0aW1lc2xpY2VzLiBXZQo+PiBjYW4gY29uZmlybSB0aGF0IHRoZSBwYWNrZXRz
IGFyZSBiZWluZyBkZXF1ZXVlZCBhdCB0aGUgcmlnaHQgdGltZS4gU28sIAo+PiB0aGUKPj4gZGVs
YXkgaXMgaW5kdWNlZCBhZnRlciB0aGUgcGFja2V0IGlzIGRlcXVldWVkLCBiZWNhdXNlIHRhcHJp
bywgd2l0aG91dCAKPj4gYW55Cj4+IG9mZmxvYWRpbmcsIGhhcyBubyBjb250cm9sIG9mIHdoZW4g
YSBwYWNrZXQgaXMgYWN0dWFsbHkgdHJhbnNtaXR0ZWQuCj4+Cj4+IEluIG9yZGVyIHRvIHNvbHZl
IHRoaXMsIHdlIGFyZSBtYWtpbmcgdXNlIG9mIHRoZSB0eHRpbWUgZmVhdHVyZSAKPj4gcHJvdmlk
ZWQgYnkgRVRGCj4+IHFkaXNjLiBIYXJkd2FyZSBvZmZsb2FkaW5nIG5lZWRzIHRvIGJlIHN1cHBv
cnRlZCBieSB0aGUgRVRGIHFkaXNjIGluIAo+PiBvcmRlciB0bwo+PiB0YWtlIGFkdmFudGFnZSBv
ZiB0aGlzIGZlYXR1cmUuIFRoZSB0YXByaW8gcWRpc2Mgd2lsbCBhc3NpZ24gdHh0aW1lIChpbgo+
PiBza2ItPnRzdGFtcCkgZm9yIGFsbCB0aGUgcGFja2V0cyB3aGljaCBkbyBub3QgaGF2ZSB0aGUg
dHh0aW1lIAo+PiBhbGxvY2F0ZWQgdmlhIHRoZQo+PiBTT19UWFRJTUUgc29ja2V0IG9wdGlvbi4g
Rm9yIHRoZSBwYWNrZXRzIHdoaWNoIGFscmVhZHkgaGF2ZSBTT19UWFRJTUUgCj4+IHNldCwKPj4g
dGFwcmlvIHdpbGwgdmFsaWRhdGUgd2hldGhlciB0aGUgcGFja2V0IHdpbGwgYmUgdHJhbnNtaXR0
ZWQgaW4gdGhlIAo+PiBjb3JyZWN0Cj4+IGludGVydmFsLgo+Pgo+PiBJbiBvcmRlciB0byBzdXBw
b3J0IHRoaXMsIHRoZSBmb2xsb3dpbmcgcGFyYW1ldGVycyBoYXZlIGJlZW4gYWRkZWQ6Cj4+IC0g
b2ZmbG9hZCAodGFwcmlvKTogVGhpcyBpcyBhZGRlZCBpbiBvcmRlciB0byBzdXBwb3J0IGRpZmZl
cmVudCAKPj4gb2ZmbG9hZGluZwo+PiDCoMKgIG1vZGVzIHdoaWNoIHdpbGwgYmUgYWRkZWQgaW4g
dGhlIGZ1dHVyZS4KPj4gLSB0eHRpbWUtZGVsYXkgKHRhcHJpbyk6IHRoaXMgaXMgdGhlIHRpbWUg
dGhlIHBhY2tldCB0YWtlcyB0byB0cmF2ZXJzZSAKPj4gdGhyb3VnaAo+PiDCoMKgIHRoZSBrZXJu
ZWwgdG8gYWRhcHRlciBjYXJkLgo+IAo+IEkgYW0gdmVyeSBuZXcgdG8gdGhpcyBUQyBhbmQgUW9T
IGhhbmRsaW5nIG9mIExpbnV4IGtlcm5lbCBhbmQgVFNOLiBTbyAKPiBzb3JyeSBzb21lIG9mIHRo
ZcKgIHF1ZXN0aW9ucyBiZWxvdyBhcmUgdmVyeSBiYXNpYyBpbiBuYXR1cmUuIEkgd291bGQgCj4g
c29vbiB3b3VsZCBiZSB3b3JraW5nIHRvIGFkZCB0aGlzIHN1cHBvcnQgaW4gb3VyIHBsYXRmb3Jt
IGJhc2VkIG9uIHRoaXMuCj4gU28gcGxlYXNlIGFuc3dlci4KPiAKPiBJcyB0eHRpbWUtZGVsYXkg
ZnJvbSB0aGUgaW5zdGFuY2UgcWRpc2MgZGUtcXVldWUgdGhlIHBhY2tldCB0byB0aGUgdGltZQo+
IHBhY2tldHMgZ2V0IG9udG8gdGhlIHdpcmU/IEkgYW0gd29uZGVyaW5nIGlmIHRoaXMgdGltZSBp
cyBkZXRlcm1pbmlzdGljCj4gb3Igd2UgaGF2ZSBzb21lIHdheSB0byBlbnN1cmUgdGhpcyBjYW4g
YmUgdHVuZWQgdG8gbWVldCBhIG1heCB2YWx1ZT8KPiBBbHNvIGhvdyB3b3VsZCBvbmUgY2FsY3Vs
YXRlIHRoaXMgdmFsdWUgb3IgaGF2ZSB0byBtZWFzdXJlIGl0Pwo+IAo+PiAtIHNraXBfc29ja19j
aGVjayAoZXRmKTogZXRmIHFkaXNjIGN1cnJlbnRseSBkcm9wcyBhbnkgcGFja2V0IHdoaWNoIAo+
PiBkb2VzIG5vdAo+PiDCoMKgIGhhdmUgdGhlIFNPX1RYVElNRSBzb2NrZXQgb3B0aW9uIHNldC4g
VGhpcyBjaGVjayBjYW4gYmUgc2tpcHBlZCBieSAKPj4gc3BlY2lmeWluZwo+PiDCoMKgIHRoaXMg
b3B0aW9uLgo+Pgo+PiBGb2xsb3dpbmcgaXMgYW4gZXhhbXBsZSBjb25maWd1cmF0aW9uOgo+Pgo+
PiAkIHRjIHFkaXNjIHJlcGxhY2UgZGV2ICRJRkFDRSBwYXJlbnQgcm9vdCBoYW5kbGUgMTAwIHRh
cHJpbyBcXAo+PiDCoMKgwqDCoMKgwqAgbnVtX3RjIDMgXFwKPj4gwqDCoMKgwqDCoMKgIG1hcCAy
IDIgMSAwIDIgMiAyIDIgMiAyIDIgMiAyIDIgMiAyIFxcCj4+IMKgwqDCoMKgwqDCoCBxdWV1ZXMg
MUAwIDFAMCAxQDAgXFwKPj4gwqDCoMKgwqDCoMKgIGJhc2UtdGltZSAkQkFTRV9USU1FIFxcCj4+
IMKgwqDCoMKgwqDCoCBzY2hlZC1lbnRyeSBTIDAxIDMwMDAwMCBcXAo+PiDCoMKgwqDCoMKgwqAg
c2NoZWQtZW50cnkgUyAwMiAzMDAwMDAgXFwKPj4gwqDCoMKgwqDCoMKgIHNjaGVkLWVudHJ5IFMg
MDQgNDAwMDAwIFxcCj4+IMKgwqDCoMKgwqDCoCBvZmZsb2FkIDIgXFwKPj4gwqDCoMKgwqDCoMKg
IHR4dGltZS1kZWxheSA0MDAwMCBcXAo+PiDCoMKgwqDCoMKgwqAgY2xvY2tpZCBDTE9DS19UQUkK
Pj4KPiAKPiBDb3VsZCB5b3UgdGVsbCBtZSB3aGF0IGlzIENMT0NLX1RBST8/IEkgc2VlIGJlbG93
IGluIHRoZSBzb3VyY2UgY29kZSBmb3IKPiB0aGUgZGVmaW5pdGlvbiBpbiBpbmNsdWRlL3VhcGkv
bGludXgvdGltZS5oCj4gCj4gLyoKPiAgwqAqIFRoZSBkcml2ZXIgaW1wbGVtZW50aW5nIHRoaXMg
Z290IHJlbW92ZWQuIFRoZSBjbG9jayBJRCBpcyBrZXB0IGFzIGEKPiAgwqAqIHBsYWNlIGhvbGRl
ci4gRG8gbm90IHJldXNlIQo+ICDCoCovCj4gI2RlZmluZSBDTE9DS19TR0lfQ1lDTEXCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIDEwCj4gI2RlZmluZSBDTE9DS19UQUnCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIDExCj4gCj4gU28gd2h5IGRvIEkgc2VlIHN1Y2ggZGVmaW5lcyBiZWluZyB1c2VkIGluIHRo
ZSBleGFtcGxlIHRoYXQgaXMgYmVpbmcKPiByZW1vdmVkPwo+IAo+IEFGQUlLLCBGcm9tIHRoZSB1
c2FnZSBwb2ludCBvZiB2aWV3LCBUU04gcmVxdWlyZXMgdGhlIG5ldHdvcmsgYmVpbmcKPiBzeW5j
aHJvbml6ZWQgdGhyb3VnaCBsaW51eCBQVFAuIEZvciBzeW5jaHJvbml6YXRpb24gcGhjMnN5cyBp
cyB1c2VkIHRvCj4gc3luY2hyb25pemUgc3lzdGVtIHRpbWUgdG8gdGhlIFBIQy4gU28gd2h5IGRv
bid0IG9uZSB1c2Ugc3lzdGVtIHRpbWUgZm9yCj4gdGhpcz8KPiAKPiBTbyBhcHBsaWNhdGlvbiB3
aWxsIHVzZSBjbG9ja19nZXR0aW1lKCkgdG8ga25vdyBjdXJyZW50IHRpbWUgYW5kCj4gc2NoZWR1
bGUgdGhlIHBhY2tldCBmb3IgdHJhbnNtaXNzaW9uIGFzIHdlbGwgYXMgdXNlciB3b3VsZCB1c2Ug
c2NyaXB0cwo+IG9yIHN1Y2ggdG8gY2hlY2sgY3VycmVudCBzeXN0ZW0gdGltZSBhbmQgaXNzdWUg
dGMgY29tbWFuZCBhYm92ZS4gU28gdGhlCj4gY29tbWFuZCBzaG91bGQgdXNlIENMT0NLX1JFQUxU
SU1FIGluIHRoYXQgY2FzZS4gU28gYWxsIGgvdyBhbmQgc29mdHdhcmUKPiBhcmUgYWxpZ25lZCB0
byB0aGUgc2FtZSB0aW1lIHNvdXJjZS4gT3IgSGF2ZSBJIHVuZGVyc3Rvb2QgaXQgd3Jvbmc/IEkg
YW0KPiBhc3N1bWluZyB0aGF0IGZvciB0aGUgb2ZmbG9hZGVkIGNhc2UsIGgvdyBzY2hlZHVsZSBH
YXRlIG9wZW4sIHNlbmQKPiBwYWNrZXQgZXRjIGFyZSBzeW5jaHJvbml6ZWQgdG8gdGhlIFBIQyBv
ciB1c2UgYSB0cmFuc2xhdGVkIHRpbWUgdy5yLnQgCj4gdGhlIGNvbW1vbiB0aW1lIChuZXR3b3Jr
IHRpbWUuIEFzc3VtaW5nIFBIQyB0cmFja3MgdGhpcykuCj4gCj4gVGhhbmtzIGluIGFkdmFuY2Ug
Zm9yIGNsYXJpZnlpbmcgdGhpcy4KPiAKPj4gJCB0YyBxZGlzYyByZXBsYWNlIGRldiAkSUZBQ0Ug
cGFyZW50IDEwMDoxIGV0ZiBcXAo+PiDCoMKgwqDCoMKgwqAgb2ZmbG9hZCBkZWx0YSAyMDAwMDAg
Y2xvY2tpZCBDTE9DS19UQUkgc2tpcF9zb2NrX2NoZWNrCj4+Cj4+IEhlcmUsIHRoZSAib2ZmbG9h
ZCIgcGFyYW1ldGVyIGlzIGluZGljYXRpbmcgdGhhdCB0aGUgVFhUSU1FX09GRkxPQUQgCj4+IG1v
ZGUgaXMKPj4gZW5hYmxlZC4gQWxzbywgdGhhdCBhbGwgdGhlIHRyYWZmaWMgY2xhc3NlcyBoYXZl
IGJlZW4gYXNzaWduZWQgdGhlIAo+PiBzYW1lIHF1ZXVlLgoKQWN0dWFsbHkgdGhlIHRjIGNsYXNz
IGlzIG1hcHBlZCB0byB0aGUgc2FtZSBxdWV1ZSBpbiB0aGUgcHJldmlvdXMKY29tbWFuZCwgbm90
IHRoaXMgb25lLCByaWdodD8KCk11cmFsaQo+PiBUaGlzIGlzIHRvIHByZXZlbnQgdGhlIHRyYWZm
aWMgY2xhc3NlcyBpbiB0aGUgbG93ZXIgcHJpb3JpdHkgcXVldWVzIGZyb20KPj4gZ2V0dGluZyBz
dGFydmVkLiBOb3RlIHRoYXQgdGhpcyBjb25maWd1cmF0aW9uIGlzIHNwZWNpZmljIHRvIHRoZSBp
MjEwIAo+PiBldGhlcm5ldAo+PiBjYXJkLiBPdGhlciBuZXR3b3JrIGNhcmRzIHdoZXJlIHRoZSBo
YXJkd2FyZSBxdWV1ZXMgYXJlIGdpdmVuIHRoZSBzYW1lCj4+IHByaW9yaXR5LCBtaWdodCBiZSBh
YmxlIHRvIHV0aWxpemUgbW9yZSB0aGFuIG9uZSBxdWV1ZS4KPj4KPj4gRm9sbG93aW5nIGFyZSBz
b21lIG9mIHRoZSBvdGhlciBoaWdobGlnaHRzIG9mIHRoZSBzZXJpZXM6Cj4+IC0gRml4IGEgYnVn
IHdoZXJlIGhhcmR3YXJlIHRpbWVzdGFtcGluZyBhbmQgU09fVFhUSU1FIG9wdGlvbnMgY2Fubm90
IAo+PiBiZSB1c2VkCj4+IMKgwqAgdG9nZXRoZXIuIChQYXRjaCAxKQo+PiAtIEludHJvZHVjZSBo
YXJkd2FyZSBvZmZsb2FkaW5nLiBUaGlzIHBhdGNoIGludHJvZHVjZXMgb2ZmbG9hZCAKPj4gcGFy
YW1ldGVyIHdoaWNoCj4+IMKgwqAgY2FuIGJlIHVzZWQgdG8gZW5hYmxlIHRoZSB0eHRpbWUgb2Zm
bG9hZCBtb2RlLiBJdCB3aWxsIGFsc28gc3VwcG9ydCAKPj4gZW5hYmxpbmcKPj4gwqDCoCBmdWxs
IG9mZmxvYWQgd2hlbiB0aGUgc3VwcG9ydCBpcyBhdmFpbGFibGUgaW4gZHJpdmVycy4gKFBhdGNo
IDMpCj4+IC0gTWFrZSBUeFRpbWUgYXNzaXN0IG1vZGUgd29yayB3aXRoIFRDUCBwYWNrZXRzLiAo
UGF0Y2ggNiAmIDcpCj4+Cj4+Cj4+IFRoZSBmb2xsb3dpbmcgY2hhbmdlcyBhcmUgcmVjb21tZW5k
ZWQgdG8gYmUgZG9uZSBpbiBvcmRlciB0byBnZXQgdGhlIGJlc3QKPj4gcGVyZm9ybWFuY2UgZnJv
bSB0YXByaW8gaW4gdGhpcyBtb2RlOgo+PiAjIGlwIGxpbmsgc2V0IGRldiBlbnAxczAgbXR1IDE1
MTQKPiAKPiBNYXkgSSBrbm93IHdoeSBNVFUgaXMgY2hhbmdlZCB0byAxNTE0IHRvIGluY2x1ZGUg
dGhlIEV0aGVybmV0IGhlYWRlcj8KPiAKPj4gIyBldGh0b29sIC1LIGV0aDAgZ3NvIG9mZgo+PiAj
IGV0aHRvb2wgLUsgZXRoMCB0c28gb2ZmCj4+ICMgZXRodG9vbCAtLXNldC1lZWUgZXRoMCBlZWUg
b2ZmCj4gCj4gQ291bGQgeW91IHBsZWFzZSBleHBsYWluIHdoeSB0aGVzZSBhcmUgbmVlZGVkPwo+
IAo+IFRoYW5rcwo+IAo+IE11cmFsaQo+Pgo+PiBUaGFua3MsCj4+IFZlZGFuZyBQYXRlbAo+Pgo+
PiBWZWRhbmcgUGF0ZWwgKDYpOgo+PiDCoMKgIGlnYjogY2xlYXIgb3V0IHRzdGFtcCBhZnRlciBz
ZW5kaW5nIHRoZSBwYWNrZXQuCj4+IMKgwqAgZXRmOiBBZGQgc2tpcF9zb2NrX2NoZWNrCj4+IMKg
wqAgdGFwcmlvOiBjYWxjdWxhdGUgY3ljbGVfdGltZSB3aGVuIHNjaGVkdWxlIGlzIGluc3RhbGxl
ZAo+PiDCoMKgIHRhcHJpbzogQWRkIHN1cHBvcnQgZm9yIHR4dGltZSBvZmZsb2FkIG1vZGUuCj4+
IMKgwqAgdGFwcmlvOiBtYWtlIGNsb2NrIHJlZmVyZW5jZSBjb252ZXJzaW9ucyBlYXNpZXIKPj4g
wqDCoCB0YXByaW86IEFkanVzdCB0aW1lc3RhbXBzIGZvciBUQ1AgcGFja2V0cy4KPj4KPj4gVmlu
aWNpdXMgQ29zdGEgR29tZXMgKDEpOgo+PiDCoMKgIHRhcHJpbzogQWRkIHRoZSBza2VsZXRvbiB0
byBlbmFibGUgaGFyZHdhcmUgb2ZmbG9hZGluZwo+Pgo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2IvaWdiX21haW4uYyB8wqDCoCAxICsKPj4gwqAgaW5jbHVkZS91YXBpL2xpbnV4
L3BrdF9zY2hlZC5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCA2ICsKPj4gwqAgbmV0L3Nj
aGVkL3NjaF9ldGYuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHzCoCAxMCArCj4+IMKgIG5ldC9zY2hlZC9zY2hfdGFwcmlvLmPCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB8IDU0OCArKysrKysrKysrKysrKysrKysrKy0tCj4+IMKgIDQg
ZmlsZXMgY2hhbmdlZCwgNTMyIGluc2VydGlvbnMoKyksIDMzIGRlbGV0aW9ucygtKQo+Pgo+IAo+
IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
