Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC8C4A52E4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Feb 2022 00:06:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C543B60F39;
	Mon, 31 Jan 2022 23:06:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dMMRs2aNSGCf; Mon, 31 Jan 2022 23:06:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A495660F30;
	Mon, 31 Jan 2022 23:06:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B2EC01BF363
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 23:06:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A90B040164
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 23:06:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YP47TFq23IEQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jan 2022 23:06:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com
 [IPv6:2607:f8b0:4864:20::436])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AE95F4015F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 23:06:08 +0000 (UTC)
Received: by mail-pf1-x436.google.com with SMTP id e28so14193848pfj.5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 15:06:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=v5RcyeeHHXW9j3hXHNrkcObjXy4CdCazV/xa6UgsjRk=;
 b=FuLO1unfVDoVExaEbAXmMG9VT/XrOxSzURa4tb2lWs/3zb6PQsqobF2i9HNgnVWIcZ
 6TEtH+pMj/eZ1ZbIrdxWCmJ7akU6yPujMiyI27+AQj4RgErAG05Yejjm0B5E0kINMMpJ
 PUPEIzwCcqDYsP53mzCSk2flxEPLDTCLy3MxEVCQ0Cc9Lj+h1pija49ucqBL85K5GzNB
 +3S+rtiU+gSpJFO8H2sRj80O6cuUCz0wg2mIUj1OTcnA4BKaLNG/+6h0VNq9FtPjuukX
 bBs2XgOgHjsrEldPoKWc6dxLTS0NM9vTBwwCoq1OEfeQMbBG1j/K/AyPKMobKYpDJoN4
 RmXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=v5RcyeeHHXW9j3hXHNrkcObjXy4CdCazV/xa6UgsjRk=;
 b=U/iFIuVeVovTn2HzrxY3hBIBTuuPjqeF4EJkRt5Iymw9qvFGUUOur+/t0QaaJCoXtD
 RpFSX73azdUsFjz7mDRTzCQmmRfdxMPgVrTSCmLzK+XLlR1dZANmrSKUE7V+fAxWxNAr
 lWiJjVZAwZnDvZNpxQHOuTMgTkHTy4ydBiSDtu/92GVCnQ2Uef385MG5tlfwTQOg9NHP
 JoohT6GoyH/i/tBLcHptgWMZwQGYT0myf1j7o7d9EEeefFVhdtCJttzOJbecOgjWmflT
 RKTy/sYPolZVnPP4q7mJJPoB0zboibSXE5nQZgBd2TwMyF7gBr9GOpsu4M+J2tnF1TWi
 sSPA==
X-Gm-Message-State: AOAM533XsKnUVIheyVCfpqKeNAh3T6lCWJyfD0J+j7rLep2BrcYzlJDU
 7IEyQWSYhnHJucGl2IL7x3c=
X-Google-Smtp-Source: ABdhPJxMwfga3XoB5eRlYJq/i2A2qtV8l3tyBpCJBLUAjc8jZ8QlVgn8/0C8xDn+lZCxVhz2OOPsEQ==
X-Received: by 2002:a63:8ac9:: with SMTP id
 y192mr18240787pgd.409.1643670367856; 
 Mon, 31 Jan 2022 15:06:07 -0800 (PST)
Received: from [192.168.1.3] (ip72-194-116-95.oc.oc.cox.net. [72.194.116.95])
 by smtp.gmail.com with ESMTPSA id
 gb5sm366101pjb.16.2022.01.31.15.06.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 31 Jan 2022 15:06:07 -0800 (PST)
