Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E5DB52BBB37
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Nov 2020 01:46:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A5F4786FC9;
	Sat, 21 Nov 2020 00:46:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7YlvX0DWmg0T; Sat, 21 Nov 2020 00:46:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1C09386E92;
	Sat, 21 Nov 2020 00:46:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 63CA31BF9CB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:46:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6088387531
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:46:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gDRGsuWX+B8z for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Nov 2020 00:46:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 702E987650
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:46:35 +0000 (UTC)
IronPort-SDR: j7jJPHr9DA8AXXSg4tMFG0jxkeVyYzvXuA5VjGAEwg7Tvd/XRjEwYU+7TUIAkeSfefm8y2nxtq
 mt+j+3UeaT3A==
X-IronPort-AV: E=McAfee;i="6000,8403,9811"; a="168053546"
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="168053546"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 16:46:34 -0800
IronPort-SDR: vuYa7HhZHcXOkDC5I+bYLkVkk5fWNd2zKEDJ8tUx9tt3QD2PLGnrL80FTvx5fP0zjz6/aAXAK3
 IWKfP9I0vbAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="331520163"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga006.jf.intel.com with ESMTP; 20 Nov 2020 16:46:33 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Nov 2020 16:39:32 -0800
Message-Id: <20201121003938.48514-8-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201121003938.48514-1-anthony.l.nguyen@intel.com>
References: <20201121003938.48514-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S54 08/14] ice: Refactor ice_setup_rx_ctx
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
Co-developed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c | 120 +++++++++++++---------
 drivers/net/ethernet/intel/ice/ice_base.h |   2 +-
 drivers/net/ethernet/intel/ice/ice_lib.c  |  10 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c  |   2 +-
 4 files changed, 78 insertions(+), 56 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index fe4320e2d1f2..78b21e390d43 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -280,11 +280,9 @@ ice_setup_tx_ctx(struct ice_ring *ring, struct ice_tlan_ctx *tlan_ctx, u16 pf_q)
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
@@ -300,48 +298,6 @@ int ice_setup_rx_ctx(struct ice_ring *ring)
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
-		ring->xsk_pool = ice_xsk_pool(ring);
-		if (ring->xsk_pool) {
-			xdp_rxq_info_unreg_mem_model(&ring->xdp_rxq);
-
-			ring->rx_buf_len =
-				xsk_pool_get_rx_frame_size(ring->xsk_pool);
-			/* For AF_XDP ZC, we disallow packets to span on
-			 * multiple buffers, thus letting us skip that
-			 * handling in the fast-path.
-			 */
-			chain_len = 1;
-			err = xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
-							 MEM_TYPE_XSK_BUFF_POOL,
-							 NULL);
-			if (err)
-				return err;
-			xsk_pool_set_rxq_info(ring->xsk_pool, &ring->xdp_rxq);
-
-			dev_info(dev, "Registered XDP mem model MEM_TYPE_XSK_BUFF_POOL on Rx ring %d\n",
-				 ring->q_index);
-		} else {
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
@@ -376,6 +332,12 @@ int ice_setup_rx_ctx(struct ice_ring *ring)
 	 */
 	rlan_ctx.showiv = 0;
 
+	/* For AF_XDP ZC, we disallow packets to span on
+	 * multiple buffers, thus letting us skip that
+	 * handling in the fast-path.
+	 */
+	if (ring->xsk_pool)
+		chain_len = 1;
 	/* Max packet size for this queue - must not be set to a larger value
 	 * than 5 x DBUF
 	 */
@@ -399,7 +361,7 @@ int ice_setup_rx_ctx(struct ice_ring *ring)
 	/* Absolute queue number out of 2K needs to be passed */
 	err = ice_write_rxq_ctx(hw, &rlan_ctx, pf_q);
 	if (err) {
-		dev_err(dev, "Failed to set LAN Rx queue context for absolute Rx queue %d error: %d\n",
+		dev_err(ice_pf_to_dev(vsi->back), "Failed to set LAN Rx queue context for absolute Rx queue %d error: %d\n",
 			pf_q, err);
 		return -EIO;
 	}
@@ -417,6 +379,66 @@ int ice_setup_rx_ctx(struct ice_ring *ring)
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
+		ring->xsk_pool = ice_xsk_pool(ring);
+		if (ring->xsk_pool) {
+			xdp_rxq_info_unreg_mem_model(&ring->xdp_rxq);
+
+			ring->rx_buf_len =
+				xsk_pool_get_rx_frame_size(ring->xsk_pool);
+			err = xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
+							 MEM_TYPE_XSK_BUFF_POOL,
+							 NULL);
+			if (err)
+				return err;
+			xsk_pool_set_rxq_info(ring->xsk_pool, &ring->xdp_rxq);
+
+			dev_info(dev, "Registered XDP mem model MEM_TYPE_XSK_BUFF_POOL on Rx ring %d\n",
+				 ring->q_index);
+		} else {
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
 	if (ring->xsk_pool) {
 		if (!xsk_buff_can_alloc(ring->xsk_pool, num_bufs)) {
 			dev_warn(dev, "XSK buffer pool does not provide enough addresses to fill %d buffers on Rx ring %d\n",
@@ -427,9 +449,13 @@ int ice_setup_rx_ctx(struct ice_ring *ring)
 		}
 
 		err = ice_alloc_rx_bufs_zc(ring, num_bufs);
-		if (err)
+		if (err) {
+			u16 pf_q = ring->vsi->rxq_map[ring->q_index];
+
 			dev_info(dev, "Failed to allocate some buffers on XSK buffer pool enabled Rx ring %d (pf_q %d)\n",
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
index 4a6ad5ca99e0..baf90abc19d3 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1692,15 +1692,11 @@ int ice_vsi_cfg_rxqs(struct ice_vsi *vsi)
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
index 3c76e42b15b0..41085546d191 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -239,7 +239,7 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
 		xdp_ring->xsk_pool = ice_xsk_pool(xdp_ring);
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
