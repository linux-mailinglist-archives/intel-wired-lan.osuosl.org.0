Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C40E84A4F3C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Jan 2022 20:13:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4808B817AD;
	Mon, 31 Jan 2022 19:13:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JWBMzIjx4443; Mon, 31 Jan 2022 19:13:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 45CEA817AA;
	Mon, 31 Jan 2022 19:13:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 423191BF379
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 19:13:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 26D614046D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 19:13:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ghwZPpTQp0ZN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jan 2022 19:13:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0E59D404EF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 19:13:33 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id
 h20-20020a17090adb9400b001b518bf99ffso102704pjv.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 11:13:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=YZVTL02trY93bXBvFab8GWC4SGTBEHx7xoM5zz31pOg=;
 b=eI59J5vvr0A8RKxUqyE9NUAu6vFBo9JLnOmw0puMQZUEm4dF2MWwJqfR/ZL08CAxWZ
 BnWoSz1sTio7BAV9whmwWT6xUhgWC6Lo5BK4+b2sM6VIImC2/K/OnoTgvKSA94C7mdon
 itSGEALfsQg4ZMdAZ+hZz6HnPPJcZllFKFyICnD2+E8AyYxfPrqC9UOqTS0CeUtdusV1
 D4fD1+rjOl4c4TOP+xFamd2c429GVwsIuvmsUAgjkAklhb5p0GonFbMhGG1gbEVHUG3W
 T9o9E6puaKCHgmEkfQ64cDBJQP0R4HnPSY65B2EhBCUypXC4/lvWzE2EgRcc1SWQbOpz
 19og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=YZVTL02trY93bXBvFab8GWC4SGTBEHx7xoM5zz31pOg=;
 b=7eNyEK3DsYzXUDtJc1dR3du0QaPzJEQaSV4huTqf62L1fDtFQBM4llKfqfPw2z+PMM
 rCD47jLtJeR3cdzST8JGtcz8G88Y6Uwpse7g/OSvSSt4QbtSOXwreZxnVr8tnx6BxZrM
 SVq+DBzwNIeatb6wK7DwIxpkcbEHF+3H5cqRbIbyWf48hxYZj8dWgZpGo/3J5p/p2GRM
 iwqHyBntb+hZjBM/M+iq6G54eWgcNRWNbDBPcqFkPYfmLKLxEGZ2F7pXc1jwOrsSTCKt
 jlukKkXrghZMbZ2vsR6Nj9WVsTp5dndG41xHeRlBfkscFekKa0UrXkO4aBP8NhOSAClm
 /L3w==
X-Gm-Message-State: AOAM530ijcPQxCoyQREGA7kGro2k20zBERzGM1tyeDbyvnJnnWJK+oOb
 T4GoIza8zVsa+MVEqy8hCzM=
X-Google-Smtp-Source: ABdhPJxZc+Bj3ecmVnKia223vAFW8JsKNa9KxQkDpM9AJ8KxEqdBZ0FJgWcicwws5wLqU29X67c1ZA==
X-Received: by 2002:a17:902:e885:: with SMTP id
 w5mr22303795plg.155.1643656413464; 
 Mon, 31 Jan 2022 11:13:33 -0800 (PST)
Received: from hoboy.vegasvil.org ([2601:640:8200:33:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id mj23sm95941pjb.54.2022.01.31.11.13.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Jan 2022 11:13:32 -0800 (PST)
Date: Mon, 31 Jan 2022 11:13:20 -0800
From: Richard Cochran <richardcochran@gmail.com>
To: Shannon Nelson <snelson@pensando.io>
Message-ID: <20220131191320.GA24296@hoboy.vegasvil.org>
References: <20220131172450.4905-1-saeed@kernel.org>
 <e9e124b0-4ea0-e84c-cd8e-1c6ad4df9d74@pensando.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e9e124b0-4ea0-e84c-cd8e-1c6ad4df9d74@pensando.io>
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
 Christophe Leroy <christophe.leroy@csgroup.eu>, linux-sunxi@lists.linux.dev,
 Jiri Pirko <jiri@resnulli.us>, l.stelmach@samsung.com,
 Shay Agroskin <shayagr@amazon.com>, Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, Jon Mason <jdmason@kudzu.us>,
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
 UNGLinuxDriver@microchip.com, linux-renesas-soc@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Catherine Sullivan <csully@google.com>, linux-hyperv@vger.kernel.org,
 oss-drivers@corigine.com, Noam Dagan <ndagan@amazon.com>,
 Rob Herring <robh@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
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
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Prabhakar Kushwaha <pkushwaha@marvell.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>, Marcin Wojtas <mw@semihalf.com>,
 David Thompson <davthompson@nvidia.com>,
 Lars Povlsen <lars.povlsen@microchip.com>, netdev@vger.kernel.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Saeed Mahameed <saeedm@nvidia.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jan 31, 2022 at 10:04:40AM -0800, Shannon Nelson wrote:
> Is there a particular reason to change this?
> Broken compiles?=A0 Bad drivers?=A0 Over-sized output?

Having default Y is a PITA to people working on an embedded design
that has just one working MAC.  It means having to scroll through tons
of empty stuff when doing `make menuconfig`

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
