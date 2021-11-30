Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 867EB4628FD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Nov 2021 01:17:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 34BEA615EE;
	Tue, 30 Nov 2021 00:17:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WB-73ysjfnWO; Tue, 30 Nov 2021 00:17:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C05B76069A;
	Tue, 30 Nov 2021 00:17:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8D5A11BF2C2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 00:17:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F0A736069A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 00:17:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qAhcwiYEvQKU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Nov 2021 00:17:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E962760C30
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 00:17:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10183"; a="322343847"
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; d="scan'208";a="322343847"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2021 16:17:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; d="scan'208";a="511927989"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.133])
 by orsmga008.jf.intel.com with ESMTP; 29 Nov 2021 16:17:19 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 29 Nov 2021 16:16:02 -0800
Message-Id: <20211130001604.22112-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211130001604.22112-1-anthony.l.nguyen@intel.com>
References: <20211130001604.22112-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 4/6] iavf: Add support for
 VIRTCHNL_VF_OFFLOAD_VLAN_V2 hotpath
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

From: Brett Creeley <brett.creeley@intel.com>

The new VIRTCHNL_VF_OFFLOAD_VLAN_V2 capability added support that allows
the PF to set the location of the Tx and Rx VLAN tag for insertion and
stripping offloads. In order to support this functionality a few changes
are needed.

1. Add a new method to cache the VLAN tag location based on negotiated
   capabilities for the Tx and Rx ring flags. This needs to be called in
   the initialization and reset paths.

2. Refactor the transmit hotpath to account for the new Tx ring flags.
   When IAVF_TXR_FLAGS_VLAN_LOC_L2TAG2 is set, then the driver needs to
   insert the VLAN tag in the L2TAG2 field of the transmit descriptor.
   When the IAVF_TXRX_FLAGS_VLAN_LOC_L2TAG1 is set, then the driver needs
   to use the l2tag1 field of the data descriptor (same behavior as
   before).

3. Refactor the iavf_tx_prepare_vlan_flags() function to simplify
   transmit hardware VLAN offload functionality by only depending on the
   skb_vlan_tag_present() function. This can be done because the OS
   won't request transmit offload for a VLAN unless the driver told the
   OS it's supported and enabled.

4. Refactor the receive hotpath to account for the new Rx ring flags and
   VLAN ethertypes. This requires checking the Rx ring flags and
   descriptor status bits to determine the location of the VLAN tag.
   Also, since only a single ethertype can be supported at a time, check
   the enabled netdev features before specifying a VLAN ethertype in
   __vlan_hwaccel_put_tag().

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |  1 +
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 82 +++++++++++++++++++
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 71 ++++++++--------
 drivers/net/ethernet/intel/iavf/iavf_txrx.h   | 30 ++++---
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  2 +
 5 files changed, 135 insertions(+), 51 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 5fb6ebf9a760..2660d46da1b5 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -488,6 +488,7 @@ int iavf_send_vf_config_msg(struct iavf_adapter *adapter);
 int iavf_get_vf_config(struct iavf_adapter *adapter);
 int iavf_get_vf_vlan_v2_caps(struct iavf_adapter *adapter);
 int iavf_send_vf_offload_vlan_v2_msg(struct iavf_adapter *adapter);
+void iavf_set_queue_vlan_tag_loc(struct iavf_adapter *adapter);
 void iavf_irq_enable(struct iavf_adapter *adapter, bool flush);
 void iavf_configure_queues(struct iavf_adapter *adapter);
 void iavf_deconfigure_queues(struct iavf_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 89d08b2f8a13..945369bbe04a 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1165,6 +1165,86 @@ static void iavf_free_queues(struct iavf_adapter *adapter)
 	adapter->rx_rings = NULL;
 }
 
