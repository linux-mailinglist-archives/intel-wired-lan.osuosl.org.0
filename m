Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB33995F887
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Aug 2024 19:49:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 44A4240584;
	Mon, 26 Aug 2024 17:49:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id haH1biRU29ej; Mon, 26 Aug 2024 17:49:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A943040520
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724694581;
	bh=D2Y+LUfiZJbWM/83hCC/4uz8mnwRCP91pbPGFBUB9gA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=6dY6yjypQjQtbf701KZfZWAyZTavjUw/o0u1xKsv9jRRUVfu+l2n1gimKl1xMhFUk
	 GmXsCFCWrQ/r7kt+W7ftK0GYLdZbmIg+YhbOrekUYj+/RCzy4ybYBKbLgX7DQc95Kz
	 M7PNfDatN/BRL2N4LbXv+lRUJGjvgngAOGtu2pF8+dyWEThoOsijwTTbJguclNL7ic
	 +1Jbyqbc68QTeC4h9MJy0tGu4N006QgySrnfrIxWb4IT/jcUTK43gVECSMFSjdQVCG
	 5ip2swCvmWkZjQTeeBWJ+B54+GexnGH/0OPddPVS8x6iZg0jmrA4XRB1/Ryo9xyQOR
	 uUVAi9DDKsxTg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A943040520;
	Mon, 26 Aug 2024 17:49:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1CEC21BF336
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 17:49:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 150B4402C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 17:49:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nIq6TKA__2YZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Aug 2024 17:49:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9B099402BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B099402BE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9B099402BE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 17:49:38 +0000 (UTC)
X-CSE-ConnectionGUID: bK36Vt2oQouy0pBzvGgE0A==
X-CSE-MsgGUID: 7CVSyZ4xTqmwyw6qnWQtiA==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="22730779"
X-IronPort-AV: E=Sophos;i="6.10,178,1719903600"; d="scan'208";a="22730779"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 10:49:38 -0700
X-CSE-ConnectionGUID: lGRRCZzsQE+sewFazwE/FA==
X-CSE-MsgGUID: TaiIxPmKRJa+1biwnL+l7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,178,1719903600"; d="scan'208";a="62641574"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.244.154])
 by fmviesa009.fm.intel.com with ESMTP; 26 Aug 2024 10:49:38 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 26 Aug 2024 13:39:16 -0400
Message-ID: <20240826173916.1394617-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724694579; x=1756230579;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=l/e0f9UlL1ypDOSRBD/Zh2EI+ke1N6L3s80MntdX0Oc=;
 b=L9TbtSq1PdXY1+zvqD5aDuZvtnbWxonnk/NfzCB5pbHkl+PiG86HwfLn
 me1VshHzj5q2woyloc6MhyIwQAAZczvNap2uk6eaTQ9KqsS8jPQnKkrzT
 44mKDNUera+md+k9uFZ6ZScZfXWxgMvcEpDTUVTXogfeD24jv8hKYho96
 cOm2mVM5IFB7FlfZOh6LHcmc6Aafau0Ak5X/W5C1h26DpUScjczv1Q7Hz
 d32gJyZhIBduQoLexAsQPNxh6S4lM699Qxtefo84Fh9wqsPRXZ162/9Mm
 Gi7UNxns2OMspL0Vze2XwdXPidbNXgtL+OsAFxi49SxE2Y9C45w47gdG6
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L9TbtSq1
Subject: [Intel-wired-lan] [PATCH iwl-next v1] ice: Add E830 checksum support
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
Cc: Eric Joyner <eric.joyner@intel.com>,
 Alice Michael <alice.michael@intel.com>,
 Paul Greenwalt <paul.greenwalt@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

E830 supports generic receive and HW_CSUM transmit checksumming.

Generic receive checksum support is provided by hardware calculating the
checksum over the whole packet and providing it to the driver in the Rx
flex descriptor. Then the driver assigns the checksum to skb-->csum and
sets skb->ip_summed to CHECKSUM_COMPLETE.

E830 HW_CSUM transmit checksum does not support TCP Segmentation Offload
(TSO) inner packet modification, so TSO and HW_CSUM are mutually exclusive.
Therefore NETIF_F_HW_CSUM hardware feature support is indicated but is not
enabled by default. Instead, IP checksum and TSO are the defaults.
Enforcement of mutual exclusivity of TSO and HW_CSUM is done in
ice_fix_features(). Mutual exclusivity of IP checksum and HW_CSUM is
handled by netdev_fix_features().

