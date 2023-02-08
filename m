Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 19DE468E76B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Feb 2023 06:20:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C377C41505;
	Wed,  8 Feb 2023 05:20:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C377C41505
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675833601;
	bh=Gnl8tC7bXijF8CaKMGm98rGrVA+CXt7jYIOOTZoPUwU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=u9HZFTAeRzVSalLygwmPKXhePV58eYxSMN+iqqd4+pKjk0ux1k9z6wuiC4xIZyVcc
	 h/VidU7361jfUZLY4PeeNSNKqi32VznF6Z8Gz0++X1LNIwDhQ8hkZsk6NRULpkUEb1
	 JkpOAjNJIJuZ2DbjYWQPQ9sS+W/y80eJjNFV7T0P1MWdCf0gDJtcNhdmfGJF79H1uF
	 NVsJ+bXq4jMBPJiwvxiFlGYUh9FTdioFo4Ux6t8rxSh2WIdrMiShHnxb1xDF43yyuN
	 AnLqKkyKtUf6II5jc+37IN/5eSDe29DHUSVX38V6QkKJHrZ9oL7MpARUZdNH4GfYAg
	 iyBfy1aAvlagg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kh6TMRGpfPHn; Wed,  8 Feb 2023 05:20:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A83F408BC;
	Wed,  8 Feb 2023 05:20:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A83F408BC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 63B1A1BF853
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 05:19:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 40C98403FD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 05:19:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 40C98403FD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MCEK8t9YSAHK for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Feb 2023 05:19:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 946C140393
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 946C140393
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 05:19:53 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D2102614CA;
 Wed,  8 Feb 2023 05:19:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA15CC433EF;
 Wed,  8 Feb 2023 05:19:51 +0000 (UTC)
Date: Tue, 7 Feb 2023 21:19:50 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20230207211950.58352ede@kernel.org>
In-Reply-To: <20230206135050.3237952-3-o.rempel@pengutronix.de>
References: <20230206135050.3237952-1-o.rempel@pengutronix.de>
 <20230206135050.3237952-3-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1675833592;
 bh=ppQX0phum8j/ZtlYSmQzrNm0nrrmlila/Ki/EiEn2ts=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=XJ81Zr/f58c2/CUfED5JykJHvyvkjghGbRESxgOzC3aLdtpUX8NwAe7nyROcMFvSL
 z1KD92LORGPR/hI4W8CSfmyP3sp3f6Utx2Dc2iF3NqtVCxp8+H2R4+zbEAypoodCq1
 yyNtJuw//KLn8EoXrdXHMsh4c/K2cKCmXUGvRsJM49jEbojyzt4pqH2Yc2zxEG+fR2
 8ZRIotOgfSKZctiKHnIASlA/KXH0ch3T4fewGvzSOPUMAfdVGZiCDTyIFfQYhQiR4d
 4KTyT/sPJPP32AQXYqZP0IiRfFsL37N1KMWEljIijqPQouzmYZOGkEUF7O3uYZmCrj
 WqLTWseAEv9/g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=XJ81Zr/f
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

On Mon,  6 Feb 2023 14:50:29 +0100 Oleksij Rempel wrote:
> +/**
> + * mii_eee_cap1_mod_linkmode_t

A bit odd formatting - for a function it should have () at the end?

> + * @adv: target the linkmode advertisement settings
> + * @val: register value
> + *
> + * A function that translates value of following registers to the linkmode:
> + * IEEE 802.3-2018 45.2.3.10 "EEE control and capability 1" register (3.20)
> + * IEEE 802.3-2018 45.2.7.13 "EEE advertisement 1" register (7.60)
> + * IEEE 802.3-2018 45.2.7.14 "EEE "link partner ability 1 register (7.61)
> + */
> +static inline void mii_eee_cap1_mod_linkmode_t(unsigned long *adv, u32 val)
> +{

> @@ -676,6 +678,8 @@ struct phy_device {
>  	__ETHTOOL_DECLARE_LINK_MODE_MASK(lp_advertising);
>  	/* used with phy_speed_down */
>  	__ETHTOOL_DECLARE_LINK_MODE_MASK(adv_old);
> +	/* used for eee validation */
> +	__ETHTOOL_DECLARE_LINK_MODE_MASK(supported_eee);

missing kdoc for the new field
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
