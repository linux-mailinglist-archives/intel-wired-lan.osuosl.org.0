Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 147C74F038
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jun 2019 22:58:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ADECB8807B;
	Fri, 21 Jun 2019 20:58:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PJLERjdHEI8h; Fri, 21 Jun 2019 20:58:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 94696880F4;
	Fri, 21 Jun 2019 20:58:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0DDD21BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2019 20:58:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F2E9088098
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2019 20:58:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5vyKshF7Ht3f for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jun 2019 20:57:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 22C7C8807B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2019 20:57:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jun 2019 13:57:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,401,1557212400"; d="scan'208";a="154587204"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga008.jf.intel.com with ESMTP; 21 Jun 2019 13:57:56 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 21 Jun 2019 05:30:26 -0700
Message-Id: <20190621123026.6509-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190621123026.6509-1-anthony.l.nguyen@intel.com>
References: <20190621123026.6509-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 2/2] ice: Add support for AF_XDP
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
Cc: Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>

Add zero copy AF_XDP support.  This patch adds zero copy support for
Tx and Rx; code for zero copy is added to ice_xsk.h and ice_xsk.c.

For Tx, implement ndo_xsk_async_xmit. As with other drivers, reuse
existing XDP Tx queues for this task, since XDP_REDIRECT guarantees
mutual exclusion between different NAPI contexts based on CPU ID. In
turn, a netdev can XDP_REDIRECT to another netdev with a different
NAPI context, since the operation is bound to a specific core and each
core has its own hardware ring.

For Rx, allocate frames as MEM_TYPE_ZERO_COPY on queues that AF_XDP is
enabled.

Signed-off-by: Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile      |   1 +
 drivers/net/ethernet/intel/ice/ice.h         |  26 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c |   7 +
 drivers/net/ethernet/intel/ice/ice_lib.c     |  65 +-
 drivers/net/ethernet/intel/ice/ice_main.c    |  13 +
 drivers/net/ethernet/intel/ice/ice_txrx.c    |  84 +-
 drivers/net/ethernet/intel/ice/ice_txrx.h    |  35 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c     | 938 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_xsk.h     |  81 ++
 9 files changed, 1220 insertions(+), 30 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_xsk.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_xsk.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 2d140ba83781..54bad11e4736 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -18,3 +18,4 @@ ice-y := ice_main.o	\
 	 ice_ethtool.o
 ice-$(CONFIG_PCI_IOV) += ice_virtchnl_pf.o ice_sriov.o
 ice-$(CONFIG_DCB) += ice_dcb.o ice_dcb_lib.o
+ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 53adb93c6b61..3639cf8c75ac 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -34,6 +34,8 @@
 #include <linux/bpf.h>
 #include <linux/avf/virtchnl.h>
 #include <net/ipv6.h>
+#include <net/xdp_sock.h>
+#include "ice_xsk.h"
 #include "ice_devids.h"
 #include "ice_type.h"
 #include "ice_txrx.h"
@@ -308,6 +310,9 @@ struct ice_vsi {
 	struct ice_ring **xdp_rings;	 /* XDP ring array */
 	u16 num_xdp_txq;		 /* Used XDP queues */
 	u8 xdp_mapping_mode;		 /* ICE_MAP_MODE_[CONTIG|SCATTER] */
+	struct xdp_umem **xsk_umems;
+	u16 num_xsk_umems_used;
+	u16 num_xsk_umems;
 } ____cacheline_internodealigned_in_smp;
 
 /* struct that defines an interrupt vector */
@@ -449,6 +454,27 @@ static inline void ice_set_ring_xdp(struct ice_ring *ring)
 	ring->tx_buf[0].tx_flags |= ICE_TX_FLAGS_RING_XDP;
 }
 
+/**
+ * ice_xsk_umem - get XDP UMEM bound to a ring
+ * @ring - ring to use
+ *
+ * Returns a pointer to xdp_umem structure if there is an UMEM present,
+ * NULL otherwise.
+ */
+static inline struct xdp_umem *ice_xsk_umem(struct ice_ring *ring)
+{
+	struct xdp_umem **umems = ring->vsi->xsk_umems;
+	int qid = ring->q_index;
+
+	if (ice_ring_is_xdp(ring))
+		qid -= ring->vsi->num_xdp_txq;
+
+	if (!umems || !umems[qid] || !ice_is_xdp_ena_vsi(ring->vsi))
+		return NULL;
+
+	return umems[qid];
+}
+
 /**
  * ice_find_vsi_by_type - Find and return VSI of a given type
  * @pf: PF to search for VSI
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 2d9c184a2333..5c9f7a8bfd16 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -2593,6 +2593,13 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring)
 		return 0;
 	}
 
+	/* If there is a AF_XDP UMEM attached to any of Rx rings,
+	 * disallow changing the number of descriptors -- regardless
+	 * if the netdev is running or not.
+	 */
+	if (ice_xsk_any_rx_ring_ena(vsi))
+		return -EBUSY;
+
 	while (test_and_set_bit(__ICE_CFG_BUSY, pf->state)) {
 		timeout--;
 		if (!timeout)
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 09c6b9921ccd..cb998b97cde6 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -13,14 +13,17 @@
  */
 static int ice_setup_rx_ctx(struct ice_ring *ring)
 {
+	int chain_len = ICE_MAX_CHAINED_RX_BUFS;
 	struct ice_vsi *vsi = ring->vsi;
-	struct ice_hw *hw = &vsi->back->hw;
 	u32 rxdid = ICE_RXDID_FLEX_NIC;
 	struct ice_rlan_ctx rlan_ctx;
+	struct ice_hw *hw;
 	u32 regval;
 	u16 pf_q;
 	int err;
 
+	hw = &vsi->back->hw;
+
 	/* what is Rx queue number in global space of 2K Rx queues */
 	pf_q = vsi->rxq_map[ring->q_index];
 
@@ -34,10 +37,38 @@ static int ice_setup_rx_ctx(struct ice_ring *ring)
 			xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
 					 ring->q_index);
 
-		err = xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
-						 MEM_TYPE_PAGE_SHARED, NULL);
-		if (err)
-			return err;
+		ring->xsk_umem = ice_xsk_umem(ring);
+		if (ring->xsk_umem) {
+			xdp_rxq_info_unreg_mem_model(&ring->xdp_rxq);
+
+			ring->rx_buf_len = ring->xsk_umem->chunk_size_nohr -
+					   XDP_PACKET_HEADROOM;
+			/* For AF_XDP ZC, we disallow packets to span on
+			 * multiple buffers, thus letting us skip that
+			 * handling in the fast-path.
+			 */
+			chain_len = 1;
+			ring->zca.free = ice_zca_free;
+			err = xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
+							 MEM_TYPE_ZERO_COPY,
+							 &ring->zca);
+			if (err)
+				return err;
+
+			dev_info(&vsi->back->pdev->dev, "Registered XDP mem model MEM_TYPE_ZERO_COPY on Rx ring %d\n",
+				 ring->q_index);
+		} else {
+			if (!xdp_rxq_info_is_reg(&ring->xdp_rxq))
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
 	}
 	/* Receive Queue Base Address.
 	 * Indicates the starting address of the descriptor queue defined in
@@ -77,7 +108,7 @@ static int ice_setup_rx_ctx(struct ice_ring *ring)
 	 * than 5 x DBUF
 	 */
 	rlan_ctx.rxmax = min_t(u16, vsi->max_frame,
-			       ICE_MAX_CHAINED_RX_BUFS * ring->rx_buf_len);
+			       chain_len * ring->rx_buf_len);
 
 	/* Rx queue threshold in units of 64 */
 	rlan_ctx.lrxqthresh = 1;
