Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 356D75A6F3D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Aug 2022 23:40:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 44502828B5;
	Tue, 30 Aug 2022 21:39:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 44502828B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661895599;
	bh=Xfo+jZDKTBjoyd22wRBWB/dowoRdqMoa7aC9BF2wq+M=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OxLGfZm5l92Q9QqNf/FyXxmkoZWKgmb0t6dK2apayhzyCzo2XO3ysBHMD7fdfaPRK
	 Wx5PkSWAtKLgd489DX0pDsOD3Hn5mpcIz/lWtUfJLXp+Mj8Ffqo0OvQnDbUCCkRzXL
	 UhA84ne/Po+dULdPVZPB8ZOvysTNkpL6YzIjlGNr07gb7RBfz0ggfvsqufBUX+yul4
	 kJ5Umq2EPJrQB9fhFvABIvO+dRBqGDnqraQ5KgmbSspnCjehiI/sWm4Ex2xf7qQWse
	 2Tgi0HXa0YUgrwsBrAEa7UjzWSWogV3yNsfVzxvHWwi39cob9uk5H/jmj9b+1lzsI0
	 vTZFLKjfmw19A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q0q2Ue2XwU9C; Tue, 30 Aug 2022 21:39:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 06A2F828AA;
	Tue, 30 Aug 2022 21:39:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 06A2F828AA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DBA8B1BF228
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 19:59:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B556F61004
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 19:59:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B556F61004
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lB34Nc_xaP8X for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Aug 2022 19:59:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E64060FE1
Received: from mail.zeus03.de (www.zeus03.de [194.117.254.33])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0E64060FE1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 19:59:50 +0000 (UTC)
Received: (qmail 417445 invoked from network); 30 Aug 2022 21:59:10 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted,
 authenticated); 30 Aug 2022 21:59:10 +0200
X-UD-Smtp-Session: l3s3148p1@xaob0HrnKMEgAwDtxxrgAFH1RcxMblwv
Date: Tue, 30 Aug 2022 21:59:06 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <Yw5sCpdgdR9k/mgs@shikoro>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Jakub Kicinski <kuba@kernel.org>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Jay Vosburgh <j.vosburgh@gmail.com>,
 Veaceslav Falico <vfalico@gmail.com>,
 Andy Gospodarek <andy@greyhouse.net>,
 Wolfgang Grandegger <wg@grandegger.com>,
 Marc Kleine-Budde <mkl@pengutronix.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Andrew Lunn <andrew@lunn.ch>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 Steffen Klassert <klassert@kernel.org>,
 David Dillow <dave@thedillows.org>,
 Russell King <linux@armlinux.org.uk>,
 Ion Badulescu <ionut@badula.org>,
 Andreas Larsson <andreas@gaisler.com>,
 Mark Einon <mark.einon@gmail.com>,
 Lino Sanfilippo <LinoSanfilippo@gmx.de>,
 Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>,
 Jes Sorensen <jes@trained-monkey.org>,
 Shay Agroskin <shayagr@amazon.com>,
 Arthur Kiyanovski <akiyano@amazon.com>,
 David Arinzon <darinzon@amazon.com>, Noam Dagan <ndagan@amazon.com>,
 Saeed Bishara <saeedb@amazon.com>, Don Fry <pcnet32@frontier.com>,
 Tom Lendacky <thomas.lendacky@amd.com>,
 Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
 Igor Russkikh <irusskikh@marvell.com>,
 Chris Snook <chris.snook@gmail.com>,
 Michael Chan <michael.chan@broadcom.com>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Rasesh Mody <rmody@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
 Ariel Elior <aelior@marvell.com>,
 Sudarsana Kalluru <skalluru@marvell.com>,
 Manish Chopra <manishc@marvell.com>,
 Doug Berger <opendmb@gmail.com>,
 Siva Reddy Kallam <siva.kallam@broadcom.com>,
 Prashant Sreedharan <prashant@broadcom.com>,
 Sunil Goutham <sgoutham@marvell.com>,
 Raju Rangoju <rajur@chelsio.com>,
 Ayush Sawal <ayush.sawal@chelsio.com>,
 Vinay Kumar Yadav <vinay.yadav@chelsio.com>,
 Rohit Maheshwari <rohitm@chelsio.com>,
 Hartley Sweeten <hsweeten@visionengravers.com>,
 Christian Benvenuti <benve@cisco.com>,
 Govindarajulu Varadarajan <_govind@gmx.com>,
 Denis Kirjanov <kda@linux-powerpc.org>,
 Ajit Khaparde <ajit.khaparde@broadcom.com>,
 Sriharsha Basavapatna <sriharsha.basavapatna@broadcom.com>,
 Somnath Kotur <somnath.kotur@broadcom.com>,
 Madalin Bucur <madalin.bucur@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Joakim Zhang <qiangqing.zhang@nxp.com>,
 Pantelis Antoniou <pantelis.antoniou@gmail.com>,
 Li Yang <leoyang.li@nxp.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Salil Mehta <salil.mehta@huawei.com>,
 Douglas Miller <dougmill@linux.ibm.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Nicholas Piggin <npiggin@gmail.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Nick Child <nnac123@linux.ibm.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Guo-Fu Tseng <cooldavid@cooldavid.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Marcin Wojtas <mw@semihalf.com>,
 Geetha sowjanya <gakula@marvell.com>,
 Subbaraya Sundeep <sbhatta@marvell.com>,
 hariprasad <hkelam@marvell.com>,
 Taras Chornyi <tchornyi@marvell.com>,
 Mirko Lindner <mlindner@marvell.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Felix Fietkau <nbd@nbd.name>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Tariq Toukan <tariqt@nvidia.com>,
 Saeed Mahameed <saeedm@nvidia.com>,
 Leon Romanovsky <leon@kernel.org>, Ido Schimmel <idosch@nvidia.com>,
 Petr Machata <petrm@nvidia.com>,
 Bryan Whitehead <bryan.whitehead@microchip.com>,
 UNGLinuxDriver@microchip.com, Chris Lee <christopher.lee@cspi.com>,
 Jon Mason <jdmason@kudzu.us>,
 Simon Horman <simon.horman@corigine.com>,
 Rain River <rain.1986.08.12@gmail.com>,
 Zhu Yanjun <zyjzyj2000@gmail.com>,
 Vladimir Zapolskiy <vz@mleia.com>, Rahul Verma <rahulv@marvell.com>,
 Shahed Shaikh <shshaikh@marvell.com>,
 Heiner Kallweit <hkallweit1@gmail.com>, nic_swsd@realtek.com,
 Jiri Pirko <jiri@resnulli.us>, Byungho An <bh74.an@samsung.com>,
 Edward Cree <ecree.xilinx@gmail.com>,
 Martin Habets <habetsm.xilinx@gmail.com>,
 Ralf Baechle <ralf@linux-mips.org>,
 Francois Romieu <romieu@fr.zoreil.com>,
 Daniele Venzano <venza@brownhat.org>,
 Nicolas Pitre <nico@fluxnic.net>,
 Steve Glendinning <steve.glendinning@shawell.net>,
 Jassi Brar <jaswinder.singh@linaro.org>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Samuel Chessman <chessman@tux.org>,
 Geoff Levand <geoff@infradead.org>,
 Ishizaki Kou <kou.ishizaki@toshiba.co.jp>,
 Kevin Brace <kevinbrace@bracecomputerlab.com>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>,
 Krzysztof Halasa <khalasa@piap.pl>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Wei Liu <wei.liu@kernel.org>, Dexuan Cui <decui@microsoft.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Petko Manolov <petkan@nucleusys.com>,
 Oliver Neukum <oneukum@suse.com>,
 "Michael S. Tsirkin" <mst@redhat.com>,
 Jason Wang <jasowang@redhat.com>, Ronak Doshi <doshir@vmware.com>,
 VMware PV-Drivers Reviewers <pv-drivers@vmware.com>,
 David Ahern <dsahern@kernel.org>, Kalle Valo <kvalo@kernel.org>,
 Christian Lamparter <chunkeey@googlemail.com>,
 Simon Kelley <simon@thekelleys.org.uk>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 Arend van Spriel <aspriel@gmail.com>,
 Franky Lin <franky.lin@broadcom.com>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>,
 Stanislaw Gruszka <stf_xl@wp.pl>, Jouni Malinen <j@w1.fi>,
 Ajay Singh <ajay.kathat@microchip.com>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Igor Mitsyanko <imitsyanko@quantenna.com>,
 Sergey Matyukevich <geomatsi@gmail.com>,
 Herton Ronaldo Krzesinski <herton@canonical.com>,
 Hin-Tak Leung <htl10@users.sourceforge.net>, netdev@vger.kernel.org,
 linux-can@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-acenic@sunsite.dk,
 linux-parisc@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 intel-wired-lan@lists.osuosl.org,
 linux-mediatek@lists.infradead.org, linux-rdma@vger.kernel.org,
 oss-drivers@corigine.com, linux-mips@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-omap@vger.kernel.org, linux-hyperv@vger.kernel.org,
 ntb@lists.linux.dev, linux-usb@vger.kernel.org,
 virtualization@lists.linux-foundation.org,
 linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 brcm80211-dev-list.pdl@broadcom.com,
 SHA-cyfmac-dev-list@infineon.com, libertas-dev@lists.infradead.org
