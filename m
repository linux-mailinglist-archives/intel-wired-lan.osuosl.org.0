Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B84F418137
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Sep 2021 13:23:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 31A92607CF;
	Sat, 25 Sep 2021 11:23:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x25cMYzVI8W2; Sat, 25 Sep 2021 11:23:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 17B07607CC;
	Sat, 25 Sep 2021 11:23:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4789D1BF869
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 34944607CC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VNTSSADZDOMM for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Sep 2021 11:23:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5C5C8607B5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:07 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 10A496103B;
 Sat, 25 Sep 2021 11:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632568986;
 bh=9vQ7Jy6vxv+17KL8sYGHu0D+tMeIG2i6YIeiCDwml2M=;
 h=From:To:Cc:Subject:Date:From;
 b=hpCTP/IfVfGHBzOHP5/ERVih7Np+6S1CF2jaWxQBoSaPpWxvmWDrfmi7KtqGbIaVj
 4OMP9F328p7IEKsQzcAUW5dQQZYTXDjoQuwu64EE7m2nYqbjppu/uR38XLj8XZIz7k
 tRfvIx0CnP2L6dSIHqOzY5bRfwrLvqQDlcJnq1VfFHVYWyTvhdVEHmtM8lyZU08CB5
 pGGeo0dbRn2QmrPwLTpyFDlqv0X0xbge20cSdYgMMwH28HeTweZHf7K4m97G8m+PMS
 HvoMMFLiqX8Bo6SQ1BDgqdXOzuUK17iTJZMKO1OupxzLl6OnuXkShCsq0tTaFU/EGp
 tBeh0G+D96Qhw==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Sat, 25 Sep 2021 14:22:40 +0300
Message-Id: <cover.1632565508.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 00/21] Move devlink_register
 to be last devlink command
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
 Ioana Ciornei <ioana.ciornei@nxp.com>, Leon Romanovsky <leonro@nvidia.com>,
 Michael Chan <michael.chan@broadcom.com>, Linu Cherian <lcherian@marvell.com>,
 Intel Corporation <linuxwwan@intel.com>, Tariq Toukan <tariqt@nvidia.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Manish Chopra <manishc@marvell.com>,
 linux-rdma@vger.kernel.org, linux-staging@lists.linux.dev,
 Shannon Nelson <snelson@pensando.io>, intel-wired-lan@lists.osuosl.org,
 Simon Horman <simon.horman@corigine.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Sunil Goutham <sgoutham@marvell.com>, Ariel Elior <aelior@marvell.com>,
 Ido Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Satanand Burla <sburla@marvell.com>, Felix Manlunas <fmanlunas@marvell.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Loic Poulain <loic.poulain@linaro.org>, Jiri Pirko <jiri@nvidia.com>,
 drivers@pensando.io, linux-omap@vger.kernel.org, Bin Luo <luobin9@huawei.com>,
 GR-Linux-NIC-Dev@marvell.com, Vadym Kochan <vkochan@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, linux-kernel@vger.kernel.org,
 Coiby Xu <coiby.xu@gmail.com>, UNGLinuxDriver@microchip.com,
 Taras Chornyi <tchornyi@marvell.com>, hariprasad <hkelam@marvell.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 M Chetan Kumar <m.chetan.kumar@intel.com>,
 Derek Chickles <dchickles@marvell.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Geetha sowjanya <gakula@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Leon Romanovsky <leonro@nvidia.com>

This is second version of patch series
https://lore.kernel.org/netdev/cover.1628599239.git.leonro@nvidia.com/

The main change is addition of delayed notification logic that will
allowed us to delete devlink_params_publish API (future series will
remove it completely) and conversion of all drivers to have devlink_register
being last commend.

The series itself is pretty straightforward, except liquidio driver
which performs initializations in various workqueues without proper
locks. That driver doesn't hole device_lock and it is clearly broken
for any parallel driver core flows (modprobe + devlink + PCI reset will
100% crash it).

In order to annotate devlink_register() will lockdep of holding
device_lock, I added workaround in this driver.

Thanks

----------------------
From previous cover letter:
Hi Dave and Jakub,

This series prepares code to remove devlink_reload_enable/_disable API
and in order to do, we move all devlink_register() calls to be right
before devlink_reload_enable().

