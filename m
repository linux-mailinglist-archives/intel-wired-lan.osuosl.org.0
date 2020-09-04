Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 936D725DDDC
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Sep 2020 17:36:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1F91F86E1D;
	Fri,  4 Sep 2020 15:36:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QxTQcRHGO3i9; Fri,  4 Sep 2020 15:36:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7A2BC868D9;
	Fri,  4 Sep 2020 15:36:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 039DD1BF4D5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 15:35:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DD45D203F2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 15:35:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dgqUX01jKhpQ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Sep 2020 15:35:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by silver.osuosl.org (Postfix) with ESMTPS id 44A35203A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 15:35:57 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-311-kGKBJwK8OvGiLSRrqb5OtA-1; Fri, 04 Sep 2020 11:35:52 -0400
X-MC-Unique: kGKBJwK8OvGiLSRrqb5OtA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6FC341007474;
 Fri,  4 Sep 2020 15:35:50 +0000 (UTC)
Received: from carbon (unknown [10.40.208.42])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CF38465C74;
 Fri,  4 Sep 2020 15:35:42 +0000 (UTC)
Date: Fri, 4 Sep 2020 17:35:40 +0200
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Message-ID: <20200904173540.3a617eee@carbon>
In-Reply-To: <20200904135332.60259-7-bjorn.topel@gmail.com>
References: <20200904135332.60259-1-bjorn.topel@gmail.com>
 <20200904135332.60259-7-bjorn.topel@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 6/6] ixgbe,
 xsk: finish napi loop if AF_XDP Rx queue is full
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
Cc: daniel@iogearbox.net, netdev@vger.kernel.org, ast@kernel.org,
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com, kuba@kernel.org,
 bpf@vger.kernel.org,
 =?UTF-8?B?QmrDtnJuIFTDtnBl?= =?UTF-8?B?bA==?= <bjorn.topel@intel.com>,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCAgNCBTZXAgMjAyMCAxNTo1MzozMSArMDIwMApCasO2cm4gVMO2cGVsIDxiam9ybi50
