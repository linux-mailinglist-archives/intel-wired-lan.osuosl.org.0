Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30390686C65
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Feb 2023 18:07:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AAEE0403EA;
	Wed,  1 Feb 2023 17:07:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AAEE0403EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675271234;
	bh=/AjV/sCz+QGvLh16t90fXTi4uFFgkukYTa+P2fuj8I4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2xDjPxUfx4dpzaFK0u/P1UzWMvSUwe/m9GYYkXhBTzFhL6lfkwwyrNAuzAJ3k13JZ
	 vw6v48WcCfuSxbSFX6WkDAifcy8O12QvAonO59KrdojFxENSy6z4W4mwESRJYkcwRI
	 hZV1ptgX7ddlEycFVlLRYfVNMad6+eIxCy4xOkrwaXVEt97rEEjxBa9ZK/PHgZtsfu
	 v4ET3jayl8gBEoCrTG8chOGFvE+rdbCEPQ+42YMQXEqc8tlIRuVCmIFLiubnF/AGkb
	 WDrX5ELA1irhUFlXS/EqP8RfJzvXffqDVo+VHDrxu4gdwLLgFCxKnRA5d04lF/Hwrm
	 EEU2JjcQOz1Fw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MHvJs6GhM595; Wed,  1 Feb 2023 17:07:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B6801403A7;
	Wed,  1 Feb 2023 17:07:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B6801403A7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2890B1BF29F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 17:07:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0074A40294
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 17:07:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0074A40294
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wR9OJ_DBPBlR for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Feb 2023 17:07:06 +0000 (UTC)
X-Greylist: delayed 00:24:57 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E544A40292
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E544A40292
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 17:07:05 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1pNGBD-003oEr-D7; Wed, 01 Feb 2023 17:41:51 +0100
Date: Wed, 1 Feb 2023 17:41:51 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <Y9qWT11Ckf0g+whv@lunn.ch>
References: <20230201145845.2312060-1-o.rempel@pengutronix.de>
 <20230201145845.2312060-9-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230201145845.2312060-9-o.rempel@pengutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=SgddTTKAGF4Pttul+G878Am4ZtBBoyVHLpFQBrA5TvI=; b=4uAr010FWqz5h8GkiMsnC/YeF9
 GKNm8kkHE/KzalFSu8IpBOj0vbMvoNWL3oXAvyhQlPyo2v5bLY487HnGMk7tNgNd4tn5BuuTY31uC
 13bkA8Fdg+4TPlyjEF88jxCXk/Oum7BB/pxA55X1Hm3XYlwQAQbLJLA9C86tjmHzqmlI=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=4uAr010F
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 08/23] net: phy: migrate
 phy_init_eee() to genphy_c45_eee_is_active()
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

>  int phy_init_eee(struct phy_device *phydev, bool clk_stop_enable)
>  {
> +	int ret;
> +
>  	if (!phydev->drv)
>  		return -EIO;
>  
> -	/* According to 802.3az,the EEE is supported only in full duplex-mode.
> -	 */
> -	if (phydev->duplex == DUPLEX_FULL) {

This got me for a while, where did the duplex check go?

But you now compare the local advertised EEE and the link peer EEE.
Since it is impossible to advertise a half duplex mode, the result can
never contain a half duplex mode.

I've done the work now, but a comment about this in the commit message
would of been nice.

FYI: Thanks for converting all users of the old functions. I was not
expecting that.

	Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
