Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9319E686CDA
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Feb 2023 18:28:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 382DC81F19;
	Wed,  1 Feb 2023 17:28:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 382DC81F19
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675272513;
	bh=opnJ2JL3HMvu+xA09L+LySdy5wL9zyFxqiY7/ragJEw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ImtzXNGhmIIJDu1vKZNODvD/4BLwhlJ7rub1Jd9SxRKbtFuETN+q7ZqHBvVDrZyk1
	 oZNC4d+ClWki4Gq6ePv8LSczhLp/P/0shkcQw44mr+ML/L0N0R/dAbJW4yCGAGmtV9
	 qEAeEefiMWHe+UEN728/NfU26BWviiYH5bq0sYQ5B18X9ZThfX4+3DcR9N2gE8gyMs
	 Lr9bY5BDlZrAexiUHbBYAR3ss2pA/O+k4bIlxaUgqX7lm8cqqei3F4mV7gtVlpuROW
	 QlleJu9pz6lxIfOyvPX0X4B51qrmTO39yPbFT8/SiA7ozWqGh4uKvkcPuEpMHqH16j
	 zQFQJynpyhxrQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q0pzxSchn3SV; Wed,  1 Feb 2023 17:28:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4315E81E76;
	Wed,  1 Feb 2023 17:28:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4315E81E76
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5301C1BF29F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 17:28:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2B15060E3B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 17:28:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2B15060E3B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fkziq5ud37Mf for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Feb 2023 17:28:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77C1360671
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 77C1360671
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 17:28:26 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1pNGu5-003ouM-8X; Wed, 01 Feb 2023 18:28:13 +0100
Date: Wed, 1 Feb 2023 18:28:13 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <Y9qhLbZ/kf2/buln@lunn.ch>
References: <20230201145845.2312060-1-o.rempel@pengutronix.de>
 <20230201145845.2312060-7-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230201145845.2312060-7-o.rempel@pengutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=50Bg29+w61BN/4LjQdJx9K3FafHtmhGyZO4xLMgCCDw=; b=4dZNNdOqbvAgVuwM0rvkYeUIuG
 QnIlNg47TTJW3wtfbkc2Enc2xhollGqPNXHeJBQk97U99cr/ZOqjXka3LfegjJM+BH8mcTckzLW/M
 l/kLjHe9AiwvPRNJEQaLP3K678uXLrEoIUlZzd0UP0+4o9wUfLZoReEi8fWPxdIZp1M8=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=4dZNNdOq
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 06/23] net: phy: c22:
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

> +	/* This is optional functionality. If not supported, we may get an error
> +	 * which should be ignored.
> +	 */
> +	genphy_c45_read_eee_abilities(phydev);

Humm, philosophic discussion. Would it be better for
genphy_c45_read_eee_abilities() to silently ignore the error? Errors
like -ETIMEDOUT should probably be returned, but -EOPNOTSUPP should be
ignored.

	Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
