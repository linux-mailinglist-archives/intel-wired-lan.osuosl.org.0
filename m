Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 69ED14A606F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Feb 2022 16:46:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 04213415CB;
	Tue,  1 Feb 2022 15:46:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I1gJ4afFaEgg; Tue,  1 Feb 2022 15:46:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EBBE04155E;
	Tue,  1 Feb 2022 15:46:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 153E21BF5DD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Feb 2022 15:46:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 002FF60F99
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Feb 2022 15:46:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gl8tmHfV5agm for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Feb 2022 15:46:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com
 [IPv6:2607:f8b0:4864:20::633])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6E44E60F97
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Feb 2022 15:46:38 +0000 (UTC)
Received: by mail-pl1-x633.google.com with SMTP id u11so15671570plh.13
 for <intel-wired-lan@lists.osuosl.org>; Tue, 01 Feb 2022 07:46:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1duiPJ9D66APDOG7Cvkpnw8gTrrTPpxxkkLXVcyp5tw=;
 b=nqkFhijWUsAOnFQSY7L7+PowKwdvHdK6mYqeIIu5lFEA9EF9QMNkf7Bt/Zx/QDohq6
 YivAU+vRTU1EuuvUH66yetuUUDOhpWh1a/uCc8loQ3/9Cvk9APRyLAXnx/l59lMt4Dcm
 V0SmMxn9cjPWWBt/gcpFD8KO1JmU+NYm9TSGXbHj/FS9QNs1E8XtO3wlJeg5rLUG6c9O
 GBE1BtLn45PDjPgxoVJsunD3YhQnrreRscE0qeYB5YVZoMVQIL5aQ5cxul8S+UQtdHdI
 7jJRpxUO6bPC+A2/WHNlrA/CsCPLWOie7tOtSrT2dAXkAfpkgXwdtBsiQGOCgN3OK34s
 gJNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1duiPJ9D66APDOG7Cvkpnw8gTrrTPpxxkkLXVcyp5tw=;
 b=mk2eAQ86KKCLPjXw7M2+O/HP6klYdVf6F7VLc0Z0fgKHL+/Abj13QVb1aYZ2K0ZuN9
 E8ZKumnUI7+O6TpoA9paL3Zi54r+6Pm9KBtVufJkPjwkhx8NAMbnuhnctMcVZk5nL6FT
 vEy0ok72dAnn1OMNuCJlHqVFnwHQEg7GrB0/c4Sx7Xq5UnaBfERtdPAgusLVf/qSOB5s
 /u4UROWYsX7uqKb1NDuLCjWSOYx+sBf0mK+FuWHRck+CC66vFXqArPYdTpT6ELFgKLgi
 MeTOi55vhTxm2pNPjJUuJtsZfHC7ccRTGwuqlVNHq1XepNeRp2e4a3mzB6zgNI67Zzlq
 PIjA==
X-Gm-Message-State: AOAM532Y9QqHPgiaIbxhv0nOjc17qr5U1qdxpO6Eqnx6q7y7RvVtf8Z1
 TA1QioNQ6aZEWeTQJpMlIbY=
X-Google-Smtp-Source: ABdhPJzsNX0ywpu34jXrUJ51YqKK9UTipV04rCv1O/FWGJmbyHYcax9i3DTkKCaIHErb5dmhU7X9lA==
X-Received: by 2002:a17:90b:4d05:: with SMTP id
 mw5mr3003128pjb.34.1643730397808; 
 Tue, 01 Feb 2022 07:46:37 -0800 (PST)
Received: from hoboy.vegasvil.org ([2601:640:8200:33:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id m21sm23278793pfk.26.2022.02.01.07.46.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Feb 2022 07:46:37 -0800 (PST)
Date: Tue, 1 Feb 2022 07:46:24 -0800
From: Richard Cochran <richardcochran@gmail.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20220201154624.GA4432@hoboy.vegasvil.org>
References: <20220131172450.4905-1-saeed@kernel.org>
 <20220131095905.08722670@hermes.local>
 <CAMuHMdU17cBzivFm9q-VwF9EG5MX75Qct=is=F2h+Kc+VddZ4g@mail.gmail.com>
 <20220131183540.6ekn3z7tudy5ocdl@sx1>
 <30ed8220-e24d-4b40-c7a6-4b09c84f9a1f@gmail.com>
 <09c97169-5f9a-fc8f-dea5-5423e7bfef34@twofifty.com>
 <Yfj2GTH3tHraprl0@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yfj2GTH3tHraprl0@unreal>
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
 Shai Malin <smalin@marvell.com>, Hisashi T Fujinaka <htodd@twofifty.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Maxime Ripard <mripard@kernel.org>,
 drivers@pensando.io, Omkar Kulkarni <okulkarni@marvell.com>,
 linux-arm-kernel@lists.infradead.org, Vegard Nossum <vegard.nossum@oracle.com>,
 David Arinzon <darinzon@amazon.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-renesas-soc@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Catherine Sullivan <csully@google.com>, linux-hyperv@vger.kernel.org,
 oss-drivers@corigine.com, Noam Dagan <ndagan@amazon.com>,
 Rob Herring <robh@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Steen Hegelund <steen.hegelund@microchip.com>,
 Dexuan Cui <decui@microsoft.com>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Joel Stanley <joel@jms.id.au>,
 Simon Horman <simon.horman@corigine.com>, Asmaa Mnebhi <asmaa@nvidia.com>,
 Arnd Bergmann <arnd@arndb.de>, Hans Ulli Kroll <ulli.kroll@googlemail.com>,
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
 Haiyang Zhang <haiyangz@microsoft.com>, Marcin Wojtas <mw@semihalf.com>,
 David Thompson <davthompson@nvidia.com>,
 Lars Povlsen <lars.povlsen@microchip.com>, netdev@vger.kernel.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Saeed Mahameed <saeedm@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Feb 01, 2022 at 10:58:01AM +0200, Leon Romanovsky wrote:
> No, kernel configs never were declared as ABI as "regular" users are not
> supposed to touch it. They use something provided by the distro.

+1
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
