Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A9F7FEF0
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Aug 2019 18:54:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C716786BFE;
	Fri,  2 Aug 2019 16:54:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FjjAmrwhOUWM; Fri,  2 Aug 2019 16:54:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 93D8186B91;
	Fri,  2 Aug 2019 16:54:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 283681BF296
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2019 16:54:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 225C786B8C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2019 16:54:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n5c9Dm-fhEFu for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Aug 2019 16:54:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 55A5F86B3A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2019 16:54:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Aug 2019 09:53:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,338,1559545200"; d="scan'208";a="175640946"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga003.jf.intel.com with ESMTP; 02 Aug 2019 09:53:58 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  2 Aug 2019 01:25:27 -0700
Message-Id: <20190802082533.23083-9-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190802082533.23083-1-anthony.l.nguyen@intel.com>
References: <20190802082533.23083-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S26 09/15] ice: Report what the user set
 for coalesce [tx|rx]-usecs
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

From: Brett Creeley <brett.creeley@intel.com>

Currently if the user sets an odd value for [tx|rx]-usecs we align the
value because the hardware only understands ITR values in multiples of
2. This seems misleading because we are essentially telling the user
that the ITR value is odd, when in fact we have changed it internally.
Fix this by reporting that setting odd ITR values is not allowed.

Also, while making changes to ice_set_rc_coalesce() I noticed a bit of
code/error duplication. Make the necessary changes to remove the
duplication.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 88 ++++++++++----------
 1 file changed, 44 insertions(+), 44 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 48d4ceac288a..dadcf4324f56 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3400,25 +3400,25 @@ static int
 ice_set_rc_coalesce(enum ice_container_type c_type, struct ethtool_coalesce *ec,
 		    struct ice_ring_container *rc, struct ice_vsi *vsi)
 {
+	const char *c_type_str = (c_type == ICE_RX_CONTAINER) ? "rx" : "tx";
+	u32 use_adaptive_coalesce, coalesce_usecs;
 	struct ice_pf *pf = vsi->back;
 	u16 itr_setting;
 
 	if (!rc->ring)
 		return -EINVAL;
 
-	itr_setting = rc->itr_setting & ~ICE_ITR_DYNAMIC;
-
 	switch (c_type) {
 	case ICE_RX_CONTAINER:
 		if (ec->rx_coalesce_usecs_high > ICE_MAX_INTRL ||
 		    (ec->rx_coalesce_usecs_high &&
 		     ec->rx_coalesce_usecs_high < pf->hw.intrl_gran)) {
 			netdev_info(vsi->netdev,
-				    "Invalid value, rx-usecs-high valid values are 0 (disabled), %d-%d\n",
-				    pf->hw.intrl_gran, ICE_MAX_INTRL);
+				    "Invalid value, %s-usecs-high valid values are 0 (disabled), %d-%d\n",
+				    c_type_str, pf->hw.intrl_gran,
+				    ICE_MAX_INTRL);
 			return -EINVAL;
 		}
-
 		if (ec->rx_coalesce_usecs_high != rc->ring->q_vector->intrl) {
 			rc->ring->q_vector->intrl = ec->rx_coalesce_usecs_high;
 			wr32(&pf->hw, GLINT_RATE(rc->ring->q_vector->reg_idx),
@@ -3426,60 +3426,60 @@ ice_set_rc_coalesce(enum ice_container_type c_type, struct ethtool_coalesce *ec,
 						   pf->hw.intrl_gran));
 		}
 
-		if (ec->rx_coalesce_usecs != itr_setting &&
-		    ec->use_adaptive_rx_coalesce) {
-			netdev_info(vsi->netdev,
-				    "Rx interrupt throttling cannot be changed if adaptive-rx is enabled\n");
-			return -EINVAL;
-		}
-
-		if (ec->rx_coalesce_usecs > ICE_ITR_MAX) {
-			netdev_info(vsi->netdev,
-				    "Invalid value, rx-usecs range is 0-%d\n",
-				   ICE_ITR_MAX);
-			return -EINVAL;
-		}
+		use_adaptive_coalesce = ec->use_adaptive_rx_coalesce;
+		coalesce_usecs = ec->rx_coalesce_usecs;
 
-		if (ec->use_adaptive_rx_coalesce) {
-			rc->itr_setting |= ICE_ITR_DYNAMIC;
-		} else {
-			rc->itr_setting = ITR_REG_ALIGN(ec->rx_coalesce_usecs);
-			rc->target_itr = ITR_TO_REG(rc->itr_setting);
-		}
 		break;
 	case ICE_TX_CONTAINER:
 		if (ec->tx_coalesce_usecs_high) {
 			netdev_info(vsi->netdev,
-				    "setting tx-usecs-high is not supported\n");
+				    "setting %s-usecs-high is not supported\n",
+				    c_type_str);
 			return -EINVAL;
 		}
 
-		if (ec->tx_coalesce_usecs != itr_setting &&
-		    ec->use_adaptive_tx_coalesce) {
-			netdev_info(vsi->netdev,
-				    "Tx interrupt throttling cannot be changed if adaptive-tx is enabled\n");
-			return -EINVAL;
-		}
-
-		if (ec->tx_coalesce_usecs > ICE_ITR_MAX) {
-			netdev_info(vsi->netdev,
-				    "Invalid value, tx-usecs range is 0-%d\n",
-				   ICE_ITR_MAX);
-			return -EINVAL;
-		}
+		use_adaptive_coalesce = ec->use_adaptive_tx_coalesce;
+		coalesce_usecs = ec->tx_coalesce_usecs;
 
-		if (ec->use_adaptive_tx_coalesce) {
-			rc->itr_setting |= ICE_ITR_DYNAMIC;
-		} else {
-			rc->itr_setting = ITR_REG_ALIGN(ec->tx_coalesce_usecs);
-			rc->target_itr = ITR_TO_REG(rc->itr_setting);
-		}
 		break;
 	default:
 		dev_dbg(&pf->pdev->dev, "Invalid container type %d\n", c_type);
 		return -EINVAL;
 	}
 
+	itr_setting = rc->itr_setting & ~ICE_ITR_DYNAMIC;
+	if (coalesce_usecs != itr_setting && use_adaptive_coalesce) {
+		netdev_info(vsi->netdev,
+			    "%s interrupt throttling cannot be changed if adaptive-%s is enabled\n",
+			    c_type_str, c_type_str);
+		return -EINVAL;
+	}
+
+	if (coalesce_usecs > ICE_ITR_MAX) {
+		netdev_info(vsi->netdev,
+			    "Invalid value, %s-usecs range is 0-%d\n",
+			    c_type_str, ICE_ITR_MAX);
+		return -EINVAL;
+	}
+
+	/* hardware only supports an ITR granularity of 2us */
+	if (coalesce_usecs % 2 != 0) {
+		netdev_info(vsi->netdev,
+			    "Invalid value, %s-usecs must be even\n",
+			    c_type_str);
+		return -EINVAL;
+	}
+
+	if (use_adaptive_coalesce) {
+		rc->itr_setting |= ICE_ITR_DYNAMIC;
+	} else {
+		/* store user facing value how it was set */
+		rc->itr_setting = coalesce_usecs;
+		/* set to static and convert to value HW understands */
+		rc->target_itr =
+			ITR_TO_REG(ITR_REG_ALIGN(rc->itr_setting));
+	}
+
 	return 0;
 }
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
