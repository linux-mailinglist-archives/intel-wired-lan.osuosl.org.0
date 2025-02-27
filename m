Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF9DA47ECF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Feb 2025 14:18:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2412841369;
	Thu, 27 Feb 2025 13:18:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PUQVM1WXcAn7; Thu, 27 Feb 2025 13:18:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A3C854136D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740662285;
	bh=bL0TMp+i7NOVuGjvCn8gWAqWudnlK1ZN9BDTC5nK7dQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=00C8LPS897qBdJ9gt6DwHabt36IWUkAuVR/AzYdhGgIBa3sYfVH6qG8LT8gI4POKG
	 Y2rxkMd9bmrbNIyuDgHDnyZ0Xr+NOAw0YypAu48Bg5ZIwRfCGpDWTL5TRpjaJw1zx7
	 qTTzwbZ1QtXi6MMq8FX9rhNj2rVBwm2ls5NIQ9Ie/FlvQQbVAuTYBUXvo+X+/B5Lrf
	 zZ7c+9AZhiIXSnIHHJyW1NN+EYLpZWvguVUHj7i5kr3lQ1a+0xRWtHqWMgRjr3cX2O
	 vDAYLLN1090wjGv2WgRYP+xBw8NFIlV9ezXsUvMkYfOELrBQXmXr45qNo8aJvdVGKd
	 DX+054TzPZ3Og==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A3C854136D;
	Thu, 27 Feb 2025 13:18:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6B4B6711
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 13:18:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 66DEC60FF6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 13:18:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 63gW9oE_-fyX for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Feb 2025 13:18:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EB5EA610BF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB5EA610BF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EB5EA610BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 13:18:01 +0000 (UTC)
X-CSE-ConnectionGUID: ZQljkAumSl+dHMu++r2Ixw==
X-CSE-MsgGUID: LqmKyWVxTxO7GEg6kRBs5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="41252590"
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="41252590"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 05:18:02 -0800
X-CSE-ConnectionGUID: UBuLFzhrRwytmmKmZY1oig==
X-CSE-MsgGUID: WpW8/synQ/SNF0jgLgvK2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121151316"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.54])
 by fmviesa003.fm.intel.com with ESMTP; 27 Feb 2025 05:17:59 -0800
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>
Date: Thu, 27 Feb 2025 14:13:25 +0100
Message-Id: <20250227131314.2317200-10-milena.olech@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250227131314.2317200-1-milena.olech@intel.com>
References: <20250227131314.2317200-1-milena.olech@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740662282; x=1772198282;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n+3h6zzCRfH8FrUQP8hJEWNBL9O7vmtZ/LLkt03kCcw=;
 b=I5NZTmHl1ma/A2i/hZ00DYZH2O4rz3daZTgC46ooJy8yvmdMNgt5IAL+
 oWDalQ59sEqmSvv1Yf3hHUHx0ai1zgXuOaajxLKn0ZitkUNRViO/dv/Iu
 Sbz7BWbQpDaUaClYdE1yumCvMQuFvqCW4lbOhwgka73Rzs9r2Tys4WiXf
 h2+3KsXNqfnoPDp3vm1uxWkz7vkxonFjlovZqPtJ6boWIhR2OxPyWFtUv
 FNYe4yiv4OtzPRhBQEp0z4FkqemUraHUSuBPNO7yfXFhdhzR26yo7K1L5
 PGQb3B507XvaMOg8oNUPCAgVstgRTinD5u4+WqZpgaya64hUdUFirpoFf
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I5NZTmHl
Subject: [Intel-wired-lan] [PATCH v8 iwl-next 09/10] idpf: add support for
 Rx timestamping
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

Add Rx timestamp function when the Rx timestamp value is read directly
from the Rx descriptor. In order to extend the Rx timestamp value to 64
bit in hot path, the PHC time is cached in the receive groups.
Add supported Rx timestamp modes.

