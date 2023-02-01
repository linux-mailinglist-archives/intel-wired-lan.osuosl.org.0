Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 28978686C81
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Feb 2023 18:12:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8466B4035D;
	Wed,  1 Feb 2023 17:12:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8466B4035D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675271571;
	bh=41KZwlIsXC6+DzcJhATal94M8YaBqq68L10S23BpLuo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6ZWJUmc0B+rdd2PwwOx/rYdugSB8aclMBiR93z+Zgllqb+rYxNBY578XYw5JJiWvr
	 EMd2hbURaI68yiBsx/VIJnn+I4oceUweRtYOjsmjk7W+6lcgF7S7Bx4dNgdJF6Fml9
	 7HAQZ23c+IeNfAwBhxaV3+Ixg1Kx7TtuMDotZWaOuqStIJVgG/mHoIyTOkcv2lE5TY
	 kyvPl5pLijhXbqwXlwouLQHXn9+t0yNhm9BDvNgq8rgnR6T5XOA9kevietbvtcOh9x
	 W/vA+JkBO6lFj1SEq+7zvaBomHmOq7Vbyvo79K/VfMuReMwqM1grjHesT/0hTx5p8X
	 AJUq6EddCkS6A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vf8_l_VHK3JB; Wed,  1 Feb 2023 17:12:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 297154032D;
	Wed,  1 Feb 2023 17:12:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 297154032D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E51421BF29F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 17:12:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BE358403EA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 17:12:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE358403EA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id poXJRvYBpwwR for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Feb 2023 17:12:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1AA644014B
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1AA644014B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 17:12:45 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1pNGet-003ooW-4K; Wed, 01 Feb 2023 18:12:31 +0100
Date: Wed, 1 Feb 2023 18:12:31 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <Y9qdfwlgQ48Rj1X3@lunn.ch>
References: <20230201145845.2312060-1-o.rempel@pengutronix.de>
 <20230201145845.2312060-3-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230201145845.2312060-3-o.rempel@pengutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=hGzG/sA63e+whllyzMxtyCU4dN4cHFGosz/XbA42Rbo=; b=QpRVxHzm/Z+iz1HHu18q5ar0Vg
 bytU7wJkj+A/7MJ2hijJHqPaSPHS8yMZBVyppjYl22azUXzXNZeJixr0tr8sdt0YhqH4FFtxqN/lG
 gX427TufG1zr5RTVRMP1Gusrm23fPQkN56hivbi1QA044K/AZ2laTtcN0WO9FbwuUFSo=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=QpRVxHzm
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
Cc: Woojung Huh <woojung.huh@microchip.com>, Arun.Ramadoss@microchip.com,
 Florian Fainelli <f.fainelli@gmail.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 UNGLinuxDriver@microchip.com, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, Wei Fang <wei.fang@nxp.com>,
 kernel@pengutronix.de, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Feb 01, 2023 at 03:58:24PM +0100, Oleksij Rempel wrote:
> Add generic function for EEE abilities defined by IEEE 802.3
> specification. For now following registers are supported:
> - IEEE 802.3-2018 45.2.3.10 EEE control and capability 1 (Register 3.20)
> - IEEE 802.3cg-2019 45.2.1.186b 10BASE-T1L PMA status register
>   (Register 1.2295)
> 
> Since I was not able to find any flag signaling support of this
> registers, we should detect link mode abilities first and then based on
> this abilities doing EEE link modes detection.

Hi Oleksij

There was a discussion along these lines with Chris Healy
recently. The meson-gxl PHYs don't have these registers, and reads
return 0xffff. The 802.3 2018 standard says the top 2 bits are
reserved and should read as 0. Also, it seems unlikely anybody will
build a PHY which supports 100GBASE-R deep sleep all the way down to
100BASE-TX EEE. So i would suggest adding a check when reading
MDIO_PCS_EEE_ABLE and if it is 0xffff assume EEE is not supported.

> +		val = phy_read_mmd(phydev, MDIO_MMD_PCS, MDIO_PCS_EEE_ABLE);
> +		if (val < 0)
> +			return val;
> +
> +		mii_eee_100_10000_adv_mod_linkmode_t(phydev->supported_eee, val);
> +
> +		/* Some buggy devices claim not supported EEE link modes */
> +		linkmode_and(phydev->supported_eee, phydev->supported_eee,
> +			     phydev->supported);

That comment could be improved. What i think you mean is

/* Some buggy devices indicate EEE link modes in MDIO_PCS_EEE_ABLE
   which they don't support as indicated by BMSR, ESTATUS etc. */

   Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
