Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C615972590
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Sep 2024 01:08:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C776A60839;
	Mon,  9 Sep 2024 23:08:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RHvu8uxgtgyd; Mon,  9 Sep 2024 23:08:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A10B260829
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725923282;
	bh=osWuY+Vrk283nW2hpRa51pGko25nwUJYY+1BeXuH1U4=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OmcL3Ey5vSUQ1iT0eclrAFH15BINNx3RzfmIibkcaBRPLutqnQo6mQWG17m2WiCoN
	 NHposKb2MDPa/3/7hFRQkzR6d1iBhHB0hzDJFH8vCHz04hwRUjQG41UWJ4ibCBuzYc
	 2f2/yFFiQm2Wn7TC5lO//qMCWeUuiblVCEmfTwq7pUXuPsZpoFm4BG0l2J/ufWBe6k
	 MZzyfKfH0+VwfeIW8e+8CPYhdqXq1XJKXlCA3PNhwoIsb9K0Z1jxj1rudPK1G4FsD3
	 8ylNComy8h11ePF/4eGrk8qoMC+yqkEvM+cCUXMF7K1WtGlQOQs/CdI/BsCzGe++Rg
	 fQ9Ad2/OTs0GA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A10B260829;
	Mon,  9 Sep 2024 23:08:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4B3A91BF300
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 23:07:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 65B1860828
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 23:07:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Viv9WgOvTOiY for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Sep 2024 23:07:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7262C6082A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7262C6082A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7262C6082A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 23:07:55 +0000 (UTC)
X-CSE-ConnectionGUID: tqWtDBUlT5+hHK33E70AFw==
X-CSE-MsgGUID: 2NVIDMmYRAKbwbXsJn3W8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="13448223"
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="13448223"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 16:07:55 -0700
X-CSE-ConnectionGUID: 8/lRIp34QX+ryiCK8z8Y6A==
X-CSE-MsgGUID: FRoCaMvhQaG/CHay5Bg+Gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="70940075"
Received: from jekeller-desk.jf.intel.com ([10.166.241.20])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 16:07:54 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 09 Sep 2024 16:07:45 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240909-e810-live-migration-jk-per-queue-max-frame-rx-buf-len-v1-2-f955205bc78f@intel.com>
References: <20240909-e810-live-migration-jk-per-queue-max-frame-rx-buf-len-v1-0-f955205bc78f@intel.com>
In-Reply-To: <20240909-e810-live-migration-jk-per-queue-max-frame-rx-buf-len-v1-0-f955205bc78f@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>
X-Mailer: b4 0.14.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725923276; x=1757459276;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=bslLUPKWnuFmjo8vlZFkmVjowtVIYSv+kL/obNXXokk=;
 b=aXX4ha06NyJwFT4eNUV/WWAlBUhpaxUlKDkMaE+K0GTX/v9sXzYe8h4o
 EwvSSGuQE56An6NfUqfoXW33+hBCsYnqsaOU84DQ4eiavRXkxZoUwrGd0
 wx2UDGzwY4Ji38DYCBVWULBfE+kR644VzdxKp148cIkhZieKNzg58+RNU
 y7hTpGFF9x/aNwjtwa9xM1CmO6l9vZnkr3OKzVppmPWf9RniygDB29VPq
 dO7hTgDjG70p/9Sqn/O/QYsoseVO0Fg9mVXULBrSKckGqU1Lo5YTobKUM
 SN+GzDFU4+1x3BfC2rxgQtbxeseys7YC7GtckQktZpas0kNqJFt0Bo2Rw
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aXX4ha06
Subject: [Intel-wired-lan] [PATCH iwl-next 2/2] ice: store max_frame and
 rx_buf_len only in ice_rx_ring
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The max_frame and rx_buf_len fields of the VSI set the maximum frame size
for packets on the wire, and configure the size of the Rx buffer. In the
hardware, these are per-queue configuration. Most VSI types use a simple
method to determine the size of the buffers for all queues.

However, VFs may potentially configure different values for each queue.
While the Linux iAVF driver does not do this, it is allowed by the virtchnl
interface.

