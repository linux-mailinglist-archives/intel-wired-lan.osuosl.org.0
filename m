Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D7F68E76F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Feb 2023 06:20:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E23556108B;
	Wed,  8 Feb 2023 05:20:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E23556108B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675833656;
	bh=GqsVpz2bb5rA/x5rHEDsdwvbfMj7XvPStpdovQHho/U=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CFK7Q58HTocpDByCbSC5dtja6Wdt4+e3gnd8GgFWzWYEet9MwHhJRcS+KX8Ib/uZK
	 OGAhAymrQL/4M3Lo7ucSV87QPlTnYSj9MCoTiky7IyU0/J0HtIMMeaHanhbpEG3de+
	 G3XAkIrmsMBFaniuUYY3vSzR9jVQSr6QuaUOfbW/s2Dhf2rrNho71On3TLj3GiOiHI
	 wiHodg3fGr1Ww9l8YaIzxopBN0finTujslW9VwXA9XoDfRaJcfrLpYmCjYiwbJ9d1U
	 PlUkcXUwIhspov+w1iXIe5eUbH8qtcme+j2fTWjaP2ggtn4BD1LmRRsDS/CoU7bj7U
	 1H0BFTLxdgGrQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L40WAlW9xpXr; Wed,  8 Feb 2023 05:20:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E39D761087;
	Wed,  8 Feb 2023 05:20:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E39D761087
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C98341BF853
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 05:20:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A1DD2408BC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 05:20:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A1DD2408BC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7OsmvQ70wMnR for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Feb 2023 05:20:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E7DD5408BA
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E7DD5408BA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 05:20:49 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 4056E614C5;
 Wed,  8 Feb 2023 05:20:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CE06C433D2;
 Wed,  8 Feb 2023 05:20:48 +0000 (UTC)
Date: Tue, 7 Feb 2023 21:20:47 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20230207212047.6080c16c@kernel.org>
In-Reply-To: <20230206135050.3237952-16-o.rempel@pengutronix.de>
References: <20230206135050.3237952-1-o.rempel@pengutronix.de>
 <20230206135050.3237952-16-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1675833648;
 bh=EjnIKJiLB9mu2nodQDuvohBF0YXCOxy1sDEVidpNDPg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=gGFB2n0Dc+uqzmaKwRfjLJM0GwsFqRL8S+cjFX5SQvk+t1sXeFIzDONAXecwcV3QJ
 0yKenRlIE4wgaeEt15dQZQub6apRu3LEPPmPt4HCo5EoZvpPwqb+AvFjgvd/ytvqlb
 +dzS4Sey+//wrl6YiAsIOxfr7YWUvcO5nI5W5xDDSeCHQqF8aYTi/Od+Qn6+LknR5p
 pSf8oHDeQuJzv4wlY4Bh1QbQSQ7MAQ2IZDoqK2ouxk5LYbOVO8LG87RXIjW0lpsa8U
 gSn3YO5yKLWLoo2uItqvU9VgGtquhGES1gC+MFSt3imDQ+hEQCyzAGrDMQN+saWXsw
 EKjJuH2lRH+yw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=gGFB2n0D
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 15/23] net: phy: add
 phy_has_smarteee() helper
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
 "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 Eric Dumazet <edumazet@google.com>, Wei Fang <wei.fang@nxp.com>,
 kernel@pengutronix.de, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean <olteanv@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon,  6 Feb 2023 14:50:42 +0100 Oleksij Rempel wrote:
> +/**
> + * phy_has_rxtstamp - Tests whether a PHY supports SmartEEE.

Function name needs to be updated

> + * @phydev: the phy_device struct
> + */
> +static inline bool phy_has_smarteee(struct phy_device *phydev)
> +{
> +	return phydev && phydev->drv && !!(phydev->drv->flags & PHY_SMART_EEE);
> +}
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
