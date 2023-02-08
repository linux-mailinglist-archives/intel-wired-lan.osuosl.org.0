Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B8C68F32B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Feb 2023 17:30:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB5806112C;
	Wed,  8 Feb 2023 16:30:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB5806112C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675873813;
	bh=vC5u+wQtb4DS9A7ohR/BBvtC6VfZKUZ2ezZjX4JMKPQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8f09KJ8qXQoaNkRbeCKVn6Yr90VGJdPd8tei2/T8OdRLE4PZIgONXK7/3AGoLWCp/
	 h77Y4voztUR24FYJFtSTpM84Mvl9r6L3t0WGR7EIuIpTvJZrct3KcFYXV8G3pEvL3l
	 Y3maUPgIklpdZNbq4KJuQMGe4Z/fLlDA+K9BG5dJ1JDIHDHJnbzqQZAuSrZHXEjapI
	 VpzNZD8IJAyf+Q0G7wmWDhJuypagKk8ubKjV7cY4uqT2iFYjhTrALdZg1HjwMzRbpp
	 0zWMTh8OtXIX2xMo4bZlYE5dgZ5xBTHiTlOQZNUqXnrSPvyV/EnFMIEOVitS8MkIgv
	 j/odL+Gf3WG5Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i0stLCwKBM3O; Wed,  8 Feb 2023 16:30:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D2ADF60FD3;
	Wed,  8 Feb 2023 16:30:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D2ADF60FD3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 620611BF5EA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 08:30:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4701240BA7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 08:30:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4701240BA7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NgF_C4b2CSDF for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Feb 2023 08:30:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 23CC540150
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 23CC540150
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 08:30:40 +0000 (UTC)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pPfqO-0007Z6-QC; Wed, 08 Feb 2023 09:30:20 +0100
Received: from ore by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pPfqL-00041i-JF; Wed, 08 Feb 2023 09:30:17 +0100
Date: Wed, 8 Feb 2023 09:30:17 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20230208083017.GI12366@pengutronix.de>
References: <20230206135050.3237952-1-o.rempel@pengutronix.de>
 <20230207212555.79ffbc26@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230207212555.79ffbc26@kernel.org>
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
X-Mailman-Approved-At: Wed, 08 Feb 2023 16:30:08 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 00/23] net: add EEE
 support for KSZ9477 and AR8035 with i.MX6
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

On Tue, Feb 07, 2023 at 09:25:55PM -0800, Jakub Kicinski wrote:
> On Mon,  6 Feb 2023 14:50:27 +0100 Oleksij Rempel wrote:
> > With this patch series we provide EEE control for KSZ9477 family of switches and
> > AR8035 with i.MX6 configuration.
> > According to my tests, on a system with KSZ8563 switch and 100Mbit idle link,
> > we consume 0,192W less power per port if EEE is enabled.
> 
> Can we carve this series up a little bit to avoid large reposts?
> Perhaps you can hold off on reposting the cleanup patches starting
> at patch 17 - repost those separately after the first 16 go in?

ACK. Sounds good.
I'll make a cut on 00/09 patch. SmartEEE need probably more discussion and
changes.

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
