Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 55ACC58FA7F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Aug 2022 12:10:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C583E60B5B;
	Thu, 11 Aug 2022 10:10:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C583E60B5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660212622;
	bh=ohNZQoY8+rErxLwDtelhk9KEd4+Dqqp6V3ClYAfT3IY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=utv+XeNtwKDYrOiUNN/S+wQzpk5DN2qHaaFu8xGOBDUVqLIunQ63J1JFo/UIvQ/c6
	 XWewQyyT6lV15qf6B+jwM3jAMkKszcCXyJ6aN5gKQyXYzqnEYhixtO1gYD7K+2aman
	 s9UbGhGSSlGZwkvJWpNCOCyZQohMWgkMO4OKIqFeZ8pUreYhug2x+xmoHmr/pkl+/M
	 BSbwgn8Nc3vomV7yLRnAri03I+mIh+AH4Vkx5TDtf/AZR96RoP5nJ+HESQk+M5SaB4
	 JlYVI1gaHWcarALQtlD7VOhPxzIqJ8EaUN3pHx2kKE8VaxFE/8wyNlDfLTm8/ujU4N
	 tNDRZmUPRLV5Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hhgF1-nTLm50; Thu, 11 Aug 2022 10:10:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B01460AAE;
	Thu, 11 Aug 2022 10:10:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B01460AAE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A37E11BF403
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 10:10:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7DA5B40871
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 10:10:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7DA5B40871
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Eb5eeR0thmAi for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Aug 2022 10:10:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1177B4086F
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1177B4086F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 10:10:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="292569826"
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="292569826"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 03:10:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="556073921"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by orsmga003.jf.intel.com with ESMTP; 11 Aug 2022 03:10:13 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 11 Aug 2022 12:09:22 +0200
Message-Id: <20220811100922.1540016-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660212615; x=1691748615;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZFssylSqagYxkYqv1/sXVS6iZfaM465mybS4gvwOLFY=;
 b=jWPFopFJc1kg3+rgShNWUzxw5MtbykYAyxE5dZVou2mzG0u/PbNzRHaf
 zAsKsFEn0mSQ1uZvItiHF/0z8VrtpE4qd28HNX/ZrwioRfI3P77drpXWb
 Q+Mc6W+uzqAH8BNrZYqX4mxHMRXv8ER3V9PnFiyBSde34HKE/0WKcGoCq
 12TXeA5UNyipvEf8vGZSv/Sn+s+LNHUnHCDQiEXfv4ftEd89b2JErQ1cJ
 KhnsDPcbED+N5ZmAkAv3wX24KuzQcdt/SMDRVmRBkbGz6wxGvX33nN3kU
 P8yfOG3yj4zIrcfGSkI2DR/aET4fVx5Jitd0bMy5Je679b5lQ3RQBWjNM
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jWPFopFJ
Subject: [Intel-wired-lan] [PATCH net v1] ice: Fix DMA mappings leak
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>

Fix leak, when user changes ring parameters.
During reallocation of RX buffers, new DMA mappings are created for
those buffers. New buffers with different RX ring count should
substitute older ones, but those buffers were freed in ice_vsi_cfg_rxq
and reallocated again with ice_alloc_rx_buf. kfree on rx_buf caused
leak of already mapped DMA.
Reallocate ZC with xdp_buf struct, when BPF program loads. Reallocate
back to rx_buf, when BPF program unloads.
If BPF program is loaded/unloaded and XSK pools are created, reallocate
RX queues accordingly in XDP_SETUP_XSK_POOL handler.

Steps for reproduction:
while :
do
	for ((i=0; i<=8160; i=i+32))
	do
		ethtool -G enp130s0f0 rx $i tx $i
		sleep 0.5
		ethtool -g enp130s0f0
	done
done

Fixes: 617f3e1b588c ("ice: xsk: allocate separate memory for XDP SW ring")
Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c | 17 ------
 drivers/net/ethernet/intel/ice/ice_main.c |  8 +++
 drivers/net/ethernet/intel/ice/ice_xsk.c  | 63 +++++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_xsk.h  |  7 +++
 4 files changed, 78 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 136d7911adb4..1e3243808178 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -7,18 +7,6 @@
 #include "ice_dcb_lib.h"
 #include "ice_sriov.h"
 
