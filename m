Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB60F776130
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Aug 2023 15:36:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3F0FE411A2;
	Wed,  9 Aug 2023 13:36:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F0FE411A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691588161;
	bh=RpQcWCsnYsYi1s5KTTLDDWmFjg+0VGtfSrDvNoVH6+k=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DRav6gP5Hgv1a0upcA7VNVfGH+jeF7kYxo7eF7XOdfTVDdQDZCZN9+03W+UqQCmEG
	 gx120IbVlBtFWHLsyyUPCp2Ye2XSRVX17GMXHezMxMn4hL+YDZFCRbJaGGbbVJCyqX
	 QUpTKDzU6l3oFytBvehqMyWVW3GQtACUmowpOXfdOzQh0GuNHknR9tYa5lAyf8+0sa
	 zcA6AFObi3PaUaRW75WPwGMikS6/GNBJ59dN3VDhEVdgmTnjD4hnjSzoavlM3sOizv
	 tvPQMBBHuPLt4upAyWAVu1q2moZW+11b1JJ6TU3sUnOvcX5+BOnfTwp/O54BDhjf6x
	 WtbU2DSTerv3Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZOuDiLVD7cxW; Wed,  9 Aug 2023 13:36:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C8E5E40CBE;
	Wed,  9 Aug 2023 13:35:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C8E5E40CBE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 52B861BF97F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 13:35:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2AA3960EFF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 13:35:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2AA3960EFF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZEuVO2w7DeHT for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Aug 2023 13:35:46 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6C38460E96
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 13:35:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C38460E96
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="402086863"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="402086863"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2023 06:35:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="725401511"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="725401511"
Received: from s240.igk.intel.com (HELO DevelopmentVM.nql.local)
 ([10.102.18.202])
 by orsmga007.jf.intel.com with ESMTP; 09 Aug 2023 06:35:25 -0700
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Aug 2023 15:39:09 +0200
Message-Id: <20230809133913.2652736-4-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230809133913.2652736-1-jan.sokolowski@intel.com>
References: <20230809133913.2652736-1-jan.sokolowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691588146; x=1723124146;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k44sRD0DzLvdzcOuVX8qotrxs4xtMfmcUgGNibKbtwA=;
 b=NnTete7fVBv5LCgPRszkowitC+7WLUgmigZELkxn2MRoMAAE0nyOeu2U
 PH7p8Ka6RWpX7KkF5Utq+G7KTR53X7VD3xVVw8e+JBVmiDHCEh3a26X7t
 EdcuVvQoiirhRpILh5ugc+MGhVPjCyVbgVOEGckREBV9MJQ0c03d+F0Uq
 tX9JXMcA+ROL9JdI2jmRhqtptc4gzRh2pVwjUt74QJIDwoJaENfe1wPnt
 RC7WqnvaPQmiQHupg6sVmnNs6odizP9LMLmlRTR6Kh8XOgkH6oRMGm+Hu
 pt4YwbjX3h31JvvXxKfyt824BjnCQ0w41wMnHn1ji17NZZemYL28ZzkJG
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NnTete7f
Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/7] ice: refactor ice_lib to
 make functions static
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

As following methods are not used outside of ice_lib,
they can be made static:
ice_vsi_is_vlan_pruning_ena
ice_vsi_cfg_frame_size

Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 70 ++++++++++++------------
 drivers/net/ethernet/intel/ice/ice_lib.h |  3 -
 2 files changed, 35 insertions(+), 38 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 54aa01d2a474..d3fb2b7535e7 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1227,6 +1227,20 @@ ice_chnl_vsi_setup_q_map(struct ice_vsi *vsi, struct ice_vsi_ctx *ctxt)
 	ctxt->info.q_mapping[1] = cpu_to_le16(qcount);
 }
 
+/**
+ * ice_vsi_is_vlan_pruning_ena - check if VLAN pruning is enabled or not
+ * @vsi: VSI to check whether or not VLAN pruning is enabled.
+ *
+ * returns true if Rx VLAN pruning is enabled and false otherwise.
+ */
+static bool ice_vsi_is_vlan_pruning_ena(struct ice_vsi *vsi)
+{
+	if (!vsi)
+		return false;
+
+	return (vsi->info.sw_flags2 & ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA);
+}
+
 /**
  * ice_vsi_init - Create and initialize a VSI
  * @vsi: the VSI being configured
@@ -1684,6 +1698,27 @@ static void ice_vsi_set_rss_flow_fld(struct ice_vsi *vsi)
 			vsi_num, status);
 }
 
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
 /**
  * ice_pf_state_is_nominal - checks the PF for nominal state
  * @pf: pointer to PF to check
@@ -1758,27 +1793,6 @@ void ice_update_eth_stats(struct ice_vsi *vsi)
 	vsi->stat_offsets_loaded = true;
 }
 
-/**
- * ice_vsi_cfg_frame_size - setup max frame size and Rx buffer length
- * @vsi: VSI
- */
-void ice_vsi_cfg_frame_size(struct ice_vsi *vsi)
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
  * ice_write_qrxflxp_cntxt - write/configure QRXFLXP_CNTXT register
  * @hw: HW pointer
@@ -2185,20 +2199,6 @@ bool ice_vsi_is_rx_queue_active(struct ice_vsi *vsi)
 	return false;
 }
 
-/**
- * ice_vsi_is_vlan_pruning_ena - check if VLAN pruning is enabled or not
- * @vsi: VSI to check whether or not VLAN pruning is enabled.
- *
- * returns true if Rx VLAN pruning is enabled and false otherwise.
- */
-bool ice_vsi_is_vlan_pruning_ena(struct ice_vsi *vsi)
-{
-	if (!vsi)
-		return false;
-
-	return (vsi->info.sw_flags2 & ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA);
-}
-
 static void ice_vsi_set_tc_cfg(struct ice_vsi *vsi)
 {
 	if (!test_bit(ICE_FLAG_DCB_ENA, vsi->back->flags)) {
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index cb6599cb8be6..f24f5d1e6f9c 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -76,8 +76,6 @@ int ice_vsi_cfg_xdp_txqs(struct ice_vsi *vsi);
 
 int ice_vsi_stop_xdp_tx_rings(struct ice_vsi *vsi);
 
-bool ice_vsi_is_vlan_pruning_ena(struct ice_vsi *vsi);
-
 void ice_cfg_sw_lldp(struct ice_vsi *vsi, bool tx, bool create);
 
 int ice_set_link(struct ice_vsi *vsi, bool ena);
@@ -128,7 +126,6 @@ void ice_update_tx_ring_stats(struct ice_tx_ring *ring, u64 pkts, u64 bytes);
 
 void ice_update_rx_ring_stats(struct ice_rx_ring *ring, u64 pkts, u64 bytes);
 
-void ice_vsi_cfg_frame_size(struct ice_vsi *vsi);
 void ice_write_intrl(struct ice_q_vector *q_vector, u8 intrl);
 void ice_write_itr(struct ice_ring_container *rc, u16 itr);
 void ice_set_q_vector_intrl(struct ice_q_vector *q_vector);
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
