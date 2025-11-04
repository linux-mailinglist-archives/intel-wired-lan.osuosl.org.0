Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 61DF2C2EB1E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 04 Nov 2025 02:07:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6436C60BAE;
	Tue,  4 Nov 2025 01:07:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id blnU51yvDELF; Tue,  4 Nov 2025 01:07:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 92ED060BB2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762218448;
	bh=Zm7YHzov/eMu8vRAILjfV9yDRAwev3zK/DGerkwedE8=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eyDreaw6WiQ/zfvnN+300j/vU73JdBtcyAtNOoSEliCh0UP1PWHwGm1OaF+Q/NdS7
	 ti7uzvPSebteYoKCIuZwghz8Gd9zMW9rNi4YN1ypgn30XnfgEtFt4USoTmvkCkhB92
	 ERBRXHPQDgdgRXtHbRobkXT3yNi1ovurLn3WxLmiWIrK1JSJarL+9BlNizbcb9ehmi
	 gQzAwUPWWPLjmGTxwUhgojKd8DAPn9TaNdEEUk378LRBeYGHGvx1qN4rqliFzPpPNH
	 738ucqpZwdAEU3cHIa4nx2rL0aiN6V47QjXvCHaIBdijcNSVhQhFG0xjZLuTkXweXC
	 lNyAVNXVuONoA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 92ED060BB2;
	Tue,  4 Nov 2025 01:07:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 149EA222
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 01:07:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B27F38142A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 01:07:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HZ28Ikgxeoi0 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Nov 2025 01:07:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BB6D181458
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB6D181458
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BB6D181458
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 01:07:21 +0000 (UTC)
X-CSE-ConnectionGUID: gEuVeHVCQ7SAnaAsk6NhBQ==
X-CSE-MsgGUID: lL5TKol1RV2CV1KxjiRgkQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64190642"
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; d="scan'208";a="64190642"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 17:07:19 -0800
X-CSE-ConnectionGUID: lpBghXs5S12bYnIlMTTd/Q==
X-CSE-MsgGUID: AZTaFQy4RmW/v3SJDkMiyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; d="scan'208";a="217828775"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.90])
 ([10.166.28.90])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 17:07:17 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 03 Nov 2025 17:06:53 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-jk-refactor-queue-stats-v1-8-164d2ed859b6@intel.com>
References: <20251103-jk-refactor-queue-stats-v1-0-164d2ed859b6@intel.com>
In-Reply-To: <20251103-jk-refactor-queue-stats-v1-0-164d2ed859b6@intel.com>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Jacob Keller <jacob.e.keller@intel.com>
X-Mailer: b4 0.15-dev-f4b34
X-Developer-Signature: v=1; a=openpgp-sha256; l=9638;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=sAciYumvB+M1glL/CFtE2lxzzn9b0I6ctiSY6CZ1slM=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhkzOwENSFrlmin/q9TJfLr1ms1PP7aqkkmjEVoMnNZfPK
 yz5umhFRykLgxgXg6yYIouCQ8jK68YTwrTeOMvBzGFlAhnCwMUpABNJcmT4w7vRcVXAjLX3rN/s
 dl2+Qnha2fy9Cfp3D+cLfTIKKBNbpsLI8P3lxK/ZHr9vPLuuI9UlEVw+UaHr/3Omvbzlspf0exN
 8OAA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762218442; x=1793754442;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=sAciYumvB+M1glL/CFtE2lxzzn9b0I6ctiSY6CZ1slM=;
 b=P77ox7xX9Ma5bH1f4++G3u6Wbx1wXMlhaf+KMsYU65B7jn9f8NHUqxNa
 4rGs95zaNzDHQlR3buCuuyDL96J0hlX4rAfVjl5yK+AkXT2Sc1Cvyp8aI
 qwFnN2h5x6/1uqH+BTytAcB0sr3p5aCxMiGC8bIlRJC7T6diXXkF5dARl
 pzSo8xFcfq9WGzUowFE0iclOV/7YvXV1pQQt4g9+YJFbYbQkRcFMKq10z
 5FvDiJ//IvcE4/lphhiIo2a9mTfcPzqR4A/33z1/xONxRPsK4KNU6bCF2
 bgnBLKbi5nD1WaqhWoNuCqyVq1eu1cNggYWM+FwgcOCsM+Oh/z/tzsM4L
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=P77ox7xX
Subject: [Intel-wired-lan] [PATCH iwl-next 8/9] ice: shorten ring stat names
 and add accessors
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

The ice Tx/Rx hotpath has a few statistics counters for tracking unexpected
events. These values are stored as u64 but are not accumulated using the
u64_stats API. This could result in load/tear stores on some architectures.
Even some 64-bit architectures could have issues since the fields are not
read or written using ACCESS_ONCE or READ_ONCE.

A following change is going to refactor the stats accumulator code to use
the u64_stats API for all of these stats, and to use u64_stats_read and
u64_stats_inc properly to prevent load/store tears on all architectures.

