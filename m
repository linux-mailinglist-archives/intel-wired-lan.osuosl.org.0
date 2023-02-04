Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B6E68A72A
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Feb 2023 01:15:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3664F42A8F;
	Sat,  4 Feb 2023 00:15:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3664F42A8F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675469709;
	bh=GYSTjBzuyQPpnyUEOmFkA0GVowTv+36hU26HRFNuLjc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=g40h+e8EzoCHpGeCYFdIkFtnm6gL6VdBwzOmnGPMXEZzep0Hjy4FNS2sfSLXNV6dE
	 AY4cqfs6pZfnvKQ2Pwt1b2d8R5TufN/rOFkVYw6Rk1L/heLVzeomAs/xDrEUb6Z9js
	 0VTvrArjlJd2S9KQjPx9RyaFdaKJAWtoIjrcHWm6Xgfu992R43KtKf5zIjcPcK/HJ5
	 MizECzZkFsZBAvkXCCFFhDf49cKKl6o833YwAsyGWEcg0H+PSiIflk8R3cr5LbHPDS
	 zkaoAnDBKBm4KlBiZiz+8BqslCYvurPrAt53ef3hlm7SyRySAH0UWRRdbs5gyA9VgB
	 fM0eKG1h9TtBg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HF3UCtuAugT4; Sat,  4 Feb 2023 00:15:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6382042A8A;
	Sat,  4 Feb 2023 00:15:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6382042A8A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EF5171BF976
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Feb 2023 00:15:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C6E4382057
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Feb 2023 00:15:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6E4382057
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rR-lLn8efCWU for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Feb 2023 00:15:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1796382043
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1796382043
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Feb 2023 00:15:00 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id dr8so19686166ejc.12
 for <intel-wired-lan@lists.osuosl.org>; Fri, 03 Feb 2023 16:15:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=UtwR7eldYPsFLdAoiY+9o5YJsCvXaWXt8Y32OHoLhV0=;
 b=OmRiih0Uu+r48iD+Y8XsLa+GA4XSP+lJ+bnCpXi3sFXcAKjB1rnNov/8v7PaLfOzBF
 0Q4mh4+TQ/kKIy8iJlP3z8uW4uF3+pIogemGeVhQtvLEHZacrHRvDFdEJ2YL8MTt1qaH
 S6nNEeubZzMDdX/y+TZOuRmnlYlUldZMYbK8sm628bO7jOnyFPmEmXlAMWX0cMYa6grB
 LAFfy6tQLemAJWjZSWcfgAsq4S7lClqecrk/uGWmJ3U0xSFzZ3DMClqboHwe6m7XXJGM
 Y8Ys6gjFy05OSfMq1Fv7ezCTFdaBrgfImeDWeVv2Sn1jL0TnFD51w/kIXE3QzyZnnamz
 r8dA==
X-Gm-Message-State: AO0yUKXckvXLpFItW3cKocyAzddv5/lxuK2/fZFOM/dw7TawqADIKqsG
 BgQCQxuMbozORbXZiT5+cX8=
X-Google-Smtp-Source: AK7set+ave84QQ4e5pMuqvuKQDmKBfO4aLBUkf0XxlrrFvwe3oN3D7jUghyrChCmOQuIO1xUEpUbTQ==
X-Received: by 2002:a17:906:bc88:b0:884:ab29:bd0b with SMTP id
 lv8-20020a170906bc8800b00884ab29bd0bmr13384998ejb.69.1675469699349; 
 Fri, 03 Feb 2023 16:14:59 -0800 (PST)
Received: from skbuf ([188.26.57.116]) by smtp.gmail.com with ESMTPSA id
 n12-20020a1709065e0c00b0086a4bb74cf7sm2041915eju.212.2023.02.03.16.14.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Feb 2023 16:14:59 -0800 (PST)
Date: Sat, 4 Feb 2023 02:14:56 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20230204001456.qf7xfmhyun7jqvbt@skbuf>
References: <20230201145845.2312060-1-o.rempel@pengutronix.de>
 <20230201145845.2312060-2-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230201145845.2312060-2-o.rempel@pengutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=UtwR7eldYPsFLdAoiY+9o5YJsCvXaWXt8Y32OHoLhV0=;
 b=k10dIcaR4n1JwF72K5bGo0zE3p1RVSuphxA1ZfQ25qlG/HkW1w0DQBRtei3oqOm308
 80akBvMVUFJwt67V7rkq3AcO1srNnjkd9aSawe2J22Nd7DNNhhXazb87wOzB45JI5neT
 oCGfisygbMZ1hj5rl2ECnSiPzVSkC0gBQvgB2RBbjaLrXh+xcRVK2s1lP1JveaTfetKA
 LhfTiIqS6kWyfWjNmmvku6AKZZVxY3UIvDSQHQX1q8YY7n4m17pPRGyPQpN9CekfdauC
 mOI+MqwmQro/T9ZLjSWcvO+TpiCazvZWNNrW1NkG0oPHAo3fBjTnHYmOipkNbnNFOO21
 54Vg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=k10dIcaR
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 01/23] net: dsa:
 microchip: enable EEE support
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

On Wed, Feb 01, 2023 at 03:58:23PM +0100, Oleksij Rempel wrote:
> +static int ksz_get_mac_eee(struct dsa_switch *ds, int port,
> +			   struct ethtool_eee *e)
> +{
> +	int ret;
> +
> +	ret = ksz_validate_eee(ds, port);
> +	if (ret)
> +		return ret;
> +
> +	/* There is no documented control of Tx LPI configuration.
> +	 */

comment fits on a single line

> +	e->tx_lpi_enabled = true;
> +	/* There is no documented control of Tx LPI timer. According to testes

according to tests, I hope, not testes

> +	 * Tx LPI timer seems to be set by default to minimal value.
> +	 */
> +	e->tx_lpi_timer = 0;
> +
> +	return 0;
> +}
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
