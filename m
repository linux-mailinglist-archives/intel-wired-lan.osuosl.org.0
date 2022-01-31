Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5D14A5319
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Feb 2022 00:20:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A6FA60F47;
	Mon, 31 Jan 2022 23:20:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dao83gEx-Ggh; Mon, 31 Jan 2022 23:20:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 54B8660F3E;
	Mon, 31 Jan 2022 23:20:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 54BD81BF363
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 23:20:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3DC6540154
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 23:20:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F4GOEMVfONbF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jan 2022 23:20:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com
 [IPv6:2607:f8b0:4864:20::534])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6846640143
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 23:20:05 +0000 (UTC)
Received: by mail-pg1-x534.google.com with SMTP id g20so13627013pgn.10
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 15:20:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=hnC6Z6Q65VdAgTCIurldNfb7wdu2fNyh9pkO9iIDICk=;
 b=Z5MZq2xNg6nMK1mXw+qO2hcJb3Tz4m7kBDjuxolAyGm+4ubLMy6tQDcyBNzElWZSOd
 G5ecbnM5ar7DLV4W+1emFpS7l5EuuqTtBOj5Naxzs89K8S1+lBafQ7jVn+SL5sIl+Suk
 GA8R1h/dXiKQ7aMypq+MkTbEaabr4UHQwGq/UcyD6M4vfwOyC1nGKKaNC4v1imW8fOUv
 TldBMFlAZ9/MQsgrPJoHDkxlJpN+iBcUTAYzc4Hi6K0YGjkiVwICUx2igdu6DV8OLYD5
 FpnItpUdFsMgTGoqi2w89mGkRM+mIinMfgGeMKeePKlNdT6+SLsReDrcqTEfHkU3QuaA
 UJtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=hnC6Z6Q65VdAgTCIurldNfb7wdu2fNyh9pkO9iIDICk=;
 b=kx28RefWSNidBb8n/OT4tmryJjiIAAxjKL65XJq8ctGYbAUPa5rW+iDO2BDDgAx3eK
 DjHQ8cBVpx14F6GkOOiBDzfHame2NZmeysI8nwjDZJS6F3KaLN5q85JQBant6xlZwEok
 31RH6nwFnaSL/TMMlE/G5GBeGU3jlEzx/pvhzfuaRNCbMwKVPN090daNC9zMI8Ihyxza
 CQKtqw2boVKPZV4PkTm24d7Lar/i3qXrh7hDv9wvuyBy0WYYnGv0+n3eimmh9/rulkKJ
 Mh869NN5u0BYmwBNx7pbBFc0M//1OAqoAdERScO6mF8HibFrrkmJr5H79/xvBb2l8GYW
 nSxA==
X-Gm-Message-State: AOAM532VW7QUxTWfPREKx7iKsblQq5BsMKQc0HXT7ev8tJ9EA9VNuAUx
 9MLHMsK/TdzQSQKNI+mz+3w=
X-Google-Smtp-Source: ABdhPJycbTtXw2lmt7UbWvdEsej8/fkc3gFa/rosbqIgkbMppZhW1w32qbf2yIx+skbzfEUc4SpUew==
X-Received: by 2002:a63:c156:: with SMTP id p22mr18269679pgi.215.1643671204652; 
 Mon, 31 Jan 2022 15:20:04 -0800 (PST)
Received: from [192.168.1.3] (ip72-194-116-95.oc.oc.cox.net. [72.194.116.95])
 by smtp.gmail.com with ESMTPSA id
 u19sm19919367pfi.150.2022.01.31.15.19.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 31 Jan 2022 15:20:04 -0800 (PST)
Message-ID: <dd1497ca-b1da-311a-e5fc-7c7265eb3ddf@gmail.com>
Date: Mon, 31 Jan 2022 15:19:58 -0800
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
 <7dc930c6-4ffc-0dd0-8385-d7956e7d16ff@gmail.com>
 <20220131151315.4ec5f2d3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20220131151315.4ec5f2d3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
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



On 1/31/2022 3:13 PM, Jakub Kicinski wrote:
> On Mon, 31 Jan 2022 15:06:01 -0800 Florian Fainelli wrote:
>>>> Right, but once you start hiding NET_VENDOR_DRIVER_XYZ under a
>>>> NET_VENDOR_XYZ Kconfig symbol dependency, if NET_VENDOR_XYZ is not set
>>>> to Y, then you have no way to select NET_VENDOR_DRIVER_XYZ and so your
>>>> old defconfig breaks.
>>>
>>> To be clear do we actually care about *old* configs or *def* configs?
>>
>> I think we care about oldconfig but maybe less so about defconfigs which
>> are in tree and can be updated.
> 
> The oldconfigs would have to not be updated on any intervening kernel
> in the last 10+ years to break, right? Or is there another way that an
> oldconfig would not have the vendor config set to y at this point?

That sounds very unrealistic, so yes, I don't think at this point that 
would happen. Even if you had your 15 year old .config file and ran make 
oldconfig today, you would have some work to do to make sure it still 
runs on your hardware.
-- 
Florian
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
