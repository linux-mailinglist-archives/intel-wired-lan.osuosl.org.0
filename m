Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3AEC2EB15
	for <lists+intel-wired-lan@lfdr.de>; Tue, 04 Nov 2025 02:07:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 10FB04074D;
	Tue,  4 Nov 2025 01:07:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dgyXrZe3D8ws; Tue,  4 Nov 2025 01:07:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5B6A94076A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762218447;
	bh=/qirftMF3XZ2IXOMMDpHGTCZ5gL2MiBX8mSLWrpXiLI=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CkTwvETG13JY6pjZk6GYWtYSBYINSwXv/kx5+NA6zfMPK6LL8l0xXnJJ10uPQeoRj
	 5jjXko8lJm51K2ga5gAMBGYukySog6pPWpp0RngD0iuj6m41fZ3ytULf62RjvMEJKV
	 Bwk8Uyy8zSOSh2LyF3+4ODSO5p4N1raX43fvmEvdF/gx1wFv/IgvmopBAzz6CzD1qu
	 10O74bdWE51ofG+MFPCtr3knxBZxues2Ylzd6gGZMS1ZwsHeKTfV+Xjkir3T1JjWvk
	 WmKX1Bh6QlYZNIz7onoZPOETGlaWYjCuqjQo/9E0sgaFue7a4hCdA/xBkixGxdFWCu
	 SD0JN+4QELf2g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B6A94076A;
	Tue,  4 Nov 2025 01:07:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 40221278
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 01:07:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 42AE440363
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 01:07:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8KMXNapXH494 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Nov 2025 01:07:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8B02640382
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B02640382
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8B02640382
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 01:07:21 +0000 (UTC)
X-CSE-ConnectionGUID: 4UpX7HgZRuqSq9MB4w8KCw==
X-CSE-MsgGUID: ald73QrBSSCd1xuAGzEyEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64190641"
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; d="scan'208";a="64190641"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 17:07:19 -0800
X-CSE-ConnectionGUID: /u6ZniPoTNGGw7W2DubAaw==
X-CSE-MsgGUID: zT+VPdM6TMyXT5+oym0X2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; d="scan'208";a="217828772"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.90])
 ([10.166.28.90])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 17:07:16 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 03 Nov 2025 17:06:52 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-jk-refactor-queue-stats-v1-7-164d2ed859b6@intel.com>
References: <20251103-jk-refactor-queue-stats-v1-0-164d2ed859b6@intel.com>
In-Reply-To: <20251103-jk-refactor-queue-stats-v1-0-164d2ed859b6@intel.com>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Jacob Keller <jacob.e.keller@intel.com>
X-Mailer: b4 0.15-dev-f4b34
X-Developer-Signature: v=1; a=openpgp-sha256; l=6368;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=sE8Oq9tY1dUzCVDqM7QC2zprMi2tuNz63igFw+gBju8=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhkzOwENbtPNjbTJ6Xqit6DvhYahXxMsqkrMqf2LW6sK0G
 71Trlt0lLIwiHExyIopsig4hKy8bjwhTOuNsxzMHFYmkCEMXJwCMJE/eYwMO49dNAh+ZJmnrOgs
 enH79DcH1/5fpFC9eFnhnYtdjT2b4hgZnkzZMX3G+QbV2FfffiXxbfaVmx2X6SO67LtAllCXReU
 sLgA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762218441; x=1793754441;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=sE8Oq9tY1dUzCVDqM7QC2zprMi2tuNz63igFw+gBju8=;
 b=kejvV2vJVQANBdQrcFqZnDvwELMEn/AEKGWp+y0GRFCl/+zVS1In/eWP
 ZIuhxyLB123wbqm3rrwVIyuIbU/F7gIokmJCpaXZ8FAvmO9h5AkGdYA6+
 tUSAgnT4jjD5YKYtn5amUbHhEs8JAYpaC+ZCUyq9CHIk/cYDh/mf5PaLV
 irzJ96lBBCOaE4vOznXyGWSH+4jYsghNI4g0G877ojPacmDjK8aMUzLNK
 lxaakdfdjtgnw5H0Bkp2RqNz4KLoB4D+VXpzDDb6MdE3ESn/k6E+Iccnd
 ytRg3k9O1YAc2keq75qxFNbbfzDDMSE8Ru9yOSaIIGBRpcqul1RLLM7TV
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kejvV2vJ
Subject: [Intel-wired-lan] [PATCH iwl-next 7/9] ice: use u64_stats API to
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
index c6dd297582c1..1c8b6129835d 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3470,6 +3470,42 @@ void ice_update_rx_ring_stats(struct ice_rx_ring *rx_ring, u64 pkts, u64 bytes)
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

