Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 230D220674D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2020 00:42:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C1E0088A7B;
	Tue, 23 Jun 2020 22:42:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BXpnFEkYg-j5; Tue, 23 Jun 2020 22:42:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 037E288A88;
	Tue, 23 Jun 2020 22:42:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E24801BF345
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 20:16:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CB43D2DB63
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 20:16:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4WDDOToxrZWB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jun 2020 20:16:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 1C2432673A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 20:16:31 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0BB322064B;
 Tue, 23 Jun 2020 20:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592943390;
 bh=gDGnvZfZxG08b9wvGhCaBJiEgiArLyhOEhwuqh+/4Xg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Y9UwVHOwGJuOhYMiSxOJo8XDSMmeGgWKrc0Uz3JBUaLR4LA6LbHi7+Oi+JfJLfcaq
 pKB2NjOEMM3KUgJf9UswWdLF53hl6JjKFdIhEfegfP+IvdJWnRd/j9XnlTSz2f0k02
 fsulvyWw9rlpOsS0WvtokvCV2JlEajVWPOdNF6KA=
Date: Tue, 23 Jun 2020 13:16:28 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Message-ID: <20200623131628.232ec75e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <CAMRc=MfF1RbQCJ62QhscFLu1HKYRc9M-2SMep1_vTJ2xhKjLAA@mail.gmail.com>
References: <20200622100056.10151-1-brgl@bgdev.pl>
 <20200622100056.10151-4-brgl@bgdev.pl>
 <20200622154943.02782b5a@kicinski-fedora-PC1C0HJN>
 <CAMRc=MfF1RbQCJ62QhscFLu1HKYRc9M-2SMep1_vTJ2xhKjLAA@mail.gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 23 Jun 2020 22:42:18 +0000
Subject: Re: [Intel-wired-lan] [PATCH 03/11] net: devres: relax
 devm_register_netdev()
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
Cc: Andrew Lunn <andrew@lunn.ch>, linux-doc <linux-doc@vger.kernel.org>,
 Fabien Parent <fparent@baylibre.com>, Frank Rowand <frowand.list@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
 Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 intel-wired-lan@lists.osuosl.org, Mark Lee <Mark-MC.Lee@mediatek.com>,
 devicetree <devicetree@vger.kernel.org>,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek
 SoC..." <linux-mediatek@lists.infradead.org>, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 netdev <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, "David S . Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCAyMyBKdW4gMjAyMCAxMToxMjoyNCArMDIwMCBCYXJ0b3N6IEdvbGFzemV3c2tpIHdy
