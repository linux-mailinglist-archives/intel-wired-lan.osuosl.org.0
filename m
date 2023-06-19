Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E024B73526B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jun 2023 12:34:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2948440BA6;
	Mon, 19 Jun 2023 10:34:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2948440BA6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687170893;
	bh=E2s3QG7AkbPCdtwZTefAE0aRc6tve+mDBp6w49HYO/A=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JtIYdSZxJpgnFLUxS59e4u9/q+WJLtZAXN2J3SPSMIBceusi6qj9RvRB+QZFLP4YA
	 U64RU7YgGfgYGdMvTtt5aLPWrUma2w6wMY3oeGE+j/39rERi7GjX7jyufOv1uk2dfj
	 mRpRSuDrcWlTsQizEiLLqGRnTW/E0S9zroFy2sESBxT2IKwlv3OybitMpGTcMy6U/0
	 7i4PYMDCxV1A1+Uapfu8HHthgF+mySuYI9ydGfnFNOJXUfmfVyMG+4FLmdJ2w5930d
	 pWaRjLV+DA0hRUKQfh/QHpR3qL4ACTgEatmbLlGFZW5dvwQaqqQwoNqMe/qoxA0/Y2
	 Bax9Priqdn6EQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UV60DJ_FFzMs; Mon, 19 Jun 2023 10:34:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 07A47405DB;
	Mon, 19 Jun 2023 10:34:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 07A47405DB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 550931BF3DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 10:34:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2CF1A60746
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 10:34:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2CF1A60746
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gCuOb7DOhduF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jun 2023 10:34:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E90260A6F
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3E90260A6F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 10:34:45 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 79B7061E5FE04;
 Mon, 19 Jun 2023 12:34:08 +0200 (CEST)
