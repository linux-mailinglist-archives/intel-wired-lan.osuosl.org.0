Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 628357C5F91
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Oct 2023 23:53:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 799EF414C3;
	Wed, 11 Oct 2023 21:53:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 799EF414C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697061220;
	bh=L1f/4/b3so1wRpX0A6SVZni65wWVqV4awCK8qg1PkLY=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=nVcWJAGbgwSBD7ULetHEtUDRDCMXIsEpAultOE5IEFxDoTV5ybhaQtfLd3LTdTx4Y
	 Jk2qhbgQ5CATfiUcWzhIXkSvPWBoHAPxK7tS1kanf3fZEE1DDItRYpqQQFGguaje6z
	 wLmlValTGt8hLmlV2lQnxnnFKU6LPhgC/NvbsdRxMsQikcnuDMHmckbgdVaMDun1cS
	 HD5gD7/5QQGCcoOaqWK0d/N1tIvpyoPMISQQ9/Mj4epp8pHnmv6a0ZKCaCzw1QCarH
	 2NXdpICnTwvGx0LUcfYC+7ZT8CW8M6Oq1QmMkSyghX3SEloxEzqllR8hMpA7O9l0X3
	 hj9Iz6JjR+phg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G7d9c3zqEv5N; Wed, 11 Oct 2023 21:53:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B8E11414A2;
	Wed, 11 Oct 2023 21:53:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B8E11414A2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D7D3E1BF3E8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 21:53:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ABDCD82279
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 21:53:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ABDCD82279
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9kuKlObTtG8P for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Oct 2023 21:53:32 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6F85A82275
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 21:53:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F85A82275
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 8399AB8201E;
 Wed, 11 Oct 2023 21:53:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87540C433C9;
 Wed, 11 Oct 2023 21:53:29 +0000 (UTC)
Date: Wed, 11 Oct 2023 16:53:27 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>
Message-ID: <20231011215327.GA1043654@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230918131103.24119-6-ilpo.jarvinen@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1697061209;
 bh=qY9Rp5zkRIt2DsQivgERNNESbVTGEul4kS5s7/dIoho=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=EAwNFrclnTWEuXdB+Z8mt3u3kuEAAoUwY82PbS8J18XDNC6E3OiHHHxAFbbd17IOO
 T6KemaFOH4w9WVID23kFc5vCnMeXYebhs7yahyg9gnbxexaaSqR+KOEgoCrxijFWyG
 dnCiAysL1ttbyJnzXZGaT8aqz/DwQbEhhDfWR38iscslUEL9bLiDHhVjMYSwKPoaYH
 vE7EY6dncxhXQ4FluROOjHz7swY5mrWHaRm0x+YRj0w+mEnls2n/6+o4Mg69zLynhg
 wf5HljSZ4OwbmmK2VZKj4KXyrtee/VgZ11v8Vna96PUYyaJ2T6vmKgYUE3ho/7KBKo
 bDWaoqyCH5pFQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=EAwNFrcl
