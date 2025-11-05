Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF55C37DB3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 05 Nov 2025 22:07:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC277613EA;
	Wed,  5 Nov 2025 21:07:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Yc37yMefzOIk; Wed,  5 Nov 2025 21:07:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2B6E0613F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762376839;
	bh=zBYccadPwLqUPlYWlq9EBYEa3VMFUF5l4aFDe8lWoi8=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QXvHV4/71PTOlfMRUJMN9xYcCBZ5ZnNESi6/2qrnQp0c7/B72aZAIksmguhaUD5KO
	 ZoJVmriQcgRvPucS0AWRTQJPaJw+IjEmDwP4zBQSB1WHyicegSJrDVwEIqARZcrJ77
	 fZAjjnmlGQZSlLcVRBNCADFB40pCs93GcCS7Pwlqt9j1HJhqumITZnEQdR6WU3+81f
	 XS5o0GbWQZxmxthbF+KAuUg99sw1zV5rIlQCCUnAwgaZZ0jSUlIUjrCm8CZVVP1zZN
	 zKFpjiEVxtO7KtdzwOIrmrueICKaK1zpuIsZOrCKNRZt4rF4NgmWpyGCkLZHybVyml
	 vFBLnb8p9hKaA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B6E0613F8;
	Wed,  5 Nov 2025 21:07:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2889CB2A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 21:07:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A972984590
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 21:07:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tL3XHSbNQLIR for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Nov 2025 21:07:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BD38A84589
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD38A84589
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BD38A84589
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 21:07:14 +0000 (UTC)
X-CSE-ConnectionGUID: H+02TLPsR86xytMFz/RCmA==
X-CSE-MsgGUID: Hy2U4kHPQBaoxYMoEFHwgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="75114378"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="75114378"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 13:07:14 -0800
X-CSE-ConnectionGUID: 7D9sTbdgQRi7mMsMJ0Bvbg==
X-CSE-MsgGUID: HmliTO0VQou0T39w1BZC/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="187513300"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.90])
 ([10.166.28.90])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 13:07:13 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 05 Nov 2025 13:06:39 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251105-jk-refactor-queue-stats-v2-7-8652557f9572@intel.com>
References: <20251105-jk-refactor-queue-stats-v2-0-8652557f9572@intel.com>
In-Reply-To: <20251105-jk-refactor-queue-stats-v2-0-8652557f9572@intel.com>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Jacob Keller <jacob.e.keller@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
X-Mailer: b4 0.15-dev-f4b34
X-Developer-Signature: v=1; a=openpgp-sha256; l=6434;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=N14jooCdbjxdMTibgGX7jieDfuSxz1rOyy7hLaIefRQ=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhkzuPQ36LHtyU11i1avuHm7qZrVgWNXN8+3IAxHjJvHJx
 5+tt2jtKGVhEONikBVTZFFwCFl53XhCmNYbZzmYOaxMIEMYuDgFYCKZlxgZ7r8wV3qxQGZbVdnl
 vq1fLGROOQT8EMgquz+H+dyHPFOeGkaGxW5b5l5fusVX/8n1a9VzdqxtXC919cnS6MNzul6/2T5
 1ATsA
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762376835; x=1793912835;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=N14jooCdbjxdMTibgGX7jieDfuSxz1rOyy7hLaIefRQ=;
 b=DBsvF1aWRbKcYFUFhDxBeCYn2+BMurOb44/pXwH3bACArX2JCsQOp9Kf
 xn0ZTwWfO0szoLjgxEj8a8ceGNVnQOvakyPdO6TvWmKjAq+AaFPICJ64/
 4N4JuF7qUmU+OsKAsRXyEAPYhSpOUgvIZ266GPMcqq/gu9+xyT0FB5amB
 G/CLwKUcEXc7u4NtlszP2WkiQ6d/xpax/KP2K6jboYwtN9b6PHSa3uNhU
 J7woItGOtkGTJ+fE3aczzpRx4F/Gk5e2p1xcKRDgiOHkO11orkGlguP3K
 wGvy3QAnKxtqauUUdUqnLcetGo9usWaRlQUmAxFskLr2opCiGF7oZ0Jkr
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DBsvF1aW
Subject: [Intel-wired-lan] [PATCH iwl-next v2 7/9] ice: use u64_stats API to
 access pkts/bytes in dim sample
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

The __ice_update_sample and __ice_get_ethtool_stats functions directly
accesses the pkts and bytes counters from the ring stats. A following
change is going to update the fields to be u64_stats_t type, and will need
to be accessed appropriately. This will ensure that the accesses do not
cause load/store tearing.

Add helper functions similar to the ones used for updating the stats
values, and use them. This ensures use of the syncp pointer on 32-bit
architectures. Once the fields are updated to u64_stats_t, it will then
properly avoid tears on all architectures.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.h     |  6 +++++
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 26 +++++++++++++-------
 drivers/net/ethernet/intel/ice/ice_lib.c     | 36 ++++++++++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_txrx.c    | 29 +++++++++++-----------
 4 files changed, 75 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 2cb1eb98b9da..49454d98dcfe 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -92,6 +92,12 @@ void ice_update_tx_ring_stats(struct ice_tx_ring *ring, u64 pkts, u64 bytes);
 
 void ice_update_rx_ring_stats(struct ice_rx_ring *ring, u64 pkts, u64 bytes);
 
