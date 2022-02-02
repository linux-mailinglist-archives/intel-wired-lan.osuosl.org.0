Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 774044A6B1B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Feb 2022 05:58:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C19704021C;
	Wed,  2 Feb 2022 04:58:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sPoryrtMpgf1; Wed,  2 Feb 2022 04:58:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5C9C14018D;
	Wed,  2 Feb 2022 04:58:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1CB871BF380
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 04:58:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 00BB3402D8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 04:58:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LtwNeacLD_80 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Feb 2022 04:58:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EE4B2402B8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 04:58:25 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 0B059B83007;
 Wed,  2 Feb 2022 04:58:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8BC50C004E1;
 Wed,  2 Feb 2022 04:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643777902;
 bh=3R1brSBq8s2swVV3kMHwHt7HZxFvwsGSwnLUB8YoKTk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=qYPsl6kmBXicSMJRej/pS/2fURkTz2mm+tAC3SA3enCS27v0Yj+scLV7zlGMfZfxD
 QbB4FpDEvQnoWpm5JFro5DS1cE+tYzdRGCXbVNfY6h7ED8/9iZB1OsU74z9oKtMPjF
 qoAGLExZziJMB8zSCuSp3Y60vcRh9kG1j8q75s3zeQ2BUyl/zO7dy+H4q9ffRHFKv2
 ZCkMwxmyzQW+L3j0QG3Sh/NZe5VbqmK0spmcTiaNg0OD1RsGH68vM3Yt0K81J7IML+
 ENvyz35TnKgkFlj2O03s12dvc2k4GdL5DU/miCODdF9IgLZhJzf7FLRJPV95s+UjMi
 L8ydXhJozy31Q==
Date: Tue, 1 Feb 2022 20:58:18 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Saeed Mahameed <saeedm@nvidia.com>
Message-ID: <20220201205818.2f28cfe5@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20220202044603.tuchbk72iujdyxi4@sx1>
References: <20220131172450.4905-1-saeed@kernel.org>
 <20220131095905.08722670@hermes.local>
 <CAMuHMdU17cBzivFm9q-VwF9EG5MX75Qct=is=F2h+Kc+VddZ4g@mail.gmail.com>
 <20220131183540.6ekn3z7tudy5ocdl@sx1>
 <30ed8220-e24d-4b40-c7a6-4b09c84f9a1f@gmail.com>
 <20220131121027.4fe3e8dc@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <7dc930c6-4ffc-0dd0-8385-d7956e7d16ff@gmail.com>
 <20220131151315.4ec5f2d3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <dd1497ca-b1da-311a-e5fc-7c7265eb3ddf@gmail.com>
 <20220202044603.tuchbk72iujdyxi4@sx1>
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
 intel-wired-lan@lists.osuosl.org, Prabhakar Kushwaha <pkushwaha@marvell.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Richard Cochran <richardcochran@gmail.com>, Marcin Wojtas <mw@semihalf.com>,
 David Thompson <davthompson@nvidia.com>,
 Lars Povlsen <lars.povlsen@microchip.com>, netdev@vger.kernel.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Stephen Hemminger <stephen@networkplumber.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 1 Feb 2022 20:46:03 -0800 Saeed Mahameed wrote:
> I am getting mixed messages here, on one hand we know that this patch
> might break some old or def configs, but on the other hand people claim
> that they have to manually fixup their own configs every time 
> "something in configs" changes and they are fine with that. 
> 
> Obviously I belong to the 2nd camp, hence this patch..
> 
> I can sum it up with "it's fine to controllably break *some* .configs for 
> the greater good" .. that's my .2cent.

I think we agree that we don't care about oldconfigs IOW someone's
random config.

But we do care about defconfigs in the tree, if those indeed include
ethernet drivers which would get masked out by vendor=n - they need
fixin':

$ find arch/ | grep defconfig
arch/x86/configs/i386_defconfig
arch/x86/configs/x86_64_defconfig
arch/ia64/configs/generic_defconfig
arch/ia64/configs/gensparse_defconfig
...

First one from the top:

$ make O=build_tmp/ i386_defconfig
$ $EDITOR drivers/net/ethernet/intel/Kconfig
$ git diff
diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index 3facb55b7161..b9fdf2a835b0 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -5,7 +5,6 @@
 
 config NET_VENDOR_INTEL
        bool "Intel devices"
-       default y
        help
          If you have a network (Ethernet) card belonging to this class, say Y.
 
$ make O=build_tmp/ i386_defconfig
$ diff -urpb build_tmp/.config.old build_tmp/.config
--- build_tmp/.config.old	2022-02-01 20:55:37.087373905 -0800
+++ build_tmp/.config	2022-02-01 20:56:32.126044628 -0800
@@ -1784,22 +1784,7 @@ CONFIG_NET_VENDOR_GOOGLE=y
 # CONFIG_GVE is not set
 CONFIG_NET_VENDOR_HUAWEI=y
 # CONFIG_HINIC is not set
-CONFIG_NET_VENDOR_I825XX=y
-CONFIG_NET_VENDOR_INTEL=y
-CONFIG_E100=y
-CONFIG_E1000=y
-CONFIG_E1000E=y
-CONFIG_E1000E_HWTS=y
-# CONFIG_IGB is not set
-# CONFIG_IGBVF is not set
-# CONFIG_IXGB is not set
-# CONFIG_IXGBE is not set
-# CONFIG_IXGBEVF is not set
-# CONFIG_I40E is not set
-# CONFIG_I40EVF is not set
-# CONFIG_ICE is not set
-# CONFIG_FM10K is not set
-# CONFIG_IGC is not set
+# CONFIG_NET_VENDOR_INTEL is not set
 CONFIG_NET_VENDOR_MICROSOFT=y
 # CONFIG_JME is not set
 CONFIG_NET_VENDOR_LITEX=y
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
