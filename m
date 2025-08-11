Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 264A9B2122A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Aug 2025 18:36:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9CF183EEC;
	Mon, 11 Aug 2025 16:36:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qV7Dw6sWIxdU; Mon, 11 Aug 2025 16:36:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4708783EE9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754930197;
	bh=YLnB/iBOVCACo/5CgkUEhLM4qImZIj/nx6Y9zHuCY6M=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=U1b/YuIeUFTbOOY4JtiATd1/ZGjz+LM2+awdy3l1L/h8sDljHt2/CN3o7mjyuxI+4
	 UixQA03Zc2+zpJhn+DJIXfJseCsYLogZtDYkqtt//nlJFHHNpdiqwNyRSxnCIMRMUG
	 UrgWHa23wkMQqT+7N2JJON+l2icBM6V+YMn94aO8KGl9eTQkGjE9sF2YGbG/JvOwW/
	 WXMotLdVDjijGkROADkmtExmC0jKLFTIm872ldvMfpkXPPWntuUNqwfPAnAQhcSI1Q
	 XrT3bMELyOGadMdWEim2/6i4cxGSBnb00ILO+1VuhDNhIIEfiem/e03j/qtqN8KgDE
	 xGRHuJPRXysaA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4708783EE9;
	Mon, 11 Aug 2025 16:36:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 55C3C154
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 16:36:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B43E661371
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 16:36:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J6tHLbWxChBI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Aug 2025 16:36:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BE5E961405
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE5E961405
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BE5E961405
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 16:36:33 +0000 (UTC)
X-CSE-ConnectionGUID: waYh19UNTT208KgVJKLpUw==
X-CSE-MsgGUID: xf6ezsxGQGGy91wiYE2dGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="56395921"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="56395921"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 09:29:26 -0700
X-CSE-ConnectionGUID: EsxxiiUhTK6EcrVpPxl4wg==
X-CSE-MsgGUID: 38bgxJStS76roBfaz+NUKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="170161875"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.5.147])
 by orviesa003.jf.intel.com with ESMTP; 11 Aug 2025 09:29:26 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: maciej.fijalkowski@intel.com,
	Paul Greenwalt <paul.greenwalt@intel.com>
Date: Mon, 11 Aug 2025 04:44:05 -0400
Message-ID: <20250811084406.211660-2-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250811084406.211660-1-paul.greenwalt@intel.com>
References: <20250811084406.211660-1-paul.greenwalt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754930194; x=1786466194;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OnsQNLNpCmZ056xArLihB1CK3mWkRZNbNqyoiCkb518=;
 b=lZzriQp06VG3fPmnyJkjKFkfatPQTEtsR4k4MLPvsEO0egYH9eMPPCyg
 nWUZzU/1Xr+mMrqHS2SNc/zKoN5K16qjI7Pev4f7o3ki74ub8emUl/a1M
 QcEfwNge97BTF55+fhdO10nXCR92DgfoW2p0iqzhkGKM5Is8S15TWuqom
 bUXWLuDFSU+f7SiU6vEZvGumSyE81ljOyt0mmgdUHaLL09amcBd4NUu6m
 DP8tZoTMaA41K7aEVp1OQZL8OFb8gExZuRlWOdmr2KW9WnYBtRAFu32E3
 WiF5nB/twmgG+5Qrh4fKWBHceEv2A/KMXSZbO5OmiwXxG697FC85hMIEM
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lZzriQp0
Subject: [Intel-wired-lan] [PATCH iwl-next v6 1/2] ice: move
 ice_qp_[ena|dis] for reuse
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

Move ice_qp_[ena|dis] and related helper functions to ice_base.c to
allow reuse of these function currently only used by ice_xsk.c.

Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c | 145 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_base.h |   2 +
 drivers/net/ethernet/intel/ice/ice_xsk.c  | 153 +---------------------
 drivers/net/ethernet/intel/ice/ice_xsk.h  |  22 ++++
 4 files changed, 173 insertions(+), 149 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index c5da8e9cc0a0..dc4beac04086 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -1206,3 +1206,148 @@ ice_fill_txq_meta(const struct ice_vsi *vsi, struct ice_tx_ring *ring,
 		txq_meta->tc = tc;
 	}
 }
