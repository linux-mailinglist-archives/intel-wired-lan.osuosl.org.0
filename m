Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B70BE4A58DE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Feb 2022 09:59:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4855D60F74;
	Tue,  1 Feb 2022 08:59:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RBiTYA14aWgc; Tue,  1 Feb 2022 08:59:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20C4960F67;
	Tue,  1 Feb 2022 08:59:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 61AD91BF20B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Feb 2022 08:59:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 484E040959
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Feb 2022 08:59:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wiVo_5W5wEFH for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Feb 2022 08:59:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 20CE7402C3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Feb 2022 08:59:21 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id DCB4C614C6;
 Tue,  1 Feb 2022 08:58:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98DCAC340EB;
 Tue,  1 Feb 2022 08:58:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643705885;
 bh=LJC9n48OTYLp63zl+exwNah6LkVop56GME45IY3BMi8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fIyx4WxNNVEXVLk59f/rhXF1OskrwHehVQ/uiBgXfDkxSWC28qHfoCuo32ZdPZIup
 PH/+qCMHCt7OEQ10bCaoOMnjXcGCIhf5xYnN/nwdS1KNvwoyVThqCcBj4pBObozPI1
 UF0qUANT0A4nkVbkvOk9NnY7JvKxfhxLjrUJ3/MxA/HKZByHw70vq+gBJ5XDhR9jaE
 13VvHn/1gEknI6TC2aISYAbrXHAAnt1QkOwFlj8up2XHAITP5Qs8eioVuSxP8DN95q
 TN3s9dP8bi51bPvGzhNyIp758G5dm1qJzAJWBtyfYPw1300wt0mzSIdQ5jl0THB4GW
 ysMV9eZksg/qA==
Date: Tue, 1 Feb 2022 10:58:01 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Hisashi T Fujinaka <htodd@twofifty.com>
Message-ID: <Yfj2GTH3tHraprl0@unreal>
References: <20220131172450.4905-1-saeed@kernel.org>
 <20220131095905.08722670@hermes.local>
 <CAMuHMdU17cBzivFm9q-VwF9EG5MX75Qct=is=F2h+Kc+VddZ4g@mail.gmail.com>
 <20220131183540.6ekn3z7tudy5ocdl@sx1>
 <30ed8220-e24d-4b40-c7a6-4b09c84f9a1f@gmail.com>
 <09c97169-5f9a-fc8f-dea5-5423e7bfef34@twofifty.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <09c97169-5f9a-fc8f-dea5-5423e7bfef34@twofifty.com>
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
 Haiyang Zhang <haiyangz@microsoft.com>,
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

On Mon, Jan 31, 2022 at 10:55:14AM -0800, Hisashi T Fujinaka wrote:
> On Mon, 31 Jan 2022, Florian Fainelli wrote:
> 
> > On 1/31/2022 10:35 AM, Saeed Mahameed wrote:
> > > On 31 Jan 19:30, Geert Uytterhoeven wrote:
> > > > On Mon, Jan 31, 2022 at 6:59 PM Stephen Hemminger
> > > > <stephen@networkplumber.org> wrote:
> > > > > On Mon, 31 Jan 2022 09:24:50 -0800
> > > > > Saeed Mahameed <saeed@kernel.org> wrote:
> > > > > 
> > > > > > From: Saeed Mahameed <saeedm@nvidia.com>
> > > > > >
> > > > > > NET_VENDOR_XYZ were defaulted to 'y' for no technical reason.
> > > > > >
> > > > > > Since all drivers belonging to a vendor are supposed to default to 'n',
> > > > > > defaulting all vendors to 'n' shouldn't be an issue, and aligns well
> > > > > > with the 'no new drivers' by default mentality.
> > > > > >
> > > > > > Signed-off-by: Saeed Mahameed <saeedm@nvidia.com>
> > > > > 
> > > > > This was done back when vendors were introduced in the
> > > > > network drivers tree.
> > > > > The default of Y allowed older configurations to just work.
> > > > 
> > > > And changing the defaults means all defconfigs must be updated first,
> > > > else the user's configs will end up without drivers needed.
> > > > 
> > > 
> > > As I understand correctly, at least for most common net drivers,
> > > having NET_VENDOR_XYZ=y doesn't actually build anything, we have
> > > flags per
> > > module for each vendor and those are defaulted to N.
> > 
> > Right, but once you start hiding NET_VENDOR_DRIVER_XYZ under a
> > NET_VENDOR_XYZ Kconfig symbol dependency, if NET_VENDOR_XYZ is not set
> > to Y, then you have no way to select NET_VENDOR_DRIVER_XYZ and so your
> > old defconfig breaks.
> > 
> > > 
> > > > > So there was a reason, not sure if it matters anymore.
> > > > > But it seems like useless repainting to change it now.
> > > > 
> > > > It might make sense to tune some of the defaults (i.e. change to
> > > > "default y if ARCH_*") for drivers with clear platform dependencies.
> > > > 
> > > 
> > > either set hard default to 'n' or just keep it as is, anything else is just
> > > more confusion.
> > 
> > Maybe the rule should go like this: any new driver vendor defaults to n,
> > and existing ones remain set to y, until we deprecate doing that and
> > switching them all off to n by 5.18?
> 
> Forgive my ignorance, but isn't it a regression if things quit working
> even if it's just a configuration change?

No, kernel configs never were declared as ABI as "regular" users are not
supposed to touch it. They use something provided by the distro.

> 
> From a user perspective I like having everything turned on initially so
> it just works. Pruning things down is a lot easier than trying to figure
> out what all to turn on. Especially in graphics.

I have completely opposite view here and prefer to have minimal config
for my CI, and for my working machines as well. 

Thanks

> 
> -- 
> Hisashi T Fujinaka - htodd@twofifty.com
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
