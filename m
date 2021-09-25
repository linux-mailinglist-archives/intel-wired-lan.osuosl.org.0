Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 02073418141
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Sep 2021 13:23:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5021840477;
	Sat, 25 Sep 2021 11:23:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2LiVlKVowUWY; Sat, 25 Sep 2021 11:23:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5264140475;
	Sat, 25 Sep 2021 11:23:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0FBA81BF869
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0B46F607E0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z1WJY5c2iQM4 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Sep 2021 11:23:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7A05B607CC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:13 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7CC4A6127A;
 Sat, 25 Sep 2021 11:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632568993;
 bh=0iCrJmusuY+MMUEQ//ywNHOofwBQzIGVnKfBKsYhLkY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Un2ZXGs141wGHS2WheoisAp7znQPAsLcvAkFWEs/VT1FH8znj6ZuQ78vXW/UxmcNq
 DdEkagR3qqP2rfbHNVlg6STPvOVaZ0+ZfxAwDMiP0rNwXsJsLCfO7CIY/3nmp31XVw
 mcfvBqqu2/PDLgeC0sROwOWx1xKrrBzrswzkASx/156P4VKWx/jPoSaUSBLxOv+cne
 PBEte5Wz8kBJRU98ig/0GffGqKLmxAn3wYIyNB6qUMMgQN1ttlgrI02XyYZXimYavH
 eVXwwgstpU2BJ4eCFTUjvdEV6IX0VLMZ42T2n7f7/dAzBcN+b2XqdPVm20ncAAMeFq
 wP3LrJfUtJRLQ==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Sat, 25 Sep 2021 14:22:42 +0300
Message-Id: <54d36bce5a78cdb4d51a9eaff6f2216fbbdd1004.1632565508.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1632565508.git.leonro@nvidia.com>
References: <cover.1632565508.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 02/21] bnxt_en: Register
 devlink instance at the end devlink configuration
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

Move devlink_register() to be last command in devlink configuration
sequence, so no user space access will be possible till devlink instance
is fully operable. As part of this change, the devlink_params_publish
call is removed as not needed.

This change fixes forgotten devlink_params_unpublish() too.

Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c b/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c
index ed95e28d60ef..951c0c00cc95 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c
@@ -745,14 +745,10 @@ static int bnxt_dl_params_register(struct bnxt *bp)
 
 	rc = devlink_params_register(bp->dl, bnxt_dl_params,
 				     ARRAY_SIZE(bnxt_dl_params));
-	if (rc) {
+	if (rc)
 		netdev_warn(bp->dev, "devlink_params_register failed. rc=%d\n",
 			    rc);
-		return rc;
-	}
-	devlink_params_publish(bp->dl);
-
-	return 0;
+	return rc;
 }
 
 static void bnxt_dl_params_unregister(struct bnxt *bp)
@@ -792,9 +788,8 @@ int bnxt_dl_register(struct bnxt *bp)
 	    bp->hwrm_spec_code > 0x10803)
 		bp->eswitch_mode = DEVLINK_ESWITCH_MODE_LEGACY;
 
-	devlink_register(dl);
 	if (!BNXT_PF(bp))
-		return 0;
+		goto out;
 
 	attrs.flavour = DEVLINK_PORT_FLAVOUR_PHYSICAL;
 	attrs.phys.port_number = bp->pf.port_id;
@@ -811,6 +806,8 @@ int bnxt_dl_register(struct bnxt *bp)
 	if (rc)
 		goto err_dl_port_unreg;
 
+out:
+	devlink_register(dl);
 	return 0;
 
 err_dl_port_unreg:
@@ -824,10 +821,10 @@ void bnxt_dl_unregister(struct bnxt *bp)
 {
 	struct devlink *dl = bp->dl;
 
+	devlink_unregister(dl);
 	if (BNXT_PF(bp)) {
 		bnxt_dl_params_unregister(bp);
 		devlink_port_unregister(&bp->dl_port);
 	}
-	devlink_unregister(dl);
 	devlink_free(dl);
 }
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