References: <20220818210050.7108-1-wsa+renesas@sang-engineering.com>
 <20220822180551.160c2a0b@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20220822180551.160c2a0b@kernel.org>
X-Mailman-Approved-At: Tue, 30 Aug 2022 21:39:53 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple;
 d=sang-engineering.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=k1; bh=A8bVRCFI98pRUSlXVuZ0JuXQWSsk
 LWEPpZPSCxPQ4Yc=; b=bvs8E5/fix4EfPuCb+OWMHT6Bu46TU1l+IigRSvtvn9P
 EPjUjEMoaKMAh5zUmSlIUll78CFyvIAIO22BPo+YYx2/PHVMYseFmKF27NnJ760a
 yJnn+PLBTo5LOy0cZ+CcMvpCeYZvUs2xJ9oI/cferGF5V0ikEASasUiMDmVqo9M=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=sang-engineering.com header.i=@sang-engineering.com
 header.a=rsa-sha256 header.s=k1 header.b=bvs8E5/f
Subject: Re: [Intel-wired-lan] [PATCH] net: move from strlcpy with unused
 retval to strscpy
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
Cc: Andrew Lunn <andrew@lunn.ch>, Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
 Igor Russkikh <irusskikh@marvell.com>,
 Kevin Brace <kevinbrace@bracecomputerlab.com>,
 Somnath Kotur <somnath.kotur@broadcom.com>,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 linux-stm32@st-md-mailman.stormreply.com, Andy Gospodarek <andy@greyhouse.net>,
 Wei Liu <wei.liu@kernel.org>, Manish Chopra <manishc@marvell.com>,
 Samuel Holland <samuel@sholland.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Madalin Bucur <madalin.bucur@nxp.com>,
 Christian Lamparter <chunkeey@googlemail.com>,
 Michal Simek <michal.simek@xilinx.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Jose Abreu <joabreu@synopsys.com>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 Franky Lin <franky.lin@broadcom.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Chris Lee <christopher.lee@cspi.com>, Nick Child <nnac123@linux.ibm.com>,
 Jiri Pirko <jiri@resnulli.us>, Jay Vosburgh <j.vosburgh@gmail.com>,
 Vinay Kumar Yadav <vinay.yadav@chelsio.com>,
 Arend van Spriel <aspriel@gmail.com>, Nicholas Piggin <npiggin@gmail.com>,
 Igor Mitsyanko <imitsyanko@quantenna.com>, Krzysztof Halasa <khalasa@piap.pl>,
 Shay Agroskin <shayagr@amazon.com>, linux-omap@vger.kernel.org,
 Petr Machata <petrm@nvidia.com>, libertas-dev@lists.infradead.org,
 Rasesh Mody <rmody@marvell.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Douglas Miller <dougmill@linux.ibm.com>,
 Joakim Zhang <qiangqing.zhang@nxp.com>, Ralf Baechle <ralf@linux-mips.org>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ion Badulescu <ionut@badula.org>,
 Hartley Sweeten <hsweeten@visionengravers.com>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>, Jon Mason <jdmason@kudzu.us>,
 Vladimir Oltean <olteanv@gmail.com>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Christian Benvenuti <benve@cisco.com>, Samuel Chessman <chessman@tux.org>,
 linux-usb@vger.kernel.org, Ronak Doshi <doshir@vmware.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Chris Snook <chris.snook@gmail.com>, Denis Kirjanov <kda@linux-powerpc.org>,
 Prashant Sreedharan <prashant@broadcom.com>, linux-kernel@vger.kernel.org,
 Daniele Venzano <venza@brownhat.org>, Eric Dumazet <edumazet@google.com>,
 Zhu Yanjun <zyjzyj2000@gmail.com>,
 Pantelis Antoniou <pantelis.antoniou@gmail.com>,
 Arthur Kiyanovski <akiyano@amazon.com>, Leon Romanovsky <leon@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Sergey Matyukevich <geomatsi@gmail.com>,
 Rain River <rain.1986.08.12@gmail.com>, Veaceslav Falico <vfalico@gmail.com>,
 Martin Habets <habetsm.xilinx@gmail.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Wolfgang Grandegger <wg@grandegger.com>,
 Steve Glendinning <steve.glendinning@shawell.net>,
 Tom Lendacky <thomas.lendacky@amd.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Ido Schimmel <idosch@nvidia.com>, Sean Wang <sean.wang@mediatek.com>,
 linuxppc-dev@lists.ozlabs.org, linux-can@vger.kernel.org,
 Siva Reddy Kallam <siva.kallam@broadcom.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Doug Berger <opendmb@gmail.com>,
 Simon Kelley <simon@thekelleys.org.uk>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-arm-kernel@lists.infradead.org, Mirko Lindner <mlindner@marvell.com>,
 Sriharsha Basavapatna <sriharsha.basavapatna@broadcom.com>,
 Nicolas Pitre <nico@fluxnic.net>, David Arinzon <darinzon@amazon.com>,
 Rohit Maheshwari <rohitm@chelsio.com>, Tariq Toukan <tariqt@nvidia.com>,
 Sudarsana Kalluru <skalluru@marvell.com>, Taras Chornyi <tchornyi@marvell.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-mediatek@lists.infradead.org, Heiner Kallweit <hkallweit1@gmail.com>,
 linux-wireless@vger.kernel.org, Ajit Khaparde <ajit.khaparde@broadcom.com>,
 Petko Manolov <petkan@nucleusys.com>, Andreas Larsson <andreas@gaisler.com>,
 Jason Wang <jasowang@redhat.com>, Kurt Kanzenbach <kurt@linutronix.de>,
 linux-hyperv@vger.kernel.org, oss-drivers@corigine.com, netdev@vger.kernel.org,
 Subbaraya Sundeep <sbhatta@marvell.com>,
 Hin-Tak Leung <htl10@users.sourceforge.net>,
 Jassi Brar <jaswinder.singh@linaro.org>, Noam Dagan <ndagan@amazon.com>,
 Stanislaw Gruszka <stf_xl@wp.pl>, Ajay Singh <ajay.kathat@microchip.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Dave Jiang <dave.jiang@intel.com>,
 linux-rdma@vger.kernel.org, Guo-Fu Tseng <cooldavid@cooldavid.org>,
 Dexuan Cui <decui@microsoft.com>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
 b43-dev@lists.infradead.org, Simon Horman <simon.horman@corigine.com>,
 Paolo Abeni <pabeni@redhat.com>, Allen Hubbe <allenbh@gmail.com>,
 Shahed Shaikh <shshaikh@marvell.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Byungho An <bh74.an@samsung.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Vladimir Zapolskiy <vz@mleia.com>, Don Fry <pcnet32@frontier.com>,
 John Crispin <john@phrozen.org>, Michael Chan <michael.chan@broadcom.com>,
 virtualization@lists.linux-foundation.org,
 Ishizaki Kou <kou.ishizaki@toshiba.co.jp>,
 Salil Mehta <salil.mehta@huawei.com>, GR-Linux-NIC-Dev@marvell.com,
 linux-parisc@vger.kernel.org, Geoff Levand <geoff@infradead.org>,
 linux-sunxi@lists.linux.dev, Edward Cree <ecree.xilinx@gmail.com>,
 Bryan Whitehead <bryan.whitehead@microchip.com>,
 Saeed Bishara <saeedb@amazon.com>, Mark Einon <mark.einon@gmail.com>,
 Geetha sowjanya <gakula@marvell.com>, Oliver Neukum <oneukum@suse.com>,
 "Michael S. Tsirkin" <mst@redhat.com>,
 VMware PV-Drivers Reviewers <pv-drivers@vmware.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Govindarajulu Varadarajan <_govind@gmx.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Ayush Sawal <ayush.sawal@chelsio.com>, UNGLinuxDriver@microchip.com,
 linux-acenic@sunsite.dk, Herton Ronaldo Krzesinski <herton@canonical.com>,
 Rahul Verma <rahulv@marvell.com>, Russell King <linux@armlinux.org.uk>,
 SHA-cyfmac-dev-list@infineon.com, Lino Sanfilippo <LinoSanfilippo@gmx.de>,
 intel-wired-lan@lists.osuosl.org, Steffen Klassert <klassert@kernel.org>,
 Sunil Goutham <sgoutham@marvell.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Jes Sorensen <jes@trained-monkey.org>, nic_swsd@realtek.com,
 Ariel Elior <aelior@marvell.com>, Jouni Malinen <j@w1.fi>,
 Kalle Valo <kvalo@kernel.org>, Marc Kleine-Budde <mkl@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, Marcin Wojtas <mw@semihalf.com>,
 brcm80211-dev-list.pdl@broadcom.com, David Ahern <dsahern@kernel.org>,
 linux-mips@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 hariprasad <hkelam@marvell.com>, ntb@lists.linux.dev,
 Raju Rangoju <rajur@chelsio.com>, Larry Finger <Larry.Finger@lwfinger.net>,
 Saeed Mahameed <saeedm@nvidia.com>, Felix Fietkau <nbd@nbd.name>
