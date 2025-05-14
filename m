Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB14AB6B89
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 May 2025 14:38:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D69AA607B1;
	Wed, 14 May 2025 12:38:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IUz2WUJa9YIb; Wed, 14 May 2025 12:38:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 91833607DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747226313;
	bh=W6bpn5BjbN6j76GWCJCHUGNDYidw6RtvPx9yS1vS14Y=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=aA9sii7vWaBHD/lPTQI6UMtOwGhY3tS9uWTIlMM7Ve4SyApmtnANXJSQl4svK5KLT
	 0D880ezSNusQDrYGjWFC4q7QEeZeANa7qsc/7Rg699/19oLEaTTZWnCZCkaa/YiPr5
	 Y0zrIiXDrBCgZqwxXPbnpRsWPmua2A6kbWA9JY/AMSztHZ0bUux3cQ7K6iTAjqDJUE
	 pwEcq4AZeAYZFZhF8qMgWJ0nCmyRGkoV3JWYYsXyUb6kFrMitJmq+pZJ+mZmFkZjCA
	 QkSGq8SdIvVsdRUHbPhbATtvhVDnQDAZigYwmwmz5V31bYrKrqirYVkjEe39XuoPYE
	 7KE3g5XbO4lTw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 91833607DE;
	Wed, 14 May 2025 12:38:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D087A12A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 12:38:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C234240B3C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 12:38:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y-bLeLAjpQ3K for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 May 2025 12:38:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BE63040581
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE63040581
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BE63040581
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 12:38:31 +0000 (UTC)
X-CSE-ConnectionGUID: 5SV1SbeaRVCjhSvYdGhpgw==
X-CSE-MsgGUID: HayL35SuTrmQBlEjYnYx2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11433"; a="49191878"
X-IronPort-AV: E=Sophos;i="6.15,288,1739865600"; d="scan'208";a="49191878"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 05:38:31 -0700
X-CSE-ConnectionGUID: 6iVCT7z3RJySEyb/zt7/eQ==
X-CSE-MsgGUID: iIbhKRCRRYeRXq5tJjb+gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,288,1739865600"; d="scan'208";a="139015526"
Received: from gk3153-pr4-x299-22869.igk.intel.com (HELO
 localhost.igk.intel.com) ([10.102.21.130])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 05:38:29 -0700
From: Michal Kubiak <michal.kubiak@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: maciej.fijalkowski@intel.com, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com, horms@kernel.org,
 anthony.l.nguyen@intel.com, Michal Kubiak <michal.kubiak@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@intel.com>
Date: Wed, 14 May 2025 14:37:24 +0200
Message-ID: <20250514123724.250750-1-michal.kubiak@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747226312; x=1778762312;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eKeL4Uk9C33hdT/AwGDs4IDQ/vPVEBGPe+XKmEwvxdw=;
 b=UkX0CqQqk8OR+nvh6jF8+ONar8JjVFYHKG2BsBl7mUppHmE3GsFG3wA2
 0mxxnXs+Thsz4EnH9OOK5ZqZjmKx0U6+6o3NxwsWwsf7Vc/v42cIUleNb
 cW+OcVwSk3eFDLv09eho8BHAS4lTPoqB2De6yMlyoduCI7fvkvwnTUSmX
 GNNoST7UgironHmj26Fp29KxxIIYbBZNCZJFP0zfG0nwpvZPxregXqGZh
 fESRKNZVeV3ERtOKkoRR1GIZJp8hriljkAPn/Y/enl59G4DT7vnVQT09I
 0qTgAhJKWj0kUzGEtBZ6ymo+XokvznlM4aET9+BgH4GlKzRpkgAPKYK/i
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UkX0CqQq
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: add a separate Rx handler
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
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
---

v2:
   - declare the function `ice_clean_rx_irq()` as static, because now it is
     called from "ice_txrx.c" file only (Maciej),
   - add RB tags from Jacob and Simon.

v1: https://lore.kernel.org/intel-wired-lan/20250321151357.28540-1-michal.kubiak@intel.com/

---
 drivers/net/ethernet/intel/ice/ice_base.c |  5 +-
 drivers/net/ethernet/intel/ice/ice_lib.c  |  3 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c | 87 +++++++++++++++++++----
 drivers/net/ethernet/intel/ice/ice_txrx.h |  3 +-
 4 files changed, 79 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 6db4ad8fc70b..270f936ce807 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -623,7 +623,10 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
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
index 03bb16191237..533486af9be7 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -484,8 +484,7 @@ static irqreturn_t ice_msix_clean_ctrl_vsi(int __always_unused irq, void *data)
 	if (!q_vector->tx.tx_ring)
 		return IRQ_HANDLED;
 
-#define FDIR_RX_DESC_CLEAN_BUDGET 64
-	ice_clean_rx_irq(q_vector->rx.rx_ring, FDIR_RX_DESC_CLEAN_BUDGET);
+	ice_clean_ctrl_rx_irq(q_vector->rx.rx_ring);
 	ice_clean_ctrl_tx_irq(q_vector->tx.tx_ring);
 
 	return IRQ_HANDLED;
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 0e5107fe62ad..29e0088ab6b2 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -20,7 +20,6 @@
 
 #define ICE_RX_HDR_SIZE		256
 
-#define FDIR_DESC_RXDID 0x40
 #define ICE_FDIR_CLEAN_DELAY 10
 
 /**
@@ -706,6 +705,37 @@ ice_alloc_mapped_page(struct ice_rx_ring *rx_ring, struct ice_rx_buf *bi)
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
@@ -726,8 +756,7 @@ bool ice_alloc_rx_bufs(struct ice_rx_ring *rx_ring, unsigned int cleaned_count)
 	struct ice_rx_buf *bi;
 
 	/* do nothing if no valid netdev defined */
-	if ((!rx_ring->netdev && rx_ring->vsi->type != ICE_VSI_CTRL) ||
-	    !cleaned_count)
+	if (!rx_ring->netdev || !cleaned_count)
 		return false;
 
 	/* get the Rx descriptor and buffer based on next_to_use */
@@ -1183,6 +1212,45 @@ static void ice_put_rx_mbuf(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
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
@@ -1195,7 +1263,7 @@ static void ice_put_rx_mbuf(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
  *
  * Returns amount of work completed
  */
-int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
+static int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 {
 	unsigned int total_rx_bytes = 0, total_rx_pkts = 0;
 	unsigned int offset = rx_ring->rx_offset;
@@ -1242,17 +1310,6 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
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
index a4b1e9514632..fef750c5f288 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -491,6 +491,7 @@ static inline unsigned int ice_rx_pg_order(struct ice_rx_ring *ring)
 
 union ice_32b_rx_flex_desc;
 
+void ice_init_ctrl_rx_descs(struct ice_rx_ring *rx_ring, u32 num_descs);
 bool ice_alloc_rx_bufs(struct ice_rx_ring *rxr, unsigned int cleaned_count);
 netdev_tx_t ice_start_xmit(struct sk_buff *skb, struct net_device *netdev);
 u16
@@ -506,6 +507,6 @@ int ice_napi_poll(struct napi_struct *napi, int budget);
 int
 ice_prgm_fdir_fltr(struct ice_vsi *vsi, struct ice_fltr_desc *fdir_desc,
 		   u8 *raw_packet);
-int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget);
 void ice_clean_ctrl_tx_irq(struct ice_tx_ring *tx_ring);
+void ice_clean_ctrl_rx_irq(struct ice_rx_ring *rx_ring);
 #endif /* _ICE_TXRX_H_ */
-- 
2.45.2

