Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D9AAB30D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Sep 2019 09:09:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8DBCA85064;
	Fri,  6 Sep 2019 07:09:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BpNppFUN4lyv; Fri,  6 Sep 2019 07:09:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C62C28436F;
	Fri,  6 Sep 2019 07:09:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C99CB1BF393
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2019 07:09:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4C61887B0F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2019 07:09:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JTEy7LF5eQ+S for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Sep 2019 07:09:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F131A87A12
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2019 07:09:10 +0000 (UTC)
Received: from [192.168.0.6] (unknown [95.91.242.194])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id B844D2022572B;
 Fri,  6 Sep 2019 09:09:07 +0200 (CEST)
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
References: <20190905153956.53086-1-anthony.l.nguyen@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <b0857265-206a-c563-4b4a-d16a2c12e058@molgen.mpg.de>
Date: Fri, 6 Sep 2019 09:09:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190905153956.53086-1-anthony.l.nguyen@intel.com>
Content-Language: de-DE
Subject: Re: [Intel-wired-lan] [PATCH S29 1/6] ice: send driver version to
 firmware
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

RGVhciBUb255LCBkZWFyIFBhdWwsCgoKT24gMDUuMDkuMTkgMTc6MzksIFRvbnkgTmd1eWVuIHdy
b3RlOgo+IEZyb206IFBhdWwgTSBTdGlsbHdlbGwgSnIgPHBhdWwubS5zdGlsbHdlbGwuanJAaW50
ZWwuY29tPgo+IAo+IFRoZSBkcml2ZXIgaXMgcmVxdWlyZWQgdG8gc2VuZCBhIHZlcnNpb24gdG8g
dGhlIGZpcm13YXJlCj4gdG8gaW5kaWNhdGUgdGhhdCB0aGUgZHJpdmVyIGlzIHVwLiBJZiB0aGUg
ZHJpdmVyIGRvZXNuJ3QKPiBkbyB0aGlzIHRoZSBmaXJtd2FyZSBkb2Vzbid0IGJlaGF2ZSBwcm9w
ZXJseS4KCkluIHdoYXQgZGF0YXNoZWV0IGlzIHRoYXQgZG9jdW1lbnRlZD8KCldoYXQgZG9lcyDi
gJxkb2VzbuKAmXQgYmVoYXZlIHByb3Blcmx54oCdIG1lYW4gZXhhY3RseT8KCj4gU2lnbmVkLW9m
Zi1ieTogUGF1bCBNIFN0aWxsd2VsbCBKciA8cGF1bC5tLnN0aWxsd2VsbC5qckBpbnRlbC5jb20+
Cj4gU2lnbmVkLW9mZi1ieTogVG9ueSBOZ3V5ZW4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29t
Pgo+IC0tLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZS5oICAgICAgICAg
IHwgIDEgKwo+ICAgLi4uL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2FkbWlucV9jbWQuaCAg
IHwgMTMgKysrKysrKwo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21t
b24uYyAgIHwgMzcgKysrKysrKysrKysrKysrKysrKwo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9jb21tb24uaCAgIHwgIDMgKysKPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfbWFpbi5jICAgICB8IDM2ICsrKysrKysrKysrKysrKysrLQo+ICAgZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eXBlLmggICAgIHwgIDggKysrKwo+ICAg
NiBmaWxlcyBjaGFuZ2VkLCA5NyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2UuaCBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2UuaAo+IGluZGV4IGIzNmUxY2YwZTQ2MS4uNGNkZWRj
ZWJiMTYzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Uu
aAo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2UuaAo+IEBAIC0yOSw2
ICsyOSw3IEBACj4gICAjaW5jbHVkZSA8bGludXgvc2N0cC5oPgo+ICAgI2luY2x1ZGUgPGxpbnV4
L2lwdjYuaD4KPiAgICNpbmNsdWRlIDxsaW51eC9pZl9icmlkZ2UuaD4KPiArI2luY2x1ZGUgPGxp
bnV4L2N0eXBlLmg+CgpJcyB0aGUgYWxpZ25tZW50IGNvcnJlY3Q/IChPciBqdXN0IG15IG1haWxl
ciBtZXNzaW5nIHVwPykKCj4gICAjaW5jbHVkZSA8bGludXgvYXZmL3ZpcnRjaG5sLmg+Cj4gICAj
aW5jbHVkZSA8bmV0L2lwdjYuaD4KPiAgICNpbmNsdWRlICJpY2VfZGV2aWRzLmgiCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfYWRtaW5xX2NtZC5oIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9hZG1pbnFfY21kLmgKPiBpbmRleCA0
ZGEwY2RlOTY5NWIuLjljOTc5MTc4ODYxMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX2FkbWlucV9jbWQuaAo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfYWRtaW5xX2NtZC5oCj4gQEAgLTMzLDYgKzMzLDE3IEBAIHN0cnVj
dCBpY2VfYXFjX2dldF92ZXIgewo+ICAgCXU4IGFwaV9wYXRjaDsKPiAgIH07Cj4gICAKPiArLyog
U2VuZCBkcml2ZXIgdmVyc2lvbiAoaW5kaXJlY3QgMHgwMDAyKSAqLwo+ICtzdHJ1Y3QgaWNlX2Fx
Y19kcml2ZXJfdmVyIHsKPiArCXU4IG1ham9yX3ZlcjsKPiArCXU4IG1pbm9yX3ZlcjsKPiArCXU4
IGJ1aWxkX3ZlcjsKPiArCXU4IHN1YmJ1aWxkX3ZlcjsKPiArCXU4IHJlc2VydmVkWzRdOwo+ICsJ
X19sZTMyIGFkZHJfaGlnaDsKPiArCV9fbGUzMiBhZGRyX2xvdzsKPiArfTsKPiArCj4gICAvKiBR
dWV1ZSBTaHV0ZG93biAoZGlyZWN0IDB4MDAwMykgKi8KPiAgIHN0cnVjdCBpY2VfYXFjX3Ffc2h1
dGRvd24gewo+ICAgCXU4IGRyaXZlcl91bmxvYWRpbmc7Cj4gQEAgLTE1NDcsNiArMTU1OCw3IEBA
IHN0cnVjdCBpY2VfYXFfZGVzYyB7Cj4gICAJCXU4IHJhd1sxNl07Cj4gICAJCXN0cnVjdCBpY2Vf
YXFjX2dlbmVyaWMgZ2VuZXJpYzsKPiAgIAkJc3RydWN0IGljZV9hcWNfZ2V0X3ZlciBnZXRfdmVy
Owo+ICsJCXN0cnVjdCBpY2VfYXFjX2RyaXZlcl92ZXIgZHJpdmVyX3ZlcjsKPiAgIAkJc3RydWN0
IGljZV9hcWNfcV9zaHV0ZG93biBxX3NodXRkb3duOwo+ICAgCQlzdHJ1Y3QgaWNlX2FxY19yZXFf
cmVzIHJlc19vd25lcjsKPiAgIAkJc3RydWN0IGljZV9hcWNfbWFuYWdlX21hY19yZWFkIG1hY19y
ZWFkOwo+IEBAIC0xNjE4LDYgKzE2MzAsNyBAQCBlbnVtIGljZV9hcV9lcnIgewo+ICAgZW51bSBp
Y2VfYWRtaW5xX29wYyB7Cj4gICAJLyogQVEgY29tbWFuZHMgKi8KPiAgIAlpY2VfYXFjX29wY19n
ZXRfdmVyCQkJCT0gMHgwMDAxLAo+ICsJaWNlX2FxY19vcGNfZHJpdmVyX3ZlcgkJCQk9IDB4MDAw
MiwKPiAgIAlpY2VfYXFjX29wY19xX3NodXRkb3duCQkJCT0gMHgwMDAzLAo+ICAgCj4gICAJLyog
cmVzb3VyY2Ugb3duZXJzaGlwICovCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfY29tbW9uLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX2NvbW1vbi5jCj4gaW5kZXggOGIyYzQ2NjE1ODM0Li5kYjYyY2M3NDg1NDQgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24uYwo+ICsrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29tbW9uLmMKPiBAQCAtMTI1OCw2
ICsxMjU4LDQzIEBAIGVudW0gaWNlX3N0YXR1cyBpY2VfYXFfZ2V0X2Z3X3ZlcihzdHJ1Y3QgaWNl
X2h3ICpodywgc3RydWN0IGljZV9zcV9jZCAqY2QpCj4gICAJcmV0dXJuIHN0YXR1czsKPiAgIH0K
PiAgIAo+ICsvKioKPiArICogaWNlX2FxX3NlbmRfZHJpdmVyX3Zlcgo+ICsgKiBAaHc6IHBvaW50
ZXIgdG8gdGhlIEhXIHN0cnVjdAo+ICsgKiBAZHY6IGRyaXZlcidzIG1ham9yLCBtaW5vciB2ZXJz
aW9uCj4gKyAqIEBjZDogcG9pbnRlciB0byBjb21tYW5kIGRldGFpbHMgc3RydWN0dXJlIG9yIE5V
TEwKPiArICoKPiArICogU2VuZCB0aGUgZHJpdmVyIHZlcnNpb24gKDB4MDAwMikgdG8gdGhlIGZp
cm13YXJlCj4gKyAqLwo+ICtlbnVtIGljZV9zdGF0dXMKPiAraWNlX2FxX3NlbmRfZHJpdmVyX3Zl
cihzdHJ1Y3QgaWNlX2h3ICpodywgc3RydWN0IGljZV9kcml2ZXJfdmVyICpkdiwKPiArCQkgICAg
ICAgc3RydWN0IGljZV9zcV9jZCAqY2QpCj4gK3sKPiArCXN0cnVjdCBpY2VfYXFjX2RyaXZlcl92
ZXIgKmNtZDsKPiArCXN0cnVjdCBpY2VfYXFfZGVzYyBkZXNjOwo+ICsJdTE2IGxlbjsKCkp1c3Qg
YHVuc2lnbmVkIGludGAgb3IgYHNpemVfdGA/Cgo+ICsKPiArCWNtZCA9ICZkZXNjLnBhcmFtcy5k
cml2ZXJfdmVyOwo+ICsKPiArCWlmICghZHYpCj4gKwkJcmV0dXJuIElDRV9FUlJfUEFSQU07Cj4g
Kwo+ICsJaWNlX2ZpbGxfZGZsdF9kaXJlY3RfY21kX2Rlc2MoJmRlc2MsIGljZV9hcWNfb3BjX2Ry
aXZlcl92ZXIpOwo+ICsKPiArCWRlc2MuZmxhZ3MgfD0gY3B1X3RvX2xlMTYoSUNFX0FRX0ZMQUdf
UkQpOwo+ICsJY21kLT5tYWpvcl92ZXIgPSBkdi0+bWFqb3JfdmVyOwo+ICsJY21kLT5taW5vcl92
ZXIgPSBkdi0+bWlub3JfdmVyOwo+ICsJY21kLT5idWlsZF92ZXIgPSBkdi0+YnVpbGRfdmVyOwo+
ICsJY21kLT5zdWJidWlsZF92ZXIgPSBkdi0+c3ViYnVpbGRfdmVyOwo+ICsKPiArCWxlbiA9IDA7
Cj4gKwl3aGlsZSAobGVuIDwgc2l6ZW9mKGR2LT5kcml2ZXJfc3RyaW5nKSAmJgo+ICsJICAgICAg
IGlzYXNjaWkoZHYtPmRyaXZlcl9zdHJpbmdbbGVuXSkgJiYgZHYtPmRyaXZlcl9zdHJpbmdbbGVu
XSkKPiArCQlsZW4rKzsKCklzIHRoZXJlIHN1Y2ggYSBmdW5jdGlvbiBmb3IgZmluZGluZyB0aGUg
bGVuZ3RoIG9mIEFTQ0lJIGNoYXJhY3RlcnMgCmFscmVhZHkgc29tZXdoZXJlIGluIExpbnV4PwoK
PiArCj4gKwlyZXR1cm4gaWNlX2FxX3NlbmRfY21kKGh3LCAmZGVzYywgZHYtPmRyaXZlcl9zdHJp
bmcsIGxlbiwgY2QpOwo+ICt9Cj4gKwo+ICAgLyoqCj4gICAgKiBpY2VfYXFfcV9zaHV0ZG93bgo+
ICAgICogQGh3OiBwb2ludGVyIHRvIHRoZSBIVyBzdHJ1Y3QKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24uaCBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfY29tbW9uLmgKPiBpbmRleCBlMzc2ZDFlYWRiYTQuLmU5ZDc3Mzcw
YTE3YyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Nv
bW1vbi5oCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24u
aAo+IEBAIC03MSw2ICs3MSw5IEBAIGljZV9hcV9zZW5kX2NtZChzdHJ1Y3QgaWNlX2h3ICpodywg
c3RydWN0IGljZV9hcV9kZXNjICpkZXNjLAo+ICAgCQl2b2lkICpidWYsIHUxNiBidWZfc2l6ZSwg
c3RydWN0IGljZV9zcV9jZCAqY2QpOwo+ICAgZW51bSBpY2Vfc3RhdHVzIGljZV9hcV9nZXRfZndf
dmVyKHN0cnVjdCBpY2VfaHcgKmh3LCBzdHJ1Y3QgaWNlX3NxX2NkICpjZCk7Cj4gICAKPiArZW51
bSBpY2Vfc3RhdHVzCj4gK2ljZV9hcV9zZW5kX2RyaXZlcl92ZXIoc3RydWN0IGljZV9odyAqaHcs
IHN0cnVjdCBpY2VfZHJpdmVyX3ZlciAqZHYsCj4gKwkJICAgICAgIHN0cnVjdCBpY2Vfc3FfY2Qg
KmNkKTsKPiAgIGVudW0gaWNlX3N0YXR1cwo+ICAgaWNlX2FxX2dldF9waHlfY2FwcyhzdHJ1Y3Qg
aWNlX3BvcnRfaW5mbyAqcGksIGJvb2wgcXVhbF9tb2RzLCB1OCByZXBvcnRfbW9kZSwKPiAgIAkJ
ICAgIHN0cnVjdCBpY2VfYXFjX2dldF9waHlfY2Fwc19kYXRhICpjYXBzLAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYyBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jCj4gaW5kZXggZjhiZTlhZGEyNDQ3Li5lYTU1
ZWM1OThkYWMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9tYWluLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4u
Ywo+IEBAIC05LDcgKzksMTMgQEAKPiAgICNpbmNsdWRlICJpY2VfbGliLmgiCj4gICAjaW5jbHVk
ZSAiaWNlX2RjYl9saWIuaCIKPiAgIAo+IC0jZGVmaW5lIERSVl9WRVJTSU9OCSIwLjcuNS1rIgo+
ICsjZGVmaW5lIERSVl9WRVJTSU9OX01BSk9SIDAKPiArI2RlZmluZSBEUlZfVkVSU0lPTl9NSU5P
UiA3Cj4gKyNkZWZpbmUgRFJWX1ZFUlNJT05fQlVJTEQgNQo+ICsKPiArI2RlZmluZSBEUlZfVkVS
U0lPTglfX3N0cmluZ2lmeShEUlZfVkVSU0lPTl9NQUpPUikgIi4iIFwKPiArCQkJX19zdHJpbmdp
ZnkoRFJWX1ZFUlNJT05fTUlOT1IpICIuIiBcCj4gKwkJCV9fc3RyaW5naWZ5KERSVl9WRVJTSU9O
X0JVSUxEKSAiLWsiCj4gICAjZGVmaW5lIERSVl9TVU1NQVJZCSJJbnRlbChSKSBFdGhlcm5ldCBD
b25uZWN0aW9uIEU4MDAgU2VyaWVzIExpbnV4IERyaXZlciIKPiAgIGNvbnN0IGNoYXIgaWNlX2Ry
dl92ZXJbXSA9IERSVl9WRVJTSU9OOwo+ICAgc3RhdGljIGNvbnN0IGNoYXIgaWNlX2RyaXZlcl9z
dHJpbmdbXSA9IERSVl9TVU1NQVJZOwo+IEBAIC0yNDU5LDYgKzI0NjUsMjUgQEAgc3RhdGljIHZv
aWQgaWNlX3ZlcmlmeV9jYWNoZWxpbmVfc2l6ZShzdHJ1Y3QgaWNlX3BmICpwZikKPiAgIAkJCSBJ
Q0VfQ0FDSEVfTElORV9CWVRFUyk7Cj4gICB9Cj4gICAKPiArLyoqCj4gKyAqIGljZV9zZW5kX3Zl
cnNpb24gLSB1cGRhdGUgZmlybXdhcmUgd2l0aCBkcml2ZXIgdmVyc2lvbgo+ICsgKiBAcGY6IFBG
IHN0cnVjdAo+ICsgKgo+ICsgKiBSZXR1cm5zIElDRV9TVUNDRVNTIG9uIHN1Y2Nlc3MsIGVsc2Ug
ZXJyb3IgY29kZQo+ICsgKi8KPiArc3RhdGljIGVudW0gaWNlX3N0YXR1cyBpY2Vfc2VuZF92ZXJz
aW9uKHN0cnVjdCBpY2VfcGYgKnBmKQo+ICt7Cj4gKwlzdHJ1Y3QgaWNlX2RyaXZlcl92ZXIgZHY7
Cj4gKwo+ICsJZHYubWFqb3JfdmVyID0gRFJWX1ZFUlNJT05fTUFKT1I7Cj4gKwlkdi5taW5vcl92
ZXIgPSBEUlZfVkVSU0lPTl9NSU5PUjsKPiArCWR2LmJ1aWxkX3ZlciA9IERSVl9WRVJTSU9OX0JV
SUxEOwo+ICsJZHYuc3ViYnVpbGRfdmVyID0gMDsKPiArCXN0cnNjcHkoKGNoYXIgKilkdi5kcml2
ZXJfc3RyaW5nLCBEUlZfVkVSU0lPTiwKPiArCQlzaXplb2YoZHYuZHJpdmVyX3N0cmluZykpOwo+
ICsJcmV0dXJuIGljZV9hcV9zZW5kX2RyaXZlcl92ZXIoJnBmLT5odywgJmR2LCBOVUxMKTsKPiAr
fQo+ICsKPiAgIC8qKgo+ICAgICogaWNlX3Byb2JlIC0gRGV2aWNlIGluaXRpYWxpemF0aW9uIHJv
dXRpbmUKPiAgICAqIEBwZGV2OiBQQ0kgZGV2aWNlIGluZm9ybWF0aW9uIHN0cnVjdAo+IEBAIC0y
NjEyLDYgKzI2MzcsMTUgQEAgaWNlX3Byb2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LCBjb25zdCBz
dHJ1Y3QgcGNpX2RldmljZV9pZCBfX2Fsd2F5c191bnVzZWQgKmVudCkKPiAgIAo+ICAgCWNsZWFy
X2JpdChfX0lDRV9TRVJWSUNFX0RJUywgcGYtPnN0YXRlKTsKPiAgIAo+ICsJLyogdGVsbCB0aGUg
ZmlybXdhcmUgd2UgYXJlIHVwICovCj4gKwllcnIgPSBpY2Vfc2VuZF92ZXJzaW9uKHBmKTsKPiAr
CWlmIChlcnIpIHsKPiArCQlkZXZfZXJyKGRldiwKPiArCQkJInByb2JlIGZhaWxlZCBkdWUgdG8g
ZXJyb3Igc2VuZGluZyBkcml2ZXIgdmVyc2lvbjolZFxuIiwKClNwYWNlIGFmdGVyIGNvbG9uPyBN
YXliZSBhbHNvIGFkZCB0aGUgZHJpdmVyIHZlcnNpb24gaW4gdGhlIHN0cmluZz8KCj4gKwkJCWVy
cik7Cj4gKwkJZ290byBlcnJfYWxsb2Nfc3dfdW5yb2xsOwo+ICsJfQo+ICsKPiAgIAkvKiBzaW5j
ZSBldmVyeXRoaW5nIGlzIGdvb2QsIHN0YXJ0IHRoZSBzZXJ2aWNlIHRpbWVyICovCj4gICAJbW9k
X3RpbWVyKCZwZi0+c2Vydl90bXIsIHJvdW5kX2ppZmZpZXMoamlmZmllcyArIHBmLT5zZXJ2X3Rt
cl9wZXJpb2QpKTsKPiAgIAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX3R5cGUuaCBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHlw
ZS5oCj4gaW5kZXggNDUwMWQ1MGE3ZGNjLi5hMjY3NjAwMzI3NWEgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eXBlLmgKPiArKysgYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R5cGUuaAo+IEBAIC01Myw2ICs1MywxNCBAQCBlbnVt
IGljZV9hcV9yZXNfYWNjZXNzX3R5cGUgewo+ICAgCUlDRV9SRVNfV1JJVEUKPiAgIH07Cj4gICAK
PiArc3RydWN0IGljZV9kcml2ZXJfdmVyIHsKPiArCXU4IG1ham9yX3ZlcjsKPiArCXU4IG1pbm9y
X3ZlcjsKPiArCXU4IGJ1aWxkX3ZlcjsKPiArCXU4IHN1YmJ1aWxkX3ZlcjsKPiArCXU4IGRyaXZl
cl9zdHJpbmdbMzJdOwo+ICt9Owo+ICsKPiAgIGVudW0gaWNlX2ZjX21vZGUgewo+ICAgCUlDRV9G
Q19OT05FID0gMCwKPiAgIAlJQ0VfRkNfUlhfUEFVU0UsCj4gCgoKS2luZCByZWdhcmRzLAoKUGF1
bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13
aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8v
bGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
