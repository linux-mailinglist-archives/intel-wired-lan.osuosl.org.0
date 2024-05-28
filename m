Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 055408D1C58
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 15:15:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A6551820BF;
	Tue, 28 May 2024 13:15:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IjtpQI1tYPwC; Tue, 28 May 2024 13:15:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0AAD482009
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716902147;
	bh=8A14aLklTTPo/8M6f3h1oObHnz16WIC1inFtQEdisdY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QJX20hkkbR5OTF1hZ1hWkBhcnSBR89u2e0viwB2fciZLdndWDyf3dVxoj+4XIoEOj
	 mgtBaqVoaOuj745O5uigtIUtXC7u5C5sh/l2Us5Cukj9i8Fglq6cKzFw5jKljxinQX
	 CzmA63yWVOyJvsltw7gaq4I0O4gWra3zMv+PLt1mJr4UtX/B58yfrTKwmzDY4lP2KP
	 bCWaL5yuKmuHHsRxx8zYM0NoVT7VwsFBjyJx/AAoNbu8VmocWiV43mtD3tzErlsC6s
	 LWqulltBtTf7TGK26v6y9tK5uUcW1Dkjkx9xcJFxjNhXe3uKNJ6jBC2ZbLu+1+Ybq2
	 y+iA+pUcQqvRw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0AAD482009;
	Tue, 28 May 2024 13:15:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3096E1D281C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:15:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 18DA381FDE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:15:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ijUo553Ufhzn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 13:15:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C23A582012
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C23A582012
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C23A582012
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:15:41 +0000 (UTC)
X-CSE-ConnectionGUID: mqdoCGGiQWekkK91boGgDA==
X-CSE-MsgGUID: Vq+TxABuTSW+BZKJpZRtjg==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13193542"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="13193542"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 06:15:42 -0700
X-CSE-ConnectionGUID: xQPez/OnQ/CXzEbGwbn6lw==
X-CSE-MsgGUID: oCr2RIS0SbGFn0ATKShcZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39891148"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa003.jf.intel.com with ESMTP; 28 May 2024 06:15:40 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 May 2024 15:14:24 +0200
Message-Id: <20240528131429.3012910-7-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240528131429.3012910-1-maciej.fijalkowski@intel.com>
References: <20240528131429.3012910-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716902142; x=1748438142;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5Fj1JTqE3Az1tnrWcUbUzpd1PZB31xMYtRZLoikh3yc=;
 b=crJqlsU/oDSh3DFrGDXZKee8p8+z7vEfWkIpssbtXtCrxg62m8LMUkpH
 aMPGAzMBX1tgaGfF3BqQFIEAR8AzxOU2THfdiB4RUr6i/DukOTFup9rVU
 EdaeMO0MsICpXgZjfZhHR4AOx/BfqFbfNGeZgmvIAiSz/NiOj277fl+iH
 MtU6Tm8bsKtneeTk+ar/XjtIJVazcGBw61mVC+9gC7YkX2qN++RkpccJ2
 sOhsRPnbjtKlyd7Kh4nw41rpAClbdDDhbusP834mgOP88aR0iWyaquiHi
 x5vSH9Xb+TGdpwCm2FvDVg0lmA6lEKfXmk2mdzBfMwIeW6V5jfJUYPPYZ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=crJqlsU/
Subject: [Intel-wired-lan] [PATCH iwl-net 06/11] ice: improve updating
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
 netdev@vger.kernel.org, michal.kubiak@intel.com, anthony.l.nguyen@intel.com,
 magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