Signed-off-by: Milena Olech <milena.olech@intel.com>
---
v7 -> v8: add a function to check if the Rx timestamp for a given vport
is enabled
v5 -> v6: add Rx filter
v2 -> v3: add disable Rx timestamp
v1 -> v2: extend commit message

 .../net/ethernet/intel/idpf/idpf_ethtool.c    |  1 +
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  6 +-
 drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 86 ++++++++++++++++++-
 drivers/net/ethernet/intel/idpf/idpf_ptp.h    | 21 +++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 30 +++++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  7 +-
 6 files changed, 147 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index ec4183a609c4..7a4793749bc5 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -1333,6 +1333,7 @@ static void idpf_get_timestamp_filters(const struct idpf_vport *vport,
 				SOF_TIMESTAMPING_RAW_HARDWARE;
 
 	info->tx_types = BIT(HWTSTAMP_TX_OFF);
+	info->rx_filters = BIT(HWTSTAMP_FILTER_NONE) | BIT(HWTSTAMP_FILTER_ALL);
 
 	if (!vport->tx_tstamp_caps ||
 	    vport->adapter->ptp->tx_tstamp_access == IDPF_PTP_NONE)
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 73b1a4c00dc7..262132c4e3e5 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -2368,7 +2368,8 @@ static int idpf_hwtstamp_set(struct net_device *netdev,
 	idpf_vport_ctrl_lock(netdev);
 	vport = idpf_netdev_to_vport(netdev);
 
-	if (!idpf_ptp_is_vport_tx_tstamp_ena(vport)) {
+	if (!idpf_ptp_is_vport_tx_tstamp_ena(vport) &&
+	    !idpf_ptp_is_vport_rx_tstamp_ena(vport)) {
 		idpf_vport_ctrl_unlock(netdev);
 		return -EOPNOTSUPP;
 	}
@@ -2388,7 +2389,8 @@ static int idpf_hwtstamp_get(struct net_device *netdev,
 	idpf_vport_ctrl_lock(netdev);
 	vport = idpf_netdev_to_vport(netdev);
 
-	if (!idpf_ptp_is_vport_tx_tstamp_ena(vport)) {
+	if (!idpf_ptp_is_vport_tx_tstamp_ena(vport) &&
+	    !idpf_ptp_is_vport_rx_tstamp_ena(vport)) {
 		idpf_vport_ctrl_unlock(netdev);
 		return 0;
 	}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
index df89e5ea4803..24825a2777b9 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
@@ -317,12 +317,41 @@ static int idpf_ptp_gettimex64(struct ptp_clock_info *info,
 	return 0;
 }
 
+/**
+ * idpf_ptp_update_phctime_rxq_grp - Update the cached PHC time for a given Rx
+ *				     queue group.
+ * @grp: receive queue group in which Rx timestamp is enabled
+ * @split: Indicates whether the queue model is split or single queue
+ * @systime: Cached system time
+ */
+static void
+idpf_ptp_update_phctime_rxq_grp(const struct idpf_rxq_group *grp, bool split,
+				u64 systime)
+{
+	struct idpf_rx_queue *rxq;
+	u16 i;
+
+	if (!split) {
+		for (i = 0; i < grp->singleq.num_rxq; i++) {
+			rxq = grp->singleq.rxqs[i];
+			if (rxq)
+				WRITE_ONCE(rxq->cached_phc_time, systime);
+		}
+	} else {
+		for (i = 0; i < grp->splitq.num_rxq_sets; i++) {
+			rxq = &grp->splitq.rxq_sets[i]->rxq;
+			if (rxq)
+				WRITE_ONCE(rxq->cached_phc_time, systime);
+		}
+	}
+}
+
 /**
  * idpf_ptp_update_cached_phctime - Update the cached PHC time values
  * @adapter: Driver specific private structure
  *
  * This function updates the system time values which are cached in the adapter
- * structure.
+ * structure and the Rx queues.
  *
  * This function must be called periodically to ensure that the cached value
  * is never more than 2 seconds old.
@@ -345,6 +374,21 @@ static int idpf_ptp_update_cached_phctime(struct idpf_adapter *adapter)
 	WRITE_ONCE(adapter->ptp->cached_phc_time, systime);
 	WRITE_ONCE(adapter->ptp->cached_phc_jiffies, jiffies);
 
+	idpf_for_each_vport(adapter, vport) {
+		bool split;
+
+		if (!vport || !vport->rxq_grps)
+			continue;
+
+		split = idpf_is_queue_model_split(vport->rxq_model);
+
+		for (u16 i = 0; i < vport->num_rxq_grp; i++) {
+			struct idpf_rxq_group *grp = &vport->rxq_grps[i];
+
+			idpf_ptp_update_phctime_rxq_grp(grp, split, systime);
+		}
+	}
+
 	return 0;
 }
 
@@ -605,6 +649,45 @@ int idpf_ptp_request_ts(struct idpf_tx_queue *tx_q, struct sk_buff *skb,
 	return 0;
 }
 
+/**
+ * idpf_ptp_set_rx_tstamp - Enable or disable Rx timestamping
+ * @vport: Virtual port structure
+ * @rx_filter: bool value for whether timestamps are enabled or disabled
+ */
+static void idpf_ptp_set_rx_tstamp(struct idpf_vport *vport, int rx_filter)
+{
+	bool enable = true, splitq;
+
+	vport->tstamp_config.rx_filter = rx_filter;
+	splitq = idpf_is_queue_model_split(vport->rxq_model);
+
+	if (rx_filter == HWTSTAMP_FILTER_NONE)
+		enable = false;
+
+	for (u16 i = 0; i < vport->num_rxq_grp; i++) {
+		struct idpf_rxq_group *grp = &vport->rxq_grps[i];
+		struct idpf_rx_queue *rx_queue;
+		u16 j, num_rxq;
+
+		if (splitq)
+			num_rxq = grp->splitq.num_rxq_sets;
+		else
+			num_rxq = grp->singleq.num_rxq;
+
+		for (j = 0; j < num_rxq; j++) {
+			if (splitq)
+				rx_queue = &grp->splitq.rxq_sets[j]->rxq;
+			else
+				rx_queue = grp->singleq.rxqs[j];
+
+			if (enable)
+				idpf_queue_set(PTP, rx_queue);
+			else
+				idpf_queue_clear(PTP, rx_queue);
+		}
+	}
+}
+
 /**
  * idpf_ptp_set_timestamp_mode - Setup driver for requested timestamp mode
  * @vport: Virtual port structure
@@ -627,6 +710,7 @@ int idpf_ptp_set_timestamp_mode(struct idpf_vport *vport,
 	}
 
 	vport->tstamp_config.tx_type = config->tx_type;
+	idpf_ptp_set_rx_tstamp(vport, config->rx_filter);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.h b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
index 5cb7b68085b6..c3ad2c578868 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ptp.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
@@ -234,6 +234,27 @@ static inline bool idpf_ptp_is_vport_tx_tstamp_ena(struct idpf_vport *vport)
 		return true;
 }
 
+/**
+ * idpf_ptp_is_vport_rx_tstamp_ena - Verify the Rx timestamping enablement for
+ *				     a given vport.
+ * @vport: Virtual port structure
+ *
+ * Rx timestamp feature is enabled if the PTP clock for the adapter is created
+ * and it is possible to read the value of the device clock. The second
+ * assumption comes from the need to extend the Rx timestamp value to 64 bit
+ * based on the current device clock time.
+ *
+ * Return: true if the Rx timestamping is enabled, false otherwise.
+ */
+static inline bool idpf_ptp_is_vport_rx_tstamp_ena(struct idpf_vport *vport)
+{
+	if (!vport->adapter->ptp ||
+	    vport->adapter->ptp->get_dev_clk_time_access == IDPF_PTP_NONE)
+		return false;
+	else
+		return true;
+}
+
 #if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
 int idpf_ptp_init(struct idpf_adapter *adapter);
 void idpf_ptp_release(struct idpf_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index b86857310775..28a92601360b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3169,6 +3169,33 @@ static int idpf_rx_rsc(struct idpf_rx_queue *rxq, struct sk_buff *skb,
 	return 0;
 }
 
+/**
+ * idpf_rx_hwtstamp - check for an RX timestamp and pass up the stack
+ * @rxq: pointer to the rx queue that receives the timestamp
+ * @rx_desc: pointer to rx descriptor containing timestamp
+ * @skb: skb to put timestamp in
+ */
+static void
+idpf_rx_hwtstamp(const struct idpf_rx_queue *rxq,
+		 const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
+		 struct sk_buff *skb)
+{
+	u64 cached_time, ts_ns;
+	u32 ts_high;
+
+	if (!(rx_desc->ts_low & VIRTCHNL2_RX_FLEX_TSTAMP_VALID))
+		return;
+
+	cached_time = READ_ONCE(rxq->cached_phc_time);
+
+	ts_high = le32_to_cpu(rx_desc->ts_high);
+	ts_ns = idpf_ptp_tstamp_extend_32b_to_64b(cached_time, ts_high);
+
+	*skb_hwtstamps(skb) = (struct skb_shared_hwtstamps) {
+		.hwtstamp = ns_to_ktime(ts_ns),
+	};
+}
+
 /**
  * idpf_rx_process_skb_fields - Populate skb header fields from Rx descriptor
  * @rxq: Rx descriptor ring packet is being transacted on
@@ -3194,6 +3221,9 @@ idpf_rx_process_skb_fields(struct idpf_rx_queue *rxq, struct sk_buff *skb,
 	/* process RSS/hash */
 	idpf_rx_hash(rxq, skb, rx_desc, decoded);
 
+	if (idpf_queue_has(PTP, rxq))
+		idpf_rx_hwtstamp(rxq, rx_desc, skb);
+
 	skb->protocol = eth_type_trans(skb, rxq->netdev);
 	skb_record_rx_queue(skb, rxq->idx);
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 418a99d5c4e3..31b80efe8857 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -290,6 +290,8 @@ struct idpf_ptype_state {
  * @__IDPF_Q_POLL_MODE: Enable poll mode
  * @__IDPF_Q_CRC_EN: enable CRC offload in singleq mode
  * @__IDPF_Q_HSPLIT_EN: enable header split on Rx (splitq)
+ * @__IDPF_Q_PTP: indicates whether the Rx timestamping is enabled for the
+ *		  queue
  * @__IDPF_Q_FLAGS_NBITS: Must be last
  */
 enum idpf_queue_flags_t {
@@ -300,6 +302,7 @@ enum idpf_queue_flags_t {
 	__IDPF_Q_POLL_MODE,
 	__IDPF_Q_CRC_EN,
 	__IDPF_Q_HSPLIT_EN,
+	__IDPF_Q_PTP,
 
 	__IDPF_Q_FLAGS_NBITS,
 };
@@ -498,6 +501,7 @@ struct idpf_txq_stash {
  * @next_to_alloc: RX buffer to allocate at
  * @skb: Pointer to the skb
  * @truesize: data buffer truesize in singleq
+ * @cached_phc_time: Cached PHC time for the Rx queue
  * @stats_sync: See struct u64_stats_sync
  * @q_stats: See union idpf_rx_queue_stats
  * @q_id: Queue id
@@ -545,6 +549,7 @@ struct idpf_rx_queue {
 
 	struct sk_buff *skb;
 	u32 truesize;
+	u64 cached_phc_time;
 
 	struct u64_stats_sync stats_sync;
 	struct idpf_rx_queue_stats q_stats;
@@ -564,7 +569,7 @@ struct idpf_rx_queue {
 	__cacheline_group_end_aligned(cold);
 };
 libeth_cacheline_set_assert(struct idpf_rx_queue, 64,
-			    80 + sizeof(struct u64_stats_sync),
+			    88 + sizeof(struct u64_stats_sync),
 			    32);
 
 /**
-- 
2.31.1

