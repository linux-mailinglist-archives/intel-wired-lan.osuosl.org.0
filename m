Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 433DB488AF4
	for <lists+intel-wired-lan@lfdr.de>; Sun,  9 Jan 2022 18:21:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EEBD960BB4;
	Sun,  9 Jan 2022 17:21:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 81StwPbDKd21; Sun,  9 Jan 2022 17:21:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 02C9B60BB2;
	Sun,  9 Jan 2022 17:21:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7720B1BF475
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jan 2022 17:21:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 631BA4046D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jan 2022 17:21:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zqn0V1t1mOmy for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Jan 2022 17:21:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from smtp.smtpout.orange.fr (smtp04.smtpout.orange.fr
 [80.12.242.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3D878401FB
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jan 2022 17:21:00 +0000 (UTC)
Received: from pop-os.home ([90.11.185.88]) by smtp.orange.fr with ESMTPA
 id 6bsInvYlrsoWh6bsInvx7T; Sun, 09 Jan 2022 18:20:59 +0100
X-ME-Helo: pop-os.home
X-ME-Auth: YWZlNiIxYWMyZDliZWIzOTcwYTEyYzlhMmU3ZiQ1M2U2MzfzZDfyZTMxZTBkMTYyNDBjNDJlZmQ3ZQ==
X-ME-Date: Sun, 09 Jan 2022 18:20:59 +0100
X-ME-IP: 90.11.185.88
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Sun,  9 Jan 2022 18:20:57 +0100
Message-Id: <aafc0597758dd8ba58c15e4bf2e669872246c839.1641748850.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] ixgbe: Remove useless DMA-32 fallback
 configuration
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
Cc: netdev@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 intel-wired-lan@lists.osuosl.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

As stated in [1], dma_set_mask() with a 64-bit mask never fails if
dev->dma_mask is non-NULL.
So, if it fails, the 32 bits case will also fail for the same reason.

So, if dma_set_mask_and_coherent() succeeds, 'pci_using_dac' is known to be
1.

Simplify code and remove some dead code accordingly.

[1]: https://lkml.org/lkml/2021/6/7/398

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 20 +++++++------------
 1 file changed, 7 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 89b467006291..2c8a4a06f56a 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -10632,9 +10632,9 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	struct ixgbe_adapter *adapter = NULL;
 	struct ixgbe_hw *hw;
 	const struct ixgbe_info *ii = ixgbe_info_tbl[ent->driver_data];
-	int i, err, pci_using_dac, expected_gts;
 	unsigned int indices = MAX_TX_QUEUES;
 	u8 part_str[IXGBE_PBANUM_LENGTH];
+	int i, err, expected_gts;
 	bool disable_dev = false;
 #ifdef IXGBE_FCOE
 	u16 device_caps;
@@ -10654,16 +10654,11 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (err)
 		return err;
 
-	if (!dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64))) {
-		pci_using_dac = 1;
-	} else {
-		err = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
-		if (err) {
-			dev_err(&pdev->dev,
-				"No usable DMA configuration, aborting\n");
-			goto err_dma;
-		}
-		pci_using_dac = 0;
+	err = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
+	if (err) {
+		dev_err(&pdev->dev,
+			"No usable DMA configuration, aborting\n");
+		goto err_dma;
 	}
 
 	err = pci_request_mem_regions(pdev, ixgbe_driver_name);
@@ -10861,8 +10856,7 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		netdev->hw_features |= NETIF_F_NTUPLE |
 				       NETIF_F_HW_TC;
 
-	if (pci_using_dac)
-		netdev->features |= NETIF_F_HIGHDMA;
+	netdev->features |= NETIF_F_HIGHDMA;
 
 	netdev->vlan_features |= netdev->features | NETIF_F_TSO_MANGLEID;
 	netdev->hw_enc_features |= netdev->vlan_features;
-- 
2.32.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
