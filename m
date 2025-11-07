Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA3DC41F59
	for <lists+intel-wired-lan@lfdr.de>; Sat, 08 Nov 2025 00:32:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D1FF606ED;
	Fri,  7 Nov 2025 23:32:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iAd9b8U0Xd3t; Fri,  7 Nov 2025 23:32:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 83690606EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762558350;
	bh=FhgynvB4H2iLt7fbk8K//qnOy7UMi/RywtEekBWQ2yc=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Z3T7Hr3ZcRbtdmu1Oj3/JHqffUqK/z3BZe+FsY54LqDjeQN8EMdXvszJGKWgMtVuh
	 qS/UXwkZZnGHW6457dq04GOJ4g1OxBEoe4Ymeb1WB/+FsxN5kDu21bSJzDvF61+viY
	 zRaGlCJQ1v9q6q0B5yKneJHprRUjZETggX7jfwMoBiba4GnvtyfVYU1h3VYud8FJKA
	 M8A57FIhAplgOBZ+hm5yUcoKAd4TZD/B/G3vVcqlox/DXYKZOnYh2FJCwa+WMtqKF+
	 r0QnmhaN/95/FyTDsejUc6Q010E+XSZxWP+QG7wUuq691u+NJhsoEAHmDxMN/dfNqv
	 63GKbwu4f6qfw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 83690606EE;
	Fri,  7 Nov 2025 23:32:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E76F72CC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 23:32:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CB38B40146
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 23:32:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yQjQLfvtVzxt for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Nov 2025 23:32:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CCCC24007C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CCCC24007C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CCCC24007C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 23:32:22 +0000 (UTC)
X-CSE-ConnectionGUID: GaqS81zxQ96/LB1fmCsPcg==
X-CSE-MsgGUID: X342S3asT4aXJR3Ic9YE9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11606"; a="64628783"
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="64628783"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 15:32:19 -0800
X-CSE-ConnectionGUID: GKc2YUZuS9i5qdb3G+ZGQg==
X-CSE-MsgGUID: VRvpoZ1xTUuTtSN94uRNyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="218815428"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.90])
 ([10.166.28.90])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 15:32:20 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Fri, 07 Nov 2025 15:31:49 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251107-jk-refactor-queue-stats-v3-5-771ae1414b2e@intel.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3937;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=Z+iNgR7A3aqU394PqDxWa/II2wAO5hBF06V7ijjqcBA=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhky+xsazrgzSJ8O+WSRnbrizoyZfcnXepxfaMk8LPeKXN
 3wpPnamo5SFQYyLQVZMkUXBIWTldeMJYVpvnOVg5rAygQxh4OIUgImwrWb4n2WUbF2TVXN7ffb3
 Ce+F+DacM+Y+V52u8+YO59Srcsdt5Rj+V9h85yjRmmkUL3DV0MXd6fnj86qlWeutX1T3bdy6x+A
 lJwA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762558343; x=1794094343;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=Z+iNgR7A3aqU394PqDxWa/II2wAO5hBF06V7ijjqcBA=;
 b=ECWL6nrXdw5/Wna9FbiPS6qqL5YH8NMHLZwmM4QW7/NLGgq+t2bLgsd3
 Tf38TfyRuA6ME7e9/6oXaox2EJQIaEevZuZlVBt/ZHiBpCvkUu4KP14sb
 JjmNwC5V+C9XPe6JgSGN1fBbTkL44qtG7Gp4ObWBPLZ1M83aFCy7zx83b
 kKT1p91eGQejX1jm9T9RFFD1q/JH9juysD311uMUXbBFvdeM/TMMioZ+0
 Y1J7E9q5RB4AlF8NecyptAZTzxkin2AaTy5Aq7iKC4WKKKBu1q0UANqGk
 hj6SSprZ2BL79Vl2Z5sAFdP/WDIFlvTJkwRhU/8eWr7xAi+Ja28wJjEyg
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ECWL6nrX
Subject: [Intel-wired-lan] [PATCH iwl-next v3 5/9] ice: pass pointer to
 ice_fetch_u64_stats_per_ring
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