@@ -115,7 +146,15 @@ static int ice_setup_rx_ctx(struct ice_ring *ring)
 	/* init queue specific tail register */
 	ring->tail = hw->hw_addr + QRX_TAIL(pf_q);
 	writel(0, ring->tail);
-	ice_alloc_rx_bufs(ring, ICE_DESC_UNUSED(ring));
+
+	err = ring->xsk_umem ?
+	      ice_alloc_rx_bufs_slow_zc(ring, ICE_DESC_UNUSED(ring)) :
+	      ice_alloc_rx_bufs(ring, ICE_DESC_UNUSED(ring));
+	if (err)
+		dev_info(&vsi->back->pdev->dev,
+			 "Failed allocate some buffers on %sRx ring %d (pf_q %d)\n",
+			 ring->xsk_umem ? "UMEM enabled " : "",
+			 ring->q_index, pf_q);
 
 	return 0;
 }
@@ -1770,7 +1809,17 @@ int ice_vsi_cfg_lan_txqs(struct ice_vsi *vsi)
  */
 int ice_vsi_cfg_xdp_txqs(struct ice_vsi *vsi)
 {
-	return ice_vsi_cfg_txqs(vsi, vsi->xdp_rings, vsi->num_xdp_txq);
+	int ret;
+	int i;
+
+	ret = ice_vsi_cfg_txqs(vsi, vsi->xdp_rings, vsi->num_xdp_txq);
+	if (ret)
+		return ret;
+
+	for (i = 0; i < vsi->num_xdp_txq; i++)
+		vsi->xdp_rings[i]->xsk_umem = ice_xsk_umem(vsi->xdp_rings[i]);
+
+	return ret;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 5d14627a6ab6..5f45548f2940 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1520,6 +1520,7 @@ static int ice_xdp_alloc_setup_rings(struct ice_vsi *vsi)
 		if (ice_setup_tx_ring(xdp_ring))
 			goto free_xdp_rings;
 		ice_set_ring_xdp(xdp_ring);
+		xdp_ring->xsk_umem = ice_xsk_umem(xdp_ring);
 	}
 
 	return 0;
@@ -1755,6 +1756,14 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
 	if (if_running)
 		ret = ice_up(vsi);
 
+	if (!ret && prog && vsi->xsk_umems)
+		ice_for_each_rxq(vsi, i) {
+			struct ice_ring *rx_ring = vsi->rx_rings[i];
+
+			if (rx_ring->xsk_umem)
+				napi_schedule(&rx_ring->q_vector->napi);
+		}
+
 skip_setting_prog:
 	return ret;
 }
@@ -1781,6 +1790,9 @@ static int ice_xdp(struct net_device *dev, struct netdev_bpf *xdp)
 	case XDP_QUERY_PROG:
 		xdp->prog_id = vsi->xdp_prog ? vsi->xdp_prog->aux->id : 0;
 		return 0;
+	case XDP_SETUP_XSK_UMEM:
+		return ice_xsk_umem_setup(vsi, xdp->xsk.umem,
+					  xdp->xsk.queue_id);
 	default:
 		NL_SET_ERR_MSG_MOD(xdp->extack, "Unknown XDP command");
 		return -EINVAL;
@@ -4731,4 +4743,5 @@ static const struct net_device_ops ice_netdev_ops = {
 	.ndo_tx_timeout = ice_tx_timeout,
 	.ndo_bpf = ice_xdp,
 	.ndo_xdp_xmit = ice_xdp_xmit,
+	.ndo_xsk_async_xmit = ice_xsk_async_xmit,
 };
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 0ed35cac8d60..d76237d82009 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -9,11 +9,15 @@
 #include <net/xdp.h>
 #include "ice.h"
 #include "ice_dcb_lib.h"
+#include "ice_xsk.h"
 
 #define ICE_RX_HDR_SIZE		256
 
 /* helper function for building cmd/type/offset */
