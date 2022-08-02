Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 459FF58773E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Aug 2022 08:48:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF9AF402E2;
	Tue,  2 Aug 2022 06:48:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF9AF402E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659422935;
	bh=mh1fGRBSoupSIOiJOrMEgd14yADy4A61YcWs5aJfWmU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XFJGSm9mbIarjO1OMht+E9KcNOM2MgB4C0yqSAOC6V5sm0jl88kblW+vsy8MI2NZO
	 /qxM/0UHcRKF93M1E2udZacPPhSB3MpKQc956teihTss2nREPCiTNZUDszhmIG4xym
	 rlyRTZqZFvgHV6/cq5ThZ8FeDok3trSMtmq/ptQyHnpb6NbBlLaflzbae19woScZOA
	 p7jZk4B9xu5xTuK0dTHNm2GtuOOQE2NwqoqNg0A8jaDC8EKl/e9bCqnujiHx6vcmeB
	 ppfL8B0J5RU5vPp6yxd689ZzEk+ey3Ek/99CVwVJ2Y3z7ncZe2vJoPxqypXjcC8Y9T
	 fMttd0YsGuAwQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wx3ymN8wqifY; Tue,  2 Aug 2022 06:48:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7717D402C2;
	Tue,  2 Aug 2022 06:48:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7717D402C2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E42001BF286
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 06:48:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BC8DB80C89
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 06:48:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BC8DB80C89
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JBu5yhpZxtj0 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Aug 2022 06:48:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CDB3080C58
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CDB3080C58
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 06:48:45 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aea12.dynamic.kabel-deutschland.de
 [95.90.234.18])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 4C12561EA192A;
 Tue,  2 Aug 2022 08:48:42 +0200 (CEST)
