Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A98AC41F6B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 08 Nov 2025 00:32:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F09680EBE;
	Fri,  7 Nov 2025 23:32:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9CXgejwiVc3H; Fri,  7 Nov 2025 23:32:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 830FB80F93
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762558352;
	bh=zBYccadPwLqUPlYWlq9EBYEa3VMFUF5l4aFDe8lWoi8=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XqDSb67U1gApeI9HoENfSra0MuXHk59UDcp18VnbTHcWlrEwFeEXAaOEgVIYT0wes
	 VdtM2CR2TVfQFkknwe1OXLiXoEwtWkP5/J9j5o0yRJyZMlBNpUjsi3cRvUnhZsCuOX
	 eNjHq56AMRsm9dv0i5NslF+eBLgjzdYUEa6sjXdEK6+bau2NFjkDxVFzn6D1V1ewAc
	 JfQjbe3Br5I3ldtaTdtI9yGeGo4mQyhgDiasPPV1H0VgRUEdY7MNvOljkM1hqQ1Y67
	 g97Uzgzeuk0P3QJb9ziX5x97+P8ktbsO3SBmTkC50goWIwVLYBubHTyR9lljfFfkof
	 Wi7kArqW3/X2A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 830FB80F93;
	Fri,  7 Nov 2025 23:32:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 02D6925D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 23:32:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2123480EAE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 23:32:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p5fEn1uwJVSB for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Nov 2025 23:32:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0DAAA80EB0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0DAAA80EB0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0DAAA80EB0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 23:32:24 +0000 (UTC)
X-CSE-ConnectionGUID: c0FBb2TKQNa8TYlilod/Rw==
X-CSE-MsgGUID: p/78pvxARna+g5bD+HZCmw==
X-IronPort-AV: E=McAfee;i="6800,10657,11606"; a="64628785"
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="64628785"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 15:32:20 -0800
X-CSE-ConnectionGUID: L9Bj4B7/T9qukzblr6dSOQ==
X-CSE-MsgGUID: DjPTnkdmT6yt+mpY78e2WA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="218815434"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.90])
 ([10.166.28.90])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 15:32:20 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Fri, 07 Nov 2025 15:31:51 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251107-jk-refactor-queue-stats-v3-7-771ae1414b2e@intel.com>
References: <20251107-jk-refactor-queue-stats-v3-0-771ae1414b2e@intel.com>
In-Reply-To: <20251107-jk-refactor-queue-stats-v3-0-771ae1414b2e@intel.com>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
X-Mailer: b4 0.15-dev-f4b34
X-Developer-Signature: v=1; a=openpgp-sha256; l=6434;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=N14jooCdbjxdMTibgGX7jieDfuSxz1rOyy7hLaIefRQ=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhky+xqbjIQcXTFRf+/TqnWyd8N9TTxfNMrS03hxfX9o66
 cXi2TkXOkpZGMS4GGTFFFkUHEJWXjeeEKb1xlkOZg4rE8gQBi5OAZjIf06G/6kv+p6Wf+3mUZq3
 aal5+Xalsx7XeiTuFQY+E/H8fYGn5yfDP7XDB09ohHot5rE8q5P7XWWPYKamIOfPxCcfF+xSZG2
 rYgUA
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762558344; x=1794094344;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=N14jooCdbjxdMTibgGX7jieDfuSxz1rOyy7hLaIefRQ=;
 b=Fw/YWYt0ZWtTyfvyW40bG7iyl/JqIcqsYwLPHfG9IVIdax6gS4sF/b7J
 i2+yi78JSTVMst49TAkgZkeieDVnoOA3Nh1y6JxRXiHYxQtCMCDmRKpxf
 udJfm5I9ZrIpLrt+8Oz0sn/RC+vzSs99T9mOQR0w/gyvasc6cAaC81x7Y
 o6FGqHkdZ6s6pjBRPNnDwI+UL7NyE6mpQf1dfX8ysrES2RuYng1aHTBJ7
 I0GabZLy6p+178ClGZjpQNsRhZcm8NUlZINIVjOOJcFV/dOY/OYRyH20x
 GvfHb+XIgAu2jnHZEeJs+D3qYk8PwdDMrpchSF1a5jMAwU8aKPt2bBb2T
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Fw/YWYt0
Subject: [Intel-wired-lan] [PATCH iwl-next v3 7/9] ice: use u64_stats API to
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

