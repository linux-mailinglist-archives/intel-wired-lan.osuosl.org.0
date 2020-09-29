Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CA727D1DF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Sep 2020 16:53:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6D8B285FAC;
	Tue, 29 Sep 2020 14:52:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aKX8jeO2gght; Tue, 29 Sep 2020 14:52:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A90D185FAD;
	Tue, 29 Sep 2020 14:52:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 25CFB1BF312
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 14:37:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1FD7D864B2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 14:37:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WFGGvvS0DTx4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Sep 2020 14:37:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 76F2C85074
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 14:37:08 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601390224;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7VmCiL2ZmrGBEC6BMl9JAzfcplFXUuQxSEoukFP38Qc=;
 b=V1+jfdupgUDguwQLoSfM1UDKyK97umPBk3RCJPtrXvo3HjkrAv7oZ8d769kr1UDVOiqeTZ
 dYLZ91gc/sIaO50hcs95TdgAz48RhfBSdsMS4DBcFHFsnovSq6VpdWIndCw/TDoShwfw6K
 +9gek94Fbm54gtYRDPDw8mmMw1zu7wsXy4XgCJqs+Ou4lV81QykEgsNo9DjLsy3AKB/AQT
 G576m9HeX1S7jQnyrTObW1HKy1c9vZ/qj50V8IIaFz92XDLpVe1/eK2AHh590q7RBBj8DC
 CNoJkwrvYs+wq1wIIZrzEBqJCA9sxTEj2C2ebwz12LDtKQOxv8zXpvTIG+C0Uw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601390224;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7VmCiL2ZmrGBEC6BMl9JAzfcplFXUuQxSEoukFP38Qc=;
 b=sPt4IoTcBHRSkKQG9REMY6x9b+3JCLHw6ozsiGzdslM4l4/myrfh7jYnJBRfn53aNiiK7S
 jsmrp6TrTiHQFoDA==
To: Shannon Nelson <snelson@pensando.io>, LKML <linux-kernel@vger.kernel.org>
In-Reply-To: <1d0950f8-cab4-9ef2-6cf7-73b71b750a8d@pensando.io>
References: <20200927194846.045411263@linutronix.de>
 <20200927194920.918550822@linutronix.de>
 <5e4c3201-9d90-65b1-5c13-e2381445be1d@pensando.io>
 <1d0950f8-cab4-9ef2-6cf7-73b71b750a8d@pensando.io>
Date: Tue, 29 Sep 2020 16:37:04 +0200
Message-ID: <87h7rgk5tb.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 29 Sep 2020 14:52:57 +0000
Subject: Re: [Intel-wired-lan] [patch 11/35] net: ionic: Replace
 in_interrupt() usage.
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>, linux-doc@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Chris Snook <chris.snook@gmail.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 Govindarajulu Varadarajan <_govind@gmx.com>,
 Vishal Kulkarni <vishal@chelsio.com>, Luca Coelho <luciano.coelho@intel.com>,
 Edward Cree <ecree@solarflare.com>, libertas-dev@lists.infradead.org,
 brcm80211-dev-list@cypress.com, brcm80211-dev-list.pdl@broadcom.com,
 Ping-Ke Shih <pkshih@realtek.com>, Johannes Berg <johannes.berg@intel.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Intel Linux Wireless <linuxwifi@intel.com>,
 Russell King <linux@armlinux.org.uk>, Matthew Wilcox <willy@infradead.org>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Martin Habets <mhabets@solarflare.com>, Ulrich Kunitz <kune@deine-taler.de>,
 Jay Cliburn <jcliburn@gmail.com>, Paul McKenney <paulmck@kernel.org>,
 Stanislaw Gruszka <stf_xl@wp.pl>, Jouni Malinen <j@w1.fi>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Pascal Terjan <pterjan@google.com>,
 Linus Torvalds <torvalds@linuxfoundation.org>,
 Amitkumar Karwar <amitkarwar@gmail.com>, Wright Feng <wright.feng@cypress.com>,
 Daniel Drake <dsd@gentoo.org>, Pensando Drivers <drivers@pensando.io>,
 Kalle Valo <kvalo@codeaurora.org>, Franky Lin <franky.lin@broadcom.com>,
 Solarflare linux maintainers <linux-net-drivers@solarflare.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, Xinming Hu <huxinming820@gmail.com>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ganapathi Bhat <ganapathi.bhat@nxp.com>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>, Jon Mason <jdmason@kudzu.us>,
 Christian Benvenuti <benve@cisco.com>, "David S.
 Miller" <davem@davemloft.net>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCBTZXAgMjggMjAyMCBhdCAxMjo1MSwgU2hhbm5vbiBOZWxzb24gd3JvdGU6Cj4gT24g
OS8yOC8yMCAxMDoyNCBBTSwgU2hhbm5vbiBOZWxzb24gd3JvdGU6Cj4+PiBpb25pY19saWZfYWRk
cigpIGNhbiBiZSBjYWxsZWQgZnJvbToKPj4+Cj4+PiDCoCAxKSAtPm5kb19zZXRfcnhfbW9kZSgp
IHdoaWNoIGlzIHVuZGVyIG5ldGlmX2FkZHJfbG9ja19iaCgpKSBzbyBpdCAKPj4+IG11c3Qgbm90
Cj4+PiDCoMKgwqDCoCBzbGVlcC4KPj4+Cj4+PiDCoCAyKSBJbml0IGFuZCBzZXR1cCBmdW5jdGlv
bnMgd2hpY2ggYXJlIGluIGZ1bGx5IHByZWVtcHRpYmxlIHRhc2sgCj4+PiBjb250ZXh0Lgo+Pj4K
Pj4+IF9pb25pY19saWZfcnhfbW9kZSgpIGhhcyBvbmx5IG9uZSBjYWxsIHBhdGggd2l0aCBCSCBk
aXNhYmxlZC4KPgo+IE5vdyB0aGF0IEkndmUgaGFkIG15IGNvZmZlZSwgbGV0J3MgbG9vayBhdCB0
aGlzIGFnYWluIC0gdGhlcmUgYXJlIAo+IG11bHRpcGxlIHBhdGhzIHRoYXQgZ2V0IHVzIHRvIF9p
b25pY19saWZfcnhfbW9kZSgpOgo+Cj4gLm5kb19zZXRfcnhfbW9kZQo+ICDCoCBpb25pY19zZXRf
cnhfbW9kZSwKPiAgwqDCoMKgIF9pb25pY19saWZfcnhfbW9kZQo+Cj4geyBpb25pY19vcGVuLCBp
b25pY19saWZfaGFuZGxlX2Z3X3VwLCBpb25pY19zdGFydF9xdWV1ZXNfcmVjb25maWcgfQo+ICDC
oMKgwqAgaW9uaWNfdHhyeF9pbml0Cj4gIMKgwqDCoMKgwqAgaW9uaWNfc2V0X3J4X21vZGUKPiAg
wqDCoMKgwqDCoMKgwqAgX2lvbmljX2xpZl9yeF9tb2RlCgpIcm0uIExldCBtZSBzdGFyZSBhdCBp
dCBhZ2Fpbi4uLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3Jn
Cmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxh
bgo=
