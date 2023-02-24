Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 76BAD6A20BA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Feb 2023 18:47:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 059AF610DD;
	Fri, 24 Feb 2023 17:47:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 059AF610DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677260866;
	bh=pSRfRFeAyOoJP/qGS/KV4LSc6XOOd0Y3ApaxV0CTtrE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gPQABF8NieAT6/ZS3S3Q2Q8J3HrL9AteOp98fQZ7rw2TIkgTLptwFQNtb9sHyc8qA
	 B0fEVvdUZMVd62ipWkAPBHGI5AwVQa9xk2BbumwUGi3N/5EQtZLfEKi9QTFClBI1J9
	 qFRIDHMtF1l27/Xm6F660+iLpXQP489XiHAXbJaiof99Lif2WoIm4B0UD7I7oa2TEq
	 PO9LOohb4YEBMzoW/xATW9whlJJ5qwNY+s6jhnnmS0NvWAKfa7yjNNCSZpkemyeAtA
	 p4hNiTUz/+2E5k+LLS/bN/OQdaKgi4/EozzFGAdFdj+GhzZ6h5eRdnymdgzCFuUwN1
	 qTxLkv0Sn3WKA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sFY8QCQtKKAC; Fri, 24 Feb 2023 17:47:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ACBFA61130;
	Fri, 24 Feb 2023 17:47:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ACBFA61130
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CBE081BF33D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 16:52:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A42EB81368
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 16:52:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A42EB81368
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fOlqNx6ZTtQu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Feb 2023 16:52:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8164B8135C
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8164B8135C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 16:52:50 +0000 (UTC)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pVbIu-00046d-TP; Fri, 24 Feb 2023 17:52:16 +0100
Received: from ore by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pVbIr-0004Cj-QD; Fri, 24 Feb 2023 17:52:13 +0100
Date: Fri, 24 Feb 2023 17:52:13 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20230224165213.GO19238@pengutronix.de>
References: <20230211074113.2782508-1-o.rempel@pengutronix.de>
 <20230211074113.2782508-7-o.rempel@pengutronix.de>
 <20230224035553.GA1089605@roeck-us.net>
 <20230224041604.GA1353778@roeck-us.net>
 <20230224045340.GN19238@pengutronix.de>
 <363517fc-d16e-5bcd-763d-fc0e32c2301a@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <363517fc-d16e-5bcd-763d-fc0e32c2301a@roeck-us.net>
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
X-Mailman-Approved-At: Fri, 24 Feb 2023 17:47:40 +0000
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

On Fri, Feb 24, 2023 at 08:00:57AM -0800, Guenter Roeck wrote:
> On 2/23/23 20:53, Oleksij Rempel wrote:
> > Hallo Guenter,
> > 
> > On Thu, Feb 23, 2023 at 08:16:04PM -0800, Guenter Roeck wrote:
> > > On Thu, Feb 23, 2023 at 07:55:55PM -0800, Guenter Roeck wrote:
> > > > On Sat, Feb 11, 2023 at 08:41:10AM +0100, Oleksij Rempel wrote:
> > > > > Migrate from genphy_config_eee_advert() to genphy_c45_write_eee_adv().
> > > > > 
> > > > > It should work as before except write operation to the EEE adv registers
> > > > > will be done only if some EEE abilities was detected.
> > > > > 
> > > > > If some driver will have a regression, related driver should provide own
> > > > > .get_features callback. See micrel.c:ksz9477_get_features() as example.
> > > > > 
> > > > > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > > > > Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> > > > 
> > > > This patch causes network interface failures with all my xtensa qemu
> > > > emulations. Reverting it fixes the problem. Bisect log is attached
> > > > for reference.
> > > > 
> > > 
> > > Also affected are arm:cubieboard emulations, with same symptom.
> > > arm:bletchley-bmc emulations crash. In both cases, reverting this patch
> > > fixes the problem.
> > 
> > Please test this fixes:
> > https://lore.kernel.org/all/167715661799.11159.2057121677394149658.git-patchwork-notify@kernel.org/
> > 
> 
> Applied and tested
> 
> 77c39beb5efa (HEAD -> master) net: phy: c45: genphy_c45_ethtool_set_eee: validate EEE link modes
> 068a35a8d62c net: phy: do not force EEE support
> 66d358a5fac6 net: phy: c45: add genphy_c45_an_config_eee_aneg() function
> ecea1bf8b04c net: phy: c45: use "supported_eee" instead of supported for access validation
> 
> on top of
> 
> d2980d8d8265 (upstream/master, origin/master, origin/HEAD, local/master) Merge tag 'mm-nonmm-stable-2023-02-20-15-29' of git://git.kernel.org/pub/scm/linux/kernel/git/akpm/mm
> 
> No change for xtensa and arm:cubieboard; network interfaces still fail.

Huh, interesting.

can you please send me the kernel logs.

> On the plus side, the failures with arm:bletchley-bmc (warnings, crash)
> are longer seen.

s/longer/no longer/ ?

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
