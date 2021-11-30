Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 115A44643A9
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Dec 2021 00:54:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9067180F38;
	Tue, 30 Nov 2021 23:54:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HTSKEw595XEH; Tue, 30 Nov 2021 23:53:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F44380BFF;
	Tue, 30 Nov 2021 23:53:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5542F1BF995
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 23:53:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D8794400D1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 23:53:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BoVvjIkxYd12 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Nov 2021 23:53:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 10AC740177
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 23:53:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="236164181"
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="236164181"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 15:53:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="511726101"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.133])
 by fmsmga007.fm.intel.com with ESMTP; 30 Nov 2021 15:53:01 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 30 Nov 2021 15:51:41 -0800
Message-Id: <20211130235146.28731-9-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211130235146.28731-1-anthony.l.nguyen@intel.com>
References: <20211130235146.28731-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 09/14] ice: Add hot path
 support for 802.1Q and 802.1ad VLAN offloads
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

Currently the driver only supports 802.1Q VLAN insertion and stripping.
However, once Double VLAN Mode (DVM) is fully supported, then both 802.1Q
and 802.1ad VLAN insertion and stripping will be supported. Unfortunately
the VSI context parameters only allow for one VLAN ethertype at a time
for VLAN offloads so only one or the other VLAN ethertype offload can be
supported at once.

To support this, multiple changes are needed.

Rx path changes:

[1] In DVM, the Rx queue context l2tagsel field needs to be cleared so
the outermost tag shows up in the l2tag2_2nd field of the Rx flex
descriptor. In Single VLAN Mode (SVM), the l2tagsel field should remain
1 to support SVM configurations.

[2] Modify the ice_test_staterr() function to take a __le16 instead of
the ice_32b_rx_flex_desc union pointer so this function can be used for
both rx_desc->wb.status_error0 and rx_desc->wb.status_error1.

[3] Add the new inline function ice_get_vlan_tag_from_rx_desc() that
checks if there is a VLAN tag in l2tag1 or l2tag2_2nd.

[4] In ice_receive_skb(), add a check to see if NETIF_F_HW_VLAN_STAG_RX
is enabled in netdev->features. If it is, then this is the VLAN
ethertype that needs to be added to the stripping VLAN tag. Since
ice_fix_features() prevents CTAG_RX and STAG_RX from being enabled
simultaneously, the VLAN ethertype will only ever be 802.1Q or 802.1ad.

Tx path changes:

[1] In DVM, the VLAN tag needs to be placed in the l2tag2 field of the Tx
context descriptor. The new define ICE_TX_FLAGS_HW_OUTER_SINGLE_VLAN was
added to the list of tx_flags to handle this case.

[2] When the stack requests the VLAN tag to be offloaded on Tx, the
driver needs to set either ICE_TX_FLAGS_HW_OUTER_SINGLE_VLAN or
ICE_TX_FLAGS_HW_VLAN, so the tag is inserted in l2tag2 or l2tag1
respectively. To determine which location to use, set a bit in the Tx
ring flags field during ring allocation that can be used to determine
which field to use in the Tx descriptor. In DVM, always use l2tag2,
and in SVM, always use l2tag1.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
v2: Fix kdoc issue

 drivers/net/ethernet/intel/ice/ice_base.c     | 18 +++++++++--
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |  8 +++--
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |  2 ++
 drivers/net/ethernet/intel/ice/ice_lib.c      |  5 ++++
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 28 +++++++++++------
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  3 ++
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  9 ++++--
 drivers/net/ethernet/intel/ice/ice_txrx_lib.h | 30 +++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_xsk.c      |  6 ++--
 9 files changed, 87 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 44bdd0ed1629..9ca0ae2bb1dc 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -406,8 +406,22 @@ static int ice_setup_rx_ctx(struct ice_rx_ring *ring)
 	 */
 	rlan_ctx.crcstrip = 1;
 