+
+/**
+ * ice_qp_reset_stats - Resets all stats for rings of given index
+ * @vsi: VSI that contains rings of interest
+ * @q_idx: ring index in array
+ */
+static void ice_qp_reset_stats(struct ice_vsi *vsi, u16 q_idx)
+{
+	struct ice_vsi_stats *vsi_stat;
+	struct ice_pf *pf;
+
+	pf = vsi->back;
+	if (!pf->vsi_stats)
+		return;
+
+	vsi_stat = pf->vsi_stats[vsi->idx];
+	if (!vsi_stat)
+		return;
+
+	memset(&vsi_stat->rx_ring_stats[q_idx]->rx_stats, 0,
+	       sizeof(vsi_stat->rx_ring_stats[q_idx]->rx_stats));
+	memset(&vsi_stat->tx_ring_stats[q_idx]->stats, 0,
+	       sizeof(vsi_stat->tx_ring_stats[q_idx]->stats));
+	if (vsi->xdp_rings)
+		memset(&vsi->xdp_rings[q_idx]->ring_stats->stats, 0,
+		       sizeof(vsi->xdp_rings[q_idx]->ring_stats->stats));
+}
+
+/**
+ * ice_qp_clean_rings - Cleans all the rings of a given index
+ * @vsi: VSI that contains rings of interest
+ * @q_idx: ring index in array
+ */
+static void ice_qp_clean_rings(struct ice_vsi *vsi, u16 q_idx)
+{
+	ice_clean_tx_ring(vsi->tx_rings[q_idx]);
+	if (vsi->xdp_rings)
+		ice_clean_tx_ring(vsi->xdp_rings[q_idx]);
+	ice_clean_rx_ring(vsi->rx_rings[q_idx]);
+}
+
+/**
+ * ice_qp_dis - Disables a queue pair
+ * @vsi: VSI of interest
+ * @q_idx: ring index in array
+ *
+ * Returns 0 on success, negative on failure.
+ */
+int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
+{
+	struct ice_txq_meta txq_meta = { };
+	struct ice_q_vector *q_vector;
+	struct ice_tx_ring *tx_ring;
+	struct ice_rx_ring *rx_ring;
+	int fail = 0;
+	int err;
+
+	if (q_idx >= vsi->num_rxq || q_idx >= vsi->num_txq)
+		return -EINVAL;
+
+	tx_ring = vsi->tx_rings[q_idx];
+	rx_ring = vsi->rx_rings[q_idx];
+	q_vector = rx_ring->q_vector;
+
+	synchronize_net();
+	netif_carrier_off(vsi->netdev);
+	netif_tx_stop_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
+
+	ice_qvec_dis_irq(vsi, rx_ring, q_vector);
+	ice_qvec_toggle_napi(vsi, q_vector, false);
+
+	ice_fill_txq_meta(vsi, tx_ring, &txq_meta);
+	err = ice_vsi_stop_tx_ring(vsi, ICE_NO_RESET, 0, tx_ring, &txq_meta);
+	if (!fail)
+		fail = err;
+	if (vsi->xdp_rings) {
+		struct ice_tx_ring *xdp_ring = vsi->xdp_rings[q_idx];
+
+		memset(&txq_meta, 0, sizeof(txq_meta));
+		ice_fill_txq_meta(vsi, xdp_ring, &txq_meta);
+		err = ice_vsi_stop_tx_ring(vsi, ICE_NO_RESET, 0, xdp_ring,
+					   &txq_meta);
+		if (!fail)
+			fail = err;
+	}
+
+	ice_vsi_ctrl_one_rx_ring(vsi, false, q_idx, false);
+	ice_qp_clean_rings(vsi, q_idx);
+	ice_qp_reset_stats(vsi, q_idx);
+
+	return fail;
+}
+
+/**
+ * ice_qp_ena - Enables a queue pair
+ * @vsi: VSI of interest
+ * @q_idx: ring index in array
+ *
+ * Returns 0 on success, negative on failure.
+ */
+int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
+{
+	struct ice_q_vector *q_vector;
+	int fail = 0;
+	bool link_up;
+	int err;
+
+	err = ice_vsi_cfg_single_txq(vsi, vsi->tx_rings, q_idx);
+	if (!fail)
+		fail = err;
+
+	if (ice_is_xdp_ena_vsi(vsi)) {
+		struct ice_tx_ring *xdp_ring = vsi->xdp_rings[q_idx];
+
+		err = ice_vsi_cfg_single_txq(vsi, vsi->xdp_rings, q_idx);
+		if (!fail)
+			fail = err;
+		ice_set_ring_xdp(xdp_ring);
+		ice_tx_xsk_pool(vsi, q_idx);
+	}
+
+	err = ice_vsi_cfg_single_rxq(vsi, q_idx);
+	if (!fail)
+		fail = err;
+
+	q_vector = vsi->rx_rings[q_idx]->q_vector;
+	ice_qvec_cfg_msix(vsi, q_vector, q_idx);
+
+	err = ice_vsi_ctrl_one_rx_ring(vsi, true, q_idx, true);
+	if (!fail)
+		fail = err;
+
+	ice_qvec_toggle_napi(vsi, q_vector, true);
+	ice_qvec_ena_irq(vsi, q_vector);
+
+	/* make sure NAPI sees updated ice_{t,x}_ring::xsk_pool */
+	synchronize_net();
+	ice_get_link_status(vsi->port_info, &link_up);
+	if (link_up) {
+		netif_tx_start_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
+		netif_carrier_on(vsi->netdev);
+	}
+
+	return fail;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_base.h b/drivers/net/ethernet/intel/ice/ice_base.h
index b711bc921928..632b5be61a98 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.h
+++ b/drivers/net/ethernet/intel/ice/ice_base.h
@@ -32,4 +32,6 @@ ice_vsi_stop_tx_ring(struct ice_vsi *vsi, enum ice_disq_rst_src rst_src,
 void
 ice_fill_txq_meta(const struct ice_vsi *vsi, struct ice_tx_ring *ring,
 		  struct ice_txq_meta *txq_meta);
+int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx);
+int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx);
 #endif /* _ICE_BASE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index a3a4eaa17739..575fd48f485f 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -18,53 +18,13 @@ static struct xdp_buff **ice_xdp_buf(struct ice_rx_ring *rx_ring, u32 idx)
 	return &rx_ring->xdp_buf[idx];
 }
 
