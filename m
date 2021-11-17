Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1C6454D16
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Nov 2021 19:26:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E384660A6A;
	Wed, 17 Nov 2021 18:26:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cW1ypmd4IDgI; Wed, 17 Nov 2021 18:26:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E53576087A;
	Wed, 17 Nov 2021 18:26:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A0E7E1BF309
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 18:26:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8C854404A6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 18:26:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ttU7mj8C7ixA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Nov 2021 18:26:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 98FD140147
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 18:26:29 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2B58D61A62;
 Wed, 17 Nov 2021 18:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637173589;
 bh=aX7kR5mhhKUKPo/3xI2LEWmDxKJnOScXHCAboHytXl4=;
 h=From:To:Cc:Subject:Date:From;
 b=gMCay+Zg6c1ByKP22PhL3E+8cYanJkrIMvHTpPD5eRYdefeOg/XAVnIEXakYKH4KT
 REX9w4+8T4FyzV/zPC1gL+pGtYT6s/D4Ys8gA2UfCoKAKB/e0v8htOX5sONPAGY5ny
 cugK13ngC3k1R+mG5+BKHwxNCk72BJS0VJP6pJ4DxtJYXBxpbmZDlo8hhKANCzUzww
 YQVUbdlYL110olnJVWvoOep7xklaN+wime9vBv6KhcOjsB8gSOTFOVy+89PZfy4WsE
 K0IKEjPzmkPdQCPU8xpyWlEVKi2aaapuxHjfoQk7k/xDvXTEyOCN8RLbsQtu0ewpB7
 gDMj35Thxe5/Q==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Wed, 17 Nov 2021 20:26:16 +0200
Message-Id: <cover.1637173517.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 0/6] Devlink cleanups
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
 Ioana Ciornei <ioana.ciornei@nxp.com>, Leon Romanovsky <leonro@nvidia.com>,
 Michael Chan <michael.chan@broadcom.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-rdma@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Vladimir Oltean <vladimir.oltean@nxp.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Jiri Pirko <jiri@nvidia.com>,
 drivers@pensando.io, Aya Levin <ayal@mellanox.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tariq Toukan <tariqt@nvidia.com>,
 UNGLinuxDriver@microchip.com, Taras Chornyi <tchornyi@marvell.com>,
 Shannon Nelson <snelson@pensando.io>, Saeed Mahameed <saeedm@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Leon Romanovsky <leonro@nvidia.com>

Hi,

This series is non-controversial subset of my RFC [1], where I proposed
a way to allow parallel devlink execution.

Thanks

[1] https://lore.kernel.org/all/cover.1636390483.git.leonro@nvidia.com

Leon Romanovsky (6):
  devlink: Remove misleading internal_flags from health reporter dump
  devlink: Delete useless checks of holding devlink lock
  devlink: Simplify devlink resources unregister call
  devlink: Clean registration of devlink port
  devlink: Reshuffle resource registration logic
  devlink: Inline sb related functions

 .../net/ethernet/broadcom/bnxt/bnxt_devlink.c |   7 +-
 .../freescale/dpaa2/dpaa2-eth-devlink.c       |   7 +-
 drivers/net/ethernet/intel/ice/ice_devlink.c  |  23 +-
 .../marvell/prestera/prestera_devlink.c       |   8 +-
 drivers/net/ethernet/mellanox/mlx4/main.c     |   4 +-
 .../ethernet/mellanox/mlx5/core/en/devlink.c  |   5 +-
 .../ethernet/mellanox/mlx5/core/en/devlink.h  |   2 +-
 .../net/ethernet/mellanox/mlx5/core/en_main.c |   7 +-
 .../mellanox/mlx5/core/esw/devlink_port.c     |   9 +-
 drivers/net/ethernet/mellanox/mlxsw/core.c    |  15 +-
 .../net/ethernet/mellanox/mlxsw/spectrum.c    |   4 +-
 drivers/net/ethernet/mscc/ocelot_net.c        |   4 +-
 .../net/ethernet/netronome/nfp/nfp_devlink.c  |   4 +-
 .../ethernet/pensando/ionic/ionic_devlink.c   |   8 +-
 drivers/net/ethernet/ti/am65-cpsw-nuss.c      |  14 +-
 drivers/net/netdevsim/dev.c                   |  11 +-
 include/net/devlink.h                         |   9 +-
 net/core/devlink.c                            | 220 ++++++------------
 net/dsa/dsa.c                                 |   2 +-
 net/dsa/dsa2.c                                |   9 +-
 20 files changed, 115 insertions(+), 257 deletions(-)

-- 
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
