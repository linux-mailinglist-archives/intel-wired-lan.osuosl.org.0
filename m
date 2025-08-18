Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5E7B2B336
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Aug 2025 23:08:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0597640779;
	Mon, 18 Aug 2025 21:08:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V04XlZsOgUso; Mon, 18 Aug 2025 21:08:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F23D40770
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755551286;
	bh=Xx2WU+7BsOw6HonKbr8FAkNqoE0+GoWYuLt4WhcPekE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=K8MjtAh2z7P3uy1XsKUWLmBc5JJxVhfjba4pfRG5p7FLhYX7yl1O3osdVB5IFO4Va
	 Eco22qQ6AVhwPGOEiD4V6Puf/Cpl31UA6CirN4PVIZV0ToRj3RNrKFGH5UQVexz5d5
	 MQntpZMXMAtywc3VevgeW3sCKIw7kXlcJOyEDAeuapmYhAojrRnJxBZcwreOyQEuSY
	 vRRKKarLoICvLixPzM+bFMk1XU67ntZYsclRFVTgEpNmx0R0vsZ1WpMBeeEzMYdISx
	 15sMddCH1qjdZ0/1vQyJhQR+0miWcnZdm8btlcg1xnFfIDBW83GVDeie/bAhdZx7mx
	 g69Y4CxbszuXg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F23D40770;
	Mon, 18 Aug 2025 21:08:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 11DD5E2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 21:08:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8B1986067F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 21:08:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ofDEhQrFwLjX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Aug 2025 21:08:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AE4876063A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE4876063A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AE4876063A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 21:08:01 +0000 (UTC)
X-CSE-ConnectionGUID: Gre28PRlRR+vsborA89Ssg==
X-CSE-MsgGUID: RbwxPRd4THuFRVXxqaRmzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="57892557"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="57892557"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 14:08:01 -0700
X-CSE-ConnectionGUID: BykrtJoJR0GDiwnOHLPnow==
X-CSE-MsgGUID: UCflcxMRQreKEfM54/4jLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="167627287"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.5.147])
 by orviesa007.jf.intel.com with ESMTP; 18 Aug 2025 14:08:01 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: maciej.fijalkowski@intel.com, Paul Greenwalt <paul.greenwalt@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Mon, 18 Aug 2025 09:22:57 -0400
Message-ID: <20250818132257.21720-3-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250818132257.21720-1-paul.greenwalt@intel.com>
References: <20250818132257.21720-1-paul.greenwalt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755551282; x=1787087282;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WDaTa2WtiKrc2TqxZL64qtKNQs/9oWN+rf2GVV9GEIo=;
 b=N9ozz3a0eFh6rjP6KOoc0Rm/6rHgyh0aCAv40XlRCC0zpUG7UmEeTqz5
 L44jdHRecdTilwh1RFRBHp2s0VSCR18ZNd5BU1bM67ZJuKn8BtyIe1JbM
 XzQ9VIHj2bKUDm3/nREyjEkTSmfrleogXAb3LS++wKUUhGXRZ5yS6CMuC
 3n1WKC2V3huPH43TQ3qkBRbQklfbIIcqUrEVYtDtM8iT1Nup4qoOfeK5W
 xOBMtYB0L9a9cslukdfH+5TqtVbGAion7w+xQrB8hDX8rcKh/IhBukSa6
 Tpvm43xFeLc0AqgXF6QxCJoyvY+gssfnEy+7x1os1P6aF95EhCEtSU3w/
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=N9ozz3a0
Subject: [Intel-wired-lan] [PATCH iwl-next v7 2/2] ice: add E830 Earliest
 TxTime First Offload support
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

E830 supports Earliest TxTime First (ETF) hardware offload, which is
configured via the ETF Qdisc on a per-queue basis (see tc-etf(8)). ETF
introduces a new Tx flow mechanism that utilizes a timestamp ring
(tstamp_ring) alongside the standard Tx ring. This timestamp ring is
used to indicate when hardware will transmit a packet. Tx Time is
supported on the first 2048 Tx queues of the device, and the NVM image
limits the maximum number of Tx queues to 2048 for the device.

The allocation and initialization of the timestamp ring occur when the
feature is enabled on a specific Tx queue via tc-etf. The requested Tx
Time queue index cannot be greater than the number of Tx queues
(vsi->num_txq).

To support ETF, the following flags and bitmap are introduced:

 - ICE_F_TXTIME: Device feature flag set for E830 NICs, indicating ETF
   support.
 - txtime_txqs: PF-level bitmap set when ETF is enabled and cleared
   when disabled for a specific Tx queue. It is used by
   ice_is_txtime_ena() to check if ETF is allocated and configured on
   any Tx queue, which is checked during Tx ring allocation.
 - ICE_TX_FLAGS_TXTIME: Per Tx ring flag set when ETF is allocated and
   configured for a specific Tx queue. It determines ETF status during
   packet transmission and is checked by ice_is_txtime_ena() to verify
   if ETF is enabled on any Tx queue.

Due to a hardware issue that can result in a malicious driver detection
event, additional timestamp descriptors are required when wrapping
around the timestamp ring. Up to 64 additional timestamp descriptors
are reserved, reducing the available Tx descriptors.

To accommodate this, ICE_MAX_NUM_DESC_BY_MAC is introduced, defining:

 - E830: Maximum Tx descriptor count of 8096 (8K - 32 - 64 for timestamp
   fetch descriptors).
 - E810 and E82X: Maximum Tx descriptor count of 8160 (8K - 32).

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Co-developed-by: Alice Michael <alice.michael@intel.com>
Signed-off-by: Alice Michael <alice.michael@intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |  33 ++-
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  35 +++
 drivers/net/ethernet/intel/ice/ice_base.c     | 245 +++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_base.h     |   1 +
 drivers/net/ethernet/intel/ice/ice_common.c   |  78 ++++++
 drivers/net/ethernet/intel/ice/ice_common.h   |   6 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  14 +-
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   3 +
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |  41 +++
 drivers/net/ethernet/intel/ice/ice_lib.c      |   1 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 109 +++++++-
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 173 ++++++++++++-
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  15 ++
 drivers/net/ethernet/intel/ice/ice_txrx_lib.h |  14 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |   2 +-
 15 files changed, 722 insertions(+), 48 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index e952d67388bf..a3501eb2103e 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -84,7 +84,11 @@
 #define ICE_BAR0		0
 #define ICE_REQ_DESC_MULTIPLE	32
 #define ICE_MIN_NUM_DESC	64
-#define ICE_MAX_NUM_DESC	8160
+#define ICE_MAX_NUM_DESC_E810	8160
+#define ICE_MAX_NUM_DESC_E830	8096
+#define ICE_MAX_NUM_DESC_BY_MAC(hw) ((hw)->mac_type == ICE_MAC_E830 ? \
+				     ICE_MAX_NUM_DESC_E830 : \
+				     ICE_MAX_NUM_DESC_E810)
 #define ICE_DFLT_MIN_RX_DESC	512
 #define ICE_DFLT_NUM_TX_DESC	256
 #define ICE_DFLT_NUM_RX_DESC	2048
