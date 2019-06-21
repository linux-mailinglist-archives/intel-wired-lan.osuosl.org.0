Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 29AED4F036
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jun 2019 22:58:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8D8C12041D;
	Fri, 21 Jun 2019 20:58:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BXPbOjIYrv9E; Fri, 21 Jun 2019 20:58:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3E99A2262E;
	Fri, 21 Jun 2019 20:58:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A9CA41BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2019 20:58:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A168588098
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2019 20:58:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DGyXycQrBgs8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jun 2019 20:57:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0738087BC0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2019 20:57:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jun 2019 13:57:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,401,1557212400"; d="scan'208";a="154587192"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga008.jf.intel.com with ESMTP; 21 Jun 2019 13:57:55 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 21 Jun 2019 05:30:25 -0700
Message-Id: <20190621123026.6509-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 1/2] ice: Add support for XDP
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

Add support for XDP. Implement ndo_bpf and ndo_xdp_xmit.  Upon load of
an XDP program, allocate additional Tx rings for dedicated XDP use.
The following actions are supported: XDP_TX, XDP_DROP, XDP_REDIRECT,
XDP_PASS, and XDP_ABORTED.

Move build_ctob() up so that no forward declaration is needed and
rename it to ice_build_ctob() since it's an ice function.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |  21 ++
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  53 ++-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  84 ++++-
 drivers/net/ethernet/intel/ice/ice_lib.h      |   6 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 319 ++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 343 +++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  29 +-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |   1 +
 8 files changed, 799 insertions(+), 57 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 9ee6b55553c0..53adb93c6b61 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -28,7 +28,10 @@
 #include <linux/ip.h>
 #include <linux/sctp.h>
 #include <linux/ipv6.h>
+#include <linux/pkt_sched.h>
 #include <linux/if_bridge.h>
+#include <linux/ctype.h>
+#include <linux/bpf.h>
 #include <linux/avf/virtchnl.h>
 #include <net/ipv6.h>
 #include "ice_devids.h"
@@ -301,6 +304,10 @@ struct ice_vsi {
 	u16 num_rx_desc;
 	u16 num_tx_desc;
 	struct ice_tc_cfg tc_cfg;
+	struct bpf_prog *xdp_prog;
+	struct ice_ring **xdp_rings;	 /* XDP ring array */
+	u16 num_xdp_txq;		 /* Used XDP queues */
+	u8 xdp_mapping_mode;		 /* ICE_MAP_MODE_[CONTIG|SCATTER] */
 } ____cacheline_internodealigned_in_smp;
 
 /* struct that defines an interrupt vector */
@@ -432,6 +439,16 @@ ice_irq_dynamic_ena(struct ice_hw *hw, struct ice_vsi *vsi,
 	wr32(hw, GLINT_DYN_CTL(vector), val);
 }
 
+static inline bool ice_is_xdp_ena_vsi(struct ice_vsi *vsi)
+{
+	return !!vsi->xdp_prog;
+}
+
+static inline void ice_set_ring_xdp(struct ice_ring *ring)
+{
+	ring->tx_buf[0].tx_flags |= ICE_TX_FLAGS_RING_XDP;
+}
+
 /**
  * ice_find_vsi_by_type - Find and return VSI of a given type
  * @pf: PF to search for VSI
@@ -459,6 +476,10 @@ int ice_up(struct ice_vsi *vsi);
 int ice_down(struct ice_vsi *vsi);
 int ice_vsi_cfg(struct ice_vsi *vsi);
 struct ice_vsi *ice_lb_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi);
+int ice_prepare_xdp_rings(struct ice_vsi *vsi);
+int ice_destroy_xdp_rings(struct ice_vsi *vsi);
+int ice_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
+		 u32 flags);
 int ice_set_rss(struct ice_vsi *vsi, u8 *seed, u8 *lut, u16 lut_size);
 int ice_get_rss(struct ice_vsi *vsi, u8 *seed, u8 *lut, u16 lut_size);
 void ice_fill_rss_lut(u8 *lut, u16 rss_table_size, u16 rss_size);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 52083a63dee6..2d9c184a2333 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -2558,6 +2558,7 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring)
 {
 	struct ice_ring *tx_rings = NULL, *rx_rings = NULL;
 	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_ring *xdp_rings = NULL;
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
 	int i, timeout = 50, err = 0;
@@ -2605,6 +2606,11 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring)
 			vsi->tx_rings[i]->count = new_tx_cnt;
 		for (i = 0; i < vsi->alloc_rxq; i++)
 			vsi->rx_rings[i]->count = new_rx_cnt;
+		if (ice_is_xdp_ena_vsi(vsi))
+			for (i = 0; i < vsi->num_xdp_txq; i++)
+				vsi->xdp_rings[i]->count = new_tx_cnt;
+		vsi->num_tx_desc = new_tx_cnt;
+		vsi->num_rx_desc = new_rx_cnt;
 		netdev_dbg(netdev, "Link is down, descriptor count change happens when link is brought up\n");
 		goto done;
 	}
@@ -2631,15 +2637,46 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring)
 		tx_rings[i].tx_buf = NULL;
 		err = ice_setup_tx_ring(&tx_rings[i]);
 		if (err) {
-			while (i) {
-				i--;
+			while (i--)
 				ice_clean_tx_ring(&tx_rings[i]);
-			}
+
 			devm_kfree(&pf->pdev->dev, tx_rings);
 			goto done;
 		}
 	}
 
+	if (!ice_is_xdp_ena_vsi(vsi))
+		goto process_rx;
+
+	/* alloc updated XDP resources */
+	netdev_info(netdev, "Changing XDP descriptor count from %d to %d\n",
+		    vsi->xdp_rings[0]->count, new_tx_cnt);
+
+	xdp_rings = devm_kcalloc(&pf->pdev->dev, vsi->num_xdp_txq,
+				 sizeof(*xdp_rings), GFP_KERNEL);
+	if (!xdp_rings) {
+		err = -ENOMEM;
+		goto free_tx;
+	}
+
+	for (i = 0; i < vsi->num_xdp_txq; i++) {
+		/* clone ring and setup updated count */
+		xdp_rings[i] = *vsi->xdp_rings[i];
+		xdp_rings[i].count = new_tx_cnt;
+		xdp_rings[i].desc = NULL;
+		xdp_rings[i].tx_buf = NULL;
+		err = ice_setup_tx_ring(&xdp_rings[i]);
+		if (err) {
+			while (i) {
+				i--;
+				ice_clean_tx_ring(&xdp_rings[i]);
+			}
+			devm_kfree(&pf->pdev->dev, xdp_rings);
+			goto free_tx;
+		}
+		ice_set_ring_xdp(&xdp_rings[i]);
+	}
+
 process_rx:
 	if (new_rx_cnt == vsi->rx_rings[0]->count)
 		goto process_link;
@@ -2718,6 +2755,16 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring)
 			devm_kfree(&pf->pdev->dev, rx_rings);
 		}
 
