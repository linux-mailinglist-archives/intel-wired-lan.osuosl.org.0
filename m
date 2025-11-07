Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FDBCC41F56
	for <lists+intel-wired-lan@lfdr.de>; Sat, 08 Nov 2025 00:32:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0ED1C80F8D;
	Fri,  7 Nov 2025 23:32:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fmb-IIZCTRTH; Fri,  7 Nov 2025 23:32:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD2CA80EAE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762558347;
	bh=AL4bW6K9KZafmrhaakOUn4nZ0uF1A2MPLKFbKXPrAyc=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EjFmsnL6tw3GvRsBcamakYqWn7D8c06rDyW1hG8VK1oHZLRYRf/WkZ+qg6gjgL5xl
	 Pn0VexObZFIDJVgOO2Yry+DLQ8RlO/KZDqrxj1joxQCLppNDI5/3NhMZkER3qM5TUS
	 eDLguyDU+WThz/uQ26MToy4Ohras3UdatUpRfqNSaFqaKkcnYwBK2uv4S5cDI0Sa/D
	 MtwIk0+T4DzSG3C2zA0GQpEmtxfEhHnCVRKsUHRxFwZdI5PX7ByhuuuJ/4jjgfX0IW
	 bVDt0xuraJ3xvOboL92+fgv88A0BrkQ+CJk+sGHs4+Z738ySj2vwOA8KwcUOaAfLJb
	 pCw9EXnpOiYAg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD2CA80EAE;
	Fri,  7 Nov 2025 23:32:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B79392CC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 23:32:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9CE51606D5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 23:32:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sTuTLJXubKyG for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Nov 2025 23:32:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A9CA2606E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A9CA2606E2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A9CA2606E2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 23:32:21 +0000 (UTC)
X-CSE-ConnectionGUID: kBrnbvt9R9yF7jfy6KD46A==
X-CSE-MsgGUID: WsEV1/NbS8afvCYPGvAeFw==
X-IronPort-AV: E=McAfee;i="6800,10657,11606"; a="75824026"
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="75824026"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 15:32:21 -0800
X-CSE-ConnectionGUID: +/o9acoMSqWwhvfsJj8ChA==
X-CSE-MsgGUID: mYwVxW3STG6PDEXdfWitJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="218815440"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.90])
 ([10.166.28.90])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 15:32:20 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Fri, 07 Nov 2025 15:31:53 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251107-jk-refactor-queue-stats-v3-9-771ae1414b2e@intel.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=14275;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=CeR5iFXzahwXtvWS1DA0jvD2zHbNm7sKVasdCgUyuj0=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhky+xiZO+RXPyssv7Hnoe9xoo+RR14mZgpNz6qKXPZn+9
 t6l5tS+jlIWBjEuBlkxRRYFh5CV140nhGm9cZaDmcPKBDKEgYtTACZiXMjIsCJmz7MF3W9v79Bb
 27rxxuIVrTbvdn/vXeXycSPL3eotEw4xMrz47BEd+vfSG/HUyBdP2YtvxfbILHMX/tx1p1m2lC3
 qARsA
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762558342; x=1794094342;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=CeR5iFXzahwXtvWS1DA0jvD2zHbNm7sKVasdCgUyuj0=;
 b=aYjuC9IS2Y5FhAEUIc8ooXK/PuP0J0UYqehr3Yy1apO0yV85p62noiDp
 YK2oCYMhc82vZl9mTc2vhC7OEsOvHKxTHvLx12CfCfAHhetIDmg6JAXOu
 R484BwzF6vYArknlicNvtIfW69Y4ISpGHmHYKgVedCPnd/WW7LyQPC3P8
 3aypagstdITIxKdarhxUzyaf3ZNan3q3J0E0LgCsfGwYCO6RYWYD7Mu8y
 6rkm9nmaO+sG04oe0e1h/+b1V5adws/BrnNx6CzoMSD8trdkF01I2Tzcn
 kmsd8g3dhAijvuCsliOxrXTMZiW7AxMkPWgN8GE6kM4qErtlhPLDT0ZH5
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aYjuC9IS
Subject: [Intel-wired-lan] [PATCH iwl-next v3 9/9] ice: convert all ring
 stats to u64_stats_t
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

After several cleanups, the ice driver is now finally ready to convert all
Tx and Rx ring stats to the u64_stats_t and proper use of the u64 stats
APIs.

