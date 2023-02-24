Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A016A1F33
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Feb 2023 17:01:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 171D340B08;
	Fri, 24 Feb 2023 16:01:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 171D340B08
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677254469;
	bh=AFUpZuAMyErKUyy44b/7Rm0eIKMekGkDR/Wbw3OyH/4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vQRHmb/JIFnz508snAAn+A+xSEPqIVwn/0zncVeKloPt89vUZIPSVtpkC2KhEkH9c
	 ysIK5t27IwS6CwepfRP2GCE7Or61TtJWMXY6RMw0P4gw/ztcfFe4/v7VA3Al06/1mc
	 WCtUjy4cFI7+2luqR6pVlHKu1bVqar7PFDV1U9B2RJxHz7wRrx/QaiuwUc/7adC0WX
	 HCLZuVNZrwqlz7CWdYg/XXZjsQsQ4dKw+rlbw9QbYooe0TIZv+dujUEO+lvQB1TdW/
	 W8KGTQbHYa6O4KbXbENh3ru4Di08qk21YyT14mBfFiFr8Gp277kafEln4WphYT3O7v
	 /xWUlXjYVpBqg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3ovn97Xn8Cmh; Fri, 24 Feb 2023 16:01:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0461040AF0;
	Fri, 24 Feb 2023 16:01:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0461040AF0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6FD7E1BF282
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 16:01:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 544DD60FE7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 16:01:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 544DD60FE7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JKrnm6_Tsm9w for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Feb 2023 16:01:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F074B60F46
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com
 [IPv6:2607:f8b0:4864:20::d34])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F074B60F46
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 16:01:01 +0000 (UTC)
Received: by mail-io1-xd34.google.com with SMTP id b5so2722595iow.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 08:01:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:subject:from:references:cc:to
 :content-language:user-agent:mime-version:date:message-id:sender
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=24SeSYQMuEBW/rMjuq7m2xf9oOdtGU4bOMH/EOR5RMM=;
 b=w8mVrjztiFufm3SFgZECJyI9clb23LEQgB3GsJwP3+HYyQgOq5e7P0uwKqNd8tocXY
 y2Ee5glU8YslxV0qcNJxwu+PJOPIfeNm3GGwmsxWeS9a6rwRP1gyrFGkKpPzjdhwjgXu
 cYqwU1I1y0tO31r1HFC5EfxaFfPASJc3GqjSTRQFeTEXP8i4CsG0tenxvqsExd2y0tYU
 FwdlrZu13eYlTmNEwc5R76H69B2pZNVYsAoBRH/LlLsQhxDowTV1OEzsDN8GaajW5A8l
 WwfsWY9dZ0hG+7xr03YBLxC54y6aAgWOwI1dtERuO1BL+kez/qyRY+z0HyQBeyjYy1C4
 1BKQ==
X-Gm-Message-State: AO0yUKUykWU+bvgX8VrgV7l+4n9Q4aQGnI16mb3G51r2tqdwELkhPKAm
 WZHEZRNOf+Grbid6kKgiMg0=
X-Google-Smtp-Source: AK7set+mfd10UDgs4fKqzp8/U0ux4eBGCSMZN60VS9/2fLwNL1WYyotYyAoQrFqyf547U9bH7+wZWg==
X-Received: by 2002:a6b:fe10:0:b0:74c:a38e:b210 with SMTP id
 x16-20020a6bfe10000000b0074ca38eb210mr4359938ioh.2.1677254461044; 
 Fri, 24 Feb 2023 08:01:01 -0800 (PST)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c?
 ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 n9-20020a5e8c09000000b00740710c0a65sm3503872ioj.47.2023.02.24.08.00.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Feb 2023 08:01:00 -0800 (PST)
