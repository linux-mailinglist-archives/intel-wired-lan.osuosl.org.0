Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BE74B51884E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 May 2022 17:20:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43BF241767;
	Tue,  3 May 2022 15:20:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jbcotE6qUiNN; Tue,  3 May 2022 15:20:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D33C44175D;
	Tue,  3 May 2022 15:20:20 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A8FDF1BF342
 for <intel-wired-lan@osuosl.org>; Tue,  3 May 2022 15:20:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 968C781469
 for <intel-wired-lan@osuosl.org>; Tue,  3 May 2022 15:20:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q6jTWNX2lc2z for <intel-wired-lan@osuosl.org>;
 Tue,  3 May 2022 15:20:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 96E7581460
 for <intel-wired-lan@osuosl.org>; Tue,  3 May 2022 15:20:13 +0000 (UTC)
Received: from [192.168.0.7] (ip5f5aed95.dynamic.kabel-deutschland.de
 [95.90.237.149])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 00CCF61EA192A;
 Tue,  3 May 2022 17:20:09 +0200 (CEST)
Message-ID: <95aac667-1a6b-780f-3fd6-84ff2d987b02@molgen.mpg.de>
Date: Tue, 3 May 2022 17:20:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
References: <20220503132428.1859432-1-sudheer.mogilappagari@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220503132428.1859432-1-sudheer.mogilappagari@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] ice: Expose RSS
 indirection tables for queue groups via ethtool
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
Cc: intel-wired-lan@osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBTdWRoZWVyLAoKClRoYW5rIHlvdSBmb3IgeW91ciBwYXRjaC4KCkFtIDAzLjA1LjIyIHVt
IDE1OjI0IHNjaHJpZWIgU3VkaGVlciBNb2dpbGFwcGFnYXJpOgo+IEZyb206IFNyaWRoYXIgU2Ft
dWRyYWxhIDxzcmlkaGFyLnNhbXVkcmFsYUBpbnRlbC5jb20+Cj4gCj4gV2hlbiBBRFEgcXVldWUg
Z3JvdXBzKFRDcykgYXJlIGNyZWF0ZWQgdmlhIHRjIG1xcHJpbyBjb21tYW5kLAoKUGxlYXNlIGFk
ZCBhIHNwYWNlIGJlZm9yZSB0aGUgKC4KCj4gUlNTIGNvbnRleHRzIGFuZCBhc3NvY2lhdGVkIFJT
UyBpbmRpcmVjdGlvbiB0YWJsZXMgYXJlIGNvbmZpZ3VyZWQKPiBhdXRvbWF0aWNhbGx5IHBlciBU
QyBiYXNlZCBvbiB0aGUgcXVldWUgcmFuZ2VzIHNwZWNpZmllZCBmb3IKPiBlYWNoIHRyYWZmaWMg
Y2xhc3MuCj4gCj4gRm9yIGV4Ogo+IHRjIHFkaXNjIGFkZCBkZXYgZW5wMTc1czBmMCByb290IG1x
cHJpbyBudW1fdGMgMyBtYXAgMCAxIDIgXAo+IAlxdWV1ZXMgMkAwIDhAMiA0QDEwIGh3IDEgbW9k
ZSBjaGFubmVsCj4gCj4gd2lsbCBjcmVhdGUgMyBxdWV1ZSBncm91cHMoVEMgMC0yKSB3aXRoIHF1
ZXVlIHJhbmdlcyAyLCA4IGFuZCA0CgpEaXR0by4KCj4gaW4gMyBxdWV1ZSBncm91cHMuIEVhY2gg
cXVldWUgZ3JvdXAgaXMgYXNzb2NpYXRlZCB3aXRoIGl0cwo+IG93biBSU1MgY29udGV4dCBhbmQg
UlNTIGluZGlyZWN0aW9uIHRhYmxlLgo+IAo+IEFkZCBzdXBwb3J0IHRvIGV4cG9zZSBSU1MgaW5k
aXJlY3Rpb24gdGFibGVzIGZvciBhbGwgQURRIHF1ZXVlCj4gZ3JvdXBzIHVzaW5nIGV0aHRvb2wg
UlNTIGNvbnRleHRzIGludGVyZmFjZS4KPiAJZXRodG9vbCAteCBlbnAxNzVzMGYwIGNvbnRleHQg
PHRjLW51bT4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTcmlkaGFyIFNhbXVkcmFsYTxzcmlkaGFyLnNh
bXVkcmFsYUBpbnRlbC5jb20+CgpNaXNzaW5nIHNwYWNlIGJlZm9yZSB0aGUgPC4KCj4gU2lnbmVk
LW9mZi1ieTogU3VkaGVlciBNb2dpbGFwcGFnYXJpIDxzdWRoZWVyLm1vZ2lsYXBwYWdhcmlAaW50
ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9ldGh0
b29sLmMgfCA2OSArKysrKysrKysrKysrKystLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDUxIGlu
c2VydGlvbnMoKyksIDE4IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2V0aHRvb2wuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfZXRodG9vbC5jCj4gaW5kZXggNDc2YmQxYzgzYzg3Li4xZTcxYjcwZjBl
NTIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9ldGh0
b29sLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2V0aHRvb2wu
Ywo+IEBAIC0zMTExLDM2ICszMTExLDQ3IEBAIHN0YXRpYyB1MzIgaWNlX2dldF9yeGZoX2luZGly
X3NpemUoc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldikKPiAgIAlyZXR1cm4gbnAtPnZzaS0+cnNz
X3RhYmxlX3NpemU7Cj4gICB9Cj4gICAKPiAtLyoqCj4gLSAqIGljZV9nZXRfcnhmaCAtIGdldCB0
aGUgUnggZmxvdyBoYXNoIGluZGlyZWN0aW9uIHRhYmxlCj4gLSAqIEBuZXRkZXY6IG5ldHdvcmsg
aW50ZXJmYWNlIGRldmljZSBzdHJ1Y3R1cmUKPiAtICogQGluZGlyOiBpbmRpcmVjdGlvbiB0YWJs
ZQo+IC0gKiBAa2V5OiBoYXNoIGtleQo+IC0gKiBAaGZ1bmM6IGhhc2ggZnVuY3Rpb24KPiAtICoK
PiAtICogUmVhZHMgdGhlIGluZGlyZWN0aW9uIHRhYmxlIGRpcmVjdGx5IGZyb20gdGhlIGhhcmR3
YXJlLgo+IC0gKi8KPiAgIHN0YXRpYyBpbnQKPiAtaWNlX2dldF9yeGZoKHN0cnVjdCBuZXRfZGV2
aWNlICpuZXRkZXYsIHUzMiAqaW5kaXIsIHU4ICprZXksIHU4ICpoZnVuYykKPiAraWNlX2dldF9y
eGZoX2NvbnRleHQoc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiwgdTMyICppbmRpciwKPiArCQkg
ICAgIHU4ICprZXksIHU4ICpoZnVuYywgdTMyIHJzc19jb250ZXh0KQo+ICAgewo+ICAgCXN0cnVj
dCBpY2VfbmV0ZGV2X3ByaXYgKm5wID0gbmV0ZGV2X3ByaXYobmV0ZGV2KTsKPiAgIAlzdHJ1Y3Qg
aWNlX3ZzaSAqdnNpID0gbnAtPnZzaTsKPiAgIAlzdHJ1Y3QgaWNlX3BmICpwZiA9IHZzaS0+YmFj
azsKPiAtCWludCBlcnIsIGk7Cj4gKwl1MTYgcWNvdW50LCBvZmZzZXQ7Cj4gKwlpbnQgZXJyLCBu
dW1fdGMsIGk7CgpudW1fdGMgaXMgZGVmaW5lZCBhcyBgX191OGAgaW4gYGluY2x1ZGUvdWFwaS9s
aW51eC9wa3Rfc2NoZWQuaGAuIE5vIAppZGVhLCBpZiBpdOKAmXMgdXNlZnVsIHRvIHVzZSB0aGUg
c2FtZSB0eXBlLCBvciBqdXN0IGB1bnNpZ25lZCBpbnRgLgoKPiAgIAl1OCAqbHV0Owo+ICAgCj4g
KwlpZiAoIXRlc3RfYml0KElDRV9GTEFHX1JTU19FTkEsIHBmLT5mbGFncykpIHsKPiArCQluZXRk
ZXZfd2FybihuZXRkZXYsICJSU1MgaXMgbm90IHN1cHBvcnRlZCBvbiB0aGlzIFZTSSFcbiIpOwo+
ICsJCXJldHVybiAtRU9QTk9UU1VQUDsKPiArCX0KPiArCj4gKwlpZiAocnNzX2NvbnRleHQgJiYg
IWljZV9pc19hZHFfYWN0aXZlKHBmKSkgewo+ICsJCW5ldGRldl9lcnIobmV0ZGV2LCAiUlNTIGNv
bnRleHQgY2Fubm90IGJlIG5vbi16ZXJvIHdoZW4gQURRIGlzIG5vdCBjb25maWd1cmVkLlxuIik7
Cj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4gKwl9Cj4gKwo+ICsJcWNvdW50ID0gdnNpLT5tcXByaW9f
cW9wdC5xb3B0LmNvdW50W3Jzc19jb250ZXh0XTsKPiArCW9mZnNldCA9IHZzaS0+bXFwcmlvX3Fv
cHQucW9wdC5vZmZzZXRbcnNzX2NvbnRleHRdOwo+ICsKPiArCWlmIChyc3NfY29udGV4dCAmJiBp
Y2VfaXNfYWRxX2FjdGl2ZShwZikpIHsKPiArCQludW1fdGMgPSB2c2ktPm1xcHJpb19xb3B0LnFv
cHQubnVtX3RjOwo+ICsJCWlmIChyc3NfY29udGV4dCA+PSBudW1fdGMpIHsKPiArCQkJbmV0ZGV2
X2VycihuZXRkZXYsICJSU1MgY29udGV4dDolZCAgPiBudW1fdGM6JWRcbiIsCj4gKwkJCQkgICBy
c3NfY29udGV4dCwgbnVtX3RjKTsKPiArCQkJcmV0dXJuIC1FSU5WQUw7Cj4gKwkJfQo+ICsJCS8q
IFVzZSBjaGFubmVsIFZTSSBvZiBnaXZlbiBUQyAqLwo+ICsJCXZzaSA9IHZzaS0+dGNfbWFwX3Zz
aVtyc3NfY29udGV4dF07Cj4gKwl9Cj4gKwoKCktpbmQgcmVnYXJkcywKClBhdWwKCgo+ICAgCWlm
IChoZnVuYykKPiAgIAkJKmhmdW5jID0gRVRIX1JTU19IQVNIX1RPUDsKPiAgIAo+ICAgCWlmICgh
aW5kaXIpCj4gICAJCXJldHVybiAwOwo+ICAgCj4gLQlpZiAoIXRlc3RfYml0KElDRV9GTEFHX1JT
U19FTkEsIHBmLT5mbGFncykpIHsKPiAtCQkvKiBSU1Mgbm90IHN1cHBvcnRlZCByZXR1cm4gZXJy
b3IgaGVyZSAqLwo+IC0JCW5ldGRldl93YXJuKG5ldGRldiwgIlJTUyBpcyBub3QgY29uZmlndXJl
ZCBvbiB0aGlzIFZTSSFcbiIpOwo+IC0JCXJldHVybiAtRUlPOwo+IC0JfQo+IC0KPiAgIAlsdXQg
PSBremFsbG9jKHZzaS0+cnNzX3RhYmxlX3NpemUsIEdGUF9LRVJORUwpOwo+ICAgCWlmICghbHV0
KQo+ICAgCQlyZXR1cm4gLUVOT01FTTsKPiBAQCAtMzE1MywxNCArMzE2NCwzNSBAQCBpY2VfZ2V0
X3J4Zmgoc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiwgdTMyICppbmRpciwgdTggKmtleSwgdTgg
KmhmdW5jKQo+ICAgCWlmIChlcnIpCj4gICAJCWdvdG8gb3V0Owo+ICAgCj4gKwlpZiAoaWNlX2lz
X2FkcV9hY3RpdmUocGYpKSB7Cj4gKwkJZm9yIChpID0gMDsgaSA8IHZzaS0+cnNzX3RhYmxlX3Np
emU7IGkrKykKPiArCQkJaW5kaXJbaV0gPSBvZmZzZXQgKyBsdXRbaV0gJSBxY291bnQ7Cj4gKwkJ
Z290byBvdXQ7Cj4gKwl9Cj4gKwo+ICAgCWZvciAoaSA9IDA7IGkgPCB2c2ktPnJzc190YWJsZV9z
aXplOyBpKyspCj4gLQkJaW5kaXJbaV0gPSAodTMyKShsdXRbaV0pOwo+ICsJCWluZGlyW2ldID0g
bHV0W2ldOwo+ICAgCj4gICBvdXQ6Cj4gICAJa2ZyZWUobHV0KTsKPiAgIAlyZXR1cm4gZXJyOwo+
ICAgfQo+ICAgCj4gKy8qKgo+ICsgKiBpY2VfZ2V0X3J4ZmggLSBnZXQgdGhlIFJ4IGZsb3cgaGFz
aCBpbmRpcmVjdGlvbiB0YWJsZQo+ICsgKiBAbmV0ZGV2OiBuZXR3b3JrIGludGVyZmFjZSBkZXZp
Y2Ugc3RydWN0dXJlCj4gKyAqIEBpbmRpcjogaW5kaXJlY3Rpb24gdGFibGUKPiArICogQGtleTog
aGFzaCBrZXkKPiArICogQGhmdW5jOiBoYXNoIGZ1bmN0aW9uCj4gKyAqCj4gKyAqIFJlYWRzIHRo
ZSBpbmRpcmVjdGlvbiB0YWJsZSBkaXJlY3RseSBmcm9tIHRoZSBoYXJkd2FyZS4KPiArICovCj4g
K3N0YXRpYyBpbnQKPiAraWNlX2dldF9yeGZoKHN0cnVjdCBuZXRfZGV2aWNlICpuZXRkZXYsIHUz
MiAqaW5kaXIsIHU4ICprZXksIHU4ICpoZnVuYykKPiArewo+ICsJcmV0dXJuIGljZV9nZXRfcnhm
aF9jb250ZXh0KG5ldGRldiwgaW5kaXIsIGtleSwgaGZ1bmMsIDApOwo+ICt9Cj4gKwo+ICAgLyoq
Cj4gICAgKiBpY2Vfc2V0X3J4ZmggLSBzZXQgdGhlIFJ4IGZsb3cgaGFzaCBpbmRpcmVjdGlvbiB0
YWJsZQo+ICAgICogQG5ldGRldjogbmV0d29yayBpbnRlcmZhY2UgZGV2aWNlIHN0cnVjdHVyZQo+
IEBAIC00MTAyLDYgKzQxMzQsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGV0aHRvb2xfb3BzIGlj
ZV9ldGh0b29sX29wcyA9IHsKPiAgIAkuc2V0X3BhdXNlcGFyYW0JCT0gaWNlX3NldF9wYXVzZXBh
cmFtLAo+ICAgCS5nZXRfcnhmaF9rZXlfc2l6ZQk9IGljZV9nZXRfcnhmaF9rZXlfc2l6ZSwKPiAg
IAkuZ2V0X3J4ZmhfaW5kaXJfc2l6ZQk9IGljZV9nZXRfcnhmaF9pbmRpcl9zaXplLAo+ICsJLmdl
dF9yeGZoX2NvbnRleHQJPSBpY2VfZ2V0X3J4ZmhfY29udGV4dCwKPiAgIAkuZ2V0X3J4ZmgJCT0g
aWNlX2dldF9yeGZoLAo+ICAgCS5zZXRfcnhmaAkJPSBpY2Vfc2V0X3J4ZmgsCj4gICAJLmdldF9j
aGFubmVscwkJPSBpY2VfZ2V0X2NoYW5uZWxzLApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdp
cmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLXdpcmVkLWxhbgo=
