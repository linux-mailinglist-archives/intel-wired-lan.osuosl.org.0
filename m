Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1C06A223B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Feb 2023 20:17:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A398A41C01;
	Fri, 24 Feb 2023 19:17:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A398A41C01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677266256;
	bh=7TMvl6Hrep92fDT5SngbD6YlYBvdS/90JCGQUxJmP3o=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L9Ha4HlUSZNlRduU5laS0jEE8RjOI5fLpiAwE9Rx52dLovJv6MvRZutTqFoAZC0Zu
	 ljGwOrNpASK7kBj0CnYrMy0VIBZyMba6OAkQwA7eeIX0Xvqb3tTvUbmS4vBMX1Xe8Z
	 qun30HBztW1MWICRuhpZfuf0iHRjrlKXsRRr8cuyT3dy+Yy0JR9w+5uk6phMZN8ASN
	 vwHtlO26SnaJtQCstLKQ0eA+lmZV4o44DxZtkhFcdLOGiA12Nq+C/XDHGppWUaOKh6
	 SA85y64egQFF1nyFZLnxoayErQJyxQPakQEerwaEfnEoZxkJgxVCOn2Y6w9IWM+EMJ
	 ZUr2yGPZop5AA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y7Qht6bI86bT; Fri, 24 Feb 2023 19:17:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2DBC641B6B;
	Fri, 24 Feb 2023 19:17:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2DBC641B6B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 863871BF983
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 19:17:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5F23740B4A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 19:17:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F23740B4A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z-tkAKHLUN8S for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Feb 2023 19:17:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5519940145
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com
 [IPv6:2607:f8b0:4864:20::134])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5519940145
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 19:17:28 +0000 (UTC)
Received: by mail-il1-x134.google.com with SMTP id o8so307280ilt.13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 11:17:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:subject:from:references:cc:to
 :content-language:user-agent:mime-version:date:message-id:sender
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=1e26bbruHMjLgHC3kf6AF7TXnsQxoIObs73hciyTTjs=;
 b=gHJNXLoWu9To51NxSAoXJdJbutvNpL9aMZjuNRgk8RDXPwDUIpZMKx0shmyx/NY7fu
 PYHjEHvgxCt4kItS4h+bY1emwbCsqVkrX7+nlvt/fcni4JAeYUd8GYEmPfvX87RgfQUo
 aenM/6soLckMxRhw4t0uImN3ga21sTJLyOAkPFy5s5h/n+lDqrUIt8vhP06PKPjghrlW
 mWSUOCC8TLfusI3qO0zVSVEVneV3dYDrDoP7MgIljcEmAJ2vLqTZk0C1v58oVyMvik1Q
 kVskcQOyPUOWfYIQm1XMExGBH6pB1iIC4YMbIs+3CQUPG919aHjdcXmQ53DemgJ0oakf
 dDig==
X-Gm-Message-State: AO0yUKVrb4YbsLZ2H0Y+u/3429/LQNn9s1dOMU2N05siH5R3kZXjlOkq
 N5AaVAdget2TOLsJwEaMqqk=
X-Google-Smtp-Source: AK7set9/+2jpC9sutbrQAAb4mHGfP63HMGv3VXKmzx9OQ5XerDMreNhTQtFdXdSwzaJRw3xZuOEDDA==
X-Received: by 2002:a92:7510:0:b0:315:4793:f7b4 with SMTP id
 q16-20020a927510000000b003154793f7b4mr10006551ilc.31.1677266247325; 
 Fri, 24 Feb 2023 11:17:27 -0800 (PST)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c?
 ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 a1-20020a92d341000000b0031535ce9cc8sm4239248ilh.83.2023.02.24.11.17.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Feb 2023 11:17:26 -0800 (PST)
Message-ID: <b0af4518-3c07-726e-79a0-19c53f799204@roeck-us.net>
Date: Fri, 24 Feb 2023 11:17:24 -0800
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
 <363517fc-d16e-5bcd-763d-fc0e32c2301a@roeck-us.net>
 <20230224165213.GO19238@pengutronix.de>
 <20230224174132.GA1224969@roeck-us.net>
 <20230224183646.GA26307@pengutronix.de>
From: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <20230224183646.GA26307@pengutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:subject:from:references:cc:to
 :content-language:user-agent:mime-version:date:message-id:sender
 :from:to:cc:subject:date:message-id:reply-to;
 bh=1e26bbruHMjLgHC3kf6AF7TXnsQxoIObs73hciyTTjs=;
 b=Y2prViu7RGnF9nNCSevqbgy0xFGBD2OU4Gl7n1Z282XKpZ6VpFsqIEOrJ1+50Qz/FZ
 UA6DW8d+vL1Y2P7bDhHI2bQg11Nd+KjAEVsW5ykf629u1vTmhs9q3GMEmMSaN6y2CRA7
 s5akANQWGQfP3Q+ZrTBEHAPcXnGfP89v79CnlLeTiKO3cKjWiA+jk2TEwtHI3mI34XqJ
 SmXYTksuFRgBsHU7H//sIdBQTYfGwlmqateUDMFhR05Z4IyfSUZM0G52SAgsKgC1tZMA
 yiOEQAcy9tPmXfPLclcknCU6yx/oUrtYnTpmbwHVbkvIk8uJPAQvaeR9hWDseztBO/Uz
 Oo2w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Y2prViu7
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

