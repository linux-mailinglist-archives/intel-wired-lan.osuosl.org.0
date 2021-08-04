Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA2E3E09A5
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Aug 2021 22:53:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4023F60A50;
	Wed,  4 Aug 2021 20:53:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YxEKyeICmLXo; Wed,  4 Aug 2021 20:53:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 334786073B;
	Wed,  4 Aug 2021 20:53:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B21151BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Aug 2021 20:53:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9FD5740697
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Aug 2021 20:53:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new); dkim=neutral
 reason="invalid (public key: invalid data)" header.d=pensando.io
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WPBfdpdpN5kA for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Aug 2021 20:53:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B6CFD404ED
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Aug 2021 20:53:08 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id
 u21-20020a17090a8915b02901782c36f543so1728138pjn.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 04 Aug 2021 13:53:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pensando.io; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=rK3k+rHc8/RnfuN3prVZdmtdlxSgIiV7Am4HL9pa+EE=;
 b=z4wh9vO35AyKSHTEq83Ox3ONe5kSLlV6p6v6I70eE7eo32A3/xb4LfMwlgBz2F1dR0
 ACaL8TA6u0a71F84LaJZja6HQNMXZiiI0QzUk84kz+4kvGKy4twIYxxoMve7qF7BBPkF
 IWyGICKoRWHWP2tgRjEIwu9rUNvbeqwESDId7zSA4bT0sn5D6wRQFbroBDDodREnt0SC
 jOWfRtWdlboGt5VfbNC/kBxzrWLvwbm3L7IBmk1ff1+VPxkd00pUWjQcreO+gMn9F1LH
 LXzI0MVH9oU0sjnIXjdXRVharjZcP4lipatd0FvGojzbUB31/3KzOJ+r+3+bwXy24BQC
 HsgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=rK3k+rHc8/RnfuN3prVZdmtdlxSgIiV7Am4HL9pa+EE=;
 b=h3PnDpIojDHdImwbclB6hjxXrPCmZeuGeNa3s/9rLa5ZWG+4s1KTa6MfxnD8tLtBGt
 zstPKBEVBh86AI3RF+wNH9q2S8ef4Oc1cRnNvjnunjCQ8AL0e+UvrGO2cdUvYHvQIs99
 FrZOUu6e1frDL+az6HRm4KJM0spIeG2qfKeje1XAKjlun68WYgbl9TmaW7Ya77SfRk6n
 EUX7ki1MZrddTjmdksu9i6vUmjGke+8Fnia6YxWdbel4cSgYJXw+NijAIDg9c18Pjn8b
 CFlcyYVrphRa24xQe5VNwwapBh9fLBwBrpsLUG2D0t0IP+Rmx2QNFl6w+6OGz8NigTG8
 i5cA==
X-Gm-Message-State: AOAM532fc66CqYd6kibykHAIlIdVQSfDwH7LI0O5HgNZqr8guxOaN6uk
 X1iH5wUx9mXlYUCFnM/EnSnzDC7lp83akL2W
X-Google-Smtp-Source: ABdhPJxmqvMa7dvxygw6pvQHFSb91+HBNZcfuAfCw2o0x4Q9n3vPAkr6yQpeRTCbfkRnqswKx2a+vQ==
X-Received: by 2002:a63:e214:: with SMTP id q20mr957879pgh.134.1628110387829; 
 Wed, 04 Aug 2021 13:53:07 -0700 (PDT)
Received: from Shannons-MacBook-Pro.local ([50.53.47.17])
 by smtp.gmail.com with ESMTPSA id p17sm7195060pjg.54.2021.08.04.13.53.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Aug 2021 13:53:07 -0700 (PDT)
To: Arnd Bergmann <arnd@kernel.org>, "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, Richard Cochran
 <richardcochran@gmail.com>, Jacob Keller <jacob.e.keller@intel.com>
References: <20210804121318.337276-1-arnd@kernel.org>
From: Shannon Nelson <snelson@pensando.io>
Message-ID: <61f766be-b384-29a5-3bf1-c8f3ac6c4a94@pensando.io>
Date: Wed, 4 Aug 2021 13:53:00 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210804121318.337276-1-arnd@kernel.org>
Content-Language: en-US
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
 Jose Abreu <joabreu@synopsys.com>, intel-wired-lan@lists.osuosl.org,
 Simon Horman <simon.horman@netronome.com>,
 Martin Habets <habetsm.xilinx@gmail.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Ido Schimmel <idosch@nvidia.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Jiri Pirko <jiri@nvidia.com>, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 drivers@pensando.io, Salil Mehta <salil.mehta@huawei.com>,
 netdev@vger.kernel.org, Randy Dunlap <rdunlap@infradead.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Tariq Toukan <tariqt@nvidia.com>,
 UNGLinuxDriver@microchip.com, Edward Cree <ecree.xilinx@gmail.com>,
 Sergei Shtylyov <sergei.shtylyov@gmail.com>, Yangbo Lu <yangbo.lu@nxp.com>,
 Vladimir Oltean <olteanv@gmail.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/4/21 4:57 AM, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
>
> The 'imply' keyword does not do what most people think it does, it only
> politely asks Kconfig to turn on another symbol, but does not prevent
> it from being disabled manually or built as a loadable module when the
> user is built-in. In the ICE driver, the latter now causes a link failure:
>
> aarch64-linux-ld: drivers/net/ethernet/intel/ice/ice_main.o: in function `ice_eth_ioctl':
> ice_main.c:(.text+0x13b0): undefined reference to `ice_ptp_get_ts_config'
> ice_main.c:(.text+0x13b0): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `ice_ptp_get_ts_config'
> aarch64-linux-ld: ice_main.c:(.text+0x13bc): undefined reference to `ice_ptp_set_ts_config'
> ice_main.c:(.text+0x13bc): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `ice_ptp_set_ts_config'
> aarch64-linux-ld: drivers/net/ethernet/intel/ice/ice_main.o: in function `ice_prepare_for_reset':
> ice_main.c:(.text+0x31fc): undefined reference to `ice_ptp_release'
> ice_main.c:(.text+0x31fc): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `ice_ptp_release'
> aarch64-linux-ld: drivers/net/ethernet/intel/ice/ice_main.o: in function `ice_rebuild':
>
> This is a recurring problem in many drivers, and we have discussed
> it several times befores, without reaching a consensus. I'm providing
> a link to the previous email thread for reference, which discusses
> some related problems.
>
> To solve the dependency issue better than the 'imply' keyword, introduce a
> separate Kconfig symbol "CONFIG_PTP_1588_CLOCK_OPTIONAL" that any driver
> can depend on if it is able to use PTP support when available, but works
> fine without it. Whenever CONFIG_PTP_1588_CLOCK=m, those drivers are
> then prevented from being built-in, the same way as with a 'depends on
> PTP_1588_CLOCK || !PTP_1588_CLOCK' dependency that does the same trick,
> but that can be rather confusing when you first see it.
>
> Since this should cover the dependencies correctly, the IS_REACHABLE()
> hack in the header is no longer needed now, and can be turned back
> into a normal IS_ENABLED() check. Any driver that gets the dependency
> wrong will now cause a link time failure rather than being unable to use
> PTP support when that is in a loadable module.
>
> However, the two recently added ptp_get_vclocks_index() and
> ptp_convert_timestamp() interfaces are only called from builtin code with
> ethtool and socket timestamps, so keep the current behavior by stubbing
> those out completely when PTP is in a loadable module. This should be
> addressed properly in a follow-up.
>
> As Richard suggested, we may want to actually turn PTP support into a
> 'bool' option later on, preventing it from being a loadable module
> altogether, which would be one way to solve the problem with the ethtool
> interface.
>
> Fixes: 06c16d89d2cb ("ice: register 1588 PTP clock device object for E810 devices")
> Link: https://lore.kernel.org/netdev/CAK8P3a06enZOf=XyZ+zcAwBczv41UuCTz+=0FMf2gBz1_cOnZQ@mail.gmail.com/
> Link: https://lore.kernel.org/netdev/CAK8P3a3=eOxE-K25754+fB_-i_0BZzf9a9RfPTX3ppSwu9WZXw@mail.gmail.com/
> Link: https://lore.kernel.org/netdev/20210726084540.3282344-1-arnd@kernel.org/
> Cc: Richard Cochran <richardcochran@gmail.com>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
> Changes in v3:
> - rewrite to introduce a new PTP_1588_CLOCK_OPTIONAL symbol
> - use it for all driver, not just Intel's
> - change IS_REACHABLE() to IS_ENABLED() in the header
>
> Changes in v2:
> - include a missing patch hunk
> - link to a previous discussion with Richard Cochran
> ---
>   drivers/net/dsa/mv88e6xxx/Kconfig             |  1 +
>   drivers/net/dsa/ocelot/Kconfig                |  2 +
>   drivers/net/ethernet/amd/Kconfig              |  2 +-
>   drivers/net/ethernet/broadcom/Kconfig         |  6 +--
>   drivers/net/ethernet/cadence/Kconfig          |  1 +
>   drivers/net/ethernet/cavium/Kconfig           |  4 +-
>   drivers/net/ethernet/freescale/Kconfig        |  2 +-
>   drivers/net/ethernet/hisilicon/Kconfig        |  2 +-
>   drivers/net/ethernet/intel/Kconfig            | 14 +++---
>   drivers/net/ethernet/mellanox/mlx4/Kconfig    |  2 +-
>   .../net/ethernet/mellanox/mlx5/core/Kconfig   |  2 +-
>   drivers/net/ethernet/mellanox/mlxsw/Kconfig   |  2 +-
>   drivers/net/ethernet/mscc/Kconfig             |  2 +
>   drivers/net/ethernet/oki-semi/pch_gbe/Kconfig |  1 +
>   drivers/net/ethernet/pensando/Kconfig         |  2 +-

[...]

>   drivers/net/ethernet/qlogic/Kconfig           |  2 +-
> diff --git a/drivers/net/ethernet/pensando/Kconfig b/drivers/net/ethernet/pensando/Kconfig
> index 202973a82712..3f7519e435b8 100644
> --- a/drivers/net/ethernet/pensando/Kconfig
> +++ b/drivers/net/ethernet/pensando/Kconfig
> @@ -20,7 +20,7 @@ if NET_VENDOR_PENSANDO
>   config IONIC
>   	tristate "Pensando Ethernet IONIC Support"
>   	depends on 64BIT && PCI
> -	depends on PTP_1588_CLOCK || !PTP_1588_CLOCK
> +	depends on PTP_1588_CLOCK_OPTIONAL
>   	select NET_DEVLINK
>   	select DIMLIB
>   	help
>

Acked-by: Shannon Nelson <snelson@pensando.io>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
