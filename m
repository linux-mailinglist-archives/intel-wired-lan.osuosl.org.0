Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C138C686F9A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Feb 2023 21:18:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5369640B6B;
	Wed,  1 Feb 2023 20:18:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5369640B6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675282723;
	bh=nCthEJb5NwvB4s5fC+/7NimcDN5t6yQhk3iCtS9UQ9s=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NscUyO1TDbJrYDkjHlTyFI/JHP2W6M2+nkKmvGv51fZPu7w9p4h2PlQlrfhMzSNiO
	 nMOkN11JZzaquBynNcaylLReR8JE9Oro1xKtlOhFoRdsOOiPOFLEy4zS9MnDI2tM8k
	 25soZWdjWJCfM/j/Yh+ffwbsmVv8gga0Nog6u220YVvutR08Gw9r5/8OGYMYu0eMb5
	 UYAqv3XxJiHBawAVlAeQkoV82ossm3eKiudpSXzpQ/m6yPYtUTxo/2Tn+s7K8+vAsM
	 WJ+r+IAZRXTNrvFgG7xoNWWL3Mma9sjurVsiJn6D+nV1DWMJKHrLpsyeAV6lErcglt
	 u1ilhvcTqZbTQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dEDcHmlePLQA; Wed,  1 Feb 2023 20:18:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4E827403F9;
	Wed,  1 Feb 2023 20:18:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E827403F9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ABB311BF3A0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 20:18:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8434941949
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 20:18:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8434941949
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2ZtnoJaDm1j1 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Feb 2023 20:18:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4630241944
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4630241944
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 20:18:36 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 2AB3B61934;
 Wed,  1 Feb 2023 20:18:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DEBE2C433EF;
 Wed,  1 Feb 2023 20:18:33 +0000 (UTC)
Date: Wed, 1 Feb 2023 12:18:32 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20230201121832.109f751b@kernel.org>
In-Reply-To: <20230201145845.2312060-6-o.rempel@pengutronix.de>
References: <20230201145845.2312060-1-o.rempel@pengutronix.de>
 <20230201145845.2312060-6-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1675282714;
 bh=k5hlpssnceOv6leu+3BSWwGAdnOuEHqHMa1y3/y/MXI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=FmzwLCpMnaiwKKNwG8zhL8SDfAurVnET+cLa9u5xlI5tFai72TsYIB1Wr2zleWBLD
 8Ik3mlpfOyRETWPaZXVlboV6w9Q8durlRSPE7kMClFiAdJPCl19YxXu3aCGodkBm81
 HPAspzVdwDfkeT7mOf4GuMmgH9IHM1r2y1PZFwWtszxXpgjYGLHjkFBYvOuGRDO4DD
 cvpcq4lUU4SN/0AKWgdDlGkNwT3/A9ZAii+iQw53CYlucQQb6pDY0flnCoLbpJUvwm
 W0ZB5yGn5uJhvf/kRpHQz4UoH3JlN3BXiTdZZ22gVBqEBNcm0DFZBLV7GvqhL741WX
 EGYLQ16etS74A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=FmzwLCpM
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 05/23] net: phy: add
 genphy_c45_ethtool_get/set_eee() support
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

On Wed,  1 Feb 2023 15:58:27 +0100 Oleksij Rempel wrote:
> +/**
> + * genphy_c45_write_eee_adv - write advertised EEE link modes
> + * @phydev: target phy_device struct
> + */
> +int genphy_c45_write_eee_adv(struct phy_device *phydev, unsigned long *adv)

nit: most functions added by this patch are missing kdoc for second
argument
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