On 2/24/23 10:36, Oleksij Rempel wrote:
> On Fri, Feb 24, 2023 at 09:41:32AM -0800, Guenter Roeck wrote:
>> On Fri, Feb 24, 2023 at 05:52:13PM +0100, Oleksij Rempel wrote:
>>> On Fri, Feb 24, 2023 at 08:00:57AM -0800, Guenter Roeck wrote:
>>>> On 2/23/23 20:53, Oleksij Rempel wrote:
>>>>> Hallo Guenter,
>>>>>
>>>>> On Thu, Feb 23, 2023 at 08:16:04PM -0800, Guenter Roeck wrote:
>>>>>> On Thu, Feb 23, 2023 at 07:55:55PM -0800, Guenter Roeck wrote:
>>>>>>> On Sat, Feb 11, 2023 at 08:41:10AM +0100, Oleksij Rempel wrote:
>>>>>>>> Migrate from genphy_config_eee_advert() to genphy_c45_write_eee_adv().
>>>>>>>>
>>>>>>>> It should work as before except write operation to the EEE adv registers
>>>>>>>> will be done only if some EEE abilities was detected.
>>>>>>>>
>>>>>>>> If some driver will have a regression, related driver should provide own
>>>>>>>> .get_features callback. See micrel.c:ksz9477_get_features() as example.
>>>>>>>>
>>>>>>>> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
>>>>>>>> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
>>>>>>>
>>>>>>> This patch causes network interface failures with all my xtensa qemu
>>>>>>> emulations. Reverting it fixes the problem. Bisect log is attached
>>>>>>> for reference.
>>>>>>>
>>>>>>
>>>>>> Also affected are arm:cubieboard emulations, with same symptom.
>>>>>> arm:bletchley-bmc emulations crash. In both cases, reverting this patch
>>>>>> fixes the problem.
>>>>>
>>>>> Please test this fixes:
>>>>> https://lore.kernel.org/all/167715661799.11159.2057121677394149658.git-patchwork-notify@kernel.org/
>>>>>
>>>>
>>>> Applied and tested
>>>>
>>>> 77c39beb5efa (HEAD -> master) net: phy: c45: genphy_c45_ethtool_set_eee: validate EEE link modes
>>>> 068a35a8d62c net: phy: do not force EEE support
>>>> 66d358a5fac6 net: phy: c45: add genphy_c45_an_config_eee_aneg() function
>>>> ecea1bf8b04c net: phy: c45: use "supported_eee" instead of supported for access validation
>>>>
>>>> on top of
>>>>
>>>> d2980d8d8265 (upstream/master, origin/master, origin/HEAD, local/master) Merge tag 'mm-nonmm-stable-2023-02-20-15-29' of git://git.kernel.org/pub/scm/linux/kernel/git/akpm/mm
>>>>
>>>> No change for xtensa and arm:cubieboard; network interfaces still fail.
>>>
>>> Huh, interesting.
>>>
>>> can you please send me the kernel logs.
>>>
>> There is nothing useful there, or at least I don't see anything useful.
>> The Ethernet interfaces (sun4i-emac for cubieboard and ethoc for xtensa)
>> just don't come up.
>>
>> Sample logs:
>>
>> cubieboard:
>>
>> https://kerneltests.org/builders/qemu-arm-v7-master/builds/531/steps/qemubuildcommand/logs/stdio
>>
>> xtensa:
>>
>> https://kerneltests.org/builders/qemu-xtensa-master/builds/2177/steps/qemubuildcommand/logs/stdio
>>
>> and, for completeness, bletchley-bmc:
>>
>> https://kerneltests.org/builders/qemu-arm-aspeed-master/builds/531/steps/qemubuildcommand/logs/stdio
>>
>> Those logs are without the above set of patches, but I don't see a
>> difference with the patches applied for cubieboard and xtensa. I
>> started a complete test run (for all emulations) with the patches
>> applied; that should take about an hour to complete.
>> I could also add some debug logging, but you'd have to give me
>> some hints about what to add and where.
> 
> OK, interesting. These are emulated PHYs. QEMU seems to return 0 or
> 0xFFFF on unsupported registers. May be I'm wrong.
> All EEE read/write accesses depend on initial capability read
> genphy_c45_read_eee_cap1()
> 
> Can you please add this trace:
> 
> diff --git a/drivers/net/phy/phy-c45.c b/drivers/net/phy/phy-c45.c
> index f595acd0a895..67dac9f0e71d 100644
> --- a/drivers/net/phy/phy-c45.c
> +++ b/drivers/net/phy/phy-c45.c
> @@ -799,6 +799,7 @@ static int genphy_c45_read_eee_cap1(struct phy_device *phydev)
>           * (Register 3.20)
>           */
>          val = phy_read_mmd(phydev, MDIO_MMD_PCS, MDIO_PCS_EEE_ABLE);
> +       printk("MDIO_PCS_EEE_ABLE = 0x%04x", val);
>          if (val < 0)
>                  return val;
> 

For cubieboard:

MDIO_PCS_EEE_ABLE = 0x0000

qemu reports attempts to access unsupported registers.

I had a look at the Allwinner mdio driver. There is no indication suggesting
what the real hardware would return when trying to access unsupported registers,
and the Ethernet controller datasheet is not public.

For xtensa:

MDIO_PCS_EEE_ABLE = 0x0014

I didn't try to find out what that means.

qemu did not report attempts to access unsupported registers.

Guenter

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
