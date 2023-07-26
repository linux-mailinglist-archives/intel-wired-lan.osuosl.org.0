Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D002476355B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jul 2023 13:41:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 765EE61203;
	Wed, 26 Jul 2023 11:41:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 765EE61203
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690371671;
	bh=BArc5DqXHYRCnMF6kjaqaPFBUHIWj6Ub5SNlUbfu9UM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=u/Vxr2La+UKaoysMO69/3/Pr4hEY8nlZTuZq+vsugn46ra9OdkMHItlKPXqxDfoXZ
	 feBGYQ4YsNZ0REySpaEcWo7238bi7RyfDDBy1MZF6EWjZg8duE8hCzMEleCcr/P5CH
	 ONqyip0HoTrx7sBZBGiqb+7X4Rx/sZefLQM1bM1pHSNB1KtGjJWwMQ22VjkR5nJIp7
	 m/8G/eflaF5XbAzYD9+1DyXZkrRhuxsqxvzzXSiwm0doLTFDsuMX1B+ZqrzC9FjIuT
	 jHV/YYX0HCnyxVDU5l5saJOm0AHCJELYB54/HXSwL1TLrOvRVPLZ+VJpQsrekfewx+
	 R5HL3JmiWVK+g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 19Km92Ny4sVx; Wed, 26 Jul 2023 11:41:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47C3B60E8E;
	Wed, 26 Jul 2023 11:41:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47C3B60E8E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1D1F91BF57F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 11:41:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E1A0041B5C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 11:41:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E1A0041B5C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wvvKXAdsryWn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jul 2023 11:41:03 +0000 (UTC)
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3F32641915
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 11:41:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F32641915
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 1988561E5FE01;
 Wed, 26 Jul 2023 13:40:46 +0200 (CEST)