-static __le64
+#ifndef CONFIG_XDP_SOCKETS
+static
+#endif
+__le64
 ice_build_ctob(u64 td_cmd, u64 td_offset, unsigned int size, u64 td_tag)
 {
 	return cpu_to_le64(ICE_TX_DESC_DTYPE_DATA |
@@ -67,6 +71,11 @@ void ice_clean_tx_ring(struct ice_ring *tx_ring)
 {
 	u16 i;
 
+	if (ice_ring_is_xdp(tx_ring) && tx_ring->xsk_umem) {
+		ice_xsk_clean_xdp_ring(tx_ring);
+		goto tx_skip_free;
+	}
+
 	/* ring already cleared, nothing to do */
 	if (!tx_ring->tx_buf)
 		return;
@@ -75,6 +84,7 @@ void ice_clean_tx_ring(struct ice_ring *tx_ring)
 	for (i = 0; i < tx_ring->count; i++)
 		ice_unmap_and_free_tx_buf(tx_ring, &tx_ring->tx_buf[i]);
 
+tx_skip_free:
 	memset(tx_ring->tx_buf, 0, sizeof(*tx_ring->tx_buf) * tx_ring->count);
 
 	/* Zero out the descriptor ring */
@@ -294,6 +304,11 @@ void ice_clean_rx_ring(struct ice_ring *rx_ring)
 	if (!rx_ring->rx_buf)
 		return;
 
+	if (rx_ring->xsk_umem) {
+		ice_xsk_clean_rx_ring(rx_ring);
+		goto rx_skip_free;
+	}
+
 	/* Free all the Rx ring sk_buffs */
 	for (i = 0; i < rx_ring->count; i++) {
 		struct ice_rx_buf *rx_buf = &rx_ring->rx_buf[i];
@@ -321,6 +336,7 @@ void ice_clean_rx_ring(struct ice_ring *rx_ring)
 		rx_buf->page_offset = 0;
 	}
 
+rx_skip_free:
 	memset(rx_ring->rx_buf, 0, sizeof(*rx_ring->rx_buf) * rx_ring->count);
 
 	/* Zero out the descriptor ring */
@@ -407,7 +423,10 @@ int ice_setup_rx_ring(struct ice_ring *rx_ring)
  * @rx_ring: ring to bump
  * @val: new head index
  */
-static void ice_release_rx_desc(struct ice_ring *rx_ring, u32 val)
+#ifndef CONFIG_XDP_SOCKETS
+static
+#endif
+void ice_release_rx_desc(struct ice_ring *rx_ring, u32 val)
 {
 	rx_ring->next_to_use = val;
 
@@ -440,7 +459,10 @@ static unsigned int ice_rx_offset(struct ice_ring *rx_ring)
  *
  * This function updates the XDP Tx ring tail register.
  */
-static void ice_xdp_ring_update_tail(struct ice_ring *xdp_ring)
+#ifndef CONFIG_XDP_SOCKETS
+static
+#endif
+void ice_xdp_ring_update_tail(struct ice_ring *xdp_ring)
 {
 	/* Force memory writes to complete before letting h/w
 	 * know there are new descriptors to fetch.
@@ -455,8 +477,10 @@ static void ice_xdp_ring_update_tail(struct ice_ring *xdp_ring)
  * @size: packet data size
  * @xdp_ring: XDP ring for transmission
  */
-static int
-ice_xmit_xdp_ring(void *data, u16 size, struct ice_ring *xdp_ring)
+#ifndef CONFIG_XDP_SOCKETS
+static
+#endif
+int ice_xmit_xdp_ring(void *data, u16 size, struct ice_ring *xdp_ring)
 {
 	u16 i = xdp_ring->next_to_use;
 	struct ice_tx_desc *tx_desc;
@@ -603,8 +627,10 @@ ice_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
  * should be called when a batch of packets has been processed in the
  * napi loop.
  */
-static void
-ice_finalize_xdp_rx(struct ice_ring *rx_ring, unsigned int xdp_res)
+#ifndef CONFIG_XDP_SOCKETS
+static
+#endif
+void ice_finalize_xdp_rx(struct ice_ring *rx_ring, unsigned int xdp_res)
 {
 	if (xdp_res & ICE_XDP_REDIR)
 		xdp_do_flush_map();
@@ -988,7 +1014,7 @@ static void ice_put_rx_buf(struct ice_ring *rx_ring, struct ice_rx_buf *rx_buf)
 }
 
 /**
- * ice_cleanup_headers - Correct empty headers
+ * ice_cleanup_hdrs - Correct empty headers
  * @skb: pointer to current skb being fixed
  *
  * Also address the case where we are pulling data in on pages only
@@ -999,7 +1025,10 @@ static void ice_put_rx_buf(struct ice_ring *rx_ring, struct ice_rx_buf *rx_buf)
  *
  * Returns true if an error was encountered and skb was freed.
  */
-static bool ice_cleanup_headers(struct sk_buff *skb)
+#ifndef CONFIG_XDP_SOCKETS
+static
+#endif
+bool ice_cleanup_hdrs(struct sk_buff *skb)
 {
 	/* if eth_skb_pad returns an error the skb was freed */
 	if (eth_skb_pad(skb))
@@ -1018,11 +1047,13 @@ static bool ice_cleanup_headers(struct sk_buff *skb)
  * The status_error_len doesn't need to be shifted because it begins
  * at offset zero.
  */
-static bool
+#ifndef CONFIG_XDP_SOCKETS
+static
+#endif
+bool
 ice_test_staterr(union ice_32b_rx_flex_desc *rx_desc, const u16 stat_err_bits)
 {
-	return !!(rx_desc->wb.status_error0 &
-		  cpu_to_le16(stat_err_bits));
+	return !!(rx_desc->wb.status_error0 & cpu_to_le16(stat_err_bits));
 }
 
 /**
@@ -1167,7 +1198,10 @@ ice_rx_csum(struct ice_vsi *vsi, struct sk_buff *skb,
  * order to populate the hash, checksum, VLAN, protocol, and
  * other fields within the skb.
  */
-static void
+#ifndef CONFIG_XDP_SOCKETS
+static
+#endif
+void
 ice_process_skb_fields(struct ice_ring *rx_ring,
 		       union ice_32b_rx_flex_desc *rx_desc,
 		       struct sk_buff *skb, u8 ptype)
@@ -1189,7 +1223,10 @@ ice_process_skb_fields(struct ice_ring *rx_ring,
  * This function sends the completed packet (via. skb) up the stack using
  * gro receive functions (with/without VLAN tag)
  */
-static void
+#ifndef CONFIG_XDP_SOCKETS
+static
+#endif
+void
 ice_receive_skb(struct ice_ring *rx_ring, struct sk_buff *skb, u16 vlan_tag)
 {
 	if ((rx_ring->netdev->features & NETIF_F_HW_VLAN_CTAG_RX) &&
@@ -1330,7 +1367,7 @@ static int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
 		/* correct empty headers and pad skb if needed (to make valid
 		 * ethernet frame
 		 */
-		if (ice_cleanup_headers(skb)) {
+		if (ice_cleanup_hdrs(skb)) {
 			skb = NULL;
 			continue;
 		}
@@ -1683,9 +1720,14 @@ int ice_napi_poll(struct napi_struct *napi, int budget)
 	/* Since the actual Tx work is minimal, we can give the Tx a larger
 	 * budget and be more aggressive about cleaning up the Tx descriptors.
 	 */
-	ice_for_each_ring(ring, q_vector->tx)
-		if (!ice_clean_tx_irq(vsi, ring, budget))
+	ice_for_each_ring(ring, q_vector->tx) {
+		bool wd = ring->xsk_umem ?
+			  ice_clean_tx_irq_zc(vsi, ring) :
+			  ice_clean_tx_irq(vsi, ring, budget);
+
+		if (!wd)
 			clean_complete = false;
+	}
 
 	/* Handle case where we are called by netpoll with a budget of 0 */
 	if (budget <= 0)
@@ -1700,7 +1742,13 @@ int ice_napi_poll(struct napi_struct *napi, int budget)
 	ice_for_each_ring(ring, q_vector->rx) {
 		int cleaned;
 
-		cleaned = ice_clean_rx_irq(ring, budget_per_ring);
+		/* A dedicated path for zero-copy allows making a single
+		 * comparison in the irq context instead of many inside the
+		 * ice_clean_rx_irq function and makes the codebase cleaner.
+		 */
+		cleaned = ring->xsk_umem ?
+			  ice_clean_rx_irq_zc(ring, budget_per_ring) :
+			  ice_clean_rx_irq(ring, budget_per_ring);
 		work_done += cleaned;
 		/* if we clean as many as budgeted, we must not be done */
 		if (cleaned >= budget_per_ring)
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index 355834b4abda..8f857e423739 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -92,9 +92,17 @@ struct ice_tx_offload_params {
 struct ice_rx_buf {
 	struct sk_buff *skb;
 	dma_addr_t dma;
-	struct page *page;
-	unsigned int page_offset;
-	u16 pagecnt_bias;
+	union {
+		struct {
+			struct page *page;
+			unsigned int page_offset;
+			u16 pagecnt_bias;
+		};
+		struct {
+			void *addr;
+			u64 handle;
+		};
+	};
 };
 
 struct ice_q_stats {
@@ -202,6 +210,8 @@ struct ice_ring {
 
 	struct rcu_head rcu;		/* to avoid race on free */
 	struct bpf_prog *xdp_prog;
+	struct xdp_umem *xsk_umem;
+	struct zero_copy_allocator zca;
 	/* CL3 - 3rd cacheline starts here */
 	struct xdp_rxq_info xdp_rxq;
 	/* CLX - the below items are only accessed infrequently and should be
@@ -244,6 +254,8 @@ struct ice_ring_container {
 #define ice_for_each_ring(pos, head) \
 	for (pos = (head).ring; pos; pos = pos->next)
 
+union ice_32b_rx_flex_desc;
+
 bool ice_alloc_rx_bufs(struct ice_ring *rxr, u16 cleaned_count);
 netdev_tx_t ice_start_xmit(struct sk_buff *skb, struct net_device *netdev);
 void ice_clean_tx_ring(struct ice_ring *tx_ring);
@@ -253,5 +265,20 @@ int ice_setup_rx_ring(struct ice_ring *rx_ring);
 void ice_free_tx_ring(struct ice_ring *tx_ring);
 void ice_free_rx_ring(struct ice_ring *rx_ring);
 int ice_napi_poll(struct napi_struct *napi, int budget);
-
+#ifdef CONFIG_XDP_SOCKETS
+void ice_finalize_xdp_rx(struct ice_ring *rx_ring, unsigned int xdp_res);
+void ice_release_rx_desc(struct ice_ring *rx_ring, u32 val);
+bool
+ice_test_staterr(union ice_32b_rx_flex_desc *rx_desc, const u16 stat_err_bits);
+void
+ice_process_skb_fields(struct ice_ring *rx_ring,
+		       union ice_32b_rx_flex_desc *rx_desc,
+		       struct sk_buff *skb, u8 ptype);
+void
+ice_receive_skb(struct ice_ring *rx_ring, struct sk_buff *skb, u16 vlan_tag);
+bool ice_cleanup_hdrs(struct sk_buff *skb);
+void ice_xdp_ring_update_tail(struct ice_ring *xdp_ring);
+__le64 ice_build_ctob(u64 td_cmd, u64 td_offset, unsigned int size, u64 td_tag);
+int ice_xmit_xdp_ring(void *data, u16 size, struct ice_ring *xdp_ring);
+#endif /* CONFIG_XDP_SOCKETS */
 #endif /* _ICE_TXRX_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
new file mode 100644
index 000000000000..e4fb9b91cc10
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -0,0 +1,938 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c) 2019, Intel Corporation. */
+
+#include "ice.h"
+#include "ice_type.h"
+#include "ice_xsk.h"
+#include "ice_txrx.h"
+#include "ice_lib.h"
+#include <linux/bpf_trace.h>
+#include <net/xdp_sock.h>
+#include <net/xdp.h>
+
+/**
+ * ice_xsk_alloc_umems - allocate a UMEM region for an XDP socket
+ * @vsi: VSI to allocate the UMEM on
+ *
+ * Returns 0 on success, negative on error
+ */
+static int ice_xsk_alloc_umems(struct ice_vsi *vsi)
+{
+	if (vsi->xsk_umems)
+		return 0;
+
+	vsi->xsk_umems = kcalloc(vsi->num_xsk_umems, sizeof(*vsi->xsk_umems),
+				 GFP_KERNEL);
+
+	if (!vsi->xsk_umems) {
+		vsi->num_xsk_umems = 0;
+		return -ENOMEM;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_xsk_add_umem - add a UMEM region for XDP sockets
+ * @vsi: VSI to which the UMEM will be added
+ * @umem: pointer to a requested UMEM region
+ * @qid: queue ID
+ *
+ * Returns 0 on success, negative on error
+ */
+static int ice_xsk_add_umem(struct ice_vsi *vsi, struct xdp_umem *umem, u16 qid)
+{
+	int err;
+
+	err = ice_xsk_alloc_umems(vsi);
+	if (err)
+		return err;
+
+	vsi->xsk_umems[qid] = umem;
+	vsi->num_xsk_umems_used++;
+
+	return 0;
+}
+
+/**
+ * ice_xsk_remove_umem - Remove an UMEM for a certain ring/qid
+ * @vsi: VSI from which the VSI will be removed
+ * @qid: Ring/qid associated with the UMEM
+ */
+static void ice_xsk_remove_umem(struct ice_vsi *vsi, u16 qid)
+{
+	vsi->xsk_umems[qid] = NULL;
+	vsi->num_xsk_umems_used--;
+
+	if (vsi->num_xsk_umems_used == 0) {
+		kfree(vsi->xsk_umems);
+		vsi->xsk_umems = NULL;
+		vsi->num_xsk_umems = 0;
+	}
+}
+
+/**
+ * ice_xsk_umem_dma_map - DMA map UMEM region for XDP sockets
+ * @vsi: VSI to map the UMEM region
+ * @umem: UMEM to map
+ *
+ * Returns 0 on success, negative on error
+ */
+static int ice_xsk_umem_dma_map(struct ice_vsi *vsi, struct xdp_umem *umem)
+{
+	struct ice_pf *pf = vsi->back;
+	struct device *dev;
+	unsigned int i;
+
+	dev = &pf->pdev->dev;
+	for (i = 0; i < umem->npgs; i++) {
+		dma_addr_t dma = dma_map_page_attrs(dev, umem->pgs[i], 0,
+						    PAGE_SIZE,
+						    DMA_BIDIRECTIONAL,
+						    ICE_RX_DMA_ATTR);
+		if (dma_mapping_error(dev, dma)) {
+			dev_dbg(dev,
+				"XSK UMEM DMA mapping error on page num %d", i);
+			goto out_unmap;
+		}
+
+		umem->pages[i].dma = dma;
+	}
+
+	return 0;
+
+out_unmap:
+	for (; i > 0; i--) {
+		dma_unmap_page_attrs(dev, umem->pages[i].dma, PAGE_SIZE,
+				     DMA_BIDIRECTIONAL, ICE_RX_DMA_ATTR);
+		umem->pages[i].dma = 0;
+	}
+
+	return -EFAULT;
+}
+
+/**
+ * ice_xsk_umem_dma_unmap - DMA unmap UMEM region for XDP sockets
+ * @vsi: VSI from which the UMEM will be unmapped
+ * @umem: UMEM to unmap
+ */
+static void ice_xsk_umem_dma_unmap(struct ice_vsi *vsi, struct xdp_umem *umem)
+{
+	struct ice_pf *pf = vsi->back;
+	struct device *dev;
+	unsigned int i;
+
+	dev = &pf->pdev->dev;
+	for (i = 0; i < umem->npgs; i++) {
+		dma_unmap_page_attrs(dev, umem->pages[i].dma, PAGE_SIZE,
+				     DMA_BIDIRECTIONAL, ICE_RX_DMA_ATTR);
+
+		umem->pages[i].dma = 0;
+	}
+}
+
+/**
+ * ice_xsk_umem_disable - disable a UMEM region
+ * @vsi: Current VSI
+ * @qid: queue ID
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int ice_xsk_umem_disable(struct ice_vsi *vsi, u16 qid)
+{
+	if (!vsi->xsk_umems || qid >= vsi->num_xsk_umems ||
+	    !vsi->xsk_umems[qid])
+		return -EINVAL;
+
+	ice_xsk_umem_dma_unmap(vsi, vsi->xsk_umems[qid]);
+	ice_xsk_remove_umem(vsi, qid);
+
+	return 0;
+}
+
+/**
+ * ice_xsk_umem_enable - enable a UMEM region
+ * @vsi: Current VSI
+ * @umem: pointer to a requested UMEM region
+ * @qid: queue ID
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int
+ice_xsk_umem_enable(struct ice_vsi *vsi, struct xdp_umem *umem, u16 qid)
+{
+	struct xdp_umem_fq_reuse *reuseq;
+	int err;
+
+	if (vsi->type != ICE_VSI_PF)
+		return -EINVAL;
+
+	vsi->num_xsk_umems = min_t(u16, vsi->num_rxq, vsi->num_txq);
+	if (qid >= vsi->num_xsk_umems)
+		return -EINVAL;
+
+	if (vsi->xsk_umems && vsi->xsk_umems[qid])
+		return -EBUSY;
+
+	reuseq = xsk_reuseq_prepare(vsi->rx_rings[0]->count);
+	if (!reuseq)
+		return -ENOMEM;
+
+	xsk_reuseq_free(xsk_reuseq_swap(umem, reuseq));
+
+	err = ice_xsk_umem_dma_map(vsi, umem);
+	if (err)
+		return err;
+
+	err = ice_xsk_add_umem(vsi, umem, qid);
+	if (err)
+		return err;
+
+	return 0;
+}
+
+/**
+ * ice_xsk_umem_setup - enable/disable a UMEM region depending on its state
+ * @vsi: Current VSI
+ * @umem: UMEM to enable/associate to a ring, NULL to disable
+ * @qid: queue ID
+ *
+ * Returns 0 on success, negative on failure
+ */
+int ice_xsk_umem_setup(struct ice_vsi *vsi, struct xdp_umem *umem, u16 qid)
+{
+	bool if_running, umem_present = !!umem;
+	int ret = 0, umem_failure = 0;
+
+	if_running = netif_running(vsi->netdev) && ice_is_xdp_ena_vsi(vsi);
+
+	if (if_running && !test_and_set_bit(__ICE_DOWN, vsi->state)) {
+		ret = ice_down(vsi);
+		if (ret) {
+			netdev_err(vsi->netdev, "Could not bring down the interface for UMEM setup, error = %d",
+				   ret);
+			goto xsk_umem_if_up;
+		}
+	}
+
+	umem_failure = umem_present ? ice_xsk_umem_enable(vsi, umem, qid) :
+				      ice_xsk_umem_disable(vsi, qid);
+
+xsk_umem_if_up:
+	if (if_running) {
+		ret = ice_up(vsi);
+		if (!ret && umem_present)
+			napi_schedule(&vsi->xdp_rings[qid]->q_vector->napi);
+		else if (ret)
+			netdev_err(vsi->netdev, "Could not bring down the interface for UMEM setup, error = %d",
+				   ret);
+	}
+
+	if (umem_failure) {
+		netdev_err(vsi->netdev, "Could not %sable UMEM, error = %d",
+			   umem_present ? "en" : "dis", umem_failure);
+		return umem_failure;
+	}
+
+	return ret;
+}
+
+/**
+ * ice_zca_free - Callback for MEM_TYPE_ZERO_COPY allocations
+ * @zca: zero-cpoy allocator
+ * @handle: Buffer handle
+ */
+void ice_zca_free(struct zero_copy_allocator *zca, unsigned long handle)
+{
+	struct ice_rx_buf *rx_buf;
+	struct ice_ring *rx_ring;
+	struct xdp_umem *umem;
+	u64 hr, mask;
+	u16 nta;
+
+	rx_ring = container_of(zca, struct ice_ring, zca);
+	umem = rx_ring->xsk_umem;
+	hr = umem->headroom + XDP_PACKET_HEADROOM;
+
+	mask = umem->chunk_mask;
+
+	nta = rx_ring->next_to_alloc;
+	rx_buf = &rx_ring->rx_buf[nta];
+
+	nta++;
+	rx_ring->next_to_alloc = (nta < rx_ring->count) ? nta : 0;
+
+	handle &= mask;
+
+	rx_buf->dma = xdp_umem_get_dma(umem, handle);
+	rx_buf->dma += hr;
+
+	rx_buf->addr = xdp_umem_get_data(umem, handle);
+	rx_buf->addr = (u8 *)rx_buf->addr + hr;
+
+	rx_buf->handle = (u64)handle + umem->headroom;
+}
+
+/**
+ * ice_alloc_buf_fast_zc - Retrieve buffer address from XDP umem
+ * @rx_ring: ring with an xdp_umem bound to it
+ * @rx_buf: buffer to which xsk page address will be assigned
+ *
+ * This function allocates an Rx buffer in the hot path.
+ * The buffer can come from fill queue or recycle queue.
+ *
+ * Returns true if an assignment was successful, false if not.
+ */
+static __always_inline bool
+ice_alloc_buf_fast_zc(struct ice_ring *rx_ring, struct ice_rx_buf *rx_buf)
+{
+	struct xdp_umem *umem = rx_ring->xsk_umem;
+	void *addr = rx_buf->addr;
+	u64 handle, hr;
+
+	if (addr) {
+		rx_ring->rx_stats.page_reuse_count++;
+		return true;
+	}
+
+	if (!xsk_umem_peek_addr(umem, &handle)) {
+		rx_ring->rx_stats.alloc_page_failed++;
+		return false;
+	}
+
+	hr = umem->headroom + XDP_PACKET_HEADROOM;
+
+	rx_buf->dma = xdp_umem_get_dma(umem, handle);
+	rx_buf->dma += hr;
+	rx_buf->addr = xdp_umem_get_data(umem, handle);
+	rx_buf->addr = (u8 *)rx_buf->addr + hr;
+	rx_buf->handle = handle + umem->headroom;
+
+	xsk_umem_discard_addr(umem);
+	return true;
+}
+
+/**
+ * ice_alloc_buf_slow_zc - Retrieve buffer address from XDP umem
+ * @rx_ring: ring with an xdp_umem bound to it
+ * @rx_buf: buffer to which xsk page address will be assigned
+ *
+ * This function allocates an Rx buffer in the slow path.
+ * The buffer can come from fill queue or recycle queue.
+ *
+ * Returns true if an assignment was successful, false if not.
+ */
+static __always_inline bool
+ice_alloc_buf_slow_zc(struct ice_ring *rx_ring, struct ice_rx_buf *rx_buf)
+{
+	struct xdp_umem *umem = rx_ring->xsk_umem;
+	u64 handle, headroom;
+
+	if (!xsk_umem_peek_addr_rq(umem, &handle)) {
+		rx_ring->rx_stats.alloc_page_failed++;
+		return false;
+	}
+
+	handle &= umem->chunk_mask;
+	headroom = umem->headroom + XDP_PACKET_HEADROOM;
+
+	rx_buf->dma = xdp_umem_get_dma(umem, handle) + headroom;
+	rx_buf->addr = xdp_umem_get_data(umem, handle) + headroom;
+	rx_buf->handle = handle + umem->headroom;
+
+	xsk_umem_discard_addr_rq(umem);
+	return true;
+}
+
+/**
+ * ice_alloc_rx_bufs_zc - allocate a number of Rx buffers
+ * @rx_ring: Rx ring
+ * @count: The number of buffers to allocate
+ * @rx_buf: Pointer to a buffer which will be allocated
+ *
+ * This function allocates a number of Rx buffers from the fill ring
+ * or the internal recycle mechanism and places them on the Rx ring.
+ *
+ * Returns false if all allocations were successful, true if any fail.
+ */
+static bool
+ice_alloc_rx_bufs_zc(struct ice_ring *rx_ring, int count,
+		     bool alloc(struct ice_ring *rx_ring,
+				struct ice_rx_buf *rx_buf))
+{
+	union ice_32b_rx_flex_desc *rx_desc;
+	u16 ntu = rx_ring->next_to_use;
+	struct ice_rx_buf *rx_buf;
+	bool ret = false;
+
+	if (!count)
+		return ret;
+
+	rx_desc = ICE_RX_DESC(rx_ring, ntu);
+	rx_buf = &rx_ring->rx_buf[ntu];
+
+	do {
+		if (!alloc(rx_ring, rx_buf)) {
+			ret = true;
+			goto no_bufs;
+		}
+
+		dma_sync_single_range_for_device(rx_ring->dev, rx_buf->dma, 0,
+						 rx_ring->rx_buf_len,
+						 DMA_BIDIRECTIONAL);
+
+		rx_desc->read.pkt_addr = cpu_to_le64(rx_buf->dma);
+		rx_desc->wb.status_error0 = 0;
+
+		rx_desc++;
+		rx_buf++;
+		ntu++;
+
+		if (unlikely(ntu == rx_ring->count)) {
+			rx_desc = ICE_RX_DESC(rx_ring, 0);
+			rx_buf = rx_ring->rx_buf;
+			ntu = 0;
+		}
+	} while (--count);
+
+no_bufs:
+	if (rx_ring->next_to_use != ntu)
+		ice_release_rx_desc(rx_ring, ntu);
+
+	return ret;
+}
+
+/**
+ * ice_alloc_rx_bufs_fast_zc - allocate zero copy bufs in the hot path
+ * @rx_ring: Rx ring
+ * @count: number of bufs to allocate
+ *
+ * Returns false on success, true on failure.
+ */
+static bool ice_alloc_rx_bufs_fast_zc(struct ice_ring *rx_ring, u16 count)
+{
+	return ice_alloc_rx_bufs_zc(rx_ring, count,
+				    ice_alloc_buf_fast_zc);
+}
+
+/**
+ * ice_alloc_rx_bufs_slow_zc - allocate zero copy bufs in the slow path
+ * @rx_ring: Rx ring
+ * @count: number of bufs to allocate
+ *
+ * Returns false on success, true on failure.
+ */
+bool ice_alloc_rx_bufs_slow_zc(struct ice_ring *rx_ring, u16 count)
+{
+	return ice_alloc_rx_bufs_zc(rx_ring, count,
+				    ice_alloc_buf_slow_zc);
+}
+
+/**
+ * ice_bump_ntc - Bump the next_to_clean counter of an Rx ring
+ * @rx_ring: Rx ring
+ */
+static void ice_bump_ntc(struct ice_ring *rx_ring)
+{
+	int ntc = rx_ring->next_to_clean + 1;
+
+	ntc = (ntc < rx_ring->count) ? ntc : 0;
+	rx_ring->next_to_clean = ntc;
+	prefetch(ICE_RX_DESC(rx_ring, ntc));
+}
+
+/**
+ * ice_get_rx_buf_zc - Fetch the current Rx buffer
+ * @rx_ring: Rx ring
+ * @size: size of a buffer
+ *
+ * This function returns the current, received Rx buffer and does
+ * DMA synchronization.
+ *
+ * Returns a pointer to the received Rx buffer.
+ */
+static struct ice_rx_buf *ice_get_rx_buf_zc(struct ice_ring *rx_ring, int size)
+{
+	struct ice_rx_buf *rx_buf;
+
+	rx_buf = &rx_ring->rx_buf[rx_ring->next_to_clean];
+
+	dma_sync_single_range_for_cpu(rx_ring->dev, rx_buf->dma, 0,
+				      size, DMA_BIDIRECTIONAL);
+
+	return rx_buf;
+}
+
+/**
+ * ice_reuse_rx_buf_zc - reuse an Rx buffer
+ * @rx_ring: Rx ring
+ * @old_buf: The buffer to recycle
+ *
+ * This function recycles a finished Rx buffer, and places it on the recycle
+ * queue (next_to_alloc).
+ */
+static void
+ice_reuse_rx_buf_zc(struct ice_ring *rx_ring, struct ice_rx_buf *old_buf)
+{
+	unsigned long mask = (unsigned long)rx_ring->xsk_umem->chunk_mask;
+	u64 hr = rx_ring->xsk_umem->headroom + XDP_PACKET_HEADROOM;
+	u16 nta = rx_ring->next_to_alloc;
+	struct ice_rx_buf *new_buf;
+
+	new_buf = &rx_ring->rx_buf[rx_ring->next_to_alloc];
+	nta++;
+	rx_ring->next_to_alloc = (nta < rx_ring->count) ? nta : 0;
+
+	new_buf->dma = (old_buf->dma & mask) + hr;
+	new_buf->addr = (void *)(((unsigned long)old_buf->addr & mask) + hr);
+	new_buf->handle = (old_buf->handle & mask);
+	new_buf->handle += rx_ring->xsk_umem->headroom;
+
+	old_buf->addr = NULL;
+}
+
+/**
+ * ice_construct_skb_zc - Create an sk_buff from zero-copy buffer
+ * @rx_ring: Rx ring
+ * @rx_buf: zero-copy Rx buffer
+ * @xdp: XDP buffer
+ *
+ * This function allocates a new skb from a zero-copy Rx buffer.
+ *
+ * Returns the skb on success, NULL on failure.
+ */
+static struct sk_buff *
+ice_construct_skb_zc(struct ice_ring *rx_ring, struct ice_rx_buf *rx_buf,
+		     struct xdp_buff *xdp)
+{
+	u64 datasize_hard = (u8 *)xdp->data_end - (u8 *)xdp->data_hard_start;
+	u64 metasize = (u8 *)xdp->data - (u8 *)xdp->data_meta;
+	u64 datasize = (u8 *)xdp->data_end - (u8 *)xdp->data;
+	struct sk_buff *skb;
+
+	skb = __napi_alloc_skb(&rx_ring->q_vector->napi, datasize_hard,
+			       GFP_ATOMIC | __GFP_NOWARN);
+	if (unlikely(!skb))
+		return NULL;
+
+	skb_reserve(skb, (u8 *)xdp->data - (u8 *)xdp->data_hard_start);
+	memcpy(__skb_put(skb, datasize), xdp->data, datasize);
+	if (metasize)
+		skb_metadata_set(skb, metasize);
+
+	ice_reuse_rx_buf_zc(rx_ring, rx_buf);
+
+	return skb;
+}
+
+/**
+ * ice_run_xdp_zc - Executes an XDP program in zero-copy path
+ * @rx_ring: Rx ring
+ * @xdp: xdp_buff used as input to the XDP program
+ * @xdp_prog: XDP program to run
+ *
+ * Returns any of ICE_XDP_{PASS, CONSUMED, TX, REDIR}
+ */
+static int
+ice_run_xdp_zc(struct ice_ring *rx_ring, struct xdp_buff *xdp,
+	       struct bpf_prog *xdp_prog)
+{
+	u16 hard_size = (u8 *)xdp->data_end - (u8 *)xdp->data_hard_start;
+	int err, result = ICE_XDP_PASS;
+	struct ice_ring *xdp_ring;
+	u32 act;
+
+	act = bpf_prog_run_xdp(xdp_prog, xdp);
+	xdp->handle += (u8 *)xdp->data - (u8 *)xdp->data_hard_start;
+	switch (act) {
+	case XDP_PASS:
+		break;
+	case XDP_TX:
+		xdp_ring = rx_ring->vsi->xdp_rings[rx_ring->q_index];
+		result = ice_xmit_xdp_ring(xdp->data, hard_size, xdp_ring);
+		break;
+	case XDP_REDIRECT:
+		err = xdp_do_redirect(rx_ring->netdev, xdp, xdp_prog);
+		result = !err ? ICE_XDP_REDIR : ICE_XDP_CONSUMED;
+		break;
+	default:
+		bpf_warn_invalid_xdp_action(act);
+		/* fallthrough -- not supported action */
+	case XDP_ABORTED:
+		trace_xdp_exception(rx_ring->netdev, xdp_prog, act);
+		/* fallthrough -- handle aborts by dropping frame */
+	case XDP_DROP:
+		result = ICE_XDP_CONSUMED;
+		break;
+	}
+
+	return result;
+}
+
+/**
+ * ice_clean_rx_irq_zc - consimes packets from the hardware ring
+ * @rx_ring: AF_XDP Rx ring
+ * @budget: NAPI budget
+ *
+ * Returns number of processed packets on success, remaining budget on failure.
+ */
+int ice_clean_rx_irq_zc(struct ice_ring *rx_ring, int budget)
+{
+	unsigned int total_rx_bytes = 0, total_rx_packets = 0;
+	u16 cleaned_count = ICE_DESC_UNUSED(rx_ring);
+	unsigned int xdp_xmit = 0;
+	struct bpf_prog *xdp_prog;
+	bool failure = false;
+	struct xdp_buff xdp;
+
+	xdp.rxq = &rx_ring->xdp_rxq;
+
+	while (likely(total_rx_packets < (unsigned int)budget)) {
+		union ice_32b_rx_flex_desc *rx_desc;
+		unsigned int size, xdp_res = 0;
+		struct ice_rx_buf *rx_buf;
+		struct sk_buff *skb;
+		u16 stat_err_bits;
+		u16 vlan_tag = 0;
+		u8 rx_ptype;
+
+		if (cleaned_count >= ICE_RX_BUF_WRITE) {
+			failure |= ice_alloc_rx_bufs_fast_zc(rx_ring,
+							     cleaned_count);
+			cleaned_count = 0;
+		}
+
+		rx_desc = ICE_RX_DESC(rx_ring, rx_ring->next_to_clean);
+
+		stat_err_bits = BIT(ICE_RX_FLEX_DESC_STATUS0_DD_S);
+		if (!ice_test_staterr(rx_desc, stat_err_bits))
+			break;
+
+		/* This memory barrier is needed to keep us from reading
+		 * any other fields out of the rx_desc until we have
+		 * verified the descriptor has been written back.
+		 */
+		dma_rmb();
+
+		size = le16_to_cpu(rx_desc->wb.pkt_len) &
+				   ICE_RX_FLX_DESC_PKT_LEN_M;
+
+		if (!size)
+			break;
+
+		rx_buf = ice_get_rx_buf_zc(rx_ring, size);
+
+		xdp.data = rx_buf->addr;
+		xdp.data_hard_start = (u8 *)xdp.data - XDP_PACKET_HEADROOM;
+		xdp_set_data_meta_invalid(&xdp);
+		xdp.data_end = (u8 *)xdp.data + size;
+		xdp.handle = rx_buf->handle;
+
+		rcu_read_lock();
+		xdp_prog = READ_ONCE(rx_ring->xdp_prog);
+		if (!xdp_prog) {
+			rcu_read_unlock();
+			goto xdp_pass_path;
+		}
+
+		xdp_res = ice_run_xdp_zc(rx_ring, &xdp, xdp_prog);
+		rcu_read_unlock();
+		if (xdp_res) {
+			if (xdp_res & (ICE_XDP_TX | ICE_XDP_REDIR)) {
+				xdp_xmit |= xdp_res;
+				rx_buf->addr = NULL;
+			} else {
+				ice_reuse_rx_buf_zc(rx_ring, rx_buf);
+			}
+
+			total_rx_bytes += size;
+			total_rx_packets++;
+			cleaned_count++;
+
+			ice_bump_ntc(rx_ring);
+			continue;
+		}
+
+xdp_pass_path:
+		/* XDP_PASS path */
+		skb = ice_construct_skb_zc(rx_ring, rx_buf, &xdp);
+		if (!skb) {
+			rx_ring->rx_stats.alloc_buf_failed++;
+			break;
+		}
+
+		cleaned_count++;
+		ice_bump_ntc(rx_ring);
+
+		rx_ptype = le16_to_cpu(rx_desc->wb.ptype_flex_flags0) &
+				       ICE_RX_FLEX_DESC_PTYPE_M;
+		stat_err_bits = BIT(ICE_RX_FLEX_DESC_STATUS0_L2TAG1P_S);
+		if (ice_test_staterr(rx_desc, stat_err_bits))
+			vlan_tag = le16_to_cpu(rx_desc->wb.l2tag1);
+
+		if (ice_cleanup_hdrs(skb)) {
+			skb = NULL;
+			continue;
+		}
+
+		total_rx_bytes += skb->len;
+		total_rx_packets++;
+
+		ice_process_skb_fields(rx_ring, rx_desc, skb, rx_ptype);
+
+		ice_receive_skb(rx_ring, skb, vlan_tag);
+	}
+
+	ice_finalize_xdp_rx(rx_ring, xdp_xmit);
+
+	return failure ? budget : (int)total_rx_packets;
+}
+
+/**
+ * ice_xmit_zc - Completes AF_XDP entries, and cleans XDP entries
+ * @xdp_ring: XDP Tx ring
+ * @budget: used to determine if we are in netpoll
+ *
+ * Returns true if cleanup/transmission is done.
+ */
+static bool ice_xmit_zc(struct ice_ring *xdp_ring, int budget)
+{
+	struct ice_tx_desc *tx_desc = NULL;
+	bool work_done = true;
+	dma_addr_t dma;
+	u32 len;
+
+	while (likely(budget-- > 0)) {
+		struct ice_tx_buf *tx_buf;
+
+		if (!unlikely(ICE_DESC_UNUSED(xdp_ring))) {
+			xdp_ring->tx_stats.tx_busy++;
+			work_done = false;
+			break;
+		}
+
+		if (!xsk_umem_consume_tx(xdp_ring->xsk_umem, &dma, &len))
+			break;
+
+		dma_sync_single_for_device(xdp_ring->dev, dma, len,
+					   DMA_BIDIRECTIONAL);
+
+		tx_buf = &xdp_ring->tx_buf[xdp_ring->next_to_use];
+		tx_buf->bytecount = len;
+
+		tx_desc = ICE_TX_DESC(xdp_ring, xdp_ring->next_to_use);
+		tx_desc->buf_addr = cpu_to_le64(dma);
+		tx_desc->cmd_type_offset_bsz =
+			ice_build_ctob(ICE_TX_DESC_CMD_EOP | ICE_TX_DESC_CMD_RS,
+				       0, len, 0);
+
+		xdp_ring->next_to_use++;
+
+		if (xdp_ring->next_to_use == xdp_ring->count)
+			xdp_ring->next_to_use = 0;
+	}
+
+	if (tx_desc) {
+		ice_xdp_ring_update_tail(xdp_ring);
+		xsk_umem_consume_tx_done(xdp_ring->xsk_umem);
+	}
+
+	return !!budget && work_done;
+}
+
+/**
+ * ice_clean_xdp_tx_buf - Free and unmap XDP Tx buffer
+ * @xdp_ring: XDP Tx ring
+ * @tx_buf: Tx buffer to clean
+ */
+static void
+ice_clean_xdp_tx_buf(struct ice_ring *xdp_ring, struct ice_tx_buf *tx_buf)
+{
+	xdp_return_frame((struct xdp_frame *)tx_buf->raw_buf);
+	dma_unmap_single(xdp_ring->dev, dma_unmap_addr(tx_buf, dma),
+			 dma_unmap_len(tx_buf, len), DMA_TO_DEVICE);
+	dma_unmap_len_set(tx_buf, len, 0);
+}
+
+/**
+ * ice_clean_xdp_tx_irq - Completes AF_XDP entries, and cleans XDP entries
+ * @vsi: The VSI that we care about
+ * @xdp_ring: XDP Tx ring
+ *
+ * Returns true if cleanup/tranmission is done.
+ */
+bool ice_clean_tx_irq_zc(struct ice_vsi *vsi, struct ice_ring *xdp_ring)
+{
+	u32 cleaned_frames, frames_to_xmit, xsk_frames = 0;
+	unsigned int i, ntc, ntu, budget, total_bytes = 0;
+	struct xdp_umem *umem = xdp_ring->xsk_umem;
+	bool work_done = true, xmit_done;
+	struct ice_tx_buf *tx_buf;
+
+	budget = vsi->work_lmt;
+
+	ntc = xdp_ring->next_to_clean;
+	ntu = xdp_ring->next_to_use;
+
+	if (ntu <= ntc)
+		ntu += xdp_ring->count;
+	frames_to_xmit = ntu - ntc;
+
+	if (frames_to_xmit == 0) {
+		goto out_xmit;
+	} else if (frames_to_xmit > budget) {
+		cleaned_frames = budget;
+		work_done = false;
+	} else {
+		cleaned_frames = frames_to_xmit;
+	}
+
+	for (i = 0; i < cleaned_frames; i++) {
+		struct ice_tx_desc *tx_desc = ICE_TX_DESC(xdp_ring, ntc);
+
+		tx_buf = &xdp_ring->tx_buf[ntc];
+		/* if the descriptor isn't marked as done, stop processing */
+		if (!(tx_desc->cmd_type_offset_bsz &
+		      cpu_to_le64(ICE_TX_DESC_DTYPE_DESC_DONE)))
+			break;
+
+		if (tx_buf->raw_buf)
+			ice_clean_xdp_tx_buf(xdp_ring, tx_buf);
+		else
+			xsk_frames++;
+
+		tx_buf->raw_buf = NULL;
+		total_bytes += tx_buf->bytecount;
+
+		if (++ntc == xdp_ring->count)
+			ntc = 0;
+	}
+
+	xdp_ring->next_to_clean += i;
+	if (unlikely(xdp_ring->next_to_clean >= xdp_ring->count))
+		xdp_ring->next_to_clean -= xdp_ring->count;
+
+	if (xsk_frames)
+		xsk_umem_complete_tx(umem, xsk_frames);
+
+	u64_stats_update_begin(&xdp_ring->syncp);
+	xdp_ring->stats.bytes += total_bytes;
+	xdp_ring->stats.pkts += cleaned_frames;
+	u64_stats_update_end(&xdp_ring->syncp);
+	xdp_ring->q_vector->tx.total_bytes += total_bytes;
+	xdp_ring->q_vector->tx.total_pkts += cleaned_frames;
+
+out_xmit:
+	xmit_done = ice_xmit_zc(xdp_ring, budget);
+
+	return work_done && xmit_done;
+}
+
+/**
+ * ice_xsk_async_xmit - Implements ndo_xsk_async_xmit
+ * @netdev: net_device
+ * @queue_id: queue to wake up
+ *
+ * Returns negative on error, zero otherwise.
+ */
+int ice_xsk_async_xmit(struct net_device *netdev, u32 queue_id)
+{
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_q_vector *q_vector;
+	struct ice_vsi *vsi = np->vsi;
+	struct ice_ring *ring;
+
+	if (test_bit(__ICE_DOWN, vsi->state))
+		return -ENETDOWN;
+
+	if (!ice_is_xdp_ena_vsi(vsi))
+		return -ENXIO;
+
+	if (queue_id >= vsi->num_txq)
+		return -ENXIO;
+
+	if (!vsi->xdp_rings[queue_id]->xsk_umem)
+		return -ENXIO;
+
+	ring = vsi->xdp_rings[queue_id];
+
+	/* The idea here is that if NAPI is running, mark a miss, so
+	 * it will run again. If not, trigger an interrupt and
+	 * schedule the NAPI from interrupt context. If NAPI would be
+	 * scheduled here, the interrupt affinity would not be
+	 * honored.
+	 */
+	q_vector = ring->q_vector;
+	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
+		ice_trigger_sw_intr(&vsi->back->hw, q_vector);
+
+	return 0;
+}
+
+/**
+ * ice_xsk_any_rx_ring_ena - Checks if Rx rings have AF_XDP UMEM attached
+ * @vsi: VSI to be checked
+ *
+ * Returns true if any of the Rx rings has an AF_XDP UMEM attached
+ */
+bool ice_xsk_any_rx_ring_ena(struct ice_vsi *vsi)
+{
+	int i;
+
+	if (!vsi->xsk_umems)
+		return false;
+
+	for (i = 0; i < vsi->num_xsk_umems; i++) {
+		if (vsi->xsk_umems[i])
+			return true;
+	}
+
+	return false;
+}
+
+/**
+ * ice_xsk_clean_rx_ring - clean UMEM queues connected to a given Rx ring
+ * @rx_ring: ring to be cleaned
+ */
+void ice_xsk_clean_rx_ring(struct ice_ring *rx_ring)
+{
+	u16 i;
+
+	for (i = 0; i < rx_ring->count; i++) {
+		struct ice_rx_buf *rx_buf = &rx_ring->rx_buf[i];
+
+		if (!rx_buf->addr)
+			continue;
+
+		xsk_umem_fq_reuse(rx_ring->xsk_umem, rx_buf->handle);
+		rx_buf->addr = NULL;
+	}
+}
+
+/**
+ * ice_xsk_clean_xdp_ring - Clean the XDP Tx ring and its UMEM queues
+ * @xdp_ring: XDP_Tx ring
+ */
+void ice_xsk_clean_xdp_ring(struct ice_ring *xdp_ring)
+{
+	u16 ntc = xdp_ring->next_to_clean, ntu = xdp_ring->next_to_use;
+	u32 xsk_frames = 0;
+
+	while (ntc != ntu) {
+		struct ice_tx_buf *tx_buf = &xdp_ring->tx_buf[ntc];
+
+		if (tx_buf->raw_buf)
+			ice_clean_xdp_tx_buf(xdp_ring, tx_buf);
+		else
+			xsk_frames++;
+
+		tx_buf->raw_buf = NULL;
+
+		ntc++;
+		if (ntc >= xdp_ring->count)
+			ntc = 0;
+	}
+
+	if (xsk_frames)
+		xsk_umem_complete_tx(xdp_ring->xsk_umem, xsk_frames);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.h b/drivers/net/ethernet/intel/ice/ice_xsk.h
new file mode 100644
index 000000000000..3e70941f230d
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.h
@@ -0,0 +1,81 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (c) 2019, Intel Corporation. */
+
+#ifndef _ICE_XSK_H_
+#define _ICE_XSK_H_
+#include "ice_txrx.h"
+#include "ice.h"
+
+struct ice_vsi;
+
+#ifdef CONFIG_XDP_SOCKETS
+int ice_xsk_umem_setup(struct ice_vsi *vsi, struct xdp_umem *umem, u16 qid);
+int ice_xsk_umem_query(struct ice_vsi *vsi, struct xdp_umem **umem, u16 qid);
+void ice_zca_free(struct zero_copy_allocator *zca, unsigned long handle);
+int ice_clean_rx_irq_zc(struct ice_ring *rx_ring, int budget);
+bool ice_clean_tx_irq_zc(struct ice_vsi *vsi, struct ice_ring *tx_ring);
+int ice_xsk_async_xmit(struct net_device *netdev, u32 queue_id);
+bool ice_alloc_rx_bufs_slow_zc(struct ice_ring *rx_ring, u16 count);
+bool ice_xsk_any_rx_ring_ena(struct ice_vsi *vsi);
+void ice_xsk_clean_rx_ring(struct ice_ring *rx_ring);
+void ice_xsk_clean_xdp_ring(struct ice_ring *xdp_ring);
+#else
+static inline int
+ice_xsk_umem_setup(struct ice_vsi __always_unused *vsi,
+		   struct xdp_umem __always_unused *umem,
+		   u16 __always_unused qid)
+{
+	return -ENOTSUPP;
+}
+
+static inline int
+ice_xsk_umem_query(struct ice_vsi __always_unused *vsi,
+		   struct xdp_umem __always_unused **umem,
+		   u16 __always_unused qid)
+{
+	return -ENOTSUPP;
+}
+
+static inline void
+ice_zca_free(struct zero_copy_allocator __always_unused *zca,
+	     unsigned long __always_unused handle)
+{
+}
+
+static inline int
+ice_clean_rx_irq_zc(struct ice_ring __always_unused *rx_ring,
+		    int __always_unused budget)
+{
+	return 0;
+}
+
+static inline bool
+ice_clean_tx_irq_zc(struct ice_vsi __always_unused *vsi,
+		    struct ice_ring __always_unused *tx_ring)
+{
+	return false;
+}
+
+static inline int
+ice_xsk_async_xmit(struct net_device __always_unused *netdev,
+		   u32 __always_unused queue_id)
+{
+	return -ENOTSUPP;
+}
+
+static inline bool
+ice_alloc_rx_bufs_slow_zc(struct ice_ring __always_unused *rx_ring,
+			  u16 __always_unused count)
+{
+	return false;
+}
+
+static inline bool ice_xsk_any_rx_ring_ena(struct ice_vsi __always_unused *vsi)
+{
+	return false;
+}
+
+#define ice_xsk_clean_rx_ring(rx_ring) do {} while (0)
+#define ice_xsk_clean_xdp_ring(xdp_ring) do {} while (0)
+#endif /* CONFIG_XDP_SOCKETS */
+#endif /* !_ICE_XSK_H_ */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