+/**
+ * iavf_set_queue_vlan_tag_loc - set location for VLAN tag offload
+ * @adapter: board private structure
+ *
+ * Based on negotiated capabilities, the VLAN tag needs to be inserted and/or
+ * stripped in certain descriptor fields. Instead of checking the offload
+ * capability bits in the hot path, cache the location the ring specific
+ * flags.
+ */
+void iavf_set_queue_vlan_tag_loc(struct iavf_adapter *adapter)
+{
+	int i;
+
+	for (i = 0; i < adapter->num_active_queues; i++) {
+		struct iavf_ring *tx_ring = &adapter->tx_rings[i];
+		struct iavf_ring *rx_ring = &adapter->rx_rings[i];
+
+		/* prevent multiple L2TAG bits being set after VFR */
+		tx_ring->flags &=
+			~(IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1 |
+			  IAVF_TXR_FLAGS_VLAN_TAG_LOC_L2TAG2);
+		rx_ring->flags &=
+			~(IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1 |
+			  IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2);
+
+		if (VLAN_ALLOWED(adapter)) {
+			tx_ring->flags |= IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1;
+			rx_ring->flags |= IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1;
+		} else if (VLAN_V2_ALLOWED(adapter)) {
+			struct virtchnl_vlan_supported_caps *stripping_support;
+			struct virtchnl_vlan_supported_caps *insertion_support;
+
+			stripping_support =
+				&adapter->vlan_v2_caps.offloads.stripping_support;
+			insertion_support =
+				&adapter->vlan_v2_caps.offloads.insertion_support;
+
+			if (stripping_support->outer) {
+				if (stripping_support->outer &
+				    VIRTCHNL_VLAN_TAG_LOCATION_L2TAG1)
+					rx_ring->flags |=
+						IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1;
+				else if (stripping_support->outer &
+					 VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2_2)
+					rx_ring->flags |=
+						IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2;
+			} else if (stripping_support->inner) {
+				if (stripping_support->inner &
+				    VIRTCHNL_VLAN_TAG_LOCATION_L2TAG1)
+					rx_ring->flags |=
+						IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1;
+				else if (stripping_support->inner &
+					 VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2_2)
+					rx_ring->flags |=
+						IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2;
+			}
+
+			if (insertion_support->outer) {
+				if (insertion_support->outer &
+				    VIRTCHNL_VLAN_TAG_LOCATION_L2TAG1)
+					tx_ring->flags |=
+						IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1;
+				else if (insertion_support->outer &
+					 VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2)
+					tx_ring->flags |=
+						IAVF_TXR_FLAGS_VLAN_TAG_LOC_L2TAG2;
+			} else if (insertion_support->inner) {
+				if (insertion_support->inner &
+				    VIRTCHNL_VLAN_TAG_LOCATION_L2TAG1)
+					tx_ring->flags |=
+						IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1;
+				else if (insertion_support->inner &
+					 VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2)
+					tx_ring->flags |=
+						IAVF_TXR_FLAGS_VLAN_TAG_LOC_L2TAG2;
+			}
+		}
+	}
+}
+
 /**
  * iavf_alloc_queues - Allocate memory for all rings
  * @adapter: board private structure to initialize
@@ -1226,6 +1306,8 @@ static int iavf_alloc_queues(struct iavf_adapter *adapter)
 
 	adapter->num_active_queues = num_active_queues;
 
+	iavf_set_queue_vlan_tag_loc(adapter);
+
 	return 0;
 
 err_out:
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 8f2376d17466..8cbe7ad1347c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -865,6 +865,9 @@ static void iavf_receive_skb(struct iavf_ring *rx_ring,
 	if ((rx_ring->netdev->features & NETIF_F_HW_VLAN_CTAG_RX) &&
 	    (vlan_tag & VLAN_VID_MASK))
 		__vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), vlan_tag);
+	else if ((rx_ring->netdev->features & NETIF_F_HW_VLAN_STAG_RX) &&
+		 vlan_tag & VLAN_VID_MASK)
+		__vlan_hwaccel_put_tag(skb, htons(ETH_P_8021AD), vlan_tag);
 
 	napi_gro_receive(&q_vector->napi, skb);
 }
@@ -1468,7 +1471,7 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		struct iavf_rx_buffer *rx_buffer;
 		union iavf_rx_desc *rx_desc;
 		unsigned int size;
-		u16 vlan_tag;
+		u16 vlan_tag = 0;
 		u8 rx_ptype;
 		u64 qword;
 
@@ -1551,9 +1554,13 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		/* populate checksum, VLAN, and protocol */
 		iavf_process_skb_fields(rx_ring, rx_desc, skb, rx_ptype);
 
