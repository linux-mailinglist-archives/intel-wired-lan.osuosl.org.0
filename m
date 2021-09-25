Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5CA41816D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Sep 2021 13:24:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A82FB403BF;
	Sat, 25 Sep 2021 11:24:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 23J7uhEcKIKo; Sat, 25 Sep 2021 11:24:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C1BA3402C0;
	Sat, 25 Sep 2021 11:24:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D23321BF869
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C0C32402FD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yEP0mcannE5Y for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Sep 2021 11:23:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4BB1240190
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:55 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 291B1610F7;
 Sat, 25 Sep 2021 11:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632569035;
 bh=8KdGOHxpJSC+PZ1rdlS7MYCY0+1MQwiYwEoCEiKpnEA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CK0GxpGxVjLr6RMM+yLXjKxbrpzgr1NnmO2ZnSXdEbzjFggId6zMbRa/xFtmvhjFN
 mHKRHmRMWTn5ChvHLRZTYU+N7Q7pLuOMUtwQ6zn+pKMvS8zUMFcJGA2UcdEV1Fi8wM
 +c4uZH2zSGoVvfTMbgqPCMGxTnbFCubhs5kpa1HJVcrcL7pJP3UkPHw4dGdT6rOHzZ
 vWEjzOs1we9xOVQARO7alLjH6+/uytOgF3T8gLYPv/+La5k7Rs8Jacrqio9f7L7JMT
 bxer9M0yfSRvZLSv+yTlkpTRGW7BuRn3qYcG2CV5E719HbqtOGSCHbvHuDasNw5RTr
 DWyTQ/DNs4W6Q==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Sat, 25 Sep 2021 14:22:52 +0300
Message-Id: <6c20043398a8543fb69795be5ab1e200613fb881.1632565508.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1632565508.git.leonro@nvidia.com>
References: <cover.1632565508.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 12/21] net: mscc: ocelot:
 delay devlink registration to the end
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

Open access to the devlink interface when the driver fully initialized.

Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/net/ethernet/mscc/ocelot_vsc7514.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/mscc/ocelot_vsc7514.c b/drivers/net/ethernet/mscc/ocelot_vsc7514.c
index 2b8ea48d2fc4..5d01993f6be0 100644
--- a/drivers/net/ethernet/mscc/ocelot_vsc7514.c
+++ b/drivers/net/ethernet/mscc/ocelot_vsc7514.c
@@ -1134,7 +1134,6 @@ static int mscc_ocelot_probe(struct platform_device *pdev)
 	if (err)
 		goto out_put_ports;
 
-	devlink_register(devlink);
 	err = mscc_ocelot_init_ports(pdev, ports);
 	if (err)
 		goto out_ocelot_devlink_unregister;
@@ -1157,6 +1156,7 @@ static int mscc_ocelot_probe(struct platform_device *pdev)
 	register_switchdev_blocking_notifier(&ocelot_switchdev_blocking_nb);
 
 	of_node_put(ports);
+	devlink_register(devlink);
 
 	dev_info(&pdev->dev, "Ocelot switch probed\n");
 
@@ -1166,7 +1166,6 @@ static int mscc_ocelot_probe(struct platform_device *pdev)
 	mscc_ocelot_release_ports(ocelot);
 	mscc_ocelot_teardown_devlink_ports(ocelot);
 out_ocelot_devlink_unregister:
-	devlink_unregister(devlink);
 	ocelot_deinit(ocelot);
 out_put_ports:
 	of_node_put(ports);
@@ -1179,11 +1178,11 @@ static int mscc_ocelot_remove(struct platform_device *pdev)
 {
 	struct ocelot *ocelot = platform_get_drvdata(pdev);
 
+	devlink_unregister(ocelot->devlink);
 	ocelot_deinit_timestamp(ocelot);
 	ocelot_devlink_sb_unregister(ocelot);
 	mscc_ocelot_release_ports(ocelot);
 	mscc_ocelot_teardown_devlink_ports(ocelot);
-	devlink_unregister(ocelot->devlink);
 	ocelot_deinit(ocelot);
 	unregister_switchdev_blocking_notifier(&ocelot_switchdev_blocking_nb);
 	unregister_switchdev_notifier(&ocelot_switchdev_nb);
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
