Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 992FC418147
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Sep 2021 13:23:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 080984033F;
	Sat, 25 Sep 2021 11:23:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id op5qPc4L-c8e; Sat, 25 Sep 2021 11:23:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D63354024C;
	Sat, 25 Sep 2021 11:23:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1159B1BF869
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0A52F40022
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vnWi0nE3KNr4 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Sep 2021 11:23:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7B2F34046A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:27 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 42CC86127A;
 Sat, 25 Sep 2021 11:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632569007;
 bh=1Fnka8ps90Zylh+ydNx/A5aVv/Vtl8oI7QwGTBkxA5A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=X/RREPSk0+dMrPt2ZhjQQE6yWhqRdBVusehpcFG2nS6PEjbiY1fkQqX5oNJSMq6l5
 yjJHliByFUAzg3jr1HOGac7gBEFipVghPyyQg9UeqRZ6xTZNalYQP1kQwNu/Z9fJku
 wz+Kh+NytJ1mpAo0fdujHFCyIeaORwISRAF3E4zwXEYSLUBkgFAZB3Pnibo5cQe+u+
 IgLybrtUtt3EoigRgqXbOnGBmFH/Y9BTAnrnZ08U/ssToKdsANp9vwBxfjjrLs0KTm
 cYvnLTAcsp65QzrliUDhNGLpg4GHwdwUF941D188Ic+EeR3yVitlX/9vcpDTRug49/
 KqJEz5/5w/lAQ==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Sat, 25 Sep 2021 14:22:47 +0300
Message-Id: <c711bbd0519dfdf3d28141cf9aa159d05f94aab7.1632565508.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1632565508.git.leonro@nvidia.com>
References: <cover.1632565508.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 07/21] octeontx2: Move devlink
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

This change prevents from users to access device before devlink is fully
configured. This change allows us to delete call to devlink_params_publish()
and impossible check during unregister flow.

Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 .../ethernet/marvell/octeontx2/af/rvu_devlink.c   | 10 ++--------
 .../ethernet/marvell/octeontx2/nic/otx2_devlink.c | 15 +++------------
 2 files changed, 5 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/marvell/octeontx2/af/rvu_devlink.c b/drivers/net/ethernet/marvell/octeontx2/af/rvu_devlink.c
index de9562acd04b..70bacd38a6d9 100644
--- a/drivers/net/ethernet/marvell/octeontx2/af/rvu_devlink.c
+++ b/drivers/net/ethernet/marvell/octeontx2/af/rvu_devlink.c
@@ -1510,7 +1510,6 @@ int rvu_register_dl(struct rvu *rvu)
 		return -ENOMEM;
 	}
 
-	devlink_register(dl);
 	rvu_dl = devlink_priv(dl);
 	rvu_dl->dl = dl;
 	rvu_dl->rvu = rvu;
@@ -1531,13 +1530,11 @@ int rvu_register_dl(struct rvu *rvu)
 		goto err_dl_health;
 	}
 
-	devlink_params_publish(dl);
-
+	devlink_register(dl);
 	return 0;
 
 err_dl_health:
 	rvu_health_reporters_destroy(rvu);
-	devlink_unregister(dl);
 	devlink_free(dl);
 	return err;
 }
@@ -1547,12 +1544,9 @@ void rvu_unregister_dl(struct rvu *rvu)
 	struct rvu_devlink *rvu_dl = rvu->rvu_dl;
 	struct devlink *dl = rvu_dl->dl;
 
-	if (!dl)
-		return;
-
+	devlink_unregister(dl);
 	devlink_params_unregister(dl, rvu_af_dl_params,
 				  ARRAY_SIZE(rvu_af_dl_params));
 	rvu_health_reporters_destroy(rvu);
-	devlink_unregister(dl);
 	devlink_free(dl);
 }
diff --git a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_devlink.c b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_devlink.c
index 3de18f9433ae..777a27047c8e 100644
--- a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_devlink.c
+++ b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_devlink.c
@@ -108,7 +108,6 @@ int otx2_register_dl(struct otx2_nic *pfvf)
 		return -ENOMEM;
 	}
 
-	devlink_register(dl);
 	otx2_dl = devlink_priv(dl);
 	otx2_dl->dl = dl;
 	otx2_dl->pfvf = pfvf;
@@ -122,12 +121,10 @@ int otx2_register_dl(struct otx2_nic *pfvf)
 		goto err_dl;
 	}
 
-	devlink_params_publish(dl);
-
+	devlink_register(dl);
 	return 0;
 
 err_dl:
-	devlink_unregister(dl);
 	devlink_free(dl);
 	return err;
 }
@@ -135,16 +132,10 @@ int otx2_register_dl(struct otx2_nic *pfvf)
 void otx2_unregister_dl(struct otx2_nic *pfvf)
 {
 	struct otx2_devlink *otx2_dl = pfvf->dl;
-	struct devlink *dl;
-
-	if (!otx2_dl || !otx2_dl->dl)
-		return;
-
-	dl = otx2_dl->dl;
+	struct devlink *dl = otx2_dl->dl;
 
+	devlink_unregister(dl);
 	devlink_params_unregister(dl, otx2_dl_params,
 				  ARRAY_SIZE(otx2_dl_params));
-
-	devlink_unregister(dl);
 	devlink_free(dl);
 }
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
