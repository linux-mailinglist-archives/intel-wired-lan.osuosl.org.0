Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 283A46A2771
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Feb 2023 07:08:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 597704168F;
	Sat, 25 Feb 2023 06:08:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 597704168F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677305334;
	bh=u4TeELGRRqXoohRKOa6A7ovje8UHKYFgTEj3BXhRivA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Kca0bCaUBiuyGVc7nJNtgK/6fur8y3GtsfuQnbjgC+odr/Lnbyb4PXVETYK5FMOkp
	 Boj/sXQe42y7CJRJFVaSzFD8UOFWWOKWR6TgVlwbs03e4dC1pFXIAlgNXw2BnfDGvX
	 Y6iC//xVpF7PPgI06JW/w1EO60/60mnC54PVoa/Hcl9IC45hcxgiqnFX3q0UIokop2
	 5hLojgTfud3yzdO/YJZlX8S0rUdVALRR+lV/BF+Q/LvV4FKiTCzrcUNY9R787gkc1K
	 RBTG0ZcrsLiTkJEvjA7x6MqxqIADpW5QcuNJNlXCArBrNXTmII4EOadrMYegJ9nOmT
	 8r7yKeUAEMuXA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g9U97x3tuUf2; Sat, 25 Feb 2023 06:08:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EEF5541674;
	Sat, 25 Feb 2023 06:08:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EEF5541674
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 22AF91BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Feb 2023 06:08:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ECE5141674
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Feb 2023 06:08:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ECE5141674
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jw4ylNwh8rHc for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Feb 2023 06:08:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E7AB41673
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3E7AB41673
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Feb 2023 06:08:45 +0000 (UTC)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pVnjF-0004Xf-D3; Sat, 25 Feb 2023 07:08:17 +0100
Received: from ore by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pVnjA-0007Vf-9X; Sat, 25 Feb 2023 07:08:12 +0100
Date: Sat, 25 Feb 2023 07:08:12 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20230225060812.GB8437@pengutronix.de>
References: <20230224035553.GA1089605@roeck-us.net>
 <20230224041604.GA1353778@roeck-us.net>
 <20230224045340.GN19238@pengutronix.de>
 <363517fc-d16e-5bcd-763d-fc0e32c2301a@roeck-us.net>
 <20230224165213.GO19238@pengutronix.de>
 <20230224174132.GA1224969@roeck-us.net>
 <20230224183646.GA26307@pengutronix.de>
 <b0af4518-3c07-726e-79a0-19c53f799204@roeck-us.net>
 <20230224200207.GA8437@pengutronix.de>
 <52f8bb78-0913-6e9a-7816-f32cdad688f2@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <52f8bb78-0913-6e9a-7816-f32cdad688f2@roeck-us.net>
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
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 6/9] net: phy: c22:
 migrate to genphy_c45_write_eee_adv()
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
 Vivien Didelot <vivien.didelot@gmail.com>, UNGLinuxDriver@microchip.com,
 Eric Dumazet <edumazet@google.com>, Vladimir Oltean <olteanv@gmail.com>,
 Wei Fang <wei.fang@nxp.com>, kernel@pengutronix.de,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Feb 24, 2023 at 04:09:40PM -0800, Guenter Roeck wrote:
> On 2/24/23 12:02, Oleksij Rempel wrote:
> [ ... ]
> > > 
> > > For cubieboard:
> > > 
> > > MDIO_PCS_EEE_ABLE = 0x0000
> > > 
> > > qemu reports attempts to access unsupported registers.
> > > 
> > > I had a look at the Allwinner mdio driver. There is no indication suggesting
> > > what the real hardware would return when trying to access unsupported registers,
> > > and the Ethernet controller datasheet is not public.
> > 
> > These are PHY accesses over MDIO bus. Ethernet controller should not
> > care about content of this operations. But on qemu side, it is implemented as
> > part of Ethernet controller emulation...
> > 
> > Since MDIO_PCS_EEE_ABLE == 0x0000, phydev->supported_eee should prevent
> > other EEE related operations. But may be actual phy_read_mmd() went
> > wrong. It is a combination of simple phy_read/write to different
> > registers.
> > 
> 
> Adding MDD read/write support in qemu doesn't help. Something else in your patch
> prevents the PHY from coming up. After reverting your patch, I see
> 
> sun4i-emac 1c0b000.ethernet eth0: Link is Up - 100Mbps/Full - flow control off
> IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
> 
> in the log. This is missing with your patch in place.
> 
> Anyway, the key difference is not really the qemu emulation, but the added
> unconditional call to genphy_c45_write_eee_adv() in your patch. If you look
> closely into that function, you may notice that the 'changed' variable is
> never set to 0.
> 
> diff --git a/drivers/net/phy/phy-c45.c b/drivers/net/phy/phy-c45.c
> index 3813b86689d0..fee514b96ab1 100644
> --- a/drivers/net/phy/phy-c45.c
> +++ b/drivers/net/phy/phy-c45.c
> @@ -672,7 +672,7 @@ EXPORT_SYMBOL_GPL(genphy_c45_read_mdix);
>   */
>  int genphy_c45_write_eee_adv(struct phy_device *phydev, unsigned long *adv)
>  {
> -       int val, changed;
> +       int val, changed = 0;
> 
>         if (linkmode_intersects(phydev->supported_eee, PHY_EEE_CAP1_FEATURES)) {
>                 val = linkmode_to_mii_eee_cap1_t(adv);
> 
> fixes the problem, both for cubieboard and xtensa.

Good point! Thx for finding it!

Do you wont to send the fix against net?
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
