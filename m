Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A210041C41A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Sep 2021 14:01:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 07697834BB;
	Wed, 29 Sep 2021 12:01:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3i7N2v5SYqCa; Wed, 29 Sep 2021 12:01:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 31CCE83139;
	Wed, 29 Sep 2021 12:01:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CDD191BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 12:01:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BD751405E2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 12:01:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lJF1X6YHI5Vi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Sep 2021 12:01:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3080E4042E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 12:01:05 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 212BF61440;
 Wed, 29 Sep 2021 12:01:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632916864;
 bh=AbpSBYvdx1bYhTCHgzvt3tvP1naCFc6M3Cv8o9XMdVc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KynyWH3gpbLsWs9uFQL64TIAh7GxdQCjQ28OZuw8REbJZ91QeJkSlkZOvWuU/vhhm
 VcQl1UcCuyaAivEa284ZmlVxU6aMNAP0WVBIxGAxBQI+qTa+EhvbQot+bD39hXBoiE
 Ip1SO9lsiJz3CkwjWkol82OtoDnhcZ9i1DGzJWCIp2w/v6vDKugAA0eHkMIEF0kTVn
 nMxmTsZQbcLq7KFBF1pDXEfRU65clw3QH78xssiRxD8HhHMTEYvjin9hSWiDzjNzkp
 Lai/e+3j7S7tkchg3ZWxvL0m7BHR9KiEi05hLg2GSZi1phkdKTK/ikPrBIOGTktz8N
 70Jozq5MotawA==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Wed, 29 Sep 2021 15:00:46 +0300
Message-Id: <0960e3924cec400e52b8c987e7b533131290be51.1632916329.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1632916329.git.leonro@nvidia.com>
References: <cover.1632916329.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 5/5] devlink: Delete reload
 enable/disable interface
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

After changes to allow dynamically set the reload_up/_down callbacks,
we ensure that properly supported devlink ops are not accessible before
devlink_register, which is last command in the initialization sequence.

It makes devlink_reload_enable/_disable not relevant anymore and can be
safely deleted.

Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 .../hisilicon/hns3/hns3pf/hclge_devlink.c     |  3 --
 .../hisilicon/hns3/hns3vf/hclgevf_devlink.c   |  3 --
 drivers/net/ethernet/mellanox/mlx4/main.c     |  2 -
 .../net/ethernet/mellanox/mlx5/core/main.c    |  3 --
 .../mellanox/mlx5/core/sf/dev/driver.c        |  5 +--
 drivers/net/ethernet/mellanox/mlxsw/core.c    | 10 ++---
 drivers/net/netdevsim/dev.c                   |  3 --
 include/net/devlink.h                         |  5 +--
 net/core/devlink.c                            | 40 -------------------
 9 files changed, 5 insertions(+), 69 deletions(-)

diff --git a/drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_devlink.c b/drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_devlink.c
index 329b020c688d..63fab1cd33d7 100644
--- a/drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_devlink.c
+++ b/drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_devlink.c
@@ -120,7 +120,6 @@ int hclge_devlink_init(struct hclge_dev *hdev)
 	hdev->devlink = devlink;
 
 	devlink_register(devlink);
-	devlink_reload_enable(devlink);
 	return 0;
 }
 
@@ -128,8 +127,6 @@ void hclge_devlink_uninit(struct hclge_dev *hdev)
 {
 	struct devlink *devlink = hdev->devlink;
 
-	devlink_reload_disable(devlink);
-
 	devlink_unregister(devlink);
 
 	devlink_free(devlink);
diff --git a/drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_devlink.c b/drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_devlink.c
index 1d9eecc928a5..26f4d20de40d 100644
--- a/drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_devlink.c
+++ b/drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_devlink.c
@@ -122,7 +122,6 @@ int hclgevf_devlink_init(struct hclgevf_dev *hdev)
 	hdev->devlink = devlink;
 
 	devlink_register(devlink);
-	devlink_reload_enable(devlink);
 	return 0;
 }
 