-/**
- * ice_qp_reset_stats - Resets all stats for rings of given index
- * @vsi: VSI that contains rings of interest
- * @q_idx: ring index in array
- */
-static void ice_qp_reset_stats(struct ice_vsi *vsi, u16 q_idx)
-{
-	struct ice_vsi_stats *vsi_stat;
-	struct ice_pf *pf;
-
-	pf = vsi->back;
-	if (!pf->vsi_stats)
-		return;
-
-	vsi_stat = pf->vsi_stats[vsi->idx];
-	if (!vsi_stat)
-		return;
-
-	memset(&vsi_stat->rx_ring_stats[q_idx]->rx_stats, 0,
-	       sizeof(vsi_stat->rx_ring_stats[q_idx]->rx_stats));
-	memset(&vsi_stat->tx_ring_stats[q_idx]->stats, 0,
-	       sizeof(vsi_stat->tx_ring_stats[q_idx]->stats));
-	if (vsi->xdp_rings)
-		memset(&vsi->xdp_rings[q_idx]->ring_stats->stats, 0,
-		       sizeof(vsi->xdp_rings[q_idx]->ring_stats->stats));
-}
-
-/**
- * ice_qp_clean_rings - Cleans all the rings of a given index
- * @vsi: VSI that contains rings of interest
- * @q_idx: ring index in array
- */
-static void ice_qp_clean_rings(struct ice_vsi *vsi, u16 q_idx)
-{
-	ice_clean_tx_ring(vsi->tx_rings[q_idx]);
-	if (vsi->xdp_rings)
-		ice_clean_tx_ring(vsi->xdp_rings[q_idx]);
-	ice_clean_rx_ring(vsi->rx_rings[q_idx]);
-}
-
 /**
  * ice_qvec_toggle_napi - Enables/disables NAPI for a given q_vector
  * @vsi: VSI that has netdev
  * @q_vector: q_vector that has NAPI context
  * @enable: true for enable, false for disable
  */