Message-ID: <bcb7cf39-2051-c874-ca98-e96d849b8b55@molgen.mpg.de>
Date: Wed, 26 Jul 2023 13:40:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Wojciech Drewek <wojciech.drewek@intel.com>
References: <20230726105054.295220-1-wojciech.drewek@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230726105054.295220-1-wojciech.drewek@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: VLAN untagged traffic
 support
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBXb2pjaWVjaCwKCgpUaGFuayB5b3UgZm9yIHlvdXIgcGF0Y2guCgpDb3VsZCB5b3UgdXNl
IGEgc3RhdGVtZW50IGFzIHN1bW1hcnkgYnkgdXNpbmcgYSB2ZXJiIChpbiBpbXBlcmF0aXZlIApt
b29kKT8gTWF5YmU6CgpTdXBwb3J0IHVudGFnZ2VkIFZMQU4gdHJhZmZpYwoKQW0gMjYuMDcuMjMg
dW0gMTI6NTAgc2NocmllYiBXb2pjaWVjaCBEcmV3ZWs6Cj4gV2hlbiBkcml2ZXIgcmVjaXZlcyBT
V0lUQ0hERVZfRkRCX0FERF9UT19ERVZJQ0Ugbm90aWZpY2F0aW9uCgpyZWNlaXZlcwoKPiB3aXRo
IHZpZCA9IDEsIGl0IG1lYW5zIHRoYXQgd2UgaGF2ZSB0byBvZmZsb2FkIHVudGFnZ2VkIHRyYWZm
aWMuCj4gVGhpcyBpcyBhY2hpZXZlZCBieSBhZGRpbmcgdmxhbiBtZXRhZGF0YSBsb29rdXAuCj4g
Cj4gQWxzbyByZW1vdmUgdW5uZWNlc3NhcnkgYnJhY2tldHMgaW4gaWNlX2Vzd2l0Y2hfYnJfZmRi
X2VudHJ5X2NyZWF0ZS4KCkZvciB0aGluZ3Mgc3RhcnRpbmcgd2l0aCDigJxBbHNv4oCdIGluIHRo
ZSBnaXQgY29tbWl0IG1lc3NhZ2UsIHRoYXTigJlzIGEgZ29vZCAKaW5kaWNhdG9yIGZvciBhIHNl
cGFyYXRlIGNvbW1pdC4gOy0pCgo+IFNpZ25lZC1vZmYtYnk6IFdvamNpZWNoIERyZXdlayA8d29q
Y2llY2guZHJld2VrQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfZXN3aXRjaF9ici5jIHwgOSArKysrKy0tLS0KPiAgIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfZXN3aXRjaF9ici5oIHwgOSAtLS0tLS0tLS0KPiAgIDIgZmls
ZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9lc3dpdGNoX2JyLmMgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Vzd2l0Y2hfYnIuYwo+IGluZGV4IDY3
YmZkMWY2MWNkZC4uMDViZWU3MDZiOTQ2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfZXN3aXRjaF9ici5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9lc3dpdGNoX2JyLmMKPiBAQCAtMTA0LDEzICsxMDQsMTUgQEAgaWNl
X2Vzd2l0Y2hfYnJfcnVsZV9kZWxldGUoc3RydWN0IGljZV9odyAqaHcsIHN0cnVjdCBpY2VfcnVs
ZV9xdWVyeV9kYXRhICpydWxlKQo+ICAgc3RhdGljIHUxNgo+ICAgaWNlX2Vzd2l0Y2hfYnJfZ2V0
X2xrdXBzX2NudCh1MTYgdmlkKQo+ICAgewo+IC0JcmV0dXJuIGljZV9lc3dpdGNoX2JyX2lzX3Zp
ZF92YWxpZCh2aWQpID8gMiA6IDE7Cj4gKwlyZXR1cm4gdmlkID09IDAgPyAxIDogMjsKClNob3Vs
ZCBzb21lIGNvbW1lbnQgYmUgYWRkZWQgdG8gdGhlIGZ1bmN0aW9uIHRvIGV4cGxhaW4gdGhlIGJl
aGF2aW9yPwoKPiAgIH0KPiAgIAo+ICAgc3RhdGljIHZvaWQKPiAgIGljZV9lc3dpdGNoX2JyX2Fk
ZF92bGFuX2xrdXAoc3RydWN0IGljZV9hZHZfbGt1cF9lbGVtICpsaXN0LCB1MTYgdmlkKQo+ICAg
ewo+IC0JaWYgKGljZV9lc3dpdGNoX2JyX2lzX3ZpZF92YWxpZCh2aWQpKSB7Cj4gKwlpZiAodmlk
ID09IDEpIHsKPiArCQlpY2VfcnVsZV9hZGRfdmxhbl9tZXRhZGF0YSgmbGlzdFsxXSk7Cj4gKwl9
IGVsc2UgaWYgKHZpZCA+IDEpIHsKCldoeSBpcyB2aWQgPT0gMSB0cmVhdGVkIGRpZmZlcmVudGx5
IGZyb20gdGhlIG90aGVycz8KCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCgoKPiAgIAkJbGlzdFsxXS50
eXBlID0gSUNFX1ZMQU5fT0ZPUzsKPiAgIAkJbGlzdFsxXS5oX3Uudmxhbl9oZHIudmxhbiA9IGNw
dV90b19iZTE2KHZpZCAmIFZMQU5fVklEX01BU0spOwo+ICAgCQlsaXN0WzFdLm1fdS52bGFuX2hk
ci52bGFuID0gY3B1X3RvX2JlMTYoMHhGRkZGKTsKPiBAQCAtNDAwLDExICs0MDIsMTAgQEAgaWNl
X2Vzd2l0Y2hfYnJfZmRiX2VudHJ5X2NyZWF0ZShzdHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2LAo+
ICAgCXVuc2lnbmVkIGxvbmcgZXZlbnQ7Cj4gICAJaW50IGVycjsKPiAgIAo+IC0JLyogdW50YWdn
ZWQgZmlsdGVyaW5nIGlzIG5vdCB5ZXQgc3VwcG9ydGVkICovCj4gICAJaWYgKCEoYnJpZGdlLT5m
bGFncyAmIElDRV9FU1dJVENIX0JSX1ZMQU5fRklMVEVSSU5HKSAmJiB2aWQpCj4gICAJCXJldHVy
bjsKPiAgIAo+IC0JaWYgKChicmlkZ2UtPmZsYWdzICYgSUNFX0VTV0lUQ0hfQlJfVkxBTl9GSUxU
RVJJTkcpKSB7Cj4gKwlpZiAoYnJpZGdlLT5mbGFncyAmIElDRV9FU1dJVENIX0JSX1ZMQU5fRklM
VEVSSU5HKSB7Cj4gICAJCXZsYW4gPSBpY2VfZXN3X2JyX3BvcnRfdmxhbl9sb29rdXAoYnJpZGdl
LCBicl9wb3J0LT52c2lfaWR4LAo+ICAgCQkJCQkJICAgdmlkKTsKPiAgIAkJaWYgKElTX0VSUih2
bGFuKSkgewo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X2Vzd2l0Y2hfYnIuaCBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZXN3aXRj
aF9ici5oCj4gaW5kZXggODVhOGZhZGIyOTI4Li5jZjdiMGU1YWNmY2IgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9lc3dpdGNoX2JyLmgKPiArKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Vzd2l0Y2hfYnIuaAo+IEBAIC0xMDMs
MTUgKzEwMyw2IEBAIHN0cnVjdCBpY2VfZXN3X2JyX3ZsYW4gewo+ICAgCQkgICAgIHN0cnVjdCBp
Y2VfZXN3X2JyX2ZkYl93b3JrLCBcCj4gICAJCSAgICAgd29yaykKPiAgIAo+IC1zdGF0aWMgaW5s
aW5lIGJvb2wgaWNlX2Vzd2l0Y2hfYnJfaXNfdmlkX3ZhbGlkKHUxNiB2aWQpCj4gLXsKPiAtCS8q
IEluIHRydW5rIFZMQU4gbW9kZSwgZm9yIHVudGFnZ2VkIHRyYWZmaWMgdGhlIGJyaWRnZSBzZW5k
cyByZXF1ZXN0cwo+IC0JICogdG8gb2ZmbG9hZCBWTEFOIDEgd2l0aCBwdmlkIGFuZCB1bnRhZ2dl
ZCBmbGFncyBzZXQuIFNpbmNlIHRoZXNlCj4gLQkgKiBmbGFncyBhcmUgbm90IHN1cHBvcnRlZCwg
YWRkIGEgTUFDIGZpbHRlciBpbnN0ZWFkLgo+IC0JICovCj4gLQlyZXR1cm4gdmlkID4gMTsKPiAt
fQo+IC0KPiAgIHZvaWQKPiAgIGljZV9lc3dpdGNoX2JyX29mZmxvYWRzX2RlaW5pdChzdHJ1Y3Qg
aWNlX3BmICpwZik7Cj4gICBpbnQKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
