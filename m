Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EA941C26E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Sep 2021 12:16:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 876DE82F9E;
	Wed, 29 Sep 2021 10:16:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d5H7NsBGEX0T; Wed, 29 Sep 2021 10:16:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 98C4B82F8A;
	Wed, 29 Sep 2021 10:16:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0C2EC1BF954
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 10:16:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ECB4D403B7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 10:16:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jRYomplI8TUI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Sep 2021 10:16:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2BFE440012
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 10:16:48 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id EE0576135E;
 Wed, 29 Sep 2021 10:16:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632910607;
 bh=mQ/v2Y98YV6XzE+86H8yYKlXm3WWV7jFnyEmqqOu/N8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rO9HtdRTP7wWcsc6ppy1mSX1I30rGf2ocJATSrAO6cTtJb+hEezTmn5kYVCa4WggJ
 X7sEUqCXz00voTfckdkQrY54lNWZF2GGIFHcZbfR8GlPmBwUXcM9eQrwVN5/vlc0mq
 884tBb0MZ7W14+Bj4w7O+Mt9KXc37+88rS/NYEJodG0MN76/itPK8p5W/7EmS9O0F/
 LqJLi5UUxrPs+aCAOHRFhi32GGJ1XWj50QKzlJpXql0ILrK3eYrLsNporDCIAmmMeU
 vEQJGj5zkTkmioy/JdInvWSfw/EIgBXLFWDO2oSGjml/pyuHtZjBDmlSCdHwC4x7JY
 AzDwzFO15xAeg==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Wed, 29 Sep 2021 13:16:36 +0300
Message-Id: <0e07ad986db7d2f033a97e4c8253940676128237.1632909221.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1632909221.git.leonro@nvidia.com>
References: <cover.1632909221.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 2/5] devlink: Allow modification
 of devlink ops
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

Drop const identifier from devlink_ops declaration to allow
run-time modification of pre-declared ops.

Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 .../net/ethernet/broadcom/bnxt/bnxt_devlink.c |  6 +--
 .../net/ethernet/cavium/liquidio/lio_main.c   |  2 +-
 .../freescale/dpaa2/dpaa2-eth-devlink.c       |  2 +-
 .../hisilicon/hns3/hns3pf/hclge_devlink.c     |  2 +-
 .../hisilicon/hns3/hns3vf/hclgevf_devlink.c   |  2 +-
 .../net/ethernet/huawei/hinic/hinic_devlink.c |  2 +-
 drivers/net/ethernet/intel/ice/ice_devlink.c  |  2 +-
 .../marvell/octeontx2/af/rvu_devlink.c        |  2 +-
 .../marvell/prestera/prestera_devlink.c       |  2 +-
 drivers/net/ethernet/mellanox/mlx4/main.c     |  2 +-
 .../net/ethernet/mellanox/mlx5/core/devlink.c |  2 +-
 drivers/net/ethernet/mellanox/mlxsw/core.c    |  2 +-
 drivers/net/ethernet/mscc/ocelot.h            |  2 +-
 drivers/net/ethernet/mscc/ocelot_net.c        |  2 +-
 .../net/ethernet/netronome/nfp/nfp_devlink.c  |  2 +-
 drivers/net/ethernet/netronome/nfp/nfp_main.h |  2 +-
 .../ethernet/pensando/ionic/ionic_devlink.c   |  2 +-
 drivers/net/ethernet/qlogic/qed/qed_devlink.c |  2 +-
 drivers/net/ethernet/ti/am65-cpsw-nuss.c      |  2 +-
 drivers/net/ethernet/ti/cpsw_new.c            |  2 +-
 drivers/net/netdevsim/dev.c                   |  2 +-
 drivers/ptp/ptp_ocp.c                         |  2 +-
 drivers/staging/qlge/qlge_main.c              |  2 +-
 include/net/devlink.h                         |  9 ++--
 net/core/devlink.c                            | 52 +++++++++----------
 net/dsa/dsa2.c                                |  2 +-
 26 files changed, 55 insertions(+), 58 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c b/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c
index 951c0c00cc95..0a1004d0be07 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c
@@ -280,7 +280,7 @@ void bnxt_dl_health_recovery_done(struct bnxt *bp)
 static int bnxt_dl_info_get(struct devlink *dl, struct devlink_info_req *req,
 			    struct netlink_ext_ack *extack);
 
