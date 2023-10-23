Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C7D7D39B1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Oct 2023 16:41:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E86E81F38;
	Mon, 23 Oct 2023 14:41:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E86E81F38
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698072068;
	bh=iz36zU5K9REB2E8TeOFWKyLP/+rwwSw//Q0aczCdC4Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Cps+DO9dnJ/Vlcf7BU0ETbtgajgVhzUN4ErqETK0mk02G8L5vaPG0/5F4ufsCBl9w
	 N5MHDt52D4jun0OdNdgSF4OZO+IJTJXwxlwgouUrWF8SAGpZUmKfEYI0ez0azuFz8E
	 ZIsCDJEkq1HzGiTakNy/oD9Z7U1uiP4wdOrLv4prog1Dj2M8mz9av+R56As8wrfAlz
	 JBq4XowufHJr0qOZGQKOT/tvnkfdEqTGIlAoVPC8YGCKVnZizJyok8dtZpvL+eFZXg
	 Adv4lTh/3cIXuBadVyZEB6lgEMfVe72Ise6rgOHe9sUHl31UQleKzhAKBudejyVox6
	 vFhhQbQPjn49w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U3n1ZnPPZ09X; Mon, 23 Oct 2023 14:41:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2918681EE2;
	Mon, 23 Oct 2023 14:41:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2918681EE2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2FB8F1BF312
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Oct 2023 14:41:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 15311610F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Oct 2023 14:41:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 15311610F9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JAWQCa4_FHDf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Oct 2023 14:41:00 +0000 (UTC)
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3F74A60BC3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Oct 2023 14:41:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F74A60BC3
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 5E29D61E5FE01;
 Mon, 23 Oct 2023 16:40:52 +0200 (CEST)
Message-ID: <e3af93ac-b97d-4bff-92b5-786587b25210@molgen.mpg.de>
Date: Mon, 23 Oct 2023 16:40:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Justin Bronder <jsbronder@cold-front.org>
References: <20231023143557.18241-1-jsbronder@cold-front.org>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20231023143557.18241-1-jsbronder@cold-front.org>
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: increase max
 descriptors for XL710
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

