Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CCAF72EC5EA
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Jan 2021 22:56:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 548DD8693F;
	Wed,  6 Jan 2021 21:56:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1_l6qaNq0eGn; Wed,  6 Jan 2021 21:56:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 40E0F86949;
	Wed,  6 Jan 2021 21:56:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5CD601BF5A0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jan 2021 21:56:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 58F5F873DA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jan 2021 21:56:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E3Q56YB-Elna for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Jan 2021 21:56:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AC4D1873E1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jan 2021 21:56:00 +0000 (UTC)
IronPort-SDR: ABxbqDHIINYcK6kqCXs1I3dFJ6AdYbtJOtFj/aOOCL4XOF86rLXBL2vLJQoh5NWV0CaSRf7L5r
 4TwRNVcECpvA==
X-IronPort-AV: E=McAfee;i="6000,8403,9856"; a="177441308"
X-IronPort-AV: E=Sophos;i="5.79,328,1602572400"; d="scan'208";a="177441308"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2021 13:55:59 -0800
IronPort-SDR: Ymdv9XnxJATABmVYbLSI4LPH5+6dqp6Wwz8evSohRej8WJ9ur5b1VwBYgDwxa8L6kp9bNOOK6E
 bmwRDFIizo7Q==
X-IronPort-AV: E=Sophos;i="5.79,328,1602572400"; d="scan'208";a="361734670"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2021 13:55:58 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: netdev@vger.kernel.org
Date: Wed,  6 Jan 2021 13:55:39 -0800
Message-Id: <20210106215539.2103688-3-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210106215539.2103688-1-jesse.brandeburg@intel.com>
References: <20210106215539.2103688-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 2/2] ice: remove GRO drop
 accounting
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The driver was counting GRO drops but now that the stack
does it with the previous patch, the driver can drop
all the logic.  The driver keeps the dev_dbg message in order
to do optional detailed tracing.

This mostly undoes commit a8fffd7ae9a5 ("ice: add useful statistics").

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          | 1 -
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 1 -
 drivers/net/ethernet/intel/ice/ice_main.c     | 4 +---
 drivers/net/ethernet/intel/ice/ice_txrx.h     | 1 -
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 2 --
 5 files changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 56725356a17b..dde850045e7e 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -256,7 +256,6 @@ struct ice_vsi {
 	u32 tx_busy;
 	u32 rx_buf_failed;
 	u32 rx_page_failed;
-	u32 rx_gro_dropped;
 	u16 num_q_vectors;
 	u16 base_vector;		/* IRQ base for OS reserved vectors */
 	enum ice_vsi_type type;
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 9e8e9531cd87..025c0a13e724 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -59,7 +59,6 @@ static const struct ice_stats ice_gstrings_vsi_stats[] = {
 	ICE_VSI_STAT("rx_unknown_protocol", eth_stats.rx_unknown_protocol),
 	ICE_VSI_STAT("rx_alloc_fail", rx_buf_failed),
 	ICE_VSI_STAT("rx_pg_alloc_fail", rx_page_failed),
-	ICE_VSI_STAT("rx_gro_dropped", rx_gro_dropped),
 	ICE_VSI_STAT("tx_errors", eth_stats.tx_errors),
 	ICE_VSI_STAT("tx_linearize", tx_linearize),
 	ICE_VSI_STAT("tx_busy", tx_busy),
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index c52b9bb0e3ab..e157a2b4fcb9 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5314,7 +5314,6 @@ static void ice_update_vsi_ring_stats(struct ice_vsi *vsi)
 	vsi->tx_linearize = 0;
 	vsi->rx_buf_failed = 0;
 	vsi->rx_page_failed = 0;
-	vsi->rx_gro_dropped = 0;
 
 	rcu_read_lock();
 
@@ -5329,7 +5328,6 @@ static void ice_update_vsi_ring_stats(struct ice_vsi *vsi)
 		vsi_stats->rx_bytes += bytes;
 		vsi->rx_buf_failed += ring->rx_stats.alloc_buf_failed;
 		vsi->rx_page_failed += ring->rx_stats.alloc_page_failed;
-		vsi->rx_gro_dropped += ring->rx_stats.gro_dropped;
 	}
 
 	/* update XDP Tx rings counters */
@@ -5361,7 +5359,7 @@ void ice_update_vsi_stats(struct ice_vsi *vsi)
 	ice_update_eth_stats(vsi);
 
 	cur_ns->tx_errors = cur_es->tx_errors;
-	cur_ns->rx_dropped = cur_es->rx_discards + vsi->rx_gro_dropped;
+	cur_ns->rx_dropped = cur_es->rx_discards;
 	cur_ns->tx_dropped = cur_es->tx_discards;
 	cur_ns->multicast = cur_es->rx_multicast;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index ff1a1cbd078e..6ce2046fc349 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -193,7 +193,6 @@ struct ice_rxq_stats {
 	u64 non_eop_descs;
 	u64 alloc_page_failed;
 	u64 alloc_buf_failed;
-	u64 gro_dropped; /* GRO returned dropped */
 };
 
 /* this enum matches hardware bits and is meant to be used by DYN_CTLN
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index bc2f4390b51d..3601b7d8abe5 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -192,8 +192,6 @@ ice_receive_skb(struct ice_ring *rx_ring, struct sk_buff *skb, u16 vlan_tag)
 	    (vlan_tag & VLAN_VID_MASK))
 		__vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), vlan_tag);
 	if (napi_gro_receive(&rx_ring->q_vector->napi, skb) == GRO_DROP) {
-		/* this is tracked separately to help us debug stack drops */
-		rx_ring->rx_stats.gro_dropped++;
 		netdev_dbg(rx_ring->netdev, "Receive Queue %d: Dropped packet from GRO\n",
 			   rx_ring->q_index);
 	}
-- 
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
