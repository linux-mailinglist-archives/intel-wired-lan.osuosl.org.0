Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB2927AF9C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 16:03:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 74D69855E1;
	Mon, 28 Sep 2020 14:03:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1H-MKcrFestJ; Mon, 28 Sep 2020 14:03:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9E55986372;
	Mon, 28 Sep 2020 14:03:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 829DC1BF405
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 10:25:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7D97B855F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 10:25:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KewBdA3X5Iuj for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Sep 2020 10:25:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F174A85593
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 10:25:05 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601288703;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RS8aaD/teCyQjHIzfzURMvl8u+n+j/rIgE5B0tuRdqE=;
 b=gefvSazqCe4P8yXMo6E5U3J2nl9MRIsoO0COTSGGhv6CaqV3kK47f3WLpsoS162+/W9/Vc
 Wkzqk6yvWPGwPTL2eAmHgrG3XH/+ywXzrlCVryyrOnGaUtfzn4Tijwv/s1YNtCkS0vEhrG
 +4YN1IIfcrakr2TzIlS9lSPb9AyFXfZrXkhJw1HF7Pi6y5zrgk9waDEU48V9Kw+lPeZLly
 Wu1mg8ha3QHNKHUEwLgWa6tKTwRcGJLzAda1mhslxVkZ1je+KWGN3kAPZD7ly/wCWCC4CD
 OnKYpfAfsMlO2sywS2GlLfQG5j5EJ4fk8dHmS+9cCbyjOqWVrFmGedLp39lLug==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601288703;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RS8aaD/teCyQjHIzfzURMvl8u+n+j/rIgE5B0tuRdqE=;
 b=OxHd7EyfzbyMOnvuIYpsPknE9szpQG6fIVC/UtImzmuMTucnagAwUguEK0km7NFiEUZ3/L
 u706LrSyXdPBgFAg==
To: David Miller <davem@davemloft.net>
In-Reply-To: <20200927.135707.1699954431349573308.davem@davemloft.net>
References: <20200927194846.045411263@linutronix.de>
 <20200927.135707.1699954431349573308.davem@davemloft.net>
Date: Mon, 28 Sep 2020 12:25:02 +0200
Message-ID: <87blhqkxkx.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 28 Sep 2020 14:03:43 +0000
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gU3VuLCBTZXAgMjcgMjAyMCBhdCAxMzo1NywgRGF2aWQgTWlsbGVyIHdyb3RlOgoKPiBGcm9t
OiBUaG9tYXMgR2xlaXhuZXIgPHRnbHhAbGludXRyb25peC5kZT4KPiBEYXRlOiBTdW4sIDI3IFNl
cCAyMDIwIDIxOjQ4OjQ2ICswMjAwCj4KPj4gaW4gdGhlIGRpc2N1c3Npb24gYWJvdXQgcHJlZW1w
dCBjb3VudCBjb25zaXN0ZW5jeSBhY2Nyb3NzIGtlcm5lbCBjb25maWd1cmF0aW9uczoKPgo+IFBs
ZWFzZSByZXNwaW4gdGhpcyBhZ2FpbnN0IG5ldC1uZXh0LCBzb21lIG9mIHRoZSBwYXRjaGVzIGlu
IGhlcmUgYXJlIGFscmVhZHkKPiBpbiBuZXQtbmV4dCAodGhlIHdpcmVsZXNzIGRlYnVnIG1hY3Jv
IG9uZSkgYW5kIGV2ZW4gYWZ0ZXIgdGhhdCB0aGUgc2VyaWVzCj4gZG9lc24ndCBidWlsZDoKCldp
bGwgZG8uCgo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2Npc2NvL2VuaWMvZW5pY19tYWluLmM6IElu
IGZ1bmN0aW9uIOKAmGVuaWNfcmVzZXTigJk6Cj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvY2lzY28v
ZW5pYy9lbmljX21haW4uYzoyMzE1OjI6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBm
dW5jdGlvbiDigJhlbmljX3NldF9hcGlfc3RhdGXigJk7IGRpZCB5b3UgbWVhbiDigJhlbmljX3Nl
dF9hcGlfYnVzeeKAmT8gWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25dCj4g
IDIzMTUgfCAgZW5pY19zZXRfYXBpX3N0YXRlKGVuaWMsIHRydWUpOwo+ICAgICAgIHwgIF5+fn5+
fn5+fn5+fn5+fn5+fgo+ICAgICAgIHwgIGVuaWNfc2V0X2FwaV9idXN5Cj4gQXQgdG9wIGxldmVs
Ogo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2Npc2NvL2VuaWMvZW5pY19tYWluLmM6MjI5ODoxMzog
d2FybmluZzog4oCYZW5pY19zZXRfYXBpX2J1c3nigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1X
dW51c2VkLWZ1bmN0aW9uXQo+ICAyMjk4IHwgc3RhdGljIHZvaWQgZW5pY19zZXRfYXBpX2J1c3ko
c3RydWN0IGVuaWMgKmVuaWMsIGJvb2wgYnVzeSkKPiAgICAgICB8ICAgICAgICAgICAgIF5+fn5+
fn5+fn5+fn5+fn5+CgpEdWgsIG5vdCBzdXJlIGhvdyBJIG1hbmFnZWQgdGhhdC4gU29ycnkuIHdp
bGwgZml4IGFuZCByZWJhc2UuCgpUaGFua3MsCgogICAgICAgIHRnbHgKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
