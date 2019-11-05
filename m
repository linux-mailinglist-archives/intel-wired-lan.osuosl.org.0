Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F2061EF9D1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Nov 2019 10:44:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3A1A8220EC;
	Tue,  5 Nov 2019 09:44:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id llSzWkR98vsz; Tue,  5 Nov 2019 09:44:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C7574220D6;
	Tue,  5 Nov 2019 09:44:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1B5681BF2CC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2019 09:44:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 171CE890F7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2019 09:44:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8noBv7ZOYTKz for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Nov 2019 09:44:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8B38A890ED
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2019 09:44:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Nov 2019 01:44:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,270,1569308400"; d="scan'208";a="401922250"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by fmsmga005.fm.intel.com with ESMTP; 05 Nov 2019 01:44:13 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  5 Nov 2019 11:44:13 +0200
Message-Id: <20191105094413.1405-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1] igc: Improve the DMA mapping flow
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Improve the probe flow and set both the DMA mask and the coherent
to the same thing. Make the flow optimized and cleared.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 24 +++++++++---------------
 1 file changed, 9 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index c3266645c95e..648aee679cb6 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -4346,32 +4346,26 @@ static int igc_probe(struct pci_dev *pdev,
 	struct net_device *netdev;
 	struct igc_hw *hw;
 	const struct igc_info *ei = igc_info_tbl[ent->driver_data];
-	int err;
+	int err, pci_using_dac;
 
 	err = pci_enable_device_mem(pdev);
 	if (err)
 		return err;
 
-	err = dma_set_mask(&pdev->dev, DMA_BIT_MASK(64));
+	pci_using_dac = 0;
+	err = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
 	if (!err) {
-		err = dma_set_coherent_mask(&pdev->dev,
-					    DMA_BIT_MASK(64));
+		pci_using_dac = 1;
 	} else {
-		err = dma_set_mask(&pdev->dev, DMA_BIT_MASK(32));
+		err = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
 		if (err) {
-			err = dma_set_coherent_mask(&pdev->dev,
-						    DMA_BIT_MASK(32));
-			if (err) {
-				dev_err(&pdev->dev, "igc: Wrong DMA config\n");
-				goto err_dma;
-			}
+			dev_err(&pdev->dev,
+				"No usable DMA configuration, aborting\n");
+			goto err_dma;
 		}
 	}
 
-	err = pci_request_selected_regions(pdev,
-					   pci_select_bars(pdev,
-							   IORESOURCE_MEM),
-					   igc_driver_name);
+	err = pci_request_mem_regions(pdev, igc_driver_name);
 	if (err)
 		goto err_pci_reg;
 
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