The ice_fetch_u64_stats_per_ring function takes a pointer to the syncp from
the ring stats to synchronize reading of the packet stats. It also takes a
*copy* of the ice_q_stats fields instead of a pointer to the stats. This
completely defeats the point of using the u64_stats API. We pass the stats
by value, so they are static at the point of reading within the
u64_stats_fetch_retry loop.

Simplify the function to take a pointer to the ice_ring_stats instead of
two separate parameters. Additionally, since we never call this outside of
ice_main.c, make it a static function.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      |  3 ---
 drivers/net/ethernet/intel/ice/ice_main.c | 24 +++++++++---------------
 2 files changed, 9 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 147aaee192a7..5c01e886e83e 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -957,9 +957,6 @@ u16 ice_get_avail_rxq_count(struct ice_pf *pf);
 int ice_vsi_recfg_qs(struct ice_vsi *vsi, int new_rx, int new_tx, bool locked);
 void ice_update_vsi_stats(struct ice_vsi *vsi);
 void ice_update_pf_stats(struct ice_pf *pf);
-void
-ice_fetch_u64_stats_per_ring(struct u64_stats_sync *syncp,
-			     struct ice_q_stats stats, u64 *pkts, u64 *bytes);
 int ice_up(struct ice_vsi *vsi);
 int ice_down(struct ice_vsi *vsi);
 int ice_down_up(struct ice_vsi *vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index df5da7b4ec62..5a3bcbb5f63c 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6826,25 +6826,23 @@ int ice_up(struct ice_vsi *vsi)
 
 /**
  * ice_fetch_u64_stats_per_ring - get packets and bytes stats per ring
- * @syncp: pointer to u64_stats_sync
- * @stats: stats that pkts and bytes count will be taken from
+ * @stats: pointer to ring stats structure
  * @pkts: packets stats counter
  * @bytes: bytes stats counter
  *
  * This function fetches stats from the ring considering the atomic operations
  * that needs to be performed to read u64 values in 32 bit machine.
  */
-void
-ice_fetch_u64_stats_per_ring(struct u64_stats_sync *syncp,
-			     struct ice_q_stats stats, u64 *pkts, u64 *bytes)
+static void ice_fetch_u64_stats_per_ring(struct ice_ring_stats *stats,
+					 u64 *pkts, u64 *bytes)
 {
 	unsigned int start;
 
 	do {
-		start = u64_stats_fetch_begin(syncp);
-		*pkts = stats.pkts;
-		*bytes = stats.bytes;
-	} while (u64_stats_fetch_retry(syncp, start));
+		start = u64_stats_fetch_begin(&stats->syncp);
+		*pkts = stats->stats.pkts;
+		*bytes = stats->stats.bytes;
+	} while (u64_stats_fetch_retry(&stats->syncp, start));
 }
 
 /**
@@ -6868,9 +6866,7 @@ ice_update_vsi_tx_ring_stats(struct ice_vsi *vsi,
 		ring = READ_ONCE(rings[i]);
 		if (!ring || !ring->ring_stats)
 			continue;
-		ice_fetch_u64_stats_per_ring(&ring->ring_stats->syncp,
-					     ring->ring_stats->stats, &pkts,
-					     &bytes);
+		ice_fetch_u64_stats_per_ring(ring->ring_stats, &pkts, &bytes);
 		vsi_stats->tx_packets += pkts;
 		vsi_stats->tx_bytes += bytes;
 		vsi->tx_restart += ring->ring_stats->tx_stats.restart_q;
@@ -6914,9 +6910,7 @@ static void ice_update_vsi_ring_stats(struct ice_vsi *vsi)
 		struct ice_ring_stats *ring_stats;
 
 		ring_stats = ring->ring_stats;
-		ice_fetch_u64_stats_per_ring(&ring_stats->syncp,
-					     ring_stats->stats, &pkts,
-					     &bytes);
+		ice_fetch_u64_stats_per_ring(ring_stats, &pkts, &bytes);
 		vsi_stats->rx_packets += pkts;
 		vsi_stats->rx_bytes += bytes;
 		vsi->rx_buf_failed += ring_stats->rx_stats.alloc_buf_failed;

-- 
2.51.0.rc1.197.g6d975e95c9d7

