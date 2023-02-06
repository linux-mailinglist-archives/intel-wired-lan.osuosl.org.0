Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 932E668BB52
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Feb 2023 12:23:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 291A181771;
	Mon,  6 Feb 2023 11:23:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 291A181771
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675682581;
	bh=VoOQHwo3FQ0AAxmVYd7vvqZeu1bQhRkWsqXnJZjRkXY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nWMgrkKkpxo668h70kKFTW2G25CauE7Gh0Ci1+IrQqBaWhhcFJzWRS3CrHjDY0lUg
	 +uISv13bnmeUU9ZP0kqKmu3qua96SsXeTFN1LPxTPtdg76XONKmNynXavApcfJCigg
	 ijV+8jL4XPq7opK3aO756OB4EhHvEkT8fviW3qq5Znb/J4xigKXif9hSTvUlO8/rJy
	 vpxt8qniw1CS6QsWCeLxNtGzkHYtj5IMdC6+6DGWKrVmkYAKrCbgqZOhasBHdvssD7
	 tg3fQDDeZPecSTjwd/lkJ/MajcvuWybqYWT9+7fS5WiSHy4Hs5R528TYiAt9AoY2tR
	 ykA965/kI5grg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 17-zeOSE9lZD; Mon,  6 Feb 2023 11:23:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1BD9581492;
	Mon,  6 Feb 2023 11:23:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1BD9581492
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3C1C01BF397
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 11:22:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 136F7414E4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 11:22:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 136F7414E4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ezXa5BxhwyDV for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Feb 2023 11:22:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE0E6414EA
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CE0E6414EA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 11:22:51 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id v13so11234552eda.11
 for <intel-wired-lan@lists.osuosl.org>; Mon, 06 Feb 2023 03:22:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=89mzhfpMwGo7PKR1/PatOl9b0MredJgLBcvqmQuIsos=;
 b=2FOvY3yzaFvLlimM7CVEKLtJuG2bHqAGVYWLEb2wIyW7Rw1Hw7iqO7r0BkQym7uKzS
 ZXI63ghhPUsKkUKPQOm5irXVu9GK24NQIixYM+TiH1BLP8hOzO39AQ+lYGgCGorLzFu2
 s0QqDzOz9VQRywY1q4WyGN+gS8s2U+1j1guY9uTmtpu8m0RTsaGFMJ0qs0OYRJ4K5gZb
 Hesf4Fe7WGg6v2DAsvX9ghyvfL5eV+eQT/wz7/hdwuZEu3ysodhFLBY+DFZHPqvGUETK
 PBmK7+k/9CEwn1JN0JzgJPAt16c/f2YOx+e3DyV5sn79nA9P0unJqqsj12WDpRoEHhJp
 i+Kg==
X-Gm-Message-State: AO0yUKURcnlvHM2oyuk/hFVKB2REsMqIDKGEywt7L79G8iThvqctYFZt
 ojWfHfVXuz3oB02pgffZ2I0=
X-Google-Smtp-Source: AK7set/3xMzW3G37FoGcKu9LIx1OTFzcgWrglooE72i3J92ka2tGMb31EwYb7vBfBeh6Db60p2vG7A==
X-Received: by 2002:a50:c050:0:b0:4aa:b20b:c132 with SMTP id
 u16-20020a50c050000000b004aab20bc132mr4561406edd.5.1675682569735; 
 Mon, 06 Feb 2023 03:22:49 -0800 (PST)
Received: from skbuf ([188.26.185.183]) by smtp.gmail.com with ESMTPSA id
 g20-20020aa7c854000000b004a24b8b58cbsm4894984edt.16.2023.02.06.03.22.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Feb 2023 03:22:49 -0800 (PST)
Date: Mon, 6 Feb 2023 13:22:46 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20230206112246.pazwn7r75oru5iq3@skbuf>
References: <20230201145845.2312060-1-o.rempel@pengutronix.de>
 <20230201145845.2312060-3-o.rempel@pengutronix.de>
 <20230204005418.7ryb4ihuzxlbs2nl@skbuf>
 <20230206104955.GE12366@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230206104955.GE12366@pengutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=89mzhfpMwGo7PKR1/PatOl9b0MredJgLBcvqmQuIsos=;
 b=R5l/rFg2hfJN4Wj1DzLjLgoSorhZnIBqmzAV9UiZxx+rMkTjYaVz/1AX9knJh5zwYT
 ARwxxRWjIb+olbuhgXbYCeqCwY+s8oiNOUobOrzkX+q9FeiqnM/wAxNoUtQDbz0fHxVh
 sbjZ5UFROAbisgEgy7CDHzx63jWdViVBkux1dCtjas9py/jgu78UieuRkLzj6QxwzAQL
 x1cLWPJ6Bq77/oBpS3IsF4+9xX1s+Ih+a7p+6nSO18p5Ev7La0SVer3Mgtj0UxVWp2F6
 nzecJrWXBf/YlkZkxqHDpgjFSCNX/ZUz0CmpE9MnK3baz3pEM+5NmxxpVnAxhqKCPRwJ
 f1hQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=R5l/rFg2
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

On Mon, Feb 06, 2023 at 11:49:55AM +0100, Oleksij Rempel wrote:
> > Why stop at 10GBase-KR? Register 3.20 defines EEE abilities up to 100G
> > (for speeds >10G, there seem to be 2 modes, "deep sleep" or "fast wake",
> > with "deep sleep" being essentially equivalent to the only mode
> > available for <=10G modes).
> 
> Hm,
> 
> If i take only deep sleep, missing modes are:
> 3.20.13 100GBASE-R deep sleep
>        family of Physical Layer devices using 100GBASE-R encoding:
>        100000baseCR4_Full
>        100000baseKR4_Full
>        100000baseCR10_Full (missing)
>        100000baseSR4_Full
>        100000baseSR10_Full (missing)
>        100000baseLR4_ER4_Full
> 
> 3.20.11 25GBASE-R deep sleep
>        family of Physical Layer devices using 25GBASE-R encoding:
>        25000baseCR_Full
>        25000baseER_Full (missing)
>        25000baseKR_Full
>        25000baseLR_Full (missing)
>        25000baseSR_Full
> 
> 3.20.9 40GBASE-R deep sleep
>        family of Physical Layer devices using 40GBASE-R encoding:
>        40000baseKR4_Full
>        40000baseCR4_Full
>        40000baseSR4_Full
>        40000baseLR4_Full
> 
> 3.20.7 40GBASE-T
>        40000baseT_Full (missing)
> 
> I have no experience with modes > 1Gbit. Do all of them correct? What
> should we do with missing modes? Or may be it make sense to implement >
> 10G modes separately?

Given the fact that UAPI needs an extension to cover supported/advertisement
bits > 31, I think it makes sense to add these separately. I had not
realized this when I commented on this patch. I don't think we want the
kernel to advertise EEE for some link modes without user space seeing it.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