-static bool ice_alloc_rx_buf_zc(struct ice_rx_ring *rx_ring)
-{
-	rx_ring->xdp_buf = kcalloc(rx_ring->count, sizeof(*rx_ring->xdp_buf), GFP_KERNEL);
-	return !!rx_ring->xdp_buf;
-}
-
-static bool ice_alloc_rx_buf(struct ice_rx_ring *rx_ring)
-{
-	rx_ring->rx_buf = kcalloc(rx_ring->count, sizeof(*rx_ring->rx_buf), GFP_KERNEL);
-	return !!rx_ring->rx_buf;
-}
-
 /**
  * __ice_vsi_get_qs_contig - Assign a contiguous chunk of queues to VSI
  * @qs_cfg: gathered variables needed for PF->VSI queues assignment
@@ -519,11 +507,8 @@ int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
 			xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
 					 ring->q_index, ring->q_vector->napi.napi_id);
 
-		kfree(ring->rx_buf);
 		ring->xsk_pool = ice_xsk_pool(ring);
 		if (ring->xsk_pool) {
-			if (!ice_alloc_rx_buf_zc(ring))
-				return -ENOMEM;
 			xdp_rxq_info_unreg_mem_model(&ring->xdp_rxq);
 
 			ring->rx_buf_len =
@@ -538,8 +523,6 @@ int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
 			dev_info(dev, "Registered XDP mem model MEM_TYPE_XSK_BUFF_POOL on Rx ring %d\n",
 				 ring->q_index);
 		} else {
-			if (!ice_alloc_rx_buf(ring))
-				return -ENOMEM;
 			if (!xdp_rxq_info_is_reg(&ring->xdp_rxq))
 				/* coverity[check_return] */
 				xdp_rxq_info_reg(&ring->xdp_rxq,
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index f37b89189a9d..aa33f41fb09a 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2885,10 +2885,18 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
 			if (xdp_ring_err)
 				NL_SET_ERR_MSG_MOD(extack, "Setting up XDP Tx resources failed");
 		}
