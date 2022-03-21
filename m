Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 214A24E2B59
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Mar 2022 15:57:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C9AEA408F6;
	Mon, 21 Mar 2022 14:57:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nCRydrc7Ab95; Mon, 21 Mar 2022 14:57:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9600F408ED;
	Mon, 21 Mar 2022 14:57:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7E9581BF324
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Mar 2022 14:57:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6A8B3408ED
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Mar 2022 14:57:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1TJ4AYko587e for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Mar 2022 14:57:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 506D540106
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Mar 2022 14:57:35 +0000 (UTC)
Received: from [192.168.0.7] (ip5f5aef4e.dynamic.kabel-deutschland.de
 [95.90.239.78])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id CD05761E6478B;
 Mon, 21 Mar 2022 15:57:31 +0100 (CET)
Message-ID: <a7dcc837-e24e-86d6-059c-416ad3357fe0@molgen.mpg.de>
Date: Mon, 21 Mar 2022 15:57:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Marcin Szycik <marcin.szycik@linux.intel.com>
References: <20220321144731.3935-1-marcin.szycik@linux.intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220321144731.3935-1-marcin.szycik@linux.intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next] Revert "ice: Hide bus-info
 in ethtool for PRs in switchdev mode"
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

RGVhciBNYXJjaW4sCgoKQW0gMjEuMDMuMjIgdW0gMTU6NDcgc2NocmllYiBNYXJjaW4gU3p5Y2lr
Ogo+IFRoaXMgcmV2ZXJ0cyBjb21taXQgYmZhYWJhOTllNjgwYmY4MmJmMmNiZjY5ODY2YzNmMzc0
MzRmZjc2Ni4KPiAKPiBDb21taXQgYmZhYWJhOTllNjgwICgiaWNlOiBIaWRlIGJ1cy1pbmZvIGlu
IGV0aHRvb2wgZm9yIFBScyBpbiBzd2l0Y2hkZXYKPiBtb2RlIikgd2FzIGEgd29ya2Fyb3VuZCBm
b3IgbHNodyB0b29sIGRpc3BsYXlpbmcgaW5jb3JyZWN0Cj4gZGVzY3JpcHRpb25zIGZvciBwb3J0
IHJlcHJlc2VudG9ycyBhbmQgUEYgaW4gc3dpdGNoZGV2IG1vZGUuIE5vdyB0aGUgaXNzdWUKPiBo
YXMgYmVlbiBmaXhlZCBpbiB0aGUgbHNodyB0b29sIGl0c2VsZiBbMV0uCj4gCj4gWzFdIGh0dHBz
Oi8vZXppeC5vcmcvc3JjL3BrZy9sc2h3L2NvbW1pdC85YmY0ZTRjOWMxCgpBcyB5b3UgY2Fubm90
IGtub3cgd2hhdCBsc2h3IHZlcnNpb24gdXNlcnMgaGF2ZSBpbnN0YWxsZWQsIEkgYW0gYWZyYWlk
IAp0aGUgd29ya2Fyb3VuZCAocGFydCBvZiBMaW51eCA1LjE2LiBhbmQgNS4xNykgaGFzIHRvIHN0
YXkgaW4gdGhlIExpbnV4IAprZXJuZWwgdG8gbm90IHZpb2xhdGUgTGludXjigJkgbm8tcmVncmVz
c2lvbiBwb2xpY3kuCgpXaGF0IGFyZSB0aGUgZG93bnNpZGVzIG9mIGtlZXBpbmcgdGhlIHdvcmth
cm91bmQgYXJvdW5kPwoKCktpbmQgcmVnYXJkcywKClBhdWwKCgo+IFNpZ25lZC1vZmYtYnk6IE1h
cmNpbiBTenljaWsgPG1hcmNpbi5zenljaWtAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9ldGh0b29sLmMgfCA4ICsrKy0tLS0tCj4g
ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2V0aHRvb2wuYyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZXRodG9vbC5jCj4gaW5kZXggMjRj
ZGE3ZTFmOTE2Li40NzZiZDFjODNjODcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9ldGh0b29sLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX2V0aHRvb2wuYwo+IEBAIC0xOTAsMTkgKzE5MCwxNyBAQCBfX2ljZV9nZXRf
ZHJ2aW5mbyhzdHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2LCBzdHJ1Y3QgZXRodG9vbF9kcnZpbmZv
ICpkcnZpbmZvLAo+ICAgCXNucHJpbnRmKGRydmluZm8tPmZ3X3ZlcnNpb24sIHNpemVvZihkcnZp
bmZvLT5md192ZXJzaW9uKSwKPiAgIAkJICIleC4lMDJ4IDB4JXggJWQuJWQuJWQiLCBudm0tPm1h
am9yLCBudm0tPm1pbm9yLAo+ICAgCQkgbnZtLT5lZXRyYWNrLCBvcm9tLT5tYWpvciwgb3JvbS0+
YnVpbGQsIG9yb20tPnBhdGNoKTsKPiArCj4gKwlzdHJzY3B5KGRydmluZm8tPmJ1c19pbmZvLCBw
Y2lfbmFtZShwZi0+cGRldiksCj4gKwkJc2l6ZW9mKGRydmluZm8tPmJ1c19pbmZvKSk7Cj4gICB9
Cj4gICAKPiAgIHN0YXRpYyB2b2lkCj4gICBpY2VfZ2V0X2RydmluZm8oc3RydWN0IG5ldF9kZXZp
Y2UgKm5ldGRldiwgc3RydWN0IGV0aHRvb2xfZHJ2aW5mbyAqZHJ2aW5mbykKPiAgIHsKPiAgIAlz
dHJ1Y3QgaWNlX25ldGRldl9wcml2ICpucCA9IG5ldGRldl9wcml2KG5ldGRldik7Cj4gLQlzdHJ1
Y3QgaWNlX3BmICpwZiA9IG5wLT52c2ktPmJhY2s7Cj4gICAKPiAgIAlfX2ljZV9nZXRfZHJ2aW5m
byhuZXRkZXYsIGRydmluZm8sIG5wLT52c2kpOwo+IC0KPiAtCXN0cnNjcHkoZHJ2aW5mby0+YnVz
X2luZm8sIHBjaV9uYW1lKHBmLT5wZGV2KSwKPiAtCQlzaXplb2YoZHJ2aW5mby0+YnVzX2luZm8p
KTsKPiAtCj4gICAJZHJ2aW5mby0+bl9wcml2X2ZsYWdzID0gSUNFX1BSSVZfRkxBR19BUlJBWV9T
SVpFOwo+ICAgfQo+ICAgCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2ly
ZWQtbGFuCg==