Message-ID: <bc3e9167-cdea-1efb-6d5c-57df43564d37@molgen.mpg.de>
Date: Mon, 19 Jun 2023 12:34:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Petr Oros <poros@redhat.com>
References: <20230619084948.360128-1-poros@redhat.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230619084948.360128-1-poros@redhat.com>
Subject: Re: [Intel-wired-lan] [PATCH net] ice: ice_vsi_release cleanup
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
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBQZXRyLAoKClRoYW5rIHlvdSBmb3IgeW91ciBwYXRjaC4KCkFtIDE5LjA2LjIzIHVtIDEw
OjQ5IHNjaHJpZWIgUGV0ciBPcm9zOgo+IFNpbmNlIGNvbW1pdCA2NjI0ZTc4MGE1NzdmYyAoImlj
ZTogc3BsaXQgaWNlX3ZzaV9zZXR1cCBpbnRvIHNtYWxsZXIKPiBmdW5jdGlvbnMiKSBpY2VfdnNp
X3JlbGVhc2UgZG9lcyB0aGluZ3MgdHdpY2UuIFRoZXJlIGlzIHVucmVnaXN0ZXIKPiBuZXRkZXYg
d2hpY2ggaXMgdW5yZWdpc3RlcmVkIGluIGljZV9kZWluaXRfZXRoIGFsc28uCj4gCj4gSXQgYWxz
byB1bnJlZ2lzdGVycyB0aGUgZGV2bGlua19wb3J0IHR3aWNlIHdoaWNoIGlzIGFsc28gdW5yZWdp
c3RlcmVkCj4gaW4gaWNlX2RlaW5pdF9ldGgoKS4gVGhpcyBkb3VibGUgZGVyZWdpc3RyYXRpb24g
aXMgaGlkZGVuIGJlY2F1c2UKPiBkZXZsX3BvcnRfdW5yZWdpc3RlciBpZ25vcmVzIHRoZSByZXR1
cm4gdmFsdWUgb2YgeGFfZXJhc2UuCj4gCj4gWyAgIDY4LjY0MjE2N10gQ2FsbCBUcmFjZToKPiBb
ICAgNjguNjUwMzg1XSAgaWNlX2RldmxpbmtfZGVzdHJveV9wZl9wb3J0KzB4ZS8weDIwIFtpY2Vd
Cj4gWyAgIDY4LjY1NTY1Nl0gIGljZV92c2lfcmVsZWFzZSsweDQ0NS8weDY5MCBbaWNlXQo+IFsg
ICA2OC42NjAxNDddICBpY2VfZGVpbml0KzB4OTkvMHgyODAgW2ljZV0KPiBbICAgNjguNjY0MTE3
XSAgaWNlX3JlbW92ZSsweDFiNi8weDVjMCBbaWNlXQo+IAo+IFsgIDE3MS4xMDM4NDFdIENhbGwg
VHJhY2U6Cj4gWyAgMTcxLjEwOTYwN10gIGljZV9kZXZsaW5rX2Rlc3Ryb3lfcGZfcG9ydCsweGYv
MHgyMCBbaWNlXQo+IFsgIDE3MS4xMTQ4NDFdICBpY2VfcmVtb3ZlKzB4MTU4LzB4MjcwIFtpY2Vd
Cj4gWyAgMTcxLjExODg1NF0gIHBjaV9kZXZpY2VfcmVtb3ZlKzB4M2IvMHhjMAo+IFsgIDE3MS4x
MjI3NzldICBkZXZpY2VfcmVsZWFzZV9kcml2ZXJfaW50ZXJuYWwrMHhjNy8weDE3MAo+IFsgIDE3
MS4xMjc5MTJdICBkcml2ZXJfZGV0YWNoKzB4NTQvMHg4Ywo+IFsgIDE3MS4xMzE0OTFdICBidXNf
cmVtb3ZlX2RyaXZlcisweDc3LzB4ZDEKPiBbICAxNzEuMTM1NDA2XSAgcGNpX3VucmVnaXN0ZXJf
ZHJpdmVyKzB4MmQvMHhiMAo+IFsgIDE3MS4xMzk2NzBdICBpY2VfbW9kdWxlX2V4aXQrMHhjLzB4
NTVmIFtpY2VdCgpJdOKAmWQgYmUgbW9yZSBzcGVjaWZpYyBpbiB0aGUgY29tbWl0IG1lc3NhZ2Ug
c3VtbWFyeS90aXRsZSwgYW5kIHVzZSAKaW1wZXJhdGl2ZSBtb29kLiBNYXliZToKCmljZTogVW5y
ZWdpc3RlciBuZXRkZXYgYW5kIGRldmxpbmtfcG9ydCBvbmx5IG9uY2UKCgpLaW5kIHJlZ2FyZHMs
CgpQYXVsCgoKPiBGaXhlczogNjYyNGU3ODBhNTc3ICgiaWNlOiBzcGxpdCBpY2VfdnNpX3NldHVw
IGludG8gc21hbGxlciBmdW5jdGlvbnMiKQo+IFNpZ25lZC1vZmYtYnk6IFBldHIgT3JvcyA8cG9y
b3NAcmVkaGF0LmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2VfbGliLmMgfCAyNyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2Vk
LCAyNyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9saWIuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
bGliLmMKPiBpbmRleCAxMWFlMGU0MWY1MThhMS4uMjg0YTFmMGJmZGI1NDUgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9saWIuYwo+ICsrKyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGliLmMKPiBAQCAtMzI3MiwzOSArMzI3Miwx
MiBAQCBpbnQgaWNlX3ZzaV9yZWxlYXNlKHN0cnVjdCBpY2VfdnNpICp2c2kpCj4gICAJCXJldHVy
biAtRU5PREVWOwo+ICAgCXBmID0gdnNpLT5iYWNrOwo+ICAgCj4gLQkvKiBkbyBub3QgdW5yZWdp
c3RlciB3aGlsZSBkcml2ZXIgaXMgaW4gdGhlIHJlc2V0IHJlY292ZXJ5IHBlbmRpbmcKPiAtCSAq
IHN0YXRlLiBTaW5jZSByZXNldC9yZWJ1aWxkIGhhcHBlbnMgdGhyb3VnaCBQRiBzZXJ2aWNlIHRh
c2sgd29ya3F1ZXVlLAo+IC0JICogaXQncyBub3QgYSBnb29kIGlkZWEgdG8gdW5yZWdpc3RlciBu
ZXRkZXYgdGhhdCBpcyBhc3NvY2lhdGVkIHRvIHRoZQo+IC0JICogUEYgdGhhdCBpcyBydW5uaW5n
IHRoZSB3b3JrIHF1ZXVlIGl0ZW1zIGN1cnJlbnRseS4gVGhpcyBpcyBkb25lIHRvCj4gLQkgKiBh
dm9pZCBjaGVja19mbHVzaF9kZXBlbmRlbmN5KCkgd2FybmluZyBvbiB0aGlzIHdxCj4gLQkgKi8K
PiAtCWlmICh2c2ktPm5ldGRldiAmJiAhaWNlX2lzX3Jlc2V0X2luX3Byb2dyZXNzKHBmLT5zdGF0
ZSkgJiYKPiAtCSAgICAodGVzdF9iaXQoSUNFX1ZTSV9ORVRERVZfUkVHSVNURVJFRCwgdnNpLT5z
dGF0ZSkpKSB7Cj4gLQkJdW5yZWdpc3Rlcl9uZXRkZXYodnNpLT5uZXRkZXYpOwo+IC0JCWNsZWFy
X2JpdChJQ0VfVlNJX05FVERFVl9SRUdJU1RFUkVELCB2c2ktPnN0YXRlKTsKPiAtCX0KPiAtCj4g
LQlpZiAodnNpLT50eXBlID09IElDRV9WU0lfUEYpCj4gLQkJaWNlX2RldmxpbmtfZGVzdHJveV9w
Zl9wb3J0KHBmKTsKPiAtCj4gICAJaWYgKHRlc3RfYml0KElDRV9GTEFHX1JTU19FTkEsIHBmLT5m
bGFncykpCj4gICAJCWljZV9yc3NfY2xlYW4odnNpKTsKPiAgIAo+ICAgCWljZV92c2lfY2xvc2Uo
dnNpKTsKPiAgIAlpY2VfdnNpX2RlY2ZnKHZzaSk7Cj4gICAKPiAtCWlmICh2c2ktPm5ldGRldikg
ewo+IC0JCWlmICh0ZXN0X2JpdChJQ0VfVlNJX05FVERFVl9SRUdJU1RFUkVELCB2c2ktPnN0YXRl
KSkgewo+IC0JCQl1bnJlZ2lzdGVyX25ldGRldih2c2ktPm5ldGRldik7Cj4gLQkJCWNsZWFyX2Jp
dChJQ0VfVlNJX05FVERFVl9SRUdJU1RFUkVELCB2c2ktPnN0YXRlKTsKPiAtCQl9Cj4gLQkJaWYg
KHRlc3RfYml0KElDRV9WU0lfTkVUREVWX0FMTE9DRCwgdnNpLT5zdGF0ZSkpIHsKPiAtCQkJZnJl
ZV9uZXRkZXYodnNpLT5uZXRkZXYpOwo+IC0JCQl2c2ktPm5ldGRldiA9IE5VTEw7Cj4gLQkJCWNs
ZWFyX2JpdChJQ0VfVlNJX05FVERFVl9BTExPQ0QsIHZzaS0+c3RhdGUpOwo+IC0JCX0KPiAtCX0K
PiAtCj4gICAJLyogcmV0YWluIFNXIFZTSSBkYXRhIHN0cnVjdHVyZSBzaW5jZSBpdCBpcyBuZWVk
ZWQgdG8gdW5yZWdpc3RlciBhbmQKPiAgIAkgKiBmcmVlIFZTSSBuZXRkZXYgd2hlbiBQRiBpcyBu
b3QgaW4gcmVzZXQgcmVjb3ZlcnkgcGVuZGluZyBzdGF0ZSxcCj4gICAJICogZm9yIGV4OiBkdXJp
bmcgcm1tb2QuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcK
aHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFu
Cg==
