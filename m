Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 848E84A4F48
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Jan 2022 20:17:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C5253405F1;
	Mon, 31 Jan 2022 19:17:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9_1IBmMVhK-V; Mon, 31 Jan 2022 19:17:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8796B404EF;
	Mon, 31 Jan 2022 19:17:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 530281BF379
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 19:17:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3515482538
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 19:17:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W17QODau6Hol for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jan 2022 19:17:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com
 [IPv6:2607:f8b0:4864:20::42f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8A0ED823E2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 19:17:19 +0000 (UTC)
Received: by mail-pf1-x42f.google.com with SMTP id v74so13722135pfc.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 11:17:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7wtjFpATqKxdnDVdQqBB52ek5BkdZ1ljUXCnQMzA+YE=;
 b=X8YBNplQcnUZETMeJkil7YzspkzyBjdzevD8S5EhCJDlexq9s5syiK29gaXExTCG9x
 cBTU4EIAqxFlGcVOy9dLDJTNSr8PAc4KzWn9FXQJCMazJQ14zhMbaFZmdKsT3ySvFcC5
 +r3lQiYQjSJ1Bqpk0g5MKjOK+eUXoYnoOQAyFGhH3u1XL9W7Xvaold+XHeW+20yzb+l/
 HhmEKhdp51lSJjNPWNl/R7wrixvFWjSroT2+z5gRPJ8Qp0ZGv6Dn+lVgXj1OCWm+Sm0V
 TO33xQ1scBCqlq/eQbn3dfG86QcgRdVDfAVm0dM/1ATO/ZU/p9KluVFrM9Y+mm2Oq9/E
 aRow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7wtjFpATqKxdnDVdQqBB52ek5BkdZ1ljUXCnQMzA+YE=;
 b=Y5Ie/JqIp3+MTTqxjneHuH38IY1P57BlkuFiVnb6Iog9esaa/n09P8XHEnnGz+rCLt
 PxL0e4B66tS8CfsIB96ms2e3kmgT1TrqxLjwubomsgy6MgR116X/FSYClKUfGvVv5FfS
 ANWGFISQ6kKvAccQkLu+MTy/sRQDejbv0trSMeDauXWcXF+vQmQ2ROxZe9Kis/WRATNX
 TrQ6WCS/Rg4+HAPPHwxRbtQY2k1vf/Rjox6VXp87D6ZKTUrlo93JyIBay71VSyErjYJK
 +pJXDEVI1BbC+YC/YhLTpqZLGY4bs3a23bnWaWyAOWRciim7UVFhaGdnBWzHS0OlS7Fw
 zezQ==
X-Gm-Message-State: AOAM533+Njo+wUkHA6/wRJkB5EPtKJZv6VGaamobtYVOEN1DTi+qVJO1
 xfhjBYaauFMFNP1HKPZQ+aY=
X-Google-Smtp-Source: ABdhPJw11SX7kE9IxFaA0cpVmnKqPcCpGWxwTpOmHd3nspKT1jSnGEI0CQL4NBBvb5g7vvfFUUbwng==
X-Received: by 2002:a63:1d4a:: with SMTP id d10mr18068276pgm.92.1643656638979; 
 Mon, 31 Jan 2022 11:17:18 -0800 (PST)
Received: from hoboy.vegasvil.org ([2601:640:8200:33:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id j18sm19961074pfj.13.2022.01.31.11.17.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Jan 2022 11:17:18 -0800 (PST)
Date: Mon, 31 Jan 2022 11:17:06 -0800
From: Richard Cochran <richardcochran@gmail.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <20220131191706.GB24296@hoboy.vegasvil.org>
References: <20220131172450.4905-1-saeed@kernel.org>
 <20220131095905.08722670@hermes.local>
 <CAMuHMdU17cBzivFm9q-VwF9EG5MX75Qct=is=F2h+Kc+VddZ4g@mail.gmail.com>
 <20220131183540.6ekn3z7tudy5ocdl@sx1>
 <30ed8220-e24d-4b40-c7a6-4b09c84f9a1f@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <30ed8220-e24d-4b40-c7a6-4b09c84f9a1f@gmail.com>
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
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Prabhakar Kushwaha <pkushwaha@marvell.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>, Marcin Wojtas <mw@semihalf.com>,
 David Thompson <davthompson@nvidia.com>,
 Lars Povlsen <lars.povlsen@microchip.com>, netdev@vger.kernel.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Saeed Mahameed <saeedm@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jan 31, 2022 at 10:40:38AM -0800, Florian Fainelli wrote:

> Maybe the rule should go like this: any new driver vendor defaults to n, and
> existing ones remain set to y, until we deprecate doing that and switching
> them all off to n by 5.18?

+1

Actually, I wouldn't mind breaking old configs.  Why?  Because never
once have MY configs ever survived a kernel upgrade.  Manual fix ups
are always needed.

Nobody cares about my configs, so why should I care about theirs?

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