Using u64_stats_inc and the syncp pointer is slightly verbose and would be
duplicated in a number of places in the Tx and Rx hot path. Add accessor
macros for the cases where only a single stat value is touched at once. To
keep lines short, also shorten the stats names and convert ice_txq_stats
and ice_rxq_stats to struct_group.

This will ease the transition to properly using the u64_stats API in the
following change.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.h     | 52 +++++++++++++++++++--------
 drivers/net/ethernet/intel/ice/ice_txrx_lib.h |  2 +-
 drivers/net/ethernet/intel/ice/ice_main.c     | 12 +++----
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 14 ++++----
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  2 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c      |  4 +--
 6 files changed, 55 insertions(+), 31 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index 8586d5bebac7..cf3656dc560c 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -129,18 +129,6 @@ struct ice_tx_offload_params {
 	u8 header_len;
 };
 
-struct ice_txq_stats {
-	u64 restart_q;
-	u64 tx_busy;
-	u64 tx_linearize;
-};
-
-struct ice_rxq_stats {
-	u64 non_eop_descs;
-	u64 alloc_page_failed;
-	u64 alloc_buf_failed;
-};
-
 struct ice_ring_stats {
 	struct rcu_head rcu;	/* to avoid race on free */
 	struct u64_stats_sync syncp;
@@ -148,12 +136,48 @@ struct ice_ring_stats {
 		u64 pkts;
 		u64 bytes;
 		union {
-			struct ice_txq_stats tx_stats;
-			struct ice_rxq_stats rx_stats;
+			struct_group(tx,
+				u64 tx_restart_q;
+				u64 tx_busy;
+				u64 tx_linearize;
+			);
+			struct_group(rx,
+				u64 rx_non_eop_descs;
+				u64 rx_page_failed;
+				u64 rx_buf_failed;
+			);
 		};
 	);
 };
 
+/**
+ * ice_stats_read - Read a single ring stat value
+ * @stats: pointer to ring_stats structure for a queue
+ * @member: the ice_ring_stats member to read
+ *
+ * Shorthand for reading a single 64-bit stat value from struct
+ * ice_ring_stats.
+ *
+ * Return: the value of the requested stat.
+ */
+#define ice_stats_read(stats, member) ({				\
+	struct ice_ring_stats *__stats = (stats);			\
+	__stats->member;						\
+})
+
+/**
+ * ice_stats_inc - Increment a single ring stat value
+ * @stats: pointer to the ring_stats structure for a queue
+ * @member: the ice_string_stats member to increment
+ *
+ * Shorthand for incrementing a single 64-bit stat value in struct
+ * ice_ring_stats.
+ */
+#define ice_stats_inc(stats, member) do {				\
+	struct ice_ring_stats *__stats = (stats);			\
+	__stats->member++;						\
+} while (0)
+
 enum ice_ring_state_t {
 	ICE_TX_XPS_INIT_DONE,
 	ICE_TX_NBITS,
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
index 6a3f10f7a53f..f17990b68b62 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
@@ -38,7 +38,7 @@ ice_is_non_eop(const struct ice_rx_ring *rx_ring,
 	if (likely(ice_test_staterr(rx_desc->wb.status_error0, ICE_RXD_EOF)))
 		return false;
 
-	rx_ring->ring_stats->rx_stats.non_eop_descs++;
+	ice_stats_inc(rx_ring->ring_stats, rx_non_eop_descs);
 
 	return true;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 5a3bcbb5f63c..885e85f478d8 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -159,7 +159,7 @@ static void ice_check_for_hang_subtask(struct ice_pf *pf)
 			 * prev_pkt would be negative if there was no
 			 * pending work.
 			 */
-			packets = ring_stats->stats.pkts & INT_MAX;
+			packets = ice_stats_read(ring_stats, pkts) & INT_MAX;
 			if (tx_ring->prev_pkt == packets) {
 				/* Trigger sw interrupt to revive the queue */
 				ice_trigger_sw_intr(hw, tx_ring->q_vector);
@@ -6869,9 +6869,9 @@ ice_update_vsi_tx_ring_stats(struct ice_vsi *vsi,
 		ice_fetch_u64_stats_per_ring(ring->ring_stats, &pkts, &bytes);
 		vsi_stats->tx_packets += pkts;
 		vsi_stats->tx_bytes += bytes;
-		vsi->tx_restart += ring->ring_stats->tx_stats.restart_q;
-		vsi->tx_busy += ring->ring_stats->tx_stats.tx_busy;
-		vsi->tx_linearize += ring->ring_stats->tx_stats.tx_linearize;
+		vsi->tx_restart += ring->ring_stats->tx_restart_q;
+		vsi->tx_busy += ring->ring_stats->tx_busy;
+		vsi->tx_linearize += ring->ring_stats->tx_linearize;
 	}
 }
 
@@ -6913,8 +6913,8 @@ static void ice_update_vsi_ring_stats(struct ice_vsi *vsi)
 		ice_fetch_u64_stats_per_ring(ring_stats, &pkts, &bytes);
 		vsi_stats->rx_packets += pkts;
 		vsi_stats->rx_bytes += bytes;
-		vsi->rx_buf_failed += ring_stats->rx_stats.alloc_buf_failed;
-		vsi->rx_page_failed += ring_stats->rx_stats.alloc_page_failed;
+		vsi->rx_buf_failed += ring_stats->rx_buf_failed;
+		vsi->rx_page_failed += ring_stats->rx_page_failed;
 	}
 
 	/* update XDP Tx rings counters */
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index f0f5133c389f..ddd40c87772a 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -379,7 +379,7 @@ static bool ice_clean_tx_irq(struct ice_tx_ring *tx_ring, int napi_budget)
 		if (netif_tx_queue_stopped(txring_txq(tx_ring)) &&
 		    !test_bit(ICE_VSI_DOWN, vsi->state)) {
 			netif_tx_wake_queue(txring_txq(tx_ring));
-			++tx_ring->ring_stats->tx_stats.restart_q;
+			ice_stats_inc(tx_ring->ring_stats, tx_restart_q);
 		}
 	}
 
