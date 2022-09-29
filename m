Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 31EBE5EF09C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Sep 2022 10:36:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D6EE6110E;
	Thu, 29 Sep 2022 08:36:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D6EE6110E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664440589;
	bh=HitPj8pZxCOpamwGbMr+NmVnW6SCGTvv8+X/kURSGVg=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tlzpcUfYa3KWdol/9M4G8NTJidbwHt5BpRf3wc2iH6d5ixztTympg3NaEdGyXbjIM
	 uPKHdua7a/By6wv5P8E7ZE/q/o5XSefxlxYpcVnsnnv7jOD8L7YzEOkNfKDXmhKHTN
	 mPUPhZIoVQQvZSnZGFqf2AcneOT6pckc7skTJV04blSLxUyB+XfWDBsVTeuIwLfqy/
	 HdfI0+y4x6ohRj49jK5NbPD1hAcqf6sX3WWjUEOhyXDBXcbosUXy92X5/TQkB8bOvT
	 t6e+/oj0IgjN7FPNPSHkQd2Nm+CNyOMuBKGyzwQvcCDWQsJqqwYK9sS1Wr1J5fo+Ln
	 ECG6x5kbiibuQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fs_PkSBu5GFs; Thu, 29 Sep 2022 08:36:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1667B60E2B;
	Thu, 29 Sep 2022 08:36:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1667B60E2B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 930441BF2FA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 08:36:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6C7958328E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 08:36:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C7958328E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CI_y36oWbbq8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Sep 2022 08:36:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5533383495