RGVhciBKdXN0aW4sCgoKVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLgoKQW0gMjMuMTAuMjMgdW0g
MTY6MzUgc2NocmllYiBKdXN0aW4gQnJvbmRlcjo+IEluIFRhYmxlcyA4LTEyIGFuZCA4LTIyIGlu
IAp0aGUgWDcxMC9YWFY3MTAvWEw3MTAgZGF0YXNoZWV0LCB0aGUgUUxFTgo+IGRlc2NyaXB0aW9u
IHN0YXRlcyB0aGF0IHRoZSBtYXhpbXVtIHNpemUgb2YgdGhlIGRlc2NyaXB0b3IgcXVldWUgaXMg
OGsKPiBtaW51cyAzMiwgb3IgODE2MC4KCk1heWJlIHN0YXRlIHRoZSBwcm9ibGVtIG1vcmUgY2xl
YXJseSwgdGhhdCBjdXJyZW50bHkgYSBjb21tb24gbWFjcm8gaXMgCmRlZmluZWQgZm9yIGFsbCBt
b2RlbHMuCgo+IFNpZ25lZC1vZmYtYnk6IEp1c3RpbiBCcm9uZGVyIDxqc2Jyb25kZXJAY29sZC1m
cm9udC5vcmc+Cj4gLS0tCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGUu
aCAgICAgICAgfCAgMSArCj4gICAuLi4vbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9ldGh0
b29sLmMgICAgfCAyMyArKysrKysrKysrKysrKystLS0tCj4gICAyIGZpbGVzIGNoYW5nZWQsIDE5
IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZS5oIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaTQwZS9pNDBlLmgKPiBpbmRleCA2ZTMxMGE1Mzk0NjcuLmFkMjYxZmEwMGQ0YyAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGUuaAo+ICsrKyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZS5oCj4gQEAgLTUwLDYgKzUwLDcgQEAK
PiAgICNkZWZpbmUgSTQwRV9NQVhfVkVCCQkJMTYKPiAgIAo+ICAgI2RlZmluZSBJNDBFX01BWF9O
VU1fREVTQ1JJUFRPUlMJNDA5Ngo+ICsjZGVmaW5lIEk0MEVfTUFYX05VTV9ERVNDUklQVE9SU19Y
TDcxMAk4MTYwCj4gICAjZGVmaW5lIEk0MEVfTUFYX0NTUl9TUEFDRQkJKDQgKiAxMDI0ICogMTAy
NCAtIDY0ICogMTAyNCkKPiAgICNkZWZpbmUgSTQwRV9ERUZBVUxUX05VTV9ERVNDUklQVE9SUwk1
MTIKPiAgICNkZWZpbmUgSTQwRV9SRVFfREVTQ1JJUFRPUl9NVUxUSVBMRQkzMgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfZXRodG9vbC5jIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2V0aHRvb2wuYwo+IGluZGV4IGFmYzRm
YThjNjZhZi4uMzM4YzhmMWFjYzFhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2k0MGUvaTQwZV9ldGh0b29sLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pNDBlL2k0MGVfZXRodG9vbC5jCj4gQEAgLTIwMTMsNiArMjAxMywxOCBAQCBzdGF0aWMg
dm9pZCBpNDBlX2dldF9kcnZpbmZvKHN0cnVjdCBuZXRfZGV2aWNlICpuZXRkZXYsCj4gICAJCWRy
dmluZm8tPm5fcHJpdl9mbGFncyArPSBJNDBFX0dMX1BSSVZfRkxBR1NfU1RSX0xFTjsKPiAgIH0K
PiAgIAo+ICtzdGF0aWMgdTMyIGk0MGVfZ2V0X21heF9udW1fZGVzY3JpcHRvcnMoc3RydWN0IGk0
MGVfcGYgKnBmKQoKSeKAmWQgdXNlIGB1bnNpZ25lZCBpbnRgIGFzIHR5cG8gb2YgdGhlIHJldHVy
biB2YWx1ZS4KCj4gK3sKPiArCXN0cnVjdCBpNDBlX2h3ICpodyA9ICZwZi0+aHc7Cj4gKwo+ICsJ
c3dpdGNoIChody0+bWFjLnR5cGUpIHsKPiArCWNhc2UgSTQwRV9NQUNfWEw3MTA6Cj4gKwkJcmV0
dXJuIEk0MEVfTUFYX05VTV9ERVNDUklQVE9SU19YTDcxMDsKPiArCWRlZmF1bHQ6Cj4gKwkJcmV0
dXJuIEk0MEVfTUFYX05VTV9ERVNDUklQVE9SUzsKPiArCX0KPiArfQo+ICsKPiAgIHN0YXRpYyB2
b2lkIGk0MGVfZ2V0X3JpbmdwYXJhbShzdHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2LAo+ICAgCQkJ
ICAgICAgIHN0cnVjdCBldGh0b29sX3JpbmdwYXJhbSAqcmluZywKPiAgIAkJCSAgICAgICBzdHJ1
Y3Qga2VybmVsX2V0aHRvb2xfcmluZ3BhcmFtICprZXJuZWxfcmluZywKPiBAQCAtMjAyMiw4ICsy
MDM0LDggQEAgc3RhdGljIHZvaWQgaTQwZV9nZXRfcmluZ3BhcmFtKHN0cnVjdCBuZXRfZGV2aWNl
ICpuZXRkZXYsCj4gICAJc3RydWN0IGk0MGVfcGYgKnBmID0gbnAtPnZzaS0+YmFjazsKPiAgIAlz
dHJ1Y3QgaTQwZV92c2kgKnZzaSA9IHBmLT52c2lbcGYtPmxhbl92c2ldOwo+ICAgCj4gLQlyaW5n
LT5yeF9tYXhfcGVuZGluZyA9IEk0MEVfTUFYX05VTV9ERVNDUklQVE9SUzsKPiAtCXJpbmctPnR4
X21heF9wZW5kaW5nID0gSTQwRV9NQVhfTlVNX0RFU0NSSVBUT1JTOwo+ICsJcmluZy0+cnhfbWF4
X3BlbmRpbmcgPSBpNDBlX2dldF9tYXhfbnVtX2Rlc2NyaXB0b3JzKHBmKTsKPiArCXJpbmctPnR4
X21heF9wZW5kaW5nID0gaTQwZV9nZXRfbWF4X251bV9kZXNjcmlwdG9ycyhwZik7Cj4gICAJcmlu
Zy0+cnhfbWluaV9tYXhfcGVuZGluZyA9IDA7Cj4gICAJcmluZy0+cnhfanVtYm9fbWF4X3BlbmRp
bmcgPSAwOwo+ICAgCXJpbmctPnJ4X3BlbmRpbmcgPSB2c2ktPnJ4X3JpbmdzWzBdLT5jb3VudDsK
PiBAQCAtMjA1NywxOCArMjA2OSwxOSBAQCBzdGF0aWMgaW50IGk0MGVfc2V0X3JpbmdwYXJhbShz
dHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2LAo+ICAgCXUxNiB0eF9hbGxvY19xdWV1ZV9wYWlyczsK
PiAgIAlpbnQgdGltZW91dCA9IDUwOwo+ICAgCWludCBpLCBlcnIgPSAwOwo+ICsJdTMyIG1heF9u
dW1fZGVzY3JpcHRvcnMgPSBpNDBlX2dldF9tYXhfbnVtX2Rlc2NyaXB0b3JzKHBmKTsKPiAgIAo+
ICAgCWlmICgocmluZy0+cnhfbWluaV9wZW5kaW5nKSB8fCAocmluZy0+cnhfanVtYm9fcGVuZGlu
ZykpCj4gICAJCXJldHVybiAtRUlOVkFMOwo+ICAgCj4gLQlpZiAocmluZy0+dHhfcGVuZGluZyA+
IEk0MEVfTUFYX05VTV9ERVNDUklQVE9SUyB8fAo+ICsJaWYgKHJpbmctPnR4X3BlbmRpbmcgPiBt
YXhfbnVtX2Rlc2NyaXB0b3JzIHx8Cj4gICAJICAgIHJpbmctPnR4X3BlbmRpbmcgPCBJNDBFX01J
Tl9OVU1fREVTQ1JJUFRPUlMgfHwKPiAtCSAgICByaW5nLT5yeF9wZW5kaW5nID4gSTQwRV9NQVhf
TlVNX0RFU0NSSVBUT1JTIHx8Cj4gKwkgICAgcmluZy0+cnhfcGVuZGluZyA+IG1heF9udW1fZGVz
Y3JpcHRvcnMgfHwKPiAgIAkgICAgcmluZy0+cnhfcGVuZGluZyA8IEk0MEVfTUlOX05VTV9ERVND
UklQVE9SUykgewo+ICAgCQluZXRkZXZfaW5mbyhuZXRkZXYsCj4gICAJCQkgICAgIkRlc2NyaXB0
b3JzIHJlcXVlc3RlZCAoVHg6ICVkIC8gUng6ICVkKSBvdXQgb2YgcmFuZ2UgWyVkLSVkXVxuIiwK
PiAgIAkJCSAgICByaW5nLT50eF9wZW5kaW5nLCByaW5nLT5yeF9wZW5kaW5nLAo+IC0JCQkgICAg
STQwRV9NSU5fTlVNX0RFU0NSSVBUT1JTLCBJNDBFX01BWF9OVU1fREVTQ1JJUFRPUlMpOwo+ICsJ
CQkgICAgSTQwRV9NSU5fTlVNX0RFU0NSSVBUT1JTLCBtYXhfbnVtX2Rlc2NyaXB0b3JzKTsKPiAg
IAkJcmV0dXJuIC1FSU5WQUw7Cj4gICAJfQoKCktpbmQgcmVnYXJkcywKClBhdWwKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1h
aWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9z
bC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