When NETIF_F_HW_CSUM is requested the provide skb->csum_start and
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
 drivers/net/ethernet/intel/ice/ice.h          |  1 +
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |  1 +
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |  8 +++--
 drivers/net/ethernet/intel/ice/ice_lib.c      |  9 +++++
 drivers/net/ethernet/intel/ice/ice_main.c     | 30 +++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 26 ++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  2 ++
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 33 +++++++++++++++++++
 8 files changed, 107 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index caaa10157909..70e2cf8825cc 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -205,6 +205,7 @@ enum ice_feature {
 	ICE_F_SMA_CTRL,
 	ICE_F_CGU,
 	ICE_F_GNSS,
+	ICE_F_GCS,
 	ICE_F_ROCE_LAG,
 	ICE_F_SRIOV_LAG,
 	ICE_F_MAX
diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index 91cbae1eec89..3128806e1cc6 100644
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
index 611577ebc29d..759a7c6f72bd 100644
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
@@ -500,10 +500,14 @@ enum ice_tx_desc_len_fields {
 struct ice_tx_ctx_desc {
 	__le32 tunneling_params;
 	__le16 l2tag2;
-	__le16 rsvd;
+	__le16 gcs;
 	__le64 qw1;
 };
 
+#define ICE_TX_GCS_DESC_START	0	/* 8 BITS */
+#define ICE_TX_GCS_DESC_OFFSET	8	/* 4 BITS */
+#define ICE_TX_GCS_DESC_TYPE	12	/* 3 BITS */
+
 #define ICE_TXD_CTX_QW1_CMD_S	4
 #define ICE_TXD_CTX_QW1_CMD_M	(0x7FUL << ICE_TXD_CTX_QW1_CMD_S)
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index f559e60992fa..118ac34f89e9 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1380,6 +1380,9 @@ static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
 			ring->flags |= ICE_TX_FLAGS_RING_VLAN_L2TAG2;
 		else
 			ring->flags |= ICE_TX_FLAGS_RING_VLAN_L2TAG1;
+
+		if (ice_is_feature_supported(pf, ICE_F_GCS))
+			ring->flags |= ICE_TXRX_FLAGS_GCS_ENA;
 		WRITE_ONCE(vsi->tx_rings[i], ring);
 	}
 
@@ -1399,6 +1402,9 @@ static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
 		ring->dev = dev;
 		ring->count = vsi->num_rx_desc;
 		ring->cached_phctime = pf->ptp.cached_phc_time;
+
+		if (ice_is_feature_supported(pf, ICE_F_GCS))
+			ring->flags |= ICE_TXRX_FLAGS_GCS_ENA;
 		WRITE_ONCE(vsi->rx_rings[i], ring);
 	}
 
@@ -3896,6 +3902,9 @@ void ice_init_feature_support(struct ice_pf *pf)
 	default:
 		break;
 	}
+
+	if (pf->hw.mac_type == ICE_MAC_E830)
+		ice_set_feature_support(pf, ICE_F_GCS);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 6f97ed471fe9..67e32ac962df 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3678,6 +3678,12 @@ static void ice_set_netdev_features(struct net_device *netdev)
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
 
@@ -6237,6 +6243,7 @@ ice_fix_features(struct net_device *netdev, netdev_features_t features)
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	netdev_features_t req_vlan_fltr, cur_vlan_fltr;
 	bool cur_ctag, cur_stag, req_ctag, req_stag;
+	netdev_features_t changed;
 
 	cur_vlan_fltr = netdev->features & NETIF_VLAN_FILTERING_FEATURES;
 	cur_ctag = cur_vlan_fltr & NETIF_F_HW_VLAN_CTAG_FILTER;
