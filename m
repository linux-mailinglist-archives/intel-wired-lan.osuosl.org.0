Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A6697B560
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Sep 2024 23:56:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C398D805A1;
	Tue, 17 Sep 2024 21:56:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0mHW0vj57bes; Tue, 17 Sep 2024 21:56:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 09C90809D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726610185;
	bh=y5nhOtKRjm+JlEDdjrNZReSSy0mPpAse0QX5VCFCynE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=4u16Tn0nmNf4DRskp8zUhQ3T8if3dcp1eoubMeJw1hoAiIXRvTWJOxTcS5PjGB1Ws
	 ihUHp5flLq4vmBh4/qXljrNmzlgF9lFpCH0gcqKNSVFM7WTVptrDI8xYIJU4qRl2Tk
	 ebnkIfU4Y2cbMNG0UAXe4EX61MasqIJ9ulOkpJhKM9WsSDyAghHADkl7THdOTZyU9w
	 pH+DtGBUOgyId3SgPjjPJW6Wn5WpxBcH7mMxcM0yTsUOQKHXuSjMKWW+v9cBIQ0YHi
	 /izC2sKr1KW4srscQxgozpMjLTU3EpyLAsdHj65RWomsjBIOHgtYmOSSQkY373h2KB
	 krYPf/ZijJeTg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 09C90809D3;
	Tue, 17 Sep 2024 21:56:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DF0671BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Sep 2024 21:56:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CB884804E2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Sep 2024 21:56:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y_TMnTy9fSTQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Sep 2024 21:56:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8DD5B817AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8DD5B817AF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8DD5B817AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Sep 2024 21:56:21 +0000 (UTC)
X-CSE-ConnectionGUID: AJFACHx3SECxpvnYkZZNdg==
X-CSE-MsgGUID: yC8P2lBCTzOyM2nSP1HNHg==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="48007630"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="48007630"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 14:56:20 -0700
X-CSE-ConnectionGUID: pEH6NzS6TsqUOKLN9kcsqQ==
X-CSE-MsgGUID: cWyjWn2iQ7OU/YEqY4Q5Jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="73899194"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.244.154])
 by fmviesa004.fm.intel.com with ESMTP; 17 Sep 2024 14:56:20 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 17 Sep 2024 17:45:47 -0400
Message-ID: <20240917214547.3016085-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726610181; x=1758146181;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZOhVtPORPU8E6/3L2vN33xeqmEdaw/RbCN4jVRlWITE=;
 b=mHqVq3L5PKljCKn1hCq5zsYtwVt2Rwu2MQ/8o5RR71UooKnL9pik1xla
 c3sfNkfLfLf9VZcgki1S22GzJQVdHNL710fZZTvSQAdUUOCMf133D9dqC
 laqdDYyQiSz4g7//R4RhgTf//s9MqsJZuGdjbNX30ix71r3A8i56/ZoV7
 Uf8ehi9HynmSB9aLi3+hoz98+jPVSyrmeXss5Tt0Cdaq9akxUAO3YwbKO
 1G24Dg0BnLIUwYUYqVH4dJfvCYfTNxDGdbfMd8rhYh1kpFaHgfqbUWcfw
 SDT8YBzw+K0wN3BaCqFY0/mWz0zkuFzrc9gEbHfrh1wdneqaZqFfxxLVn
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mHqVq3L5
Subject: [Intel-wired-lan] [PATCH iwl-next v3] ice: Add E830 checksum
 offload support
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
Cc: Eric Joyner <eric.joyner@intel.com>, aleksander.lobakin@intel.com,
 Alice Michael <alice.michael@intel.com>, anthony.l.nguyen@intel.com,
 Paul Greenwalt <paul.greenwalt@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

E830 supports raw receive and generic transmit checksum offloads.

