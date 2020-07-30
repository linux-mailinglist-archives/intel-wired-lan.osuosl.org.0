Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38ED12328AD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Jul 2020 02:23:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A84D6883CC;
	Thu, 30 Jul 2020 00:23:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gy0WgaNrlAaK; Thu, 30 Jul 2020 00:23:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 14599883AC;
	Thu, 30 Jul 2020 00:23:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4C6CF1BF9B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 00:23:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 491CF24CEB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 00:23:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Srm-TXa5mUvp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Jul 2020 00:23:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id 109E522846
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 00:23:50 +0000 (UTC)
IronPort-SDR: lCAGiMnQVWrInKZDSPYFcLQeAqyO+x+/19PbCnKOIhzZX7l9YhamoOGUH6bPkknNP67gcx/sJ5
 xoixTfbq9fgg==
X-IronPort-AV: E=McAfee;i="6000,8403,9697"; a="216004462"
X-IronPort-AV: E=Sophos;i="5.75,412,1589266800"; d="scan'208";a="216004462"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2020 17:23:50 -0700
IronPort-SDR: ZDoDIbwTu7wbonYnEfPTOUr7DCibX9+ZoGjr3PVJO0qXHjFcIn4ptSmfPvPGBEOPKNmvVb5Tp7
 vlCdSREo84/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,412,1589266800"; d="scan'208";a="320908823"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga008.jf.intel.com with ESMTP; 29 Jul 2020 17:23:49 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 29 Jul 2020 17:19:14 -0700
Message-Id: <20200730001922.52568-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200730001922.52568-1-anthony.l.nguyen@intel.com>
References: <20200730001922.52568-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S51 05/13] ice: add useful statistics
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

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

Display and count some useful hot-path statistics. The usefulness is as
follows:

- tx_restart: use to determine if the transmit ring size is too small or
  if the transmit interrupt rate is too low.
- rx_gro_dropped: use to count drops from GRO layer, which previously were
  completely uncounted when occurring.
- tx_busy: use to determine when the driver is miscounting number of
  descriptors needed for an skb.
- tx_timeout: as our other drivers, count the number of times we've reset
  due to timeout because the kernel only prints a warning once per netdev.

Several of these were already counted but not displayed.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          | 1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 4 ++++
 drivers/net/ethernet/intel/ice/ice_main.c     | 4 +++-
 drivers/net/ethernet/intel/ice/ice_txrx.h     | 1 +
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 7 ++++++-
 5 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 7d194d2a031a..fe140ff38f74 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -256,6 +256,7 @@ struct ice_vsi {
 	u32 tx_busy;
 	u32 rx_buf_failed;
 	u32 rx_page_failed;
+	u32 rx_gro_dropped;
 	u16 num_q_vectors;
 	u16 base_vector;		/* IRQ base for OS reserved vectors */
 	enum ice_vsi_type type;
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 06b93e97892d..9e8e9531cd87 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -59,8 +59,11 @@ static const struct ice_stats ice_gstrings_vsi_stats[] = {
 	ICE_VSI_STAT("rx_unknown_protocol", eth_stats.rx_unknown_protocol),
 	ICE_VSI_STAT("rx_alloc_fail", rx_buf_failed),
 	ICE_VSI_STAT("rx_pg_alloc_fail", rx_page_failed),
+	ICE_VSI_STAT("rx_gro_dropped", rx_gro_dropped),
 	ICE_VSI_STAT("tx_errors", eth_stats.tx_errors),
 	ICE_VSI_STAT("tx_linearize", tx_linearize),
+	ICE_VSI_STAT("tx_busy", tx_busy),
+	ICE_VSI_STAT("tx_restart", tx_restart),
 };
 
 enum ice_ethtool_test_id {
@@ -100,6 +103,7 @@ static const struct ice_stats ice_gstrings_pf_stats[] = {
 	ICE_PF_STAT("rx_broadcast.nic", stats.eth.rx_broadcast),
 	ICE_PF_STAT("tx_broadcast.nic", stats.eth.tx_broadcast),
 	ICE_PF_STAT("tx_errors.nic", stats.eth.tx_errors),
+	ICE_PF_STAT("tx_timeout.nic", tx_timeout_count),
 	ICE_PF_STAT("rx_size_64.nic", stats.rx_size_64),
 	ICE_PF_STAT("tx_size_64.nic", stats.tx_size_64),
 	ICE_PF_STAT("rx_size_127.nic", stats.rx_size_127),
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index bd2a2df25def..22bbd84eef64 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5290,6 +5290,7 @@ static void ice_update_vsi_ring_stats(struct ice_vsi *vsi)
 	vsi->tx_linearize = 0;
 	vsi->rx_buf_failed = 0;
 	vsi->rx_page_failed = 0;
+	vsi->rx_gro_dropped = 0;
 
 	rcu_read_lock();
 
@@ -5304,6 +5305,7 @@ static void ice_update_vsi_ring_stats(struct ice_vsi *vsi)
 		vsi_stats->rx_bytes += bytes;
 		vsi->rx_buf_failed += ring->rx_stats.alloc_buf_failed;
 		vsi->rx_page_failed += ring->rx_stats.alloc_page_failed;
+		vsi->rx_gro_dropped += ring->rx_stats.gro_dropped;
 	}
 
 	/* update XDP Tx rings counters */
@@ -5335,7 +5337,7 @@ void ice_update_vsi_stats(struct ice_vsi *vsi)
 	ice_update_eth_stats(vsi);
 
 	cur_ns->tx_errors = cur_es->tx_errors;
-	cur_ns->rx_dropped = cur_es->rx_discards;
+	cur_ns->rx_dropped = cur_es->rx_discards + vsi->rx_gro_dropped;
 	cur_ns->tx_dropped = cur_es->tx_discards;
 	cur_ns->multicast = cur_es->rx_multicast;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index 77c94daeb434..51b4df7a59d2 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -193,6 +193,7 @@ struct ice_rxq_stats {
 	u64 non_eop_descs;
 	u64 alloc_page_failed;
 	u64 alloc_buf_failed;
+	u64 gro_dropped; /* GRO returned dropped */
 };
 
 /* this enum matches hardware bits and is meant to be used by DYN_CTLN
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index 02b12736ea80..bc2f4390b51d 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -191,7 +191,12 @@ ice_receive_skb(struct ice_ring *rx_ring, struct sk_buff *skb, u16 vlan_tag)
 	if ((rx_ring->netdev->features & NETIF_F_HW_VLAN_CTAG_RX) &&
 	    (vlan_tag & VLAN_VID_MASK))
 		__vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), vlan_tag);
-	napi_gro_receive(&rx_ring->q_vector->napi, skb);
+	if (napi_gro_receive(&rx_ring->q_vector->napi, skb) == GRO_DROP) {
+		/* this is tracked separately to help us debug stack drops */
+		rx_ring->rx_stats.gro_dropped++;
+		netdev_dbg(rx_ring->netdev, "Receive Queue %d: Dropped packet from GRO\n",
+			   rx_ring->q_index);
+	}
 }
 
 /**
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