The final remaining part to cleanup is the VSI stats accumulation logic in
ice_update_vsi_ring_stats().

Refactor the function and its helpers so that all stat values (and not
just pkts and bytes) use the u64_stats APIs. The
ice_fetch_u64_(tx|rx)_stats functions read the stat values using
u64_stats_read and then copy them into local ice_vsi_(tx|rx)_stats
structures. This does require making a new struct with the stat fields as
u64.

The ice_update_vsi_(tx|rx)_ring_stats functions call the fetch functions
per ring and accumulate the result into one copy of the struct. This
accumulated total is then used to update the relevant VSI fields.

Since these are relatively small, the contents are all stored on the stack
rather than allocating and freeing memory.

Once the accumulator side is updated, the helper ice_stats_read and
ice_stats_inc and other related helper functions all easily translate to
use of u64_stats_read and u64_stats_inc. This completes the refactor and
ensures that all stats accesses now make proper use of the API.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.h |  28 +++--
 drivers/net/ethernet/intel/ice/ice_lib.c  |  29 ++---
 drivers/net/ethernet/intel/ice/ice_main.c | 180 ++++++++++++++++++++----------
 3 files changed, 147 insertions(+), 90 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index 227b75c941fc..1dcfc77a2ca7 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -133,18 +133,18 @@ struct ice_ring_stats {
 	struct rcu_head rcu;	/* to avoid race on free */
 	struct u64_stats_sync syncp;
 	struct_group(stats,
-		u64 pkts;
-		u64 bytes;
+		u64_stats_t pkts;
+		u64_stats_t bytes;
 		union {
 			struct_group(tx,
-				u64 tx_restart_q;
-				u64 tx_busy;
-				u64 tx_linearize;
+				u64_stats_t tx_restart_q;
+				u64_stats_t tx_busy;
+				u64_stats_t tx_linearize;
 			);
 			struct_group(rx,
-				u64 rx_non_eop_descs;
-				u64 rx_page_failed;
-				u64 rx_buf_failed;
+				u64_stats_t rx_non_eop_descs;
+				u64_stats_t rx_page_failed;
+				u64_stats_t rx_buf_failed;
 			);
 		};
 	);
@@ -162,7 +162,13 @@ struct ice_ring_stats {
  */
 #define ice_stats_read(stats, member) ({				\
 	struct ice_ring_stats *__stats = (stats);			\
-	__stats->member;						\
+	unsigned int start;						\
+	u64 val;							\
+	do {								\
+		start = u64_stats_fetch_begin(&__stats->syncp);		\
+		val = u64_stats_read(&__stats->member);			\
+	} while (u64_stats_fetch_retry(&__stats->syncp, start));	\
+	val;								\
 })
 
 /**
@@ -175,7 +181,9 @@ struct ice_ring_stats {
  */
 #define ice_stats_inc(stats, member) do {				\
 	struct ice_ring_stats *__stats = (stats);			\
-	__stats->member++;						\
+	u64_stats_update_begin(&__stats->syncp);			\
+	u64_stats_inc(&__stats->member);				\
+	u64_stats_update_end(&__stats->syncp);				\
 } while (0)
 
 enum ice_ring_state_t {
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 897df9362638..6923fafdbcbf 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3433,21 +3433,6 @@ int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc)
 	return ret;
 }
 
