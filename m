Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2E375566
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2019 19:24:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E1F3C8817D;
	Thu, 25 Jul 2019 17:24:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EbIY9K+jCMNM; Thu, 25 Jul 2019 17:24:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 29B0888185;
	Thu, 25 Jul 2019 17:24:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 73CC71BF312
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 17:24:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6C682864BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 17:24:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 47c2zWi1YaJc for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2019 17:23:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 00A94864D0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 17:23:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 10:23:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,307,1559545200"; d="scan'208";a="160973708"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga007.jf.intel.com with ESMTP; 25 Jul 2019 10:23:56 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jul 2019 01:55:33 -0700
Message-Id: <20190725085541.55104-7-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190725085541.55104-1-anthony.l.nguyen@intel.com>
References: <20190725085541.55104-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S23 v4 07/15] ice: Fix kernel hang with
 DCB reset in CEE mode
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

From: Usha Ketineni <usha.k.ketineni@intel.com>

This patch fixes the set local MIB AQ call failures in the DCB rebuild path
by setting the defaults for the ETS recommended DCB configuration. Also,
willing bits for the DCB configuration needs to be set correctly. Resets
works fine in IEEE mode as the ETS recommended DCB configuration is
populated but not in CEE mode.
Without this patch, PFR causes the kernel hang in CEE mode.

Signed-off-by: Usha Ketineni <usha.k.ketineni@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 149 +++++++++++--------
 1 file changed, 88 insertions(+), 61 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index f80628a13f2a..d285aba3fea7 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -208,16 +208,87 @@ int ice_pf_dcb_cfg(struct ice_pf *pf, struct ice_dcbx_cfg *new_cfg, bool locked)
 	return ret;
 }
 