The current virtchnl code simply sets the per-VSI fields inbetween calls to
ice_vsi_cfg_single_rxq(). This technically works, as these fields are only
ever used when programming the Rx ring, and otherwise not checked again.
However, it is confusing to maintain.

The Rx ring also already has an rx_buf_len field in order to access the
buffer length in the hotpath. It also has extra unused bytes in the ring
structure which we can make use of to store the maximum frame size.

Drop the VSI max_frame and rx_buf_len fields. Add max_frame to the Rx ring,
and slightly re-order rx_buf_len to better fit into the gaps in the
structure layout.

Change the ice_vsi_cfg_frame_size function so that it writes to the ring
fields. Call this function once per ring in ice_vsi_cfg_rxqs(). This is
done over calling it inside the ice_vsi_cfg_rxq(), because
ice_vsi_cfg_rxq() is called in the virtchnl flow where the max_frame and
rx_buf_len have already been configured.

Change the accesses for rx_buf_len and max_frame to all point to the ring
structure. This has the added benefit that ice_vsi_cfg_rxq() no longer has
the surprise side effect of updating ring->rx_buf_len based on the VSI
field.

Update the virtchnl ice_vc_cfg_qs_msg() function to set the ring values
directly, and drop references to the removed VSI fields.

This now makes the VF logic clear, as the ring fields are obviously
per-queue. This reduces the required cognitive load when reasoning about
this logic.