-static const struct devlink_ops bnxt_dl_ops = {
+static struct devlink_ops bnxt_dl_ops = {
 #ifdef CONFIG_BNXT_SRIOV
 	.eswitch_mode_set = bnxt_dl_eswitch_mode_set,
 	.eswitch_mode_get = bnxt_dl_eswitch_mode_get,
@@ -289,7 +289,7 @@ static const struct devlink_ops bnxt_dl_ops = {
 	.flash_update	  = bnxt_dl_flash_update,
 };
 
-static const struct devlink_ops bnxt_vf_dl_ops;
+static struct devlink_ops bnxt_vf_dl_ops;
 
 enum bnxt_dl_param_id {
 	BNXT_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
@@ -762,8 +762,8 @@ static void bnxt_dl_params_unregister(struct bnxt *bp)
 
 int bnxt_dl_register(struct bnxt *bp)
 {
-	const struct devlink_ops *devlink_ops;
 	struct devlink_port_attrs attrs = {};
+	struct devlink_ops *devlink_ops;
 	struct bnxt_dl *bp_dl;
 	struct devlink *dl;
 	int rc;
diff --git a/drivers/net/ethernet/cavium/liquidio/lio_main.c b/drivers/net/ethernet/cavium/liquidio/lio_main.c
index dafc79bd34f4..6684f4127ef2 100644
--- a/drivers/net/ethernet/cavium/liquidio/lio_main.c
+++ b/drivers/net/ethernet/cavium/liquidio/lio_main.c
@@ -3167,7 +3167,7 @@ liquidio_eswitch_mode_set(struct devlink *devlink, u16 mode,
 	return ret;
 }
 
-static const struct devlink_ops liquidio_devlink_ops = {
+static struct devlink_ops liquidio_devlink_ops = {
 	.eswitch_mode_get = liquidio_eswitch_mode_get,
 	.eswitch_mode_set = liquidio_eswitch_mode_set,
 };
diff --git a/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth-devlink.c b/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth-devlink.c
index 7fefe1574b6a..da6040fbb354 100644
--- a/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth-devlink.c
+++ b/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth-devlink.c
@@ -182,7 +182,7 @@ static int dpaa2_eth_dl_trap_group_action_set(struct devlink *devlink,
 	return 0;
 }
 
-static const struct devlink_ops dpaa2_eth_devlink_ops = {
+static struct devlink_ops dpaa2_eth_devlink_ops = {
 	.info_get = dpaa2_eth_dl_info_get,
 	.trap_init = dpaa2_eth_dl_trap_init,
 	.trap_action_set = dpaa2_eth_dl_trap_action_set,
diff --git a/drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_devlink.c b/drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_devlink.c
index 59b0ae7d59e0..329b020c688d 100644
--- a/drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_devlink.c
+++ b/drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_devlink.c
@@ -97,7 +97,7 @@ static int hclge_devlink_reload_up(struct devlink *devlink,
 	}
 }
 
-static const struct devlink_ops hclge_devlink_ops = {
+static struct devlink_ops hclge_devlink_ops = {
 	.info_get = hclge_devlink_info_get,
 	.reload_actions = BIT(DEVLINK_RELOAD_ACTION_DRIVER_REINIT),
 	.reload_down = hclge_devlink_reload_down,
diff --git a/drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_devlink.c b/drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_devlink.c
index d60cc9426f70..1d9eecc928a5 100644
--- a/drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_devlink.c
+++ b/drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_devlink.c
@@ -98,7 +98,7 @@ static int hclgevf_devlink_reload_up(struct devlink *devlink,
 	}
 }
 
-static const struct devlink_ops hclgevf_devlink_ops = {
+static struct devlink_ops hclgevf_devlink_ops = {
 	.info_get = hclgevf_devlink_info_get,
 	.reload_actions = BIT(DEVLINK_RELOAD_ACTION_DRIVER_REINIT),
 	.reload_down = hclgevf_devlink_reload_down,
diff --git a/drivers/net/ethernet/huawei/hinic/hinic_devlink.c b/drivers/net/ethernet/huawei/hinic/hinic_devlink.c
index 60ae8bfc5f69..22365c85911f 100644
--- a/drivers/net/ethernet/huawei/hinic/hinic_devlink.c
+++ b/drivers/net/ethernet/huawei/hinic/hinic_devlink.c
@@ -289,7 +289,7 @@ static int hinic_devlink_flash_update(struct devlink *devlink,
 	return hinic_firmware_update(priv, params->fw, extack);
 }
 
-static const struct devlink_ops hinic_devlink_ops = {
+static struct devlink_ops hinic_devlink_ops = {
 	.flash_update = hinic_devlink_flash_update,
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index ab3d876fa624..ac3a66542a29 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -454,7 +454,7 @@ ice_devlink_flash_update(struct devlink *devlink,
 	return ice_flash_pldm_image(pf, params->fw, preservation, extack);
 }
 
-static const struct devlink_ops ice_devlink_ops = {
+static struct devlink_ops ice_devlink_ops = {
 	.supported_flash_update_params = DEVLINK_SUPPORT_FLASH_UPDATE_OVERWRITE_MASK,
 	.info_get = ice_devlink_info_get,
 	.flash_update = ice_devlink_flash_update,
diff --git a/drivers/net/ethernet/marvell/octeontx2/af/rvu_devlink.c b/drivers/net/ethernet/marvell/octeontx2/af/rvu_devlink.c
index 70bacd38a6d9..e65ae07bd7b0 100644
--- a/drivers/net/ethernet/marvell/octeontx2/af/rvu_devlink.c
+++ b/drivers/net/ethernet/marvell/octeontx2/af/rvu_devlink.c
@@ -1491,7 +1491,7 @@ static int rvu_devlink_info_get(struct devlink *devlink, struct devlink_info_req
 	return devlink_info_driver_name_put(req, DRV_NAME);
 }
 
-static const struct devlink_ops rvu_devlink_ops = {
+static struct devlink_ops rvu_devlink_ops = {
 	.info_get = rvu_devlink_info_get,
 	.eswitch_mode_get = rvu_devlink_eswitch_mode_get,
 	.eswitch_mode_set = rvu_devlink_eswitch_mode_set,
diff --git a/drivers/net/ethernet/marvell/prestera/prestera_devlink.c b/drivers/net/ethernet/marvell/prestera/prestera_devlink.c
index 06279cd6da67..8110deba9331 100644
--- a/drivers/net/ethernet/marvell/prestera/prestera_devlink.c
+++ b/drivers/net/ethernet/marvell/prestera/prestera_devlink.c
@@ -379,7 +379,7 @@ static int prestera_trap_action_set(struct devlink *devlink,
 				    enum devlink_trap_action action,
 				    struct netlink_ext_ack *extack);
 
-static const struct devlink_ops prestera_dl_ops = {
+static struct devlink_ops prestera_dl_ops = {
 	.info_get = prestera_dl_info_get,
 	.trap_init = prestera_trap_init,
 	.trap_action_set = prestera_trap_action_set,
diff --git a/drivers/net/ethernet/mellanox/mlx4/main.c b/drivers/net/ethernet/mellanox/mlx4/main.c
index 9541f3a920c8..ab805b6f23d4 100644
--- a/drivers/net/ethernet/mellanox/mlx4/main.c
+++ b/drivers/net/ethernet/mellanox/mlx4/main.c
@@ -3980,7 +3980,7 @@ static int mlx4_devlink_reload_up(struct devlink *devlink, enum devlink_reload_a
 	return err;
 }
 
-static const struct devlink_ops mlx4_devlink_ops = {
+static struct devlink_ops mlx4_devlink_ops = {
 	.port_type_set	= mlx4_devlink_port_type_set,
 	.reload_actions = BIT(DEVLINK_RELOAD_ACTION_DRIVER_REINIT),
 	.reload_down	= mlx4_devlink_reload_down,
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/devlink.c b/drivers/net/ethernet/mellanox/mlx5/core/devlink.c
index d7576b6fa43b..47c9f7f5bb79 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/devlink.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/devlink.c
@@ -283,7 +283,7 @@ static int mlx5_devlink_trap_action_set(struct devlink *devlink,
 	return err;
 }
 
-static const struct devlink_ops mlx5_devlink_ops = {
+static struct devlink_ops mlx5_devlink_ops = {
 #ifdef CONFIG_MLX5_ESWITCH
 	.eswitch_mode_set = mlx5_devlink_eswitch_mode_set,
 	.eswitch_mode_get = mlx5_devlink_eswitch_mode_get,
diff --git a/drivers/net/ethernet/mellanox/mlxsw/core.c b/drivers/net/ethernet/mellanox/mlxsw/core.c
index 9e831e8b607a..1012279008f9 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/core.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/core.c
@@ -1614,7 +1614,7 @@ mlxsw_devlink_trap_policer_counter_get(struct devlink *devlink,
 						      p_drops);
 }
 
-static const struct devlink_ops mlxsw_devlink_ops = {
+static struct devlink_ops mlxsw_devlink_ops = {
 	.reload_actions		= BIT(DEVLINK_RELOAD_ACTION_DRIVER_REINIT) |
 				  BIT(DEVLINK_RELOAD_ACTION_FW_ACTIVATE),
 	.reload_down		= mlxsw_devlink_core_bus_device_reload_down,
diff --git a/drivers/net/ethernet/mscc/ocelot.h b/drivers/net/ethernet/mscc/ocelot.h
index 1952d6a1b98a..b7e8c7caa437 100644
--- a/drivers/net/ethernet/mscc/ocelot.h
+++ b/drivers/net/ethernet/mscc/ocelot.h
@@ -115,6 +115,6 @@ void ocelot_port_devlink_teardown(struct ocelot *ocelot, int port);
 extern struct notifier_block ocelot_netdevice_nb;
 extern struct notifier_block ocelot_switchdev_nb;
 extern struct notifier_block ocelot_switchdev_blocking_nb;
-extern const struct devlink_ops ocelot_devlink_ops;
+extern struct devlink_ops ocelot_devlink_ops;
 
 #endif
diff --git a/drivers/net/ethernet/mscc/ocelot_net.c b/drivers/net/ethernet/mscc/ocelot_net.c
index e54b9fb2a97a..8c08f63c4836 100644
--- a/drivers/net/ethernet/mscc/ocelot_net.c
+++ b/drivers/net/ethernet/mscc/ocelot_net.c
@@ -143,7 +143,7 @@ ocelot_devlink_sb_occ_tc_port_bind_get(struct devlink_port *dlp,
 					      p_cur, p_max);
 }
 
-const struct devlink_ops ocelot_devlink_ops = {
+struct devlink_ops ocelot_devlink_ops = {
 	.sb_pool_get			= ocelot_devlink_sb_pool_get,
 	.sb_pool_set			= ocelot_devlink_sb_pool_set,
 	.sb_port_pool_get		= ocelot_devlink_sb_port_pool_get,
diff --git a/drivers/net/ethernet/netronome/nfp/nfp_devlink.c b/drivers/net/ethernet/netronome/nfp/nfp_devlink.c
index bea978df7713..0db2ce522d5d 100644
--- a/drivers/net/ethernet/netronome/nfp/nfp_devlink.c
+++ b/drivers/net/ethernet/netronome/nfp/nfp_devlink.c
@@ -336,7 +336,7 @@ nfp_devlink_flash_update(struct devlink *devlink,
 	return nfp_flash_update_common(devlink_priv(devlink), params->fw, extack);
 }
 
-const struct devlink_ops nfp_devlink_ops = {
+struct devlink_ops nfp_devlink_ops = {
 	.port_split		= nfp_devlink_port_split,
 	.port_unsplit		= nfp_devlink_port_unsplit,
 	.sb_pool_get		= nfp_devlink_sb_pool_get,
diff --git a/drivers/net/ethernet/netronome/nfp/nfp_main.h b/drivers/net/ethernet/netronome/nfp/nfp_main.h
index a7dede946a33..2273d0e76870 100644
--- a/drivers/net/ethernet/netronome/nfp/nfp_main.h
+++ b/drivers/net/ethernet/netronome/nfp/nfp_main.h
@@ -145,7 +145,7 @@ struct nfp_pf {
 
 extern struct pci_driver nfp_netvf_pci_driver;
 
-extern const struct devlink_ops nfp_devlink_ops;
+extern struct devlink_ops nfp_devlink_ops;
 
 int nfp_net_pci_probe(struct nfp_pf *pf);
 void nfp_net_pci_remove(struct nfp_pf *pf);
diff --git a/drivers/net/ethernet/pensando/ionic/ionic_devlink.c b/drivers/net/ethernet/pensando/ionic/ionic_devlink.c
index 2267da95640b..3c26b0a1c8dc 100644
--- a/drivers/net/ethernet/pensando/ionic/ionic_devlink.c
+++ b/drivers/net/ethernet/pensando/ionic/ionic_devlink.c
@@ -55,7 +55,7 @@ static int ionic_dl_info_get(struct devlink *dl, struct devlink_info_req *req,
 	return err;
 }
 
-static const struct devlink_ops ionic_dl_ops = {
+static struct devlink_ops ionic_dl_ops = {
 	.info_get	= ionic_dl_info_get,
 	.flash_update	= ionic_dl_flash_update,
 };
diff --git a/drivers/net/ethernet/qlogic/qed/qed_devlink.c b/drivers/net/ethernet/qlogic/qed/qed_devlink.c
index 6bb4e165b592..fe1d21c36944 100644
--- a/drivers/net/ethernet/qlogic/qed/qed_devlink.c
+++ b/drivers/net/ethernet/qlogic/qed/qed_devlink.c
@@ -196,7 +196,7 @@ static int qed_devlink_info_get(struct devlink *devlink,
 						DEVLINK_INFO_VERSION_GENERIC_FW_APP, buf);
 }
 
-static const struct devlink_ops qed_dl_ops = {
+static struct devlink_ops qed_dl_ops = {
 	.info_get = qed_devlink_info_get,
 };
 
diff --git a/drivers/net/ethernet/ti/am65-cpsw-nuss.c b/drivers/net/ethernet/ti/am65-cpsw-nuss.c
index 0de5f4a4fe08..9c686eaf798f 100644
--- a/drivers/net/ethernet/ti/am65-cpsw-nuss.c
+++ b/drivers/net/ethernet/ti/am65-cpsw-nuss.c
@@ -2200,7 +2200,7 @@ static void am65_cpsw_unregister_notifiers(struct am65_cpsw_common *cpsw)
 	unregister_netdevice_notifier(&cpsw->am65_cpsw_netdevice_nb);
 }
 
-static const struct devlink_ops am65_cpsw_devlink_ops = {};
+static struct devlink_ops am65_cpsw_devlink_ops = {};
 
 static void am65_cpsw_init_stp_ale_entry(struct am65_cpsw_common *cpsw)
 {
diff --git a/drivers/net/ethernet/ti/cpsw_new.c b/drivers/net/ethernet/ti/cpsw_new.c
index 1530532748a8..ca6f78527af1 100644
--- a/drivers/net/ethernet/ti/cpsw_new.c
+++ b/drivers/net/ethernet/ti/cpsw_new.c
@@ -1604,7 +1604,7 @@ static void cpsw_unregister_notifiers(struct cpsw_common *cpsw)
 	unregister_netdevice_notifier(&cpsw_netdevice_nb);
 }
 
-static const struct devlink_ops cpsw_devlink_ops = {
+static struct devlink_ops cpsw_devlink_ops = {
 };
 
 static int cpsw_dl_switch_mode_get(struct devlink *dl, u32 id,
diff --git a/drivers/net/netdevsim/dev.c b/drivers/net/netdevsim/dev.c
index cb6645012a30..466d2c27e868 100644
--- a/drivers/net/netdevsim/dev.c
+++ b/drivers/net/netdevsim/dev.c
@@ -1241,7 +1241,7 @@ nsim_dev_devlink_trap_drop_counter_get(struct devlink *devlink,
 	return 0;
 }
 
-static const struct devlink_ops nsim_dev_devlink_ops = {
+static struct devlink_ops nsim_dev_devlink_ops = {
 	.eswitch_mode_set = nsim_devlink_eswitch_mode_set,
 	.eswitch_mode_get = nsim_devlink_eswitch_mode_get,
 	.supported_flash_update_params = DEVLINK_SUPPORT_FLASH_UPDATE_COMPONENT |
diff --git a/drivers/ptp/ptp_ocp.c b/drivers/ptp/ptp_ocp.c
index 34f943c8c9fd..c89be26ce4d2 100644
--- a/drivers/ptp/ptp_ocp.c
+++ b/drivers/ptp/ptp_ocp.c
@@ -1106,7 +1106,7 @@ ptp_ocp_devlink_info_get(struct devlink *devlink, struct devlink_info_req *req,
 	return 0;
 }
 
-static const struct devlink_ops ptp_ocp_devlink_ops = {
+static struct devlink_ops ptp_ocp_devlink_ops = {
 	.flash_update = ptp_ocp_devlink_flash_update,
 	.info_get = ptp_ocp_devlink_info_get,
 };
diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 1dc849378a0f..55657c10b443 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -4535,7 +4535,7 @@ static void qlge_timer(struct timer_list *t)
 	mod_timer(&qdev->timer, jiffies + (5 * HZ));
 }
 
-static const struct devlink_ops qlge_devlink_ops;
+static struct devlink_ops qlge_devlink_ops;
 
 static int qlge_probe(struct pci_dev *pdev,
 		      const struct pci_device_id *pci_entry)
diff --git a/include/net/devlink.h b/include/net/devlink.h
index a7852a257bf6..317b09917c41 100644
--- a/include/net/devlink.h
+++ b/include/net/devlink.h
@@ -46,7 +46,7 @@ struct devlink {
 	struct list_head trap_list;
 	struct list_head trap_group_list;
 	struct list_head trap_policer_list;
-	const struct devlink_ops *ops;
+	struct devlink_ops *ops;
 	struct xarray snapshot_ids;
 	struct devlink_dev_stats stats;
 	struct device *dev;
@@ -1557,10 +1557,9 @@ struct net *devlink_net(const struct devlink *devlink);
  *
  * Drivers that operate on real HW must use devlink_alloc() instead.
  */
-struct devlink *devlink_alloc_ns(const struct devlink_ops *ops,
-				 size_t priv_size, struct net *net,
-				 struct device *dev);
-static inline struct devlink *devlink_alloc(const struct devlink_ops *ops,
+struct devlink *devlink_alloc_ns(struct devlink_ops *ops, size_t priv_size,
+				 struct net *net, struct device *dev);
+static inline struct devlink *devlink_alloc(struct devlink_ops *ops,
 					    size_t priv_size,
 					    struct device *dev)
 {
diff --git a/net/core/devlink.c b/net/core/devlink.c
index 35c74c8e5e2f..cee2be47c40e 100644
--- a/net/core/devlink.c
+++ b/net/core/devlink.c
@@ -821,7 +821,7 @@ static int devlink_nl_port_attrs_put(struct sk_buff *msg,
 	return 0;
 }
 
-static int devlink_port_fn_hw_addr_fill(const struct devlink_ops *ops,
+static int devlink_port_fn_hw_addr_fill(struct devlink_ops *ops,
 					struct devlink_port *port,
 					struct sk_buff *msg,
 					struct netlink_ext_ack *extack,
@@ -911,7 +911,7 @@ devlink_port_fn_opstate_valid(enum devlink_port_fn_opstate opstate)
 	       opstate == DEVLINK_PORT_FN_OPSTATE_ATTACHED;
 }
 
-static int devlink_port_fn_state_fill(const struct devlink_ops *ops,
+static int devlink_port_fn_state_fill(struct devlink_ops *ops,
 				      struct devlink_port *port,
 				      struct sk_buff *msg,
 				      struct netlink_ext_ack *extack,
@@ -952,9 +952,9 @@ static int
 devlink_nl_port_function_attrs_put(struct sk_buff *msg, struct devlink_port *port,
 				   struct netlink_ext_ack *extack)
 {
-	const struct devlink_ops *ops;
 	struct nlattr *function_attr;
 	bool msg_updated = false;
+	struct devlink_ops *ops;
 	int err;
 
 	function_attr = nla_nest_start_noflag(msg, DEVLINK_ATTR_PORT_FUNCTION);
@@ -1330,7 +1330,7 @@ static int devlink_port_function_hw_addr_set(struct devlink_port *port,
 					     const struct nlattr *attr,
 					     struct netlink_ext_ack *extack)
 {
-	const struct devlink_ops *ops = port->devlink->ops;
+	struct devlink_ops *ops = port->devlink->ops;
 	const u8 *hw_addr;
 	int hw_addr_len;
 
@@ -1365,7 +1365,7 @@ static int devlink_port_fn_state_set(struct devlink_port *port,
 				     struct netlink_ext_ack *extack)
 {
 	enum devlink_port_fn_state state;
-	const struct devlink_ops *ops;
+	struct devlink_ops *ops;
 
 	state = nla_get_u8(attr);
 	ops = port->devlink->ops;
@@ -1616,7 +1616,7 @@ devlink_nl_rate_parent_node_set(struct devlink_rate *devlink_rate,
 {
 	struct devlink *devlink = devlink_rate->devlink;
 	const char *parent_name = nla_data(nla_parent);
-	const struct devlink_ops *ops = devlink->ops;
+	struct devlink_ops *ops = devlink->ops;
 	size_t len = strlen(parent_name);
 	struct devlink_rate *parent;
 	int err = -EOPNOTSUPP;
@@ -1674,8 +1674,7 @@ devlink_nl_rate_parent_node_set(struct devlink_rate *devlink_rate,
 }
 
 static int devlink_nl_rate_set(struct devlink_rate *devlink_rate,
-			       const struct devlink_ops *ops,
-			       struct genl_info *info)
+			       struct devlink_ops *ops, struct genl_info *info)
 {
 	struct nlattr *nla_parent, **attrs = info->attrs;
 	int err = -EOPNOTSUPP;
@@ -1718,7 +1717,7 @@ static int devlink_nl_rate_set(struct devlink_rate *devlink_rate,
 	return 0;
 }
 
-static bool devlink_rate_set_ops_supported(const struct devlink_ops *ops,
+static bool devlink_rate_set_ops_supported(struct devlink_ops *ops,
 					   struct genl_info *info,
 					   enum devlink_rate_type type)
 {
@@ -1765,7 +1764,7 @@ static int devlink_nl_cmd_rate_set_doit(struct sk_buff *skb,
 {
 	struct devlink_rate *devlink_rate = info->user_ptr[1];
 	struct devlink *devlink = devlink_rate->devlink;
-	const struct devlink_ops *ops = devlink->ops;
+	struct devlink_ops *ops = devlink->ops;
 	int err;
 
 	if (!ops || !devlink_rate_set_ops_supported(ops, info, devlink_rate->type))
@@ -1783,7 +1782,7 @@ static int devlink_nl_cmd_rate_new_doit(struct sk_buff *skb,
 {
 	struct devlink *devlink = info->user_ptr[0];
 	struct devlink_rate *rate_node;
-	const struct devlink_ops *ops;
+	struct devlink_ops *ops;
 	int err;
 
 	ops = devlink->ops;
@@ -1840,7 +1839,7 @@ static int devlink_nl_cmd_rate_del_doit(struct sk_buff *skb,
 {
 	struct devlink_rate *rate_node = info->user_ptr[1];
 	struct devlink *devlink = rate_node->devlink;
-	const struct devlink_ops *ops = devlink->ops;
+	struct devlink_ops *ops = devlink->ops;
 	int err;
 
 	if (refcount_read(&rate_node->refcnt) > 1) {
@@ -2128,7 +2127,7 @@ static int devlink_sb_pool_set(struct devlink *devlink, unsigned int sb_index,
 			       struct netlink_ext_ack *extack)
 
 {
-	const struct devlink_ops *ops = devlink->ops;
+	struct devlink_ops *ops = devlink->ops;
 
 	if (ops->sb_pool_set)
 		return ops->sb_pool_set(devlink, sb_index, pool_index,
@@ -2176,7 +2175,7 @@ static int devlink_nl_sb_port_pool_fill(struct sk_buff *msg,
 					enum devlink_command cmd,
 					u32 portid, u32 seq, int flags)
 {
-	const struct devlink_ops *ops = devlink->ops;
+	struct devlink_ops *ops = devlink->ops;
 	u32 threshold;
 	void *hdr;
 	int err;
@@ -2349,7 +2348,7 @@ static int devlink_sb_port_pool_set(struct devlink_port *devlink_port,
 				    struct netlink_ext_ack *extack)
 
 {
-	const struct devlink_ops *ops = devlink_port->devlink->ops;
+	struct devlink_ops *ops = devlink_port->devlink->ops;
 
 	if (ops->sb_port_pool_set)
 		return ops->sb_port_pool_set(devlink_port, sb_index,
@@ -2392,7 +2391,7 @@ devlink_nl_sb_tc_pool_bind_fill(struct sk_buff *msg, struct devlink *devlink,
 				enum devlink_command cmd,
 				u32 portid, u32 seq, int flags)
 {
-	const struct devlink_ops *ops = devlink->ops;
+	struct devlink_ops *ops = devlink->ops;
 	u16 pool_index;
 	u32 threshold;
 	void *hdr;
@@ -2600,7 +2599,7 @@ static int devlink_sb_tc_pool_bind_set(struct devlink_port *devlink_port,
 				       struct netlink_ext_ack *extack)
 
 {
-	const struct devlink_ops *ops = devlink_port->devlink->ops;
+	struct devlink_ops *ops = devlink_port->devlink->ops;
 
 	if (ops->sb_tc_pool_bind_set)
 		return ops->sb_tc_pool_bind_set(devlink_port, sb_index,
@@ -2652,7 +2651,7 @@ static int devlink_nl_cmd_sb_occ_snapshot_doit(struct sk_buff *skb,
 					       struct genl_info *info)
 {
 	struct devlink *devlink = info->user_ptr[0];
-	const struct devlink_ops *ops = devlink->ops;
+	struct devlink_ops *ops = devlink->ops;
 	struct devlink_sb *devlink_sb;
 
 	devlink_sb = devlink_sb_get_from_info(devlink, info);
@@ -2668,7 +2667,7 @@ static int devlink_nl_cmd_sb_occ_max_clear_doit(struct sk_buff *skb,
 						struct genl_info *info)
 {
 	struct devlink *devlink = info->user_ptr[0];
-	const struct devlink_ops *ops = devlink->ops;
+	struct devlink_ops *ops = devlink->ops;
 	struct devlink_sb *devlink_sb;
 
 	devlink_sb = devlink_sb_get_from_info(devlink, info);
@@ -2684,8 +2683,8 @@ static int devlink_nl_eswitch_fill(struct sk_buff *msg, struct devlink *devlink,
 				   enum devlink_command cmd, u32 portid,
 				   u32 seq, int flags)
 {
-	const struct devlink_ops *ops = devlink->ops;
 	enum devlink_eswitch_encap_mode encap_mode;
+	struct devlink_ops *ops = devlink->ops;
 	u8 inline_mode;
 	void *hdr;
 	int err = 0;
@@ -2778,8 +2777,8 @@ static int devlink_nl_cmd_eswitch_set_doit(struct sk_buff *skb,
 					   struct genl_info *info)
 {
 	struct devlink *devlink = info->user_ptr[0];
-	const struct devlink_ops *ops = devlink->ops;
 	enum devlink_eswitch_encap_mode encap_mode;
+	struct devlink_ops *ops = devlink->ops;
 	u8 inline_mode;
 	int err = 0;
 	u16 mode;
@@ -3880,7 +3879,7 @@ static void devlink_ns_change_notify(struct devlink *devlink,
 		devlink_notify(devlink, DEVLINK_CMD_DEL);
 }
 
-static bool devlink_reload_supported(const struct devlink_ops *ops)
+static bool devlink_reload_supported(struct devlink_ops *ops)
 {
 	return ops->reload_down && ops->reload_up;
 }
@@ -8879,7 +8878,7 @@ static struct genl_family devlink_nl_family __ro_after_init = {
 	.n_mcgrps	= ARRAY_SIZE(devlink_nl_mcgrps),
 };
 
-static bool devlink_reload_actions_valid(const struct devlink_ops *ops)
+static bool devlink_reload_actions_valid(struct devlink_ops *ops)
 {
 	const struct devlink_reload_combination *comb;
 	int i;
@@ -8920,9 +8919,8 @@ static bool devlink_reload_actions_valid(const struct devlink_ops *ops)
  *	Allocate new devlink instance resources, including devlink index
  *	and name.
  */
-struct devlink *devlink_alloc_ns(const struct devlink_ops *ops,
-				 size_t priv_size, struct net *net,
-				 struct device *dev)
+struct devlink *devlink_alloc_ns(struct devlink_ops *ops, size_t priv_size,
+				 struct net *net, struct device *dev)
 {
 	struct devlink *devlink;
 	static u32 last_id;
@@ -9527,7 +9525,7 @@ EXPORT_SYMBOL_GPL(devlink_rate_leaf_destroy);
 void devlink_rate_nodes_destroy(struct devlink *devlink)
 {
 	static struct devlink_rate *devlink_rate, *tmp;
-	const struct devlink_ops *ops = devlink->ops;
+	struct devlink_ops *ops = devlink->ops;
 
 	mutex_lock(&devlink->lock);
 	list_for_each_entry(devlink_rate, &devlink->rate_list, list) {
diff --git a/net/dsa/dsa2.c b/net/dsa/dsa2.c
index 8ca6a1170c9d..c07e4be3ed55 100644
--- a/net/dsa/dsa2.c
+++ b/net/dsa/dsa2.c
@@ -784,7 +784,7 @@ dsa_devlink_sb_occ_tc_port_bind_get(struct devlink_port *dlp,
 							p_max);
 }
 
-static const struct devlink_ops dsa_devlink_ops = {
+static struct devlink_ops dsa_devlink_ops = {
 	.info_get			= dsa_devlink_info_get,
 	.sb_pool_get			= dsa_devlink_sb_pool_get,
 	.sb_pool_set			= dsa_devlink_sb_pool_set,
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
