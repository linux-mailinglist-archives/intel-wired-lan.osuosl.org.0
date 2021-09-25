Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7104418142
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Sep 2021 13:23:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 52D694024E;
	Sat, 25 Sep 2021 11:23:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CSdA-kJvtOpj; Sat, 25 Sep 2021 11:23:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EAD0140217;
	Sat, 25 Sep 2021 11:23:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C96221BF869
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B58184024C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OrYr1WA_o1B6 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Sep 2021 11:23:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E5EDC40217
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:16 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id AD4986127C;
 Sat, 25 Sep 2021 11:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632568996;
 bh=cCL9OPu7ylTp3lXAkUh0UgmGr0ZctC2d0EdfzXcuSDs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=c9YNQD+E2p1TmAdtqT0WIwmiJu5kmUIVN+O+nplzesA2lLLcARe0V/utgO/vGx8lF
 DaZJnAMul9QUW5QGKzdFYXLss2DIlj4VOai0ic6LDtd7+26oCTBwNaeAJviNFDzSA1
 COwBr7dTsUw7g0++Wj9lyb3LuPDjKcbnr2Dsrt7/p3VwD6QwP7Umb69VvNtd/6+TTj
 mlM+hoVAKG9BTNPfXEH//VST0WH4AcLFAK8sbQQC0r1UH4mERsDgPC0j9YYFdoNvy1
 4toONRoZ2+u/r7lz48dgmissq7azoDonbkAMJLJxFHBliNJx9qw8YM63YO2F/FeYr6
 6JQgCJMr6c7Cw==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Sat, 25 Sep 2021 14:22:44 +0300
Message-Id: <c6abd202014523d6e685a97c0ec844d2756ffd34.1632565508.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1632565508.git.leonro@nvidia.com>
References: <cover.1632565508.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 04/21] dpaa2-eth: Register
 devlink instance at the end of probe
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

Move devlink_register to be the last command in the initialization
sequence.

Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 .../ethernet/freescale/dpaa2/dpaa2-eth-devlink.c   | 14 +++++++++++---
 drivers/net/ethernet/freescale/dpaa2/dpaa2-eth.c   |  9 ++++++---
 drivers/net/ethernet/freescale/dpaa2/dpaa2-eth.h   |  5 ++++-
 3 files changed, 21 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth-devlink.c b/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth-devlink.c
index 426926fb6fc6..7fefe1574b6a 100644
--- a/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth-devlink.c
+++ b/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth-devlink.c
@@ -189,7 +189,7 @@ static const struct devlink_ops dpaa2_eth_devlink_ops = {
 	.trap_group_action_set = dpaa2_eth_dl_trap_group_action_set,
 };
 
-int dpaa2_eth_dl_register(struct dpaa2_eth_priv *priv)
+int dpaa2_eth_dl_alloc(struct dpaa2_eth_priv *priv)
 {
 	struct net_device *net_dev = priv->net_dev;
 	struct device *dev = net_dev->dev.parent;
@@ -203,15 +203,23 @@ int dpaa2_eth_dl_register(struct dpaa2_eth_priv *priv)
 	}
 	dl_priv = devlink_priv(priv->devlink);
 	dl_priv->dpaa2_priv = priv;
+	return 0;
+}
+
+void dpaa2_eth_dl_free(struct dpaa2_eth_priv *priv)
+{
+	devlink_free(priv->devlink);
+}
+
 
+void dpaa2_eth_dl_register(struct dpaa2_eth_priv *priv)
+{
 	devlink_register(priv->devlink);
-	return 0;
 }
 
 void dpaa2_eth_dl_unregister(struct dpaa2_eth_priv *priv)
 {
 	devlink_unregister(priv->devlink);
-	devlink_free(priv->devlink);
 }
 
 int dpaa2_eth_dl_port_add(struct dpaa2_eth_priv *priv)
diff --git a/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth.c b/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth.c
index 7065c71ed7b8..03c168b1712f 100644
--- a/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth.c
+++ b/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth.c
@@ -4431,7 +4431,7 @@ static int dpaa2_eth_probe(struct fsl_mc_device *dpni_dev)
 	if (err)
 		goto err_connect_mac;
 
-	err = dpaa2_eth_dl_register(priv);
+	err = dpaa2_eth_dl_alloc(priv);
 	if (err)
 		goto err_dl_register;
 
@@ -4453,6 +4453,7 @@ static int dpaa2_eth_probe(struct fsl_mc_device *dpni_dev)
 	dpaa2_dbg_add(priv);
 #endif
 
+	dpaa2_eth_dl_register(priv);
 	dev_info(dev, "Probed interface %s\n", net_dev->name);
 	return 0;
 
@@ -4461,7 +4462,7 @@ static int dpaa2_eth_probe(struct fsl_mc_device *dpni_dev)
 err_dl_port_add:
 	dpaa2_eth_dl_traps_unregister(priv);
 err_dl_trap_register:
-	dpaa2_eth_dl_unregister(priv);
+	dpaa2_eth_dl_free(priv);
 err_dl_register:
 	dpaa2_eth_disconnect_mac(priv);
 err_connect_mac:
@@ -4508,6 +4509,8 @@ static int dpaa2_eth_remove(struct fsl_mc_device *ls_dev)
 	net_dev = dev_get_drvdata(dev);
 	priv = netdev_priv(net_dev);
 
+	dpaa2_eth_dl_unregister(priv);
+
 #ifdef CONFIG_DEBUG_FS
 	dpaa2_dbg_remove(priv);
 #endif
@@ -4519,7 +4522,7 @@ static int dpaa2_eth_remove(struct fsl_mc_device *ls_dev)
 
 	dpaa2_eth_dl_port_del(priv);
 	dpaa2_eth_dl_traps_unregister(priv);
-	dpaa2_eth_dl_unregister(priv);
+	dpaa2_eth_dl_free(priv);
 
 	if (priv->do_link_poll)
 		kthread_stop(priv->poll_thread);
diff --git a/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth.h b/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth.h
index cdb623d5f2c1..628d2d45f045 100644
--- a/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth.h
+++ b/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth.h
@@ -725,7 +725,10 @@ void dpaa2_eth_set_rx_taildrop(struct dpaa2_eth_priv *priv,
 
 extern const struct dcbnl_rtnl_ops dpaa2_eth_dcbnl_ops;
 
-int dpaa2_eth_dl_register(struct dpaa2_eth_priv *priv);
+int dpaa2_eth_dl_alloc(struct dpaa2_eth_priv *priv);
+void dpaa2_eth_dl_free(struct dpaa2_eth_priv *priv);
+
+void dpaa2_eth_dl_register(struct dpaa2_eth_priv *priv);
 void dpaa2_eth_dl_unregister(struct dpaa2_eth_priv *priv);
 
 int dpaa2_eth_dl_port_add(struct dpaa2_eth_priv *priv);
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
