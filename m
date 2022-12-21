Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E726165365C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Dec 2022 19:29:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6257040441;
	Wed, 21 Dec 2022 18:29:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6257040441
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671647347;
	bh=PfNgW3gy2l2QaUITEltgihXNC5Jbgr4xolBKhPMPQU0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YHBWChAq+yOkjInurLZ/tY4wYUZDrhBX8f11fYEpHOAOFZj/uEZmLvNkUCurZ/E9G
	 HDciRC4nFKH+ZLC/uA3YotnMK/YTlDi2/QJEdie3t70if1EKQX3JoS/RGGi1+Qlt6G
	 GCtAW4qEaL6JKDemt2OWR+X18bS9apsibPtDymvnsKLpFIXqGJ0I8HJ4AOgH5Spljz
	 z1DyqVMxpEZiyWRvEnDY4djseooKcsymt4cuo1f2m4nIe3mpHGzfCVziUs/Opf2ie0
	 RDhkjC2Rgi8buyKRz7yomVR0vXYTiwyDxk/E6FJtndzGfwB57rK0+TATOXmWkjCTYM
	 iuHFz6u/N6ITQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aJMmMMb0j6m8; Wed, 21 Dec 2022 18:29:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2A7AD40B55;
	Wed, 21 Dec 2022 18:29:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A7AD40B55
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DB6621BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 18:29:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B4DCB60BB1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 18:29:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4DCB60BB1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vJPkBCuttHZz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Dec 2022 18:29:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 627A760AC3
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 627A760AC3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 18:29:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="406183445"
X-IronPort-AV: E=Sophos;i="5.96,263,1665471600"; d="scan'208";a="406183445"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 10:28:59 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="653590494"
X-IronPort-AV: E=Sophos;i="5.96,263,1665471600"; d="scan'208";a="653590494"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 10:28:58 -0800
Date: Wed, 21 Dec 2022 19:28:49 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <Y6NQYVBDqo3vhAXN@localhost.localdomain>
References: <20221221092746.39234-1-michal.swiatkowski@linux.intel.com>
 <d40220f5-d4b7-7abc-5425-85bf5ff6cfde@molgen.mpg.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d40220f5-d4b7-7abc-5425-85bf5ff6cfde@molgen.mpg.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671647340; x=1703183340;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=59AHNJJb0V1jDt5jgzJp5dF51ZdL6/7s+CbXXD4Vc7g=;
 b=b5YttMHqVjkIYFRhbfIjkHPJKFEZ5clcv8ZIcAlvTgh63o8AsbjrZ7qI
 L1l63wWzQ70B7k9yHKjl7zQaV2ra7MtaCrZDe8rQvr34Efw6krKduQaXZ
 mwSNzvixANNtJFWR8teMWGiLyj2CcWqkaNhDmTZhEWmPHtzYxRvRojwO1
 Tc2TviPxLdm0imek+YpxtDE+vRjBezzHYba2h3RV36Z/EHyixK5w4bKfL
 ac8dD5N+8lpj8mnHwMsCv6lFqBEyJPZbNjCmNTbfhgH3X8VV+DfoWYvvV
 zuB7yqySYS1rSyLtG+cCupCjqm4+LNZFZ0l1YFm9XQT1tDjQSB5Ngjkjf
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=b5YttMHq
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix out-of-bounds KASAN
 warining in virtchnl
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
Cc: Brett Creeley <brett.creeley@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBEZWMgMjEsIDIwMjIgYXQgMDQ6Mzc6MDBQTSArMDEwMCwgUGF1bCBNZW56ZWwgd3Jv
dGU6Cj4gW0NDOiArQnJldHQsICtBbGV4YW5kZXIsICtKZXNzZSwgK0d1cnVjaGFyYW5dCj4gCj4g
RGVhciBNaWNoYWwsCj4gCj4gCj4gVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLgo+IAo+IAo+IEFt
IDIxLjEyLjIyIHVtIDEwOjI3IHNjaHJpZWIgTWljaGFsIFN3aWF0a293c2tpOgo+IAo+IEluIHRo
ZSBzdW1tYXJ5LCBJIG5vcm1hbGx5IHByZWZlciB0byBub3QgdGhlIGFjdGlvbi4gKFRoZXJlIGlz
IGFsc28gYSB0eXBvCj4gaW4gKndhcm5pbmcqLgo+IAo+ID4gS0FTQU4gcmVwb3J0ZWQ6Cj4gPiBb
IDk3OTMuNzA4ODY3XSBCVUc6IEtBU0FOOiBnbG9iYWwtb3V0LW9mLWJvdW5kcyBpbiBpY2VfZ2V0
X2xpbmtfc3BlZWQrMHgxNi8weDMwIFtpY2VdCj4gPiBbIDk3OTMuNzA5MjA1XSBSZWFkIG9mIHNp
emUgNCBhdCBhZGRyIGZmZmZmZmZmYzEyNzFiMWMgYnkgdGFzayBrd29ya2VyLzY6MS80MDIKPiA+
IAo+ID4gWyA5NzkzLjcwOTIyMl0gQ1BVOiA2IFBJRDogNDAyIENvbW06IGt3b3JrZXIvNjoxIEtk
dW1wOiBsb2FkZWQgVGFpbnRlZDogRyAgICBCICAgICAgT0UgICAgICA2LjEuMCsgIzMKPiA+IFsg
OTc5My43MDkyMzVdIEhhcmR3YXJlIG5hbWU6IEludGVsIENvcnBvcmF0aW9uIFMyNjAwV0ZUL1My
NjAwV0ZULCBCSU9TIFNFNUM2MjAuODZCLjAwLjAxLjAwMTQuMDcwOTIwMTgwODQ3IDA3LzA5LzIw
MTgKPiA+IFsgOTc5My43MDkyNDVdIFdvcmtxdWV1ZTogaWNlIGljZV9zZXJ2aWNlX3Rhc2sgW2lj
ZV0KPiA+IFsgOTc5My43MDk1NzVdIENhbGwgVHJhY2U6Cj4gPiBbIDk3OTMuNzA5NTgyXSAgPFRB
U0s+Cj4gPiBbIDk3OTMuNzA5NTg4XSAgZHVtcF9zdGFja19sdmwrMHg0NC8weDVjCj4gPiBbIDk3
OTMuNzA5NjEzXSAgcHJpbnRfcmVwb3J0KzB4MTdmLzB4NDdiCj4gPiBbIDk3OTMuNzA5NjMyXSAg
PyBfX2NwdWlkbGVfdGV4dF9lbmQrMHg1LzB4NQo+ID4gWyA5NzkzLjcwOTY1M10gID8gaWNlX2dl
dF9saW5rX3NwZWVkKzB4MTYvMHgzMCBbaWNlXQo+ID4gWyA5NzkzLjcwOTk4Nl0gID8gaWNlX2dl
dF9saW5rX3NwZWVkKzB4MTYvMHgzMCBbaWNlXQo+ID4gWyA5NzkzLjcxMDMxN10gIGthc2FuX3Jl
cG9ydCsweGI3LzB4MTQwCj4gPiBbIDk3OTMuNzEwMzM1XSAgPyBpY2VfZ2V0X2xpbmtfc3BlZWQr
MHgxNi8weDMwIFtpY2VdCj4gPiBbIDk3OTMuNzEwNjczXSAgaWNlX2dldF9saW5rX3NwZWVkKzB4
MTYvMHgzMCBbaWNlXQo+ID4gWyA5NzkzLjcxMTAwNl0gIGljZV92Y19ub3RpZnlfdmZfbGlua19z
dGF0ZSsweDE0Yy8weDE2MCBbaWNlXQo+ID4gWyA5NzkzLjcxMTM1MV0gID8gaWNlX3ZjX3JlcHJf
Y2ZnX3Byb21pc2N1b3VzX21vZGUrMHgxMjAvMHgxMjAgW2ljZV0KPiA+IFsgOTc5My43MTE2OThd
ICBpY2VfdmNfcHJvY2Vzc192Zl9tc2crMHg3YTcvMHhjMDAgW2ljZV0KPiA+IFsgOTc5My43MTIw
NzRdICBfX2ljZV9jbGVhbl9jdHJscSsweDk4Zi8weGQyMCBbaWNlXQo+ID4gWyA5NzkzLjcxMjUz
NF0gID8gaWNlX2JyaWRnZV9zZXRsaW5rKzB4NDEwLzB4NDEwIFtpY2VdCj4gPiBbIDk3OTMuNzEy
OTc5XSAgPyBfX3JlcXVlc3RfbW9kdWxlKzB4MzIwLzB4NTIwCj4gPiBbIDk3OTMuNzEzMDE0XSAg
PyBpY2VfcHJvY2Vzc192ZmxyX2V2ZW50KzB4MjcvMHgxMzAgW2ljZV0KPiA+IFsgOTc5My43MTM0
ODldICBpY2Vfc2VydmljZV90YXNrKzB4MTFjZi8weDE5NTAgW2ljZV0KPiA+IFsgOTc5My43MTM5
NDhdICA/IGlvX3NjaGVkdWxlX3RpbWVvdXQrMHhiMC8weGIwCj4gPiBbIDk3OTMuNzEzOTcyXSAg
cHJvY2Vzc19vbmVfd29yaysweDNkMC8weDZhMAo+ID4gWyA5NzkzLjcxNDAwM10gIHdvcmtlcl90
aHJlYWQrMHg4YS8weDYxMAo+ID4gWyA5NzkzLjcxNDAzMV0gID8gcHJvY2Vzc19vbmVfd29yaysw
eDZhMC8weDZhMAo+ID4gWyA5NzkzLjcxNDA0OV0gIGt0aHJlYWQrMHgxNjQvMHgxYTAKPiA+IFsg
OTc5My43MTQwNzFdICA/IGt0aHJlYWRfY29tcGxldGVfYW5kX2V4aXQrMHgyMC8weDIwCj4gPiBb
IDk3OTMuNzE0MTAwXSAgcmV0X2Zyb21fZm9yaysweDFmLzB4MzAKPiA+IFsgOTc5My43MTQxMzdd
ICA8L1RBU0s+Cj4gPiAKPiA+IFsgOTc5My43MTQxNTFdIFRoZSBidWdneSBhZGRyZXNzIGJlbG9u
Z3MgdG8gdGhlIHZhcmlhYmxlOgo+ID4gWyA5NzkzLjcxNDE1OF0gIGljZV9hcV90b19saW5rX3Nw
ZWVkKzB4M2MvMHhmZmZmZmZmZmZmZmYzNTIwIFtpY2VdCj4gPiAKPiA+IFsgOTc5My43MTQ2MzJd
IE1lbW9yeSBzdGF0ZSBhcm91bmQgdGhlIGJ1Z2d5IGFkZHJlc3M6Cj4gPiBbIDk3OTMuNzE0NjQy
XSAgZmZmZmZmZmZjMTI3MWEwMDogZjkgZjkgZjkgZjkgMDAgMDAgMDUgZjkgZjkgZjkgZjkgZjkg
MDAgMDAgMDIgZjkKPiA+IFsgOTc5My43MTQ2NTZdICBmZmZmZmZmZmMxMjcxYTgwOiBmOSBmOSBm
OSBmOSAwMCAwMCAwNCBmOSBmOSBmOSBmOSBmOSAwMCAwMCAwMCAwMAo+ID4gWyA5NzkzLjcxNDY3
MF0gPmZmZmZmZmZmYzEyNzFiMDA6IDAwIDAwIDAwIDA0IGY5IGY5IGY5IGY5IDA0IGY5IGY5IGY5
IGY5IGY5IGY5IGY5Cj4gPiBbIDk3OTMuNzE0NjgwXSAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgXgo+ID4gWyA5NzkzLjcxNDY5MF0gIGZmZmZmZmZmYzEyNzFiODA6IDAwIDAwIDAwIDAwIDAw
IDA0IGY5IGY5IGY5IGY5IGY5IGY5IDAwIDAwIDAwIDAwCj4gPiBbIDk3OTMuNzE0NzA0XSAgZmZm
ZmZmZmZjMTI3MWMwMDogMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAg
MDAgMDAKPiAKPiBEbyB5b3UgbmVlZCB0byBkbyBzb21ldGhpbmcgc3BlY2lhbCB0byB0cmlnZ2Vy
IHRoaXM/IEkgYW0gY3VyaW91cywgd2h5IHRoaXMKPiB3YXNu4oCZdCBmb3VuZCwgd2hlbiBpdCBo
YXMgYSBgVGVzdGVkLWJ5YCB0YWcuCj4gCgpPbmx5IGNyZWF0ZSBWRnMgZXguCiMgZWNobyA0ID4g
L3N5cy9idXMvcGNpL2RldmljZXMvMDAwMFw6MThcOjAwLjAvc3Jpb3ZfbnVtdmZzCgpJIGRvbid0
IGtub3cgd2h5IGl0IHdhc24ndCBmb3VuZCwgSSB3YXMgY2hlY2tpbmcgc3RoIGVsc2Ugd2l0aCBL
QVNBTiBhbmQKc2F3IGl0LgoKPiA+IFRoZSBJQ0VfQVFfTElOS19TUEVFRF9VTktOT1dOIGRlZmlu
ZSBpcyBCSVQoMTUpLiBUaGUgdmFsdWUgaXMgYmlnZ2VyCj4gPiB0aGFuIGJvdGggbGVnYWN5IGFu
ZCBub3JtYWwgbGluayBzcGVlZCB0YWJsZXMuIEFkZCBvbmUgZWxlbWVudCAoMCAtCj4gPiB1bmtu
b3duKSB0byBib3RoIHRhYmxlcy4gVGhlcmUgaXMgbm8gbmVlZCB0byBleHBsaWNpdCBzZXQgdGFi
bGUgc2l6ZSwKPiAKPiBleHBsaWNpdCpseSo/Cj4KWWVhaCwgdGhhbmtzCgo+ID4gbGVhdmUgaXQg
ZW1wdHkuCj4gPiAKPiA+IEZpeGVzOiAxZDBlMjhhOWJlMWYgKCJpY2U6IFJlbW92ZSBhbmQgcmVw
bGFjZSBpY2Ugc3BlZWQgZGVmaW5lcyB3aXRoIGV0aHRvb2wuaCB2ZXJzaW9ucyIpCj4gCj4gVGhp
cyBpcyBpbiBuZXh0LTIwMjIxMjAyLiAoQ2FuIGNvbW1pdHMgaW4gbGludXgtbmV4dCBiZSBhbWVu
ZGVkPyBQcm9iYWJseQo+IG5vdC4pCj4gCk1heWJlIEkgY29waWVkIGl0IHdyb25nLCB3aWxsIGZp
eC4KCj4gPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgU3dpYXRrb3dza2kgPG1pY2hhbC5zd2lhdGtv
d3NraUBsaW51eC5pbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9jb21tb24uYyB8IDUgKysrLS0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV92Zl9tYnguYyB8IDUgKysrLS0KPiA+ICAgMiBmaWxlcyBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5jIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24uYwo+ID4gaW5kZXggNGI3OGJmYjBkN2Y5Li5h
MjRiNWNiOTUwMzkgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX2NvbW1vbi5jCj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX2NvbW1vbi5jCj4gPiBAQCAtNTU2Miw3ICs1NTYyLDcgQEAgYm9vbCBpY2VfZndfc3VwcG9y
dHNfcmVwb3J0X2RmbHRfY2ZnKHN0cnVjdCBpY2VfaHcgKmh3KQo+ID4gICAgKiByZXR1cm5lZCBi
eSB0aGUgZmlybXdhcmUgaXMgYSAxNiBiaXQgKiB2YWx1ZSwgYnV0IGlzIGluZGV4ZWQKPiA+ICAg
ICogYnkgW2ZscyhzcGVlZCkgLSAxXQo+ID4gICAgKi8KPiA+IC1zdGF0aWMgY29uc3QgdTMyIGlj
ZV9hcV90b19saW5rX3NwZWVkWzE1XSA9IHsKPiA+ICtzdGF0aWMgY29uc3QgdTMyIGljZV9hcV90
b19saW5rX3NwZWVkW10gPSB7Cj4gPiAgIAlTUEVFRF8xMCwJLyogQklUKDApICovCj4gPiAgIAlT
UEVFRF8xMDAsCj4gPiAgIAlTUEVFRF8xMDAwLAo+ID4gQEAgLTU1NzcsNyArNTU3Nyw4IEBAIHN0
YXRpYyBjb25zdCB1MzIgaWNlX2FxX3RvX2xpbmtfc3BlZWRbMTVdID0gewo+ID4gICAJMCwKPiA+
ICAgCTAsCj4gPiAgIAkwLAo+ID4gLQkwCQkvKiBCSVQoMTQpICovCj4gPiArCTAsCj4gPiArCTAJ
CS8qIEJJVCgxNSkgKi8KPiA+ICAgfTsKPiA+ICAgLyoqCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92Zl9tYnguYyBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfdmZfbWJ4LmMKPiA+IGluZGV4IGQ0YTQwMDFiNmU1ZC4uNWY3NTRk
NDFmMzQ1IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV92Zl9tYnguYwo+ID4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92
Zl9tYnguYwo+ID4gQEAgLTM5LDcgKzM5LDcgQEAgaWNlX2FxX3NlbmRfbXNnX3RvX3ZmKHN0cnVj
dCBpY2VfaHcgKmh3LCB1MTYgdmZpZCwgdTMyIHZfb3Bjb2RlLCB1MzIgdl9yZXR2YWwsCj4gPiAg
IAlyZXR1cm4gaWNlX3NxX3NlbmRfY21kKGh3LCAmaHctPm1haWxib3hxLCAmZGVzYywgbXNnLCBt
c2dsZW4sIGNkKTsKPiA+ICAgfQo+ID4gLXN0YXRpYyBjb25zdCB1MzIgaWNlX2xlZ2FjeV9hcV90
b192Y19zcGVlZFsxNV0gPSB7Cj4gPiArc3RhdGljIGNvbnN0IHUzMiBpY2VfbGVnYWN5X2FxX3Rv
X3ZjX3NwZWVkW10gPSB7Cj4gPiAgIAlWSVJUQ0hOTF9MSU5LX1NQRUVEXzEwME1CLAkvKiBCSVQo
MCkgKi8KPiA+ICAgCVZJUlRDSE5MX0xJTktfU1BFRURfMTAwTUIsCj4gPiAgIAlWSVJUQ0hOTF9M
SU5LX1NQRUVEXzFHQiwKPiA+IEBAIC01NCw3ICs1NCw4IEBAIHN0YXRpYyBjb25zdCB1MzIgaWNl
X2xlZ2FjeV9hcV90b192Y19zcGVlZFsxNV0gPSB7Cj4gPiAgIAlWSVJUQ0hOTF9MSU5LX1NQRUVE
X1VOS05PV04sCj4gPiAgIAlWSVJUQ0hOTF9MSU5LX1NQRUVEX1VOS05PV04sCj4gPiAgIAlWSVJU
Q0hOTF9MSU5LX1NQRUVEX1VOS05PV04sCj4gPiAtCVZJUlRDSE5MX0xJTktfU1BFRURfVU5LTk9X
TgkvKiBCSVQoMTQpICovCj4gPiArCVZJUlRDSE5MX0xJTktfU1BFRURfVU5LTk9XTiwKPiA+ICsJ
VklSVENITkxfTElOS19TUEVFRF9VTktOT1dOCS8qIEJJVCgxNSkgKi8KPiA+ICAgfTsKPiA+ICAg
LyoqCj4gCj4gVGhlIHJlc3QgbG9va3MgZ29vZC4KClRoYW5rcyBmb3IgWW91ciByZXZpZXcKPiAK
PiBLaW5kIHJlZ2FyZHMsCj4gCj4gUGF1bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVk
LWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLXdpcmVkLWxhbgo=
