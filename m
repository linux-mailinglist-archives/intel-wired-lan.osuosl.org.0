Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 910619728A4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Sep 2024 06:55:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7503A6083E;
	Tue, 10 Sep 2024 04:55:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T6VU040btf1o; Tue, 10 Sep 2024 04:55:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C15B360838
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725944138;
	bh=+WS7zG9H0J6idqgc7pTNktfFgFDhr2t1oMxys+prL3Q=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=gNMGBw/RXxA2Q2IGVJ0/x3FM8+3TWZ4/urEB6ykeI0llq6fMjDwxgGPaT8JZ5v44C
	 crDreSWiCAhFFg/e8G3OXx2aG5YQXEqZ5Oy85pftOo77qP2zsh0JaQ4a73frH6hWwr
	 76AtFHFPoKk9tnl/LeWy/a5Jwm5PmOUmiDcCJ4H+9pv0JrOufNfapZUhbhrSJpzMuh
	 UEx2n1nu3rGZTB72L+hSwFEn10WkRCVD4TpGF6LaHY5sV6l/JvtG6mhekDSJnOl/eA
	 s7o183o0ktdWV3Tax6wquZ3tJtgXT1yXXtomHd+CoshiJyHHMqXPdb+IZvQYP6vDIt
	 o56gRlKLhcaTQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C15B360838;
	Tue, 10 Sep 2024 04:55:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 64F0A1BF2EB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 04:55:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 51CD040163
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 04:55:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GLJN1VkftamH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Sep 2024 04:55:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6170040104
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6170040104
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6170040104
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 04:55:34 +0000 (UTC)
X-CSE-ConnectionGUID: fo0YP2j0QbOjRKKpyorSwQ==
X-CSE-MsgGUID: CWWoVvNeThCKejiysyWtAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="42186611"
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="42186611"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 21:55:34 -0700
X-CSE-ConnectionGUID: q7Lxjtt3QqiU2ce9VGJDGg==
X-CSE-MsgGUID: S4SpA+Q/S7izxW1B47Johg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="71683327"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.244.154])
 by orviesa003.jf.intel.com with ESMTP; 09 Sep 2024 21:55:34 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 10 Sep 2024 00:45:04 -0400
Message-ID: <20240910044504.15380-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725944135; x=1757480135;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2+02OKpF6t77j58DCJ4o4En9mVQZcvLOsV+oo7mTMWg=;
 b=PVXxEcqum6p1bgnbK86PgqTsJ3qLOJdVUCFRPVtfqKsjWNfrQqjAnrsU
 aVclXZvG0nXxn0SDJ7JXr72q1e0AGeRTxF8e8wdT/u4VUy3QEfE/DTpbW
 62eBXWop7m2xpJDa1oE3JC4l/ovQTgx0JcKdLKk2g3D5cLJJNIHki4jwS
 9ihLnMlZH3FVCRjr44a+MppJehbaUVBJuuMDfnEGre54P+6EyBBtqx671
 WA/wH+iWxvgzOQe65hhdO+/XF66MXFCUIIDgNREDNzzmgXvrOOKBK8Z6p
 gHPI9aOsWMtgeNCza+dX2FagwOSAv6254oxlqss0A04moBqbe4z9xrX5E
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PVXxEcqu
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: Add E830 checksum
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
assigns the checksum to skb-->csum and sets skb->ip_summed to
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
2. The Maximum segment size is limited to 1023 bytes, which prevents
   support of Maximum Transmission Unit (MTU) greater than 1063 bytes.

Therefore NETIF_F_HW_CSUM and NETIF_F_ALL_TSO features are mutually
exclusive. NETIF_F_HW_CSUM hardware feature support is indicated but is not
enabled by default. Instead, IP checksums and NETIF_F_ALL_TSO are the
defaults. Enforcement of mutual exclusivity of NETIF_F_HW_CSUM and
NETIF_F_ALL_TSO is done in ice_fix_features(). Mutual exclusivity of IP
checksums and NETIF_F_HW_CSUM is handled by netdev_fix_features().

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
---
 drivers/net/ethernet/intel/ice/ice.h          |  1 +
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |  1 +
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |  9 ++++-
 drivers/net/ethernet/intel/ice/ice_lib.c      | 12 +++++-
 drivers/net/ethernet/intel/ice/ice_main.c     | 37 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 27 +++++++++++++-
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  3 ++
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 26 +++++++++++++
 8 files changed, 112 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index d80051076d04..b3151287cc69 100644
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
diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index 8d31bfe28cc8..0dcd9c924ce3 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -110,6 +110,7 @@
 #define PRTDCB_TUP2TC				0x001D26C0
 #define GL_PREEXT_L2_PMASK0(_i)			(0x0020F0FC + ((_i) * 4))
 #define GL_PREEXT_L2_PMASK1(_i)			(0x0020F108 + ((_i) * 4))
+#define GL_RDPU_CNTRL				0x00052054
 #define GLFLXP_RXDID_FLAGS(_i, _j)              (0x0045D000 + ((_i) * 4 + (_j) * 256))
 #define GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_S       0
 #define GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_M       ICE_M(0x3F, 0)
diff --git a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
index 611577ebc29d..48ddcadd5129 100644
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
+#define ICE_TX_GCS_DECS_CSUM_PSH	BIT(12)
+
 #define ICE_TXD_CTX_QW1_CMD_S	4
 #define ICE_TXD_CTX_QW1_CMD_M	(0x7FUL << ICE_TXD_CTX_QW1_CMD_S)
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index d4e74f96a8ad..d6e9d7f5f46c 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1401,6 +1401,10 @@ static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
 			ring->flags |= ICE_TX_FLAGS_RING_VLAN_L2TAG2;
 		else
 			ring->flags |= ICE_TX_FLAGS_RING_VLAN_L2TAG1;
+
+		if (ice_is_feature_supported(pf, ICE_F_GCS))
+			ring->flags |= ICE_TX_FLAGS_GCS_ENA;
+
 		WRITE_ONCE(vsi->tx_rings[i], ring);
 	}
 
@@ -1420,6 +1424,10 @@ static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
 		ring->dev = dev;
 		ring->count = vsi->num_rx_desc;
 		ring->cached_phctime = pf->ptp.cached_phc_time;
+
+		if (ice_is_feature_supported(pf, ICE_F_GCS))
+			ring->flags |= ICE_RX_FLAGS_GCS_ENA;
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
index aaf5d45e9593..408e23fe46eb 100644
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
 
@@ -6246,6 +6252,12 @@ ice_fdb_del(struct ndmsg *ndm, __always_unused struct nlattr *tb[],
  *	These are mutually exclusive as there is currently no way to
  *	enable/disable VLAN filtering based on VLAN ethertype when using VLAN
  *	prune rules.
+ *
+ *	E830 hardware TSO with NETIF_F_HW_CSUM has limitations: inner packet
+ *	header modification is not supported, and Maximum segment size is
+ *	limited to 1023 bytes. Therefore TSO and NETIF_F_HW_CSUM mutual
+ *	exclusivity is enforce, and GCO and IP checksum mutual exclusivity is
+ *	handled by netdev_fix_features().
  */
 static netdev_features_t
 ice_fix_features(struct net_device *netdev, netdev_features_t features)
@@ -6253,6 +6265,7 @@ ice_fix_features(struct net_device *netdev, netdev_features_t features)
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	netdev_features_t req_vlan_fltr, cur_vlan_fltr;
 	bool cur_ctag, cur_stag, req_ctag, req_stag;
+	netdev_features_t changed;
 
 	cur_vlan_fltr = netdev->features & NETIF_VLAN_FILTERING_FEATURES;
 	cur_ctag = cur_vlan_fltr & NETIF_F_HW_VLAN_CTAG_FILTER;
@@ -6301,6 +6314,30 @@ ice_fix_features(struct net_device *netdev, netdev_features_t features)
 		features &= ~NETIF_VLAN_STRIPPING_FEATURES;
 	}
 
+	if (!ice_is_feature_supported(np->vsi->back, ICE_F_GCS) ||
+	    !(features & NETIF_F_HW_CSUM))
+		return features;
+
+	changed = netdev->features ^ features;
+
+	/* HW checksum feature is supported and set, so enforce mutual
+	 * exclusivity of TSO and GCS.
+	 */
+	if (!(features & NETIF_F_ALL_TSO))
+		return features;
+
+	if (changed & NETIF_F_HW_CSUM && changed & NETIF_F_ALL_TSO) {
+		netdev_warn(netdev, "Dropping TSO and HW checksum. TSO and HW checksum are mutually exclusive.\n");
+		features &= ~NETIF_F_HW_CSUM;
+		features &= ~((features & changed) & NETIF_F_ALL_TSO);
+	} else if (changed & NETIF_F_HW_CSUM) {
+		netdev_warn(netdev, "Dropping HW checksum. TSO and HW checksum are mutually exclusive.\n");
+		features &= ~NETIF_F_HW_CSUM;
+	} else {
+		netdev_warn(netdev, "Dropping TSO. TSO and HW checksum are mutually exclusive.\n");
+		features &= ~NETIF_F_ALL_TSO;
+	}
+
 	return features;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 8208055d6e7f..57ec153f8670 100644
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
@@ -1902,6 +1903,30 @@ int ice_tx_csum(struct ice_tx_buf *first, struct ice_tx_offload_params *off)
 	l3_len = l4.hdr - ip.hdr;
 	offset |= (l3_len / 4) << ICE_TX_DESC_LEN_IPLEN_S;
 
+	if ((tx_ring->netdev->features & NETIF_F_HW_CSUM) &&
+	    (tx_ring->flags & ICE_TX_FLAGS_GCS_ENA) &&
+	    !(first->tx_flags & ICE_TX_FLAGS_TSO) &&
+	    !skb_csum_is_sctp(skb)) {
+		/* Set GCS */
+		u16 csum_start = (skb->csum_start - skb->mac_header) / 2;
+		u16 csum_offset = skb->csum_offset / 2;
+		u16 gcs_params;
+
+		gcs_params = FIELD_PREP(ICE_TX_GCS_DESC_START_M, csum_start) |
+			     FIELD_PREP(ICE_TX_GCS_DESC_OFFSET_M, csum_offset) |
+			     FIELD_PREP(ICE_TX_GCS_DECS_CSUM_PSH, 1);
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
@@ -2383,7 +2408,7 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct ice_tx_ring *tx_ring)
 		/* setup context descriptor */
 		cdesc->tunneling_params = cpu_to_le32(offload.cd_tunnel_params);
 		cdesc->l2tag2 = cpu_to_le16(offload.cd_l2tag2);
-		cdesc->rsvd = cpu_to_le16(0);
+		cdesc->gcs = cpu_to_le16(offload.cd_gcs_params);
 		cdesc->qw1 = cpu_to_le64(offload.cd_qw1);
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index feba314a3fe4..af27b0c57cde 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -193,6 +193,7 @@ struct ice_tx_offload_params {
 	u32 td_l2tag1;
 	u32 cd_tunnel_params;
 	u16 cd_l2tag2;
+	u16 cd_gcs_params;
 	u8 header_len;
 };
 
@@ -366,6 +367,7 @@ struct ice_rx_ring {
 #define ICE_RX_FLAGS_RING_BUILD_SKB	BIT(1)
 #define ICE_RX_FLAGS_CRC_STRIP_DIS	BIT(2)
 #define ICE_RX_FLAGS_MULTIDEV		BIT(3)
+#define ICE_RX_FLAGS_GCS_ENA		BIT(4)
 	u8 flags;
 	/* CL5 - 5th cacheline starts here */
 	struct xdp_rxq_info xdp_rxq;
@@ -404,6 +406,7 @@ struct ice_tx_ring {
 #define ICE_TX_FLAGS_RING_XDP		BIT(0)
 #define ICE_TX_FLAGS_RING_VLAN_L2TAG1	BIT(1)
 #define ICE_TX_FLAGS_RING_VLAN_L2TAG2	BIT(2)
+#define ICE_TX_FLAGS_GCS_ENA		BIT(4)
 	u8 flags;
 	u8 dcb_tc;			/* Traffic class of ring */
 } ____cacheline_internodealigned_in_smp;
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index 2719f0e20933..9123c7fcd107 100644
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
 
+	if ((ring->flags & ICE_RX_FLAGS_GCS_ENA) &&
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
2.41.0

