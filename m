Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D0EB368A758
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Feb 2023 01:54:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2619242A6F;
	Sat,  4 Feb 2023 00:54:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2619242A6F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675472071;
	bh=NHkYU/2xOmocbXq1jtpdC7K/kfHTTP8k1b4DygRPOo8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qr5nFRG9erAv3M8kYjjAUvrT9wzX5DRLEWANINFqI1d9xa28NCNVZfyJIwKNAAkxh
	 7akfB5DoxC520eLjWU8XzuSjh00QyLqU+IKy+JlN8epZFFTfGdXPoH/o/jMpQPdt7X
	 wheDMG1kinSLtuJTuRmugaLnQJUi6PzhLgaNrZK5D5k4tbltCOxXevwB2bkgrComXb
	 ZOCs0envDXgtxLXJ/BagJ09RLf/D6p+7UcAqS0htpWlf5ojqqnuotK3wv0jjrtIGTk
	 SczwndaauQekYGffYzcih6dZPHjePt7Dulje5vNi4wzjnB8ZMj6oXwPqYVDOVM92oQ
	 nWWVEe9nzGtVA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bFgK2nsMUyd6; Sat,  4 Feb 2023 00:54:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 929F541E89;
	Sat,  4 Feb 2023 00:54:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 929F541E89
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AC4EA1BF977
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Feb 2023 00:54:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 85A1B4045C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Feb 2023 00:54:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 85A1B4045C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id emvW4ETvWfxD for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Feb 2023 00:54:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 794024018A
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 794024018A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Feb 2023 00:54:23 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id gr7so19908848ejb.5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 03 Feb 2023 16:54:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4oL40kNAiMaL+xOpKVWO5indpFyXlVlXyaN2nNR+BeQ=;
 b=JO52FtfKk1iuAYV/jG+1obik7nltzwA9O1dBM7DRu5VVtqBMw79KSpsGVHP5zHo07Z
 aBqSZrNkIeXmb7Lx8DE4TiE/zsC4U5DLy8F8fBYm1IVlheDnJRaHwk+Ozccu3ZavkKeU
 EPR3NHsHe6qZO3fM4E16nwBQKQsFPpDnOt7FeZsqMwsHILNd0VlhIfornTyHPC/+aliA
 kQBTakHGovntwn3m7J2AG3VvnB9Q+3jQRM8Pbt/H2q3zRB9T/GRVQ7zX3hcVWXq0zpB7
 GR3Gd3LnV5ChX6pB3AEtkGzH14I0TcnhLQsIVp/9l7ioARXim54y5EdQSG3Lys9W7y6V
 0q3w==
X-Gm-Message-State: AO0yUKUWRVWrFS2JzVt5ZniJLyd8FkbXBan3ObylV4wUKQ6Rzt5PBiRP
 Ka64w0PHb3dY+lmxLxv7Hkg=
X-Google-Smtp-Source: AK7set87tJPiUw887KGFIxbysb6vG/TbuGMX8TrEJXjqvVOm7leNM0Bf1nu/3TKM2QqGkM8OW9eVcA==
X-Received: by 2002:a17:906:d7b6:b0:885:d02f:d4ad with SMTP id
 pk22-20020a170906d7b600b00885d02fd4admr12833019ejb.43.1675472061294; 
 Fri, 03 Feb 2023 16:54:21 -0800 (PST)
Received: from skbuf ([188.26.57.116]) by smtp.gmail.com with ESMTPSA id
 u4-20020aa7db84000000b0049f88f00f70sm1853469edt.7.2023.02.03.16.54.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Feb 2023 16:54:20 -0800 (PST)
Date: Sat, 4 Feb 2023 02:54:18 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20230204005418.7ryb4ihuzxlbs2nl@skbuf>
References: <20230201145845.2312060-1-o.rempel@pengutronix.de>
 <20230201145845.2312060-3-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230201145845.2312060-3-o.rempel@pengutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=4oL40kNAiMaL+xOpKVWO5indpFyXlVlXyaN2nNR+BeQ=;
 b=HVwhYnPQ3zQdujs8cxAkgO+osyQDg5aDvi3bRilg+Rqg6pjUMOuBJvVchW1EgC/ZAP
 j1h0YcEsfJDvA4Rclf2rbWphL84jgW4dQb/8RbAhZhbxhpWJfYWoD7u3Hh+nADWS2mGB
 Xib6RW3W09xBN0EPNv7iOy+v2a3xoXX5Yu0wA75u00ZTPxB7FN3mMg93OoqnoT4ThO6i
 rvzIP0jpO0FfgY+nYhDeLKBtxmMSDveARPHY1QutaXu0Lyqxc12VxBLK7v77U+oVbcJQ
 GaqIyC3Mj9mZ/zOHjnnWzvXRbgn+M/KKGUPdKjUMdi0DhpqwjOxlwJuJJSVgGalxRi1X
 SPww==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=HVwhYnPQ
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 02/23] net: phy: add
 genphy_c45_read_eee_abilities() function
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

On Wed, Feb 01, 2023 at 03:58:24PM +0100, Oleksij Rempel wrote:
> Add generic function for EEE abilities defined by IEEE 802.3
> specification. For now following registers are supported:
> - IEEE 802.3-2018 45.2.3.10 EEE control and capability 1 (Register 3.20)
> - IEEE 802.3cg-2019 45.2.1.186b 10BASE-T1L PMA status register
>   (Register 1.2295)
> 
> Since I was not able to find any flag signaling support of this

these registers

> registers, we should detect link mode abilities first and then based on
> this abilities doing EEE link modes detection.