+		if (xdp_rings) {
+			for (i = 0; i < vsi->num_xdp_txq; i++) {
+				ice_free_tx_ring(vsi->xdp_rings[i]);
+				*vsi->xdp_rings[i] = xdp_rings[i];
+			}
+			devm_kfree(&pf->pdev->dev, xdp_rings);
+		}
+
+		vsi->num_tx_desc = new_tx_cnt;
+		vsi->num_rx_desc = new_rx_cnt;
 		ice_up(vsi);
 	}
 	goto done;
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index a19f5920733b..09c6b9921ccd 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -27,6 +27,22 @@ static int ice_setup_rx_ctx(struct ice_ring *ring)
 	/* clear the context structure first */
 	memset(&rlan_ctx, 0, sizeof(rlan_ctx));
 
+	ring->rx_buf_len = vsi->rx_buf_len;
+
+	if (ring->vsi->type == ICE_VSI_PF) {
+		if (!xdp_rxq_info_is_reg(&ring->xdp_rxq))
+			xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
+					 ring->q_index);
+
+		err = xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
+						 MEM_TYPE_PAGE_SHARED, NULL);
+		if (err)
+			return err;
+	}
+	/* Receive Queue Base Address.
+	 * Indicates the starting address of the descriptor queue defined in
+	 * 128 Byte units.
+	 */
 	rlan_ctx.base = ring->dma >> 7;
 
 	rlan_ctx.qlen = ring->count;
@@ -34,7 +50,7 @@ static int ice_setup_rx_ctx(struct ice_ring *ring)
 	/* Receive Packet Data Buffer Size.
 	 * The Packet Data Buffer Size is defined in 128 byte units.
 	 */
-	rlan_ctx.dbuf = vsi->rx_buf_len >> ICE_RLAN_CTX_DBUF_S;
+	rlan_ctx.dbuf = ring->rx_buf_len >> ICE_RLAN_CTX_DBUF_S;
 
 	/* use 32 byte descriptors */
 	rlan_ctx.dsize = 1;
@@ -61,7 +77,7 @@ static int ice_setup_rx_ctx(struct ice_ring *ring)
 	 * than 5 x DBUF
 	 */
 	rlan_ctx.rxmax = min_t(u16, vsi->max_frame,
-			       ICE_MAX_CHAINED_RX_BUFS * vsi->rx_buf_len);
+			       ICE_MAX_CHAINED_RX_BUFS * ring->rx_buf_len);
 
 	/* Rx queue threshold in units of 64 */
 	rlan_ctx.lrxqthresh = 1;
@@ -620,7 +636,7 @@ static int __ice_vsi_get_qs_sc(struct ice_qs_cfg *qs_cfg)
  *
  * Return 0 on success and -ENOMEM in case of no left space in PF queue bitmap
  */
