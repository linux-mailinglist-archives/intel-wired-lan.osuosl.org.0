Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B73B9F1B91
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Dec 2024 01:54:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EDBFE846A5;
	Sat, 14 Dec 2024 00:54:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a9-dr2xtEB97; Sat, 14 Dec 2024 00:54:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A94AF846A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734137676;
	bh=yma4dvN7VEdXrl8V/F7mQwaYzZ+ZarLq0Rn18vQsaDs=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=U7ssc2Vc/OPkvZvruJvG/nlTtiGkGAs6aaOCodgIS2AMGDdv0nKsLefuUuf9fz5Zh
	 /xhiL2sftoJdzinJWgDrVGIqXYbGOz4UcXVEjE1XhpDmeIalRnk7GfPKbOMhuiOOBr
	 vNOmwiYQNxDXJSUxTrgVmdVCjgYTjg9r6AmNmRbY3JqcUQuTWfz3gWfukPxaJ32dHJ
	 m714G6lDxoAtU5euxlstsKxa9xO1gTqx/Zr0PBtAeYR8sc40z/xe5p0VdvxmprcpIy
	 SDpKG89m927wwzlrHJvYYY9q0U/GICtIRinBPRMzArJ4TOfNVEndD4wdnG53qFjFIo
	 QMdVyOeXWAh9w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A94AF846A8;
	Sat, 14 Dec 2024 00:54:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C7A06ECE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Dec 2024 00:54:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BFB0F400E5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Dec 2024 00:54:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yrfA9vYgQ14B for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Dec 2024 00:54:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BF5214025B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF5214025B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BF5214025B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Dec 2024 00:54:32 +0000 (UTC)
X-CSE-ConnectionGUID: lchZs/ukTw29H048Gq9dBg==
X-CSE-MsgGUID: DMXnwWDjQciJKx7TPcboxA==
X-IronPort-AV: E=McAfee;i="6700,10204,11285"; a="34336688"
X-IronPort-AV: E=Sophos;i="6.12,232,1728975600"; d="scan'208";a="34336688"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 16:54:31 -0800
X-CSE-ConnectionGUID: qomapQonQwu1gYRhmadIvw==
X-CSE-MsgGUID: qGb5XW1ZS0WdQNuzhOBo0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="100834545"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.5.147])
 by fmviesa003.fm.intel.com with ESMTP; 13 Dec 2024 16:54:31 -0800
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: kuba@kernel.org, Paul Greenwalt <paul.greenwalt@intel.com>,
 Alice Michael <alice.michael@intel.com>,
 Eric Joyner <eric.joyner@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri, 13 Dec 2024 12:03:00 -0500
Message-ID: <20241213170300.17359-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.45.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734137673; x=1765673673;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QmoR0PZ6OpmeFjqhTQmGbWyA/ca9Y/LoIaQq4jb8xCg=;
 b=ZQ+YEinAVTRYv/+FPwB/t198lTiYDnLzFTRK0erUi/VOTb3SNy12Co4X
 VTlroCsPZ1DBGYQSW6+XFHa3UY0chAsSzt+t7rT4iPDaYGZdXwrhs7Viz
 6ESFDuoK/QZdCFsWir03Ro+1nlS4gp0t1Cp73YuXyBP/PUPAyKkX+nzLA
 V3aFBmlCvKPR+aczZYJbU7sIciBgRnDPT796S4FGCCSsBKlR9Sx4aV7sb
 JXehBTqJT2yYuBmXZ+u+C2T+zlyVSE/yVodUMq9IrHCZiCZ3X37opqslX
 ZofqRUsD6qpwu4QLX0mWJo95q0ax1UOVjZgNeBZwRY0G9jL+Jf6anLujR
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZQ+YEinA
Subject: [Intel-wired-lan] [PATCH iwl-next v4] ice: Add E830 checksum
 offload support
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
NETIF_F_ALL_TSO is done in ice_set_features(). Mutual exclusivity
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
Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |  1 +
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |  9 +++++--
 drivers/net/ethernet/intel/ice/ice_lib.c      | 12 ++++++++-
 drivers/net/ethernet/intel/ice/ice_main.c     | 20 ++++++++++++++
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 26 ++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  3 +++
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 26 +++++++++++++++++++
 7 files changed, 93 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 2f5d6f974185..0d2c80578633 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -203,6 +203,7 @@ enum ice_feature {
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
index e07fc8851e1d..d5ef30a361d0 100644
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
 
@@ -3883,8 +3891,10 @@ void ice_init_feature_support(struct ice_pf *pf)
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
index 89fa3d53d317..1cfb511d0001 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3666,6 +3666,12 @@ void ice_set_netdev_features(struct net_device *netdev)
 	 */
 	netdev->hw_features |= NETIF_F_RXFCS;
 
+	/* Mutual exclusivity for TSO and GCS is enforced by the fix features
+	 * ndo callback.
+	 */
+	if (ice_is_feature_supported(pf, ICE_F_GCS))
+		netdev->hw_features |= NETIF_F_HW_CSUM;
+
 	netif_set_tso_max_size(netdev, ICE_MAX_TSO_SIZE);
 }
 
@@ -6270,6 +6276,8 @@ ice_fdb_del(struct ndmsg *ndm, __always_unused struct nlattr *tb[],
  *	These are mutually exclusive as there is currently no way to
  *	enable/disable VLAN filtering based on VLAN ethertype when using VLAN
  *	prune rules.
+ *
+ * Return: updated features list.
  */
 static netdev_features_t
 ice_fix_features(struct net_device *netdev, netdev_features_t features)
@@ -6567,6 +6575,18 @@ ice_set_features(struct net_device *netdev, netdev_features_t features)
 	if (changed & NETIF_F_LOOPBACK)
 		ret = ice_set_loopback(vsi, !!(features & NETIF_F_LOOPBACK));
 
+	/* Due to E830 hardware limitations, TSO (NETIF_F_ALL_TSO) with GCS
+	 * (NETIF_F_HW_CSUM) is not supported.
+	 */
+	if (ice_is_feature_supported(pf, ICE_F_GCS) &&
+	    ((features & NETIF_F_HW_CSUM) && (features & NETIF_F_ALL_TSO))) {
+		if (netdev->features & NETIF_F_HW_CSUM)
+			dev_err(ice_pf_to_dev(pf), "To enable TSO, you must first disable HW checksum.\n");
+		else
+			dev_err(ice_pf_to_dev(pf), "To enable HW checksum, you must first disable TSO.\n");
+		return -EIO;
+	}
+
 	return ret;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 5d2d7736fd5f..0e274eca574d 100644
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
index cb347c852ba9..1fc341b30d9c 100644
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
 	u16 quanta_prof_id;
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

