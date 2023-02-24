Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5829A6A15AA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Feb 2023 04:56:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CE40040116;
	Fri, 24 Feb 2023 03:56:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CE40040116
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677210963;
	bh=Mm4Uy7hY3dJrx1Eu6LltrznRJjuRr1i+GhcbGGCkvV0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kXpnJdS1fJ576PETge43DdfzEZWMStD/OWGwboJu3RCv3tpAWKyQ8+56f510j90t+
	 QGR5UP9Ug3kaz2ZWn7jGiJ5D6UDLZ9H4ghTqi2D8xF24QD+pmqJsPQn0q1cF8SYUYn
	 OcBEwH1JarcA8ZJvN6yfln5JzHSo7muBTLCLt/voZ9VCY9TQkKFhhWXwJJzaV+XEiI
	 9mA5ZYfpDu61VqHwxK+NOXr+ADkCFZZSPM82CcZiL57Kj0lhAelvklhFusezRcEEmd
	 NdGbqU2TEW1+ByIH8BWbMPLN6wZpgAFCKXVMBVfEzprhl1rKx8pvCZxIkb8vuU6uhe
	 Eq5alTXP9o5rg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UXRZk9_bCBPo; Fri, 24 Feb 2023 03:56:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B175140112;
	Fri, 24 Feb 2023 03:56:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B175140112
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BBA8E1BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 03:55:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9D74D60ACC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 03:55:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D74D60ACC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xfJ7lQl6WrDS for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Feb 2023 03:55:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B6D6B607C9
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com
 [IPv6:2607:f8b0:4864:20::131])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B6D6B607C9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 03:55:56 +0000 (UTC)
Received: by mail-il1-x131.google.com with SMTP id e10so6694257ilu.4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Feb 2023 19:55:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=VbTIKtcCZdin9kdNkGWxLRdhhzQ58YxCqZNgWHIeK+M=;
 b=biiLocYnbQK/+CoG+FdytEwCFmNe5iEoM8HoV2yF43GgVnn3eWtQzhjjhmZlUefvS2
 EubWHUzeYkSiT7dhxQi1t8aDcvUIh7WppO3FH1GkceV0nPIMLWW1USzjpLR3U7EJdM4r
 YV1gBRL0DbIhZvx5US9C2RfzOVPbSK2GXdrGVcEr5HKKrcIRmL0GPk8qQZ9/na2AEbob
 Sy86dqMCo51yZLl29Mrp20Kn/BMdeXPA+992lNoi8v44xLBh+e7piYcMxSbBsX9ioTml
 0067T6au+Kvq/RqwDWk1bzIbIo3FAPDirpuwNC00Y/ISpL85PsAXPyyIJZqM04kbXIDi
 xUvg==
X-Gm-Message-State: AO0yUKUgAegyyQX8TWk1kwPews/R9WykmvvH/f5GScplZkmM0yVXAMzW
 zZSv0UfjBydMFl8ZDdKr9rY=
X-Google-Smtp-Source: AK7set/N5OHlH+ID7f/i44cM7KsoiPH+D6zoLglAmPxwwIIfQbf5S+gfQa3/BMuryaakq5+soNTdMw==
X-Received: by 2002:a05:6e02:1b81:b0:317:f50:383b with SMTP id
 h1-20020a056e021b8100b003170f50383bmr874477ili.27.1677210955711; 
 Thu, 23 Feb 2023 19:55:55 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 k13-20020a02cb4d000000b003a60e5a2638sm4001581jap.94.2023.02.23.19.55.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Feb 2023 19:55:54 -0800 (PST)
Date: Thu, 23 Feb 2023 19:55:53 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20230224035553.GA1089605@roeck-us.net>
References: <20230211074113.2782508-1-o.rempel@pengutronix.de>
 <20230211074113.2782508-7-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230211074113.2782508-7-o.rempel@pengutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
 :reply-to;
 bh=VbTIKtcCZdin9kdNkGWxLRdhhzQ58YxCqZNgWHIeK+M=;
 b=j9WNzsxPEAJgAqXDoMy075+EgPAgJp89uQP9MxMWsPO3//E+mz6kf9+dYCoqMXlTQZ
 YqKJolI4RECVlNEPNTZiUfiBt57c5zp9XVGxaZTet6fMiQbkmvBHE4gz7zQQUa1XdsIZ
 UsfYNANSOC4tNmW9TwDTLwLKypTwNoIwuNGFW/LpZctBOMZLI8jl/HbKVenXYYV7/xCO
 T7xYL2jV2UIYYC9uy5AmBMJZEdKChIVVc6ym5TwFnI2fhyzgtTbNHakevBYvdKD5Ez2B
 +l5ntghH/yUuGsxjmnpML3zigGrSRQMUUFUbEZOOCu0wVI1FWYTG3c+v9EosDBUv68D6
 BPaA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=j9WNzsxP
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
 "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Wei Fang <wei.fang@nxp.com>, kernel@pengutronix.de,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Vladimir Oltean <olteanv@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Feb 11, 2023 at 08:41:10AM +0100, Oleksij Rempel wrote:
> Migrate from genphy_config_eee_advert() to genphy_c45_write_eee_adv().
> 
> It should work as before except write operation to the EEE adv registers
> will be done only if some EEE abilities was detected.
> 
> If some driver will have a regression, related driver should provide own
> .get_features callback. See micrel.c:ksz9477_get_features() as example.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>

This patch causes network interface failures with all my xtensa qemu
emulations. Reverting it fixes the problem. Bisect log is attached
for reference.

Guenter

---
# bad: [e4bc15889506723d7b93c053ad4a75cd58248d74] Merge tag 'leds-next-6.3' of git://git.kernel.org/pub/scm/linux/kernel/git/lee/leds
# good: [c9c3395d5e3dcc6daee66c6908354d47bf98cb0c] Linux 6.2
git bisect start 'HEAD' 'c9c3395d5e3d'
# bad: [5b7c4cabbb65f5c469464da6c5f614cbd7f730f2] Merge tag 'net-next-6.3' of git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next
git bisect bad 5b7c4cabbb65f5c469464da6c5f614cbd7f730f2
# good: [877934769e5b91798d304d4641647900ee614ce8] Merge tag 'x86_cpu_for_v6.3_rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip
git bisect good 877934769e5b91798d304d4641647900ee614ce8
# good: [c5ebba75c7625e5cb62cb5423883cc3764779420] net: ipa: use bitmasks for GSI IRQ values
git bisect good c5ebba75c7625e5cb62cb5423883cc3764779420
# bad: [871489dd01b67483248edc8873c389a66e469f30] Merge tag 'ieee802154-for-net-next-2023-02-20' of git://git.kernel.org/pub/scm/linux/kernel/git/sschmidt/wpan-next
git bisect bad 871489dd01b67483248edc8873c389a66e469f30
# good: [986e43b19ae9176093da35e0a844e65c8bf9ede7] wifi: mac80211: fix receiving A-MSDU frames on mesh interfaces
git bisect good 986e43b19ae9176093da35e0a844e65c8bf9ede7
# bad: [ca0df43d211039dded5a8f8553356414c9a74731] Merge tag 'wireless-next-2023-03-16' of git://git.kernel.org/pub/scm/linux/kernel/git/wireless/wireless-next
git bisect bad ca0df43d211039dded5a8f8553356414c9a74731
# bad: [388a9c907a51489bf566165c72e4e8aa4d62ab49] Merge branch 'devlink-cleanups-and-move-devlink-health-functionality-to-separate-file'
git bisect bad 388a9c907a51489bf566165c72e4e8aa4d62ab49
# bad: [1a940b00013a468c0c9dd79dbb485c3ad273939e] net: stmmac: dwc-qos: Make struct dwc_eth_dwmac_data::remove return void
git bisect bad 1a940b00013a468c0c9dd79dbb485c3ad273939e
# good: [8024edf3590c83f467374857d7c3082d4b3bf079] Merge branch 'net-ipa-GSI-regs'
git bisect good 8024edf3590c83f467374857d7c3082d4b3bf079
# bad: [9b01c885be364526d8c05794f8358b3e563b7ff8] net: phy: c22: migrate to genphy_c45_write_eee_adv()
git bisect bad 9b01c885be364526d8c05794f8358b3e563b7ff8
# good: [79cdf17e5131ccdee0792f6f25d3db0e34861998] Merge branch 'ionic-on-chip-desc'
git bisect good 79cdf17e5131ccdee0792f6f25d3db0e34861998
# good: [48fb19940f2ba6b50dfea70f671be9340fb63d60] net: phy: micrel: add ksz9477_get_features()
git bisect good 48fb19940f2ba6b50dfea70f671be9340fb63d60
# good: [022c3f87f88e2d68e90be7687d981c9cb893a3b1] net: phy: add genphy_c45_ethtool_get/set_eee() support
git bisect good 022c3f87f88e2d68e90be7687d981c9cb893a3b1
# first bad commit: [9b01c885be364526d8c05794f8358b3e563b7ff8] net: phy: c22: migrate to genphy_c45_write_eee_adv()
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