+		/* reallocate RX queues that are used for zero-copy */
+		xdp_ring_err = ice_realloc_zc_buf(vsi, true);
+		if (xdp_ring_err)
+			NL_SET_ERR_MSG_MOD(extack, "Setting up XDP Rx resources failed");
 	} else if (ice_is_xdp_ena_vsi(vsi) && !prog) {
 		xdp_ring_err = ice_destroy_xdp_rings(vsi);
 		if (xdp_ring_err)
 			NL_SET_ERR_MSG_MOD(extack, "Freeing XDP Tx resources failed");
+		/* reallocate RX queues that were used for zero-copy */
+		xdp_ring_err = ice_realloc_zc_buf(vsi, false);
+		if (xdp_ring_err)
+			NL_SET_ERR_MSG_MOD(extack, "Freeing XDP Rx resources failed");
 	} else {
 		/* safe to call even when prog == vsi->xdp_prog as
 		 * dev_xdp_install in net/core/dev.c incremented prog's
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 34d851d3e767..41cd66fcfb27 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -192,6 +192,7 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
 	err = ice_vsi_ctrl_one_rx_ring(vsi, false, q_idx, true);
 	if (err)
 		return err;
+	ice_clean_rx_ring(rx_ring);
 
 	ice_qvec_toggle_napi(vsi, q_vector, false);
 	ice_qp_clean_rings(vsi, q_idx);
@@ -316,6 +317,62 @@ ice_xsk_pool_enable(struct ice_vsi *vsi, struct xsk_buff_pool *pool, u16 qid)
 	return 0;
 }
 
+/**
+ * ice_realloc_rx_xdp_bufs - reallocate for either XSK or normal buffer
+ * @vsi: Current VSI
+ * @pool_present: is pool for XSK present
+ *
+ * Try allocating memory and return ENOMEM, if failed to allocate.
+ * If allocation was successful, substitute buffer with allocated one.
+ * Returns 0 on success, negative on failure
+ */
+static int ice_realloc_rx_xdp_bufs(struct ice_rx_ring *rx_ring,
+				   bool pool_present)
+{
+	size_t elem_size = pool_present ? sizeof(*rx_ring->xdp_buf) :
+					  sizeof(*rx_ring->rx_buf);
+	void *sw_ring = kcalloc(rx_ring->count, elem_size, GFP_KERNEL);
+
+	if (!sw_ring)
+		return -ENOMEM;
+
+	if (pool_present) {
+		kfree(rx_ring->rx_buf);
+		rx_ring->rx_buf = NULL;
+		rx_ring->xdp_buf = sw_ring;
+	} else {
+		kfree(rx_ring->xdp_buf);
+		rx_ring->xdp_buf = NULL;
+		rx_ring->rx_buf = sw_ring;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_realloc_zc_buf - reallocate xdp zc queue pairs
+ * @vsi: Current VSI
+ * @zc: is zero copy set
+ *
+ * Reallocate buffer for rx_rings that might be used by XSK.
+ * XDP requires more memory, than rx_buf provides.
+ * Returns 0 on success, negative on failure
+ */
+int ice_realloc_zc_buf(struct ice_vsi *vsi, bool zc)
+{
+	struct ice_rx_ring *rx_ring;
+	unsigned long q;
+
+	for_each_set_bit(q, vsi->af_xdp_zc_qps,
+			 max_t(int, vsi->alloc_txq, vsi->alloc_rxq)) {
+		rx_ring = vsi->rx_rings[q];
+		if (ice_realloc_rx_xdp_bufs(rx_ring, zc))
+			return -ENOMEM;
+	}
+
+	return 0;
+}
+
 /**
  * ice_xsk_pool_setup - enable/disable a buffer pool region depending on its state
  * @vsi: Current VSI
@@ -339,11 +396,17 @@ int ice_xsk_pool_setup(struct ice_vsi *vsi, struct xsk_buff_pool *pool, u16 qid)
 	if_running = netif_running(vsi->netdev) && ice_is_xdp_ena_vsi(vsi);
 
 	if (if_running) {
+		struct ice_rx_ring *rx_ring = vsi->rx_rings[qid];
+
 		ret = ice_qp_dis(vsi, qid);
 		if (ret) {
 			netdev_err(vsi->netdev, "ice_qp_dis error = %d\n", ret);
 			goto xsk_pool_if_up;
 		}
+
+		ret = ice_realloc_rx_xdp_bufs(rx_ring, pool_present);
+		if (ret)
+			goto xsk_pool_if_up;
 	}
 
 	pool_failure = pool_present ? ice_xsk_pool_enable(vsi, pool, qid) :
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.h b/drivers/net/ethernet/intel/ice/ice_xsk.h
index 21faec8e97db..8012d747f1bb 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.h
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.h
@@ -27,6 +27,7 @@ bool ice_xsk_any_rx_ring_ena(struct ice_vsi *vsi);
 void ice_xsk_clean_rx_ring(struct ice_rx_ring *rx_ring);
 void ice_xsk_clean_xdp_ring(struct ice_tx_ring *xdp_ring);
 bool ice_xmit_zc(struct ice_tx_ring *xdp_ring, u32 budget, int napi_budget);
+int ice_realloc_zc_buf(struct ice_vsi *vsi, bool zc);
 #else
 static inline bool
 ice_xmit_zc(struct ice_tx_ring __always_unused *xdp_ring,
@@ -72,5 +73,11 @@ ice_xsk_wakeup(struct net_device __always_unused *netdev,
 
 static inline void ice_xsk_clean_rx_ring(struct ice_rx_ring *rx_ring) { }
 static inline void ice_xsk_clean_xdp_ring(struct ice_tx_ring *xdp_ring) { }
+
+static inline int ice_realloc_zc_buf(struct ice_vsi __always_unused *vsi,
+				     bool __always_unused zc)
+{
+	return 0;
+}
 #endif /* CONFIG_XDP_SOCKETS */
 #endif /* !_ICE_XSK_H_ */
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
