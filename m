Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1436A4780
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Feb 2023 18:03:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3CCCA81EF4;
	Mon, 27 Feb 2023 17:03:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3CCCA81EF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677517412;
	bh=J6+QoWm+igcNQN9J4LCmdeTZ65qBui61LjOU0q+m92c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hIgG0FEzsMdpihNJcCJp1aUiKF08MdtEIUmJUj5IJoLp5DYslUmw+ZPPaEYN5ZxnT
	 Pd8Sce1MkKYu7nqdAsXBzUVRyoHE3kT8EOBWIg3DF5WF+snN6M5ChPby1ueQVAgHmR
	 AfSUBdd3ZfiaqR+HTeqxXpQbBCuyqzzs5Hc3JwnksQbvGrtLMt6ckmr14bSCUeJq5M
	 JYaHjXnxVIRWmw/8z9ZAaOaSC3LMwY+/w8wmnXesE7lYKY5YncikuGVYYPCaIA0NOB
	 p99xj5vh+ZEu4GErqK9lR5dpy+kTj/IaiVhlFGvZOuD3wvc2g3PMIEC+kxIhYA8wZy
	 ok8mIw9L3CkKw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iEsbV17bk5Kn; Mon, 27 Feb 2023 17:03:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 24CDD81E1E;
	Mon, 27 Feb 2023 17:03:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 24CDD81E1E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CAA941BF870
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Feb 2023 17:03:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9F0DF81EF2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Feb 2023 17:03:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F0DF81EF2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SfNAZ4JXqUKE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Feb 2023 17:03:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6EA0281E1E
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com
 [IPv6:2607:f8b0:4864:20::134])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6EA0281E1E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Feb 2023 17:03:24 +0000 (UTC)
Received: by mail-il1-x134.google.com with SMTP id i12so4290393ila.5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Feb 2023 09:03:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:subject:from:references:cc:to
 :content-language:user-agent:mime-version:date:message-id:sender
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=3PQbL1qmUs2LgzEdZBJJorG5CguGjku/dl0Axwoc0Hg=;
 b=NqVEYdn6NaY2n1KL4NC/k5q7mKx0301KX63GNnNXHN9I5a6Lh5JlhTn17TybFzenCw
 pKAyA9tcJY+Bx0e8mq+c2HEzjQ5c9zjn2s5GPq6ya/F3Wr2WBUMUS381rG+dIlEYz+j8
 4/tKrz+QnaNtUpkJyDfBrIyCP9+ehzYhrNKP75tduj/eByeZidgRVpW1VwiSLGZ0pJRI
 /o2eGRfQF8TgrGo8dKLfpNY/0/CuR4Nf2vadpmcxITrTdRYB3fZGj0VcBlT+z6Zqz6hg
 cbUMSsfcEcclM3l1jSXIzF3z2lbBKS8pWODwAzqHCm8NreIYUSmTp/qBMEsUFrzz2K3v
 w+4A==
X-Gm-Message-State: AO0yUKX9RNQ9bQ1FjcyZaxbVN0fYxQwofBsJLnkyNbhEob1urS7i823r
 CH0sx8fx42X33aVFTmHZqr0=
X-Google-Smtp-Source: AK7set9CKjWTMYwqg06S+1PfRE5x9tDfWD/vxcVAwi9D8kRExY/U4idrTg7ZqsWu6O1ShnhnDPm+8g==
X-Received: by 2002:a05:6e02:19c9:b0:315:352e:d5d0 with SMTP id
 r9-20020a056e0219c900b00315352ed5d0mr52085ill.32.1677517403411; 
 Mon, 27 Feb 2023 09:03:23 -0800 (PST)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c?
 ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 n6-20020a02a906000000b0039df8e7af39sm2360208jam.41.2023.02.27.09.03.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Feb 2023 09:03:22 -0800 (PST)
Message-ID: <b7df91c0-a5e6-2a0f-7c04-479c4fbb7f82@roeck-us.net>
Date: Mon, 27 Feb 2023 09:03:20 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Andrew Lunn <andrew@lunn.ch>
References: <20230211074113.2782508-1-o.rempel@pengutronix.de>
 <20230211074113.2782508-7-o.rempel@pengutronix.de>
 <20230224035553.GA1089605@roeck-us.net>
 <20230224041604.GA1353778@roeck-us.net>
 <20230224045340.GN19238@pengutronix.de>
 <363517fc-d16e-5bcd-763d-fc0e32c2301a@roeck-us.net>
 <20230224165213.GO19238@pengutronix.de>
 <20230224174132.GA1224969@roeck-us.net>
 <20230224183646.GA26307@pengutronix.de>
 <b0af4518-3c07-726e-79a0-19c53f799204@roeck-us.net>
 <Y/yrS65V7h5vG7xN@lunn.ch>
