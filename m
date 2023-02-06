Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE3B68C1D5
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Feb 2023 16:40:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3B70D40482;
	Mon,  6 Feb 2023 15:40:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B70D40482
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675698031;
	bh=X6HZAaPL7olA1lnQEJxs5w/3yqeDlZWkSc6Q+pNf02k=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9bjH5xy1kV9uRg5eGWFHIRqJR0bxi0Ip+coTGwlOjdy0s2v/tpa6cQUKsEaytVYmg
	 6OOUsDTcFt237LIOMXN2tE6sMxkVvdfwRMn0duJ6auLDMnpcO7klHUu8kwpQvAHzxD
	 FFpN52K5Aqdh7JumiYn0MNF4wMtuu+vDQIAc2E4tK6EOd6BKaIjfXbi3is+j23iMko
	 twMDQUBaNP//KDCrAHIiUBSEhVVOuD3vOO5ayYvsS4YueFmwMWEGZ9X3IacAJ99Hxb
	 IPWZFRukyKF4hsKtbJSu0smw5V+tFDZh4bdQtoZ1T5/UxPjHOa3dlkh4/PzoEPzVtF
	 wf1ezxmBj6kpA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w_aLeoFQ2GVW; Mon,  6 Feb 2023 15:40:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1CE4340176;
	Mon,  6 Feb 2023 15:40:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1CE4340176
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8A78C1BF3E0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 15:40:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6348A403AC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 15:40:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6348A403AC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wOIVw3r03cge for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Feb 2023 15:40:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12BA140176
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 12BA140176
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 15:40:23 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1pP3ay-004DSq-5P; Mon, 06 Feb 2023 16:39:52 +0100
Date: Mon, 6 Feb 2023 16:39:52 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Vladimir Oltean <olteanv@gmail.com>
Message-ID: <Y+EfSKRwQMRgEurL@lunn.ch>
References: <20230201145845.2312060-1-o.rempel@pengutronix.de>
 <20230204001332.dd4oq4nxqzmuhmb2@skbuf>
 <20230206054713.GD12366@pengutronix.de>
 <20230206141038.vp5pdkjyco6pyosl@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230206141038.vp5pdkjyco6pyosl@skbuf>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=6yhmU5Aj7NOteiUxigfkd0O6jgTm4huNWcrZ7HcVw4s=; b=2jXFx1bj0ZR6HbUWHUe2JKIOsY
 cfIeL/ydCyPNIjXkWxaa5a1L2Rjwm8cCwAXz6pmZJhEafa43Tzhsc9tpiU09Z/w6KbHH8qwKT3kC6
 NpZgYl4kXOUOJdkb4jMteQlCMhPaFwAJnHP57sWlYbLGNGP8iKcigzYUfsVhxYsIiBLs=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=2jXFx1bj
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 00/23] net: add EEE
 support for KSZ9477 and AR8035 with i.MX6
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
Cc: Woojung Huh <woojung.huh@microchip.com>, Arun.Ramadoss@microchip.com,
 Florian Fainelli <f.fainelli@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, Oleksij Rempel <o.rempel@pengutronix.de>,
 Eric Dumazet <edumazet@google.com>, Wei Fang <wei.fang@nxp.com>,
 kernel@pengutronix.de, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> > > What is the code flow through the kernel with EEE? I wasn't able to find
> > > a good explanation about it.
> > > 
> > > Is it advertised by default, if supported? I guess phy_advertise_supported()
> > > does that.

The old flow is poorly defined. If the MAC supports EEE, it should
call phy_init_eee(). That looks at the results of auto-neg and returns
if EEE has been negotiated or not.

However, i'm not aware of any code which disables by default the
advertisement of EEE, or actually enables the negotiation of EEE. So
there are probably a number of PHYs which are EEE capable, connected
to a MAC driver which does not call phy_init_eee() and are advertising
EEE and negotiating EEE. There might also be a subset of that which
are actually doing EEE, despite not calling phy_init_eee().

So the current code is not good, and there is a danger we introduce
power regressions as we sort this out.

The current MAC/PHY API is pretty broken. We probably should be
handling this similar to pause. A MAC which supports pause should call
phy_support_asym_pause() or phy_support_sym_pause() which will cause
the PHY to advertise its supported Pause modes. So we might want to
add a phy_support_eee()? We then want the result of EEE negotiation
available in phydev for when the link_adjust() callback is called.

A quick look at a few MAC drivers seems to indicate many are getting
it wrong and don't actually wait for the result of the auto-neg....

   Andrew

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
