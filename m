Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9C3A6BE09
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Mar 2025 16:14:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9CE89617B0;
	Fri, 21 Mar 2025 15:14:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5xRJ-2RMMYpM; Fri, 21 Mar 2025 15:14:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 18C6461770
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742570057;
	bh=c+ITrPeVVbQt9IO6ieuSmpcic6z2qVf9Qr4fc+B/OA8=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qyuCdQO891V6cC2/xj3f0qdzR1fHxws50kmVmwxutdt1EUDnwRobFUg04/NaTKNVA
	 Nw/5mqKrKbo4lhp+mi1NQGoRbRWavnytWGNONZRQIlCa90kaUsWrmARVIV5AZNnLGN
	 qMsFmSTqccZVDhYwRQAPx+KNT0BQBCb2dEO0/5N+KT6OCeDQxq21Vad+J5vr3kIwOs
	 baBm+ebRrRYFCiYPL7cXg/2D1aJl8L8B05oy6Np5fS0/5Ndgd+7mwi7LpT/pGS/CYh
	 CfJdk8qy7Wgj6EvZ30AL8SV4r6qfeYCJbMOZebExKcMoF4Y3oijfCCpmsNVRc3SVJJ
	 Z/A6ZKNBWQQUQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 18C6461770;
	Fri, 21 Mar 2025 15:14:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 01A6312F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Mar 2025 15:14:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DC4238413A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Mar 2025 15:14:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7oIaCP6CBkJ0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Mar 2025 15:14:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E6BA780AD9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6BA780AD9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E6BA780AD9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Mar 2025 15:14:12 +0000 (UTC)
X-CSE-ConnectionGUID: EZNIkzq3TXSWQwGRZkjHrg==
X-CSE-MsgGUID: xf9GmO9rT7Wu1P+Dg+irTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="44028838"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="44028838"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 08:14:12 -0700
X-CSE-ConnectionGUID: M/h8JtarQbKBApoGkZTCLQ==
X-CSE-MsgGUID: lXNltst2QjCvMZjoAtc8BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="146646971"
Received: from gk3153-pr4-x299-22869.igk.intel.com (HELO
 localhost.igk.intel.com) ([10.102.21.130])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 08:14:10 -0700
From: Michal Kubiak <michal.kubiak@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: maciej.fijalkowski@intel.com, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, Michal Kubiak <michal.kubiak@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@intel.com>
Date: Fri, 21 Mar 2025 16:13:57 +0100
Message-Id: <20250321151357.28540-1-michal.kubiak@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742570053; x=1774106053;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Lp68kh7cSiXp8XiOx98wqfz59mQcCa1aTJcAHVClIjM=;
 b=Mjak8bjxZRBnQjYqSyTY8CojwF5+kTaTnYZnqTpUSXZWZVQKmDOeZsft
 ea8UJwmb1gKX6OpNdxbY6Ik5MtQELe2NzWRGjNgl3potzWkWshQMT58nk
 1xhFKbUMk+qx3SCxnKQAHIObnThCIjgBj+fwd8S4350aVdnVKZPX16b6t
 8zfxUTX65FhaXlfXZtbAC1eFNMdF/eanjx44fkiufJ9Er+6H5J9NmnMkW
 XLyQR531JF5kaHB9+Q6nuvP160SzD/H5nY8eogB6BSp6uEUfz92lorpEa
 xDlhXyjaaKyBr4KBGcOpvJwPnGTkhe8lPOmKz1QBnR3ZQfsYwGsGJPEXm
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Mjak8bjx
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: add a separate Rx handler
 for flow director commands
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

The "ice" driver implementation uses the control VSI to handle
the flow director configuration for PFs and VFs.

Unfortunately, although a separate VSI type was created to handle flow
director queues, the Rx queue handler was shared between the flow
director and a standard NAPI Rx handler.

Such a design approach was not very flexible. First, it mixed hotpath
and slowpath code, blocking their further optimization. It also created
a huge overkill for the flow director command processing, which is
descriptor-based only, so there is no need to allocate Rx data buffers.

