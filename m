Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DFA2B4634
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Nov 2020 15:49:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 078F687168;
	Mon, 16 Nov 2020 14:49:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Btcu-RMmRxmD; Mon, 16 Nov 2020 14:49:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5F81E87173;
	Mon, 16 Nov 2020 14:49:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4DDFC1BF2EC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 13:25:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 443BF204E0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 13:25:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HlvX5JSZn9NF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Nov 2020 13:25:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 80EBC20488
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 13:25:17 +0000 (UTC)
IronPort-SDR: wxwaht3tDTgIeElm7BjAN9kE86hFhxe5E8cZ/lrPiCKnRorcycpf2ppwe6nH8Pz2VHapyzjThY
 g9feb8uVJo4w==
X-IronPort-AV: E=McAfee;i="6000,8403,9806"; a="255453628"
X-IronPort-AV: E=Sophos;i="5.77,482,1596524400"; d="scan'208";a="255453628"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 05:25:11 -0800
IronPort-SDR: nv2dTWv75IeIJ1bfCvVYlAbuaQOTjTPbCb6zwc76bMwk/lKBPcW8QSkuP9TFQszpYdcD9lAUWo
 3dHMNxPTwwXA==
X-IronPort-AV: E=Sophos;i="5.77,482,1596524400"; d="scan'208";a="543602527"
Received: from syeghiay-mobl.ger.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.249.37.125])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 05:25:01 -0800
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <20201116110416.10719-1-bjorn.topel@gmail.com>
 <20201116110416.10719-7-bjorn.topel@gmail.com>
 <20201116064953-mutt-send-email-mst@kernel.org>
 <614a7ce4-2b6b-129b-de7d-71428f7a71f6@intel.com>
 <20201116073848-mutt-send-email-mst@kernel.org>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <585b011f-0817-a684-d1db-125bb55741fe@intel.com>
Date: Mon, 16 Nov 2020 14:24:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <20201116073848-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Mailman-Approved-At: Mon, 16 Nov 2020 14:49:28 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v2 06/10] xsk: propagate
 napi_id to XDP socket Rx path
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
Cc: kda@linux-powerpc.org, ast@kernel.org, edumazet@google.com,
 netdev@vger.kernel.org, thomas.petazzoni@bootlin.com, ioana.ciornei@nxp.com,
 ecree@solarflare.com, aelior@marvell.com, akiyano@amazon.com,
 sthemmin@microsoft.com, ruxandra.radulescu@nxp.com, maximmi@nvidia.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, sgoutham@marvell.com,
 grygorii.strashko@ti.com, jonathan.lemon@gmail.com, qi.z.zhang@intel.com,
 mcroce@microsoft.com, michael.chan@broadcom.com, magnus.karlsson@intel.com,
 daniel@iogearbox.net, ilias.apalodimas@linaro.org, tariqt@nvidia.com,
 netanel@amazon.com, bpf@vger.kernel.org, saeedm@nvidia.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMC0xMS0xNiAxMzo0MiwgTWljaGFlbCBTLiBUc2lya2luIHdyb3RlOgo+IE9uIE1vbiwg
