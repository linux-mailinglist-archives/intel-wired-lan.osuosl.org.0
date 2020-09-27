Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2787927A5D5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 05:42:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C8D97855BE;
	Mon, 28 Sep 2020 03:42:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5WJQSmMhzJ9r; Mon, 28 Sep 2020 03:42:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 073368559B;
	Mon, 28 Sep 2020 03:42:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 39A491BF40A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 20:57:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 31F268506B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 20:57:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OQKXvzsuB5WH for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Sep 2020 20:57:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 84CA385045
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 20:57:13 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id AF20A13BB5083;
 Sun, 27 Sep 2020 13:40:20 -0700 (PDT)
Date: Sun, 27 Sep 2020 13:57:07 -0700 (PDT)
Message-Id: <20200927.135707.1699954431349573308.davem@davemloft.net>
To: tglx@linutronix.de
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200927194846.045411263@linutronix.de>
References: <20200927194846.045411263@linutronix.de>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [2620:137:e000::1:9]);
 Sun, 27 Sep 2020 13:40:22 -0700 (PDT)
X-Mailman-Approved-At: Mon, 28 Sep 2020 03:42:11 +0000
Subject: Re: [Intel-wired-lan] [patch 00/35] net: in_interrupt() cleanup and
 fixes
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
Cc: andrew@lunn.ch, emmanuel.grumbach@intel.com, linux-doc@vger.kernel.org,
 peterz@infradead.org, chris.snook@gmail.com, bigeasy@linutronix.de,
 arend.vanspriel@broadcom.com, _govind@gmx.com, vishal@chelsio.com,
 luciano.coelho@intel.com, ecree@solarflare.com, brcm80211-dev-list@cypress.com,
 brcm80211-dev-list.pdl@broadcom.com, johannes.berg@intel.com, corbet@lwn.net,
 mchehab+huawei@kernel.org, linuxwifi@intel.com, linux@armlinux.org.uk,
 willy@infradead.org, hkallweit1@gmail.com, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, mhabets@solarflare.com, kune@deine-taler.de,
 jcliburn@gmail.com, paulmck@kernel.org, stf_xl@wp.pl,
 hante.meuleman@broadcom.com, torvalds@linuxfoundation.org,
 gregkh@linuxfoundation.org, wright.feng@cypress.com, dsd@gentoo.org,
 drivers@pensando.io, kvalo@codeaurora.org, franky.lin@broadcom.com,
 linux-net-drivers@solarflare.com, tsbogend@alpha.franken.de,
 chi-hsien.lin@cypress.com, netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 stas.yakovlev@gmail.com, jdmason@kudzu.us, snelson@pensando.io,
 luc.vanoostenryck@gmail.com, benve@cisco.com
Content-Type: text/plain; charset="iso8859-7"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogVGhvbWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+DQpEYXRlOiBTdW4sIDI3
IFNlcCAyMDIwIDIxOjQ4OjQ2ICswMjAwDQoNCj4gaW4gdGhlIGRpc2N1c3Npb24gYWJvdXQgcHJl
ZW1wdCBjb3VudCBjb25zaXN0ZW5jeSBhY2Nyb3NzIGtlcm5lbCBjb25maWd1cmF0aW9uczoNCg0K
UGxlYXNlIHJlc3BpbiB0aGlzIGFnYWluc3QgbmV0LW5leHQsIHNvbWUgb2YgdGhlIHBhdGNoZXMg
aW4gaGVyZSBhcmUgYWxyZWFkeQ0KaW4gbmV0LW5leHQgKHRoZSB3aXJlbGVzcyBkZWJ1ZyBtYWNy
byBvbmUpIGFuZCBldmVuIGFmdGVyIHRoYXQgdGhlIHNlcmllcw0KZG9lc24ndCBidWlsZDoNCg0K
ZHJpdmVycy9uZXQvZXRoZXJuZXQvY2lzY28vZW5pYy9lbmljX21haW4uYzogSW4gZnVuY3Rpb24g
oWVuaWNfcmVzZXSiOg0KZHJpdmVycy9uZXQvZXRoZXJuZXQvY2lzY28vZW5pYy9lbmljX21haW4u
YzoyMzE1OjI6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlvbiChZW5pY19z
ZXRfYXBpX3N0YXRlojsgZGlkIHlvdSBtZWFuIKFlbmljX3NldF9hcGlfYnVzeaI/IFstV2Vycm9y
PWltcGxpY2l0LWZ1bmN0aW9uLWRlY2xhcmF0aW9uXQ0KIDIzMTUgfCAgZW5pY19zZXRfYXBpX3N0
YXRlKGVuaWMsIHRydWUpOw0KICAgICAgfCAgXn5+fn5+fn5+fn5+fn5+fn5+DQogICAgICB8ICBl
bmljX3NldF9hcGlfYnVzeQ0KQXQgdG9wIGxldmVsOg0KZHJpdmVycy9uZXQvZXRoZXJuZXQvY2lz
Y28vZW5pYy9lbmljX21haW4uYzoyMjk4OjEzOiB3YXJuaW5nOiChZW5pY19zZXRfYXBpX2J1c3mi
IGRlZmluZWQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1mdW5jdGlvbl0NCiAyMjk4IHwgc3RhdGlj
IHZvaWQgZW5pY19zZXRfYXBpX2J1c3koc3RydWN0IGVuaWMgKmVuaWMsIGJvb2wgYnVzeSkNCiAg
ICAgIHwgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn4NCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QK
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
