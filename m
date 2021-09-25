Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D53418178
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Sep 2021 13:24:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AAE678101D;
	Sat, 25 Sep 2021 11:24:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XpTwFJQYVLIl; Sat, 25 Sep 2021 11:24:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B5E9E80FDE;
	Sat, 25 Sep 2021 11:24:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BD7951BF869
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:24:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ABB3A6070B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:24:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 04Bn2H9I1A2f for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Sep 2021 11:24:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3812D606D9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:24:12 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0ACD06128E;
 Sat, 25 Sep 2021 11:24:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632569051;
 bh=hIaU3zuCJ66VCcfkvkXkjfrXrZk0nBwoxqfW+xbNAI4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hBZGKXwn8MuXnfyIESlBTW1o1wITt4RwTx900BqVAekSocAOEd7gZDaIl7tnVZv6M
 q3Q21JYh+9eSN/awnLVNufvGKHgKSaIWRJy5ivfUktMueUS9g5/hLo0Uv9rxmHf4Ne
 211pPeYPpZMV6Ds75i05viWIuvhchW2NqqBhX4a07FEQj6wHLw3UpJKiYkdxkk0lFm
 bSZeh9Ke9vA+QngTRqW5Hu6S/Ti3v116zfBVCHrWYNiVgXRCmPHe0DYiSJ82TIpPaL
 C4vY9albBFHKQVnNf6fAbGot8HbEqBfjq0pJUTWDackF/nuQF7xemq0NLd1sc8oYoz
 jySHQjT6V/w9w==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Sat, 25 Sep 2021 14:23:00 +0300
Message-Id: <87eb1893ae465eb0ec1ed726c9ca078edc8298ac.1632565508.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1632565508.git.leonro@nvidia.com>
References: <cover.1632565508.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 20/21] staging: qlge: Move
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
 drivers/staging/qlge/qlge_main.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 33539f6c254d..1dc849378a0f 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -4614,10 +4614,9 @@ static int qlge_probe(struct pci_dev *pdev,
 		goto netdev_free;
 	}
 
-	devlink_register(devlink);
 	err = qlge_health_create_reporters(qdev);
 	if (err)
-		goto devlink_unregister;
+		goto netdev_free;
 
 	/* Start up the timer to trigger EEH if
 	 * the bus goes dead
@@ -4628,10 +4627,9 @@ static int qlge_probe(struct pci_dev *pdev,
 	qlge_display_dev_info(ndev);
 	atomic_set(&qdev->lb_count, 0);
 	cards_found++;
+	devlink_register(devlink);
 	return 0;
 
-devlink_unregister:
-	devlink_unregister(devlink);
 netdev_free:
 	free_netdev(ndev);
 devlink_free:
@@ -4656,13 +4654,13 @@ static void qlge_remove(struct pci_dev *pdev)
 	struct net_device *ndev = qdev->ndev;
 	struct devlink *devlink = priv_to_devlink(qdev);
 
+	devlink_unregister(devlink);
 	del_timer_sync(&qdev->timer);
 	qlge_cancel_all_work_sync(qdev);
 	unregister_netdev(ndev);
 	qlge_release_all(pdev);
 	pci_disable_device(pdev);
 	devlink_health_reporter_destroy(qdev->reporter);
-	devlink_unregister(devlink);
 	devlink_free(devlink);
 	free_netdev(ndev);
 }
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