these abilities

> 
> Results of EEE ability detection will be stored in to new variable

stored into

> phydev->supported_eee.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/net/phy/phy-c45.c    | 49 ++++++++++++++++++++++++++++++++++++
>  drivers/net/phy/phy_device.c | 16 ++++++++++++
>  include/linux/mdio.h         | 17 +++++++++++++
>  include/linux/phy.h          |  5 ++++
>  4 files changed, 87 insertions(+)
> 
> diff --git a/drivers/net/phy/phy-c45.c b/drivers/net/phy/phy-c45.c
> index 9f9565a4819d..ae87f5856650 100644
> --- a/drivers/net/phy/phy-c45.c
> +++ b/drivers/net/phy/phy-c45.c
> @@ -661,6 +661,55 @@ int genphy_c45_read_mdix(struct phy_device *phydev)
>  }
>  EXPORT_SYMBOL_GPL(genphy_c45_read_mdix);
>  
> +/**
> + * genphy_c45_read_eee_abilities - read supported EEE link modes
> + * @phydev: target phy_device struct
> + *
> + * Read supported EEE link modes.
> + */
> +int genphy_c45_read_eee_abilities(struct phy_device *phydev)
> +{
> +	__ETHTOOL_DECLARE_LINK_MODE_MASK(common);
> +	int val;
> +
> +	linkmode_and(common, phydev->supported, PHY_EEE_100_10000_FEATURES);
> +	/* There is not indicator if optional register

no indicator whether

> +	 * "EEE control and capability 1" (3.20) is supported. Read it only
> +	 * on devices with appropriate linkmodes.
> +	 */
> +	if (!linkmode_empty(common)) {

if (linkmode_intersects(phydev->supported, PHY_EEE_100_10000_FEATURES))?

> +		/* IEEE 802.3-2018 45.2.3.10 EEE control and capability 1
> +		 * (Register 3.20)
> +		 */
> +		val = phy_read_mmd(phydev, MDIO_MMD_PCS, MDIO_PCS_EEE_ABLE);
> +		if (val < 0)
> +			return val;

Might the PHY also return 0xffff for an unsupported register? That would
be interpreted as "EEE is supported for all link modes", no?

> +
> +		mii_eee_100_10000_adv_mod_linkmode_t(phydev->supported_eee, val);
> +
> +		/* Some buggy devices claim not supported EEE link modes */

unsupported

> +		linkmode_and(phydev->supported_eee, phydev->supported_eee,
> +			     phydev->supported);
> +	}
> +
> +	if (linkmode_test_bit(ETHTOOL_LINK_MODE_10baseT1L_Full_BIT,
> +			      phydev->supported)) {
> +		/* IEEE 802.3cg-2019 45.2.1.186b 10BASE-T1L PMA status register
> +		 * (Register 1.2295)
> +		 */
> +		val = phy_read_mmd(phydev, MDIO_MMD_PMAPMD, MDIO_PMA_10T1L_STAT);
> +		if (val < 0)
> +			return val;
> +
> +		linkmode_mod_bit(ETHTOOL_LINK_MODE_10baseT1L_Full_BIT,
> +				 phydev->supported_eee,
> +				 val & MDIO_PMA_10T1L_STAT_EEE);
> +	}
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(genphy_c45_read_eee_abilities);
> +
>  /**
>   * genphy_c45_pma_read_abilities - read supported link modes from PMA
>   * @phydev: target phy_device struct
> diff --git a/drivers/net/phy/phy_device.c b/drivers/net/phy/phy_device.c
> index 9ba8f973f26f..3651f1fd8fc9 100644
> --- a/drivers/net/phy/phy_device.c
> +++ b/drivers/net/phy/phy_device.c
> @@ -132,6 +132,18 @@ static const int phy_10gbit_full_features_array[] = {
>  	ETHTOOL_LINK_MODE_10000baseT_Full_BIT,
>  };
>  
> +static const int phy_eee_100_10000_features_array[6] = {

Don't need array length unless the array is sparse, which isn't the case here.

> +	ETHTOOL_LINK_MODE_100baseT_Full_BIT,
> +	ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
> +	ETHTOOL_LINK_MODE_10000baseT_Full_BIT,
> +	ETHTOOL_LINK_MODE_1000baseKX_Full_BIT,
> +	ETHTOOL_LINK_MODE_10000baseKX4_Full_BIT,
> +	ETHTOOL_LINK_MODE_10000baseKR_Full_BIT,

Why stop at 10GBase-KR? Register 3.20 defines EEE abilities up to 100G
(for speeds >10G, there seem to be 2 modes, "deep sleep" or "fast wake",
with "deep sleep" being essentially equivalent to the only mode
available for <=10G modes).

> +};
> +
> +__ETHTOOL_DECLARE_LINK_MODE_MASK(phy_eee_100_10000_features) __ro_after_init;
> +EXPORT_SYMBOL_GPL(phy_eee_100_10000_features);
> +
>  static void features_init(void)
>  {
>  	/* 10/100 half/full*/
> @@ -213,6 +225,10 @@ static void features_init(void)
>  	linkmode_set_bit_array(phy_10gbit_fec_features_array,
>  			       ARRAY_SIZE(phy_10gbit_fec_features_array),
>  			       phy_10gbit_fec_features);
> +	linkmode_set_bit_array(phy_eee_100_10000_features_array,
> +			       ARRAY_SIZE(phy_eee_100_10000_features_array),
> +			       phy_eee_100_10000_features);
> +
>  }
>  
>  void phy_device_free(struct phy_device *phydev)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
