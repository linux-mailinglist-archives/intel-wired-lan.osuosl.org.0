Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C8EF4418160
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Sep 2021 13:23:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 641CC4030D;
	Sat, 25 Sep 2021 11:23:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dg1asGjjVuVc; Sat, 25 Sep 2021 11:23:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 725DF40190;
	Sat, 25 Sep 2021 11:23:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6D53B1BF869
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5B751401E8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8MkwhJq4WWi7 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Sep 2021 11:23:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B389E401FA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:44 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 862F36128E;
 Sat, 25 Sep 2021 11:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632569024;
 bh=PrFeKKukywHaBt62rZVuiu0/Btho0nWbpbcpWAnFbY8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Oa0/myPIOe/XULQJv4GvGl6mM8d548pm5n1JM2ZO4N/GjQ3/SuiSVVQurEYxdOB4t
 cZavrhNx8GlJtSu+x4nmb8Qvyu+Rk1v7w7H71NzrI9xMf/ssB9cYB9TnrGB5M2suOR
 Vat9GDPaYU2bERyJfmRXqyWB6h+dnwTtaTrkn5Q6SxLBsL5XEVF1ViKGb16wvvlRmz
 oYUHPaJKGU9BCOODfK4K/2mNPBd5BekedAnYvyI+U4XbQRpNV3I/TzHLtLg4XjXbUA
 3gb2u9jQ78tP5MnQQFI9e1+58aJKFPormH8cYFnoCewvS6S9P6VtOtPHaWiU4iR5ky
 WySvKEg7HrWMQ==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Sat, 25 Sep 2021 14:22:49 +0300
Message-Id: <486f4512a0d472b8732067018d2ec8c4f3f45763.1632565508.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1632565508.git.leonro@nvidia.com>
References: <cover.1632565508.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 09/21] net/mlx4: Move
 devlink_register to be the last initialization command
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

Refactor the code to make sure that devlink_register() is the last
command during initialization stage.

Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/net/ethernet/mellanox/mlx4/main.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlx4/main.c b/drivers/net/ethernet/mellanox/mlx4/main.c
index 27ed4694fbea..9541f3a920c8 100644
--- a/drivers/net/ethernet/mellanox/mlx4/main.c
+++ b/drivers/net/ethernet/mellanox/mlx4/main.c
@@ -4015,7 +4015,6 @@ static int mlx4_init_one(struct pci_dev *pdev, const struct pci_device_id *id)
 	mutex_init(&dev->persist->interface_state_mutex);
 	mutex_init(&dev->persist->pci_status_mutex);
 
-	devlink_register(devlink);
 	ret = devlink_params_register(devlink, mlx4_devlink_params,
 				      ARRAY_SIZE(mlx4_devlink_params));
 	if (ret)
@@ -4025,16 +4024,15 @@ static int mlx4_init_one(struct pci_dev *pdev, const struct pci_device_id *id)
 	if (ret)
 		goto err_params_unregister;
 
-	devlink_params_publish(devlink);
-	devlink_reload_enable(devlink);
 	pci_save_state(pdev);
+	devlink_register(devlink);
+	devlink_reload_enable(devlink);
 	return 0;
 
 err_params_unregister:
 	devlink_params_unregister(devlink, mlx4_devlink_params,
 				  ARRAY_SIZE(mlx4_devlink_params));
 err_devlink_unregister:
-	devlink_unregister(devlink);
 	kfree(dev->persist);
 err_devlink_free:
 	devlink_free(devlink);
@@ -4138,6 +4136,7 @@ static void mlx4_remove_one(struct pci_dev *pdev)
 	int active_vfs = 0;
 
 	devlink_reload_disable(devlink);
+	devlink_unregister(devlink);
 
 	if (mlx4_is_slave(dev))
 		persist->interface_state |= MLX4_INTERFACE_STATE_NOWAIT;
@@ -4173,7 +4172,6 @@ static void mlx4_remove_one(struct pci_dev *pdev)
 	mlx4_pci_disable_device(dev);
 	devlink_params_unregister(devlink, mlx4_devlink_params,
 				  ARRAY_SIZE(mlx4_devlink_params));
-	devlink_unregister(devlink);
 	kfree(dev->persist);
 	devlink_free(devlink);
 }
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