Raw receive checksum support is provided by hardware calculating the
checksum over the whole packet, regardless of type. The calculated
checksum is provided to driver in the Rx flex descriptor. Then the driver
assigns the checksum to skb->csum and sets skb->ip_summed to
CHECKSUM_COMPLETE.

Generic transmit checksum support is provided by hardware calculating the
checksum given two offsets: the start offset to begin checksum calculation,
and the offset to insert the calculated checksum in the packet. Support is
advertised to the stack using NETIF_F_HW_CSUM feature.

E830 has the following limitations when both generic transmit checksum
offload and TCP Segmentation Offload (TSO) are enabled:

1. Inner packet header modification is not supported. This restriction
   includes the inability to alter TCP flags, such as the push flag. As a
   result, this limitation can impact the receiver's ability to coalesce
   packets, potentially degrading network throughput.
2. The Maximum Segment Size (MSS) is limited to 1023 bytes, which prevents
   support of Maximum Transmission Unit (MTU) greater than 1063 bytes.

Therefore NETIF_F_HW_CSUM and NETIF_F_ALL_TSO features are mutually
exclusive. NETIF_F_HW_CSUM hardware feature support is indicated but is not
enabled by default. Instead, IP checksums and NETIF_F_ALL_TSO are the
defaults. Enforcement of mutual exclusivity of NETIF_F_HW_CSUM and
NETIF_F_ALL_TSO is done in ice_fix_features_tso_gcs(). Mutual exclusivity
of IP checksums and NETIF_F_HW_CSUM is handled by netdev_fix_features().

When NETIF_F_HW_CSUM is requested the provided skb->csum_start and
skb->csum_offset are passed to hardware in the Tx context descriptor
generic checksum (GCS) parameters. Hardware calculates the 1's complement
from skb->csum_start to the end of the packet, and inserts the result in
the packet at skb->csum_offset.

Co-developed-by: Alice Michael <alice.michael@intel.com>
Signed-off-by: Alice Michael <alice.michael@intel.com>
Co-developed-by: Eric Joyner <eric.joyner@intel.com>
Signed-off-by: Eric Joyner <eric.joyner@intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
v1->v2
- Update commit message with additional details.
- Add newlines, and add params around 
- Return early from ice_fix_features() to avoid extra indentation and
  large if block.
- Move and change some defines.
- replace htons and le16_t_cpu with swap16.
- Use FIELD_PREP where possible.
- Removed checksum valid bit check STATUS1_L2TAG2P_S. This check is not
  needed since there is no situation which will return an error.
v2->v3
- Minor fixes in commit message.
- Removed unused register defines in ice_hw_autogen.h.
- Moved GCS and TSO feature fix to helper function
  ice_fix_features_gcs(), and updated logic.
