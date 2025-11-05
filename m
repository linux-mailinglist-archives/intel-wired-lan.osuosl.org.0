Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 88FFFC37DBF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 05 Nov 2025 22:07:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC95161352;
	Wed,  5 Nov 2025 21:07:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fMrLPzF7LioN; Wed,  5 Nov 2025 21:07:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 33EC3613FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762376843;
	bh=1ouK7AQljFvGgI8luvyo/eilhfA7r897khHGrGMhFX0=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ocOwapR2cScihNs9SoYpu5LGLQSuqWr3C+y53FQyxyPbcfMrrn9woGF9p4tDTAGeh
	 Y01Qsb28QQdz5Dc1b5P7QkTqjImsDuQCwjeaNz/Kzpp3OcdwsrOvCWCiokC66lyGSN
	 IzPgS3URr7MDDZYhby22rZ/4GzFNdcWh7BEst9QFJXjlZ7V/7if9V2Ae20KqfJ+8Rm
	 MG2dU6SrGLCC/DUcMbMeMAHL1yN0xyd99JFLEDiWfd5ILU+BI/tsnClXKdjeEN8QcW
	 dVdc6iXUBj1MaGR1hCtyCOTsRd9rG/3q0r1yw7mUh26uD7eRByF0+eh37BZkodD33g
	 dhvoo1qWKyhsQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33EC3613FE;
	Wed,  5 Nov 2025 21:07:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 36EB0462
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 21:07:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A64A34119F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 21:07:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4ZU_a6OaECEd for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Nov 2025 21:07:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B1C8F41235
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B1C8F41235
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B1C8F41235
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 21:07:14 +0000 (UTC)
X-CSE-ConnectionGUID: an1WQ8MfSrq/kyEwZm5TAQ==
X-CSE-MsgGUID: rLn9AWI1Qy+pr/OL8KSzZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="75114377"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="75114377"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 13:07:13 -0800
X-CSE-ConnectionGUID: zkPjhP/TTamgEtlT7Wn8YA==
X-CSE-MsgGUID: 9eajtL+RQHOWKdKNJoHvdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="187513297"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.90])
 ([10.166.28.90])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 13:07:13 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 05 Nov 2025 13:06:38 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251105-jk-refactor-queue-stats-v2-6-8652557f9572@intel.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5248;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=Rldb2D9j1VHcR1RsRWwn7amCQaTKCKdlzcrUTXw50Lg=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhkzuPfVrMiorfLh1pGccOcFwvDxm64Ya02mxWp8YH5xxP
 3XsXSx/RykLgxgXg6yYIouCQ8jK68YTwrTeOMvBzGFlAhnCwMUpABP5ysHI0Lj9zGfT6u6zQtmv
 y14tmXjqj0WDj67LoQvTxW1nGhnY7mZk+Lx9Ts/pitehx0W8P8w4f9pZWm9tlENRlFCxQYZHtrg
 0EwA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762376835; x=1793912835;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=Rldb2D9j1VHcR1RsRWwn7amCQaTKCKdlzcrUTXw50Lg=;
 b=hqkpmaKB6uYqsMSumaLd/0DT8TM62KjnKe39heuElgPJAmflEPnnRTAa
 o1TAkBNRFOGnp5UeEiBWIYnjoCTV1gm++uAwd3AuNWhQTrGSnRgig56Rs
 NERzNsyRw0VwbkV76P3ohq+mwaO3fDrHz1htK50l9esYq7KgrFC8G1wLh
 kshmRFjHoQN52NI3Gbg5WUYRx3vP18ftD3O6WJkQSJX5ZE8EziRihHm22
 Sxs8bf18JVF7KGaVK4vXDIFfKErgMOiyi/LS5KAq/Ol6iRh6KbsOUCAdT
 u418KALN+8Ff50O8tTfLTGyy9og/TzyaGU3TneW+Tak27ugBAz+fxwyXe
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hqkpmaKB
Subject: [Intel-wired-lan] [PATCH iwl-next v2 6/9] ice: remove ice_q_stats
 struct and use struct_group
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

The ice_qp_reset_stats function resets the stats for all rings on a VSI. It
currently behaves differently for Tx and Rx rings. For Rx rings, it only
clears the rx_stats which do not include the pkt and byte counts. For Tx
rings and XDP rings, it clears only the pkt and byte counts.

We could add extra memset calls to cover both the stats and relevant
tx/rx stats fields. Instead, lets convert stats into a struct_group which
contains both the pkts and bytes fields as well as the Tx or Rx stats, and
remove the ice_q_stats structure entirely.

The only remaining user of ice_q_stats is the ice_q_stats_len function in
ice_ethtool.c, which just counts the number of fields. Replace this with a
simple multiplication by 2. I find this to be simpler to reason about than
relying on knowing the layout of the ice_q_stats structure.