Message-ID: <7dc930c6-4ffc-0dd0-8385-d7956e7d16ff@gmail.com>
Date: Mon, 31 Jan 2022 15:06:01 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
References: <20220131172450.4905-1-saeed@kernel.org>
 <20220131095905.08722670@hermes.local>
 <CAMuHMdU17cBzivFm9q-VwF9EG5MX75Qct=is=F2h+Kc+VddZ4g@mail.gmail.com>
 <20220131183540.6ekn3z7tudy5ocdl@sx1>
 <30ed8220-e24d-4b40-c7a6-4b09c84f9a1f@gmail.com>
 <20220131121027.4fe3e8dc@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20220131121027.4fe3e8dc@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next] net: kbuild: Don't default
 net vendor configs to y
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 David Awogbemila <awogbemila@google.com>,
 Linus Walleij <linus.walleij@linaro.org>, rafal@milecki.pl,
 Horatiu Vultur <horatiu.vultur@microchip.com>,
 Andy Gospodarek <andy@greyhouse.net>, Edwin Peer <edwin.peer@broadcom.com>,
 Wei Liu <wei.liu@kernel.org>, Michal Simek <michal.simek@xilinx.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Geert Uytterhoeven <geert@linux-m68k.org>, linux-sunxi@lists.linux.dev,
 Jiri Pirko <jiri@resnulli.us>, l.stelmach@samsung.com,
 Shay Agroskin <shayagr@amazon.com>, Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, Jon Mason <jdmason@kudzu.us>,
 Shannon Nelson <snelson@pensando.io>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Chris Snook <chris.snook@gmail.com>, Zhu Yanjun <zyjzyj2000@gmail.com>,
 Arthur Kiyanovski <akiyano@amazon.com>, Stefan Wahren <stefan.wahren@i2se.com>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 linux-stm32@st-md-mailman.stormreply.com, Gabriel Somlo <gsomlo@gmail.com>,
 Rain River <rain.1986.08.12@gmail.com>,
 Martin Habets <habetsm.xilinx@gmail.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Jose Abreu <Jose.Abreu@synopsys.com>,
 Shai Malin <smalin@marvell.com>, Maxime Ripard <mripard@kernel.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, drivers@pensando.io,
 Omkar Kulkarni <okulkarni@marvell.com>, linux-arm-kernel@lists.infradead.org,
 Vegard Nossum <vegard.nossum@oracle.com>, David Arinzon <darinzon@amazon.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-renesas-soc@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Catherine Sullivan <csully@google.com>, linux-hyperv@vger.kernel.org,
 oss-drivers@corigine.com, Noam Dagan <ndagan@amazon.com>,
 Rob Herring <robh@kernel.org>, Steen Hegelund <steen.hegelund@microchip.com>,
 Dexuan Cui <decui@microsoft.com>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Joel Stanley <joel@jms.id.au>,
 Simon Horman <simon.horman@corigine.com>, Asmaa Mnebhi <asmaa@nvidia.com>,
 Arnd Bergmann <arnd@arndb.de>, Haiyang Zhang <haiyangz@microsoft.com>,
 Saeed Mahameed <saeed@kernel.org>, Liming Sun <limings@nvidia.com>,
 Michael Chan <michael.chan@broadcom.com>, Salil Mehta <salil.mehta@huawei.com>,
 Sergey Shtylyov <s.shtylyov@omp.ru>, Oleksij Rempel <linux@rempel-privat.de>,
 Edward Cree <ecree.xilinx@gmail.com>, Saeed Bishara <saeedb@amazon.com>,
 Mark Einon <mark.einon@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Slark Xiao <slark_xiao@163.com>, Gary Guo <gary@garyguo.net>,
 Gerhard Engleder <gerhard@engleder-embedded.com>,
 Jeroen de Borst <jeroendb@google.com>, Lino Sanfilippo <LinoSanfilippo@gmx.de>,
 intel-wired-lan@lists.osuosl.org, Prabhakar Kushwaha <pkushwaha@marvell.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Richard Cochran <richardcochran@gmail.com>, Marcin Wojtas <mw@semihalf.com>,
 David Thompson <davthompson@nvidia.com>,
 Lars Povlsen <lars.povlsen@microchip.com>, netdev@vger.kernel.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Saeed Mahameed <saeedm@nvidia.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 1/31/2022 12:10 PM, Jakub Kicinski wrote:
> On Mon, 31 Jan 2022 10:40:38 -0800 Florian Fainelli wrote:
>>>> And changing the defaults means all defconfigs must be updated first,
>>>> else the user's configs will end up without drivers needed.
>>>>   
>>>
>>> As I understand correctly, at least for most common net drivers, having
>>> NET_VENDOR_XYZ=y doesn't actually build anything, we have flags per
>>> module for each vendor and those are defaulted to N.
>>
>> Right, but once you start hiding NET_VENDOR_DRIVER_XYZ under a
>> NET_VENDOR_XYZ Kconfig symbol dependency, if NET_VENDOR_XYZ is not set
>> to Y, then you have no way to select NET_VENDOR_DRIVER_XYZ and so your
>> old defconfig breaks.
> 
> To be clear do we actually care about *old* configs or *def* configs?

I think we care about oldconfig but maybe less so about defconfigs which 
are in tree and can be updated.

> 
> Breaking defconfigs seems bad, but I don't think we can break
> reasonable oldconfigs at this point?

No preference either way for me, just like Richard, all of the systems I 
typically work with either require a carefully curated configuration 
file to strip out unwanted features. I do like Geert's suggestion of 
adding default ARCH_ for slightly esoteric controllers that are not 
found in off the shelf hardware.

> 
>>>> It might make sense to tune some of the defaults (i.e. change to
>>>> "default y if ARCH_*") for drivers with clear platform dependencies.
>>>>   
>>>
>>> either set hard default to 'n' or just keep it as is, anything else is just
>>> more confusion.
>>
>> Maybe the rule should go like this: any new driver vendor defaults to n,
>> and existing ones remain set to y, until we deprecate doing that and
>> switching them all off to n by 5.18?
> 
> I'd be afraid that given the work of fixing up defconfigs is
> non-trivial we may end up never switching old drivers. And then we'd
> have a semi-random soup of defaults :(

Fair enough.
-- 
Florian
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
