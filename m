Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81635260A32
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Sep 2020 07:38:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D250886FF5;
	Tue,  8 Sep 2020 05:38:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SSu6VBPttOCP; Tue,  8 Sep 2020 05:38:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3A07586FB3;
	Tue,  8 Sep 2020 05:38:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 62C361BF2BD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 05:38:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5E31686F5F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 05:38:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UejezgU1YL6N for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Sep 2020 05:38:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AB3EC86EC8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 05:38:40 +0000 (UTC)
IronPort-SDR: aXeFO7O+2PVdW2oSOxJ/JKqs2iq61mj8cNFUBR+yXseSacdK3FAsGHYsklRYpo+O/x/cCQUsL9
 aPMQORTq1/Hg==
X-IronPort-AV: E=McAfee;i="6000,8403,9737"; a="176130359"
X-IronPort-AV: E=Sophos;i="5.76,404,1592895600"; d="scan'208";a="176130359"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2020 22:38:39 -0700
IronPort-SDR: /VDwcnpzM+ij/iCxij7/hOHyzBuMA1Pi+N1riBWyfTPyBI3gPsfs7AEjj3CQX0kU82u1JQ9yA1
 yr2ZR3TyxZag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,404,1592895600"; d="scan'208";a="284393907"
Received: from pgierasi-mobl.ger.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.252.39.2])
 by fmsmga007.fm.intel.com with ESMTP; 07 Sep 2020 22:38:37 -0700
To: Jakub Kicinski <kuba@kernel.org>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?=
 <bjorn.topel@gmail.com>
References: <20200907150217.30888-1-bjorn.topel@gmail.com>
 <20200907150217.30888-5-bjorn.topel@gmail.com>
 <20200907123241.447371e8@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <c8ce6b24-bded-5ed1-bf5c-6d2409972e57@intel.com>
Date: Tue, 8 Sep 2020 07:38:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200907123241.447371e8@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 4/4] ixgbe,
 xsk: use XSK_NAPI_WEIGHT as NAPI poll budget
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
Cc: daniel@iogearbox.net, netdev@vger.kernel.org, ast@kernel.org,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 magnus.karlsson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMC0wOS0wNyAyMTozMiwgSmFrdWIgS2ljaW5za2kgd3JvdGU6Cj4gT24gTW9uLCAgNyBT
ZXAgMjAyMCAxNzowMjoxNyArMDIwMCBCasO2cm4gVMO2cGVsIHdyb3RlOgo+PiBGcm9tOiBCasO2
cm4gVMO2cGVsIDxiam9ybi50b3BlbEBpbnRlbC5jb20+Cj4+Cj4+IFN0YXJ0IHVzaW5nIFhTS19O
QVBJX1dFSUdIVCBhcyBOQVBJIHBvbGwgYnVkZ2V0IGZvciB0aGUgQUZfWERQIFJ4Cj4+IHplcm8t
Y29weSBwYXRoLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBCasO2cm4gVMO2cGVsIDxiam9ybi50b3Bl
bEBpbnRlbC5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2Jl
L2l4Z2JlX3hzay5jIHwgMiArLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaXhnYmUvaXhnYmVfeHNrLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9p
eGdiZV94c2suYwo+PiBpbmRleCAzNzcxODU3Y2Y4ODcuLmYzMmMxYmEwZDIzNyAxMDA2NDQKPj4g
LS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfeHNrLmMKPj4gKysr
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfeHNrLmMKPj4gQEAgLTIz
OSw3ICsyMzksNyBAQCBpbnQgaXhnYmVfY2xlYW5fcnhfaXJxX3pjKHN0cnVjdCBpeGdiZV9xX3Zl
Y3RvciAqcV92ZWN0b3IsCj4+ICAgCWJvb2wgZmFpbHVyZSA9IGZhbHNlOwo+PiAgIAlzdHJ1Y3Qg
c2tfYnVmZiAqc2tiOwo+PiAgIAo+PiAtCXdoaWxlIChsaWtlbHkodG90YWxfcnhfcGFja2V0cyA8
IGJ1ZGdldCkpIHsKPj4gKwl3aGlsZSAobGlrZWx5KHRvdGFsX3J4X3BhY2tldHMgPCBYU0tfTkFQ
SV9XRUlHSFQpKSB7Cj4gCj4gSSB3YXMgdGhpbmtpbmcgdGhhdCB3ZSdkIG11bHRpcGx5ICdidWRn
ZXQnIGhlcmUsIG5vdCByZXBsYWNlIGl0IHdpdGggYQo+IGNvbnN0YW50LiBMb29rcyBsaWtlIGl4
Z2JlIGR1dGlmdWxseSBwYXNzZXMgJ3Blcl9yaW5nX2J1ZGdldCcgaW50byB0aGUKPiBjbGVhbl9y
eCBmdW5jdGlvbnMsIG5vdCBhIGNvbXBsZXRlIE5BUEkgYnVkZ2V0Lgo+CgpDb3JyZWN0LCBhbmQg
aTQwZS9pY2UgZG9lcyB0aGUgc2FtZSAoInBlcl9yaW5nX2J1ZGdldCIpLgoKQXMgZm9yIGJ1ZGdl
dCA8PCBYU0tfTkFQSV9NVUxUIHZzIHJlcGxhY2luZzsgUmVwbGFjaW5nIHRoZSBidWRnZXQgaXMg
Cm1vcmUgaW4gbGluZSB3aXRoIHdoYXQgdGhlIGRyaXZlcnMgZG8gZm9yIHRoZSBUeCBjbGVhbnVw
IAooeHh4X2NsZWFuX3R4X2lycSksIHdoZXJlIHRoZSBuYXBpIGJ1ZGdldCBpcyBkaXNjYXJkZWQg
Y29tcGxldGVseTsgCkFnYWluLCB3aXRoIHRoZSBpZGVhIHRoYXQgInRoaXMgaXMgbXVjaCBjaGVh
cGVyIHRoYW4gYSAicGVyLXBhY2tldCAKdGhyb3VnaCB0aGUgc3RhY2siLgoKRG8geW91IHByZWZl
ciB0aGUgbXVsdGlwbGllciB3YXkgdGhhdCB5b3UgZGVzY3JpYmU/CgoKQ2hlZXJzLApCasO2cm4K
Cgo+PiAgIAkJdW5pb24gaXhnYmVfYWR2X3J4X2Rlc2MgKnJ4X2Rlc2M7Cj4+ICAgCQlzdHJ1Y3Qg
aXhnYmVfcnhfYnVmZmVyICpiaTsKPj4gICAJCXVuc2lnbmVkIGludCBzaXplOwo+IApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4g
bWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1
b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
