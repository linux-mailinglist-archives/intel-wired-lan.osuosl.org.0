Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 573E8649DEE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Dec 2022 12:33:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 51F0560D5B;
	Mon, 12 Dec 2022 11:33:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 51F0560D5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670844817;
	bh=yQ3PONhMRsDGb6/JQa5Ge2kyyKvzca9Q5pFfCArtoZY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hct4cGfOj0bPLLhudEQ8j+2GzUkX31tvjPay02SrgHfFOExIbtpw7NfZjAt57zHg/
	 3F5je29GQRqZZYO+VX1mpyamBQoYuW3oZiuj2XXCulczq8PL7wiGZEdeJZsVs9ZT97
	 /o8CCbpPQ0pPzRRl6iJHoFA5qNQT8yedstQDMhmzufUzhD4H9wdCznheMunFVJ2Rc8
	 HHA99gwZI8+haKl7AtmrNhfFpAm+21ZTaSFKkAe68A5HhgmKNkbzgTaShaK/X9r+vI
	 lhsu23cbx+J41/kdN42GOyZnClkD6a0CCRtR0gsgHawWGDegp/v+iB9aXMSpcXUMSd
	 pCrTzukUsDY8w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zs9I6nD8zzek; Mon, 12 Dec 2022 11:33:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3017760AAC;
	Mon, 12 Dec 2022 11:33:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3017760AAC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 53B301BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 11:33:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3BB7E813C3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 11:33:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3BB7E813C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Pua5is1S9D1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Dec 2022 11:33:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E7FE813B7
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6E7FE813B7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 11:33:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="317861571"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="317861571"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 03:33:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="893459888"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="893459888"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga006.fm.intel.com with ESMTP; 12 Dec 2022 03:33:24 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 12 Dec 2022 12:16:45 +0100
Message-Id: <20221212111645.1198680-11-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221212111645.1198680-1-michal.swiatkowski@linux.intel.com>
References: <20221212111645.1198680-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670844808; x=1702380808;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k7F0RsBShYShjyyust5V+qOrYvPPyL755O2kv+7WwHo=;
 b=hqDmQZ4ovcdF3If4K0T4bp/RLc2kYCiEdIZ1dJZ20ekeCjDMBuFUz6Z7
 3VgBPxGsmKXjsDpBi9FycQlzJGzvToUQYoMMhvwhX5VQBL2yXQqUqG86j
 9HPDKlxShjrFqDQ2imVkNSd413KVRN5/+/0V74LipVm2cWMTiK64rN7Vl
 l+XWdvD2DW/RELD4bJoBvc8goqgsC9Q+Vyl2qG3uTWeGCpDknYTjcpk9R
 qWRRcwBS/lD2+60nOn4qlqo9xEbkr1CKnNsQQN6DVMUHOXqgd8QyD4XUL
 wahtM8hCmDW+bBxwVpRcQsbwX2rCwUUecMYoEXhRyvV409FE/8txYjVnH
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hqDmQZ4o
Subject: [Intel-wired-lan] [PATCH net-next v1 10/10] ice: implement devlink
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
Cc: mustafa.ismail@intel.com, leon@kernel.org, benjamin.mikailenko@intel.com,
 jesse.brandeburg@intel.com, leszek.kaliszczuk@intel.com, kuba@kernel.org,
 netdev@vger.kernel.org, przemyslaw.kitszel@intel.com, shiraz.saleem@intel.com
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
index 3d109193b7ea..77ae1e0ed734 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -525,10 +525,7 @@ static int ice_devlink_txbalance_validate(struct devlink *devlink, u32 id,
 
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
@@ -541,12 +538,9 @@ static int ice_devlink_txbalance_validate(struct devlink *devlink, u32 id,
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
@@ -584,12 +578,52 @@ ice_devlink_reload_empr_start(struct devlink *devlink, bool netns_change,
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
@@ -597,17 +631,11 @@ ice_devlink_reload_empr_start(struct devlink *devlink, bool netns_change,
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
@@ -1346,12 +1374,43 @@ static int ice_devlink_set_parent(struct devlink_rate *devlink_rate,
 	return status;
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
