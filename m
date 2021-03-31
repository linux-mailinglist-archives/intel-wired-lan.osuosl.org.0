Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1451235090A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Mar 2021 23:27:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E49840E92;
	Wed, 31 Mar 2021 21:27:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aOQXW4EFhnQx; Wed, 31 Mar 2021 21:27:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CDEEB406B0;
	Wed, 31 Mar 2021 21:27:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3122D1C1189
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DD4BB8496D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h7M3B-IfpRoB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Mar 2021 21:26:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0BF678495A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:53 +0000 (UTC)
IronPort-SDR: APtExMSvydthbHAAAjdTR5WbSSooZH5fxiu7bsBbevPlx1mYIQZVRe+KFrsHA1F2EPMhMJ+jWA
 fe8/uvVTEQnA==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="192117305"
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="192117305"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 14:26:51 -0700
IronPort-SDR: +STU65Re9DhKAYtWaRWSCK4MMF2jHZZmLNg/WXEAwMBwkZ5X5thYewLeHOXPpahOglODWL8qof
 11HyRN96T0HA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="445819638"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 31 Mar 2021 14:26:51 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 31 Mar 2021 14:16:59 -0700
Message-Id: <20210331211708.55205-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
References: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S58 04/13] ice: refactor ITR data
 structures
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

Use a dedicated bitfield in order to both increase
the amount of checking around the length of ITR writes
as well as simplify the checks of dynamic mode.

Basically unpack the "high bit means dynamic" logic
into bitfields.

Also, remove some unused ITR defines.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c    |  3 ++
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 15 +++++-----
 drivers/net/ethernet/intel/ice/ice_lib.c     |  7 -----
 drivers/net/ethernet/intel/ice/ice_txrx.c    |  4 +--
 drivers/net/ethernet/intel/ice/ice_txrx.h    | 30 +++++++++-----------
 5 files changed, 26 insertions(+), 33 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 5e6d9604e22c..142d660010c6 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -113,6 +113,9 @@ static int ice_vsi_alloc_q_vector(struct ice_vsi *vsi, u16 v_idx)
 	q_vector->v_idx = v_idx;
 	q_vector->tx.itr_setting = ICE_DFLT_TX_ITR;
 	q_vector->rx.itr_setting = ICE_DFLT_RX_ITR;