From: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <Y/yrS65V7h5vG7xN@lunn.ch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:subject:from:references:cc:to
 :content-language:user-agent:mime-version:date:message-id:sender
 :from:to:cc:subject:date:message-id:reply-to;
 bh=3PQbL1qmUs2LgzEdZBJJorG5CguGjku/dl0Axwoc0Hg=;
 b=iB7l4fE+XtfoZb1/W5Y2H9qNZQPK6kZ9bHQy+VxvlOugTYjyRoUztESJEabpb9NEzF
 WlTJfe+EjYDFl6znYSm8WOExmrlwTwvaPx3m260xP8x5RKV7D8bquFAGSHN4KMgZCHUz
 ZC4ShQBs8Egff+9lqtSbyIHYs7mi9tEDCM8Vdji6O1Fc+V2l230ZGfLx7QPj5zzA6+Hu
 MG/94NZ+sNgfVzURLdeG2ArGcH3l4pmev+XunKQVr3Ssis3wIwsu/fnOAw2BRIlVsBt1
 E8JTZ47nqd4DpV1H5iKXozN0PhENIPJgShMIgGDnuzDcMK+BFi9i/TK6LFPWWg5pFvy9
 HxZg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=iB7l4fE+
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
Cc: Woojung Huh <woojung.huh@microchip.com>, Arun.Ramadoss@microchip.com,
 Florian Fainelli <f.fainelli@gmail.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 UNGLinuxDriver@microchip.com, Oleksij Rempel <o.rempel@pengutronix.de>,
 Eric Dumazet <edumazet@google.com>, Vladimir Oltean <olteanv@gmail.com>,
 Wei Fang <wei.fang@nxp.com>, kernel@pengutronix.de,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/27/23 05:08, Andrew Lunn wrote:
>>> diff --git a/drivers/net/phy/phy-c45.c b/drivers/net/phy/phy-c45.c
>>> index f595acd0a895..67dac9f0e71d 100644
>>> --- a/drivers/net/phy/phy-c45.c
>>> +++ b/drivers/net/phy/phy-c45.c
>>> @@ -799,6 +799,7 @@ static int genphy_c45_read_eee_cap1(struct phy_device *phydev)
>>>            * (Register 3.20)
>>>            */
>>>           val = phy_read_mmd(phydev, MDIO_MMD_PCS, MDIO_PCS_EEE_ABLE);
>>> +       printk("MDIO_PCS_EEE_ABLE = 0x%04x", val);
>>>           if (val < 0)
>>>                   return val;
>>>
>>
>> For cubieboard:
>>
>> MDIO_PCS_EEE_ABLE = 0x0000
>>
>> qemu reports attempts to access unsupported registers.
> 
> MDIO is a serial bus with two lines, clock driven by the bus master
> and data. There is a pull up on the data line, so if the device does
> not respond to a read request, you get 0xffff. That value is all i've
> ever seen a real PHY do when asked to read a register which does not
> exist. So i would say QEMU could be better emulate this.
> 
> The code actually looks for the value 0xffff and then decides that EEE
> is not supporting in the PHY.
> 
> The value of 0x0 is probably being interpreted as meaning EEE is
> supported, but none of the link modes, 10Mbps, 100Mbps etc support
> EEE. I would say it is then legitimate to read/write other EEE
> registers, so long as those writes take into account that no link
> modes are actually supported.
> 
> Reading the other messages in this thread, a bug has been found in the
> patches. But i would also say QEMU could do better.
> 

Sure, it could. Always. That is why I checked the qemu code and
actually tried to implement some of the EEE handling, only to
realize that it didn't help. The emulated PHY does support EEE
and would return either 0x0001 or 0x0003 depending on the
underlying hardware. However, returning that and returning/
accepting reasonable values for other EEE registers didn't make
a difference due to the kernel bug.

Thanks,
Guenter

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
