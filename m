Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7DB68C791
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Feb 2023 21:22:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D436408A3;
	Mon,  6 Feb 2023 20:22:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D436408A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675714937;
	bh=P62GlqB6eV0oW6m+eEQS9KoynY13jA0hglIu5oh+Vh8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bwZo9nqD24t/xbU3+zLqMplC/pW/VD/DUa+5dGtXv3n/skFeIYkYHkMAgQwX7FSIf
	 RvM46my96nGhvkCpFiS8j6msGb4XlAktEM7bfR9YaB8Z0Q6GbQRR55o4mH9allL9Ma
	 mFlHQtun1cwlU4TD/JCrb4g0F2gGiP/WEO8ZCw9g1DmP176V5dtoksDCiPl2q72gP5
	 L6bjX5mZTNwCYXRo5c5Uzl0o8ZsqU4zQIgVQBXRVnphFU8BGjXEX2FN+hnhcG6yKvu
	 9LowdHKOTyhyc9V4sfAVCjW62ToKcKXZjKjkX64Gj9d5dB+D7m5bvkKkPztK0REr6N
	 WS7S3vejPqHog==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DOR9N-AAN4HV; Mon,  6 Feb 2023 20:22:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E262E40673;
	Mon,  6 Feb 2023 20:22:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E262E40673
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 811CB1BF328
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 20:22:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 66D9A40119
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 20:22:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 66D9A40119
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s5xADSKu6UiH for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Feb 2023 20:22:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1679D400A4
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1679D400A4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 20:22:09 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1pP7zf-004EiV-Vm; Mon, 06 Feb 2023 21:21:39 +0100
Date: Mon, 6 Feb 2023 21:21:39 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <Y+FhU+5KJrEYX2CU@lunn.ch>
References: <20230201145845.2312060-1-o.rempel@pengutronix.de>
 <20230204001332.dd4oq4nxqzmuhmb2@skbuf>
 <20230206054713.GD12366@pengutronix.de>
 <20230206141038.vp5pdkjyco6pyosl@skbuf> <Y+EfSKRwQMRgEurL@lunn.ch>
 <20230206183706.GH12366@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230206183706.GH12366@pengutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=UPMS4+GiWA1iXl0wn+OuZDqgqDg2WCg1eOAbQZg4o/A=; b=Ufqok60DPuutPt3mZYvVllAdpr
 vqgARf95i+7li7VXd+qCF+uMbh2gHzJVjuZA1Ce6sLoNVs+80/oC3ParNoDOi4sm4gnGfk6qLrOUI
 Nn399vQObd78Z/8hNeIDFWSJWioVLKXGC+qRO8fTJjjvr7UT+2XeZ/h4NqG7RhOC1EVM=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=Ufqok60D
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 00/23] net: add EEE
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
Cc: Woojung Huh <woojung.huh@microchip.com>, Arun.Ramadoss@microchip.com,
 Florian Fainelli <f.fainelli@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, Wei Fang <wei.fang@nxp.com>,
 kernel@pengutronix.de, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Vladimir Oltean <olteanv@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> SmartEEE will be probably a bit more challenging. If MAC do not
> advertise EEE support, SmartEEE can be enabled. But it would break PTP
> if SmartEEE is active. Except SmartEEE capable PHY implements own PTP
> support. In any case, user space will need extra information to
> identify potential issues.

If we have a MAC driver which does not implement the ethtool set_eee()
and get_eee() ops, and a dev->phydev with the SmartEEE flag set, we
could have net/ethtool/eee.c call direct into phylib.

As for PTP and EEE, maybe we want the core PTP code to try calling
get_eee() and at minimum issue a warning if it is enabled, if it
thinks MAC PTP is being used?

       Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
