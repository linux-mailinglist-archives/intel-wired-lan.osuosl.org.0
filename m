Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E374A76B5
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Feb 2022 18:20:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8A9CF405A4;
	Wed,  2 Feb 2022 17:20:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xZnk3Clsgxrl; Wed,  2 Feb 2022 17:20:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3872040535;
	Wed,  2 Feb 2022 17:20:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5D5471BF573
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 17:20:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 533D440535
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 17:20:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rVDh6U5AX98U for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Feb 2022 17:20:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CE8BD40439
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 17:20:29 +0000 (UTC)
Received: from mail-yb1-f175.google.com ([209.85.219.175]) by
 mrelayeu.kundenserver.de (mreue010 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1MG9Pg-1n0wlj0up2-00GctU for <intel-wired-lan@lists.osuosl.org>; Wed, 02 Feb
 2022 18:20:27 +0100
Received: by mail-yb1-f175.google.com with SMTP id 23so670653ybf.7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 02 Feb 2022 09:20:26 -0800 (PST)
X-Gm-Message-State: AOAM531KDU5T6fohRasJxNeT8v0/3owJpz8UA73f3uFlqBR7SFn2ydGZ
 q6unOZounhnSXL5Thkvm9U+ZmnaiMiI+sg+FeCE=
X-Google-Smtp-Source: ABdhPJz2O/9Dqb43FQaFEs2fgdQ11r4WChyB6XAjTgMFNwZoBX1IgqEBVLSxxOha4gVbBN3Qpzy/vvWlFqfDO4Fo+i8=
X-Received: by 2002:a05:6830:33c2:: with SMTP id
 q2mr16651474ott.368.1643815893880; 
 Wed, 02 Feb 2022 07:31:33 -0800 (PST)
MIME-Version: 1.0
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
 <20220202151707.GA2365@hoboy.vegasvil.org>
In-Reply-To: <20220202151707.GA2365@hoboy.vegasvil.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 2 Feb 2022 16:31:17 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3ZGFBmxUWm5-DT_QfvU0k8HViEbV4zhwwC8FJLMKZTYg@mail.gmail.com>
Message-ID: <CAK8P3a3ZGFBmxUWm5-DT_QfvU0k8HViEbV4zhwwC8FJLMKZTYg@mail.gmail.com>
To: Richard Cochran <richardcochran@gmail.com>
X-Provags-ID: V03:K1:TMBskkeW4xTpIDn/dnn8DwfJJ07xUCvu8uxNdRPryJUFGTWl6GS
 MUbPIMvsBsQRD3D69dkBlGNwz0YpnMiEf9NKcl8Nuw2HJJNJRdrDiPhrj+pigQwzwABNShf
 B2xGBLVv/8o7ZfMnu3rh8/pZhq6ueAbZnge5ipAoh2wQWK4vGNL4ZI2+IKEdmAXDC0mR8eR
 TyjDZ/FLTbxizGM/Ac2+A==
X-UI-Out-Filterresults: notjunk:1;V03:K0:JBcLNwohTs0=:4BqIT41/ImPTZkXO3brnRI
 8ZeyDMizTl2b9Uab9by5tRc5NZ7Sm75u9ZDHECp1I6gr5dkLAVSwCD2B8+S1cT8f3UK5/5GD/
 yZbYNqVvvbjx60mOShR1CiiMeq1MbIEMeP7Wx8Z0QRqewI2eYkk9MgzAvfi5kCbc6j3ceww7w
 RZHmBjG2tvdHaYBZNtK85tOz7nwbAqfMDu+YHx66KtMpk/T+lu2U8tog9FP3d/6UUXa8ZsFHh
 h7uxMU8D+ZjpH6VYV2pvA5G0ovKJZpQ+R773el8P/zP3LT17Qa+akbf/IB47164EJON5snD9Y
 n/WAXjszOwcw+UBqifoz1JxGCWVf+jS8TVDHivCqIG5wcQSC6bWuACZ7RHiTC84XxKaRnQ/Xt
 4ykCFm0zSS5ZsA5mbuOgz94rfJ+SKR7GHi1PwQmk4NL/r4FRyPLT93+iYEOLQy6XU/EF2JbtS
 gKXRfFyuR4ckfF/IqQ4bsKOcAlaBKWmQf7ehLCVqArWkCLcelhdYik1GJ4OzmmCYsrx17FKJz
 7sXXJDV5TMc47fYlJOLKBtiOS5xcw4a5AJJj/qToGPO2n8wTTtfMZx8jvwjU1qFqMkvsV4f8a
 BJZNeDw2+loKU5sRHos/WRxzvBkJMWbvi4d+d9q+DJD3zQXbEEwLw5+2UennDPdVtbkqRY65c
 fniMaP+DYn/zf+k6ipTfObMS9yjPDlA7jIEiUnPvn0BxCi3vd6+ZK6VLCUTQhr4VeFCbZP2dP
 BlYwDPdrHrrJrgrZ6IhsHuw6v0at9m6L4DVwJcIWJKDy0z0X8z8gUMzmO27tEnOphVRtKV7Kv
 xl3i1lNKvrt5ZHmjuXDGy+QViP+Cd2VeqSQx4aZsbS7myb6KiTw8Ris1XpXRfiaS3JVkHFm
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
 Stephen Hemminger <stephen@networkplumber.org>,
 Saeed Mahameed <saeedm@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Feb 2, 2022 at 4:17 PM Richard Cochran <richardcochran@gmail.com> wrote:
>
> On Tue, Feb 01, 2022 at 10:49:50PM -0800, Saeed Mahameed wrote:
> > I can't think of a clever easily verifiable way to map boards to their VENDORS.
> > Add to that dispersing the VENDORS configs accurately.
>
> Just an idea...
>
> 1. make foo_defconfig
> 2. for each vendor, do scripts/config --disable vendor
> 3. make savedefconfig
> 4. compare defconfig with foo_defconfig
>    difference means some MAC was removed

This needs an extra 'savedefconfig' step in the beginning, as a lot of
the defconfig
files are already different from what you get after savedefconfig, both in the
order of options, and in options that got renamed or removed over time.

         Arnd
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
