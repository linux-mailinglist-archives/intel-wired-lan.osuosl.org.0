Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB60D1BD5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Oct 2019 00:39:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D9E9323509;
	Wed,  9 Oct 2019 22:39:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q7oLL9f90PHa; Wed,  9 Oct 2019 22:39:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 71A7723799;
	Wed,  9 Oct 2019 22:39:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C72F81BF3CC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:39:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C3BC3842E9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:39:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id grj-U5mirZ7P for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2019 22:39:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9C1E784426
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:39:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 15:39:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,277,1566889200"; d="scan'208";a="184218355"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga007.jf.intel.com with ESMTP; 09 Oct 2019 15:39:33 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Oct 2019 07:09:20 -0700
Message-Id: <20191009140925.13997-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191009140925.13997-1-anthony.l.nguyen@intel.com>
References: <20191009140925.13997-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S30 4/9] ice: Move common functions to
 ice_txrx_lib.c
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

In preparation of AF XDP, move functions that will be used both by skb and
zero-copy paths to a new file called ice_txrx_lib.c.  This allows us to
avoid using ifdefs to control the staticness of said functions.

Move other functions (ice_rx_csum, ice_rx_hash and ice_ptype_to_htype)
called only by the moved ones to the new file as well.

Signed-off-by: Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile       |   1 +
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 303 +-----------------
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 273 ++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_txrx_lib.h |  49 +++
 4 files changed, 324 insertions(+), 302 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_txrx_lib.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_txrx_lib.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index ff737f880c12..94fe430fdfdd 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -15,6 +15,7 @@ ice-y := ice_main.o	\
 	 ice_sched.o	\
 	 ice_base.o	\
 	 ice_lib.o	\
+	 ice_txrx_lib.o	\
 	 ice_txrx.o	\
 	 ice_flex_pipe.o	\
 	 ice_idc.o	\
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 69181b01df91..f8a9eafc945a 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -7,6 +7,7 @@
 #include <linux/mm.h>
 #include <linux/bpf_trace.h>
 #include <net/xdp.h>
+#include "ice_txrx_lib.h"
 #include "ice_lib.h"
 #include "ice.h"
 #include "ice_dcb_lib.h"
@@ -396,37 +397,6 @@ int ice_setup_rx_ring(struct ice_ring *rx_ring)
 	return -ENOMEM;
 }
 
-/**
- * ice_release_rx_desc - Store the new tail and head values
- * @rx_ring: ring to bump
- * @val: new head index
- */
-static void ice_release_rx_desc(struct ice_ring *rx_ring, u32 val)
-{
-	u16 prev_ntu = rx_ring->next_to_use;
-
-	rx_ring->next_to_use = val;
-
-	/* update next to alloc since we have filled the ring */
-	rx_ring->next_to_alloc = val;
-
-	/* QRX_TAIL will be updated with any tail value, but hardware ignores
-	 * the lower 3 bits. This makes it so we only bump tail on meaningful
-	 * boundaries. Also, this allows us to bump tail on intervals of 8 up to
-	 * the budget depending on the current traffic load.
-	 */
-	val &= ~0x7;
-	if (prev_ntu != val) {
-		/* Force memory writes to complete before letting h/w
-		 * know there are new descriptors to fetch. (Only
-		 * applicable for weak-ordered memory model archs,
-		 * such as IA-64).
-		 */
-		wmb();
-		writel(val, rx_ring->tail);
-	}
-}
-
 /**
  * ice_rx_offset - Return expected offset into page to access data
  * @rx_ring: Ring we are requesting offset of
@@ -438,89 +408,6 @@ static unsigned int ice_rx_offset(struct ice_ring *rx_ring)
 	return ice_is_xdp_ena_vsi(rx_ring->vsi) ? XDP_PACKET_HEADROOM : 0;
 }
 
-/**
- * ice_xdp_ring_update_tail - Updates the XDP Tx ring tail register
- * @xdp_ring: XDP Tx ring
- *
- * This function updates the XDP Tx ring tail register.
- */
-static void ice_xdp_ring_update_tail(struct ice_ring *xdp_ring)
-{
-	/* Force memory writes to complete before letting h/w
-	 * know there are new descriptors to fetch.
-	 */
-	wmb();
-	writel_relaxed(xdp_ring->next_to_use, xdp_ring->tail);
-}
-
-/**
- * ice_xmit_xdp_ring - submit single packet to XDP ring for transmission
- * @data: packet data pointer
- * @size: packet data size
- * @xdp_ring: XDP ring for transmission
- */
-static int ice_xmit_xdp_ring(void *data, u16 size, struct ice_ring *xdp_ring)
-{
-	u16 i = xdp_ring->next_to_use;
-	struct ice_tx_desc *tx_desc;
-	struct ice_tx_buf *tx_buf;
-	dma_addr_t dma;
-
-	if (!unlikely(ICE_DESC_UNUSED(xdp_ring))) {
-		xdp_ring->tx_stats.tx_busy++;
-		return ICE_XDP_CONSUMED;
-	}
-
-	dma = dma_map_single(xdp_ring->dev, data, size, DMA_TO_DEVICE);
-	if (dma_mapping_error(xdp_ring->dev, dma))
-		return ICE_XDP_CONSUMED;
-
-	tx_buf = &xdp_ring->tx_buf[i];
-	tx_buf->bytecount = size;
-	tx_buf->gso_segs = 1;
-	tx_buf->raw_buf = data;
-
-	/* record length, and DMA address */
-	dma_unmap_len_set(tx_buf, len, size);
-	dma_unmap_addr_set(tx_buf, dma, dma);
-
-	tx_desc = ICE_TX_DESC(xdp_ring, i);
-	tx_desc->buf_addr = cpu_to_le64(dma);
-	tx_desc->cmd_type_offset_bsz = ice_build_ctob(ICE_TXD_LAST_DESC_CMD, 0,
-						      size, 0);
-
-	/* Make certain all of the status bits have been updated
-	 * before next_to_watch is written.
-	 */
-	smp_wmb();
-
-	i++;
-	if (i == xdp_ring->count)
-		i = 0;
-
-	tx_buf->next_to_watch = tx_desc;
-	xdp_ring->next_to_use = i;
-
-	return ICE_XDP_TX;
-}
-
-/**
- * ice_xmit_xdp_buff - convert an XDP buffer to an XDP frame and send it
- * @xdp: XDP buffer
- * @xdp_ring: XDP Tx ring
- *
- * Returns negative on failure, 0 on success.
- */
-static int ice_xmit_xdp_buff(struct xdp_buff *xdp, struct ice_ring *xdp_ring)
-{
-	struct xdp_frame *xdpf = convert_to_xdp_frame(xdp);
-
-	if (unlikely(!xdpf))
-		return ICE_XDP_CONSUMED;
-
-	return ice_xmit_xdp_ring(xdpf->data, xdpf->len, xdp_ring);
-}
-
 /**
  * ice_run_xdp - Executes an XDP program on initialized xdp_buff
  * @rx_ring: Rx ring
@@ -612,29 +499,6 @@ ice_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
 	return n - drops;
 }
 
-/**
- * ice_finalize_xdp_rx - Bump XDP Tx tail and/or flush redirect map
- * @rx_ring: Rx ring
- * @xdp_res: Result of the receive batch
- *
- * This function bumps XDP Tx tail and/or flush redirect map, and
- * should be called when a batch of packets has been processed in the
- * napi loop.
- */
-static void
-ice_finalize_xdp_rx(struct ice_ring *rx_ring, unsigned int xdp_res)
-{
-	if (xdp_res & ICE_XDP_REDIR)
-		xdp_do_flush_map();
-
-	if (xdp_res & ICE_XDP_TX) {
-		struct ice_ring *xdp_ring =
-			rx_ring->vsi->xdp_rings[rx_ring->q_index];
-
-		ice_xdp_ring_update_tail(xdp_ring);
-	}
-}
-
 /**
  * ice_alloc_mapped_page - recycle or make a new page
  * @rx_ring: ring to use
@@ -1031,23 +895,6 @@ static bool ice_cleanup_headers(struct sk_buff *skb)
 	return false;
 }
 
-/**
- * ice_test_staterr - tests bits in Rx descriptor status and error fields
- * @rx_desc: pointer to receive descriptor (in le64 format)
- * @stat_err_bits: value to mask
- *
- * This function does some fast chicanery in order to return the
- * value of the mask which is really only used for boolean tests.
- * The status_error_len doesn't need to be shifted because it begins
- * at offset zero.
- */
-static bool
-ice_test_staterr(union ice_32b_rx_flex_desc *rx_desc, const u16 stat_err_bits)
-{
-	return !!(rx_desc->wb.status_error0 &
-		  cpu_to_le16(stat_err_bits));
-}
-
 /**
  * ice_is_non_eop - process handling of non-EOP buffers
  * @rx_ring: Rx ring being processed
@@ -1073,154 +920,6 @@ ice_is_non_eop(struct ice_ring *rx_ring, union ice_32b_rx_flex_desc *rx_desc,
 	return true;
 }
 
-/**
- * ice_ptype_to_htype - get a hash type
- * @ptype: the ptype value from the descriptor
- *
- * Returns a hash type to be used by skb_set_hash
- */
-static enum pkt_hash_types ice_ptype_to_htype(u8 __always_unused ptype)
-{
-	return PKT_HASH_TYPE_NONE;
-}
-
-/**
- * ice_rx_hash - set the hash value in the skb
- * @rx_ring: descriptor ring
- * @rx_desc: specific descriptor
- * @skb: pointer to current skb
- * @rx_ptype: the ptype value from the descriptor
- */
-static void
-ice_rx_hash(struct ice_ring *rx_ring, union ice_32b_rx_flex_desc *rx_desc,
-	    struct sk_buff *skb, u8 rx_ptype)
-{
-	struct ice_32b_rx_flex_desc_nic *nic_mdid;
-	u32 hash;
-
-	if (!(rx_ring->netdev->features & NETIF_F_RXHASH))
-		return;
-
-	if (rx_desc->wb.rxdid != ICE_RXDID_FLEX_NIC)
-		return;
-
-	nic_mdid = (struct ice_32b_rx_flex_desc_nic *)rx_desc;
-	hash = le32_to_cpu(nic_mdid->rss_hash);
-	skb_set_hash(skb, hash, ice_ptype_to_htype(rx_ptype));
-}
-
-/**
- * ice_rx_csum - Indicate in skb if checksum is good
- * @ring: the ring we care about
- * @skb: skb currently being received and modified
- * @rx_desc: the receive descriptor
- * @ptype: the packet type decoded by hardware
- *
- * skb->protocol must be set before this function is called
- */
-static void
-ice_rx_csum(struct ice_ring *ring, struct sk_buff *skb,
-	    union ice_32b_rx_flex_desc *rx_desc, u8 ptype)
-{
-	struct ice_rx_ptype_decoded decoded;
-	u32 rx_error, rx_status;
-	bool ipv4, ipv6;
-
-	rx_status = le16_to_cpu(rx_desc->wb.status_error0);
-	rx_error = rx_status;
-
-	decoded = ice_decode_rx_desc_ptype(ptype);
-
-	/* Start with CHECKSUM_NONE and by default csum_level = 0 */
-	skb->ip_summed = CHECKSUM_NONE;
-	skb_checksum_none_assert(skb);
-
-	/* check if Rx checksum is enabled */
-	if (!(ring->netdev->features & NETIF_F_RXCSUM))
-		return;
-
-	/* check if HW has decoded the packet and checksum */
-	if (!(rx_status & BIT(ICE_RX_FLEX_DESC_STATUS0_L3L4P_S)))
-		return;
-
-	if (!(decoded.known && decoded.outer_ip))
-		return;
-
-	ipv4 = (decoded.outer_ip == ICE_RX_PTYPE_OUTER_IP) &&
-	       (decoded.outer_ip_ver == ICE_RX_PTYPE_OUTER_IPV4);
-	ipv6 = (decoded.outer_ip == ICE_RX_PTYPE_OUTER_IP) &&
-	       (decoded.outer_ip_ver == ICE_RX_PTYPE_OUTER_IPV6);
-
-	if (ipv4 && (rx_error & (BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_IPE_S) |
-				 BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_EIPE_S))))
-		goto checksum_fail;
-	else if (ipv6 && (rx_status &
-		 (BIT(ICE_RX_FLEX_DESC_STATUS0_IPV6EXADD_S))))
-		goto checksum_fail;
-
-	/* check for L4 errors and handle packets that were not able to be
-	 * checksummed due to arrival speed
-	 */
-	if (rx_error & BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_L4E_S))
-		goto checksum_fail;
-
-	/* Only report checksum unnecessary for TCP, UDP, or SCTP */
-	switch (decoded.inner_prot) {
-	case ICE_RX_PTYPE_INNER_PROT_TCP:
-	case ICE_RX_PTYPE_INNER_PROT_UDP:
-	case ICE_RX_PTYPE_INNER_PROT_SCTP:
-		skb->ip_summed = CHECKSUM_UNNECESSARY;
-	default:
-		break;
-	}
-	return;
-
-checksum_fail:
-	ring->vsi->back->hw_csum_rx_error++;
-}
-
-/**
- * ice_process_skb_fields - Populate skb header fields from Rx descriptor
- * @rx_ring: Rx descriptor ring packet is being transacted on
- * @rx_desc: pointer to the EOP Rx descriptor
- * @skb: pointer to current skb being populated
- * @ptype: the packet type decoded by hardware
- *
- * This function checks the ring, descriptor, and packet information in
- * order to populate the hash, checksum, VLAN, protocol, and
- * other fields within the skb.
- */
-static void
-ice_process_skb_fields(struct ice_ring *rx_ring,
-		       union ice_32b_rx_flex_desc *rx_desc,
-		       struct sk_buff *skb, u8 ptype)
-{
-	ice_rx_hash(rx_ring, rx_desc, skb, ptype);
-
-	/* modifies the skb - consumes the enet header */
-	skb->protocol = eth_type_trans(skb, rx_ring->netdev);
-
-	ice_rx_csum(rx_ring, skb, rx_desc, ptype);
-}
-
-/**
- * ice_receive_skb - Send a completed packet up the stack
- * @rx_ring: Rx ring in play
- * @skb: packet to send up
- * @vlan_tag: VLAN tag for packet
- *
- * This function sends the completed packet (via. skb) up the stack using
- * gro receive functions (with/without VLAN tag)
- */
-static void
-ice_receive_skb(struct ice_ring *rx_ring, struct sk_buff *skb, u16 vlan_tag)
-{
-	if ((rx_ring->netdev->features & NETIF_F_HW_VLAN_CTAG_RX) &&
-	    (vlan_tag & VLAN_VID_MASK))
-		__vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), vlan_tag);
-	napi_gro_receive(&rx_ring->q_vector->napi, skb);
-}
-
 /**
  * ice_clean_rx_irq - Clean completed descriptors from Rx ring - bounce buf
  * @rx_ring: Rx descriptor ring to transact packets on
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
new file mode 100644
index 000000000000..cff02fa76c02
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -0,0 +1,273 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c) 2019, Intel Corporation. */
+
+#include "ice_txrx_lib.h"
+
+/**
+ * ice_release_rx_desc - Store the new tail and head values
+ * @rx_ring: ring to bump
+ * @val: new head index
+ */
+void ice_release_rx_desc(struct ice_ring *rx_ring, u32 val)
+{
+	u16 prev_ntu = rx_ring->next_to_use;
+
+	rx_ring->next_to_use = val;
+
+	/* update next to alloc since we have filled the ring */
+	rx_ring->next_to_alloc = val;
+
+	/* QRX_TAIL will be updated with any tail value, but hardware ignores
+	 * the lower 3 bits. This makes it so we only bump tail on meaningful
+	 * boundaries. Also, this allows us to bump tail on intervals of 8 up to
+	 * the budget depending on the current traffic load.
+	 */
+	val &= ~0x7;
+	if (prev_ntu != val) {
+		/* Force memory writes to complete before letting h/w
+		 * know there are new descriptors to fetch. (Only
+		 * applicable for weak-ordered memory model archs,
+		 * such as IA-64).
+		 */
+		wmb();
+		writel(val, rx_ring->tail);
+	}
+}
+
+/**
+ * ice_ptype_to_htype - get a hash type
+ * @ptype: the ptype value from the descriptor
+ *
+ * Returns a hash type to be used by skb_set_hash
+ */
+static enum pkt_hash_types ice_ptype_to_htype(u8 __always_unused ptype)
+{
+	return PKT_HASH_TYPE_NONE;
+}
+
+/**
+ * ice_rx_hash - set the hash value in the skb
+ * @rx_ring: descriptor ring
+ * @rx_desc: specific descriptor
+ * @skb: pointer to current skb
+ * @rx_ptype: the ptype value from the descriptor
+ */
+static void
+ice_rx_hash(struct ice_ring *rx_ring, union ice_32b_rx_flex_desc *rx_desc,
+	    struct sk_buff *skb, u8 rx_ptype)
+{
+	struct ice_32b_rx_flex_desc_nic *nic_mdid;
+	u32 hash;
+
+	if (!(rx_ring->netdev->features & NETIF_F_RXHASH))
+		return;
+
+	if (rx_desc->wb.rxdid != ICE_RXDID_FLEX_NIC)
+		return;
+
+	nic_mdid = (struct ice_32b_rx_flex_desc_nic *)rx_desc;
+	hash = le32_to_cpu(nic_mdid->rss_hash);
+	skb_set_hash(skb, hash, ice_ptype_to_htype(rx_ptype));
+}
+
+/**
+ * ice_rx_csum - Indicate in skb if checksum is good
+ * @ring: the ring we care about
+ * @skb: skb currently being received and modified
+ * @rx_desc: the receive descriptor
+ * @ptype: the packet type decoded by hardware
+ *
+ * skb->protocol must be set before this function is called
+ */
+static void
+ice_rx_csum(struct ice_ring *ring, struct sk_buff *skb,
+	    union ice_32b_rx_flex_desc *rx_desc, u8 ptype)
+{
+	struct ice_rx_ptype_decoded decoded;
+	u32 rx_error, rx_status;
+	bool ipv4, ipv6;
+
+	rx_status = le16_to_cpu(rx_desc->wb.status_error0);
+	rx_error = rx_status;
+
+	decoded = ice_decode_rx_desc_ptype(ptype);
+
+	/* Start with CHECKSUM_NONE and by default csum_level = 0 */
+	skb->ip_summed = CHECKSUM_NONE;
+	skb_checksum_none_assert(skb);
+
+	/* check if Rx checksum is enabled */
+	if (!(ring->netdev->features & NETIF_F_RXCSUM))
+		return;
+
+	/* check if HW has decoded the packet and checksum */
+	if (!(rx_status & BIT(ICE_RX_FLEX_DESC_STATUS0_L3L4P_S)))
+		return;
+
+	if (!(decoded.known && decoded.outer_ip))
+		return;
+
+	ipv4 = (decoded.outer_ip == ICE_RX_PTYPE_OUTER_IP) &&
+	       (decoded.outer_ip_ver == ICE_RX_PTYPE_OUTER_IPV4);
+	ipv6 = (decoded.outer_ip == ICE_RX_PTYPE_OUTER_IP) &&
+	       (decoded.outer_ip_ver == ICE_RX_PTYPE_OUTER_IPV6);
+
+	if (ipv4 && (rx_error & (BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_IPE_S) |
+				 BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_EIPE_S))))
+		goto checksum_fail;
+	else if (ipv6 && (rx_status &
+		 (BIT(ICE_RX_FLEX_DESC_STATUS0_IPV6EXADD_S))))
+		goto checksum_fail;
+
+	/* check for L4 errors and handle packets that were not able to be
+	 * checksummed due to arrival speed
+	 */
+	if (rx_error & BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_L4E_S))
+		goto checksum_fail;
+
+	/* Only report checksum unnecessary for TCP, UDP, or SCTP */
+	switch (decoded.inner_prot) {
+	case ICE_RX_PTYPE_INNER_PROT_TCP:
+	case ICE_RX_PTYPE_INNER_PROT_UDP:
+	case ICE_RX_PTYPE_INNER_PROT_SCTP:
+		skb->ip_summed = CHECKSUM_UNNECESSARY;
+	default:
+		break;
+	}
+	return;
+
+checksum_fail:
+	ring->vsi->back->hw_csum_rx_error++;
+}
+
+/**
+ * ice_process_skb_fields - Populate skb header fields from Rx descriptor
+ * @rx_ring: Rx descriptor ring packet is being transacted on
+ * @rx_desc: pointer to the EOP Rx descriptor
+ * @skb: pointer to current skb being populated
+ * @ptype: the packet type decoded by hardware
+ *
+ * This function checks the ring, descriptor, and packet information in
+ * order to populate the hash, checksum, VLAN, protocol, and
+ * other fields within the skb.
+ */
+void
+ice_process_skb_fields(struct ice_ring *rx_ring,
+		       union ice_32b_rx_flex_desc *rx_desc,
+		       struct sk_buff *skb, u8 ptype)
+{
+	ice_rx_hash(rx_ring, rx_desc, skb, ptype);
+
+	/* modifies the skb - consumes the enet header */
+	skb->protocol = eth_type_trans(skb, rx_ring->netdev);
+
+	ice_rx_csum(rx_ring, skb, rx_desc, ptype);
+}
+
+/**
+ * ice_receive_skb - Send a completed packet up the stack
+ * @rx_ring: Rx ring in play
+ * @skb: packet to send up
+ * @vlan_tag: VLAN tag for packet
+ *
+ * This function sends the completed packet (via. skb) up the stack using
+ * gro receive functions (with/without VLAN tag)
+ */
+void
+ice_receive_skb(struct ice_ring *rx_ring, struct sk_buff *skb, u16 vlan_tag)
+{
+	if ((rx_ring->netdev->features & NETIF_F_HW_VLAN_CTAG_RX) &&
+	    (vlan_tag & VLAN_VID_MASK))
+		__vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), vlan_tag);
+	napi_gro_receive(&rx_ring->q_vector->napi, skb);
+}
+
+/**
+ * ice_xmit_xdp_ring - submit single packet to XDP ring for transmission
+ * @data: packet data pointer
+ * @size: packet data size
+ * @xdp_ring: XDP ring for transmission
+ */
+int ice_xmit_xdp_ring(void *data, u16 size, struct ice_ring *xdp_ring)
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
+	tx_desc->cmd_type_offset_bsz = ice_build_ctob(ICE_TXD_LAST_DESC_CMD, 0,
+						      size, 0);
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
+ * ice_xmit_xdp_buff - convert an XDP buffer to an XDP frame and send it
+ * @xdp: XDP buffer
+ * @xdp_ring: XDP Tx ring
+ *
+ * Returns negative on failure, 0 on success.
+ */
+int ice_xmit_xdp_buff(struct xdp_buff *xdp, struct ice_ring *xdp_ring)
+{
+	struct xdp_frame *xdpf = convert_to_xdp_frame(xdp);
+
+	if (unlikely(!xdpf))
+		return ICE_XDP_CONSUMED;
+
+	return ice_xmit_xdp_ring(xdpf->data, xdpf->len, xdp_ring);
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
+void ice_finalize_xdp_rx(struct ice_ring *rx_ring, unsigned int xdp_res)
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
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
new file mode 100644
index 000000000000..54ec512ee8fb
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
@@ -0,0 +1,49 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (c) 2019, Intel Corporation. */
+
+#ifndef _ICE_TXRX_LIB_H_
+#define _ICE_TXRX_LIB_H_
+#include "ice.h"
+
+/**
+ * ice_test_staterr - tests bits in Rx descriptor status and error fields
+ * @rx_desc: pointer to receive descriptor (in le64 format)
+ * @stat_err_bits: value to mask
+ *
+ * This function does some fast chicanery in order to return the
+ * value of the mask which is really only used for boolean tests.
+ * The status_error_len doesn't need to be shifted because it begins
+ * at offset zero.
+ */
+static inline bool
+ice_test_staterr(union ice_32b_rx_flex_desc *rx_desc, const u16 stat_err_bits)
+{
+	return !!(rx_desc->wb.status_error0 & cpu_to_le16(stat_err_bits));
+}
+
+/**
+ * ice_xdp_ring_update_tail - Updates the XDP Tx ring tail register
+ * @xdp_ring: XDP Tx ring
+ *
+ * This function updates the XDP Tx ring tail register.
+ */
+static inline void ice_xdp_ring_update_tail(struct ice_ring *xdp_ring)
+{
+	/* Force memory writes to complete before letting h/w
+	 * know there are new descriptors to fetch.
+	 */
+	wmb();
+	writel_relaxed(xdp_ring->next_to_use, xdp_ring->tail);
+}
+
+void ice_finalize_xdp_rx(struct ice_ring *rx_ring, unsigned int xdp_res);
+int ice_xmit_xdp_buff(struct xdp_buff *xdp, struct ice_ring *xdp_ring);
+int ice_xmit_xdp_ring(void *data, u16 size, struct ice_ring *xdp_ring);
+void ice_release_rx_desc(struct ice_ring *rx_ring, u32 val);
+void
+ice_process_skb_fields(struct ice_ring *rx_ring,
+		       union ice_32b_rx_flex_desc *rx_desc,
+		       struct sk_buff *skb, u8 ptype);
+void
+ice_receive_skb(struct ice_ring *rx_ring, struct sk_buff *skb, u16 vlan_tag);
+#endif /* !_ICE_TXRX_LIB_H_ */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
