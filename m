Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A743D1A8922
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2020 20:21:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3D2C685D92;
	Tue, 14 Apr 2020 18:21:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XJaxnIMeEpy9; Tue, 14 Apr 2020 18:21:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9D67385D7D;
	Tue, 14 Apr 2020 18:21:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8E9C91BF30D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2020 06:20:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8313287AFE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2020 06:20:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3IduhR8IXKyI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2020 06:20:49 +0000 (UTC)
X-Greylist: delayed 00:12:13 by SQLgrey-1.7.6
Received: from pegase1.c-s.fr (pegase1.c-s.fr [93.17.236.30])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9884D877E6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2020 06:20:49 +0000 (UTC)
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 491Zmc64yLz9txkH;
 Tue, 14 Apr 2020 08:08:32 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=swLCNyX7; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id 4yni2YpdXT3P; Tue, 14 Apr 2020 08:08:32 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 491Zmc4L0Rz9txkG;
 Tue, 14 Apr 2020 08:08:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1586844512; bh=AyML/oaUiIiNPJKHTIdsIrbz6fYQpNyy/73cMAJtVGI=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=swLCNyX719PsbdWXJyAjua3tpVkuZHN/PgaRAzIUI6j3FuSDm374UPnlGZYSrGzxT
 ndt6dm09KOl8ksmzmfqqYKRuIRIOuM5gK03jv/9oM2sodvHG7ZsAdW0K43bNG1m7AR
 C9uF0GCYNnsgDDdT0CCsxA/cfFfbv77mzxAhptqM=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 5B4A48B77D;
 Tue, 14 Apr 2020 08:08:33 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id IsbJC8uJ2iOV; Tue, 14 Apr 2020 08:08:33 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 997728B752;
 Tue, 14 Apr 2020 08:08:30 +0200 (CEST)
To: Waiman Long <longman@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 David Howells <dhowells@redhat.com>,
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
 James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, Joe Perches
 <joe@perches.com>, Matthew Wilcox <willy@infradead.org>,
 David Rientjes <rientjes@google.com>
References: <20200413211550.8307-1-longman@redhat.com>
 <20200413222846.24240-1-longman@redhat.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <eca85e0b-0af3-c43a-31e4-bd5c3f519798@c-s.fr>
