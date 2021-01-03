Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC9F2E8B6D
	for <lists+intel-wired-lan@lfdr.de>; Sun,  3 Jan 2021 09:41:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BE4218586A;
	Sun,  3 Jan 2021 08:41:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SW4liLafLrYq; Sun,  3 Jan 2021 08:41:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DAF49858DA;
	Sun,  3 Jan 2021 08:41:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2B2211BF48B
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Jan 2021 08:41:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 26C578583F
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Jan 2021 08:41:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E8DgPULxl8S8 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  3 Jan 2021 08:41:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 097F6857B0
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Jan 2021 08:41:03 +0000 (UTC)
Received: from [192.168.0.6] (ip5f5aeaad.dynamic.kabel-deutschland.de
 [95.90.234.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id CEF6B20647B6A;
 Sun,  3 Jan 2021 09:41:00 +0100 (CET)
To: Dinghao Liu <dinghao.liu@zju.edu.cn>
References: <20210103080843.25914-1-dinghao.liu@zju.edu.cn>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <aefe9de0-83b4-81b8-5d5b-674cb8ea97e8@molgen.mpg.de>
Date: Sun, 3 Jan 2021 09:41:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210103080843.25914-1-dinghao.liu@zju.edu.cn>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] net: ixgbe: Fix memleak in
 ixgbe_configure_clsu32
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
Cc: netdev@vger.kernel.org, kjlu@umn.edu, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBEaW5naGFvLAoKCkFtIDAzLjAxLjIxIHVtIDA5OjA4IHNjaHJpZWIgRGluZ2hhbyBMaXU6
Cj4gV2hlbiBpeGdiZV9mZGlyX3dyaXRlX3BlcmZlY3RfZmlsdGVyXzgyNTk5KCkgZmFpbHMsCj4g
aW5wdXQgYWxsb2NhdGVkIGJ5IGt6YWxsb2MoKSBoYXMgbm90IGJlZW4gZnJlZWQsCj4gd2hpY2gg
bGVhZHMgdG8gbWVtbGVhay4KCk5pY2UgZmluZC4gVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoZXMu
IE91dCBvZiBjdXJpb3NpdHksIGRvIHlvdSB1c2UgYW4gCmFuYWx5c2lzIHRvb2wgdG8gZmluZCB0
aGVzZSBpc3N1ZXM/Cgo+IFNpZ25lZC1vZmYtYnk6IERpbmdoYW8gTGl1IDxkaW5naGFvLmxpdUB6
anUuZWR1LmNuPgo+IC0tLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhn
YmVfbWFpbi5jIHwgNiArKysrLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2l4Z2JlL2l4Z2JlX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2Jl
L2l4Z2JlX21haW4uYwo+IGluZGV4IDM5M2QxYzJjZDg1My4uZTljMmQyOGVmYzgxIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX21haW4uYwo+ICsr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX21haW4uYwo+IEBAIC05
NTgyLDggKzk1ODIsMTAgQEAgc3RhdGljIGludCBpeGdiZV9jb25maWd1cmVfY2xzdTMyKHN0cnVj
dCBpeGdiZV9hZGFwdGVyICphZGFwdGVyLAo+ICAgCWl4Z2JlX2F0cl9jb21wdXRlX3BlcmZlY3Rf
aGFzaF84MjU5OSgmaW5wdXQtPmZpbHRlciwgbWFzayk7Cj4gICAJZXJyID0gaXhnYmVfZmRpcl93
cml0ZV9wZXJmZWN0X2ZpbHRlcl84MjU5OShodywgJmlucHV0LT5maWx0ZXIsCj4gICAJCQkJCQkg
ICAgaW5wdXQtPnN3X2lkeCwgcXVldWUpOwo+IC0JaWYgKCFlcnIpCj4gLQkJaXhnYmVfdXBkYXRl
X2V0aHRvb2xfZmRpcl9lbnRyeShhZGFwdGVyLCBpbnB1dCwgaW5wdXQtPnN3X2lkeCk7Cj4gKwlp
ZiAoZXJyKQo+ICsJCWdvdG8gZXJyX291dF93X2xvY2s7Cj4gKwo+ICsJaXhnYmVfdXBkYXRlX2V0
aHRvb2xfZmRpcl9lbnRyeShhZGFwdGVyLCBpbnB1dCwgaW5wdXQtPnN3X2lkeCk7Cj4gICAJc3Bp
bl91bmxvY2soJmFkYXB0ZXItPmZkaXJfcGVyZmVjdF9sb2NrKTsKPiAgIAo+ICAgCWlmICgodWh0
aWQgIT0gMHg4MDApICYmIChhZGFwdGVyLT5qdW1wX3RhYmxlc1t1aHRpZF0pKQoKUmV2aWV3ZWQt
Ynk6IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+CgpJIHdvbmRlciwgaW4gdGhl
IG5vbi1lcnJvciBjYXNlLCBob3cgYGlucHV0YCBhbmQgYGp1bXBgIGFyZSBmcmVlZC4KCk9sZCBj
b2RlOgoKPiAgICAgICAgIGlmICghZXJyKQo+ICAgICAgICAgICAgICAgICBpeGdiZV91cGRhdGVf
ZXRodG9vbF9mZGlyX2VudHJ5KGFkYXB0ZXIsIGlucHV0LCBpbnB1dC0+c3dfaWR4KTsKPiAgICAg
ICAgIHNwaW5fdW5sb2NrKCZhZGFwdGVyLT5mZGlyX3BlcmZlY3RfbG9jayk7Cj4gCj4gICAgICAg
ICBpZiAoKHVodGlkICE9IDB4ODAwKSAmJiAoYWRhcHRlci0+anVtcF90YWJsZXNbdWh0aWRdKSkK
PiAgICAgICAgICAgICAgICAgc2V0X2JpdChsb2MgLSAxLCAoYWRhcHRlci0+anVtcF90YWJsZXNb
dWh0aWRdKS0+Y2hpbGRfbG9jX21hcCk7Cj4gCj4gICAgICAgICBrZnJlZShtYXNrKTsKPiAgICAg
ICAgIHJldHVybiBlcnI7CgpTaG91bGQgdGhlc2UgdHdvIGxpbmVzIGJlIHJlcGxhY2VkIHdpdGgg
YGdvdG8gZXJyX291dGA/IChUaG91Z2ggdGhlIG5hbWUgCmlzIGNvbmZ1c2luZyB0aGVuLCBhcyBp
dOKAmXMgdGhlIG5vbi1lcnJvciBjYXNlLikKCj4gZXJyX291dF93X2xvY2s6Cj4gICAgICAgICBz
cGluX3VubG9jaygmYWRhcHRlci0+ZmRpcl9wZXJmZWN0X2xvY2spOwo+IGVycl9vdXQ6Cj4gICAg
ICAgICBrZnJlZShtYXNrKTsKPiBmcmVlX2lucHV0Ogo+ICAgICAgICAga2ZyZWUoaW5wdXQpOwo+
IGZyZWVfanVtcDoKPiAgICAgICAgIGtmcmVlKGp1bXApOwo+ICAgICAgICAgcmV0dXJuIGVycjsK
PiB9CgpLaW5kIHJlZ2FyZHMsCgpQYXVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQt
bGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtd2lyZWQtbGFuCg==