Now that the stats field of the ice_ring_stats covers all of the statistic
values, the ice_qp_reset_stats function will properly zero out all of the
fields.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.h    | 18 ++++++++----------
 drivers/net/ethernet/intel/ice/ice_base.c    |  4 ++--
 drivers/net/ethernet/intel/ice/ice_ethtool.c |  4 ++--
 drivers/net/ethernet/intel/ice/ice_lib.c     |  7 ++++---
 4 files changed, 16 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index f1fe1775baed..8586d5bebac7 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -129,11 +129,6 @@ struct ice_tx_offload_params {
 	u8 header_len;
 };
 
-struct ice_q_stats {
-	u64 pkts;
-	u64 bytes;
-};
-
 struct ice_txq_stats {
 	u64 restart_q;
 	u64 tx_busy;
@@ -148,12 +143,15 @@ struct ice_rxq_stats {
 
 struct ice_ring_stats {
 	struct rcu_head rcu;	/* to avoid race on free */
-	struct ice_q_stats stats;
 	struct u64_stats_sync syncp;
-	union {
-		struct ice_txq_stats tx_stats;
-		struct ice_rxq_stats rx_stats;
-	};
+	struct_group(stats,
+		u64 pkts;
+		u64 bytes;
+		union {
+			struct ice_txq_stats tx_stats;
+			struct ice_rxq_stats rx_stats;
+		};
+	);
 };
 
 enum ice_ring_state_t {
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index eadb1e3d12b3..afbff8aa9ceb 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -1414,8 +1414,8 @@ static void ice_qp_reset_stats(struct ice_vsi *vsi, u16 q_idx)
 	if (!vsi_stat)
 		return;
 
-	memset(&vsi_stat->rx_ring_stats[q_idx]->rx_stats, 0,
-	       sizeof(vsi_stat->rx_ring_stats[q_idx]->rx_stats));
+	memset(&vsi_stat->rx_ring_stats[q_idx]->stats, 0,
+	       sizeof(vsi_stat->rx_ring_stats[q_idx]->stats));
 	memset(&vsi_stat->tx_ring_stats[q_idx]->stats, 0,
 	       sizeof(vsi_stat->tx_ring_stats[q_idx]->stats));
 	if (vsi->xdp_rings)
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index a1d9abee97e5..0bc6f31a2b06 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -33,8 +33,8 @@ static int ice_q_stats_len(struct net_device *netdev)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 
-	return ((np->vsi->alloc_txq + np->vsi->alloc_rxq) *
-		(sizeof(struct ice_q_stats) / sizeof(u64)));
+	/* One packets and one bytes count per queue */
+	return ((np->vsi->alloc_txq + np->vsi->alloc_rxq) * 2);
 }
 
 #define ICE_PF_STATS_LEN	ARRAY_SIZE(ice_gstrings_pf_stats)
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 46cd8f33c38f..26d17813f426 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3441,7 +3441,8 @@ int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc)
  *
  * This function assumes that caller has acquired a u64_stats_sync lock.
  */
-static void ice_update_ring_stats(struct ice_q_stats *stats, u64 pkts, u64 bytes)
+static void ice_update_ring_stats(struct ice_ring_stats *stats,
+				  u64 pkts, u64 bytes)
 {
 	stats->bytes += bytes;
 	stats->pkts += pkts;
@@ -3456,7 +3457,7 @@ static void ice_update_ring_stats(struct ice_q_stats *stats, u64 pkts, u64 bytes
 void ice_update_tx_ring_stats(struct ice_tx_ring *tx_ring, u64 pkts, u64 bytes)
 {
 	u64_stats_update_begin(&tx_ring->ring_stats->syncp);
-	ice_update_ring_stats(&tx_ring->ring_stats->stats, pkts, bytes);
+	ice_update_ring_stats(tx_ring->ring_stats, pkts, bytes);
 	u64_stats_update_end(&tx_ring->ring_stats->syncp);
 }
 
@@ -3469,7 +3470,7 @@ void ice_update_tx_ring_stats(struct ice_tx_ring *tx_ring, u64 pkts, u64 bytes)
 void ice_update_rx_ring_stats(struct ice_rx_ring *rx_ring, u64 pkts, u64 bytes)
 {
 	u64_stats_update_begin(&rx_ring->ring_stats->syncp);
-	ice_update_ring_stats(&rx_ring->ring_stats->stats, pkts, bytes);
+	ice_update_ring_stats(rx_ring->ring_stats, pkts, bytes);
 	u64_stats_update_end(&rx_ring->ring_stats->syncp);
 }
 

-- 
2.51.0.rc1.197.g6d975e95c9d7

