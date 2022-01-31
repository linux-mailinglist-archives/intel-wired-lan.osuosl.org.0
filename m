Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7804A4FDB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Jan 2022 21:10:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8D8274017A;
	Mon, 31 Jan 2022 20:10:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vkHdFwm3IuLE; Mon, 31 Jan 2022 20:10:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 41BCB40125;
	Mon, 31 Jan 2022 20:10:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 070901BF36A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 20:10:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E03D340125
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 20:10:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ridy_cJrDaNw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jan 2022 20:10:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C635E40120
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 20:10:33 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 218566147D;
 Mon, 31 Jan 2022 20:10:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CED1C340E8;
 Mon, 31 Jan 2022 20:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643659831;
 bh=db3019ER3yHKwYvfr1vDrkC0pSuWFsBGKycjXxPwonk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=b0BjUSE02/Lk9W7l6kNn8GCVBmeFqqRvSdMJB07B0CUhVQyPW1NURhoB+dnhBiU+W
 JBtWhDM36yQbPoBdEN96aO+suz6byn7zIJ6Eq6jO2bocu5K/blX9MyRaU/oaLJB92y
 FIro4AT9qeG6/0KFZv/ZvSlzM9COMAqqAY9MkSpSUmHGDdcSwzONr1LAsQAXgUAgEo
 9wi374x5enP+6A2x50TIBWRdDa34SvB37UqbV2NfGYIcWDP1OykvHH5AlrFFKGZbyU
 I7Zfogab/rvVHRDnpTn5D9o0mHdsCIV5+zCngZSy+ddRUPNUUW3TOomCt/K7JOMzTc
 ljRqLy0jmlm9w==
Date: Mon, 31 Jan 2022 12:10:27 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <20220131121027.4fe3e8dc@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <30ed8220-e24d-4b40-c7a6-4b09c84f9a1f@gmail.com>
References: <20220131172450.4905-1-saeed@kernel.org>
 <20220131095905.08722670@hermes.local>
 <CAMuHMdU17cBzivFm9q-VwF9EG5MX75Qct=is=F2h+Kc+VddZ4g@mail.gmail.com>
 <20220131183540.6ekn3z7tudy5ocdl@sx1>
 <30ed8220-e24d-4b40-c7a6-4b09c84f9a1f@gmail.com>
MIME-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 31 Jan 2022 10:40:38 -0800 Florian Fainelli wrote:
> >> And changing the defaults means all defconfigs must be updated first,
> >> else the user's configs will end up without drivers needed.
> >>  
> > 
> > As I understand correctly, at least for most common net drivers, having 
> > NET_VENDOR_XYZ=y doesn't actually build anything, we have flags per
> > module for each vendor and those are defaulted to N.  
> 
> Right, but once you start hiding NET_VENDOR_DRIVER_XYZ under a 
> NET_VENDOR_XYZ Kconfig symbol dependency, if NET_VENDOR_XYZ is not set 
> to Y, then you have no way to select NET_VENDOR_DRIVER_XYZ and so your 
> old defconfig breaks.

To be clear do we actually care about *old* configs or *def* configs?

Breaking defconfigs seems bad, but I don't think we can break
reasonable oldconfigs at this point?

> >> It might make sense to tune some of the defaults (i.e. change to
> >> "default y if ARCH_*") for drivers with clear platform dependencies.
> >>  
> > 
> > either set hard default to 'n' or just keep it as is, anything else is just
> > more confusion.  
> 
> Maybe the rule should go like this: any new driver vendor defaults to n, 
> and existing ones remain set to y, until we deprecate doing that and 
> switching them all off to n by 5.18?

I'd be afraid that given the work of fixing up defconfigs is
non-trivial we may end up never switching old drivers. And then we'd
have a semi-random soup of defaults :(
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