- Update to align naming with related flags.
---
 drivers/net/ethernet/intel/ice/ice.h          |  1 +
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |  9 +++-
 drivers/net/ethernet/intel/ice/ice_lib.c      | 12 +++++-
 drivers/net/ethernet/intel/ice/ice_main.c     | 43 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 26 ++++++++++-
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  3 ++
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 26 +++++++++++
 7 files changed, 116 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index d2235e8bfea4..28b46cfccc2c 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -206,6 +206,7 @@ enum ice_feature {
 	ICE_F_SMA_CTRL,
 	ICE_F_CGU,
 	ICE_F_GNSS,
+	ICE_F_GCS,
 	ICE_F_ROCE_LAG,
 	ICE_F_SRIOV_LAG,
 	ICE_F_MBX_LIMIT,
diff --git a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
index 611577ebc29d..b419933da63c 100644
--- a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
+++ b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
@@ -229,7 +229,7 @@ struct ice_32b_rx_flex_desc_nic {
 	__le16 status_error1;
 	u8 flexi_flags2;
 	u8 ts_low;
-	__le16 l2tag2_1st;
+	__le16 raw_csum;
 	__le16 l2tag2_2nd;
 
 	/* Qword 3 */
@@ -500,10 +500,15 @@ enum ice_tx_desc_len_fields {
 struct ice_tx_ctx_desc {
 	__le32 tunneling_params;
 	__le16 l2tag2;
-	__le16 rsvd;
+	__le16 gcs;
 	__le64 qw1;
 };
 
+#define ICE_TX_GCS_DESC_START_M		GENMASK(7, 0)
+#define ICE_TX_GCS_DESC_OFFSET_M	GENMASK(11, 8)
+#define ICE_TX_GCS_DESC_TYPE_M		GENMASK(14, 12)
+#define ICE_TX_GCS_DESC_CSUM_PSH	BIT(12)
+
 #define ICE_TXD_CTX_QW1_CMD_S	4
 #define ICE_TXD_CTX_QW1_CMD_M	(0x7FUL << ICE_TXD_CTX_QW1_CMD_S)
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index d4e74f96a8ad..78f2d124601c 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1401,6 +1401,10 @@ static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
 			ring->flags |= ICE_TX_FLAGS_RING_VLAN_L2TAG2;
 		else
 			ring->flags |= ICE_TX_FLAGS_RING_VLAN_L2TAG1;
+
+		if (ice_is_feature_supported(pf, ICE_F_GCS))
+			ring->flags |= ICE_TX_FLAGS_RING_GCS;
+
 		WRITE_ONCE(vsi->tx_rings[i], ring);
 	}
 
@@ -1420,6 +1424,10 @@ static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
 		ring->dev = dev;
 		ring->count = vsi->num_rx_desc;
 		ring->cached_phctime = pf->ptp.cached_phc_time;
+
+		if (ice_is_feature_supported(pf, ICE_F_GCS))
+			ring->flags |= ICE_RX_FLAGS_RING_GCS;
+
 		WRITE_ONCE(vsi->rx_rings[i], ring);
 	}
 
@@ -3881,8 +3889,10 @@ void ice_init_feature_support(struct ice_pf *pf)
 		break;
 	}
 
-	if (pf->hw.mac_type == ICE_MAC_E830)
+	if (pf->hw.mac_type == ICE_MAC_E830) {
 		ice_set_feature_support(pf, ICE_F_MBX_LIMIT);
+		ice_set_feature_support(pf, ICE_F_GCS);
+	}
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 1b5120f888ba..124481fe6398 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3673,6 +3673,12 @@ void ice_set_netdev_features(struct net_device *netdev)
 	 */
 	netdev->hw_features |= NETIF_F_RXFCS;
 
+	/* Mutual exclusivity for TSO and GCS is enforced by the
+	 * ice_fix_features() ndo callback.
+	 */
+	if (ice_is_feature_supported(pf, ICE_F_GCS))
+		netdev->hw_features |= NETIF_F_HW_CSUM;
+
 	netif_set_tso_max_size(netdev, ICE_MAX_TSO_SIZE);
 }
 
@@ -6236,6 +6242,38 @@ ice_fdb_del(struct ndmsg *ndm, __always_unused struct nlattr *tb[],
 	return err;
 }
 
+/**
+ * ice_fix_features_gcs - enforce  Generic Checksum (GCS) feature restrictions
+ * @netdev: ptr to the netdev that flags are being fixed on
+ * @features: features that need to be checked and possibly fixed
+ *
+ * Due to E830 hardware limitations on TSO (NETIF_F_ALL_TSO) with GCS
+ * (NETIF_F_HW_CSUM), inner packet header modification is not supported and
+ * maximum segment size is limited to 1023 bytes, make TSO and GCS mutually
+ * exclusive. If both TSO and GCS are requested, then choose TSO and drop
+ * GCS, else preserve existing settings.
+ *
+ * Note: IP checksums enforcement is handled by netdev_fix_features().
+ *
+ * Return: updated features based on device GCS limitations
+ */
+static netdev_features_t
+ice_fix_features_gcs(struct net_device *netdev, netdev_features_t features)
+{
+	if (!((features & NETIF_F_HW_CSUM) && (features & NETIF_F_ALL_TSO)))
+		return features;
+
+	if (netdev->features & NETIF_F_HW_CSUM) {
+		netdev_warn(netdev, "Dropping TSO. TSO and HW checksum are mutually exclusive.\n");
+		features &= ~NETIF_F_ALL_TSO;
+	} else {
+		netdev_warn(netdev, "Dropping HW checksum. TSO and HW checksum are mutually exclusive.\n");
+		features &= ~NETIF_F_HW_CSUM;
+	}
+
+	return features;
+}
+
 #define NETIF_VLAN_OFFLOAD_FEATURES	(NETIF_F_HW_VLAN_CTAG_RX | \
 					 NETIF_F_HW_VLAN_CTAG_TX | \
 					 NETIF_F_HW_VLAN_STAG_RX | \
