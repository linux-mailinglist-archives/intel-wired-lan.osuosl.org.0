Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1BB71C82
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2019 18:09:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A8A41203C9;
	Tue, 23 Jul 2019 16:09:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HKus496hfKyE; Tue, 23 Jul 2019 16:09:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E01CE204F8;
	Tue, 23 Jul 2019 16:09:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6723E1BF2AE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 16:09:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 63D1B203C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 16:09:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tWogLXbazLGM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2019 16:09:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id C965920444
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 16:09:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 09:08:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; d="scan'208";a="368419199"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.244.172])
 by fmsmga005.fm.intel.com with ESMTP; 23 Jul 2019 09:08:50 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 23 Jul 2019 09:08:48 -0700
Message-Id: <20190723160848.1006-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.22.0.214.g8dca754b1e87
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] fm10k: use a local variable for the frag
 pointer
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

In the function fm10k_xmit_frame_ring, we recently switched to using
the skb_frag_size accessor instead of directly using the size member of
the skb fragment.

This made the for loop slightly harder to read because it created a very
long line that is difficult to split up. Avoid this by using a local
variable in the for loop, so that we do not have to break the line on an
open parenthesis.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/fm10k/fm10k_main.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_main.c b/drivers/net/ethernet/intel/fm10k/fm10k_main.c
index e0a2be534b20..2be9222510e7 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_main.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_main.c
@@ -1073,9 +1073,11 @@ netdev_tx_t fm10k_xmit_frame_ring(struct sk_buff *skb,
 	 *       + 2 desc gap to keep tail from touching head
 	 * otherwise try next time
 	 */
-	for (f = 0; f < skb_shinfo(skb)->nr_frags; f++)
-		count += TXD_USE_COUNT(skb_frag_size(
-						&skb_shinfo(skb)->frags[f]));
+	for (f = 0; f < skb_shinfo(skb)->nr_frags; f++) {
+		skb_frag_t *frag = &skb_shinfo(skb)->frags[f];
+
+		count += TXD_USE_COUNT(skb_frag_size(frag));
+	}
 
 	if (fm10k_maybe_stop_tx(tx_ring, count + 3)) {
 		tx_ring->tx_stats.tx_busy++;
-- 
2.22.0.214.g8dca754b1e87

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
