Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E31F23C264D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Jul 2021 16:51:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7088383DDE;
	Fri,  9 Jul 2021 14:51:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k051P2jryCYS; Fri,  9 Jul 2021 14:51:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C9DD83DD6;
	Fri,  9 Jul 2021 14:51:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AE18F1BF3C9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jul 2021 14:13:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AA00C4029F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jul 2021 14:13:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=natalenko.name
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hoJSWUIuz1cj for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jul 2021 14:13:40 +0000 (UTC)
X-Greylist: delayed 00:08:15 by SQLgrey-1.8.0
Received: from vulcan.natalenko.name (vulcan.natalenko.name [104.207.131.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3207A4025F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jul 2021 14:13:39 +0000 (UTC)
Received: from spock.localnet (unknown [151.237.229.131])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by vulcan.natalenko.name (Postfix) with ESMTPSA id 88C9CB236BD;
 Fri,  9 Jul 2021 16:05:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=natalenko.name;
 s=dkim-20170712; t=1625839520;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Fv6mXtwsNLV8Z6mne/QVVhVuclAr1lGpvUhLHeEpHIw=;
 b=FAV8uEoQgOrWeHmEturnWZdI3JxhmsU4qKLyH31j0wZ5qjpsXEhKM1wKSB2m9eTtgAkEMW
 D8gp4Z5DWz+xJILRARllgrsT5Ig6PfnbCrwcxmmjpRVK7btk2jo3JKbmFwg9zlC6wtlEBP
 WMAxB8d+T+x1QG1+KEX+2Xuufo7tu38=
From: Oleksandr Natalenko <oleksandr@natalenko.name>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Date: Fri, 09 Jul 2021 16:05:18 +0200
Message-ID: <1682283.zdkM9JWR0q@spock>
In-Reply-To: <20210508102630.rytwqgkn7ariwru6@spock.localdomain>
References: <20210507023001.2621951-1-jesse.brandeburg@intel.com>
 <20210508102630.rytwqgkn7ariwru6@spock.localdomain>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 09 Jul 2021 14:51:14 +0000
Subject: Re: [Intel-wired-lan] [PATCH net] igb: fix netpoll exit with traffic
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
Cc: Alexander Duyck <alexanderduyck@fb.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gc29ib3RhIDguIGt2xJt0bmEgMjAyMSAxMjoyNjozNiBDRVNUIE9sZWtzYW5kciBOYXRhbGVu
a28gd3JvdGU6Cj4gSGVsbG8uCj4gCj4gT24gVGh1LCBNYXkgMDYsIDIwMjEgYXQgMDc6MzA6MDFQ
TSAtMDcwMCwgSmVzc2UgQnJhbmRlYnVyZyB3cm90ZToKPiA+IE9sZWtzYW5kciBicm91Z2h0IGEg
YnVnIHJlcG9ydCB3aGVyZSBuZXRwb2xsIGNhdXNlcyB0cmFjZSBtZXNzYWdlcyBpbgo+ID4gdGhl
IGxvZyBvbiBpZ2IuCj4gPiAKPiA+IFsyMjAzOC43MTA4MDBdIC0tLS0tLS0tLS0tLVsgY3V0IGhl
cmUgXS0tLS0tLS0tLS0tLQo+ID4gWzIyMDM4LjcxMDgwMV0gaWdiX3BvbGwrMHgwLzB4MTQ0MCBb
aWdiXSBleGNlZWRlZCBidWRnZXQgaW4gcG9sbAo+ID4gWzIyMDM4LjcxMDgwMl0gV0FSTklORzog
Q1BVOiAxMiBQSUQ6IDQwMzYyIGF0IG5ldC9jb3JlL25ldHBvbGwuYzoxNTUKPiA+IG5ldHBvbGxf
cG9sbF9kZXYrMHgxOGEvMHgxYTAKPiA+IAo+ID4gQWZ0ZXIgc29tZSBkaXNjdXNzaW9uIGFuZCBk
ZWJ1ZyBmcm9tIHRoZSBsaXN0LCBpdCB3YXMgZGVlbWVkIHRoYXQgdGhlCj4gPiByaWdodCB0aGlu
ZyB0byBkbyBpcyBpbml0aWFsaXplIHRoZSBjbGVhbl9jb21wbGV0ZSB2YXJpYWJsZSB0byBmYWxz
ZQo+ID4gd2hlbiB0aGUgIm5ldHBvbGwgbW9kZSIgb2YgcGFzc2luZyBhIHplcm8gYnVkZ2V0IGlz
IHVzZWQuCj4gPiAKPiA+IFRoaXMgbG9naWMgc2hvdWxkIGJlIHNhbmUgYW5kIG5vdCByaXNreSBi
ZWNhdXNlIHRoZSBvbmx5IHRpbWUgYnVkZ2V0Cj4gPiBzaG91bGQgYmUgemVybyBvbiBlbnRyeSBp
cyBuZXRwb2xsLiAgQ2hhbmdlIGluY2x1ZGVzIGEgc21hbGwgcmVmYWN0b3IKPiA+IG9mIGxvY2Fs
IHZhcmlhYmxlIGFzc2lnbm1lbnRzIHRvIGNsZWFuIHVwIHRoZSBsb29rLgo+ID4gCj4gPiBGaXhl
czogMTZlYjg4MTVjMjM1ICgiaWdiOiBSZWZhY3RvciBjbGVhbl9yeF9pcnEgdG8gcmVkdWNlIG92
ZXJoZWFkIGFuZAo+ID4gaW1wcm92ZSBwZXJmb3JtYW5jZSIpIFJlcG9ydGVkLWJ5OiBPbGVrc2Fu
ZHIgTmF0YWxlbmtvCj4gPiA8b2xla3NhbmRyQG5hdGFsZW5rby5uYW1lPgo+ID4gU3VnZ2VzdGVk
LWJ5OiBBbGV4YW5kZXIgRHV5Y2sgPGFsZXhhbmRlci5kdXlja0BnbWFpbC5jb20+Cj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBKZXNzZSBCcmFuZGVidXJnIDxqZXNzZS5icmFuZGVidXJnQGludGVsLmNvbT4K
PiA+IFJldmlld2VkLWJ5OiBBbGV4YW5kZXIgRHV5Y2sgPGFsZXhhbmRlcmR1eWNrQGZiLmNvbT4K
PiA+IC0tLQo+ID4gCj4gPiBDb21waWxlIHRlc3RlZCBPTkxZLCBidXQgZnVuY3Rpb25hbGx5IGl0
IHNob3VsZCBiZSBleGFjdGx5IHRoZSBzYW1lIGZvcgo+ID4gYWxsIGNhc2VzIGV4Y2VwdCB3aGVu
IGJ1ZGdldCBpcyB6ZXJvIG9uIGVudHJ5LCB3aGljaCB3aWxsIGhvcGVmdWxseSBmaXgKPiA+IHRo
ZSBidWcuCj4gPiAKPiA+IFNlbmRpbmcgdGhpcyB0aHJvdWdoIGludGVsLXdpcmVkLWxhbiB3aXRo
IEFsZXgncyBBQ0suCj4gPiAtLS0KPiA+IAo+ID4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lnYi9pZ2JfbWFpbi5jIHwgMTIgKysrKysrKystLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDgg
aW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jCj4gPiBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jIGluZGV4Cj4gPiAwY2QzN2FkODFiNGUuLmIwYTli
ZWQxNDA3MSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9p
Z2JfbWFpbi5jCj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21h
aW4uYwo+ID4gQEAgLTc5OTEsMTIgKzc5OTEsMTYgQEAgc3RhdGljIHZvaWQgaWdiX3JpbmdfaXJx
X2VuYWJsZShzdHJ1Y3QKPiA+IGlnYl9xX3ZlY3RvciAqcV92ZWN0b3IpPiAKPiA+ICAgKiovCj4g
PiAgCj4gPiAgc3RhdGljIGludCBpZ2JfcG9sbChzdHJ1Y3QgbmFwaV9zdHJ1Y3QgKm5hcGksIGlu
dCBidWRnZXQpCj4gPiAgewo+ID4gCj4gPiAtCXN0cnVjdCBpZ2JfcV92ZWN0b3IgKnFfdmVjdG9y
ID0gY29udGFpbmVyX29mKG5hcGksCj4gPiAtCQkJCQkJICAgICBzdHJ1Y3QgaWdiX3FfdmVjdG9y
LAo+ID4gLQkJCQkJCSAgICAgbmFwaSk7Cj4gPiAtCWJvb2wgY2xlYW5fY29tcGxldGUgPSB0cnVl
Owo+ID4gKwlzdHJ1Y3QgaWdiX3FfdmVjdG9yICpxX3ZlY3RvcjsKPiA+ICsJYm9vbCBjbGVhbl9j
b21wbGV0ZTsKPiA+IAo+ID4gIAlpbnQgd29ya19kb25lID0gMDsKPiA+IAo+ID4gKwkvKiBpZiBi
dWRnZXQgaXMgemVybywgd2UgaGF2ZSBhIHNwZWNpYWwgY2FzZSBmb3IgbmV0Y29uc29sZSwgc28K
PiA+ICsJICogbWFrZSBzdXJlIHRvIHNldCBjbGVhbl9jb21wbGV0ZSB0byBmYWxzZSBpbiB0aGF0
IGNhc2UuCj4gPiArCSAqLwo+ID4gKwljbGVhbl9jb21wbGV0ZSA9ICEhYnVkZ2V0Owo+ID4gKwo+
ID4gKwlxX3ZlY3RvciA9IGNvbnRhaW5lcl9vZihuYXBpLCBzdHJ1Y3QgaWdiX3FfdmVjdG9yLCBu
YXBpKTsKPiA+IAo+ID4gICNpZmRlZiBDT05GSUdfSUdCX0RDQQo+ID4gIAo+ID4gIAlpZiAocV92
ZWN0b3ItPmFkYXB0ZXItPmZsYWdzICYgSUdCX0ZMQUdfRENBX0VOQUJMRUQpCj4gPiAgCQo+ID4g
IAkJaWdiX3VwZGF0ZV9kY2EocV92ZWN0b3IpOwo+IAo+IFRoaXMgZGlkbid0IGZpeCB0aGUgaXNz
dWUgbmVpdGhlciBmb3IgbWUsIG5vciBmb3IgYW5vdGhlciBwZXJzb24gZnJvbQo+IHRoZSBrZXJu
ZWwgYnVnemlsbGEgWzFdLgo+IAo+IFRoZSBzYW1lIHByaW50b3V0IHN0aWxsIGhhcHBlbnM6Cj4g
Cj4gYGBgCj4gTWF5IDA3IDIwOjI2OjU1IHNwb2NrIGtlcm5lbDogaWdiX3BvbGwrMHgwLzB4MTQ0
MCBbaWdiXSBleGNlZWRlZCBidWRnZXQgaW4KPiBwb2xsIE1heSAwNyAyMDoyNjo1NSBzcG9jayBr
ZXJuZWw6IFdBUk5JTkc6IENQVTogMTMgUElEOiAxMjI4NSBhdAo+IG5ldC9jb3JlL25ldHBvbGwu
YzoxNTQgbmV0cG9sbF9wb2xsX2RldisweDE4YS8weDFhMCDigKYKPiBNYXkgMDcgMjA6MjY6NTUg
c3BvY2sga2VybmVsOiBDYWxsIFRyYWNlOgo+IE1heSAwNyAyMDoyNjo1NSBzcG9jayBrZXJuZWw6
ICBuZXRwb2xsX3NlbmRfc2tiKzB4MWEwLzB4MjYwCj4gTWF5IDA3IDIwOjI2OjU1IHNwb2NrIGtl
cm5lbDogIHdyaXRlX21zZysweGU1LzB4MTAwIFtuZXRjb25zb2xlXQo+IE1heSAwNyAyMDoyNjo1
NSBzcG9jayBrZXJuZWw6ICBjb25zb2xlX3VubG9jaysweDQyZi8weDcyMAo+IE1heSAwNyAyMDoy
Njo1NSBzcG9jayBrZXJuZWw6ICBzdXNwZW5kX2RldmljZXNfYW5kX2VudGVyKzB4MmFjLzB4N2Yw
Cj4gTWF5IDA3IDIwOjI2OjU1IHNwb2NrIGtlcm5lbDogIHBtX3N1c3BlbmQuY29sZCsweDMyMS8w
eDM2Ywo+IE1heSAwNyAyMDoyNjo1NSBzcG9jayBrZXJuZWw6ICBzdGF0ZV9zdG9yZSsweGE2LzB4
MTQwCj4gTWF5IDA3IDIwOjI2OjU1IHNwb2NrIGtlcm5lbDogIGtlcm5mc19mb3Bfd3JpdGVfaXRl
cisweDEyNC8weDFiMAo+IE1heSAwNyAyMDoyNjo1NSBzcG9jayBrZXJuZWw6ICBuZXdfc3luY193
cml0ZSsweDE2YS8weDIwMAo+IE1heSAwNyAyMDoyNjo1NSBzcG9jayBrZXJuZWw6ICB2ZnNfd3Jp
dGUrMHgyMjMvMHgyZTAKPiBNYXkgMDcgMjA6MjY6NTUgc3BvY2sga2VybmVsOiAgX194NjRfc3lz
X3dyaXRlKzB4NmQvMHhmMAo+IGBgYAo+IAo+IFByb2JhYmx5LCB5b3VyIHBhdGNoIGlzIHN0aWxs
IGZpbmUsIGJ1dCBhbm90aGVyIGlkZWEgaXMgZGVzcGVyYXRlbHkKPiBuZWVkZWQgOikuCj4gCj4g
VGhhbmtzLgo+IAo+IFsxXSBodHRwczovL2J1Z3ppbGxhLmtlcm5lbC5vcmcvc2hvd19idWcuY2dp
P2lkPTIxMjU3MwoKR2VudGxlIHBpbmcuIElJVUMsIHRoZSBwYXRjaCB3YXMgbm90IHBpY2tlZCB1
cCBhbnl3YXksIGJ1dCBtYXliZSB0aGVyZSdzIAphbm90aGVyIGlkZWE/CgpUaGFua3MuCgotLSAK
T2xla3NhbmRyIE5hdGFsZW5rbyAocG9zdC1mYWN0dW0pCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJ
bnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
