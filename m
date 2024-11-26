Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB0C9D96B1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Nov 2024 12:54:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7497E610A9;
	Tue, 26 Nov 2024 11:54:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6RF0djy5MQCo; Tue, 26 Nov 2024 11:54:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 422A661B39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732622085;
	bh=I3B1bHY6B13bcfnRM4cTRvMtmErTZKL8gZep91xb+/w=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=h1w+7uTJ5j3YEk7Vs8tFPbD39d4OwbeyK6UcTA6ABDcVHP3FXJp1+oyw5wHKB4wlL
	 3FdpM5DBwAGXLduTEtBb9G2qeowRzziAIaIhzZJUg3UuWxe5Jlr27Jvcjcvumw7mHi
	 LO6FBpjtdGnQx/NmcwkiRLflAELrlP5gQmTU4euVFuCnXW2auKIfBcxl/lPqdy+5Sr
	 gnfB8SHnDPagd28Mq6q7I+0FTNryhkKV+rl+X6I42Wok3FZN6Nr2zdP2pdm2j4o8jO
	 XKGzExlgfL7vsiRPhN+3OKWtyNYdq9ruXACeixYlSwVq0zdALm7zKYcOawECK/Fbq/
	 sQCFAHsjAT4Sw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 422A661B39;
	Tue, 26 Nov 2024 11:54:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 55FBADB3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 11:54:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 379E580B88
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 11:54:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5NVw-6eqwfnL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Nov 2024 11:54:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4ECB680BA4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4ECB680BA4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4ECB680BA4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 11:54:40 +0000 (UTC)
X-CSE-ConnectionGUID: lhiKAKqOSAuSAfrAp0JQwA==
X-CSE-MsgGUID: bSXStRvqROqBVACYEUR3VA==
X-IronPort-AV: E=McAfee;i="6700,10204,11267"; a="55276393"
X-IronPort-AV: E=Sophos;i="6.12,185,1728975600"; d="scan'208";a="55276393"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 03:54:40 -0800
X-CSE-ConnectionGUID: aOZFv+7XTZSA8YRCCFEYhQ==
X-CSE-MsgGUID: gTfOCJlIRkagsbQCyjfSag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,185,1728975600"; d="scan'208";a="91766990"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.54])
 by fmviesa008.fm.intel.com with ESMTP; 26 Nov 2024 03:54:38 -0800
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Tue, 26 Nov 2024 04:58:56 +0100
Message-Id: <20241126035849.6441-10-milena.olech@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20241126035849.6441-1-milena.olech@intel.com>
References: <20241126035849.6441-1-milena.olech@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732622080; x=1764158080;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1BcvzHodmZGMBmHu0MP2tXg7rtTopC0S2sUfJAkNCmw=;
 b=IROkHaQfhx5u6d4VvhzsYDbiuBD3q5kLx/pbK7aE+X7/tpVocFVj3VK0
 OCsU9dP6OSYt7tZEQtbNxb2sizPHbiSO9hK9x76Fe9AdgNZ1XxLbPUFsA
 hONDnysbobw02rgFeXi88T2QgDRqNrofS7rSzh1nYtQeglHGIMdeQygSv
 bFdxyMfc86KgKTj8lytSFGJ861yTShnXotwp2AfOyJzOl17HTOVgAsEdy
 2zhkbOd11+TGMW0BYE9bkrJuk4tgiFloluAh+bue6YvOReoP4qeJ4KvkP
 oCPnJ5y0fXKHYdbHewnZfUAUWxlhltMQPtdY0+XHEcO4eh3zDR83oRYPE
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IROkHaQf
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 09/10] idpf: add support for
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

Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Milena Olech <milena.olech@intel.com>
---
v1 -> v2: extend commit message

 drivers/net/ethernet/intel/idpf/idpf_ptp.c  | 77 ++++++++++++++++++++-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 30 ++++++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.h |  7 +-
 3 files changed, 111 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