b3RlOgo+IHd0LiwgMjMgY3plIDIwMjAgbyAwMDo0OSBKYWt1YiBLaWNpbnNraSA8a3ViYUBrZXJu
ZWwub3JnPiBuYXBpc2HFgihhKToKPiA+IE9uIE1vbiwgMjIgSnVuIDIwMjAgMTI6MDA6NDggKzAy
MDAgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZTogIAo+ID4gPiBGcm9tOiBCYXJ0b3N6IEdvbGFz
emV3c2tpIDxiZ29sYXN6ZXdza2lAYmF5bGlicmUuY29tPgo+ID4gPgo+ID4gPiBUaGlzIGRldnJl
cyBoZWxwZXIgcmVnaXN0ZXJzIGEgcmVsZWFzZSBjYWxsYmFjayB0aGF0IG9ubHkgdW5yZWdpc3Rl
cnMKPiA+ID4gdGhlIG5ldF9kZXZpY2UuIEl0IHdvcmtzIHBlcmZlY3RseSBmaW5lIHdpdGggbmV0
ZGV2IHN0cnVjdHMgdGhhdCBhcmUKPiA+ID4gbm90IG1hbmFnZWQgb24gdGhlaXIgb3duLiBUaGVy
ZSdzIG5vIHJlYXNvbiB0byBjaGVjayB0aGlzIC0gZHJvcCB0aGUKPiA+ID4gd2FybmluZy4KPiA+
ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogQmFydG9zeiBHb2xhc3pld3NraSA8YmdvbGFzemV3c2tp
QGJheWxpYnJlLmNvbT4gIAo+ID4KPiA+IEkgdGhpbmsgdGhlIHJlYXNvbmluZyBmb3IgdGhpcyBz
dWdnZXN0aW9uIHdhcyB0byBjYXRjaCBwb3NzaWJsZSBVQUYKPiA+IGVycm9ycy4gVGhlIG5ldGRl
diBkb2Vzbid0IG5lY2Vzc2FyaWx5IGhhcyB0byBiZSBmcm9tIGRldm1fYWxsb2NfKgo+ID4gYnV0
IGl0IGhhcyB0byBiZSBwYXJ0IG9mIGRldm0tZWQgbWVtb3J5IG9yIG1lbW9yeSB3aGljaCBpcyBm
cmVlZAo+ID4gYWZ0ZXIgZHJpdmVyJ3MgcmVtb3ZlIGNhbGxiYWNrLgo+ID4gIAo+IAo+IFllcyBJ
IHVuZGVyc3RhbmQgdGhhdCBVQUYgd2FzIHRoZSBjb25jZXJuIGhlcmUsIGJ1dCB0aGlzIGxpbWl0
YXRpb24gaXMKPiB1bm5lY2Vzc2FyeS4gSW4gaXRzIGN1cnJlbnQgZm9ybSBkZXZtX3JlZ2lzdGVy
X25ldGRldigpIG9ubHkgd29ya3MgZm9yCj4gc3RydWN0IG5ldF9kZXZpY2UgYWxsb2NhdGVkIHdp
dGggZGV2bV9hbGxvY19ldGhlcmRldigpLiBNZWFud2hpbGUKPiBjYWxsaW5nIGFsbG9jX25ldGRl
digpICh3aGljaCBkb2Vzbid0IGhhdmUgaXRzIGRldm0gY291bnRlcnBhcnQgeWV0IC0KPiBJIG1h
eSBsb29rIGludG8gaXQgc2hvcnRseSksCgpJZiByZXNvdXJjZSBtYW5hZ2VkIGFsbG9jX25ldGRl
digpIGlzIG5lZWRlZCBkZXZtX2FsbG9jX25ldGRldigpIGNhbgpiZSBjcmVhdGVkLCBhbmQgZXZl
biByZXVzZSBkZXZtX2ZyZWVfbmV0ZGV2KCkgc28gbm8gY2hhbmdlcyB0byB0aGUKd2FybmluZyBh
cmUgZXZlbiBuZWNlc3NhcnkgZm9yIHN1Y2ggZXh0ZW5zaW9uLgoKPiB0aGVuIHJlZ2lzdGVyaW5n
IGEgZGV2bSBhY3Rpb24gd2l0aCBkZXZtX2FkZF9hY3Rpb25fb3JfcmVzZXQoKSB3aGljaAo+IHdv
dWxkIGZyZWUgdGhpcyBtZW1vcnkgaXMgYSBwZXJmZWN0bHkgZmluZSB1c2UgY2FzZS4gVGhpcyBw
YXRjaCB3b3VsZAo+IG1ha2UgaXQgcG9zc2libGUuCgphbGxvY19uZXRkZXYoKSArIGRldm1fYWRk
X2FjdGlvbiBtYWtlcyBubyBzZW5zZSBpbiB0aGUgdXBzdHJlYW0ga2VybmVsLApqdXN0IGFkZCB0
aGUgYXBwcm9wcmlhdGUgaGVscGVyLCB3ZSBjYXJlIGxpdHRsZSBhYm91dCBvdXQgb2YgdHJlZSBj
b2RlLgoKPiA+IEFyZSB0aGVyZSBjYXNlcyBpbiBwcmFjdGljZSB3aGVyZSB5b3UndmUgc2VlbiB0
aGUgbmV0ZGV2IG5vdCBiZWluZwo+ID4gZGV2bSBhbGxvY2F0ZWQ/ICAKPiAKPiBBcyBJIHNhaWQg
YWJvdmUgLSBhbGxvY19uZXRkZXYoKSB1c2VkIGJ5IHdpcmVsZXNzLCBjYW4sIHVzYiBldGMuCj4g
ZHJpdmVycyBkb2Vzbid0IGhhdmUgYSBkZXZyZXMgdmFyaWFudC4KCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBs
aXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