-	/* L2TSEL flag defines the reported L2 Tags in the receive descriptor */
-	rlan_ctx.l2tsel = 1;
+	/* L2TSEL flag defines the reported L2 Tags in the receive descriptor
+	 * and it needs to remain 1 for non-DVM capable configurations to not
+	 * break backward compatibility for VF drivers. Setting this field to 0
+	 * will cause the single/outer VLAN tag to be stripped to the L2TAG2_2ND
+	 * field in the Rx descriptor. Setting it to 1 allows the VLAN tag to
+	 * be stripped in L2TAG1 of the Rx descriptor, which is where VFs will
+	 * check for the tag
+	 */
+	if (ice_is_dvm_ena(hw))
+		if (vsi->type == ICE_VSI_VF &&
+		    ice_vf_is_port_vlan_ena(&vsi->back->vf[vsi->vf_id]))
+			rlan_ctx.l2tsel = 1;
+		else
+			rlan_ctx.l2tsel = 0;
+	else
+		rlan_ctx.l2tsel = 1;
 
 	rlan_ctx.dtype = ICE_RX_DTYPE_NO_SPLIT;
 	rlan_ctx.hsplit_0 = ICE_RLAN_RX_HSPLIT_0_NO_SPLIT;
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index b94d8daeaa58..add90e75f05c 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -916,7 +916,8 @@ ice_tx_prepare_vlan_flags_dcb(struct ice_tx_ring *tx_ring,
 		return;
 
 	/* Insert 802.1p priority into VLAN header */
-	if ((first->tx_flags & ICE_TX_FLAGS_HW_VLAN) ||
+	if ((first->tx_flags & ICE_TX_FLAGS_HW_VLAN ||
+	     first->tx_flags & ICE_TX_FLAGS_HW_OUTER_SINGLE_VLAN) ||
 	    skb->priority != TC_PRIO_CONTROL) {
 		first->tx_flags &= ~ICE_TX_FLAGS_VLAN_PR_M;
 		/* Mask the lower 3 bits to set the 802.1p priority */
@@ -925,7 +926,10 @@ ice_tx_prepare_vlan_flags_dcb(struct ice_tx_ring *tx_ring,
 		/* if this is not already set it means a VLAN 0 + priority needs
 		 * to be offloaded
 		 */
-		first->tx_flags |= ICE_TX_FLAGS_HW_VLAN;
+		if (tx_ring->flags & ICE_TX_FLAGS_RING_VLAN_L2TAG2)
+			first->tx_flags |= ICE_TX_FLAGS_HW_OUTER_SINGLE_VLAN;
+		else
+			first->tx_flags |= ICE_TX_FLAGS_HW_VLAN;
 	}
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
index d981dc6f2323..a1fc676a4665 100644
--- a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
+++ b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
@@ -424,6 +424,8 @@ enum ice_rx_flex_desc_status_error_0_bits {
 enum ice_rx_flex_desc_status_error_1_bits {
 	/* Note: These are predefined bit offsets */
 	ICE_RX_FLEX_DESC_STATUS1_NAT_S = 4,
+	 /* [10:5] reserved */
+	ICE_RX_FLEX_DESC_STATUS1_L2TAG2P_S = 11,
 	ICE_RX_FLEX_DESC_STATUS1_LAST /* this entry must be last!!! */
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 6a7f107a43c5..36507f0dc04e 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1370,6 +1370,7 @@ static void ice_vsi_clear_rings(struct ice_vsi *vsi)
  */
 static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
 {
+	bool dvm_ena = ice_is_dvm_ena(&vsi->back->hw);
 	struct ice_pf *pf = vsi->back;
 	struct device *dev;
 	u16 i;
@@ -1391,6 +1392,10 @@ static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
 		ring->tx_tstamps = &pf->ptp.port.tx;
 		ring->dev = dev;
 		ring->count = vsi->num_tx_desc;
+		if (dvm_ena)
+			ring->flags |= ICE_TX_FLAGS_RING_VLAN_L2TAG2;
+		else
+			ring->flags |= ICE_TX_FLAGS_RING_VLAN_L2TAG1;
 		WRITE_ONCE(vsi->tx_rings[i], ring);
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index d21f1c946767..3461aa21641a 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1073,7 +1073,7 @@ ice_is_non_eop(struct ice_rx_ring *rx_ring, union ice_32b_rx_flex_desc *rx_desc)
 {
 	/* if we are the last buffer then there is nothing else to do */
 #define ICE_RXD_EOF BIT(ICE_RX_FLEX_DESC_STATUS0_EOF_S)
-	if (likely(ice_test_staterr(rx_desc, ICE_RXD_EOF)))
+	if (likely(ice_test_staterr(rx_desc->wb.status_error0, ICE_RXD_EOF)))
 		return false;
 
 	rx_ring->rx_stats.non_eop_descs++;
@@ -1135,7 +1135,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 		 * hardware wrote DD then it will be non-zero
 		 */
 		stat_err_bits = BIT(ICE_RX_FLEX_DESC_STATUS0_DD_S);
-		if (!ice_test_staterr(rx_desc, stat_err_bits))
+		if (!ice_test_staterr(rx_desc->wb.status_error0, stat_err_bits))
 			break;
 
 		/* This memory barrier is needed to keep us from reading
@@ -1221,14 +1221,13 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 			continue;
 
 		stat_err_bits = BIT(ICE_RX_FLEX_DESC_STATUS0_RXE_S);
-		if (unlikely(ice_test_staterr(rx_desc, stat_err_bits))) {
+		if (unlikely(ice_test_staterr(rx_desc->wb.status_error0,
+					      stat_err_bits))) {
 			dev_kfree_skb_any(skb);
 			continue;
 		}
 
-		stat_err_bits = BIT(ICE_RX_FLEX_DESC_STATUS0_L2TAG1P_S);
-		if (ice_test_staterr(rx_desc, stat_err_bits))
-			vlan_tag = le16_to_cpu(rx_desc->wb.l2tag1);
+		vlan_tag = ice_get_vlan_tag_from_rx_desc(rx_desc);
 
 		/* pad the skb if needed, to make a valid ethernet frame */
 		if (eth_skb_pad(skb)) {
@@ -1910,12 +1909,16 @@ ice_tx_prepare_vlan_flags(struct ice_tx_ring *tx_ring, struct ice_tx_buf *first)
 	if (!skb_vlan_tag_present(skb) && eth_type_vlan(skb->protocol))
 		return;
 
-	/* currently, we always assume 802.1Q for VLAN insertion as VLAN
-	 * insertion for 802.1AD is not supported
+	/* the VLAN ethertype/tpid is determined by VSI configuration and netdev
+	 * feature flags, which the driver only allows either 802.1Q or 802.1ad
+	 * VLAN offloads exclusively so we only care about the VLAN ID here
 	 */
 	if (skb_vlan_tag_present(skb)) {
 		first->tx_flags |= skb_vlan_tag_get(skb) << ICE_TX_FLAGS_VLAN_S;
-		first->tx_flags |= ICE_TX_FLAGS_HW_VLAN;
+		if (tx_ring->flags & ICE_TX_FLAGS_RING_VLAN_L2TAG2)
+			first->tx_flags |= ICE_TX_FLAGS_HW_OUTER_SINGLE_VLAN;
+		else
+			first->tx_flags |= ICE_TX_FLAGS_HW_VLAN;
 	}
 
 	ice_tx_prepare_vlan_flags_dcb(tx_ring, first);
@@ -2288,6 +2291,13 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct ice_tx_ring *tx_ring)
 
 	/* prepare the VLAN tagging flags for Tx */
 	ice_tx_prepare_vlan_flags(tx_ring, first);
+	if (first->tx_flags & ICE_TX_FLAGS_HW_OUTER_SINGLE_VLAN) {
+		offload.cd_qw1 |= (u64)(ICE_TX_DESC_DTYPE_CTX |
+					(ICE_TX_CTX_DESC_IL2TAG2 <<
+					ICE_TXD_CTX_QW1_CMD_S));
+		offload.cd_l2tag2 = (first->tx_flags & ICE_TX_FLAGS_VLAN_M) >>
+			ICE_TX_FLAGS_VLAN_S;
+	}
 
 	/* set up TSO offload */
 	tso = ice_tso(first, &offload);
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index c56dd1749903..03bbae035de8 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -123,6 +123,7 @@ static inline int ice_skb_pad(void)
 #define ICE_TX_FLAGS_IPV4	BIT(5)
 #define ICE_TX_FLAGS_IPV6	BIT(6)
 #define ICE_TX_FLAGS_TUNNEL	BIT(7)
+#define ICE_TX_FLAGS_HW_OUTER_SINGLE_VLAN	BIT(8)
 #define ICE_TX_FLAGS_VLAN_M	0xffff0000
 #define ICE_TX_FLAGS_VLAN_PR_M	0xe0000000
 #define ICE_TX_FLAGS_VLAN_PR_S	29
@@ -334,6 +335,8 @@ struct ice_tx_ring {
 	spinlock_t tx_lock;
 	u32 txq_teid;			/* Added Tx queue TEID */
 #define ICE_TX_FLAGS_RING_XDP		BIT(0)
+#define ICE_TX_FLAGS_RING_VLAN_L2TAG1	BIT(1)
+#define ICE_TX_FLAGS_RING_VLAN_L2TAG2	BIT(2)
 	u8 flags;
 	u8 dcb_tc;			/* Traffic class of ring */
 	u8 ptp_tx;
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index 84a6a3f9d624..9c37d827ed28 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -207,9 +207,14 @@ ice_process_skb_fields(struct ice_rx_ring *rx_ring,
 void
 ice_receive_skb(struct ice_rx_ring *rx_ring, struct sk_buff *skb, u16 vlan_tag)
 {
-	if ((rx_ring->netdev->features & NETIF_F_HW_VLAN_CTAG_RX) &&
-	    (vlan_tag & VLAN_VID_MASK))
+	netdev_features_t features = rx_ring->netdev->features;
+	bool non_zero_vlan = !!(vlan_tag & VLAN_VID_MASK);
+
+	if ((features & NETIF_F_HW_VLAN_CTAG_RX) && non_zero_vlan)
 		__vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), vlan_tag);
+	else if ((features & NETIF_F_HW_VLAN_STAG_RX) && non_zero_vlan)
+		__vlan_hwaccel_put_tag(skb, htons(ETH_P_8021AD), vlan_tag);
+
 	napi_gro_receive(&rx_ring->q_vector->napi, skb);
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
index 11b6c1601986..c7d2954dc9ea 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
@@ -7,7 +7,7 @@
 
 /**
  * ice_test_staterr - tests bits in Rx descriptor status and error fields
- * @rx_desc: pointer to receive descriptor (in le64 format)
+ * @status_err_n: Rx descriptor status_error0 or status_error1 bits
  * @stat_err_bits: value to mask
  *
  * This function does some fast chicanery in order to return the
@@ -16,9 +16,9 @@
  * at offset zero.
  */
 static inline bool
-ice_test_staterr(union ice_32b_rx_flex_desc *rx_desc, const u16 stat_err_bits)
+ice_test_staterr(__le16 status_err_n, const u16 stat_err_bits)
 {
-	return !!(rx_desc->wb.status_error0 & cpu_to_le16(stat_err_bits));
+	return !!(status_err_n & cpu_to_le16(stat_err_bits));
 }
 
 static inline __le64
@@ -31,6 +31,30 @@ ice_build_ctob(u64 td_cmd, u64 td_offset, unsigned int size, u64 td_tag)
 			   (td_tag    << ICE_TXD_QW1_L2TAG1_S));
 }
 
+/**
+ * ice_get_vlan_tag_from_rx_desc - get VLAN from Rx flex descriptor
+ * @rx_desc: Rx 32b flex descriptor with RXDID=2
+ *
+ * The OS and current PF implementation only support stripping a single VLAN tag
+ * at a time, so there should only ever be 0 or 1 tags in the l2tag* fields. If
+ * one is found return the tag, else return 0 to mean no VLAN tag was found.
+ */
+static inline u16
+ice_get_vlan_tag_from_rx_desc(union ice_32b_rx_flex_desc *rx_desc)
+{
+	u16 stat_err_bits;
+
+	stat_err_bits = BIT(ICE_RX_FLEX_DESC_STATUS0_L2TAG1P_S);
+	if (ice_test_staterr(rx_desc->wb.status_error0, stat_err_bits))
+		return le16_to_cpu(rx_desc->wb.l2tag1);
+
+	stat_err_bits = BIT(ICE_RX_FLEX_DESC_STATUS1_L2TAG2P_S);
+	if (ice_test_staterr(rx_desc->wb.status_error1, stat_err_bits))
+		return le16_to_cpu(rx_desc->wb.l2tag2_2nd);
+
+	return 0;
+}
+
 /**
  * ice_xdp_ring_update_tail - Updates the XDP Tx ring tail register
  * @xdp_ring: XDP Tx ring
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index ff55cb415b11..5b5fa3df29d5 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -530,7 +530,7 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
 		rx_desc = ICE_RX_DESC(rx_ring, rx_ring->next_to_clean);
 
 		stat_err_bits = BIT(ICE_RX_FLEX_DESC_STATUS0_DD_S);
-		if (!ice_test_staterr(rx_desc, stat_err_bits))
+		if (!ice_test_staterr(rx_desc->wb.status_error0, stat_err_bits))
 			break;
 
 		/* This memory barrier is needed to keep us from reading
@@ -582,9 +582,7 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
 		total_rx_bytes += skb->len;
 		total_rx_packets++;
 
-		stat_err_bits = BIT(ICE_RX_FLEX_DESC_STATUS0_L2TAG1P_S);
-		if (ice_test_staterr(rx_desc, stat_err_bits))
-			vlan_tag = le16_to_cpu(rx_desc->wb.l2tag1);
+		vlan_tag = ice_get_vlan_tag_from_rx_desc(rx_desc);
 
 		rx_ptype = le16_to_cpu(rx_desc->wb.ptype_flex_flags0) &
 				       ICE_RX_FLEX_DESC_PTYPE_M;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
