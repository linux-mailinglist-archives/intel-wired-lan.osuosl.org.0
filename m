Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5C641C40B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Sep 2021 14:00:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D050960BD2;
	Wed, 29 Sep 2021 12:00:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id emeFKQAno9d5; Wed, 29 Sep 2021 12:00:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF6DD60BBB;
	Wed, 29 Sep 2021 12:00:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8F8C51BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 12:00:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7C6F560BBB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 12:00:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QzLqtfrpNFi8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Sep 2021 12:00:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B3C4F60B0D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 12:00:51 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 96DCF61409;
 Wed, 29 Sep 2021 12:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632916851;
 bh=hZUZHfgfiTNNYSpnegZKCRZ4rkRJapfY17ImCztFpso=;
 h=From:To:Cc:Subject:Date:From;
 b=noEJzrN8+a7bB2Ia3WV/RbudWF03qf8/UhZ3QzTdnCN1X5OLGFysMqcf1SkC3DZWG
 drQm3kpAV2CfhKxC2Q0FDh+hNwzaK2MApcI1pvoLamseqt8tsBOTXDEV7SBnXlC4Aj
 Zlb0BbN6MFK4TTJN7yJZKyDQZcHKM/InshW14ECHmH8AX8+hb8+j6GapFI8b438cdX
 MFYahDhd59cBpE3tQ2NufCayJdtET2WSuwk3xi7RNb7VwmgXcWKv9521E7WZfXdlas
 5Q3F8diYv/2raIFAG7sdhp4nnl/UggE6K0ia4pimnsBGxu1jrJjSQkF/W7Ox59ka87
 aBlDM9L2fCvWw==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Wed, 29 Sep 2021 15:00:41 +0300
Message-Id: <cover.1632916329.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 0/5] Devlink reload and missed
 notifications fix
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
 Simon Horman <simon.horman@corigine.com>, oss-drivers@corigine.com,
 netdev@vger.kernel.org, Jerin Jacob <jerinj@marvell.com>,
 GR-everest-linux-l2@marvell.com, Subbaraya Sundeep <sbhatta@marvell.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Leon Romanovsky <leonro@nvidia.com>,
 Michael Chan <michael.chan@broadcom.com>, Linu Cherian <lcherian@marvell.com>,
 Tariq Toukan <tariqt@nvidia.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Eric Dumazet <eric.dumazet@gmail.com>, linux-rdma@vger.kernel.org,
 Moshe Shemesh <moshe@nvidia.com>, linux-staging@lists.linux.dev,
 Shannon Nelson <snelson@pensando.io>, intel-wired-lan@lists.osuosl.org,
 Vadym Kochan <vkochan@marvell.com>, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Sunil Goutham <sgoutham@marvell.com>, Ariel Elior <aelior@marvell.com>,
 Ido Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Satanand Burla <sburla@marvell.com>, Felix Manlunas <fmanlunas@marvell.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Jiri Pirko <jiri@nvidia.com>,
 drivers@pensando.io, linux-omap@vger.kernel.org, Bin Luo <luobin9@huawei.com>,
 Salil Mehta <salil.mehta@huawei.com>, GR-Linux-NIC-Dev@marvell.com,
 Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, linux-kernel@vger.kernel.org,
 Coiby Xu <coiby.xu@gmail.com>, UNGLinuxDriver@microchip.com,
 Taras Chornyi <tchornyi@marvell.com>, hariprasad <hkelam@marvell.com>,
 Shay Drory <shayd@nvidia.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Derek Chickles <dchickles@marvell.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Geetha sowjanya <gakula@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Leon Romanovsky <leonro@nvidia.com>

Changelog:
v1:
 * Missed removal of extra WARN_ON
 * Added "ops parameter to macro as Dan suggested.
v0: https://lore.kernel.org/all/cover.1632909221.git.leonro@nvidia.com

-------------------------------------------------------------------
Hi,

This series starts from the fixing the bug introduced by implementing
devlink delayed notifications logic, where I missed some of the
notifications functions.

The rest series provides a way to dynamically set devlink ops that is
needed for mlx5 multiport device and starts cleanup by removing
not-needed logic.

In the next series, we will delete various publish API, drop general
lock, annotate the code and rework logic around devlink->lock.

All this is possible because driver initialization is separated from the
user input now.

Thanks

Leon Romanovsky (5):
  devlink: Add missed notifications iterators
  devlink: Allow modification of devlink ops
  devlink: Allow set specific ops callbacks dynamically
  net/mlx5: Register separate reload devlink ops for multiport device
  devlink: Delete reload enable/disable interface

 .../net/ethernet/broadcom/bnxt/bnxt_devlink.c |   6 +-
 .../net/ethernet/cavium/liquidio/lio_main.c   |   2 +-
 .../freescale/dpaa2/dpaa2-eth-devlink.c       |   2 +-
 .../hisilicon/hns3/hns3pf/hclge_devlink.c     |   5 +-
 .../hisilicon/hns3/hns3vf/hclgevf_devlink.c   |   5 +-
 .../net/ethernet/huawei/hinic/hinic_devlink.c |   2 +-
 drivers/net/ethernet/intel/ice/ice_devlink.c  |   2 +-
 .../marvell/octeontx2/af/rvu_devlink.c        |   2 +-
 .../marvell/prestera/prestera_devlink.c       |   2 +-
 drivers/net/ethernet/mellanox/mlx4/main.c     |   4 +-
 .../net/ethernet/mellanox/mlx5/core/devlink.c |  15 +-
 .../net/ethernet/mellanox/mlx5/core/main.c    |   3 -
 .../mellanox/mlx5/core/sf/dev/driver.c        |   5 +-
 drivers/net/ethernet/mellanox/mlxsw/core.c    |  12 +-
 drivers/net/ethernet/mscc/ocelot.h            |   2 +-
 drivers/net/ethernet/mscc/ocelot_net.c        |   2 +-
 .../net/ethernet/netronome/nfp/nfp_devlink.c  |   2 +-
 drivers/net/ethernet/netronome/nfp/nfp_main.h |   2 +-
 .../ethernet/pensando/ionic/ionic_devlink.c   |   2 +-
 drivers/net/ethernet/qlogic/qed/qed_devlink.c |   2 +-
 drivers/net/ethernet/ti/am65-cpsw-nuss.c      |   2 +-
 drivers/net/ethernet/ti/cpsw_new.c            |   2 +-
 drivers/net/netdevsim/dev.c                   |   5 +-
 drivers/ptp/ptp_ocp.c                         |   2 +-
 drivers/staging/qlge/qlge_main.c              |   2 +-
 include/net/devlink.h                         |  15 +-
 net/core/devlink.c                            | 156 ++++++++++--------
 net/dsa/dsa2.c                                |   2 +-
 28 files changed, 131 insertions(+), 134 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