-
-		vlan_tag = (qword & BIT(IAVF_RX_DESC_STATUS_L2TAG1P_SHIFT)) ?
-			   le16_to_cpu(rx_desc->wb.qword0.lo_dword.l2tag1) : 0;
+		if (qword & BIT(IAVF_RX_DESC_STATUS_L2TAG1P_SHIFT) &&
+		    rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1)
+			vlan_tag = le16_to_cpu(rx_desc->wb.qword0.lo_dword.l2tag1);
+		if (rx_desc->wb.qword2.ext_status &
+		    cpu_to_le16(BIT(IAVF_RX_DESC_EXT_STATUS_L2TAG2P_SHIFT)) &&
+		    rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2)
+			vlan_tag = le16_to_cpu(rx_desc->wb.qword2.l2tag2_2);
 
 		iavf_trace(clean_rx_irq_rx, rx_ring, rx_desc, skb);
 		iavf_receive_skb(rx_ring, skb, vlan_tag);
@@ -1781,46 +1788,29 @@ int iavf_napi_poll(struct napi_struct *napi, int budget)
  * Returns error code indicate the frame should be dropped upon error and the
  * otherwise  returns 0 to indicate the flags has been set properly.
  **/
-static inline int iavf_tx_prepare_vlan_flags(struct sk_buff *skb,
-					     struct iavf_ring *tx_ring,
-					     u32 *flags)
+static void iavf_tx_prepare_vlan_flags(struct sk_buff *skb,
+				       struct iavf_ring *tx_ring, u32 *flags)
 {
-	__be16 protocol = skb->protocol;
 	u32  tx_flags = 0;
 
-	if (protocol == htons(ETH_P_8021Q) &&
-	    !(tx_ring->netdev->features & NETIF_F_HW_VLAN_CTAG_TX)) {
-		/* When HW VLAN acceleration is turned off by the user the
-		 * stack sets the protocol to 8021q so that the driver
-		 * can take any steps required to support the SW only
-		 * VLAN handling.  In our case the driver doesn't need
-		 * to take any further steps so just set the protocol
-		 * to the encapsulated ethertype.
-		 */
-		skb->protocol = vlan_get_protocol(skb);
-		goto out;
-	}
 
-	/* if we have a HW VLAN tag being added, default to the HW one */
-	if (skb_vlan_tag_present(skb)) {
-		tx_flags |= skb_vlan_tag_get(skb) << IAVF_TX_FLAGS_VLAN_SHIFT;
-		tx_flags |= IAVF_TX_FLAGS_HW_VLAN;
-	/* else if it is a SW VLAN, check the next protocol and store the tag */
-	} else if (protocol == htons(ETH_P_8021Q)) {
-		struct vlan_hdr *vhdr, _vhdr;
-
-		vhdr = skb_header_pointer(skb, ETH_HLEN, sizeof(_vhdr), &_vhdr);
-		if (!vhdr)
-			return -EINVAL;
+	/* stack will only request hardware VLAN insertion offload for protocols
+	 * that the driver supports and has enabled
+	 */
+	if (!skb_vlan_tag_present(skb))
+		return;
 
-		protocol = vhdr->h_vlan_encapsulated_proto;
-		tx_flags |= ntohs(vhdr->h_vlan_TCI) << IAVF_TX_FLAGS_VLAN_SHIFT;
-		tx_flags |= IAVF_TX_FLAGS_SW_VLAN;
+	tx_flags |= skb_vlan_tag_get(skb) << IAVF_TX_FLAGS_VLAN_SHIFT;
+	if (tx_ring->flags & IAVF_TXR_FLAGS_VLAN_TAG_LOC_L2TAG2) {
+		tx_flags |= IAVF_TX_FLAGS_HW_OUTER_SINGLE_VLAN;
+	} else if (tx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1) {
+		tx_flags |= IAVF_TX_FLAGS_HW_VLAN;
+	} else {
+		dev_dbg(tx_ring->dev, "Unsupported Tx VLAN tag location requested\n");
+		return;
 	}
 
-out:
 	*flags = tx_flags;
-	return 0;
 }
 
 /**
@@ -2440,8 +2430,13 @@ static netdev_tx_t iavf_xmit_frame_ring(struct sk_buff *skb,
 	first->gso_segs = 1;
 
 	/* prepare the xmit flags */
-	if (iavf_tx_prepare_vlan_flags(skb, tx_ring, &tx_flags))
-		goto out_drop;
+	iavf_tx_prepare_vlan_flags(skb, tx_ring, &tx_flags);
+	if (tx_flags & IAVF_TX_FLAGS_HW_OUTER_SINGLE_VLAN) {
+		cd_type_cmd_tso_mss |= IAVF_TX_CTX_DESC_IL2TAG2 <<
+			IAVF_TXD_CTX_QW1_CMD_SHIFT;
+		cd_l2tag2 = (tx_flags & IAVF_TX_FLAGS_VLAN_MASK) >>
+			IAVF_TX_FLAGS_VLAN_SHIFT;
+	}
 
 	/* obtain protocol of skb */
 	protocol = vlan_get_protocol(skb);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index e5b9ba42dd00..2624bf6d009e 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
@@ -243,19 +243,20 @@ static inline unsigned int iavf_txd_use_count(unsigned int size)
 #define DESC_NEEDED (MAX_SKB_FRAGS + 6)
 #define IAVF_MIN_DESC_PENDING	4
 
-#define IAVF_TX_FLAGS_HW_VLAN		BIT(1)
-#define IAVF_TX_FLAGS_SW_VLAN		BIT(2)
-#define IAVF_TX_FLAGS_TSO		BIT(3)
-#define IAVF_TX_FLAGS_IPV4		BIT(4)
-#define IAVF_TX_FLAGS_IPV6		BIT(5)
-#define IAVF_TX_FLAGS_FCCRC		BIT(6)
-#define IAVF_TX_FLAGS_FSO		BIT(7)
-#define IAVF_TX_FLAGS_FD_SB		BIT(9)
-#define IAVF_TX_FLAGS_VXLAN_TUNNEL	BIT(10)
-#define IAVF_TX_FLAGS_VLAN_MASK		0xffff0000
-#define IAVF_TX_FLAGS_VLAN_PRIO_MASK	0xe0000000
-#define IAVF_TX_FLAGS_VLAN_PRIO_SHIFT	29
-#define IAVF_TX_FLAGS_VLAN_SHIFT	16
+#define IAVF_TX_FLAGS_HW_VLAN			BIT(1)
+#define IAVF_TX_FLAGS_SW_VLAN			BIT(2)
+#define IAVF_TX_FLAGS_TSO			BIT(3)
+#define IAVF_TX_FLAGS_IPV4			BIT(4)
+#define IAVF_TX_FLAGS_IPV6			BIT(5)
+#define IAVF_TX_FLAGS_FCCRC			BIT(6)
+#define IAVF_TX_FLAGS_FSO			BIT(7)
+#define IAVF_TX_FLAGS_FD_SB			BIT(9)
+#define IAVF_TX_FLAGS_VXLAN_TUNNEL		BIT(10)
+#define IAVF_TX_FLAGS_HW_OUTER_SINGLE_VLAN	BIT(11)
+#define IAVF_TX_FLAGS_VLAN_MASK			0xffff0000
+#define IAVF_TX_FLAGS_VLAN_PRIO_MASK		0xe0000000
+#define IAVF_TX_FLAGS_VLAN_PRIO_SHIFT		29
+#define IAVF_TX_FLAGS_VLAN_SHIFT		16
 
 struct iavf_tx_buffer {
 	struct iavf_tx_desc *next_to_watch;
@@ -362,6 +363,9 @@ struct iavf_ring {
 	u16 flags;
 #define IAVF_TXR_FLAGS_WB_ON_ITR		BIT(0)
 #define IAVF_RXR_FLAGS_BUILD_SKB_ENABLED	BIT(1)
+#define IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1	BIT(3)
+#define IAVF_TXR_FLAGS_VLAN_TAG_LOC_L2TAG2	BIT(4)
+#define IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2	BIT(5)
 
 	/* stats structs */
 	struct iavf_queue_stats	stats;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 2dc1c435223c..613fcc491fd7 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -1962,6 +1962,8 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 			dev_warn(&adapter->pdev->dev, "failed to acquire crit_lock in %s\n",
 				 __FUNCTION__);
 
+		iavf_set_queue_vlan_tag_loc(adapter);
+
 		}
 		break;
 	case VIRTCHNL_OP_ENABLE_QUEUES:
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
