Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 366B2431CED
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Oct 2021 15:44:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CDD7C405CF;
	Mon, 18 Oct 2021 13:44:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ir1wWEtxtAec; Mon, 18 Oct 2021 13:44:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB998405C8;
	Mon, 18 Oct 2021 13:44:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9E8FA1BF337
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 13:44:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8CBA881A95
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 13:44:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WKcwpAyMuyHf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Oct 2021 13:44:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2B8808196E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 13:44:09 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 2380B61E5FE33;
 Mon, 18 Oct 2021 15:44:06 +0200 (CEST)
To: Yanjun Zhu <yanjun.zhu@linux.dev>
References: <20211018131713.3478-1-yanjun.zhu@linux.dev>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <c1903730-9508-1fef-4232-3a5b62f28d7c@molgen.mpg.de>
Date: Mon, 18 Oct 2021 15:44:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211018131713.3478-1-yanjun.zhu@linux.dev>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH 1/1] ice: compact the file ice_nvm.c
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBZYW5qdW4sCgoKQW0gMTguMTAuMjEgdW0gMTU6MTcgc2NocmllYiB5YW5qdW4uemh1QGxp
bnV4LmRldjoKPiBGcm9tOiBaaHUgWWFuanVuIDx5YW5qdW4uemh1QGxpbnV4LmRldj4KPiAKPiBU
aGUgZnVuY3Rpb24gaWNlX2FxX252bV91cGRhdGVfZW1wciBpcyBub3QgdXNlZCwgc28gcmVtb3Zl
IGl0LgoKVGhhbmsgeW91IGZvciB0aGUgcGF0Y2guIENvdWxkIHlvdSBwbGVhc2UgbWFrZSB0aGUg
Y29tbWl0IG1lc3NhZ2UgCnN1bW1hcnkgbW9yZSBkZXNjcmlwdGl2ZT8gTWF5YmU6Cgo+IGljZTog
UmVtb3ZlIHVudXNlZCBgaWNlX2FxX252bV91cGRhdGVfZW1wcigpYAoKSWYgeW91IGZpbmQgb3V0
LCB3aGF0IGNvbW1pdCByZW1vdmVkIHRoZSB1c2FnZSwgdGhhdCB3b3VsZCBiZSBhbHNvIGdvb2Qg
CnRvIGRvY3VtZW50LCBidXQgaXTigJlzIG5vdCB0aGF0IGltcG9ydGFudC4KCgpLaW5kIHJlZ2Fy
ZHMsCgpQYXVsCgoKPiBTaWduZWQtb2ZmLWJ5OiBaaHUgWWFuanVuIDx5YW5qdW4uemh1QGxpbnV4
LmRldj4KPiAtLS0KPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbnZtLmMg
fCAxNiAtLS0tLS0tLS0tLS0tLS0tCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX252bS5oIHwgIDEgLQo+ICAgMiBmaWxlcyBjaGFuZ2VkLCAxNyBkZWxldGlvbnMoLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9udm0uYyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbnZtLmMKPiBpbmRleCBmZWUzN2E1
ODQ0Y2YuLmJhZDM3NGJkN2FiMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX252bS5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV9udm0uYwo+IEBAIC0xMTA2LDIyICsxMTA2LDYgQEAgZW51bSBpY2Vfc3RhdHVzIGljZV9u
dm1fd3JpdGVfYWN0aXZhdGUoc3RydWN0IGljZV9odyAqaHcsIHU4IGNtZF9mbGFncykKPiAgIAly
ZXR1cm4gaWNlX2FxX3NlbmRfY21kKGh3LCAmZGVzYywgTlVMTCwgMCwgTlVMTCk7Cj4gICB9Cj4g
ICAKPiAtLyoqCj4gLSAqIGljZV9hcV9udm1fdXBkYXRlX2VtcHIKPiAtICogQGh3OiBwb2ludGVy
IHRvIHRoZSBIVyBzdHJ1Y3QKPiAtICoKPiAtICogVXBkYXRlIGVtcHIgKDB4MDcwOSkuIFRoaXMg
Y29tbWFuZCBhbGxvd3MgU1cgdG8KPiAtICogcmVxdWVzdCBhbiBFTVBSIHRvIGFjdGl2YXRlIG5l
dyBGVy4KPiAtICovCj4gLWVudW0gaWNlX3N0YXR1cyBpY2VfYXFfbnZtX3VwZGF0ZV9lbXByKHN0
cnVjdCBpY2VfaHcgKmh3KQo+IC17Cj4gLQlzdHJ1Y3QgaWNlX2FxX2Rlc2MgZGVzYzsKPiAtCj4g
LQlpY2VfZmlsbF9kZmx0X2RpcmVjdF9jbWRfZGVzYygmZGVzYywgaWNlX2FxY19vcGNfbnZtX3Vw
ZGF0ZV9lbXByKTsKPiAtCj4gLQlyZXR1cm4gaWNlX2FxX3NlbmRfY21kKGh3LCAmZGVzYywgTlVM
TCwgMCwgTlVMTCk7Cj4gLX0KPiAtCj4gICAvKiBpY2VfbnZtX3NldF9wa2dfZGF0YQo+ICAgICog
QGh3OiBwb2ludGVyIHRvIHRoZSBIVyBzdHJ1Y3QKPiAgICAqIEBkZWxfcGtnX2RhdGFfZmxhZzog
SWYgaXMgc2V0IHRoZW4gdGhlIGN1cnJlbnQgcGtnX2RhdGEgc3RvcmUgYnkgRlcKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9udm0uaCBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbnZtLmgKPiBpbmRleCBjNmYwNWY0M2Q1OTMuLjky
NTIyNTkwNTQ5MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX252bS5oCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9udm0u
aAo+IEBAIC0zOSw3ICszOSw2IEBAIGVudW0gaWNlX3N0YXR1cwo+ICAgaWNlX2FxX2VyYXNlX252
bShzdHJ1Y3QgaWNlX2h3ICpodywgdTE2IG1vZHVsZV90eXBlaWQsIHN0cnVjdCBpY2Vfc3FfY2Qg
KmNkKTsKPiAgIGVudW0gaWNlX3N0YXR1cyBpY2VfbnZtX3ZhbGlkYXRlX2NoZWNrc3VtKHN0cnVj
dCBpY2VfaHcgKmh3KTsKPiAgIGVudW0gaWNlX3N0YXR1cyBpY2VfbnZtX3dyaXRlX2FjdGl2YXRl
KHN0cnVjdCBpY2VfaHcgKmh3LCB1OCBjbWRfZmxhZ3MpOwo+IC1lbnVtIGljZV9zdGF0dXMgaWNl
X2FxX252bV91cGRhdGVfZW1wcihzdHJ1Y3QgaWNlX2h3ICpodyk7Cj4gICBlbnVtIGljZV9zdGF0
dXMKPiAgIGljZV9udm1fc2V0X3BrZ19kYXRhKHN0cnVjdCBpY2VfaHcgKmh3LCBib29sIGRlbF9w
a2dfZGF0YV9mbGFnLCB1OCAqZGF0YSwKPiAgIAkJICAgICB1MTYgbGVuZ3RoLCBzdHJ1Y3QgaWNl
X3NxX2NkICpjZCk7Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2ly
ZWQtbGFuCg==
