Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 483934193AA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Sep 2021 13:53:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 936F18176F;
	Mon, 27 Sep 2021 11:53:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s6QSA25ayyNI; Mon, 27 Sep 2021 11:53:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A0AA48176D;
	Mon, 27 Sep 2021 11:53:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F33481BF293
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 11:53:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DFF53607E8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 11:53:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OLGn4PSv_vNJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Sep 2021 11:53:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 31B7F607E5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 11:53:29 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id BA30360F6C;
 Mon, 27 Sep 2021 11:53:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632743608;
 bh=Q2dHeySo3zRsXGknIbLs6i+yTpWx2dDgGoEFYPDr5/8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YaUXTiQmxWntMdcP1V6UabAj5J8Y25L1/E0AYpGsph11k51k6VvuI8uPokBfxbcAk
 m2uUNUxT0DP/R0xJf6IGUC8maz/OqFGDLCwx0qK2IoUljTtiFro1XMJp+GmLED5ssx
 T1ku5NlihRu34GIj81fPeIw7ebnIWBENHWl+gsXCpbVoVK2JoPlPV9W9/7Ky2991FF
 arzkdMMFq4EaH/2DLzzcuKPhUe4TrV024+K0jMiavouR22LFvA7VwYQ1mEsRJO8slE
 0+cd42Ha63JskwWD96PNT2Osmj6PMhlOW5OdUO22AYB3Y6mybJGQC1TChNKODmw7Ew
 1Cj5jreVMvoQQ==
Date: Mon, 27 Sep 2021 14:53:24 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Simon Horman <simon.horman@corigine.com>
Message-ID: <YVGwtNEcWSgYvyyV@unreal>
References: <cover.1632565508.git.leonro@nvidia.com>
 <f393212ad3906808ee7eb5cff06ef2e053eb9d2b.1632565508.git.leonro@nvidia.com>
 <20210927083923.GC17484@corigine.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210927083923.GC17484@corigine.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 13/21] nfp: Move
 delink_register to be last command
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
 Michael Chan <michael.chan@broadcom.com>, Linu Cherian <lcherian@marvell.com>,
 Intel Corporation <linuxwwan@intel.com>, Tariq Toukan <tariqt@nvidia.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Manish Chopra <manishc@marvell.com>,
 linux-rdma@vger.kernel.org, linux-staging@lists.linux.dev,
 Shannon Nelson <snelson@pensando.io>, intel-wired-lan@lists.osuosl.org,
 Vadym Kochan <vkochan@marvell.com>, Jakub Kicinski <kuba@kernel.org>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Sunil Goutham <sgoutham@marvell.com>, Ariel Elior <aelior@marvell.com>,
 Ido Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Satanand Burla <sburla@marvell.com>, Bin Luo <luobin9@huawei.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Loic Poulain <loic.poulain@linaro.org>, Jiri Pirko <jiri@nvidia.com>,
 drivers@pensando.io, linux-omap@vger.kernel.org,
 Felix Manlunas <fmanlunas@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
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

On Mon, Sep 27, 2021 at 10:39:24AM +0200, Simon Horman wrote:
> On Sat, Sep 25, 2021 at 02:22:53PM +0300, Leon Romanovsky wrote:
> > From: Leon Romanovsky <leonro@nvidia.com>
> > 
> > Open user space access to the devlink after driver is probed.
> 
> Hi Leon,
> 
> I think a description of why is warranted here.

After devlink_register(), users can send GET and SET netlink commands to
the uninitialized driver. In some cases, nothing will happen, but not in
all and hard to prove that ALL drivers are safe with such early access.

It means that local users can (in theory for some and in practice for
others) crash the system (or leverage permissions) with early devlink_register()
by accessing internal to driver pointers that are not set yet.

Like I said in the commit message, I'm not fixing all drivers.
https://lore.kernel.org/netdev/cover.1632565508.git.leonro@nvidia.com/T/#m063eb4e67389bafcc3b3ddc07197bf43181b7209

Because some of the driver authors made a wonderful job to obfuscate their
driver and write completely unmanageable code.

I do move devlink_register() to be last devlink command for all drivers,
to allow me to clean devlink core locking and API in next series.

This series should raise your eyebrow and trigger a question: "is my
driver vulnerable too?". And the answer will depend on devlink_register()
position in the .probe() call.

Thanks

> 
> > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
