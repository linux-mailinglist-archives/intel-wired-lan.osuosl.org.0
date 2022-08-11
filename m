Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD95590639
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Aug 2022 20:22:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 931EA832C9;
	Thu, 11 Aug 2022 18:22:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 931EA832C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660242133;
	bh=pkciFZ2pv7GgEyq9cJe7uEnfOATgKjAlrCq33nAKHyU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=E4hpktGp0KkKg9VVHO88O0UbnAIABVfYhCv7XPSGzpBe0qOvQkH9uYjgMGxQB2C/U
	 ocnR/9Ikj76YqanUxGFoVJVqOvzmrFnvaDVwGluy2Xi8lNUnoX018O9TLR+SE5XBoe
	 SPjA2qcCVH3CWYl9XwfIG0yFgYue0sNIsHBn41jqgTQjT48xA0l/x5ETR5hvSzY5rv
	 8Ip8z8Z1mAelgFvh7vDeHswTCBsfqFz4pCZK9YB6YCsYTXp6IeHactZJpngZg+M4Sf
	 rt7YoUER/qrkdumy6h1vT2MwrbjAA+I5smNfU8ALUPXa+ycZF3+DWcUqbV4ceHYDdD
	 J3tghsQr4ByqQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RklpRo27lQS1; Thu, 11 Aug 2022 18:22:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 54A2C831F8;
	Thu, 11 Aug 2022 18:22:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 54A2C831F8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B2AD71BF3EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 18:22:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9A99B40B6A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 18:22:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A99B40B6A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xe_eP9eV4PN7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Aug 2022 18:22:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5627140B84
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5627140B84
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 18:22:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="292689584"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="292689584"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 11:22:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="933426166"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmsmga005.fm.intel.com with ESMTP; 11 Aug 2022 11:21:59 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 11 Aug 2022 20:21:49 +0200
Message-Id: <20220811182149.145358-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220811182149.145358-1-maciej.fijalkowski@intel.com>
References: <20220811182149.145358-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660242121; x=1691778121;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lG9de6PWaNRO4kEZpCYYyOruufRPG8gNRUIrhfg2PM0=;
 b=Twa2a6Lg8bx7TZkmVk8nsRCnFFokfePxN1AEwFRdD+5UxMiimnvgPOUe
 noTR6lgkWKeg9SG0kb/JBUfHZfqRhEle4FpIMYdz29nfHv9mxpI5eC5/i
 LxEf9VMYQUhi0z3lZ5kLCQo6PHadIiDhyFnKqk96QnQ6LeP9S3CBtcTWD
 y3XST+91FxPBbPu2DMnwA5Qnv4IqN3d7RQe/7DNpjlWxwNYlNMW0sGIKE
 uVTDQIL8tXW3paa4DM1/NMrx5Um46prTKtgp4TsLGbvl3lbJA9ubxaxDZ
 9/uSncyNv21Pk/hT7fdc44W5AwBJyTNz+nfqAUjIHdEzJUoFO4PVn1be+
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Twa2a6Lg
Subject: [Intel-wired-lan] [PATCH intel-net 2/2] ice: xsk: use Rx ring's XDP
 ring when picking NAPI context
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
Cc: alasdair.mcwilliam@outlook.com, xdp-newbies@vger.kernel.org,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ice driver allocates per cpu XDP queues so that redirect path can safely
use smp_processor_id() as an index to the array. At the same time
though, XDP rings are used to pick NAPI context to call napi_schedule()
or set NAPIF_STATE_MISSED. When user reduces queue count, say to 8, and
num_possible_cpus() of underlying platform is 44, then this means queue
vectors with correlated NAPI contexts will carry several XDP queues.

This in turn can result in a broken behavior where NAPI context of
interest will never be scheduled and AF_XDP socket will not process any
traffic.

To fix this, let us change the way how XDP rings are assigned to Rx
rings and use this information later on when setting
ice_tx_ring::xsk_pool pointer. For each Rx ring, grab the associated
queue vector and walk through Tx ring's linked list. Once we stumble
upon XDP ring in it, assign this ring to ice_rx_ring::xdp_ring.

