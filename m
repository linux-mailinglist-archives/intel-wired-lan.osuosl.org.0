Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C966A2094
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Feb 2023 18:41:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B41261132;
	Fri, 24 Feb 2023 17:41:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B41261132
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677260502;
	bh=/J/SzyMv9DyHaJsRgfI2MMFEz67XGZT7yta+04rLZ7g=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Lp1YPvCGfqNjWkUpSKGoX/tV1Q83k2k3SLC1HX8gW6HrmBa4TSDlnmgOn85DXgWA6
	 59O/r70K2LD3ngQG407t04BE23EPKjtSY6zCc8uIl64FleD0WTNoQbuRcVHb7KuLht
	 JeeM6sf8TSbleartC3ceLuHx6tOJgC9rZgNUfHJuEZlKSSBl4qqv6nLHcfjlp9M3M1
	 YifFabmZn5GRyG0qO3YyxAG5YVzssJwPyJiLPFz9VwNB3ypoSR6945YIBDVRPRXv55
	 q/g3/XWqDTEHifwbTRZNZMsCcICNLEZfyUSIuL0PGRu+7LnNXCubNExA03qlK28bUH
	 MPR+X0X/iVW+w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aGcnlG0NN45L; Fri, 24 Feb 2023 17:41:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BCE661130;
	Fri, 24 Feb 2023 17:41:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BCE661130
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 099491BF5F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 17:41:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D63F040AD9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 17:41:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D63F040AD9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O5h8mIENeitP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Feb 2023 17:41:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E2872403C2
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com
 [IPv6:2607:f8b0:4864:20::136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E2872403C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 17:41:34 +0000 (UTC)
Received: by mail-il1-x136.google.com with SMTP id i12so154641ila.5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 09:41:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=D66DXx2We227H4fmDckhvZM7P6i8ZzxMoVouVh6j/zs=;
 b=EolSAqRw492vKWX8WC6o1bZ+uNXynuYUP2EULg/kVoVqr8pMl0i/IWJBV/ZXrfdkxr
 aAYrqgK+sArpWfYTzjS6iJE7ClSK8JGK4b62RCYeq5TCELESOa83E1Z8f+V5PN08Pm88
 zYBdo4X6wyWpP5uev9SzDrQXuBVlZ2WbXekCSSOHQtyyxiuP8LzrQzq5qQTiduakgKJT
 hQK5bXFb1i6MUTQf83fYcSQs2M8lXNIpkcwm/BaPS2xPWK0YzePZ8x932xtJPPIX9Yug
 sYbSZ+U6UDnD7IliVIcWvyYbfcx3S+HBSoOnjmWfvW/CzNobl1P0X235fhRKzdl5QUBg
 gSYg==
X-Gm-Message-State: AO0yUKUTrhwexoWBf0lzGxcqPPZoOTmibWb1to1U5f2ZrYiqvXsBmZX5
 S9tefCltMpUDvpZuiKp5TwA=
X-Google-Smtp-Source: AK7set/76uAPLM3Jq05MtwuSbnutaSq49QvOWlmMu/SYeg6voONhTGyoyANUspbRb3x4XZqp9MnFbQ==
X-Received: by 2002:a05:6e02:1c25:b0:316:ecbf:5573 with SMTP id
 m5-20020a056e021c2500b00316ecbf5573mr8771146ilh.12.1677260493797; 
 Fri, 24 Feb 2023 09:41:33 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 w4-20020a056e0213e400b00315972e90a2sm4156279ilj.64.2023.02.24.09.41.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Feb 2023 09:41:33 -0800 (PST)
Date: Fri, 24 Feb 2023 09:41:32 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20230224174132.GA1224969@roeck-us.net>
References: <20230211074113.2782508-1-o.rempel@pengutronix.de>
 <20230211074113.2782508-7-o.rempel@pengutronix.de>
 <20230224035553.GA1089605@roeck-us.net>
 <20230224041604.GA1353778@roeck-us.net>
 <20230224045340.GN19238@pengutronix.de>
 <363517fc-d16e-5bcd-763d-fc0e32c2301a@roeck-us.net>
 <20230224165213.GO19238@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230224165213.GO19238@pengutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
 :reply-to;
 bh=D66DXx2We227H4fmDckhvZM7P6i8ZzxMoVouVh6j/zs=;
 b=WKuBl3B7cvk6c+mpL8SghVIeqliBMuw99ef1CXm0FRE8+yXqfFtxreRxRGbNkDWCt7
 TeiGnT5Y8noUXfCqv49uym2q2Ja1/zvCoYrfsE6/o+uarq8ehbCZtVMiotpHPZAPEcn7
 CqgGIgJzNzgx/VI31W+CmY1foUBaA8wtclqUL2pFCtUZ/01OjgK17XYIOU+k5lPO0YKp
 7h+fTvGdJN1CfdoQ31ujfs3VHb+vasZz2DLZXWH9vc0l59zZ8g3og5Zn7uxFMUa5lu7/
 R6ifS84lt4THD5UHSagidgyUK8KGGT1dlEa/1XZQpQTGBAeakCwGVtVg3xJgikpd1+fR
 hUCg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=WKuBl3B7
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 6/9] net: phy: c22:
 migrate to genphy_c45_write_eee_adv()
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
 Vivien Didelot <vivien.didelot@gmail.com>, UNGLinuxDriver@microchip.com,
 Eric Dumazet <edumazet@google.com>, Vladimir Oltean <olteanv@gmail.com>,
 Wei Fang <wei.fang@nxp.com>, kernel@pengutronix.de,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Feb 24, 2023 at 05:52:13PM +0100, Oleksij Rempel wrote:
> On Fri, Feb 24, 2023 at 08:00:57AM -0800, Guenter Roeck wrote:
> > On 2/23/23 20:53, Oleksij Rempel wrote:
> > > Hallo Guenter,
> > > 
> > > On Thu, Feb 23, 2023 at 08:16:04PM -0800, Guenter Roeck wrote:
> > > > On Thu, Feb 23, 2023 at 07:55:55PM -0800, Guenter Roeck wrote:
> > > > > On Sat, Feb 11, 2023 at 08:41:10AM +0100, Oleksij Rempel wrote:
> > > > > > Migrate from genphy_config_eee_advert() to genphy_c45_write_eee_adv().
> > > > > > 
> > > > > > It should work as before except write operation to the EEE adv registers
> > > > > > will be done only if some EEE abilities was detected.
> > > > > > 
> > > > > > If some driver will have a regression, related driver should provide own
> > > > > > .get_features callback. See micrel.c:ksz9477_get_features() as example.
> > > > > > 
> > > > > > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > > > > > Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> > > > > 
> > > > > This patch causes network interface failures with all my xtensa qemu
> > > > > emulations. Reverting it fixes the problem. Bisect log is attached
> > > > > for reference.
> > > > > 
> > > > 
> > > > Also affected are arm:cubieboard emulations, with same symptom.
> > > > arm:bletchley-bmc emulations crash. In both cases, reverting this patch
> > > > fixes the problem.
> > > 
> > > Please test this fixes:
> > > https://lore.kernel.org/all/167715661799.11159.2057121677394149658.git-patchwork-notify@kernel.org/
> > > 
> > 
> > Applied and tested
> > 
> > 77c39beb5efa (HEAD -> master) net: phy: c45: genphy_c45_ethtool_set_eee: validate EEE link modes
> > 068a35a8d62c net: phy: do not force EEE support
> > 66d358a5fac6 net: phy: c45: add genphy_c45_an_config_eee_aneg() function
> > ecea1bf8b04c net: phy: c45: use "supported_eee" instead of supported for access validation
> > 
> > on top of
> > 
> > d2980d8d8265 (upstream/master, origin/master, origin/HEAD, local/master) Merge tag 'mm-nonmm-stable-2023-02-20-15-29' of git://git.kernel.org/pub/scm/linux/kernel/git/akpm/mm
> > 
> > No change for xtensa and arm:cubieboard; network interfaces still fail.
> 
> Huh, interesting.
> 
> can you please send me the kernel logs.
> 
There is nothing useful there, or at least I don't see anything useful.
The Ethernet interfaces (sun4i-emac for cubieboard and ethoc for xtensa)
just don't come up.

Sample logs:

cubieboard:

https://kerneltests.org/builders/qemu-arm-v7-master/builds/531/steps/qemubuildcommand/logs/stdio

xtensa:

https://kerneltests.org/builders/qemu-xtensa-master/builds/2177/steps/qemubuildcommand/logs/stdio

and, for completeness, bletchley-bmc:

https://kerneltests.org/builders/qemu-arm-aspeed-master/builds/531/steps/qemubuildcommand/logs/stdio

Those logs are without the above set of patches, but I don't see a
difference with the patches applied for cubieboard and xtensa. I
started a complete test run (for all emulations) with the patches
applied; that should take about an hour to complete. 
I could also add some debug logging, but you'd have to give me
some hints about what to add and where.

> > On the plus side, the failures with arm:bletchley-bmc (warnings, crash)
> > are longer seen.
> 
> s/longer/no longer/ ?

Yes, sorry.

Thanks,
Guenter
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