Content-Type: multipart/mixed; boundary="===============7849541390426818030=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============7849541390426818030==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bu+qW3icU8857Hzl"
Content-Disposition: inline


--bu+qW3icU8857Hzl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> Unfortunately looks like patchwork was unable to ingest this change :(
> Not sure why.

vger rejected this mail because the header was too big. I updated my
scripts to estimate that before sending out.

> Would you mind splitting it into 3 chunks - wireless, ethernet,
> everything else, and resending? Let's see if that'll be small enough..

I did this and my scripts estimate that the patches will be small enough
now. Let's see...


--bu+qW3icU8857Hzl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmMObAUACgkQFA3kzBSg
KbYmbxAAhLDry8AFCMs0JeaOiDjRHrHjQEgpCeivV6b/gp/jt/RKiaPiEcHJAMtv
EIS+TTWc+VeHctybJ5IXx6ABcP64zEBQmcWaExve4a8QAEd5OBjFBqHMBNYLOjl3
2LGdKq94jeX80mkXitqnxGKCZHvD+3fv86hgce4psGaByDBgrtFvnCYOEMOAb/i/
QevZg2nDRS9Agwpz1u+L/byfiIP9L8n0FxFFkM8acJmU68E7zd1DZ4Zo0CKajVGa
7VuzjWEjYpIRrp6BQh+HCfL+FvHJoxE7euZQ+b5t4jOqEKZwsH8J2367g4NtnTQd
EE9vTTG1K07rfBoratigsH2yyNoi93cTR9mk7WgeYCSzFW5hyc/wrFM+tpIe9OUj
9mOstqkAgKfUeIrkpnH/e1S9S7J8iMehTSU8HvIrX+gyBDXn7IgFTizgT+Kb1N95
gyaciis4a5wdBiEJndYoQup2O94FRuqP4jvs3b6nU4DnspMrcp7OZ1iUYs2MJf/+
jqtbi6y3n3y+PyeB3yic/rT9OKhEMO06A+Th68Ys/EK5KFs71763znTEsqfqMAzs
HJZ6OhnNREklAf0x9E3jQbHD9I90WXUUp8OwiGVa7p+Y2kwa6L/PVTMon/J+97zk
AqapabC9SVMN1KMRdpPlCJsb0CViQ0aWpW2gmfmsNb42RjFBjdQ=
=9XVx
-----END PGP SIGNATURE-----

--bu+qW3icU8857Hzl--

--===============7849541390426818030==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============7849541390426818030==--