@@ -6283,6 +6321,8 @@ ice_fdb_del(struct ndmsg *ndm, __always_unused struct nlattr *tb[],
  *	These are mutually exclusive as there is currently no way to
  *	enable/disable VLAN filtering based on VLAN ethertype when using VLAN
  *	prune rules.
+ *
+ * Return: updated features list
  */
 static netdev_features_t
 ice_fix_features(struct net_device *netdev, netdev_features_t features)
@@ -6338,6 +6378,9 @@ ice_fix_features(struct net_device *netdev, netdev_features_t features)
 		features &= ~NETIF_VLAN_STRIPPING_FEATURES;
 	}
 
+	if (ice_is_feature_supported(np->vsi->back, ICE_F_GCS))
+		features = ice_fix_features_gcs(netdev, features);
+
 	return features;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 8208055d6e7f..139c06213721 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1753,6 +1753,7 @@ ice_tx_map(struct ice_tx_ring *tx_ring, struct ice_tx_buf *first,
 static
 int ice_tx_csum(struct ice_tx_buf *first, struct ice_tx_offload_params *off)
 {
+	const struct ice_tx_ring *tx_ring = off->tx_ring;
 	u32 l4_len = 0, l3_len = 0, l2_len = 0;
 	struct sk_buff *skb = first->skb;
 	union {
@@ -1902,6 +1903,29 @@ int ice_tx_csum(struct ice_tx_buf *first, struct ice_tx_offload_params *off)
 	l3_len = l4.hdr - ip.hdr;
 	offset |= (l3_len / 4) << ICE_TX_DESC_LEN_IPLEN_S;
 
+	if ((tx_ring->netdev->features & NETIF_F_HW_CSUM) &&
+	    !(first->tx_flags & ICE_TX_FLAGS_TSO) &&
+	    !skb_csum_is_sctp(skb)) {
+		/* Set GCS */
+		u16 csum_start = (skb->csum_start - skb->mac_header) / 2;
+		u16 csum_offset = skb->csum_offset / 2;
+		u16 gcs_params;
+
+		gcs_params = FIELD_PREP(ICE_TX_GCS_DESC_START_M, csum_start) |
+			     FIELD_PREP(ICE_TX_GCS_DESC_OFFSET_M, csum_offset) |
+			     FIELD_PREP(ICE_TX_GCS_DESC_CSUM_PSH, 1);
+
+		/* Unlike legacy HW checksums, GCS requires a context
+		 * descriptor.
+		 */
+		off->cd_qw1 |= ICE_TX_DESC_DTYPE_CTX;
+		off->cd_gcs_params = gcs_params;
+		/* Fill out CSO info in data descriptors */
+		off->td_offset |= offset;
+		off->td_cmd |= cmd;
+		return 1;
+	}
+
 	/* Enable L4 checksum offloads */
 	switch (l4_proto) {
 	case IPPROTO_TCP:
@@ -2383,7 +2407,7 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct ice_tx_ring *tx_ring)
 		/* setup context descriptor */
 		cdesc->tunneling_params = cpu_to_le32(offload.cd_tunnel_params);
 		cdesc->l2tag2 = cpu_to_le16(offload.cd_l2tag2);
-		cdesc->rsvd = cpu_to_le16(0);
+		cdesc->gcs = cpu_to_le16(offload.cd_gcs_params);
 		cdesc->qw1 = cpu_to_le64(offload.cd_qw1);
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index 67153f5b6891..03f0db6404d9 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -193,6 +193,7 @@ struct ice_tx_offload_params {
 	u32 td_l2tag1;
 	u32 cd_tunnel_params;
 	u16 cd_l2tag2;
+	u16 cd_gcs_params;
 	u8 header_len;
 };
 
@@ -367,6 +368,7 @@ struct ice_rx_ring {
 #define ICE_RX_FLAGS_RING_BUILD_SKB	BIT(1)
 #define ICE_RX_FLAGS_CRC_STRIP_DIS	BIT(2)
 #define ICE_RX_FLAGS_MULTIDEV		BIT(3)
+#define ICE_RX_FLAGS_RING_GCS		BIT(4)
 	u8 flags;
 	/* CL5 - 5th cacheline starts here */
 	struct xdp_rxq_info xdp_rxq;
@@ -405,6 +407,7 @@ struct ice_tx_ring {
 #define ICE_TX_FLAGS_RING_XDP		BIT(0)
 #define ICE_TX_FLAGS_RING_VLAN_L2TAG1	BIT(1)
 #define ICE_TX_FLAGS_RING_VLAN_L2TAG2	BIT(2)
+#define ICE_TX_FLAGS_RING_GCS		BIT(3)
 	u8 flags;
 	u8 dcb_tc;			/* Traffic class of ring */
 } ____cacheline_internodealigned_in_smp;
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index 2719f0e20933..45cfaabc41cb 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -80,6 +80,23 @@ ice_rx_hash_to_skb(const struct ice_rx_ring *rx_ring,
 		libeth_rx_pt_set_hash(skb, hash, decoded);
 }
 
+/**
+ * ice_rx_gcs - Set generic checksum in skb
+ * @skb: skb currently being received and modified
+ * @rx_desc: receive descriptor
+ */
+static void ice_rx_gcs(struct sk_buff *skb,
+		       const union ice_32b_rx_flex_desc *rx_desc)
+{
+	const struct ice_32b_rx_flex_desc_nic *desc;
+	u16 csum;
+
+	desc = (struct ice_32b_rx_flex_desc_nic *)rx_desc;
+	skb->ip_summed = CHECKSUM_COMPLETE;
+	csum = (__force u16)desc->raw_csum;
+	skb->csum = csum_unfold((__force __sum16)swab16(csum));
+}
+
 /**
  * ice_rx_csum - Indicate in skb if checksum is good
  * @ring: the ring we care about
@@ -107,6 +124,15 @@ ice_rx_csum(struct ice_rx_ring *ring, struct sk_buff *skb,
 	rx_status0 = le16_to_cpu(rx_desc->wb.status_error0);
 	rx_status1 = le16_to_cpu(rx_desc->wb.status_error1);
 
+	if ((ring->flags & ICE_RX_FLAGS_RING_GCS) &&
+	    rx_desc->wb.rxdid == ICE_RXDID_FLEX_NIC &&
+	    (decoded.inner_prot == LIBETH_RX_PT_INNER_TCP ||
+	     decoded.inner_prot == LIBETH_RX_PT_INNER_UDP ||
+	     decoded.inner_prot == LIBETH_RX_PT_INNER_ICMP)) {
+		ice_rx_gcs(skb, rx_desc);
+		return;
+	}
+
 	/* check if HW has decoded the packet and checksum */
 	if (!(rx_status0 & BIT(ICE_RX_FLEX_DESC_STATUS0_L3L4P_S)))
 		return;
-- 
2.44.0

