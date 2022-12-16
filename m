Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3F464E864
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Dec 2022 09:59:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F1D3141BBE;
	Fri, 16 Dec 2022 08:59:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F1D3141BBE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671181155;
	bh=d9WnSh4sTvthDdxYKfPqLy8MfyySzGJ5sIs2Nqathkg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=G9bGB1EwXL1GzY5/UJNhTgRejxKC2SXywFqslPZE+DjLRABLflvTFnjNfUvtrpYsm
	 vvVd3N3I7m7aUNEiBUmZC3e6Ha90DhikRjih/8fbFoJmbfGlFbjBjXUIBhjcldA1nC
	 QRaP2H8X5LdXYSU3M6g3HWk2gORN0/RmbilV+UwCd96sfljgixdxnaYHypHtrpoeZV
	 CDimBYaaTu209CQxbwfT64ehsIMq++DlDxxU0IO99sbS91IVr29EsEw/jwDuNwzu7w
	 OZYbYE7KoIKpy23485vQgRzcTFAvd3EXdXXys34ChRdeYZdnB6lyU2yyX3uw2vjE5r
	 ZGTSX7yBmoJuw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IHZ00ErtxUKZ; Fri, 16 Dec 2022 08:59:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 96BF041B9A;
	Fri, 16 Dec 2022 08:59:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96BF041B9A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ED1A71BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 08:58:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C90D36110B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 08:58:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C90D36110B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wEBRgZCOpCNt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Dec 2022 08:58:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E53AB61106
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E53AB61106
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 08:58:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="383256841"
X-IronPort-AV: E=Sophos;i="5.96,249,1665471600"; d="scan'208";a="383256841"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 00:58:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="738471900"
X-IronPort-AV: E=Sophos;i="5.96,249,1665471600"; d="scan'208";a="738471900"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Dec 2022 00:58:45 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 16 Dec 2022 09:43:19 +0100
Message-Id: <20221216084319.11699-11-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221216084319.11699-1-michal.swiatkowski@linux.intel.com>
References: <20221216084319.11699-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671181131; x=1702717131;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fd96qaNzore6qACdHLhmzTBnidmGv7hbLMIVyb2WeUQ=;
 b=emK4GseFzu7F2cKsye0yQaBwIInQA4/xZXxjlnj0cfjz5FZrMlZ9GlVN
 rehVmZtKDPU8VDZf9yrlVv4iBpHGmbYgMaUyeqEl5L/wS2Z9VCb+b7cad
 v20s607UxozsoRrrcHCSyq8/5NJWMSZ4mcLfMP9GUHH2Jn5Kfikz4f/ox
 jw9dpbEv7JvbRcph+b/+X1Nyv3pQKTuFvPV2loVxpJFFTafg3Ac2lzSO8
 qBsXYZmFpuzxOuksCcVjOPu/VY4/HIB/67KawMgqXfa4G9hb6y4lRiNz9
 7JMRZbPWSJgyDe1w+ioxpXIAYiunWncaeh5JYz5LaBpIjY+p7JDb7fGlc
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=emK4GseF
Subject: [Intel-wired-lan] [PATCH net-next v2 10/10] ice: implement devlink
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
Cc: mustafa.ismail@intel.com, benjamin.mikailenko@intel.com,
 jesse.brandeburg@intel.com, leszek.kaliszczuk@intel.com,
 przemyslaw.kitszel@intel.com, shiraz.saleem@intel.com
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
index 8286e47b4bae..24023852a1d7 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -371,10 +371,7 @@ static int ice_devlink_info_get(struct devlink *devlink,
 
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
@@ -387,12 +384,9 @@ static int ice_devlink_info_get(struct devlink *devlink,
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
@@ -430,12 +424,52 @@ ice_devlink_reload_empr_start(struct devlink *devlink, bool netns_change,
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
@@ -443,17 +477,11 @@ ice_devlink_reload_empr_start(struct devlink *devlink, bool netns_change,
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
@@ -1192,12 +1220,43 @@ static int ice_devlink_set_parent(struct devlink_rate *devlink_rate,
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
