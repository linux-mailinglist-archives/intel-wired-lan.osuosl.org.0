Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B4AE368C71E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Feb 2023 20:56:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DFD144030D;
	Mon,  6 Feb 2023 19:56:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DFD144030D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675713407;
	bh=q4C3R0SUhN6gd7AbggrXx+HLn10iW8gY48d24Emzk78=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZBoGxAivUTKkflyhbRuCWUNZ0OGXjbGxRIREluPT8FqF0dpV06ikG7xmiOW7Q7ss1
	 TeEiPPuyhwZ0ELPv0tmNCOQF4JhADn2sr01uPXfa3Udku8m2Lh899ModSdiP567H7y
	 L8H7Z/By1I9Pdl6T0up5cHeApK8w6RfY1GT0s3tqCxrhU09pb0TeKgeLl0JoywzXIO
	 3NIhQkY4KS+/5EqF/D9Wcm2x6Gttdxt8IBB7GCIv+vjg3ebylgRzJ5OJyqH+b0tqo3
	 vNOJm4RdLVxA4qtJGk/GM0XH+cWqLvsklzST4LLJ+Do8uLRbbTS91qv+toBjOGr0bK
	 Vcrdr+vRiEdDQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9oldaFDcWv3J; Mon,  6 Feb 2023 19:56:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 760BF402EC;
	Mon,  6 Feb 2023 19:56:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 760BF402EC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ACCDD1BF2CD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 18:25:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8D361416C6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 18:25:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D361416C6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E3qaUQyrraBF for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Feb 2023 18:25:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 159024167E
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 159024167E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 18:25:40 +0000 (UTC)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pP6BF-0004zk-9u; Mon, 06 Feb 2023 19:25:29 +0100
Received: from ore by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pP6BD-0000gG-2J; Mon, 06 Feb 2023 19:25:27 +0100
Date: Mon, 6 Feb 2023 19:25:27 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Vladimir Oltean <olteanv@gmail.com>
Message-ID: <20230206182527.GG12366@pengutronix.de>
References: <20230201145845.2312060-1-o.rempel@pengutronix.de>
 <20230204001332.dd4oq4nxqzmuhmb2@skbuf>
 <20230206054713.GD12366@pengutronix.de>
 <20230206141038.vp5pdkjyco6pyosl@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230206141038.vp5pdkjyco6pyosl@skbuf>
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
X-Mailman-Approved-At: Mon, 06 Feb 2023 19:56:41 +0000
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
Cc: Woojung Huh <woojung.huh@microchip.com>, Andrew Lunn <andrew@lunn.ch>,
 Arun.Ramadoss@microchip.com, Florian Fainelli <f.fainelli@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, Eric Dumazet <edumazet@google.com>,
 Wei Fang <wei.fang@nxp.com>, kernel@pengutronix.de,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Feb 06, 2023 at 04:10:38PM +0200, Vladimir Oltean wrote:
> On Mon, Feb 06, 2023 at 06:47:13AM +0100, Oleksij Rempel wrote:
> > On Sat, Feb 04, 2023 at 02:13:32AM +0200, Vladimir Oltean wrote:
> > > On Wed, Feb 01, 2023 at 03:58:22PM +0100, Oleksij Rempel wrote:
> > > > With this patch series we provide EEE control for KSZ9477 family of switches and
> > > > AR8035 with i.MX6 configuration.
> > > > According to my tests, on a system with KSZ8563 switch and 100Mbit idle link,
> > > > we consume 0,192W less power per port if EEE is enabled.
> > > 
> > > What is the code flow through the kernel with EEE? I wasn't able to find
> > > a good explanation about it.
> > > 
> > > Is it advertised by default, if supported? I guess phy_advertise_supported()
> > > does that.
> > 
> > Ack.
> > 
> > > But is that desirable? Doesn't EEE cause undesired latency for MAC-level
> > > PTP timestamping on an otherwise idle link?
> > 
> > Theoretically, MAC controls Low Power Idle states and even with some
> > "Wake" latency should be fully aware of actual ingress and egress time
> > stamps.
> 
> I'm not sure if this is also true with Atheros SmartEEE, where the PHY
> is the one who enters LPI mode and buffers packets until it wakes up?

Yes, you right. With SmartEEE without MAC assistance, PTP will be
broken. At the same time, if MAC is PTP and EEE capable, the same PHY
with SmartEEE disabled should work just fine.

> > Practically, right now I do not have such HW to confirm it. My project
> > is affected by EEE in different ways:
> 
> Doesn't FEC support PTP?

FEC do supports PTP, but do not support EEE on i.MX6/7 variants.

> > - with EEE PTP has too much jitter
> > - without EEE, the devices consumes too much power in standby mode with
> >   WoL enabled. Even switching to 10BaseT less power as 100BaseTX with
> >   EEE would do.
> > 
> > My view is probably biased by my environment - PTP is relatively rare
> > use case. EEE saves power (0,2W+0,2W per link in my case). Summary power
> > saving of all devices is potentially equal to X amount of power plants. 
> > So, EEE should be enabled by default.
> 
> I'm not contesting the value of EEE. Just wondering whether it's best
> for the kernel, rather than user space, to enable it by default.

I woulds say, at the end the switch will decide what functionality will
be advertised. Other nodes should just tell what capabilities they
support.

> > 
> > Beside, flow control (enabled by default) affects PTP in some cases too.
> 
> You are probably talking about the fact that flow control may affect
> end-to-end delay measurements (across switches in a LAN). Yes, but EEE
> (or at least SmartEEE) may affect peer-to-peer delay measurements, which
> I see as worse.

I agree. User space should be notified some how about SmartEEE
functionality. Especially if it is incompatible with some other
functionality like PTP. It took me some time to understand why my PTP sync was
so unstable. SmartEEE was just silently enabled by HW and no EEE related
information was provided to user space.

> > May be ptp4l should warn about this options? We should be able to detect
> > it from user space.
> 
> This isn't necessarily a bad idea, even though it would end up
> renegotiating and losing the link.

My idea was to inform the user, not actively do what ever is needed. It
can conflict with other services or make system administrator scratch the
head without understanding why things magically happen.

> Maybe it would be good to drag Richard Cochran into the discussion too.
> After all he's the one who should agree what should and what shouldn't
> ptp4l be concerned with.

ACK.

Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
