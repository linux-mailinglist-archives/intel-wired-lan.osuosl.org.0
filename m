Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF596A22E3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Feb 2023 21:02:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7776941B8B;
	Fri, 24 Feb 2023 20:02:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7776941B8B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677268974;
	bh=QfJ/pr1ipnwsJaRZ1aXkoCcdxT5fYzEn8yai7xU6ijQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rDRP0BZLGkj+WX200CeRyfejUuD6VtO1V0mgYDcSTEVpKiIZ6Ft9lKIGMAhOfo9uj
	 Ki3g3+gdIssZEbe/8h/9+iBKHoULDiZmDRjEHj/PX14qiV37w21WIYLcW8n/T7AQkP
	 iPN4tfW6zg3Rv3Cs+O5BdD/IxE//73fWOGTqaCbFRExW+gguMtV3G+h++EcekXYABp
	 IMzh9rJMxjKDBXHTOeAq8AI2uQHMkGWPrKKZ4qRGVP7fRc0zKehon2johAgcj1DpCd
	 +1fiM1wNfl6IjqQltBLYNSLVIQ6nP4mqh7BE4FrH6dSiptvWU2lSthVco/EkSiEKBA
	 2H31q4EN7Bmxg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lD128v1xGkaR; Fri, 24 Feb 2023 20:02:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B52F941B7F;
	Fri, 24 Feb 2023 20:02:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B52F941B7F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0252C1BF36B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 20:02:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CFB0F405F8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 20:02:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CFB0F405F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pPHd8-eJMVPJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Feb 2023 20:02:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7994640145
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7994640145
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 20:02:45 +0000 (UTC)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pVeGi-0001Dl-MA; Fri, 24 Feb 2023 21:02:12 +0100
Received: from ore by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pVeGd-0007PE-Tp; Fri, 24 Feb 2023 21:02:07 +0100
Date: Fri, 24 Feb 2023 21:02:07 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20230224200207.GA8437@pengutronix.de>
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

On Fri, Feb 24, 2023 at 11:17:24AM -0800, Guenter Roeck wrote:
> On 2/24/23 10:36, Oleksij Rempel wrote:
> > On Fri, Feb 24, 2023 at 09:41:32AM -0800, Guenter Roeck wrote:
> > > On Fri, Feb 24, 2023 at 05:52:13PM +0100, Oleksij Rempel wrote:
> > > > On Fri, Feb 24, 2023 at 08:00:57AM -0800, Guenter Roeck wrote:
> > > > > On 2/23/23 20:53, Oleksij Rempel wrote:
> > > > > > Hallo Guenter,
> > > > > > 
> > > > > > On Thu, Feb 23, 2023 at 08:16:04PM -0800, Guenter Roeck wrote:
> > > > > > > On Thu, Feb 23, 2023 at 07:55:55PM -0800, Guenter Roeck wrote:
> > > > > > > > On Sat, Feb 11, 2023 at 08:41:10AM +0100, Oleksij Rempel wrote:
> > > > > > > > > Migrate from genphy_config_eee_advert() to genphy_c45_write_eee_adv().
> > > > > > > > > 
> > > > > > > > > It should work as before except write operation to the EEE adv registers
> > > > > > > > > will be done only if some EEE abilities was detected.
> > > > > > > > > 
> > > > > > > > > If some driver will have a regression, related driver should provide own
> > > > > > > > > .get_features callback. See micrel.c:ksz9477_get_features() as example.
> > > > > > > > > 
> > > > > > > > > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > > > > > > > > Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> > > > > > > > 
> > > > > > > > This patch causes network interface failures with all my xtensa qemu
> > > > > > > > emulations. Reverting it fixes the problem. Bisect log is attached
> > > > > > > > for reference.
> > > > > > > > 
> > > > > > > 
> > > > > > > Also affected are arm:cubieboard emulations, with same symptom.
> > > > > > > arm:bletchley-bmc emulations crash. In both cases, reverting this patch
> > > > > > > fixes the problem.
> > > > > > 
> > > > > > Please test this fixes:
> > > > > > https://lore.kernel.org/all/167715661799.11159.2057121677394149658.git-patchwork-notify@kernel.org/
> > > > > > 
> > > > > 
> > > > > Applied and tested
> > > > > 
> > > > > 77c39beb5efa (HEAD -> master) net: phy: c45: genphy_c45_ethtool_set_eee: validate EEE link modes
> > > > > 068a35a8d62c net: phy: do not force EEE support
> > > > > 66d358a5fac6 net: phy: c45: add genphy_c45_an_config_eee_aneg() function
> > > > > ecea1bf8b04c net: phy: c45: use "supported_eee" instead of supported for access validation
> > > > > 
> > > > > on top of
> > > > > 
> > > > > d2980d8d8265 (upstream/master, origin/master, origin/HEAD, local/master) Merge tag 'mm-nonmm-stable-2023-02-20-15-29' of git://git.kernel.org/pub/scm/linux/kernel/git/akpm/mm
> > > > > 
> > > > > No change for xtensa and arm:cubieboard; network interfaces still fail.
> > > > 
> > > > Huh, interesting.
> > > > 
> > > > can you please send me the kernel logs.
> > > > 
> > > There is nothing useful there, or at least I don't see anything useful.
> > > The Ethernet interfaces (sun4i-emac for cubieboard and ethoc for xtensa)
> > > just don't come up.
> > > 
> > > Sample logs:
> > > 
> > > cubieboard:
> > > 
> > > https://kerneltests.org/builders/qemu-arm-v7-master/builds/531/steps/qemubuildcommand/logs/stdio
> > > 
> > > xtensa:
> > > 
> > > https://kerneltests.org/builders/qemu-xtensa-master/builds/2177/steps/qemubuildcommand/logs/stdio
> > > 
> > > and, for completeness, bletchley-bmc:
> > > 
> > > https://kerneltests.org/builders/qemu-arm-aspeed-master/builds/531/steps/qemubuildcommand/logs/stdio
> > > 
> > > Those logs are without the above set of patches, but I don't see a
> > > difference with the patches applied for cubieboard and xtensa. I
> > > started a complete test run (for all emulations) with the patches
> > > applied; that should take about an hour to complete.
> > > I could also add some debug logging, but you'd have to give me
> > > some hints about what to add and where.
> > 
> > OK, interesting. These are emulated PHYs. QEMU seems to return 0 or
> > 0xFFFF on unsupported registers. May be I'm wrong.
> > All EEE read/write accesses depend on initial capability read
> > genphy_c45_read_eee_cap1()
> > 
> > Can you please add this trace:
> > 
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
> 
> I had a look at the Allwinner mdio driver. There is no indication suggesting
> what the real hardware would return when trying to access unsupported registers,
> and the Ethernet controller datasheet is not public.

These are PHY accesses over MDIO bus. Ethernet controller should not
care about content of this operations. But on qemu side, it is implemented as
part of Ethernet controller emulation...

Since MDIO_PCS_EEE_ABLE == 0x0000, phydev->supported_eee should prevent
other EEE related operations. But may be actual phy_read_mmd() went
wrong. It is a combination of simple phy_read/write to different
registers.

> For xtensa:
> 
> MDIO_PCS_EEE_ABLE = 0x0014
> 
> I didn't try to find out what that means.

These will be interpreted as the PHY supports 1000KX and 1000T EEE modes.
Starting from this point all EEE read write operations will be allowed.

> qemu did not report attempts to access unsupported registers.

Hm. What is the best way to proceed? Remove genphy_c45_read_eee_abilities()
out of genphy_read_abilities() and let add it to PHYs known to support
it? Or go deeper and fix QEMU if needed?

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