Received: from gandalf.ozlabs.org (mail.ozlabs.org
 [IPv6:2404:9400:2221:ea00::3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5533383495
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 08:36:21 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4MdRXW0Bs9z4xGG;
 Thu, 29 Sep 2022 18:36:11 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Kees Cook <keescook@chromium.org>, Geert Uytterhoeven
 <geert@linux-m68k.org>
In-Reply-To: <202209281011.66DD717D@keescook>
References: <20220923202822.2667581-1-keescook@chromium.org>
 <20220923202822.2667581-2-keescook@chromium.org>
 <CAMuHMdXK+UN1YVZm9DenuXAM8hZRUZJwp=SXsueP7sWiVU3a9A@mail.gmail.com>
 <202209281011.66DD717D@keescook>
Date: Thu, 29 Sep 2022 18:36:05 +1000
Message-ID: <874jwqfuh6.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ellerman.id.au; s=201909; t=1664440575;
 bh=Zm00l+zmqsCWLK3LqHtfXzxyyxS1KKRiDBtm93jjX9o=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=HvksgIIi1oeSL3sCDaWnCOeWcGonlpaPKJKiI3OtvAu+BHn2yjS8AR76e3Ton4Nmy
 +EG26HHK0KGq8vBvYX1EeVNsxcIp9mIU6us0cOvxy60zyQiQGRFQuv/txggXaNqN90
 ZKWhlWHVgkpzhtZMxMhIP2Bw8oAKyLOzGZWe9yuxbUXzVLSr62mIeEvbWCpkSHrZlO
 Twy98ZJlAAXDut/ui87OToN2gdrJMOcxFt0qGiH5Q17PEp3FYZEI4DXZJQ30tNXk1t
 9aFxJpinn/zEKI8MPHuL3gndj8LsbUTOOq0tZEPF560BHpeqU2OY2AdZ4ghD6NHw5p
 pKXBKh32qbh6A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=ellerman.id.au header.i=@ellerman.id.au
 header.a=rsa-sha256 header.s=201909 header.b=HvksgIIi
Subject: Re: [Intel-wired-lan] [PATCH v2 01/16] slab: Remove __malloc
 attribute from realloc functions
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
Cc: Roman Gushchin <roman.gushchin@linux.dev>, dri-devel@lists.freedesktop.org,
 "Ruhl, Michael J" <michael.j.ruhl@intel.com>,
 Eric Dumazet <edumazet@google.com>, linux-hardening@vger.kernel.org,
 Hyeonggon Yoo <42.hyeyoo@gmail.com>, Christoph Lameter <cl@linux.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, dev@openvswitch.org, x86@kernel.org,
 intel-wired-lan@lists.osuosl.org, David Rientjes <rientjes@google.com>,
 Miguel Ojeda <ojeda@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, linux-media@vger.kernel.org,
 Marco Elver <elver@google.com>, llvm@lists.linux.dev,
 Josef Bacik <josef@toxicpanda.com>, linaro-mm-sig@lists.linaro.org,
 Yonghong Song <yhs@fb.com>, David Sterba <dsterba@suse.com>,
 Andrew Morton <akpm@linux-foundation.org>, Vlastimil Babka <vbabka@suse.cz>,
 Alex Elder <elder@kernel.org>, linux-mm@kvack.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Christian =?utf-8?Q?K=C3=B6nig?= <christian.koenig@amd.com>,
 Pekka Enberg <penberg@kernel.org>, Daniel Micay <danielmicay@gmail.com>,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, "David
 S. Miller" <davem@davemloft.net>, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

S2VlcyBDb29rIDxrZWVzY29va0BjaHJvbWl1bS5vcmc+IHdyaXRlczoKPiBPbiBXZWQsIFNlcCAy
OCwgMjAyMiBhdCAwOToyNjoxNUFNICswMjAwLCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6Cj4+
IE9uIEZyaSwgU2VwIDIzLCAyMDIyIGF0IDEwOjM1IFBNIEtlZXMgQ29vayA8a2Vlc2Nvb2tAY2hy
b21pdW0ub3JnPiB3cm90ZToKPj4gPiBUaGUgX19tYWxsb2MgYXR0cmlidXRlIHNob3VsZCBub3Qg
YmUgYXBwbGllZCB0byAicmVhbGxvYyIgZnVuY3Rpb25zLCBhcwo+PiA+IHRoZSByZXR1cm5lZCBw
b2ludGVyIG1heSBhbGlhcyB0aGUgc3RvcmFnZSBvZiB0aGUgcHJpb3IgcG9pbnRlci4gSW5zdGVh
ZAo+PiA+IG9mIHNwbGl0dGluZyBfX21hbGxvYyBmcm9tIF9fYWxsb2Nfc2l6ZSwgd2hpY2ggd291
bGQgYmUgYSBodWdlIGFtb3VudCBvZgo+PiA+IGNodXJuLCBqdXN0IGNyZWF0ZSBfX3JlYWxsb2Nf
c2l6ZSBmb3IgdGhlIGZldyBjYXNlcyB3aGVyZSBpdCBpcyBuZWVkZWQuCj4+ID4KPj4gPiBBZGRp
dGlvbmFsbHkgcmVtb3ZlcyB0aGUgY29uZGl0aW9uYWwgdGVzdCBmb3IgX19hbGxvY19zaXplX18s
IHdoaWNoIGlzCj4+ID4gYWx3YXlzIGRlZmluZWQgbm93Lgo+PiA+Cj4+ID4gQ2M6IENocmlzdG9w
aCBMYW1ldGVyIDxjbEBsaW51eC5jb20+Cj4+ID4gQ2M6IFBla2thIEVuYmVyZyA8cGVuYmVyZ0Br
ZXJuZWwub3JnPgo+PiA+IENjOiBEYXZpZCBSaWVudGplcyA8cmllbnRqZXNAZ29vZ2xlLmNvbT4K
Pj4gPiBDYzogSm9vbnNvbyBLaW0gPGlhbWpvb25zb28ua2ltQGxnZS5jb20+Cj4+ID4gQ2M6IEFu
ZHJldyBNb3J0b24gPGFrcG1AbGludXgtZm91bmRhdGlvbi5vcmc+Cj4+ID4gQ2M6IFZsYXN0aW1p
bCBCYWJrYSA8dmJhYmthQHN1c2UuY3o+Cj4+ID4gQ2M6IFJvbWFuIEd1c2hjaGluIDxyb21hbi5n
dXNoY2hpbkBsaW51eC5kZXY+Cj4+ID4gQ2M6IEh5ZW9uZ2dvbiBZb28gPDQyLmh5ZXlvb0BnbWFp
bC5jb20+Cj4+ID4gQ2M6IE1hcmNvIEVsdmVyIDxlbHZlckBnb29nbGUuY29tPgo+PiA+IENjOiBs
aW51eC1tbUBrdmFjay5vcmcKPj4gPiBTaWduZWQtb2ZmLWJ5OiBLZWVzIENvb2sgPGtlZXNjb29r
QGNocm9taXVtLm9yZz4KPj4gCj4+IFRoYW5rcyBmb3IgeW91ciBwYXRjaCwgd2hpY2ggaXMgbm93
IGNvbW1pdCA2M2NhYTA0ZWM2MDU4M2IxICgic2xhYjoKPj4gUmVtb3ZlIF9fbWFsbG9jIGF0dHJp
YnV0ZSBmcm9tIHJlYWxsb2MgZnVuY3Rpb25zIikgaW4gbmV4dC0yMDIyMDkyNy4KPj4gCj4+IE5v
cmVwbHlAZWxsZXJtYW4uaWQuYXUgcmVwb3J0ZWQgYWxsIGdjYzgtYmFzZWQgYnVpbGRzIHRvIGZh
aWwKPj4gKGUuZy4gWzFdLCBtb3JlIGF0IFsyXSk6Cj4+IAo+PiAgICAgSW4gZmlsZSBpbmNsdWRl
ZCBmcm9tIDxjb21tYW5kLWxpbmU+Ogo+PiAgICAgLi9pbmNsdWRlL2xpbnV4L3BlcmNwdS5oOiBJ
biBmdW5jdGlvbiDigJhfX2FsbG9jX3Jlc2VydmVkX3BlcmNwdeKAmToKPj4gICAgIC4vLi9pbmNs
dWRlL2xpbnV4L2NvbXBpbGVyX3R5cGVzLmg6Mjc5OjMwOiBlcnJvcjogZXhwZWN0ZWQKPj4gZGVj
bGFyYXRpb24gc3BlY2lmaWVycyBiZWZvcmUg4oCYX19hbGxvY19zaXplX1/igJkKPj4gICAgICAj
ZGVmaW5lIF9fYWxsb2Nfc2l6ZSh4LCAuLi4pIF9fYWxsb2Nfc2l6ZV9fKHgsICMjIF9fVkFfQVJH
U19fKSBfX21hbGxvYwo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+
fn5+fn5+fn4KPj4gICAgIC4vaW5jbHVkZS9saW51eC9wZXJjcHUuaDoxMjA6NzQ6IG5vdGU6IGlu
IGV4cGFuc2lvbiBvZiBtYWNybyDigJhfX2FsbG9jX3NpemXigJkKPj4gICAgIFsuLi5dCj4+IAo+
PiBJdCdzIGJ1aWxkaW5nIGZpbmUgd2l0aCBlLmcuIGdjYy05ICh3aGljaCBpcyBteSB1c3VhbCBt
NjhrIGNyb3NzLWNvbXBpbGVyKS4KPj4gUmV2ZXJ0aW5nIHRoaXMgY29tbWl0IG9uIG5leHQtMjAy
MjA5MjcgZml4ZXMgdGhlIGlzc3VlLgo+PiAKPj4gWzFdIGh0dHA6Ly9raXNza2IuZWxsZXJtYW4u
aWQuYXUva2lzc2tiL2J1aWxkcmVzdWx0LzE0ODAzOTA4Lwo+PiBbMl0gaHR0cDovL2tpc3NrYi5l
bGxlcm1hbi5pZC5hdS9raXNza2IvaGVhZC8xYmQ4Yjc1ZmU2YWRlYWE4OWQwMjk2OGJkZDgxMWZm
ZTcwOGNmODM5Lwo+Cj4gRWVrISBUaGFua3MgZm9yIGxldHRpbmcgbWUga25vdy4gSSdtIGNvbmZ1
c2VkIGFib3V0IHRoaXMgLS0KPiBfX2FsbG9jX3NpemVfXyB3YXNuJ3Qgb3B0aW9uYWwgaW4gY29t
cGlsZXJfYXR0cmlidXRlcy5oIC0tIGJ1dCBvYnZpb3VzbHkKPiBJIGJyb2tlIHNvbWV0aGluZyEg
SSdsbCBnbyBmaWd1cmUgdGhpcyBvdXQuCgpUaGlzIGZpeGVzIGl0IGZvciBtZS4KCmNoZWVycwoK
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvY29tcGlsZXJfdHlwZXMuaCBiL2luY2x1ZGUvbGlu
dXgvY29tcGlsZXJfdHlwZXMuaAppbmRleCBmMTQxYTZmNmI5ZjYuLjA3MTc1MzRmODM2NCAxMDA2
NDQKLS0tIGEvaW5jbHVkZS9saW51eC9jb21waWxlcl90eXBlcy5oCisrKyBiL2luY2x1ZGUvbGlu
dXgvY29tcGlsZXJfdHlwZXMuaApAQCAtMjc1LDggKzI3NSwxMyBAQCBzdHJ1Y3QgZnRyYWNlX2xp
a2VseV9kYXRhIHsKICAqIGJlIHBlcmZvcm1pbmcgYSBfcmVhbGxvY2F0aW9uXywgYXMgdGhhdCBt
YXkgYWxpYXMgdGhlIGV4aXN0aW5nIHBvaW50ZXIuCiAgKiBGb3IgdGhlc2UsIHVzZSBfX3JlYWxs
b2Nfc2l6ZSgpLgogICovCi0jZGVmaW5lIF9fYWxsb2Nfc2l6ZSh4LCAuLi4pCV9fYWxsb2Nfc2l6
ZV9fKHgsICMjIF9fVkFfQVJHU19fKSBfX21hbGxvYwotI2RlZmluZSBfX3JlYWxsb2Nfc2l6ZSh4
LCAuLi4pCV9fYWxsb2Nfc2l6ZV9fKHgsICMjIF9fVkFfQVJHU19fKQorI2lmZGVmIF9fYWxsb2Nf
c2l6ZV9fCisjIGRlZmluZSBfX2FsbG9jX3NpemUoeCwgLi4uKQlfX2FsbG9jX3NpemVfXyh4LCAj
IyBfX1ZBX0FSR1NfXykgX19tYWxsb2MKKyMgZGVmaW5lIF9fcmVhbGxvY19zaXplKHgsIC4uLikJ
X19hbGxvY19zaXplX18oeCwgIyMgX19WQV9BUkdTX18pCisjZWxzZQorIyBkZWZpbmUgX19hbGxv
Y19zaXplKHgsIC4uLikJX19tYWxsb2MKKyMgZGVmaW5lIF9fcmVhbGxvY19zaXplKHgsIC4uLikK
KyNlbmRpZgogCiAjaWZuZGVmIGFzbV92b2xhdGlsZV9nb3RvCiAjZGVmaW5lIGFzbV92b2xhdGls
ZV9nb3RvKHguLi4pIGFzbSBnb3RvKHgpCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQt
bGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtd2lyZWQtbGFuCg==
