Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 25FE7838E0D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jan 2024 12:59:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EA9FB81B48;
	Tue, 23 Jan 2024 11:59:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EA9FB81B48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706011147;
	bh=li4xCuTee1o5naz1zvwgFemacFDl1w0HxUSDIXYOwjc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=toPRI6oDeC12RWi703WZCpsxPKzsynu0WpJDnyvyQu0QrpLO1m46074IYFUXv+UmY
	 AD42oNGLCk9QWbq50LHVJZo3MLpemn4l509qzu4aasD+fjbimhWi+uLfCE7/RFYnDL
	 /iZaB8d9vArocl0aFh2poYXhNXGhpG5rChjitvWTZBUeCU6ME3WVD7xI8xeMtDZ91A
	 LfNq2l9MBGtomFX1QsEk1B7DbReXRBcxD34XOy9nfU1ElCV/eFWscnmRXUVO37xI8G
	 Er7+zqS+rldudSN+0f2pViEN+n9yS54TbBCco7RKjIxdRLiO1XKuD5ojv362jy5YpP
	 e9BIlruewJDWA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FMIV8kTyVFlS; Tue, 23 Jan 2024 11:59:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 96B0781442;
	Tue, 23 Jan 2024 11:59:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 96B0781442
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4F6EA1BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 11:58:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 27011400C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 11:58:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 27011400C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZzwST5CK6yvh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jan 2024 11:58:54 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 56DBC42464
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 11:58:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 56DBC42464
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="22968564"
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; d="scan'208";a="22968564"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 03:58:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; d="scan'208";a="27726680"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa002.jf.intel.com with ESMTP; 23 Jan 2024 03:58:52 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Jan 2024 12:58:45 +0100
Message-Id: <20240123115846.559559-2-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240123115846.559559-1-maciej.fijalkowski@intel.com>
References: <20240123115846.559559-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706011134; x=1737547134;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uk1IP3mKcVkl4rq+jhtFWzE8FIkM/zZ4IoA5hvXjmLY=;
 b=d4AsJx8mWaqZ0WeihY9E51nlYnnKBRWjWOR3nG0dCkoHOBonMdkBpWWz
 5LMdDO55WYWQp9dhbksKchlYV5WiloMnalmMJK7Cy2gqGxHzWBl3vGooR
 TI8WA+JwXywhY/wCUmdqqsXI3AUH910kqS6m3/fTR6yEr6rqFDR5fCp2d
 kUVHbOGs60eqcNTwYF3RfvaQ2+qPqDvdWhgh1zRXv0l6J/rVpEzWKnPO2
 9agu6XeSYZHS0Nc9PtEoOpUlRhrQP7ynC2eNVh+7RKX1k8EAxDrEcEock
 ryoT5XyPxsHR2qgTfjmLDYy6YSRbsj2UM5nWxlTv4cW8782T8QzuMzNsv
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d4AsJx8m
Subject: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: make ice_vsi_cfg_rxq()
 static
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
Cc: netdev@vger.kernel.org, Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 anthony.l.nguyen@intel.com, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently, XSK control path in ice driver calls directly
ice_vsi_cfg_rxq() whereas we have ice_vsi_cfg_single_rxq() for that
purpose. Use the latter from XSK side and make ice_vsi_cfg_rxq() static.

ice_vsi_cfg_rxq() resides in ice_base.c and is rather big, so to reduce
the code churn let us move two callers of it from ice_lib.c to
ice_base.c.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c | 58 ++++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_base.h |  3 +-
 drivers/net/ethernet/intel/ice/ice_lib.c  | 56 ----------------------
 drivers/net/ethernet/intel/ice/ice_lib.h  |  4 --
 drivers/net/ethernet/intel/ice/ice_xsk.c  |  2 +-
 5 files changed, 60 insertions(+), 63 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index b25b7f415965..2d8898d5e317 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -546,7 +546,7 @@ static void ice_xsk_pool_fill_cb(struct ice_rx_ring *ring)
  *
  * Return 0 on success and a negative value on error.
  */
