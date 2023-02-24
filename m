Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD446A2068
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Feb 2023 18:20:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3E31A61117;
	Fri, 24 Feb 2023 17:20:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E31A61117
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677259214;
	bh=W8+8gl5xkMkLiQbBTCMu5iHHm8yvrnFV5pALlxkkf5M=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1FmIWRTkcjxUW+UopZCp+dBmua8iDgtHTwX013gKeGZzVXYlMY2e7XDmPCmy6eQek
	 iyqvpySqrZcNjiTVwQuvdsVM4T76ccZXUHsfhm1Pimz19uuj2ILSoCxgA+YznXz+AF
	 +cx84BrRf5fHTGyZn8QuAVDZvacPvDl1yzlqDXZnKKQ9/rr7B3qjGhNrc14WFg5XZ9
	 sSp6ntmrKzMoHMFpAaGe5kc1S9R5AYD24/foTYENszZ+lebuIlixzZ3iu8suwG1jQi
	 +IkZSiOAiCyMDcO5wZmozgwEalishYQPOBI+obWcpBytTIIM6zEdaDCpUh/HZ2FrNy
	 LpwvLWragchcw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jvuctfxyt1Pr; Fri, 24 Feb 2023 17:20:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1CDDD610BB;
	Fri, 24 Feb 2023 17:20:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1CDDD610BB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 502511BF5F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 17:20:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 275EE41B8C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 17:20:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 275EE41B8C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I3Gtwb3-JySV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Feb 2023 17:20:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5430C41B8B
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com
 [IPv6:2607:f8b0:4864:20::d32])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5430C41B8B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 17:20:07 +0000 (UTC)
Received: by mail-io1-xd32.google.com with SMTP id bf15so6966145iob.7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 09:20:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=6nruIHAhdhx1kLlG3LLxcyHw+CS76kCYQby15s3Fp+Y=;
 b=u8HU6CwHAHvI0nXsiPxKEfkvMPpHS2J3IV6wdg6YLmgo+Pe7D+zhTP8hghKc/+bMA9
 ICQ/pFdI5T5Sk53yT8bfcT4c1X5jcKcM3818nW8rH4icVT8UszwpjUAta9SOMPJx+CCv
 3MYaA1AAurVdNxJcfzOUVVs3BjPK3OyopidiH3ThUBw2o4bES2lXuhU8uankmmPr7e0Y
 BkxPRvkP/wNyMycQpzSyU8ipe0hlHf77KCkbIgQWfH4eKCdUaPjfwpOgYUz5zSiq3ka6
 8dGAq3Qw6KH94/dPNSFlMriwkfpHRiFt8MeAYQdheWh83ZIeuJemBU/eTI3404LDuCDC
 jP2g==
X-Gm-Message-State: AO0yUKXVblAqSs+vUVh2uSQPjQ5H8acMyjzeSWFGK3z5VaIDhgA/ZTz3
 Rg0Vf3oC1wVbscZZ9rjPI40=
X-Google-Smtp-Source: AK7set8NgV86UQeUeidAd60E4SLLlduW3eN2qKkqFJEQ/Lse8jHWimLTTUAnNOU966VV+v7wxtMv2A==
X-Received: by 2002:a5d:8e01:0:b0:74c:822c:a6ac with SMTP id
 e1-20020a5d8e01000000b0074c822ca6acmr9886755iod.15.1677259206469; 
 Fri, 24 Feb 2023 09:20:06 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 n9-20020a5e8c09000000b00740710c0a65sm3552788ioj.47.2023.02.24.09.20.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Feb 2023 09:20:05 -0800 (PST)
Date: Fri, 24 Feb 2023 09:20:04 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20230224172004.GA1224760@roeck-us.net>
References: <20230211074113.2782508-1-o.rempel@pengutronix.de>
 <20230211074113.2782508-7-o.rempel@pengutronix.de>
 <20230224035553.GA1089605@roeck-us.net>
 <20230224041604.GA1353778@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230224041604.GA1353778@roeck-us.net>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
 :reply-to;
 bh=6nruIHAhdhx1kLlG3LLxcyHw+CS76kCYQby15s3Fp+Y=;
 b=IpamoNkd4cXS1VDYI2n56rf2X4LcZBHRzlXw71mavaB4o/VFmHAPvqlcZBuuuyV2T1
 05SYpOUK/2Krm7rHdTiL9hszzpkwhMaHwREFeoCxZDiu/7vSq9glnbo1J6CDZ2V75RXK
 t1J43Ybp020bq2DdNo+xb3PUyGlYbzpQPXPBFIg41mclgJSXAz0F1EuKNkh8vMfaRFDc
 nR4WtHnvEgd81QKrw8ZajY8oeBY4YtONuZz9GL767Kba+KyBik0g4KcrIAVC944Efz6s
 EWhMHWpF1Er7YuhqmHlWCQbU/TiX+5DkGKVhvE8EaW8q7eu65HkAJ3/b7v3Bo/A/E8kV
 dBhw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=IpamoNkd
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
 regressions@lists.linux.dev, "David S. Miller" <davem@davemloft.net>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
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

Copying regzbot.
  
#regzbot ^introduced 9b01c885be36
#regzbot title Network interface initialization failures on xtensa, arm:cubieboard
#regzbot ignore-activity

On Thu, Feb 23, 2023 at 08:16:06PM -0800, Guenter Roeck wrote:
> On Thu, Feb 23, 2023 at 07:55:55PM -0800, Guenter Roeck wrote:
> > On Sat, Feb 11, 2023 at 08:41:10AM +0100, Oleksij Rempel wrote:
> > > Migrate from genphy_config_eee_advert() to genphy_c45_write_eee_adv().
> > > 
> > > It should work as before except write operation to the EEE adv registers
> > > will be done only if some EEE abilities was detected.
> > > 
> > > If some driver will have a regression, related driver should provide own
> > > .get_features callback. See micrel.c:ksz9477_get_features() as example.
> > > 
> > > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > > Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> > 
> > This patch causes network interface failures with all my xtensa qemu
> > emulations. Reverting it fixes the problem. Bisect log is attached
> > for reference.
> > 
> 
> Also affected are arm:cubieboard emulations, with same symptom.
> arm:bletchley-bmc emulations crash. In both cases, reverting this patch
> fixes the problem.
> 
> Guenter
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
