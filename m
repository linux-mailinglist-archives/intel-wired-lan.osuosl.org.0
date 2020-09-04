Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A99325DE9C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Sep 2020 17:54:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 913DA20357;
	Fri,  4 Sep 2020 15:54:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uBrs+dbM2FlY; Fri,  4 Sep 2020 15:54:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 44FF5203D5;
	Fri,  4 Sep 2020 15:54:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 96DA41BF4D5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 15:54:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8FA3386EBA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 15:54:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cSEk6jqccEya for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Sep 2020 15:54:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 584A186EB3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 15:54:47 +0000 (UTC)
IronPort-SDR: fOieeQaR6qRp+vzgG3LVav5i5TG2EHWAB35lSfAYe7NMlFD2dX005j4XSCr6oIfpJ4ihUcJUhJ
 AvHJK45slbpA==
X-IronPort-AV: E=McAfee;i="6000,8403,9734"; a="145497786"
X-IronPort-AV: E=Sophos;i="5.76,390,1592895600"; d="scan'208";a="145497786"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2020 08:54:46 -0700
IronPort-SDR: y75BemvQevIk+U3GMZ8DouALxCXc9okBtC2DyBIEp6SCCZRwrNARqnDlaS0cZGD+j+rhfAmAdX
 dyYGTgYPAXHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,390,1592895600"; d="scan'208";a="332204909"
Received: from andreyfe-mobl2.ccr.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.252.37.82])
 by orsmga008.jf.intel.com with ESMTP; 04 Sep 2020 08:54:43 -0700
To: Jesper Dangaard Brouer <brouer@redhat.com>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
References: <20200904135332.60259-1-bjorn.topel@gmail.com>
 <20200904135332.60259-7-bjorn.topel@gmail.com>
 <20200904173540.3a617eee@carbon>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <59da4aa6-dbc5-b366-e84e-0030f6010e55@intel.com>