The best place for such a call should be right before exiting from
the probe().

This is done because devlink_register() opens devlink netlink to the
users and gives them a venue to issue commands before initialization
is finished.

1. Some drivers were aware of such "functionality" and tried to protect
themselves with extra locks, state machines and devlink_reload_enable().
Let's assume that it worked for them, but I'm personally skeptical about
it.

2. Some drivers copied that pattern, but without locks and state
machines. That protected them from reload flows, but not from any _set_
routines.

3. And all other drivers simply didn't understand the implications of early
devlink_register() and can be seen as "broken".

Thanks

Leon Romanovsky (21):
  devlink: Notify users when objects are accessible
  bnxt_en: Register devlink instance at the end devlink configuration
  liquidio: Overcome missing device lock protection in init/remove flows
  dpaa2-eth: Register devlink instance at the end of probe
  net: hinic: Open device for the user access when it is ready
  ice: Open devlink when device is ready
  octeontx2: Move devlink registration to be last devlink command
  net/prestera: Split devlink and traps registrations to separate
    routines
  net/mlx4: Move devlink_register to be the last initialization command
  net/mlx5: Accept devlink user input after driver initialization
    complete
  mlxsw: core: Register devlink instance last
  net: mscc: ocelot: delay devlink registration to the end
  nfp: Move delink_register to be last command
  ionic: Move devlink registration to be last devlink command
  qed: Move devlink registration to be last devlink command
  net: ethernet: ti: Move devlink registration to be last devlink
    command
  netdevsim: Move devlink registration to be last devlink command
  net: wwan: iosm: Move devlink_register to be last devlink command
  ptp: ocp: Move devlink registration to be last devlink command
  staging: qlge: Move devlink registration to be last devlink command
  net: dsa: Move devlink registration to be last devlink command

 .../net/ethernet/broadcom/bnxt/bnxt_devlink.c |  15 +--
 .../net/ethernet/cavium/liquidio/lio_main.c   |  19 ++--
 .../freescale/dpaa2/dpaa2-eth-devlink.c       |  14 ++-
 .../net/ethernet/freescale/dpaa2/dpaa2-eth.c  |   9 +-
 .../net/ethernet/freescale/dpaa2/dpaa2-eth.h  |   5 +-
 .../net/ethernet/huawei/hinic/hinic_hw_dev.c  |   7 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |   6 +-
 .../marvell/octeontx2/af/rvu_devlink.c        |  10 +-
 .../marvell/octeontx2/nic/otx2_devlink.c      |  15 +--
 .../marvell/prestera/prestera_devlink.c       |  29 +----
 .../marvell/prestera/prestera_devlink.h       |   4 +-
 .../ethernet/marvell/prestera/prestera_main.c |   8 +-
 drivers/net/ethernet/mellanox/mlx4/main.c     |   8 +-
 .../net/ethernet/mellanox/mlx5/core/devlink.c |   9 +-
 .../net/ethernet/mellanox/mlx5/core/main.c    |   2 +
 .../mellanox/mlx5/core/sf/dev/driver.c        |   2 +
 drivers/net/ethernet/mellanox/mlxsw/core.c    |  19 +---
 drivers/net/ethernet/mscc/ocelot_vsc7514.c    |   5 +-
 .../ethernet/netronome/nfp/devlink_param.c    |   9 +-
 .../net/ethernet/netronome/nfp/nfp_net_main.c |   5 +-
 .../ethernet/pensando/ionic/ionic_devlink.c   |   4 +-
 drivers/net/ethernet/qlogic/qed/qed_devlink.c |   7 +-
 drivers/net/ethernet/ti/am65-cpsw-nuss.c      |  15 +--
 drivers/net/ethernet/ti/cpsw_new.c            |   7 +-
 drivers/net/netdevsim/dev.c                   |   8 +-
 drivers/net/wwan/iosm/iosm_ipc_devlink.c      |   7 +-
 drivers/ptp/ptp_ocp.c                         |   6 +-
 drivers/staging/qlge/qlge_main.c              |   8 +-
 net/core/devlink.c                            | 107 +++++++++++++++---
 net/dsa/dsa2.c                                |  10 +-
 30 files changed, 202 insertions(+), 177 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