b3BlbEBnbWFpbC5jb20+IHdyb3RlOgoKPiBGcm9tOiBCasO2cm4gVMO2cGVsIDxiam9ybi50b3Bl
bEBpbnRlbC5jb20+Cj4gCj4gTWFrZSB0aGUgQUZfWERQIHplcm8tY29weSBwYXRoIGF3YXJlIHRo
YXQgdGhlIHJlYXNvbiBmb3IgcmVkaXJlY3QKPiBmYWlsdXJlIHdhcyBkdWUgdG8gZnVsbCBSeCBx
dWV1ZS4gSWYgc28sIGV4aXQgdGhlIG5hcGkgbG9vcCBhcyBzb29uIGFzCj4gcG9zc2libGUgKGV4
aXQgdGhlIHNvZnRpcnEgcHJvY2Vzc2luZyksIHNvIHRoYXQgdGhlIHVzZXJzcGFjZSBBRl9YRFAK
PiBwcm9jZXNzIGNhbiBob3BlZnVsbHkgZW1wdHkgdGhlIFJ4IHF1ZXVlLiBUaGlzIG1haW5seSBo
ZWxwcyB0aGUgIm9uZQo+IGNvcmUgc2NlbmFyaW8iLCB3aGVyZSB0aGUgdXNlcmxhbmQgcHJvY2Vz
cyBhbmQgUnggc29mdGlycSBwcm9jZXNzaW5nCj4gaXMgb24gdGhlIHNhbWUgY29yZS4KPiAKPiBO
b3RlIHRoYXQgdGhlIGVhcmx5IGV4aXQgY2FuIG9ubHkgYmUgcGVyZm9ybWVkIGlmIHRoZSAibmVl
ZCB3YWtldXAiCj4gZmVhdHVyZSBpcyBlbmFibGVkLCBiZWNhdXNlIG90aGVyd2lzZSB0aGVyZSBp
cyBubyBub3RpZmljYXRpb24KPiBtZWNoYW5pc20gYXZhaWxhYmxlIGZyb20gdGhlIGtlcm5lbCBz
aWRlLgo+IAo+IFRoaXMgcmVxdWlyZXMgdGhhdCB0aGUgZHJpdmVyIHN0YXJ0cyB1c2luZyB0aGUg
bmV3bHkgaW50cm9kdWNlZAo+IHhkcF9kb19yZWRpcmVjdF9leHQoKSBhbmQgeHNrX2RvX3JlZGly
ZWN0X3J4X2Z1bGwoKSBmdW5jdGlvbnMuCj4gCj4gU2lnbmVkLW9mZi1ieTogQmrDtnJuIFTDtnBl
bCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9peGdiZS9peGdiZV94c2suYyB8IDIzICsrKysrKysrKysrKysrLS0tLS0tCj4gIDEgZmls
ZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV94c2suYyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3hzay5jCj4gaW5kZXggMzc3MTg1N2Nm
ODg3Li5hNGFlYmZkOTg2YjMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaXhnYmUvaXhnYmVfeHNrLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
eGdiZS9peGdiZV94c2suYwo+IEBAIC05Myw5ICs5MywxMSBAQCBpbnQgaXhnYmVfeHNrX3Bvb2xf
c2V0dXAoc3RydWN0IGl4Z2JlX2FkYXB0ZXIgKmFkYXB0ZXIsCj4gIAo+ICBzdGF0aWMgaW50IGl4
Z2JlX3J1bl94ZHBfemMoc3RydWN0IGl4Z2JlX2FkYXB0ZXIgKmFkYXB0ZXIsCj4gIAkJCSAgICBz
dHJ1Y3QgaXhnYmVfcmluZyAqcnhfcmluZywKPiAtCQkJICAgIHN0cnVjdCB4ZHBfYnVmZiAqeGRw
KQo+ICsJCQkgICAgc3RydWN0IHhkcF9idWZmICp4ZHAsCj4gKwkJCSAgICBib29sICplYXJseV9l
eGl0KQo+ICB7Cj4gIAlpbnQgZXJyLCByZXN1bHQgPSBJWEdCRV9YRFBfUEFTUzsKPiArCWVudW0g
YnBmX21hcF90eXBlIG1hcF90eXBlOwo+ICAJc3RydWN0IGJwZl9wcm9nICp4ZHBfcHJvZzsKPiAg
CXN0cnVjdCB4ZHBfZnJhbWUgKnhkcGY7Cj4gIAl1MzIgYWN0Owo+IEBAIC0xMTYsOCArMTE4LDEz
IEBAIHN0YXRpYyBpbnQgaXhnYmVfcnVuX3hkcF96YyhzdHJ1Y3QgaXhnYmVfYWRhcHRlciAqYWRh
cHRlciwKPiAgCQlyZXN1bHQgPSBpeGdiZV94bWl0X3hkcF9yaW5nKGFkYXB0ZXIsIHhkcGYpOwo+
ICAJCWJyZWFrOwo+ICAJY2FzZSBYRFBfUkVESVJFQ1Q6Cj4gLQkJZXJyID0geGRwX2RvX3JlZGly
ZWN0KHJ4X3JpbmctPm5ldGRldiwgeGRwLCB4ZHBfcHJvZyk7Cj4gLQkJcmVzdWx0ID0gIWVyciA/
IElYR0JFX1hEUF9SRURJUiA6IElYR0JFX1hEUF9DT05TVU1FRDsKPiArCQllcnIgPSB4ZHBfZG9f
cmVkaXJlY3RfZXh0KHJ4X3JpbmctPm5ldGRldiwgeGRwLCB4ZHBfcHJvZywgJm1hcF90eXBlKTsK
PiArCQlpZiAoZXJyKSB7Cj4gKwkJCSplYXJseV9leGl0ID0geHNrX2RvX3JlZGlyZWN0X3J4X2Z1
bGwoZXJyLCBtYXBfdHlwZSk7CgpIYXZlIHlvdSB0cmllZCBjYWxsaW5nIHhkcF9kb19mbHVzaCAo
dGhhdCBjYWxscyBfX3hza19tYXBfZmx1c2goKSkgYW5kCihJIGd1ZXNzKSB4c2tfc2V0X3J4X25l
ZWRfd2FrZXVwKCkgaGVyZSwgaW5zdGVhZCBvZiBzdG9wcGluZyB0aGUgbG9vcD8KKE9yIGRvaW5n
IHRoaXMgaW4geHNrIGNvcmUpLgoKTG9va2luZyBhdCB0aGUgY29kZSwgdGhlIEFGX1hEUCBmcmFt
ZXMgYXJlICJwdWJsaXNoZWQiIGluIHRoZSBxdWV1ZQpyYXRoZXIgbGF0ZSBmb3IgQUZfWERQLiAg
TWF5YmUgaW4gYW4gb3J0aG9nb25hbCBvcHRpbWl6YXRpb24sIGhhdmUgeW91CmNvbnNpZGVyZWQg
InB1Ymxpc2hpbmciIHRoZSByaW5nIHByb2R1Y2VyIHdoZW4gZS5nLiB0aGUgcXVldWUgaXMKaGFs
Zi1mdWxsPwoKCj4gKwkJCXJlc3VsdCA9IElYR0JFX1hEUF9DT05TVU1FRDsKPiArCQl9IGVsc2Ug
ewo+ICsJCQlyZXN1bHQgPSBJWEdCRV9YRFBfUkVESVI7Cj4gKwkJfQo+ICAJCWJyZWFrOwo+ICAJ
ZGVmYXVsdDoKPiAgCQlicGZfd2Fybl9pbnZhbGlkX3hkcF9hY3Rpb24oYWN0KTsKPiBAQCAtMjM1
LDggKzI0Miw4IEBAIGludCBpeGdiZV9jbGVhbl9yeF9pcnFfemMoc3RydWN0IGl4Z2JlX3FfdmVj
dG9yICpxX3ZlY3RvciwKPiAgCXVuc2lnbmVkIGludCB0b3RhbF9yeF9ieXRlcyA9IDAsIHRvdGFs
X3J4X3BhY2tldHMgPSAwOwo+ICAJc3RydWN0IGl4Z2JlX2FkYXB0ZXIgKmFkYXB0ZXIgPSBxX3Zl
Y3Rvci0+YWRhcHRlcjsKPiAgCXUxNiBjbGVhbmVkX2NvdW50ID0gaXhnYmVfZGVzY191bnVzZWQo
cnhfcmluZyk7Cj4gKwlib29sIGVhcmx5X2V4aXQgPSBmYWxzZSwgZmFpbHVyZSA9IGZhbHNlOwo+
ICAJdW5zaWduZWQgaW50IHhkcF9yZXMsIHhkcF94bWl0ID0gMDsKPiAtCWJvb2wgZmFpbHVyZSA9
IGZhbHNlOwo+ICAJc3RydWN0IHNrX2J1ZmYgKnNrYjsKPiAgCj4gIAl3aGlsZSAobGlrZWx5KHRv
dGFsX3J4X3BhY2tldHMgPCBidWRnZXQpKSB7Cj4gQEAgLTI4OCw3ICsyOTUsNyBAQCBpbnQgaXhn
YmVfY2xlYW5fcnhfaXJxX3pjKHN0cnVjdCBpeGdiZV9xX3ZlY3RvciAqcV92ZWN0b3IsCj4gIAo+
ICAJCWJpLT54ZHAtPmRhdGFfZW5kID0gYmktPnhkcC0+ZGF0YSArIHNpemU7Cj4gIAkJeHNrX2J1
ZmZfZG1hX3N5bmNfZm9yX2NwdShiaS0+eGRwLCByeF9yaW5nLT54c2tfcG9vbCk7Cj4gLQkJeGRw
X3JlcyA9IGl4Z2JlX3J1bl94ZHBfemMoYWRhcHRlciwgcnhfcmluZywgYmktPnhkcCk7Cj4gKwkJ
eGRwX3JlcyA9IGl4Z2JlX3J1bl94ZHBfemMoYWRhcHRlciwgcnhfcmluZywgYmktPnhkcCwgJmVh
cmx5X2V4aXQpOwo+ICAKPiAgCQlpZiAoeGRwX3Jlcykgewo+ICAJCQlpZiAoeGRwX3JlcyAmIChJ
WEdCRV9YRFBfVFggfCBJWEdCRV9YRFBfUkVESVIpKQo+IEBAIC0zMDIsNiArMzA5LDggQEAgaW50
IGl4Z2JlX2NsZWFuX3J4X2lycV96YyhzdHJ1Y3QgaXhnYmVfcV92ZWN0b3IgKnFfdmVjdG9yLAo+
ICAKPiAgCQkJY2xlYW5lZF9jb3VudCsrOwo+ICAJCQlpeGdiZV9pbmNfbnRjKHJ4X3JpbmcpOwo+
ICsJCQlpZiAoZWFybHlfZXhpdCkKPiArCQkJCWJyZWFrOwo+ICAJCQljb250aW51ZTsKPiAgCQl9
Cj4gIAo+IEBAIC0zNDYsMTIgKzM1NSwxMiBAQCBpbnQgaXhnYmVfY2xlYW5fcnhfaXJxX3pjKHN0
cnVjdCBpeGdiZV9xX3ZlY3RvciAqcV92ZWN0b3IsCj4gIAlxX3ZlY3Rvci0+cngudG90YWxfYnl0
ZXMgKz0gdG90YWxfcnhfYnl0ZXM7Cj4gIAo+ICAJaWYgKHhza191c2VzX25lZWRfd2FrZXVwKHJ4
X3JpbmctPnhza19wb29sKSkgewo+IC0JCWlmIChmYWlsdXJlIHx8IHJ4X3JpbmctPm5leHRfdG9f
Y2xlYW4gPT0gcnhfcmluZy0+bmV4dF90b191c2UpCj4gKwkJaWYgKGVhcmx5X2V4aXQgfHwgZmFp
bHVyZSB8fCByeF9yaW5nLT5uZXh0X3RvX2NsZWFuID09IHJ4X3JpbmctPm5leHRfdG9fdXNlKQo+
ICAJCQl4c2tfc2V0X3J4X25lZWRfd2FrZXVwKHJ4X3JpbmctPnhza19wb29sKTsKPiAgCQllbHNl
Cj4gIAkJCXhza19jbGVhcl9yeF9uZWVkX3dha2V1cChyeF9yaW5nLT54c2tfcG9vbCk7Cj4gIAo+
IC0JCXJldHVybiAoaW50KXRvdGFsX3J4X3BhY2tldHM7Cj4gKwkJcmV0dXJuIGVhcmx5X2V4aXQg
PyAwIDogKGludCl0b3RhbF9yeF9wYWNrZXRzOwo+ICAJfQo+ICAJcmV0dXJuIGZhaWx1cmUgPyBi
dWRnZXQgOiAoaW50KXRvdGFsX3J4X3BhY2tldHM7Cj4gIH0KCgoKLS0gCkJlc3QgcmVnYXJkcywK
ICBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVyCiAgTVNjLkNTLCBQcmluY2lwYWwgS2VybmVsIEVuZ2lu
ZWVyIGF0IFJlZCBIYXQKICBMaW5rZWRJbjogaHR0cDovL3d3dy5saW5rZWRpbi5jb20vaW4vYnJv
dWVyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBz
Oi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
