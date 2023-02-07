Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 35FC868CB61
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Feb 2023 01:44:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8976760D96;
	Tue,  7 Feb 2023 00:44:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8976760D96
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675730691;
	bh=gVh2OYUdIdWC3/nLawFO//YHpXZ74rEqU0Nx+sj4s2c=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dDp21rAzVdIfvnYldf6jvSMJ4/MQ6c+2FbO0qgwtlCw6+CAiJHqonVC7PLZj3fy24
	 Dqr2/1K/fwuWXNk3W+bXckymA6ue+KXY67dErrgOgxRQFWDjdaVmb3SS3Hfv0iPfgB
	 C8qWBePce4aJYwFwVyKxeBOpHoDKSVmbhNN6fq+q7ceqaMjmAFYBAtVdC0YqoFAzh2
	 s19xom1LDynSWY/RU/FJnAfKQ24Aps0wWa9EGxaXYuO+LDjvZY+Lm5izmL5DaxcbIP
	 fdrxol9XeqemwGloXdhMiEu5VNygMQVXaLVWDMMNus1DatrkzDDPi1kTJfRcMSBdsE
	 MdVFgmNVwY8lA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aLyKdTqHykU3; Tue,  7 Feb 2023 00:44:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E05960D88;
	Tue,  7 Feb 2023 00:44:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E05960D88
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 19BEE1BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 00:44:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E5CFF4174A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 00:44:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E5CFF4174A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z1KgDHIM_UCc for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Feb 2023 00:44:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D582E41749
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D582E41749
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 00:44:44 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1pPC60-004FgR-7E; Tue, 07 Feb 2023 01:44:28 +0100
Date: Tue, 7 Feb 2023 01:44:28 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <Y+Ge7DVId3aJMEok@lunn.ch>
References: <20230206135050.3237952-1-o.rempel@pengutronix.de>
 <20230206135050.3237952-3-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230206135050.3237952-3-o.rempel@pengutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=nwp0SvoHdLuHe4/f8GA05H2SnD3BeOwlfVbhJX3vLGU=; b=0x0WbCpO0tlVFKreP22iFHTqYW
 FYiaWaPq9zR+A9BL5auqtrFhfwRApEAf315i6XhqGakj65UDeHTSMVwO1DUOealEKsK+rDsXRGsz3
 lAbOrYII/nc5KvBDcaoZxX2JjFe/JQPCLT3mMKx4nnBwWRE9aqUm6ZbtjmXKOWb/nbDo=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=0x0WbCpO
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 02/23] net: phy: add
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

> +	/* The 802.3 2018 standard says the top 2 bits are reserved and should
> +	 * read as 0. Also, it seems unlikely anybody will build a PHY which
> +	 * supports 100GBASE-R deep sleep all the way down to 100BASE-TX EEE.
> +	 * If MDIO_PCS_EEE_ABLE is 0xffff assume EEE is not supported.
> +	 */
> +	if (val == GENMASK(15, 0))
> +		return 0;

Given the comment says 0xffff i would just use 0xffff, not GENMASK.

Other than that:

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
