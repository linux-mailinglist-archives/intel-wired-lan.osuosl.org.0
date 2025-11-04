Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 805FDC2EB21
	for <lists+intel-wired-lan@lfdr.de>; Tue, 04 Nov 2025 02:07:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 00D6E81462;
	Tue,  4 Nov 2025 01:07:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oQ96kEeSCZmS; Tue,  4 Nov 2025 01:07:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 624E38146E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762218449;
	bh=NQ8C3algTeWq2sktCAucMMv4FOqqFbD4SO4hVsiYdEs=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Jl/etm20aDZUmxx2QTRVYP5N90/Sz5bLNsZT3KFJN95v02SLrYBIbu8G3/i5X+HEM
	 QCNIXaC3oB5tzsf50g07Os0tTImOUVeEN2B0Q+hkZyMjIh1773DvLG4YsMQmxvvgbG
	 ADumCvk6ifkV27tyDs/UNm7zT5epPHQIrgopt8M7r1kqAeR2Ttw7XQ4tmX2F4rgJiz
	 qpYa0Umpdnxh/kCOR+KPZtqwIYUd+6yGBCYkyl2+z21rHgr275WB3kgSBO7mjHsVwV
	 u7IAGbTr+UXjORdK8W3DivpdLpBJKEvXn1s6CkrRd7jGB195d7fMs/HTWEz45GGXnt
	 dtmSsw2KaKnZQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 624E38146E;
	Tue,  4 Nov 2025 01:07:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1C2A3278
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 01:07:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0247181447
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 01:07:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yVxGw6A8th5D for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Nov 2025 01:07:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 40F4381404
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 40F4381404
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 40F4381404
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 01:07:21 +0000 (UTC)
X-CSE-ConnectionGUID: A+L6SeZSRLyEcIkd9xGxwg==
X-CSE-MsgGUID: n71aDP9cRyqpMCzx9Lt17w==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64190638"
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; d="scan'208";a="64190638"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 17:07:18 -0800
X-CSE-ConnectionGUID: HmycEO++TxqvXmeM2ExSbw==
X-CSE-MsgGUID: WuFN8PoOQYudoYjFBdOnPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; d="scan'208";a="217828765"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.90])
 ([10.166.28.90])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 17:07:16 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 03 Nov 2025 17:06:50 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-jk-refactor-queue-stats-v1-5-164d2ed859b6@intel.com>
References: <20251103-jk-refactor-queue-stats-v1-0-164d2ed859b6@intel.com>
In-Reply-To: <20251103-jk-refactor-queue-stats-v1-0-164d2ed859b6@intel.com>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Jacob Keller <jacob.e.keller@intel.com>
X-Mailer: b4 0.15-dev-f4b34
X-Developer-Signature: v=1; a=openpgp-sha256; l=3871;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=eXe7k9g9DKs67jX1VLa/cfXwUYD3gelS1WdrUTtR6UQ=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhkzOwIMSr7ZPl1bJW/yIJfJsxpHYlj0sphn9Vm/4t3l6p
 f336rndUcrCIMbFICumyKLgELLyuvGEMK03znIwc1iZQIYwcHEKwEQUtzH8D/XSPF9s+sR5/7TM
 WX7lZ++3MFdMW+K17rPj0X1dq/+rZzAybIlem2/WvDzrZoBndZqnremrp/+uJSu0Pr1tuLuyY/9
 xdgA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762218441; x=1793754441;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=eXe7k9g9DKs67jX1VLa/cfXwUYD3gelS1WdrUTtR6UQ=;
 b=W0k1V2XWbNnfF6YCko0bmrIYt4fXQKAv3buQLEltqoi5/ogr/jxT2zm2
 P6h+cG2pSOk1da5MuqjiUJoMG1/4jRogrXd23qM7D6q18wJKJZEoplRMu
 1o+qi4fLGyJINH9/0Qdq/w3sD9gwW/cu7FlzUebhZoykoR6/rDmEak7tH
 gnro2oPumMUovSdjm8KtjCBzWVwJoa+mVtEF1jT04KKor82kR11ucvfix
 1HBIQdc6Nc2YZ1K/bk/bswA9I/98//yVfMmgQ0Xm+Fp6OwE9ZMc1X9ldJ
 jYp1UzvNwmBuvKdTMbl4MogWLZe9N4Qx8aZFu6loWaHkEv5GqcYbvMa3e
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=W0k1V2XW
Subject: [Intel-wired-lan] [PATCH iwl-next 5/9] ice: pass pointer to
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