index 2460d27f004f..86611f2f26c5 100644
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
@@ -332,7 +361,7 @@ static int idpf_ptp_gettimex64(struct ptp_clock_info *info,
 static int idpf_ptp_update_cached_phctime(struct idpf_adapter *adapter)
 {
 	u64 systime;
-	int err;
+	int err, i;
 
 	err = idpf_ptp_read_src_clk_reg(adapter, &systime, NULL);
 	if (err)
@@ -345,6 +374,22 @@ static int idpf_ptp_update_cached_phctime(struct idpf_adapter *adapter)
 	WRITE_ONCE(adapter->ptp->cached_phc_time, systime);
 	WRITE_ONCE(adapter->ptp->cached_phc_jiffies, jiffies);
 
+	idpf_for_each_vport(adapter, i) {
+		struct idpf_vport *vport = adapter->vports[i];
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
 
@@ -608,6 +653,33 @@ int idpf_ptp_request_ts(struct idpf_tx_queue *tx_q, struct sk_buff *skb,
 	return 0;
 }
 
+/**
+ * idpf_ptp_set_rx_tstamp - Enable or disable Rx timestamping
+ * @vport: Virtual port structure
+ * @rx_filter: bool value for whether timestamps are enabled or disabled
+ */
+static void idpf_ptp_set_rx_tstamp(struct idpf_vport *vport, int rx_filter)
+{
+	vport->tstamp_config.rx_filter = rx_filter;
+
+	if (rx_filter == HWTSTAMP_FILTER_NONE)
+		return;
+
+	for (u16 i = 0; i < vport->num_rxq_grp; i++) {
+		struct idpf_rxq_group *grp = &vport->rxq_grps[i];
+		u16 j;
+
+		if (idpf_is_queue_model_split(vport->rxq_model)) {
+			for (j = 0; j < grp->singleq.num_rxq; j++)
+				idpf_queue_set(PTP, grp->singleq.rxqs[j]);
+		} else {
+			for (j = 0; j < grp->splitq.num_rxq_sets; j++)
+				idpf_queue_set(PTP,
+					       &grp->splitq.rxq_sets[j]->rxq);
+		}
+	}
+}
+
 /**
  * idpf_ptp_set_timestamp_mode - Setup driver for requested timestamp mode
  * @vport: Virtual port structure
@@ -627,6 +699,7 @@ int idpf_ptp_set_timestamp_mode(struct idpf_vport *vport,
 	}
 
 	vport->tstamp_config.tx_type = config->tx_type;
+	idpf_ptp_set_rx_tstamp(vport, config->rx_filter);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index ab0a4228fac4..6a7074073aa8 100644
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
 
 	if (le16_get_bits(rx_desc->hdrlen_flags,
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 2f8f2eab3d09..2c651fb9f96d 100644
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
@@ -491,6 +494,7 @@ struct idpf_txq_stash {
  * @next_to_alloc: RX buffer to allocate at
  * @skb: Pointer to the skb
  * @truesize: data buffer truesize in singleq
+ * @cached_phctime: Cached PHC time for the Rx queue
  * @stats_sync: See struct u64_stats_sync
  * @q_stats: See union idpf_rx_queue_stats
  * @q_id: Queue id
@@ -538,6 +542,7 @@ struct idpf_rx_queue {
 
 	struct sk_buff *skb;
 	u32 truesize;
+	u64 cached_phc_time;
 
 	struct u64_stats_sync stats_sync;
 	struct idpf_rx_queue_stats q_stats;
@@ -557,7 +562,7 @@ struct idpf_rx_queue {
 	__cacheline_group_end_aligned(cold);
 };
 libeth_cacheline_set_assert(struct idpf_rx_queue, 64,
-			    80 + sizeof(struct u64_stats_sync),
+			    88 + sizeof(struct u64_stats_sync),
 			    32);
 
 /**
-- 
2.31.1