For the above reasons, implement a separate Rx handler for the control
VSI. Also, remove from the NAPI handler the code dedicated to
configuring the flow director rules on VFs.
Do not allocate Rx data buffers to the flow director queues because
their processing is descriptor-based only.
Finally, allow Rx data queues to be allocated only for VSIs that have
netdev assigned to them.

This handler splitting approach is the first step in converting the
driver to use the Page Pool (which can only be used for data queues).

Test hints:
  1. Create a VF for any PF managed by the ice driver.
  2. In a loop, add and delete flow director rules for the VF, e.g.:

       for i in {1..128}; do
           q=$(( i % 16 ))
           ethtool -N ens802f0v0 flow-type tcp4 dst-port "$i" action "$q"
       done

       for i in {0..127}; do
           ethtool -N ens802f0v0 delete "$i"
       done

Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Suggested-by: Michal Swiatkowski <michal.swiatkowski@intel.com>
Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c |  5 +-
 drivers/net/ethernet/intel/ice/ice_lib.c  |  3 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c | 85 +++++++++++++++++++----
 drivers/net/ethernet/intel/ice/ice_txrx.h |  2 +
 4 files changed, 78 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index b94c56a82cc5..8bc333b794eb 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -717,7 +717,10 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
 		return 0;
 	}
 
-	ice_alloc_rx_bufs(ring, num_bufs);
+	if (ring->vsi->type == ICE_VSI_CTRL)
+		ice_init_ctrl_rx_descs(ring, num_bufs);
+	else
+		ice_alloc_rx_bufs(ring, num_bufs);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 6392d27861e5..b857717441c3 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -497,8 +497,7 @@ static irqreturn_t ice_msix_clean_ctrl_vsi(int __always_unused irq, void *data)
 	if (!q_vector->tx.tx_ring)
 		return IRQ_HANDLED;
 
-#define FDIR_RX_DESC_CLEAN_BUDGET 64
-	ice_clean_rx_irq(q_vector->rx.rx_ring, FDIR_RX_DESC_CLEAN_BUDGET);
+	ice_clean_ctrl_rx_irq(q_vector->rx.rx_ring);
 	ice_clean_ctrl_tx_irq(q_vector->tx.tx_ring);
 
 	return IRQ_HANDLED;
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 69cdbd2eda07..72980c504a92 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -20,7 +20,6 @@
 
 #define ICE_RX_HDR_SIZE		256
 
-#define FDIR_DESC_RXDID 0x40
 #define ICE_FDIR_CLEAN_DELAY 10
 
 /**
@@ -775,6 +774,37 @@ ice_alloc_mapped_page(struct ice_rx_ring *rx_ring, struct ice_rx_buf *bi)
 	return true;
 }
 
+/**
+ * ice_init_ctrl_rx_descs - Initialize Rx descriptors for control vsi.
+ * @rx_ring: ring to init descriptors on
+ * @count: number of descriptors to initialize
+ */
+void ice_init_ctrl_rx_descs(struct ice_rx_ring *rx_ring, u32 count)
+{
+	union ice_32b_rx_flex_desc *rx_desc;
+	u32 ntu = rx_ring->next_to_use;
+
+	if (!count)
+		return;
+
+	rx_desc = ICE_RX_DESC(rx_ring, ntu);
+
+	do {
+		rx_desc++;
+		ntu++;
+		if (unlikely(ntu == rx_ring->count)) {
+			rx_desc = ICE_RX_DESC(rx_ring, 0);
+			ntu = 0;
+		}
+
+		rx_desc->wb.status_error0 = 0;
+		count--;
+	} while (count);
+
+	if (rx_ring->next_to_use != ntu)
+		ice_release_rx_desc(rx_ring, ntu);
+}
+
 /**
  * ice_alloc_rx_bufs - Replace used receive buffers
  * @rx_ring: ring to place buffers on
@@ -795,8 +825,7 @@ bool ice_alloc_rx_bufs(struct ice_rx_ring *rx_ring, unsigned int cleaned_count)
 	struct ice_rx_buf *bi;
 
 	/* do nothing if no valid netdev defined */
