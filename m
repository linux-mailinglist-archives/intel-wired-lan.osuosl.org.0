Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD773CBF48
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Jul 2021 00:29:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 33665423EB;
	Fri, 16 Jul 2021 22:29:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NJQcEkj9wBh2; Fri, 16 Jul 2021 22:29:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F22C742361;
	Fri, 16 Jul 2021 22:29:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1ED4E1BF39D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jul 2021 22:29:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3CE4760736
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jul 2021 22:29:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DnS7RZPYwSb1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jul 2021 22:29:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7BF046073D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jul 2021 22:29:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10047"; a="208981785"
X-IronPort-AV: E=Sophos;i="5.84,246,1620716400"; d="scan'208";a="208981785"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 15:29:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,246,1620716400"; d="scan'208";a="497176523"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Jul 2021 15:29:13 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 16 Jul 2021 15:16:41 -0700
Message-Id: <20210716221644.45946-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210716221644.45946-1-anthony.l.nguyen@intel.com>
References: <20210716221644.45946-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 4/7] ice: Add feature bitmap,
 helpers and a check for DSCP
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

DSCP a.k.a L3 QoS is only supported on certain devices. To enforce this,
this patch introduces a bitmap of features and helper functions.

The feature bitmap is set based on device IDs on driver init. Currently,
DSCP is the only feature in this bitmap, but there will be more in the
future. In the DCB netlink flow, check if the feature bit is set before
exercising DSCP.

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h        |  6 +++
 drivers/net/ethernet/intel/ice/ice_dcb_nl.c |  8 +++-
 drivers/net/ethernet/intel/ice/ice_lib.c    | 47 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_lib.h    |  2 +
 drivers/net/ethernet/intel/ice/ice_main.c   |  2 +
 5 files changed, 63 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index d2b8fd8daf4a..be5ce0dfc9e1 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -159,6 +159,11 @@
 
 DECLARE_STATIC_KEY_FALSE(ice_xdp_locking_key);
 
+enum ice_feature {
+	ICE_F_DSCP,
+	ICE_F_MAX
+};
+
 struct ice_txq_meta {
 	u32 q_teid;	/* Tx-scheduler element identifier */
 	u16 q_id;	/* Entry in VSI's txq_map bitmap */
@@ -451,6 +456,7 @@ struct ice_pf {
 	/* used to ratelimit the MDD event logging */
 	unsigned long last_printed_mdd_jiffies;
 	DECLARE_BITMAP(malvfs, ICE_MAX_VF_COUNT);
+	DECLARE_BITMAP(features, ICE_F_MAX);
 	DECLARE_BITMAP(state, ICE_STATE_NBITS);
 	DECLARE_BITMAP(flags, ICE_PF_FLAGS_NBITS);
 	unsigned long *avail_txqs;	/* bitmap to track PF Tx queue usage */
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
index 0121dbc62c8a..7fdeb411b6df 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
@@ -710,6 +710,9 @@ static int ice_dcbnl_setapp(struct net_device *netdev, struct dcb_app *app)
 	if (!(pf->dcbx_cap & DCB_CAP_DCBX_VER_IEEE))
 		return -EINVAL;
 
+	if (!ice_is_feature_supported(pf, ICE_F_DSCP))
+		return -EOPNOTSUPP;
+
 	if (app->protocol >= ICE_DSCP_NUM_VAL) {
 		netdev_err(netdev, "DSCP value 0x%04X out of range\n",
 			   app->protocol);
@@ -861,8 +864,9 @@ static int ice_dcbnl_delapp(struct net_device *netdev, struct dcb_app *app)
 		new_cfg->app[j].priority = old_cfg->app[j + 1].priority;
 	}
 
-	/* if not a DSCP APP TLV, then we are done */
-	if (app->selector != IEEE_8021QAZ_APP_SEL_DSCP) {
+	/* if not a DSCP APP TLV or DSCP is not supported, we are done */
+	if (app->selector != IEEE_8021QAZ_APP_SEL_DSCP ||
+	    !ice_is_feature_supported(pf, ICE_F_DSCP)) {
 		ret = ICE_DCB_HW_CHG;
 		goto delapp_out;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 81f77cced42a..5906783344d0 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3689,3 +3689,50 @@ void ice_vsi_ctx_clear_allow_override(struct ice_vsi_ctx *ctx)
 {
 	ctx->info.sec_flags &= ~ICE_AQ_VSI_SEC_FLAG_ALLOW_DEST_OVRD;
 }
+
+/**
+ * ice_is_feature_supported
+ * @pf: pointer to the struct ice_pf instance
+ * @f: feature enum to be checked
+ *
+ * returns true if feature is supported, false otherwise
+ */
+bool ice_is_feature_supported(struct ice_pf *pf, enum ice_feature f)
+{
+	if (f < 0 || f >= ICE_F_MAX)
+		return false;
+
+	return test_bit(f, pf->features);
+}
+
+/**
+ * ice_set_feature_support
+ * @pf: pointer to the struct ice_pf instance
+ * @f: feature enum to set
+ */
+static void ice_set_feature_support(struct ice_pf *pf, enum ice_feature f)
+{
+	if (f < 0 || f >= ICE_F_MAX)
+		return;
+
+	set_bit(f, pf->features);
+}
+
+/**
+ * ice_init_feature_support
+ * @pf: pointer to the struct ice_pf instance
+ *
+ * called during init to setup supported feature
+ */
+void ice_init_feature_support(struct ice_pf *pf)
+{
+	switch (pf->hw.device_id) {
+	case ICE_DEV_ID_E810C_BACKPLANE:
+	case ICE_DEV_ID_E810C_QSFP:
+	case ICE_DEV_ID_E810C_SFP:
+		ice_set_feature_support(pf, ICE_F_DSCP);
+		break;
+	default:
+		break;
+	}
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 781eba6c1991..b443ea46274f 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -127,4 +127,6 @@ void ice_vsi_ctx_clear_antispoof(struct ice_vsi_ctx *ctx);
 void ice_vsi_ctx_set_allow_override(struct ice_vsi_ctx *ctx);
 
 void ice_vsi_ctx_clear_allow_override(struct ice_vsi_ctx *ctx);
+bool ice_is_feature_supported(struct ice_pf *pf, enum ice_feature f);
+void ice_init_feature_support(struct ice_pf *pf);
 #endif /* !_ICE_LIB_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 6e3f9fb86c04..4f5ce08b2624 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4329,6 +4329,8 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		goto err_exit_unroll;
 	}
 
+	ice_init_feature_support(pf);
+
 	ice_request_fw(pf);
 
 	/* if ice_request_fw fails, ICE_FLAG_ADV_FEATURES bit won't be
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
