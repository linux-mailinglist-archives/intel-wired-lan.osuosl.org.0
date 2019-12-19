Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C53F9126E48
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Dec 2019 20:56:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5248186F0F;
	Thu, 19 Dec 2019 19:56:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eIIsJX7HH7_4; Thu, 19 Dec 2019 19:56:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D6B1787072;
	Thu, 19 Dec 2019 19:56:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B0EC91BF3FD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2019 19:56:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AD28A8871E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2019 19:56:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RasJomPqGakO for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Dec 2019 19:56:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9D6D98871A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2019 19:56:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 11:56:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,333,1571727600"; d="scan'208";a="218274306"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.244.172])
 by orsmga006.jf.intel.com with ESMTP; 19 Dec 2019 11:56:17 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Thu, 19 Dec 2019 11:56:12 -0800
Message-Id: <20191219195612.25616-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.24.0.155.gd9f6f3b6195a
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] fm10k: use txqueue parameter in
 fm10k_tx_timeout
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Make use of the new txqueue parameter to the .ndo_tx_timeout function.
In fm10k_tx_timeout, remove the now unnecessary loop to determine which
Tx queue is stuck. Instead, just double check the specified queue

This could be improved further to attempt resetting only the specific
queue that got stuck. However, that is a much larger refactor and has
been left as a future improvement.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/fm10k/fm10k_netdev.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_netdev.c b/drivers/net/ethernet/intel/fm10k/fm10k_netdev.c
index ba2566e2123d..f09c37f2ba7a 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_netdev.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_netdev.c
@@ -696,21 +696,24 @@ static netdev_tx_t fm10k_xmit_frame(struct sk_buff *skb, struct net_device *dev)
 /**
  * fm10k_tx_timeout - Respond to a Tx Hang
  * @netdev: network interface device structure
+ * @txqueue: the index of the Tx queue that timed out
  **/
 static void fm10k_tx_timeout(struct net_device *netdev, unsigned int txqueue)
 {
 	struct fm10k_intfc *interface = netdev_priv(netdev);
+	struct fm10k_ring *tx_ring;
 	bool real_tx_hang = false;
-	int i;
-
-#define TX_TIMEO_LIMIT 16000
-	for (i = 0; i < interface->num_tx_queues; i++) {
-		struct fm10k_ring *tx_ring = interface->tx_ring[i];
 
-		if (check_for_tx_hang(tx_ring) && fm10k_check_tx_hang(tx_ring))
-			real_tx_hang = true;
+	if (txqueue >= interface->num_tx_queues) {
+		WARN(1, "invalid Tx queue index %d", txqueue);
+		return;
 	}
 
+	tx_ring = interface->tx_ring[txqueue]
+	if (check_for_tx_hang(tx_ring) && fm10k_check_tx_hang(tx_ring))
+		real_tx_hang = true;
+
+#define TX_TIMEO_LIMIT 16000
 	if (real_tx_hang) {
 		fm10k_tx_timeout_reset(interface);
 	} else {
-- 
2.24.0.155.gd9f6f3b6195a

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