-static int __ice_vsi_get_qs(struct ice_qs_cfg *qs_cfg)
+int __ice_vsi_get_qs(struct ice_qs_cfg *qs_cfg)
 {
 	int ret = 0;
 
@@ -1706,7 +1722,7 @@ ice_vsi_cfg_txqs(struct ice_vsi *vsi, struct ice_ring **rings, int offset)
 			rings[q_idx]->tail =
 				pf->hw.hw_addr + QTX_COMM_DBELL(pf_q);
 			status = ice_ena_vsi_txq(vsi->port_info, vsi->idx, tc,
-						 i, num_q_grps, qg_buf,
+						 i + offset, num_q_grps, qg_buf,
 						 buf_len, NULL);
 			if (status) {
 				dev_err(&pf->pdev->dev,
@@ -1745,6 +1761,18 @@ int ice_vsi_cfg_lan_txqs(struct ice_vsi *vsi)
 	return ice_vsi_cfg_txqs(vsi, vsi->tx_rings, 0);
 }
 
+/**
+ * ice_vsi_cfg_xdp_txqs - Configure Tx queues dedicated for XDP in given VSI
+ * @vsi: the VSI being configured
+ *
+ * Return 0 on success and a negative value on error
+ * Configure the Tx queues dedicated for XDP in given VSI for operation.
+ */
+int ice_vsi_cfg_xdp_txqs(struct ice_vsi *vsi)
+{
+	return ice_vsi_cfg_txqs(vsi, vsi->xdp_rings, vsi->num_xdp_txq);
+}
+
 /**
  * ice_intrl_usec_to_reg - convert interrupt rate limit to register value
  * @intrl: interrupt rate limit in usecs
@@ -1863,6 +1891,13 @@ ice_cfg_txq_interrupt(struct ice_vsi *vsi, u16 txq, u16 msix_idx, u16 itr_idx)
 	      ((msix_idx << QINT_TQCTL_MSIX_INDX_S) & QINT_TQCTL_MSIX_INDX_M);
 
 	wr32(hw, QINT_TQCTL(vsi->txq_map[txq]), val);
+	if (ice_is_xdp_ena_vsi(vsi)) {
+		u32 xdp_txq = txq + vsi->num_xdp_txq;
+
+		wr32(hw, QINT_TQCTL(vsi->txq_map[xdp_txq]),
+		     val);
+	}
+	ice_flush(hw);
 }
 
 /**
@@ -2125,12 +2160,12 @@ ice_vsi_stop_tx_rings(struct ice_vsi *vsi, enum ice_disq_rst_src rst_src,
 
 			q_ids[i] = vsi->txq_map[q_idx + offset];
 			q_teids[i] = rings[q_idx]->txq_teid;
-			q_handles[i] = i;
+			q_handles[i] = i + offset;
 
 			/* clear cause_ena bit for disabled queues */
-			val = rd32(hw, QINT_TQCTL(rings[i]->reg_idx));
+			val = rd32(hw, QINT_TQCTL(rings[q_idx]->reg_idx));
 			val &= ~QINT_TQCTL_CAUSE_ENA_M;
-			wr32(hw, QINT_TQCTL(rings[i]->reg_idx), val);
+			wr32(hw, QINT_TQCTL(rings[q_idx]->reg_idx), val);
 
 			/* software is expected to wait for 100 ns */
 			ndelay(100);
@@ -2138,7 +2173,7 @@ ice_vsi_stop_tx_rings(struct ice_vsi *vsi, enum ice_disq_rst_src rst_src,
 			/* trigger a software interrupt for the vector
 			 * associated to the queue to schedule NAPI handler
 			 */
-			q_vector = rings[i]->q_vector;
+			q_vector = rings[q_idx]->q_vector;
 			if (q_vector)
 				ice_trigger_sw_intr(hw, q_vector);
 
@@ -2190,6 +2225,16 @@ ice_vsi_stop_lan_tx_rings(struct ice_vsi *vsi, enum ice_disq_rst_src rst_src,
 				     0);
 }
 
+/**
+ * ice_vsi_stop_xdp_tx_rings - Disable XDP Tx rings
+ * @vsi: the VSI being configured
+ */
+int ice_vsi_stop_xdp_tx_rings(struct ice_vsi *vsi)
+{
+	return ice_vsi_stop_tx_rings(vsi, ICE_NO_RESET, 0, vsi->xdp_rings,
+				     vsi->num_xdp_txq);
+}
+
 /**
  * ice_cfg_vlan_pruning - enable or disable VLAN pruning on the VSI
  * @vsi: VSI to enable or disable VLAN pruning on
@@ -2590,6 +2635,11 @@ static void ice_vsi_release_msix(struct ice_vsi *vsi)
 		wr32(hw, GLINT_ITR(ICE_IDX_ITR1, reg_idx), 0);
 		for (q = 0; q < q_vector->num_ring_tx; q++) {
 			wr32(hw, QINT_TQCTL(vsi->txq_map[txq]), 0);
+			if (ice_is_xdp_ena_vsi(vsi)) {
+				u32 xdp_txq = txq + vsi->num_xdp_txq;
+
+				wr32(hw, QINT_TQCTL(vsi->txq_map[xdp_txq]), 0);
+			}
 			txq++;
 		}
 
@@ -2962,6 +3012,11 @@ int ice_vsi_rebuild(struct ice_vsi *vsi)
 		vsi->base_vector = 0;
 	}
 
+	if (ice_is_xdp_ena_vsi(vsi))
+		/* return value check can be skipped here, it always returns
+		 * 0 if reset is in progress
+		 */
+		ice_destroy_xdp_rings(vsi);
 	ice_vsi_clear_rings(vsi);
 	ice_vsi_free_arrays(vsi);
 	ice_dev_onetime_setup(&pf->hw);
@@ -2995,6 +3050,13 @@ int ice_vsi_rebuild(struct ice_vsi *vsi)
 			goto err_vectors;
 
 		ice_vsi_map_rings_to_vectors(vsi);
+		if (ice_is_xdp_ena_vsi(vsi)) {
+			vsi->num_xdp_txq = vsi->alloc_txq;
+			vsi->xdp_mapping_mode = ICE_VSI_MAP_CONTIG;
+			ret = ice_prepare_xdp_rings(vsi);
+			if (ret)
+				goto err_vectors;
+		}
 		/* Do not exit if configuring RSS had an issue, at least
 		 * receive traffic on first queue. Hence no need to capture
 		 * return value
@@ -3027,9 +3089,13 @@ int ice_vsi_rebuild(struct ice_vsi *vsi)
 	}
 
 	/* configure VSI nodes based on number of queues and TC's */
-	for (i = 0; i < vsi->tc_cfg.numtc; i++)
+	for (i = 0; i < vsi->tc_cfg.numtc; i++) {
 		max_txqs[i] = pf->num_lan_tx;
 
+		if (ice_is_xdp_ena_vsi(vsi))
+			max_txqs[i] += vsi->num_xdp_txq;
+	}
+
 	status = ice_cfg_vsi_lan(vsi->port_info, vsi->idx, vsi->tc_cfg.ena_tc,
 				 max_txqs);
 	if (status) {
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 6e43ef03bfc3..c4c6eca05757 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -43,6 +43,10 @@ int
 ice_vsi_stop_lan_tx_rings(struct ice_vsi *vsi, enum ice_disq_rst_src rst_src,
 			  u16 rel_vmvf_num);
 
+int ice_vsi_cfg_xdp_txqs(struct ice_vsi *vsi);
+
+int ice_vsi_stop_xdp_tx_rings(struct ice_vsi *vsi);
+
 int ice_cfg_vlan_pruning(struct ice_vsi *vsi, bool ena, bool vlan_promisc);
 
 void ice_cfg_sw_lldp(struct ice_vsi *vsi, bool tx, bool create);
@@ -76,6 +80,8 @@ bool ice_is_reset_in_progress(unsigned long *state);
 
 void ice_vsi_free_q_vectors(struct ice_vsi *vsi);
 
+int __ice_vsi_get_qs(struct ice_qs_cfg *qs_cfg);
+
 void ice_trigger_sw_intr(struct ice_hw *hw, struct ice_q_vector *q_vector);
 
 void ice_vsi_put_qs(struct ice_vsi *vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 28ec0d57941d..5d14627a6ab6 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1489,6 +1489,304 @@ static int ice_vsi_req_irq_msix(struct ice_vsi *vsi, char *basename)
 	return err;
 }
 
+/**
+ * ice_xdp_alloc_setup_rings - Allocate and setup Tx rings for XDP
+ * @vsi: VSI to setup Tx rings used by XDP
+ *
+ * Return 0 on success and negative value on error
+ */
+static int ice_xdp_alloc_setup_rings(struct ice_vsi *vsi)
+{
+	struct device *dev = &vsi->back->pdev->dev;
+	int i;
+
+	for (i = 0; i < vsi->num_xdp_txq; i++) {
+		u16 xdp_q_idx = vsi->alloc_txq + i;
+		struct ice_ring *xdp_ring;
+
+		xdp_ring = kzalloc(sizeof(*xdp_ring), GFP_KERNEL);
+
+		if (!xdp_ring)
+			goto free_xdp_rings;
+
+		xdp_ring->q_index = xdp_q_idx;
+		xdp_ring->reg_idx = vsi->txq_map[xdp_q_idx];
+		xdp_ring->ring_active = false;
+		xdp_ring->vsi = vsi;
+		xdp_ring->netdev = NULL;
+		xdp_ring->dev = dev;
+		xdp_ring->count = vsi->num_tx_desc;
+		vsi->xdp_rings[i] = xdp_ring;
+		if (ice_setup_tx_ring(xdp_ring))
+			goto free_xdp_rings;
+		ice_set_ring_xdp(xdp_ring);
+	}
+
+	return 0;
+
+free_xdp_rings:
+	for (; i >= 0; i--)
+		if (vsi->xdp_rings[i] && vsi->xdp_rings[i]->desc)
+			ice_free_tx_ring(vsi->xdp_rings[i]);
+	return -ENOMEM;
+}
+
+/**
+ * ice_prepare_xdp_rings - Allocate, configure and setup Tx rings for XDP
+ * @vsi: VSI to bring up Tx rings used by XDP
+ *
+ * Return 0 on success and negative value on error
+ */
+int ice_prepare_xdp_rings(struct ice_vsi *vsi)
+{
+	u16 max_txqs[ICE_MAX_TRAFFIC_CLASS] = { 0 };
+	int xdp_rings_rem = vsi->num_xdp_txq;
+	struct ice_pf *pf = vsi->back;
+	struct ice_qs_cfg xdp_qs_cfg = {
+		.qs_mutex = &pf->avail_q_mutex,
+		.pf_map = pf->avail_txqs,
+		.pf_map_size = ICE_MAX_TXQS,
+		.q_count = vsi->num_xdp_txq,
+		.scatter_count = ICE_MAX_SCATTER_TXQS,
+		.vsi_map = vsi->txq_map,
+		.vsi_map_offset = vsi->alloc_txq,
+		.mapping_mode = vsi->xdp_mapping_mode
+	};
+	enum ice_status status;
+	int i, v_idx;
+
+	vsi->xdp_rings = devm_kcalloc(&pf->pdev->dev, vsi->num_xdp_txq,
+				      sizeof(*vsi->xdp_rings), GFP_KERNEL);
+	if (!vsi->xdp_rings)
+		return -ENOMEM;
+
+	if (__ice_vsi_get_qs(&xdp_qs_cfg))
+		goto err_map_xdp;
+
+	pf->q_left_tx -= vsi->num_xdp_txq;
+
+	if (ice_xdp_alloc_setup_rings(vsi))
+		goto clear_xdp_rings;
+
+	/* follow the logic from ice_vsi_map_rings_to_vectors */
+	ice_for_each_q_vector(vsi, v_idx) {
+		struct ice_q_vector *q_vector = vsi->q_vectors[v_idx];
+		int xdp_rings_per_v, q_id, q_base;
+
+		xdp_rings_per_v = DIV_ROUND_UP(xdp_rings_rem,
+					       vsi->num_q_vectors - v_idx);
+		q_base = vsi->num_xdp_txq - xdp_rings_rem;
+
+		for (q_id = q_base; q_id < (q_base + xdp_rings_per_v); q_id++) {
+			struct ice_ring *xdp_ring = vsi->xdp_rings[q_id];
+
+			xdp_ring->q_vector = q_vector;
+			xdp_ring->next = q_vector->tx.ring;
+			q_vector->tx.ring = xdp_ring;
+		}
+		xdp_rings_rem -= xdp_rings_per_v;
+	}
+
+	/* omit the scheduler update if in reset path; XDP queues will be
+	 * taken into account at the end of ice_vsi_rebuild, where
+	 * ice_cfg_vsi_lan is being called
+	 */
+	if (ice_is_reset_in_progress(pf->state))
+		return 0;
+
+	/* tell the Tx scheduler that right now we have
+	 * additional queues
+	 */
+	for (i = 0; i < vsi->tc_cfg.numtc; i++)
+		max_txqs[i] = vsi->num_txq + vsi->num_xdp_txq;
+
+	status = ice_cfg_vsi_lan(vsi->port_info, vsi->idx, vsi->tc_cfg.ena_tc,
+				 max_txqs);
+	if (status) {
+		dev_err(&pf->pdev->dev,
+			"Failed VSI LAN queue config for XDP, error:%d\n",
+			status);
+		goto clear_xdp_rings;
+	}
+
+	return 0;
+clear_xdp_rings:
+	for (i = 0; i < vsi->num_xdp_txq; i++)
+		if (vsi->xdp_rings[i]) {
+			kfree_rcu(vsi->xdp_rings[i], rcu);
+			vsi->xdp_rings[i] = NULL;
+		}
+	pf->q_left_tx += vsi->num_xdp_txq;
+
+err_map_xdp:
+	mutex_lock(&pf->avail_q_mutex);
+	for (i = 0; i < vsi->num_xdp_txq; i++) {
+		clear_bit(vsi->txq_map[i + vsi->alloc_txq], pf->avail_txqs);
+		vsi->txq_map[i + vsi->alloc_txq] = ICE_INVAL_Q_INDEX;
+	}
+	mutex_unlock(&pf->avail_q_mutex);
+
+	devm_kfree(&pf->pdev->dev, vsi->xdp_rings);
+	return -ENOMEM;
+}
+
+/**
+ * ice_destroy_xdp_rings - undo the configuration made by ice_prepare_xdp_rings
+ * @vsi: VSI to remove XDP rings
+ *
+ * Detach XDP rings from irq vectors, clean up the PF bitmap and free
+ * resources
+ */
+int ice_destroy_xdp_rings(struct ice_vsi *vsi)
+{
+	u16 max_txqs[ICE_MAX_TRAFFIC_CLASS] = { 0 };
+	struct ice_pf *pf = vsi->back;
+	int i, v_idx;
+
+	/* q_vectors are freed in reset path so there's no point in
+	 * detaching rings
+	 */
+	if (ice_is_reset_in_progress(pf->state))
+		goto free_qmap;
+
+	ice_for_each_q_vector(vsi, v_idx) {
+		struct ice_q_vector *q_vector = vsi->q_vectors[v_idx];
+		struct ice_ring *ring;
+
+		ice_for_each_ring(ring, q_vector->tx)
+			if (!ring->tx_buf || !ice_ring_is_xdp(ring))
+				break;
+
+		/* restore the value of last node prior to XDP setup */
+		q_vector->tx.ring = ring;
+	}
+
+free_qmap:
+	mutex_lock(&pf->avail_q_mutex);
+	for (i = 0; i < vsi->num_xdp_txq; i++) {
+		clear_bit(vsi->txq_map[i + vsi->alloc_txq], pf->avail_txqs);
+		vsi->txq_map[i + vsi->alloc_txq] = ICE_INVAL_Q_INDEX;
+	}
+	mutex_unlock(&pf->avail_q_mutex);
+
+	for (i = 0; i < vsi->num_xdp_txq; i++)
+		if (vsi->xdp_rings[i]) {
+			if (vsi->xdp_rings[i]->desc)
+				ice_free_tx_ring(vsi->xdp_rings[i]);
+			kfree_rcu(vsi->xdp_rings[i], rcu);
+			vsi->xdp_rings[i] = NULL;
+		}
+
+	devm_kfree(&pf->pdev->dev, vsi->xdp_rings);
+	vsi->xdp_rings = NULL;
+	pf->q_left_tx += vsi->num_xdp_txq;
+
+	if (ice_is_reset_in_progress(pf->state))
+		return 0;
+
+	/* notify Tx scheduler that we destroyed XDP queues and bring
+	 * back the old number of child nodes
+	 */
+	for (i = 0; i < vsi->tc_cfg.numtc; i++)
+		max_txqs[i] = vsi->num_txq;
+
+	return ice_cfg_vsi_lan(vsi->port_info, vsi->idx, vsi->tc_cfg.ena_tc,
+			       max_txqs);
+}
+
+/**
+ * ice_xdp_setup_prog - Add or remove XDP eBPF program
+ * @vsi: VSI to setup XDP for
+ * @prog: XDP program
+ * @extack: netlink extended ack
+ */
+static int
+ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
+		   struct netlink_ext_ack *extack)
+{
+	int frame_size = vsi->netdev->mtu + ETH_HLEN + VLAN_HLEN + ETH_FCS_LEN;
+	bool if_running = netif_running(vsi->netdev);
+	struct bpf_prog *old_prog;
+	int i, ret = 0;
+
+	if (frame_size > vsi->rx_buf_len) {
+		NL_SET_ERR_MSG_MOD(extack, "MTU too large for loading XDP");
+		return -ENOTSUPP;
+	}
+
+	if (!ice_is_xdp_ena_vsi(vsi) && !prog)
+		return 0;
+
+	/* need to stop netdev while setting up the program for Rx rings */
+	if (if_running && !test_and_set_bit(__ICE_DOWN, vsi->state)) {
+		ret = ice_down(vsi);
+		if (ret) {
+			NL_SET_ERR_MSG_MOD(extack,
+					   "Preparing device for XDP attach failed");
+			goto skip_setting_prog;
+		}
+	}
+
+	if (!ice_is_xdp_ena_vsi(vsi) && prog) {
+		vsi->num_xdp_txq = vsi->alloc_txq;
+		vsi->xdp_mapping_mode = ICE_VSI_MAP_CONTIG;
+		if (ice_prepare_xdp_rings(vsi)) {
+			NL_SET_ERR_MSG_MOD(extack,
+					   "Setting up XDP Tx resources failed");
+			ret = -ENOMEM;
+			goto skip_setting_prog;
+		}
+	} else if (ice_is_xdp_ena_vsi(vsi) && !prog) {
+		if (ice_destroy_xdp_rings(vsi)) {
+			NL_SET_ERR_MSG_MOD(extack,
+					   "Freeing XDP Tx resources failed");
+			ret = -ENOMEM;
+			goto skip_setting_prog;
+		}
+	}
+
+	old_prog = xchg(&vsi->xdp_prog, prog);
+	if (old_prog)
+		bpf_prog_put(old_prog);
+
+	for (i = 0; i < vsi->num_rxq; i++)
+		WRITE_ONCE(vsi->rx_rings[i]->xdp_prog, vsi->xdp_prog);
+
+	if (if_running)
+		ret = ice_up(vsi);
+
+skip_setting_prog:
+	return ret;
+}
+
+/**
+ * ice_xdp - implements XDP handler
+ * @dev: netdevice
+ * @xdp: XDP command
+ */
+static int ice_xdp(struct net_device *dev, struct netdev_bpf *xdp)
+{
+	struct ice_netdev_priv *np = netdev_priv(dev);
+	struct ice_vsi *vsi = np->vsi;
+
+	if (vsi->type != ICE_VSI_PF) {
+		NL_SET_ERR_MSG_MOD(xdp->extack,
+				   "XDP can be loaded only on PF VSI");
+		return -EINVAL;
+	}
+
+	switch (xdp->command) {
+	case XDP_SETUP_PROG:
+		return ice_xdp_setup_prog(vsi, xdp->prog, xdp->extack);
+	case XDP_QUERY_PROG:
+		xdp->prog_id = vsi->xdp_prog ? vsi->xdp_prog->aux->id : 0;
+		return 0;
+	default:
+		NL_SET_ERR_MSG_MOD(xdp->extack, "Unknown XDP command");
+		return -EINVAL;
+	}
+}
+
 /**
  * ice_ena_misc_vector - enable the non-queue interrupts
  * @pf: board private structure
@@ -2972,6 +3270,8 @@ int ice_vsi_cfg(struct ice_vsi *vsi)
 	ice_vsi_cfg_dcb_rings(vsi);
 
 	err = ice_vsi_cfg_lan_txqs(vsi);
+	if (!err && ice_is_xdp_ena_vsi(vsi))
+		err = ice_vsi_cfg_xdp_txqs(vsi);
 	if (!err)
 		err = ice_vsi_cfg_rxqs(vsi);
 
@@ -3473,6 +3773,13 @@ int ice_down(struct ice_vsi *vsi)
 		netdev_err(vsi->netdev,
 			   "Failed stop Tx rings, VSI %d error %d\n",
 			   vsi->vsi_num, tx_err);
+	if (!tx_err && ice_is_xdp_ena_vsi(vsi)) {
+		tx_err = ice_vsi_stop_xdp_tx_rings(vsi);
+		if (tx_err)
+			netdev_err(vsi->netdev,
+				   "Failed stop XDP rings, VSI %d error %d\n",
+				   vsi->vsi_num, tx_err);
+	}
 
 	rx_err = ice_vsi_stop_rx_rings(vsi);
 	if (rx_err)
@@ -3911,6 +4218,16 @@ static int ice_change_mtu(struct net_device *netdev, int new_mtu)
 		return 0;
 	}
 
+	if (ice_is_xdp_ena_vsi(vsi)) {
+		int eth_overhead = ETH_HLEN + VLAN_HLEN + ETH_FCS_LEN;
+
+		if (new_mtu + eth_overhead > ICE_RXBUF_2048) {
+			netdev_err(netdev, "max MTU for XDP usage is %d\n",
+				   ICE_RXBUF_2048 - eth_overhead);
+			return -EINVAL;
+		}
+	}
+
 	if (new_mtu < netdev->min_mtu) {
 		netdev_err(netdev, "new MTU invalid. min_mtu is %d\n",
 			   netdev->min_mtu);
@@ -4412,4 +4729,6 @@ static const struct net_device_ops ice_netdev_ops = {
 	.ndo_fdb_add = ice_fdb_add,
 	.ndo_fdb_del = ice_fdb_del,
 	.ndo_tx_timeout = ice_tx_timeout,
+	.ndo_bpf = ice_xdp,
+	.ndo_xdp_xmit = ice_xdp_xmit,
 };
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 3c83230434b6..0ed35cac8d60 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -5,11 +5,24 @@
 
 #include <linux/prefetch.h>
 #include <linux/mm.h>
+#include <linux/bpf_trace.h>
+#include <net/xdp.h>
 #include "ice.h"
 #include "ice_dcb_lib.h"
 
 #define ICE_RX_HDR_SIZE		256
 
+/* helper function for building cmd/type/offset */
+static __le64
+ice_build_ctob(u64 td_cmd, u64 td_offset, unsigned int size, u64 td_tag)
+{
+	return cpu_to_le64(ICE_TX_DESC_DTYPE_DATA |
+			   (td_cmd    << ICE_TXD_QW1_CMD_S) |
+			   (td_offset << ICE_TXD_QW1_OFFSET_S) |
+			   ((u64)size << ICE_TXD_QW1_TX_BUF_SZ_S) |
+			   (td_tag    << ICE_TXD_QW1_L2TAG1_S));
+}
+
 /**
  * ice_unmap_and_free_tx_buf - Release a Tx buffer
  * @ring: the ring that owns the buffer
@@ -19,7 +32,10 @@ static void
 ice_unmap_and_free_tx_buf(struct ice_ring *ring, struct ice_tx_buf *tx_buf)
 {
 	if (tx_buf->skb) {
-		dev_kfree_skb_any(tx_buf->skb);
+		if (ice_ring_is_xdp(ring))
+			page_frag_free(tx_buf->raw_buf);
+		else
+			dev_kfree_skb_any(tx_buf->skb);
 		if (dma_unmap_len(tx_buf, len))
 			dma_unmap_single(ring->dev,
 					 dma_unmap_addr(tx_buf, dma),
@@ -135,8 +151,11 @@ ice_clean_tx_irq(struct ice_vsi *vsi, struct ice_ring *tx_ring, int napi_budget)
 		total_bytes += tx_buf->bytecount;
 		total_pkts += tx_buf->gso_segs;
 
-		/* free the skb */
-		napi_consume_skb(tx_buf->skb, napi_budget);
+		if (ice_ring_is_xdp(tx_ring))
+			page_frag_free(tx_buf->raw_buf);
+		else
+			/* free the skb */
+			napi_consume_skb(tx_buf->skb, napi_budget);
 
 		/* unmap skb header data */
 		dma_unmap_single(tx_ring->dev,
@@ -194,6 +213,9 @@ ice_clean_tx_irq(struct ice_vsi *vsi, struct ice_ring *tx_ring, int napi_budget)
 	tx_ring->q_vector->tx.total_bytes += total_bytes;
 	tx_ring->q_vector->tx.total_pkts += total_pkts;
 
+	if (ice_ring_is_xdp(tx_ring))
+		return !!budget;
+
 	netdev_tx_completed_queue(txring_txq(tx_ring), total_pkts,
 				  total_bytes);
 
@@ -318,6 +340,10 @@ void ice_clean_rx_ring(struct ice_ring *rx_ring)
 void ice_free_rx_ring(struct ice_ring *rx_ring)
 {
 	ice_clean_rx_ring(rx_ring);
+	if (rx_ring->vsi->type == ICE_VSI_PF)
+		if (xdp_rxq_info_is_reg(&rx_ring->xdp_rxq))
+			xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
+	rx_ring->xdp_prog = NULL;
 	devm_kfree(rx_ring->dev, rx_ring->rx_buf);
 	rx_ring->rx_buf = NULL;
 
@@ -362,6 +388,12 @@ int ice_setup_rx_ring(struct ice_ring *rx_ring)
 
 	rx_ring->next_to_use = 0;
 	rx_ring->next_to_clean = 0;
+
+	if (rx_ring->vsi->type == ICE_VSI_PF &&
+	    !xdp_rxq_info_is_reg(&rx_ring->xdp_rxq))
+		if (xdp_rxq_info_reg(&rx_ring->xdp_rxq, rx_ring->netdev,
+				     rx_ring->q_index))
+			goto err;
 	return 0;
 
 err:
@@ -391,6 +423,200 @@ static void ice_release_rx_desc(struct ice_ring *rx_ring, u32 val)
 	writel(val, rx_ring->tail);
 }
 
+/**
+ * ice_rx_offset - Return expected offset into page to access data
+ * @rx_ring: Ring we are requesting offset of
+ *
+ * Returns the offset value for ring into the data buffer.
+ */
+static unsigned int ice_rx_offset(struct ice_ring *rx_ring)
+{
+	return ice_is_xdp_ena_vsi(rx_ring->vsi) ? XDP_PACKET_HEADROOM : 0;
+}
+
+/**
+ * ice_xdp_ring_update_tail - Updates the XDP Tx ring tail register
+ * @xdp_ring: XDP Tx ring
+ *
+ * This function updates the XDP Tx ring tail register.
+ */
+static void ice_xdp_ring_update_tail(struct ice_ring *xdp_ring)
+{
+	/* Force memory writes to complete before letting h/w
+	 * know there are new descriptors to fetch.
+	 */
+	wmb();
+	writel_relaxed(xdp_ring->next_to_use, xdp_ring->tail);
+}
+
+/**
+ * ice_xmit_xdp_ring - submit single packet to XDP ring for transmission
+ * @data: packet data pointer
+ * @size: packet data size
+ * @xdp_ring: XDP ring for transmission
+ */
+static int
+ice_xmit_xdp_ring(void *data, u16 size, struct ice_ring *xdp_ring)
+{
+	u16 i = xdp_ring->next_to_use;
+	struct ice_tx_desc *tx_desc;
+	struct ice_tx_buf *tx_buf;
+	dma_addr_t dma;
+
+	if (!unlikely(ICE_DESC_UNUSED(xdp_ring))) {
+		xdp_ring->tx_stats.tx_busy++;
+		return ICE_XDP_CONSUMED;
+	}
+
+	dma = dma_map_single(xdp_ring->dev, data, size, DMA_TO_DEVICE);
+	if (dma_mapping_error(xdp_ring->dev, dma))
+		return ICE_XDP_CONSUMED;
+
+	tx_buf = &xdp_ring->tx_buf[i];
+	tx_buf->bytecount = size;
+	tx_buf->gso_segs = 1;
+	tx_buf->raw_buf = data;
+
+	/* record length, and DMA address */
+	dma_unmap_len_set(tx_buf, len, size);
+	dma_unmap_addr_set(tx_buf, dma, dma);
+
+	tx_desc = ICE_TX_DESC(xdp_ring, i);
+	tx_desc->buf_addr = cpu_to_le64(dma);
+	tx_desc->cmd_type_offset_bsz = ice_build_ctob(ICE_TXD_CMD, 0, size, 0);
+
+	/* Make certain all of the status bits have been updated
+	 * before next_to_watch is written.
+	 */
+	smp_wmb();
+
+	i++;
+	if (i == xdp_ring->count)
+		i = 0;
+
+	tx_buf->next_to_watch = tx_desc;
+	xdp_ring->next_to_use = i;
+
+	return ICE_XDP_TX;
+}
+
+/**
+ * ice_run_xdp - Executes an XDP program on initialized xdp_buff
+ * @rx_ring: Rx ring
+ * @xdp: xdp_buff used as input to the XDP program
+ * @xdp_prog: XDP program to run
+ *
+ * Returns any of ICE_XDP_{PASS, CONSUMED, TX, REDIR}
+ */
+static int
+ice_run_xdp(struct ice_ring *rx_ring, struct xdp_buff *xdp,
+	    struct bpf_prog *xdp_prog)
+{
+	int err, result = ICE_XDP_PASS;
+	struct ice_ring *xdp_ring;
+	u32 act;
+
+	act = bpf_prog_run_xdp(xdp_prog, xdp);
+	switch (act) {
+	case XDP_PASS:
+		break;
+	case XDP_TX:
+		xdp_ring = rx_ring->vsi->xdp_rings[rx_ring->q_index];
+		result =
+			ice_xmit_xdp_ring(xdp->data,
+					  (u8 *)xdp->data_end - (u8 *)xdp->data,
+					  xdp_ring);
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
+ * ice_xdp_xmit - submit packets to XDP ring for transmission
+ * @dev: netdev
+ * @n: number of XDP frames to be transmitted
+ * @frames: XDP frames to be transmitted
+ * @flags: transmit flags
+ *
+ * Returns number of frames successfully sent. Frames that fail are
+ * free'ed via XDP return API.
+ * For error cases, a negative errno code is returned and no-frames
+ * are transmitted (caller must handle freeing frames).
+ */
+int
+ice_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
+	     u32 flags)
+{
+	struct ice_netdev_priv *np = netdev_priv(dev);
+	unsigned int queue_index = smp_processor_id();
+	struct ice_vsi *vsi = np->vsi;
+	struct ice_ring *xdp_ring;
+	int drops = 0, i;
+
+	if (test_bit(__ICE_DOWN, vsi->state))
+		return -ENETDOWN;
+
+	if (!ice_is_xdp_ena_vsi(vsi) || queue_index >= vsi->num_xdp_txq)
+		return -ENXIO;
+
+	if (unlikely(flags & ~XDP_XMIT_FLAGS_MASK))
+		return -EINVAL;
+
+	xdp_ring = vsi->xdp_rings[queue_index];
+	for (i = 0; i < n; i++) {
+		struct xdp_frame *xdpf = frames[i];
+		int err;
+
+		err = ice_xmit_xdp_ring(xdpf->data, xdpf->len, xdp_ring);
+		if (err != ICE_XDP_TX) {
+			xdp_return_frame_rx_napi(xdpf);
+			drops++;
+		}
+	}
+
+	if (unlikely(flags & XDP_XMIT_FLUSH))
+		ice_xdp_ring_update_tail(xdp_ring);
+
+	return n - drops;
+}
+
+/**
+ * ice_finalize_xdp_rx - Bump XDP Tx tail and/or flush redirect map
+ * @rx_ring: Rx ring
+ * @xdp_res: Result of the receive batch
+ *
+ * This function bumps XDP Tx tail and/or flush redirect map, and
+ * should be called when a batch of packets has been processed in the
+ * napi loop.
+ */
+static void
+ice_finalize_xdp_rx(struct ice_ring *rx_ring, unsigned int xdp_res)
+{
+	if (xdp_res & ICE_XDP_REDIR)
+		xdp_do_flush_map();
+
+	if (xdp_res & ICE_XDP_TX) {
+		struct ice_ring *xdp_ring =
+			rx_ring->vsi->xdp_rings[rx_ring->q_index];
+
+		ice_xdp_ring_update_tail(xdp_ring);
+	}
+}
+
 /**
  * ice_alloc_mapped_page - recycle or make a new page
  * @rx_ring: ring to use
@@ -433,7 +659,7 @@ ice_alloc_mapped_page(struct ice_ring *rx_ring, struct ice_rx_buf *bi)
 
 	bi->dma = dma;
 	bi->page = page;
-	bi->page_offset = 0;
+	bi->page_offset = ice_rx_offset(rx_ring);
 	page_ref_add(page, USHRT_MAX - 1);
 	bi->pagecnt_bias = USHRT_MAX;
 
@@ -669,7 +895,7 @@ ice_get_rx_buf(struct ice_ring *rx_ring, struct sk_buff **skb,
  * ice_construct_skb - Allocate skb and populate it
  * @rx_ring: Rx descriptor ring to transact packets on
  * @rx_buf: Rx buffer to pull data from
- * @size: the length of the packet
+ * @xdp: xdp_buff pointing to the data
  *
  * This function allocates an skb. It then populates it with the page
  * data from the current receive descriptor, taking care to set up the
@@ -677,16 +903,16 @@ ice_get_rx_buf(struct ice_ring *rx_ring, struct sk_buff **skb,
  */
 static struct sk_buff *
 ice_construct_skb(struct ice_ring *rx_ring, struct ice_rx_buf *rx_buf,
-		  unsigned int size)
+		  struct xdp_buff *xdp)
 {
-	void *va = page_address(rx_buf->page) + rx_buf->page_offset;
+	unsigned int size = (u8 *)xdp->data_end - (u8 *)xdp->data;
 	unsigned int headlen;
 	struct sk_buff *skb;
 
 	/* prefetch first cache line of first page */
-	prefetch(va);
+	prefetch(xdp->data);
 #if L1_CACHE_BYTES < 128
-	prefetch((u8 *)va + L1_CACHE_BYTES);
+	prefetch((void *)((u8 *)xdp->data + L1_CACHE_BYTES));
 #endif /* L1_CACHE_BYTES */
 
 	/* allocate a skb to store the frags */
@@ -699,10 +925,11 @@ ice_construct_skb(struct ice_ring *rx_ring, struct ice_rx_buf *rx_buf,
 	/* Determine available headroom for copy */
 	headlen = size;
 	if (headlen > ICE_RX_HDR_SIZE)
-		headlen = eth_get_headlen(skb->dev, va, ICE_RX_HDR_SIZE);
+		headlen = eth_get_headlen(skb->dev, xdp->data, ICE_RX_HDR_SIZE);
 
 	/* align pull length to size of long to optimize memcpy performance */
-	memcpy(__skb_put(skb, headlen), va, ALIGN(headlen, sizeof(long)));
+	memcpy(__skb_put(skb, headlen), xdp->data, ALIGN(headlen,
+							 sizeof(long)));
 
 	/* if we exhaust the linear part then add what is left as a frag */
 	size -= headlen;
@@ -732,13 +959,20 @@ ice_construct_skb(struct ice_ring *rx_ring, struct ice_rx_buf *rx_buf,
  * @rx_ring: Rx descriptor ring to transact packets on
  * @rx_buf: Rx buffer to pull data from
  *
- * This function will  clean up the contents of the rx_buf. It will
- * either recycle the buffer or unmap it and free the associated resources.
+ * This function will update next_to_clean and then clean up the contents
+ * of the rx_buf. It will either recycle the buffer or unmap it and free
+ * the associated resources.
  */
 static void ice_put_rx_buf(struct ice_ring *rx_ring, struct ice_rx_buf *rx_buf)
 {
-		/* hand second half of page back to the ring */
+	u32 ntc = rx_ring->next_to_clean + 1;
+
+	/* fetch, update, and store next to clean */
+	ntc = (ntc < rx_ring->count) ? ntc : 0;
+	rx_ring->next_to_clean = ntc;
+
 	if (ice_can_reuse_rx_page(rx_buf)) {
+		/* hand second half of page back to the ring */
 		ice_reuse_rx_page(rx_ring, rx_buf);
 		rx_ring->rx_stats.page_reuse_count++;
 	} else {
@@ -797,30 +1031,20 @@ ice_test_staterr(union ice_32b_rx_flex_desc *rx_desc, const u16 stat_err_bits)
  * @rx_desc: Rx descriptor for current buffer
  * @skb: Current socket buffer containing buffer in progress
  *
- * This function updates next to clean. If the buffer is an EOP buffer
- * this function exits returning false, otherwise it will place the
- * sk_buff in the next buffer to be chained and return true indicating
- * that this is in fact a non-EOP buffer.
+ * If the buffer is an EOP buffer, this function exits returning false,
+ * otherwise return true indicating that this is in fact a non-EOP buffer.
  */
 static bool
 ice_is_non_eop(struct ice_ring *rx_ring, union ice_32b_rx_flex_desc *rx_desc,
 	       struct sk_buff *skb)
 {
-	u32 ntc = rx_ring->next_to_clean + 1;
-
-	/* fetch, update, and store next to clean */
-	ntc = (ntc < rx_ring->count) ? ntc : 0;
-	rx_ring->next_to_clean = ntc;
-
-	prefetch(ICE_RX_DESC(rx_ring, ntc));
-
 	/* if we are the last buffer then there is nothing else to do */
 #define ICE_RXD_EOF BIT(ICE_RX_FLEX_DESC_STATUS0_EOF_S)
 	if (likely(ice_test_staterr(rx_desc, ICE_RXD_EOF)))
 		return false;
 
 	/* place skb in next buffer to be received */
-	rx_ring->rx_buf[ntc].skb = skb;
+	rx_ring->rx_buf[rx_ring->next_to_clean].skb = skb;
 	rx_ring->rx_stats.non_eop_descs++;
 
 	return true;
@@ -990,7 +1214,12 @@ static int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
 {
 	unsigned int total_rx_bytes = 0, total_rx_pkts = 0;
 	u16 cleaned_count = ICE_DESC_UNUSED(rx_ring);
+	unsigned int xdp_res, xdp_xmit = 0;
+	struct bpf_prog *xdp_prog;
 	bool failure = false;
+	struct xdp_buff xdp;
+
+	xdp.rxq = &rx_ring->xdp_rxq;
 
 	/* start the loop to process Rx packets bounded by 'budget' */
 	while (likely(total_rx_pkts < (unsigned int)budget)) {
@@ -1030,12 +1259,46 @@ static int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
 		size = le16_to_cpu(rx_desc->wb.pkt_len) &
 			ICE_RX_FLX_DESC_PKT_LEN_M;
 
+		if (!size)
+			break;
+
+		/* retrieve a buffer from the ring */
 		rx_buf = ice_get_rx_buf(rx_ring, &skb, size);
-		/* allocate (if needed) and populate skb */
+
+		xdp.data = page_address(rx_buf->page) + rx_buf->page_offset;
+		xdp.data_hard_start = (u8 *)xdp.data - ice_rx_offset(rx_ring);
+		xdp_set_data_meta_invalid(&xdp);
+		xdp.data_end = (u8 *)xdp.data + size;
+
+		rcu_read_lock();
+		xdp_prog = READ_ONCE(rx_ring->xdp_prog);
+		if (!xdp_prog) {
+			rcu_read_unlock();
+			goto construct_skb;
+		}
+
+		xdp_res = ice_run_xdp(rx_ring, &xdp, xdp_prog);
+		rcu_read_unlock();
+		if (xdp_res) {
+			if (xdp_res & (ICE_XDP_TX | ICE_XDP_REDIR)) {
+				xdp_xmit |= xdp_res;
+				ice_rx_buf_adjust_pg_offset(rx_buf,
+							    ICE_RXBUF_2048);
+			} else {
+				rx_buf->pagecnt_bias++;
+			}
+			total_rx_bytes += size;
+			total_rx_pkts++;
+
+			cleaned_count++;
+			ice_put_rx_buf(rx_ring, rx_buf);
+			continue;
+		}
+construct_skb:
 		if (skb)
 			ice_add_rx_frag(rx_buf, skb, size);
 		else
-			skb = ice_construct_skb(rx_ring, rx_buf, size);
+			skb = ice_construct_skb(rx_ring, rx_buf, &xdp);
 
 		/* exit if we failed to retrieve a buffer */
 		if (!skb) {
@@ -1085,6 +1348,8 @@ static int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
 		total_rx_pkts++;
 	}
 
+	ice_finalize_xdp_rx(rx_ring, xdp_xmit);
+
 	/* update queue and vector specific stats */
 	u64_stats_update_begin(&rx_ring->syncp);
 	rx_ring->stats.pkts += total_rx_pkts;
@@ -1456,17 +1721,6 @@ int ice_napi_poll(struct napi_struct *napi, int budget)
 	return min_t(int, work_done, budget - 1);
 }
 
-/* helper function for building cmd/type/offset */
-static __le64
-build_ctob(u64 td_cmd, u64 td_offset, unsigned int size, u64 td_tag)
-{
-	return cpu_to_le64(ICE_TX_DESC_DTYPE_DATA |
-			   (td_cmd    << ICE_TXD_QW1_CMD_S) |
-			   (td_offset << ICE_TXD_QW1_OFFSET_S) |
-			   ((u64)size << ICE_TXD_QW1_TX_BUF_SZ_S) |
-			   (td_tag    << ICE_TXD_QW1_L2TAG1_S));
-}
-
 /**
  * __ice_maybe_stop_tx - 2nd level check for Tx stop conditions
  * @tx_ring: the ring to be checked
@@ -1567,7 +1821,8 @@ ice_tx_map(struct ice_ring *tx_ring, struct ice_tx_buf *first,
 		 */
 		while (unlikely(size > ICE_MAX_DATA_PER_TXD)) {
 			tx_desc->cmd_type_offset_bsz =
-				build_ctob(td_cmd, td_offset, max_data, td_tag);
+				ice_build_ctob(td_cmd, td_offset, max_data,
+					       td_tag);
 
 			tx_desc++;
 			i++;
@@ -1587,8 +1842,8 @@ ice_tx_map(struct ice_ring *tx_ring, struct ice_tx_buf *first,
 		if (likely(!data_len))
 			break;
 
-		tx_desc->cmd_type_offset_bsz = build_ctob(td_cmd, td_offset,
-							  size, td_tag);
+		tx_desc->cmd_type_offset_bsz = ice_build_ctob(td_cmd, td_offset,
+							      size, td_tag);
 
 		tx_desc++;
 		i++;
@@ -1620,7 +1875,7 @@ ice_tx_map(struct ice_ring *tx_ring, struct ice_tx_buf *first,
 	/* write last descriptor with RS and EOP bits */
 	td_cmd |= (u64)(ICE_TX_DESC_CMD_EOP | ICE_TX_DESC_CMD_RS);
 	tx_desc->cmd_type_offset_bsz =
-			build_ctob(td_cmd, td_offset, size, td_tag);
+			ice_build_ctob(td_cmd, td_offset, size, td_tag);
 
 	/* Force memory writes to complete before letting h/w know there
 	 * are new descriptors to fetch.
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index ec76aba347b9..355834b4abda 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -44,17 +44,33 @@
 #define ICE_TX_FLAGS_TSO	BIT(0)
 #define ICE_TX_FLAGS_HW_VLAN	BIT(1)
 #define ICE_TX_FLAGS_SW_VLAN	BIT(2)
+/* ICE_TX_FLAGS_RING_XDP is used to indicate that whole ring is dedicated for
+ * XDP purposes; at this point struct ice_ring doesn't have an appropriate
+ * field that could be used for setting this flag, so let's use the tx_flags
+ * field of the first ice_tx_buf from ice_ring
+ */
+#define ICE_TX_FLAGS_RING_XDP	BIT(8)
 #define ICE_TX_FLAGS_VLAN_M	0xffff0000
 #define ICE_TX_FLAGS_VLAN_PR_M	0xe0000000
 #define ICE_TX_FLAGS_VLAN_PR_S	29
 #define ICE_TX_FLAGS_VLAN_S	16
 
+#define ICE_XDP_PASS		0
+#define ICE_XDP_CONSUMED	BIT(0)
+#define ICE_XDP_TX		BIT(1)
+#define ICE_XDP_REDIR		BIT(2)
+
 #define ICE_RX_DMA_ATTR \
 	(DMA_ATTR_SKIP_CPU_SYNC | DMA_ATTR_WEAK_ORDERING)
 
+#define ICE_TXD_CMD (ICE_TX_DESC_CMD_EOP | ICE_TX_DESC_CMD_RS)
+
 struct ice_tx_buf {
 	struct ice_tx_desc *next_to_watch;
-	struct sk_buff *skb;
+	union {
+		struct sk_buff *skb;
+		void *raw_buf; /* used for XDP */
+	};
 	unsigned int bytecount;
 	unsigned short gso_segs;
 	u32 tx_flags;
@@ -185,6 +201,9 @@ struct ice_ring {
 	};
 
 	struct rcu_head rcu;		/* to avoid race on free */
+	struct bpf_prog *xdp_prog;
+	/* CL3 - 3rd cacheline starts here */
+	struct xdp_rxq_info xdp_rxq;
 	/* CLX - the below items are only accessed infrequently and should be
 	 * in their own cache line if possible
 	 */
@@ -197,6 +216,14 @@ struct ice_ring {
 #endif /* CONFIG_DCB */
 } ____cacheline_internodealigned_in_smp;
 
+static inline bool ice_ring_is_xdp(struct ice_ring *ring)
+{
+	if (!ring->tx_buf)
+		return false;
+
+	return !!(ring->tx_buf[0].tx_flags & ICE_TX_FLAGS_RING_XDP);
+}
+
 struct ice_ring_container {
 	/* head of linked-list of rings */
 	struct ice_ring *ring;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 5d24b539648f..f5eaf3059063 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -2102,6 +2102,7 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 			goto error_param;
 		}
 		vsi->rx_buf_len = qpi->rxq.databuffer_size;
+		vsi->rx_rings[i]->rx_buf_len = vsi->rx_buf_len;
 		if (qpi->rxq.max_pkt_size >= (16 * 1024) ||
 		    qpi->rxq.max_pkt_size < 64) {
 			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
