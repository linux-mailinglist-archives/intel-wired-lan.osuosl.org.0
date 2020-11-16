Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3442B4636
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Nov 2020 15:49:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9213720522;
	Mon, 16 Nov 2020 14:49:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gvjpiqIcCxWX; Mon, 16 Nov 2020 14:49:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AD2D820518;
	Mon, 16 Nov 2020 14:49:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BBAF11BF2CA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 12:01:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A9E09870D0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 12:01:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 06OmNJ8-2nhM for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Nov 2020 12:01:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0891F87018
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 12:01:53 +0000 (UTC)
IronPort-SDR: ob4Mw2kTmULFQrkD/Ggup6IcMzS69VECYvXi+g9uldZKAvPD2s5DbZtnCrze5fv2Kco+oRRsZV
 SMRGst6p/lzA==
X-IronPort-AV: E=McAfee;i="6000,8403,9806"; a="169951452"
X-IronPort-AV: E=Sophos;i="5.77,482,1596524400"; d="scan'208";a="169951452"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 04:01:52 -0800
IronPort-SDR: HF6lIwj5Ljczw1cQQ0gLhzVqEtLswe4P1qVPuAlfTMcb7Ax3VaRdVQKTPr7+0YprQv2g+u47Cj
 w14j+ADpJenQ==
X-IronPort-AV: E=Sophos;i="5.77,482,1596524400"; d="scan'208";a="543578743"
Received: from syeghiay-mobl.ger.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.249.37.125])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 04:01:44 -0800
To: "Michael S. Tsirkin" <mst@redhat.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?=
 <bjorn.topel@gmail.com>
References: <20201116110416.10719-1-bjorn.topel@gmail.com>
 <20201116110416.10719-7-bjorn.topel@gmail.com>
 <20201116064953-mutt-send-email-mst@kernel.org>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <614a7ce4-2b6b-129b-de7d-71428f7a71f6@intel.com>
Date: Mon, 16 Nov 2020 13:01:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <20201116064953-mutt-send-email-mst@kernel.org>
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
 thomas.petazzoni@bootlin.com, ioana.ciornei@nxp.com, ecree@solarflare.com,
 aelior@marvell.com, akiyano@amazon.com, sthemmin@microsoft.com,
 ruxandra.radulescu@nxp.com, maximmi@nvidia.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, sgoutham@marvell.com,
 grygorii.strashko@ti.com, qi.z.zhang@intel.com, mcroce@microsoft.com,
 michael.chan@broadcom.com, magnus.karlsson@intel.com, daniel@iogearbox.net,
 netdev@vger.kernel.org, ilias.apalodimas@linaro.org, tariqt@nvidia.com,
 netanel@amazon.com, jonathan.lemon@gmail.com, bpf@vger.kernel.org,
 saeedm@nvidia.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDIwMjAtMTEtMTYgMTI6NTUsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPiBPbiBNb24s