Date: Tue, 14 Apr 2020 08:08:22 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200413222846.24240-1-longman@redhat.com>
Content-Language: fr
X-Mailman-Approved-At: Tue, 14 Apr 2020 18:21:11 +0000
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpMZSAxNC8wNC8yMDIwIMOgIDAwOjI4LCBXYWltYW4gTG9uZyBhIMOpY3JpdMKgOgo+IFNpbmNl
IGtmcmVlX3NlbnNpdGl2ZSgpIHdpbGwgZG8gYW4gaW1wbGljaXQgbWVtemVyb19leHBsaWNpdCgp
LCB0aGVyZQo+IGlzIG5vIG5lZWQgdG8gY2FsbCBtZW16ZXJvX2V4cGxpY2l0KCkgYmVmb3JlIGl0
LiBFbGltaW5hdGUgdGhvc2UKPiBtZW16ZXJvX2V4cGxpY2l0KCkgYW5kIHNpbXBsaWZ5IHRoZSBj
YWxsIHNpdGVzLiBGb3IgYmV0dGVyIGNvcnJlY3RuZXNzLAo+IHRoZSBzZXR0aW5nIG9mIGtleWxl
biBpcyBhbHNvIG1vdmVkIGRvd24gYWZ0ZXIgdGhlIGtleSBwb2ludGVyIGNoZWNrLgo+IAo+IFNp
Z25lZC1vZmYtYnk6IFdhaW1hbiBMb25nIDxsb25nbWFuQHJlZGhhdC5jb20+Cj4gLS0tCj4gICAu
Li4vYWxsd2lubmVyL3N1bjhpLWNlL3N1bjhpLWNlLWNpcGhlci5jICAgICAgfCAxOSArKysrKy0t
LS0tLS0tLS0tLS0KPiAgIC4uLi9hbGx3aW5uZXIvc3VuOGktc3Mvc3VuOGktc3MtY2lwaGVyLmMg
ICAgICB8IDIwICsrKysrLS0tLS0tLS0tLS0tLS0KPiAgIGRyaXZlcnMvY3J5cHRvL2FtbG9naWMv
YW1sb2dpYy1neGwtY2lwaGVyLmMgICB8IDEyICsrKy0tLS0tLS0tCj4gICBkcml2ZXJzL2NyeXB0
by9pbnNpZGUtc2VjdXJlL3NhZmV4Y2VsX2hhc2guYyAgfCAgMyArLS0KPiAgIDQgZmlsZXMgY2hh
bmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgNDAgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvY3J5cHRvL2FsbHdpbm5lci9zdW44aS1jZS9zdW44aS1jZS1jaXBoZXIuYyBiL2Ry
aXZlcnMvY3J5cHRvL2FsbHdpbm5lci9zdW44aS1jZS9zdW44aS1jZS1jaXBoZXIuYwo+IGluZGV4
IGFhNGU4ZmRjMmIzMi4uODM1OGZhYzk4NzE5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvY3J5cHRv
L2FsbHdpbm5lci9zdW44aS1jZS9zdW44aS1jZS1jaXBoZXIuYwo+ICsrKyBiL2RyaXZlcnMvY3J5
cHRvL2FsbHdpbm5lci9zdW44aS1jZS9zdW44aS1jZS1jaXBoZXIuYwo+IEBAIC0zNjYsMTAgKzM2
Niw3IEBAIHZvaWQgc3VuOGlfY2VfY2lwaGVyX2V4aXQoc3RydWN0IGNyeXB0b190Zm0gKnRmbSkK
PiAgIHsKPiAgIAlzdHJ1Y3Qgc3VuOGlfY2lwaGVyX3RmbV9jdHggKm9wID0gY3J5cHRvX3RmbV9j
dHgodGZtKTsKPiAgIAo+IC0JaWYgKG9wLT5rZXkpIHsKPiAtCQltZW16ZXJvX2V4cGxpY2l0KG9w
LT5rZXksIG9wLT5rZXlsZW4pOwo+IC0JCWtmcmVlKG9wLT5rZXkpOwo+IC0JfQo+ICsJa2ZyZWVf
c2Vuc2l0aXZlKG9wLT5rZXkpOwo+ICAgCWNyeXB0b19mcmVlX3N5bmNfc2tjaXBoZXIob3AtPmZh
bGxiYWNrX3RmbSk7Cj4gICAJcG1fcnVudGltZV9wdXRfc3luY19zdXNwZW5kKG9wLT5jZS0+ZGV2
KTsKPiAgIH0KPiBAQCAtMzkxLDE0ICszODgsMTEgQEAgaW50IHN1bjhpX2NlX2Flc19zZXRrZXko
c3RydWN0IGNyeXB0b19za2NpcGhlciAqdGZtLCBjb25zdCB1OCAqa2V5LAo+ICAgCQlkZXZfZGJn
KGNlLT5kZXYsICJFUlJPUjogSW52YWxpZCBrZXlsZW4gJXVcbiIsIGtleWxlbik7Cj4gICAJCXJl
dHVybiAtRUlOVkFMOwo+ICAgCX0KPiAtCWlmIChvcC0+a2V5KSB7Cj4gLQkJbWVtemVyb19leHBs
aWNpdChvcC0+a2V5LCBvcC0+a2V5bGVuKTsKPiAtCQlrZnJlZShvcC0+a2V5KTsKPiAtCX0KPiAt
CW9wLT5rZXlsZW4gPSBrZXlsZW47Cj4gKwlrZnJlZV9zZW5zaXRpdmUob3AtPmtleSk7Cj4gICAJ
b3AtPmtleSA9IGttZW1kdXAoa2V5LCBrZXlsZW4sIEdGUF9LRVJORUwgfCBHRlBfRE1BKTsKPiAg
IAlpZiAoIW9wLT5rZXkpCj4gICAJCXJldHVybiAtRU5PTUVNOwo+ICsJb3AtPmtleWxlbiA9IGtl
eWxlbjsKCkRvZXMgaXQgbWF0dGVyIGF0IGFsbCB0byBlbnN1cmUgb3AtPmtleWxlbiBpcyBub3Qg
c2V0IHdoZW4gb2YtPmtleSBpcyAKTlVMTCA/IEknbSBub3Qgc3VyZS4KCkJ1dCBpZiBpdCBkb2Vz
LCB0aGVuIG9wLT5rZXlsZW4gc2hvdWxkIGJlIHNldCB0byAwIHdoZW4gZnJlZWluZyBvcC0+a2V5
LgoKPiAgIAo+ICAgCWNyeXB0b19zeW5jX3NrY2lwaGVyX2NsZWFyX2ZsYWdzKG9wLT5mYWxsYmFj
a190Zm0sIENSWVBUT19URk1fUkVRX01BU0spOwo+ICAgCWNyeXB0b19zeW5jX3NrY2lwaGVyX3Nl
dF9mbGFncyhvcC0+ZmFsbGJhY2tfdGZtLCB0Zm0tPmJhc2UuY3J0X2ZsYWdzICYgQ1JZUFRPX1RG
TV9SRVFfTUFTSyk7Cj4gQEAgLTQxNiwxNCArNDEwLDExIEBAIGludCBzdW44aV9jZV9kZXMzX3Nl
dGtleShzdHJ1Y3QgY3J5cHRvX3NrY2lwaGVyICp0Zm0sIGNvbnN0IHU4ICprZXksCj4gICAJaWYg
KGVycikKPiAgIAkJcmV0dXJuIGVycjsKPiAgIAo+IC0JaWYgKG9wLT5rZXkpIHsKPiAtCQltZW16
ZXJvX2V4cGxpY2l0KG9wLT5rZXksIG9wLT5rZXlsZW4pOwo+IC0JCWtmcmVlKG9wLT5rZXkpOwo+
IC0JfQo+IC0Jb3AtPmtleWxlbiA9IGtleWxlbjsKPiArCWtmcmVlX3NlbnNpdGl2ZShvcC0+a2V5
KTsKPiAgIAlvcC0+a2V5ID0ga21lbWR1cChrZXksIGtleWxlbiwgR0ZQX0tFUk5FTCB8IEdGUF9E
TUEpOwo+ICAgCWlmICghb3AtPmtleSkKPiAgIAkJcmV0dXJuIC1FTk9NRU07Cj4gKwlvcC0+a2V5
bGVuID0ga2V5bGVuOwoKU2FtZSBjb21tZW50IGFzIGFib3ZlLgoKPiAgIAo+ICAgCWNyeXB0b19z
eW5jX3NrY2lwaGVyX2NsZWFyX2ZsYWdzKG9wLT5mYWxsYmFja190Zm0sIENSWVBUT19URk1fUkVR
X01BU0spOwo+ICAgCWNyeXB0b19zeW5jX3NrY2lwaGVyX3NldF9mbGFncyhvcC0+ZmFsbGJhY2tf
dGZtLCB0Zm0tPmJhc2UuY3J0X2ZsYWdzICYgQ1JZUFRPX1RGTV9SRVFfTUFTSyk7Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvY3J5cHRvL2FsbHdpbm5lci9zdW44aS1zcy9zdW44aS1zcy1jaXBoZXIu
YyBiL2RyaXZlcnMvY3J5cHRvL2FsbHdpbm5lci9zdW44aS1zcy9zdW44aS1zcy1jaXBoZXIuYwo+
IGluZGV4IDUyNDZlZjRmNTQzMC4uMDQ5NWZiYzI3ZmNjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Y3J5cHRvL2FsbHdpbm5lci9zdW44aS1zcy9zdW44aS1zcy1jaXBoZXIuYwo+ICsrKyBiL2RyaXZl
cnMvY3J5cHRvL2FsbHdpbm5lci9zdW44aS1zcy9zdW44aS1zcy1jaXBoZXIuYwo+IEBAIC0yNDks
NyArMjQ5LDYgQEAgc3RhdGljIGludCBzdW44aV9zc19jaXBoZXIoc3RydWN0IHNrY2lwaGVyX3Jl
cXVlc3QgKmFyZXEpCj4gICAJCQlvZmZzZXQgPSBhcmVxLT5jcnlwdGxlbiAtIGl2c2l6ZTsKPiAg
IAkJCWlmIChyY3R4LT5vcF9kaXIgJiBTU19ERUNSWVBUSU9OKSB7Cj4gICAJCQkJbWVtY3B5KGFy
ZXEtPml2LCBiYWNrdXBfaXYsIGl2c2l6ZSk7Cj4gLQkJCQltZW16ZXJvX2V4cGxpY2l0KGJhY2t1
cF9pdiwgaXZzaXplKTsKPiAgIAkJCQlrZnJlZV9zZW5zaXRpdmUoYmFja3VwX2l2KTsKPiAgIAkJ
CX0gZWxzZSB7Cj4gICAJCQkJc2NhdHRlcndhbGtfbWFwX2FuZF9jb3B5KGFyZXEtPml2LCBhcmVx
LT5kc3QsIG9mZnNldCwKPiBAQCAtMzY3LDEwICszNjYsNyBAQCB2b2lkIHN1bjhpX3NzX2NpcGhl
cl9leGl0KHN0cnVjdCBjcnlwdG9fdGZtICp0Zm0pCj4gICB7Cj4gICAJc3RydWN0IHN1bjhpX2Np
cGhlcl90Zm1fY3R4ICpvcCA9IGNyeXB0b190Zm1fY3R4KHRmbSk7Cj4gICAKPiAtCWlmIChvcC0+
a2V5KSB7Cj4gLQkJbWVtemVyb19leHBsaWNpdChvcC0+a2V5LCBvcC0+a2V5bGVuKTsKPiAtCQlr
ZnJlZShvcC0+a2V5KTsKPiAtCX0KPiArCWtmcmVlX3NlbnNpdGl2ZShvcC0+a2V5KTsKPiAgIAlj
cnlwdG9fZnJlZV9zeW5jX3NrY2lwaGVyKG9wLT5mYWxsYmFja190Zm0pOwo+ICAgCXBtX3J1bnRp
bWVfcHV0X3N5bmMob3AtPnNzLT5kZXYpOwo+ICAgfQo+IEBAIC0zOTIsMTQgKzM4OCwxMSBAQCBp
bnQgc3VuOGlfc3NfYWVzX3NldGtleShzdHJ1Y3QgY3J5cHRvX3NrY2lwaGVyICp0Zm0sIGNvbnN0
IHU4ICprZXksCj4gICAJCWRldl9kYmcoc3MtPmRldiwgIkVSUk9SOiBJbnZhbGlkIGtleWxlbiAl
dVxuIiwga2V5bGVuKTsKPiAgIAkJcmV0dXJuIC1FSU5WQUw7Cj4gICAJfQo+IC0JaWYgKG9wLT5r
ZXkpIHsKPiAtCQltZW16ZXJvX2V4cGxpY2l0KG9wLT5rZXksIG9wLT5rZXlsZW4pOwo+IC0JCWtm
cmVlKG9wLT5rZXkpOwo+IC0JfQo+IC0Jb3AtPmtleWxlbiA9IGtleWxlbjsKPiArCWtmcmVlX3Nl
bnNpdGl2ZShvcC0+a2V5KTsKPiAgIAlvcC0+a2V5ID0ga21lbWR1cChrZXksIGtleWxlbiwgR0ZQ
X0tFUk5FTCB8IEdGUF9ETUEpOwo+ICAgCWlmICghb3AtPmtleSkKPiAgIAkJcmV0dXJuIC1FTk9N
RU07Cj4gKwlvcC0+a2V5bGVuID0ga2V5bGVuOwoKU2FtZSBjb21tZW50IGFzIGFib3ZlLgoKPiAg
IAo+ICAgCWNyeXB0b19zeW5jX3NrY2lwaGVyX2NsZWFyX2ZsYWdzKG9wLT5mYWxsYmFja190Zm0s
IENSWVBUT19URk1fUkVRX01BU0spOwo+ICAgCWNyeXB0b19zeW5jX3NrY2lwaGVyX3NldF9mbGFn
cyhvcC0+ZmFsbGJhY2tfdGZtLCB0Zm0tPmJhc2UuY3J0X2ZsYWdzICYgQ1JZUFRPX1RGTV9SRVFf
TUFTSyk7Cj4gQEAgLTQxOCwxNCArNDExLDExIEBAIGludCBzdW44aV9zc19kZXMzX3NldGtleShz
dHJ1Y3QgY3J5cHRvX3NrY2lwaGVyICp0Zm0sIGNvbnN0IHU4ICprZXksCj4gICAJCXJldHVybiAt
RUlOVkFMOwo+ICAgCX0KPiAgIAo+IC0JaWYgKG9wLT5rZXkpIHsKPiAtCQltZW16ZXJvX2V4cGxp
Y2l0KG9wLT5rZXksIG9wLT5rZXlsZW4pOwo+IC0JCWtmcmVlKG9wLT5rZXkpOwo+IC0JfQo+IC0J
b3AtPmtleWxlbiA9IGtleWxlbjsKPiArCWtmcmVlX3NlbnNpdGl2ZShvcC0+a2V5KTsKPiAgIAlv
cC0+a2V5ID0ga21lbWR1cChrZXksIGtleWxlbiwgR0ZQX0tFUk5FTCB8IEdGUF9ETUEpOwo+ICAg
CWlmICghb3AtPmtleSkKPiAgIAkJcmV0dXJuIC1FTk9NRU07Cj4gKwlvcC0+a2V5bGVuID0ga2V5
bGVuOwoKU2FtZSBjb21tZW50IGFzIGFib3ZlLgoKPiAgIAo+ICAgCWNyeXB0b19zeW5jX3NrY2lw
aGVyX2NsZWFyX2ZsYWdzKG9wLT5mYWxsYmFja190Zm0sIENSWVBUT19URk1fUkVRX01BU0spOwo+
ICAgCWNyeXB0b19zeW5jX3NrY2lwaGVyX3NldF9mbGFncyhvcC0+ZmFsbGJhY2tfdGZtLCB0Zm0t
PmJhc2UuY3J0X2ZsYWdzICYgQ1JZUFRPX1RGTV9SRVFfTUFTSyk7Cj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvY3J5cHRvL2FtbG9naWMvYW1sb2dpYy1neGwtY2lwaGVyLmMgYi9kcml2ZXJzL2NyeXB0
by9hbWxvZ2ljL2FtbG9naWMtZ3hsLWNpcGhlci5jCj4gaW5kZXggZmQxMjY5OTAwZDY3Li42YWE5
Y2U3YmJiZDQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9jcnlwdG8vYW1sb2dpYy9hbWxvZ2ljLWd4
bC1jaXBoZXIuYwo+ICsrKyBiL2RyaXZlcnMvY3J5cHRvL2FtbG9naWMvYW1sb2dpYy1neGwtY2lw
aGVyLmMKPiBAQCAtMzQxLDEwICszNDEsNyBAQCB2b2lkIG1lc29uX2NpcGhlcl9leGl0KHN0cnVj
dCBjcnlwdG9fdGZtICp0Zm0pCj4gICB7Cj4gICAJc3RydWN0IG1lc29uX2NpcGhlcl90Zm1fY3R4
ICpvcCA9IGNyeXB0b190Zm1fY3R4KHRmbSk7Cj4gICAKPiAtCWlmIChvcC0+a2V5KSB7Cj4gLQkJ
bWVtemVyb19leHBsaWNpdChvcC0+a2V5LCBvcC0+a2V5bGVuKTsKPiAtCQlrZnJlZShvcC0+a2V5
KTsKPiAtCX0KPiArCWtmcmVlX3NlbnNpdGl2ZShvcC0+a2V5KTsKPiAgIAljcnlwdG9fZnJlZV9z
eW5jX3NrY2lwaGVyKG9wLT5mYWxsYmFja190Zm0pOwo+ICAgfQo+ICAgCj4gQEAgLTM2OCwxNCAr
MzY1LDExIEBAIGludCBtZXNvbl9hZXNfc2V0a2V5KHN0cnVjdCBjcnlwdG9fc2tjaXBoZXIgKnRm
bSwgY29uc3QgdTggKmtleSwKPiAgIAkJZGV2X2RiZyhtYy0+ZGV2LCAiRVJST1I6IEludmFsaWQg
a2V5bGVuICV1XG4iLCBrZXlsZW4pOwo+ICAgCQlyZXR1cm4gLUVJTlZBTDsKPiAgIAl9Cj4gLQlp
ZiAob3AtPmtleSkgewo+IC0JCW1lbXplcm9fZXhwbGljaXQob3AtPmtleSwgb3AtPmtleWxlbik7
Cj4gLQkJa2ZyZWUob3AtPmtleSk7Cj4gLQl9Cj4gLQlvcC0+a2V5bGVuID0ga2V5bGVuOwo+ICsJ
a2ZyZWVfc2Vuc2l0aXZlKG9wLT5rZXkpOwo+ICAgCW9wLT5rZXkgPSBrbWVtZHVwKGtleSwga2V5
bGVuLCBHRlBfS0VSTkVMIHwgR0ZQX0RNQSk7Cj4gICAJaWYgKCFvcC0+a2V5KQo+ICAgCQlyZXR1
cm4gLUVOT01FTTsKPiArCW9wLT5rZXlsZW4gPSBrZXlsZW47CgpTYW1lIGNvbW1lbnQgYXMgYWJv
dmUuCgo+ICAgCj4gICAJcmV0dXJuIGNyeXB0b19zeW5jX3NrY2lwaGVyX3NldGtleShvcC0+ZmFs
bGJhY2tfdGZtLCBrZXksIGtleWxlbik7Cj4gICB9Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY3J5
cHRvL2luc2lkZS1zZWN1cmUvc2FmZXhjZWxfaGFzaC5jIGIvZHJpdmVycy9jcnlwdG8vaW5zaWRl
LXNlY3VyZS9zYWZleGNlbF9oYXNoLmMKPiBpbmRleCA0Mzk2MmJjNzA5YzYuLjRhMmQxNjI5MTRk
ZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2NyeXB0by9pbnNpZGUtc2VjdXJlL3NhZmV4Y2VsX2hh
c2guYwo+ICsrKyBiL2RyaXZlcnMvY3J5cHRvL2luc2lkZS1zZWN1cmUvc2FmZXhjZWxfaGFzaC5j
Cj4gQEAgLTEwODEsOCArMTA4MSw3IEBAIHN0YXRpYyBpbnQgc2FmZXhjZWxfaG1hY19pbml0X3Bh
ZChzdHJ1Y3QgYWhhc2hfcmVxdWVzdCAqYXJlcSwKPiAgIAkJfQo+ICAgCj4gICAJCS8qIEF2b2lk
IGxlYWtpbmcgKi8KPiAtCQltZW16ZXJvX2V4cGxpY2l0KGtleWR1cCwga2V5bGVuKTsKPiAtCQlr
ZnJlZShrZXlkdXApOwo+ICsJCWtmcmVlX3NlbnNpdGl2ZShrZXlkdXApOwo+ICAgCj4gICAJCWlm
IChyZXQpCj4gICAJCQlyZXR1cm4gcmV0Owo+IAoKCkNocmlzdG9waGUKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