+	q_vector->tx.itr_mode = ITR_DYNAMIC;
+	q_vector->rx.itr_mode = ITR_DYNAMIC;
+
 	if (vsi->type == ICE_VSI_VF)
 		goto out;
 	/* only set affinity_mask if the CPU is online */
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 6c057eb6cc45..68c8ad8d157e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3510,13 +3510,13 @@ ice_get_rc_coalesce(struct ethtool_coalesce *ec, enum ice_container_type c_type,
 
 	switch (c_type) {
 	case ICE_RX_CONTAINER:
-		ec->use_adaptive_rx_coalesce = ITR_IS_DYNAMIC(rc->itr_setting);
-		ec->rx_coalesce_usecs = rc->itr_setting & ~ICE_ITR_DYNAMIC;
+		ec->use_adaptive_rx_coalesce = ITR_IS_DYNAMIC(rc);
+		ec->rx_coalesce_usecs = rc->itr_setting;
 		ec->rx_coalesce_usecs_high = rc->ring->q_vector->intrl;
 		break;
 	case ICE_TX_CONTAINER:
-		ec->use_adaptive_tx_coalesce = ITR_IS_DYNAMIC(rc->itr_setting);
-		ec->tx_coalesce_usecs = rc->itr_setting & ~ICE_ITR_DYNAMIC;
+		ec->use_adaptive_tx_coalesce = ITR_IS_DYNAMIC(rc);
+		ec->tx_coalesce_usecs = rc->itr_setting;
 		break;
 	default:
 		dev_dbg(ice_pf_to_dev(pf), "Invalid c_type %d\n", c_type);
@@ -3661,7 +3661,7 @@ ice_set_rc_coalesce(enum ice_container_type c_type, struct ethtool_coalesce *ec,
 		return -EINVAL;
 	}
 
-	itr_setting = rc->itr_setting & ~ICE_ITR_DYNAMIC;
+	itr_setting = rc->itr_setting;
 	if (coalesce_usecs != itr_setting && use_adaptive_coalesce) {
 		netdev_info(vsi->netdev, "%s interrupt throttling cannot be changed if adaptive-%s is enabled\n",
 			    c_type_str, c_type_str);
@@ -3675,8 +3675,9 @@ ice_set_rc_coalesce(enum ice_container_type c_type, struct ethtool_coalesce *ec,
 	}
 
 	if (use_adaptive_coalesce) {
-		rc->itr_setting |= ICE_ITR_DYNAMIC;
+		rc->itr_mode = ITR_DYNAMIC;
 	} else {
+		rc->itr_mode = ITR_STATIC;
 		/* store user facing value how it was set */
 		rc->itr_setting = coalesce_usecs;
 		/* write the change to the register */
@@ -3747,8 +3748,6 @@ ice_print_if_odd_usecs(struct net_device *netdev, u16 itr_setting,
 	if (use_adaptive_coalesce)
 		return;
 
-	itr_setting = ITR_TO_REG(itr_setting);
-
 	if (itr_setting != coalesce_usecs && (coalesce_usecs % 2))
 		netdev_info(netdev, "User set %s-usecs to %d, device only supports even values. Rounding down and attempting to set %s-usecs to %d\n",
 			    c_type_str, coalesce_usecs, c_type_str,
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index b06731b0da08..4c3a8bdfd71b 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1839,10 +1839,6 @@ static void __ice_write_itr(struct ice_q_vector *q_vector,
  * ice_write_itr - write throttle rate to queue specific register
  * @rc: pointer to ring container
  * @itr: throttle rate in microseconds to write
- *
- * This function is resilient to having the 0x8000 bit set which
- * is indicating that an ITR value is "DYNAMIC", and will write
- * the correct value to the register.
  */
 void ice_write_itr(struct ice_ring_container *rc, u16 itr)
 {
@@ -1853,9 +1849,6 @@ void ice_write_itr(struct ice_ring_container *rc, u16 itr)
 
 	q_vector = rc->ring->q_vector;
 
-	/* clear the "DYNAMIC" bit */
-	itr = ITR_TO_REG(itr);
-
 	__ice_write_itr(q_vector, rc, itr);
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index ac22457f3bf8..4a6da07d15da 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1236,7 +1236,7 @@ static void ice_net_dim(struct ice_q_vector *q_vector)
 	struct ice_ring_container *tx = &q_vector->tx;
 	struct ice_ring_container *rx = &q_vector->rx;
 
-	if (ITR_IS_DYNAMIC(tx->itr_setting)) {
+	if (ITR_IS_DYNAMIC(tx)) {
 		struct dim_sample dim_sample = {};
 		u64 packets = 0, bytes = 0;
 		struct ice_ring *ring;
@@ -1252,7 +1252,7 @@ static void ice_net_dim(struct ice_q_vector *q_vector)
 		net_dim(&tx->dim, dim_sample);
 	}
 
-	if (ITR_IS_DYNAMIC(rx->itr_setting)) {
+	if (ITR_IS_DYNAMIC(rx)) {
 		struct dim_sample dim_sample = {};
 		u64 packets = 0, bytes = 0;
 		struct ice_ring *ring;
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index c3716b9c40a3..01231d2c8444 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -223,23 +223,20 @@ enum ice_rx_dtype {
 #define ICE_TX_ITR	ICE_IDX_ITR1
 #define ICE_ITR_8K	124
 #define ICE_ITR_20K	50
-#define ICE_ITR_MAX	8160
-#define ICE_DFLT_TX_ITR	(ICE_ITR_20K | ICE_ITR_DYNAMIC)
-#define ICE_DFLT_RX_ITR	(ICE_ITR_20K | ICE_ITR_DYNAMIC)
-#define ICE_ITR_DYNAMIC	0x8000  /* used as flag for itr_setting */
-#define ITR_IS_DYNAMIC(setting) (!!((setting) & ICE_ITR_DYNAMIC))
-#define ITR_TO_REG(setting)	((setting) & ~ICE_ITR_DYNAMIC)
+#define ICE_ITR_MAX	8160 /* 0x1FE0 */
+#define ICE_DFLT_TX_ITR	ICE_ITR_20K
+#define ICE_DFLT_RX_ITR	ICE_ITR_20K
+enum ice_dynamic_itr {
+	ITR_STATIC = 0,
+	ITR_DYNAMIC = 1
+};
+
+#define ITR_IS_DYNAMIC(rc) ((rc)->itr_mode == ITR_DYNAMIC)
 #define ICE_ITR_GRAN_S		1	/* ITR granularity is always 2us */
 #define ICE_ITR_GRAN_US		BIT(ICE_ITR_GRAN_S)
 #define ICE_ITR_MASK		0x1FFE	/* ITR register value alignment mask */
 #define ITR_REG_ALIGN(setting)	((setting) & ICE_ITR_MASK)
 
-#define ICE_ITR_ADAPTIVE_MIN_INC	0x0002
-#define ICE_ITR_ADAPTIVE_MIN_USECS	0x0002
-#define ICE_ITR_ADAPTIVE_MAX_USECS	0x00FA
-#define ICE_ITR_ADAPTIVE_LATENCY	0x8000
-#define ICE_ITR_ADAPTIVE_BULK		0x0000
-
 #define ICE_DFLT_INTRL	0
 #define ICE_MAX_INTRL	236
 
@@ -343,11 +340,12 @@ struct ice_ring_container {
 	struct ice_ring *ring;
 	struct dim dim;		/* data for net_dim algorithm */
 	u16 itr_idx;		/* index in the interrupt vector */
-	/* high bit set means dynamic ITR, rest is used to store user
-	 * readable ITR value in usecs and must be converted before programming
-	 * to a register.
+	/* this matches the maximum number of ITR bits, but in usec
+	 * values, so it is shifted left one bit (bit zero is ignored)
 	 */
-	u16 itr_setting;
+	u16 itr_setting:13;
+	u16 itr_reserved:2;
+	u16 itr_mode:1;
 };
 
 struct ice_coalesce_stored {
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
