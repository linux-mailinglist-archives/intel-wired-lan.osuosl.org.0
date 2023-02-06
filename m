Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E05E68BF9C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Feb 2023 15:10:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2572340480;
	Mon,  6 Feb 2023 14:10:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2572340480
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675692651;
	bh=Zfod1OPxD+LgQuPiI2I2OPm+QAkpx59vIevUOfoOeyg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zTRQroI0kOS7p3Wc0A+4sZFtnwY23gC6z98840b2Y2p7mMTyRNjQhymRVT/7KTCQv
	 GhhGGqsav4FD+Or4FN5nLmXRkuGpHDNU7Ayso6A3bknSOqMB4Kvl3JCPm8RWEdffm3
	 KlgYMLzZy3XUsgzWK7lDL1LM6nb0J+P5GXu63NlLKGXx/vt3Yp6hTZM/mhseyYSONL
	 YjH7vTIPsyuhBuUb3PJF7xlT8TS8jxC8QqDRGEMr5Dzbw2NVT5rB+IGu4L6AGr+slv
	 IEebzgaxUfhcINzXW8qa5iS4FFP6Ns5gMUe+NhaLoeXRkkmCcWQSJO29AuhpVNCs3u
	 OKfl+y2ATswDg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GwwvvSrvHPTO; Mon,  6 Feb 2023 14:10:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0466C4045C;
	Mon,  6 Feb 2023 14:10:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0466C4045C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 91FF01BF343
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 14:10:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 777044045C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 14:10:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 777044045C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tkZK_IhI2fD7 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Feb 2023 14:10:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 34B8A4021C
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 34B8A4021C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 14:10:42 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id u21so11801622edv.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 06 Feb 2023 06:10:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qjNCZihD+JyD+X/NqX2K/WinbFURiWlVJdPI5oFlnRU=;
 b=gMmTAdw1moNGO0aya+R3NTVMyJXGu7PyoxTvDDSQJnM4ie6H1EZtpJk9R1skRCqXRE
 QLeX/jO/9cuj0VNR6A+hsOHCqdQlhmvv+0yuQj+yvr3YcSH+o8s8pgve1L91SVHBcU7j
 n8cunqpnuayi2vSK06LpRlJB+tiT40zHuv935+RIL0YedlkSq8Bhiy9AB1tB3pFd2clL
 SjfJnLP6HpibqzUAC2sgU8WvHbXjT2a2I1+b1xRDyYr+NXyePP+C4zeUpx5/F/TFJ8MG
 a0Emsu9tFV8I79bImVUSA2kkJTuJvsGRJR+1oPcir4FcIrVA41l4lttLYf3yKD3yHzlG
 Cr1A==
X-Gm-Message-State: AO0yUKVBrFgSZQw6ZlUvzcKUqyty6EjMeIgFZDhWiCaUiYZq4rrpJIrN
 H6gaJDYU0QcNJs/O0NSLDak=
X-Google-Smtp-Source: AK7set8hg1nL1fqQAN1ybZnXS9qFzQW0YjWs7NHJRoLnM5b8Z5L6iTX8HkkYeaqd45qCQI7MJwNwwQ==
X-Received: by 2002:a50:bb27:0:b0:4aa:a172:6616 with SMTP id
 y36-20020a50bb27000000b004aaa1726616mr8970529ede.24.1675692641057; 
 Mon, 06 Feb 2023 06:10:41 -0800 (PST)
Received: from skbuf ([188.26.185.183]) by smtp.gmail.com with ESMTPSA id
 en14-20020a056402528e00b0049622a61f8fsm5137456edb.30.2023.02.06.06.10.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Feb 2023 06:10:40 -0800 (PST)
Date: Mon, 6 Feb 2023 16:10:38 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>,
 Richard Cochran <richardcochran@gmail.com>
Message-ID: <20230206141038.vp5pdkjyco6pyosl@skbuf>
References: <20230201145845.2312060-1-o.rempel@pengutronix.de>
 <20230204001332.dd4oq4nxqzmuhmb2@skbuf>
 <20230206054713.GD12366@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230206054713.GD12366@pengutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=qjNCZihD+JyD+X/NqX2K/WinbFURiWlVJdPI5oFlnRU=;
 b=QQ2WJQq/56bvYDCjn/ZQVSCLF5CXnhAeDIv8hnHuLczMo1QRcvFrRQXT/TC0cxr3zp
 k0iIpIo3Ia0CkBfayjEyxcJpjkzpmbafGFV77ldIH94AqOtchcdy1ipBzBTIYTkJUfcq
 bGSpr/hDAHlgmBHMgmqPs5rCuMb1IRlQWLjRtgTOOd6qMSAdHgcqxCuRxx585IVRbYZU
 jHELaRm5AeuD924dDzoffPxIzGV7doJcZe8Re4OnExtTmoKiYaxesUb0PDrv/aMrhLsk
 MX68caGC9fD72wPYo3cJk4vkoZ0ESHaySCtVX8rrXEwr0Vh6BkH37Tw/swo3/hkJSAxi
 JqVg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=QQ2WJQq/
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

On Mon, Feb 06, 2023 at 06:47:13AM +0100, Oleksij Rempel wrote:
> On Sat, Feb 04, 2023 at 02:13:32AM +0200, Vladimir Oltean wrote:
> > On Wed, Feb 01, 2023 at 03:58:22PM +0100, Oleksij Rempel wrote:
> > > With this patch series we provide EEE control for KSZ9477 family of switches and
> > > AR8035 with i.MX6 configuration.
> > > According to my tests, on a system with KSZ8563 switch and 100Mbit idle link,
> > > we consume 0,192W less power per port if EEE is enabled.
> > 
> > What is the code flow through the kernel with EEE? I wasn't able to find
> > a good explanation about it.
> > 
> > Is it advertised by default, if supported? I guess phy_advertise_supported()
> > does that.
> 
> Ack.
> 
> > But is that desirable? Doesn't EEE cause undesired latency for MAC-level
> > PTP timestamping on an otherwise idle link?
> 
> Theoretically, MAC controls Low Power Idle states and even with some
> "Wake" latency should be fully aware of actual ingress and egress time
> stamps.

I'm not sure if this is also true with Atheros SmartEEE, where the PHY
is the one who enters LPI mode and buffers packets until it wakes up?

> 
> Practically, right now I do not have such HW to confirm it. My project
> is affected by EEE in different ways:

Doesn't FEC support PTP?

> - with EEE PTP has too much jitter
> - without EEE, the devices consumes too much power in standby mode with
>   WoL enabled. Even switching to 10BaseT less power as 100BaseTX with
>   EEE would do.
> 
> My view is probably biased by my environment - PTP is relatively rare
> use case. EEE saves power (0,2W+0,2W per link in my case). Summary power
> saving of all devices is potentially equal to X amount of power plants. 
> So, EEE should be enabled by default.

I'm not contesting the value of EEE. Just wondering whether it's best
for the kernel, rather than user space, to enable it by default.

> 
> Beside, flow control (enabled by default) affects PTP in some cases too.

You are probably talking about the fact that flow control may affect
end-to-end delay measurements (across switches in a LAN). Yes, but EEE
(or at least SmartEEE) may affect peer-to-peer delay measurements, which
I see as worse.

> 
> May be ptp4l should warn about this options? We should be able to detect
> it from user space.

This isn't necessarily a bad idea, even though it would end up
renegotiating and losing the link.

Maybe it would be good to drag Richard Cochran into the discussion too.
After all he's the one who should agree what should and what shouldn't
ptp4l be concerned with.

> 
> Regards,
> Oleksij
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
