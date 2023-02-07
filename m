Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D16AF68CB80
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Feb 2023 01:54:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6983781C6E;
	Tue,  7 Feb 2023 00:54:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6983781C6E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675731295;
	bh=1QvLtvO6FLO/1K4LuBY+F61K6an6ONUdEMEk48hj7vk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=l2mOVlYiFbsQ8sxvVahg440WPbotiVZ6Ct0oR/7Itzv86uvsx2dN8Etu4XIXOV09J
	 OZetzN4OrVpKEHANiFsw/xa3U2rSH7Rn8sEUWQsGuAsoXq7cBxbpL4woESSJDVx8ua
	 0wEphNMp7iqiKD5RsDUaeOfzayDmnHnkXs37T3kxTkZrwrzSC+4svQbkIP1U+zaVg6
	 QMy6DhLPRwORWLyy/9nBjb+eOhFXaAprTtyxvQ3M/6Op1CQO6xf5TlBmIHZSrI1hrw
	 L3UNpftHeKU5LprxFzSvvdKrBa/QtEV7aVcd5ab5qsAt2yq+YKDe1isyPRRAiGxl4z
	 ay2P/RtYwvPjA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tyEfwXHDW4bR; Tue,  7 Feb 2023 00:54:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 84E6E81A39;
	Tue,  7 Feb 2023 00:54:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 84E6E81A39
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1548D1BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 00:54:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EDFBD81A33
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 00:54:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EDFBD81A33
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SJ4PATl5UZzn for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Feb 2023 00:54:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 558F181A39
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 558F181A39
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 00:54:48 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1pPCFo-004FkA-DG; Tue, 07 Feb 2023 01:54:36 +0100
Date: Tue, 7 Feb 2023 01:54:36 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <Y+GhTEpwx+jP8S09@lunn.ch>
References: <20230206135050.3237952-1-o.rempel@pengutronix.de>
 <20230206135050.3237952-9-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230206135050.3237952-9-o.rempel@pengutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=4CrvK76rrD+R3wcfuu8uheBctEOoX8lxcQWUqv+cAh0=; b=xqmzBiYavYtrBVnALt2wa6aAIu
 IbQWkl2TsFyF1xQp/cJFF2mlLS9i0yJRGAe3kHk6pumq66hiXIAjirEDVZXUHX6osgpjx8MU4lkZv
 nC8nU1226Ah229BaBzEyPTYF7Ayxfp20diFWAvDDdSiQbNMUmj0aLl70F2iXoriPhIMg=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=xqmzBiYa
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 08/23] net: phy: migrate
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

On Mon, Feb 06, 2023 at 02:50:35PM +0100, Oleksij Rempel wrote:
> Reduce code duplicated by migrating phy_init_eee() to
> genphy_c45_eee_is_active().
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>

This makes sense, but as i said in a different thread, i think the
MAC/PHY API needs improving at some point, which could result in this
function going away. But this patchset is big enough as it is.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
