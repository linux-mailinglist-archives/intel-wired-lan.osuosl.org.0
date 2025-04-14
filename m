Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 26BF0A87E4D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Apr 2025 13:01:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA93640E12;
	Mon, 14 Apr 2025 11:01:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f1BmDRD2ODsS; Mon, 14 Apr 2025 11:01:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78B9840DF6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744628463;
	bh=iPkFhR9PiMjlBXM9GF1T5KYmc15eAY74tBUk7u2/MRw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VozRsT6qqHToUZFFmOQz+6ehR8yVNrqfeDUkJltwNigU6RcpqKZziuwAnYRp8ULmI
	 n7ZKBbNi20pYYegxaK0nl1izeFFRnKYtjUCpJkHX+in/45IVVZ6AcS48QXfGmlZnfv
	 UIEEER8p2kkyjpHKYzBeZppT4k2UQEqRivzgNZo1rWjiQdYw3ffm4FMs/9X7un9Z8s
	 0qqWZUPMuBgTHCy/LLD/+ZUXG8V66SQ4foPxeq7frkaN1ldxPdgy9/eBQnLr9a0VAJ
	 b0uHxDjRBQlxq8iVlsrQsPB9KIGARo1xBDxNISo34VQwSqEU7O4RrOgxThGTGCLNwV
	 szXlA/7CLp/OQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 78B9840DF6;
	Mon, 14 Apr 2025 11:01:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id F0D76250
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 11:01:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E1DDE8169F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 11:01:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EpUT6uZeM2XG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Apr 2025 11:01:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D68F4808A7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D68F4808A7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D68F4808A7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 11:01:00 +0000 (UTC)
X-CSE-ConnectionGUID: jRJVTueDRzODxVdWl9DREA==
X-CSE-MsgGUID: mGHlNRHBSWmuBkahOd9jLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="68581897"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="68581897"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 04:01:01 -0700
X-CSE-ConnectionGUID: bwij2zXaTgKSLn7CA7DLBg==
X-CSE-MsgGUID: CC1/FrlFRV29j02b5adu7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="160741769"
Received: from gklab-003-014.igk.intel.com ([10.211.116.96])
 by orviesa002.jf.intel.com with ESMTP; 14 Apr 2025 04:00:58 -0700
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, YiFei Zhu <zhuyifei@google.com>,
 Mina Almasry <almasrymina@google.com>,
 Samuel Salin <Samuel.salin@intel.com>
