Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B50E418143
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Sep 2021 13:23:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 08E0B607E4;
	Sat, 25 Sep 2021 11:23:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hgcu_f5tKuo9; Sat, 25 Sep 2021 11:23:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0F77A607CC;
	Sat, 25 Sep 2021 11:23:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D063E1BF869
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BE566607CC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q5wviL2YxgWc for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Sep 2021 11:23:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4D6EE607B5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:20 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1B42A61283;
 Sat, 25 Sep 2021 11:23:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632569000;
 bh=xRgZ3AWYE+cjw+AzmeqCWdR+bIHtvensmJ8uaJBAUps=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aymRkgQYkTzDBhqqTP79folPWNi8X49mHO2L2tqiqUk9wXUzZ0Di8bsa3ZfzLMbvC
 20CfstwEKU6FWZb2AL+7WZrvdgnkYyVG5xwv0JRAUCRnSchtrfU6SOBVeT0UU6dT8q
 AQSjWadd2bAEwdBC9j0iREfJ68uz9ce089/dDgLJag5I3c0/MQIHKZqVTSDDPSoLGq
 XJox5pp0mYvE261+05t8Gbg0v0NBQmbQa1XuS/MNhD8Zzaqbvnwk7Nc467F0ItXvao
 x7uUtwyzZoX4fJ2DL/t5c8uRX3UDaevYHaNGFK7uHak0Xh/vTGov1R5n1xA4TFKgsd
 doi+Oq+vIj9Rw==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Sat, 25 Sep 2021 14:22:45 +0300
Message-Id: <9956e9af5948084d725c547e307eb13656d569fc.1632565508.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1632565508.git.leonro@nvidia.com>
References: <cover.1632565508.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 05/21] net: hinic: Open device
 for the user access when it is ready
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

Move devlink registration to be the last command in device activation,
so it opens the driver to accept such devlink commands from the user
when it is fully initialized.

Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/net/ethernet/huawei/hinic/hinic_hw_dev.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/huawei/hinic/hinic_hw_dev.c b/drivers/net/ethernet/huawei/hinic/hinic_hw_dev.c
index b2ece3adbc72..657a15447bd0 100644
--- a/drivers/net/ethernet/huawei/hinic/hinic_hw_dev.c
+++ b/drivers/net/ethernet/huawei/hinic/hinic_hw_dev.c
@@ -754,11 +754,9 @@ static int init_pfhwdev(struct hinic_pfhwdev *pfhwdev)
 		return err;
 	}
 
-	hinic_devlink_register(hwdev->devlink_dev);
 	err = hinic_func_to_func_init(hwdev);
 	if (err) {
 		dev_err(&hwif->pdev->dev, "Failed to init mailbox\n");
-		hinic_devlink_unregister(hwdev->devlink_dev);
 		hinic_pf_to_mgmt_free(&pfhwdev->pf_to_mgmt);
 		return err;
 	}
@@ -781,7 +779,7 @@ static int init_pfhwdev(struct hinic_pfhwdev *pfhwdev)
 	}
 
 	hinic_set_pf_action(hwif, HINIC_PF_MGMT_ACTIVE);
-
+	hinic_devlink_register(hwdev->devlink_dev);
 	return 0;
 }
 
@@ -793,6 +791,7 @@ static void free_pfhwdev(struct hinic_pfhwdev *pfhwdev)
 {
 	struct hinic_hwdev *hwdev = &pfhwdev->hwdev;
 
+	hinic_devlink_unregister(hwdev->devlink_dev);
 	hinic_set_pf_action(hwdev->hwif, HINIC_PF_MGMT_INIT);
 
 	if (!HINIC_IS_VF(hwdev->hwif)) {
@@ -810,8 +809,6 @@ static void free_pfhwdev(struct hinic_pfhwdev *pfhwdev)
 
 	hinic_func_to_func_free(hwdev);
 
-	hinic_devlink_unregister(hwdev->devlink_dev);
-
 	hinic_pf_to_mgmt_free(&pfhwdev->pf_to_mgmt);
 }
 
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