-/**
- * ice_update_ring_stats - Update ring statistics
- * @stats: stats to be updated
- * @pkts: number of processed packets
- * @bytes: number of processed bytes
- *
- * This function assumes that caller has acquired a u64_stats_sync lock.
- */
-static void ice_update_ring_stats(struct ice_ring_stats *stats,
-				  u64 pkts, u64 bytes)
-{
-	stats->bytes += bytes;
-	stats->pkts += pkts;
-}
-
 /**
  * ice_update_tx_ring_stats - Update Tx ring specific counters
  * @tx_ring: ring to update
@@ -3457,7 +3442,8 @@ static void ice_update_ring_stats(struct ice_ring_stats *stats,
 void ice_update_tx_ring_stats(struct ice_tx_ring *tx_ring, u64 pkts, u64 bytes)
 {
 	u64_stats_update_begin(&tx_ring->ring_stats->syncp);
-	ice_update_ring_stats(tx_ring->ring_stats, pkts, bytes);
+	u64_stats_add(&tx_ring->ring_stats->pkts, pkts);
+	u64_stats_add(&tx_ring->ring_stats->bytes, bytes);
 	u64_stats_update_end(&tx_ring->ring_stats->syncp);
 }
 
@@ -3470,7 +3456,8 @@ void ice_update_tx_ring_stats(struct ice_tx_ring *tx_ring, u64 pkts, u64 bytes)
 void ice_update_rx_ring_stats(struct ice_rx_ring *rx_ring, u64 pkts, u64 bytes)
 {
 	u64_stats_update_begin(&rx_ring->ring_stats->syncp);
-	ice_update_ring_stats(rx_ring->ring_stats, pkts, bytes);
+	u64_stats_add(&rx_ring->ring_stats->pkts, pkts);
+	u64_stats_add(&rx_ring->ring_stats->bytes, bytes);
 	u64_stats_update_end(&rx_ring->ring_stats->syncp);
 }
 
@@ -3487,8 +3474,8 @@ void ice_fetch_tx_ring_stats(const struct ice_tx_ring *ring,
 
 	do  {
 		start = u64_stats_fetch_begin(&ring->ring_stats->syncp);
-		*pkts = ring->ring_stats->pkts;
-		*bytes = ring->ring_stats->bytes;
+		*pkts = u64_stats_read(&ring->ring_stats->pkts);
+		*bytes = u64_stats_read(&ring->ring_stats->bytes);
 	} while (u64_stats_fetch_retry(&ring->ring_stats->syncp, start));
 }
 
@@ -3505,8 +3492,8 @@ void ice_fetch_rx_ring_stats(const struct ice_rx_ring *ring,
 
 	do  {
 		start = u64_stats_fetch_begin(&ring->ring_stats->syncp);
-		*pkts = ring->ring_stats->pkts;
-		*bytes = ring->ring_stats->bytes;
+		*pkts = u64_stats_read(&ring->ring_stats->pkts);
+		*bytes = u64_stats_read(&ring->ring_stats->bytes);
 	} while (u64_stats_fetch_retry(&ring->ring_stats->syncp, start));
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 885e85f478d8..5f63799de75e 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6824,54 +6824,132 @@ int ice_up(struct ice_vsi *vsi)
 	return err;
 }
 
+struct ice_vsi_tx_stats {
+	u64 pkts;
+	u64 bytes;
+	u64 tx_restart_q;
+	u64 tx_busy;
+	u64 tx_linearize;
+};
+
+struct ice_vsi_rx_stats {
+	u64 pkts;
+	u64 bytes;
+	u64 rx_non_eop_descs;
+	u64 rx_page_failed;
+	u64 rx_buf_failed;
+};
+
 /**
- * ice_fetch_u64_stats_per_ring - get packets and bytes stats per ring
- * @stats: pointer to ring stats structure
- * @pkts: packets stats counter
- * @bytes: bytes stats counter
+ * ice_fetch_u64_tx_stats - get Tx stats from a ring
+ * @ring: the Tx ring to copy stats from
+ * @copy: temporary storage for the ring statistics
  *
- * This function fetches stats from the ring considering the atomic operations
- * that needs to be performed to read u64 values in 32 bit machine.
+ * Fetch the u64 stats from the ring using u64_stats_fetch. This ensures each
+ * stat value is self-consistent, though not necessarily consistent w.r.t
+ * other stats.
  */
