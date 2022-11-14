Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9B06280F0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Nov 2022 14:12:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E50C581926;
	Mon, 14 Nov 2022 13:12:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E50C581926
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668431570;
	bh=2wW+V6vTT5nkWD0W+6nA1vE1LlLEX7FK3cJqY1L3Gls=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wjhfD+6NCBSU37XdbzXQEAQP5GNXeHPBAGnvrohCL5DuyCPaV+14fZnRFDWZ9PI3F
	 twXvLHp4kZWmItrPjYIm/FSUaqRS2c/sKnx7wkobSzEVTjbnweoRMMxTo7N13L525S
	 6JbKD/dlU+7FqPk+zO+t9KZGSXcnNVYZQHV/pybJPbacUAAVsnOEnfl3QD5cnq1hSy
	 wBCn0EwGwM+m7cTf+hjVy4mpwB4FW4sxkzauQ4wv2Cn6GcG2PbIAJRrlv/qNbTu4EI
	 ypZvDQG/0vmfRg5W6JSG6W+6GZymw5sfnUCGfbmYr5/fiTrNsuHoDcdekwg2qZm2KZ
	 eLQX6PGEvUrHA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yhr9rhVZNc9j; Mon, 14 Nov 2022 13:12:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BF45281886;
	Mon, 14 Nov 2022 13:12:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF45281886
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 221C31BF379
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 13:12:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C2E4B818D4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 13:12:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C2E4B818D4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g_xzdwavlKrC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Nov 2022 13:12:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E95A3817FF
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E95A3817FF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 13:12:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="313766772"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="313766772"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 05:12:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="616306051"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="616306051"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga006.jf.intel.com with ESMTP; 14 Nov 2022 05:12:37 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: netdev@vger.kernel.org, davem@davemloft.net, kuba@kernel.org,
 pabeni@redhat.com, edumazet@google.com
Date: Mon, 14 Nov 2022 13:57:52 +0100
Message-Id: <20221114125755.13659-11-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
References: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668431561; x=1699967561;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/CSUny8U47MerrLf+/3eVAxaY7Q88qyef3AfZpl/+Sc=;
 b=l4iv71jszU8lg9p+33fviqSMHGVHgK3r5CVZ8x1gBMIY792OqbGmFzHQ
 +7ZxZeWOJFL9AQ7MlL4DqSmT5U2WVuHYR7aYKwPICfdJb1wB/Lril0CM5
 yN0YWICOSJWWtbgT0qRSDddgiGUr30DnxziSxTQz/5e3zmLsduEDMWuZQ
 6NCKG0YOCvWhAc6CLIVn/7O5Dpjv5CW7D7B9+lygNWx4oIcA5fb0opvd4
 l5L5M0eUTccwX8PfXhUVmf4Ob4uF+muAHdbwi/7aQL5YwZttGg5hpF7g3
 08O9ssUrlVwa9i9E59gTljzRk6FOmYDEEzM9WyRiCJyztcuEmk08q5ImK
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l4iv71js
Subject: [Intel-wired-lan] [PATCH net-next 10/13] ice: implement devlink
 reinit action
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
Cc: mustafa.ismail@intel.com, leszek.kaliszczuk@intel.com, jiri@nvidia.com,
 intel-wired-lan@lists.osuosl.org, shiraz.saleem@intel.com,
 przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Call ice_unload() and ice_load() in driver reinit flow.

