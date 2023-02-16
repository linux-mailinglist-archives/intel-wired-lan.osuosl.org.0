Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E65698E09
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Feb 2023 08:49:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B28581FD3;
	Thu, 16 Feb 2023 07:49:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B28581FD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676533787;
	bh=kDQpPW9uykae6Acx5OOLxCyYVyUE3YwXg7ciC8TUEhk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a2ofChUFj6JOmglhxjD8Y7P+s9k9cMaP0X4YNVLrvNdIOBu5xwTF2GG4IUi0O66X6
	 hbFk2RWsjb9Y3q6JEkduFMFBpC1uyV+d6OVVU6JOeRIFtSFHuSvZfFzQ53JdthNupL
	 SsGHeVVxZICMXm8BaIjLP3W+ZwmFPHdrHotoThK8NRbGZ+UR1MlR+cvdUBHcxQKTbp
	 1uUDX4L4VqvCiTBuvSiog2VE/P1vH4uc77nHAWx0UxeaA//JoO0yEUlcdCDwsyVle8
	 YPiycJjKx87tXJtcb0bDxDd/pTc0Q3z7IDU1cTqM8pDrB3kbLx2RZraZ0s0tfBrRA7
	 2UASW+vAHjxyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rTN3rwMOlchZ; Thu, 16 Feb 2023 07:49:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E2C6C81FB0;
	Thu, 16 Feb 2023 07:49:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2C6C81FB0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0C0E61BF313
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 07:49:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D9AE340C6E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 07:49:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D9AE340C6E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KxMQaN4yOXf4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Feb 2023 07:49:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B441400DC
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0B441400DC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 07:49:38 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aeab7.dynamic.kabel-deutschland.de
 [95.90.234.183])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 4182960027FD7;
 Thu, 16 Feb 2023 08:49:35 +0100 (CET)
