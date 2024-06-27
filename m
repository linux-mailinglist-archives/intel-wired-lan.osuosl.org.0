Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A80F91A7B5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jun 2024 15:19:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B30C160E49;
	Thu, 27 Jun 2024 13:19:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AOMz2L8BoTlz; Thu, 27 Jun 2024 13:19:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C616560E41
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719494342;
	bh=dWpLSLpc5x4XqLlYpU1p+4BjT7Nr144VShpCbJqlz50=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RelHyRjkNKChr8HxhhDemNoYe7s6ZJzYczgBwn4UPukt0siBO8Ohjij7Q9i0hZoWI
	 1mXFpjn/r1rHhqPfDQMcJpZW+4GO/9LAS5YvoXi5MuAkNQL0wWn7cPfzQCBSZqI8Fo
	 HoRYYno2a5E7CeAeZ3uuEIvwItSCgj5a1FZP/KsMCDxrTtxis94VsHRAuYYmlIA+oi
	 iWDr86x6I2Y1DYq1zsibjAKLbTFlS2HMYXq29HiSA5QLXeNAIA0NvDrdeGRLqLn/pl
	 /EAVZrB1DsJ0SBFSIL/gj/PADannQwV1C8x/1kswuvG5OwNYrdPby9WdzVkEb/VbHg
	 c4sKxNmLwhxgg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C616560E41;
	Thu, 27 Jun 2024 13:19:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0C2C11BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 13:19:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0508F40D0B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 13:19:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q2LrW0YX2PKB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jun 2024 13:18:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 36928402B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 36928402B0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 36928402B0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 13:18:59 +0000 (UTC)
X-CSE-ConnectionGUID: BKYcf/56QwKTkALxm4Iwag==
X-CSE-MsgGUID: jR616LYNRpChFIEUwyFt5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="16452365"
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="16452365"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 06:19:00 -0700
X-CSE-ConnectionGUID: s92zurZOQtqXXugI/EPYKA==
X-CSE-MsgGUID: GfkAnvsiQXqBKA6U38VPLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="49315427"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa003.jf.intel.com with ESMTP; 27 Jun 2024 06:18:56 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jun 2024 15:17:55 +0200
Message-Id: <20240627131757.144991-7-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240627131757.144991-1-maciej.fijalkowski@intel.com>
References: <20240627131757.144991-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719494340; x=1751030340;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U7/pH5mhianofyo2osbcwP2LHTykhC437pXAPKmDbYU=;
 b=ae3ItMl9J5r8egp+GoRbrKszGha6IbAcNhQIgFt5XORDxTqfHckvgpNf
 Dem3Fd/Z426b5IqQau2ugjzl5OZ/Reydx9btrco7WPw6Ag7RAPs6JNhTO
 +zAqc1A+eWrpo7Yy/RPQWGtiLsVLl/72U9uVBz4AECsQUyJfu1ohr1lFr
 4QLZrIYOy7Sz18sue9BXVxnhA0WYMIYFqvTx1Zw6WlcU0ix1AWFkfFDKg
 ULnO907/gNqtubXyy8rRqvi23ECgnAWmZsUJfygULtUwDxl4EjgsTMzLn
 gAJDIxdx5cokFSUeFEBayaRhZw2+L+YfScF5qdiiqZDXGSxsVPwsM2L8T
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ae3ItMl9
Subject: [Intel-wired-lan] [PATCH v4 iwl-net 6/8] ice: improve updating
 ice_{t, r}x_ring::xsk_pool
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, larysa.zaremba@intel.com,
 netdev@vger.kernel.org, aleksander.lobakin@intel.com, michal.kubiak@intel.com,
 anthony.l.nguyen@intel.com, jacob.e.keller@intel.com,
 Chandan Kumar Rout <chandanx.rout@intel.com>, magnus.karlsson@intel.com,
 Shannon Nelson <shannon.nelson@amd.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