-static void ice_fetch_u64_stats_per_ring(struct ice_ring_stats *stats,
-					 u64 *pkts, u64 *bytes)
+static void ice_fetch_u64_tx_stats(struct ice_tx_ring *ring,
+				   struct ice_vsi_tx_stats *copy)
 {
+	struct ice_ring_stats *stats = ring->ring_stats;
 	unsigned int start;
 
 	do {
 		start = u64_stats_fetch_begin(&stats->syncp);
-		*pkts = stats->stats.pkts;
-		*bytes = stats->stats.bytes;
+		copy->pkts = u64_stats_read(&stats->pkts);
+		copy->bytes = u64_stats_read(&stats->bytes);
+		copy->tx_restart_q = u64_stats_read(&stats->tx_restart_q);
+		copy->tx_busy = u64_stats_read(&stats->tx_busy);
+		copy->tx_linearize = u64_stats_read(&stats->tx_linearize);
+	} while (u64_stats_fetch_retry(&stats->syncp, start));
+}
+
+/**
+ * ice_fetch_u64_rx_stats - get Rx stats from a ring
+ * @ring: the Rx ring to copy stats from
+ * @copy: temporary storage for the ring statistics
+ *
+ * Fetch the u64 stats from the ring using u64_stats_fetch. This ensures each
+ * stat value is self-consistent, though not necessarily consistent w.r.t
+ * other stats.
+ */
+static void ice_fetch_u64_rx_stats(struct ice_rx_ring *ring,
+				   struct ice_vsi_rx_stats *copy)
+{
+	struct ice_ring_stats *stats = ring->ring_stats;
+	unsigned int start;
+
+	do {
+		start = u64_stats_fetch_begin(&stats->syncp);
+		copy->pkts = u64_stats_read(&stats->pkts);
+		copy->bytes = u64_stats_read(&stats->bytes);
+		copy->rx_non_eop_descs =
+			u64_stats_read(&stats->rx_non_eop_descs);
+		copy->rx_page_failed = u64_stats_read(&stats->rx_page_failed);
+		copy->rx_buf_failed = u64_stats_read(&stats->rx_buf_failed);
 	} while (u64_stats_fetch_retry(&stats->syncp, start));
 }
 
 /**
  * ice_update_vsi_tx_ring_stats - Update VSI Tx ring stats counters
  * @vsi: the VSI to be updated
- * @vsi_stats: the stats struct to be updated
+ * @vsi_stats: accumulated stats for this VSI
  * @rings: rings to work on
  * @count: number of rings
  */
-static void
-ice_update_vsi_tx_ring_stats(struct ice_vsi *vsi,
-			     struct rtnl_link_stats64 *vsi_stats,
-			     struct ice_tx_ring **rings, u16 count)
+static void ice_update_vsi_tx_ring_stats(struct ice_vsi *vsi,
+					 struct ice_vsi_tx_stats *vsi_stats,
+					 struct ice_tx_ring **rings, u16 count)
 {
+	struct ice_vsi_tx_stats copy = {};
 	u16 i;
 
 	for (i = 0; i < count; i++) {
 		struct ice_tx_ring *ring;
-		u64 pkts = 0, bytes = 0;
 
 		ring = READ_ONCE(rings[i]);
 		if (!ring || !ring->ring_stats)
 			continue;
-		ice_fetch_u64_stats_per_ring(ring->ring_stats, &pkts, &bytes);
-		vsi_stats->tx_packets += pkts;
-		vsi_stats->tx_bytes += bytes;
-		vsi->tx_restart += ring->ring_stats->tx_restart_q;
-		vsi->tx_busy += ring->ring_stats->tx_busy;
-		vsi->tx_linearize += ring->ring_stats->tx_linearize;
+
+		ice_fetch_u64_tx_stats(ring, &copy);
+
+		vsi_stats->pkts += copy.pkts;
+		vsi_stats->bytes += copy.bytes;
+		vsi_stats->tx_restart_q += copy.tx_restart_q;
+		vsi_stats->tx_busy += copy.tx_busy;
+		vsi_stats->tx_linearize += copy.tx_linearize;
+	}
+}
+
+/**
+ * ice_update_vsi_rx_ring_stats - Update VSI Rx ring stats counters
+ * @vsi: the VSI to be updated
+ * @vsi_stats: accumulated stats for this VSI
+ * @rings: rings to work on
+ * @count: number of rings
+ */
+static void ice_update_vsi_rx_ring_stats(struct ice_vsi *vsi,
+					 struct ice_vsi_rx_stats *vsi_stats,
+					 struct ice_rx_ring **rings, u16 count)
+{
+	struct ice_vsi_rx_stats copy = {};
+	u16 i;
+
+	for (i = 0; i < count; i++) {
+		struct ice_rx_ring *ring;
+
+		ring = READ_ONCE(rings[i]);
+		if (!ring || !ring->ring_stats)
+			continue;
+
+		ice_fetch_u64_rx_stats(ring, &copy);
+
+		vsi_stats->pkts += copy.pkts;
+		vsi_stats->bytes += copy.bytes;
+		vsi_stats->rx_non_eop_descs += copy.rx_non_eop_descs;
+		vsi_stats->rx_page_failed += copy.rx_page_failed;
+		vsi_stats->rx_buf_failed += copy.rx_buf_failed;
 	}
 }
 
