Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A2341816E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Sep 2021 13:24:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3FE5D80F80;
	Sat, 25 Sep 2021 11:24:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O-B8p_ZczYL1; Sat, 25 Sep 2021 11:24:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C34C80EB2;
	Sat, 25 Sep 2021 11:24:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B2F471BF869
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:24:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AC44F4024C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:24:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SgttwaxFZuA5 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Sep 2021 11:23:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CD8AD40217
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:58 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 90E1461283;
 Sat, 25 Sep 2021 11:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632569038;
 bh=jJTdFkVIbFrNcti+vSAvnsUyuqLnAsTFH1czjUjL+4Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GPWtcrmfDyDMddu/oC/QnkpL4YXGkCgVKNf3L07H+kjGHXs6Chmk67nPjUN2TMJYc
 Y9kmkd1dw01fVgTD+LUXZlcZ3cg5+8TF1hIIkMUJ4X/ZApnmufzf6TAJ5x76nwkVGT
 39XuQ3/cKiPEhvAeAvluRwX/2k6/3qKwkZnOmrrXSdGNSptpGR2ZjNtLp2BV5aBgCH
 O7dxVzOWEOsE10/q7niHhLSdvaOjOhSiRQVT26AgVpzP+XKdVRwGrt31w+yq2whnTX
 jhfG5XJRtdzNemLyEOPxruOxcTh87Sovqe4PVHjmzMpcIbDWBa9VDvcW77pxSJNqC4
 0r0M29pUOynaQ==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Sat, 25 Sep 2021 14:22:56 +0300
Message-Id: <080c8889f80e48971dd9a1dadb4107882d83998d.1632565508.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1632565508.git.leonro@nvidia.com>
References: <cover.1632565508.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 16/21] net: ethernet: ti: Move
 devlink registration to be last devlink command
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
 drivers/net/ethernet/ti/am65-cpsw-nuss.c | 15 ++++++---------
 drivers/net/ethernet/ti/cpsw_new.c       |  7 ++-----
 2 files changed, 8 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/ti/am65-cpsw-nuss.c b/drivers/net/ethernet/ti/am65-cpsw-nuss.c
index c2ea53ca92b6..0de5f4a4fe08 100644
--- a/drivers/net/ethernet/ti/am65-cpsw-nuss.c
+++ b/drivers/net/ethernet/ti/am65-cpsw-nuss.c
@@ -2429,7 +2429,6 @@ static int am65_cpsw_nuss_register_devlink(struct am65_cpsw_common *common)
 	dl_priv = devlink_priv(common->devlink);
 	dl_priv->common = common;
 
-	devlink_register(common->devlink);
 	/* Provide devlink hook to switch mode when multiple external ports
 	 * are present NUSS switchdev driver is enabled.
 	 */
@@ -2442,7 +2441,6 @@ static int am65_cpsw_nuss_register_devlink(struct am65_cpsw_common *common)
 			dev_err(dev, "devlink params reg fail ret:%d\n", ret);
 			goto dl_unreg;
 		}
-		devlink_params_publish(common->devlink);
 	}
 
 	for (i = 1; i <= common->port_num; i++) {
@@ -2463,7 +2461,7 @@ static int am65_cpsw_nuss_register_devlink(struct am65_cpsw_common *common)
 		}
 		devlink_port_type_eth_set(dl_port, port->ndev);
 	}
-
+	devlink_register(common->devlink);
 	return ret;
 
 dl_port_unreg:
@@ -2474,7 +2472,6 @@ static int am65_cpsw_nuss_register_devlink(struct am65_cpsw_common *common)
 		devlink_port_unregister(dl_port);
 	}
 dl_unreg:
-	devlink_unregister(common->devlink);
 	devlink_free(common->devlink);
 	return ret;
 }
@@ -2485,6 +2482,8 @@ static void am65_cpsw_unregister_devlink(struct am65_cpsw_common *common)
 	struct am65_cpsw_port *port;
 	int i;
 
+	devlink_unregister(common->devlink);
+
 	for (i = 1; i <= common->port_num; i++) {
 		port = am65_common_get_port(common, i);
 		dl_port = &port->devlink_port;
@@ -2493,13 +2492,11 @@ static void am65_cpsw_unregister_devlink(struct am65_cpsw_common *common)
 	}
 
 	if (!AM65_CPSW_IS_CPSW2G(common) &&
-	    IS_ENABLED(CONFIG_TI_K3_AM65_CPSW_SWITCHDEV)) {
-		devlink_params_unpublish(common->devlink);
-		devlink_params_unregister(common->devlink, am65_cpsw_devlink_params,
+	    IS_ENABLED(CONFIG_TI_K3_AM65_CPSW_SWITCHDEV))
+		devlink_params_unregister(common->devlink,
+					  am65_cpsw_devlink_params,
 					  ARRAY_SIZE(am65_cpsw_devlink_params));
-	}
 
-	devlink_unregister(common->devlink);
 	devlink_free(common->devlink);
 }
 
diff --git a/drivers/net/ethernet/ti/cpsw_new.c b/drivers/net/ethernet/ti/cpsw_new.c
index 204b4826303c..1530532748a8 100644
--- a/drivers/net/ethernet/ti/cpsw_new.c
+++ b/drivers/net/ethernet/ti/cpsw_new.c
@@ -1810,7 +1810,6 @@ static int cpsw_register_devlink(struct cpsw_common *cpsw)
 	dl_priv = devlink_priv(cpsw->devlink);
 	dl_priv->cpsw = cpsw;
 
-	devlink_register(cpsw->devlink);
 	ret = devlink_params_register(cpsw->devlink, cpsw_devlink_params,
 				      ARRAY_SIZE(cpsw_devlink_params));
 	if (ret) {
@@ -1818,21 +1817,19 @@ static int cpsw_register_devlink(struct cpsw_common *cpsw)
 		goto dl_unreg;
 	}
 
-	devlink_params_publish(cpsw->devlink);
+	devlink_register(cpsw->devlink);
 	return ret;
 
 dl_unreg:
-	devlink_unregister(cpsw->devlink);
 	devlink_free(cpsw->devlink);
 	return ret;
 }
 
 static void cpsw_unregister_devlink(struct cpsw_common *cpsw)
 {
-	devlink_params_unpublish(cpsw->devlink);
+	devlink_unregister(cpsw->devlink);
 	devlink_params_unregister(cpsw->devlink, cpsw_devlink_params,
 				  ARRAY_SIZE(cpsw_devlink_params));
-	devlink_unregister(cpsw->devlink);
 	devlink_free(cpsw->devlink);
 }
 
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
