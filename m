Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 789573F827B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Aug 2021 08:31:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D15F94253A;
	Thu, 26 Aug 2021 06:31:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rNYaM6HwbPNR; Thu, 26 Aug 2021 06:31:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6AE204258D;
	Thu, 26 Aug 2021 06:31:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4D4431BF31E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 06:31:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3B575613FA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 06:31:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5y4fsp2-PhY5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Aug 2021 06:31:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E526B613ED
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 06:31:05 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5aeb42.dynamic.kabel-deutschland.de
 [95.90.235.66])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 1440F61E6478B;
 Thu, 26 Aug 2021 08:31:02 +0200 (CEST)
To: Maciej Machnikowski <maciej.machnikowski@intel.com>
References: <20210816102729.1266522-1-maciej.machnikowski@intel.com>
 <20210816102729.1266522-2-maciej.machnikowski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <d32b2094-b4d0-341b-5a1a-6fff88236446@molgen.mpg.de>
Date: Thu, 26 Aug 2021 08:31:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210816102729.1266522-2-maciej.machnikowski@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH intel-next 1/4] ice: Refactor
 ice_aqc_link_topo_addr
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBNYWNpZWosCgoKQW0gMTYuMDguMjEgdW0gMTI6Mjcgc2NocmllYiBNYWNpZWogTWFjaG5p
a293c2tpOgo+IFNlcGFyYXRlIGxpbmsgdG9wbyBwYXJhbWV0ZXJzIGFuZCBtb3ZlIHRvIHRoZSBp
Y2VfYXFjX2xpbmtfdG9wb19wYXJhbXMKPiBpbiB0aGUgaWNlX2FxY19saW5rX3RvcG9fYWRkci4K
CldoYXQgZG8geW91IG1lYW4gYnkg4oCcaW4gdGhlIGljZV9hcWNfbGlua190b3BvX2FkZHLigJw/
IE1heWJlIGp1c3QgYWRkIHdyaXRlOgoKU2VwYXJhdGUgbGluayB0b3BvIHBhcmFtZXRlcnMgaW4g
c3RydWN0dXJlIGBpY2VfYXFjX2xpbmtfdG9wb19hZGRyYCBvdXQgCmludG8gbmV3IHN0cnVjdHVy
ZSBgaWNlX2FxY19saW5rX3RvcG9fcGFyYW1zYC4KClBsZWFzZSBhZGQgYSBub3RlLCB3aHkgdGhl
IHJlZmFjdG9yaW5nIGlzIG5lZWRlZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNYWNpZWogTWFjaG5p
a293c2tpIDxtYWNpZWoubWFjaG5pa293c2tpQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfYWRtaW5xX2NtZC5oIHwgNiArKysrKy0KPiAgIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29tbW9uLmMgICAgIHwgOCArKysrKy0t
LQo+ICAgMiBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2FkbWlu
cV9jbWQuaCBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfYWRtaW5xX2NtZC5o
Cj4gaW5kZXggNmM3Mjc3NDViYjI5Li45NDEzNDJmNGJlODUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9hZG1pbnFfY21kLmgKPiArKysgYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2FkbWlucV9jbWQuaAo+IEBAIC0xMjgzLDcgKzEy
ODMsNyBAQCBzdHJ1Y3QgaWNlX2FxY19zZXRfbWFjX2xiIHsKPiAgIAl1OCByZXNlcnZlZFsxNV07
Cj4gICB9Owo+ICAgCj4gLXN0cnVjdCBpY2VfYXFjX2xpbmtfdG9wb19hZGRyIHsKPiArc3RydWN0
IGljZV9hcWNfbGlua190b3BvX3BhcmFtcyB7Cj4gICAJdTggbHBvcnRfbnVtOwo+ICAgCXU4IGxw
b3J0X251bV92YWxpZDsKPiAgICNkZWZpbmUgSUNFX0FRQ19MSU5LX1RPUE9fUE9SVF9OVU1fVkFM
SUQJQklUKDApCj4gQEAgLTEzMDksNiArMTMwOSwxMCBAQCBzdHJ1Y3QgaWNlX2FxY19saW5rX3Rv
cG9fYWRkciB7Cj4gICAjZGVmaW5lIElDRV9BUUNfTElOS19UT1BPX05PREVfQ1RYX1BST1ZJREVE
CTQKPiAgICNkZWZpbmUgSUNFX0FRQ19MSU5LX1RPUE9fTk9ERV9DVFhfT1ZFUlJJREUJNQo+ICAg
CXU4IGluZGV4Owo+ICt9Owo+ICsKPiArc3RydWN0IGljZV9hcWNfbGlua190b3BvX2FkZHIgewo+
ICsJc3RydWN0IGljZV9hcWNfbGlua190b3BvX3BhcmFtcyB0b3BvX3BhcmFtczsKPiAgIAlfX2xl
MTYgaGFuZGxlOwo+ICAgI2RlZmluZSBJQ0VfQVFDX0xJTktfVE9QT19IQU5ETEVfUwkwCj4gICAj
ZGVmaW5lIElDRV9BUUNfTElOS19UT1BPX0hBTkRMRV9NCSgweDNGRiA8PCBJQ0VfQVFDX0xJTktf
VE9QT19IQU5ETEVfUykKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9jb21tb24uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29t
bW9uLmMKPiBpbmRleCAxYTNjNmI2MGZkY2EuLjU4MjI1ODlhZWJkYyAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5jCj4gKysrIGIvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24uYwo+IEBAIC0yNDAsMTEgKzI0MCwx
MyBAQCBpY2VfYXFfZ2V0X2xpbmtfdG9wb19oYW5kbGUoc3RydWN0IGljZV9wb3J0X2luZm8gKnBp
LCB1OCBub2RlX3R5cGUsCj4gICAKPiAgIAlpY2VfZmlsbF9kZmx0X2RpcmVjdF9jbWRfZGVzYygm
ZGVzYywgaWNlX2FxY19vcGNfZ2V0X2xpbmtfdG9wbyk7Cj4gICAKPiAtCWNtZC0+YWRkci5ub2Rl
X3R5cGVfY3R4ID0gKElDRV9BUUNfTElOS19UT1BPX05PREVfQ1RYX1BPUlQgPDwKPiAtCQkJCSAg
IElDRV9BUUNfTElOS19UT1BPX05PREVfQ1RYX1MpOwo+ICsJY21kLT5hZGRyLnRvcG9fcGFyYW1z
Lm5vZGVfdHlwZV9jdHggPQo+ICsJCShJQ0VfQVFDX0xJTktfVE9QT19OT0RFX0NUWF9QT1JUIDw8
Cj4gKwkJIElDRV9BUUNfTElOS19UT1BPX05PREVfQ1RYX1MpOwo+ICAgCj4gICAJLyogc2V0IG5v
ZGUgdHlwZSAqLwo+IC0JY21kLT5hZGRyLm5vZGVfdHlwZV9jdHggfD0gKElDRV9BUUNfTElOS19U
T1BPX05PREVfVFlQRV9NICYgbm9kZV90eXBlKTsKPiArCWNtZC0+YWRkci50b3BvX3BhcmFtcy5u
b2RlX3R5cGVfY3R4IHw9Cj4gKwkJKElDRV9BUUNfTElOS19UT1BPX05PREVfVFlQRV9NICYgbm9k
ZV90eXBlKTsKPiAgIAo+ICAgCXJldHVybiBpY2VfYXFfc2VuZF9jbWQocGktPmh3LCAmZGVzYywg
TlVMTCwgMCwgY2QpOwo+ICAgfQo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
