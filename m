Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 612876A4A4E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Feb 2023 19:49:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9C53440A90;
	Mon, 27 Feb 2023 18:49:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9C53440A90
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677523772;
	bh=g29rD+KHg3gkEaoHHLyRZvmH3SBvEn0AHsFSA5Th/Y0=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Y1d9tWuF6piWfQLs4Ss70BlI5pFN9HNodTBb2EiFIAxIWpCdaeeMXXDIyfWtkhxWI
	 jtOPKDg/axeBol2vEnlOdEj5Pkvwinf6JymZokmAdNfSf8i2jb3tiE1s7CK3TMF0qz
	 orLBggM5/PfTsNO51aqgqD6CfDSPgN6dqd3+IDbE6HNc5g/Hcow4PTcnBDsB4ty5w7
	 EiKVVhKwZaft8txk8zrLVSX/65w7zmk6GFJjP/+gXmmAKfacZLXo6yy0syuOqliL5R
	 As7lVst8gmP9rPtC6fwDHdItwT9AI8Aw9FpyPG3XMnSRyHXknTXj8Fc+SW4gk6v7P2
	 yJdVCUWj/rfBQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qkiSr7Ep_1Ca; Mon, 27 Feb 2023 18:49:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9A3BF40A89;
	Mon, 27 Feb 2023 18:49:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A3BF40A89
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CF6991BF4D8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Feb 2023 18:49:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A766840A88
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Feb 2023 18:49:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A766840A88
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eeuWXm8nXul2 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Feb 2023 18:49:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E2A89401E1
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E2A89401E1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Feb 2023 18:49:24 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id DDC94B80D38;
 Mon, 27 Feb 2023 18:49:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A02C9C4339C;
 Mon, 27 Feb 2023 18:49:19 +0000 (UTC)
Date: Mon, 27 Feb 2023 10:49:18 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20230227104918.6ceccf90@kernel.org>
In-Reply-To: <Y/yqwifeQBC3sSaD@sirena.org.uk>
References: <20230211074113.2782508-1-o.rempel@pengutronix.de>
 <20230211074113.2782508-6-o.rempel@pengutronix.de>
 <Y/ufuLJdMcxc6f47@sirena.org.uk>
 <20230227055241.GC8437@pengutronix.de>
 <Y/yqwifeQBC3sSaD@sirena.org.uk>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1677523760;
 bh=eJ8MvIHkEpCJVPtYBOWxQns0jpeoupbRfcPhZeOjCEw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=pkN5HEDL1t8XoUycV0JdtD7MDdEm+8RjOWzwxuHlu/44qNKOyqdnQOrP7NMJf8pZV
 hjVejLNF7YfqsRNfeom0U4EyhU5W40bjQz3GjjGJK/KtHEJ4hX9pG1hHFlX2C4ih4Y
 /L0FMn3Yh0ebQFesLQKMClBZ7vuHrITKe7jxA+ar4I+SjdUle7Vh5pgb8c+ZLQQWyJ
 Lw+wfDIK+8u+tQj9xV053s9uKtYzRtQWf6yW3H/gfEuxFs6wJVHLhQ7PDTvUBIish4
 xE4qPM7+UGffHIiXJcJHRwdnEGj8oTecLw8XBhmQkBUGs24DqQnwWLg4VXWAzd3+7c
 9aa2tkfdfTTBA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=pkN5HEDL
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 5/9] net: phy: add
 genphy_c45_ethtool_get/set_eee() support
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
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Eric Dumazet <edumazet@google.com>, linux-amlogic@lists.infradead.org,
 Arun.Ramadoss@microchip.com, Florian Fainelli <f.fainelli@gmail.com>,
 Oleksij Rempel <o.rempel@pengutronix.de>, Jose Abreu <joabreu@synopsys.com>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>, Wei Fang <wei.fang@nxp.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 kernel@pengutronix.de, Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCAyNyBGZWIgMjAyMyAxMzowNjoxMCArMDAwMCBNYXJrIEJyb3duIHdyb3RlOgo+IFRo
ZXkgc2VlbSB0byB3b3JrLCB0aGFua3MhICBJIGhhZCBmb3VuZCBhbmQgdHJpZWQgdGhlIHNlY29u
ZCBwYXRjaCBidXQKPiBpdCBkb2Vzbid0IGFwcGx5IHdpdGhvdXQgdGhlIGZpcnN0IHNlcmllcy4g
IFdpbGwgdGhvc2UgcGF0Y2hlcyBiZSBnb2luZwo+IHRvIExpbnVzIGZvciAtcmMxPyAgSXQncyBw
cmV0dHkgZGlzcnVwdGl2ZSB0byBhIGJ1bmNoIG9mIHRoZSB0ZXN0Cj4gaW5mcmFzdHJ1Y3R1cmUg
dG8gbm90IGJlIGFibGUgdG8gTkZTIGJvb3QuCgpTaG91bGQgYmUgaW4gTGludXMncyB0cmVlIGxh
dGVyIHRvZGF5IPCfpJ7vuI8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1
b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13
aXJlZC1sYW4K
