Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A97D418144
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Sep 2021 13:23:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E23640266;
	Sat, 25 Sep 2021 11:23:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4TuVrJ1EpM5r; Sat, 25 Sep 2021 11:23:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 51AE44024C;
	Sat, 25 Sep 2021 11:23:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6104E1BF869
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5C13482E19
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ls8LfLa927EP for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Sep 2021 11:23:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B380382DD9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:23 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 853346128B;
 Sat, 25 Sep 2021 11:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632569003;
 bh=02xRTwet1c5l8qRgcXs4VCpKQJvqfYPSwFUrWIoc2cM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eBdkOeQZAzQfx/m/yxFbsJIGBvkhRpE2hSfkJbHrHeRhC5LOGgZSfk4qdoFd5jXLC
 4cajFeDHROqHcKL6Uxo3t/x66TBMHadOtMGgbKbHUJLVc+EoKzRywI13DAUuwL4Nmy
 XdaiN+sF1pwhdlQ+uSs0w4bITD8GdZlM7wYUfcvrz8HaBW66RC6ITexIAdOoJUX2tS
 NdMaGkjmUePmj+YdIJxYmXTz6HRjqnWB052FPKJjeF22nVurS6AbIJA54sOsNoQIvo
 MozNtLmeX9dcJkGV28/X2nazhnG4nqa89dbG8o8cBxCkZF4jyGYcMvQtjkCR91Gadf
 06/PrR1PnbLsA==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Sat, 25 Sep 2021 14:22:43 +0300
Message-Id: <4e78bd8c6f45eef8093547a37c4d00ef0d1fef56.1632565508.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1632565508.git.leonro@nvidia.com>
References: <cover.1632565508.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 03/21] liquidio: Overcome
 missing device lock protection in init/remove flows
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

The liquidio driver is broken by design. It initialize PCI devices
in separate delayed works. It causes to the situation where device lock
is dropped during initialize and remove sequences.

That lock is part of driver/core and needed to protect from races during
init, destroy and bus invocations.

In addition to lack of locking protection, it has incorrect order of
destroy flows and very questionable synchronization scheme based on
atomic_t.

This change doesn't fix that driver but makes sure that rest of the
netdev subsystem doesn't suffer from such basic protection by adding
device_lock over devlink_*() APIs and by moving devlink_register()
to be last command in setup_nic_devices().

Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 .../net/ethernet/cavium/liquidio/lio_main.c   | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/cavium/liquidio/lio_main.c b/drivers/net/ethernet/cavium/liquidio/lio_main.c
index a34b3bb2dd4f..dafc79bd34f4 100644
--- a/drivers/net/ethernet/cavium/liquidio/lio_main.c
+++ b/drivers/net/ethernet/cavium/liquidio/lio_main.c
@@ -1279,6 +1279,14 @@ static int liquidio_stop_nic_module(struct octeon_device *oct)
 	struct lio *lio;
 
 	dev_dbg(&oct->pci_dev->dev, "Stopping network interfaces\n");
+	device_lock(&oct->pci_dev->dev);
+	if (oct->devlink) {
+		devlink_unregister(oct->devlink);
+		devlink_free(oct->devlink);
+		oct->devlink = NULL;
+	}
+	device_unlock(&oct->pci_dev->dev);
+
 	if (!oct->ifcount) {
 		dev_err(&oct->pci_dev->dev, "Init for Octeon was not completed\n");
 		return 1;
@@ -1300,12 +1308,6 @@ static int liquidio_stop_nic_module(struct octeon_device *oct)
 	for (i = 0; i < oct->ifcount; i++)
 		liquidio_destroy_nic_device(oct, i);
 
-	if (oct->devlink) {
-		devlink_unregister(oct->devlink);
-		devlink_free(oct->devlink);
-		oct->devlink = NULL;
-	}
-
 	dev_dbg(&oct->pci_dev->dev, "Network interfaces stopped\n");
 	return 0;
 }
@@ -3749,10 +3751,12 @@ static int setup_nic_devices(struct octeon_device *octeon_dev)
 		}
 	}
 
+	device_lock(&octeon_dev->pci_dev->dev);
 	devlink = devlink_alloc(&liquidio_devlink_ops,
 				sizeof(struct lio_devlink_priv),
 				&octeon_dev->pci_dev->dev);
 	if (!devlink) {
+		device_unlock(&octeon_dev->pci_dev->dev);
 		dev_err(&octeon_dev->pci_dev->dev, "devlink alloc failed\n");
 		goto setup_nic_dev_free;
 	}
@@ -3760,9 +3764,10 @@ static int setup_nic_devices(struct octeon_device *octeon_dev)
 	lio_devlink = devlink_priv(devlink);
 	lio_devlink->oct = octeon_dev;
 
-	devlink_register(devlink);
 	octeon_dev->devlink = devlink;
 	octeon_dev->eswitch_mode = DEVLINK_ESWITCH_MODE_LEGACY;
+	devlink_register(devlink);
+	device_unlock(&octeon_dev->pci_dev->dev);
 
 	return 0;
 
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
