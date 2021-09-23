Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBC84164E1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Sep 2021 20:13:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 74AA741613;
	Thu, 23 Sep 2021 18:13:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ijf_R2TomvKp; Thu, 23 Sep 2021 18:13:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 39BBD415AB;
	Thu, 23 Sep 2021 18:13:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3B0381BF389
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 18:13:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 361BF60ADB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 18:13:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yk9ma877oVS6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Sep 2021 18:13:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 91B7D60774
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 18:13:02 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7F3C6610C8;
 Thu, 23 Sep 2021 18:13:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632420782;
 bh=JszZEhzKH2ZrJM1/H0dQz59yU6fi6F4Uu7Kc5qdwk7g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ff5SllCWr49nkhlXvN/aQF7WHB3ftLia70sKOmrhq+JYaRWuVZ6uczQsgjBp1sSXI
 BJfeIp0x6OIE+Av8JKwPc52Matuj5OU4x4LkRDM9/FyE0ZnhgqkVq4PluCFYpIwZfo
 GoInaFxJWicEzbDIHRdC+I/RpJrDI+lI9VM+kvEFC2oh9+TJUdMgJaiP/YiPB2RWZk
 6gvRcXrSELrxdI2U84K1fDVXnyMFppq82SSwZ+rPqQlBQ9rVN0f8Q0WDJm1RYwWRlE
 0ijCq3hNSZLYYKpGAeqrrYjMJhIuYnIDPQYycgV9f4pXoFddFdyd5DscPDOqfNVEur
 qtCVJKcajsE7A==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Thu, 23 Sep 2021 21:12:48 +0300
Message-Id: <e7708737fadf4fe6f152afc76145c728c201adad.1632420430.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1632420430.git.leonro@nvidia.com>
References: <cover.1632420430.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 1/6] bnxt_en: Check devlink
 allocation and registration status
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

Fixes: 4ab0c6a8ffd7 ("bnxt_en: add support to enable VF-representors")
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/net/ethernet/broadcom/bnxt/bnxt.c         |  5 ++++-
 drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c | 13 ++++++-------
 drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.h | 13 -------------
 3 files changed, 10 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt.c b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
index 037767b370d5..4c483fd91dbe 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
@@ -13370,7 +13370,9 @@ static int bnxt_init_one(struct pci_dev *pdev, const struct pci_device_id *ent)
 	}
 
 	bnxt_inv_fw_health_reg(bp);
-	bnxt_dl_register(bp);
+	rc = bnxt_dl_register(bp);
+	if (rc)
+		goto init_err_dl;
 
 	rc = register_netdev(dev);
 	if (rc)
@@ -13390,6 +13392,7 @@ static int bnxt_init_one(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 init_err_cleanup:
 	bnxt_dl_unregister(bp);
+init_err_dl:
 	bnxt_shutdown_tc(bp);
 	bnxt_clear_int_mode(bp);
 
diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c b/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c
index bf7d3c17049b..dc0851f709f5 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c
@@ -134,7 +134,7 @@ void bnxt_dl_fw_reporters_create(struct bnxt *bp)
 {
 	struct bnxt_fw_health *health = bp->fw_health;
 
-	if (!bp->dl || !health)
+	if (!health)
 		return;
 
 	if (!(bp->fw_cap & BNXT_FW_CAP_HOT_RESET) || health->fw_reset_reporter)
@@ -188,7 +188,7 @@ void bnxt_dl_fw_reporters_destroy(struct bnxt *bp, bool all)
 {
 	struct bnxt_fw_health *health = bp->fw_health;
 
-	if (!bp->dl || !health)
+	if (!health)
 		return;
 
 	if ((all || !(bp->fw_cap & BNXT_FW_CAP_HOT_RESET)) &&
@@ -781,6 +781,7 @@ int bnxt_dl_register(struct bnxt *bp)
 {
 	const struct devlink_ops *devlink_ops;
 	struct devlink_port_attrs attrs = {};
+	struct bnxt_dl *bp_dl;
 	struct devlink *dl;
 	int rc;
 
@@ -795,7 +796,9 @@ int bnxt_dl_register(struct bnxt *bp)
 		return -ENOMEM;
 	}
 
-	bnxt_link_bp_to_dl(bp, dl);
+	bp->dl = dl;
+	bp_dl = devlink_priv(dl);
+	bp_dl->bp = bp;
 
 	/* Add switchdev eswitch mode setting, if SRIOV supported */
 	if (pci_find_ext_capability(bp->pdev, PCI_EXT_CAP_ID_SRIOV) &&
@@ -826,7 +829,6 @@ int bnxt_dl_register(struct bnxt *bp)
 err_dl_port_unreg:
 	devlink_port_unregister(&bp->dl_port);
 err_dl_free:
-	bnxt_link_bp_to_dl(bp, NULL);
 	devlink_free(dl);
 	return rc;
 }
@@ -835,9 +837,6 @@ void bnxt_dl_unregister(struct bnxt *bp)
 {
 	struct devlink *dl = bp->dl;
 
-	if (!dl)
-		return;
-
 	if (BNXT_PF(bp)) {
 		bnxt_dl_params_unregister(bp);
 		devlink_port_unregister(&bp->dl_port);
diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.h b/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.h
index d889f240da2b..406dc655a5fc 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.h
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.h
@@ -20,19 +20,6 @@ static inline struct bnxt *bnxt_get_bp_from_dl(struct devlink *dl)
 	return ((struct bnxt_dl *)devlink_priv(dl))->bp;
 }
 
-/* To clear devlink pointer from bp, pass NULL dl */
-static inline void bnxt_link_bp_to_dl(struct bnxt *bp, struct devlink *dl)
-{
-	bp->dl = dl;
-
-	/* add a back pointer in dl to bp */
-	if (dl) {
-		struct bnxt_dl *bp_dl = devlink_priv(dl);
-
-		bp_dl->bp = bp;
-	}
-}
-
 #define NVM_OFF_MSIX_VEC_PER_PF_MAX	108
 #define NVM_OFF_MSIX_VEC_PER_PF_MIN	114
 #define NVM_OFF_IGNORE_ARI		164
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
