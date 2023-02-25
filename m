Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7796A278C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Feb 2023 07:32:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3CE6441814;
	Sat, 25 Feb 2023 06:32:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3CE6441814
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677306739;
	bh=/McPwVXYlvenksAJ+iJ1x9m622OgHquF/fWjXgcULYw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5lEiwutXfXBwXZqLzHHUz1pa98liTK0KYyoITrOSxWNdLhiLyCo4zgYoMgBoLcpQx
	 7akm0sAKXbEkigZisjwder7IMJixhCoB46jcjNpbZfI3pBnNmPRvezLCu1Atriw4ue
	 IdIwGP89rQVuoj25lG1/YalMi8rrsdFX64JuIUnxB6St9PQdnbwZVbNaRDJ9bNO41C
	 Q8O7/wIbMoGQfBOz3Z7E2rZ8dP7AoXLeYox116unbdPcl9sa5BmwVeCa0ze5eqKYtF
	 J/1fIGmzChyAA/F+TEjMNIBk53tpNCeHPRyKCWHbF5/tES1uBBD8AYlUPqHv0v4hOF
	 cXwzEai//XoVg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iZ6EBksizjgW; Sat, 25 Feb 2023 06:32:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F0628417B7;
	Sat, 25 Feb 2023 06:32:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F0628417B7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B456A1BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Feb 2023 06:32:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8BF0E60E37
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Feb 2023 06:32:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8BF0E60E37
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0S6f9eQJs-Wc for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Feb 2023 06:32:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A39D060D52
Received: from mail-oa1-x29.google.com (mail-oa1-x29.google.com
 [IPv6:2001:4860:4864:20::29])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A39D060D52
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Feb 2023 06:32:11 +0000 (UTC)
Received: by mail-oa1-x29.google.com with SMTP id
 586e51a60fabf-172b0ba97b0so2044263fac.4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 22:32:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :sender:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=rj/Z2DJPgHEc3Mgn3wl9ji4nnLLd9teQTaSKkfDKeSU=;
 b=F//OEGsVyl1UuG/YdWccFwBgtN0/+Z4wv00vqz45VmWeNSMa6DaSVVRzZ4+B0oJlXz
 nnK9lGZKvqDNeKGOyqjS8VNZgpt5h+kV2voIfHdjs2DnZCq6oeB3PVtUnt0xXeeWoFkf
 +DjWgLDgpsfPPDOxp00A7RahkE/Nlg/1+3EyV72313xGIqFx6diro+PH/DSZpEYV9W55
 2MAnyNvLqRjIg0Ngi9q5TYOGzI9OJwhV3cxF4Dvh+5RIkK6Q7CCIQCCW+2hKRTrXc8sH
 2NrD0cZUtWSyKp2q6X35t1N7wwD0OuQolBhu/FIZvwDic1ihwltpQjjlEpXlxLUZzFY0
 jcMQ==
X-Gm-Message-State: AO0yUKWCxE1+a957U5G9jxHAFwllHYhfCgchVdMwawW8Z2HvfZCzRGgo
 O1GQF0oGpD9OsSt3tP/sMbQ=
X-Google-Smtp-Source: AK7set+ylsRIuUfNZSk0GzT4MPe3emyTOu4xzmnXiT4qLjCe15XJ5uoiBAJt/kjd1pUYtPbn9C1NIw==
X-Received: by 2002:a05:6870:1686:b0:16e:8e37:cf08 with SMTP id
 j6-20020a056870168600b0016e8e37cf08mr17472130oae.35.1677306730619; 
 Fri, 24 Feb 2023 22:32:10 -0800 (PST)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c?
 ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 t2-20020a9d7742000000b0068d59d15a93sm353044otl.40.2023.02.24.22.32.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Feb 2023 22:32:09 -0800 (PST)
Message-ID: <9173a7a6-5531-6b41-1fb8-a8eb4b8c5d2c@roeck-us.net>
Date: Fri, 24 Feb 2023 22:32:07 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Oleksij Rempel <o.rempel@pengutronix.de>
References: <20230224035553.GA1089605@roeck-us.net>
 <20230224041604.GA1353778@roeck-us.net>
 <20230224045340.GN19238@pengutronix.de>
 <363517fc-d16e-5bcd-763d-fc0e32c2301a@roeck-us.net>
 <20230224165213.GO19238@pengutronix.de>
 <20230224174132.GA1224969@roeck-us.net>
 <20230224183646.GA26307@pengutronix.de>
 <b0af4518-3c07-726e-79a0-19c53f799204@roeck-us.net>
 <20230224200207.GA8437@pengutronix.de>
 <52f8bb78-0913-6e9a-7816-f32cdad688f2@roeck-us.net>
 <20230225060812.GB8437@pengutronix.de>
