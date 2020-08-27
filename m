Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B53B7253F9C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Aug 2020 09:53:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4430B86CEF;
	Thu, 27 Aug 2020 07:53:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LpwXcysWFqwY; Thu, 27 Aug 2020 07:53:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 86F3686CDF;
	Thu, 27 Aug 2020 07:53:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ECB201BF366
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Aug 2020 07:53:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E85B986CB0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Aug 2020 07:53:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dl29KwzeXrMD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Aug 2020 07:53:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from tc-sys-mailedm04.tc.baidu.com (mx135-tc.baidu.com
 [61.135.168.135])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9542286D19
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Aug 2020 07:53:11 +0000 (UTC)
Received: from localhost (cp01-cos-dev01.cp01.baidu.com [10.92.119.46])
 by tc-sys-mailedm04.tc.baidu.com (Postfix) with ESMTP id CD523236C013;
 Thu, 27 Aug 2020 15:53:05 +0800 (CST)
From: Li RongQing <lirongqing@baidu.com>
To: netdev@vger.kernel.org,
	intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Aug 2020 15:53:08 +0800
Message-Id: <1598514788-31039-1-git-send-email-lirongqing@baidu.com>
X-Mailer: git-send-email 1.7.1
Subject: [Intel-wired-lan] [PATCH] iavf: use kvzalloc instead of kzalloc for
 rx/tx_bi buffer
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

when changes the rx/tx ring to 4096, kzalloc may fail due to
a temporary shortage on slab entries.

kvmalloc is used to allocate this memory as there is no need
to have this memory area physical continuously.

Signed-off-by: Li RongQing <lirongqing@baidu.com>
---
 drivers/net/ethernet/intel/iavf/iavf_txrx.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 256fa07d54d5..f5a3e195ec54 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -92,7 +92,7 @@ void iavf_clean_tx_ring(struct iavf_ring *tx_ring)
 void iavf_free_tx_resources(struct iavf_ring *tx_ring)
 {
 	iavf_clean_tx_ring(tx_ring);
-	kfree(tx_ring->tx_bi);
+	kvfree(tx_ring->tx_bi);
 	tx_ring->tx_bi = NULL;
 
 	if (tx_ring->desc) {
@@ -622,7 +622,7 @@ int iavf_setup_tx_descriptors(struct iavf_ring *tx_ring)
 	/* warn if we are about to overwrite the pointer */
 	WARN_ON(tx_ring->tx_bi);
 	bi_size = sizeof(struct iavf_tx_buffer) * tx_ring->count;
-	tx_ring->tx_bi = kzalloc(bi_size, GFP_KERNEL);
+	tx_ring->tx_bi = kvzalloc(bi_size, GFP_KERNEL);
 	if (!tx_ring->tx_bi)
 		goto err;
 
@@ -643,7 +643,7 @@ int iavf_setup_tx_descriptors(struct iavf_ring *tx_ring)
 	return 0;
 
 err:
-	kfree(tx_ring->tx_bi);
+	kvfree(tx_ring->tx_bi);
 	tx_ring->tx_bi = NULL;
 	return -ENOMEM;
 }
@@ -714,7 +714,7 @@ void iavf_clean_rx_ring(struct iavf_ring *rx_ring)
 void iavf_free_rx_resources(struct iavf_ring *rx_ring)
 {
 	iavf_clean_rx_ring(rx_ring);
-	kfree(rx_ring->rx_bi);
+	kvfree(rx_ring->rx_bi);
 	rx_ring->rx_bi = NULL;
 
 	if (rx_ring->desc) {
@@ -738,7 +738,7 @@ int iavf_setup_rx_descriptors(struct iavf_ring *rx_ring)
 	/* warn if we are about to overwrite the pointer */
 	WARN_ON(rx_ring->rx_bi);
 	bi_size = sizeof(struct iavf_rx_buffer) * rx_ring->count;
-	rx_ring->rx_bi = kzalloc(bi_size, GFP_KERNEL);
+	rx_ring->rx_bi = kvzalloc(bi_size, GFP_KERNEL);
 	if (!rx_ring->rx_bi)
 		goto err;
 
@@ -762,7 +762,7 @@ int iavf_setup_rx_descriptors(struct iavf_ring *rx_ring)
 
 	return 0;
 err:
-	kfree(rx_ring->rx_bi);
+	kvfree(rx_ring->rx_bi);
 	rx_ring->rx_bi = NULL;
 	return -ENOMEM;
 }
-- 
2.16.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
