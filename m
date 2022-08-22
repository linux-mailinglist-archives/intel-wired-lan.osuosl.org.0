Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0456359C146
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Aug 2022 16:04:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7CBA860ECA;
	Mon, 22 Aug 2022 14:04:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7CBA860ECA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661177055;
	bh=bE77HHG3DxQdd/MEh331ux5eUbZOtd2Pqiob14XdHGY=;
	h=References:From:To:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8ihYDQtB/abehyLYm4JlYVjcUs6IHt97j6Rvpclgg2yPftp3Nf0VzndgXl3DxHSMg
	 hlDdGwzin+QGjpbl0vdvnXoMmh5XW9KkfSRHkgmFszfyUQHccc8UklReHIVyWw6FmV
	 mImN7a+BCEBUZxoU/I0scWIS+MtwgwrBkqQyOPyZByRBnSrip4mHr4GuOSha8pK8fK
	 lPY0jEF5smk/FsCg0znfeNqrvMqTVeM+FEBKbuRZ17oxxl1U4oZxmzAbyC1VamSY8U
	 543BJEzmepeWi61fwgI7Gjo+lhoq2dxTjhzsS5+J7KYZLonu+S/9rwxLHWHayCd8o/
	 adp3qqEa2nHFA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ut1JAS02rnBN; Mon, 22 Aug 2022 14:04:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E0CF60E43;
	Mon, 22 Aug 2022 14:04:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2E0CF60E43
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D0E7B1BF32E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Aug 2022 07:03:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B5EFB4032F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Aug 2022 07:03:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B5EFB4032F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xdDB5Kky9-Hl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Aug 2022 07:03:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 87CE2402CE
Received: from smtp-fw-33001.amazon.com (smtp-fw-33001.amazon.com
 [207.171.190.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 87CE2402CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Aug 2022 07:03:14 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.93,254,1654560000"; d="scan'208";a="219871863"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-iad-1e-26daedd8.us-east-1.amazon.com) ([10.43.8.6])
 by smtp-border-fw-33001.sea14.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Aug 2022 07:02:58 +0000
Received: from EX13D28EUC001.ant.amazon.com
 (iad12-ws-svc-p26-lb9-vlan2.iad.amazon.com [10.40.163.34])
 by email-inbound-relay-iad-1e-26daedd8.us-east-1.amazon.com (Postfix) with
 ESMTPS id 4C09AE2EC5; Mon, 22 Aug 2022 07:02:54 +0000 (UTC)
Received: from u570694869fb251.ant.amazon.com.amazon.com (10.43.161.172) by
 EX13D28EUC001.ant.amazon.com (10.43.164.4) with Microsoft SMTP Server (TLS)
 id 15.0.1497.38; Mon, 22 Aug 2022 07:01:48 +0000
References: <20220818210050.7108-1-wsa+renesas@sang-engineering.com>
User-agent: mu4e 1.6.10; emacs 28.0.91
From: Shay Agroskin <shayagr@amazon.com>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Date: Mon, 22 Aug 2022 10:00:23 +0300
In-Reply-To: <20220818210050.7108-1-wsa+renesas@sang-engineering.com>
Message-ID: <pj41zlczcsep7s.fsf@u570694869fb251.ant.amazon.com>
MIME-Version: 1.0
X-Originating-IP: [10.43.161.172]
X-ClientProxiedBy: EX13D13UWA002.ant.amazon.com (10.43.160.172) To
 EX13D28EUC001.ant.amazon.com (10.43.164.4)
Precedence: Bulk
X-Mailman-Approved-At: Mon, 22 Aug 2022 14:04:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1661151794; x=1692687794;
 h=references:from:to:cc:date:in-reply-to:message-id:
 mime-version:subject;
 bh=nzd0TYYufJ0cvZMq/1825VGB80pelN1uNxD/ulxN3IE=;
 b=XTOPrOUoX+k2IvUPclwFv0IXtXnF6LwGp3Imo7qSe/5fpnKTFWCMqCRy
 o58QjlchBJwED4b0r0yzwwUC7H+k6SrCV8Ehva+e2O6BQvI7keSxELuKt
 ISVvTL2+HNjU1Q61mBkakyHsrA/EFJqwUmvGYZKzNICnY0RK6FilaQLFZ
 g=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazon201209 header.b=XTOPrOUo
Subject: Re: [Intel-wired-lan] [PATCH] net: move from strlcpy with unused
 retval to strscpy
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
 =?utf-8?Q?Rafa=C5=82_Mi=C5=82eck?= =?utf-8?Q?i?= <rafal@milecki.pl>,
 linux-stm32@st-md-mailman.stormreply.com, Andy Gospodarek <andy@greyhouse.net>,
 Wei Liu <wei.liu@kernel.org>, Manish
 Chopra <manishc@marvell.com>, Samuel Holland <samuel@sholland.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Madalin Bucur <madalin.bucur@nxp.com>,
 Christian Lamparter <chunkeey@googlemail.com>,
 Michal Simek <michal.simek@xilinx.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Jose Abreu <joabreu@synopsys.com>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 Franky Lin <franky.lin@broadcom.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Chris Lee <christopher.lee@cspi.com>, Nick Child <nnac123@linux.ibm.com>,
 Jiri Pirko <jiri@resnulli.us>, Jay Vosburgh <j.vosburgh@gmail.com>,
 Vinay Kumar
 Yadav <vinay.yadav@chelsio.com>, Arend van Spriel <aspriel@gmail.com>,
 Nicholas Piggin <npiggin@gmail.com>, Igor Mitsyanko <imitsyanko@quantenna.com>,
 Krzysztof Halasa <khalasa@piap.pl>, linux-omap@vger.kernel.org, Petr
 Machata <petrm@nvidia.com>, libertas-dev@lists.infradead.org,
 Rasesh Mody <rmody@marvell.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, Douglas
 Miller <dougmill@linux.ibm.com>, Joakim Zhang <qiangqing.zhang@nxp.com>,
 Ralf Baechle <ralf@linux-mips.org>, Vivien Didelot <vivien.didelot@gmail.com>,
 Ion Badulescu <ionut@badula.org>,
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
 Arthur Kiyanovski <akiyano@amazon.com>, Leon
 Romanovsky <leon@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Sergey Matyukevich <geomatsi@gmail.com>,
 Rain River <rain.1986.08.12@gmail.com>, Veaceslav Falico <vfalico@gmail.com>,
 Martin Habets <habetsm.xilinx@gmail.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Wolfgang Grandegger <wg@grandegger.com>,
 Steve Glendinning <steve.glendinning@shawell.net>,
 Tom Lendacky <thomas.lendacky@amd.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Ido Schimmel <idosch@nvidia.com>, Sean Wang <sean.wang@mediatek.com>,
 linuxppc-dev@lists.ozlabs.org, linux-can@vger.kernel.org, Siva Reddy
 Kallam <siva.kallam@broadcom.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Doug Berger <opendmb@gmail.com>, Simon Kelley <simon@thekelleys.org.uk>,
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
 Bryan Whitehead <bryan.whitehead@microchip.com>, Saeed
 Bishara <saeedb@amazon.com>, Mark Einon <mark.einon@gmail.com>, Geetha
 sowjanya <gakula@marvell.com>, Oliver Neukum <oneukum@suse.com>, "Michael S.
 Tsirkin" <mst@redhat.com>, VMware PV-Drivers Reviewers <pv-drivers@vmware.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Govindarajulu Varadarajan <_govind@gmx.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Ayush Sawal <ayush.sawal@chelsio.com>, UNGLinuxDriver@microchip.com,
 linux-acenic@sunsite.dk, Herton Ronaldo Krzesinski <herton@canonical.com>,
 Rahul Verma <rahulv@marvell.com>, Russell King <linux@armlinux.org.uk>,
 SHA-cyfmac-dev-list@infineon.com, Lino Sanfilippo <LinoSanfilippo@gmx.de>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Steffen Klassert <klassert@kernel.org>, Sunil Goutham <sgoutham@marvell.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Jes
 Sorensen <jes@trained-monkey.org>, nic_swsd@realtek.com,
 Ariel Elior <aelior@marvell.com>, Jouni Malinen <j@w1.fi>,
 Kalle Valo <kvalo@kernel.org>, Marc Kleine-Budde <mkl@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, Marcin Wojtas <mw@semihalf.com>,
 brcm80211-dev-list.pdl@broadcom.com, David Ahern <dsahern@kernel.org>,
 linux-mips@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 hariprasad <hkelam@marvell.com>, ntb@lists.linux.dev,
 Raju Rangoju <rajur@chelsio.com>, Larry Finger <Larry.Finger@lwfinger.net>,
 Saeed Mahameed <saeedm@nvidia.com>, Felix Fietkau <nbd@nbd.name>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


Wolfram Sang <wsa+renesas@sang-engineering.com> writes:

> CAUTION: This email originated from outside of the 
> organization. Do not click links or open attachments unless you 
> can confirm the sender and know the content is safe.
>
>
>
> Follow the advice of the below link and prefer 'strscpy' in this
> subsystem. Conversion is 1:1 because the return value is not 
> used.
> Generated by a coccinelle script.
>
> Link: 
> https://lore.kernel.org/r/CAHk-=wgfRnXz0W3D37d01q3JFkr_i_uTL=V6A6G1oUZcprmknw@mail.gmail.com/
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
...
>  drivers/net/ethernet/amazon/ena/ena_ethtool.c    |  4 ++--
>  drivers/net/ethernet/amazon/ena/ena_netdev.c     |  2 +-

Reviewed-by: Shay Agroskin <shayagr@amazon.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
