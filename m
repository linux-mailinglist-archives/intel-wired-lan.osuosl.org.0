Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F099B41816F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Sep 2021 13:24:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9F19C402E3;
	Sat, 25 Sep 2021 11:24:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p_oMKx6obeaQ; Sat, 25 Sep 2021 11:24:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 73DA44024E;
	Sat, 25 Sep 2021 11:24:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ABD861BF869
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:24:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9AB0D404A1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:24:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i63rXA3ghZf5 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Sep 2021 11:24:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 23C54402C0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:24:02 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 002256128A;
 Sat, 25 Sep 2021 11:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632569041;
 bh=Cl3NV1NYQWAcpVSM6GygwU59q/PE56ay+2A5k8m+/J0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BFN1GH5Yf1Hsh8UTT6arSQ8EKwmk0uMdcSCGgM/dgkyj3ocPsN9Vib6wa5dZd1Vwz
 u8rLDRoYW6di1kveNeOMohk6xPKcEvcce/XHpWBXbVjOIlFhpzFhJHHK+3QOzz2Zr9
 UPBq95GV2ADYPAzc6L51cg9xLwD9Le8xe4Vc4UqonE/62LqGC9UUMf9agd++VJIEnk
 1BjNKGV/rp1lfPh2q4rxGAM52rDVmF/gwCAivI1rzyB7FhJa0oKEDBVXsd+6pTJ0ZD
 KPsnfCNXWwdH+x7un/bTHw9zKjbfqAmmcjpTdlnAKXgf/Elqbq1UnyzIKCBdF0jyOH
 RvSInpbsT4LUg==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Sat, 25 Sep 2021 14:22:57 +0300
Message-Id: <87822c7b4f20182c37758a2c0b9bb84a0a3edaf8.1632565508.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1632565508.git.leonro@nvidia.com>
References: <cover.1632565508.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 17/21] netdevsim: Move devlink
 registration to be last devlink command
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
fully configured.

Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/net/netdevsim/dev.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/net/netdevsim/dev.c b/drivers/net/netdevsim/dev.c
index b2214bc9efe2..cb6645012a30 100644
--- a/drivers/net/netdevsim/dev.c
+++ b/drivers/net/netdevsim/dev.c
@@ -1470,7 +1470,6 @@ int nsim_dev_probe(struct nsim_bus_dev *nsim_bus_dev)
 	if (err)
 		goto err_devlink_free;
 
-	devlink_register(devlink);
 	err = devlink_params_register(devlink, nsim_devlink_params,
 				      ARRAY_SIZE(nsim_devlink_params));
 	if (err)
@@ -1511,9 +1510,9 @@ int nsim_dev_probe(struct nsim_bus_dev *nsim_bus_dev)
 	if (err)
 		goto err_psample_exit;
 
-	devlink_params_publish(devlink);
-	devlink_reload_enable(devlink);
 	nsim_dev->esw_mode = DEVLINK_ESWITCH_MODE_LEGACY;
+	devlink_register(devlink);
+	devlink_reload_enable(devlink);
 	return 0;
 
 err_psample_exit:
@@ -1534,7 +1533,6 @@ int nsim_dev_probe(struct nsim_bus_dev *nsim_bus_dev)
 	devlink_params_unregister(devlink, nsim_devlink_params,
 				  ARRAY_SIZE(nsim_devlink_params));
 err_dl_unregister:
-	devlink_unregister(devlink);
 	devlink_resources_unregister(devlink, NULL);
 err_devlink_free:
 	devlink_free(devlink);
@@ -1569,6 +1567,7 @@ void nsim_dev_remove(struct nsim_bus_dev *nsim_bus_dev)
 	struct devlink *devlink = priv_to_devlink(nsim_dev);
 
 	devlink_reload_disable(devlink);
+	devlink_unregister(devlink);
 
 	nsim_dev_reload_destroy(nsim_dev);
 
@@ -1576,7 +1575,6 @@ void nsim_dev_remove(struct nsim_bus_dev *nsim_bus_dev)
 	nsim_dev_debugfs_exit(nsim_dev);
 	devlink_params_unregister(devlink, nsim_devlink_params,
 				  ARRAY_SIZE(nsim_devlink_params));
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
