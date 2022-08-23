Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2279C59CD92
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Aug 2022 03:06:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EF8BE81589;
	Tue, 23 Aug 2022 01:06:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EF8BE81589
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661216766;
	bh=jSjw5fJOyabpadINelQSjcGp0iHrIFufqeXyyWZvjZc=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=anzmgwEoD7cAGD4okTIxJoxtEvXoB+s79SFL74qrgD30Dxxo4wie5BrESzJge3d2W
	 B0B9D7xrpJFsaaQg3yVQT7vnoiD7VHtiymJ1xNj9BGSu9h6DcGNngtVla3zqoLlzgQ
	 kge3uCPOctCdhQFPq99lK5qstgmjU1kKSeXM5VBCKL5LQlJgfRCFuS34sjxwWP4/l3
	 hLWpaWXap4Pvi1qG9Tr0vSPLmLiKzw5sNq3YKQK6RrSEvpDxHmMeGRQn9PqCI7fVSB
	 /AuFFxbPlxADzJKK/GiHyyqoEtW9hr5Nmu9+81AE+ZZGdFY2C3xq1fIWL6uVMh03LC
	 1lAGdFDXZ/ahQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bwwnJOzni_0x; Tue, 23 Aug 2022 01:06:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA7FE81501;
	Tue, 23 Aug 2022 01:06:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA7FE81501
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3AC0E1BF345
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 01:06:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1F7C840895
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 01:06:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F7C840895
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3aCYS8GuIqLR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Aug 2022 01:05:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF7D440894
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AF7D440894
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 01:05:58 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C773660FB9;
 Tue, 23 Aug 2022 01:05:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1BD6C433D6;
 Tue, 23 Aug 2022 01:05:51 +0000 (UTC)
Date: Mon, 22 Aug 2022 18:05:51 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Message-ID: <20220822180551.160c2a0b@kernel.org>
In-Reply-To: <20220818210050.7108-1-wsa+renesas@sang-engineering.com>
References: <20220818210050.7108-1-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1661216757;
 bh=rLzGcuELxlw6wzYQ32smCo931y+93Ix6heiyYta6PuM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=MR96DcUf7/mwpakCtex8peSxXSqw3SkmRpheR1Y9yV9bbsHlS+ylCyc6+FzPARBgs
 Dr3pPRLQ+sNVLvh4ozvPIloaIC16Ch13S1QNULTYZYxAIf7HCot8K/HyKwcznycDHt
 FFEnCEvqAgrohThuq5DZktMpvxleT+WdES/F+E9iEpwJ22tMbCYIdiD/iC+zHPPPwS
 HdJHWKJxW9//GpH/e/xez+EK8EsiOAF9mByy9EBfJnkGqONB0+VKYiP3TIXyiSFaH4
 uxFnUaJAdXByRNMSXCmUJZdLn9vOc6s/svAFBhv4wjVkERTxSIyx64fuHvXXcVmkE1
 Unzt3mUFsASlw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=MR96DcUf
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
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 18 Aug 2022 23:00:34 +0200 Wolfram Sang wrote:
>  261 files changed, 568 insertions(+), 568 deletions(-)

Unfortunately looks like patchwork was unable to ingest this change :(
Not sure why.

Would you mind splitting it into 3 chunks - wireless, ethernet,
everything else, and resending? Let's see if that'll be small enough..
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
