Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 889F241817C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Sep 2021 13:24:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2697B606D9;
	Sat, 25 Sep 2021 11:24:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pKcYMaRZHlge; Sat, 25 Sep 2021 11:24:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A3F5606AF;
	Sat, 25 Sep 2021 11:24:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 251431BF869
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:24:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 13AB8606D9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:24:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GSRYroK14HAZ for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Sep 2021 11:24:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8FDFB606AF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:24:15 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6C0A561350;
 Sat, 25 Sep 2021 11:24:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632569055;
 bh=7fuwMn0UcxFbiik3Z+N/XOLwJAq59/miUfWhpOwdqE0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ge34eptxt6ik9tM4bBGWV+EhWY2pUsDmBrBnZIJGDR8WqRukI42+ESfMMMV9+gmyk
 NzOJ5DLBu2o6NL6oi1jrLFHILSXlbaTkjCziDiYsxegSE/Jrp/gGgvJVR7RaEimH2k
 u2KZhp8p3Q+odnSJGYZYpzbjUOdLrNqJ2GAMUiwsAT61gUQdMMmLpIZkJsjPKLDgja
 951E4DCRpAC2brIp9LRFyfkQegtVBAkmpGV+8JNtEYeEpLtKlgfwpF/3fdAikKH6yb
 0nLBFwTJ2r2zmbCo8w91OLQqyLpu05TcH/BXTltlVcbcWo+yMP4awblDvVJZGPBPj9
 feyG+jP8SLazQ==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Sat, 25 Sep 2021 14:22:58 +0300
Message-Id: <6a63d8f6484a46c9120155082a396b44ce86bd1c.1632565508.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1632565508.git.leonro@nvidia.com>
References: <cover.1632565508.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 18/21] net: wwan: iosm: Move
 devlink_register to be last devlink command
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

This change prevents from users to access device before devlink is
fully configured. Indirectly this change fixes the commit mentioned
below where devlink_unregister() was prematurely removed.

Fixes: db4278c55fa5 ("devlink: Make devlink_register to be void")
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/net/wwan/iosm/iosm_ipc_devlink.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/net/wwan/iosm/iosm_ipc_devlink.c b/drivers/net/wwan/iosm/iosm_ipc_devlink.c
index 42dbe7fe663c..6fe56f73011b 100644
--- a/drivers/net/wwan/iosm/iosm_ipc_devlink.c
+++ b/drivers/net/wwan/iosm/iosm_ipc_devlink.c
@@ -305,7 +305,6 @@ struct iosm_devlink *ipc_devlink_init(struct iosm_imem *ipc_imem)
 	ipc_devlink->devlink_ctx = devlink_ctx;
 	ipc_devlink->pcie = ipc_imem->pcie;
 	ipc_devlink->dev = ipc_imem->dev;
-	devlink_register(devlink_ctx);
 
 	rc = devlink_params_register(devlink_ctx, iosm_devlink_params,
 				     ARRAY_SIZE(iosm_devlink_params));
@@ -315,7 +314,6 @@ struct iosm_devlink *ipc_devlink_init(struct iosm_imem *ipc_imem)
 		goto param_reg_fail;
 	}
 
-	devlink_params_publish(devlink_ctx);
 	ipc_devlink->cd_file_info = list;
 
 	rc = ipc_devlink_create_region(ipc_devlink);
@@ -334,6 +332,7 @@ struct iosm_devlink *ipc_devlink_init(struct iosm_imem *ipc_imem)
 	init_completion(&ipc_devlink->devlink_sio.read_sem);
 	skb_queue_head_init(&ipc_devlink->devlink_sio.rx_list);
 
+	devlink_register(devlink_ctx);
 	dev_dbg(ipc_devlink->dev, "iosm devlink register success");
 
 	return ipc_devlink;
@@ -341,7 +340,6 @@ struct iosm_devlink *ipc_devlink_init(struct iosm_imem *ipc_imem)
 chnl_get_fail:
 	ipc_devlink_destroy_region(ipc_devlink);
 region_create_fail:
-	devlink_params_unpublish(devlink_ctx);
 	devlink_params_unregister(devlink_ctx, iosm_devlink_params,
 				  ARRAY_SIZE(iosm_devlink_params));
 param_reg_fail:
@@ -358,8 +356,8 @@ void ipc_devlink_deinit(struct iosm_devlink *ipc_devlink)
 {
 	struct devlink *devlink_ctx = ipc_devlink->devlink_ctx;
 
+	devlink_unregister(devlink_ctx);
 	ipc_devlink_destroy_region(ipc_devlink);
-	devlink_params_unpublish(devlink_ctx);
 	devlink_params_unregister(devlink_ctx, iosm_devlink_params,
 				  ARRAY_SIZE(iosm_devlink_params));
 	if (ipc_devlink->devlink_sio.devlink_read_pend) {
@@ -370,6 +368,5 @@ void ipc_devlink_deinit(struct iosm_devlink *ipc_devlink)
 		skb_queue_purge(&ipc_devlink->devlink_sio.rx_list);
 
 	ipc_imem_sys_devlink_close(ipc_devlink);
-	devlink_unregister(devlink_ctx);
 	devlink_free(devlink_ctx);
 }
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