@@ -200,6 +204,7 @@ enum ice_feature {
 	ICE_F_SMA_CTRL,
 	ICE_F_CGU,
 	ICE_F_GNSS,
+	ICE_F_TXTIME,
 	ICE_F_GCS,
 	ICE_F_ROCE_LAG,
 	ICE_F_SRIOV_LAG,
@@ -578,6 +583,7 @@ struct ice_pf {
 	DECLARE_BITMAP(misc_thread, ICE_MISC_THREAD_NBITS);
 	unsigned long *avail_txqs;	/* bitmap to track PF Tx queue usage */
 	unsigned long *avail_rxqs;	/* bitmap to track PF Rx queue usage */
+	unsigned long *txtime_txqs;     /* bitmap to track PF Tx Time queue */
 	unsigned long serv_tmr_period;
 	unsigned long serv_tmr_prev;
 	struct timer_list serv_tmr;
@@ -751,6 +757,31 @@ static inline void ice_set_ring_xdp(struct ice_tx_ring *ring)
 	ring->flags |= ICE_TX_FLAGS_RING_XDP;
 }
 
+/**
+ * ice_is_txtime_ena - check if Tx Time is enabled on the Tx ring
+ * @ring: pointer to Tx ring
+ *
+ * Return: true if the Tx ring has Tx Time enabled, false otherwise.
+ */
+static inline bool ice_is_txtime_ena(const struct ice_tx_ring *ring)
+{
+	struct ice_vsi *vsi = ring->vsi;
+	struct ice_pf *pf = vsi->back;
+
+	return test_bit(ring->q_index,  pf->txtime_txqs);
+}
+
+/**
+ * ice_is_txtime_cfg - check if Tx Time is configured on the Tx ring
+ * @ring: pointer to Tx ring
+ *
+ * Return: true if the Tx ring is configured for Tx ring, false otherwise.
+ */
+static inline bool ice_is_txtime_cfg(const struct ice_tx_ring *ring)
+{
+	return !!(ring->flags & ICE_TX_FLAGS_TXTIME);
+}
+
 /**
  * ice_get_xp_from_qid - get ZC XSK buffer pool bound to a queue ID
  * @vsi: pointer to VSI
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index caae1780fd37..6abfd04c9d25 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -33,6 +33,10 @@ typedef struct __packed { u8 buf[ICE_TXQ_CTX_SZ]; } ice_txq_ctx_buf_t;
 
 typedef struct __packed { u8 buf[ICE_TXQ_CTX_FULL_SZ]; } ice_txq_ctx_buf_full_t;
 
+#define ICE_TXTIME_CTX_SZ		25
+
+typedef struct __packed { u8 buf[ICE_TXTIME_CTX_SZ]; } ice_txtime_ctx_buf_t;
+
 /* Queue Shutdown (direct 0x0003) */
 struct ice_aqc_q_shutdown {
 	u8 driver_unloading;
@@ -2117,6 +2121,34 @@ struct ice_aqc_add_rdma_qset_data {
 	struct ice_aqc_add_tx_rdma_qset_entry rdma_qsets[];
 };
 
+/* Set Tx Time LAN Queue (indirect 0x0C35) */
+struct ice_aqc_set_txtimeqs {
+	__le16 q_id;
+	__le16 q_amount;
+	u8 reserved[4];
+	__le32 addr_high;
+	__le32 addr_low;
+};
+
+/* This is the descriptor of each queue entry for the Set Tx Time Queue
+ * command (0x0C35). Only used within struct ice_aqc_set_txtime_qgrp.
+ */
+struct ice_aqc_set_txtimeqs_perq {
+	u8 reserved[4];
+	ice_txtime_ctx_buf_t txtime_ctx;
+	u8 reserved1[3];
+};
+
+/* The format of the command buffer for Set Tx Time Queue (0x0C35)
+ * is an array of the following structs. Please note that the length of
+ * each struct ice_aqc_set_txtime_qgrp is variable due to the variable
+ * number of queues in each group!
+ */
+struct ice_aqc_set_txtime_qgrp {
+	u8 reserved[8];
+	struct ice_aqc_set_txtimeqs_perq txtimeqs[];
+};
+
 /* Download Package (indirect 0x0C40) */
 /* Also used for Update Package (indirect 0x0C41 and 0x0C42) */
 struct ice_aqc_download_pkg {
@@ -2692,6 +2724,9 @@ enum ice_adminq_opc {
 	ice_aqc_opc_cfg_txqs				= 0x0C32,
 	ice_aqc_opc_add_rdma_qset			= 0x0C33,
 
+	/* Tx Time queue commands */
+	ice_aqc_opc_set_txtimeqs			= 0x0C35,
+
 	/* package commands */
 	ice_aqc_opc_download_pkg			= 0x0C40,
 	ice_aqc_opc_upload_section			= 0x0C41,
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index dc4beac04086..2d35a278c555 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -242,7 +242,8 @@ static void ice_cfg_itr_gran(struct ice_hw *hw)
  * @ring: ring to get the absolute queue index
  * @tc: traffic class number
  */
-static u16 ice_calc_txq_handle(struct ice_vsi *vsi, struct ice_tx_ring *ring, u8 tc)
+static u16
+ice_calc_txq_handle(const struct ice_vsi *vsi, struct ice_tx_ring *ring, u8 tc)
 {
 	WARN_ONCE(ice_ring_is_xdp(ring) && tc, "XDP ring can't belong to TC other than 0\n");
 
@@ -278,30 +279,20 @@ static void ice_cfg_xps_tx_ring(struct ice_tx_ring *ring)
 }
 
 /**
- * ice_setup_tx_ctx - setup a struct ice_tlan_ctx instance
- * @ring: The Tx ring to configure
- * @tlan_ctx: Pointer to the Tx LAN queue context structure to be initialized
- * @pf_q: queue index in the PF space
+ * ice_set_txq_ctx_vmvf - set queue context VM/VF type and number by VSI type
+ * @ring: the Tx ring to configure
+ * @vmvf_type: VM/VF type
+ * @vmvf_num: VM/VF number
  *
- * Configure the Tx descriptor ring in TLAN context.
+ * Return: 0 on success and a negative value on error.
  */
-static void
-ice_setup_tx_ctx(struct ice_tx_ring *ring, struct ice_tlan_ctx *tlan_ctx, u16 pf_q)
+static int
+ice_set_txq_ctx_vmvf(struct ice_tx_ring *ring, u8 *vmvf_type, u16 *vmvf_num)
 {
 	struct ice_vsi *vsi = ring->vsi;
-	struct ice_hw *hw = &vsi->back->hw;
-
-	tlan_ctx->base = ring->dma >> ICE_TLAN_CTX_BASE_S;
-
-	tlan_ctx->port_num = vsi->port_info->lport;
-
-	/* Transmit Queue Length */
-	tlan_ctx->qlen = ring->count;
-
-	ice_set_cgd_num(tlan_ctx, ring->dcb_tc);
+	struct ice_hw *hw;
 
-	/* PF number */
-	tlan_ctx->pf_num = hw->pf_id;
+	hw = &vsi->back->hw;
 
 	/* queue belongs to a specific VSI type
 	 * VF / VM index should be programmed per vmvf_type setting:
@@ -314,21 +305,60 @@ ice_setup_tx_ctx(struct ice_tx_ring *ring, struct ice_tlan_ctx *tlan_ctx, u16 pf
 	case ICE_VSI_CTRL:
 	case ICE_VSI_PF:
 		if (ring->ch)
-			tlan_ctx->vmvf_type = ICE_TLAN_CTX_VMVF_TYPE_VMQ;
+			*vmvf_type = ICE_TLAN_CTX_VMVF_TYPE_VMQ;
 		else
-			tlan_ctx->vmvf_type = ICE_TLAN_CTX_VMVF_TYPE_PF;
+			*vmvf_type = ICE_TLAN_CTX_VMVF_TYPE_PF;
 		break;
 	case ICE_VSI_VF:
 		/* Firmware expects vmvf_num to be absolute VF ID */
-		tlan_ctx->vmvf_num = hw->func_caps.vf_base_id + vsi->vf->vf_id;
-		tlan_ctx->vmvf_type = ICE_TLAN_CTX_VMVF_TYPE_VF;
+		*vmvf_num = hw->func_caps.vf_base_id + vsi->vf->vf_id;
+		*vmvf_type = ICE_TLAN_CTX_VMVF_TYPE_VF;
 		break;
 	case ICE_VSI_SF:
-		tlan_ctx->vmvf_type = ICE_TLAN_CTX_VMVF_TYPE_VMQ;
+		*vmvf_type = ICE_TLAN_CTX_VMVF_TYPE_VMQ;
 		break;
 	default:
-		return;
+		dev_info(ice_pf_to_dev(vsi->back),
+			 "Unable to set VMVF type for VSI type %d\n",
+			 vsi->type);
+		return -EINVAL;
 	}
+	return 0;
+}
+
+/**
+ * ice_setup_tx_ctx - setup a struct ice_tlan_ctx instance
+ * @ring: the Tx ring to configure
+ * @tlan_ctx: pointer to the Tx LAN queue context structure to be initialized
+ * @pf_q: queue index in the PF space
+ *
+ * Configure the Tx descriptor ring in TLAN context.
+ *
+ * Return: 0 on success and a negative value on error.
+ */
+static int
+ice_setup_tx_ctx(struct ice_tx_ring *ring, struct ice_tlan_ctx *tlan_ctx, u16 pf_q)
+{
+	struct ice_vsi *vsi = ring->vsi;
+	struct ice_hw *hw;
+	int err;
+
+	hw = &vsi->back->hw;
+	tlan_ctx->base = ring->dma >> ICE_TLAN_CTX_BASE_S;
+	tlan_ctx->port_num = vsi->port_info->lport;
+
+	/* Transmit Queue Length */
+	tlan_ctx->qlen = ring->count;
+
+	ice_set_cgd_num(tlan_ctx, ring->dcb_tc);
+
+	/* PF number */
+	tlan_ctx->pf_num = hw->pf_id;
+
+	err = ice_set_txq_ctx_vmvf(ring, &tlan_ctx->vmvf_type,
+				   &tlan_ctx->vmvf_num);
+	if (err)
+		return err;
 
 	/* make sure the context is associated with the right VSI */
 	if (ring->ch)
@@ -355,6 +385,80 @@ ice_setup_tx_ctx(struct ice_tx_ring *ring, struct ice_tlan_ctx *tlan_ctx, u16 pf
 	 * 1: Legacy Host Interface
 	 */
 	tlan_ctx->legacy_int = ICE_TX_LEGACY;
+
+	return 0;
+}
+
+/**
+ * ice_setup_txtime_ctx - setup a struct ice_txtime_ctx instance
+ * @ring: the tstamp ring to configure
+ * @txtime_ctx: pointer to the Tx time queue context structure to be initialized
+ *
+ * Return: 0 on success and a negative value on error.
+ */
+static int
+ice_setup_txtime_ctx(const struct ice_tstamp_ring *ring,
+		     struct ice_txtime_ctx *txtime_ctx)
+{
+	struct ice_tx_ring *tx_ring = ring->tx_ring;
+	struct ice_vsi *vsi = tx_ring->vsi;
+	struct ice_hw *hw = &vsi->back->hw;
+	int err;
+
+	txtime_ctx->base = ring->dma >> ICE_TXTIME_CTX_BASE_S;
+
+	/* Tx time Queue Length */
+	txtime_ctx->qlen = ring->count;
+	txtime_ctx->txtime_ena_q = 1;
+
+	/* PF number */
+	txtime_ctx->pf_num = hw->pf_id;
+
+	err = ice_set_txq_ctx_vmvf(tx_ring, &txtime_ctx->vmvf_type,
+				   &txtime_ctx->vmvf_num);
+	if (err)
+		return err;
+
+	/* make sure the context is associated with the right VSI */
+	if (tx_ring->ch)
+		txtime_ctx->src_vsi = tx_ring->ch->vsi_num;
+	else
+		txtime_ctx->src_vsi = ice_get_hw_vsi_num(hw, vsi->idx);
+
+	txtime_ctx->ts_res = ICE_TXTIME_CTX_RESOLUTION_128NS;
+	txtime_ctx->drbell_mode_32 = ICE_TXTIME_CTX_DRBELL_MODE_32;
+	txtime_ctx->ts_fetch_prof_id = ICE_TXTIME_CTX_FETCH_PROF_ID_0;
+
+	return 0;
+}
+
+/**
+ * ice_calc_ts_ring_count - calculate the number of Tx time stamp descriptors
+ * @tx_ring: Tx ring to calculate the count for
+ *
+ * Return: the number of Tx time stamp descriptors.
+ */
+u16 ice_calc_ts_ring_count(struct ice_tx_ring *tx_ring)
+{
+	u16 prof = ICE_TXTIME_CTX_FETCH_PROF_ID_0;
+	struct ice_vsi *vsi = tx_ring->vsi;
+	struct ice_hw *hw = &vsi->back->hw;
+	u16 max_fetch_desc = 0, fetch, i;
+	u32 reg;
+
+	for (i = 0; i < ICE_TXTIME_FETCH_PROFILE_CNT; i++) {
+		reg = rd32(hw, E830_GLTXTIME_FETCH_PROFILE(prof, 0));
+		fetch = FIELD_GET(E830_GLTXTIME_FETCH_PROFILE_FETCH_TS_DESC_M,
+				  reg);
+		max_fetch_desc = max(fetch, max_fetch_desc);
+	}
+
+	if (!max_fetch_desc)
+		max_fetch_desc = ICE_TXTIME_FETCH_TS_DESC_DFLT;
+
+	max_fetch_desc = ALIGN(max_fetch_desc, ICE_REQ_DESC_MULTIPLE);
+
+	return tx_ring->count + max_fetch_desc;
 }
 
 /**
@@ -881,14 +985,50 @@ void ice_vsi_free_q_vectors(struct ice_vsi *vsi)
 	vsi->num_q_vectors = 0;
 }
 
+/**
+ * ice_cfg_tstamp - Configure Tx time stamp queue
+ * @tx_ring: Tx ring to be configured with timestamping
+ *
+ * Return: 0 on success and a negative value on error.
+ */
+static int
+ice_cfg_tstamp(struct ice_tx_ring *tx_ring)
+{
+	DEFINE_RAW_FLEX(struct ice_aqc_set_txtime_qgrp, txtime_qg_buf,
+			txtimeqs, 1);
+	u8 txtime_buf_len = struct_size(txtime_qg_buf, txtimeqs, 1);
+	struct ice_tstamp_ring *tstamp_ring = tx_ring->tstamp_ring;
+	struct ice_txtime_ctx txtime_ctx = {};
+	struct ice_vsi *vsi = tx_ring->vsi;
+	struct ice_pf *pf = vsi->back;
+	struct ice_hw *hw = &pf->hw;
+	u16 pf_q = tx_ring->reg_idx;
+	int err;
+
+	err = ice_setup_txtime_ctx(tstamp_ring, &txtime_ctx);
+	if (err) {
+		dev_err(ice_pf_to_dev(pf), "Failed to setup Tx time queue context for queue %d, error: %d\n",
+			pf_q, err);
+		return err;
+	}
+	ice_pack_txtime_ctx(&txtime_ctx,
+			    &txtime_qg_buf->txtimeqs[0].txtime_ctx);
+
+	tstamp_ring->tail = hw->hw_addr + E830_GLQTX_TXTIME_DBELL_LSB(pf_q);
+	return ice_aq_set_txtimeq(hw, pf_q, 1, txtime_qg_buf,
+				  txtime_buf_len, NULL);
+}
+
 /**
  * ice_vsi_cfg_txq - Configure single Tx queue
  * @vsi: the VSI that queue belongs to
  * @ring: Tx ring to be configured
  * @qg_buf: queue group buffer
+ *
+ * Return: 0 on success and a negative value on error.
  */
 static int
-ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_tx_ring *ring,
+ice_vsi_cfg_txq(const struct ice_vsi *vsi, struct ice_tx_ring *ring,
 		struct ice_aqc_add_tx_qgrp *qg_buf)
 {
 	u8 buf_len = struct_size(qg_buf, txqs, 1);
@@ -897,15 +1037,20 @@ ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_tx_ring *ring,
 	struct ice_channel *ch = ring->ch;
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
+	u32 pf_q, vsi_idx;
 	int status;
-	u16 pf_q;
 	u8 tc;
 
 	/* Configure XPS */
 	ice_cfg_xps_tx_ring(ring);
 
 	pf_q = ring->reg_idx;
-	ice_setup_tx_ctx(ring, &tlan_ctx, pf_q);
+	status = ice_setup_tx_ctx(ring, &tlan_ctx, pf_q);
+	if (status) {
+		dev_err(ice_pf_to_dev(pf), "Failed to setup Tx context for queue %d, error: %d\n",
+			pf_q, status);
+		return status;
+	}
 	/* copy context contents into the qg_buf */
 	qg_buf->txqs[0].txq_id = cpu_to_le16(pf_q);
 	ice_pack_txq_ctx(&tlan_ctx, &qg_buf->txqs[0].txq_ctx);
@@ -925,14 +1070,15 @@ ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_tx_ring *ring,
 	 */
 	ring->q_handle = ice_calc_txq_handle(vsi, ring, tc);
 
-	if (ch)
-		status = ice_ena_vsi_txq(vsi->port_info, ch->ch_vsi->idx, 0,
-					 ring->q_handle, 1, qg_buf, buf_len,
-					 NULL);
-	else
-		status = ice_ena_vsi_txq(vsi->port_info, vsi->idx, tc,
-					 ring->q_handle, 1, qg_buf, buf_len,
-					 NULL);
+	if (ch) {
+		tc = 0;
+		vsi_idx = ch->ch_vsi->idx;
+	} else {
+		vsi_idx = vsi->idx;
+	}
+
+	status = ice_ena_vsi_txq(vsi->port_info, vsi_idx, tc, ring->q_handle,
+				 1, qg_buf, buf_len, NULL);
 	if (status) {
 		dev_err(ice_pf_to_dev(pf), "Failed to set LAN Tx queue context, error: %d\n",
 			status);
@@ -947,7 +1093,32 @@ ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_tx_ring *ring,
 	if (pf_q == le16_to_cpu(txq->txq_id))
 		ring->txq_teid = le32_to_cpu(txq->q_teid);
 
+	if (ice_is_txtime_ena(ring)) {
+		status = ice_alloc_setup_tstamp_ring(ring);
+		if (status) {
+			dev_err(ice_pf_to_dev(pf),
+				"Failed to allocate Tx timestamp ring, error: %d\n",
+				status);
+			goto err_setup_tstamp;
+		}
+
+		status = ice_cfg_tstamp(ring);
+		if (status) {
+			dev_err(ice_pf_to_dev(pf), "Failed to set Tx Time queue context, error: %d\n",
+				status);
+			goto err_cfg_tstamp;
+		}
+	}
 	return 0;
+
+err_cfg_tstamp:
+	ice_free_tx_tstamp_ring(ring);
+err_setup_tstamp:
+	ice_dis_vsi_txq(vsi->port_info, vsi_idx, tc, 1, &ring->q_handle,
+			&ring->reg_idx, &ring->txq_teid, ICE_NO_RESET,
+			tlan_ctx.vmvf_num, NULL);
+
+	return status;
 }
 
 int ice_vsi_cfg_single_txq(struct ice_vsi *vsi, struct ice_tx_ring **tx_rings,
diff --git a/drivers/net/ethernet/intel/ice/ice_base.h b/drivers/net/ethernet/intel/ice/ice_base.h
index 632b5be61a98..d28294247599 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.h
+++ b/drivers/net/ethernet/intel/ice/ice_base.h
@@ -34,4 +34,5 @@ ice_fill_txq_meta(const struct ice_vsi *vsi, struct ice_tx_ring *ring,
 		  struct ice_txq_meta *txq_meta);
 int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx);
 int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx);
+u16 ice_calc_ts_ring_count(struct ice_tx_ring *tx_ring);
 #endif /* _ICE_BASE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 95e40779b176..69e3ea8a1ff1 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1693,6 +1693,44 @@ int ice_write_txq_ctx(struct ice_hw *hw, struct ice_tlan_ctx *tlan_ctx,
 	return 0;
 }
 
+/* Tx time Queue Context */
+static const struct packed_field_u8 ice_txtime_ctx_fields[] = {
+				    /* Field			Width	LSB */
+	ICE_CTX_STORE(ice_txtime_ctx, base,			57,	0),
+	ICE_CTX_STORE(ice_txtime_ctx, pf_num,			3,	57),
+	ICE_CTX_STORE(ice_txtime_ctx, vmvf_num,			10,	60),
+	ICE_CTX_STORE(ice_txtime_ctx, vmvf_type,		2,	70),
+	ICE_CTX_STORE(ice_txtime_ctx, src_vsi,			10,	72),
+	ICE_CTX_STORE(ice_txtime_ctx, cpuid,			8,	82),
+	ICE_CTX_STORE(ice_txtime_ctx, tphrd_desc,		1,	90),
+	ICE_CTX_STORE(ice_txtime_ctx, qlen,			13,	91),
+	ICE_CTX_STORE(ice_txtime_ctx, timer_num,		1,	104),
+	ICE_CTX_STORE(ice_txtime_ctx, txtime_ena_q,		1,	105),
+	ICE_CTX_STORE(ice_txtime_ctx, drbell_mode_32,		1,	106),
+	ICE_CTX_STORE(ice_txtime_ctx, ts_res,			4,	107),
+	ICE_CTX_STORE(ice_txtime_ctx, ts_round_type,		2,	111),
+	ICE_CTX_STORE(ice_txtime_ctx, ts_pacing_slot,		3,	113),
+	ICE_CTX_STORE(ice_txtime_ctx, merging_ena,		1,	116),
+	ICE_CTX_STORE(ice_txtime_ctx, ts_fetch_prof_id,		4,	117),
+	ICE_CTX_STORE(ice_txtime_ctx, ts_fetch_cache_line_aln_thld, 4,	121),
+	ICE_CTX_STORE(ice_txtime_ctx, tx_pipe_delay_mode,	1,	125),
+};
+
+/**
+ * ice_pack_txtime_ctx - pack Tx time queue context into a HW buffer
+ * @ctx: the Tx time queue context to pack
+ * @buf: the HW buffer to pack into
+ *
+ * Pack the Tx time queue context from the CPU-friendly unpacked buffer into
+ * its bit-packed HW layout.
+ */
+void ice_pack_txtime_ctx(const struct ice_txtime_ctx *ctx,
+			 ice_txtime_ctx_buf_t *buf)
+{
+	pack_fields(buf, sizeof(*buf), ctx, ice_txtime_ctx_fields,
+		    QUIRK_LITTLE_ENDIAN | QUIRK_LSW32_IS_FIRST);
+}
+
 /* Sideband Queue command wrappers */
 
 /**
@@ -4816,6 +4854,46 @@ ice_aq_add_rdma_qsets(struct ice_hw *hw, u8 num_qset_grps,
 	return ice_aq_send_cmd(hw, &desc, qset_list, buf_size, cd);
 }
 
+/**
+ * ice_aq_set_txtimeq - set Tx time queues
+ * @hw: pointer to the hardware structure
+ * @txtimeq: first Tx time queue id to configure
+ * @q_count: number of queues to configure
+ * @txtime_qg: queue group to be set
+ * @buf_size: size of buffer for indirect command
+ * @cd: pointer to command details structure or NULL
+ *
+ * Set Tx Time queue (0x0C35)
+ * Return: 0 on success or negative value on failure.
+ */
+int
+ice_aq_set_txtimeq(struct ice_hw *hw, u16 txtimeq, u8 q_count,
+		   struct ice_aqc_set_txtime_qgrp *txtime_qg, u16 buf_size,
+		   struct ice_sq_cd *cd)
+{
+	struct ice_aqc_set_txtimeqs *cmd;
+	struct libie_aq_desc desc;
+	u16 size;
+
+	if (!txtime_qg || txtimeq > ICE_TXTIME_MAX_QUEUE ||
+	    q_count < 1 || q_count > ICE_SET_TXTIME_MAX_Q_AMOUNT)
+		return -EINVAL;
+
+	size = struct_size(txtime_qg, txtimeqs, q_count);
+	if (buf_size != size)
+		return -EINVAL;
+
+	cmd = libie_aq_raw(&desc);
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_txtimeqs);
+
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
+
+	cmd->q_id = cpu_to_le16(txtimeq);
+	cmd->q_amount = cpu_to_le16(q_count);
+	return ice_aq_send_cmd(hw, &desc, txtime_qg, buf_size, cd);
+}
+
 /* End of FW Admin Queue command wrappers */
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index dba15ad315a6..e700ac0dc347 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -275,6 +275,12 @@ int ice_replay_vsi(struct ice_hw *hw, u16 vsi_handle);
 void ice_replay_post(struct ice_hw *hw);
 struct ice_q_ctx *
 ice_get_lan_q_ctx(struct ice_hw *hw, u16 vsi_handle, u8 tc, u16 q_handle);
+int
+ice_aq_set_txtimeq(struct ice_hw *hw, u16 txtimeq, u8 q_count,
+		   struct ice_aqc_set_txtime_qgrp *txtime_qg,
+		   u16 buf_size, struct ice_sq_cd *cd);
+void ice_pack_txtime_ctx(const struct ice_txtime_ctx *ctx,
+			 ice_txtime_ctx_buf_t *buf);
 int ice_sbq_rw_reg(struct ice_hw *hw, struct ice_sbq_msg_input *in, u16 flag);
 int ice_aq_get_cgu_input_pin_measure(struct ice_hw *hw, u8 dpll_idx,
 				     struct ice_cgu_input_measure *meas,
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 55e0f2c6af9e..348acd46a0ef 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3147,9 +3147,11 @@ ice_get_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
+	struct ice_hw *hw;
 
-	ring->rx_max_pending = ICE_MAX_NUM_DESC;
-	ring->tx_max_pending = ICE_MAX_NUM_DESC;
+	hw = &vsi->back->hw;
+	ring->rx_max_pending = ICE_MAX_NUM_DESC_BY_MAC(hw);
+	ring->tx_max_pending = ICE_MAX_NUM_DESC_BY_MAC(hw);
 	if (vsi->tx_rings && vsi->rx_rings) {
 		ring->rx_pending = vsi->rx_rings[0]->count;
 		ring->tx_pending = vsi->tx_rings[0]->count;
@@ -3177,15 +3179,16 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
 	int i, timeout = 50, err = 0;
+	struct ice_hw *hw = &pf->hw;
 	u16 new_rx_cnt, new_tx_cnt;
 
-	if (ring->tx_pending > ICE_MAX_NUM_DESC ||
+	if (ring->tx_pending > ICE_MAX_NUM_DESC_BY_MAC(hw) ||
 	    ring->tx_pending < ICE_MIN_NUM_DESC ||
-	    ring->rx_pending > ICE_MAX_NUM_DESC ||
+	    ring->rx_pending > ICE_MAX_NUM_DESC_BY_MAC(hw) ||
 	    ring->rx_pending < ICE_MIN_NUM_DESC) {
 		netdev_err(netdev, "Descriptors requested (Tx: %d / Rx: %d) out of range [%d-%d] (increment %d)\n",
 			   ring->tx_pending, ring->rx_pending,
-			   ICE_MIN_NUM_DESC, ICE_MAX_NUM_DESC,
+			   ICE_MIN_NUM_DESC, ICE_MAX_NUM_DESC_BY_MAC(hw),
 			   ICE_REQ_DESC_MULTIPLE);
 		return -EINVAL;
 	}
@@ -3258,6 +3261,7 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
 		tx_rings[i].count = new_tx_cnt;
 		tx_rings[i].desc = NULL;
 		tx_rings[i].tx_buf = NULL;
+		tx_rings[i].tstamp_ring = NULL;
 		tx_rings[i].tx_tstamps = &pf->ptp.port.tx;
 		err = ice_setup_tx_ring(&tx_rings[i]);
 		if (err) {
diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index dd520aa4d1d6..082ad33c53dc 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -19,6 +19,7 @@
 #define QTX_COMM_HEAD_MAX_INDEX			16383
 #define QTX_COMM_HEAD_HEAD_S			0
 #define QTX_COMM_HEAD_HEAD_M			ICE_M(0x1FFF, 0)
+#define E830_GLQTX_TXTIME_DBELL_LSB(_DBQM)	(0x002E0000 + ((_DBQM) * 8))
 #define PF_FW_ARQBAH				0x00080180
 #define PF_FW_ARQBAL				0x00080080
 #define PF_FW_ARQH				0x00080380
@@ -571,6 +572,8 @@
 #define E830_PFPTM_SEM_BUSY_M			BIT(0)
 #define VFINT_DYN_CTLN(_i)			(0x00003800 + ((_i) * 4))
 #define VFINT_DYN_CTLN_CLEARPBA_M		BIT(1)
+#define E830_GLTXTIME_FETCH_PROFILE(_i, _j)     (0x002D3500 + ((_i) * 4 + (_j) * 64))
+#define E830_GLTXTIME_FETCH_PROFILE_FETCH_TS_DESC_M ICE_M(0x1FF, 0)
 #define E830_MBX_PF_IN_FLIGHT_VF_MSGS_THRESH	0x00234000
 #define E830_MBX_VF_DEC_TRIG(_VF)		(0x00233800 + (_VF) * 4)
 #define E830_MBX_VF_IN_FLIGHT_MSGS_AT_PF_CNT(_VF)	(0x00233000 + (_VF) * 4)
diff --git a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
index 77ba26538b07..10c312d49e05 100644
--- a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
+++ b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
@@ -569,4 +569,45 @@ struct ice_tlan_ctx {
 	u8 pkt_shaper_prof_idx;
 };
 
+#define ICE_TXTIME_TX_DESC_IDX_M	GENMASK(12, 0)
+#define ICE_TXTIME_STAMP_M		GENMASK(31, 13)
+
+/* Tx time stamp descriptor */
+struct ice_ts_desc {
+	__le32 tx_desc_idx_tstamp;
+};
+
+#define ICE_TS_DESC(R, i) (&(((struct ice_ts_desc *)((R)->desc))[i]))
+
+#define ICE_TXTIME_MAX_QUEUE		2047
+#define ICE_SET_TXTIME_MAX_Q_AMOUNT	127
+#define ICE_TXTIME_FETCH_TS_DESC_DFLT	8
+#define ICE_TXTIME_FETCH_PROFILE_CNT	16
+
+/* Tx Time queue context data */
+struct ice_txtime_ctx {
+#define ICE_TXTIME_CTX_BASE_S		7
+	u64 base;			/* base is defined in 128-byte units */
+	u8 pf_num;
+	u16 vmvf_num;
+	u8 vmvf_type;
+	u16 src_vsi;
+	u8 cpuid;
+	u8 tphrd_desc;
+	u16 qlen;
+	u8 timer_num;
+	u8 txtime_ena_q;
+	u8 drbell_mode_32;
+#define ICE_TXTIME_CTX_DRBELL_MODE_32	1
+	u8 ts_res;
+#define ICE_TXTIME_CTX_RESOLUTION_128NS 7
+	u8 ts_round_type;
+	u8 ts_pacing_slot;
+#define ICE_TXTIME_CTX_FETCH_PROF_ID_0 0
+	u8 merging_ena;
+	u8 ts_fetch_prof_id;
+	u8 ts_fetch_cache_line_aln_thld;
+	u8 tx_pipe_delay_mode;
+};
+
 #endif /* _ICE_LAN_TX_RX_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index a439b5a61a56..4479c824561e 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3950,6 +3950,7 @@ void ice_init_feature_support(struct ice_pf *pf)
 	if (pf->hw.mac_type == ICE_MAC_E830) {
 		ice_set_feature_support(pf, ICE_F_MBX_LIMIT);
 		ice_set_feature_support(pf, ICE_F_GCS);
+		ice_set_feature_support(pf, ICE_F_TXTIME);
 	}
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a1528edeae24..4b8ccaa7c1ef 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3991,6 +3991,11 @@ static void ice_deinit_pf(struct ice_pf *pf)
 		pf->avail_rxqs = NULL;
 	}
 
+	if (pf->txtime_txqs) {
+		bitmap_free(pf->txtime_txqs);
+		pf->txtime_txqs = NULL;
+	}
+
 	if (pf->ptp.clock)
 		ptp_clock_unregister(pf->ptp.clock);
 
@@ -4084,6 +4089,15 @@ static int ice_init_pf(struct ice_pf *pf)
 		return -ENOMEM;
 	}
 
+	pf->txtime_txqs = bitmap_zalloc(pf->max_pf_txqs, GFP_KERNEL);
+	if (!pf->txtime_txqs) {
+		bitmap_free(pf->avail_txqs);
+		pf->avail_txqs = NULL;
+		bitmap_free(pf->avail_rxqs);
+		pf->avail_rxqs = NULL;
+		return -ENOMEM;
+	}
+
 	mutex_init(&pf->vfs.table_lock);
 	hash_init(pf->vfs.table);
 	if (ice_is_feature_supported(pf, ICE_F_MBX_LIMIT))
@@ -7515,7 +7529,8 @@ int ice_vsi_open(struct ice_vsi *vsi)
 	if (err)
 		goto err_setup_rx;
 
-	ice_vsi_cfg_netdev_tc(vsi, vsi->tc_cfg.ena_tc);
+	if (bitmap_empty(pf->txtime_txqs, pf->max_pf_txqs))
+		ice_vsi_cfg_netdev_tc(vsi, vsi->tc_cfg.ena_tc);
 
 	if (vsi->type == ICE_VSI_PF || vsi->type == ICE_VSI_SF) {
 		/* Notify the stack of the actual queue counts. */
@@ -9304,6 +9319,96 @@ static int ice_setup_tc_mqprio_qdisc(struct net_device *netdev, void *type_data)
 	return ret;
 }
 
+/**
+ * ice_cfg_txtime - configure Tx Time for the Tx ring
+ * @tx_ring: pointer to the Tx ring structure
+ *
+ * Return: 0 on success, negative value on failure.
+ */
+static int ice_cfg_txtime(struct ice_tx_ring *tx_ring)
+{
+	int err, timeout = 50;
+	struct ice_vsi *vsi;
+	struct device *dev;
+	struct ice_pf *pf;
+	u32 queue;
+
+	if (!tx_ring)
+		return -EINVAL;
+
+	vsi = tx_ring->vsi;
+	pf = vsi->back;
+	while (test_and_set_bit(ICE_CFG_BUSY, pf->state)) {
+		timeout--;
+		if (!timeout)
+			return -EBUSY;
+		usleep_range(1000, 2000);
+	}
+
+	queue = tx_ring->q_index;
+	dev = ice_pf_to_dev(pf);
+
+	/* Ignore return value, and always attempt to enable queue. */
+	ice_qp_dis(vsi, queue);
+
+	err = ice_qp_ena(vsi, queue);
+	if (err)
+		dev_err(dev, "Failed to enable Tx queue %d for TxTime configuration\n",
+			queue);
+
+	clear_bit(ICE_CFG_BUSY, pf->state);
+	return err;
+}
+
+/**
+ * ice_offload_txtime - set earliest TxTime first
+ * @netdev: network interface device structure
+ * @qopt_off: etf queue option offload from the skb to set
+ *
+ * Return: 0 on success, negative value on failure.
+ */
+static int ice_offload_txtime(struct net_device *netdev,
+			      void *qopt_off)
+{
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_pf *pf = np->vsi->back;
+	struct tc_etf_qopt_offload *qopt;
+	struct ice_vsi *vsi = np->vsi;
+	struct ice_tx_ring *tx_ring;
+	int ret = 0;
+
+	if (!ice_is_feature_supported(pf, ICE_F_TXTIME))
+		return -EOPNOTSUPP;
+
+	qopt = qopt_off;
+	if (!qopt_off || qopt->queue < 0 || qopt->queue >= vsi->num_txq)
+		return -EINVAL;
+
+	if (qopt->enable)
+		set_bit(qopt->queue,  pf->txtime_txqs);
+	else
+		clear_bit(qopt->queue, pf->txtime_txqs);
+
+	if (netif_running(vsi->netdev)) {
+		tx_ring = vsi->tx_rings[qopt->queue];
+		ret = ice_cfg_txtime(tx_ring);
+		if (ret)
+			goto err;
+	}
+
+	netdev_info(netdev, "%s TxTime on queue: %i\n",
+		    str_enable_disable(qopt->enable), qopt->queue);
+	return 0;
+
+err:
+	netdev_err(netdev, "Failed to %s TxTime on queue: %i\n",
+		   str_enable_disable(qopt->enable), qopt->queue);
+
+	if (qopt->enable)
+		clear_bit(qopt->queue,  pf->txtime_txqs);
+	return ret;
+}
+
 static LIST_HEAD(ice_block_cb_list);
 
 static int
@@ -9367,6 +9472,8 @@ ice_setup_tc(struct net_device *netdev, enum tc_setup_type type,
 			mutex_unlock(&pf->adev_mutex);
 		}
 		return err;
+	case TC_SETUP_QDISC_ETF:
+		return ice_offload_txtime(netdev, type_data);
 	default:
 		return -EOPNOTSUPP;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 93907ab2eac7..258a164a1bbb 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -143,6 +143,56 @@ static struct netdev_queue *txring_txq(const struct ice_tx_ring *ring)
 	return netdev_get_tx_queue(ring->netdev, ring->q_index);
 }
 
+/**
+ * ice_clean_tstamp_ring - clean time stamp ring
+ * @tx_ring: Tx ring to clean the Time Stamp ring for
+ */
+static void ice_clean_tstamp_ring(struct ice_tx_ring *tx_ring)
+{
+	struct ice_tstamp_ring *tstamp_ring = tx_ring->tstamp_ring;
+	u32 size;
+
+	if (!tstamp_ring->desc)
+		return;
+
+	size = ALIGN(tstamp_ring->count * sizeof(struct ice_ts_desc),
+		     PAGE_SIZE);
+	memset(tstamp_ring->desc, 0, size);
+	tstamp_ring->next_to_use = 0;
+}
+
+/**
+ * ice_free_tstamp_ring - free time stamp resources per queue
+ * @tx_ring: Tx ring to free the Time Stamp ring for
+ */
+void ice_free_tstamp_ring(struct ice_tx_ring *tx_ring)
+{
+	struct ice_tstamp_ring *tstamp_ring = tx_ring->tstamp_ring;
+	u32 size;
+
+	if (!tstamp_ring->desc)
+		return;
+
+	ice_clean_tstamp_ring(tx_ring);
+	size = ALIGN(tstamp_ring->count * sizeof(struct ice_ts_desc),
+		     PAGE_SIZE);
+	dmam_free_coherent(tx_ring->dev, size, tstamp_ring->desc,
+			   tstamp_ring->dma);
+	tstamp_ring->desc = NULL;
+}
+
+/**
+ * ice_free_tx_tstamp_ring - free time stamp resources per Tx ring
+ * @tx_ring: Tx ring to free the Time Stamp ring for
+ */
+void ice_free_tx_tstamp_ring(struct ice_tx_ring *tx_ring)
+{
+	ice_free_tstamp_ring(tx_ring);
+	kfree_rcu(tx_ring->tstamp_ring, rcu);
+	tx_ring->tstamp_ring = NULL;
+	tx_ring->flags &= ~ICE_TX_FLAGS_TXTIME;
+}
+
 /**
  * ice_clean_tx_ring - Free any empty Tx buffers
  * @tx_ring: ring to be cleaned
@@ -181,6 +231,9 @@ void ice_clean_tx_ring(struct ice_tx_ring *tx_ring)
 
 	/* cleanup Tx queue statistics */
 	netdev_tx_reset_queue(txring_txq(tx_ring));
+
+	if (ice_is_txtime_cfg(tx_ring))
+		ice_free_tx_tstamp_ring(tx_ring);
 }
 
 /**
@@ -331,6 +384,84 @@ static bool ice_clean_tx_irq(struct ice_tx_ring *tx_ring, int napi_budget)
 	return !!budget;
 }
 
+/**
+ * ice_alloc_tstamp_ring - allocate the Time Stamp ring
+ * @tx_ring: Tx ring to allocate the Time Stamp ring for
+ *
+ * Return: 0 on success, negative on error
+ */
+static int ice_alloc_tstamp_ring(struct ice_tx_ring *tx_ring)
+{
+	struct ice_tstamp_ring *tstamp_ring;
+
+	/* allocate with kzalloc(), free with kfree_rcu() */
+	tstamp_ring = kzalloc(sizeof(*tstamp_ring), GFP_KERNEL);
+	if (!tstamp_ring)
+		return -ENOMEM;
+
+	tstamp_ring->tx_ring = tx_ring;
+	tx_ring->tstamp_ring = tstamp_ring;
+	tstamp_ring->desc = NULL;
+	tstamp_ring->count = ice_calc_ts_ring_count(tx_ring);
+	tx_ring->flags |= ICE_TX_FLAGS_TXTIME;
+	return 0;
+}
+
+/**
+ * ice_setup_tstamp_ring - allocate the Time Stamp ring
+ * @tx_ring: Tx ring to set up the Time Stamp ring for
+ *
+ * Return: 0 on success, negative on error
+ */
+static int ice_setup_tstamp_ring(struct ice_tx_ring *tx_ring)
+{
+	struct ice_tstamp_ring *tstamp_ring = tx_ring->tstamp_ring;
+	struct device *dev = tx_ring->dev;
+	u32 size;
+
+	/* round up to nearest page */
+	size = ALIGN(tstamp_ring->count * sizeof(struct ice_ts_desc),
+		     PAGE_SIZE);
+	tstamp_ring->desc = dmam_alloc_coherent(dev, size, &tstamp_ring->dma,
+						GFP_KERNEL);
+	if (!tstamp_ring->desc) {
+		dev_err(dev, "Unable to allocate memory for Time stamp Ring, size=%d\n",
+			size);
+		return -ENOMEM;
+	}
+
+	tstamp_ring->next_to_use = 0;
+	return 0;
+}
+
+/**
+ * ice_alloc_setup_tstamp_ring - Allocate and setup the Time Stamp ring
+ * @tx_ring: Tx ring to allocate and setup the Time Stamp ring for
+ *
+ * Return: 0 on success, negative on error
+ */
+int ice_alloc_setup_tstamp_ring(struct ice_tx_ring *tx_ring)
+{
+	struct device *dev = tx_ring->dev;
+	int err;
+
+	err = ice_alloc_tstamp_ring(tx_ring);
+	if (err) {
+		dev_err(dev, "Unable to allocate Time stamp ring for Tx ring %d\n",
+			tx_ring->q_index);
+		return err;
+	}
+
+	err = ice_setup_tstamp_ring(tx_ring);
+	if (err) {
+		dev_err(dev, "Unable to setup Time stamp ring for Tx ring %d\n",
+			tx_ring->q_index);
+		ice_free_tx_tstamp_ring(tx_ring);
+		return err;
+	}
+	return 0;
+}
+
 /**
  * ice_setup_tx_ring - Allocate the Tx descriptors
  * @tx_ring: the Tx ring to set up
@@ -1820,10 +1951,46 @@ ice_tx_map(struct ice_tx_ring *tx_ring, struct ice_tx_buf *first,
 	/* notify HW of packet */
 	kick = __netdev_tx_sent_queue(txring_txq(tx_ring), first->bytecount,
 				      netdev_xmit_more());
-	if (kick)
-		/* notify HW of packet */
-		writel(i, tx_ring->tail);
+	if (!kick)
+		return;
 
+	if (ice_is_txtime_cfg(tx_ring)) {
+		struct ice_tstamp_ring *tstamp_ring = tx_ring->tstamp_ring;
+		u32 tstamp_count = tstamp_ring->count;
+		u32 j = tstamp_ring->next_to_use;
+		struct ice_ts_desc *ts_desc;
+		struct timespec64 ts;
+		u32 tstamp;
+
+		ts = ktime_to_timespec64(first->skb->tstamp);
+		tstamp = ts.tv_nsec >> ICE_TXTIME_CTX_RESOLUTION_128NS;
+
+		ts_desc = ICE_TS_DESC(tstamp_ring, j);
+		ts_desc->tx_desc_idx_tstamp = ice_build_tstamp_desc(i, tstamp);
+
+		j++;
+		if (j == tstamp_count) {
+			u32 fetch = tstamp_count - tx_ring->count;
+
+			j = 0;
+
+			/* To prevent an MDD, when wrapping the tstamp ring
+			 * create additional TS descriptors equal to the number
+			 * of the fetch TS descriptors value. HW will merge the
+			 * TS descriptors with the same timestamp value into a
+			 * single descriptor.
+			 */
+			for (; j < fetch; j++) {
+				ts_desc = ICE_TS_DESC(tstamp_ring, j);
+				ts_desc->tx_desc_idx_tstamp =
+				       ice_build_tstamp_desc(i, tstamp);
+			}
+		}
+		tstamp_ring->next_to_use = j;
+		writel_relaxed(j, tstamp_ring->tail);
+	} else {
+		writel_relaxed(i, tx_ring->tail);
+	}
 	return;
 
 dma_error:
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index 2fd8e78178a2..841a07bfba54 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -310,6 +310,16 @@ enum ice_dynamic_itr {
 #define ICE_TX_LEGACY	1
 
 /* descriptor ring, associated with a VSI */
+struct ice_tstamp_ring {
+	struct ice_tx_ring *tx_ring;	/* Backreference to associated Tx ring */
+	dma_addr_t dma;			/* physical address of ring */
+	struct rcu_head rcu;            /* to avoid race on free */
+	u8 __iomem *tail;
+	void *desc;
+	u16 next_to_use;
+	u16 count;
+} ____cacheline_internodealigned_in_smp;
+
 struct ice_rx_ring {
 	/* CL1 - 1st cacheline starts here */
 	void *desc;			/* Descriptor ring memory */
@@ -402,9 +412,11 @@ struct ice_tx_ring {
 	spinlock_t tx_lock;
 	u32 txq_teid;			/* Added Tx queue TEID */
 	/* CL4 - 4th cacheline starts here */
+	struct ice_tstamp_ring *tstamp_ring;
 #define ICE_TX_FLAGS_RING_XDP		BIT(0)
 #define ICE_TX_FLAGS_RING_VLAN_L2TAG1	BIT(1)
 #define ICE_TX_FLAGS_RING_VLAN_L2TAG2	BIT(2)
+#define ICE_TX_FLAGS_TXTIME		BIT(3)
 	u8 flags;
 	u8 dcb_tc;			/* Traffic class of ring */
 	u16 quanta_prof_id;
@@ -500,6 +512,7 @@ void ice_clean_tx_ring(struct ice_tx_ring *tx_ring);
 void ice_clean_rx_ring(struct ice_rx_ring *rx_ring);
 int ice_setup_tx_ring(struct ice_tx_ring *tx_ring);
 int ice_setup_rx_ring(struct ice_rx_ring *rx_ring);
+int ice_alloc_setup_tstamp_ring(struct ice_tx_ring *tx_ring);
 void ice_free_tx_ring(struct ice_tx_ring *tx_ring);
 void ice_free_rx_ring(struct ice_rx_ring *rx_ring);
 int ice_napi_poll(struct napi_struct *napi, int budget);
@@ -508,4 +521,6 @@ ice_prgm_fdir_fltr(struct ice_vsi *vsi, struct ice_fltr_desc *fdir_desc,
 		   u8 *raw_packet);
 void ice_clean_ctrl_tx_irq(struct ice_tx_ring *tx_ring);
 void ice_clean_ctrl_rx_irq(struct ice_rx_ring *rx_ring);
+void ice_free_tx_tstamp_ring(struct ice_tx_ring *tx_ring);
+void ice_free_tstamp_ring(struct ice_tx_ring *tx_ring);
 #endif /* _ICE_TXRX_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
index 6cf32b404127..99717730f21a 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
@@ -53,6 +53,20 @@ ice_build_ctob(u64 td_cmd, u64 td_offset, unsigned int size, u64 td_tag)
 			   (td_tag    << ICE_TXD_QW1_L2TAG1_S));
 }
 
+/**
+ * ice_build_tstamp_desc - build Tx time stamp descriptor
+ * @tx_desc: Tx LAN descriptor index
+ * @tstamp: time stamp
+ *
+ * Return: Tx time stamp descriptor
+ */
+static inline __le32
+ice_build_tstamp_desc(u16 tx_desc, u32 tstamp)
+{
+	return cpu_to_le32(FIELD_PREP(ICE_TXTIME_TX_DESC_IDX_M, tx_desc) |
+			   FIELD_PREP(ICE_TXTIME_STAMP_M, tstamp));
+}
+
 /**
  * ice_get_vlan_tci - get VLAN TCI from Rx flex descriptor
  * @rx_desc: Rx 32b flex descriptor with RXDID=2
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 257967273079..2f445385087e 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -582,7 +582,7 @@ static bool ice_vc_isvalid_ring_len(u16 ring_len)
 {
 	return ring_len == 0 ||
 	       (ring_len >= ICE_MIN_NUM_DESC &&
-		ring_len <= ICE_MAX_NUM_DESC &&
+		ring_len <= ICE_MAX_NUM_DESC_E810 &&
 		!(ring_len % ICE_REQ_DESC_MULTIPLE));
 }
 
-- 
2.47.0