@@ -849,7 +849,7 @@ bool ice_alloc_rx_bufs(struct ice_rx_ring *rx_ring, unsigned int cleaned_count)
 
 		addr = libeth_rx_alloc(&fq, ntu);
 		if (addr == DMA_MAPPING_ERROR) {
-			rx_ring->ring_stats->rx_stats.alloc_page_failed++;
+			ice_stats_inc(rx_ring->ring_stats, rx_page_failed);
 			break;
 		}
 
@@ -863,7 +863,7 @@ bool ice_alloc_rx_bufs(struct ice_rx_ring *rx_ring, unsigned int cleaned_count)
 
 		addr = libeth_rx_alloc(&hdr_fq, ntu);
 		if (addr == DMA_MAPPING_ERROR) {
-			rx_ring->ring_stats->rx_stats.alloc_page_failed++;
+			ice_stats_inc(rx_ring->ring_stats, rx_page_failed);
 
 			libeth_rx_recycle_slow(fq.fqes[ntu].netmem);
 			break;
@@ -1045,7 +1045,7 @@ static int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 		/* exit if we failed to retrieve a buffer */
 		if (!skb) {
 			libeth_xdp_return_buff_slow(xdp);
-			rx_ring->ring_stats->rx_stats.alloc_buf_failed++;
+			ice_stats_inc(rx_ring->ring_stats, rx_buf_failed);
 			continue;
 		}
 
@@ -1363,7 +1363,7 @@ static int __ice_maybe_stop_tx(struct ice_tx_ring *tx_ring, unsigned int size)
 
 	/* A reprieve! - use start_queue because it doesn't call schedule */
 	netif_tx_start_queue(txring_txq(tx_ring));
-	++tx_ring->ring_stats->tx_stats.restart_q;
+	ice_stats_inc(tx_ring->ring_stats, tx_restart_q);
 	return 0;
 }
 
@@ -2165,7 +2165,7 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct ice_tx_ring *tx_ring)
 		if (__skb_linearize(skb))
 			goto out_drop;
 		count = ice_txd_use_count(skb->len);
-		tx_ring->ring_stats->tx_stats.tx_linearize++;
+		ice_stats_inc(tx_ring->ring_stats, tx_linearize);
 	}
 
 	/* need: 1 descriptor per page * PAGE_SIZE/ICE_MAX_DATA_PER_TXD,
@@ -2176,7 +2176,7 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct ice_tx_ring *tx_ring)
 	 */
 	if (ice_maybe_stop_tx(tx_ring, count + ICE_DESCS_PER_CACHE_LINE +
 			      ICE_DESCS_FOR_CTX_DESC)) {
-		tx_ring->ring_stats->tx_stats.tx_busy++;
+		ice_stats_inc(tx_ring->ring_stats, tx_busy);
 		return NETDEV_TX_BUSY;
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index 956da38d63b0..e68f3e5d35b4 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -480,7 +480,7 @@ int __ice_xmit_xdp_ring(struct xdp_buff *xdp, struct ice_tx_ring *xdp_ring,
 	return ICE_XDP_CONSUMED;
 
 busy:
-	xdp_ring->ring_stats->tx_stats.tx_busy++;
+	ice_stats_inc(xdp_ring->ring_stats, tx_busy);
 
 	return ICE_XDP_CONSUMED;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 989ff1fd9110..953e68ed0f9a 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -497,7 +497,7 @@ static int ice_xmit_xdp_tx_zc(struct xdp_buff *xdp,
 	return ICE_XDP_TX;
 
 busy:
-	xdp_ring->ring_stats->tx_stats.tx_busy++;
+	ice_stats_inc(xdp_ring->ring_stats, tx_busy);
 
 	return ICE_XDP_CONSUMED;
 }
@@ -659,7 +659,7 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring,
 			xsk_buff_free(first);
 			first = NULL;
 
-			rx_ring->ring_stats->rx_stats.alloc_buf_failed++;
+			ice_stats_inc(rx_ring->ring_stats, rx_buf_failed);
 			continue;
 		}
 

-- 
2.51.0.rc1.197.g6d975e95c9d7

