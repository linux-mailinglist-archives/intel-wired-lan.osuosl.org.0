Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE54E4164EB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Sep 2021 20:13:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6D1154159A;
	Thu, 23 Sep 2021 18:13:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0BGeu3XY1Cfo; Thu, 23 Sep 2021 18:13:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 881574158F;
	Thu, 23 Sep 2021 18:13:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 645201BF389
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 18:13:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 536E983FA9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 18:13:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wV1Ps4cR706c for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Sep 2021 18:13:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DC4E983F96
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 18:13:12 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A79D36121F;
 Thu, 23 Sep 2021 18:13:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632420792;
 bh=CXcKjL0dNyoXlfgnPpjkJAtY8Lv7U9Iqs9KkD96mUaA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DTwFfgMBKWSHaGqPCWbFbYIFXdy5EQqdpon77mGF6ctb4h0+miOD3b1ZezH5DMFli
 L8PiWaZP/uGWafApMmK/PBUcuE7nHYz7XNzFyHsxzcZNJ+RAfRzWbvQl+DuhQSMHfL
 7YeBu/KcmpgJvwsRme+URggvA5+1tBzfz2D3iquFBNCpqkFmv0zq3l85Mw+KiCR26g
 O6373kMum8XjY8foU5ATBcjov7HLPGqWxO6tibzw85AZaxXbD4Cx0ZIvY479d1jyCb
 Nzi1n3qycbVKlamTVhMogKar4sPcrVMoKdEbjVyivyRKu1WUnwZDqSxrCpWuyuVW00
 KN6bnRQLU8PNA==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Thu, 23 Sep 2021 21:12:49 +0300
Message-Id: <7b85ce0d2a5056af2c7e14dbd16c55d86aac659c.1632420431.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1632420430.git.leonro@nvidia.com>
References: <cover.1632420430.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 2/6] bnxt_en: Properly remove
 port parameter support
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

This driver doesn't have any port parameters and registers
devlink port parameters with empty table. Remove the useless
calls to devlink_port_params_register and _unregister.

Fixes: da203dfa89ce ("Revert "devlink: Add a generic wake_on_lan port parameter"")
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c b/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c
index dc0851f709f5..ed95e28d60ef 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c
@@ -736,9 +736,6 @@ static const struct devlink_param bnxt_dl_params[] = {
 			     NULL),
 };
 
-static const struct devlink_param bnxt_dl_port_params[] = {
-};
-
 static int bnxt_dl_params_register(struct bnxt *bp)
 {
 	int rc;
@@ -753,14 +750,6 @@ static int bnxt_dl_params_register(struct bnxt *bp)
 			    rc);
 		return rc;
 	}
-	rc = devlink_port_params_register(&bp->dl_port, bnxt_dl_port_params,
-					  ARRAY_SIZE(bnxt_dl_port_params));
-	if (rc) {
-		netdev_err(bp->dev, "devlink_port_params_register failed\n");
-		devlink_params_unregister(bp->dl, bnxt_dl_params,
-					  ARRAY_SIZE(bnxt_dl_params));
-		return rc;
-	}
 	devlink_params_publish(bp->dl);
 
 	return 0;
@@ -773,8 +762,6 @@ static void bnxt_dl_params_unregister(struct bnxt *bp)
 
 	devlink_params_unregister(bp->dl, bnxt_dl_params,
 				  ARRAY_SIZE(bnxt_dl_params));
-	devlink_port_params_unregister(&bp->dl_port, bnxt_dl_port_params,
-				       ARRAY_SIZE(bnxt_dl_port_params));
 }
 
 int bnxt_dl_register(struct bnxt *bp)
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
