Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4327F68C336
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Feb 2023 17:29:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5D3D28188B;
	Mon,  6 Feb 2023 16:29:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D3D28188B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675700950;
	bh=WfOPIYv2cg9ZwbrxLu6r6vlxxjPHuVCd4frOHxB1vgI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mAO5kCqQI1O3RJH0ocmUg62uHNEK/iuq9QOk4dnEG7elRoGnwXou/rypXU4vlp9Zp
	 xDo1N4QA6IfRIL2NH7IHJ2qbhiBBoAu5OT22U8KIvSEFttMJH5eCCAes8DwMipfMYq
	 T9ItYVsxIYU4x21x6TB+5fMNL9S6vSR/os3Tt5TR4GFC5rCILMOu71pi7Hbuda0fEG
	 cuNQgMls+mlmZUbEAQ3xm7FWx1zhLJ892PecsXXovvp7ii8vsqwembPaC1cbAzaaeW
	 gIzEYv4tO/54jODzG/5gfgHub1lt9VilPAhVNthdsoaRU/Vqd83mP7xmzSYur0rkYN
	 eJQ6Rsa4BPghg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tvk1pI4Xbxu2; Mon,  6 Feb 2023 16:29:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3667481886;
	Mon,  6 Feb 2023 16:29:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3667481886
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A45321BF35E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 05:47:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 89D3C400DD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 05:47:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 89D3C400DD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9N3o5cDarsao for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Feb 2023 05:47:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2E5C4400AF
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2E5C4400AF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 05:47:47 +0000 (UTC)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pOuLT-0007FS-UW; Mon, 06 Feb 2023 06:47:15 +0100
Received: from ore by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pOuLR-0004Iw-Ji; Mon, 06 Feb 2023 06:47:13 +0100
Date: Mon, 6 Feb 2023 06:47:13 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Vladimir Oltean <olteanv@gmail.com>
Message-ID: <20230206054713.GD12366@pengutronix.de>
References: <20230201145845.2312060-1-o.rempel@pengutronix.de>
 <20230204001332.dd4oq4nxqzmuhmb2@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230204001332.dd4oq4nxqzmuhmb2@skbuf>
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
X-Mailman-Approved-At: Mon, 06 Feb 2023 16:29:04 +0000
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
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, Wei Fang <wei.fang@nxp.com>,
 kernel@pengutronix.de, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, UNGLinuxDriver@microchip.com,
 "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Feb 04, 2023 at 02:13:32AM +0200, Vladimir Oltean wrote:
> On Wed, Feb 01, 2023 at 03:58:22PM +0100, Oleksij Rempel wrote:
> > With this patch series we provide EEE control for KSZ9477 family of switches and
> > AR8035 with i.MX6 configuration.
> > According to my tests, on a system with KSZ8563 switch and 100Mbit idle link,
> > we consume 0,192W less power per port if EEE is enabled.
> 
> What is the code flow through the kernel with EEE? I wasn't able to find
> a good explanation about it.
> 
> Is it advertised by default, if supported? I guess phy_advertise_supported()
> does that.

Ack.

> But is that desirable? Doesn't EEE cause undesired latency for MAC-level
> PTP timestamping on an otherwise idle link?

Theoretically, MAC controls Low Power Idle states and even with some
"Wake" latency should be fully aware of actual ingress and egress time
stamps.

Practically, right now I do not have such HW to confirm it. My project
is affected by EEE in different ways:
- with EEE PTP has too much jitter
- without EEE, the devices consumes too much power in standby mode with
  WoL enabled. Even switching to 10BaseT less power as 100BaseTX with
  EEE would do.

My view is probably biased by my environment - PTP is relatively rare
use case. EEE saves power (0,2W+0,2W per link in my case). Summary power
saving of all devices is potentially equal to X amount of power plants. 
So, EEE should be enabled by default.

Beside, flow control (enabled by default) affects PTP in some cases too.

May be ptp4l should warn about this options? We should be able to detect
it from user space.

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
