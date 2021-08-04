Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C9A3E0325
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Aug 2021 16:28:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9CED983C6B;
	Wed,  4 Aug 2021 14:28:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WUG5s0XCpeMf; Wed,  4 Aug 2021 14:28:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A1C2383BA6;
	Wed,  4 Aug 2021 14:28:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 906ED1BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Aug 2021 14:28:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 89393401D8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Aug 2021 14:28:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0aIcCC-bHLST for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Aug 2021 14:28:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C0AE640100
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Aug 2021 14:28:19 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id z3so3165073plg.8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 04 Aug 2021 07:28:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zVcpGvB1fjh2beX8VuQl4JyzQJhoYo0herXV11yWWbs=;
 b=DlPJi8NTGYgpF0kLDymlbx/qsIOw+YUJUFd0uee97CrNMiv5C8uJX2CvB0NAcvZ7uL
 /J9nw6aGFEKDFRk0IcEblVwVfqUNh2KG2l8ncEAnYeknHDLISdeXNIkUtuzYnCbzyH41
 w2mWpkWBaGQ4AsUpB8tpaNoogZgJhiiw1nhZ/8SNi+qSbN4RU4Ix3nlaU1VCkLGbSz2x
 Q1p1RAgKkY96CljmN0eDfxb6B4kK+aeleRhAHNg+KNvKiDzgAMBRYiDe+zY3Ye5NfHJ0
 Jp65G9d0dH8GhuAABGDmC4otkfYcbBJisXNvfhmxey5BQuH/IuDS0qaEpvs7wKE1EKcM
 Wr+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zVcpGvB1fjh2beX8VuQl4JyzQJhoYo0herXV11yWWbs=;
 b=Q+78o2fmku90VRJEyyXGoSRHd58o9rsoc8KLyRQ7kHi3EUieVrqX17u4CP9Dq+RHrK
 HPbezFCT+4GjTwtGUISSExLoMGCX2c21EhTioSJqx+hUuPcHsDRFGC7ORTWOhnj1bWKR
 jNVeGoYXe4ExR1qofpv1xz/evNGTwWnebmobDpmSAgyHFUEureje8WXw9CQo5D+hLwIO
 Uw2Cf3uJtV3bnCsZaDguQpy+WaDqmh/rSWEEoUZ0BajjS1XqbNxoaN+6Zq3RJ1IWZ8X8
 10Yk8+5Xbgj0lbaXHOroV9Nn1qsU7AaYDQ/n5T14WJ+Hl1Ec72/K3NIM33vMeVtqiPMJ
 HVSw==
X-Gm-Message-State: AOAM5333WxkDC3ueCp8+QHZwcg6LFskl+56QaMvPoLH/gR83X3MGJBwD
 AGfmp8VfLaGSDFFe/f2hP/A=
X-Google-Smtp-Source: ABdhPJwpgB+G6j9ZEhkZr+2iv541VWgYpL+xsaxdbxqVoJgpZCcbeqTou5qmsHLrcKhA6pnVjWPPaA==
X-Received: by 2002:a17:902:c391:b029:12c:f2:f5f with SMTP id
 g17-20020a170902c391b029012c00f20f5fmr10522935plg.48.1628087299216; 
 Wed, 04 Aug 2021 07:28:19 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2601:645:c000:2163:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id s31sm3816465pgm.27.2021.08.04.07.28.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Aug 2021 07:28:18 -0700 (PDT)
Date: Wed, 4 Aug 2021 07:28:14 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Arnd Bergmann <arnd@kernel.org>
Message-ID: <20210804142814.GB1645@hoboy.vegasvil.org>
References: <20210804121318.337276-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210804121318.337276-1-arnd@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] ethernet: fix
 PTP_1588_CLOCK dependencies
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Leon Romanovsky <leon@kernel.org>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Jose Abreu <joabreu@synopsys.com>, intel-wired-lan@lists.osuosl.org,
 Simon Horman <simon.horman@netronome.com>, Jakub Kicinski <kuba@kernel.org>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Ido Schimmel <idosch@nvidia.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Jiri Pirko <jiri@nvidia.com>, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 drivers@pensando.io, Salil Mehta <salil.mehta@huawei.com>,
 Shannon Nelson <snelson@pensando.io>, netdev@vger.kernel.org,
 Randy Dunlap <rdunlap@infradead.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Tariq Toukan <tariqt@nvidia.com>,
 UNGLinuxDriver@microchip.com, Edward Cree <ecree.xilinx@gmail.com>,
 Sergei Shtylyov <sergei.shtylyov@gmail.com>, Yangbo Lu <yangbo.lu@nxp.com>,
 Martin Habets <habetsm.xilinx@gmail.com>, Vladimir Oltean <olteanv@gmail.com>,
 Saeed Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Aug 04, 2021 at 01:57:04PM +0200, Arnd Bergmann wrote:

> Since this should cover the dependencies correctly, the IS_REACHABLE()
> hack in the header is no longer needed now, and can be turned back
> into a normal IS_ENABLED() check. Any driver that gets the dependency
> wrong will now cause a link time failure rather than being unable to use
> PTP support when that is in a loadable module.

yes!

> Changes in v3:
> - rewrite to introduce a new PTP_1588_CLOCK_OPTIONAL symbol
> - use it for all driver, not just Intel's

Thanks for following up.

> diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
> index 82744a7501c7..9c1d0b715748 100644
> --- a/drivers/net/ethernet/intel/Kconfig
> +++ b/drivers/net/ethernet/intel/Kconfig
> @@ -58,8 +58,8 @@ config E1000
>  config E1000E
>  	tristate "Intel(R) PRO/1000 PCI-Express Gigabit Ethernet support"
>  	depends on PCI && (!SPARC32 || BROKEN)
> +	depends on PTP_1588_CLOCK_OPTIONAL
>  	select CRC32
> -	imply PTP_1588_CLOCK
>  	help
>  	  This driver supports the PCI-Express Intel(R) PRO/1000 gigabit
>  	  ethernet family of adapters. For PCI or PCI-X e1000 adapters,
> @@ -87,8 +87,8 @@ config E1000E_HWTS
>  config IGB
>  	tristate "Intel(R) 82575/82576 PCI-Express Gigabit Ethernet support"
>  	depends on PCI
> -	imply PTP_1588_CLOCK
> -	select I2C
> +	depends on PTP_1588_CLOCK_OPTIONAL
> +	depends on I2C

This little i2c bit sneaks in, but I guess you considered any possible
trouble with it?

Acked-by: Richard Cochran <richardcochran@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