Note that removing the VSI fields does leave a 4 byte gap, but the ice_vsi
structure has many gaps, and its layout is not as critical in the hot path.
The structure may benefit from a more thorough repacking, but no attempt
was made in this change.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |  3 ---
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  3 ++-
 drivers/net/ethernet/intel/ice/ice_base.c     | 34 ++++++++++++++-------------
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  7 +++---
 4 files changed, 23 insertions(+), 24 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index ce8b5505b16d..7f606f9277f2 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -371,9 +371,6 @@ struct ice_vsi {
 	spinlock_t arfs_lock;	/* protects aRFS hash table and filter state */
 	atomic_t *arfs_last_fltr_id;
 
-	u16 max_frame;
-	u16 rx_buf_len;
-
 	struct ice_aqc_vsi_props info;	 /* VSI properties */
 	struct ice_vsi_vlan_info vlan_info;	/* vlan config to be restored */
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index feba314a3fe4..67153f5b6891 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -359,8 +359,9 @@ struct ice_rx_ring {
 	struct ice_rx_ring *next;	/* pointer to next ring in q_vector */
 	struct xsk_buff_pool *xsk_pool;
 	u32 nr_frags;
-	dma_addr_t dma;			/* physical address of ring */
+	u16 max_frame;
 	u16 rx_buf_len;
+	dma_addr_t dma;			/* physical address of ring */
 	u8 dcb_tc;			/* Traffic class of ring */
 	u8 ptp_rx;
 #define ICE_RX_FLAGS_RING_BUILD_SKB	BIT(1)
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index c158749a80e0..ef69878c2871 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -442,7 +442,7 @@ static int ice_setup_rx_ctx(struct ice_rx_ring *ring)
 	/* Max packet size for this queue - must not be set to a larger value
 	 * than 5 x DBUF
 	 */
-	rlan_ctx.rxmax = min_t(u32, vsi->max_frame,
+	rlan_ctx.rxmax = min_t(u32, ring->max_frame,
 			       ICE_MAX_CHAINED_RX_BUFS * ring->rx_buf_len);
 
 	/* Rx queue threshold in units of 64 */
@@ -538,8 +538,6 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
 	u32 num_bufs = ICE_RX_DESC_UNUSED(ring);
 	int err;
 
-	ring->rx_buf_len = ring->vsi->rx_buf_len;
-
 	if (ring->vsi->type == ICE_VSI_PF) {
 		if (!xdp_rxq_info_is_reg(&ring->xdp_rxq)) {
 			err = __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
@@ -638,21 +636,25 @@ int ice_vsi_cfg_single_rxq(struct ice_vsi *vsi, u16 q_idx)
 /**
  * ice_vsi_cfg_frame_size - setup max frame size and Rx buffer length
  * @vsi: VSI
+ * @ring: Rx ring to configure
+ *
+ * Determine the maximum frame size and Rx buffer length to use for a PF VSI.
+ * Set these in the associated Rx ring structure.
  */
-static void ice_vsi_cfg_frame_size(struct ice_vsi *vsi)
+static void ice_vsi_cfg_frame_size(struct ice_vsi *vsi, struct ice_rx_ring *ring)
 {
 	if (!vsi->netdev || test_bit(ICE_FLAG_LEGACY_RX, vsi->back->flags)) {
-		vsi->max_frame = ICE_MAX_FRAME_LEGACY_RX;
-		vsi->rx_buf_len = ICE_RXBUF_1664;
+		ring->max_frame = ICE_MAX_FRAME_LEGACY_RX;
+		ring->rx_buf_len = ICE_RXBUF_1664;
 #if (PAGE_SIZE < 8192)
 	} else if (!ICE_2K_TOO_SMALL_WITH_PADDING &&
 		   (vsi->netdev->mtu <= ETH_DATA_LEN)) {
-		vsi->max_frame = ICE_RXBUF_1536 - NET_IP_ALIGN;
-		vsi->rx_buf_len = ICE_RXBUF_1536 - NET_IP_ALIGN;
+		ring->max_frame = ICE_RXBUF_1536 - NET_IP_ALIGN;
+		ring->rx_buf_len = ICE_RXBUF_1536 - NET_IP_ALIGN;
 #endif
 	} else {
-		vsi->max_frame = ICE_AQ_SET_MAC_FRAME_SIZE_MAX;
-		vsi->rx_buf_len = ICE_RXBUF_3072;
+		ring->max_frame = ICE_AQ_SET_MAC_FRAME_SIZE_MAX;
+		ring->rx_buf_len = ICE_RXBUF_3072;
 	}
 }
 
@@ -667,15 +669,15 @@ int ice_vsi_cfg_rxqs(struct ice_vsi *vsi)
 {
 	u16 i;
 
-	if (vsi->type == ICE_VSI_VF)
-		goto setup_rings;
-
-	ice_vsi_cfg_frame_size(vsi);
-setup_rings:
 	/* set up individual rings */
 	ice_for_each_rxq(vsi, i) {
-		int err = ice_vsi_cfg_rxq(vsi->rx_rings[i]);
+		struct ice_rx_ring *ring = vsi->rx_rings[i];
+		int err;
 
+		if (vsi->type != ICE_VSI_VF)
+			ice_vsi_cfg_frame_size(vsi, ring);
+
+		err = ice_vsi_cfg_rxq(ring);
 		if (err)
 			return err;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index b6ec01f6fa73..1d7f9066a098 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -1748,19 +1748,18 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 			    (qpi->rxq.databuffer_size > ((16 * 1024) - 128) ||
 			     qpi->rxq.databuffer_size < 1024))
 				goto error_param;
-			vsi->rx_buf_len = qpi->rxq.databuffer_size;
-			ring->rx_buf_len = vsi->rx_buf_len;
+			ring->rx_buf_len = qpi->rxq.databuffer_size;
 			if (qpi->rxq.max_pkt_size > max_frame_size ||
 			    qpi->rxq.max_pkt_size < 64)
 				goto error_param;
 
-			vsi->max_frame = qpi->rxq.max_pkt_size;
+			ring->max_frame = qpi->rxq.max_pkt_size;
 			/* add space for the port VLAN since the VF driver is
 			 * not expected to account for it in the MTU
 			 * calculation
 			 */
 			if (ice_vf_is_port_vlan_ena(vf))
-				vsi->max_frame += VLAN_HLEN;
+				ring->max_frame += VLAN_HLEN;
 
 			if (ice_vsi_cfg_single_rxq(vsi, q_idx)) {
 				dev_warn(ice_pf_to_dev(pf), "VF-%d failed to configure RX queue %d\n",

-- 
2.46.0.124.g2dc1a81c8933

