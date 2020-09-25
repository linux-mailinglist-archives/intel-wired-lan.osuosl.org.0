Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5441E277FD8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Sep 2020 07:16:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E2B9286D31;
	Fri, 25 Sep 2020 05:16:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FVph7qZ9kdjt; Fri, 25 Sep 2020 05:16:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7250986D1F;
	Fri, 25 Sep 2020 05:16:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8248E1BF84C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 05:16:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7D8328756B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 05:16:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZYW8IK+Bn6I9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Sep 2020 05:16:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0AA2E87542
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 05:16:42 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5af1e7.dynamic.kabel-deutschland.de
 [95.90.241.231])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id D68B22064620A;
 Fri, 25 Sep 2020 07:16:38 +0200 (CEST)
To: Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>
References: <20200924150958.18016-1-kai.heng.feng@canonical.com>
 <20200924164542.19906-1-kai.heng.feng@canonical.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <1497f846-40d2-ddc8-60be-ffd117ffc0b7@molgen.mpg.de>
Date: Fri, 25 Sep 2020 07:16:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200924164542.19906-1-kai.heng.feng@canonical.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v3] e1000e: Increase iteration on
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

RGVhciBLYWktSGVuZywKCgpUaGFuayB5b3UgZm9yIHBhdGNoIHZlcnNpb24gMy4KCkFtIDI0LjA5
LjIwIHVtIDE4OjQ1IHNjaHJpZWIgS2FpLUhlbmcgRmVuZzoKPiBXZSBhcmUgc2VlaW5nIHRoZSBm
b2xsb3dpbmcgZXJyb3IgYWZ0ZXIgUzMgcmVzdW1lOgo+IFsgIDcwNC43NDY4NzRdIGUxMDAwZSAw
MDAwOjAwOjFmLjYgZW5vMTogU2V0dGluZyBwYWdlIDB4NjAyMAo+IFsgIDcwNC44NDQyMzJdIGUx
MDAwZSAwMDAwOjAwOjFmLjYgZW5vMTogTURJIFdyaXRlIGRpZCBub3QgY29tcGxldGUKPiBbICA3
MDQuOTAyODE3XSBlMTAwMGUgMDAwMDowMDoxZi42IGVubzE6IFNldHRpbmcgcGFnZSAweDYwMjAK
PiBbICA3MDQuOTAzMDc1XSBlMTAwMGUgMDAwMDowMDoxZi42IGVubzE6IHJlYWRpbmcgUEhZIHBh
Z2UgNzY5IChvciAweDYwMjAgc2hpZnRlZCkgcmVnIDB4MTcKPiBbICA3MDQuOTAzMjgxXSBlMTAw
MGUgMDAwMDowMDoxZi42IGVubzE6IFNldHRpbmcgcGFnZSAweDYwMjAKPiBbICA3MDQuOTAzNDg2
XSBlMTAwMGUgMDAwMDowMDoxZi42IGVubzE6IHdyaXRpbmcgUEhZIHBhZ2UgNzY5IChvciAweDYw
MjAgc2hpZnRlZCkgcmVnIDB4MTcKPiBbICA3MDQuOTQzMTU1XSBlMTAwMGUgMDAwMDowMDoxZi42
IGVubzE6IE1ESSBFcnJvcgo+IC4uLgo+IFsgIDcwNS4xMDgxNjFdIGUxMDAwZSAwMDAwOjAwOjFm
LjYgZW5vMTogSGFyZHdhcmUgRXJyb3IKPiAKPiBBcyBBbmRyZXcgTHVubiBwb2ludGVkIG91dCwg
TURJTyBoYXMgbm90aGluZyB0byBkbyB3aXRoIHBoeSwgYW5kIGluZGVlZAo+IGluY3JlYXNlIHBv
bGxpbmcgaXRlcmF0aW9uIGNhbiByZXNvbHZlIHRoZSBpc3N1ZS4KPiAKPiBUaGUgcm9vdCBjYXVz
ZSBpcyBxdWl0ZSBsaWtlbHkgSW50ZWwgTUUsIHNpbmNlIGl0J3MgYSBibGFja2JveCB0byB0aGUK
PiBrZXJuZWwgc28gdGhlIG9ubHkgYXBwcm9hY2ggd2UgY2FuIHRha2UgaXMgdG8gYmUgcGF0aWVu
dCBhbmQgd2FpdAo+IGxvbmdlci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBLYWktSGVuZyBGZW5nIDxr
YWkuaGVuZy5mZW5nQGNhbm9uaWNhbC5jb20+Cj4gLS0tCj4gdjM6Cj4gICAtIE1vdmluZyBkZWxh
eSB0byBlbmQgb2YgbG9vcCBkb2Vzbid0IHNhdmUgYW55dGltZSwgbW92ZSBpdCBiYWNrLgo+ICAg
LSBQb2ludCBvdXQgdGhpcyBpcyBxdWl0ZWx5IGxpa2VseSBjYXVzZWQgYnkgSW50ZWwgTUUuCgpx
dWlldGx5CgpZb3Ugc2VlbSB0byBoYXZlIG1pc3NlZCBteSBjb21tZW50cyByZWdhcmRpbmcgcGF0
Y2ggdmVyc2lvbiAzLiBJdOKAmWQgYmUgCmdyZWF0IGlmIHlvdSBpbXByb3ZlZCB0aGUgY29tbWl0
IG1lc3NhZ2Ugd2l0aCBteSBzdWdnZXN0aW9ucy4KCldpdGhvdXQga25vd2luZyB3aGF0IGhhcmR3
YXJlIHRoaXMgaGFwcGVuZWQgb24sIG5vYm9keSwgZXZlbiBsYXRlciAKZ2V0dGluZyB0aGUgaGFy
ZHdhcmUsIGNhbiByZXByb2R1Y2UgdGhlIHlvdXIgcmVzdWx0cy4gSWYgeW91IHNheSB0aGUgTUUg
CmlzIGludm9sdmVkLCBwbGVhc2UgYWxzbyBkb2N1bWVudCB0aGUgTUUgZmlybXdhcmUgdmVyc2lv
biwgd2hpY2ggaXMgdXNlZCAKaGVyZS4KCj4gdjI6Cj4gICAtIEluY3JlYXNlIHBvbGxpbmcgaXRl
cmF0aW9uIGluc3RlYWQgb2YgcG93ZXJpbmcgZG93biB0aGUgcGh5Lgo+IAo+ICAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL3BoeS5jIHwgMiArLQo+ICAgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9waHkuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2UxMDAwZS9waHkuYwo+IGluZGV4IGUxMWM4Nzc1OTVmYi4uZTZkNGFjZDkwOTM3IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9waHkuYwo+ICsrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9waHkuYwo+IEBAIC0yMDMsNyArMjAz
LDcgQEAgczMyIGUxMDAwZV93cml0ZV9waHlfcmVnX21kaWMoc3RydWN0IGUxMDAwX2h3ICpodywg
dTMyIG9mZnNldCwgdTE2IGRhdGEpCj4gICAJICogSW5jcmVhc2luZyB0aGUgdGltZSBvdXQgYXMg
dGVzdGluZyBzaG93ZWQgZmFpbHVyZXMgd2l0aAo+ICAgCSAqIHRoZSBsb3dlciB0aW1lIG91dAo+
ICAgCSAqLwo+IC0JZm9yIChpID0gMDsgaSA8IChFMTAwMF9HRU5fUE9MTF9USU1FT1VUICogMyk7
IGkrKykgewo+ICsJZm9yIChpID0gMDsgaSA8IChFMTAwMF9HRU5fUE9MTF9USU1FT1VUICogMTAp
OyBpKyspIHsKPiAgIAkJdWRlbGF5KDUwKTsKPiAgIAkJbWRpYyA9IGVyMzIoTURJQyk7Cj4gICAJ
CWlmIChtZGljICYgRTEwMDBfTURJQ19SRUFEWSkKCkluIHRoZSBQQ0kgc3Vic3lzdGVtLCBhIHdh
cm5pbmcgaXMgc2hvd24sIHdoZW4gc29tZXRoaW5nIHRha2VzIG1vcmUgdGhlbiAKMTAwIG1zLiBB
cyB5b3UgaW5jcmVhc2UgaXQgdG8gb3ZlciAzMjAgbXMsIGEgd2FybmluZyBzaG91bGQgYmUgcHJp
bnRlZCAKdG8gdGFsayB0byB0aGUgZmlybXdhcmUgZm9sa3MsIHdoZW4gaXQgcGFzc2VzIDEwMCBt
cy4KCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQt
bGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtd2lyZWQtbGFuCg==
