Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DAD23F1900
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Aug 2021 14:15:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B0F580D6B;
	Thu, 19 Aug 2021 12:15:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y6a6JNMnDyKW; Thu, 19 Aug 2021 12:15:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6DCBF80E04;
	Thu, 19 Aug 2021 12:15:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 17CC61BF280
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 12:15:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 06CCF606EF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 12:15:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EC1mx0c0ah6L for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Aug 2021 12:15:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1474F606C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 12:15:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="277561010"
X-IronPort-AV: E=Sophos;i="5.84,334,1620716400"; d="scan'208";a="277561010"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 05:15:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,334,1620716400"; d="scan'208";a="532195188"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga002.fm.intel.com with ESMTP; 19 Aug 2021 05:15:32 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 19 Aug 2021 14:00:02 +0200
Message-Id: <20210819120004.34392-8-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210819120004.34392-1-maciej.fijalkowski@intel.com>
References: <20210819120004.34392-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v7 intel-next 7/9] ice: optimize XDP_TX
 workloads
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
Cc: joamaki@gmail.com, alexandr.lobakin@intel.com, netdev@vger.kernel.org,
 toke@redhat.com, bjorn@kernel.org, kuba@kernel.org, bpf@vger.kernel.org,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Optimize Tx descriptor cleaning for XDP. Current approach doesn't
really scale and chokes when multiple flows are handled.

Introduce two ring fields, @next_dd and @next_rs that will keep track of
descriptor that should be looked at when the need for cleaning arise and
the descriptor that should have the RS bit set, respectively.

Note that at this point the threshold is a constant (32), but it is
something that we could make configurable.

First thing is to get away from setting RS bit on each descriptor. Let's
do this only once NTU is higher than the currently @next_rs value. In
such case, grab the tx_desc[next_rs], set the RS bit in descriptor and
advance the @next_rs by a 32.

Second thing is to clean the Tx ring only when there are less than 32
free entries. For that case, look up the tx_desc[next_dd] for a DD bit.
This bit is written back by HW to let the driver know that xmit was
successful. It will happen only for those descriptors that had RS bit
set. Clean only 32 descriptors and advance the DD bit.

Actual cleaning routine is moved from ice_napi_poll() down to the
ice_xmit_xdp_ring(). It is safe to do so as XDP ring will not get any
SKBs in there that would rely on interrupts for the cleaning. Nice side
effect is that for rare case of Tx fallback path (that next patch is
going to introduce) we don't have to trigger the SW irq to clean the
ring.

With those two concepts, ring is kept at being almost full, but it is
guaranteed that driver will be able to produce Tx descriptors.

This approach seems to work out well even though the Tx descriptors are
produced in one-by-one manner. Test was conducted with the ice HW
bombarded with packets from HW generator, configured to generate 30
flows.

Xdp2 sample yields the following results:
<snip>
proto 17:   79973066 pkt/s
proto 17:   80018911 pkt/s
proto 17:   80004654 pkt/s
proto 17:   79992395 pkt/s
proto 17:   79975162 pkt/s
proto 17:   79955054 pkt/s
proto 17:   79869168 pkt/s
proto 17:   79823947 pkt/s
proto 17:   79636971 pkt/s
</snip>

As that sample reports the Rx'ed frames, let's look at sar output.
It says that what we Rx'ed we do actually Tx, no noticeable drops.
Average:        IFACE   rxpck/s   txpck/s    rxkB/s    txkB/s   rxcmp/s txcmp/s  rxmcst/s   %ifutil
Average:       ens4f1 79842324.00 79842310.40 4678261.17 4678260.38 0.00      0.00      0.00     38.32

with tx_busy staying calm.

When compared to a state before:
Average:        IFACE   rxpck/s   txpck/s    rxkB/s    txkB/s   rxcmp/s txcmp/s  rxmcst/s   %ifutil
Average:       ens4f1 90919711.60 42233822.60 5327326.85 2474638.04 0.00      0.00      0.00     43.64

