Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E7886AE6CB6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 18:46:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 69D6061164;
	Tue, 24 Jun 2025 16:46:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DVhnG2CE0U_F; Tue, 24 Jun 2025 16:46:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F275C6135C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750783579;
	bh=YJfnudb493eB64gc7A00Nyjl3q7lxZOGtB/LVlBPA8w=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pqjHGDTW0xD2DzvIltrzM0GsVC72O1aIW3XouFeptVLd4YvRTpSTHOCnyXBjjg73a
	 657hkZxEdcosF5qjD/kbMwZZ+XZkVgXDAJDBMGCccE63TodwMa15kbYGF1AEwkXMOs
	 yiH7xzhgYgA8r1aM9z+TMCwymMq2PEw+e2OGa82K8AXManknyRcbUITmmJBQ7J5fkl
	 32VAR6StQkZGYG1Zp9TtQ0h2c9E0bSiq6Q3ebGTqgSuyN0wRjyI89qC3QHpCmzX13y
	 q+Sl19OIQkxSvoLsNdMyZ921AFKAUd/ZANEwhoAJPtk7QZ4J/AcQjvwzblwWhKe/LD
	 mGr7SFKiboa1g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F275C6135C;
	Tue, 24 Jun 2025 16:46:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id CE12D154
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:46:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CB94E8143C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:46:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gCtQgOS-UUyB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 16:46:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A351C813EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A351C813EB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A351C813EB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:46:16 +0000 (UTC)
X-CSE-ConnectionGUID: MoDLO8NRQFykjJQvhJDhbw==
X-CSE-MsgGUID: d+VpSbwwRcOyqteiRcBtcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="64091280"
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="64091280"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 09:46:16 -0700
X-CSE-ConnectionGUID: DUDdn/NbT1mO0mWBBDYR+w==
X-CSE-MsgGUID: n/u9i0SaSVK9CKYE8S4D1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="152669489"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa010.fm.intel.com with ESMTP; 24 Jun 2025 09:46:12 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Simon Horman <horms@kernel.org>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, bpf@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Tue, 24 Jun 2025 18:45:12 +0200
Message-ID: <20250624164515.2663137-10-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250624164515.2663137-1-aleksander.lobakin@intel.com>
References: <20250624164515.2663137-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750783576; x=1782319576;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dhmQu7kXdxKvoWUfhNA3xT8qYRb0K8fkZPUA/K25Uxg=;
 b=fr69sam7ewGuyJvdFUEQWerd2iHS+xT1ThHN2qxoXB2NmarmygaYLPUo
 KOwVw+TWRKM+TBb6lV0m6UjUteL1bA9tyBqulRidetTfz4e8B3yKYD9f7
 KnBa068EXxopI0hnyHlLMxD1rjeuPMKJrhxQsxb4dS25JRyBPAgrNhyen
 f2RM5HySKenqefIU0o9S2vOvoOrYqigiku8Uo5DXZxUv4SpQHgNBJVqJo
 0KJkyhzO8OFOdSyfY+42WlC12rOxn4XlbcXBjP84piWPIeWyWllgY1Msf
 OiyXNXMe7U4G5DfDV8tkfDn9tTBYpQhv1TDqi6iQ7UvnZ5pe0ZRgte8So
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fr69sam7
Subject: [Intel-wired-lan] [PATCH iwl-next v2 09/12] idpf: use generic
 functions to build xdp_buff and skb
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

