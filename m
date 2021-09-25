Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A25418161
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Sep 2021 13:23:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7470A40181;
	Sat, 25 Sep 2021 11:23:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YFzldwmGZ2D5; Sat, 25 Sep 2021 11:23:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 884E640190;
	Sat, 25 Sep 2021 11:23:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 19DE91BF869
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 079E34028F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qOHwYDAORpER for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Sep 2021 11:23:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 713FC4029E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:48 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4D4856128B;
 Sat, 25 Sep 2021 11:23:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632569028;
 bh=PMH85H5qipZOBKpjQUuS38xXXX8zD2iZVNUxRrzSq2M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bl6F2XX2QrtGJ/goSxrWiZ4kTfaDRalUW+JX64R4+f5tX2MkVbudqMboMu4+2r17G
 9ypRSr6/TbxTX5ORpt0WdmEFf4Q9lTCPiz+FKtPuz9OazWtk3RxYg4dOQIG3qJItpb
 pbsdhwETQqV8zGIh6DTOueiiB6dX2qdXhef22O55T8LHb5HQ/oDZd4nwPrZj/bqO7m
 JhHZtPN0ApEbgjNw6XG7w2GgfEOi/wJOq/MBu65oKBl7Ftd6PTsLr9J/BfEnVlCops
 Kpqi2qjOoxhp/Ux5Aml2oWUSJR2F3fXuK8NnJcOU5kQF7HvO859ztbO8XzHL22qlxH
 S0xx6v652WI1Q==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Sat, 25 Sep 2021 14:22:53 +0300
Message-Id: <f393212ad3906808ee7eb5cff06ef2e053eb9d2b.1632565508.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1632565508.git.leonro@nvidia.com>
References: <cover.1632565508.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 13/21] nfp: Move
 delink_register to be last command
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

Open user space access to the devlink after driver is probed.

Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/net/ethernet/netronome/nfp/devlink_param.c | 9 ++-------
 drivers/net/ethernet/netronome/nfp/nfp_net_main.c  | 5 ++---
 2 files changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/netronome/nfp/devlink_param.c b/drivers/net/ethernet/netronome/nfp/devlink_param.c
index 36491835ac65..db297ee4d7ad 100644
--- a/drivers/net/ethernet/netronome/nfp/devlink_param.c
+++ b/drivers/net/ethernet/netronome/nfp/devlink_param.c
@@ -233,13 +233,8 @@ int nfp_devlink_params_register(struct nfp_pf *pf)
 	if (err <= 0)
 		return err;
 
-	err = devlink_params_register(devlink, nfp_devlink_params,
-				      ARRAY_SIZE(nfp_devlink_params));
-	if (err)
-		return err;
-
-	devlink_params_publish(devlink);
-	return 0;
+	return devlink_params_register(devlink, nfp_devlink_params,
+				       ARRAY_SIZE(nfp_devlink_params));
 }
 
 void nfp_devlink_params_unregister(struct nfp_pf *pf)
diff --git a/drivers/net/ethernet/netronome/nfp/nfp_net_main.c b/drivers/net/ethernet/netronome/nfp/nfp_net_main.c
index 616872928ada..5fbb7c613ff1 100644
--- a/drivers/net/ethernet/netronome/nfp/nfp_net_main.c
+++ b/drivers/net/ethernet/netronome/nfp/nfp_net_main.c
@@ -701,7 +701,6 @@ int nfp_net_pci_probe(struct nfp_pf *pf)
 	if (err)
 		goto err_unmap;
 
-	devlink_register(devlink);
 	err = nfp_shared_buf_register(pf);
 	if (err)
 		goto err_devlink_unreg;
@@ -731,6 +730,7 @@ int nfp_net_pci_probe(struct nfp_pf *pf)
 		goto err_stop_app;
 
 	mutex_unlock(&pf->lock);
+	devlink_register(devlink);
 
 	return 0;
 
@@ -748,7 +748,6 @@ int nfp_net_pci_probe(struct nfp_pf *pf)
 	nfp_shared_buf_unregister(pf);
 err_devlink_unreg:
 	cancel_work_sync(&pf->port_refresh_work);
-	devlink_unregister(devlink);
 	nfp_net_pf_app_clean(pf);
 err_unmap:
 	nfp_net_pci_unmap_mem(pf);
@@ -759,6 +758,7 @@ void nfp_net_pci_remove(struct nfp_pf *pf)
 {
 	struct nfp_net *nn, *next;
 
+	devlink_unregister(priv_to_devlink(pf));
 	mutex_lock(&pf->lock);
 	list_for_each_entry_safe(nn, next, &pf->vnics, vnic_list) {
 		if (!nfp_net_is_data_vnic(nn))
@@ -775,7 +775,6 @@ void nfp_net_pci_remove(struct nfp_pf *pf)
 
 	nfp_devlink_params_unregister(pf);
 	nfp_shared_buf_unregister(pf);
-	devlink_unregister(priv_to_devlink(pf));
 
 	nfp_net_pf_free_irqs(pf);
 	nfp_net_pf_app_clean(pf);
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
