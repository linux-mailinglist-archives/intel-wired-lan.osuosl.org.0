Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2270014A900
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Jan 2020 18:32:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AD48987A52;
	Mon, 27 Jan 2020 17:32:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mJx6oH-FsmMI; Mon, 27 Jan 2020 17:32:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E24AA87A34;
	Mon, 27 Jan 2020 17:32:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A08901BF977
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2020 17:32:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9AD8385087
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2020 17:32:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EgE-S_U4KC4E for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Jan 2020 17:32:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C10D0850AD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2020 17:32:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 09:32:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,370,1574150400"; d="scan'208";a="427350653"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga005.fm.intel.com with ESMTP; 27 Jan 2020 09:32:10 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 27 Jan 2020 00:59:21 -0800
Message-Id: <20200127085927.13999-9-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200127085927.13999-1-anthony.l.nguyen@intel.com>
References: <20200127085927.13999-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S39 09/15] ice: Don't reject odd values of
 usecs set by user
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

Currently if a user sets an odd [tx|rx]-usecs value through ethtool,
the request is denied because the hardware is set to have an ITR
granularity of 2us. This caused poor customer experience. Fix this by
aligning to a register allowed value, which results in rounding down.
Also, print a once per ring container type message to be clear about
our intentions.

Also, change the ITR_TO_REG define to be the bitwise and of the ITR
setting and the ICE_ITR_MASK. This makes the purpose of ITR_TO_REG more
obvious.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 49 +++++++++++++++-----
 drivers/net/ethernet/intel/ice/ice_txrx.h    |  2 +-
 2 files changed, 39 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index db14ec2e0b46..ae0b63d5673d 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3488,21 +3488,13 @@ ice_set_rc_coalesce(enum ice_container_type c_type, struct ethtool_coalesce *ec,
 		return -EINVAL;
 	}
 
-	/* hardware only supports an ITR granularity of 2us */
-	if (coalesce_usecs % 2 != 0) {
-		netdev_info(vsi->netdev, "Invalid value, %s-usecs must be even\n",
-			    c_type_str);
-		return -EINVAL;
-	}
-
 	if (use_adaptive_coalesce) {
 		rc->itr_setting |= ICE_ITR_DYNAMIC;
 	} else {
-		/* store user facing value how it was set */
+		/* save the user set usecs */
 		rc->itr_setting = coalesce_usecs;
-		/* set to static and convert to value HW understands */
-		rc->target_itr =
-			ITR_TO_REG(ITR_REG_ALIGN(rc->itr_setting));
+		/* device ITR granularity is in 2 usec increments */
+		rc->target_itr = ITR_REG_ALIGN(rc->itr_setting);
 	}
 
 	return 0;
@@ -3595,6 +3587,30 @@ ice_is_coalesce_param_invalid(struct net_device *netdev,
 	return 0;
 }
 
+/**
+ * ice_print_if_odd_usecs - print message if user tries to set odd [tx|rx]-usecs
+ * @netdev: netdev used for print
+ * @itr_setting: previous user setting
+ * @use_adaptive_coalesce: if adaptive coalesce is enabled or being enabled
+ * @coalesce_usecs: requested value of [tx|rx]-usecs
+ * @c_type_str: either "rx" or "tx" to match user set field of [tx|rx]-usecs
+ */
+static void
+ice_print_if_odd_usecs(struct net_device *netdev, u16 itr_setting,
+		       u32 use_adaptive_coalesce, u32 coalesce_usecs,
+		       const char *c_type_str)
+{
+	if (use_adaptive_coalesce)
+		return;
+
+	itr_setting = ITR_TO_REG(itr_setting);
+
+	if (itr_setting != coalesce_usecs && (coalesce_usecs % 2))
+		netdev_info(netdev, "User set %s-usecs to %d, device only supports even values. Rounding down and attempting to set %s-usecs to %d\n",
+			    c_type_str, coalesce_usecs, c_type_str,
+			    ITR_REG_ALIGN(coalesce_usecs));
+}
+
 /**
  * __ice_set_coalesce - set ITR/INTRL values for the device
  * @netdev: pointer to the netdev associated with this query
@@ -3615,8 +3631,19 @@ __ice_set_coalesce(struct net_device *netdev, struct ethtool_coalesce *ec,
 		return -EINVAL;
 
 	if (q_num < 0) {
+		struct ice_q_vector *q_vector = vsi->q_vectors[0];
 		int v_idx;
 
+		if (q_vector) {
+			ice_print_if_odd_usecs(netdev, q_vector->rx.itr_setting,
+					       ec->use_adaptive_rx_coalesce,
+					       ec->rx_coalesce_usecs, "rx");
+
+			ice_print_if_odd_usecs(netdev, q_vector->tx.itr_setting,
+					       ec->use_adaptive_tx_coalesce,
+					       ec->tx_coalesce_usecs, "tx");
+		}
+
 		ice_for_each_q_vector(vsi, v_idx) {
 			/* In some cases if DCB is configured the num_[rx|tx]q
 			 * can be less than vsi->num_q_vectors. This check
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index a86270696df1..3e3cc2599824 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -222,7 +222,7 @@ enum ice_rx_dtype {
 #define ICE_ITR_GRAN_S		1	/* ITR granularity is always 2us */
 #define ICE_ITR_GRAN_US		BIT(ICE_ITR_GRAN_S)
 #define ICE_ITR_MASK		0x1FFE	/* ITR register value alignment mask */
-#define ITR_REG_ALIGN(setting)	__ALIGN_MASK(setting, ~ICE_ITR_MASK)
+#define ITR_REG_ALIGN(setting)	((setting) & ICE_ITR_MASK)
 
 #define ICE_ITR_ADAPTIVE_MIN_INC	0x0002
 #define ICE_ITR_ADAPTIVE_MIN_USECS	0x0002
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
