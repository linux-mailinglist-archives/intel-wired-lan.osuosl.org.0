Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B990418174
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Sep 2021 13:24:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F85E6072E;
	Sat, 25 Sep 2021 11:24:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9loHZq8m4Scf; Sat, 25 Sep 2021 11:24:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 918CC606D9;
	Sat, 25 Sep 2021 11:24:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 435E91BF869
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:24:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3248A606D9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:24:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qLtpHykFepyB for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Sep 2021 11:24:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9A6CD606AF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:24:05 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 68AA66127C;
 Sat, 25 Sep 2021 11:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632569045;
 bh=ghHAU3D0r/NE4ZoiVTD12PA4CEB5+DDXgtVw+z6KtRc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=SwqFg7wTZGt5iCU3qK7f4wQnVFfowX010H/dNk0sKyf2Fpcrv5KOUcXlAIBhvhPoY
 /sJUWV49DzbUxeN8p6I3AF6ECdTN7PmNiEByCCKEnxzM+ANBeNrqDkUBsa8wvx7pjY
 l7gK1Mg98ck7OMfilfsXCN1BXu4T2LFhFzqSpS1+7D7Ik5V4yCfVtNXCTqVdBBLNgU
 RYeFsB5DtlzpqCfBNk5OFoaCcrIqNg2aZv4c8yF/fZrRpXnW24LDPNyQYqG2Q48wD7
 ygTcKaPuygBRzHa5ObPnkA9FWV/kwePaSjWQtO8VR3EO/b6nHsGW0c+0vdXzTYphjW
 eun1aIUbsGYZg==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Sat, 25 Sep 2021 14:22:55 +0300
Message-Id: <01bc35bd99dc5d2dcbf55bbf4a86f0bde1c50087.1632565508.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1632565508.git.leonro@nvidia.com>
References: <cover.1632565508.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 15/21] qed: Move devlink
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
 drivers/net/ethernet/qlogic/qed/qed_devlink.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/qlogic/qed/qed_devlink.c b/drivers/net/ethernet/qlogic/qed/qed_devlink.c
index c51f9590fe19..6bb4e165b592 100644
--- a/drivers/net/ethernet/qlogic/qed/qed_devlink.c
+++ b/drivers/net/ethernet/qlogic/qed/qed_devlink.c
@@ -215,7 +215,6 @@ struct devlink *qed_devlink_register(struct qed_dev *cdev)
 	qdevlink = devlink_priv(dl);
 	qdevlink->cdev = cdev;
 
-	devlink_register(dl);
 	rc = devlink_params_register(dl, qed_devlink_params,
 				     ARRAY_SIZE(qed_devlink_params));
 	if (rc)
@@ -226,15 +225,13 @@ struct devlink *qed_devlink_register(struct qed_dev *cdev)
 					   QED_DEVLINK_PARAM_ID_IWARP_CMT,
 					   value);
 
-	devlink_params_publish(dl);
 	cdev->iwarp_cmt = false;
 
 	qed_fw_reporters_create(dl);
-
+	devlink_register(dl);
 	return dl;
 
 err_unregister:
-	devlink_unregister(dl);
 	devlink_free(dl);
 
 	return ERR_PTR(rc);
@@ -245,11 +242,11 @@ void qed_devlink_unregister(struct devlink *devlink)
 	if (!devlink)
 		return;
 
+	devlink_unregister(devlink);
 	qed_fw_reporters_destroy(devlink);
 
 	devlink_params_unregister(devlink, qed_devlink_params,
 				  ARRAY_SIZE(qed_devlink_params));
 
-	devlink_unregister(devlink);
 	devlink_free(devlink);
 }
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