Message-ID: <10c0dcb4-f353-41a8-dfff-e99d2dca7fb2@molgen.mpg.de>
Date: Thu, 16 Feb 2023 08:49:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
To: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
References: <20230215124305.76075-1-tirthendu.sarkar@intel.com>
 <20230215124305.76075-5-tirthendu.sarkar@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230215124305.76075-5-tirthendu.sarkar@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH intel-next v4 4/8] i40e: Change size
 to truesize when using i40e_rx_buffer_flip()
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
Cc: netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, magnus.karlsson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBUaXJ0aGVuZHUsCgoKVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLgoKQW0gMTUuMDIuMjMg
dW0gMTM6NDMgc2NocmllYiBUaXJ0aGVuZHUgU2Fya2FyOgo+IFRydWVzaXplIGlzIG5vdyBwYXNz
ZWQgZGlyZWN0bHkgdG8gaTQwZV9yeF9idWZmZXJfZmxpcCgpIGluc3RlYWQgb2Ygc2l6ZQo+IHNv
IHRoYXQgaXQgZG9lcyBub3QgbmVlZCB0byByZWNhbGN1bGF0ZSB0cnVlc2l6ZSBmcm9tIHNpemUg
dXNpbmcKPiBpNDBlX3J4X2ZyYW1lX3RydWVzaXplKCkgYmVmb3JlIGFkanVzdGluZyBwYWdlIG9m
ZnNldC4KCkRpZCB0aGUgY29tcGlsZXIgbm90IG9wdGltaXplIHRoYXQgd2VsbCBlbm91Z2g/Cgo+
IFdpdGggdGhlc2UgY2hhbmdlIHRoZSBmdW5jdGlvbiBjYW4gbm93IGJlIHVzZWQgZHVyaW5nIHNr
YiBidWlsZGluZyBhbmQKPiBhZGRpbmcgZnJhZ3MuIEluIGxhdGVyIHBhdGNoZXMgaXQgd2lsbCBh
bHNvIGJlIGVhc2llciBmb3IgYWRqdXN0aW5nCj4gcGFnZSBvZmZzZXRzIGZvciBtdWx0aS1idWZm
ZXJzLgoKV2h5IGNvdWxkbuKAmXQgdGhlIGZ1bmN0aW9uIGJlIHVzZWQgYmVmb3JlPwoKPiBTaWdu
ZWQtb2ZmLWJ5OiBUaXJ0aGVuZHUgU2Fya2FyIDx0aXJ0aGVuZHUuc2Fya2FyQGludGVsLmNvbT4K
PiAtLS0KPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV90eHJ4LmMgfCA1
NCArKysrKysrKy0tLS0tLS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25z
KCspLCAzNSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaTQwZS9pNDBlX3R4cnguYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0
MGUvaTQwZV90eHJ4LmMKPiBpbmRleCBhN2ZiYTI5NGE4ZjQuLjAxOWFiZDcyNzNhMiAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdHhyeC5jCj4gKysr
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3R4cnguYwo+IEBAIC0yMDE4
LDYgKzIwMTgsMjEgQEAgc3RhdGljIGJvb2wgaTQwZV9jYW5fcmV1c2VfcnhfcGFnZShzdHJ1Y3Qg
aTQwZV9yeF9idWZmZXIgKnJ4X2J1ZmZlciwKPiAgIAlyZXR1cm4gdHJ1ZTsKPiAgIH0KPiAgIAo+
ICsvKioKPiArICogaTQwZV9yeF9idWZmZXJfZmxpcCAtIGFkanVzdGVkIHJ4X2J1ZmZlciB0byBw
b2ludCB0byBhbiB1bnVzZWQgcmVnaW9uCj4gKyAqIEByeF9idWZmZXI6IFJ4IGJ1ZmZlciB0byBh
ZGp1c3QKPiArICogQHNpemU6IFNpemUgb2YgYWRqdXN0bWVudAo+ICsgKiovCj4gK3N0YXRpYyB2
b2lkIGk0MGVfcnhfYnVmZmVyX2ZsaXAoc3RydWN0IGk0MGVfcnhfYnVmZmVyICpyeF9idWZmZXIs
Cj4gKwkJCQl1bnNpZ25lZCBpbnQgdHJ1ZXNpemUpCj4gK3sKPiArI2lmIChQQUdFX1NJWkUgPCA4
MTkyKQo+ICsJcnhfYnVmZmVyLT5wYWdlX29mZnNldCBePSB0cnVlc2l6ZTsKPiArI2Vsc2UKPiAr
CXJ4X2J1ZmZlci0+cGFnZV9vZmZzZXQgKz0gdHJ1ZXNpemU7Cj4gKyNlbmRpZgoKSXTigJlkIGJl
IGdyZWF0IGlmIHlvdSBzZW50IGEgcGF0Y2ggb24gdG9wLCBkb2luZyB0aGUgY2hlY2sgbm90IGlu
IHRoZSAKcHJlcHJvY2Vzc29yIGJ1dCBpbiBuYXRpdmUgQyBjb2RlLgoKPiArfQo+ICsKPiAgIC8q
Kgo+ICAgICogaTQwZV9hZGRfcnhfZnJhZyAtIEFkZCBjb250ZW50cyBvZiBSeCBidWZmZXIgdG8g
c2tfYnVmZgo+ICAgICogQHJ4X3Jpbmc6IHJ4IGRlc2NyaXB0b3IgcmluZyB0byB0cmFuc2FjdCBw
YWNrZXRzIG9uCj4gQEAgLTIwNDUsMTEgKzIwNjAsNyBAQCBzdGF0aWMgdm9pZCBpNDBlX2FkZF9y
eF9mcmFnKHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3JpbmcsCj4gICAJCQlyeF9idWZmZXItPnBhZ2Vf
b2Zmc2V0LCBzaXplLCB0cnVlc2l6ZSk7Cj4gICAKPiAgIAkvKiBwYWdlIGlzIGJlaW5nIHVzZWQg
c28gd2UgbXVzdCB1cGRhdGUgdGhlIHBhZ2Ugb2Zmc2V0ICovCj4gLSNpZiAoUEFHRV9TSVpFIDwg
ODE5MikKPiAtCXJ4X2J1ZmZlci0+cGFnZV9vZmZzZXQgXj0gdHJ1ZXNpemU7Cj4gLSNlbHNlCj4g
LQlyeF9idWZmZXItPnBhZ2Vfb2Zmc2V0ICs9IHRydWVzaXplOwo+IC0jZW5kaWYKPiArCWk0MGVf
cnhfYnVmZmVyX2ZsaXAocnhfYnVmZmVyLCB0cnVlc2l6ZSk7Cj4gICB9Cj4gICAKPiAgIC8qKgo+
IEBAIC0yMTU0LDExICsyMTY1LDcgQEAgc3RhdGljIHN0cnVjdCBza19idWZmICppNDBlX2NvbnN0
cnVjdF9za2Ioc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywKPiAgIAkJCQlzaXplLCB0cnVlc2l6
ZSk7Cj4gICAKPiAgIAkJLyogYnVmZmVyIGlzIHVzZWQgYnkgc2tiLCB1cGRhdGUgcGFnZV9vZmZz
ZXQgKi8KPiAtI2lmIChQQUdFX1NJWkUgPCA4MTkyKQo+IC0JCXJ4X2J1ZmZlci0+cGFnZV9vZmZz
ZXQgXj0gdHJ1ZXNpemU7Cj4gLSNlbHNlCj4gLQkJcnhfYnVmZmVyLT5wYWdlX29mZnNldCArPSB0
cnVlc2l6ZTsKPiAtI2VuZGlmCj4gKwkJaTQwZV9yeF9idWZmZXJfZmxpcChyeF9idWZmZXIsIHRy
dWVzaXplKTsKPiAgIAl9IGVsc2Ugewo+ICAgCQkvKiBidWZmZXIgaXMgdW51c2VkLCByZXNldCBi
aWFzIGJhY2sgdG8gcnhfYnVmZmVyICovCj4gICAJCXJ4X2J1ZmZlci0+cGFnZWNudF9iaWFzKys7
Cj4gQEAgLTIyMDksMTEgKzIyMTYsNyBAQCBzdGF0aWMgc3RydWN0IHNrX2J1ZmYgKmk0MGVfYnVp
bGRfc2tiKHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3JpbmcsCj4gICAJCXNrYl9tZXRhZGF0YV9zZXQo
c2tiLCBtZXRhc2l6ZSk7Cj4gICAKPiAgIAkvKiBidWZmZXIgaXMgdXNlZCBieSBza2IsIHVwZGF0
ZSBwYWdlX29mZnNldCAqLwo+IC0jaWYgKFBBR0VfU0laRSA8IDgxOTIpCj4gLQlyeF9idWZmZXIt
PnBhZ2Vfb2Zmc2V0IF49IHRydWVzaXplOwo+IC0jZWxzZQo+IC0JcnhfYnVmZmVyLT5wYWdlX29m
ZnNldCArPSB0cnVlc2l6ZTsKPiAtI2VuZGlmCj4gKwlpNDBlX3J4X2J1ZmZlcl9mbGlwKHJ4X2J1
ZmZlciwgdHJ1ZXNpemUpOwo+ICAgCj4gICAJcmV0dXJuIHNrYjsKPiAgIH0KPiBAQCAtMjMyNiwy
NSArMjMyOSw2IEBAIHN0YXRpYyBpbnQgaTQwZV9ydW5feGRwKHN0cnVjdCBpNDBlX3JpbmcgKnJ4
X3JpbmcsIHN0cnVjdCB4ZHBfYnVmZiAqeGRwLCBzdHJ1Y3QKPiAgIAlyZXR1cm4gcmVzdWx0Owo+
ICAgfQo+ICAgCj4gLS8qKgo+IC0gKiBpNDBlX3J4X2J1ZmZlcl9mbGlwIC0gYWRqdXN0ZWQgcnhf
YnVmZmVyIHRvIHBvaW50IHRvIGFuIHVudXNlZCByZWdpb24KPiAtICogQHJ4X3Jpbmc6IFJ4IHJp
bmcKPiAtICogQHJ4X2J1ZmZlcjogUnggYnVmZmVyIHRvIGFkanVzdAo+IC0gKiBAc2l6ZTogU2l6
ZSBvZiBhZGp1c3RtZW50Cj4gLSAqKi8KPiAtc3RhdGljIHZvaWQgaTQwZV9yeF9idWZmZXJfZmxp
cChzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nLAo+IC0JCQkJc3RydWN0IGk0MGVfcnhfYnVmZmVy
ICpyeF9idWZmZXIsCj4gLQkJCQl1bnNpZ25lZCBpbnQgc2l6ZSkKPiAtewo+IC0JdW5zaWduZWQg
aW50IHRydWVzaXplID0gaTQwZV9yeF9mcmFtZV90cnVlc2l6ZShyeF9yaW5nLCBzaXplKTsKPiAt
Cj4gLSNpZiAoUEFHRV9TSVpFIDwgODE5MikKPiAtCXJ4X2J1ZmZlci0+cGFnZV9vZmZzZXQgXj0g
dHJ1ZXNpemU7Cj4gLSNlbHNlCj4gLQlyeF9idWZmZXItPnBhZ2Vfb2Zmc2V0ICs9IHRydWVzaXpl
Owo+IC0jZW5kaWYKPiAtfQo+IC0KPiAgIC8qKgo+ICAgICogaTQwZV94ZHBfcmluZ191cGRhdGVf
dGFpbCAtIFVwZGF0ZXMgdGhlIFhEUCBUeCByaW5nIHRhaWwgcmVnaXN0ZXIKPiAgICAqIEB4ZHBf
cmluZzogWERQIFR4IHJpbmcKPiBAQCAtMjUxMyw3ICsyNDk3LDcgQEAgc3RhdGljIGludCBpNDBl
X2NsZWFuX3J4X2lycShzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nLCBpbnQgYnVkZ2V0LAo+ICAg
CQlpZiAoeGRwX3Jlcykgewo+ICAgCQkJaWYgKHhkcF9yZXMgJiAoSTQwRV9YRFBfVFggfCBJNDBF
X1hEUF9SRURJUikpIHsKPiAgIAkJCQl4ZHBfeG1pdCB8PSB4ZHBfcmVzOwo+IC0JCQkJaTQwZV9y
eF9idWZmZXJfZmxpcChyeF9yaW5nLCByeF9idWZmZXIsIHNpemUpOwo+ICsJCQkJaTQwZV9yeF9i
dWZmZXJfZmxpcChyeF9idWZmZXIsIHhkcC5mcmFtZV9zeik7CgpXaHkgaXMgYHhkcC5mcmFtZV9z
emAgdGhlIGNvcnJlY3Qgc2l6ZSBub3c/Cgo+ICAgCQkJfSBlbHNlIHsKPiAgIAkJCQlyeF9idWZm
ZXItPnBhZ2VjbnRfYmlhcysrOwo+ICAgCQkJfQoKCktpbmQgcmVnYXJkcywKClBhdWwKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFu
IG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9z
dW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
