Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1A61A8932
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2020 20:22:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6C70F22098;
	Tue, 14 Apr 2020 18:22:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F2VhD7iwsSR6; Tue, 14 Apr 2020 18:22:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AE11F220D6;
	Tue, 14 Apr 2020 18:22:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 752901BF45A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2020 16:25:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6F50583079
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2020 16:25:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BqUqo5JlL6R8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2020 16:25:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 347A283FA2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2020 16:25:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586881501;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yW8t58m2bp1NhazlqC7/k8J+nPWsrZBYDWUsjTyk2qQ=;
 b=NsgcQPq0gDRRzr+WCv6O+IejAhACeGf91UcZUch7xVIEkk4F0++6WsAKwkQ+6nkMoq/jD7
 lzSV3f1EuKP3Hxnp2JivHQcF6Vr/Z22M++foNVb8RdxR7eWsyL6QJbeO4NazIgQ9svAhXl
 7AFa78Hn9YCF68TMh9hKXOVlm2kXUcc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-87-m_CJjLwlPvyXxruKyZ4cKA-1; Tue, 14 Apr 2020 12:24:56 -0400
X-MC-Unique: m_CJjLwlPvyXxruKyZ4cKA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 12123107ACC4;
 Tue, 14 Apr 2020 16:24:50 +0000 (UTC)
Received: from llong.remote.csb (ovpn-118-173.rdu2.redhat.com [10.10.118.173])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0E02D118DEE;
 Tue, 14 Apr 2020 16:24:36 +0000 (UTC)
To: Christophe Leroy <christophe.leroy@c-s.fr>,
 Andrew Morton <akpm@linux-foundation.org>,
 David Howells <dhowells@redhat.com>,
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
 James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, Joe Perches
 <joe@perches.com>, Matthew Wilcox <willy@infradead.org>,
 David Rientjes <rientjes@google.com>
References: <20200413211550.8307-1-longman@redhat.com>
 <20200413222846.24240-1-longman@redhat.com>
 <eca85e0b-0af3-c43a-31e4-bd5c3f519798@c-s.fr>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <e194a51f-a5e5-a557-c008-b08cac558572@redhat.com>
Date: Tue, 14 Apr 2020 12:24:36 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <eca85e0b-0af3-c43a-31e4-bd5c3f519798@c-s.fr>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mailman-Approved-At: Tue, 14 Apr 2020 18:22:19 +0000
Subject: Re: [Intel-wired-lan] [PATCH v2 2/2] crypto: Remove unnecessary
 memzero_explicit()
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
Cc: samba-technical@lists.samba.org, virtualization@lists.linux-foundation.org,
 linux-mm@kvack.org, linux-sctp@vger.kernel.org, target-devel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, devel@driverdev.osuosl.org,
 linux-s390@vger.kernel.org, linux-scsi@vger.kernel.org, x86@kernel.org,
 kasan-dev@googlegroups.com, cocci@systeme.lip6.fr, linux-wpan@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-crypto@vger.kernel.org,
 linux-pm@vger.kernel.org, ecryptfs@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-cifs@vger.kernel.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, linux-security-module@vger.kernel.org,
 keyrings@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 wireguard@lists.zx2c4.com, linux-ppp@vger.kernel.org,
 linux-integrity@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNC8xNC8yMCAyOjA4IEFNLCBDaHJpc3RvcGhlIExlcm95IHdyb3RlOgo+Cj4KPiBMZSAxNC8w