+void ice_fetch_tx_ring_stats(const struct ice_tx_ring *ring,
+			     u64 *pkts, u64 *bytes);
+
+void ice_fetch_rx_ring_stats(const struct ice_rx_ring *ring,
+			     u64 *pkts, u64 *bytes);
+
 void ice_write_intrl(struct ice_q_vector *q_vector, u8 intrl);
 void ice_write_itr(struct ice_ring_container *rc, u16 itr);
 void ice_set_q_vector_intrl(struct ice_q_vector *q_vector);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 0bc6f31a2b06..6c93e0e91ef5 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1942,25 +1942,35 @@ __ice_get_ethtool_stats(struct net_device *netdev,
 	rcu_read_lock();
 
 	ice_for_each_alloc_txq(vsi, j) {
+		u64 pkts, bytes;
+
 		tx_ring = READ_ONCE(vsi->tx_rings[j]);
-		if (tx_ring && tx_ring->ring_stats) {
-			data[i++] = tx_ring->ring_stats->stats.pkts;
-			data[i++] = tx_ring->ring_stats->stats.bytes;
-		} else {
+		if (!tx_ring || !tx_ring->ring_stats) {
 			data[i++] = 0;
 			data[i++] = 0;
+			continue;
 		}
+
+		ice_fetch_tx_ring_stats(tx_ring, &pkts, &bytes);
+
+		data[i++] = pkts;
+		data[i++] = bytes;
 	}
 
 	ice_for_each_alloc_rxq(vsi, j) {
+		u64 pkts, bytes;
+
 		rx_ring = READ_ONCE(vsi->rx_rings[j]);
-		if (rx_ring && rx_ring->ring_stats) {
-			data[i++] = rx_ring->ring_stats->stats.pkts;
-			data[i++] = rx_ring->ring_stats->stats.bytes;
-		} else {
+		if (!rx_ring || !rx_ring->ring_stats) {
 			data[i++] = 0;
 			data[i++] = 0;
+			continue;
 		}
+
+		ice_fetch_rx_ring_stats(rx_ring, &pkts, &bytes);
+
+		data[i++] = pkts;
+		data[i++] = bytes;
 	}
 
 	rcu_read_unlock();
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 26d17813f426..897df9362638 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3474,6 +3474,42 @@ void ice_update_rx_ring_stats(struct ice_rx_ring *rx_ring, u64 pkts, u64 bytes)
 	u64_stats_update_end(&rx_ring->ring_stats->syncp);
 }
 
+/**
+ * ice_fetch_tx_ring_stats - Fetch Tx ring packet and byte counters
+ * @ring: ring to update
+ * @pkts: number of processed packets
+ * @bytes: number of processed bytes
+ */
+void ice_fetch_tx_ring_stats(const struct ice_tx_ring *ring,
+			     u64 *pkts, u64 *bytes)
+{
+	unsigned int start;
+
+	do  {
+		start = u64_stats_fetch_begin(&ring->ring_stats->syncp);
+		*pkts = ring->ring_stats->pkts;
+		*bytes = ring->ring_stats->bytes;
+	} while (u64_stats_fetch_retry(&ring->ring_stats->syncp, start));
+}
+
+/**
+ * ice_fetch_rx_ring_stats - Fetch Rx ring packet and byte counters
+ * @ring: ring to read
+ * @pkts: number of processed packets
+ * @bytes: number of processed bytes
+ */
+void ice_fetch_rx_ring_stats(const struct ice_rx_ring *ring,
+			     u64 *pkts, u64 *bytes)
+{
+	unsigned int start;
+
+	do  {
+		start = u64_stats_fetch_begin(&ring->ring_stats->syncp);
+		*pkts = ring->ring_stats->pkts;
+		*bytes = ring->ring_stats->bytes;
+	} while (u64_stats_fetch_retry(&ring->ring_stats->syncp, start));
+}
+
 /**
  * ice_is_dflt_vsi_in_use - check if the default forwarding VSI is being used
  * @pi: port info of the switch with default VSI
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 30073ed9ca99..f0f5133c389f 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1087,35 +1087,36 @@ static void __ice_update_sample(struct ice_q_vector *q_vector,
 				struct dim_sample *sample,
 				bool is_tx)
 {
-	u64 packets = 0, bytes = 0;
+	u64 total_packets = 0, total_bytes = 0, pkts, bytes;
 
 	if (is_tx) {
 		struct ice_tx_ring *tx_ring;
 
 		ice_for_each_tx_ring(tx_ring, *rc) {
-			struct ice_ring_stats *ring_stats;
-
-			ring_stats = tx_ring->ring_stats;
-			if (!ring_stats)
+			if (!tx_ring->ring_stats)
 				continue;
-			packets += ring_stats->stats.pkts;
-			bytes += ring_stats->stats.bytes;
+
+			ice_fetch_tx_ring_stats(tx_ring, &pkts, &bytes);
+
+			total_packets += pkts;
+			total_bytes += bytes;
 		}
 	} else {
 		struct ice_rx_ring *rx_ring;
 
 		ice_for_each_rx_ring(rx_ring, *rc) {
-			struct ice_ring_stats *ring_stats;
-
-			ring_stats = rx_ring->ring_stats;
-			if (!ring_stats)
+			if (!rx_ring->ring_stats)
 				continue;
-			packets += ring_stats->stats.pkts;
-			bytes += ring_stats->stats.bytes;
+
+			ice_fetch_rx_ring_stats(rx_ring, &pkts, &bytes);
+
+			total_packets += pkts;
+			total_bytes += bytes;
 		}
 	}
 
-	dim_update_sample(q_vector->total_events, packets, bytes, sample);
+	dim_update_sample(q_vector->total_events,
+			  total_packets, total_bytes, sample);
 	sample->comp_ctr = 0;
 
 	/* if dim settings get stale, like when not updated for 1

-- 
2.51.0.rc1.197.g6d975e95c9d7