Date: Mon, 14 Apr 2025 12:45:30 +0200
Message-ID: <20250414104658.14706-26-milena.olech@intel.com>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <20250414104658.14706-1-milena.olech@intel.com>
References: <20250414104658.14706-1-milena.olech@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744628461; x=1776164461;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ciqU6NRzdmK5xHfHgKRN9YUW8TMMf4zvPwAseNMuZ5w=;
 b=UzM3SR0UVhUoG9Mp4Ds6agHNBmqUo43d/zYVQZ4NZsaQnLbFLZWnr6fV
 HOtYB/ykJLjakIQok0vEwCkxFZYDCPjWDVtpmZuWErqkEgnDtz7ZdwiCU
 LTqcDBqI6wwGBTJeO5IVEtJLuu35P/7GgiCXjN3fjnwSqyAfSZy59sF5F
 fQ8FlJ1u7U7DmFrFGGrCBTQdFbgvW1uGz65xa/vaPUxkivN5/BPCQC4pp
 y7RIjl2MU15rVJCPMYFxUUz/e3Ev972FiuhFNNBBKMfAeOgnLwukVlYie
 xEg17WlbrdcIPITFKDacOsWmYSd6EMwR0twqfzHMCf9D14viyzybaLnrU
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UzM3SR0U
Subject: [Intel-wired-lan] [PATCH v11 iwl-next 11/11] idpf: add support for
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

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Milena Olech <milena.olech@intel.com>
Tested-by: YiFei Zhu <zhuyifei@google.com>
Tested-by: Mina Almasry <almasrymina@google.com>
Tested-by: Samuel Salin <Samuel.salin@intel.com>
---
v8 -> v9: upscale Rx filters to HWTSTAMP_FILTER_ALL if Rx filter is
different than HWTSTAMP_FILTER_NONE
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
index bdead0e6ff47..e8d99d577f2b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -2353,7 +2353,8 @@ static int idpf_hwtstamp_set(struct net_device *netdev,
 	idpf_vport_ctrl_lock(netdev);
 	vport = idpf_netdev_to_vport(netdev);
 
-	if (!idpf_ptp_is_vport_tx_tstamp_ena(vport)) {
+	if (!idpf_ptp_is_vport_tx_tstamp_ena(vport) &&
+	    !idpf_ptp_is_vport_rx_tstamp_ena(vport)) {
 		idpf_vport_ctrl_unlock(netdev);
 		return -EOPNOTSUPP;
 	}
@@ -2373,7 +2374,8 @@ static int idpf_hwtstamp_get(struct net_device *netdev,
 	idpf_vport_ctrl_lock(netdev);
 	vport = idpf_netdev_to_vport(netdev);
 
-	if (!idpf_ptp_is_vport_tx_tstamp_ena(vport)) {
+	if (!idpf_ptp_is_vport_tx_tstamp_ena(vport) &&
+	    !idpf_ptp_is_vport_rx_tstamp_ena(vport)) {
 		idpf_vport_ctrl_unlock(netdev);
 		return 0;
 	}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
index 89884a0d1e9e..fc5b98d67c3f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
@@ -328,12 +328,41 @@ static int idpf_ptp_gettimex64(struct ptp_clock_info *info,
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
@@ -356,6 +385,21 @@ static int idpf_ptp_update_cached_phctime(struct idpf_adapter *adapter)
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
 
@@ -629,6 +673,45 @@ int idpf_ptp_request_ts(struct idpf_tx_queue *tx_q, struct sk_buff *skb,
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
@@ -651,6 +734,7 @@ int idpf_ptp_set_timestamp_mode(struct idpf_vport *vport,
 	}
 
 	vport->tstamp_config.tx_type = config->tx_type;
+	idpf_ptp_set_rx_tstamp(vport, config->rx_filter);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.h b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
index 553c4645b047..e23d1c950250 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ptp.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
@@ -243,6 +243,27 @@ static inline bool idpf_ptp_is_vport_tx_tstamp_ena(struct idpf_vport *vport)
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
index 042b190c39b3..127560bebded 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3170,6 +3170,33 @@ static int idpf_rx_rsc(struct idpf_rx_queue *rxq, struct sk_buff *skb,
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
@@ -3195,6 +3222,9 @@ idpf_rx_process_skb_fields(struct idpf_rx_queue *rxq, struct sk_buff *skb,
 	/* process RSS/hash */
 	idpf_rx_hash(rxq, skb, rx_desc, decoded);
 
+	if (idpf_queue_has(PTP, rxq))
+		idpf_rx_hwtstamp(rxq, rx_desc, skb);
+
 	skb->protocol = eth_type_trans(skb, rxq->netdev);
 	skb_record_rx_queue(skb, rxq->idx);
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 9b7aa72e1f32..c779fe71df99 100644
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
@@ -496,6 +499,7 @@ struct idpf_txq_stash {
  * @next_to_alloc: RX buffer to allocate at
  * @skb: Pointer to the skb
  * @truesize: data buffer truesize in singleq
+ * @cached_phc_time: Cached PHC time for the Rx queue
  * @stats_sync: See struct u64_stats_sync
  * @q_stats: See union idpf_rx_queue_stats
  * @q_id: Queue id
@@ -543,6 +547,7 @@ struct idpf_rx_queue {
 
 	struct sk_buff *skb;
 	u32 truesize;
+	u64 cached_phc_time;
 
 	struct u64_stats_sync stats_sync;
 	struct idpf_rx_queue_stats q_stats;
@@ -562,7 +567,7 @@ struct idpf_rx_queue {
 	__cacheline_group_end_aligned(cold);
 };
 libeth_cacheline_set_assert(struct idpf_rx_queue, 64,
-			    80 + sizeof(struct u64_stats_sync),
+			    88 + sizeof(struct u64_stats_sync),
 			    32);
 
 /**
-- 
2.43.5

