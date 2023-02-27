Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E406A4246
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Feb 2023 14:09:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6D755416D7;
	Mon, 27 Feb 2023 13:09:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6D755416D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677503355;
	bh=QsHdee1JflKfUkHty8Xc/FuYlvMLj62dQbCnjuswUBY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3wBdh81IRGHxR17X6aclotKZE61VSA8ajpvUKFuFxE/FaokEPKPJ4eyX3GwO9OTSr
	 Dt1XORxPxy5KLbO46fZAOSGMyKnbYY5inbaY49Bcp/t3Mk9jgr8pP1i2Ce+17GROme
	 H+oDxNRxXHOX6MX6ubImTLP5dLGIK2g6/aC+y7tXcQXNSqHrtJiplO0UpZYpTyv78q
	 VXHpoJ8PxwXMFrk2Kc+Oau5X3EkYNkq1LIbPNRwu7M74KoQ+bZ1nOh5r1Ip67kZhNv
	 k61GTjkceZ50AKonmAeJ/Iy+KYhBde0IN+HiBHkr/NFwHacBdm9zAIh+3iu5dSk8yc
	 KuGXVbP7yZ8wg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UZvmXXcl_h-I; Mon, 27 Feb 2023 13:09:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E734402B3;
	Mon, 27 Feb 2023 13:09:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E734402B3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 050901BF86B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Feb 2023 13:09:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DF2E6416CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Feb 2023 13:09:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF2E6416CE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W2Xw_v-2h9u1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Feb 2023 13:09:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 789AB410B5
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 789AB410B5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Feb 2023 13:09:04 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1pWdEx-0064oo-Pg; Mon, 27 Feb 2023 14:08:27 +0100
Date: Mon, 27 Feb 2023 14:08:27 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <Y/yrS65V7h5vG7xN@lunn.ch>
References: <20230211074113.2782508-1-o.rempel@pengutronix.de>
 <20230211074113.2782508-7-o.rempel@pengutronix.de>
 <20230224035553.GA1089605@roeck-us.net>
 <20230224041604.GA1353778@roeck-us.net>
 <20230224045340.GN19238@pengutronix.de>
 <363517fc-d16e-5bcd-763d-fc0e32c2301a@roeck-us.net>
 <20230224165213.GO19238@pengutronix.de>
 <20230224174132.GA1224969@roeck-us.net>
 <20230224183646.GA26307@pengutronix.de>
 <b0af4518-3c07-726e-79a0-19c53f799204@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b0af4518-3c07-726e-79a0-19c53f799204@roeck-us.net>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=S/7WtCGaQMhXLXtk7Vr0qWEeT3/0Qv7S0/Mtts2Gzn0=; b=kDGxtBGgY7u9qf1RnK+vtQTBir
 uorUoWl/XnfkFfXHPt0L2r6hu/z+jQQ/fqlrWMeCRWQXBUZu6pS9Pw4t8ky1lPKSy/b0AxG1bcUSx
 Yocm97Qfq2bNDlKufQfsKscqyVzrcLX7a4tRwsLnw/mkEMyCIuj6WU2We/SvJAfn6wgE=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=kDGxtBGg
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
Cc: Woojung Huh <woojung.huh@microchip.com>, Arun.Ramadoss@microchip.com,
 Florian Fainelli <f.fainelli@gmail.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 UNGLinuxDriver@microchip.com, Oleksij Rempel <o.rempel@pengutronix.de>,
 Eric Dumazet <edumazet@google.com>, Vladimir Oltean <olteanv@gmail.com>,
 Wei Fang <wei.fang@nxp.com>, kernel@pengutronix.de,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> > diff --git a/drivers/net/phy/phy-c45.c b/drivers/net/phy/phy-c45.c
> > index f595acd0a895..67dac9f0e71d 100644
> > --- a/drivers/net/phy/phy-c45.c
> > +++ b/drivers/net/phy/phy-c45.c
> > @@ -799,6 +799,7 @@ static int genphy_c45_read_eee_cap1(struct phy_device *phydev)
> >           * (Register 3.20)
> >           */
> >          val = phy_read_mmd(phydev, MDIO_MMD_PCS, MDIO_PCS_EEE_ABLE);
> > +       printk("MDIO_PCS_EEE_ABLE = 0x%04x", val);
> >          if (val < 0)
> >                  return val;
> > 
> 
> For cubieboard:
> 
> MDIO_PCS_EEE_ABLE = 0x0000
> 
> qemu reports attempts to access unsupported registers.

MDIO is a serial bus with two lines, clock driven by the bus master
and data. There is a pull up on the data line, so if the device does
not respond to a read request, you get 0xffff. That value is all i've
ever seen a real PHY do when asked to read a register which does not
exist. So i would say QEMU could be better emulate this.

The code actually looks for the value 0xffff and then decides that EEE
is not supporting in the PHY.

The value of 0x0 is probably being interpreted as meaning EEE is
supported, but none of the link modes, 10Mbps, 100Mbps etc support
EEE. I would say it is then legitimate to read/write other EEE
registers, so long as those writes take into account that no link
modes are actually supported.

Reading the other messages in this thread, a bug has been found in the
patches. But i would also say QEMU could do better.

      Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