Message-ID: <f55dc242-eaa1-fa58-38d7-1b48f3d00394@molgen.mpg.de>
Date: Tue, 2 Aug 2022 08:48:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.0
Content-Language: en-US
To: Mikael Barsehyan <mikael.barsehyan@intel.com>
References: <20220728192332.159990-1-mikael.barsehyan@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220728192332.159990-1-mikael.barsehyan@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: Allow 100M speeds
 for some devices
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
Cc: Chinh T Cao <chinh.t.cao@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBNaWthZWwsIGRlYXIgQ2hpbmgsCgoKVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLgoKQW0g
MjguMDcuMjIgdW0gMjE6MjMgc2NocmllYiBNaWthZWwgQmFyc2VoeWFuOgo+IEZyb206IEFuaXJ1
ZGggVmVua2F0YXJhbWFuYW4gPGFuaXJ1ZGgudmVua2F0YXJhbWFuYW5AaW50ZWwuY29tPgo+IAo+
IEZvciBjZXJ0YWluIGRldmljZXMsIDEwME0gc3BlZWRzIGFyZSBzdXBwb3J0ZWQuIERvIG5vdCBt
YXNrIG9mZgo+IDEwME0gc3BlZWQgZm9yIHRoZXNlIGRldmljZXMuCgpQbGVhc2UgbGlzdCB0aGUg
ZGV2aWNlcyBpbiB0aGUgY29tbWl0IG1lc3NhZ2UuCgpQbGVhc2UgYWxzbyBkZXNjcmliZSB0aGUg
aW1wbGVtZW50YXRpb24gaW4gdGhlIGNvbW1pdCBtZXNzYWdlLgoKSG93IGRpZCB5b3UgdGVzdCB0
aGlzPwoKPiBTaWduZWQtb2ZmLWJ5OiBBbmlydWRoIFZlbmthdGFyYW1hbmFuIDxhbmlydWRoLnZl
bmthdGFyYW1hbmFuQGludGVsLmNvbT4KPiBDby1kZXZlbG9wZWQtYnk6IENoaW5oIFQgQ2FvIDxj
aGluaC50LmNhb0BpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQ2hpbmggVCBDYW8gPGNoaW5o
LnQuY2FvQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNaWthZWwgQmFyc2VoeWFuIDxtaWth
ZWwuYmFyc2VoeWFuQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfY29tbW9uLmMgIHwgMjAgKysrKysrKysrKysrKysrKysrKysKPiAgIGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29tbW9uLmggIHwgIDEgKwo+ICAgZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9ldGh0b29sLmMgfCAxMSArKysrKysrLS0tLQo+
ICAgMyBmaWxlcyBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5j
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24uYwo+IGluZGV4IDA1
YTRhY2ZiZGQxZC4uMDEwMzg1ZTY3NjY1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfY29tbW9uLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX2NvbW1vbi5jCj4gQEAgLTI3NzUsNiArMjc3NSwyNiBAQCBpY2VfYXFfc2V0
X3BvcnRfcGFyYW1zKHN0cnVjdCBpY2VfcG9ydF9pbmZvICpwaSwgYm9vbCBkb3VibGVfdmxhbiwK
PiAgIAlyZXR1cm4gaWNlX2FxX3NlbmRfY21kKGh3LCAmZGVzYywgTlVMTCwgMCwgY2QpOwo+ICAg
fQo+ICAgCj4gKy8qKgo+ICsgKiBpY2VfaXNfMTAwbV9zcGVlZF9zdXBwb3J0ZWQKPiArICogQGh3
OiBwb2ludGVyIHRvIHRoZSBIVyBzdHJ1Y3QKPiArICoKPiArICogcmV0dXJucyB0cnVlIGlmIDEw
ME0gc3BlZWRzIGFyZSBzdXBwb3J0ZWQgYnkgdGhlIGRldmljZSwKPiArICogZmFsc2Ugb3RoZXJ3
aXNlLgo+ICsgKi8KPiArYm9vbCBpY2VfaXNfMTAwbV9zcGVlZF9zdXBwb3J0ZWQoc3RydWN0IGlj
ZV9odyAqaHcpCj4gK3sKPiArCXN3aXRjaCAoaHctPmRldmljZV9pZCkgewo+ICsJY2FzZSBJQ0Vf
REVWX0lEX0U4MjJDX1NHTUlJOgo+ICsJY2FzZSBJQ0VfREVWX0lEX0U4MjJMX1NHTUlJOgo+ICsJ
Y2FzZSBJQ0VfREVWX0lEX0U4MjNMXzFHQkU6Cj4gKwljYXNlIElDRV9ERVZfSURfRTgyM0NfU0dN
SUk6Cj4gKwkJcmV0dXJuIHRydWU7Cj4gKwlkZWZhdWx0Ogo+ICsJCXJldHVybiBmYWxzZTsKPiAr
CX0KCklzIHRoZXJlIG5vIHdheSB0byBkZXRlcm1pbmUgdGhpcyBkdXJpbmcgcnVuLXRpbWUgd2l0
aG91dCBtYWludGFpbmluZyBhIApsaXN0PwoKPiArfQo+ICsKPiAgIC8qKgo+ICAgICogaWNlX2dl
dF9saW5rX3NwZWVkX2Jhc2VkX29uX3BoeV90eXBlIC0gcmV0dXJucyBsaW5rIHNwZWVkCj4gICAg
KiBAcGh5X3R5cGVfbG93OiBsb3dlciBwYXJ0IG9mIHBoeV90eXBlCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29tbW9uLmggYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5oCj4gaW5kZXggYTc0ZGYxZDNhMDAyLi4yNzM0
Mjk2YmRkM2IgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9jb21tb24uaAo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29t
bW9uLmgKPiBAQCAtMjA1LDYgKzIwNSw3IEBAIGljZV9hcV9zZXRfZ3BpbyhzdHJ1Y3QgaWNlX2h3
ICpodywgdTE2IGdwaW9fY3RybF9oYW5kbGUsIHU4IHBpbl9pZHgsIGJvb2wgdmFsdWUsCj4gICBp
bnQKPiAgIGljZV9hcV9nZXRfZ3BpbyhzdHJ1Y3QgaWNlX2h3ICpodywgdTE2IGdwaW9fY3RybF9o
YW5kbGUsIHU4IHBpbl9pZHgsCj4gICAJCWJvb2wgKnZhbHVlLCBzdHJ1Y3QgaWNlX3NxX2NkICpj
ZCk7Cj4gK2Jvb2wgaWNlX2lzXzEwMG1fc3BlZWRfc3VwcG9ydGVkKHN0cnVjdCBpY2VfaHcgKmh3
KTsKCknigJlkIG5hbWUgaXQgYGlzXzEwMG1iaXRzX3N1cHBvcnRlZGAuCgo+ICAgaW50Cj4gICBp
Y2VfYXFfc2V0X2xsZHBfbWliKHN0cnVjdCBpY2VfaHcgKmh3LCB1OCBtaWJfdHlwZSwgdm9pZCAq
YnVmLCB1MTYgYnVmX3NpemUsCj4gICAJCSAgICBzdHJ1Y3QgaWNlX3NxX2NkICpjZCk7Cj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZXRodG9vbC5jIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9ldGh0b29sLmMKPiBpbmRleCA0NmQ4
YWM3OTA2ZWEuLmFhNmEwZWQ4ZWI5NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX2V0aHRvb2wuYwo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfZXRodG9vbC5jCj4gQEAgLTE1MDMsMjAgKzE1MDMsMjIgQEAgaWNlX2dldF9l
dGh0b29sX3N0YXRzKHN0cnVjdCBuZXRfZGV2aWNlICpuZXRkZXYsCj4gICAKPiAgIC8qKgo+ICAg
ICogaWNlX21hc2tfbWluX3N1cHBvcnRlZF9zcGVlZHMKPiArICogQGh3OiBwb2ludGVyIHRvIHRo
ZSBIVyBzdHJ1Y3R1cmUKPiAgICAqIEBwaHlfdHlwZXNfaGlnaDogUEhZIHR5cGUgaGlnaAo+ICAg
ICogQHBoeV90eXBlc19sb3c6IFBIWSB0eXBlIGxvdyB0byBhcHBseSBtaW5pbXVtIHN1cHBvcnRl
ZCBzcGVlZHMgbWFzawo+ICAgICoKPiAgICAqIEFwcGx5IG1pbmltdW0gc3VwcG9ydGVkIHNwZWVk
cyBtYXNrIHRvIFBIWSB0eXBlIGxvdy4gVGhlc2UgYXJlIHRoZSBzcGVlZHMKPiAgICAqIGZvciBl
dGh0b29sIHN1cHBvcnRlZCBsaW5rIG1vZGUuCj4gICAgKi8KPiAtc3RhdGljCj4gLXZvaWQgaWNl
X21hc2tfbWluX3N1cHBvcnRlZF9zcGVlZHModTY0IHBoeV90eXBlc19oaWdoLCB1NjQgKnBoeV90
eXBlc19sb3cpCj4gK3N0YXRpYyB2b2lkCj4gK2ljZV9tYXNrX21pbl9zdXBwb3J0ZWRfc3BlZWRz
KHN0cnVjdCBpY2VfaHcgKmh3LAo+ICsJCQkJICAgdTY0IHBoeV90eXBlc19oaWdoLCB1NjQgKnBo
eV90eXBlc19sb3cpCj4gICB7Cj4gICAJLyogaWYgUVNGUCBjb25uZWN0aW9uIHdpdGggMTAwRyBz
cGVlZCwgbWluaW11bSBzdXBwb3J0ZWQgc3BlZWQgaXMgMjVHICovCj4gICAJaWYgKCpwaHlfdHlw
ZXNfbG93ICYgSUNFX1BIWV9UWVBFX0xPV19NQVNLXzEwMEcgfHwKPiAgIAkgICAgcGh5X3R5cGVz
X2hpZ2ggJiBJQ0VfUEhZX1RZUEVfSElHSF9NQVNLXzEwMEcpCj4gICAJCSpwaHlfdHlwZXNfbG93
ICY9IH5JQ0VfUEhZX1RZUEVfTE9XX01BU0tfTUlOXzI1RzsKPiAtCWVsc2UKPiArCWVsc2UgaWYg
KCFpY2VfaXNfMTAwbV9zcGVlZF9zdXBwb3J0ZWQoaHcpKQo+ICAgCQkqcGh5X3R5cGVzX2xvdyAm
PSB+SUNFX1BIWV9UWVBFX0xPV19NQVNLX01JTl8xRzsKPiAgIH0KPiAgIAo+IEBAIC0xNTY2LDcg
KzE1NjgsOCBAQCBpY2VfcGh5X3R5cGVfdG9fZXRodG9vbChzdHJ1Y3QgbmV0X2RldmljZSAqbmV0
ZGV2LAo+ICAgCQlwaHlfdHlwZXNfbG93ID0gbGU2NF90b19jcHUocGYtPm52bV9waHlfdHlwZV9s
byk7Cj4gICAJCXBoeV90eXBlc19oaWdoID0gbGU2NF90b19jcHUocGYtPm52bV9waHlfdHlwZV9o
aSk7Cj4gICAKPiAtCQlpY2VfbWFza19taW5fc3VwcG9ydGVkX3NwZWVkcyhwaHlfdHlwZXNfaGln
aCwgJnBoeV90eXBlc19sb3cpOwo+ICsJCWljZV9tYXNrX21pbl9zdXBwb3J0ZWRfc3BlZWRzKCZw
Zi0+aHcsIHBoeV90eXBlc19oaWdoLAo+ICsJCQkJCSAgICAgICZwaHlfdHlwZXNfbG93KTsKPiAg
IAkJLyogZGV0ZXJtaW5lIGFkdmVydGlzZWQgbW9kZXMgYmFzZWQgb24gbGluayBvdmVycmlkZSBv
bmx5Cj4gICAJCSAqIGlmIGl0J3Mgc3VwcG9ydGVkIGFuZCBpZiB0aGUgRlcgZG9lc24ndCBhYnN0
cmFjdCB0aGUKPiAgIAkJICogZHJpdmVyIGZyb20gaGF2aW5nIHRvIGFjY291bnQgZm9yIGxpbmsg
b3ZlcnJpZGVzCgoKS2luZCByZWdhcmRzLAoKUGF1bApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVs
LXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