Message-ID: <363517fc-d16e-5bcd-763d-fc0e32c2301a@roeck-us.net>
Date: Fri, 24 Feb 2023 08:00:57 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Oleksij Rempel <o.rempel@pengutronix.de>
References: <20230211074113.2782508-1-o.rempel@pengutronix.de>
 <20230211074113.2782508-7-o.rempel@pengutronix.de>
 <20230224035553.GA1089605@roeck-us.net>
 <20230224041604.GA1353778@roeck-us.net>
 <20230224045340.GN19238@pengutronix.de>
From: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <20230224045340.GN19238@pengutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:subject:from:references:cc:to
 :content-language:user-agent:mime-version:date:message-id:sender
 :from:to:cc:subject:date:message-id:reply-to;
 bh=24SeSYQMuEBW/rMjuq7m2xf9oOdtGU4bOMH/EOR5RMM=;
 b=DSZTB2NU8s3meyG/2StSkJrrUI30HnUJcgtbd+4Vn8rYkDPNSaMZhX5fQwoGe3N7Bh
 wPXhWTdWD51fheCMWkUp4vIWVqL8DZliEo2LTuVFin8hKczdNwXJlaFJBj7WSJgUr0Ot
 TcZ1shCiBZ8Sw4vvVHH69ylthf+OozpZ2kVXcw8e9e3o91lWOmkiNvaDkIze33hVzYFE
 I19+sKwEbK/kAOVmYkp6gfXEahKPa4XTjB2HBVmGZDyMIZNcL2ElkP9MApTlOflTWA8+
 1MRiSXCICRKO2q7wd/93uKPQ7A2CF50yIMf8XK6hBQQr7xFv41DNq5OUsDPNkwl02/ku
 +ehw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=DSZTB2NU
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
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>, UNGLinuxDriver@microchip.com,
 Eric Dumazet <edumazet@google.com>, Vladimir Oltean <olteanv@gmail.com>,
 Wei Fang <wei.fang@nxp.com>, kernel@pengutronix.de,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/23/23 20:53, Oleksij Rempel wrote:
> Hallo Guenter,
> 
> On Thu, Feb 23, 2023 at 08:16:04PM -0800, Guenter Roeck wrote:
>> On Thu, Feb 23, 2023 at 07:55:55PM -0800, Guenter Roeck wrote:
>>> On Sat, Feb 11, 2023 at 08:41:10AM +0100, Oleksij Rempel wrote:
>>>> Migrate from genphy_config_eee_advert() to genphy_c45_write_eee_adv().
>>>>
>>>> It should work as before except write operation to the EEE adv registers
>>>> will be done only if some EEE abilities was detected.
>>>>
>>>> If some driver will have a regression, related driver should provide own
>>>> .get_features callback. See micrel.c:ksz9477_get_features() as example.
>>>>
>>>> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
>>>> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
>>>
>>> This patch causes network interface failures with all my xtensa qemu
>>> emulations. Reverting it fixes the problem. Bisect log is attached
>>> for reference.
>>>
>>
>> Also affected are arm:cubieboard emulations, with same symptom.
>> arm:bletchley-bmc emulations crash. In both cases, reverting this patch
>> fixes the problem.
> 
> Please test this fixes:
> https://lore.kernel.org/all/167715661799.11159.2057121677394149658.git-patchwork-notify@kernel.org/
> 

Applied and tested

77c39beb5efa (HEAD -> master) net: phy: c45: genphy_c45_ethtool_set_eee: validate EEE link modes
068a35a8d62c net: phy: do not force EEE support
66d358a5fac6 net: phy: c45: add genphy_c45_an_config_eee_aneg() function
ecea1bf8b04c net: phy: c45: use "supported_eee" instead of supported for access validation

on top of

d2980d8d8265 (upstream/master, origin/master, origin/HEAD, local/master) Merge tag 'mm-nonmm-stable-2023-02-20-15-29' of git://git.kernel.org/pub/scm/linux/kernel/git/akpm/mm

No change for xtensa and arm:cubieboard; network interfaces still fail.
On the plus side, the failures with arm:bletchley-bmc (warnings, crash)
are longer seen.

Guenter

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
