Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DD22168CB79
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Feb 2023 01:53:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 30DDC81C46;
	Tue,  7 Feb 2023 00:53:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 30DDC81C46
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675731192;
	bh=zttUmlar3AalZV6UC56wuAoYeds+mWBsT5Kc5mZSSrs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EkNOtIAEf6R5dCPHilMXpbt36yttxfvjW142/u7pjRa68+Diu473wX8Xw196ShwGx
	 48NVFKaB55spXfOcvNNSyDiVQXJSOkyujV1IP1BfZCFVUYuTA3KFt9CG0+uQ7oqrVK
	 R5IyvjvfPpaPl52u4j6gUJvqgKV6426AtaI84QA2QA3DJ33SXAs5ar86j4bPLjHxuG
	 wQsP47Ou2vkj47Ory7tiBmuti0ypxQ1Vw/7jvcRb0KFmPifpVYqlQXDlqGd9ScCSHl
	 g2K47w0Gh2xffbfi1GJ3PHji3bRDoshGM6nonrKyGCeyrxRMre/hhI92HNNrfZx6kn
	 6LfQ0kz2RjQmg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6b4yTx1dYXkC; Tue,  7 Feb 2023 00:53:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3EAC9819F5;
	Tue,  7 Feb 2023 00:53:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3EAC9819F5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 13D671BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 00:53:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DFED060D91
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 00:53:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DFED060D91
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ctub7Tu_sGH9 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Feb 2023 00:53:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 497CB60B46
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 497CB60B46
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 00:53:05 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1pPCE8-004FjP-Ra; Tue, 07 Feb 2023 01:52:52 +0100
Date: Tue, 7 Feb 2023 01:52:52 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <Y+Gg5PedhNqLUHyC@lunn.ch>
References: <20230206135050.3237952-1-o.rempel@pengutronix.de>
 <20230206135050.3237952-8-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230206135050.3237952-8-o.rempel@pengutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=bDjYDnbMV5i3PuwBFOPjAutgKjrJP2w4TBfEoG2THeI=; b=q4gjtczvvZP2oPmFMblP8ST4Ff
 F6eOINEe1eA/RYjaFigu4axEkfpK3RuMiDRVAqTQ3xpSJVywHUhEf+Hzc4WloVJZ/HtA4Tkx0MqWJ
 mio7wDAsTccsFaTZENVgQND25yHHTS9d/G+Z39MJ7EquVi6gubc3rO2lEtsm/buqBlTE=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=q4gjtczv
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 07/23] net: phy: c45:
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

On Mon, Feb 06, 2023 at 02:50:34PM +0100, Oleksij Rempel wrote:
> Migrate from genphy_config_eee_advert() to genphy_c45_write_eee_adv().
> 
> It should work as before except write operation to the EEE adv registers
> will be done only if some EEE abilities was detected.
> 
> If some driver will have a regression, related driver should provide own
> .get_features callback. See micrel.c:ksz9477_get_features() as example.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
