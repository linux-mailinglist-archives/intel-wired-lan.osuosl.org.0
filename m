Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9047A429F6B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Oct 2021 10:10:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D227F405E3;
	Tue, 12 Oct 2021 08:10:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jHohGLJirR3o; Tue, 12 Oct 2021 08:10:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B6410405E2;
	Tue, 12 Oct 2021 08:10:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 08B841BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 08:10:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 047A480E68
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 08:10:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id knG_KGdaD_jp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Oct 2021 08:10:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 419F680E5F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 08:10:29 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae924.dynamic.kabel-deutschland.de
 [95.90.233.36])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 009C661E64760;
 Tue, 12 Oct 2021 10:10:25 +0200 (CEST)
To: Jacob Keller <jacob.e.keller@intel.com>
References: <20211012010715.1684027-1-jacob.e.keller@intel.com>
 <20211012010715.1684027-3-jacob.e.keller@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <97277fe9-ab9a-78c6-2456-1dfe643f69e9@molgen.mpg.de>
Date: Tue, 12 Oct 2021 10:10:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211012010715.1684027-3-jacob.e.keller@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [net-next PATCH v2 2/9] ice: PTP: move
 setting of tstamp_config
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

RGVhciBKYWNvYiwKCgpBbSAxMi4xMC4yMSB1bSAwMzowNyBzY2hyaWViIEphY29iIEtlbGxlcjoK
PiBUaGUgdHN0YW1wX2NvbmZpZyBzdHJ1Y3R1cmUgaXMgYmVpbmcgc2V0IGluc2lkZSBvZgo+IGlj
ZV9wdHBfY2ZnX3RpbWVzdGFtcCwgd2hpY2ggaXMgdGhlIGZ1bmN0aW9uIHVzZWQgdG8gc2V0IFR4
IGFuZAo+IFJ4IHRpbWVzdGFtcGluZyBkdXJpbmcgaW5pdGlhbGl6YXRpb24uCj4gCj4gVGhpcyBm
dW5jdGlvbiBpcyBhbHNvIHVzZWQgaW4gb3JkZXIgdG8gc2V0IHRoZSBQSFkgcG9ydCB0aW1lc3Rh
bXBpbmcKPiBzdGF0dXMuIEhvd2V2ZXIsIGl0IG1ha2VzIHNlbnNlIHRvIGFsd2F5cyBzZXQgdGhl
IHRzdGFtcF9jb25maWcgZGlyZWN0bHkKPiB3aGVuZXZlciB0aGUgaWNlX3NldF90eF90c3RhbXAg
b3IgaWNlX3NldF9yeF90c3RhbXAgZnVuY3Rpb25zIGFyZQo+IGNhbGxlZC4KPiAKPiBNb3ZlIGFz
c2lnbm1lbnQgb2YgdHN0YW1wX2NvbmZpZyBpbnRvIHRoZSByZWxhdGVkIGZ1bmN0aW9ucyBhbmQg
b3V0IG9mCj4gaWNlX3B0cF9jZmdfdGltZXN0YW1wLgo+IAo+IE5vdyB0aGF0IHdlIGFzc2lnbiB0
aGUgdGltZXN0YW1wIG1vZGUgaW4gdGhlIHJlbGV2YW50IGZ1bmN0aW9ucywgd2Ugbm8KPiBsb25n
ZXIgbW9kaWZ5IHRoZSBjb25maWcgdmFsdWllIGluIGljZV9zZXRfdGltZXN0YW1wX21vZGUuIElu
IHR1cm4sIHdlCgpOaXQ6IHZhbHVlCgo+IG5vIGxvbmdlciB3YW50IHRvIGNvcHkgdGhhdCBjb25m
aWcgdmFsdWUgaW50byB0aGUgUEYgY2FjaGVkIHN0cnVjdHVyZS4KPiBJbnN0ZWFkLCB0aGlzIGlz
IG5vdyB0aGUgc291cmNlIG9mIHRydXRoIGZvciBhY3R1YWwgY29uZmlndXJhdGlvbi4gT24KPiBz
dWNjZXNzIG9mIGljZV9zZXRfdGltZXN0YW1wX21vZGUsIGNvcHkgdGhlIHJlYWwgY29uZmlndXJl
ZCBtb2RlIGJhY2sgdG8KPiByZXBvcnQgaXQgb3V0IHRvIHVzZXJzcGFjZS4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBKYWNvYiBLZWxsZXIgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4KPiAtLS0KPiAg
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwLmMgfCAyMyArKysrKysrKysr
KystLS0tLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDExIGRl
bGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX3B0cC5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuYwo+
IGluZGV4IDcxZTcxNWM3YmU0Zi4uMTU1ODQyNDQ3ZWJlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX3B0cC5jCj4gQEAgLTI4NSw2ICsyODUsMTEgQEAgc3RhdGljIHZv
aWQgaWNlX3NldF90eF90c3RhbXAoc3RydWN0IGljZV9wZiAqcGYsIGJvb2wgb24pCj4gICAJZWxz
ZQo+ICAgCQl2YWwgJj0gflBGSU5UX09JQ1JfVFNZTl9UWF9NOwo+ICAgCXdyMzIoJnBmLT5odywg
UEZJTlRfT0lDUl9FTkEsIHZhbCk7Cj4gKwo+ICsJaWYgKG9uKQo+ICsJCXBmLT5wdHAudHN0YW1w
X2NvbmZpZy50eF90eXBlID0gSFdUU1RBTVBfVFhfT047Cj4gKwllbHNlCj4gKwkJcGYtPnB0cC50
c3RhbXBfY29uZmlnLnR4X3R5cGUgPSBIV1RTVEFNUF9UWF9PRkY7CgpJ4oCZZCB1c2UgdGhlIHRl
cm5hcnkgb3BlcmF0b3I6CgogICAgIHBmLT5wdHAudHN0YW1wX2NvbmZpZy50eF90eXBlID0gb24g
PyBIV1RTVEFNUF9UWF9PTiA6IEhXVFNUQU1QX1RYX09GRjsKCj4gICB9Cj4gICAKPiAgIC8qKgo+
IEBAIC0zMDcsNiArMzEyLDExIEBAIHN0YXRpYyB2b2lkIGljZV9zZXRfcnhfdHN0YW1wKHN0cnVj
dCBpY2VfcGYgKnBmLCBib29sIG9uKQo+ICAgCQkJY29udGludWU7Cj4gICAJCXZzaS0+cnhfcmlu
Z3NbaV0tPnB0cF9yeCA9IG9uOwo+ICAgCX0KPiArCj4gKwlpZiAob24pCj4gKwkJcGYtPnB0cC50
c3RhbXBfY29uZmlnLnJ4X2ZpbHRlciA9IEhXVFNUQU1QX0ZJTFRFUl9BTEw7Cj4gKwllbHNlCj4g
KwkJcGYtPnB0cC50c3RhbXBfY29uZmlnLnJ4X2ZpbHRlciA9IEhXVFNUQU1QX0ZJTFRFUl9OT05F
Owo+ICAgfQo+ICAgCj4gICAvKioKPiBAQCAtMzIxLDE0ICszMzEsNiBAQCBzdGF0aWMgdm9pZCBp
Y2VfcHRwX2NmZ190aW1lc3RhbXAoc3RydWN0IGljZV9wZiAqcGYsIGJvb2wgZW5hKQo+ICAgewo+
ICAgCWljZV9zZXRfdHhfdHN0YW1wKHBmLCBlbmEpOwo+ICAgCWljZV9zZXRfcnhfdHN0YW1wKHBm
LCBlbmEpOwo+IC0KPiAtCWlmIChlbmEpIHsKPiAtCQlwZi0+cHRwLnRzdGFtcF9jb25maWcucnhf
ZmlsdGVyID0gSFdUU1RBTVBfRklMVEVSX0FMTDsKPiAtCQlwZi0+cHRwLnRzdGFtcF9jb25maWcu
dHhfdHlwZSA9IEhXVFNUQU1QX1RYX09OOwo+IC0JfSBlbHNlIHsKPiAtCQlwZi0+cHRwLnRzdGFt
cF9jb25maWcucnhfZmlsdGVyID0gSFdUU1RBTVBfRklMVEVSX05PTkU7Cj4gLQkJcGYtPnB0cC50
c3RhbXBfY29uZmlnLnR4X3R5cGUgPSBIV1RTVEFNUF9UWF9PRkY7Cj4gLQl9Cj4gICB9Cj4gICAK
PiAgIC8qKgo+IEBAIC0xMjU2LDcgKzEyNTgsNiBAQCBpY2VfcHRwX3NldF90aW1lc3RhbXBfbW9k
ZShzdHJ1Y3QgaWNlX3BmICpwZiwgc3RydWN0IGh3dHN0YW1wX2NvbmZpZyAqY29uZmlnKQo+ICAg
CWNhc2UgSFdUU1RBTVBfRklMVEVSX1BUUF9WMl9MNF9ERUxBWV9SRVE6Cj4gICAJY2FzZSBIV1RT
VEFNUF9GSUxURVJfTlRQX0FMTDoKPiAgIAljYXNlIEhXVFNUQU1QX0ZJTFRFUl9BTEw6Cj4gLQkJ
Y29uZmlnLT5yeF9maWx0ZXIgPSBIV1RTVEFNUF9GSUxURVJfQUxMOwo+ICAgCQlpY2Vfc2V0X3J4
X3RzdGFtcChwZiwgdHJ1ZSk7Cj4gICAJCWJyZWFrOwo+ICAgCWRlZmF1bHQ6Cj4gQEAgLTEyODgs
OCArMTI4OSw4IEBAIGludCBpY2VfcHRwX3NldF90c19jb25maWcoc3RydWN0IGljZV9wZiAqcGYs
IHN0cnVjdCBpZnJlcSAqaWZyKQo+ICAgCWlmIChlcnIpCj4gICAJCXJldHVybiBlcnI7Cj4gICAK
PiAtCS8qIFNhdmUgdGhlc2Ugc2V0dGluZ3MgZm9yIGZ1dHVyZSByZWZlcmVuY2UgKi8KPiAtCXBm
LT5wdHAudHN0YW1wX2NvbmZpZyA9IGNvbmZpZzsKPiArCS8qIFJldHVybiB0aGUgYWN0dWFsIGNv
bmZpZ3VyYXRpb24gc2V0ICovCj4gKwljb25maWcgPSBwZi0+cHRwLnRzdGFtcF9jb25maWc7Cj4g
ICAKPiAgIAlyZXR1cm4gY29weV90b191c2VyKGlmci0+aWZyX2RhdGEsICZjb25maWcsIHNpemVv
Zihjb25maWcpKSA/Cj4gICAJCS1FRkFVTFQgOiAwOwo+IAoKQWNrZWQtYnk6IFBhdWwgTWVuemVs
IDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+CgoKS2luZCByZWdhcmRzLAoKUGF1bApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFp
bGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3Ns
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
