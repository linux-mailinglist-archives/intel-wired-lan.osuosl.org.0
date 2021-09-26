Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C404189A0
	for <lists+intel-wired-lan@lfdr.de>; Sun, 26 Sep 2021 16:56:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B0B7C60689;
	Sun, 26 Sep 2021 14:56:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R28QMRzqHigB; Sun, 26 Sep 2021 14:56:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C4D65605E9;
	Sun, 26 Sep 2021 14:56:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D69091BF41F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Sep 2021 14:56:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C39DF605E9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Sep 2021 14:56:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tQX0QaCP93gj for <intel-wired-lan@lists.osuosl.org>;
 Sun, 26 Sep 2021 14:56:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com
 [66.111.4.230])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 14276605E1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Sep 2021 14:56:23 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailnew.nyi.internal (Postfix) with ESMTP id 5A6CC580E5A;
 Sun, 26 Sep 2021 10:56:20 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Sun, 26 Sep 2021 10:56:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=1SwiLo
 0OKzrgae4gARfd9XtQ8Pfr/C7RtDkZYQvq+Zg=; b=KBG2mbIWFypeGTDA9ukwZC
 Savr3ve9ghFgzW+47++suGkjfTn8IUgdskA1e1Fmq+2Zq65GqH8vzvr/rp1w4zuF
 WHyhzfZbYSwjgTImHz0ce55HU9h0rf0nI8lt+Xu6oLVTSUN+ZJdFlq3gZouTev6v
 AZ50bV6l9xWh7R5PropJfcGY0I+40wasmcYkVCSl1fo6oGkEmmCGuSEYR3sMKkjt
 S/WBzvQ4to7Ythk3Y+qj2OuS5EqRs8U8qfPDccFDg10R98P11jm0ThngMC0bWnRr
 pT4oRUoxf4oztch6dNt4h3oiK2AIOib/gA49p0WDrMSSBDspfP54i03xpTpWCklg
 ==
X-ME-Sender: <xms:EopQYZuKY-wnuTHI3n3YNNlj836zAWFflpNAqplVMrOL5Y2tNxWHkg>
 <xme:EopQYSdiw41V7repoJJNFKpvgH4U2aBdDU5Pj0MNb3GrPksmrsPyf-jGHw2tJVSkB
 gd1N5HMqXap-Yw>
X-ME-Received: <xmr:EopQYcwstCsOU4Z_p68cMIlcEMb3hVnYwslc6YfFWgOB93fhDAaFtaha-7si25STMNqTY_HRq0425NLsRqbHBICeGlzqhg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudejiedgkeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpedtffekkeefudffveegueejffejhfetgfeuuefgvedtieehudeuueekhfduheel
 teenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiug
 hoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:EopQYQPH6fS_kSAXkwpoRrga7m7P7o_kMYSgUegnKfpcyPV56t8etQ>
 <xmx:EopQYZ8yXp1UBxlU1AWoyJrpuNoSGVm1Egd65OrtWZqGjWYuSr1yMA>
 <xmx:EopQYQUEEbB_HClKbhfwf5wQ4Cqon53BsD1txQrhSArqcRAjYdcKKA>
 <xmx:FIpQYeYCbRFkSd5u4Mh_xIjItI9js46gZfOLDMA8h_Pobpt2EHM_sA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 26 Sep 2021 10:56:17 -0400 (EDT)
Date: Sun, 26 Sep 2021 17:56:13 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <YVCKDR1pyHaH2sR5@shredder>
References: <cover.1632565508.git.leonro@nvidia.com>
 <ca198a30949abb3bdf283ff87e6e718be355d0cf.1632565508.git.leonro@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ca198a30949abb3bdf283ff87e6e718be355d0cf.1632565508.git.leonro@nvidia.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 11/21] mlxsw: core:
 Register devlink instance last
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Sergey Ryazanov <ryazanov.s.a@gmail.com>,
 Michael Guralnik <michaelgur@mellanox.com>, oss-drivers@corigine.com,
 netdev@vger.kernel.org, Jerin Jacob <jerinj@marvell.com>,
 GR-everest-linux-l2@marvell.com, Subbaraya Sundeep <sbhatta@marvell.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, UNGLinuxDriver@microchip.com,
 Leon Romanovsky <leonro@nvidia.com>, Michael Chan <michael.chan@broadcom.com>,
 Linu Cherian <lcherian@marvell.com>, Intel Corporation <linuxwwan@intel.com>,
 Tariq Toukan <tariqt@nvidia.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Manish Chopra <manishc@marvell.com>, linux-rdma@vger.kernel.org,
 linux-staging@lists.linux.dev, Shannon Nelson <snelson@pensando.io>,
 intel-wired-lan@lists.osuosl.org, Simon Horman <simon.horman@corigine.com>,
 Jakub Kicinski <kuba@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>,
 Sunil Goutham <sgoutham@marvell.com>, Ariel Elior <aelior@marvell.com>,
 Ido Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Satanand Burla <sburla@marvell.com>, Felix Manlunas <fmanlunas@marvell.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Loic Poulain <loic.poulain@linaro.org>, Jiri Pirko <jiri@nvidia.com>,
 drivers@pensando.io, linux-omap@vger.kernel.org, Bin Luo <luobin9@huawei.com>,
 GR-Linux-NIC-Dev@marvell.com, Vadym Kochan <vkochan@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, linux-kernel@vger.kernel.org,
 Coiby Xu <coiby.xu@gmail.com>, "David S . Miller" <davem@davemloft.net>,
 Taras Chornyi <tchornyi@marvell.com>, hariprasad <hkelam@marvell.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 M Chetan Kumar <m.chetan.kumar@intel.com>,
 Derek Chickles <dchickles@marvell.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Geetha sowjanya <gakula@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Sep 25, 2021 at 02:22:51PM +0300, Leon Romanovsky wrote:
> From: Leon Romanovsky <leonro@nvidia.com>
> 
> Make sure that devlink is open to receive user input when all
> parameters are initialized.
> 
> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>

Reviewed-by: Ido Schimmel <idosch@nvidia.com>
Tested-by: Ido Schimmel <idosch@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
