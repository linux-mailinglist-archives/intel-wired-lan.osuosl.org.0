Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 110775308A5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 May 2022 07:24:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8165283F76;
	Mon, 23 May 2022 05:24:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uTTUVZnlf20l; Mon, 23 May 2022 05:24:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 744A483F6C;
	Mon, 23 May 2022 05:24:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 020381BF3C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 May 2022 05:24:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E22C141869
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 May 2022 05:24:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FxLFE423Wskk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 May 2022 05:24:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E8C874174F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 May 2022 05:24:40 +0000 (UTC)
Received: from [192.168.0.6] (ip5f5aedde.dynamic.kabel-deutschland.de
 [95.90.237.222])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 4D2C061EA1928;
 Mon, 23 May 2022 07:24:37 +0200 (CEST)
Message-ID: <71292e14-fe6c-f475-009d-1ea8cde0ea46@molgen.mpg.de>
Date: Mon, 23 May 2022 07:24:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Julia Lawall <Julia.Lawall@inria.fr>
References: <20220521111145.81697-50-Julia.Lawall@inria.fr>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220521111145.81697-50-Julia.Lawall@inria.fr>
Subject: Re: [Intel-wired-lan] [PATCH] drivers/net/ethernet/intel: fix typos
 in comments
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
Cc: netdev@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBKdWxpYSwKCgpUaGFuayB5b3UgZm9yIHlvdXIgcGF0Y2guCgpJIG5vdGljZWQsIHRoYXQg
dGhlIG1haW50YWluZXIgVG9ueSB3YXNu4oCZdCBpbiB0aGUgQ2M6IGxpc3QuCgpBbSAyMS4wNS4y
MiB1bSAxMzoxMSBzY2hyaWViIEp1bGlhIExhd2FsbDoKPiBTcGVsbGluZyBtaXN0YWtlcyAodHJp
cGxlIGxldHRlcnMpIGluIGNvbW1lbnRzLgo+IERldGVjdGVkIHdpdGggdGhlIGhlbHAgb2YgQ29j
Y2luZWxsZS4KCknigJlkIGJlIGludGVyZXN0ZWQgaW4gdGhlIHNjcmlwdCB5b3UgdXNlZC4KCj4g
Cj4gU2lnbmVkLW9mZi1ieTogSnVsaWEgTGF3YWxsIDxKdWxpYS5MYXdhbGxAaW5yaWEuZnI+Cj4g
CgpOaXQ6IE9uZSB1bm5lZWRlZCBibGFuayBsaW5lLgoKPiAtLS0KPiAgIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ZtMTBrL2ZtMTBrX21ieC5jICAgfCAgICAyICstCj4gICBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xpYi5jICAgICAgIHwgICAgMiArLQo+ICAgZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfc3Jpb3YuYyB8ICAgIDIgKy0KPiAgIDMg
ZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9mbTEway9mbTEwa19tYnguYyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ZtMTBrL2ZtMTBrX21ieC5jCj4gaW5kZXggMzBjYTll
ZTE5MDBiLi5mMmZiYTZlMWQwZjcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvZm0xMGsvZm0xMGtfbWJ4LmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9mbTEway9mbTEwa19tYnguYwo+IEBAIC0xODI1LDcgKzE4MjUsNyBAQCBzdGF0aWMgdm9pZCBm
bTEwa19zbV9tYnhfcHJvY2Vzc19lcnJvcihzdHJ1Y3QgZm0xMGtfbWJ4X2luZm8gKm1ieCkKPiAg
IAkJZm0xMGtfc21fbWJ4X2Nvbm5lY3RfcmVzZXQobWJ4KTsKPiAgIAkJYnJlYWs7Cj4gICAJY2Fz
ZSBGTTEwS19TVEFURV9DT05ORUNUOgo+IC0JCS8qIHRyeSBjb25ubmVjdGluZyBhdCBsb3dlciB2
ZXJzaW9uICovCj4gKwkJLyogdHJ5IGNvbm5lY3RpbmcgYXQgbG93ZXIgdmVyc2lvbiAqLwo+ICAg
CQlpZiAobWJ4LT5yZW1vdGUpIHsKPiAgIAkJCXdoaWxlIChtYngtPmxvY2FsID4gMSkKPiAgIAkJ
CQltYngtPmxvY2FsLS07Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2VfbGliLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xpYi5j
Cj4gaW5kZXggNDU0ZTAxYWUwOWI5Li43MDk2MWMwMzQzZTcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9saWIuYwo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfbGliLmMKPiBAQCAtMjQwMyw3ICsyNDAzLDcgQEAgc3RhdGlj
IHZvaWQgaWNlX3NldF9hZ2dfdnNpKHN0cnVjdCBpY2VfdnNpICp2c2kpCj4gICAJCQkJYWdnX2lk
KTsKPiAgIAkJCXJldHVybjsKPiAgIAkJfQo+IC0JCS8qIGFnZ3JlZ2F0b3Igbm9kZSBpcyBjcmVh
dGVkLCBzdG9yZSB0aGUgbmVlZWRlZCBpbmZvICovCj4gKwkJLyogYWdncmVnYXRvciBub2RlIGlz
IGNyZWF0ZWQsIHN0b3JlIHRoZSBuZWVkZWQgaW5mbyAqLwo+ICAgCQlhZ2dfbm9kZS0+dmFsaWQg
PSB0cnVlOwo+ICAgCQlhZ2dfbm9kZS0+YWdnX2lkID0gYWdnX2lkOwo+ICAgCX0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfc3Jpb3YuYyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3NyaW92LmMKPiBpbmRleCAzZTc0
YWI4Mjg2OGIuLjNmNWVmNTI2OWJiMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9peGdiZS9peGdiZV9zcmlvdi5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaXhnYmUvaXhnYmVfc3Jpb3YuYwo+IEBAIC03Nyw3ICs3Nyw3IEBAIHN0YXRpYyBpbnQg
X19peGdiZV9lbmFibGVfc3Jpb3Yoc3RydWN0IGl4Z2JlX2FkYXB0ZXIgKmFkYXB0ZXIsCj4gICAJ
SVhHQkVfV1JJVEVfUkVHKGh3LCBJWEdCRV9QRkRUWEdTV0MsIElYR0JFX1BGRFRYR1NXQ19WVF9M
QkVOKTsKPiAgIAlhZGFwdGVyLT5icmlkZ2VfbW9kZSA9IEJSSURHRV9NT0RFX1ZFQjsKPiAgIAo+
IC0JLyogbGltaXQgdHJhZmZmaWMgY2xhc3NlcyBiYXNlZCBvbiBWRnMgZW5hYmxlZCAqLwo+ICsJ
LyogbGltaXQgdHJhZmZpYyBjbGFzc2VzIGJhc2VkIG9uIFZGcyBlbmFibGVkICovCj4gICAJaWYg
KChhZGFwdGVyLT5ody5tYWMudHlwZSA9PSBpeGdiZV9tYWNfODI1OTlFQikgJiYgKG51bV92ZnMg
PCAxNikpIHsKPiAgIAkJYWRhcHRlci0+ZGNiX2NmZy5udW1fdGNzLnBnX3RjcyA9IE1BWF9UUkFG
RklDX0NMQVNTOwo+ICAgCQlhZGFwdGVyLT5kY2JfY2ZnLm51bV90Y3MucGZjX3RjcyA9IE1BWF9U
UkFGRklDX0NMQVNTOwoKUmV2aWV3ZWQtYnk6IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5t
cGcuZGU+CgoKS2luZCByZWdhcmRzLAoKUGF1bApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdp
cmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLXdpcmVkLWxhbgo=
