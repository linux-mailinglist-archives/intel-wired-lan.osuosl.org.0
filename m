Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB1468A775
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Feb 2023 02:11:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6EECF60B6E;
	Sat,  4 Feb 2023 01:11:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6EECF60B6E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675473105;
	bh=M4ThoEuuFQzsbErKv0mjtM+buSosOgFG5a8DiaNyyp4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=e7nIRxZc20f+lpd9Vwh4RYsc92j/gANQDys5P2B/dmDyMsu1wS05qSm/QioArispK
	 vcuAiV1e8KSnjFIA8mlbG6w+5d0JzdZ+bGEpZHq9U+//JgOb7DB101/yJOKwnpj4x6
	 lmDrLjc3V30SJdH6yFs/7ZY6HfmFVsAiVGc6Had1LTLGQsvYqXWWsTZNN3bWLWJoVB
	 PTdZhw+8S5EWJKz4vXGeCrCheFxrlIb/q1/ShoPQ3xhId4IWwSbk5T5E768YiTBMtc
	 umN92Bv/OwIEiMlW3DQ5g+7j5YsOpsZg4LkTwS9Jy4tFta0KDDXQLMDaHcEUNGOgV8
	 XqwpuJdYOvi0Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I5U-hRaTHD20; Sat,  4 Feb 2023 01:11:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5BEC360B3F;
	Sat,  4 Feb 2023 01:11:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5BEC360B3F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 47EBC1BF2EF
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Feb 2023 01:11:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2049A40199
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Feb 2023 01:11:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2049A40199
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BrGjejkpXHFf for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Feb 2023 01:11:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 30A324018A
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 30A324018A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Feb 2023 01:11:37 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id k4so20029191eje.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 03 Feb 2023 17:11:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qqfZVRPG0odmwop2SRWZxGUPdrvoaTxo4/skd7wde9A=;
 b=N59S3a3Hy5bGALPglKUpY5Bz3Tr5JNYbsV7DqjCIWfM7dwW9xanDj2crqSSe9gtggn
 Cq2scXDaMvoTFJTs9fwcD3caBKnS+bzO98RmKMK1ys6WzdeMFoC+RjjdFXQzwisiZ9VW
 m2UID++DITIW4slRGQFb5okAwuruyUPG86hKilAaepRQjscKsPagkK5Ya4ja7u/6BfN7
 dlzQ7eCiI29WyZ+29qeBjvWsr8CWtC0+td9ZP32zEGhMhGFb4F6YmVG2jTlTN7DlBh/a
 Byg1mC61UlvLm1vjtB3pzZ97KXkdoUiZnFNlYf53+BCW3zN9NJzTSfqQRdv936gLvUuV
 Qm+A==
X-Gm-Message-State: AO0yUKW6XknSheLFTmzZZVEeUTBH6RTHBXC3AYfO5qQumJHbV5f7UhwZ
 tdQAybqZ+7K2X3XV6aNibBE=
X-Google-Smtp-Source: AK7set8DV5gzvCghxDgyOTP/UCdf5kMGdnwpjZM5SIdQlNyoDe2oUw3IUtWY3CYCdKwcPFNeBYxusg==
X-Received: by 2002:a17:906:49c9:b0:884:c6d8:e291 with SMTP id
 w9-20020a17090649c900b00884c6d8e291mr12572217ejv.57.1675473096088; 
 Fri, 03 Feb 2023 17:11:36 -0800 (PST)
Received: from skbuf ([188.26.57.116]) by smtp.gmail.com with ESMTPSA id
 kg11-20020a17090776eb00b0088519b92074sm2093986ejc.128.2023.02.03.17.11.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Feb 2023 17:11:35 -0800 (PST)
Date: Sat, 4 Feb 2023 03:11:33 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20230204011133.5mgam2ik7znsrqxu@skbuf>
References: <20230201145845.2312060-1-o.rempel@pengutronix.de>
 <20230201145845.2312060-1-o.rempel@pengutronix.de>
 <20230201145845.2312060-6-o.rempel@pengutronix.de>
 <20230201145845.2312060-6-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230201145845.2312060-6-o.rempel@pengutronix.de>
 <20230201145845.2312060-6-o.rempel@pengutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=qqfZVRPG0odmwop2SRWZxGUPdrvoaTxo4/skd7wde9A=;
 b=pPqK+3Dw8pmeSk05ycX+JFGuXEM/oqEn4OmA7PYVwmfYu48LyQIlJNOlCB7TCsDilQ
 OqrBOuGEdJnxNwukwMmjHZMeF7t/+cKQwgeg/Bxl4d7ya3YLuMrfaBczlMu2XCF5f7uZ
 n0AYpOWzLL4m7/A4ChKlGAOkfYV9ja2I6/wx8s74I9zlMrYez1nSBXwwZuUXOZECMYEE
 v77FxLbrj6yT5o6fYHKDaEigVgkQ4dr+1M5f5FQThsrSYCB+WpLcQmr+fgousLl1fdqR
 ci67Xxyj46/+Qep+TY6TBgVPz3uQW7MxbR10M5T3eN/GNH8Sp02CUSiuG3fj6RokwKT+
 g6VQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=pPqK+3Dw
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 05/23] net: phy: add
 genphy_c45_ethtool_get/set_eee() support
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

On Wed, Feb 01, 2023 at 03:58:27PM +0100, Oleksij Rempel wrote:
> Add replacement for phy_ethtool_get/set_eee() functions.
> 
> - it is able to support only limited amount of link modes. We have more
>   EEE link modes...
> 
> By refactoring this code I address most of this point except of the last
> one. Adding additional EEE link modes will need more work.

> +/**
> + * genphy_c45_ethtool_get_eee - get EEE supported and status
> + * @phydev: target phy_device struct
> + * @data: ethtool_eee data
> + *
> + * Description: it reports the Supported/Advertisement/LP Advertisement
> + * capabilities.
> + */
> +int genphy_c45_ethtool_get_eee(struct phy_device *phydev,
> +			       struct ethtool_eee *data)
> +{
> +	__ETHTOOL_DECLARE_LINK_MODE_MASK(adv) = {};
> +	__ETHTOOL_DECLARE_LINK_MODE_MASK(lp) = {};
> +	bool overflow = false, is_enabled;
> +	int ret;
> +
> +	ret = genphy_c45_eee_is_active(phydev, adv, lp, &is_enabled);
> +	if (ret < 0)
> +		return ret;
> +
> +	data->eee_enabled = is_enabled;
> +	data->eee_active = ret;
> +
> +	if (!ethtool_convert_link_mode_to_legacy_u32(&data->supported,
> +						     phydev->supported_eee))
> +		overflow = true;
> +	if (!ethtool_convert_link_mode_to_legacy_u32(&data->advertised, adv))
> +		overflow = true;
> +	if (!ethtool_convert_link_mode_to_legacy_u32(&data->lp_advertised, lp))
> +		overflow = true;

ah, ok, so since struct ethtool_eee stores the link modes in the old u32
format, link modes equal to ETHTOOL_LINK_MODE_25000baseKR_Full_BIT or
higher would truncate. Makes sense.

> +
> +	if (overflow)
> +		phydev_warn(phydev, "Not all supported or advertised EEE link modes was passed to the user space\n");

were passed

> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(genphy_c45_ethtool_get_eee);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
