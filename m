Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F9168C337
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Feb 2023 17:29:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 40D4040492;
	Mon,  6 Feb 2023 16:29:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 40D4040492
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675700954;
	bh=R/51twfR5Mmh68OrzN4ty3ILMiZnx+JL1iwXXhfcyVI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=T15NyPqFpJPRjk5nE6ay8cqyqN9GN6kmHuQPrrrrdA5h3CnfLKKgeZlWaweQNoLAA
	 SewmfC6JVjxWr33fIZfxEX05wWTgzPNjCQEYhoAEuWh98dP0lPMMcS/lH8JRQukOMT
	 XdUjokQ8HlOlQMVqWWCuVSp+j8zVabM8SsPEP2byRp7A577j6ToLhQeNCl/lcn9S7I
	 EiKhkY94uDJbkswetzbGpF+md8DfVIs+aZ+2OOC5UVukTRxnLrC4dc+V4Zwxs+sXnU
	 44w8v+N9tpKH5RsMi+f0IJB856ZwTZqJJLv2CQiCfRFjviMuUjZ4MM3JiZ0/hN40Ky
	 o/uJ5fS86JnsA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DKJP7S3mZ0JN; Mon,  6 Feb 2023 16:29:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2CC63403AC;
	Mon,  6 Feb 2023 16:29:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2CC63403AC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 99FD91BF2CF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 10:50:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 730364031D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 10:50:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 730364031D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z-CSiv0oQ3JB for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Feb 2023 10:50:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1D666402EB
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1D666402EB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 10:50:21 +0000 (UTC)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pOz4P-0004HP-Jh; Mon, 06 Feb 2023 11:49:57 +0100
Received: from ore by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pOz4N-0006lC-3o; Mon, 06 Feb 2023 11:49:55 +0100
Date: Mon, 6 Feb 2023 11:49:55 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Vladimir Oltean <olteanv@gmail.com>
Message-ID: <20230206104955.GE12366@pengutronix.de>
References: <20230201145845.2312060-1-o.rempel@pengutronix.de>
 <20230201145845.2312060-3-o.rempel@pengutronix.de>
 <20230204005418.7ryb4ihuzxlbs2nl@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230204005418.7ryb4ihuzxlbs2nl@skbuf>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: intel-wired-lan@lists.osuosl.org
X-Mailman-Approved-At: Mon, 06 Feb 2023 16:29:04 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 02/23] net: phy: add
 genphy_c45_read_eee_abilities() function
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
Cc: Woojung Huh <woojung.huh@microchip.com>, Andrew Lunn <andrew@lunn.ch>,
 Arun.Ramadoss@microchip.com, Florian Fainelli <f.fainelli@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, Wei Fang <wei.fang@nxp.com>,
 kernel@pengutronix.de, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, UNGLinuxDriver@microchip.com,
 "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Vladimir,

On Sat, Feb 04, 2023 at 02:54:18AM +0200, Vladimir Oltean wrote:
> On Wed, Feb 01, 2023 at 03:58:24PM +0100, Oleksij Rempel wrote:

[....]

> > +static const int phy_eee_100_10000_features_array[6] = {
> 
> Don't need array length unless the array is sparse, which isn't the case here.
> 
> > +	ETHTOOL_LINK_MODE_100baseT_Full_BIT,
> > +	ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
> > +	ETHTOOL_LINK_MODE_10000baseT_Full_BIT,
> > +	ETHTOOL_LINK_MODE_1000baseKX_Full_BIT,
> > +	ETHTOOL_LINK_MODE_10000baseKX4_Full_BIT,
> > +	ETHTOOL_LINK_MODE_10000baseKR_Full_BIT,
> 
> Why stop at 10GBase-KR? Register 3.20 defines EEE abilities up to 100G
> (for speeds >10G, there seem to be 2 modes, "deep sleep" or "fast wake",
> with "deep sleep" being essentially equivalent to the only mode
> available for <=10G modes).

Hm,

If i take only deep sleep, missing modes are:
3.20.13 100GBASE-R deep sleep
       family of Physical Layer devices using 100GBASE-R encoding:
       100000baseCR4_Full
       100000baseKR4_Full
       100000baseCR10_Full (missing)
       100000baseSR4_Full
       100000baseSR10_Full (missing)
       100000baseLR4_ER4_Full

3.20.11 25GBASE-R deep sleep
       family of Physical Layer devices using 25GBASE-R encoding:
       25000baseCR_Full
       25000baseER_Full (missing)
       25000baseKR_Full
       25000baseLR_Full (missing)
       25000baseSR_Full

3.20.9 40GBASE-R deep sleep
       family of Physical Layer devices using 40GBASE-R encoding:
       40000baseKR4_Full
       40000baseCR4_Full
       40000baseSR4_Full
       40000baseLR4_Full

3.20.7 40GBASE-T
       40000baseT_Full (missing)

I have no experience with modes > 1Gbit. Do all of them correct? What
should we do with missing modes? Or may be it make sense to implement >
10G modes separately?

Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
