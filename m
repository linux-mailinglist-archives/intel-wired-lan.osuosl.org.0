Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDCC55A7A9
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Jun 2022 09:10:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2DC0C40AA0;
	Sat, 25 Jun 2022 07:10:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2DC0C40AA0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656141036;
	bh=xwtbR5PauJ4smkBEAKdG0StTAdiSmIhra05L38cmpYk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7ExsoCXG29y0h5tUWxuLj/8L5tVdcx2NEK5U6YnQmAX4MkZ1FrC8ciaTKPUviraD6
	 RP2ns30mQ4glnM2J5quDZKDN+HIAGUHsSpa4iqrNisCcUgAE+idu2stn1twzad5gU8
	 J7n5pSEmK+FFCx1Dypv6YUWWiqId6HYw+MpkMrwP14qNXwdPN+LMq6jra0+8tYXuVo
	 4gpTnluWHmRr404CZ73KigQnQnVqyvW3aQOhM0i+naAcTSHGw+FF4KzqNpyi2915Wf
	 F3X63ZnzCbvLYradBsZia2H5SC0nqSCJgVyZl5ZbmJ5KnrUr8/MAP8sClyYroJKETx
	 wK+f7uGhX+51w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4hZAhPnGoZqR; Sat, 25 Jun 2022 07:10:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BD68F40141;
	Sat, 25 Jun 2022 07:10:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BD68F40141
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 38ED41BF30B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jun 2022 07:10:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1FF0760A6A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jun 2022 07:10:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1FF0760A6A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VpvVeShVNqaW for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Jun 2022 07:10:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C857C6058F
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C857C6058F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jun 2022 07:10:27 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aeda3.dynamic.kabel-deutschland.de
 [95.90.237.163])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 911A861EA1929;
 Sat, 25 Jun 2022 09:10:24 +0200 (CEST)
Message-ID: <c1101c64-7758-774a-e417-cb9fcb1ef50e@molgen.mpg.de>
Date: Sat, 25 Jun 2022 09:10:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Michal Wilczynski <michal.wilczynski@intel.com>
References: <20220624102110.1008410-1-michal.wilczynski@intel.com>
 <20220624102110.1008410-3-michal.wilczynski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220624102110.1008410-3-michal.wilczynski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/2] ice: Enable switching
 default tx scheduler topology
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

RGVhciBNaWNoYWwsCgoKVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLgoKQW0gMjQuMDYuMjIgdW0g
MTI6MjEgc2NocmllYiBNaWNoYWwgV2lsY3p5bnNraToKPiBJbnRyb2R1Y2Ugc3VwcG9ydCBmb3Ig
dHggc2NoZWR1bGVyIHRvcG9sb2d5IGNoYW5nZSwgYmFzZWQgb24KPiB1c2VyIHNlbGVjdGlvbiwg
ZnJvbSBkZWZhdWx0IDktbGF5ZXIgdG8gNS1sYXllci4KPiBJbiBvcmRlciBmb3Igc3dpdGNoIHRv
IGJlIHN1Y2Nlc3NmdWwgdGhlcmUgaXMgYSBuZXcgTlZNCj4gYW5kIEREUCBwYWNrYWdlIHJlcXVp
cmVkLgoKV2hhdCB2ZXJzaW9ucyBhcmUgbmVlZGVkIGV4YWN0bHk/Cgo+IFRoaXMgY29tbWl0IGVu
YWJsZXMgNS1sYXllciB0b3BvbG9neSBpbiBpbml0IHBhdGggb2YKPiB0aGUgZHJpdmVyLCBzbyBi
ZWZvcmUgaWNlIGRyaXZlciBsb2FkLCB0aGUgdXNlciBzZWxlY3Rpb24KPiBzaG91bGQgYmUgY2hh
bmdlZCBpbiBOVk0gdXNpbmcgc29tZSBleHRlcm5hbCB0b29scy4KClBsZWFzZSBhZGQgb25lIGV4
YW1wbGUsIGhvdyB0byBjaGFuZ2UgaXQuCgpDb3VsZCB5b3UgcGxlYXNlIHJlZmxvdyBmb3IgNzUg
Y2hhcmFjdGVycyBwZXIgbGluZSwgYW5kIGRvIG5vdCBicmVhayAKbGluZXMganVzdCBiZWNhdXNl
IGEgc2VudGVuY2UgZW5kcywgb3IgYWRkIGEgYmxhbmsgbGluZSBiZXR3ZWVuIHBhcmFncmFwaHM/
Cgo+IFRpdGxlOiBFbmFibGUgc3dpdGNoaW5nIGRlZmF1bHQgdHggc2NoZWR1bGVyIHRvcG9sb2d5
Cj4gQ2hhbmdlLXR5cGU6IEltcGxlbWVudGF0aW9uQ2hhbmdlCgpUaGVzZSB0d28gdGFncyBhcmUg
bm90IHVzZWQgdXBzdHJlYW0gSSB0aGlua3MuCgo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXaWxj
enluc2tpIDxtaWNoYWwud2lsY3p5bnNraUBpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5jICAgfCAgIDIgKwo+ICAgLi4uL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX2ZsZXhfcGlwZS5jICAgIHwgICAzICstCj4gICBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYyAgICAgfCAxMTMgKysrKysrKysrKysr
KysrLS0tCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3NjaGVkLmMgICAg
fCAgMzUgKysrLS0tCj4gICA0IGZpbGVzIGNoYW5nZWQsIDExNiBpbnNlcnRpb25zKCspLCAzNyBk
ZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9jb21tb24uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29t
bW9uLmMKPiBpbmRleCA4YjY1ZTJiZmIxNjAuLjE2N2Y5ZDVjMzQ1YSAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5jCj4gKysrIGIvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24uYwo+IEBAIC0xNTM1LDYgKzE1MzUs
OCBAQCBpY2VfYXFfc2VuZF9jbWQoc3RydWN0IGljZV9odyAqaHcsIHN0cnVjdCBpY2VfYXFfZGVz
YyAqZGVzYywgdm9pZCAqYnVmLAo+ICAgCWNhc2UgaWNlX2FxY19vcGNfc2V0X3BvcnRfcGFyYW1z
Ogo+ICAgCWNhc2UgaWNlX2FxY19vcGNfZ2V0X3ZsYW5fbW9kZV9wYXJhbWV0ZXJzOgo+ICAgCWNh
c2UgaWNlX2FxY19vcGNfc2V0X3ZsYW5fbW9kZV9wYXJhbWV0ZXJzOgo+ICsJY2FzZSBpY2VfYXFj
X29wY19zZXRfdHhfdG9wbzoKPiArCWNhc2UgaWNlX2FxY19vcGNfZ2V0X3R4X3RvcG86Cj4gICAJ
Y2FzZSBpY2VfYXFjX29wY19hZGRfcmVjaXBlOgo+ICAgCWNhc2UgaWNlX2FxY19vcGNfcmVjaXBl
X3RvX3Byb2ZpbGU6Cj4gICAJY2FzZSBpY2VfYXFjX29wY19nZXRfcmVjaXBlOgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2ZsZXhfcGlwZS5jIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9mbGV4X3BpcGUuYwo+IGluZGV4IGIzYmQz
NDVlYTBmMy4uYzIzNTkzNjZiNDhlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfZmxleF9waXBlLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX2ZsZXhfcGlwZS5jCj4gQEAgLTE5NTMsNyArMTk1Myw4IEBAIGludCBpY2Vf
Y2ZnX3R4X3RvcG8oc3RydWN0IGljZV9odyAqaHcsIHU4ICpidWYsIHUzMiBsZW4pCj4gICAJLyog
YWNxdWlyZSBnbG9iYWwgbG9jayB0byBtYWtlIHN1cmUgdGhhdCBzZXQgdG9wb2xvZ3kgaXNzdWVk
Cj4gICAJICogYnkgb25lIFBGCj4gICAJICovCj4gLQlzdGF0dXMgPSBpY2VfYWNxdWlyZV9nbG9i
YWxfY2ZnX2xvY2soaHcsIElDRV9SRVNfV1JJVEUpOwo+ICsJc3RhdHVzID0gaWNlX2FjcXVpcmVf
cmVzKGh3LCBJQ0VfR0xPQkFMX0NGR19MT0NLX1JFU19JRCwgSUNFX1JFU19XUklURSwKPiArCQkJ
CSBJQ0VfR0xPQkFMX0NGR19MT0NLX1RJTUVPVVQpOwo+ICAgCWlmIChzdGF0dXMpIHsKPiAgIAkJ
aWNlX2RlYnVnKGh3LCBJQ0VfREJHX0lOSVQsICJGYWlsZWQgdG8gYWNxdWlyZSBnbG9iYWwgbG9j
a1xuIik7Cj4gICAJCXJldHVybiBzdGF0dXM7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9tYWluLmMKPiBpbmRleCBjMWFjMmY3NDY3MTQuLjVmODI3YmVhMDVkOSAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYwo+ICsrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jCj4gQEAgLTQ0NTMsMTEg
KzQ0NTMsMTEgQEAgc3RhdGljIGNoYXIgKmljZV9nZXRfb3B0X2Z3X25hbWUoc3RydWN0IGljZV9w
ZiAqcGYpCj4gICAvKioKPiAgICAqIGljZV9yZXF1ZXN0X2Z3IC0gRGV2aWNlIGluaXRpYWxpemF0
aW9uIHJvdXRpbmUKPiAgICAqIEBwZjogcG9pbnRlciB0byB0aGUgUEYgaW5zdGFuY2UKPiArICog
QGZpcm13YXJlOiBkb3VibGUgcG9pbnRlciB0byBmaXJtd2FyZSBzdHJ1Y3QKPiAgICAqLwo+IC1z
dGF0aWMgdm9pZCBpY2VfcmVxdWVzdF9mdyhzdHJ1Y3QgaWNlX3BmICpwZikKPiArc3RhdGljIGlu
dCBpY2VfcmVxdWVzdF9mdyhzdHJ1Y3QgaWNlX3BmICpwZiwgY29uc3Qgc3RydWN0IGZpcm13YXJl
ICoqZmlybXdhcmUpCj4gICB7Cj4gICAJY2hhciAqb3B0X2Z3X2ZpbGVuYW1lID0gaWNlX2dldF9v
cHRfZndfbmFtZShwZik7Cj4gLQljb25zdCBzdHJ1Y3QgZmlybXdhcmUgKmZpcm13YXJlID0gTlVM
TDsKPiAgIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBpY2VfcGZfdG9fZGV2KHBmKTsKPiAgIAlpbnQg
ZXJyID0gMDsKPiAgIAo+IEBAIC00NDY2LDI5ICs0NDY2LDk4IEBAIHN0YXRpYyB2b2lkIGljZV9y
ZXF1ZXN0X2Z3KHN0cnVjdCBpY2VfcGYgKnBmKQo+ICAgCSAqIGFuZCB3YXJuaW5nIG1lc3NhZ2Vz
IGZvciBvdGhlciBlcnJvcnMuCj4gICAJICovCj4gICAJaWYgKG9wdF9md19maWxlbmFtZSkgewo+
IC0JCWVyciA9IGZpcm13YXJlX3JlcXVlc3Rfbm93YXJuKCZmaXJtd2FyZSwgb3B0X2Z3X2ZpbGVu
YW1lLCBkZXYpOwo+IC0JCWlmIChlcnIpIHsKPiAtCQkJa2ZyZWUob3B0X2Z3X2ZpbGVuYW1lKTsK
PiAtCQkJZ290byBkZmx0X3BrZ19sb2FkOwo+IC0JCX0KPiAtCj4gLQkJLyogcmVxdWVzdCBmb3Ig
ZmlybXdhcmUgd2FzIHN1Y2Nlc3NmdWwuIERvd25sb2FkIHRvIGRldmljZSAqLwo+IC0JCWljZV9s
b2FkX3BrZyhmaXJtd2FyZSwgcGYpOwo+ICsJCWVyciA9IGZpcm13YXJlX3JlcXVlc3Rfbm93YXJu
KGZpcm13YXJlLCBvcHRfZndfZmlsZW5hbWUsIGRldik7Cj4gICAJCWtmcmVlKG9wdF9md19maWxl
bmFtZSk7Cj4gLQkJcmVsZWFzZV9maXJtd2FyZShmaXJtd2FyZSk7Cj4gLQkJcmV0dXJuOwo+ICsJ
CWlmICghZXJyKQo+ICsJCQlyZXR1cm4gZXJyOwoKV2h5IGlzIHRoZSBjb2RlIGFib3ZlIHJlbW92
ZWQ/Cgo+ICAgCX0KPiAgIAo+IC1kZmx0X3BrZ19sb2FkOgo+IC0JZXJyID0gcmVxdWVzdF9maXJt
d2FyZSgmZmlybXdhcmUsIElDRV9ERFBfUEtHX0ZJTEUsIGRldik7Cj4gLQlpZiAoZXJyKSB7Cj4g
KwllcnIgPSByZXF1ZXN0X2Zpcm13YXJlKGZpcm13YXJlLCBJQ0VfRERQX1BLR19GSUxFLCBkZXYp
Owo+ICsJaWYgKGVycikKPiAgIAkJZGV2X2VycihkZXYsICJUaGUgRERQIHBhY2thZ2UgZmlsZSB3
YXMgbm90IGZvdW5kIG9yIGNvdWxkIG5vdCBiZSByZWFkLiBFbnRlcmluZyBTYWZlIE1vZGVcbiIp
Owo+IC0JCXJldHVybjsKPiArCj4gKwlyZXR1cm4gZXJyOwo+ICt9Cj4gKwo+ICsvKioKPiArICog
aWNlX2luaXRfdHhfdG9wb2xvZ3kgLSBwZXJmb3JtcyBUeCB0b3BvbG9neSBpbml0aWFsaXphdGlv
bgo+ICsgKiBAaHc6IHBvaW50ZXIgdG8gdGhlIGhhcmR3YXJlIHN0cnVjdHVyZQo+ICsgKiBAZmly
bXdhcmU6IHBvaW50ZXIgdG8gZmlybXdhcmUgc3RydWN0dXJlCj4gKyAqLwo+ICtzdGF0aWMgaW50
IGljZV9pbml0X3R4X3RvcG9sb2d5KHN0cnVjdCBpY2VfaHcgKmh3LAo+ICsJCQkJY29uc3Qgc3Ry
dWN0IGZpcm13YXJlICpmaXJtd2FyZSkKPiArewo+ICsJdTggbnVtX3R4X3NjaGVkX2xheWVycyA9
IGh3LT5udW1fdHhfc2NoZWRfbGF5ZXJzOwo+ICsJc3RydWN0IGljZV9wZiAqcGYgPSBody0+YmFj
azsKPiArCXN0cnVjdCBkZXZpY2UgKmRldjsKPiArCXU4ICpidWZfY29weTsKPiArCWludCBlcnIg
PSAwOwo+ICsKPiArCWRldiA9IGljZV9wZl90b19kZXYocGYpOwo+ICsJLyogaWNlX2NmZ190eF90
b3BvIGJ1ZiBhcmd1bWVudCBpcyBub3QgYSBjb25zdGFudCwKPiArCSAqIHNvIHdlIGhhdmUgdG8g
bWFrZSBhIGNvcHkKPiArCSAqLwo+ICsJYnVmX2NvcHkgPSBkZXZtX2ttZW1kdXAoaWNlX2h3X3Rv
X2RldihodyksIGZpcm13YXJlLT5kYXRhLAo+ICsJCQkJZmlybXdhcmUtPnNpemUsIEdGUF9LRVJO
RUwpOwo+ICsKPiArCWVyciA9IGljZV9jZmdfdHhfdG9wbyhodywgYnVmX2NvcHksIGZpcm13YXJl
LT5zaXplKTsKPiArCWlmICghZXJyKSB7Cj4gKwkJaWYgKGh3LT5udW1fdHhfc2NoZWRfbGF5ZXJz
ID4gbnVtX3R4X3NjaGVkX2xheWVycykKPiArCQkJZGV2X2luZm8oZGV2LCAiVHJhbnNtaXQgYmFs
YW5jaW5nIGZlYXR1cmUgZGlzYWJsZWRcbiIpOwoKU2hvdWxkIHRoaXMgYmUgYW4gZXJyb3I/Cgo+
ICsJCWVsc2UKPiArCQkJZGV2X2luZm8oZGV2LCAiVHJhbnNtaXQgYmFsYW5jaW5nIGZlYXR1cmUg
ZW5hYmxlZFxuIik7CgpBZGQgYSBibGFuayBsaW5lIGJlbG93PwoKPiArCQkvKiBpZiB0aGVyZSB3
YXMgYSBjaGFuZ2UgaW4gdG9wb2xvZ3kgaWNlX2NmZ190eF90b3BvIHRyaWdnZXJlZAo+ICsJCSAq
IGEgQ09SRVIgYW5kIHdlIG5lZWQgdG8gcmUtaW5pdCBodwoKV2hhdCBpcyBDT1JFUj8gQWRkIGEg
ZG90L3BlcmlvZCBhdCB0aGUgZW5kPwoKPiArCQkgKi8KPiArCQlpY2VfZGVpbml0X2h3KGh3KTsK
PiArCQllcnIgPSBpY2VfaW5pdF9odyhodyk7Cj4gKwo+ICsJCS8qIGluIHRoaXMgY2FzZSB3ZSdy
ZSBub3QgYWxsb3dpbmcgc2FmZSBtb2RlICovCj4gKwkJZGV2bV9rZnJlZShpY2VfaHdfdG9fZGV2
KGh3KSwgYnVmX2NvcHkpOwo+ICsKPiArCQlyZXR1cm4gZXJyOwo+ICsKPiArCX0gZWxzZSBpZiAo
ZXJyID09IC1FSU8pIHsKPiArCQlkZXZfaW5mbyhkZXYsICJERFAgcGFja2FnZSBkb2VzIG5vdCBz
dXBwb3J0IHRyYW5zbWl0IGJhbGFuY2luZyBmZWF0dXJlIC0gcGxlYXNlIHVwZGF0ZSB0byB0aGUg
bGF0ZXN0IEREUCBwYWNrYWdlIGFuZCB0cnkgYWdhaW5cbiIpOwoKUGxlYXNlIG1lbnRpb24gYSB2
ZXJzaW9uLCB3aGVyZSBpdOKAmXMgc3VwcG9zZWQgdG8gd29yaz8gQ2FuIHRoZSBERFAgCnZlcnNp
b24gYmUgcHJpbnRlZCBvdXQgdG9vPwoKU2hvdWxkIHRoaXMgYmUgYSB3YXJuaW5nPwoKPiAgIAl9
Cj4gICAKPiAtCS8qIHJlcXVlc3QgZm9yIGZpcm13YXJlIHdhcyBzdWNjZXNzZnVsLiBEb3dubG9h
ZCB0byBkZXZpY2UgKi8KPiArCWRldm1fa2ZyZWUoaWNlX2h3X3RvX2RldihodyksIGJ1Zl9jb3B5
KTsKPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+ICsKPiArLyoqCj4gKyAqIGljZV9pbml0X2RkcF9j
b25maWcgLSBERFAgcmVsYXRlZCBjb25maWd1cmF0aW9uCj4gKyAqIEBodzogcG9pbnRlciB0byB0
aGUgaGFyZHdhcmUgc3RydWN0dXJlCj4gKyAqIEBwZjogcG9pbnRlciB0byBwZiBzdHJ1Y3R1cmUK
PiArICoKPiArICogVGhpcyBmdW5jdGlvbiBsb2FkcyBERFAgZmlsZSBmcm9tIHRoZSBkaXNrLCB0
aGVuIGluaXRpYWxpemVzIHR4Cj4gKyAqIHRvcG9sb2d5LiBBdCB0aGUgZW5kIEREUCBwYWNrYWdl
IGlzIGxvYWRlZCBvbiB0aGUgY2FyZC4KPiArICovCj4gK3N0YXRpYyBpbnQgaWNlX2luaXRfZGRw
X2NvbmZpZyhzdHJ1Y3QgaWNlX2h3ICpodywgc3RydWN0IGljZV9wZiAqcGYpCj4gK3sKPiArCXN0
cnVjdCBkZXZpY2UgKmRldiA9IGljZV9wZl90b19kZXYocGYpOwo+ICsJY29uc3Qgc3RydWN0IGZp
cm13YXJlICpmaXJtd2FyZSA9IE5VTEw7Cj4gKwlpbnQgZXJyID0gMDsKPiArCj4gKwllcnIgPSBp
Y2VfcmVxdWVzdF9mdyhwZiwgJmZpcm13YXJlKTsKPiArCWlmIChlcnIpCj4gKwkvKiB3ZSBjYW4g
c3RpbGwgb3BlcmF0ZSBpbiBzYWZlIG1vZGUgaWYgRERQIHBhY2thZ2UgbG9hZCBmYWlscyAqLwoK
SW5kZW50IHRoZSBjb21tZW50PwoKPiArCQlyZXR1cm4gMDsKPiArCj4gKwllcnIgPSBpY2VfaW5p
dF90eF90b3BvbG9neShodywgZmlybXdhcmUpOwo+ICsJaWYgKGVycikgewo+ICsJCWRldl9lcnIo
ZGV2LCAiaWNlX2luaXRfaHcgZHVyaW5nIGNoYW5nZSBvZiB0eCB0b3BvbG9neSBmYWlsZWQ6ICVk
XG4iLAo+ICsJCQllcnIpOwo+ICsJCXJlbGVhc2VfZmlybXdhcmUoZmlybXdhcmUpOwo+ICsJCXJl
dHVybiBlcnI7Cj4gKwl9Cj4gKwo+ICsJLyogRG93bmxvYWQgZmlybXdhcmUgdG8gZGV2aWNlICov
Cj4gICAJaWNlX2xvYWRfcGtnKGZpcm13YXJlLCBwZik7Cj4gICAJcmVsZWFzZV9maXJtd2FyZShm
aXJtd2FyZSk7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gICB9Cj4gICAKPiAgIC8qKgo+IEBAIC00NjQx
LDkgKzQ3MTAsMTUgQEAgaWNlX3Byb2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LCBjb25zdCBzdHJ1
Y3QgcGNpX2RldmljZV9pZCBfX2Fsd2F5c191bnVzZWQgKmVudCkKPiAgIAo+ICAgCWljZV9pbml0
X2ZlYXR1cmVfc3VwcG9ydChwZik7Cj4gICAKPiAtCWljZV9yZXF1ZXN0X2Z3KHBmKTsKPiArCWVy
ciA9IGljZV9pbml0X2RkcF9jb25maWcoaHcsIHBmKTsKPiArCj4gKwkvKiBkdXJpbmcgdG9wb2xv
Z3kgY2hhbmdlIGljZV9pbml0X2h3IG1heSBmYWlsICovCj4gKwlpZiAoZXJyKSB7Cj4gKwkJZXJy
ID0gLUVJTzsKPiArCQlnb3RvIGVycl9leGl0X3Vucm9sbDsKPiArCX0KPiAgIAo+IC0JLyogaWYg
aWNlX3JlcXVlc3RfZncgZmFpbHMsIElDRV9GTEFHX0FEVl9GRUFUVVJFUyBiaXQgd29uJ3QgYmUK
PiArCS8qIGlmIGljZV9pbml0X2RkcF9jb25maWcgZmFpbHMsIElDRV9GTEFHX0FEVl9GRUFUVVJF
UyBiaXQgd29uJ3QgYmUKPiAgIAkgKiBzZXQgaW4gcGYtPnN0YXRlLCB3aGljaCB3aWxsIGNhdXNl
IGljZV9pc19zYWZlX21vZGUgdG8gcmV0dXJuCj4gICAJICogdHJ1ZQo+ICAgCSAqLwo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3NjaGVkLmMgYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3NjaGVkLmMKPiBpbmRleCA3OTQ3MjIzNTM2
ZTMuLmYxOGE3MTIxY2E1NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX3NjaGVkLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX3NjaGVkLmMKPiBAQCAtMTEwMiwxMiArMTEwMiwxMSBAQCBzdGF0aWMgdTggaWNlX3NjaGVk
X2dldF92c2lfbGF5ZXIoc3RydWN0IGljZV9odyAqaHcpCj4gICAJICogICAgIDUgb3IgbGVzcyAg
ICAgICBzd19lbnRyeV9wb2ludF9sYXllcgo+ICAgCSAqLwo+ICAgCS8qIGNhbGN1bGF0ZSB0aGUg
VlNJIGxheWVyIGJhc2VkIG9uIG51bWJlciBvZiBsYXllcnMuICovCj4gLQlpZiAoaHctPm51bV90
eF9zY2hlZF9sYXllcnMgPiBJQ0VfVlNJX0xBWUVSX09GRlNFVCArIDEpIHsKPiAtCQl1OCBsYXll
ciA9IGh3LT5udW1fdHhfc2NoZWRfbGF5ZXJzIC0gSUNFX1ZTSV9MQVlFUl9PRkZTRVQ7Cj4gLQo+
IC0JCWlmIChsYXllciA+IGh3LT5zd19lbnRyeV9wb2ludF9sYXllcikKPiAtCQkJcmV0dXJuIGxh
eWVyOwo+IC0JfQo+ICsJaWYgKGh3LT5udW1fdHhfc2NoZWRfbGF5ZXJzID09IElDRV9TQ0hFRF85
X0xBWUVSUykKPiArCQlyZXR1cm4gaHctPm51bV90eF9zY2hlZF9sYXllcnMgLSBJQ0VfVlNJX0xB
WUVSX09GRlNFVDsKPiArCWVsc2UgaWYgKGh3LT5udW1fdHhfc2NoZWRfbGF5ZXJzID09IElDRV9T
Q0hFRF81X0xBWUVSUykKPiArCQkvKiBxZ3JvdXAgYW5kIFZTSSBsYXllcnMgYXJlIHNhbWUgKi8K
PiArCQlyZXR1cm4gaHctPm51bV90eF9zY2hlZF9sYXllcnMgLSBJQ0VfUUdSUF9MQVlFUl9PRkZT
RVQ7Cj4gICAJcmV0dXJuIGh3LT5zd19lbnRyeV9wb2ludF9sYXllcjsKPiAgIH0KPiAgIAo+IEBA
IC0xMTI0LDEyICsxMTIzLDggQEAgc3RhdGljIHU4IGljZV9zY2hlZF9nZXRfYWdnX2xheWVyKHN0
cnVjdCBpY2VfaHcgKmh3KQo+ICAgCSAqICAgICA3IG9yIGxlc3MgICAgICAgc3dfZW50cnlfcG9p
bnRfbGF5ZXIKPiAgIAkgKi8KPiAgIAkvKiBjYWxjdWxhdGUgdGhlIGFnZ3JlZ2F0b3IgbGF5ZXIg
YmFzZWQgb24gbnVtYmVyIG9mIGxheWVycy4gKi8KPiAtCWlmIChody0+bnVtX3R4X3NjaGVkX2xh
eWVycyA+IElDRV9BR0dfTEFZRVJfT0ZGU0VUICsgMSkgewo+IC0JCXU4IGxheWVyID0gaHctPm51
bV90eF9zY2hlZF9sYXllcnMgLSBJQ0VfQUdHX0xBWUVSX09GRlNFVDsKPiAtCj4gLQkJaWYgKGxh
eWVyID4gaHctPnN3X2VudHJ5X3BvaW50X2xheWVyKQo+IC0JCQlyZXR1cm4gbGF5ZXI7Cj4gLQl9
Cj4gKwlpZiAoaHctPm51bV90eF9zY2hlZF9sYXllcnMgPT0gSUNFX1NDSEVEXzlfTEFZRVJTKQo+
ICsJCXJldHVybiBody0+bnVtX3R4X3NjaGVkX2xheWVycyAtIElDRV9BR0dfTEFZRVJfT0ZGU0VU
Owo+ICAgCXJldHVybiBody0+c3dfZW50cnlfcG9pbnRfbGF5ZXI7Cj4gICB9Cj4gICAKPiBAQCAt
MTQ4NSwxMCArMTQ4MCwxMSBAQCBpY2Vfc2NoZWRfZ2V0X2ZyZWVfcXBhcmVudChzdHJ1Y3QgaWNl
X3BvcnRfaW5mbyAqcGksIHUxNiB2c2lfaGFuZGxlLCB1OCB0YywKPiAgIHsKPiAgIAlzdHJ1Y3Qg
aWNlX3NjaGVkX25vZGUgKnZzaV9ub2RlLCAqcWdycF9ub2RlOwo+ICAgCXN0cnVjdCBpY2VfdnNp
X2N0eCAqdnNpX2N0eDsKPiArCXU4IHFncnBfbGF5ZXIsIHZzaV9sYXllcjsKPiAgIAl1MTYgbWF4
X2NoaWxkcmVuOwo+IC0JdTggcWdycF9sYXllcjsKPiAgIAo+ICAgCXFncnBfbGF5ZXIgPSBpY2Vf
c2NoZWRfZ2V0X3FncnBfbGF5ZXIocGktPmh3KTsKPiArCXZzaV9sYXllciA9IGljZV9zY2hlZF9n
ZXRfdnNpX2xheWVyKHBpLT5odyk7Cj4gICAJbWF4X2NoaWxkcmVuID0gcGktPmh3LT5tYXhfY2hp
bGRyZW5bcWdycF9sYXllcl07Cj4gICAKPiAgIAl2c2lfY3R4ID0gaWNlX2dldF92c2lfY3R4KHBp
LT5odywgdnNpX2hhbmRsZSk7Cj4gQEAgLTE0OTksNiArMTQ5NSwxMiBAQCBpY2Vfc2NoZWRfZ2V0
X2ZyZWVfcXBhcmVudChzdHJ1Y3QgaWNlX3BvcnRfaW5mbyAqcGksIHUxNiB2c2lfaGFuZGxlLCB1
OCB0YywKPiAgIAlpZiAoIXZzaV9ub2RlKQo+ICAgCQlyZXR1cm4gTlVMTDsKPiAgIAo+ICsJLyog
SWYgdGhlIHF1ZXVlIGdyb3VwIGFuZCB2c2kgbGF5ZXIgYXJlIHNhbWUgdGhlbiBxdWV1ZXMKPiAr
CSAqIGFyZSBhbGwgYXR0YWNoZWQgZGlyZWN0bHkgdG8gVlNJCj4gKwkgKi8KPiArCWlmIChxZ3Jw
X2xheWVyID09IHZzaV9sYXllcikKPiArCQlyZXR1cm4gdnNpX25vZGU7Cj4gKwo+ICAgCS8qIGdl
dCB0aGUgZmlyc3QgcXVldWUgZ3JvdXAgbm9kZSBmcm9tIFZTSSBzdWItdHJlZSAqLwo+ICAgCXFn
cnBfbm9kZSA9IGljZV9zY2hlZF9nZXRfZmlyc3Rfbm9kZShwaSwgdnNpX25vZGUsIHFncnBfbGF5
ZXIpOwo+ICAgCXdoaWxlIChxZ3JwX25vZGUpIHsKPiBAQCAtMzE3OCw4ICszMTgwLDkgQEAgaWNl
X3NjaGVkX2FkZF9ybF9wcm9maWxlKHN0cnVjdCBpY2VfcG9ydF9pbmZvICpwaSwKPiAgIAl1OCBw
cm9maWxlX3R5cGU7Cj4gICAJaW50IHN0YXR1czsKPiAgIAo+IC0JaWYgKGxheWVyX251bSA+PSBJ
Q0VfQVFDX1RPUE9fTUFYX0xFVkVMX05VTSkKPiArCWlmICghcGkgfHwgbGF5ZXJfbnVtID49IHBp
LT5ody0+bnVtX3R4X3NjaGVkX2xheWVycykKPiAgIAkJcmV0dXJuIE5VTEw7Cj4gKwo+ICAgCXN3
aXRjaCAocmxfdHlwZSkgewo+ICAgCWNhc2UgSUNFX01JTl9CVzoKPiAgIAkJcHJvZmlsZV90eXBl
ID0gSUNFX0FRQ19STF9QUk9GSUxFX1RZUEVfQ0lSOwo+IEBAIC0zMTk0LDggKzMxOTcsNiBAQCBp
Y2Vfc2NoZWRfYWRkX3JsX3Byb2ZpbGUoc3RydWN0IGljZV9wb3J0X2luZm8gKnBpLAo+ICAgCQly
ZXR1cm4gTlVMTDsKPiAgIAl9Cj4gICAKPiAtCWlmICghcGkpCj4gLQkJcmV0dXJuIE5VTEw7CgpU
aGlzIGh1bmsgKGFuZCBhYm92ZSkgY291bGQgYmUgYSBzZXBhcmF0ZSBjb21taXQ/Cgo+ICAgCWh3
ID0gcGktPmh3Owo+ICAgCWxpc3RfZm9yX2VhY2hfZW50cnkocmxfcHJvZl9lbGVtLCAmcGktPnJs
X3Byb2ZfbGlzdFtsYXllcl9udW1dLAo+ICAgCQkJICAgIGxpc3RfZW50cnkpCj4gQEAgLTM0MjUs
NyArMzQyNiw3IEBAIGljZV9zY2hlZF9ybV9ybF9wcm9maWxlKHN0cnVjdCBpY2VfcG9ydF9pbmZv
ICpwaSwgdTggbGF5ZXJfbnVtLCB1OCBwcm9maWxlX3R5cGUsCj4gICAJc3RydWN0IGljZV9hcWNf
cmxfcHJvZmlsZV9pbmZvICpybF9wcm9mX2VsZW07Cj4gICAJaW50IHN0YXR1cyA9IDA7Cj4gICAK
PiAtCWlmIChsYXllcl9udW0gPj0gSUNFX0FRQ19UT1BPX01BWF9MRVZFTF9OVU0pCj4gKwlpZiAo
bGF5ZXJfbnVtID49IHBpLT5ody0+bnVtX3R4X3NjaGVkX2xheWVycykKPiAgIAkJcmV0dXJuIC1F
SU5WQUw7Cj4gICAJLyogQ2hlY2sgdGhlIGV4aXN0aW5nIGxpc3QgZm9yIFJMIHByb2ZpbGUgKi8K
PiAgIAlsaXN0X2Zvcl9lYWNoX2VudHJ5KHJsX3Byb2ZfZWxlbSwgJnBpLT5ybF9wcm9mX2xpc3Rb
bGF5ZXJfbnVtXSwKCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
