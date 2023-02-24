Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7166A1F69
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Feb 2023 17:14:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 354C040B26;
	Fri, 24 Feb 2023 16:14:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 354C040B26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677255282;
	bh=bW1t4vxIxr77z2BuulW/QKj5S2+qNfPXV8IGYpZ/m/8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZS+j1+r5PY5Ii5srcLbVaFY6v8jMHxSsRgTS7YuapccjgTx+gRS2W2rmdjnufRRjQ
	 b4b7v7vLMmMzgwXt4XveTShAUaDIBjJAw4P8wYyK8RGU3oN79Wa5/Ta/1A6OrfLk+H
	 JOnbBALivkft+3f49LdDvrZEo0uXIXqsNixPreBTWWyKpNRQMDzfCog7z1V7u8JXat
	 nyKPWbhkxeQ2jRdhxpA6AJU3RaYcDj2B9fR7WckjQhyckUHS8sEuxnzQwFm2VuHG7S
	 EfpICCKNLaY8gfelmwh9vq+NKHrRb98uXDBzfgZ9xqrRYUVsSuc0qnZOJ+0SMTT2NM
	 E+aWQ60aUNy7g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S0rexLDz9V_x; Fri, 24 Feb 2023 16:14:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2A89A40AA3;
	Fri, 24 Feb 2023 16:14:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A89A40AA3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EA15F1BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 04:54:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C0B45819B4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 04:54:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C0B45819B4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FpwAlvSNVn6h for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Feb 2023 04:54:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7068E81990
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7068E81990
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 04:54:07 +0000 (UTC)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pVQ5Z-0004YH-D7; Fri, 24 Feb 2023 05:53:45 +0100
Received: from ore by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pVQ5U-0000bk-F6; Fri, 24 Feb 2023 05:53:40 +0100
Date: Fri, 24 Feb 2023 05:53:40 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20230224045340.GN19238@pengutronix.de>
References: <20230211074113.2782508-1-o.rempel@pengutronix.de>
 <20230211074113.2782508-7-o.rempel@pengutronix.de>
 <20230224035553.GA1089605@roeck-us.net>
 <20230224041604.GA1353778@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230224041604.GA1353778@roeck-us.net>
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
X-Mailman-Approved-At: Fri, 24 Feb 2023 16:14:36 +0000
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

Hallo Guenter,

On Thu, Feb 23, 2023 at 08:16:04PM -0800, Guenter Roeck wrote:
> On Thu, Feb 23, 2023 at 07:55:55PM -0800, Guenter Roeck wrote:
> > On Sat, Feb 11, 2023 at 08:41:10AM +0100, Oleksij Rempel wrote:
> > > Migrate from genphy_config_eee_advert() to genphy_c45_write_eee_adv().
> > > 
> > > It should work as before except write operation to the EEE adv registers
> > > will be done only if some EEE abilities was detected.
> > > 
> > > If some driver will have a regression, related driver should provide own
> > > .get_features callback. See micrel.c:ksz9477_get_features() as example.
> > > 
> > > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > > Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> > 
> > This patch causes network interface failures with all my xtensa qemu
> > emulations. Reverting it fixes the problem. Bisect log is attached
> > for reference.
> > 
> 
> Also affected are arm:cubieboard emulations, with same symptom.
> arm:bletchley-bmc emulations crash. In both cases, reverting this patch
> fixes the problem.

Please test this fixes:
https://lore.kernel.org/all/167715661799.11159.2057121677394149658.git-patchwork-notify@kernel.org/

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
