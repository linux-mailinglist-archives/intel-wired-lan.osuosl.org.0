Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE62F68CBB1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Feb 2023 02:06:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2F553404C1;
	Tue,  7 Feb 2023 01:06:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F553404C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675731963;
	bh=Kkoy7mlE60rayUVp/ghZ2wehiuTZM0TQ17bf5nKMgqg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XO0+saBYulMATc1UuQQ8rXCUtx/vptnGcHnm3dWzKccfOX669oNw73lklTBYzz2Cz
	 Jy+6AFstCYamK1z7/4G3PH0upvi7RaUOzDNkORrEFFUrSNv89srxlgWsy536y1UmS5
	 Mm9V4fe4BTcIu2kMZ0S40WRX2+p0cX7FKtxoBtrtztnYj5Xam8zE1OMF3OiQhJQF40
	 VkG6W2SbCz+dwlWbEWZimD3M9CkK4oKxRaKCkGHmkOUf2QUOtrANkczt6BftZisQwc
	 bZ30o1uKJjnloEEzpnY2FzDLGi+/toGh7U08yUFItfT0bYXdHfXpuwdbZ6zTr9mYON
	 AwFssRY9cuKYQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W_qdaIWq3kik; Tue,  7 Feb 2023 01:06:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2620240002;
	Tue,  7 Feb 2023 01:06:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2620240002
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B5BD31BF2BB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 01:05:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8D96660D56
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 01:05:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D96660D56
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EgHj05tjQVZN for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Feb 2023 01:05:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DCBAF60BE1
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DCBAF60BE1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 01:05:56 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1pPCQa-004Fla-MG; Tue, 07 Feb 2023 02:05:44 +0100
Date: Tue, 7 Feb 2023 02:05:44 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <Y+Gj6PObDZ+zJSSG@lunn.ch>
References: <20230206135050.3237952-1-o.rempel@pengutronix.de>
 <20230206135050.3237952-10-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230206135050.3237952-10-o.rempel@pengutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=Kxgr1Z+G7gEE1M9r6++laPaamK40cZIEw/H+lncP1PM=; b=4zZHJVYQpVwmLV0hD9lEw5sI7O
 KoK+b2mWoTseGq6EWYfuQCXIX77rxAlXHVpdje7RWVRepY+yy/dptbfLpA4aiXgzQ4XWGKkEqrtqj
 Y+FBGh4lHoso5KiC3FcjN/iNk3l1GczFnCFBROM09n8MXQs2NvZwuPDjlGVydQcpK5DI=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=4zZHJVYQ
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 09/23] net: phy: start
 using genphy_c45_ethtool_get/set_eee()
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

On Mon, Feb 06, 2023 at 02:50:36PM +0100, Oleksij Rempel wrote:
> All preparations are done. Now we can start using new functions and remove
> the old code.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>

This change looks correct, in that it just replaces code with other
equivalent code.

But looking at it, i started to wonder about locking. I don't see
phydev->lock held anywhere. But it does access members of phydev, in
particular speed and duplex. If the PHY state machine is running at
the same time, and phy_read_status() is called, those members can
contain invalid information.

So i think another patch is needed to add locking to these two
functions.

Otherwise:

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