-	if ((!rx_ring->netdev && rx_ring->vsi->type != ICE_VSI_CTRL) ||
-	    !cleaned_count)
+	if (!rx_ring->netdev || !cleaned_count)
 		return false;
 
 	/* get the Rx descriptor and buffer based on next_to_use */
@@ -1252,6 +1281,45 @@ static void ice_put_rx_mbuf(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
 	rx_ring->nr_frags = 0;
 }
 
+/**
+ * ice_clean_ctrl_rx_irq - Clean descriptors from flow director Rx ring
+ * @rx_ring: Rx descriptor ring for ctrl_vsi to transact packets on
+ *
+ * This function cleans Rx descriptors from the ctrl_vsi Rx ring used
+ * to set flow director rules on VFs.
+ */
+void ice_clean_ctrl_rx_irq(struct ice_rx_ring *rx_ring)
+{
+	u32 ntc = rx_ring->next_to_clean;
+	unsigned int total_rx_pkts = 0;
+	u32 cnt = rx_ring->count;
+
+	while (likely(total_rx_pkts < ICE_DFLT_IRQ_WORK)) {
+		struct ice_vsi *ctrl_vsi = rx_ring->vsi;
+		union ice_32b_rx_flex_desc *rx_desc;
+		u16 stat_err_bits;
+
+		rx_desc = ICE_RX_DESC(rx_ring, ntc);
+
+		stat_err_bits = BIT(ICE_RX_FLEX_DESC_STATUS0_DD_S);
+		if (!ice_test_staterr(rx_desc->wb.status_error0, stat_err_bits))
+			break;
+
+		dma_rmb();
+
+		if (ctrl_vsi->vf)
+			ice_vc_fdir_irq_handler(ctrl_vsi, rx_desc);
+
+		if (++ntc == cnt)
+			ntc = 0;
+		total_rx_pkts++;
+	}
+
+	rx_ring->first_desc = ntc;
+	rx_ring->next_to_clean = ntc;
+	ice_init_ctrl_rx_descs(rx_ring, ICE_RX_DESC_UNUSED(rx_ring));
+}
+
 /**
  * ice_clean_rx_irq - Clean completed descriptors from Rx ring - bounce buf
  * @rx_ring: Rx descriptor ring to transact packets on
@@ -1311,17 +1379,6 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 		dma_rmb();
 
 		ice_trace(clean_rx_irq, rx_ring, rx_desc);
-		if (rx_desc->wb.rxdid == FDIR_DESC_RXDID || !rx_ring->netdev) {
-			struct ice_vsi *ctrl_vsi = rx_ring->vsi;
-
-			if (rx_desc->wb.rxdid == FDIR_DESC_RXDID &&
-			    ctrl_vsi->vf)
-				ice_vc_fdir_irq_handler(ctrl_vsi, rx_desc);
-			if (++ntc == cnt)
-				ntc = 0;
-			rx_ring->first_desc = ntc;
-			continue;
-		}
 
 		size = le16_to_cpu(rx_desc->wb.pkt_len) &
 			ICE_RX_FLX_DESC_PKT_LEN_M;
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index 4b63081629d0..041768df0b23 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -492,6 +492,7 @@ static inline unsigned int ice_rx_pg_order(struct ice_rx_ring *ring)
 
 union ice_32b_rx_flex_desc;
 
+void ice_init_ctrl_rx_descs(struct ice_rx_ring *rx_ring, u32 num_descs);
 bool ice_alloc_rx_bufs(struct ice_rx_ring *rxr, unsigned int cleaned_count);
 netdev_tx_t ice_start_xmit(struct sk_buff *skb, struct net_device *netdev);
 u16
@@ -512,4 +513,5 @@ ice_prgm_fdir_fltr(struct ice_vsi *vsi, struct ice_fltr_desc *fdir_desc,
 		   u8 *raw_packet);
 int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget);
 void ice_clean_ctrl_tx_irq(struct ice_tx_ring *tx_ring);
+void ice_clean_ctrl_rx_irq(struct ice_rx_ring *rx_ring);
 #endif /* _ICE_TXRX_H_ */
-- 
2.45.2

