Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 89ECB349C7B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Mar 2021 23:45:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C74540F83;
	Thu, 25 Mar 2021 22:45:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PGTC42l7SJls; Thu, 25 Mar 2021 22:45:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DAE6040F78;
	Thu, 25 Mar 2021 22:45:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BCF6C1BF909
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B479940F78
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ntEfxv_K5NQB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Mar 2021 22:45:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CB93940F77
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:04 +0000 (UTC)
IronPort-SDR: TvCpXh5GdK8yoJibCJV/r8f6A3G4wNDS8ef99wqH37NlIa7B7QpahlgMwCpWezW/DyfqJfzP+K
 x+5tpasv7rVA==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="255031246"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="255031246"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 15:45:02 -0700
IronPort-SDR: FD1YLl/1U+fxBl5KMugRcJN42rb7EOYqF/pBfQ1GrNQS4Q9bGbcXrGk9dXeMw+WH7Mj074yQ4m
 u/ii5cAouGrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="375251375"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga003.jf.intel.com with ESMTP; 25 Mar 2021 15:45:01 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Mar 2021 15:35:16 -0700
Message-Id: <20210325223517.17722-13-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
References: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S57 13/14] ice: Remove rx_gro_dropped stat
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>

Tracking of the rx_gro_dropped statistic was removed in
commit f73fc40327c0 ("ice: drop dead code in ice_receive_skb()").
Remove the associated variables and its reporting to ethtool stats.

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         | 1 -
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 1 -
 drivers/net/ethernet/intel/ice/ice_main.c    | 4 +---
 drivers/net/ethernet/intel/ice/ice_txrx.h    | 1 -
 4 files changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 79652b72c38b..a3289dc3bcbf 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -266,7 +266,6 @@ struct ice_vsi {
 	u32 tx_busy;
 	u32 rx_buf_failed;
 	u32 rx_page_failed;
-	u32 rx_gro_dropped;
 	u16 num_q_vectors;
 	u16 base_vector;		/* IRQ base for OS reserved vectors */
 	enum ice_vsi_type type;
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index d5b20764d24a..f2bc8f1e86cc 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -60,7 +60,6 @@ static const struct ice_stats ice_gstrings_vsi_stats[] = {
 	ICE_VSI_STAT("rx_unknown_protocol", eth_stats.rx_unknown_protocol),
 	ICE_VSI_STAT("rx_alloc_fail", rx_buf_failed),
 	ICE_VSI_STAT("rx_pg_alloc_fail", rx_page_failed),
-	ICE_VSI_STAT("rx_gro_dropped", rx_gro_dropped),
 	ICE_VSI_STAT("tx_errors", eth_stats.tx_errors),
 	ICE_VSI_STAT("tx_linearize", tx_linearize),
 	ICE_VSI_STAT("tx_busy", tx_busy),
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index d84a0e05a0c0..b3229202a300 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5375,7 +5375,6 @@ static void ice_update_vsi_ring_stats(struct ice_vsi *vsi)
 	vsi->tx_linearize = 0;
 	vsi->rx_buf_failed = 0;
 	vsi->rx_page_failed = 0;
-	vsi->rx_gro_dropped = 0;
 
 	rcu_read_lock();
 
@@ -5390,7 +5389,6 @@ static void ice_update_vsi_ring_stats(struct ice_vsi *vsi)
 		vsi_stats->rx_bytes += bytes;
 		vsi->rx_buf_failed += ring->rx_stats.alloc_buf_failed;
 		vsi->rx_page_failed += ring->rx_stats.alloc_page_failed;
-		vsi->rx_gro_dropped += ring->rx_stats.gro_dropped;
 	}
 
 	/* update XDP Tx rings counters */
@@ -5422,7 +5420,7 @@ void ice_update_vsi_stats(struct ice_vsi *vsi)
 	ice_update_eth_stats(vsi);
 
 	cur_ns->tx_errors = cur_es->tx_errors;
-	cur_ns->rx_dropped = cur_es->rx_discards + vsi->rx_gro_dropped;
+	cur_ns->rx_dropped = cur_es->rx_discards;
 	cur_ns->tx_dropped = cur_es->tx_discards;
 	cur_ns->multicast = cur_es->rx_multicast;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index a13eb8cf1731..681cc4a3ece7 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -192,7 +192,6 @@ struct ice_rxq_stats {
 	u64 non_eop_descs;
 	u64 alloc_page_failed;
 	u64 alloc_buf_failed;
-	u64 gro_dropped; /* GRO returned dropped */
 };
 
 enum ice_ring_state_t {
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
