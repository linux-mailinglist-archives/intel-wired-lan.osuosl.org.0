Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D7A6A5EE9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Feb 2023 19:43:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 96B0081BC6;
	Tue, 28 Feb 2023 18:43:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 96B0081BC6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677609793;
	bh=z5zhOjAyAQwBwOtSZ4mUu3ori2W8K6gN1+39xHJr8dI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2CH9enAltAS4NrU+FtdLsbASbxSkfVdRJ1rfZi++hEKh99pwuGM5d7OgSGAKaBW9D
	 fYUJtewLHpz22krTrw3QVU9R3kPMtoi1Rom/NVFtMkUeIrOrVCZ3vMvbxGbSsfiNtG
	 feHQarNbmkxPGr/cA4/d5KT8aTjWReUL7JNsHBXIs8wqqwHsmwiOq+CyZIutW08gMm
	 p4GfsDxKuaM/wSytjlNSxJuiB1mo4E23F0I+xdKDVJNGnjFxrG8mVC5J/57Qhb8kd8
	 iMmm7+uGa0WLzZNyMSjWUmF0ulsff9ZW0HOPZvLupp1pSkd+GxGB6NnSwpHvAX+cJo
	 +d4Dos90wxJWg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kq2ua6WhM3F6; Tue, 28 Feb 2023 18:43:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 91F2B8144D;
	Tue, 28 Feb 2023 18:43:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 91F2B8144D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CE1E31BF420
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 18:43:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A63528144D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 18:43:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A63528144D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h4hWu4-tCfCf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Feb 2023 18:43:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DBDC68142E
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com
 [IPv6:2607:f8b0:4864:20::129])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DBDC68142E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 18:43:06 +0000 (UTC)
Received: by mail-il1-x129.google.com with SMTP id i4so6926769ils.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 10:43:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Qjpz6w1wU5Ahvn+ZiAXXT7LUF2diV3nFILzNkAj96SY=;
 b=m4++kv7BDJZxVm/KvogYkOTmUwF+LRTnNy+TmsWNodd+h3r8rfRFKwXdflBvYlsumh
 qDOS//Y4H2jNYsbrYNjCtmSIaXa2bYypsYh3xxn/iD9gVloXnDEL7ZKtdDIw5n3nYTRS
 w8sxJHoYLfBGWxZgeqJgIbdLKFzKXZdcXdMAKZPalrQ19auLlQ2W+orTUrZPg8vw0Rec
 eLpl8blSoQRH/FmSnk1xZLWw1AlqoGJ1eoTjrAm6D+uCUlgnUNKVTNIjLgfl7csEhhPz
 N64009aNLaKWvkhzQvLa/icTQdJ18nCCYL1i9ZUzyrfYbkMcldrGgtEotstCe18iiCJo
 wKqQ==
X-Gm-Message-State: AO0yUKVWvfRLExTHUDKr7/0GCiv3agb86Z4pfXy5XoYcamIekHwHcnKZ
 lELmgLeYdMpCkfgeukZdXVw=
X-Google-Smtp-Source: AK7set+3SB0xC45QlRlJGTf+BbZNkGs7ZRfuNGqxezNLWWwtxXvPDuKgP46T2mHtv/3U+N83n2USvw==
X-Received: by 2002:a05:6e02:1a24:b0:314:fa6:323c with SMTP id
 g4-20020a056e021a2400b003140fa6323cmr4151260ile.12.1677609785974; 
 Tue, 28 Feb 2023 10:43:05 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 c14-20020a92cf4e000000b00316e39f1285sm2842875ilr.82.2023.02.28.10.43.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Feb 2023 10:43:05 -0800 (PST)
Date: Tue, 28 Feb 2023 10:43:03 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20230228184303.GA4098978@roeck-us.net>
References: <20230211074113.2782508-1-o.rempel@pengutronix.de>
 <20230211074113.2782508-7-o.rempel@pengutronix.de>
 <20230224035553.GA1089605@roeck-us.net>
 <20230224041604.GA1353778@roeck-us.net>
 <20230224172004.GA1224760@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230224172004.GA1224760@roeck-us.net>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Qjpz6w1wU5Ahvn+ZiAXXT7LUF2diV3nFILzNkAj96SY=;
 b=nkgj59ZCKiK1D88RTqrIIcfHr0fWsaoTuy5xVm3ADPBIAetdxbSxDJESBM2+Fz4qc7
 ko0ehsCR3mNWQ3/MT+ClSqo1xlZ4pS38Kr1PpU1O7oEqclR5/T+gHG2u4mL93r73orcV
 P0kTTxbCjpVYiU/nI+Evm0Y+O9z9nymjAr3biZVUQZAu99DTTC6qa5B9flHhLHmHu+91
 1NR5NSqFLv9d0xURv1FZfMxhJ68hU23v3Can1pPmfYT8eO1k22xS6jJvOqU+AjGzr5+v
 3wfd8g2dqB68aHELwUnWNN6LGld+JnTUP45MWD8dUEu2/J7ps4OZW2JwOWa1iGFJEaRj
 Spyg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=nkgj59ZC
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

Letting regzbot know about the fix:

#regzbot fixed-by: 972074ea8840

On Fri, Feb 24, 2023 at 09:20:04AM -0800, Guenter Roeck wrote:
> Copying regzbot.
>   
> #regzbot ^introduced 9b01c885be36
> #regzbot title Network interface initialization failures on xtensa, arm:cubieboard
> #regzbot ignore-activity
> 
> On Thu, Feb 23, 2023 at 08:16:06PM -0800, Guenter Roeck wrote:
> > On Thu, Feb 23, 2023 at 07:55:55PM -0800, Guenter Roeck wrote:
> > > On Sat, Feb 11, 2023 at 08:41:10AM +0100, Oleksij Rempel wrote:
> > > > Migrate from genphy_config_eee_advert() to genphy_c45_write_eee_adv().
> > > > 
> > > > It should work as before except write operation to the EEE adv registers
> > > > will be done only if some EEE abilities was detected.
> > > > 
> > > > If some driver will have a regression, related driver should provide own
> > > > .get_features callback. See micrel.c:ksz9477_get_features() as example.
> > > > 
> > > > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > > > Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> > > 
> > > This patch causes network interface failures with all my xtensa qemu
> > > emulations. Reverting it fixes the problem. Bisect log is attached
> > > for reference.
> > > 
> > 
> > Also affected are arm:cubieboard emulations, with same symptom.
> > arm:bletchley-bmc emulations crash. In both cases, reverting this patch
> > fixes the problem.
> > 
> > Guenter
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