xsk_buff_pool pointers that ice ring structs hold are updated via
ndo_bpf that is executed in process context while it can be read by
remote CPU at the same time within NAPI poll. Use synchronize_net()
after pointer update and {READ,WRITE}_ONCE() when working with mentioned
pointer.

Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Reviewed-by: Shannon Nelson <shannon.nelson@amd.com>
Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worker at Intel)
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      | 11 ++--
 drivers/net/ethernet/intel/ice/ice_base.c |  4 +-
 drivers/net/ethernet/intel/ice/ice_main.c |  2 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c |  4 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c  | 78 ++++++++++++++---------
 drivers/net/ethernet/intel/ice/ice_xsk.h  |  4 +-
 6 files changed, 61 insertions(+), 42 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 99a75a59078e..caaa10157909 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -765,18 +765,17 @@ static inline struct xsk_buff_pool *ice_get_xp_from_qid(struct ice_vsi *vsi,
 }
 
 /**
- * ice_xsk_pool - get XSK buffer pool bound to a ring
+ * ice_rx_xsk_pool - assign XSK buff pool to Rx ring
  * @ring: Rx ring to use
  *
- * Returns a pointer to xsk_buff_pool structure if there is a buffer pool
- * present, NULL otherwise.
+ * Sets XSK buff pool pointer on Rx ring.
  */
-static inline struct xsk_buff_pool *ice_xsk_pool(struct ice_rx_ring *ring)
+static inline void ice_rx_xsk_pool(struct ice_rx_ring *ring)
 {
 	struct ice_vsi *vsi = ring->vsi;
 	u16 qid = ring->q_index;
 
-	return ice_get_xp_from_qid(vsi, qid);
+	WRITE_ONCE(ring->xsk_pool, ice_get_xp_from_qid(vsi, qid));
 }
 
 /**
@@ -801,7 +800,7 @@ static inline void ice_tx_xsk_pool(struct ice_vsi *vsi, u16 qid)
 	if (!ring)
 		return;
 
-	ring->xsk_pool = ice_get_xp_from_qid(vsi, qid);
+	WRITE_ONCE(ring->xsk_pool, ice_get_xp_from_qid(vsi, qid));
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 5d396c1a7731..1facf179a96f 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -536,7 +536,7 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
 				return err;
 		}
 
-		ring->xsk_pool = ice_xsk_pool(ring);
+		ice_rx_xsk_pool(ring);
 		if (ring->xsk_pool) {
 			xdp_rxq_info_unreg(&ring->xdp_rxq);
 
@@ -597,7 +597,7 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
 			return 0;
 		}
 
-		ok = ice_alloc_rx_bufs_zc(ring, num_bufs);
+		ok = ice_alloc_rx_bufs_zc(ring, ring->xsk_pool, num_bufs);
 		if (!ok) {
 			u16 pf_q = ring->vsi->rxq_map[ring->q_index];
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 55a42aad92a5..9b075dd48889 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2949,7 +2949,7 @@ static void ice_vsi_rx_napi_schedule(struct ice_vsi *vsi)
 	ice_for_each_rxq(vsi, i) {
 		struct ice_rx_ring *rx_ring = vsi->rx_rings[i];
 
-		if (rx_ring->xsk_pool)
+		if (READ_ONCE(rx_ring->xsk_pool))
 			napi_schedule(&rx_ring->q_vector->napi);
 	}
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 8bb743f78fcb..f4b2b1bca234 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1523,7 +1523,7 @@ int ice_napi_poll(struct napi_struct *napi, int budget)
 	ice_for_each_tx_ring(tx_ring, q_vector->tx) {
 		bool wd;
 
-		if (tx_ring->xsk_pool)
+		if (READ_ONCE(tx_ring->xsk_pool))
 			wd = ice_xmit_zc(tx_ring);
 		else if (ice_ring_is_xdp(tx_ring))
 			wd = true;
@@ -1556,7 +1556,7 @@ int ice_napi_poll(struct napi_struct *napi, int budget)
 		 * comparison in the irq context instead of many inside the
 		 * ice_clean_rx_irq function and makes the codebase cleaner.
 		 */
