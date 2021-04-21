Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CA1366684
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Apr 2021 09:54:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2FC868333E;
	Wed, 21 Apr 2021 07:54:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LZALG2G3Nfu7; Wed, 21 Apr 2021 07:54:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 149168346C;
	Wed, 21 Apr 2021 07:54:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D8DA31BF20B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 07:54:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D40546075E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 07:54:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EAly90hGw3iL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Apr 2021 07:54:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0655B60672
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 07:54:10 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5ae88d.dynamic.kabel-deutschland.de
 [95.90.232.141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 7B9B620647B7A;
 Wed, 21 Apr 2021 09:54:07 +0200 (CEST)
To: Salil Mehta <salil.mehta@huawei.com>
References: <20210413224446.16612-1-salil.mehta@huawei.com>
 <7974e665-73bd-401c-f023-9da568e1dffc@molgen.mpg.de>
 <418702bdb5244eb4811a2a1a536c55c0@huawei.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <9335975a-ef19-863c-005a-d460eac83e03@molgen.mpg.de>
Date: Wed, 21 Apr 2021 09:54:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <418702bdb5244eb4811a2a1a536c55c0@huawei.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH V2 net] ice: Re-organizes reqstd/avail
 {R, T}XQ check/code for efficiency+readability
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
Cc: netdev@vger.kernel.org, linuxarm@huawei.com, linuxarm@openeuler.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