In preparation of XDP support, move from having skb as the main frame
container during the Rx polling to &xdp_buff.
This allows to use generic and libeth helpers for building an XDP
buffer and changes the logics: now we try to allocate an skb only
when we processed all the descriptors related to the frame.
Store &libeth_xdp_stash instead of the skb pointer on the Rx queue.
It's only 8 bytes wider, but contains everything we may need.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  17 +-
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 104 ++++++-------
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 145 +++++-------------
 3 files changed, 90 insertions(+), 176 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 251f400c2389..acdcff64649c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -507,7 +507,7 @@ struct idpf_txq_stash {
  * @next_to_use: Next descriptor to use
  * @next_to_clean: Next descriptor to clean
  * @next_to_alloc: RX buffer to allocate at
- * @skb: Pointer to the skb
+ * @xdp: XDP buffer with the current frame
  * @cached_phc_time: Cached PHC time for the Rx queue
  * @stats_sync: See struct u64_stats_sync
  * @q_stats: See union idpf_rx_queue_stats
@@ -559,11 +559,11 @@ struct idpf_rx_queue {
 	__cacheline_group_end_aligned(read_mostly);
 
 	__cacheline_group_begin_aligned(read_write);
-	u16 next_to_use;
-	u16 next_to_clean;
-	u16 next_to_alloc;
+	u32 next_to_use;
+	u32 next_to_clean;
+	u32 next_to_alloc;
 
-	struct sk_buff *skb;
+	struct libeth_xdp_buff_stash xdp;
 	u64 cached_phc_time;
 
 	struct u64_stats_sync stats_sync;
@@ -586,8 +586,8 @@ struct idpf_rx_queue {
 libeth_cacheline_set_assert(struct idpf_rx_queue,
 			    ALIGN(64, __alignof(struct xdp_rxq_info)) +
 			    sizeof(struct xdp_rxq_info),
-			    72 + offsetof(struct idpf_rx_queue, q_stats) -
-			    offsetofend(struct idpf_rx_queue, skb),
+			    96 + offsetof(struct idpf_rx_queue, q_stats) -
+			    offsetofend(struct idpf_rx_queue, cached_phc_time),
 			    32);
 
 /**
@@ -1086,9 +1086,6 @@ int idpf_config_rss(struct idpf_vport *vport);
 int idpf_init_rss(struct idpf_vport *vport);
 void idpf_deinit_rss(struct idpf_vport *vport);
 int idpf_rx_bufs_init_all(struct idpf_vport *vport);
-void idpf_rx_add_frag(struct idpf_rx_buf *rx_buf, struct sk_buff *skb,
-		      unsigned int size);
-struct sk_buff *idpf_rx_build_skb(const struct libeth_fqe *buf, u32 size);
 void idpf_tx_buf_hw_update(struct idpf_tx_queue *tx_q, u32 val,
 			   bool xmit_more);
 unsigned int idpf_size_to_txd_count(unsigned int size);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index 4685e3b7229a..f83b277429ed 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -1,8 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /* Copyright (C) 2023 Intel Corporation */
 
-#include <net/libeth/rx.h>
-#include <net/libeth/tx.h>
+#include <net/libeth/xdp.h>
 
 #include "idpf.h"
 
@@ -781,7 +780,7 @@ static void idpf_rx_singleq_flex_hash(struct idpf_rx_queue *rx_q,
 }
 
 /**
- * idpf_rx_singleq_process_skb_fields - Populate skb header fields from Rx
+ * __idpf_rx_singleq_process_skb_fields - Populate skb header fields from Rx
  * descriptor
  * @rx_q: Rx ring being processed
  * @skb: pointer to current skb being populated
@@ -793,17 +792,14 @@ static void idpf_rx_singleq_flex_hash(struct idpf_rx_queue *rx_q,
  * other fields within the skb.
  */
 static void
-idpf_rx_singleq_process_skb_fields(struct idpf_rx_queue *rx_q,
-				   struct sk_buff *skb,
-				   const union virtchnl2_rx_desc *rx_desc,
-				   u16 ptype)
+__idpf_rx_singleq_process_skb_fields(struct idpf_rx_queue *rx_q,
+				     struct sk_buff *skb,
+				     const union virtchnl2_rx_desc *rx_desc,
+				     u16 ptype)
 {
 	struct libeth_rx_pt decoded = rx_q->rx_ptype_lkup[ptype];
 	struct libeth_rx_csum csum_bits;
 
-	/* modifies the skb - consumes the enet header */
-	skb->protocol = eth_type_trans(skb, rx_q->xdp_rxq.dev);
-
 	/* Check if we're using base mode descriptor IDs */
 	if (rx_q->rxdids == VIRTCHNL2_RXDID_1_32B_BASE_M) {
 		idpf_rx_singleq_base_hash(rx_q, skb, rx_desc, decoded);
@@ -814,7 +810,6 @@ idpf_rx_singleq_process_skb_fields(struct idpf_rx_queue *rx_q,
 	}
 
 	idpf_rx_singleq_csum(rx_q, skb, csum_bits, decoded);
-	skb_record_rx_queue(skb, rx_q->idx);
 }
 
 /**
@@ -950,6 +945,32 @@ idpf_rx_singleq_extract_fields(const struct idpf_rx_queue *rx_q,
 		idpf_rx_singleq_extract_flex_fields(rx_desc, fields);
 }
 
+static bool
+idpf_rx_singleq_process_skb_fields(struct sk_buff *skb,
+				   const struct libeth_xdp_buff *xdp,
+				   struct libeth_rq_napi_stats *rs)
+{
+	struct libeth_rqe_info fields;
+	struct idpf_rx_queue *rxq;
+
+	rxq = libeth_xdp_buff_to_rq(xdp, typeof(*rxq), xdp_rxq);
+
+	idpf_rx_singleq_extract_fields(rxq, xdp->desc, &fields);
+	__idpf_rx_singleq_process_skb_fields(rxq, skb, xdp->desc,
+					     fields.ptype);
+
+	return true;
+}
+
+static void idpf_xdp_run_pass(struct libeth_xdp_buff *xdp,
+			      struct napi_struct *napi,
+			      struct libeth_rq_napi_stats *rs,
+			      const union virtchnl2_rx_desc *desc)
+{
+	libeth_xdp_run_pass(xdp, NULL, napi, rs, desc, NULL,
+			    idpf_rx_singleq_process_skb_fields);
+}
+
 /**
  * idpf_rx_singleq_clean - Reclaim resources after receive completes
  * @rx_q: rx queue to clean
@@ -959,14 +980,15 @@ idpf_rx_singleq_extract_fields(const struct idpf_rx_queue *rx_q,
  */
 static int idpf_rx_singleq_clean(struct idpf_rx_queue *rx_q, int budget)
 {
-	unsigned int total_rx_bytes = 0, total_rx_pkts = 0;
-	struct sk_buff *skb = rx_q->skb;
+	struct libeth_rq_napi_stats rs = { };
 	u16 ntc = rx_q->next_to_clean;
+	LIBETH_XDP_ONSTACK_BUFF(xdp);
 	u16 cleaned_count = 0;
-	bool failure = false;
+
+	libeth_xdp_init_buff(xdp, &rx_q->xdp, &rx_q->xdp_rxq);
 
 	/* Process Rx packets bounded by budget */
-	while (likely(total_rx_pkts < (unsigned int)budget)) {
+	while (likely(rs.packets < budget)) {
 		struct libeth_rqe_info fields = { };
 		union virtchnl2_rx_desc *rx_desc;
 		struct idpf_rx_buf *rx_buf;
@@ -993,73 +1015,41 @@ static int idpf_rx_singleq_clean(struct idpf_rx_queue *rx_q, int budget)
 		idpf_rx_singleq_extract_fields(rx_q, rx_desc, &fields);
 
 		rx_buf = &rx_q->rx_buf[ntc];
-		if (!libeth_rx_sync_for_cpu(rx_buf, fields.len))
-			goto skip_data;
-
-		if (skb)
-			idpf_rx_add_frag(rx_buf, skb, fields.len);
-		else
-			skb = idpf_rx_build_skb(rx_buf, fields.len);
-
-		/* exit if we failed to retrieve a buffer */
-		if (!skb)
-			break;
-
-skip_data:
+		libeth_xdp_process_buff(xdp, rx_buf, fields.len);
 		rx_buf->netmem = 0;
 
 		IDPF_SINGLEQ_BUMP_RING_IDX(rx_q, ntc);
 		cleaned_count++;
 
 		/* skip if it is non EOP desc */
-		if (idpf_rx_singleq_is_non_eop(rx_desc) || unlikely(!skb))
+		if (idpf_rx_singleq_is_non_eop(rx_desc) ||
+		    unlikely(!xdp->data))
 			continue;
 
 #define IDPF_RXD_ERR_S FIELD_PREP(VIRTCHNL2_RX_BASE_DESC_QW1_ERROR_M, \
 				  VIRTCHNL2_RX_BASE_DESC_ERROR_RXE_M)
 		if (unlikely(idpf_rx_singleq_test_staterr(rx_desc,
 							  IDPF_RXD_ERR_S))) {
-			dev_kfree_skb_any(skb);
-			skb = NULL;
-			continue;
-		}
-
-		/* pad skb if needed (to make valid ethernet frame) */
-		if (eth_skb_pad(skb)) {
-			skb = NULL;
+			libeth_xdp_return_buff_slow(xdp);
 			continue;
 		}
 
-		/* probably a little skewed due to removing CRC */
-		total_rx_bytes += skb->len;
-
-		/* protocol */
-		idpf_rx_singleq_process_skb_fields(rx_q, skb, rx_desc,
-						   fields.ptype);
-
-		/* send completed skb up the stack */
-		napi_gro_receive(rx_q->pp->p.napi, skb);
-		skb = NULL;
-
-		/* update budget accounting */
-		total_rx_pkts++;
+		idpf_xdp_run_pass(xdp, rx_q->pp->p.napi, &rs, rx_desc);
 	}
 
-	rx_q->skb = skb;
-
 	rx_q->next_to_clean = ntc;
+	libeth_xdp_save_buff(&rx_q->xdp, xdp);
 
 	page_pool_nid_changed(rx_q->pp, numa_mem_id());
 	if (cleaned_count)
-		failure = idpf_rx_singleq_buf_hw_alloc_all(rx_q, cleaned_count);
+		idpf_rx_singleq_buf_hw_alloc_all(rx_q, cleaned_count);
 
 	u64_stats_update_begin(&rx_q->stats_sync);
-	u64_stats_add(&rx_q->q_stats.packets, total_rx_pkts);
-	u64_stats_add(&rx_q->q_stats.bytes, total_rx_bytes);
+	u64_stats_add(&rx_q->q_stats.packets, rs.packets);
+	u64_stats_add(&rx_q->q_stats.bytes, rs.bytes);
 	u64_stats_update_end(&rx_q->stats_sync);
 
-	/* guarantee a trip back through this routine if there was a failure */
-	return failure ? budget : (int)total_rx_pkts;
+	return rs.packets;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index ed1736e52b1c..7221db27c632 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -492,10 +492,7 @@ static void idpf_rx_desc_rel(struct idpf_rx_queue *rxq, struct device *dev,
 	if (!rxq)
 		return;
 
-	if (rxq->skb) {
-		dev_kfree_skb_any(rxq->skb);
-		rxq->skb = NULL;
-	}
+	libeth_xdp_return_stash(&rxq->xdp);
 
 	if (!idpf_is_queue_model_split(model))
 		idpf_rx_buf_rel_all(rxq);
@@ -3275,7 +3272,7 @@ idpf_rx_hwtstamp(const struct idpf_rx_queue *rxq,
 }
 
 /**
- * idpf_rx_process_skb_fields - Populate skb header fields from Rx descriptor
+ * __idpf_rx_process_skb_fields - Populate skb header fields from Rx descriptor
  * @rxq: Rx descriptor ring packet is being transacted on
  * @skb: pointer to current skb being populated
  * @rx_desc: Receive descriptor
@@ -3285,8 +3282,8 @@ idpf_rx_hwtstamp(const struct idpf_rx_queue *rxq,
  * other fields within the skb.
  */
 static int
-idpf_rx_process_skb_fields(struct idpf_rx_queue *rxq, struct sk_buff *skb,
-			   const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc)
+__idpf_rx_process_skb_fields(struct idpf_rx_queue *rxq, struct sk_buff *skb,
+			     const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc)
 {
 	struct libeth_rx_csum csum_bits;
 	struct libeth_rx_pt decoded;
@@ -3302,9 +3299,6 @@ idpf_rx_process_skb_fields(struct idpf_rx_queue *rxq, struct sk_buff *skb,
 	if (idpf_queue_has(PTP, rxq))
 		idpf_rx_hwtstamp(rxq, rx_desc, skb);
 
-	skb->protocol = eth_type_trans(skb, rxq->xdp_rxq.dev);
-	skb_record_rx_queue(skb, rxq->idx);
-
 	if (le16_get_bits(rx_desc->hdrlen_flags,
 			  VIRTCHNL2_RX_FLEX_DESC_ADV_RSC_M))
 		return idpf_rx_rsc(rxq, skb, rx_desc, decoded);
@@ -3315,23 +3309,24 @@ idpf_rx_process_skb_fields(struct idpf_rx_queue *rxq, struct sk_buff *skb,
 	return 0;
 }
 
-/**
- * idpf_rx_add_frag - Add contents of Rx buffer to sk_buff as a frag
- * @rx_buf: buffer containing page to add
- * @skb: sk_buff to place the data into
- * @size: packet length from rx_desc
- *
- * This function will add the data contained in rx_buf->page to the skb.
- * It will just attach the page as a frag to the skb.
- * The function will then update the page offset.
- */
-void idpf_rx_add_frag(struct idpf_rx_buf *rx_buf, struct sk_buff *skb,
-		      unsigned int size)
+static bool idpf_rx_process_skb_fields(struct sk_buff *skb,
+				       const struct libeth_xdp_buff *xdp,
+				       struct libeth_rq_napi_stats *rs)
 {
-	u32 hr = netmem_get_pp(rx_buf->netmem)->p.offset;
+	struct idpf_rx_queue *rxq;
+
+	rxq = libeth_xdp_buff_to_rq(xdp, typeof(*rxq), xdp_rxq);
 
-	skb_add_rx_frag_netmem(skb, skb_shinfo(skb)->nr_frags, rx_buf->netmem,
-			       rx_buf->offset + hr, size, rx_buf->truesize);
+	return !__idpf_rx_process_skb_fields(rxq, skb, xdp->desc);
+}
+
+static void
+idpf_xdp_run_pass(struct libeth_xdp_buff *xdp, struct napi_struct *napi,
+		  struct libeth_rq_napi_stats *ss,
+		  const struct virtchnl2_rx_flex_desc_adv_nic_3 *desc)
+{
+	libeth_xdp_run_pass(xdp, NULL, napi, ss, desc, NULL,
+			    idpf_rx_process_skb_fields);
 }
 
 /**
@@ -3373,36 +3368,6 @@ static u32 idpf_rx_hsplit_wa(const struct libeth_fqe *hdr,
 	return copy;
 }
 
-/**
- * idpf_rx_build_skb - Allocate skb and populate it from header buffer
- * @buf: Rx buffer to pull data from
- * @size: the length of the packet
- *
- * This function allocates an skb. It then populates it with the page data from
- * the current receive descriptor, taking care to set up the skb correctly.
- */
-struct sk_buff *idpf_rx_build_skb(const struct libeth_fqe *buf, u32 size)
-{
-	struct page *buf_page = __netmem_to_page(buf->netmem);
-	u32 hr = buf_page->pp->p.offset;
-	struct sk_buff *skb;
-	void *va;
-
-	va = page_address(buf_page) + buf->offset;
-	prefetch(va + hr);
-
-	skb = napi_build_skb(va, buf->truesize);
-	if (unlikely(!skb))
-		return NULL;
-
-	skb_mark_for_recycle(skb);
-
-	skb_reserve(skb, hr);
-	__skb_put(skb, size);
-
-	return skb;
-}
-
 /**
  * idpf_rx_splitq_test_staterr - tests bits in Rx descriptor
  * status and error fields
@@ -3444,13 +3409,15 @@ static bool idpf_rx_splitq_is_eop(struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_de
  */
 static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
 {
-	int total_rx_bytes = 0, total_rx_pkts = 0;
 	struct idpf_buf_queue *rx_bufq = NULL;
-	struct sk_buff *skb = rxq->skb;
+	struct libeth_rq_napi_stats rs = { };
 	u16 ntc = rxq->next_to_clean;
+	LIBETH_XDP_ONSTACK_BUFF(xdp);
+
+	libeth_xdp_init_buff(xdp, &rxq->xdp, &rxq->xdp_rxq);
 
 	/* Process Rx packets bounded by budget */
-	while (likely(total_rx_pkts < budget)) {
+	while (likely(rs.packets < budget)) {
 		struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc;
 		struct libeth_fqe *hdr, *rx_buf = NULL;
 		struct idpf_sw_queue *refillq = NULL;
@@ -3516,7 +3483,7 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
 
 		hdr = &rx_bufq->hdr_buf[buf_id];
 
-		if (unlikely(!hdr_len && !skb)) {
+		if (unlikely(!hdr_len && !xdp->data)) {
 			hdr_len = idpf_rx_hsplit_wa(hdr, rx_buf, pkt_len);
 			/* If failed, drop both buffers by setting len to 0 */
 			pkt_len -= hdr_len ? : pkt_len;
@@ -3526,75 +3493,35 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
 			u64_stats_update_end(&rxq->stats_sync);
 		}
 
-		if (libeth_rx_sync_for_cpu(hdr, hdr_len)) {
-			skb = idpf_rx_build_skb(hdr, hdr_len);
-			if (!skb)
-				break;
-
-			u64_stats_update_begin(&rxq->stats_sync);
-			u64_stats_inc(&rxq->q_stats.hsplit_pkts);
-			u64_stats_update_end(&rxq->stats_sync);
-		}
+		if (libeth_xdp_process_buff(xdp, hdr, hdr_len))
+			rs.hsplit++;
 
 		hdr->netmem = 0;
 
 payload:
-		if (!libeth_rx_sync_for_cpu(rx_buf, pkt_len))
-			goto skip_data;
-
-		if (skb)
-			idpf_rx_add_frag(rx_buf, skb, pkt_len);
-		else
-			skb = idpf_rx_build_skb(rx_buf, pkt_len);
-
-		/* exit if we failed to retrieve a buffer */
-		if (!skb)
-			break;
-
-skip_data:
+		libeth_xdp_process_buff(xdp, rx_buf, pkt_len);
 		rx_buf->netmem = 0;
 
 		idpf_rx_post_buf_refill(refillq, buf_id);
 		IDPF_RX_BUMP_NTC(rxq, ntc);
 
 		/* skip if it is non EOP desc */
-		if (!idpf_rx_splitq_is_eop(rx_desc) || unlikely(!skb))
-			continue;
-
-		/* pad skb if needed (to make valid ethernet frame) */
-		if (eth_skb_pad(skb)) {
-			skb = NULL;
-			continue;
-		}
-
-		/* probably a little skewed due to removing CRC */
-		total_rx_bytes += skb->len;
-
-		/* protocol */
-		if (unlikely(idpf_rx_process_skb_fields(rxq, skb, rx_desc))) {
-			dev_kfree_skb_any(skb);
-			skb = NULL;
+		if (!idpf_rx_splitq_is_eop(rx_desc) || unlikely(!xdp->data))
 			continue;
-		}
 
-		/* send completed skb up the stack */
-		napi_gro_receive(rxq->napi, skb);
-		skb = NULL;
-
-		/* update budget accounting */
-		total_rx_pkts++;
+		idpf_xdp_run_pass(xdp, rxq->napi, &rs, rx_desc);
 	}
 
 	rxq->next_to_clean = ntc;
+	libeth_xdp_save_buff(&rxq->xdp, xdp);
 
-	rxq->skb = skb;
 	u64_stats_update_begin(&rxq->stats_sync);
-	u64_stats_add(&rxq->q_stats.packets, total_rx_pkts);
-	u64_stats_add(&rxq->q_stats.bytes, total_rx_bytes);
+	u64_stats_add(&rxq->q_stats.packets, rs.packets);
+	u64_stats_add(&rxq->q_stats.bytes, rs.bytes);
+	u64_stats_add(&rxq->q_stats.hsplit_pkts, rs.hsplit);
 	u64_stats_update_end(&rxq->stats_sync);
 
-	/* guarantee a trip back through this routine if there was a failure */
-	return total_rx_pkts;
+	return rs.packets;
 }
 
 /**
-- 
2.49.0

