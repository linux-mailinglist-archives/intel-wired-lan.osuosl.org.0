Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3509E4164EC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Sep 2021 20:13:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5A4B60BB5;
	Thu, 23 Sep 2021 18:13:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fcd2f8IwWz9K; Thu, 23 Sep 2021 18:13:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E362260B2C;
	Thu, 23 Sep 2021 18:13:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ECD4C1BF389
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 18:13:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DB83060B2C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 18:13:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zvd9PsaksEaq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Sep 2021 18:13:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 62E1660B3F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 18:13:16 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 29F4560F43;
 Thu, 23 Sep 2021 18:13:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632420796;
 bh=pJhaA0qw+tHxdURheOHj0z2IzCKBecFnWm0GNA5bbeE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Hr251mLslci+HiCYqTS4C9w0scjBN8ggWi8fnxO2gMBOZmeEvJu+w1sHzscsy2JOX
 wVurErB3bUIfnn5XJrqPbPM7fdx0pL2/haxOibKmVH2b/BxzjiHcYrVVv/ecy6/JP8
 U9ySQGbJOI3t7TCCfYZGHxPqRG+B8vCxZy18xLXAtm54+6OGrFDleAJ7qZOgFA2oXX
 Akx6xGBd5SNSMXEb8w5n3pI7gQEnBQQGS1fUWWhs7oUc0earEuqAbiKTGQ7TKrQ7TF
 q9v4ODYqOk+53LqJsIh3Rm/7NiR6pa8otjW3JDgrv0sboVdeoxIGQjQtqQ876ZtpHg
 2T1xsuSULFTnA==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Thu, 23 Sep 2021 21:12:53 +0300
Message-Id: <c6acd223945669c3c0229afc62b1890810da8145.1632420431.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1632420430.git.leonro@nvidia.com>
References: <cover.1632420430.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 6/6] qed: Don't ignore devlink
 allocation failures
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
Cc: Igor Russkikh <irusskikh@marvell.com>, Alexander Lobakin <alobakin@pm.me>,
 Javed Hasan <jhasan@marvell.com>,
 Michal Kalderon <michal.kalderon@marvell.com>,
 Leon Romanovsky <leonro@nvidia.com>, linux-scsi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Jiri Pirko <jiri@nvidia.com>, Ariel Elior <aelior@marvell.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Vasundhara Volam <vasundhara-v.volam@broadcom.com>,
 Sathya Perla <sathya.perla@broadcom.com>,
 Michael Chan <michael.chan@broadcom.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Saurav Kashyap <skashyap@marvell.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, GR-QLogic-Storage-Upstream@marvell.com,
 GR-everest-linux-l2@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Leon Romanovsky <leonro@nvidia.com>

devlink is a software interface that doesn't depend on any hardware
capabilities. The failure in SW means memory issues, wrong parameters,
programmer error e.t.c.

Like any other such interface in the kernel, the returned status of
devlink APIs should be checked and propagated further and not ignored.

Fixes: 755f982bb1ff ("qed/qede: make devlink survive recovery")
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/net/ethernet/qlogic/qede/qede_main.c | 12 +++++-------
 drivers/scsi/qedf/qedf_main.c                |  2 ++
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/qlogic/qede/qede_main.c b/drivers/net/ethernet/qlogic/qede/qede_main.c
index 9837bdb89cd4..ee4c3bd28a93 100644
--- a/drivers/net/ethernet/qlogic/qede/qede_main.c
+++ b/drivers/net/ethernet/qlogic/qede/qede_main.c
@@ -1176,19 +1176,17 @@ static int __qede_probe(struct pci_dev *pdev, u32 dp_module, u8 dp_level,
 		edev->devlink = qed_ops->common->devlink_register(cdev);
 		if (IS_ERR(edev->devlink)) {
 			DP_NOTICE(edev, "Cannot register devlink\n");
+			rc = PTR_ERR(edev->devlink);
 			edev->devlink = NULL;
-			/* Go on, we can live without devlink */
+			goto err3;
 		}
 	} else {
 		struct net_device *ndev = pci_get_drvdata(pdev);
+		struct qed_devlink *qdl;
 
 		edev = netdev_priv(ndev);
-
-		if (edev->devlink) {
-			struct qed_devlink *qdl = devlink_priv(edev->devlink);
-
-			qdl->cdev = cdev;
-		}
+		qdl = devlink_priv(edev->devlink);
+		qdl->cdev = cdev;
 		edev->cdev = cdev;
 		memset(&edev->stats, 0, sizeof(edev->stats));
 		memcpy(&edev->dev_info, &dev_info, sizeof(dev_info));
diff --git a/drivers/scsi/qedf/qedf_main.c b/drivers/scsi/qedf/qedf_main.c
index 42d0d941dba5..94ee08fab46a 100644
--- a/drivers/scsi/qedf/qedf_main.c
+++ b/drivers/scsi/qedf/qedf_main.c
@@ -3416,7 +3416,9 @@ static int __qedf_probe(struct pci_dev *pdev, int mode)
 		qedf->devlink = qed_ops->common->devlink_register(qedf->cdev);
 		if (IS_ERR(qedf->devlink)) {
 			QEDF_ERR(&qedf->dbg_ctx, "Cannot register devlink\n");
+			rc = PTR_ERR(qedf->devlink);
 			qedf->devlink = NULL;
+			goto err2;
 		}
 	}
 
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
