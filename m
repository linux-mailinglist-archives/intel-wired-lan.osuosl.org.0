Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 49628C37DB9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 05 Nov 2025 22:07:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D438F613F8;
	Wed,  5 Nov 2025 21:07:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7I7TUVUQE7jC; Wed,  5 Nov 2025 21:07:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 17E58613FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762376841;
	bh=FhgynvB4H2iLt7fbk8K//qnOy7UMi/RywtEekBWQ2yc=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Mz98AHj5Znunj2AFhbQ4AXidOkoy0adKLQwCiDtMl9Rd8nbWJfzpXdE4NWmYUvl4L
	 nLu8aH0Bm2MLqaxMRrEix+7oZPJ/KHPn3Kr1lipQTJlxqRwCQbGVX9O7cVmvHLSbld
	 j3kpGtowbewgSX1N3FcyPayY5GyOt7PdEPg0Zk1OnCPmUYOWn33F0nNmU5lZcVNguu
	 c8GRBQF6+QMIKcP59KBhAEo6uqbiaipV/0sbiFyt4MWHR96gOwuEVytzUIPVGY1u3q
	 Gv3pHIV0QahNNjTeTc41nYeFkb1LFiehe4MG6njxoF0/9x/8a7mnaOsEdy4DzPsukK
	 w7rCAln9Tj4iQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 17E58613FB;
	Wed,  5 Nov 2025 21:07:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 28419462
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 21:07:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1F8F5411A9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 21:07:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0sJ6zxn1D64X for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Nov 2025 21:07:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8062B4108F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8062B4108F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8062B4108F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 21:07:14 +0000 (UTC)
X-CSE-ConnectionGUID: mjCEDHmHR4mNo5xtnDlPog==
X-CSE-MsgGUID: uZBmui6EQtOINtD7lIyl4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="75114376"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="75114376"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 13:07:13 -0800
X-CSE-ConnectionGUID: 2f7MdbgkSIeXEOef7PsfPw==
X-CSE-MsgGUID: zomOHQBsQxCqIqhkFeWWDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="187513293"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.90])
 ([10.166.28.90])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 13:07:13 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 05 Nov 2025 13:06:37 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251105-jk-refactor-queue-stats-v2-5-8652557f9572@intel.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3937;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=Z+iNgR7A3aqU394PqDxWa/II2wAO5hBF06V7ijjqcBA=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhkzuPfVZPdm/upUtvv759MZr45VX3NG6jM07eDhKq7I+X
 r3/492rjlIWBjEuBlkxRRYFh5CV140nhGm9cZaDmcPKBDKEgYtTACbS+4bhf8iM60ofHKpZItq2
 P9hvel7ZWGX/3I2uDvuntC47Uihz+grDb/aNYipsF7X6FVlSDP/VXFF+xLV9ToJMP7uFgnvz7kX
 zOQA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762376834; x=1793912834;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=Z+iNgR7A3aqU394PqDxWa/II2wAO5hBF06V7ijjqcBA=;
 b=MYWJna5vRprczaYbj//zEWsMRuccvXOAkChNPnI5M6hb+87of50BYLj4
 H0rbEZcWxiO2jrQrnqbQ6AjOWMR8piPTmVVqkCFeqy4CNG5OqWfGR8tX1
 Q6H9bBU3iA5pWDnwNSc8OUHTtcxzQMlF6SuSGrNQaE7G7twgzTsmBgNWh
 RMKYXOzvHRcDLvqXhSTSsz98xLEHgGI2H6MY5JEaf8EoB4sVqRijPUBEV
 Sq5eTwhXdCx3sQ/VRXDtFEMRxBFxtD/m93Xmd5oqholsOO1y8KQmFpkOx
 MTqSZqoWjb0CgvYjc610dkPB7fIhiwNTU9e+BqvnZ64maoYc7709M0H71
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MYWJna5v
Subject: [Intel-wired-lan] [PATCH iwl-next v2 5/9] ice: pass pointer to
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