it can be observed that the amount of txpck/s is almost doubled, meaning
that the performance is improved by around 90%. All of this due to the
drops in the driver, previously the tx_busy stat was bumped at a 7mpps
rate.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c     |  9 ++-
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 21 +++---
 drivers/net/ethernet/intel/ice/ice_txrx.h     | 10 ++-
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 73 ++++++++++++++++---
 4 files changed, 88 insertions(+), 25 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index de6305a8ec4f..7267b8159b99 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2428,7 +2428,8 @@ static int ice_vsi_req_irq_msix(struct ice_vsi *vsi, char *basename)
 static int ice_xdp_alloc_setup_rings(struct ice_vsi *vsi)
 {
 	struct device *dev = ice_pf_to_dev(vsi->back);
-	int i;
+	struct ice_tx_desc *tx_desc;
+	int i, j;
 
 	for (i = 0; i < vsi->num_xdp_txq; i++) {
 		u16 xdp_q_idx = vsi->alloc_txq + i;
@@ -2443,6 +2444,8 @@ static int ice_xdp_alloc_setup_rings(struct ice_vsi *vsi)
 		xdp_ring->reg_idx = vsi->txq_map[xdp_q_idx];
 		xdp_ring->vsi = vsi;
 		xdp_ring->netdev = NULL;
+		xdp_ring->next_dd = ICE_TX_THRESH - 1;
+		xdp_ring->next_rs = ICE_TX_THRESH - 1;
 		xdp_ring->dev = dev;
 		xdp_ring->count = vsi->num_tx_desc;
 		WRITE_ONCE(vsi->xdp_rings[i], xdp_ring);
@@ -2450,6 +2453,10 @@ static int ice_xdp_alloc_setup_rings(struct ice_vsi *vsi)
 			goto free_xdp_rings;
 		ice_set_ring_xdp(xdp_ring);
 		xdp_ring->xsk_pool = ice_tx_xsk_pool(xdp_ring);
+		for (j = 0; j < xdp_ring->count; j++) {
+			tx_desc = ICE_TX_DESC(xdp_ring, j);
+			tx_desc->cmd_type_offset_bsz = cpu_to_le64(ICE_TX_DESC_DTYPE_DESC_DONE);
+		}
 	}
 
 	ice_for_each_rxq(vsi, i)
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index b4aaed34f10a..927517e18ce3 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -247,11 +247,8 @@ static bool ice_clean_tx_irq(struct ice_tx_ring *tx_ring, int napi_budget)
 		total_bytes += tx_buf->bytecount;
 		total_pkts += tx_buf->gso_segs;
 
-		if (ice_ring_is_xdp(tx_ring))
-			page_frag_free(tx_buf->raw_buf);
-		else
-			/* free the skb */
-			napi_consume_skb(tx_buf->skb, napi_budget);
+		/* free the skb */
+		napi_consume_skb(tx_buf->skb, napi_budget);
 
 		/* unmap skb header data */
 		dma_unmap_single(tx_ring->dev,
@@ -307,9 +304,6 @@ static bool ice_clean_tx_irq(struct ice_tx_ring *tx_ring, int napi_budget)
 
 	ice_update_tx_ring_stats(tx_ring, total_pkts, total_bytes);
 
-	if (ice_ring_is_xdp(tx_ring))
-		return !!budget;
-
 	netdev_tx_completed_queue(txring_txq(tx_ring), total_pkts,
 				  total_bytes);
 
@@ -1418,9 +1412,14 @@ int ice_napi_poll(struct napi_struct *napi, int budget)
 	 * budget and be more aggressive about cleaning up the Tx descriptors.
 	 */
 	ice_for_each_tx_ring(tx_ring, q_vector->tx) {
-		bool wd = tx_ring->xsk_pool ?
-			  ice_clean_tx_irq_zc(tx_ring, budget) :
-			  ice_clean_tx_irq(tx_ring, budget);
+		bool wd;
+
+		if (tx_ring->xsk_pool)
+			wd = ice_clean_tx_irq_zc(tx_ring, budget);
+		else if (ice_ring_is_xdp(tx_ring))
+			wd = true;
+		else
+			wd = ice_clean_tx_irq(tx_ring, budget);
 
 		if (!wd)
 			clean_complete = false;
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index 4b0338a2cfdc..ff34ea80abe5 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -13,6 +13,7 @@
 #define ICE_MAX_CHAINED_RX_BUFS	5
 #define ICE_MAX_BUF_TXD		8
 #define ICE_MIN_TX_LEN		17
+#define ICE_TX_THRESH		32
 
 /* The size limit for a transmit buffer in a descriptor is (16K - 1).
  * In order to align with the read requests we will align the value to
@@ -313,12 +314,15 @@ struct ice_tx_ring {
 	struct ice_vsi *vsi;		/* Backreference to associated VSI */
 	/* CL2 - 2nd cacheline starts here */
 	dma_addr_t dma;			/* physical address of ring */
+	struct xsk_buff_pool *xsk_pool;
 	u16 next_to_use;
 	u16 next_to_clean;
+	u16 next_rs;
+	u16 next_dd;
+	u16 q_handle;			/* Queue handle per TC */
+	u16 reg_idx;			/* HW register index of the ring */
 	u16 count;			/* Number of descriptors */
 	u16 q_index;			/* Queue number of ring */
-	struct xsk_buff_pool *xsk_pool;
-
 	/* stats structs */
 	struct ice_q_stats	stats;
 	struct u64_stats_sync syncp;
@@ -329,8 +333,6 @@ struct ice_tx_ring {
 	DECLARE_BITMAP(xps_state, ICE_TX_NBITS);	/* XPS Config State */
 	struct ice_ptp_tx *tx_tstamps;
 	u32 txq_teid;			/* Added Tx queue TEID */
-	u16 q_handle;			/* Queue handle per TC */
-	u16 reg_idx;			/* HW register index of the ring */
 #define ICE_TX_FLAGS_RING_XDP		BIT(0)
 	u8 flags;
 	u8 dcb_tc;			/* Traffic class of ring */
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index 5c2319e0c66d..d55db9cedc9b 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -3,6 +3,7 @@
 
 #include "ice_txrx_lib.h"
 #include "ice_eswitch.h"
+#include "ice_lib.h"
 
 /**
  * ice_release_rx_desc - Store the new tail and head values
@@ -213,6 +214,52 @@ ice_receive_skb(struct ice_rx_ring *rx_ring, struct sk_buff *skb, u16 vlan_tag)
 	napi_gro_receive(&rx_ring->q_vector->napi, skb);
 }
 
+/**
+ * ice_clean_xdp_irq - Reclaim resources after transmit completes on XDP ring
+ * @xdp_ring: XDP ring to clean
+ */
+static void ice_clean_xdp_irq(struct ice_tx_ring *xdp_ring)
+{
+	unsigned int total_bytes = 0, total_pkts = 0;
+	u16 ntc = xdp_ring->next_to_clean;
+	struct ice_tx_desc *next_dd_desc;
+	u16 next_dd = xdp_ring->next_dd;
+	struct ice_tx_buf *tx_buf;
+	int i;
+
+	next_dd_desc = ICE_TX_DESC(xdp_ring, next_dd);
+	if (!(next_dd_desc->cmd_type_offset_bsz &
+	    cpu_to_le64(ICE_TX_DESC_DTYPE_DESC_DONE)))
+		return;
+
+	for (i = 0; i < ICE_TX_THRESH; i++) {
+		tx_buf = &xdp_ring->tx_buf[ntc];
+
+		total_bytes += tx_buf->bytecount;
+		/* normally tx_buf->gso_segs was taken but at this point
+		 * it's always 1 for us
+		 */
+		total_pkts++;
+
+		page_frag_free(tx_buf->raw_buf);
+		dma_unmap_single(xdp_ring->dev, dma_unmap_addr(tx_buf, dma),
+				 dma_unmap_len(tx_buf, len), DMA_TO_DEVICE);
+		dma_unmap_len_set(tx_buf, len, 0);
+		tx_buf->raw_buf = NULL;
+
+		ntc++;
+		if (ntc >= xdp_ring->count)
+			ntc = 0;
+	}
+
+	next_dd_desc->cmd_type_offset_bsz = 0;
+	xdp_ring->next_dd = xdp_ring->next_dd + ICE_TX_THRESH;
+	if (xdp_ring->next_dd > xdp_ring->count)
+		xdp_ring->next_dd = ICE_TX_THRESH - 1;
+	xdp_ring->next_to_clean = ntc;
+	ice_update_tx_ring_stats(xdp_ring, total_pkts, total_bytes);
+}
+
 /**
  * ice_xmit_xdp_ring - submit single packet to XDP ring for transmission
  * @data: packet data pointer
@@ -226,6 +273,9 @@ int ice_xmit_xdp_ring(void *data, u16 size, struct ice_tx_ring *xdp_ring)
 	struct ice_tx_buf *tx_buf;
 	dma_addr_t dma;
 
+	if (ICE_DESC_UNUSED(xdp_ring) < ICE_TX_THRESH)
+		ice_clean_xdp_irq(xdp_ring);
+
 	if (!unlikely(ICE_DESC_UNUSED(xdp_ring))) {
 		xdp_ring->tx_stats.tx_busy++;
 		return ICE_XDP_CONSUMED;
@@ -246,21 +296,26 @@ int ice_xmit_xdp_ring(void *data, u16 size, struct ice_tx_ring *xdp_ring)
 
 	tx_desc = ICE_TX_DESC(xdp_ring, i);
 	tx_desc->buf_addr = cpu_to_le64(dma);
-	tx_desc->cmd_type_offset_bsz = ice_build_ctob(ICE_TXD_LAST_DESC_CMD, 0,
+	tx_desc->cmd_type_offset_bsz = ice_build_ctob(ICE_TX_DESC_CMD_EOP, 0,
 						      size, 0);
 
-	/* Make certain all of the status bits have been updated
-	 * before next_to_watch is written.
-	 */
-	smp_wmb();
-
 	i++;
-	if (i == xdp_ring->count)
+	if (i == xdp_ring->count) {
 		i = 0;
-
-	tx_buf->next_to_watch = tx_desc;
+		tx_desc = ICE_TX_DESC(xdp_ring, xdp_ring->next_rs);
+		tx_desc->cmd_type_offset_bsz |=
+			cpu_to_le64(ICE_TX_DESC_CMD_RS << ICE_TXD_QW1_CMD_S);
+		xdp_ring->next_rs = ICE_TX_THRESH - 1;
+	}
 	xdp_ring->next_to_use = i;
 
+	if (i > xdp_ring->next_rs) {
+		tx_desc = ICE_TX_DESC(xdp_ring, xdp_ring->next_rs);
+		tx_desc->cmd_type_offset_bsz |=
+			cpu_to_le64(ICE_TX_DESC_CMD_RS << ICE_TXD_QW1_CMD_S);
+		xdp_ring->next_rs += ICE_TX_THRESH;
+	}
+
 	return ICE_XDP_TX;
 }
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