-int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
+static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
 {
 	struct device *dev = ice_pf_to_dev(ring->vsi->back);
 	u32 num_bufs = ICE_RX_DESC_UNUSED(ring);
@@ -632,6 +632,62 @@ int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
 	return 0;
 }
 
+int ice_vsi_cfg_single_rxq(struct ice_vsi *vsi, u16 q_idx)
+{
+	if (q_idx >= vsi->num_rxq)
+		return -EINVAL;
+
+	return ice_vsi_cfg_rxq(vsi->rx_rings[q_idx]);
+}
+
+/**
+ * ice_vsi_cfg_frame_size - setup max frame size and Rx buffer length
+ * @vsi: VSI
+ */
+static void ice_vsi_cfg_frame_size(struct ice_vsi *vsi)
+{
+	if (!vsi->netdev || test_bit(ICE_FLAG_LEGACY_RX, vsi->back->flags)) {
+		vsi->max_frame = ICE_MAX_FRAME_LEGACY_RX;
+		vsi->rx_buf_len = ICE_RXBUF_1664;
+#if (PAGE_SIZE < 8192)
+	} else if (!ICE_2K_TOO_SMALL_WITH_PADDING &&
+		   (vsi->netdev->mtu <= ETH_DATA_LEN)) {
+		vsi->max_frame = ICE_RXBUF_1536 - NET_IP_ALIGN;
+		vsi->rx_buf_len = ICE_RXBUF_1536 - NET_IP_ALIGN;
+#endif
+	} else {
+		vsi->max_frame = ICE_AQ_SET_MAC_FRAME_SIZE_MAX;
+		vsi->rx_buf_len = ICE_RXBUF_3072;
+	}
+}
+
+/**
+ * ice_vsi_cfg_rxqs - Configure the VSI for Rx
+ * @vsi: the VSI being configured
+ *
+ * Return 0 on success and a negative value on error
+ * Configure the Rx VSI for operation.
+ */
+int ice_vsi_cfg_rxqs(struct ice_vsi *vsi)
+{
+	u16 i;
+
+	if (vsi->type == ICE_VSI_VF)
+		goto setup_rings;
+
+	ice_vsi_cfg_frame_size(vsi);
+setup_rings:
+	/* set up individual rings */
+	ice_for_each_rxq(vsi, i) {
+		int err = ice_vsi_cfg_rxq(vsi->rx_rings[i]);
+
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
 /**
  * __ice_vsi_get_qs - helper function for assigning queues from PF to VSI
  * @qs_cfg: gathered variables needed for pf->vsi queues assignment
diff --git a/drivers/net/ethernet/intel/ice/ice_base.h b/drivers/net/ethernet/intel/ice/ice_base.h
index b67dca417acb..4c1f8d33b976 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.h
+++ b/drivers/net/ethernet/intel/ice/ice_base.h
@@ -6,7 +6,8 @@
 
 #include "ice.h"
 
-int ice_vsi_cfg_rxq(struct ice_rx_ring *ring);
+int ice_vsi_cfg_single_rxq(struct ice_vsi *vsi, u16 q_idx);
+int ice_vsi_cfg_rxqs(struct ice_vsi *vsi);
 int __ice_vsi_get_qs(struct ice_qs_cfg *qs_cfg);
 int
 ice_vsi_ctrl_one_rx_ring(struct ice_vsi *vsi, bool ena, u16 rxq_idx, bool wait);
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 711e4fb62cb7..844356beb58c 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1681,27 +1681,6 @@ static void ice_vsi_set_rss_flow_fld(struct ice_vsi *vsi)
 	}
 }
 
-/**
- * ice_vsi_cfg_frame_size - setup max frame size and Rx buffer length
- * @vsi: VSI
- */
-static void ice_vsi_cfg_frame_size(struct ice_vsi *vsi)
-{
-	if (!vsi->netdev || test_bit(ICE_FLAG_LEGACY_RX, vsi->back->flags)) {
-		vsi->max_frame = ICE_MAX_FRAME_LEGACY_RX;
-		vsi->rx_buf_len = ICE_RXBUF_1664;
-#if (PAGE_SIZE < 8192)
-	} else if (!ICE_2K_TOO_SMALL_WITH_PADDING &&
-		   (vsi->netdev->mtu <= ETH_DATA_LEN)) {
-		vsi->max_frame = ICE_RXBUF_1536 - NET_IP_ALIGN;
-		vsi->rx_buf_len = ICE_RXBUF_1536 - NET_IP_ALIGN;
-#endif
-	} else {
-		vsi->max_frame = ICE_AQ_SET_MAC_FRAME_SIZE_MAX;
-		vsi->rx_buf_len = ICE_RXBUF_3072;
-	}
-}
-
 /**
  * ice_pf_state_is_nominal - checks the PF for nominal state
  * @pf: pointer to PF to check
@@ -1808,14 +1787,6 @@ ice_write_qrxflxp_cntxt(struct ice_hw *hw, u16 pf_q, u32 rxdid, u32 prio,
 	wr32(hw, QRXFLXP_CNTXT(pf_q), regval);
 }
 
-int ice_vsi_cfg_single_rxq(struct ice_vsi *vsi, u16 q_idx)
-{
-	if (q_idx >= vsi->num_rxq)
-		return -EINVAL;
-
-	return ice_vsi_cfg_rxq(vsi->rx_rings[q_idx]);
-}
-
 int ice_vsi_cfg_single_txq(struct ice_vsi *vsi, struct ice_tx_ring **tx_rings, u16 q_idx)
 {
 	DEFINE_FLEX(struct ice_aqc_add_tx_qgrp, qg_buf, txqs, 1);
@@ -1828,33 +1799,6 @@ int ice_vsi_cfg_single_txq(struct ice_vsi *vsi, struct ice_tx_ring **tx_rings, u
 	return ice_vsi_cfg_txq(vsi, tx_rings[q_idx], qg_buf);
 }
 
-/**
- * ice_vsi_cfg_rxqs - Configure the VSI for Rx
- * @vsi: the VSI being configured
- *
- * Return 0 on success and a negative value on error
- * Configure the Rx VSI for operation.
- */
-int ice_vsi_cfg_rxqs(struct ice_vsi *vsi)
-{
-	u16 i;
-
-	if (vsi->type == ICE_VSI_VF)
-		goto setup_rings;
-
-	ice_vsi_cfg_frame_size(vsi);
-setup_rings:
-	/* set up individual rings */
-	ice_for_each_rxq(vsi, i) {
-		int err = ice_vsi_cfg_rxq(vsi->rx_rings[i]);
-
-		if (err)
-			return err;
-	}
-
-	return 0;
-}
-
 /**
  * ice_vsi_cfg_txqs - Configure the VSI for Tx
  * @vsi: the VSI being configured
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 71bd27244941..6ffe4b0603bd 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -54,12 +54,8 @@ bool ice_pf_state_is_nominal(struct ice_pf *pf);
 
 void ice_update_eth_stats(struct ice_vsi *vsi);
 
-int ice_vsi_cfg_single_rxq(struct ice_vsi *vsi, u16 q_idx);
-
 int ice_vsi_cfg_single_txq(struct ice_vsi *vsi, struct ice_tx_ring **tx_rings, u16 q_idx);
 
-int ice_vsi_cfg_rxqs(struct ice_vsi *vsi);
-
 int ice_vsi_cfg_lan_txqs(struct ice_vsi *vsi);
 
 void ice_vsi_cfg_msix(struct ice_vsi *vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 5d1ae8e4058a..4eae83d94fb4 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -249,7 +249,7 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
 		ice_tx_xsk_pool(vsi, q_idx);
 	}
 
-	err = ice_vsi_cfg_rxq(rx_ring);
+	err = ice_vsi_cfg_single_rxq(vsi, q_idx);
 	if (err)
 		return err;
 
-- 
2.34.1

