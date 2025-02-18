Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A63A39A0B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2025 12:12:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F0EC40792;
	Tue, 18 Feb 2025 11:12:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HZuf0wjC6MRG; Tue, 18 Feb 2025 11:12:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2185B40DB7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739877124;
	bh=VaCRXPpBX6se6P3k9iYny3sMLebyIuySSSQV78wzumo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=D/0HwWhsBTFGGMaXoybQDCrPxePvTQfiFvyD5UQO857U5yrZeYhoJ9xggq25LQuZV
	 bk4jL2NMwUzX2kkI21VOJpoGu771qlPbjaQtsWE5qq0B3e96HJqsD9JQryKhskqI6k
	 MtmwKtnFqrKcK57LvYdx1TLuXANpVI29BHkC66lPsE1MNqHbQJWmkm3svut7Sm+skx
	 jDnVKX8fK4EtrMbuU9KQy5mREkiuggqvuz7gkC+eC+FVx/0xoM8L2QaCIv7R5dj2v/
	 TOR7G9WMtEFzkoXRrvD4gWuJ/v1vmdT5tGsLD29v47pU36ztq8NoXRveHCW8vjIWdc
	 q3N0ttCfbVJ7A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2185B40DB7;
	Tue, 18 Feb 2025 11:12:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id F1980E05
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 11:12:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E0CDA407B1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 11:12:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WIbD4md4Deeh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2025 11:12:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9F50840790
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F50840790
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9F50840790
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 11:12:00 +0000 (UTC)
X-CSE-ConnectionGUID: lbQJzRRvR/ap9cUYhx1NXw==
X-CSE-MsgGUID: vNRMB+H5S5CCutrbGA4lsQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="51208300"
X-IronPort-AV: E=Sophos;i="6.13,295,1732608000"; d="scan'208";a="51208300"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 03:12:00 -0800
X-CSE-ConnectionGUID: XhsKKvc8SjiTPXKHRzL60w==
X-CSE-MsgGUID: zEYo+HkKTgmFpRsMjM6kfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="114234000"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.54])
 by orviesa010.jf.intel.com with ESMTP; 18 Feb 2025 03:11:58 -0800
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>
Date: Tue, 18 Feb 2025 12:07:35 +0100
Message-Id: <20250218110724.2263357-10-milena.olech@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250218110724.2263357-1-milena.olech@intel.com>
References: <20250218110724.2263357-1-milena.olech@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739877120; x=1771413120;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1cSFme4TxhXgDAwbZUASnNo4rdkFDiJO4n7J90zWWxo=;
 b=CojQeJ73qsw6N9snfV/TKSrtt3X4B6K6nfqRS4PZ++as07ZIHafGQ9/G
 jHEBmUrS7/QGNPEhLNqNnE8qzSAsceZtX3gxyMLCWFeCUByx5VcxY/+16
 H4zgD2vRyeQwbBX74F2afAsViKGCnReEJbkxTRHslAZuQ75c4p4Cl/P4L
 kfPYZDuEm3I5AHGIJvrvY4jx/eYTGQCHQnRKtStq8EplPArv9TcLEmjNq
 6VPCdyG4mh5ceq8IhWpTNXbxjWM1w/wNRYEmOimfztGMwvo76wooNo9qE
 Wagx1/EipMuBAbgv4S2WVkmS+tZGIbKf0h5a8ybIckHklJR8FQV94xglM
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CojQeJ73
Subject: [Intel-wired-lan] [PATCH v6 iwl-next 09/10] idpf: add support for
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
v5 -> v6: add Rx filter
v2 -> v3: add disable Rx timestamp
v1 -> v2: extend commit message

 .../net/ethernet/intel/idpf/idpf_ethtool.c    |  2 +
 drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 86 ++++++++++++++++++-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 30 +++++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  7 +-
 4 files changed, 123 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index edd9d9bb25b2..24e13abab43c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -1332,6 +1332,8 @@ static void idpf_get_timestamp_filters(const struct idpf_vport *vport,
 	info->so_timestamping = SOF_TIMESTAMPING_RX_HARDWARE |
 				SOF_TIMESTAMPING_RAW_HARDWARE;
 
+	info->rx_filters = BIT(HWTSTAMP_FILTER_NONE) | BIT(HWTSTAMP_FILTER_ALL);
+
 	if (!vport->tx_tstamp_caps ||
 	    vport->adapter->ptp->tx_tstamp_access == IDPF_PTP_NONE)
 		return;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
index 71ecd75da413..a95fd9a7996e 100644
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
@@ -624,6 +707,7 @@ int idpf_ptp_set_timestamp_mode(struct idpf_vport *vport,
 	}
 
 	vport->tstamp_config.tx_type = config->tx_type;
+	idpf_ptp_set_rx_tstamp(vport, config->rx_filter);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 5a1e3feb1bd5..ea611bc36d74 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3174,6 +3174,33 @@ static int idpf_rx_rsc(struct idpf_rx_queue *rxq, struct sk_buff *skb,
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
@@ -3199,6 +3226,9 @@ idpf_rx_process_skb_fields(struct idpf_rx_queue *rxq, struct sk_buff *skb,
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

