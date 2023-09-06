Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06500793448
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Sep 2023 06:01:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8A759402F3;
	Wed,  6 Sep 2023 04:01:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A759402F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693972896;
	bh=TAzZy77anfw+NRVKcY9qfXbShMylbh/uznkryNug4FA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1b6bXkyu4AFswxPh1crryXytuVyGWzUgrfdnXd5By/2hVp52RvLyTQdI/FekLCFiv
	 +4vJ2DVXSU7b02tyxm54O1cyGq5WdS4UMnx2pMXW8ZFhmtGJaoTiwCOoJq62BN7NYf
	 NMALZ5gtAhqw6l0/Vx02OAO/fSj+pxLSYnsYxahRuy6QFemUivbF4dKg41wJ4Ld3Pf
	 Wk6SHbUQqOyxVj8ifQKqLiqjMiz8EGr+423LAn7qkEyFmoX6vQ0nXSiyR04+lCN5Ga
	 OXeqmWTUUUvsuHg9a9Kw4CeI2IwXfec/vahDkw4FiUIwqHEmpoXv1aYreFmdUQSTAn
	 yvqT07OE+ULIw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 46nhSJ0P7oEt; Wed,  6 Sep 2023 04:01:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 53D4E401A1;
	Wed,  6 Sep 2023 04:01:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 53D4E401A1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C25511BF292
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 04:01:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9B16681FB0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 04:01:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B16681FB0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pLQ9U9_9wqE7 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Sep 2023 04:01:28 +0000 (UTC)
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1965181FA7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 04:01:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1965181FA7
Received: from [192.168.0.185] (ip5f5aeeca.dynamic.kabel-deutschland.de
 [95.90.238.202])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 1D3D861E5FE01;
 Wed,  6 Sep 2023 06:01:13 +0200 (CEST)
Message-ID: <f84356d8-1eae-4299-beee-cda7fb3e29ce@molgen.mpg.de>
Date: Wed, 6 Sep 2023 06:01:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ahmed Zaki <ahmed.zaki@intel.com>,
 Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