IE5vdiAxNiwgMjAyMCBhdCAxMjowNDoxMlBNICswMTAwLCBCasODwrZybiBUw4PCtnBlbCB3cm90
ZToKPj4gRnJvbTogQmrDg8K2cm4gVMODwrZwZWwgPGJqb3JuLnRvcGVsQGludGVsLmNvbT4KPj4K
Pj4gQWRkIG5hcGlfaWQgdG8gdGhlIHhkcF9yeHFfaW5mbyBzdHJ1Y3R1cmUsIGFuZCBtYWtlIHN1
cmUgdGhlIFhEUAo+PiBzb2NrZXQgcGljayB1cCB0aGUgbmFwaV9pZCBpbiB0aGUgUnggcGF0aC4g
VGhlIG5hcGlfaWQgaXMgdXNlZCB0byBmaW5kCj4+IHRoZSBjb3JyZXNwb25kaW5nIE5BUEkgc3Ry
dWN0dXJlIGZvciBzb2NrZXQgYnVzeSBwb2xsaW5nLgo+Pgo+PiBBY2tlZC1ieTogSWxpYXMgQXBh
bG9kaW1hcyA8aWxpYXMuYXBhbG9kaW1hc0BsaW5hcm8ub3JnPgo+PiBTaWduZWQtb2ZmLWJ5OiBC
asODwrZybiBUw4PCtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgo+IAo+IEEgYnVuY2ggb2Yg
ZHJpdmVycyBqdXN0IHBhc3MgaW4gMC4gY291bGQgeW91IGV4cGxhaW4gd2hlbgo+IGlzIHRoYXQg
b2s/IGhvdyBiYWQgaXMgaXQgaWYgdGhlIHdyb25nIGlkIGlzIHVzZWQ/Cj4KCklmIHplcm8gaXMg
cGFzc2VkLCB3aGljaCBpcyBhIG5vbi12YWxpZCBOQVBJX0lELCBidXN5LXBvbGxpbmcgd2lsbCBu
ZXZlcgpiZSBwZXJmb3JtZWQuCgpEZXBlbmRpbmcgb24gdGhlIHN0cnVjdHVyZSBvZiB0aGUgZHJp
dmVyLCBuYXBpIG1pZ2h0IG9yIG1pZ2h0IG5vdCBiZQppbml0aWFsaXplZCAobmFwaV9pZCAhPSAw
KSBvciBldmVuIGF2YWlsYWJsZS4gV2hlbiBpdCB3YXNuJ3Qgb2J2aW91cywgSQpzaW1wbHkgc2V0
IGl0IHRvIHplcm8uCgpTbywgc2hvcnQ7IE5vIGhhcm0gaWYgemVybywgYnV0IGJ1c3ktcG9sbGlu
ZyBjYW5ub3QgYmUgdXNlZCBpbiBhbiBYRFAKY29udGV4dC4KCgpbLi4uXQo+PiAgIAo+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9uZXQvdmlydGlvX25ldC5jIGIvZHJpdmVycy9uZXQvdmlydGlvX25l
dC5jCj4+IGluZGV4IDIxYjcxMTQ4YzUzMi4uZDcxZmU0MTU5NWI3IDEwMDY0NAo+PiAtLS0gYS9k
cml2ZXJzL25ldC92aXJ0aW9fbmV0LmMKPj4gKysrIGIvZHJpdmVycy9uZXQvdmlydGlvX25ldC5j
Cj4+IEBAIC0xNDg1LDcgKzE0ODUsNyBAQCBzdGF0aWMgaW50IHZpcnRuZXRfb3BlbihzdHJ1Y3Qg
bmV0X2RldmljZSAqZGV2KQo+PiAgIAkJCWlmICghdHJ5X2ZpbGxfcmVjdih2aSwgJnZpLT5ycVtp
XSwgR0ZQX0tFUk5FTCkpCj4+ICAgCQkJCXNjaGVkdWxlX2RlbGF5ZWRfd29yaygmdmktPnJlZmls
bCwgMCk7Cj4+ICAgCj4+IC0JCWVyciA9IHhkcF9yeHFfaW5mb19yZWcoJnZpLT5ycVtpXS54ZHBf
cnhxLCBkZXYsIGkpOwo+PiArCQllcnIgPSB4ZHBfcnhxX2luZm9fcmVnKCZ2aS0+cnFbaV0ueGRw
X3J4cSwgZGV2LCBpLCAwKTsKPj4gICAJCWlmIChlcnIgPCAwKQo+PiAgIAkJCXJldHVybiBlcnI7
Cj4+ICAgCj4gCj4gU2hvdWxkIHRoaXMgYmUgcnEubmFwaS5uYXBpX2lkID8KPgoKWWVzLCBpZiBy
cS5uYXBpLm5hcGlfaWQgaXMgdmFsaWQgaGVyZSEgSXMgaXQ/CgoKQ2hlZXJzLApCasO2cm4KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQt
bGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3Rz
Lm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