Previous [0] approach of fixing this issue was for txonly scenario
because of the described grouping of XDP rings across queue vectors. So,
relying on Rx ring meant that NAPI context could be scheduled with a
queue vector without XDP ring with associated XSK pool.

[0]: https://lore.kernel.org/netdev/20220707161128.54215-1-maciej.fijalkowski@intel.com/

Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Fixes: 22bf877e528f ("ice: introduce XDP_TX fallback path")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      | 36 +++++++++++++++--------
 drivers/net/ethernet/intel/ice/ice_lib.c  |  4 +--
 drivers/net/ethernet/intel/ice/ice_main.c | 25 +++++++++++-----
 drivers/net/ethernet/intel/ice/ice_xsk.c  | 12 ++++----
 4 files changed, 48 insertions(+), 29 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 1a2e54dbc5a1..5444e55996c8 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -685,8 +685,8 @@ static inline void ice_set_ring_xdp(struct ice_tx_ring *ring)
  * ice_xsk_pool - get XSK buffer pool bound to a ring
  * @ring: Rx ring to use
  *
- * Returns a pointer to xdp_umem structure if there is a buffer pool present,
- * NULL otherwise.
+ * Returns a pointer to xsk_buff_pool structure if there is a buffer pool
+ * present, NULL otherwise.
  */
 static inline struct xsk_buff_pool *ice_xsk_pool(struct ice_rx_ring *ring)
 {
@@ -700,23 +700,33 @@ static inline struct xsk_buff_pool *ice_xsk_pool(struct ice_rx_ring *ring)
 }
 
 /**
- * ice_tx_xsk_pool - get XSK buffer pool bound to a ring
- * @ring: Tx ring to use
+ * ice_tx_xsk_pool - assign XSK buff pool to XDP ring
+ * @vsi: pointer to VSI
+ * @qid: index of a queue to look at XSK buff pool presence
  *
- * Returns a pointer to xdp_umem structure if there is a buffer pool present,
- * NULL otherwise. Tx equivalent of ice_xsk_pool.
+ * Sets XSK buff pool pointer on XDP ring.
+ *
+ * XDP ring is picked from Rx ring, whereas Rx ring is picked based on provided
+ * queue id. Reason for doing so is that queue vectors might have assigned more
+ * than one XDP ring, e.g. when user reduced the queue count on netdev; Rx ring
+ * carries a pointer to one of these XDP rings for its own purposes, such as
+ * handling XDP_TX action, therefore we can piggyback here on the
+ * rx_ring->xdp_ring assignment that was done during XDP rings initialization.
  */
-static inline struct xsk_buff_pool *ice_tx_xsk_pool(struct ice_tx_ring *ring)
+static inline void ice_tx_xsk_pool(struct ice_vsi *vsi, u16 qid)
 {
-	struct ice_vsi *vsi = ring->vsi;
-	u16 qid;
+	struct ice_tx_ring *ring;
 
-	qid = ring->q_index - vsi->alloc_txq;
+	ring = vsi->rx_rings[qid]->xdp_ring;
+	if (!ring)
+		return;
 
-	if (!ice_is_xdp_ena_vsi(vsi) || !test_bit(qid, vsi->af_xdp_zc_qps))
-		return NULL;
+	if (!ice_is_xdp_ena_vsi(vsi) || !test_bit(qid, vsi->af_xdp_zc_qps)) {
+		ring->xsk_pool = NULL;
+		return;
+	}
 
-	return xsk_get_pool_from_qid(vsi->netdev, qid);
+	ring->xsk_pool = xsk_get_pool_from_qid(vsi->netdev, qid);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index bc357dfae306..97faf1bd4272 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1986,8 +1986,8 @@ int ice_vsi_cfg_xdp_txqs(struct ice_vsi *vsi)
 	if (ret)
 		return ret;
 
-	ice_for_each_xdp_txq(vsi, i)
-		vsi->xdp_rings[i]->xsk_pool = ice_tx_xsk_pool(vsi->xdp_rings[i]);
+	ice_for_each_rxq(vsi, i)
+		ice_tx_xsk_pool(vsi, i);
 
 	return ret;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 313716615e98..7e2f67f699bd 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2579,7 +2579,6 @@ static int ice_xdp_alloc_setup_rings(struct ice_vsi *vsi)
 		if (ice_setup_tx_ring(xdp_ring))
 			goto free_xdp_rings;
 		ice_set_ring_xdp(xdp_ring);
-		xdp_ring->xsk_pool = ice_tx_xsk_pool(xdp_ring);
 		spin_lock_init(&xdp_ring->tx_lock);
 		for (j = 0; j < xdp_ring->count; j++) {
 			tx_desc = ICE_TX_DESC(xdp_ring, j);
@@ -2587,13 +2586,6 @@ static int ice_xdp_alloc_setup_rings(struct ice_vsi *vsi)
 		}
 	}
 