References: <20230905185020.3613223-1-ahmed.zaki@intel.com>
 <20230905185020.3613223-2-ahmed.zaki@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230905185020.3613223-2-ahmed.zaki@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 1/4] virtchnl: Add CRC
 stripping capability
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
Cc: intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBBaG1lZCwgZGVhciBQYXVsLAoKClRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoLgoKQW0gMDUu
MDkuMjMgdW0gMjA6NTAgc2NocmllYiBBaG1lZCBaYWtpOgo+IEZyb206IFBhdWwgTSBTdGlsbHdl
bGwgSnIgPHBhdWwubS5zdGlsbHdlbGwuanJAaW50ZWwuY29tPgo+IAo+IFNvbWUgVkZzIG1heSB3
YW50IHRvIGRpc2FibGUgQ1JDIHN0cmlwcGluZyBvbiBpbmNvbWluZyBwYWNrZXRzIHNvIGNyZWF0
ZQo+IGFuIG9mZmxvYWQgZm9yIHRoYXQuIFRoZSBWRiBhbHJlYWR5IHNlbmRzIGluZm9ybWF0aW9u
IGFib3V0IGNvbmZpZ3VyaW5nCj4gaXQncyBSWCBxdWV1ZXMgc28gdXNlIHRoYXQgc3RydWN0dXJl
IHRvIGluZGljYXRlIHRoYXQgdGhlIENSQyBzdHJpcHBpbmcKCnMvaXTigJlzL2l0cy8KCj4gc2hv
dWxkIGJlIGVuYWJsZWQgb3Igbm90Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IFBhdWwgTSBTdGlsbHdl
bGwgSnIgPHBhdWwubS5zdGlsbHdlbGwuanJAaW50ZWwuY29tPgo+IFJldmlld2VkLWJ5OiBKZXNz
ZSBCcmFuZGVidXJnIDxqZXNzZS5icmFuZGVidXJnQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5
OiBBaG1lZCBaYWtpIDxhaG1lZC56YWtpQGludGVsLmNvbT4KPiAtLS0KPiAgIGluY2x1ZGUvbGlu
dXgvYXZmL3ZpcnRjaG5sLmggfCAxMSArKysrKysrKystLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDkg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9s
aW51eC9hdmYvdmlydGNobmwuaCBiL2luY2x1ZGUvbGludXgvYXZmL3ZpcnRjaG5sLmgKPiBpbmRl
eCBkMDgwN2FkNDNmOTMuLmRkNzFkMzAwOTc3MSAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2xpbnV4
L2F2Zi92aXJ0Y2hubC5oCj4gKysrIGIvaW5jbHVkZS9saW51eC9hdmYvdmlydGNobmwuaAo+IEBA
IC0yNDAsNiArMjQwLDcgQEAgVklSVENITkxfQ0hFQ0tfU1RSVUNUX0xFTigxNiwgdmlydGNobmxf
dnNpX3Jlc291cmNlKTsKPiAgICNkZWZpbmUgVklSVENITkxfVkZfT0ZGTE9BRF9SRVFfUVVFVUVT
CQlCSVQoNikKPiAgIC8qIHVzZWQgdG8gbmVnb3RpYXRlIGNvbW11bmljYXRpbmcgbGluayBzcGVl
ZHMgaW4gTWJwcyAqLwo+ICAgI2RlZmluZSBWSVJUQ0hOTF9WRl9DQVBfQURWX0xJTktfU1BFRUQJ
CUJJVCg3KQo+ICsjZGVmaW5lICBWSVJUQ0hOTF9WRl9PRkZMT0FEX0NSQwkJQklUKDEwKQo+ICAg
I2RlZmluZSBWSVJUQ0hOTF9WRl9PRkZMT0FEX1ZMQU5fVjIJCUJJVCgxNSkKPiAgICNkZWZpbmUg
VklSVENITkxfVkZfT0ZGTE9BRF9WTEFOCQlCSVQoMTYpCj4gICAjZGVmaW5lIFZJUlRDSE5MX1ZG
X09GRkxPQURfUlhfUE9MTElORwkJQklUKDE3KQo+IEBAIC0yOTUsNyArMjk2LDEzIEBAIFZJUlRD
SE5MX0NIRUNLX1NUUlVDVF9MRU4oMjQsIHZpcnRjaG5sX3R4cV9pbmZvKTsKPiAgIC8qIFZJUlRD
SE5MX09QX0NPTkZJR19SWF9RVUVVRQo+ICAgICogVkYgc2VuZHMgdGhpcyBtZXNzYWdlIHRvIHNl
dCB1cCBwYXJhbWV0ZXJzIGZvciBvbmUgUlggcXVldWUuCj4gICAgKiBFeHRlcm5hbCBkYXRhIGJ1
ZmZlciBjb250YWlucyBvbmUgaW5zdGFuY2Ugb2YgdmlydGNobmxfcnhxX2luZm8uCj4gLSAqIFBG
IGNvbmZpZ3VyZXMgcmVxdWVzdGVkIHF1ZXVlIGFuZCByZXR1cm5zIGEgc3RhdHVzIGNvZGUuCj4g
KyAqIFBGIGNvbmZpZ3VyZXMgcmVxdWVzdGVkIHF1ZXVlIGFuZCByZXR1cm5zIGEgc3RhdHVzIGNv
ZGUuIFRoZQo+ICsgKiBjcmNfZGlzYWJsZSBmbGFnIGRpc2FibGVzIENSQyBzdHJpcHBpbmcgb24g
dGhlIFZGLiBTZXR0aW5nCj4gKyAqIHRoZSBjcmNfZGlzYWJsZSBmbGFnIHRvIDEgd2lsbCBkaXNh
YmxlIENSQyBzdHJpcHBpbmcgZm9yIGVhY2gKPiArICogcXVldWUgaW4gdGhlIFZGIHdoZXJlIHRo
ZSBmbGFnIGlzIHNldC4gVGhlIFZJUlRDSE5MX1ZGX09GRkxPQURfQ1JDCj4gKyAqIG9mZmxvYWQg
bXVzdCBoYXZlIGJlZW4gc2V0IHByaW9yIHRvIHNlbmRpbmcgdGhpcyBpbmZvIG9yIHRoZSBQRgo+
ICsgKiB3aWxsIGlnbm9yZSB0aGUgcmVxdWVzdC4gVGhpcyBmbGFnIHNob3VsZCBiZSBzZXQgdGhl
IHNhbWUgZm9yCj4gKyAqIGFsbCBvZiB0aGUgcXVldWVzIGZvciBhIFZGLgo+ICAgICovCj4gICAK
PiAgIC8qIFJ4IHF1ZXVlIGNvbmZpZyBpbmZvICovCj4gQEAgLTMwNyw3ICszMTQsNyBAQCBzdHJ1
Y3QgdmlydGNobmxfcnhxX2luZm8gewo+ICAgCXUxNiBzcGxpdGhkcl9lbmFibGVkOyAvKiBkZXBy
ZWNhdGVkIHdpdGggQVZGIDEuMCAqLwo+ICAgCXUzMiBkYXRhYnVmZmVyX3NpemU7Cj4gICAJdTMy
IG1heF9wa3Rfc2l6ZTsKPiAtCXU4IHBhZDA7Cj4gKwl1OCBjcmNfZGlzYWJsZTsKPiAgIAl1OCBy
eGRpZDsKPiAgIAl1OCBwYWQxWzJdOwo+ICAgCXU2NCBkbWFfcmluZ19hZGRyOwoKUmV2aWV3ZWQt
Ynk6IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+CgoKS2luZCByZWdhcmRzLAoK
UGF1bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBz
Oi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