xsk_buff_pool pointers that ice ring structs hold are updated via
ndo_bpf that is executed in process context while it can be read by
remote CPU at the same time within NAPI poll. Use synchronize_net()
after pointer update and {READ,WRITE}_ONCE() when working with mentioned
pointer.

Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      |  6 +-
 drivers/net/ethernet/intel/ice/ice_base.c |  4 +-
 drivers/net/ethernet/intel/ice/ice_main.c |  2 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c |  4 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c  | 73 +++++++++++++----------
 drivers/net/ethernet/intel/ice/ice_xsk.h  |  4 +-
 6 files changed, 54 insertions(+), 39 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index da8c8afebc93..701a61d791dd 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -771,12 +771,12 @@ static inline struct xsk_buff_pool *ice_get_xp_from_qid(struct ice_vsi *vsi,
  * Returns a pointer to xsk_buff_pool structure if there is a buffer pool
  * present, NULL otherwise.
  */
-static inline struct xsk_buff_pool *ice_xsk_pool(struct ice_rx_ring *ring)
+static inline void ice_xsk_pool(struct ice_rx_ring *ring)
 {
 	struct ice_vsi *vsi = ring->vsi;
 	u16 qid = ring->q_index;
 
-	return ice_get_xp_from_qid(vsi, qid);
+	WRITE_ONCE(ring->xsk_pool, ice_get_xp_from_qid(vsi, qid));
 }
 
 /**
@@ -801,7 +801,7 @@ static inline void ice_tx_xsk_pool(struct ice_vsi *vsi, u16 qid)
 	if (!ring)
 		return;
 
-	ring->xsk_pool = ice_get_xp_from_qid(vsi, qid);
+	WRITE_ONCE(ring->xsk_pool, ice_get_xp_from_qid(vsi, qid));
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 5d396c1a7731..f3dfce136106 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -536,7 +536,7 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
 				return err;
 		}
 
-		ring->xsk_pool = ice_xsk_pool(ring);
+		ice_xsk_pool(ring);
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
index 1b61ca3a6eb6..15a6805ac2a1 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2946,7 +2946,7 @@ static void ice_vsi_rx_napi_schedule(struct ice_vsi *vsi)
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
index 8c5006f37310..e554cf424fb3 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -250,6 +250,8 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
 	ice_qvec_toggle_napi(vsi, q_vector, true);
 	ice_qvec_ena_irq(vsi, q_vector);
 
+	/* make sure NAPI sees updated ice_{t,x}_ring::xsk_pool */
+	synchronize_net();
 	netif_tx_start_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
 	netif_carrier_on(vsi->netdev);
 	clear_bit(ICE_CFG_BUSY, vsi->state);
@@ -469,7 +471,8 @@ static u16 ice_fill_rx_descs(struct xsk_buff_pool *pool, struct xdp_buff **xdp,
  *
  * Returns true if all allocations were successful, false if any fail.
  */
-static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
+static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring,
+				   struct xsk_buff_pool *xsk_pool,  u16 count)
 {
 	u32 nb_buffs_extra = 0, nb_buffs = 0;
 	union ice_32b_rx_flex_desc *rx_desc;
@@ -481,8 +484,7 @@ static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
 	xdp = ice_xdp_buf(rx_ring, ntu);
 
 	if (ntu + count >= rx_ring->count) {
-		nb_buffs_extra = ice_fill_rx_descs(rx_ring->xsk_pool, xdp,
-						   rx_desc,
+		nb_buffs_extra = ice_fill_rx_descs(xsk_pool, xdp, rx_desc,
 						   rx_ring->count - ntu);
 		if (nb_buffs_extra != rx_ring->count - ntu) {
 			ntu += nb_buffs_extra;
@@ -495,7 +497,7 @@ static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
 		ice_release_rx_desc(rx_ring, 0);
 	}
 
-	nb_buffs = ice_fill_rx_descs(rx_ring->xsk_pool, xdp, rx_desc, count);
+	nb_buffs = ice_fill_rx_descs(xsk_pool, xdp, rx_desc, count);
 
 	ntu += nb_buffs;
 	if (ntu == rx_ring->count)
@@ -518,7 +520,8 @@ static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
  *
  * Returns true if all calls to internal alloc routine succeeded
  */
-bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
+bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring,
+			  struct xsk_buff_pool *xsk_pool, u16 count)
 {
 	u16 rx_thresh = ICE_RING_QUARTER(rx_ring);
 	u16 leftover, i, tail_bumps;
@@ -527,9 +530,9 @@ bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
 	leftover = count - (tail_bumps * rx_thresh);
 
 	for (i = 0; i < tail_bumps; i++)
-		if (!__ice_alloc_rx_bufs_zc(rx_ring, rx_thresh))
+		if (!__ice_alloc_rx_bufs_zc(rx_ring, xsk_pool, rx_thresh))
 			return false;
-	return __ice_alloc_rx_bufs_zc(rx_ring, leftover);
+	return __ice_alloc_rx_bufs_zc(rx_ring, xsk_pool, leftover);
 }
 
 /**
@@ -650,7 +653,7 @@ static u32 ice_clean_xdp_irq_zc(struct ice_tx_ring *xdp_ring)
 	if (xdp_ring->next_to_clean >= cnt)
 		xdp_ring->next_to_clean -= cnt;
 	if (xsk_frames)
-		xsk_tx_completed(xdp_ring->xsk_pool, xsk_frames);
+		xsk_tx_completed(READ_ONCE(xdp_ring->xsk_pool), xsk_frames);
 
 	return completed_frames;
 }
@@ -702,7 +705,8 @@ static int ice_xmit_xdp_tx_zc(struct xdp_buff *xdp,
 		dma_addr_t dma;
 
 		dma = xsk_buff_xdp_get_dma(xdp);
-		xsk_buff_raw_dma_sync_for_device(xdp_ring->xsk_pool, dma, size);
+		xsk_buff_raw_dma_sync_for_device(READ_ONCE(xdp_ring->xsk_pool),
+						 dma, size);
 
 		tx_buf->xdp = xdp;
 		tx_buf->type = ICE_TX_BUF_XSK_TX;
@@ -760,7 +764,8 @@ ice_run_xdp_zc(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
 		err = xdp_do_redirect(rx_ring->netdev, xdp, xdp_prog);
 		if (!err)
 			return ICE_XDP_REDIR;
-		if (xsk_uses_need_wakeup(rx_ring->xsk_pool) && err == -ENOBUFS)
+		if (xsk_uses_need_wakeup(READ_ONCE(rx_ring->xsk_pool)) &&
+		    err == -ENOBUFS)
 			result = ICE_XDP_EXIT;
 		else
 			result = ICE_XDP_CONSUMED;
@@ -829,8 +834,8 @@ ice_add_xsk_frag(struct ice_rx_ring *rx_ring, struct xdp_buff *first,
  */
 int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
 {
+	struct xsk_buff_pool *xsk_pool = READ_ONCE(rx_ring->xsk_pool);
 	unsigned int total_rx_bytes = 0, total_rx_packets = 0;
-	struct xsk_buff_pool *xsk_pool = rx_ring->xsk_pool;
 	u32 ntc = rx_ring->next_to_clean;
 	u32 ntu = rx_ring->next_to_use;
 	struct xdp_buff *first = NULL;
@@ -942,7 +947,8 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
 	rx_ring->next_to_clean = ntc;
 	entries_to_alloc = ICE_RX_DESC_UNUSED(rx_ring);
 	if (entries_to_alloc > ICE_RING_QUARTER(rx_ring))
-		failure |= !ice_alloc_rx_bufs_zc(rx_ring, entries_to_alloc);
+		failure |= !ice_alloc_rx_bufs_zc(rx_ring, xsk_pool,
+						 entries_to_alloc);
 
 	ice_finalize_xdp_rx(xdp_ring, xdp_xmit, 0);
 	ice_update_rx_ring_stats(rx_ring, total_rx_packets, total_rx_bytes);
@@ -968,14 +974,15 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
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
@@ -991,7 +998,9 @@ static void ice_xmit_pkt(struct ice_tx_ring *xdp_ring, struct xdp_desc *desc,
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
@@ -1001,8 +1010,8 @@ static void ice_xmit_pkt_batch(struct ice_tx_ring *xdp_ring, struct xdp_desc *de
 	loop_unrolled_for(i = 0; i < PKTS_PER_BATCH; i++) {
 		dma_addr_t dma;
 
-		dma = xsk_buff_raw_get_dma(xdp_ring->xsk_pool, descs[i].addr);
-		xsk_buff_raw_dma_sync_for_device(xdp_ring->xsk_pool, dma, descs[i].len);
+		dma = xsk_buff_raw_get_dma(xsk_pool, descs[i].addr);
+		xsk_buff_raw_dma_sync_for_device(xsk_pool, dma, descs[i].len);
 
 		tx_desc = ICE_TX_DESC(xdp_ring, ntu++);
 		tx_desc->buf_addr = cpu_to_le64(dma);
@@ -1022,17 +1031,19 @@ static void ice_xmit_pkt_batch(struct ice_tx_ring *xdp_ring, struct xdp_desc *de
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
@@ -1043,7 +1054,8 @@ static void ice_fill_tx_hw_ring(struct ice_tx_ring *xdp_ring, struct xdp_desc *d
  */
 bool ice_xmit_zc(struct ice_tx_ring *xdp_ring)
 {
-	struct xdp_desc *descs = xdp_ring->xsk_pool->tx_descs;
+	struct xsk_buff_pool *xsk_pool = READ_ONCE(xdp_ring->xsk_pool);
+	struct xdp_desc *descs = xsk_pool->tx_descs;
 	u32 nb_pkts, nb_processed = 0;
 	unsigned int total_bytes = 0;
 	int budget;
@@ -1057,25 +1069,26 @@ bool ice_xmit_zc(struct ice_tx_ring *xdp_ring)
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
@@ -1108,7 +1121,7 @@ ice_xsk_wakeup(struct net_device *netdev, u32 queue_id,
 
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

