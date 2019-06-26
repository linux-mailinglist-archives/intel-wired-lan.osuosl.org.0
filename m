Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8273A56FD6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jun 2019 19:48:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 37EB4861C8;
	Wed, 26 Jun 2019 17:48:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eIIQEG_-cRS2; Wed, 26 Jun 2019 17:48:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 409DC861DD;
	Wed, 26 Jun 2019 17:48:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DBDA51BF326
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 17:47:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D6C81860FC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 17:47:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7OmCbJ9GgYK5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jun 2019 17:47:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E0F9685E25
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 17:47:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 10:47:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,420,1557212400"; d="scan'208";a="183218130"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga001.fm.intel.com with ESMTP; 26 Jun 2019 10:47:52 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 26 Jun 2019 02:20:19 -0700
Message-Id: <20190626092027.52845-8-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190626092027.52845-1-anthony.l.nguyen@intel.com>
References: <20190626092027.52845-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S22 08/16] ice: Only bump Rx tail and
 release buffers once per napi_poll
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
Cc: Brett Creeley <brett.creeley@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Brett Creeley <brett.creeley@intel.com>

Currently we bump the Rx tail and release/give buffers to hardware every
16 descriptors. This causes us to bump Rx tail up to 4 times per
napi_poll call. Also we are always bumping tail on an odd index and this
is a problem because hardware ignores the lower 3 bits in the QRX_TAIL
register. This is making it so hardware sees tail bumps only every 8
descriptors. Instead lets only bump Rx tail once per napi_poll if
the value aligns with hardwares expectations of the lower 3 bits being
cleared. Also only release/give Rx buffers once per napi_poll call.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 41 +++++++++++++++--------
 1 file changed, 27 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index d76237d82009..c604b2d192b1 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -428,18 +428,28 @@ static
 #endif
 void ice_release_rx_desc(struct ice_ring *rx_ring, u32 val)
 {
+	u16 prev_ntu = rx_ring->next_to_use;
+
 	rx_ring->next_to_use = val;
 
 	/* update next to alloc since we have filled the ring */
 	rx_ring->next_to_alloc = val;
 
-	/* Force memory writes to complete before letting h/w
-	 * know there are new descriptors to fetch. (Only
-	 * applicable for weak-ordered memory model archs,
-	 * such as IA-64).
+	/* QRX_TAIL will be updated with any tail value, but hardware ignores
+	 * the lower 3 bits. This makes it so we only bump tail on meaningful
+	 * boundaries. Also, this allows us to bump tail on intervals of 8 up to
+	 * the budget depending on the current traffic load.
 	 */
-	wmb();
-	writel(val, rx_ring->tail);
+	val &= ~0x7;
+	if (prev_ntu != val) {
+		/* Force memory writes to complete before letting h/w
+		 * know there are new descriptors to fetch. (Only
+		 * applicable for weak-ordered memory model archs,
+		 * such as IA-64).
+		 */
+		wmb();
+		writel(val, rx_ring->tail);
+	}
 }
 
 /**
@@ -697,7 +707,13 @@ ice_alloc_mapped_page(struct ice_ring *rx_ring, struct ice_rx_buf *bi)
  * @rx_ring: ring to place buffers on
  * @cleaned_count: number of buffers to replace
  *
- * Returns false if all allocations were successful, true if any fail
+ * Returns false if all allocations were successful, true if any fail. Returning
+ * true signals to the caller that we didn't replace cleaned_count buffers and
+ * there is more work to do.
+ *
+ * First, try to clean "cleaned_count" Rx buffers. Then refill the cleaned Rx
+ * buffers. Then bump tail at most one time. Grouping like this lets us avoid
+ * multiple tail writes per call.
  */
 bool ice_alloc_rx_bufs(struct ice_ring *rx_ring, u16 cleaned_count)
 {
@@ -1253,8 +1269,8 @@ static int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
 	u16 cleaned_count = ICE_DESC_UNUSED(rx_ring);
 	unsigned int xdp_res, xdp_xmit = 0;
 	struct bpf_prog *xdp_prog;
-	bool failure = false;
 	struct xdp_buff xdp;
+	bool failure;
 
 	xdp.rxq = &rx_ring->xdp_rxq;
 
@@ -1268,12 +1284,6 @@ static int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
 		u16 vlan_tag = 0;
 		u8 rx_ptype;
 
-		/* return some buffers to hardware, one at a time is too slow */
-		if (cleaned_count >= ICE_RX_BUF_WRITE) {
-			failure = failure ||
-				  ice_alloc_rx_bufs(rx_ring, cleaned_count);
-			cleaned_count = 0;
-		}
 
 		/* get the Rx desc from Rx ring based on 'next_to_clean' */
 		rx_desc = ICE_RX_DESC(rx_ring, rx_ring->next_to_clean);
@@ -1385,6 +1395,9 @@ static int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
 		total_rx_pkts++;
 	}
 
+	/* return up to cleaned_count buffers to hardware */
+	failure = ice_alloc_rx_bufs(rx_ring, cleaned_count);
+
 	ice_finalize_xdp_rx(rx_ring, xdp_xmit);
 
 	/* update queue and vector specific stats */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