Subject: Re: [Intel-wired-lan] [PATCH v2 05/13] PCI/ASPM: Add
 pci_enable_link_state()
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
Cc: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 linux-rdma@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "Rafael J . Wysocki" <rafael@kernel.org>, ath12k@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 ath11k@lists.infradead.org, Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 linux-bluetooth@vger.kernel.org, Lukas Wunner <lukas@wunner.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, linux-mediatek@lists.infradead.org,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCBTZXAgMTgsIDIwMjMgYXQgMDQ6MTA6NTVQTSArMDMwMCwgSWxwbyBKw6RydmluZW4g
d3JvdGU6Cj4gcGNpX2Rpc2FibGVfbGlua19zdGF0ZSgpIGxhY2tzIGEgc3ltbWV0cmljIHBhaXIu
IFNvbWUgZHJpdmVycyB3YW50IHRvCj4gZGlzYWJsZSBBU1BNIGR1cmluZyBjZXJ0YWluIHBoYXNl
cyBvZiB0aGVpciBvcGVyYXRpb24gYnV0IHRoZW4KPiByZS1lbmFibGUgaXQgbGF0ZXIgb24uIElm
IHBjaV9kaXNhYmxlX2xpbmtfc3RhdGUoKSBpcyBtYWRlIGZvciB0aGUKPiBkZXZpY2UsIHRoZXJl
IGlzIGN1cnJlbnRseSBubyB3YXkgdG8gcmUtZW5hYmxlIHRoZSBzdGF0ZXMgdGhhdCB3ZXJlCj4g
ZGlzYWJsZWQuCgpwY2lfZGlzYWJsZV9saW5rX3N0YXRlKCkgZ2l2ZXMgZHJpdmVycyBhIHdheSB0
byBkaXNhYmxlIHNwZWNpZmllZCBBU1BNCnN0YXRlcyB1c2luZyBhIGJpdG1hc2sgKFBDSUVfTElO
S19TVEFURV9MMFMsIFBDSUVfTElOS19TVEFURV9MMSwKUENJRV9MSU5LX1NUQVRFX0wxXzEsIGV0
YyksIGJ1dCBJSVVDIHRoZSBkcml2ZXIgY2FuJ3QgdGVsbCBleGFjdGx5CndoYXQgY2hhbmdlZCBh
bmQgY2FuJ3QgZGlyZWN0bHkgcmVzdG9yZSB0aGUgb3JpZ2luYWwgc3RhdGUsIGUuZy4sCgogIC0g
UENJRV9MSU5LX1NUQVRFX0wxIGVuYWJsZWQgaW5pdGlhbGx5CiAgLSBkcml2ZXIgY2FsbHMgcGNp
X2Rpc2FibGVfbGlua19zdGF0ZShQQ0lFX0xJTktfU1RBVEVfTDBTKQogIC0gZHJpdmVyIGNhbGxz
IHBjaV9lbmFibGVfbGlua19zdGF0ZShQQ0lFX0xJTktfU1RBVEVfTDBTKQogIC0gUENJRV9MSU5L
X1NUQVRFX0wwUyBhbmQgUENJRV9MSU5LX1NUQVRFX0wxIGFyZSBlbmFibGVkIG5vdwoKTm93IFBD
SUVfTElOS19TVEFURV9MMFMgaXMgZW5hYmxlZCBldmVuIHRob3VnaCBpdCB3YXMgbm90IGluaXRp
YWxseQplbmFibGVkLiAgTWF5YmUgdGhhdCdzIHdoYXQgd2Ugd2FudDsgSSBkdW5uby4KCnBjaV9k
aXNhYmxlX2xpbmtfc3RhdGUoKSBjdXJyZW50bHkgcmV0dXJucyBzdWNjZXNzL2ZhaWx1cmUsIGJ1
dCBvbmx5CnI4MTY5IGFuZCBtdDc2IGV2ZW4gY2hlY2ssIGFuZCBvbmx5IHJ0bF9pbml0X29uZSgp
IChyODE2OSkgaGFzIGEKbm9uLXRyaXZpYWwgcmVhc29uLCBzbyBpdCdzIGNvbmNlaXZhYmxlIHRo
YXQgaXQgY291bGQgcmV0dXJuIGEgYml0bWFzawppbnN0ZWFkLgoKPiBBZGQgcGNpX2VuYWJsZV9s
aW5rX3N0YXRlKCkgdG8gcmVtb3ZlIEFTUE0gc3RhdGVzIGZyb20gdGhlIHN0YXRlCj4gZGlzYWJs
ZSBtYXNrLgo+IAo+IFNpZ25lZC1vZmYtYnk6IElscG8gSsOkcnZpbmVuIDxpbHBvLmphcnZpbmVu
QGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9wY2kvcGNpZS9hc3BtLmMgfCA0MiAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICBpbmNsdWRlL2xpbnV4
L3BjaS5oICAgICB8ICAyICsrCj4gIDIgZmlsZXMgY2hhbmdlZCwgNDQgaW5zZXJ0aW9ucygrKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9wY2llL2FzcG0uYyBiL2RyaXZlcnMvcGNpL3Bj
aWUvYXNwbS5jCj4gaW5kZXggOTFkYzk1YWNhOTBmLi5mNDVkMThkNDdjMjAgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9wY2kvcGNpZS9hc3BtLmMKPiArKysgYi9kcml2ZXJzL3BjaS9wY2llL2FzcG0u
Ywo+IEBAIC0xMTE3LDYgKzExMTcsNDggQEAgaW50IHBjaV9kaXNhYmxlX2xpbmtfc3RhdGUoc3Ry
dWN0IHBjaV9kZXYgKnBkZXYsIGludCBzdGF0ZSkKPiAgfQo+ICBFWFBPUlRfU1lNQk9MKHBjaV9k
aXNhYmxlX2xpbmtfc3RhdGUpOwo+ICAKPiArLyoqCj4gKyAqIHBjaV9lbmFibGVfbGlua19zdGF0
ZSAtIFJlLWVuYWJsZSBkZXZpY2UncyBsaW5rIHN0YXRlCj4gKyAqIEBwZGV2OiBQQ0kgZGV2aWNl
Cj4gKyAqIEBzdGF0ZTogQVNQTSBsaW5rIHN0YXRlcyB0byByZS1lbmFibGUKPiArICoKPiArICog
RW5hYmxlIGRldmljZSdzIGxpbmsgc3RhdGUgdGhhdCB3ZXJlIHByZXZpb3VzbHkgZGlzYWJsZSBz
byB0aGUgbGluayBpcwoKInN0YXRlW3NdIHRoYXQgd2VyZSBwcmV2aW91c2x5IGRpc2FibGVbZF0i
IGFsbHVkZXMgdG8gdGhlIHVzZSBjYXNlIHlvdQpoYXZlIGluIG1pbmQsIGJ1dCBJIGRvbid0IHRo
aW5rIGl0IGRlc2NyaWJlcyBob3cgdGhpcyBmdW5jdGlvbgphY3R1YWxseSB3b3Jrcy4gIFRoaXMg
ZnVuY3Rpb24ganVzdCBtYWtlcyBpdCBwb3NzaWJsZSB0byBlbmFibGUgdGhlCnNwZWNpZmllZCBz
dGF0ZXMuICBUaGUgQHN0YXRlIHBhcmFtZXRlciBtYXkgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGgK
YW55IHByZXZpb3VzbHkgZGlzYWJsZWQgc3RhdGVzLgoKPiArICogYWxsb3dlZCB0byBlbnRlciB0
aGUgc3BlY2lmaWMgc3RhdGVzLiBOb3RlIHRoYXQgaWYgdGhlIEJJT1MgZGlkbid0IGdyYW50Cj4g
KyAqIEFTUE0gY29udHJvbCB0byB0aGUgT1MsIHRoaXMgZG9lcyBub3RoaW5nIGJlY2F1c2Ugd2Ug
Y2FuJ3QgdG91Y2ggdGhlCj4gKyAqIExOS0NUTCByZWdpc3Rlci4KPiArICoKPiArICogUmV0dXJu
OiAwIG9yIGEgbmVnYXRpdmUgZXJybm8uCj4gKyAqLwo+ICtpbnQgcGNpX2VuYWJsZV9saW5rX3N0
YXRlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LCBpbnQgc3RhdGUpCj4gK3sKPiArCXN0cnVjdCBwY2ll
X2xpbmtfc3RhdGUgKmxpbmsgPSBwY2llX2FzcG1fZ2V0X2xpbmsocGRldik7Cj4gKwo+ICsJaWYg
KCFsaW5rKQo+ICsJCXJldHVybiAtRUlOVkFMOwo+ICsJLyoKPiArCSAqIEEgZHJpdmVyIHJlcXVl
c3RlZCB0aGF0IEFTUE0gYmUgZW5hYmxlZCBvbiB0aGlzIGRldmljZSwgYnV0Cj4gKwkgKiBpZiB3
ZSBkb24ndCBoYXZlIHBlcm1pc3Npb24gdG8gbWFuYWdlIEFTUE0gKGUuZy4sIG9uIEFDUEkKPiAr
CSAqIHN5c3RlbXMgd2UgaGF2ZSB0byBvYnNlcnZlIHRoZSBGQURUIEFDUElfRkFEVF9OT19BU1BN
IGJpdCBhbmQKPiArCSAqIHRoZSBfT1NDIG1ldGhvZCksIHdlIGNhbid0IGhvbm9yIHRoYXQgcmVx
dWVzdC4KPiArCSAqLwo+ICsJaWYgKGFzcG1fZGlzYWJsZWQpIHsKPiArCQlwY2lfd2FybihwZGV2
LCAiY2FuJ3QgZW5hYmxlIEFTUE07IE9TIGRvZXNuJ3QgaGF2ZSBBU1BNIGNvbnRyb2xcbiIpOwo+
ICsJCXJldHVybiAtRVBFUk07Cj4gKwl9Cj4gKwo+ICsJbXV0ZXhfbG9jaygmYXNwbV9sb2NrKTsK
PiArCWxpbmstPmFzcG1fZGlzYWJsZSAmPSB+cGNpX2xpbmtfc3RhdGVfbWFzayhzdGF0ZSk7Cj4g
KwlwY2llX2NvbmZpZ19hc3BtX2xpbmsobGluaywgcG9saWN5X3RvX2FzcG1fc3RhdGUobGluaykp
Owo+ICsKPiArCWlmIChzdGF0ZSAmIFBDSUVfTElOS19TVEFURV9DTEtQTSkKPiArCQlsaW5rLT5j
bGtwbV9kaXNhYmxlID0gMDsKPiArCXBjaWVfc2V0X2Nsa3BtKGxpbmssIHBvbGljeV90b19jbGtw
bV9zdGF0ZShsaW5rKSk7Cj4gKwltdXRleF91bmxvY2soJmFzcG1fbG9jayk7Cj4gKwo+ICsJcmV0
dXJuIDA7Cj4gK30KPiArRVhQT1JUX1NZTUJPTChwY2lfZW5hYmxlX2xpbmtfc3RhdGUpOwo+ICsK
PiAgLyoqCj4gICAqIHBjaV9zZXRfZGVmYXVsdF9saW5rX3N0YXRlIC0gU2V0IHRoZSBkZWZhdWx0
IGRldmljZSBsaW5rIHN0YXRlCj4gICAqIEBwZGV2OiBQQ0kgZGV2aWNlCj4gZGlmZiAtLWdpdCBh
L2luY2x1ZGUvbGludXgvcGNpLmggYi9pbmNsdWRlL2xpbnV4L3BjaS5oCj4gaW5kZXggM2MyNGNh
MTY0MTA0Li44NDRkMDkyMzAyNjQgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9saW51eC9wY2kuaAo+
ICsrKyBiL2luY2x1ZGUvbGludXgvcGNpLmgKPiBAQCAtMTc3NiwxMSArMTc3NiwxMyBAQCBleHRl
cm4gYm9vbCBwY2llX3BvcnRzX25hdGl2ZTsKPiAgaW50IHBjaV9kaXNhYmxlX2xpbmtfc3RhdGUo
c3RydWN0IHBjaV9kZXYgKnBkZXYsIGludCBzdGF0ZSk7Cj4gIGludCBwY2lfZGlzYWJsZV9saW5r
X3N0YXRlX2xvY2tlZChzdHJ1Y3QgcGNpX2RldiAqcGRldiwgaW50IHN0YXRlKTsKPiAgI2lmZGVm
IENPTkZJR19QQ0lFQVNQTQo+ICtpbnQgcGNpX2VuYWJsZV9saW5rX3N0YXRlKHN0cnVjdCBwY2lf
ZGV2ICpwZGV2LCBpbnQgc3RhdGUpOwo+ICBpbnQgcGNpX3NldF9kZWZhdWx0X2xpbmtfc3RhdGUo
c3RydWN0IHBjaV9kZXYgKnBkZXYsIGludCBzdGF0ZSk7Cj4gIHZvaWQgcGNpZV9ub19hc3BtKHZv
aWQpOwo+ICBib29sIHBjaWVfYXNwbV9zdXBwb3J0X2VuYWJsZWQodm9pZCk7Cj4gIGJvb2wgcGNp
ZV9hc3BtX2VuYWJsZWQoc3RydWN0IHBjaV9kZXYgKnBkZXYpOwo+ICAjZWxzZQo+ICtzdGF0aWMg
aW5saW5lIGludCBwY2lfZW5hYmxlX2xpbmtfc3RhdGUoc3RydWN0IHBjaV9kZXYgKnBkZXYsIGlu
dCBzdGF0ZSkgeyByZXR1cm4gLUVPUE5PVFNVUFA7IH0KPiAgc3RhdGljIGlubGluZSBpbnQgcGNp
X3NldF9kZWZhdWx0X2xpbmtfc3RhdGUoc3RydWN0IHBjaV9kZXYgKnBkZXYsIGludCBzdGF0ZSkK
PiAgeyByZXR1cm4gMDsgfQo+ICBzdGF0aWMgaW5saW5lIHZvaWQgcGNpZV9ub19hc3BtKHZvaWQp
IHsgfQo+IC0tIAo+IDIuMzAuMgo+IAo+IAo+IC0tIAo+IGF0aDEyayBtYWlsaW5nIGxpc3QKPiBh
dGgxMmtAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2F0aDEyawpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