Block reinit when switchdev, ADQ or SRIOV is active. In reload path we
don't want to rebuild all features. Ask user to remove them instead of
quitely removing it in reload path.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_devlink.c | 103 +++++++++++++++----
 1 file changed, 81 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 455489e9457d..8f73c4008a56 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -376,10 +376,7 @@ static int ice_devlink_info_get(struct devlink *devlink,
 
 /**
  * ice_devlink_reload_empr_start - Start EMP reset to activate new firmware
- * @devlink: pointer to the devlink instance to reload
- * @netns_change: if true, the network namespace is changing
- * @action: the action to perform. Must be DEVLINK_RELOAD_ACTION_FW_ACTIVATE
- * @limit: limits on what reload should do, such as not resetting
+ * @pf: pointer to the pf instance
  * @extack: netlink extended ACK structure
  *
  * Allow user to activate new Embedded Management Processor firmware by
@@ -392,12 +389,9 @@ static int ice_devlink_info_get(struct devlink *devlink,
  * any source.
  */
 static int
-ice_devlink_reload_empr_start(struct devlink *devlink, bool netns_change,
-			      enum devlink_reload_action action,
-			      enum devlink_reload_limit limit,
+ice_devlink_reload_empr_start(struct ice_pf *pf,
 			      struct netlink_ext_ack *extack)
 {
-	struct ice_pf *pf = devlink_priv(devlink);
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
 	u8 pending;
@@ -435,12 +429,52 @@ ice_devlink_reload_empr_start(struct devlink *devlink, bool netns_change,
 	return 0;
 }
 
+/**
+ * ice_devlink_reload_down - prepare for reload
+ * @devlink: pointer to the devlink instance to reload
+ * @netns_change: if true, the network namespace is changing
+ * @action: the action to perform
+ * @limit: limits on what reload should do, such as not resetting
+ * @extack: netlink extended ACK structure
+ */
+static int
+ice_devlink_reload_down(struct devlink *devlink, bool netns_change,
+			enum devlink_reload_action action,
+			enum devlink_reload_limit limit,
+			struct netlink_ext_ack *extack)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+
+	switch (action) {
+	case DEVLINK_RELOAD_ACTION_DRIVER_REINIT:
+		if (ice_is_eswitch_mode_switchdev(pf)) {
+			NL_SET_ERR_MSG_MOD(extack,
+					   "Go to legacy mode before doing reinit\n");
+			return -EOPNOTSUPP;
+		}
+		if (ice_is_adq_active(pf)) {
+			NL_SET_ERR_MSG_MOD(extack,
+					   "Turn off ADQ before doing reinit\n");
+			return -EOPNOTSUPP;
+		}
+		if (ice_has_vfs(pf)) {
+			NL_SET_ERR_MSG_MOD(extack,
+					   "Remove all VFs before doing reinit\n");
+			return -EOPNOTSUPP;
+		}
+		ice_unload(pf);
+		return 0;
+	case DEVLINK_RELOAD_ACTION_FW_ACTIVATE:
+		return ice_devlink_reload_empr_start(pf, extack);
+	default:
+		WARN_ON(1);
+		return -EOPNOTSUPP;
+	}
+}
+
 /**
  * ice_devlink_reload_empr_finish - Wait for EMP reset to finish
- * @devlink: pointer to the devlink instance reloading
- * @action: the action requested
- * @limit: limits imposed by userspace, such as not resetting
- * @actions_performed: on return, indicate what actions actually performed
+ * @pf: pointer to the pf instance
  * @extack: netlink extended ACK structure
  *
  * Wait for driver to finish rebuilding after EMP reset is completed. This
@@ -448,17 +482,11 @@ ice_devlink_reload_empr_start(struct devlink *devlink, bool netns_change,
  * for the driver's rebuild to complete.
  */
 static int
-ice_devlink_reload_empr_finish(struct devlink *devlink,
-			       enum devlink_reload_action action,
-			       enum devlink_reload_limit limit,
-			       u32 *actions_performed,
+ice_devlink_reload_empr_finish(struct ice_pf *pf,
 			       struct netlink_ext_ack *extack)
 {
-	struct ice_pf *pf = devlink_priv(devlink);
 	int err;
 
-	*actions_performed = BIT(DEVLINK_RELOAD_ACTION_FW_ACTIVATE);
-
 	err = ice_wait_for_reset(pf, 60 * HZ);
 	if (err) {
 		NL_SET_ERR_MSG_MOD(extack, "Device still resetting after 1 minute");
@@ -713,12 +741,43 @@ ice_devlink_port_unsplit(struct devlink *devlink, struct devlink_port *port,
 	return ice_devlink_port_split(devlink, port, 1, extack);
 }
 
+/**
+ * ice_devlink_reload_up - do reload up after reinit
+ * @devlink: pointer to the devlink instance reloading
+ * @action: the action requested
+ * @limit: limits imposed by userspace, such as not resetting
+ * @actions_performed: on return, indicate what actions actually performed
+ * @extack: netlink extended ACK structure
+ */
+static int
+ice_devlink_reload_up(struct devlink *devlink,
+		      enum devlink_reload_action action,
+		      enum devlink_reload_limit limit,
+		      u32 *actions_performed,
+		      struct netlink_ext_ack *extack)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+
+	switch (action) {
+	case DEVLINK_RELOAD_ACTION_DRIVER_REINIT:
+		*actions_performed = BIT(DEVLINK_RELOAD_ACTION_DRIVER_REINIT);
+		return ice_load(pf);
+	case DEVLINK_RELOAD_ACTION_FW_ACTIVATE:
+		*actions_performed = BIT(DEVLINK_RELOAD_ACTION_FW_ACTIVATE);
+		return ice_devlink_reload_empr_finish(pf, extack);
+	default:
+		WARN_ON(1);
+		return -EOPNOTSUPP;
+	}
+}
+
 static const struct devlink_ops ice_devlink_ops = {
 	.supported_flash_update_params = DEVLINK_SUPPORT_FLASH_UPDATE_OVERWRITE_MASK,
-	.reload_actions = BIT(DEVLINK_RELOAD_ACTION_FW_ACTIVATE),
+	.reload_actions = BIT(DEVLINK_RELOAD_ACTION_DRIVER_REINIT) |
+			  BIT(DEVLINK_RELOAD_ACTION_FW_ACTIVATE),
 	/* The ice driver currently does not support driver reinit */
-	.reload_down = ice_devlink_reload_empr_start,
-	.reload_up = ice_devlink_reload_empr_finish,
+	.reload_down = ice_devlink_reload_down,
+	.reload_up = ice_devlink_reload_up,
 	.port_split = ice_devlink_port_split,
 	.port_unsplit = ice_devlink_port_unsplit,
 	.eswitch_mode_get = ice_eswitch_mode_get,
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
