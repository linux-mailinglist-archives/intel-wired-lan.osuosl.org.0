Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 057D56A219C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Feb 2023 19:37:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 83A73612BE;
	Fri, 24 Feb 2023 18:37:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 83A73612BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677263841;
	bh=NQE14t5GdvqtNfnOA0LnwoPO31dObAGC4sYAhrfj3QM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TauwEfrUKYoiCwwZj1ryxCt3f+jX6fh8WQu3h6DjW1V5VyrXg+YLmdDfzcc1FcCB1
	 7FRmP0VufBNC3Rp1bn35mJmhcNZhQ1FK8fY/MP6bTNsadNtO62INygv2dYJWaFyDVF
	 5+nCKe6L7l4OtI9XzTYSVtWAT2mHkMpgae5esbtEw1ySe6M8BrKBPmJq33wP8uHLvC
	 Broy/vSUempk/NgSln9sG4EdBRCcGnN73oSFoILEH/9n+99IGUJ90J9KPnEA1kqOkS
	 /zrymAm4UG84CYTJFBw0KWtPC4deyq1X5tJiZGjoGWuOQyj6nIEFDImOvBxzIrTL4P
	 wZg5QG0OOESUQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BzNQQ22QEa3X; Fri, 24 Feb 2023 18:37:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4AAAA61246;
	Fri, 24 Feb 2023 18:37:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4AAAA61246
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B67F21BF376
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 18:37:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8E2E8613B8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 18:37:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E2E8613B8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pJtdjdfVB2G1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Feb 2023 18:37:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4881261792
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4881261792
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 18:37:13 +0000 (UTC)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pVcw4-0007fI-Up; Fri, 24 Feb 2023 19:36:48 +0100
Received: from ore by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pVcw2-0002Aa-OS; Fri, 24 Feb 2023 19:36:46 +0100
Date: Fri, 24 Feb 2023 19:36:46 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20230224183646.GA26307@pengutronix.de>
References: <20230211074113.2782508-1-o.rempel@pengutronix.de>
 <20230211074113.2782508-7-o.rempel@pengutronix.de>
 <20230224035553.GA1089605@roeck-us.net>
 <20230224041604.GA1353778@roeck-us.net>
 <20230224045340.GN19238@pengutronix.de>
 <363517fc-d16e-5bcd-763d-fc0e32c2301a@roeck-us.net>
 <20230224165213.GO19238@pengutronix.de>
 <20230224174132.GA1224969@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230224174132.GA1224969@roeck-us.net>
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

On Fri, Feb 24, 2023 at 09:41:32AM -0800, Guenter Roeck wrote:
> On Fri, Feb 24, 2023 at 05:52:13PM +0100, Oleksij Rempel wrote:
> > On Fri, Feb 24, 2023 at 08:00:57AM -0800, Guenter Roeck wrote:
> > > On 2/23/23 20:53, Oleksij Rempel wrote:
> > > > Hallo Guenter,
> > > > 
> > > > On Thu, Feb 23, 2023 at 08:16:04PM -0800, Guenter Roeck wrote:
> > > > > On Thu, Feb 23, 2023 at 07:55:55PM -0800, Guenter Roeck wrote:
> > > > > > On Sat, Feb 11, 2023 at 08:41:10AM +0100, Oleksij Rempel wrote:
> > > > > > > Migrate from genphy_config_eee_advert() to genphy_c45_write_eee_adv().
> > > > > > > 
> > > > > > > It should work as before except write operation to the EEE adv registers
> > > > > > > will be done only if some EEE abilities was detected.
> > > > > > > 
> > > > > > > If some driver will have a regression, related driver should provide own
> > > > > > > .get_features callback. See micrel.c:ksz9477_get_features() as example.
> > > > > > > 
> > > > > > > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > > > > > > Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> > > > > > 
> > > > > > This patch causes network interface failures with all my xtensa qemu
> > > > > > emulations. Reverting it fixes the problem. Bisect log is attached
> > > > > > for reference.
> > > > > > 
> > > > > 
> > > > > Also affected are arm:cubieboard emulations, with same symptom.
> > > > > arm:bletchley-bmc emulations crash. In both cases, reverting this patch
> > > > > fixes the problem.
> > > > 
> > > > Please test this fixes:
> > > > https://lore.kernel.org/all/167715661799.11159.2057121677394149658.git-patchwork-notify@kernel.org/
> > > > 
> > > 
> > > Applied and tested
> > > 
> > > 77c39beb5efa (HEAD -> master) net: phy: c45: genphy_c45_ethtool_set_eee: validate EEE link modes
> > > 068a35a8d62c net: phy: do not force EEE support
> > > 66d358a5fac6 net: phy: c45: add genphy_c45_an_config_eee_aneg() function
> > > ecea1bf8b04c net: phy: c45: use "supported_eee" instead of supported for access validation
> > > 
> > > on top of
> > > 
> > > d2980d8d8265 (upstream/master, origin/master, origin/HEAD, local/master) Merge tag 'mm-nonmm-stable-2023-02-20-15-29' of git://git.kernel.org/pub/scm/linux/kernel/git/akpm/mm
> > > 
> > > No change for xtensa and arm:cubieboard; network interfaces still fail.
> > 
> > Huh, interesting.
> > 
> > can you please send me the kernel logs.
> > 
> There is nothing useful there, or at least I don't see anything useful.
> The Ethernet interfaces (sun4i-emac for cubieboard and ethoc for xtensa)
> just don't come up.
> 
> Sample logs:
> 
> cubieboard:
> 
> https://kerneltests.org/builders/qemu-arm-v7-master/builds/531/steps/qemubuildcommand/logs/stdio
> 
> xtensa:
> 
> https://kerneltests.org/builders/qemu-xtensa-master/builds/2177/steps/qemubuildcommand/logs/stdio
> 
> and, for completeness, bletchley-bmc:
> 
> https://kerneltests.org/builders/qemu-arm-aspeed-master/builds/531/steps/qemubuildcommand/logs/stdio
> 
> Those logs are without the above set of patches, but I don't see a
> difference with the patches applied for cubieboard and xtensa. I
> started a complete test run (for all emulations) with the patches
> applied; that should take about an hour to complete. 
> I could also add some debug logging, but you'd have to give me
> some hints about what to add and where.

OK, interesting. These are emulated PHYs. QEMU seems to return 0 or
0xFFFF on unsupported registers. May be I'm wrong.
All EEE read/write accesses depend on initial capability read
genphy_c45_read_eee_cap1()

Can you please add this trace:

diff --git a/drivers/net/phy/phy-c45.c b/drivers/net/phy/phy-c45.c
index f595acd0a895..67dac9f0e71d 100644
--- a/drivers/net/phy/phy-c45.c
+++ b/drivers/net/phy/phy-c45.c
@@ -799,6 +799,7 @@ static int genphy_c45_read_eee_cap1(struct phy_device *phydev)
         * (Register 3.20)
         */
        val = phy_read_mmd(phydev, MDIO_MMD_PCS, MDIO_PCS_EEE_ABLE);
+       printk("MDIO_PCS_EEE_ABLE = 0x%04x", val);
        if (val < 0)
                return val;

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
