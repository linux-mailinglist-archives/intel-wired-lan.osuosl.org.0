Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B6A3F18EA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Aug 2021 14:15:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E97860BE6;
	Thu, 19 Aug 2021 12:15:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GXT8mcATLaLr; Thu, 19 Aug 2021 12:15:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 615C260637;
	Thu, 19 Aug 2021 12:15:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9A78A1BF280
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 12:15:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 89FBE606C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 12:15:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FBLtsvqnuoVX for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Aug 2021 12:15:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AB9E760637
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 12:15:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="277560959"
X-IronPort-AV: E=Sophos;i="5.84,334,1620716400"; d="scan'208";a="277560959"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 05:15:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,334,1620716400"; d="scan'208";a="532195096"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga002.fm.intel.com with ESMTP; 19 Aug 2021 05:15:16 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 19 Aug 2021 13:59:57 +0200
Message-Id: <20210819120004.34392-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210819120004.34392-1-maciej.fijalkowski@intel.com>
References: <20210819120004.34392-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v7 intel-next 2/9] ice: move
 ice_container_type onto ice_ring_container
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
Cc: joamaki@gmail.com, alexandr.lobakin@intel.com, netdev@vger.kernel.org,
 toke@redhat.com, bjorn@kernel.org, kuba@kernel.org, bpf@vger.kernel.org,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently ice_container_type is scoped only for ice_ethtool.c. Next
commit that will split the ice_ring struct onto Rx/Tx specific ring
structs is going to also modify the type of linked list of rings that is
within ice_ring_container. Therefore, the functions that are taking the
ice_ring_container as an input argument will need to be aware of a ring
type that will be looked up.

Embed ice_container_type within ice_ring_container and initialize it
properly when allocating the q_vectors.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c    |  2 ++
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 38 ++++++++------------
 drivers/net/ethernet/intel/ice/ice_txrx.h    |  6 ++++
 3 files changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 59a0f312dab9..feb07750acb6 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -115,6 +115,8 @@ static int ice_vsi_alloc_q_vector(struct ice_vsi *vsi, u16 v_idx)
 	q_vector->rx.itr_setting = ICE_DFLT_RX_ITR;
 	q_vector->tx.itr_mode = ITR_DYNAMIC;
 	q_vector->rx.itr_mode = ITR_DYNAMIC;
+	q_vector->tx.type = ICE_TX_CONTAINER;
+	q_vector->rx.type = ICE_RX_CONTAINER;
 
 	if (vsi->type == ICE_VSI_VF)
 		goto out;
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 54ccba8992ee..91efc8389df6 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3501,15 +3501,9 @@ static int ice_set_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
 	return 0;
 }
 
-enum ice_container_type {
-	ICE_RX_CONTAINER,
-	ICE_TX_CONTAINER,
-};
-
 /**
  * ice_get_rc_coalesce - get ITR values for specific ring container
  * @ec: ethtool structure to fill with driver's coalesce settings
- * @c_type: container type, Rx or Tx
  * @rc: ring container that the ITR values will come from
  *
  * Query the device for ice_ring_container specific ITR values. This is
@@ -3519,13 +3513,12 @@ enum ice_container_type {
  * Returns 0 on success, negative otherwise.
  */
 static int