NC8yMDIwIMOgIDAwOjI4LCBXYWltYW4gTG9uZyBhIMOpY3JpdMKgOgo+PiBTaW5jZSBrZnJlZV9z
ZW5zaXRpdmUoKSB3aWxsIGRvIGFuIGltcGxpY2l0IG1lbXplcm9fZXhwbGljaXQoKSwgdGhlcmUK
Pj4gaXMgbm8gbmVlZCB0byBjYWxsIG1lbXplcm9fZXhwbGljaXQoKSBiZWZvcmUgaXQuIEVsaW1p
bmF0ZSB0aG9zZQo+PiBtZW16ZXJvX2V4cGxpY2l0KCkgYW5kIHNpbXBsaWZ5IHRoZSBjYWxsIHNp
dGVzLiBGb3IgYmV0dGVyIGNvcnJlY3RuZXNzLAo+PiB0aGUgc2V0dGluZyBvZiBrZXlsZW4gaXMg
YWxzbyBtb3ZlZCBkb3duIGFmdGVyIHRoZSBrZXkgcG9pbnRlciBjaGVjay4KPj4KPj4gU2lnbmVk
LW9mZi1ieTogV2FpbWFuIExvbmcgPGxvbmdtYW5AcmVkaGF0LmNvbT4KPj4gLS0tCj4+IMKgIC4u
Li9hbGx3aW5uZXIvc3VuOGktY2Uvc3VuOGktY2UtY2lwaGVyLmPCoMKgwqDCoMKgIHwgMTkgKysr
KystLS0tLS0tLS0tLS0tCj4+IMKgIC4uLi9hbGx3aW5uZXIvc3VuOGktc3Mvc3VuOGktc3MtY2lw
aGVyLmPCoMKgwqDCoMKgIHwgMjAgKysrKystLS0tLS0tLS0tLS0tLQo+PiDCoCBkcml2ZXJzL2Ny
eXB0by9hbWxvZ2ljL2FtbG9naWMtZ3hsLWNpcGhlci5jwqDCoCB8IDEyICsrKy0tLS0tLS0tCj4+
IMKgIGRyaXZlcnMvY3J5cHRvL2luc2lkZS1zZWN1cmUvc2FmZXhjZWxfaGFzaC5jwqAgfMKgIDMg
Ky0tCj4+IMKgIDQgZmlsZXMgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgNDAgZGVsZXRpb25z
KC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2NyeXB0by9hbGx3aW5uZXIvc3VuOGktY2Uv
c3VuOGktY2UtY2lwaGVyLmMKPj4gYi9kcml2ZXJzL2NyeXB0by9hbGx3aW5uZXIvc3VuOGktY2Uv
c3VuOGktY2UtY2lwaGVyLmMKPj4gaW5kZXggYWE0ZThmZGMyYjMyLi44MzU4ZmFjOTg3MTkgMTAw
NjQ0Cj4+IC0tLSBhL2RyaXZlcnMvY3J5cHRvL2FsbHdpbm5lci9zdW44aS1jZS9zdW44aS1jZS1j
aXBoZXIuYwo+PiArKysgYi9kcml2ZXJzL2NyeXB0by9hbGx3aW5uZXIvc3VuOGktY2Uvc3VuOGkt
Y2UtY2lwaGVyLmMKPj4gQEAgLTM2NiwxMCArMzY2LDcgQEAgdm9pZCBzdW44aV9jZV9jaXBoZXJf
ZXhpdChzdHJ1Y3QgY3J5cHRvX3RmbSAqdGZtKQo+PiDCoCB7Cj4+IMKgwqDCoMKgwqAgc3RydWN0
IHN1bjhpX2NpcGhlcl90Zm1fY3R4ICpvcCA9IGNyeXB0b190Zm1fY3R4KHRmbSk7Cj4+IMKgIC3C
oMKgwqAgaWYgKG9wLT5rZXkpIHsKPj4gLcKgwqDCoMKgwqDCoMKgIG1lbXplcm9fZXhwbGljaXQo
b3AtPmtleSwgb3AtPmtleWxlbik7Cj4+IC3CoMKgwqDCoMKgwqDCoCBrZnJlZShvcC0+a2V5KTsK
Pj4gLcKgwqDCoCB9Cj4+ICvCoMKgwqAga2ZyZWVfc2Vuc2l0aXZlKG9wLT5rZXkpOwo+PiDCoMKg
wqDCoMKgIGNyeXB0b19mcmVlX3N5bmNfc2tjaXBoZXIob3AtPmZhbGxiYWNrX3RmbSk7Cj4+IMKg
wqDCoMKgwqAgcG1fcnVudGltZV9wdXRfc3luY19zdXNwZW5kKG9wLT5jZS0+ZGV2KTsKPj4gwqAg
fQo+PiBAQCAtMzkxLDE0ICszODgsMTEgQEAgaW50IHN1bjhpX2NlX2Flc19zZXRrZXkoc3RydWN0
IGNyeXB0b19za2NpcGhlcgo+PiAqdGZtLCBjb25zdCB1OCAqa2V5LAo+PiDCoMKgwqDCoMKgwqDC
oMKgwqAgZGV2X2RiZyhjZS0+ZGV2LCAiRVJST1I6IEludmFsaWQga2V5bGVuICV1XG4iLCBrZXls
ZW4pOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7Cj4+IMKgwqDCoMKgwqAg
fQo+PiAtwqDCoMKgIGlmIChvcC0+a2V5KSB7Cj4+IC3CoMKgwqDCoMKgwqDCoCBtZW16ZXJvX2V4
cGxpY2l0KG9wLT5rZXksIG9wLT5rZXlsZW4pOwo+PiAtwqDCoMKgwqDCoMKgwqAga2ZyZWUob3At
PmtleSk7Cj4+IC3CoMKgwqAgfQo+PiAtwqDCoMKgIG9wLT5rZXlsZW4gPSBrZXlsZW47Cj4+ICvC
oMKgwqAga2ZyZWVfc2Vuc2l0aXZlKG9wLT5rZXkpOwo+PiDCoMKgwqDCoMKgIG9wLT5rZXkgPSBr
bWVtZHVwKGtleSwga2V5bGVuLCBHRlBfS0VSTkVMIHwgR0ZQX0RNQSk7Cj4+IMKgwqDCoMKgwqAg
aWYgKCFvcC0+a2V5KQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FTk9NRU07Cj4+ICvC
oMKgwqAgb3AtPmtleWxlbiA9IGtleWxlbjsKPgo+IERvZXMgaXQgbWF0dGVyIGF0IGFsbCB0byBl
bnN1cmUgb3AtPmtleWxlbiBpcyBub3Qgc2V0IHdoZW4gb2YtPmtleSBpcwo+IE5VTEwgPyBJJ20g
bm90IHN1cmUuCj4KPiBCdXQgaWYgaXQgZG9lcywgdGhlbiBvcC0+a2V5bGVuIHNob3VsZCBiZSBz
ZXQgdG8gMCB3aGVuIGZyZWVpbmcgb3AtPmtleS4gCgpNeSB0aGlua2luZyBpcyB0aGF0IGlmIG1l
bW9yeSBhbGxvY2F0aW9uIGZhaWxzLCB3ZSBqdXN0IGRvbid0IHRvdWNoCmFueXRoaW5nIGFuZCBy
ZXR1cm4gYW4gZXJyb3IgY29kZS4gSSB3aWxsIG5vdCBleHBsaWNpdGx5IHNldCBrZXlsZW4gdG8g
MAppbiB0aGlzIGNhc2UgdW5sZXNzIGl0IGlzIHNwZWNpZmllZCBpbiB0aGUgQVBJIGRvY3VtZW50
YXRpb24uCgpDaGVlcnMsCkxvbmdtYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQt
bGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtd2lyZWQtbGFuCg==
