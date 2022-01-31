Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E54FB4A4E56
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Jan 2022 19:31:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9072660EE8;
	Mon, 31 Jan 2022 18:31:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9P9hXrnawLeJ; Mon, 31 Jan 2022 18:31:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 88D4960EDD;
	Mon, 31 Jan 2022 18:31:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 96C691BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 18:31:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 774A440129
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 18:31:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2NcRRvlxVr9M for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jan 2022 18:31:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com
 [209.85.221.173])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 374EF40122
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 18:31:14 +0000 (UTC)
Received: by mail-vk1-f173.google.com with SMTP id 48so8900745vki.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 10:31:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tAq3Aw1ybEeRSqT/qCBaoBSWDhM07pp4fGD0hDfaeXE=;
 b=FELbEKiSSGnfhUN3iFVZwl3d7YismLKr0a8M8vzNJx2m0kTJKW+5nI8cdK7xzoeyOW
 CDhkrLzEsCVbDxibW8ES8hq2m4DtKqGNBQYDNclnpp2sqhK/8nFdL5gVuOGH/h80Li1L
 HJhZoDqk7Kve+qn1Blcv0I8NcVNZnirTSDQ3bGem28HeZIPAxDBw4YU7dP2tH98I24BO
 zFySH+1fwhnGOO2WiIHz4e2e13/Q4WvSaeuULfN2BqEPsDn+iRiSDG562/Tg6r5dzv9z
 pyCBtnyZNpKIAFmsqEnYtBN23wZii0SqYWCime7vB/d5/Fd53Ne7xfNc9L2M6qRjNwL6
 ip1Q==
X-Gm-Message-State: AOAM5317K7mhfs4c02itqaUccUrFLyRfy/vw0/N1ozVb+d+cGVtNtMFA
 7TKVvtHXhLUX3yErceDaRq9JHjhxgWZOZJWN
X-Google-Smtp-Source: ABdhPJwBOL0sOHNC/HpxV1Oxc046tTYhniG/n/A9dBWGcLa7v8YyrJclv5TmdOpvLBxYPUI0dGA3Mw==
X-Received: by 2002:a05:6122:134e:: with SMTP id
 f14mr8843802vkp.4.1643653873704; 
 Mon, 31 Jan 2022 10:31:13 -0800 (PST)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com.
 [209.85.222.47])
 by smtp.gmail.com with ESMTPSA id r11sm4793757uaw.7.2022.01.31.10.31.12
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 31 Jan 2022 10:31:13 -0800 (PST)
Received: by mail-ua1-f47.google.com with SMTP id p7so12378522uao.6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 10:31:12 -0800 (PST)
X-Received: by 2002:ab0:44c:: with SMTP id 70mr9021725uav.78.1643653861178;
 Mon, 31 Jan 2022 10:31:01 -0800 (PST)
MIME-Version: 1.0
References: <20220131172450.4905-1-saeed@kernel.org>
 <20220131095905.08722670@hermes.local>
In-Reply-To: <20220131095905.08722670@hermes.local>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 31 Jan 2022 19:30:48 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU17cBzivFm9q-VwF9EG5MX75Qct=is=F2h+Kc+VddZ4g@mail.gmail.com>
Message-ID: <CAMuHMdU17cBzivFm9q-VwF9EG5MX75Qct=is=F2h+Kc+VddZ4g@mail.gmail.com>
To: Stephen Hemminger <stephen@networkplumber.org>
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
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Richard Cochran <richardcochran@gmail.com>, Marcin Wojtas <mw@semihalf.com>,
 David Thompson <davthompson@nvidia.com>,
 Lars Povlsen <lars.povlsen@microchip.com>, netdev@vger.kernel.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Saeed Mahameed <saeedm@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jan 31, 2022 at 6:59 PM Stephen Hemminger
<stephen@networkplumber.org> wrote:
> On Mon, 31 Jan 2022 09:24:50 -0800
> Saeed Mahameed <saeed@kernel.org> wrote:
>
> > From: Saeed Mahameed <saeedm@nvidia.com>
> >
> > NET_VENDOR_XYZ were defaulted to 'y' for no technical reason.
> >
> > Since all drivers belonging to a vendor are supposed to default to 'n',
> > defaulting all vendors to 'n' shouldn't be an issue, and aligns well
> > with the 'no new drivers' by default mentality.
> >
> > Signed-off-by: Saeed Mahameed <saeedm@nvidia.com>
>
> This was done back when vendors were introduced in the network drivers tree.
> The default of Y allowed older configurations to just work.

And changing the defaults means all defconfigs must be updated first,
else the user's configs will end up without drivers needed.

> So there was a reason, not sure if it matters anymore.
> But it seems like useless repainting to change it now.

It might make sense to tune some of the defaults (i.e. change to
"default y if ARCH_*") for drivers with clear platform dependencies.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
