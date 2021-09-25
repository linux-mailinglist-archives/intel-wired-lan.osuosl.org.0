Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C6FB8418159
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Sep 2021 13:23:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 64D7182EF0;
	Sat, 25 Sep 2021 11:23:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Erg_x_69t-Xu; Sat, 25 Sep 2021 11:23:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6735582DD9;
	Sat, 25 Sep 2021 11:23:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D66FB1BF869
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C49D482DD9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zjFRDBkLoGKs for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Sep 2021 11:23:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4A29C82EBA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:41 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 137D361283;
 Sat, 25 Sep 2021 11:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632569021;
 bh=pUbkHY0vLhXWzTqeqyikItDOpfddhvNos+1sgTUBTR4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WQR4ljxZy+usZPnLesAejIasJivigRp0LS+HuMU22e7S386OBHOLwL+o8RUd5buz6
 kguMzkCXimp2hkUSwGli2B2qJEbbZyTGl+AnA3IxA7sWJLTUeZlDap7zeqSr4Br767
 ZsNPsfXFopKpTVZcRJNn+PdT1plW+K8YKdsZ9rvxhJSm2S9Oq5+IzENfjP8wwFybFm
 UCFmt7LvKub5o/ollb3esYSpgq4fuv66Nbp36NTUbQnRrBGNy5++u6hsU0P7SWOEEP
 ecUDd7szo5zQLBppMR5a4fWQNdDEmtj5gPLgVrqRuU8bGiB0fc/yAL5agDgI2BKkfy
 iXGWWJeZvDQaw==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Sat, 25 Sep 2021 14:22:51 +0300
Message-Id: <ca198a30949abb3bdf283ff87e6e718be355d0cf.1632565508.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1632565508.git.leonro@nvidia.com>
References: <cover.1632565508.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 11/21] mlxsw: core: Register
 devlink instance last
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

Make sure that devlink is open to receive user input when all
parameters are initialized.

Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/net/ethernet/mellanox/mlxsw/core.c | 19 ++++++-------------
 1 file changed, 6 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlxsw/core.c b/drivers/net/ethernet/mellanox/mlxsw/core.c
index 9a570fa167b6..9e831e8b607a 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/core.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/core.c
@@ -1973,9 +1973,6 @@ __mlxsw_core_bus_device_register(const struct mlxsw_bus_info *mlxsw_bus_info,
 	if (err)
 		goto err_emad_init;
 
-	if (!reload)
-		devlink_register(devlink);
-
 	if (!reload) {
 		err = mlxsw_core_params_register(mlxsw_core);
 		if (err)
@@ -2010,10 +2007,10 @@ __mlxsw_core_bus_device_register(const struct mlxsw_bus_info *mlxsw_bus_info,
 			goto err_driver_init;
 	}
 
-	devlink_params_publish(devlink);
-
-	if (!reload)
+	if (!reload) {
+		devlink_register(devlink);
 		devlink_reload_enable(devlink);
+	}
 
 	return 0;
 
@@ -2030,8 +2027,6 @@ __mlxsw_core_bus_device_register(const struct mlxsw_bus_info *mlxsw_bus_info,
 	if (!reload)
 		mlxsw_core_params_unregister(mlxsw_core);
 err_register_params:
-	if (!reload)
-		devlink_unregister(devlink);
 	mlxsw_emad_fini(mlxsw_core);
 err_emad_init:
 	kfree(mlxsw_core->lag.mapping);
@@ -2080,8 +2075,10 @@ void mlxsw_core_bus_device_unregister(struct mlxsw_core *mlxsw_core,
 {
 	struct devlink *devlink = priv_to_devlink(mlxsw_core);
 
-	if (!reload)
+	if (!reload) {
 		devlink_reload_disable(devlink);
+		devlink_unregister(devlink);
+	}
 	if (devlink_is_reload_failed(devlink)) {
 		if (!reload)
 			/* Only the parts that were not de-initialized in the
@@ -2092,7 +2089,6 @@ void mlxsw_core_bus_device_unregister(struct mlxsw_core *mlxsw_core,
 			return;
 	}
 
-	devlink_params_unpublish(devlink);
 	if (mlxsw_core->driver->fini)
 		mlxsw_core->driver->fini(mlxsw_core);
 	mlxsw_env_fini(mlxsw_core->env);
@@ -2101,8 +2097,6 @@ void mlxsw_core_bus_device_unregister(struct mlxsw_core *mlxsw_core,
 	mlxsw_core_health_fini(mlxsw_core);
 	if (!reload)
 		mlxsw_core_params_unregister(mlxsw_core);
-	if (!reload)
-		devlink_unregister(devlink);
 	mlxsw_emad_fini(mlxsw_core);
 	kfree(mlxsw_core->lag.mapping);
 	mlxsw_ports_fini(mlxsw_core, reload);
@@ -2116,7 +2110,6 @@ void mlxsw_core_bus_device_unregister(struct mlxsw_core *mlxsw_core,
 
 reload_fail_deinit:
 	mlxsw_core_params_unregister(mlxsw_core);
-	devlink_unregister(devlink);
 	devlink_resources_unregister(devlink, NULL);
 	devlink_free(devlink);
 }
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
