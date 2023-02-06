Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0E068C1FB
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Feb 2023 16:43:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 652FE60B24;
	Mon,  6 Feb 2023 15:43:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 652FE60B24
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675698193;
	bh=+sQ6e20c57zZrwDf7wuN+wV2f+hmEJkLmYHnyG2uUT0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZYs6fnhTRBLHXY3r33CP6VlB2uB3/xeO4/4XEgCkjxyGdfvw4c0nBwnNFDIEnKWwZ
	 PvT/z+CXuN3xwGmSt3Tp8qTPlG4z6g7VelETKTn84kyDXgR/y/31QrPgL0ul5NFcYx
	 XnXrxcphWz13XE8tat9s5fxxVIRS6h5U+LqTDBqvg8r07MOh4i6AwJO9wLRoGZ2zQB
	 aF8FTUdWbzqoH+43x9KJLri+cG4XsYumKqaYnAJGymUm5LHyD11va9VDv4j5gl3dXe
	 HJKA1rUrUD9HEqWa48GkbVRzR0d5f6fk9QZ0/P27wYEhjzt63NmK7pFWMYHZwcQGpS
	 mn+qBfqkVBADw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VLnLvovV6b3F; Mon,  6 Feb 2023 15:43:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6594160B1B;
	Mon,  6 Feb 2023 15:43:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6594160B1B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E4D191BF3E0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 15:43:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C6F3760A97
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 15:43:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C6F3760A97
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dfU9UgfF-M4j for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Feb 2023 15:43:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C01060B1D
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1C01060B1D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 15:43:06 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1pP3dx-004DVG-AC; Mon, 06 Feb 2023 16:42:57 +0100
Date: Mon, 6 Feb 2023 16:42:57 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Vladimir Oltean <olteanv@gmail.com>
Message-ID: <Y+EgAZxcTVjYu8ew@lunn.ch>
References: <20230201145845.2312060-1-o.rempel@pengutronix.de>
 <20230201145845.2312060-3-o.rempel@pengutronix.de>
 <20230204005418.7ryb4ihuzxlbs2nl@skbuf>
 <20230206104955.GE12366@pengutronix.de>
 <20230206112246.pazwn7r75oru5iq3@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230206112246.pazwn7r75oru5iq3@skbuf>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=0yZyqa8cN33q2wshRD6t08U42KjC6hA9qW+HWH8pOwA=; b=Zp5zSX/BzQ9S2C0HJe9g5Oa3L0
 gWqgKEHPaXRtse9ZRtq+ppcmW3Evne7pxeAHPgZqA+sVTa6NZGjEouvfLMw8IjiyYTyLGrUlVX9YZ
 pZX5CWNXQj51GMjcW59sWAJsvkajI2KHB59VsvJmFAIj2n0wQrGkYvHgfRMegLNk+jwY=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=Zp5zSX/B
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 02/23] net: phy: add
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
 Oleksij Rempel <o.rempel@pengutronix.de>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, Wei Fang <wei.fang@nxp.com>,
 kernel@pengutronix.de, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, UNGLinuxDriver@microchip.com,
 "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Feb 06, 2023 at 01:22:46PM +0200, Vladimir Oltean wrote:
> On Mon, Feb 06, 2023 at 11:49:55AM +0100, Oleksij Rempel wrote:
> > > Why stop at 10GBase-KR? Register 3.20 defines EEE abilities up to 100G
> > > (for speeds >10G, there seem to be 2 modes, "deep sleep" or "fast wake",
> > > with "deep sleep" being essentially equivalent to the only mode
> > > available for <=10G modes).
> > 
> > Hm,
> > 
> > If i take only deep sleep, missing modes are:
> > 3.20.13 100GBASE-R deep sleep
> >        family of Physical Layer devices using 100GBASE-R encoding:
> >        100000baseCR4_Full
> >        100000baseKR4_Full
> >        100000baseCR10_Full (missing)
> >        100000baseSR4_Full
> >        100000baseSR10_Full (missing)
> >        100000baseLR4_ER4_Full
> > 
> > 3.20.11 25GBASE-R deep sleep
> >        family of Physical Layer devices using 25GBASE-R encoding:
> >        25000baseCR_Full
> >        25000baseER_Full (missing)
> >        25000baseKR_Full
> >        25000baseLR_Full (missing)
> >        25000baseSR_Full
> > 
> > 3.20.9 40GBASE-R deep sleep
> >        family of Physical Layer devices using 40GBASE-R encoding:
> >        40000baseKR4_Full
> >        40000baseCR4_Full
> >        40000baseSR4_Full
> >        40000baseLR4_Full
> > 
> > 3.20.7 40GBASE-T
> >        40000baseT_Full (missing)
> > 
> > I have no experience with modes > 1Gbit. Do all of them correct? What
> > should we do with missing modes? Or may be it make sense to implement >
> > 10G modes separately?
> 
> Given the fact that UAPI needs an extension to cover supported/advertisement
> bits > 31, I think it makes sense to add these separately. I had not
> realized this when I commented on this patch. I don't think we want the
> kernel to advertise EEE for some link modes without user space seeing it.

We also don't currently support any PHYs which do more than 10G. So i
don't see any need for 40GB and above at the moment.

      Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
