Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 267D627755C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Sep 2020 17:32:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CB9428750D;
	Thu, 24 Sep 2020 15:32:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GUg3ltp6BJSX; Thu, 24 Sep 2020 15:32:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0EAD587506;
	Thu, 24 Sep 2020 15:32:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6996F1BF59B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 15:32:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4FB20203E8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 15:32:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hP62hI-wILov for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Sep 2020 15:32:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by silver.osuosl.org (Postfix) with ESMTPS id 1397B203B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 15:32:15 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 2E70C20646203;
 Thu, 24 Sep 2020 17:32:12 +0200 (CEST)
To: Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>
References: <20200923074751.10527-1-kai.heng.feng@canonical.com>
 <20200924150958.18016-1-kai.heng.feng@canonical.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <748efbf9-573f-ab2a-0c82-a7b2a11cda60@molgen.mpg.de>
Date: Thu, 24 Sep 2020 17:32:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200924150958.18016-1-kai.heng.feng@canonical.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v2] e1000e: Increase iteration on
 polling MDIC ready bit
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
Cc: Andrew Lunn <andrew@lunn.ch>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBLYWktSGVuZywKCgpUaGFuayB5b3UgZm9yIHNlbmRpbmcgdmVyc2lvbiAyLgoKQW0gMjQu
MDkuMjAgdW0gMTc6MDkgc2NocmllYiBLYWktSGVuZyBGZW5nOgo+IFdlIGFyZSBzZWVpbmcgdGhl
IGZvbGxvd2luZyBlcnJvciBhZnRlciBTMyByZXN1bWU6CgpJ4oCZZCBiZSBncmVhdCBpZiB5b3Ug
YWRkZWQgdGhlIHN5c3RlbSBhbmQgdXNlZCBoYXJkd2FyZSwgeW91IGFyZSBzZWVpbmcgCnRoaXMg
d2l0aC4KCj4gWyAgNzA0Ljc0Njg3NF0gZTEwMDBlIDAwMDA6MDA6MWYuNiBlbm8xOiBTZXR0aW5n
IHBhZ2UgMHg2MDIwCj4gWyAgNzA0Ljg0NDIzMl0gZTEwMDBlIDAwMDA6MDA6MWYuNiBlbm8xOiBN
REkgV3JpdGUgZGlkIG5vdCBjb21wbGV0ZQoKQSBmb2xsb3ctdXAgcGF0Y2gsIHNob3VsZCBleHRl
bmQgdGhlIG1lc3NhZ2UgdG8gaW5jbHVkZSB0aGUgdGltZW91dCB2YWx1ZS4KCiA+IE1ESSBXcml0
ZSBkaWQgbm90IGNvbXBsZXRlIGRpZCBub3QgY29tcGxldGUgaW4g4oCmIHNlY29uZHMuCgpBY2Nv
cmRpbmcgdG8gdGhlIExpbnV4IHRpbWVzdGFtcHMgaXTigJlzIDk4IG1zLCB3aGljaCBtYWtlcyBz
ZW5zZSwgYXMgKDY0MCAKKiAzICogNTAgzrxzID0gOTYgbXMpLgoKV2hhdCBjcmFwcHkgaGFyZHdh
cmUgaXMgdGhpcywgdGhhdCBpdCB0YWtlcyBsb25nZXIgdGhhbiAxMDAgbXM/Cgo+IFsgIDcwNC45
MDI4MTddIGUxMDAwZSAwMDAwOjAwOjFmLjYgZW5vMTogU2V0dGluZyBwYWdlIDB4NjAyMAo+IFsg
IDcwNC45MDMwNzVdIGUxMDAwZSAwMDAwOjAwOjFmLjYgZW5vMTogcmVhZGluZyBQSFkgcGFnZSA3
NjkgKG9yIDB4NjAyMCBzaGlmdGVkKSByZWcgMHgxNwo+IFsgIDcwNC45MDMyODFdIGUxMDAwZSAw
MDAwOjAwOjFmLjYgZW5vMTogU2V0dGluZyBwYWdlIDB4NjAyMAo+IFsgIDcwNC45MDM0ODZdIGUx
MDAwZSAwMDAwOjAwOjFmLjYgZW5vMTogd3JpdGluZyBQSFkgcGFnZSA3NjkgKG9yIDB4NjAyMCBz
aGlmdGVkKSByZWcgMHgxNwo+IFsgIDcwNC45NDMxNTVdIGUxMDAwZSAwMDAwOjAwOjFmLjYgZW5v
MTogTURJIEVycm9yCj4gLi4uCj4gWyAgNzA1LjEwODE2MV0gZTEwMDBlIDAwMDA6MDA6MWYuNiBl
bm8xOiBIYXJkd2FyZSBFcnJvcgo+IAo+IEFzIEFuZHJldyBMdW5uIHBvaW50ZWQgb3V0LCBNRElP
IGhhcyBub3RoaW5nIHRvIGRvIHdpdGggcGh5LCBhbmQgaW5kZWVkCj4gaW5jcmVhc2UgcG9sbGlu
ZyBpdGVyYXRpb24gY2FuIHJlc29sdmUgdGhlIGlzc3VlLgoKUGxlYXNlIGV4cGxpY2l0bHkgc3Rh
dGUsIHdoYXQgdGhlIGN1cnJlbnQgdGltZW91dCB2YWx1ZSBpcywgYW5kIHdoYXQgaXQgCmlzIGlu
Y3JlYXNlZCB0by4KCiAgICAgNjQwICogMyAqIDUwIM68cyA9IDk2IG1zCiAgICAgNjQwICogMTAg
KiA1MCDOvHMgPSAzMjAgbXMKClRoZSBtYWNybyBkZWZpbml0aW9uIGFsc28gbWlzc2VzIHRoZSB1
bml0LgoKICAgICAvKiBTZXJEZXMgQ29udHJvbCAqLwogICAgICNkZWZpbmUgRTEwMDBfR0VOX1BP
TExfVElNRU9VVCAgICAgICAgICA2NDAKCkhvdyBkaWQgeW91IGRldGVybWluZSwgdGhhdCB0ZW5m
b2xkIHRoYXQgdmFsdWUgaXMgZ29vZC4gQW5kIG5vdCAKZWlnaHRmb2xkLCBmb3IgZXhhbXBsZT8g
UGxlYXNlIGdpdmUgdGhlIGV4YWN0IHZhbHVlIChMaW51eCBsb2cgbWVzc2FnZSAKdGltZXN0YW1w
cyBzaG91bGQgYmUgZW5vdWdoKSwgd2hhdCB0aGUgaGFyZHdhcmUgbmVlZHMgbm93LgoKQXMgYSBj
b21taXQgbWVzc2FnZSBzdW1tYXJ5LCBJIHN1Z2dlc3Q6CgogPiBlMTAwMGU6IEluY3JlYXNlIE1E
SUMgcmVhZHkgYml0IHBvbGxpbmcgdGltZW91dCBmcm9tIDk2IG1zIHRvIDMyMCBtcwoKPiBXaGls
ZSBhdCBpdCwgYWxzbyBtb3ZlIHRoZSBkZWxheSB0byB0aGUgZW5kIG9mIGxvb3AsIHRvIHBvdGVu
dGlhbGx5IHNhdmUKPiA1MCB1cy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBLYWktSGVuZyBGZW5nIDxr
YWkuaGVuZy5mZW5nQGNhbm9uaWNhbC5jb20+Cj4gLS0tCj4gdjI6Cj4gICAtIEluY3JlYXNlIHBv
bGxpbmcgaXRlcmF0aW9uIGluc3RlYWQgb2YgcG93ZXJpbmcgZG93biB0aGUgcGh5Lgo+IAo+ICAg
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL3BoeS5jIHwgNSArKystLQo+ICAgMSBm
aWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL3BoeS5jIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL3BoeS5jCj4gaW5kZXggZTExYzg3NzU5NWZiLi43Mjk2
OGEwMTE2NGIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBl
L3BoeS5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL3BoeS5jCj4g
QEAgLTIwMywxMSArMjAzLDEyIEBAIHMzMiBlMTAwMGVfd3JpdGVfcGh5X3JlZ19tZGljKHN0cnVj
dCBlMTAwMF9odyAqaHcsIHUzMiBvZmZzZXQsIHUxNiBkYXRhKQo+ICAgCSAqIEluY3JlYXNpbmcg
dGhlIHRpbWUgb3V0IGFzIHRlc3Rpbmcgc2hvd2VkIGZhaWx1cmVzIHdpdGgKPiAgIAkgKiB0aGUg
bG93ZXIgdGltZSBvdXQKPiAgIAkgKi8KPiAtCWZvciAoaSA9IDA7IGkgPCAoRTEwMDBfR0VOX1BP
TExfVElNRU9VVCAqIDMpOyBpKyspIHsKPiAtCQl1ZGVsYXkoNTApOwo+ICsJZm9yIChpID0gMDsg
aSA8IChFMTAwMF9HRU5fUE9MTF9USU1FT1VUICogMTApOyBpKyspIHsKPiAgIAkJbWRpYyA9IGVy
MzIoTURJQyk7Cj4gICAJCWlmIChtZGljICYgRTEwMDBfTURJQ19SRUFEWSkKPiAgIAkJCWJyZWFr
Owo+ICsKPiArCQl1ZGVsYXkoNTApOwo+ICAgCX0KPiAgIAlpZiAoIShtZGljICYgRTEwMDBfTURJ
Q19SRUFEWSkpIHsKPiAgIAkJZV9kYmcoIk1ESSBXcml0ZSBkaWQgbm90IGNvbXBsZXRlXG4iKTsK
PiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
