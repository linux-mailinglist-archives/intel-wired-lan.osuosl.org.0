Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B917A443A94
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Nov 2021 01:48:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DA5C54033A;
	Wed,  3 Nov 2021 00:48:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ylzb3pfgXcTc; Wed,  3 Nov 2021 00:48:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B0AD640228;
	Wed,  3 Nov 2021 00:48:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A0B4C1BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Nov 2021 00:48:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 86C2340228
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Nov 2021 00:48:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KPS3Wk4GyUSY for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Nov 2021 00:48:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A44FC40113
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Nov 2021 00:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=wTFL8pY/W5Ahb3rFJh/TyoCP20ECF5bOXb8LXpxR4as=; b=ylTqxp7WFU60eR/EYU5es9nNgz
 PY3BPj7hl0NJp6z0u4g0l0cWFyeHiRmMjw1UhmXOePy/sayofDBK6aoeposJkZchXcH6ZhriqUroY
 mp0R/x2Mho+3XtHijH+e6JxTw8D5yQ4II6020eX0cw/517hMK/Mh1e9lBklhnt91HUHY=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1mi4Rv-00CSC2-Ac; Wed, 03 Nov 2021 01:48:19 +0100
Date: Wed, 3 Nov 2021 01:48:19 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Cyril Novikov <cnovikov@lynx.com>
Message-ID: <YYHcUxOA5jvrRtEs@lunn.ch>
References: <896681e4-fcd7-3187-8e59-75ce0896ebd3@lynx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <896681e4-fcd7-3187-8e59-75ce0896ebd3@lynx.com>
Subject: Re: [Intel-wired-lan] [PATCH v2 net] ixgbe: set X550 MDIO speed
 before talking to PHY
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
Cc: netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Nov 01, 2021 at 06:39:36PM -0700, Cyril Novikov wrote:
> The MDIO bus speed must be initialized before talking to the PHY the first
> time in order to avoid talking to it using a speed that the PHY doesn't
> support.
> 
> This fixes HW initialization error -17 (IXGBE_ERR_PHY_ADDR_INVALID) on
> Denverton CPUs (a.k.a. the Atom C3000 family) on ports with a 10Gb network
> plugged in. On those devices, HLREG0[MDCSPD] resets to 1, which combined
> with the 10Gb network results in a 24MHz MDIO speed, which is apparently
> too fast for the connected PHY. PHY register reads over MDIO bus return
> garbage, leading to initialization failure.
> 
> Reproduced with Linux kernel 4.19 and 5.15-rc7. Can be reproduced using
> the following setup:
> 
> * Use an Atom C3000 family system with at least one X552 LAN on the SoC
> * Disable PXE or other BIOS network initialization if possible
>   (the interface must not be initialized before Linux boots)
> * Connect a live 10Gb Ethernet cable to an X550 port
> * Power cycle (not reset, doesn't always work) the system and boot Linux
> * Observe: ixgbe interfaces w/ 10GbE cables plugged in fail with error -17
> 
> Signed-off-by: Cyril Novikov <cnovikov@lynx.com>
> Fixes: e84db7272798 ("ixgbe: Introduce function to control MDIO speed")

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