@@ -130,8 +129,6 @@ void hclgevf_devlink_uninit(struct hclgevf_dev *hdev)
 {
 	struct devlink *devlink = hdev->devlink;
 
-	devlink_reload_disable(devlink);
-
 	devlink_unregister(devlink);
 
 	devlink_free(devlink);
diff --git a/drivers/net/ethernet/mellanox/mlx4/main.c b/drivers/net/ethernet/mellanox/mlx4/main.c
index ab805b6f23d4..8389845d5c9e 100644
--- a/drivers/net/ethernet/mellanox/mlx4/main.c
+++ b/drivers/net/ethernet/mellanox/mlx4/main.c
@@ -4026,7 +4026,6 @@ static int mlx4_init_one(struct pci_dev *pdev, const struct pci_device_id *id)
 
 	pci_save_state(pdev);
 	devlink_register(devlink);
-	devlink_reload_enable(devlink);
 	return 0;
 
 err_params_unregister:
@@ -4135,7 +4134,6 @@ static void mlx4_remove_one(struct pci_dev *pdev)
 	struct devlink *devlink = priv_to_devlink(priv);
 	int active_vfs = 0;
 
-	devlink_reload_disable(devlink);
 	devlink_unregister(devlink);
 
 	if (mlx4_is_slave(dev))
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/main.c b/drivers/net/ethernet/mellanox/mlx5/core/main.c
index 92b08fa07efa..261f18d57916 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/main.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/main.c
@@ -1538,8 +1538,6 @@ static int probe_one(struct pci_dev *pdev, const struct pci_device_id *id)
 
 	pci_save_state(pdev);
 	devlink_register(devlink);
-	if (!mlx5_core_is_mp_slave(dev))
-		devlink_reload_enable(devlink);
 	return 0;
 
 err_init_one:
@@ -1559,7 +1557,6 @@ static void remove_one(struct pci_dev *pdev)
 	struct mlx5_core_dev *dev  = pci_get_drvdata(pdev);
 	struct devlink *devlink = priv_to_devlink(dev);
 
-	devlink_reload_disable(devlink);
 	devlink_unregister(devlink);
 	mlx5_crdump_disable(dev);
 	mlx5_drain_health_wq(dev);
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/sf/dev/driver.c b/drivers/net/ethernet/mellanox/mlx5/core/sf/dev/driver.c
index 3cf272fa2164..7b4783ce213e 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/sf/dev/driver.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/sf/dev/driver.c
@@ -47,7 +47,6 @@ static int mlx5_sf_dev_probe(struct auxiliary_device *adev, const struct auxilia
 		goto init_one_err;
 	}
 	devlink_register(devlink);
-	devlink_reload_enable(devlink);
 	return 0;
 
 init_one_err:
@@ -62,10 +61,8 @@ static int mlx5_sf_dev_probe(struct auxiliary_device *adev, const struct auxilia
 static void mlx5_sf_dev_remove(struct auxiliary_device *adev)
 {
 	struct mlx5_sf_dev *sf_dev = container_of(adev, struct mlx5_sf_dev, adev);
-	struct devlink *devlink;
+	struct devlink *devlink = priv_to_devlink(sf_dev->mdev);
 
-	devlink = priv_to_devlink(sf_dev->mdev);
-	devlink_reload_disable(devlink);
 	devlink_unregister(devlink);
 	mlx5_uninit_one(sf_dev->mdev);
 	iounmap(sf_dev->mdev->iseg);
diff --git a/drivers/net/ethernet/mellanox/mlxsw/core.c b/drivers/net/ethernet/mellanox/mlxsw/core.c
index 1012279008f9..efbcee8d5ea9 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/core.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/core.c
@@ -2007,11 +2007,8 @@ __mlxsw_core_bus_device_register(const struct mlxsw_bus_info *mlxsw_bus_info,
 			goto err_driver_init;
 	}
 
-	if (!reload) {
+	if (!reload)
 		devlink_register(devlink);
-		devlink_reload_enable(devlink);
-	}
-
 	return 0;
 
 err_driver_init:
@@ -2075,10 +2072,9 @@ void mlxsw_core_bus_device_unregister(struct mlxsw_core *mlxsw_core,
 {
 	struct devlink *devlink = priv_to_devlink(mlxsw_core);
 
-	if (!reload) {
-		devlink_reload_disable(devlink);
+	if (!reload)
 		devlink_unregister(devlink);
-	}
+
 	if (devlink_is_reload_failed(devlink)) {
 		if (!reload)
 			/* Only the parts that were not de-initialized in the
diff --git a/drivers/net/netdevsim/dev.c b/drivers/net/netdevsim/dev.c
index 466d2c27e868..c66c40afb19f 100644
--- a/drivers/net/netdevsim/dev.c
+++ b/drivers/net/netdevsim/dev.c
@@ -1512,7 +1512,6 @@ int nsim_dev_probe(struct nsim_bus_dev *nsim_bus_dev)
 
 	nsim_dev->esw_mode = DEVLINK_ESWITCH_MODE_LEGACY;
 	devlink_register(devlink);
-	devlink_reload_enable(devlink);
 	return 0;
 
 err_psample_exit:
@@ -1566,9 +1565,7 @@ void nsim_dev_remove(struct nsim_bus_dev *nsim_bus_dev)
 	struct nsim_dev *nsim_dev = dev_get_drvdata(&nsim_bus_dev->dev);
 	struct devlink *devlink = priv_to_devlink(nsim_dev);
 
-	devlink_reload_disable(devlink);
 	devlink_unregister(devlink);
-
 	nsim_dev_reload_destroy(nsim_dev);
 
 	nsim_bpf_dev_exit(nsim_dev);
diff --git a/include/net/devlink.h b/include/net/devlink.h
index 305be548ac21..9403d13617af 100644
--- a/include/net/devlink.h
+++ b/include/net/devlink.h
@@ -54,8 +54,7 @@ struct devlink {
 	struct mutex lock; /* Serializes access to devlink instance specific objects such as
 			    * port, sb, dpipe, resource, params, region, traps and more.
 			    */
-	u8 reload_failed:1,
-	   reload_enabled:1;
+	u8 reload_failed:1;
 	refcount_t refcount;
 	struct completion comp;
 	char priv[0] __aligned(NETDEV_ALIGN);
@@ -1568,8 +1567,6 @@ static inline struct devlink *devlink_alloc(struct devlink_ops *ops,
 void devlink_set_ops(struct devlink *devlink, struct devlink_ops *ops);
 void devlink_register(struct devlink *devlink);
 void devlink_unregister(struct devlink *devlink);
-void devlink_reload_enable(struct devlink *devlink);
-void devlink_reload_disable(struct devlink *devlink);
 void devlink_free(struct devlink *devlink);
 int devlink_port_register(struct devlink *devlink,
 			  struct devlink_port *devlink_port,
diff --git a/net/core/devlink.c b/net/core/devlink.c
index 67a846d424b7..eb6ec87adaae 100644
--- a/net/core/devlink.c
+++ b/net/core/devlink.c
@@ -3958,9 +3958,6 @@ static int devlink_reload(struct devlink *devlink, struct net *dest_net,
 	struct net *curr_net;
 	int err;
 
-	if (!devlink->reload_enabled)
-		return -EOPNOTSUPP;
-
 	memcpy(remote_reload_stats, devlink->stats.remote_reload_stats,
 	       sizeof(remote_reload_stats));
 
@@ -9104,49 +9101,12 @@ void devlink_unregister(struct devlink *devlink)
 	wait_for_completion(&devlink->comp);
 
 	mutex_lock(&devlink_mutex);
-	WARN_ON(devlink_reload_supported(devlink->ops) &&
-		devlink->reload_enabled);
 	devlink_notify_unregister(devlink);
 	xa_clear_mark(&devlinks, devlink->index, DEVLINK_REGISTERED);
 	mutex_unlock(&devlink_mutex);
 }
 EXPORT_SYMBOL_GPL(devlink_unregister);
 
-/**
- *	devlink_reload_enable - Enable reload of devlink instance
- *
- *	@devlink: devlink
- *
- *	Should be called at end of device initialization
- *	process when reload operation is supported.
- */
-void devlink_reload_enable(struct devlink *devlink)
-{
-	mutex_lock(&devlink_mutex);
-	devlink->reload_enabled = true;
-	mutex_unlock(&devlink_mutex);
-}
-EXPORT_SYMBOL_GPL(devlink_reload_enable);
-
-/**
- *	devlink_reload_disable - Disable reload of devlink instance
- *
- *	@devlink: devlink
- *
- *	Should be called at the beginning of device cleanup
- *	process when reload operation is supported.
- */
-void devlink_reload_disable(struct devlink *devlink)
-{
-	mutex_lock(&devlink_mutex);
-	/* Mutex is taken which ensures that no reload operation is in
-	 * progress while setting up forbidded flag.
-	 */
-	devlink->reload_enabled = false;
-	mutex_unlock(&devlink_mutex);
-}
-EXPORT_SYMBOL_GPL(devlink_reload_disable);
-
 /**
  *	devlink_free - Free devlink instance resources
  *
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
