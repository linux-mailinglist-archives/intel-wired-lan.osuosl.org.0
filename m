Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 036CF4A7472
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Feb 2022 16:17:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6DD264058E;
	Wed,  2 Feb 2022 15:17:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MhRfZS0r07xi; Wed,  2 Feb 2022 15:17:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 03BBA4058C;
	Wed,  2 Feb 2022 15:17:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6ACCF1BF426
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 15:17:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5AEE360B5D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 15:17:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EuQGlDAxHnEY for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Feb 2022 15:17:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com
 [IPv6:2607:f8b0:4864:20::430])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B62C360BF7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 15:17:20 +0000 (UTC)
Received: by mail-pf1-x430.google.com with SMTP id n32so19048305pfv.11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 02 Feb 2022 07:17:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=gjQNFw/Fp3MO2yyuXpW642AA94J7qHf7TT53TRKjI7Y=;
 b=qnCHM5SY/YCvlEKbicyw5bEBLDVCcxSTc3cpUOS3mnpX9g+wGvBeEoDy0ZZ7sSLGrX
 W0wPMIX1wfs3UKEgk4Ys3ZjoQFYgi6BYzE5YSGh3rcWwyDOKJ/h7sDWh/Vl5bYcmkGqL
 amCWnBg10PPx9oZP3w5X6KJwTHGFuqwKqWGf+GwUsrrBlniZLbqySYaXdD8YL+LdPnwv
 5tbLs+p6PmAw5L7Y0CsezUd5kCqEUFJtoLAuqdmoZ7jsYzVtVE3AFLBbqHeaGuSP2vGy
 tXJbq5Gf2GdUD02aDhKZJyCYFGR0hhEE3zq31L68Wq49WW9FLW7GxfmnykbmMBlieMF9
 XaUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gjQNFw/Fp3MO2yyuXpW642AA94J7qHf7TT53TRKjI7Y=;
 b=exNTSCYz3Mxiiiz9g3hw/bb6Uv8/MyKmdGjd6vXcE4agq3f8kDF4vWot/AFrsJWSWT
 Y3E29UJ3EARL0BrKPDqWM0C8xYP85Gl6ac3CupCGUQiknw+FyJCOPaNsEklObGrLGyfQ
 Phs2aUqzp9EN6QzldSwyLNuDO+ZJJ9zr+lD71c4jZObwttALu6KFJnkgMBn7FAYRtU2q
 oU3u0+uBE9nDx6wByImCw8RYedvp/bH7vQZgyl5jP2KAcNypHr/TqKgW67ZXrv7J2qho
 8DCwjdzwyRve5mIzgEITF1c01qUr+38dWp3irsIn3xvw81PFlvg5JbuS+Q0lxwG5boUY
 tmnA==
X-Gm-Message-State: AOAM532mw3hYD7mPQ2EaB+0qM3THnubXNJengTedUz3qzcy73umnNtK8
 vkZec06B+w9ofkezT3ePdqA=
X-Google-Smtp-Source: ABdhPJyXTrBYN22CJnV1AiS1a3klGMo9MFYNpVzHW8Jr8yAJkP4fXxNhmbqwlGMH/GxhG7ABXi2bmw==
X-Received: by 2002:a63:5b58:: with SMTP id l24mr24861240pgm.418.1643815040089; 
 Wed, 02 Feb 2022 07:17:20 -0800 (PST)
Received: from hoboy.vegasvil.org ([2601:640:8200:33:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id h18sm26265177pfh.51.2022.02.02.07.17.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Feb 2022 07:17:19 -0800 (PST)
Date: Wed, 2 Feb 2022 07:17:07 -0800
From: Richard Cochran <richardcochran@gmail.com>
To: Saeed Mahameed <saeedm@nvidia.com>
Message-ID: <20220202151707.GA2365@hoboy.vegasvil.org>
References: <30ed8220-e24d-4b40-c7a6-4b09c84f9a1f@gmail.com>
 <20220131121027.4fe3e8dc@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <7dc930c6-4ffc-0dd0-8385-d7956e7d16ff@gmail.com>
 <20220131151315.4ec5f2d3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <dd1497ca-b1da-311a-e5fc-7c7265eb3ddf@gmail.com>
 <20220202044603.tuchbk72iujdyxi4@sx1>
 <20220201205818.2f28cfe5@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20220202051609.h55eto4rdbfhw5t7@sx1>
 <8566b1e3-2c99-1e63-5606-aad8525a5378@csgroup.eu>
 <20220202064950.qyomo7ns27mbedds@sx1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220202064950.qyomo7ns27mbedds@sx1>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 Linus Walleij <linus.walleij@linaro.org>,
 "rafal@milecki.pl" <rafal@milecki.pl>,
 Horatiu Vultur <horatiu.vultur@microchip.com>,
 Andy Gospodarek <andy@greyhouse.net>, Edwin Peer <edwin.peer@broadcom.com>,
 Wei Liu <wei.liu@kernel.org>, Michal Simek <michal.simek@xilinx.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "linux-sunxi@lists.linux.dev" <linux-sunxi@lists.linux.dev>,
 Jiri Pirko <jiri@resnulli.us>,
 "l.stelmach@samsung.com" <l.stelmach@samsung.com>,
 Shay Agroskin <shayagr@amazon.com>, Randy Dunlap <rdunlap@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jon Mason <jdmason@kudzu.us>, Shannon Nelson <snelson@pensando.io>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Chris Snook <chris.snook@gmail.com>, Zhu Yanjun <zyjzyj2000@gmail.com>,
 Arthur Kiyanovski <akiyano@amazon.com>, Stefan Wahren <stefan.wahren@i2se.com>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, Gabriel Somlo <gsomlo@gmail.com>,
 Rain River <rain.1986.08.12@gmail.com>,
 Martin Habets <habetsm.xilinx@gmail.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Jose Abreu <Jose.Abreu@synopsys.com>,
 Shai Malin <smalin@marvell.com>, Maxime Ripard <mripard@kernel.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 "drivers@pensando.io" <drivers@pensando.io>,
 Omkar Kulkarni <okulkarni@marvell.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Vegard Nossum <vegard.nossum@oracle.com>, David Arinzon <darinzon@amazon.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Catherine Sullivan <csully@google.com>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 "oss-drivers@corigine.com" <oss-drivers@corigine.com>,
 Noam Dagan <ndagan@amazon.com>, Rob Herring <robh@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Steen Hegelund <steen.hegelund@microchip.com>,
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
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Prabhakar Kushwaha <pkushwaha@marvell.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>, Marcin Wojtas <mw@semihalf.com>,
 David Thompson <davthompson@nvidia.com>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Stephen Hemminger <stephen@networkplumber.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Feb 01, 2022 at 10:49:50PM -0800, Saeed Mahameed wrote:
> I can't think of a clever easily verifiable way to map boards to their VENDORS.
> Add to that dispersing the VENDORS configs accurately.

Just an idea...

1. make foo_defconfig
2. for each vendor, do scripts/config --disable vendor
3. make savedefconfig
4. compare defconfig with foo_defconfig
   difference means some MAC was removed

HTH,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