-static void
+void
 ice_qvec_toggle_napi(struct ice_vsi *vsi, struct ice_q_vector *q_vector,
 		     bool enable)
 {
@@ -83,7 +43,7 @@ ice_qvec_toggle_napi(struct ice_vsi *vsi, struct ice_q_vector *q_vector,
  * @rx_ring: Rx ring that will have its IRQ disabled
  * @q_vector: queue vector
  */
-static void
+void
 ice_qvec_dis_irq(struct ice_vsi *vsi, struct ice_rx_ring *rx_ring,
 		 struct ice_q_vector *q_vector)
 {
@@ -113,7 +73,7 @@ ice_qvec_dis_irq(struct ice_vsi *vsi, struct ice_rx_ring *rx_ring,
  * @q_vector: queue vector
  * @qid: queue index
  */
-static void
+void
 ice_qvec_cfg_msix(struct ice_vsi *vsi, struct ice_q_vector *q_vector, u16 qid)
 {
 	u16 reg_idx = q_vector->reg_idx;
@@ -143,7 +103,7 @@ ice_qvec_cfg_msix(struct ice_vsi *vsi, struct ice_q_vector *q_vector, u16 qid)
  * @vsi: the VSI that contains queue vector
  * @q_vector: queue vector
  */
-static void ice_qvec_ena_irq(struct ice_vsi *vsi, struct ice_q_vector *q_vector)
+void ice_qvec_ena_irq(struct ice_vsi *vsi, struct ice_q_vector *q_vector)
 {
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
@@ -153,111 +113,6 @@ static void ice_qvec_ena_irq(struct ice_vsi *vsi, struct ice_q_vector *q_vector)
 	ice_flush(hw);
 }
 
-/**
- * ice_qp_dis - Disables a queue pair
- * @vsi: VSI of interest
- * @q_idx: ring index in array
- *
- * Returns 0 on success, negative on failure.
- */
-static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
-{
-	struct ice_txq_meta txq_meta = { };
-	struct ice_q_vector *q_vector;
-	struct ice_tx_ring *tx_ring;
-	struct ice_rx_ring *rx_ring;
-	int fail = 0;
-	int err;
-
-	if (q_idx >= vsi->num_rxq || q_idx >= vsi->num_txq)
-		return -EINVAL;
-
-	tx_ring = vsi->tx_rings[q_idx];
-	rx_ring = vsi->rx_rings[q_idx];
-	q_vector = rx_ring->q_vector;
-
-	synchronize_net();
-	netif_carrier_off(vsi->netdev);
-	netif_tx_stop_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
-
-	ice_qvec_dis_irq(vsi, rx_ring, q_vector);
-	ice_qvec_toggle_napi(vsi, q_vector, false);
-
-	ice_fill_txq_meta(vsi, tx_ring, &txq_meta);
-	err = ice_vsi_stop_tx_ring(vsi, ICE_NO_RESET, 0, tx_ring, &txq_meta);
-	if (!fail)
-		fail = err;
-	if (vsi->xdp_rings) {
-		struct ice_tx_ring *xdp_ring = vsi->xdp_rings[q_idx];
-
-		memset(&txq_meta, 0, sizeof(txq_meta));
-		ice_fill_txq_meta(vsi, xdp_ring, &txq_meta);
-		err = ice_vsi_stop_tx_ring(vsi, ICE_NO_RESET, 0, xdp_ring,
-					   &txq_meta);
-		if (!fail)
-			fail = err;
-	}
-
-	ice_vsi_ctrl_one_rx_ring(vsi, false, q_idx, false);
-	ice_qp_clean_rings(vsi, q_idx);
-	ice_qp_reset_stats(vsi, q_idx);
-
-	return fail;
-}
-
-/**
- * ice_qp_ena - Enables a queue pair
- * @vsi: VSI of interest
- * @q_idx: ring index in array
- *
- * Returns 0 on success, negative on failure.
- */
-static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
-{
-	struct ice_q_vector *q_vector;
-	int fail = 0;
-	bool link_up;
-	int err;
-
-	err = ice_vsi_cfg_single_txq(vsi, vsi->tx_rings, q_idx);
-	if (!fail)
-		fail = err;
-
-	if (ice_is_xdp_ena_vsi(vsi)) {
-		struct ice_tx_ring *xdp_ring = vsi->xdp_rings[q_idx];
-
-		err = ice_vsi_cfg_single_txq(vsi, vsi->xdp_rings, q_idx);
-		if (!fail)
-			fail = err;
-		ice_set_ring_xdp(xdp_ring);
-		ice_tx_xsk_pool(vsi, q_idx);
-	}
-
-	err = ice_vsi_cfg_single_rxq(vsi, q_idx);
-	if (!fail)
-		fail = err;
-
-	q_vector = vsi->rx_rings[q_idx]->q_vector;
-	ice_qvec_cfg_msix(vsi, q_vector, q_idx);
-
-	err = ice_vsi_ctrl_one_rx_ring(vsi, true, q_idx, true);
-	if (!fail)
-		fail = err;
-
-	ice_qvec_toggle_napi(vsi, q_vector, true);
-	ice_qvec_ena_irq(vsi, q_vector);
-
-	/* make sure NAPI sees updated ice_{t,x}_ring::xsk_pool */
-	synchronize_net();
-	ice_get_link_status(vsi->port_info, &link_up);
-	if (link_up) {
-		netif_tx_start_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
-		netif_carrier_on(vsi->netdev);
-	}
-
-	return fail;
-}
-
 /**
  * ice_xsk_pool_disable - disable a buffer pool region
  * @vsi: Current VSI
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.h b/drivers/net/ethernet/intel/ice/ice_xsk.h
index 8dc5d55e26c5..600cbeeaa203 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.h
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.h
@@ -23,6 +23,13 @@ void ice_xsk_clean_rx_ring(struct ice_rx_ring *rx_ring);
 void ice_xsk_clean_xdp_ring(struct ice_tx_ring *xdp_ring);
 bool ice_xmit_zc(struct ice_tx_ring *xdp_ring, struct xsk_buff_pool *xsk_pool);
 int ice_realloc_zc_buf(struct ice_vsi *vsi, bool zc);
+void ice_qvec_cfg_msix(struct ice_vsi *vsi, struct ice_q_vector *q_vector,
+		       u16 qid);
+void ice_qvec_toggle_napi(struct ice_vsi *vsi, struct ice_q_vector *q_vector,
+			  bool enable);
+void ice_qvec_ena_irq(struct ice_vsi *vsi, struct ice_q_vector *q_vector);
+void ice_qvec_dis_irq(struct ice_vsi *vsi, struct ice_rx_ring *rx_ring,
+		      struct ice_q_vector *q_vector);
 #else
 static inline bool ice_xmit_zc(struct ice_tx_ring __always_unused *xdp_ring,
 			       struct xsk_buff_pool __always_unused *xsk_pool)
@@ -75,5 +82,20 @@ ice_realloc_zc_buf(struct ice_vsi __always_unused *vsi,
 {
 	return 0;
 }
+
+static inline void
+ice_qvec_cfg_msix(struct ice_vsi *vsi, struct ice_q_vector *q_vector,
+		  u16 qid) { }
+
+static inline void
+ice_qvec_toggle_napi(struct ice_vsi *vsi, struct ice_q_vector *q_vector,
+		     bool enable) { }
+
+static inline void
+ice_qvec_ena_irq(struct ice_vsi *vsi, struct ice_q_vector *q_vector) { }
+
+static inline void
+ice_qvec_dis_irq(struct ice_vsi *vsi, struct ice_rx_ring *rx_ring,
+		 struct ice_q_vector *q_vector) { }
 #endif /* CONFIG_XDP_SOCKETS */
 #endif /* !_ICE_XSK_H_ */
-- 
2.47.0