@@ -6882,48 +6960,34 @@ ice_update_vsi_tx_ring_stats(struct ice_vsi *vsi,
 static void ice_update_vsi_ring_stats(struct ice_vsi *vsi)
 {
 	struct rtnl_link_stats64 *net_stats, *stats_prev;
-	struct rtnl_link_stats64 *vsi_stats;
+	struct ice_vsi_tx_stats tx_stats = {};
+	struct ice_vsi_rx_stats rx_stats = {};
 	struct ice_pf *pf = vsi->back;
-	u64 pkts, bytes;
-	int i;
-
-	vsi_stats = kzalloc(sizeof(*vsi_stats), GFP_ATOMIC);
-	if (!vsi_stats)
-		return;
-
-	/* reset non-netdev (extended) stats */
-	vsi->tx_restart = 0;
-	vsi->tx_busy = 0;
-	vsi->tx_linearize = 0;
-	vsi->rx_buf_failed = 0;
-	vsi->rx_page_failed = 0;
 
 	rcu_read_lock();
 
 	/* update Tx rings counters */
-	ice_update_vsi_tx_ring_stats(vsi, vsi_stats, vsi->tx_rings,
+	ice_update_vsi_tx_ring_stats(vsi, &tx_stats, vsi->tx_rings,
 				     vsi->num_txq);
 
 	/* update Rx rings counters */
-	ice_for_each_rxq(vsi, i) {
-		struct ice_rx_ring *ring = READ_ONCE(vsi->rx_rings[i]);
-		struct ice_ring_stats *ring_stats;
-
-		ring_stats = ring->ring_stats;
-		ice_fetch_u64_stats_per_ring(ring_stats, &pkts, &bytes);
-		vsi_stats->rx_packets += pkts;
-		vsi_stats->rx_bytes += bytes;
-		vsi->rx_buf_failed += ring_stats->rx_buf_failed;
-		vsi->rx_page_failed += ring_stats->rx_page_failed;
-	}
+	ice_update_vsi_rx_ring_stats(vsi, &rx_stats, vsi->rx_rings,
+				     vsi->num_rxq);
 
 	/* update XDP Tx rings counters */
 	if (ice_is_xdp_ena_vsi(vsi))
-		ice_update_vsi_tx_ring_stats(vsi, vsi_stats, vsi->xdp_rings,
+		ice_update_vsi_tx_ring_stats(vsi, &tx_stats, vsi->xdp_rings,
 					     vsi->num_xdp_txq);
 
 	rcu_read_unlock();
 
+	/* Save non-netdev (extended) stats */
+	vsi->tx_restart = tx_stats.tx_restart_q;
+	vsi->tx_busy = tx_stats.tx_busy;
+	vsi->tx_linearize = tx_stats.tx_linearize;
+	vsi->rx_buf_failed = rx_stats.rx_buf_failed;
+	vsi->rx_page_failed = rx_stats.rx_page_failed;
+
 	net_stats = &vsi->net_stats;
 	stats_prev = &vsi->net_stats_prev;
 
@@ -6933,18 +6997,16 @@ static void ice_update_vsi_ring_stats(struct ice_vsi *vsi)
 	 * let's skip this round.
 	 */
 	if (likely(pf->stat_prev_loaded)) {
-		net_stats->tx_packets += vsi_stats->tx_packets - stats_prev->tx_packets;
-		net_stats->tx_bytes += vsi_stats->tx_bytes - stats_prev->tx_bytes;
-		net_stats->rx_packets += vsi_stats->rx_packets - stats_prev->rx_packets;
-		net_stats->rx_bytes += vsi_stats->rx_bytes - stats_prev->rx_bytes;
+		net_stats->tx_packets += tx_stats.pkts - stats_prev->tx_packets;
+		net_stats->tx_bytes += tx_stats.bytes - stats_prev->tx_bytes;
+		net_stats->rx_packets += rx_stats.pkts - stats_prev->rx_packets;
+		net_stats->rx_bytes += rx_stats.bytes - stats_prev->rx_bytes;
 	}
 
-	stats_prev->tx_packets = vsi_stats->tx_packets;
-	stats_prev->tx_bytes = vsi_stats->tx_bytes;
-	stats_prev->rx_packets = vsi_stats->rx_packets;
-	stats_prev->rx_bytes = vsi_stats->rx_bytes;
-
-	kfree(vsi_stats);
+	stats_prev->tx_packets = tx_stats.pkts;
+	stats_prev->tx_bytes = tx_stats.bytes;
+	stats_prev->rx_packets = rx_stats.pkts;
+	stats_prev->rx_bytes = rx_stats.bytes;
 }
 
 /**

-- 
2.51.0.rc1.197.g6d975e95c9d7

