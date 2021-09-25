Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7AC418162
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Sep 2021 13:23:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D1094038F;
	Sat, 25 Sep 2021 11:23:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SWmcnrQqtYEQ; Sat, 25 Sep 2021 11:23:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2B3740190;
	Sat, 25 Sep 2021 11:23:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5C09F1BF869
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5816B82E19
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GpoaI1gKvPTX for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Sep 2021 11:23:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D9B6982EB6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:51 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B775B6128C;
 Sat, 25 Sep 2021 11:23:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632569031;
 bh=xa9GziJGjO+uYR+6TLvwaU0ghnPSlFl4J+UcvATj0rM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Sh5UCjWPwOf2FQDfkuASXPFp/fNpsJHp5uxIvwgGsrxq4+tYmgNyYTY30hIF2jbP0
 FOZ80qEQnPV2vSc/Tv9uRTO+IDefIr7Ysc8W8FcVPJN+HViEyz0m7eIWHdt93GGo7a
 HUrEErXyzrYmBaJadre4duxUrAj/tJVTh87LQS1CSQKHDIS5bxRigi/BGcuLTlSoS+
 A2HJqVcXKjt75hbAM8bIVgc2/Si6Ibd7nFYBFjBLt18A+LxshbWa+yxcfHNJVBVQJI
 xKOy57wtXFbtDXyaPBt9Cb5QkNXwWVIEDUXaffiJAl8dT224YWEEmPlxFFRh61STQw
 jkPCR4A3oV7nA==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Sat, 25 Sep 2021 14:22:54 +0300
Message-Id: <cb187a035b75dbcc27f6dd10d72f18f1101bad44.1632565508.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1632565508.git.leonro@nvidia.com>
References: <cover.1632565508.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 14/21] ionic: Move devlink
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
 drivers/net/ethernet/pensando/ionic/ionic_devlink.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/pensando/ionic/ionic_devlink.c b/drivers/net/ethernet/pensando/ionic/ionic_devlink.c
index 93282394d332..2267da95640b 100644
--- a/drivers/net/ethernet/pensando/ionic/ionic_devlink.c
+++ b/drivers/net/ethernet/pensando/ionic/ionic_devlink.c
@@ -82,7 +82,6 @@ int ionic_devlink_register(struct ionic *ionic)
 	struct devlink_port_attrs attrs = {};
 	int err;
 
-	devlink_register(dl);
 	attrs.flavour = DEVLINK_PORT_FLAVOUR_PHYSICAL;
 	devlink_port_attrs_set(&ionic->dl_port, &attrs);
 	err = devlink_port_register(dl, &ionic->dl_port, 0);
@@ -93,6 +92,7 @@ int ionic_devlink_register(struct ionic *ionic)
 	}
 
 	devlink_port_type_eth_set(&ionic->dl_port, ionic->lif->netdev);
+	devlink_register(dl);
 	return 0;
 }
 
@@ -100,6 +100,6 @@ void ionic_devlink_unregister(struct ionic *ionic)
 {
 	struct devlink *dl = priv_to_devlink(ionic);
 
-	devlink_port_unregister(&ionic->dl_port);
 	devlink_unregister(dl);
+	devlink_port_unregister(&ionic->dl_port);
 }
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