-	ice_for_each_rxq(vsi, i) {
-		if (static_key_enabled(&ice_xdp_locking_key))
-			vsi->rx_rings[i]->xdp_ring = vsi->xdp_rings[i % vsi->num_xdp_txq];
-		else
-			vsi->rx_rings[i]->xdp_ring = vsi->xdp_rings[i];
-	}
-
 	return 0;
 
 free_xdp_rings:
@@ -2683,6 +2675,23 @@ int ice_prepare_xdp_rings(struct ice_vsi *vsi, struct bpf_prog *prog)
 		xdp_rings_rem -= xdp_rings_per_v;
 	}
 
+	ice_for_each_rxq(vsi, i) {
+		if (static_key_enabled(&ice_xdp_locking_key)) {
+			vsi->rx_rings[i]->xdp_ring = vsi->xdp_rings[i % vsi->num_xdp_txq];
+		} else {
+			struct ice_q_vector *q_vector = vsi->rx_rings[i]->q_vector;
+			struct ice_tx_ring *ring;
+
+			ice_for_each_tx_ring(ring, q_vector->tx) {
+				if (ice_ring_is_xdp(ring)) {
+					vsi->rx_rings[i]->xdp_ring = ring;
+					break;
+				}
+			}
+		}
+		ice_tx_xsk_pool(vsi, i);
+	}
+
 	/* omit the scheduler update if in reset path; XDP queues will be
 	 * taken into account at the end of ice_vsi_rebuild, where
 	 * ice_cfg_vsi_lan is being called
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 45f88e6ec25e..e48e29258450 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -243,7 +243,7 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
 		if (err)
 			goto free_buf;
 		ice_set_ring_xdp(xdp_ring);
-		xdp_ring->xsk_pool = ice_tx_xsk_pool(xdp_ring);
+		ice_tx_xsk_pool(vsi, q_idx);
 	}
 
 	err = ice_vsi_cfg_rxq(rx_ring);
@@ -359,7 +359,7 @@ int ice_xsk_pool_setup(struct ice_vsi *vsi, struct xsk_buff_pool *pool, u16 qid)
 	if (if_running) {
 		ret = ice_qp_ena(vsi, qid);
 		if (!ret && pool_present)
-			napi_schedule(&vsi->xdp_rings[qid]->q_vector->napi);
+			napi_schedule(&vsi->rx_rings[qid]->xdp_ring->q_vector->napi);
 		else if (ret)
 			netdev_err(vsi->netdev, "ice_qp_ena error = %d\n", ret);
 	}
@@ -950,13 +950,13 @@ ice_xsk_wakeup(struct net_device *netdev, u32 queue_id,
 	if (!ice_is_xdp_ena_vsi(vsi))
 		return -EINVAL;
 
-	if (queue_id >= vsi->num_txq)
+	if (queue_id >= vsi->num_txq || queue_id >= vsi->num_rxq)
 		return -EINVAL;
 
-	if (!vsi->xdp_rings[queue_id]->xsk_pool)
-		return -EINVAL;
+	ring = vsi->rx_rings[queue_id]->xdp_ring;
 
-	ring = vsi->xdp_rings[queue_id];
+	if (!ring->xsk_pool)
+		return -EINVAL;
 
 	/* The idea here is that if NAPI is running, mark a miss, so
 	 * it will run again. If not, trigger an interrupt and
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
