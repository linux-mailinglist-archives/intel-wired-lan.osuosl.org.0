Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A50233E2828
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Aug 2021 12:09:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 35A7481AA7;
	Fri,  6 Aug 2021 10:09:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K7VGUYl2xG35; Fri,  6 Aug 2021 10:09:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EF72F81A65;
	Fri,  6 Aug 2021 10:09:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ACF131BF391
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 10:09:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9C65681A65
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 10:09:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z9JzfUKzZgei for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Aug 2021 10:09:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 75D1F81A47
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 10:09:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="214371347"
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="214371347"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2021 03:09:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="513338660"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by FMSMGA003.fm.intel.com with ESMTP; 06 Aug 2021 03:09:11 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  6 Aug 2021 11:55:37 +0200
Message-Id: <20210806095539.34423-5-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210806095539.34423-1-maciej.fijalkowski@intel.com>
References: <20210806095539.34423-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v4 intel-next 4/6] ice: propagate xdp_ring
 onto rx_ring
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

With rings being split, it is now convenient to introduce a pointer to
XDP ring within the Rx ring. For XDP_TX workloads this means that
xdp_rings array access will be skipped, which was executed per each
processed frame.

Also, read the XDP prog once per NAPI and if prog is present, set up the
local xdp_ring pointer. Reading prog a single time was discussed in [1]
with some concern raised by Toke around dispatcher handling and having
the need for going through the RCU grace period in the ndo_bpf driver
callback, but ice currently is torning down NAPI instances regardless of
the prog presence on VSI.

Although the pointer to XDP ring introduced to Rx ring makes things a
lot slimmer/simpler, I still feel that single prog read per NAPI
lifetime is beneficial.

Further patch that will introduce the fallback path will also get a
profit from that as xdp_ring pointer will be set during the XDP rings
setup.

[1]: https://lore.kernel.org/bpf/87k0oseo6e.fsf@toke.dk/

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c     |  3 +++
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 23 +++++++++--------
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  1 +
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  8 ++----
 drivers/net/ethernet/intel/ice/ice_txrx_lib.h |  2 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c      | 25 +++++++++++--------
 6 files changed, 34 insertions(+), 28 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 8a1603301726..9ae0e1e9867c 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2383,6 +2383,9 @@ static int ice_xdp_alloc_setup_rings(struct ice_vsi *vsi)
 		xdp_ring->xsk_pool = ice_tx_xsk_pool(xdp_ring);
 	}
 