W0NDOiBSZW1vdmUgSmVmZiwgYXMgZW1haWwgaXMgcmVqZWN0ZWRdCgpEZWFyIFNhbGlsLAoKCkFt
IDIxLjA0LjIxIHVtIDA5OjQxIHNjaHJpZWIgU2FsaWwgTWVodGE6Cj4+IEZyb206IFBhdWwgTWVu
emVsIFttYWlsdG86cG1lbnplbEBtb2xnZW4ubXBnLmRlXQo+PiBTZW50OiBXZWRuZXNkYXksIEFw
cmlsIDIxLCAyMDIxIDY6MzYgQU0KClvigKZdCgo+PiBJbiB0aGUgZ2l0IGNvbW1pdCBtZXNzYWdl
IHN1bW1hcnksIGNvdWxkIHlvdSBwbGVhc2UgdXNlIGltcGVyYXRpdmUgbW9vZCBbMV0/Cj4gCj4g
Tm8gaXNzdWVzLiBUaGVyZSBpcyBhbHdheXMgYSBzY29wZSBvZiBpbXByb3ZlbWVudC4KPiAKPj4+
IFJlLW9yZ2FuaXplIHJlcXN0ZC9hdmFpbCB7UiwgVH1YUSBjaGVjay9jb2RlIGZvciBlZmZpY2ll
bmN5K3JlYWRhYmlsaXR5Cj4+Cj4+IEl04oCZcyBhIGJpdCBsb25nIHRob3VnaC4gTWF5YmU6Cj4+
Cj4+IEF2b2lkIHVubmVjZXNzYXJ5IGFzc2lnbm1lbnQgd2l0aCB1c2VyIHNwZWNpZmllZCB7UixU
fVhRcwo+IAo+IFVtbS4uYWJvdmUgY29udmV5cyB0aGUgd3JvbmcgbWVhbmluZyBhcyB0aGlzIGlz
IG5vdCB3aGF0IHBhdGNoIGlzIGRvaW5nLgo+IAo+IElmIHlvdSBzZWUgdGhlIGNvZGUsIGluIHRo
ZSBwcmVzZW5jZSBvZiB0aGUgdXNlciBzcGVjaWZpZWQge1IsVH1YUXMgaXQKPiBhdm9pZHMgZmV0
Y2hpbmcgYXZhaWxhYmxlIHtSLFR9WFEgY291bnQuCj4gCj4gV2hhdCBhYm91dCBiZWxvdz8KPiAK
PiAiQXZvaWQgdW5uZWNlc3NhcnkgYXZhaWxfe3IsdH14cSBhc3NpZ25tZW50cyBpZiB1c2VyIGhh
cyBzcGVjaWZpZWQgUXMiCgpTb3VuZHMgZ29vZCwgc3RpbGwgYSBsaXR0bGUgbG9uZy4gTWF5YmU6
Cgo+IEF2b2lkIHVubmVjZXNzYXJ5IGF2YWlsX3tyLHR9eHEgYXNzaWdubWVudHMgd2l0aCB1c2Vy
IHNwZWNpZmllZCBRcwoKPj4gQW0gMTQuMDQuMjEgdW0gMDA6NDQgc2NocmllYiBTYWxpbCBNZWh0
YToKPj4+IElmIHVzZXIgaGFzIGV4cGxpY2l0bHkgcmVxdWVzdGVkIHRoZSBudW1iZXIgb2Yge1Is
VH1YUXMsIHRoZW4gaXQgaXMKPj4+IHVubmVjZXNzYXJ5IHRvIGdldCB0aGUgY291bnQgb2YgYWxy
ZWFkeSBhdmFpbGFibGUge1IsVH1YUXMgZnJvbSB0aGUKPj4+IFBGIGF2YWlsX3tyLHR9eHFzIGJp
dG1hcC4gVGhpcyB2YWx1ZSB3aWxsIGdldCBvdmVycmlkZGVuIGJ5IHVzZXIgc3BlY2lmaWVkCj4+
PiB2YWx1ZSBpbiBhbnkgY2FzZS4KPj4+Cj4+PiBUaGlzIHBhdGNoIGRvZXMgbWlub3IgcmUtb3Jn
YW5pemF0aW9uIG9mIHRoZSBjb2RlIGZvciBpbXByb3ZpbmcgdGhlIGZsb3cKPj4+IGFuZCByZWFk
YWJpbHRpeS4gVGhpcyBzY29wZSBvZiBpbXByb3ZlbWVudCB3YXMgZm91bmQgZHVyaW5nIHRoZSBy
ZXZpZXcgb2YKPj4KPj4gcmVhZGFiaWwqaXQqeQo+IAo+IFRoYW5rcy4gTWlzc2VkIHRoYXQgZWFy
bGllci4gTXkgc2hha3kgZmluZ2VycyA6KAo+IAo+Pj4gdGhlIElDRSBkcml2ZXIgY29kZS4KPj4+
Cj4+PiBGWUksIEkgY291bGQgbm90IHRlc3QgdGhpcyBjaGFuZ2UgZHVlIHRvIHVuYXZhaWxhYmls
aXR5IG9mIHRoZSBoYXJkd2FyZS4KPj4+IEl0IHdvdWxkIGJlIGhlbHBmdWwgaWYgc29tZWJvZHkg
Y2FuIHRlc3QgdGhpcyBwYXRjaCBhbmQgcHJvdmlkZSBUZXN0ZWQtYnkKPj4+IFRhZy4gTWFueSB0
aGFua3MhCj4+Cj4+IFRoaXMgc2hvdWxkIGdvIG91dHNpZGUgdGhlIGNvbW1pdCBtZXNzYWdlIChi
ZWxvdyB0aGUgLS0tIGZvciBleGFtcGxlKS4KPiAKPiBBZ3JlZWQuCj4gCj4+PiBGaXhlczogODcz
MjRlNzQ3ZmRlICgiaWNlOiBJbXBsZW1lbnQgZXRodG9vbCBvcHMgZm9yIGNoYW5uZWxzIikKPj4K
Pj4gRGlkIHlvdSBjaGVjayB0aGUgYmVoYXZpb3IgYmVmb3JlIGlzIGFjdHVhbGx5IGEgYnVnPyBP
ciBpcyBpdCBqdXN0IGZvcgo+PiB0aGUgZGV0ZWN0aW9uIGhldXJpc3RpYyBmb3IgY29tbWl0cyB0
byBiZSBhcHBsaWVkIHRvIHRoZSBzdGFibGUgc2VyaWVzPwo+IAo+IFJpZ2h0LCBsYXRlciB3YXMg
dGhlIGlkZWEuCj4gICAKPj4+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZwo+
Pj4gQ2M6IEplZmYgS2lyc2hlciA8amVmZnJleS50LmtpcnNoZXJAaW50ZWwuY29tPgo+Pj4gU2ln
bmVkLW9mZi1ieTogU2FsaWwgTWVodGEgPHNhbGlsLm1laHRhQGh1YXdlaS5jb20+Cj4+PiAtLQo+
Pj4gQ2hhbmdlIFYxLT5WMgo+Pj4gICAgKCopIEZpeGVkIHRoZSBjb21tZW50cyBmcm9tIEFudGhv
bnkgTmd1eWVuKEludGVsKQo+Pj4gICAgICAgIExpbms6IGh0dHBzOi8vbGttbC5vcmcvbGttbC8y
MDIxLzQvMTIvMTk5Nwo+Pj4gLS0tCj4+PiAgICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX2xpYi5jIHwgMTQgKysrKysrKystLS0tLS0KPj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCA4
IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGliLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX2xpYi5jCj4+PiBpbmRleCBkMTNjN2ZjOGZiMGEuLmQ3NzEzM2Q2YmFh
NyAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGli
LmMKPj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGliLmMKPj4+
IEBAIC0xNjEsMTIgKzE2MSwxMyBAQCBzdGF0aWMgdm9pZCBpY2VfdnNpX3NldF9udW1fcXMoc3Ry
dWN0IGljZV92c2kgKnZzaSwgdTE2IHZmX2lkKQo+Pj4KPj4+ICAgIAlzd2l0Y2ggKHZzaS0+dHlw
ZSkgewo+Pj4gICAgCWNhc2UgSUNFX1ZTSV9QRjoKPj4+IC0JCXZzaS0+YWxsb2NfdHhxID0gbWlu
MyhwZi0+bnVtX2xhbl9tc2l4LAo+Pj4gLQkJCQkgICAgICBpY2VfZ2V0X2F2YWlsX3R4cV9jb3Vu
dChwZiksCj4+PiAtCQkJCSAgICAgICh1MTYpbnVtX29ubGluZV9jcHVzKCkpOwo+Pj4gICAgCQlp
ZiAodnNpLT5yZXFfdHhxKSB7Cj4+PiAgICAJCQl2c2ktPmFsbG9jX3R4cSA9IHZzaS0+cmVxX3R4
cTsKPj4+ICAgIAkJCXZzaS0+bnVtX3R4cSA9IHZzaS0+cmVxX3R4cTsKPj4+ICsJCX0gZWxzZSB7
Cj4+PiArCQkJdnNpLT5hbGxvY190eHEgPSBtaW4zKHBmLT5udW1fbGFuX21zaXgsCj4+PiArCQkJ
CQkgICAgICBpY2VfZ2V0X2F2YWlsX3R4cV9jb3VudChwZiksCj4+PiArCQkJCQkgICAgICAodTE2
KW51bV9vbmxpbmVfY3B1cygpKTsKPj4+ICAgIAkJfQo+Pgo+PiBJIGFtIGN1cmlvdXMsIGRpZCB5
b3UgY2hlY2sgdGhlIGNvbXBpbGVyIGFjdHVhbGx5IGNyZWF0ZXMgZGlmZmVyZW50Cj4+IGNvZGUs
IG9yIGRpZCBpdCBub3RpY2UgdGhlIGluZWZmaWNpZW5jeSBieSBpdHNlbGYgYW5kIG9wdGltaXpl
ZCBpdCBhbHJlYWR5Pwo+IAo+IEkgaGF2ZSBub3QgbG9va2VkIGludG8gdGhhdCBkZXRhaWwgYnV0
IGlycmVzcGVjdGl2ZSBvZiB3aGF0IGNvbXBpbGVyIGdlbmVyYXRlcwo+IEkgd291bGQgbGlrZSB0
byBrZWVwIHRoZSBjb2RlIGluIGEgc2hhcGUgd2hpY2ggaXMgbW9yZSBlZmZpY2llbnQgYW5kIG1v
cmUgcmVhZGFibGUuCj4gCj4gSSBkbyB1bmRlcnN0YW5kIGluIGNlcnRhaW4gY2FzZXMgd2UgaGF2
ZSB0byBkbyB0cmFkZW9mZiBiZXR3ZWVuIGVmZmljaWVuY3kKPiBhbmQgcmVhZGFiaWxpdHkgYnV0
IEkgZG8gbm90IHNlZSB0aGF0IGhlcmUuCgpJIGFncmVlLCBhcyAqZWZmaWNpZW5jeSogaXMgbWVu
dGlvbmVkIHNldmVyYWwgdGltZXMsIEkgYXNzdW1lIGl0IHdhcyAKdGVzdGVkLiBUaGFuayB5b3Ug
Zm9yIHRoZSBjbGFyaWZpY2F0aW9uLgoKPj4+ICAgIAkJcGYtPm51bV9sYW5fdHggPSB2c2ktPmFs
bG9jX3R4cTsKPj4+IEBAIC0xNzUsMTIgKzE3NiwxMyBAQCBzdGF0aWMgdm9pZCBpY2VfdnNpX3Nl
dF9udW1fcXMoc3RydWN0IGljZV92c2kgKnZzaSwgdTE2IHZmX2lkKQo+Pj4gICAgCQlpZiAoIXRl
c3RfYml0KElDRV9GTEFHX1JTU19FTkEsIHBmLT5mbGFncykpIHsKPj4+ICAgIAkJCXZzaS0+YWxs
b2NfcnhxID0gMTsKPj4+ICAgIAkJfSBlbHNlIHsKPj4+IC0JCQl2c2ktPmFsbG9jX3J4cSA9IG1p
bjMocGYtPm51bV9sYW5fbXNpeCwKPj4+IC0JCQkJCSAgICAgIGljZV9nZXRfYXZhaWxfcnhxX2Nv
dW50KHBmKSwKPj4+IC0JCQkJCSAgICAgICh1MTYpbnVtX29ubGluZV9jcHVzKCkpOwo+Pj4gICAg
CQkJaWYgKHZzaS0+cmVxX3J4cSkgewo+Pj4gICAgCQkJCXZzaS0+YWxsb2NfcnhxID0gdnNpLT5y
ZXFfcnhxOwo+Pj4gICAgCQkJCXZzaS0+bnVtX3J4cSA9IHZzaS0+cmVxX3J4cTsKPj4+ICsJCQl9
IGVsc2Ugewo+Pj4gKwkJCQl2c2ktPmFsbG9jX3J4cSA9IG1pbjMocGYtPm51bV9sYW5fbXNpeCwK
Pj4+ICsJCQkJCQkgICAgICBpY2VfZ2V0X2F2YWlsX3J4cV9jb3VudChwZiksCj4+PiArCQkJCQkJ
ICAgICAgKHUxNiludW1fb25saW5lX2NwdXMoKSk7Cj4+PiAgICAJCQl9Cj4+PiAgICAJCX0KPj4+
CgoKS2luZCByZWdhcmRzLAoKUGF1bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