-ice_get_rc_coalesce(struct ethtool_coalesce *ec, enum ice_container_type c_type,
-		    struct ice_ring_container *rc)
+ice_get_rc_coalesce(struct ethtool_coalesce *ec, struct ice_ring_container *rc)
 {
 	if (!rc->ring)
 		return -EINVAL;
 
-	switch (c_type) {
+	switch (rc->type) {
 	case ICE_RX_CONTAINER:
 		ec->use_adaptive_rx_coalesce = ITR_IS_DYNAMIC(rc);
 		ec->rx_coalesce_usecs = rc->itr_setting;
@@ -3536,7 +3529,7 @@ ice_get_rc_coalesce(struct ethtool_coalesce *ec, enum ice_container_type c_type,
 		ec->tx_coalesce_usecs = rc->itr_setting;
 		break;
 	default:
-		dev_dbg(ice_pf_to_dev(rc->ring->vsi->back), "Invalid c_type %d\n", c_type);
+		dev_dbg(ice_pf_to_dev(rc->ring->vsi->back), "Invalid c_type %d\n", rc->type);
 		return -EINVAL;
 	}
 
@@ -3557,18 +3550,18 @@ static int
 ice_get_q_coalesce(struct ice_vsi *vsi, struct ethtool_coalesce *ec, int q_num)
 {
 	if (q_num < vsi->num_rxq && q_num < vsi->num_txq) {
-		if (ice_get_rc_coalesce(ec, ICE_RX_CONTAINER,
+		if (ice_get_rc_coalesce(ec,
 					&vsi->rx_rings[q_num]->q_vector->rx))
 			return -EINVAL;
-		if (ice_get_rc_coalesce(ec, ICE_TX_CONTAINER,
+		if (ice_get_rc_coalesce(ec,
 					&vsi->tx_rings[q_num]->q_vector->tx))
 			return -EINVAL;
 	} else if (q_num < vsi->num_rxq) {
-		if (ice_get_rc_coalesce(ec, ICE_RX_CONTAINER,
+		if (ice_get_rc_coalesce(ec,
 					&vsi->rx_rings[q_num]->q_vector->rx))
 			return -EINVAL;
 	} else if (q_num < vsi->num_txq) {
-		if (ice_get_rc_coalesce(ec, ICE_TX_CONTAINER,
+		if (ice_get_rc_coalesce(ec,
 					&vsi->tx_rings[q_num]->q_vector->tx))
 			return -EINVAL;
 	} else {
@@ -3618,7 +3611,6 @@ ice_get_per_q_coalesce(struct net_device *netdev, u32 q_num,
 
 /**
  * ice_set_rc_coalesce - set ITR values for specific ring container
- * @c_type: container type, Rx or Tx
  * @ec: ethtool structure from user to update ITR settings
  * @rc: ring container that the ITR values will come from
  * @vsi: VSI associated to the ring container
@@ -3630,10 +3622,10 @@ ice_get_per_q_coalesce(struct net_device *netdev, u32 q_num,
  * Returns 0 on success, negative otherwise.
  */
 static int
-ice_set_rc_coalesce(enum ice_container_type c_type, struct ethtool_coalesce *ec,
+ice_set_rc_coalesce(struct ethtool_coalesce *ec,
 		    struct ice_ring_container *rc, struct ice_vsi *vsi)
 {
-	const char *c_type_str = (c_type == ICE_RX_CONTAINER) ? "rx" : "tx";
+	const char *c_type_str = (rc->type == ICE_RX_CONTAINER) ? "rx" : "tx";
 	u32 use_adaptive_coalesce, coalesce_usecs;
 	struct ice_pf *pf = vsi->back;
 	u16 itr_setting;
@@ -3641,7 +3633,7 @@ ice_set_rc_coalesce(enum ice_container_type c_type, struct ethtool_coalesce *ec,
 	if (!rc->ring)
 		return -EINVAL;
 
-	switch (c_type) {
+	switch (rc->type) {
 	case ICE_RX_CONTAINER:
 		if (ec->rx_coalesce_usecs_high > ICE_MAX_INTRL ||
 		    (ec->rx_coalesce_usecs_high &&
@@ -3674,7 +3666,7 @@ ice_set_rc_coalesce(enum ice_container_type c_type, struct ethtool_coalesce *ec,
 		break;
 	default:
 		dev_dbg(ice_pf_to_dev(pf), "Invalid container type %d\n",
-			c_type);
+			rc->type);
 		return -EINVAL;
 	}
 
@@ -3723,22 +3715,22 @@ static int
 ice_set_q_coalesce(struct ice_vsi *vsi, struct ethtool_coalesce *ec, int q_num)
 {
 	if (q_num < vsi->num_rxq && q_num < vsi->num_txq) {
-		if (ice_set_rc_coalesce(ICE_RX_CONTAINER, ec,
+		if (ice_set_rc_coalesce(ec,
 					&vsi->rx_rings[q_num]->q_vector->rx,
 					vsi))
 			return -EINVAL;
 
-		if (ice_set_rc_coalesce(ICE_TX_CONTAINER, ec,
+		if (ice_set_rc_coalesce(ec,
 					&vsi->tx_rings[q_num]->q_vector->tx,
 					vsi))
 			return -EINVAL;
 	} else if (q_num < vsi->num_rxq) {
-		if (ice_set_rc_coalesce(ICE_RX_CONTAINER, ec,
+		if (ice_set_rc_coalesce(ec,
 					&vsi->rx_rings[q_num]->q_vector->rx,
 					vsi))
 			return -EINVAL;
 	} else if (q_num < vsi->num_txq) {
-		if (ice_set_rc_coalesce(ICE_TX_CONTAINER, ec,
+		if (ice_set_rc_coalesce(ec,
 					&vsi->tx_rings[q_num]->q_vector->tx,
 					vsi))
 			return -EINVAL;
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index 901f16f1d286..58127376cfe4 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -336,6 +336,11 @@ static inline bool ice_ring_is_xdp(struct ice_ring *ring)
 	return !!(ring->flags & ICE_TX_FLAGS_RING_XDP);
 }
 
+enum ice_container_type {
+	ICE_RX_CONTAINER,
+	ICE_TX_CONTAINER,
+};
+
 struct ice_ring_container {
 	/* head of linked-list of rings */
 	struct ice_ring *ring;
@@ -347,6 +352,7 @@ struct ice_ring_container {
 	u16 itr_setting:13;
 	u16 itr_reserved:2;
 	u16 itr_mode:1;
+	enum ice_container_type type;
 };
 
 struct ice_coalesce_stored {
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