+	ice_for_each_rxq(vsi, i)
+		vsi->rx_rings[i]->xdp_ring = vsi->xdp_rings[i];
+
 	return 0;
 
 free_xdp_rings:
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 3bb851481f3f..add773113e79 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -535,15 +535,15 @@ ice_rx_frame_truesize(struct ice_ring *rx_ring, unsigned int __maybe_unused size
  * @rx_ring: Rx ring
  * @xdp: xdp_buff used as input to the XDP program
  * @xdp_prog: XDP program to run
+ * @xdp_ring: ring to be used for XDP_TX action
  *
  * Returns any of ICE_XDP_{PASS, CONSUMED, TX, REDIR}
  */
 static int
 ice_run_xdp(struct ice_ring *rx_ring, struct xdp_buff *xdp,
-	    struct bpf_prog *xdp_prog)
+	    struct bpf_prog *xdp_prog, struct ice_tx_ring *xdp_ring)
 {
-	struct ice_tx_ring *xdp_ring;
-	int err, result;
+	int err;
 	u32 act;
 
 	act = bpf_prog_run_xdp(xdp_prog, xdp);
@@ -551,11 +551,10 @@ ice_run_xdp(struct ice_ring *rx_ring, struct xdp_buff *xdp,
 	case XDP_PASS:
 		return ICE_XDP_PASS;
 	case XDP_TX:
-		xdp_ring = rx_ring->vsi->xdp_rings[smp_processor_id()];
-		result = ice_xmit_xdp_ring(xdp->data, xdp->data_end - xdp->data, xdp_ring);
-		if (result == ICE_XDP_CONSUMED)
+		err = ice_xmit_xdp_ring(xdp->data, xdp->data_end - xdp->data, xdp_ring);
+		if (err == ICE_XDP_CONSUMED)
 			goto out_failure;
-		return result;
+		return err;
 	case XDP_REDIRECT:
 		err = xdp_do_redirect(rx_ring->netdev, xdp, xdp_prog);
 		if (err)
@@ -1081,6 +1080,7 @@ int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
 	unsigned int total_rx_bytes = 0, total_rx_pkts = 0, frame_sz = 0;
 	u16 cleaned_count = ICE_DESC_UNUSED(rx_ring);
 	unsigned int offset = rx_ring->rx_offset;
+	struct ice_tx_ring *xdp_ring = NULL;
 	unsigned int xdp_res, xdp_xmit = 0;
 	struct sk_buff *skb = rx_ring->skb;
 	struct bpf_prog *xdp_prog = NULL;
@@ -1093,6 +1093,10 @@ int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
 #endif
 	xdp_init_buff(&xdp, frame_sz, &rx_ring->xdp_rxq);
 
+	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
+	if (xdp_prog)
+		xdp_ring = rx_ring->xdp_ring;
+
 	/* start the loop to process Rx packets bounded by 'budget' */
 	while (likely(total_rx_pkts < (unsigned int)budget)) {
 		union ice_32b_rx_flex_desc *rx_desc;
@@ -1156,11 +1160,10 @@ int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
 		xdp.frame_sz = ice_rx_frame_truesize(rx_ring, size);
 #endif
 
-		xdp_prog = READ_ONCE(rx_ring->xdp_prog);
 		if (!xdp_prog)
 			goto construct_skb;
 
-		xdp_res = ice_run_xdp(rx_ring, &xdp, xdp_prog);
+		xdp_res = ice_run_xdp(rx_ring, &xdp, xdp_prog, xdp_ring);
 		if (!xdp_res)
 			goto construct_skb;
 		if (xdp_res & (ICE_XDP_TX | ICE_XDP_REDIR)) {
@@ -1237,7 +1240,7 @@ int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
 	failure = ice_alloc_rx_bufs(rx_ring, cleaned_count);
 
 	if (xdp_prog)
-		ice_finalize_xdp_rx(rx_ring, xdp_xmit);
+		ice_finalize_xdp_rx(xdp_ring, xdp_xmit);
 	rx_ring->skb = skb;
 
 	ice_update_rx_ring_stats(rx_ring, total_rx_pkts, total_rx_bytes);
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index d4ab3558933e..0e24052429e5 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -290,6 +290,7 @@ struct ice_ring {
 	struct rcu_head rcu;		/* to avoid race on free */
 	/* CL4 - 3rd cacheline starts here */
 	struct bpf_prog *xdp_prog;
+	struct ice_tx_ring *xdp_ring;
 	struct xsk_buff_pool *xsk_pool;
 	struct sk_buff *skb;
 	dma_addr_t dma;			/* physical address of ring */
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index 152703e202e2..68163dd3054c 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -288,15 +288,11 @@ int ice_xmit_xdp_buff(struct xdp_buff *xdp, struct ice_tx_ring *xdp_ring)
  * should be called when a batch of packets has been processed in the
  * napi loop.
  */
-void ice_finalize_xdp_rx(struct ice_ring *rx_ring, unsigned int xdp_res)
+void ice_finalize_xdp_rx(struct ice_tx_ring *xdp_ring, unsigned int xdp_res)
 {
 	if (xdp_res & ICE_XDP_REDIR)
 		xdp_do_flush_map();
 
-	if (xdp_res & ICE_XDP_TX) {
-		struct ice_tx_ring *xdp_ring =
-			rx_ring->vsi->xdp_rings[smp_processor_id()];
-
+	if (xdp_res & ICE_XDP_TX)
 		ice_xdp_ring_update_tail(xdp_ring);
-	}
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
index 6989070ae2e2..36295c2baac7 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
@@ -46,7 +46,7 @@ static inline void ice_xdp_ring_update_tail(struct ice_tx_ring *xdp_ring)
 	writel_relaxed(xdp_ring->next_to_use, xdp_ring->tail);
 }
 
-void ice_finalize_xdp_rx(struct ice_ring *xdp_ring, unsigned int xdp_res);
+void ice_finalize_xdp_rx(struct ice_tx_ring *xdp_ring, unsigned int xdp_res);
 int ice_xmit_xdp_buff(struct xdp_buff *xdp, struct ice_tx_ring *xdp_ring);
 int ice_xmit_xdp_ring(void *data, u16 size, struct ice_tx_ring *xdp_ring);
 void ice_release_rx_desc(struct ice_ring *rx_ring, u16 val);
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index bcf0f8e2ba6e..8d8b39cce2b8 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -458,22 +458,18 @@ ice_construct_skb_zc(struct ice_ring *rx_ring, struct ice_rx_buf *rx_buf)
  * ice_run_xdp_zc - Executes an XDP program in zero-copy path
  * @rx_ring: Rx ring
  * @xdp: xdp_buff used as input to the XDP program
+ * @xdp_prog: XDP program to run
+ * @xdp_ring: ring to be used for XDP_TX action
  *
  * Returns any of ICE_XDP_{PASS, CONSUMED, TX, REDIR}
  */
 static int
-ice_run_xdp_zc(struct ice_ring *rx_ring, struct xdp_buff *xdp)
+ice_run_xdp_zc(struct ice_ring *rx_ring, struct xdp_buff *xdp,
+	       struct bpf_prog *xdp_prog, struct ice_tx_ring *xdp_ring)
 {
 	int err, result = ICE_XDP_PASS;
-	struct ice_tx_ring *xdp_ring;
-	struct bpf_prog *xdp_prog;
 	u32 act;
 
-	/* ZC patch is enabled only when XDP program is set,
-	 * so here it can not be NULL
-	 */
-	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
-
 	act = bpf_prog_run_xdp(xdp_prog, xdp);
 
 	if (likely(act == XDP_REDIRECT)) {
@@ -487,7 +483,6 @@ ice_run_xdp_zc(struct ice_ring *rx_ring, struct xdp_buff *xdp)
 	case XDP_PASS:
 		break;
 	case XDP_TX:
-		xdp_ring = rx_ring->vsi->xdp_rings[rx_ring->q_index];
 		result = ice_xmit_xdp_buff(xdp, xdp_ring);
 		if (result == ICE_XDP_CONSUMED)
 			goto out_failure;
@@ -518,9 +513,17 @@ int ice_clean_rx_irq_zc(struct ice_ring *rx_ring, int budget)
 {
 	unsigned int total_rx_bytes = 0, total_rx_packets = 0;
 	u16 cleaned_count = ICE_DESC_UNUSED(rx_ring);
+	struct ice_tx_ring *xdp_ring;
 	unsigned int xdp_xmit = 0;
+	struct bpf_prog *xdp_prog;
 	bool failure = false;
 
+	/* ZC patch is enabled only when XDP program is set,
+	 * so here it can not be NULL
+	 */
+	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
+	xdp_ring = rx_ring->xdp_ring;
+
 	while (likely(total_rx_packets < (unsigned int)budget)) {
 		union ice_32b_rx_flex_desc *rx_desc;
 		unsigned int size, xdp_res = 0;
@@ -551,7 +554,7 @@ int ice_clean_rx_irq_zc(struct ice_ring *rx_ring, int budget)
 		rx_buf->xdp->data_end = rx_buf->xdp->data + size;
 		xsk_buff_dma_sync_for_cpu(rx_buf->xdp, rx_ring->xsk_pool);
 
-		xdp_res = ice_run_xdp_zc(rx_ring, rx_buf->xdp);
+		xdp_res = ice_run_xdp_zc(rx_ring, rx_buf->xdp, xdp_prog, xdp_ring);
 		if (xdp_res) {
 			if (xdp_res & (ICE_XDP_TX | ICE_XDP_REDIR))
 				xdp_xmit |= xdp_res;
@@ -599,7 +602,7 @@ int ice_clean_rx_irq_zc(struct ice_ring *rx_ring, int budget)
 	if (cleaned_count >= ICE_RX_BUF_WRITE)
 		failure = !ice_alloc_rx_bufs_zc(rx_ring, cleaned_count);
 
-	ice_finalize_xdp_rx(rx_ring, xdp_xmit);
+	ice_finalize_xdp_rx(xdp_ring, xdp_xmit);
 	ice_update_rx_ring_stats(rx_ring, total_rx_packets, total_rx_bytes);
 
 	if (xsk_uses_need_wakeup(rx_ring->xsk_pool)) {
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