Date: Fri, 4 Sep 2020 17:54:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200904173540.3a617eee@carbon>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 6/6] ixgbe,
 xsk: finish napi loop if AF_XDP Rx queue is full
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
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, bpf@vger.kernel.org,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMC0wOS0wNCAxNzozNSwgSmVzcGVyIERhbmdhYXJkIEJyb3VlciB3cm90ZToKPiBPbiBG
cmksICA0IFNlcCAyMDIwIDE1OjUzOjMxICswMjAwCj4gQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9w
ZWxAZ21haWwuY29tPiB3cm90ZToKPiAKPj4gRnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9w
ZWxAaW50ZWwuY29tPgo+Pgo+PiBNYWtlIHRoZSBBRl9YRFAgemVyby1jb3B5IHBhdGggYXdhcmUg
dGhhdCB0aGUgcmVhc29uIGZvciByZWRpcmVjdAo+PiBmYWlsdXJlIHdhcyBkdWUgdG8gZnVsbCBS
eCBxdWV1ZS4gSWYgc28sIGV4aXQgdGhlIG5hcGkgbG9vcCBhcyBzb29uIGFzCj4+IHBvc3NpYmxl
IChleGl0IHRoZSBzb2Z0aXJxIHByb2Nlc3NpbmcpLCBzbyB0aGF0IHRoZSB1c2Vyc3BhY2UgQUZf
WERQCj4+IHByb2Nlc3MgY2FuIGhvcGVmdWxseSBlbXB0eSB0aGUgUnggcXVldWUuIFRoaXMgbWFp
bmx5IGhlbHBzIHRoZSAib25lCj4+IGNvcmUgc2NlbmFyaW8iLCB3aGVyZSB0aGUgdXNlcmxhbmQg
cHJvY2VzcyBhbmQgUnggc29mdGlycSBwcm9jZXNzaW5nCj4+IGlzIG9uIHRoZSBzYW1lIGNvcmUu
Cj4+Cj4+IE5vdGUgdGhhdCB0aGUgZWFybHkgZXhpdCBjYW4gb25seSBiZSBwZXJmb3JtZWQgaWYg
dGhlICJuZWVkIHdha2V1cCIKPj4gZmVhdHVyZSBpcyBlbmFibGVkLCBiZWNhdXNlIG90aGVyd2lz
ZSB0aGVyZSBpcyBubyBub3RpZmljYXRpb24KPj4gbWVjaGFuaXNtIGF2YWlsYWJsZSBmcm9tIHRo
ZSBrZXJuZWwgc2lkZS4KPj4KPj4gVGhpcyByZXF1aXJlcyB0aGF0IHRoZSBkcml2ZXIgc3RhcnRz
IHVzaW5nIHRoZSBuZXdseSBpbnRyb2R1Y2VkCj4+IHhkcF9kb19yZWRpcmVjdF9leHQoKSBhbmQg
eHNrX2RvX3JlZGlyZWN0X3J4X2Z1bGwoKSBmdW5jdGlvbnMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6
IEJqw7ZybiBUw7ZwZWwgPGJqb3JuLnRvcGVsQGludGVsLmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfeHNrLmMgfCAyMyArKysrKysrKysrKysr
Ky0tLS0tLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9u
cygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUv
aXhnYmVfeHNrLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV94c2su
Ywo+PiBpbmRleCAzNzcxODU3Y2Y4ODcuLmE0YWViZmQ5ODZiMyAxMDA2NDQKPj4gLS0tIGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfeHNrLmMKPj4gKysrIGIvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfeHNrLmMKPj4gQEAgLTkzLDkgKzkzLDEx
IEBAIGludCBpeGdiZV94c2tfcG9vbF9zZXR1cChzdHJ1Y3QgaXhnYmVfYWRhcHRlciAqYWRhcHRl
ciwKPj4gICAKPj4gICBzdGF0aWMgaW50IGl4Z2JlX3J1bl94ZHBfemMoc3RydWN0IGl4Z2JlX2Fk
YXB0ZXIgKmFkYXB0ZXIsCj4+ICAgCQkJICAgIHN0cnVjdCBpeGdiZV9yaW5nICpyeF9yaW5nLAo+
PiAtCQkJICAgIHN0cnVjdCB4ZHBfYnVmZiAqeGRwKQo+PiArCQkJICAgIHN0cnVjdCB4ZHBfYnVm
ZiAqeGRwLAo+PiArCQkJICAgIGJvb2wgKmVhcmx5X2V4aXQpCj4+ICAgewo+PiAgIAlpbnQgZXJy
LCByZXN1bHQgPSBJWEdCRV9YRFBfUEFTUzsKPj4gKwllbnVtIGJwZl9tYXBfdHlwZSBtYXBfdHlw
ZTsKPj4gICAJc3RydWN0IGJwZl9wcm9nICp4ZHBfcHJvZzsKPj4gICAJc3RydWN0IHhkcF9mcmFt
ZSAqeGRwZjsKPj4gICAJdTMyIGFjdDsKPj4gQEAgLTExNiw4ICsxMTgsMTMgQEAgc3RhdGljIGlu
dCBpeGdiZV9ydW5feGRwX3pjKHN0cnVjdCBpeGdiZV9hZGFwdGVyICphZGFwdGVyLAo+PiAgIAkJ
cmVzdWx0ID0gaXhnYmVfeG1pdF94ZHBfcmluZyhhZGFwdGVyLCB4ZHBmKTsKPj4gICAJCWJyZWFr
Owo+PiAgIAljYXNlIFhEUF9SRURJUkVDVDoKPj4gLQkJZXJyID0geGRwX2RvX3JlZGlyZWN0KHJ4
X3JpbmctPm5ldGRldiwgeGRwLCB4ZHBfcHJvZyk7Cj4+IC0JCXJlc3VsdCA9ICFlcnIgPyBJWEdC
RV9YRFBfUkVESVIgOiBJWEdCRV9YRFBfQ09OU1VNRUQ7Cj4+ICsJCWVyciA9IHhkcF9kb19yZWRp
cmVjdF9leHQocnhfcmluZy0+bmV0ZGV2LCB4ZHAsIHhkcF9wcm9nLCAmbWFwX3R5cGUpOwo+PiAr
CQlpZiAoZXJyKSB7Cj4+ICsJCQkqZWFybHlfZXhpdCA9IHhza19kb19yZWRpcmVjdF9yeF9mdWxs
KGVyciwgbWFwX3R5cGUpOwo+IAo+IEhhdmUgeW91IHRyaWVkIGNhbGxpbmcgeGRwX2RvX2ZsdXNo
ICh0aGF0IGNhbGxzIF9feHNrX21hcF9mbHVzaCgpKSBhbmQKPiAoSSBndWVzcykgeHNrX3NldF9y
eF9uZWVkX3dha2V1cCgpIGhlcmUsIGluc3RlYWQgb2Ygc3RvcHBpbmcgdGhlIGxvb3A/Cj4gKE9y
IGRvaW5nIHRoaXMgaW4geHNrIGNvcmUpLgo+CgpNb3ZpbmcgdGhlIG5lZWRfd2FrZSBsb2dpYyB0
byB0aGUgeHNrIGNvcmUvZmx1c2ggd291bGQgYmUgYSB2ZXJ5IG5pY2UKY2xlYW51cC4gVGhlIGRy
aXZlciB3b3VsZCBzdGlsbCBuZWVkIHRvIHBhc3MgaW5mb3JtYXRpb24gZnJvbSB0aGUgZHJpdmVy
CnRob3VnaC4gU3RpbGwsIG11Y2ggY2xlYW5lci4gSSdsbCB0YWtlIGEgc3RhYiBhdCB0aGF0LiBU
aGFua3MhCgoKPiBMb29raW5nIGF0IHRoZSBjb2RlLCB0aGUgQUZfWERQIGZyYW1lcyBhcmUgInB1
Ymxpc2hlZCIgaW4gdGhlIHF1ZXVlCj4gcmF0aGVyIGxhdGUgZm9yIEFGX1hEUC4gIE1heWJlIGlu
IGFuIG9ydGhvZ29uYWwgb3B0aW1pemF0aW9uLCBoYXZlIHlvdQo+IGNvbnNpZGVyZWQgInB1Ymxp
c2hpbmciIHRoZSByaW5nIHByb2R1Y2VyIHdoZW4gZS5nLiB0aGUgcXVldWUgaXMKPiBoYWxmLWZ1
bGw/Cj4KCkhtbSwgSSBoYXZlbid0LiBZb3UgbWVhbiBpbnN0ZWFkIG9mIHlpZWxkaW5nLCB5b3Ug
cHVibGlzaC9zdWJtaXQ/IEkKKnRoaW5rKiBJIHN0aWxsIHByZWZlciBzdG9wcGluZyB0aGUgcHJv
Y2Vzc2luZy4KCkknbGwgcGxheSB3aXRoIHRoaXMgYSBiaXQhCgpWZXJ5IG5pY2Ugc3VnZ2VzdGlv
bnMsIEplc3BlciEgVGhhbmtzIQoKCkJqw7ZybgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdp
cmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLXdpcmVkLWxhbgo=
