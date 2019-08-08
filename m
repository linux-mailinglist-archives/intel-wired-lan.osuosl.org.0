Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7BF86DA6
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Aug 2019 01:08:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 93E1B8831B;
	Thu,  8 Aug 2019 23:08:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id umQJTgWQaWxj; Thu,  8 Aug 2019 23:08:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0900A88338;
	Thu,  8 Aug 2019 23:08:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E1BFD1BF9B6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 23:08:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C524C8835D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 23:08:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uCA06gay4LMU for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2019 23:08:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 39AE088353
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 23:08:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 16:08:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,363,1559545200"; d="scan'208";a="169141837"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga008.jf.intel.com with ESMTP; 08 Aug 2019 16:08:16 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Aug 2019 07:39:35 -0700
Message-Id: <20190808143938.4968-12-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190808143938.4968-1-anthony.l.nguyen@intel.com>
References: <20190808143938.4968-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S27 12/15] ice: clean up arguments
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

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

There are a couple of functions that don't need two arguments
passed in when the second argument already had access to
the pointer pointed to by the first.

Remove the unnecessary arguments.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 43 +++++++++++------------
 1 file changed, 21 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 5bf5c179a738..4fe1b332e67e 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -95,17 +95,16 @@ void ice_free_tx_ring(struct ice_ring *tx_ring)
 
 /**
  * ice_clean_tx_irq - Reclaim resources after transmit completes
- * @vsi: the VSI we care about
  * @tx_ring: Tx ring to clean
  * @napi_budget: Used to determine if we are in netpoll
  *
  * Returns true if there's any budget left (e.g. the clean is finished)
  */
-static bool
-ice_clean_tx_irq(struct ice_vsi *vsi, struct ice_ring *tx_ring, int napi_budget)
+static bool ice_clean_tx_irq(struct ice_ring *tx_ring, int napi_budget)
 {
 	unsigned int total_bytes = 0, total_pkts = 0;
-	unsigned int budget = vsi->work_lmt;
+	unsigned int budget = ICE_DFLT_IRQ_WORK;
+	struct ice_vsi *vsi = tx_ring->vsi;
 	s16 i = tx_ring->next_to_clean;
 	struct ice_tx_desc *tx_desc;
 	struct ice_tx_buf *tx_buf;
@@ -114,6 +113,8 @@ ice_clean_tx_irq(struct ice_vsi *vsi, struct ice_ring *tx_ring, int napi_budget)
 	tx_desc = ICE_TX_DESC(tx_ring, i);
 	i -= tx_ring->count;
 
+	prefetch(&vsi->state);
+
 	do {
 		struct ice_tx_desc *eop_desc = tx_buf->next_to_watch;
 
@@ -206,7 +207,7 @@ ice_clean_tx_irq(struct ice_vsi *vsi, struct ice_ring *tx_ring, int napi_budget)
 		smp_mb();
 		if (__netif_subqueue_stopped(tx_ring->netdev,
 					     tx_ring->q_index) &&
-		   !test_bit(__ICE_DOWN, vsi->state)) {
+		    !test_bit(__ICE_DOWN, vsi->state)) {
 			netif_wake_subqueue(tx_ring->netdev,
 					    tx_ring->q_index);
 			++tx_ring->tx_stats.restart_q;
@@ -879,7 +880,7 @@ ice_rx_hash(struct ice_ring *rx_ring, union ice_32b_rx_flex_desc *rx_desc,
 
 /**
  * ice_rx_csum - Indicate in skb if checksum is good
- * @vsi: the VSI we care about
+ * @ring: the ring we care about
  * @skb: skb currently being received and modified
  * @rx_desc: the receive descriptor
  * @ptype: the packet type decoded by hardware
@@ -887,7 +888,7 @@ ice_rx_hash(struct ice_ring *rx_ring, union ice_32b_rx_flex_desc *rx_desc,
  * skb->protocol must be set before this function is called
  */
 static void
-ice_rx_csum(struct ice_vsi *vsi, struct sk_buff *skb,
+ice_rx_csum(struct ice_ring *ring, struct sk_buff *skb,
 	    union ice_32b_rx_flex_desc *rx_desc, u8 ptype)
 {
 	struct ice_rx_ptype_decoded decoded;
@@ -904,7 +905,7 @@ ice_rx_csum(struct ice_vsi *vsi, struct sk_buff *skb,
 	skb_checksum_none_assert(skb);
 
 	/* check if Rx checksum is enabled */
-	if (!(vsi->netdev->features & NETIF_F_RXCSUM))
+	if (!(ring->netdev->features & NETIF_F_RXCSUM))
 		return;
 
 	/* check if HW has decoded the packet and checksum */
@@ -944,7 +945,7 @@ ice_rx_csum(struct ice_vsi *vsi, struct sk_buff *skb,
 	return;
 
 checksum_fail:
-	vsi->back->hw_csum_rx_error++;
+	ring->vsi->back->hw_csum_rx_error++;
 }
 
 /**
@@ -968,7 +969,7 @@ ice_process_skb_fields(struct ice_ring *rx_ring,
 	/* modifies the skb - consumes the enet header */
 	skb->protocol = eth_type_trans(skb, rx_ring->netdev);
 
-	ice_rx_csum(rx_ring->vsi, skb, rx_desc, ptype);
+	ice_rx_csum(rx_ring, skb, rx_desc, ptype);
 }
 
 /**
@@ -1354,14 +1355,13 @@ static u32 ice_buildreg_itr(u16 itr_idx, u16 itr)
 
 /**
  * ice_update_ena_itr - Update ITR and re-enable MSIX interrupt
- * @vsi: the VSI associated with the q_vector
  * @q_vector: q_vector for which ITR is being updated and interrupt enabled
  */
-static void
-ice_update_ena_itr(struct ice_vsi *vsi, struct ice_q_vector *q_vector)
+static void ice_update_ena_itr(struct ice_q_vector *q_vector)
 {
 	struct ice_ring_container *tx = &q_vector->tx;
 	struct ice_ring_container *rx = &q_vector->rx;
+	struct ice_vsi *vsi = q_vector->vsi;
 	u32 itr_val;
 
 	/* when exiting WB_ON_ITR lets set a low ITR value and trigger
@@ -1419,15 +1419,14 @@ ice_update_ena_itr(struct ice_vsi *vsi, struct ice_q_vector *q_vector)
 			q_vector->itr_countdown--;
 	}
 
-	if (!test_bit(__ICE_DOWN, vsi->state))
-		wr32(&vsi->back->hw,
+	if (!test_bit(__ICE_DOWN, q_vector->vsi->state))
+		wr32(&q_vector->vsi->back->hw,
 		     GLINT_DYN_CTL(q_vector->reg_idx),
 		     itr_val);
 }
 
 /**
  * ice_set_wb_on_itr - set WB_ON_ITR for this q_vector
- * @vsi: pointer to the VSI structure
  * @q_vector: q_vector to set WB_ON_ITR on
  *
  * We need to tell hardware to write-back completed descriptors even when
@@ -1440,9 +1439,10 @@ ice_update_ena_itr(struct ice_vsi *vsi, struct ice_q_vector *q_vector)
  * value that's not 0 due to ITR granularity. Also, set the INTENA_MSK bit to
  * make sure hardware knows we aren't meddling with the INTENA_M bit.
  */
-static void
-ice_set_wb_on_itr(struct ice_vsi *vsi, struct ice_q_vector *q_vector)
+static void ice_set_wb_on_itr(struct ice_q_vector *q_vector)
 {
+	struct ice_vsi *vsi = q_vector->vsi;
+
 	/* already in WB_ON_ITR mode no need to change it */
 	if (q_vector->itr_countdown == ICE_IN_WB_ON_ITR_MODE)
 		return;
@@ -1473,7 +1473,6 @@ int ice_napi_poll(struct napi_struct *napi, int budget)
 {
 	struct ice_q_vector *q_vector =
 				container_of(napi, struct ice_q_vector, napi);
-	struct ice_vsi *vsi = q_vector->vsi;
 	bool clean_complete = true;
 	struct ice_ring *ring;
 	int budget_per_ring;
@@ -1483,7 +1482,7 @@ int ice_napi_poll(struct napi_struct *napi, int budget)
 	 * budget and be more aggressive about cleaning up the Tx descriptors.
 	 */
 	ice_for_each_ring(ring, q_vector->tx)
-		if (!ice_clean_tx_irq(vsi, ring, budget))
+		if (!ice_clean_tx_irq(ring, budget))
 			clean_complete = false;
 
 	/* Handle case where we are called by netpoll with a budget of 0 */
@@ -1519,9 +1518,9 @@ int ice_napi_poll(struct napi_struct *napi, int budget)
 	 * poll us due to busy-polling
 	 */
 	if (likely(napi_complete_done(napi, work_done)))
-		ice_update_ena_itr(vsi, q_vector);
+		ice_update_ena_itr(q_vector);
 	else
-		ice_set_wb_on_itr(vsi, q_vector);
+		ice_set_wb_on_itr(q_vector);
 
 	return min_t(int, work_done, budget - 1);
 }
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
