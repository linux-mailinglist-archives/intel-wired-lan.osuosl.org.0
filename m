Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 311DF7D8B59
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Oct 2023 00:03:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 265794ADA3;
	Thu, 26 Oct 2023 22:03:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 265794ADA3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698357784;
	bh=s4RK5l8IPtYtVXvV18sGsdD6K/17IGeTQjxnDQwZJHc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8ueM9R6/WsOb98wyygLVildOcFb2ylGPYtfUvP1jfO4QZNagPSSkPRJKsXnh4KxtI
	 Hc3bzTn4HnDWvbcU5Zy/8A/O3SCHQIvyDitx77n6z2WWUzl/iqltzXspqaKx4a76Zr
	 uOerspaFd77XCG8A51RQBDa+p+j9CiVgGMFxo7/7qj1b1aKPeYjxrw5zSG+nQp/qeJ
	 jL6lYW5hPo3i7F/EmU/Yd+jOrqrlLHXVKssAooChv1Eu/Qr/ELRE8EJMvqZnyjMTBt
	 F8D4IZL7x1zbxSeW6o5C1F6IsuvTsFk9otA+Z+2o13s4uRw8gvA7zlAjUQFPwf3kRs
	 lnQLLW1YFn0kg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TU1NJC2U-FX1; Thu, 26 Oct 2023 22:03:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DCC9A4ABAD;
	Thu, 26 Oct 2023 22:03:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DCC9A4ABAD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E56491BF314
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:02:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BD371847D2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:02:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD371847D2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b13ut0JmAXAh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Oct 2023 22:02:56 +0000 (UTC)
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com
 [IPv6:2a00:1450:4864:20::132])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 23BA2847D0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:02:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 23BA2847D0
Received: by mail-lf1-x132.google.com with SMTP id
 2adb3069b0e04-507adc3381cso2105269e87.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 15:02:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698357774; x=1698962574;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=BQfvT8y1gch6L7r+cd34RGIc+yfvci8UCEz/1CgAlZs=;
 b=pctv7G6o/4jGQrkirjSdLx/ZejV6JyxSRy+iciI0scty8F2PS6PbJ1sL0xxVjgVdEP
 MbR4Q2YFClsy8rCQAwfd6RE87VUP8r8buaGr/ZlVmHlsGKC3jn2kLezOOTPP7sWL+S8g
 O3WGqxXOnKgGsKhjqXvLz3tmQIRm6AsLof/TVN6mNztUrTMr3sR7UQtA3iGK33A9bwmO
 gh2ztI9fGO2PFtVpV7YLtvVDsY1g1VB9meqyfp1tpqeXdkyDuMS5W9n0w23lMfYHvrNU
 UV4Cqy8TrhmrgcM3huLdCVzfUiuxTCAPVESDz8IvQCiG8en+rqnCahJZ+YG8pCqWYPii
 Zx+A==
X-Gm-Message-State: AOJu0YwT+N1gRJalW7GDJymvc2X/iQsEeMe9hyZxryE1XRZ5gU7HFMhB
 dSwXcPGhabzjel+mYLfbuCA=
X-Google-Smtp-Source: AGHT+IGuubdy/jFwl4wBIyZtQBS6fd10jfaDuzrU+e7/3gTcDFAAkjVweuEKeSjFQKbqhqZh5dT0+g==
X-Received: by 2002:ac2:5f76:0:b0:507:a66f:55e2 with SMTP id
 c22-20020ac25f76000000b00507a66f55e2mr482508lfc.10.1698357773694; 
 Thu, 26 Oct 2023 15:02:53 -0700 (PDT)
Received: from skbuf ([188.26.57.160]) by smtp.gmail.com with ESMTPSA id
 q26-20020adfb19a000000b0031f82743e25sm324618wra.67.2023.10.26.15.02.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Oct 2023 15:02:52 -0700 (PDT)
Date: Fri, 27 Oct 2023 01:02:48 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Justin Stitt <justinstitt@google.com>
Message-ID: <20231026220248.blgf7kgt5fkkbg7f@skbuf>
References: <20231026-ethtool_puts_impl-v2-0-0d67cbdd0538@google.com>
 <20231026-ethtool_puts_impl-v2-1-0d67cbdd0538@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231026-ethtool_puts_impl-v2-1-0d67cbdd0538@google.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1698357774; x=1698962574; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=BQfvT8y1gch6L7r+cd34RGIc+yfvci8UCEz/1CgAlZs=;
 b=KBztY4GW/pA7ys6eIB8fOaZSL3Eb15vgay2Bh9Eynv9qwWh5gocgBsGxsG5+Ab1FN7
 QSlQbRZVIEfKpSngK7k18TBawMXXGyYlwyA79NMgJcagJWKv41pqAVQQRY5T8PpMBmqj
 IlaT0UEmzr4WFiprlq1EePTRAdbCvOwj7ruTucrWraz+waSwo7z9zXRhBpPwTzSQZetx
 4/sYkx3rKANfC3Vja48AAhecwBjI2yIocA1Zvt3cmYaGxwyah+DrHFwXIqi6EUKKmBmj
 WXpFsGfbh3xIQnDyit1iCfLH742rAnC5VwwsPTlfuz3YR7Lwc4fFuBNgmmBSXG5zdIYr
 sp6w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=KBztY4GW
Subject: Re: [Intel-wired-lan] [PATCH next v2 1/3] ethtool: Implement
 ethtool_puts()
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
Cc: Andrew Lunn <andrew@lunn.ch>, linux-hyperv@vger.kernel.org,
 Brett Creeley <brett.creeley@amd.com>, Ronak Doshi <doshir@vmware.com>,
 VMware PV-Drivers Reviewers <pv-drivers@vmware.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Alexei Starovoitov <ast@kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Matthias Brugger <matthias.bgg@gmail.com>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Mengyuan Lou <mengyuanlou@net-swift.com>,
 Arthur Kiyanovski <akiyano@amazon.com>, linux-kernel@vger.kernel.org,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Louis Peens <louis.peens@corigine.com>, Wei Liu <wei.liu@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Steen Hegelund <Steen.Hegelund@microchip.com>,
 Dexuan Cui <decui@microsoft.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, Noam Dagan <ndagan@amazon.com>,
 Heiner Kallweit <hkallweit1@gmail.com>, Shenwei Wang <shenwei.wang@nxp.com>,
 Clark Wang <xiaoning.wang@nxp.com>, NXP Linux Team <linux-imx@nxp.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Landen Chao <Landen.Chao@mediatek.com>,
 Shay Agroskin <shayagr@amazon.com>,
 Daniel Machon <daniel.machon@microchip.com>,
 Alvin =?utf-8?Q?=C5=A0ipraga?= <alsi@bang-olufsen.dk>,
 Hauke Mehrtens <hauke@hauke-m.de>, Haiyang Zhang <haiyangz@microsoft.com>,
 Sean Wang <sean.wang@mediatek.com>, Nathan Chancellor <nathan@kernel.org>,
 Joe Perches <joe@perches.com>, Jiawen Wu <jiawenwu@trustnetic.com>,
 Wei Fang <wei.fang@nxp.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Andy Whitcroft <apw@canonical.com>, drivers@pensando.io,
 intel-wired-lan@lists.osuosl.org, Lars Povlsen <lars.povlsen@microchip.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-arm-kernel@lists.infradead.org, Salil Mehta <salil.mehta@huawei.com>,
 GR-Linux-NIC-Dev@marvell.com, DENG Qingfang <dqfext@gmail.com>,
 Kees Cook <keescook@chromium.org>,
 =?utf-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
 Rasesh Mody <rmody@marvell.com>, David Arinzon <darinzon@amazon.com>,
 oss-drivers@corigine.com, Nick Desaulniers <ndesaulniers@google.com>,
 Daniel Golle <daniel@makrotopia.org>, "David S. Miller" <davem@davemloft.net>,
 Dwaipayan Ray <dwaipayanray1@gmail.com>, Saeed Bishara <saeedb@amazon.com>,
 linux-mediatek@lists.infradead.org, bpf@vger.kernel.org,
 Dimitris Michailidis <dmichail@fungible.com>,
 Sudarsana Kalluru <skalluru@marvell.com>, UNGLinuxDriver@microchip.com,
 Shannon Nelson <shannon.nelson@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Justin,

On Thu, Oct 26, 2023 at 09:56:07PM +0000, Justin Stitt wrote:
> Use strscpy() to implement ethtool_puts().
> 
> Functionally the same as ethtool_sprintf() when it's used with two
> arguments or with just "%s" format specifier.
> 
> Signed-off-by: Justin Stitt <justinstitt@google.com>
> ---
>  include/linux/ethtool.h | 34 +++++++++++++++++++++++-----------
>  net/ethtool/ioctl.c     |  7 +++++++
>  2 files changed, 30 insertions(+), 11 deletions(-)
> 
> diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
> index 226a36ed5aa1..7129dd2e227c 100644
> --- a/include/linux/ethtool.h
> +++ b/include/linux/ethtool.h
> @@ -1053,22 +1053,34 @@ static inline int ethtool_mm_frag_size_min_to_add(u32 val_min, u32 *val_add,
>   */
>  extern __printf(2, 3) void ethtool_sprintf(u8 **data, const char *fmt, ...);
>  
> +/**
> + * ethtool_puts - Write string to ethtool string data
> + * @data: Pointer to start of string to update
> + * @str: String to write
> + *
> + * Write string to data. Update data to point at start of next
> + * string.
> + *
> + * Prefer this function to ethtool_sprintf() when given only
> + * two arguments or if @fmt is just "%s".
> + */
> +extern void ethtool_puts(u8 **data, const char *str);
> +
>  /* Link mode to forced speed capabilities maps */
>  struct ethtool_forced_speed_map {
> -	u32		speed;
> +	u32 speed;
>  	__ETHTOOL_DECLARE_LINK_MODE_MASK(caps);
>  
> -	const u32	*cap_arr;
> -	u32		arr_size;
> +	const u32 *cap_arr;
> +	u32 arr_size;
>  };
>  
> -#define ETHTOOL_FORCED_SPEED_MAP(prefix, value)				\
> -{									\
> -	.speed		= SPEED_##value,				\
> -	.cap_arr	= prefix##_##value,				\
> -	.arr_size	= ARRAY_SIZE(prefix##_##value),			\
> -}
> +#define ETHTOOL_FORCED_SPEED_MAP(prefix, value)                      \
> +	{                                                            \
> +		.speed = SPEED_##value, .cap_arr = prefix##_##value, \
> +		.arr_size = ARRAY_SIZE(prefix##_##value),            \
> +	}
>  
> -void
> -ethtool_forced_speed_maps_init(struct ethtool_forced_speed_map *maps, u32 size);
> +void ethtool_forced_speed_maps_init(struct ethtool_forced_speed_map *maps,
> +				    u32 size);
>  #endif /* _LINUX_ETHTOOL_H */

Maybe this is due to an incorrect rebase conflict resolution, but you
shouldn't have touched any of the ethtool force speed maps.

Please wait for at least 24 hours to pass before posting a new version,
to allow for more comments to come in.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
