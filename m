Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 87864492ED4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jan 2022 21:01:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F72081076;
	Tue, 18 Jan 2022 20:01:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6sdIqArJHNcC; Tue, 18 Jan 2022 20:01:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0091780E7E;
	Tue, 18 Jan 2022 20:01:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EF6B51BF59B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jan 2022 20:01:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EA3CC41295
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jan 2022 20:01:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bB1rl7p1gQEx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jan 2022 20:01:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from smtp.smtpout.orange.fr (smtp02.smtpout.orange.fr
 [80.12.242.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D71914099C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jan 2022 20:01:35 +0000 (UTC)
Received: from [192.168.1.18] ([90.126.236.122]) by smtp.orange.fr with ESMTPA
 id 9ufbnIM9SeKJJ9ufbnhXGV; Tue, 18 Jan 2022 21:01:33 +0100
X-ME-Helo: [192.168.1.18]
X-ME-Auth: YWZlNiIxYWMyZDliZWIzOTcwYTEyYzlhMmU3ZiQ1M2U2MzfzZDfyZTMxZTBkMTYyNDBjNDJlZmQ3ZQ==
X-ME-Date: Tue, 18 Jan 2022 21:01:33 +0100
X-ME-IP: 90.126.236.122
Message-ID: <464d0428-42ba-cd68-f21c-630850e6f3c7@wanadoo.fr>
Date: Tue, 18 Jan 2022 21:01:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: Andrew Lunn <andrew@lunn.ch>
References: <40c94af2f9140794351593047abc95ca65e4e576.1642358759.git.christophe.jaillet@wanadoo.fr>
 <YeSRUVmrdmlUXHDn@lunn.ch>
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <YeSRUVmrdmlUXHDn@lunn.ch>
Subject: Re: [Intel-wired-lan] [PATCH] ice: Don't use GFP_KERNEL in atomic
 context
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
 linux-kernel@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Shiraz Saleem <shiraz.saleem@intel.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

TGUgMTYvMDEvMjAyMiDDoCAyMjo0MiwgQW5kcmV3IEx1bm4gYSDDqWNyaXTCoDoKPiBPbiBTdW4s
IEphbiAxNiwgMjAyMiBhdCAwNzo0NjoyMFBNICswMTAwLCBDaHJpc3RvcGhlIEpBSUxMRVQgd3Jv
dGU6Cj4+IGljZV9taXNjX2ludHIoKSBpcyBhbiBpcnEgaGFuZGxlci4gSXQgc2hvdWxkIG5vdCBz
bGVlcC4KPj4KPj4gVXNlIEdGUF9BVE9NSUMgaW5zdGVhZCBvZiBHRlBfS0VSTkVMIHdoZW4gYWxs
b2NhdGluZyBzb21lIG1lbW9yeS4KPj4KPj4gRml4ZXM6IDM0ODA0OGU3MjRhMCAoImljZTogSW1w
bGVtZW50IGlpZGMgb3BlcmF0aW9ucyIpCj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdG9waGUgSkFJ
TExFVCA8Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI+Cj4+IC0tLQo+PiBJJ3ZlIG5ldmVy
IHBsYXllZCBhIGxvdCB3aXRoIGlycSBoYW5kbGVyLiBNeSB1bmRlcnN0YW5kaW5nIGlzIHRoYXQg
dGhleQo+PiBzaG91bGQgbmV2ZXIgc2xlZXAuCj4gCj4gSGkgQ2hyaXN0b3BoZQo+IAo+IFRocmVh
ZGVkIGludGVycnVwdCBoYW5kbGVycyBhcmUgYWxsb3dlZCB0byBzbGVlcC4gSG93ZXZlciwgdGhp
cwo+IGhhbmRsZXIgaXMgbm90IGJlaW5nIHVzZWQgaW4gc3VjaCBhIHdheS4gU28geW91ciBhcmUg
cHJvYmFibHkgY29ycmVjdAo+IGFib3V0IEdGUF9LRVJORUwgdnMgR0ZQX0FUT01JQy4KPiAKPj4g
LS0tCj4+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMgfCAyICst
Cj4+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jCj4+IGluZGV4IDMwODE0
NDM1Zjc3OS4uNjVkZTAxZjNhNTA0IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX21haW4uYwo+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX21haW4uYwo+PiBAQCAtMzAxOCw3ICszMDE4LDcgQEAgc3RhdGljIGlycXJldHVy
bl90IGljZV9taXNjX2ludHIoaW50IF9fYWx3YXlzX3VudXNlZCBpcnEsIHZvaWQgKmRhdGEpCj4+
ICAgCQlzdHJ1Y3QgaWlkY19ldmVudCAqZXZlbnQ7Cj4+ICAgCj4+ICAgCQllbmFfbWFzayAmPSB+
SUNFX0FVWF9DUklUX0VSUjsKPj4gLQkJZXZlbnQgPSBremFsbG9jKHNpemVvZigqZXZlbnQpLCBH
RlBfS0VSTkVMKTsKPj4gKwkJZXZlbnQgPSBremFsbG9jKHNpemVvZigqZXZlbnQpLCBHRlBfQVRP
TUlDKTsKPj4gICAJCWlmIChldmVudCkgewo+PiAgIAkJCXNldF9iaXQoSUlEQ19FVkVOVF9DUklU
X0VSUiwgZXZlbnQtPnR5cGUpOwo+PiAgIAkJCS8qIHJlcG9ydCB0aGUgZW50aXJlIE9JQ1IgdmFs
dWUgdG8gQVVYIGRyaXZlciAqLwo+IAo+IFdoYXQgaGFwcGVucyBuZXh0IGlzIGludGVyZXN0aW5n
Li4uCj4gCj4gCj4gICAgICAgICAgICAgICAgICAgICAgICAgIGV2ZW50LT5yZWcgPSBvaWNyOwo+
ICAgICAgICAgICAgICAgICAgICAgICAgICBpY2Vfc2VuZF9ldmVudF90b19hdXgocGYsIGV2ZW50
KTsKPiAKPiB3aGVyZToKPiAKPiB2b2lkIGljZV9zZW5kX2V2ZW50X3RvX2F1eChzdHJ1Y3QgaWNl
X3BmICpwZiwgc3RydWN0IGlpZGNfZXZlbnQgKmV2ZW50KQo+IHsKPiAgICAgICAgICBzdHJ1Y3Qg
aWlkY19hdXhpbGlhcnlfZHJ2ICppYWRydjsKPiAKPiAgICAgICAgICBpZiAoIXBmLT5hZGV2KQo+
ICAgICAgICAgICAgICAgICAgcmV0dXJuOwo+IAo+ICAgICAgICAgIGRldmljZV9sb2NrKCZwZi0+
YWRldi0+ZGV2KTsKPiAgICAgICAgICBpYWRydiA9IGljZV9nZXRfYXV4aWxpYXJ5X2RydihwZik7
Cj4gICAgICAgICAgaWYgKGlhZHJ2ICYmIGlhZHJ2LT5ldmVudF9oYW5kbGVyKQo+ICAgICAgICAg
ICAgICAgICAgaWFkcnYtPmV2ZW50X2hhbmRsZXIocGYsIGV2ZW50KTsKPiAgICAgICAgICBkZXZp
Y2VfdW5sb2NrKCZwZi0+YWRldi0+ZGV2KTsKPiB9Cj4gCj4gZGV2aWNlX2xvY2soKSB0YWtlcyBh
IG11dGV4LCBub3Qgc29tZXRoaW5nIHlvdSBzaG91bGQgYmUgZG9pbmcgaW4KPiBhdG9taWMgY29u
dGV4dC4KPiAKPiBTbyBpdCBsb29rcyB0byBtZSwgdGhpcyBoYW5kbGVyIHJlYWxseSBzaG91bGQg
YmUgcnVubmluZyBpbiB0aHJlYWQKPiBjb250ZXh0Li4uCj4gCj4gCUFuZHJldwo+IAoKT2ssIHRo
YW5rcyBmb3IgdGhlIGV4cGxhbmF0aW9uLgoKaWNlX21pc2NfaW50cigpIGlzIHJlZ2lzdGVyZWQg
d2l0aCBkZXZtX3JlcXVlc3RfaXJxKCksIHNvIGl0IGlzIGEgCmhhbmRsZXIgdGhhdCBjYW4ndCBz
bGVlcC4KCkkgZ3Vlc3MgdGhhdCBtb3JlIGNvbnNpZGVyYXRpb24gc2hvdWxkIGJlIHRha2VuIGlu
dG8gYWNjb3VudCB0aGFuIG9ubHk6CiAgIHMvZGV2bV9yZXF1ZXN0X2lycShoYW5kbGVyKS9kZXZt
X3JlcXVlc3RfdGhyZWFkZWRfaXJxKE5VTEwsIGhhbmRsZXIpLwoKU28gSSdsbCBsZWF2ZSB0aGlz
IG9uZSB0byBwZW9wbGUgd2l0aCB0aGUgZXhwZWN0ZWQga25vdy1ob3cuCgpJZiBteSBzL0dGUF9L
RVJORUwvR0ZQX0FUT01JQy8gbWFrZXMgZW5vdWdoIHNlbnNlIGFzLWlzLCB0aGF0J3MgZmluZSBm
b3IgCm1lLCBidXQgaXQgbG9va3MgdGhhdCBhbm90aGVyIHNvbHV0aW9uIGlzIG5lZWRlZCB0byBm
aXggdGhlIDJuZCBpc3N1ZS4KCgpDSgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
