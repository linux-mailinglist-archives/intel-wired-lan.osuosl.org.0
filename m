Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB7C1D5D5B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:45:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DE82B22731;
	Sat, 16 May 2020 00:45:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 92L9LGzzoJXw; Sat, 16 May 2020 00:45:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8D9D122846;
	Sat, 16 May 2020 00:45:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0B4001BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:45:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 03DF387F93
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:45:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id emK4LBQH-K42 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:45:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A984B880B7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:45:01 +0000 (UTC)
IronPort-SDR: BU39Ski9qIlDmGcizzsWX5yUsjh/3sCdsH2DlOgnKj7U+lPH/Ra9u+Xjl7mf0gcPeT6O7Xhw7B
 f+/sixa0xx+g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:45:00 -0700
IronPort-SDR: bbRixmiT0ex01iBFF4b+gQKy4se5QKr1KfIxnERDbw85IfdvG6k4ijCg4DI3C2XyS/HhcGLpey
 POyVtKnxa1nA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="287960352"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by fmsmga004.fm.intel.com with ESMTP; 15 May 2020 17:45:00 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:42:21 -0700
Message-Id: <20200516004226.4795-9-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516004226.4795-1-anthony.l.nguyen@intel.com>
References: <20200516004226.4795-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S44 09/14] ice: Refactor ice_setup_rx_ctx
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

From: Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>

Move AF_XDP logic and buffer allocation out of ice_setup_rx_ctx() to a
new function ice_vsi_cfg_rxq(), so the function actually sets up the Rx
context.

Signed-off-by: Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c | 123 +++++++++++++---------
 drivers/net/ethernet/intel/ice/ice_base.h |   2 +-
 drivers/net/ethernet/intel/ice/ice_lib.c  |  10 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c  |   2 +-
 4 files changed, 80 insertions(+), 57 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 74fdd4296937..798b173e81e0 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -278,11 +278,9 @@ ice_setup_tx_ctx(struct ice_ring *ring, struct ice_tlan_ctx *tlan_ctx, u16 pf_q)
  *
  * Configure the Rx descriptor ring in RLAN context.
  */
-int ice_setup_rx_ctx(struct ice_ring *ring)
+static int ice_setup_rx_ctx(struct ice_ring *ring)
 {
-	struct device *dev = ice_pf_to_dev(ring->vsi->back);
 	int chain_len = ICE_MAX_CHAINED_RX_BUFS;
-	u16 num_bufs = ICE_DESC_UNUSED(ring);
 	struct ice_vsi *vsi = ring->vsi;
 	u32 rxdid = ICE_RXDID_FLEX_NIC;
 	struct ice_rlan_ctx rlan_ctx;
@@ -299,49 +297,6 @@ int ice_setup_rx_ctx(struct ice_ring *ring)
 	/* clear the context structure first */
 	memset(&rlan_ctx, 0, sizeof(rlan_ctx));
 
-	ring->rx_buf_len = vsi->rx_buf_len;
-
-	if (ring->vsi->type == ICE_VSI_PF) {
-		if (!xdp_rxq_info_is_reg(&ring->xdp_rxq))
-			/* coverity[check_return] */
-			xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
-					 ring->q_index);
-
-		ring->xsk_umem = ice_xsk_umem(ring);
-		if (ring->xsk_umem) {
-			xdp_rxq_info_unreg_mem_model(&ring->xdp_rxq);
-
-			ring->rx_buf_len = ring->xsk_umem->chunk_size_nohr -
-					   XDP_PACKET_HEADROOM;
-			/* For AF_XDP ZC, we disallow packets to span on
-			 * multiple buffers, thus letting us skip that
-			 * handling in the fast-path.
-			 */
-			chain_len = 1;
-			ring->zca.free = ice_zca_free;
-			err = xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
-							 MEM_TYPE_ZERO_COPY,
-							 &ring->zca);
-			if (err)
-				return err;
-
-			dev_info(dev, "Registered XDP mem model MEM_TYPE_ZERO_COPY on Rx ring %d\n",
-				 ring->q_index);
-		} else {
-			ring->zca.free = NULL;
-			if (!xdp_rxq_info_is_reg(&ring->xdp_rxq))
-				/* coverity[check_return] */
-				xdp_rxq_info_reg(&ring->xdp_rxq,
-						 ring->netdev,
-						 ring->q_index);
-
-			err = xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
-							 MEM_TYPE_PAGE_SHARED,
-							 NULL);
-			if (err)
-				return err;
-		}
-	}
 	/* Receive Queue Base Address.
 	 * Indicates the starting address of the descriptor queue defined in
 	 * 128 Byte units.
@@ -376,6 +331,12 @@ int ice_setup_rx_ctx(struct ice_ring *ring)
 	 */
 	rlan_ctx.showiv = 0;
 
+	/* For AF_XDP ZC, we disallow packets to span on
+	 * multiple buffers, thus letting us skip that
+	 * handling in the fast-path.
+	 */
+	if (ring->xsk_umem)
+		chain_len = 1;
 	/* Max packet size for this queue - must not be set to a larger value
 	 * than 5 x DBUF
 	 */
@@ -410,7 +371,8 @@ int ice_setup_rx_ctx(struct ice_ring *ring)
 	/* Absolute queue number out of 2K needs to be passed */
 	err = ice_write_rxq_ctx(hw, &rlan_ctx, pf_q);
 	if (err) {
-		dev_err(dev, "Failed to set LAN Rx queue context for absolute Rx queue %d error: %d\n",
+		dev_err(ice_pf_to_dev(vsi->back),
+			"Failed to set LAN Rx queue context for absolute Rx queue %d error: %d\n",
 			pf_q, err);
 		return -EIO;
 	}
@@ -428,6 +390,67 @@ int ice_setup_rx_ctx(struct ice_ring *ring)
 	ring->tail = hw->hw_addr + QRX_TAIL(pf_q);
 	writel(0, ring->tail);
 
+	return 0;
+}
+
+/**
+ * ice_vsi_cfg_rxq - Configure an Rx queue
+ * @ring: the ring being configured
+ *
+ * Return 0 on success and a negative value on error.
+ */
+int ice_vsi_cfg_rxq(struct ice_ring *ring)
+{
+	struct device *dev = ice_pf_to_dev(ring->vsi->back);
+	u16 num_bufs = ICE_DESC_UNUSED(ring);
+	int err;
+
+	ring->rx_buf_len = ring->vsi->rx_buf_len;
+
+	if (ring->vsi->type == ICE_VSI_PF) {
+		if (!xdp_rxq_info_is_reg(&ring->xdp_rxq))
+			/* coverity[check_return] */
+			xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
+					 ring->q_index);
+
+		ring->xsk_umem = ice_xsk_umem(ring);
+		if (ring->xsk_umem) {
+			xdp_rxq_info_unreg_mem_model(&ring->xdp_rxq);
+
+			ring->rx_buf_len = ring->xsk_umem->chunk_size_nohr -
+					   XDP_PACKET_HEADROOM;
+			ring->zca.free = ice_zca_free;
+			err = xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
+							 MEM_TYPE_ZERO_COPY,
+							 &ring->zca);
+			if (err)
+				return err;
+
+			dev_info(dev, "Registered XDP mem model MEM_TYPE_ZERO_COPY on Rx ring %d\n",
+				 ring->q_index);
+		} else {
+			ring->zca.free = NULL;
+			if (!xdp_rxq_info_is_reg(&ring->xdp_rxq))
+				/* coverity[check_return] */
+				xdp_rxq_info_reg(&ring->xdp_rxq,
+						 ring->netdev,
+						 ring->q_index);
+
+			err = xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
+							 MEM_TYPE_PAGE_SHARED,
+							 NULL);
+			if (err)
+				return err;
+		}
+	}
+
+	err = ice_setup_rx_ctx(ring);
+	if (err) {
+		dev_err(dev, "ice_setup_rx_ctx failed for RxQ %d, err %d\n",
+			ring->q_index, err);
+		return err;
+	}
+
 	if (ring->xsk_umem) {
 		if (!xsk_umem_has_addrs_rq(ring->xsk_umem, num_bufs)) {
 			dev_warn(dev, "UMEM does not provide enough addresses to fill %d buffers on Rx ring %d\n",
@@ -438,9 +461,13 @@ int ice_setup_rx_ctx(struct ice_ring *ring)
 		}
 
 		err = ice_alloc_rx_bufs_slow_zc(ring, num_bufs);
-		if (err)
+		if (err) {
+			u16 pf_q = ring->vsi->rxq_map[ring->q_index];
+
 			dev_info(dev, "Failed to allocate some buffers on UMEM enabled Rx ring %d (pf_q %d)\n",
 				 ring->q_index, pf_q);
+		}
+
 		return 0;
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_base.h b/drivers/net/ethernet/intel/ice/ice_base.h
index 44efdb627043..20e1c29aa68a 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.h
+++ b/drivers/net/ethernet/intel/ice/ice_base.h
@@ -6,7 +6,7 @@
 
 #include "ice.h"
 
-int ice_setup_rx_ctx(struct ice_ring *ring);
+int ice_vsi_cfg_rxq(struct ice_ring *ring);
 int __ice_vsi_get_qs(struct ice_qs_cfg *qs_cfg);
 int
 ice_vsi_ctrl_one_rx_ring(struct ice_vsi *vsi, bool ena, u16 rxq_idx, bool wait);
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 51a20958e0d0..9bee0d947651 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1648,15 +1648,11 @@ int ice_vsi_cfg_rxqs(struct ice_vsi *vsi)
 	ice_vsi_cfg_frame_size(vsi);
 setup_rings:
 	/* set up individual rings */
-	for (i = 0; i < vsi->num_rxq; i++) {
-		int err;
+	ice_for_each_rxq(vsi, i) {
+		int err = ice_vsi_cfg_rxq(vsi->rx_rings[i]);
 
-		err = ice_setup_rx_ctx(vsi->rx_rings[i]);
-		if (err) {
-			dev_err(ice_pf_to_dev(vsi->back), "ice_setup_rx_ctx failed for RxQ %d, err %d\n",
-				i, err);
+		if (err)
 			return err;
-		}
 	}
 
 	return 0;
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 1e9cc550ec98..5f556faef405 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -237,7 +237,7 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
 		xdp_ring->xsk_umem = ice_xsk_umem(xdp_ring);
 	}
 
-	err = ice_setup_rx_ctx(rx_ring);
+	err = ice_vsi_cfg_rxq(rx_ring);
 	if (err)
 		goto free_buf;
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