-		cleaned = rx_ring->xsk_pool ?
+		cleaned = READ_ONCE(rx_ring->xsk_pool) ?
 			  ice_clean_rx_irq_zc(rx_ring, budget_per_ring) :
 			  ice_clean_rx_irq(rx_ring, budget_per_ring);
 		work_done += cleaned;
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 3fbe4cfadfbf..b4058c4937bc 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -250,6 +250,8 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
 	ice_qvec_toggle_napi(vsi, q_vector, true);
 	ice_qvec_ena_irq(vsi, q_vector);
 
+	/* make sure NAPI sees updated ice_{t,x}_ring::xsk_pool */
+	synchronize_net();
 	ice_get_link_status(vsi->port_info, &link_up);
 	if (link_up) {
 		netif_tx_start_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
@@ -464,6 +466,7 @@ static u16 ice_fill_rx_descs(struct xsk_buff_pool *pool, struct xdp_buff **xdp,
 /**
  * __ice_alloc_rx_bufs_zc - allocate a number of Rx buffers
  * @rx_ring: Rx ring
+ * @xsk_pool: XSK buffer pool to pick buffers to be filled by HW
  * @count: The number of buffers to allocate
  *
  * Place the @count of descriptors onto Rx ring. Handle the ring wrap
@@ -472,7 +475,8 @@ static u16 ice_fill_rx_descs(struct xsk_buff_pool *pool, struct xdp_buff **xdp,
  *
  * Returns true if all allocations were successful, false if any fail.
  */
-static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
+static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring,
+				   struct xsk_buff_pool *xsk_pool, u16 count)
 {
 	u32 nb_buffs_extra = 0, nb_buffs = 0;
 	union ice_32b_rx_flex_desc *rx_desc;
@@ -484,8 +488,7 @@ static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
 	xdp = ice_xdp_buf(rx_ring, ntu);
 
 	if (ntu + count >= rx_ring->count) {
-		nb_buffs_extra = ice_fill_rx_descs(rx_ring->xsk_pool, xdp,
-						   rx_desc,
+		nb_buffs_extra = ice_fill_rx_descs(xsk_pool, xdp, rx_desc,
 						   rx_ring->count - ntu);
 		if (nb_buffs_extra != rx_ring->count - ntu) {
 			ntu += nb_buffs_extra;
@@ -498,7 +501,7 @@ static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
 		ice_release_rx_desc(rx_ring, 0);
 	}
 
-	nb_buffs = ice_fill_rx_descs(rx_ring->xsk_pool, xdp, rx_desc, count);
+	nb_buffs = ice_fill_rx_descs(xsk_pool, xdp, rx_desc, count);
 
 	ntu += nb_buffs;
 	if (ntu == rx_ring->count)
@@ -514,6 +517,7 @@ static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
 /**
  * ice_alloc_rx_bufs_zc - allocate a number of Rx buffers
  * @rx_ring: Rx ring
+ * @xsk_pool: XSK buffer pool to pick buffers to be filled by HW
  * @count: The number of buffers to allocate
  *
  * Wrapper for internal allocation routine; figure out how many tail
@@ -521,7 +525,8 @@ static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
  *
  * Returns true if all calls to internal alloc routine succeeded
  */
-bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
+bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring,
+			  struct xsk_buff_pool *xsk_pool, u16 count)
 {
 	u16 rx_thresh = ICE_RING_QUARTER(rx_ring);
 	u16 leftover, i, tail_bumps;
@@ -530,9 +535,9 @@ bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
 	leftover = count - (tail_bumps * rx_thresh);
 
 	for (i = 0; i < tail_bumps; i++)
-		if (!__ice_alloc_rx_bufs_zc(rx_ring, rx_thresh))
+		if (!__ice_alloc_rx_bufs_zc(rx_ring, xsk_pool, rx_thresh))
 			return false;
-	return __ice_alloc_rx_bufs_zc(rx_ring, leftover);
+	return __ice_alloc_rx_bufs_zc(rx_ring, xsk_pool, leftover);
 }
 
 /**
@@ -653,7 +658,7 @@ static u32 ice_clean_xdp_irq_zc(struct ice_tx_ring *xdp_ring)
 	if (xdp_ring->next_to_clean >= cnt)
 		xdp_ring->next_to_clean -= cnt;
 	if (xsk_frames)
-		xsk_tx_completed(xdp_ring->xsk_pool, xsk_frames);
+		xsk_tx_completed(READ_ONCE(xdp_ring->xsk_pool), xsk_frames);
 
 	return completed_frames;
 }
@@ -705,7 +710,8 @@ static int ice_xmit_xdp_tx_zc(struct xdp_buff *xdp,
 		dma_addr_t dma;
 
 		dma = xsk_buff_xdp_get_dma(xdp);
-		xsk_buff_raw_dma_sync_for_device(xdp_ring->xsk_pool, dma, size);
+		xsk_buff_raw_dma_sync_for_device(READ_ONCE(xdp_ring->xsk_pool),
+						 dma, size);
 
 		tx_buf->xdp = xdp;
 		tx_buf->type = ICE_TX_BUF_XSK_TX;
@@ -763,7 +769,8 @@ ice_run_xdp_zc(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
 		err = xdp_do_redirect(rx_ring->netdev, xdp, xdp_prog);
 		if (!err)
 			return ICE_XDP_REDIR;
-		if (xsk_uses_need_wakeup(rx_ring->xsk_pool) && err == -ENOBUFS)
+		if (xsk_uses_need_wakeup(READ_ONCE(rx_ring->xsk_pool)) &&
+		    err == -ENOBUFS)
 			result = ICE_XDP_EXIT;
 		else
 			result = ICE_XDP_CONSUMED;
@@ -832,8 +839,8 @@ ice_add_xsk_frag(struct ice_rx_ring *rx_ring, struct xdp_buff *first,
  */
 int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
 {
+	struct xsk_buff_pool *xsk_pool = READ_ONCE(rx_ring->xsk_pool);
 	unsigned int total_rx_bytes = 0, total_rx_packets = 0;
-	struct xsk_buff_pool *xsk_pool = rx_ring->xsk_pool;
 	u32 ntc = rx_ring->next_to_clean;
 	u32 ntu = rx_ring->next_to_use;
 	struct xdp_buff *first = NULL;
@@ -945,7 +952,8 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
 	rx_ring->next_to_clean = ntc;
 	entries_to_alloc = ICE_RX_DESC_UNUSED(rx_ring);
 	if (entries_to_alloc > ICE_RING_QUARTER(rx_ring))
-		failure |= !ice_alloc_rx_bufs_zc(rx_ring, entries_to_alloc);
+		failure |= !ice_alloc_rx_bufs_zc(rx_ring, xsk_pool,
+						 entries_to_alloc);
 
 	ice_finalize_xdp_rx(xdp_ring, xdp_xmit, 0);
 	ice_update_rx_ring_stats(rx_ring, total_rx_packets, total_rx_bytes);
@@ -968,17 +976,19 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
 /**
  * ice_xmit_pkt - produce a single HW Tx descriptor out of AF_XDP descriptor
  * @xdp_ring: XDP ring to produce the HW Tx descriptor on
+ * @xsk_pool: XSK buffer pool to pick buffers to be consumed by HW
  * @desc: AF_XDP descriptor to pull the DMA address and length from
  * @total_bytes: bytes accumulator that will be used for stats update
  */
-static void ice_xmit_pkt(struct ice_tx_ring *xdp_ring, struct xdp_desc *desc,
+static void ice_xmit_pkt(struct ice_tx_ring *xdp_ring,
+			 struct xsk_buff_pool *xsk_pool, struct xdp_desc *desc,
 			 unsigned int *total_bytes)
 {
 	struct ice_tx_desc *tx_desc;
 	dma_addr_t dma;
 
-	dma = xsk_buff_raw_get_dma(xdp_ring->xsk_pool, desc->addr);
-	xsk_buff_raw_dma_sync_for_device(xdp_ring->xsk_pool, dma, desc->len);
+	dma = xsk_buff_raw_get_dma(xsk_pool, desc->addr);
+	xsk_buff_raw_dma_sync_for_device(xsk_pool, dma, desc->len);
 
 	tx_desc = ICE_TX_DESC(xdp_ring, xdp_ring->next_to_use++);
 	tx_desc->buf_addr = cpu_to_le64(dma);
@@ -991,10 +1001,13 @@ static void ice_xmit_pkt(struct ice_tx_ring *xdp_ring, struct xdp_desc *desc,
 /**
  * ice_xmit_pkt_batch - produce a batch of HW Tx descriptors out of AF_XDP descriptors
  * @xdp_ring: XDP ring to produce the HW Tx descriptors on
+ * @xsk_pool: XSK buffer pool to pick buffers to be consumed by HW
  * @descs: AF_XDP descriptors to pull the DMA addresses and lengths from
  * @total_bytes: bytes accumulator that will be used for stats update
  */
-static void ice_xmit_pkt_batch(struct ice_tx_ring *xdp_ring, struct xdp_desc *descs,
+static void ice_xmit_pkt_batch(struct ice_tx_ring *xdp_ring,
+			       struct xsk_buff_pool *xsk_pool,
+			       struct xdp_desc *descs,
 			       unsigned int *total_bytes)
 {
 	u16 ntu = xdp_ring->next_to_use;
@@ -1004,8 +1017,8 @@ static void ice_xmit_pkt_batch(struct ice_tx_ring *xdp_ring, struct xdp_desc *de
 	loop_unrolled_for(i = 0; i < PKTS_PER_BATCH; i++) {
 		dma_addr_t dma;
 
-		dma = xsk_buff_raw_get_dma(xdp_ring->xsk_pool, descs[i].addr);
-		xsk_buff_raw_dma_sync_for_device(xdp_ring->xsk_pool, dma, descs[i].len);
+		dma = xsk_buff_raw_get_dma(xsk_pool, descs[i].addr);
+		xsk_buff_raw_dma_sync_for_device(xsk_pool, dma, descs[i].len);
 
 		tx_desc = ICE_TX_DESC(xdp_ring, ntu++);
 		tx_desc->buf_addr = cpu_to_le64(dma);
@@ -1021,21 +1034,24 @@ static void ice_xmit_pkt_batch(struct ice_tx_ring *xdp_ring, struct xdp_desc *de
 /**
  * ice_fill_tx_hw_ring - produce the number of Tx descriptors onto ring
  * @xdp_ring: XDP ring to produce the HW Tx descriptors on
+ * @xsk_pool: XSK buffer pool to pick buffers to be consumed by HW
  * @descs: AF_XDP descriptors to pull the DMA addresses and lengths from
  * @nb_pkts: count of packets to be send
  * @total_bytes: bytes accumulator that will be used for stats update
  */
-static void ice_fill_tx_hw_ring(struct ice_tx_ring *xdp_ring, struct xdp_desc *descs,
-				u32 nb_pkts, unsigned int *total_bytes)
+static void ice_fill_tx_hw_ring(struct ice_tx_ring *xdp_ring,
+				struct xsk_buff_pool *xsk_pool,
+				struct xdp_desc *descs, u32 nb_pkts,
+				unsigned int *total_bytes)
 {
 	u32 batched, leftover, i;
 
 	batched = ALIGN_DOWN(nb_pkts, PKTS_PER_BATCH);
 	leftover = nb_pkts & (PKTS_PER_BATCH - 1);
 	for (i = 0; i < batched; i += PKTS_PER_BATCH)
-		ice_xmit_pkt_batch(xdp_ring, &descs[i], total_bytes);
+		ice_xmit_pkt_batch(xdp_ring, xsk_pool, &descs[i], total_bytes);
 	for (; i < batched + leftover; i++)
-		ice_xmit_pkt(xdp_ring, &descs[i], total_bytes);
+		ice_xmit_pkt(xdp_ring, xsk_pool, &descs[i], total_bytes);
 }
 
 /**
@@ -1046,7 +1062,8 @@ static void ice_fill_tx_hw_ring(struct ice_tx_ring *xdp_ring, struct xdp_desc *d
  */
 bool ice_xmit_zc(struct ice_tx_ring *xdp_ring)
 {
-	struct xdp_desc *descs = xdp_ring->xsk_pool->tx_descs;
+	struct xsk_buff_pool *xsk_pool = READ_ONCE(xdp_ring->xsk_pool);
+	struct xdp_desc *descs = xsk_pool->tx_descs;
 	u32 nb_pkts, nb_processed = 0;
 	unsigned int total_bytes = 0;
 	int budget;
@@ -1060,25 +1077,26 @@ bool ice_xmit_zc(struct ice_tx_ring *xdp_ring)
 	budget = ICE_DESC_UNUSED(xdp_ring);
 	budget = min_t(u16, budget, ICE_RING_QUARTER(xdp_ring));
 
-	nb_pkts = xsk_tx_peek_release_desc_batch(xdp_ring->xsk_pool, budget);
+	nb_pkts = xsk_tx_peek_release_desc_batch(xsk_pool, budget);
 	if (!nb_pkts)
 		return true;
 
 	if (xdp_ring->next_to_use + nb_pkts >= xdp_ring->count) {
 		nb_processed = xdp_ring->count - xdp_ring->next_to_use;
-		ice_fill_tx_hw_ring(xdp_ring, descs, nb_processed, &total_bytes);
+		ice_fill_tx_hw_ring(xdp_ring, xsk_pool, descs, nb_processed,
+				    &total_bytes);
 		xdp_ring->next_to_use = 0;
 	}
 
-	ice_fill_tx_hw_ring(xdp_ring, &descs[nb_processed], nb_pkts - nb_processed,
-			    &total_bytes);
+	ice_fill_tx_hw_ring(xdp_ring, xsk_pool, &descs[nb_processed],
+			    nb_pkts - nb_processed, &total_bytes);
 
 	ice_set_rs_bit(xdp_ring);
 	ice_xdp_ring_update_tail(xdp_ring);
 	ice_update_tx_ring_stats(xdp_ring, nb_pkts, total_bytes);
 
-	if (xsk_uses_need_wakeup(xdp_ring->xsk_pool))
-		xsk_set_tx_need_wakeup(xdp_ring->xsk_pool);
+	if (xsk_uses_need_wakeup(xsk_pool))
+		xsk_set_tx_need_wakeup(xsk_pool);
 
 	return nb_pkts < budget;
 }
@@ -1111,7 +1129,7 @@ ice_xsk_wakeup(struct net_device *netdev, u32 queue_id,
 
 	ring = vsi->rx_rings[queue_id]->xdp_ring;
 
-	if (!ring->xsk_pool)
+	if (!READ_ONCE(ring->xsk_pool))
 		return -EINVAL;
 
 	/* The idea here is that if NAPI is running, mark a miss, so
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.h b/drivers/net/ethernet/intel/ice/ice_xsk.h
index 6fa181f080ef..4cd2d62a0836 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.h
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.h
@@ -22,7 +22,8 @@ int ice_xsk_pool_setup(struct ice_vsi *vsi, struct xsk_buff_pool *pool,
 		       u16 qid);
 int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget);
 int ice_xsk_wakeup(struct net_device *netdev, u32 queue_id, u32 flags);
-bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count);
+bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring,
+			  struct xsk_buff_pool *xsk_pool, u16 count);
 bool ice_xsk_any_rx_ring_ena(struct ice_vsi *vsi);
 void ice_xsk_clean_rx_ring(struct ice_rx_ring *rx_ring);
 void ice_xsk_clean_xdp_ring(struct ice_tx_ring *xdp_ring);
@@ -51,6 +52,7 @@ ice_clean_rx_irq_zc(struct ice_rx_ring __always_unused *rx_ring,
 
 static inline bool
 ice_alloc_rx_bufs_zc(struct ice_rx_ring __always_unused *rx_ring,
+		     struct xsk_buff_pool __always_unused *xsk_pool,
 		     u16 __always_unused count)
 {
 	return false;
-- 
2.34.1