Tm92IDE2LCAyMDIwIGF0IDAxOjAxOjQwUE0gKzAxMDAsIEJqw4PCtnJuIFTDg8K2cGVsIHdyb3Rl
Ogo+Pgo+PiBPbiAyMDIwLTExLTE2IDEyOjU1LCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4+
PiBPbiBNb24sIE5vdiAxNiwgMjAyMCBhdCAxMjowNDoxMlBNICswMTAwLCBCasODZsOCwrZybiBU
w4Nmw4LCtnBlbCB3cm90ZToKPj4+PiBGcm9tOiBCasODZsOCwrZybiBUw4Nmw4LCtnBlbCA8Ympv
cm4udG9wZWxAaW50ZWwuY29tPgo+Pj4+Cj4+Pj4gQWRkIG5hcGlfaWQgdG8gdGhlIHhkcF9yeHFf
aW5mbyBzdHJ1Y3R1cmUsIGFuZCBtYWtlIHN1cmUgdGhlIFhEUAo+Pj4+IHNvY2tldCBwaWNrIHVw
IHRoZSBuYXBpX2lkIGluIHRoZSBSeCBwYXRoLiBUaGUgbmFwaV9pZCBpcyB1c2VkIHRvIGZpbmQK
Pj4+PiB0aGUgY29ycmVzcG9uZGluZyBOQVBJIHN0cnVjdHVyZSBmb3Igc29ja2V0IGJ1c3kgcG9s
bGluZy4KPj4+Pgo+Pj4+IEFja2VkLWJ5OiBJbGlhcyBBcGFsb2RpbWFzIDxpbGlhcy5hcGFsb2Rp
bWFzQGxpbmFyby5vcmc+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogQmrDg2bDgsK2cm4gVMODZsOCwrZw
ZWwgPGJqb3JuLnRvcGVsQGludGVsLmNvbT4KPj4+Cj4+PiBBIGJ1bmNoIG9mIGRyaXZlcnMganVz
dCBwYXNzIGluIDAuIGNvdWxkIHlvdSBleHBsYWluIHdoZW4KPj4+IGlzIHRoYXQgb2s/IGhvdyBi
YWQgaXMgaXQgaWYgdGhlIHdyb25nIGlkIGlzIHVzZWQ/Cj4+Pgo+Pgo+PiBJZiB6ZXJvIGlzIHBh
c3NlZCwgd2hpY2ggaXMgYSBub24tdmFsaWQgTkFQSV9JRCwgYnVzeS1wb2xsaW5nIHdpbGwgbmV2
ZXIKPj4gYmUgcGVyZm9ybWVkLgo+Pgo+PiBEZXBlbmRpbmcgb24gdGhlIHN0cnVjdHVyZSBvZiB0
aGUgZHJpdmVyLCBuYXBpIG1pZ2h0IG9yIG1pZ2h0IG5vdCBiZQo+PiBpbml0aWFsaXplZCAobmFw
aV9pZCAhPSAwKSBvciBldmVuIGF2YWlsYWJsZS4gV2hlbiBpdCB3YXNuJ3Qgb2J2aW91cywgSQo+
PiBzaW1wbHkgc2V0IGl0IHRvIHplcm8uCj4+Cj4+IFNvLCBzaG9ydDsgTm8gaGFybSBpZiB6ZXJv
LCBidXQgYnVzeS1wb2xsaW5nIGNhbm5vdCBiZSB1c2VkIGluIGFuIFhEUAo+PiBjb250ZXh0Lgo+
Pgo+Pgo+PiBbLi4uXQo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC92aXJ0aW9fbmV0LmMg
Yi9kcml2ZXJzL25ldC92aXJ0aW9fbmV0LmMKPj4+PiBpbmRleCAyMWI3MTE0OGM1MzIuLmQ3MWZl
NDE1OTViNyAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL25ldC92aXJ0aW9fbmV0LmMKPj4+PiAr
KysgYi9kcml2ZXJzL25ldC92aXJ0aW9fbmV0LmMKPj4+PiBAQCAtMTQ4NSw3ICsxNDg1LDcgQEAg
c3RhdGljIGludCB2aXJ0bmV0X29wZW4oc3RydWN0IG5ldF9kZXZpY2UgKmRldikKPj4+PiAgICAJ
CQlpZiAoIXRyeV9maWxsX3JlY3YodmksICZ2aS0+cnFbaV0sIEdGUF9LRVJORUwpKQo+Pj4+ICAg
IAkJCQlzY2hlZHVsZV9kZWxheWVkX3dvcmsoJnZpLT5yZWZpbGwsIDApOwo+Pj4+IC0JCWVyciA9
IHhkcF9yeHFfaW5mb19yZWcoJnZpLT5ycVtpXS54ZHBfcnhxLCBkZXYsIGkpOwo+Pj4+ICsJCWVy
ciA9IHhkcF9yeHFfaW5mb19yZWcoJnZpLT5ycVtpXS54ZHBfcnhxLCBkZXYsIGksIDApOwo+Pj4+
ICAgIAkJaWYgKGVyciA8IDApCj4+Pj4gICAgCQkJcmV0dXJuIGVycjsKPj4+Cj4+PiBTaG91bGQg
dGhpcyBiZSBycS5uYXBpLm5hcGlfaWQgPwo+Pj4KPj4KPj4gWWVzLCBpZiBycS5uYXBpLm5hcGlf
aWQgaXMgdmFsaWQgaGVyZSEgSXMgaXQ/Cj4gCj4gV2hhdCBpbml0aWFsaXplcyBpdD8gbmV0aWZf
bmFwaV9hZGQ/IFRoZW4gSSB0aGluayB5ZXMsIGl0J3MKPiBpbml0aWFsaXplZCBmb3IgYWxsIHF1
ZXVlcyAuLi4KPiBOZWVkcyB0byBiZSB0ZXN0ZWQgbmF0dXJhbGx5Lgo+IAoKWWVhaCwgbmV0aWRf
bmFwaV9hZGQgZG9lcyB0aGUgaWQgZ2VuZXJhdGlvbi4KCk15IGlkZWEgd2FzIHRoYXQgZHJpdmVy
IHdvdWxkIGdyYWR1YWxseSBtb3ZlIHRvIGEgY29ycmVjdCBOQVBJIGlkIChnaXZlbgp0aGF0IGl0
J3MgaGFyZCB0byB0ZXN0IHcvbyBIVy4gVmlydGlvIGhvd2V2ZXIgaXMgc2ltcGxlciB0byB0ZXN0
LiA6LSkKCgpCasO2cm4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3Ns
Lm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJl
ZC1sYW4K