From: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <20230225060812.GB8437@pengutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :sender:from:to:cc:subject:date:message-id:reply-to;
 bh=rj/Z2DJPgHEc3Mgn3wl9ji4nnLLd9teQTaSKkfDKeSU=;
 b=D0yVEN8UCIgMTfUU8jBfozM+bZwnzVRldajUSzYaFEJh+cpWQiBBBEoRTHTHxPxGOJ
 pHUZx6mDR8grCQQqWXZtAsUrm+jX5oJG3h8jkr6SFAymN9dlY/feP7S122RzxQjN/uNe
 9SXWH6mRSy+wim2mCN6HzGWww/we3iYQ6kxfpmNg6T7fYd4eO2irlxmIQdTWqDCLdaUw
 a9fplMmS+yUj17/yk4yx+5AI+lOCS0ofnWaEgpD9/nm0g/Xoa4yLt0CYQoC/rsSImI2H
 IhtuuraFsjW7ksawgizV6yXcu7BAQYM8RaRHQXdylzeync7ya++XuixpkhweZ1N3JSL5
 +uQQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=D0yVEN8U
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

On 2/24/23 22:08, Oleksij Rempel wrote:
> On Fri, Feb 24, 2023 at 04:09:40PM -0800, Guenter Roeck wrote:
>> On 2/24/23 12:02, Oleksij Rempel wrote:
>> [ ... ]
>>>>
>>>> For cubieboard:
>>>>
>>>> MDIO_PCS_EEE_ABLE = 0x0000
>>>>
>>>> qemu reports attempts to access unsupported registers.
>>>>
>>>> I had a look at the Allwinner mdio driver. There is no indication suggesting
>>>> what the real hardware would return when trying to access unsupported registers,
>>>> and the Ethernet controller datasheet is not public.
>>>
>>> These are PHY accesses over MDIO bus. Ethernet controller should not
>>> care about content of this operations. But on qemu side, it is implemented as
>>> part of Ethernet controller emulation...
>>>
>>> Since MDIO_PCS_EEE_ABLE == 0x0000, phydev->supported_eee should prevent
>>> other EEE related operations. But may be actual phy_read_mmd() went
>>> wrong. It is a combination of simple phy_read/write to different
>>> registers.
>>>
>>
>> Adding MDD read/write support in qemu doesn't help. Something else in your patch
>> prevents the PHY from coming up. After reverting your patch, I see
>>
>> sun4i-emac 1c0b000.ethernet eth0: Link is Up - 100Mbps/Full - flow control off
>> IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
>>
>> in the log. This is missing with your patch in place.
>>
>> Anyway, the key difference is not really the qemu emulation, but the added
>> unconditional call to genphy_c45_write_eee_adv() in your patch. If you look
>> closely into that function, you may notice that the 'changed' variable is
>> never set to 0.
>>
>> diff --git a/drivers/net/phy/phy-c45.c b/drivers/net/phy/phy-c45.c
>> index 3813b86689d0..fee514b96ab1 100644
>> --- a/drivers/net/phy/phy-c45.c
>> +++ b/drivers/net/phy/phy-c45.c
>> @@ -672,7 +672,7 @@ EXPORT_SYMBOL_GPL(genphy_c45_read_mdix);
>>    */
>>   int genphy_c45_write_eee_adv(struct phy_device *phydev, unsigned long *adv)
>>   {
>> -       int val, changed;
>> +       int val, changed = 0;
>>
>>          if (linkmode_intersects(phydev->supported_eee, PHY_EEE_CAP1_FEATURES)) {
>>                  val = linkmode_to_mii_eee_cap1_t(adv);
>>
>> fixes the problem, both for cubieboard and xtensa.
> 
> Good point! Thx for finding it!
> 
> Do you wont to send the fix against net?

No, please go ahead and do it.

Guenter

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
