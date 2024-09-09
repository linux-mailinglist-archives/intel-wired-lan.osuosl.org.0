Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 88AA69722CF
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Sep 2024 21:36:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC03B80A6C;
	Mon,  9 Sep 2024 19:36:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JXTU_hie-h_V; Mon,  9 Sep 2024 19:36:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C766E80563
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725910571;
	bh=/l8900RWbPmYjq3b+TLQg0cSZw4LqMuDhLsLEMWJlZQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SauHQ2mFpkJdvm9ZXF79CW3K8krV4vwEa4wk3ky6gxu5CnZMa4bewwW0dDizcvs/5
	 yubEgH3V1Pj7VzCg4T+x8w2NN0L+fEkp6PK1cRKzYfntKldhqA5O6oe3/mNpMTDX6D
	 AnJKNz21Fh+4OzQ9Iek0cgiq1IUohYUQBa/VIBwsx+u1RK7Se6tc6cfwXuPSdoicSK
	 xDUYQysuGr3tVpxICHSgUPiOb9xlTKXJd/dDlkn5oj77J+cMfuNDM5XFaDsVk3a8/v
	 0H4EbT1iMTSGopt10neDYSlvfK9VTtKCcmk5VfRlJa6Bg/1POU7LXfdqCpn8Png/7X
	 tFg2A3/4BKA2A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C766E80563;
	Mon,  9 Sep 2024 19:36:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 333A71BF313
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 19:36:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2DAC04018E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 19:36:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qiT-qIJShg4f for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Sep 2024 19:36:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E056D40190
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E056D40190
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E056D40190
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 19:36:05 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1snkAt-0072OP-Gu; Mon, 09 Sep 2024 21:35:47 +0200
Date: Mon, 9 Sep 2024 21:35:47 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Jeff Daly <jeffd@silicom-usa.com>
Message-ID: <da850961-d6ac-46f5-8afb-66e83e33095e@lunn.ch>
References: <20240906104145.9587-1-jeffd@silicom-usa.com>
 <becaaeaf-e76a-43d2-b6e1-e7cc330d8cae@lunn.ch>
 <VI1PR04MB5501C2A00D658115EF4E7845EA9E2@VI1PR04MB5501.eurprd04.prod.outlook.com>
 <ac2faac2-a946-4052-9f61-b0c1c644ee59@lunn.ch>
 <VI1PR04MB5501658A227BFC1A832B2627EA992@VI1PR04MB5501.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <VI1PR04MB5501658A227BFC1A832B2627EA992@VI1PR04MB5501.eurprd04.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=/l8900RWbPmYjq3b+TLQg0cSZw4LqMuDhLsLEMWJlZQ=; b=vMnIz3gY1KXOGHG+O63lW4eynk
 BwiiICYSi/jPJFBQV7KfsO1nXaOjvrZcem6HS7zQrujD8+iYOo3PmD6jlZqeU+99+xY15ZwRO1qzw
 txMIPgOGUYb30c4+vFe+oYZ7F77Q3km9Zu72uWfljGDDlSfJgWPoZNkA5iJAngcIPYbA=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=vMnIz3gY
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Manual AN-37 for troublesome
 link partners for X550 SFI
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
Cc: "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> This was originally worked out by Doug Boom at Intel.  It had to do
> with autonegotiation not being the part of the SFP optics when the
> Denverton X550 Si was released and was thus not POR for DNV.  The
> Juniper switches however won't exit their AN sequence unless an AN37
> transaction is seen.

I wounder what 802.3 says about this. I suspect the Juniper switch is
within the standard here, and the x550 is broken.

> Other switch vendors recover gracefully when the right encoding is
> discovered, not using AN37 transactions, but not Juniper.

We have seen similar things in the Linux core PHY handling, but mostly
around 2500BaseX MAC and PHY drivers. A lot of vendors implement what
they call over clocked SGMII, rather than 2500BaseX. But SGMII
signalling makes no sense when overclocked to 2.5GHz, so they just
disable it, leaving no signalling at all. Some 25000BaseX PHYs handle
this, they gracefully fall back to sensible defaults when they
discover they are connected to a broken MAC. Others need telling they
are connected to a broken MAC which does not perform signalling. But
it is easier for a MAC-PHY relationship, everything is on one board,
we know all the details, and can work around the issues.

> Since DNV doesn't do AN37 in SFP auto mode, there's an endless loop.
> (Technically, the switches *could* be updated to new firmware that
> should have this capability, but apparently a logistical issue for
> at least one of our customers.)

I would say that is the wrong solution, i don't think the switch is
doing anything wrong. But the devil is in the details, check 802.3.

> Going back through my emails, Doug did mention that it would possibly cause issues with other switches, but it wasn't anything we, or (until just recently) anyone else had observed.  A quote from Doug:  
> 
> "that AN37 fix pretty much only works with the Juniper switches, and can cause problems with other switches."

LOS from the from the SFP cage will tell you there is something on the
other end of the link. It is not a particularly reliable signal, since
it just means there is light. Is there any indication the link is not
usable? You could wait 10 seconds after LOS is inactive, and if there
is no usable link kick off the workaround. If after 10 seconds the
link is still not usable, turn the workaround off again. Flip flop
every 10 seconds.

Hopefully the initial 10 seconds delay means you won't upset switches
which currently work, and after 10 seconds, you gain a link to
switches that really do expect AN37.

	Andrew