+/**
+ * ice_cfg_etsrec_defaults - Set default ETS recommended DCB config
+ * @pi: port information structure
+ */
+static void ice_cfg_etsrec_defaults(struct ice_port_info *pi)
+{
+	struct ice_dcbx_cfg *dcbcfg = &pi->local_dcbx_cfg;
+	u8 i;
+
+	/* Ensure ETS recommended DCB configuration is not already set */
+	if (dcbcfg->etsrec.maxtcs)
+		return;
+
+	/* In CEE mode, set the default to 1 TC */
+	dcbcfg->etsrec.maxtcs = 1;
+	for (i = 0; i < ICE_MAX_TRAFFIC_CLASS; i++) {
+		dcbcfg->etsrec.tcbwtable[i] = i ? 0 : 100;
+		dcbcfg->etsrec.tsatable[i] = i ? ICE_IEEE_TSA_STRICT :
+						 ICE_IEEE_TSA_ETS;
+	}
+}
+
+/**
+ * ice_dcb_need_recfg - Check if DCB needs reconfig
+ * @pf: board private structure
+ * @old_cfg: current DCB config
+ * @new_cfg: new DCB config
+ */
+static bool
+ice_dcb_need_recfg(struct ice_pf *pf, struct ice_dcbx_cfg *old_cfg,
+		   struct ice_dcbx_cfg *new_cfg)
+{
+	bool need_reconfig = false;
+
+	/* Check if ETS configuration has changed */
+	if (memcmp(&new_cfg->etscfg, &old_cfg->etscfg,
+		   sizeof(new_cfg->etscfg))) {
+		/* If Priority Table has changed reconfig is needed */
+		if (memcmp(&new_cfg->etscfg.prio_table,
+			   &old_cfg->etscfg.prio_table,
+			   sizeof(new_cfg->etscfg.prio_table))) {
+			need_reconfig = true;
+			dev_dbg(&pf->pdev->dev, "ETS UP2TC changed.\n");
+		}
+
+		if (memcmp(&new_cfg->etscfg.tcbwtable,
+			   &old_cfg->etscfg.tcbwtable,
+			   sizeof(new_cfg->etscfg.tcbwtable)))
+			dev_dbg(&pf->pdev->dev, "ETS TC BW Table changed.\n");
+
+		if (memcmp(&new_cfg->etscfg.tsatable,
+			   &old_cfg->etscfg.tsatable,
+			   sizeof(new_cfg->etscfg.tsatable)))
+			dev_dbg(&pf->pdev->dev, "ETS TSA Table changed.\n");
+	}
+
+	/* Check if PFC configuration has changed */
+	if (memcmp(&new_cfg->pfc, &old_cfg->pfc, sizeof(new_cfg->pfc))) {
+		need_reconfig = true;
+		dev_dbg(&pf->pdev->dev, "PFC config change detected.\n");
+	}
+
+	/* Check if APP Table has changed */
+	if (memcmp(&new_cfg->app, &old_cfg->app, sizeof(new_cfg->app))) {
+		need_reconfig = true;
+		dev_dbg(&pf->pdev->dev, "APP Table change detected.\n");
+	}
+
+	dev_dbg(&pf->pdev->dev, "dcb need_reconfig=%d\n", need_reconfig);
+	return need_reconfig;
+}
+
 /**
  * ice_dcb_rebuild - rebuild DCB post reset
  * @pf: physical function instance
  */
 void ice_dcb_rebuild(struct ice_pf *pf)
 {
+	struct ice_dcbx_cfg *local_dcbx_cfg, *desired_dcbx_cfg, *prev_cfg;
 	struct ice_aqc_port_ets_elem buf = { 0 };
-	struct ice_dcbx_cfg *prev_cfg;
 	enum ice_status ret;
-	u8 willing;
 
 	ret = ice_query_port_ets(pf->hw.port_info, &buf, sizeof(buf), NULL);
 	if (ret) {
@@ -229,9 +300,15 @@ void ice_dcb_rebuild(struct ice_pf *pf)
 	if (!test_bit(ICE_FLAG_DCB_ENA, pf->flags))
 		return;
 
+	local_dcbx_cfg = &pf->hw.port_info->local_dcbx_cfg;
+	desired_dcbx_cfg = &pf->hw.port_info->desired_dcbx_cfg;
+
 	/* Save current willing state and force FW to unwilling */
-	willing = pf->hw.port_info->local_dcbx_cfg.etscfg.willing;
-	pf->hw.port_info->local_dcbx_cfg.etscfg.willing = 0x0;
+	local_dcbx_cfg->etscfg.willing = 0x0;
+	local_dcbx_cfg->pfc.willing = 0x0;
+	local_dcbx_cfg->app_mode = ICE_DCBX_APPS_NON_WILLING;
+
+	ice_cfg_etsrec_defaults(pf->hw.port_info);
 	ret = ice_set_dcb_cfg(pf->hw.port_info);
 	if (ret) {
 		dev_err(&pf->pdev->dev, "Failed to set DCB to unwilling\n");
@@ -239,8 +316,7 @@ void ice_dcb_rebuild(struct ice_pf *pf)
 	}
 
 	/* Retrieve DCB config and ensure same as current in SW */
-	prev_cfg = devm_kmemdup(&pf->pdev->dev,
-				&pf->hw.port_info->local_dcbx_cfg,
+	prev_cfg = devm_kmemdup(&pf->pdev->dev, local_dcbx_cfg,
 				sizeof(*prev_cfg), GFP_KERNEL);
 	if (!prev_cfg) {
 		dev_err(&pf->pdev->dev, "Failed to alloc space for DCB cfg\n");
@@ -248,22 +324,22 @@ void ice_dcb_rebuild(struct ice_pf *pf)
 	}
 
 	ice_init_dcb(&pf->hw);
-	if (memcmp(prev_cfg, &pf->hw.port_info->local_dcbx_cfg,
-		   sizeof(*prev_cfg))) {
+	if (ice_dcb_need_recfg(pf, prev_cfg, local_dcbx_cfg)) {
 		/* difference in cfg detected - disable DCB till next MIB */
 		dev_err(&pf->pdev->dev, "Set local MIB not accurate\n");
-		devm_kfree(&pf->pdev->dev, prev_cfg);
 		goto dcb_error;
 	}
 
 	/* fetched config congruent to previous configuration */
 	devm_kfree(&pf->pdev->dev, prev_cfg);
 
-	/* Configuration replayed - reset willing state to previous */
-	pf->hw.port_info->local_dcbx_cfg.etscfg.willing = willing;
+	/* Set the local desired config */
+	memset(&pf->hw.port_info->local_dcbx_cfg, 0, sizeof(*local_dcbx_cfg));
+	memcpy(local_dcbx_cfg, desired_dcbx_cfg, sizeof(*local_dcbx_cfg));
+	ice_cfg_etsrec_defaults(pf->hw.port_info);
 	ret = ice_set_dcb_cfg(pf->hw.port_info);
 	if (ret) {
-		dev_err(&pf->pdev->dev, "Fail restoring prev willing state\n");
+		dev_err(&pf->pdev->dev, "Failed to set desired config\n");
 		goto dcb_error;
 	}
 	dev_info(&pf->pdev->dev, "DCB restored after reset\n");
@@ -506,55 +582,6 @@ ice_tx_prepare_vlan_flags_dcb(struct ice_ring *tx_ring,
 	return 0;
 }
 
-/**
- * ice_dcb_need_recfg - Check if DCB needs reconfig
- * @pf: board private structure
- * @old_cfg: current DCB config
- * @new_cfg: new DCB config
- */
-static bool ice_dcb_need_recfg(struct ice_pf *pf, struct ice_dcbx_cfg *old_cfg,
-			       struct ice_dcbx_cfg *new_cfg)
-{
-	bool need_reconfig = false;
-
-	/* Check if ETS configuration has changed */
-	if (memcmp(&new_cfg->etscfg, &old_cfg->etscfg,
-		   sizeof(new_cfg->etscfg))) {
-		/* If Priority Table has changed reconfig is needed */
-		if (memcmp(&new_cfg->etscfg.prio_table,
-			   &old_cfg->etscfg.prio_table,
-			   sizeof(new_cfg->etscfg.prio_table))) {
-			need_reconfig = true;
-			dev_dbg(&pf->pdev->dev, "ETS UP2TC changed.\n");
-		}
-
-		if (memcmp(&new_cfg->etscfg.tcbwtable,
-			   &old_cfg->etscfg.tcbwtable,
-			   sizeof(new_cfg->etscfg.tcbwtable)))
-			dev_dbg(&pf->pdev->dev, "ETS TC BW Table changed.\n");
-
-		if (memcmp(&new_cfg->etscfg.tsatable,
-			   &old_cfg->etscfg.tsatable,
-			   sizeof(new_cfg->etscfg.tsatable)))
-			dev_dbg(&pf->pdev->dev, "ETS TSA Table changed.\n");
-	}
-
-	/* Check if PFC configuration has changed */
-	if (memcmp(&new_cfg->pfc, &old_cfg->pfc, sizeof(new_cfg->pfc))) {
-		need_reconfig = true;
-		dev_dbg(&pf->pdev->dev, "PFC config change detected.\n");
-	}
-
-	/* Check if APP Table has changed */
-	if (memcmp(&new_cfg->app, &old_cfg->app, sizeof(new_cfg->app))) {
-		need_reconfig = true;
-		dev_dbg(&pf->pdev->dev, "APP Table change detected.\n");
-	}
-
-	dev_dbg(&pf->pdev->dev, "dcb need_reconfig=%d\n", need_reconfig);
-	return need_reconfig;
-}
-
 /**
  * ice_dcb_process_lldp_set_mib_change - Process MIB change
  * @pf: ptr to ice_pf
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