@@ -6285,6 +6292,29 @@ ice_fix_features(struct net_device *netdev, netdev_features_t features)
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
+	if (features & NETIF_F_ALL_TSO) {
+		if (changed & NETIF_F_HW_CSUM && changed & NETIF_F_ALL_TSO) {
+			netdev_warn(netdev, "Dropping TSO and HW checksum. TSO and HW checksum are mutually exclusive.\n");
+			features &= ~NETIF_F_HW_CSUM;
+			features &= ~((features & changed) & NETIF_F_ALL_TSO);
+		} else if (changed & NETIF_F_HW_CSUM) {
+			netdev_warn(netdev, "Dropping HW checksum. TSO and HW checksum are mutually exclusive.\n");
+			features &= ~NETIF_F_HW_CSUM;
+		} else {
+			netdev_warn(netdev, "Dropping TSO. TSO and HW checksum are mutually exclusive.\n");
+			features &= ~NETIF_F_ALL_TSO;
+		}
+	}
+
 	return features;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 8d25b6981269..bfcce1eab243 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1792,6 +1792,7 @@ ice_tx_map(struct ice_tx_ring *tx_ring, struct ice_tx_buf *first,
 static
 int ice_tx_csum(struct ice_tx_buf *first, struct ice_tx_offload_params *off)
 {
+	const struct ice_tx_ring *tx_ring = off->tx_ring;
 	u32 l4_len = 0, l3_len = 0, l2_len = 0;
 	struct sk_buff *skb = first->skb;
 	union {
@@ -1941,6 +1942,29 @@ int ice_tx_csum(struct ice_tx_buf *first, struct ice_tx_offload_params *off)
 	l3_len = l4.hdr - ip.hdr;
 	offset |= (l3_len / 4) << ICE_TX_DESC_LEN_IPLEN_S;
 
+#define TX_GCS_ENABLED	1
+	if (tx_ring->netdev->features & NETIF_F_HW_CSUM &&
+	    tx_ring->flags & ICE_TXRX_FLAGS_GCS_ENA &&
+	    !(first->tx_flags & ICE_TX_FLAGS_TSO) &&
+	    !skb_csum_is_sctp(skb)) {
+		/* Set GCS */
+		u16 gcs_params = ((skb->csum_start - skb->mac_header) / 2) <<
+				 ICE_TX_GCS_DESC_START;
+		gcs_params |= (skb->csum_offset / 2) << ICE_TX_GCS_DESC_OFFSET;
+		/* Type is 1 for 16-bit TCP/UDP checksums w/ pseudo */
+		gcs_params |= TX_GCS_ENABLED << ICE_TX_GCS_DESC_TYPE;
+
+		/* Unlike legacy HW checksums, GCS requires a context
+		 * descriptor.
+		 */
+		off->cd_qw1 |= (u64)(ICE_TX_DESC_DTYPE_CTX);
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
@@ -2422,7 +2446,7 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct ice_tx_ring *tx_ring)
 		/* setup context descriptor */
 		cdesc->tunneling_params = cpu_to_le32(offload.cd_tunnel_params);
 		cdesc->l2tag2 = cpu_to_le16(offload.cd_l2tag2);
-		cdesc->rsvd = cpu_to_le16(0);
+		cdesc->gcs = cpu_to_le16(offload.cd_gcs_params);
 		cdesc->qw1 = cpu_to_le64(offload.cd_qw1);
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index feba314a3fe4..11b6af7a7414 100644
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
+#define ICE_TXRX_FLAGS_GCS_ENA		BIT(4)
 	u8 flags;
 	/* CL5 - 5th cacheline starts here */
 	struct xdp_rxq_info xdp_rxq;
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index 2719f0e20933..a344886d2129 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -80,6 +80,24 @@ ice_rx_hash_to_skb(const struct ice_rx_ring *rx_ring,
 		libeth_rx_pt_set_hash(skb, hash, decoded);
 }
 
+/**
+ * ice_rx_gcs - Set generic checksum in skd
+ * @skb: skb currently being received and modified
+ * @rx_desc: Receive descriptor
+ * Returns hash, if present, 0 otherwise.
+ */
+static void ice_rx_gcs(struct sk_buff *skb, union ice_32b_rx_flex_desc *rx_desc)
+{
+	struct ice_32b_rx_flex_desc_nic *nic_csum;
+
+	if (rx_desc->wb.rxdid != ICE_RXDID_FLEX_NIC)
+		return;
+
+	nic_csum = (struct ice_32b_rx_flex_desc_nic *)rx_desc;
+	skb->ip_summed = CHECKSUM_COMPLETE;
+	skb->csum = (__force __wsum)htons(le16_to_cpu(nic_csum->raw_csum));
+}
+
 /**
  * ice_rx_csum - Indicate in skb if checksum is good
  * @ring: the ring we care about
@@ -107,6 +125,21 @@ ice_rx_csum(struct ice_rx_ring *ring, struct sk_buff *skb,
 	rx_status0 = le16_to_cpu(rx_desc->wb.status_error0);
 	rx_status1 = le16_to_cpu(rx_desc->wb.status_error1);
 
+	if (rx_desc->wb.rxdid == ICE_RXDID_FLEX_NIC &&
+	    ring->flags & ICE_TXRX_FLAGS_GCS_ENA &&
+	    (decoded.inner_prot == LIBETH_RX_PT_INNER_TCP ||
+	     decoded.inner_prot == LIBETH_RX_PT_INNER_UDP ||
+	     decoded.inner_prot == LIBETH_RX_PT_INNER_ICMP)) {
+		/* ICE_RX_FLEX_DESC_STATUS1_L2TAG2P_S is overloaded in the
+		 * rx_status1 layout to indicate that the extracted data from
+		 * the packet is valid.
+		 */
+		if (rx_status1 & BIT(ICE_RX_FLEX_DESC_STATUS1_L2TAG2P_S))
+			return ice_rx_gcs(skb, rx_desc);
+
+		goto checksum_fail;
+	}
+
 	/* check if HW has decoded the packet and checksum */
 	if (!(rx_status0 & BIT(ICE_RX_FLEX_DESC_STATUS0_L3L4P_S)))
 		return;
-- 
2.41.0

