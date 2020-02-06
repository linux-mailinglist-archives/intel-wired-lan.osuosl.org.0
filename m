Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED9A7154A95
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Feb 2020 18:53:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AC4688613E;
	Thu,  6 Feb 2020 17:53:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zKXGw5KTC-xQ; Thu,  6 Feb 2020 17:53:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E72BE86102;
	Thu,  6 Feb 2020 17:53:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CCD651BF9B6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2020 17:53:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C9CD886119
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2020 17:53:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vGmHh4dzWiJ1 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Feb 2020 17:53:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E35E7860F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2020 17:53:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 09:53:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,410,1574150400"; d="scan'208";a="255160928"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga004.fm.intel.com with ESMTP; 06 Feb 2020 09:53:06 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 Feb 2020 01:19:59 -0800
Message-Id: <20200206092013.23388-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S37 v3 01/15] ice: Fix DCB rebuild after
 reset
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

From: Dave Ertman <david.m.ertman@intel.com>

The function ice_dcb_rebuild had some logic
flaws in it, and also didn't differentiate
between FW and SW modes needs.

For FW flow, the willing setting was being
forced to OFF and left that way.  Unwilling
in DCB FW mode is not a supported model.

Leave the config alone and use the return value
from the set command to determine if setting the
config was successful.

The SW DCB flow does not need to need to register
for MIB change events (as they are not used in
SW mode).

Use !is_sw_lldp checks to only perform FW specific
task while in FW mode.

Also adding a reapplication of the current DCB
config after a link event.  Some NVMs are not
maintaining their DCB configs across link events.

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
v3:
- Use goto's for single exit/unlock path
v2:
- Add missing mutex_unlock() in error path
---
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 88 ++++++++------------
 drivers/net/ethernet/intel/ice/ice_main.c    |  1 +
 2 files changed, 36 insertions(+), 53 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 9401f2051293..b42f8345b0f4 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -339,9 +339,9 @@ ice_dcb_need_recfg(struct ice_pf *pf, struct ice_dcbx_cfg *old_cfg,
  */
 void ice_dcb_rebuild(struct ice_pf *pf)
 {
-	struct ice_dcbx_cfg *local_dcbx_cfg, *desired_dcbx_cfg, *prev_cfg;
 	struct ice_aqc_port_ets_elem buf = { 0 };
 	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_dcbx_cfg *err_cfg;
 	enum ice_status ret;
 
 	ret = ice_query_port_ets(pf->hw.port_info, &buf, sizeof(buf), NULL);
@@ -354,53 +354,25 @@ void ice_dcb_rebuild(struct ice_pf *pf)
 	if (!test_bit(ICE_FLAG_DCB_ENA, pf->flags))
 		return;
 
-	local_dcbx_cfg = &pf->hw.port_info->local_dcbx_cfg;
-	desired_dcbx_cfg = &pf->hw.port_info->desired_dcbx_cfg;
+	mutex_lock(&pf->tc_mutex);
 
-	/* Save current willing state and force FW to unwilling */
-	local_dcbx_cfg->etscfg.willing = 0x0;
-	local_dcbx_cfg->pfc.willing = 0x0;
-	local_dcbx_cfg->app_mode = ICE_DCBX_APPS_NON_WILLING;
+	if (!pf->hw.port_info->is_sw_lldp)
+		ice_cfg_etsrec_defaults(pf->hw.port_info);
 
-	ice_cfg_etsrec_defaults(pf->hw.port_info);
 	ret = ice_set_dcb_cfg(pf->hw.port_info);
 	if (ret) {
-		dev_err(dev, "Failed to set DCB to unwilling\n");
+		dev_err(dev, "Failed to set DCB config in rebuild\n");
 		goto dcb_error;
 	}
 
-	/* Retrieve DCB config and ensure same as current in SW */
-	prev_cfg = kmemdup(local_dcbx_cfg, sizeof(*prev_cfg), GFP_KERNEL);
-	if (!prev_cfg)
-		goto dcb_error;
-
-	ice_init_dcb(&pf->hw, true);
-	if (pf->hw.port_info->dcbx_status == ICE_DCBX_STATUS_DIS)
-		pf->hw.port_info->is_sw_lldp = true;
-	else
-		pf->hw.port_info->is_sw_lldp = false;
-
-	if (ice_dcb_need_recfg(pf, prev_cfg, local_dcbx_cfg)) {
-		/* difference in cfg detected - disable DCB till next MIB */
-		dev_err(dev, "Set local MIB not accurate\n");
-		kfree(prev_cfg);
-		goto dcb_error;
+	if (!pf->hw.port_info->is_sw_lldp) {
+		ret = ice_cfg_lldp_mib_change(&pf->hw, true);
+		if (ret && !pf->hw.port_info->is_sw_lldp) {
+			dev_err(dev, "Failed to register for MIB changes\n");
+			goto dcb_error;
+		}
 	}
 
-	/* fetched config congruent to previous configuration */
-	kfree(prev_cfg);
-
-	/* Set the local desired config */
-	if (local_dcbx_cfg->dcbx_mode == ICE_DCBX_MODE_CEE)
-		memcpy(local_dcbx_cfg, desired_dcbx_cfg,
-		       sizeof(*local_dcbx_cfg));
-
-	ice_cfg_etsrec_defaults(pf->hw.port_info);
-	ret = ice_set_dcb_cfg(pf->hw.port_info);
-	if (ret) {
-		dev_err(dev, "Failed to set desired config\n");
-		goto dcb_error;
-	}
 	dev_info(dev, "DCB restored after reset\n");
 	ret = ice_query_port_ets(pf->hw.port_info, &buf, sizeof(buf), NULL);
 	if (ret) {
@@ -408,26 +380,32 @@ void ice_dcb_rebuild(struct ice_pf *pf)
 		goto dcb_error;
 	}
 
+	mutex_unlock(&pf->tc_mutex);
+
 	return;
 
 dcb_error:
 	dev_err(dev, "Disabling DCB until new settings occur\n");
-	prev_cfg = kzalloc(sizeof(*prev_cfg), GFP_KERNEL);
-	if (!prev_cfg)
+	err_cfg = kzalloc(sizeof(*err_cfg), GFP_KERNEL);
+	if (!err_cfg) {
+		mutex_unlock(&pf->tc_mutex);
 		return;
+	}
 
-	prev_cfg->etscfg.willing = true;
-	prev_cfg->etscfg.tcbwtable[0] = ICE_TC_MAX_BW;
-	prev_cfg->etscfg.tsatable[0] = ICE_IEEE_TSA_ETS;
-	memcpy(&prev_cfg->etsrec, &prev_cfg->etscfg, sizeof(prev_cfg->etsrec));
+	err_cfg->etscfg.willing = true;
+	err_cfg->etscfg.tcbwtable[0] = ICE_TC_MAX_BW;
+	err_cfg->etscfg.tsatable[0] = ICE_IEEE_TSA_ETS;
+	memcpy(&err_cfg->etsrec, &err_cfg->etscfg, sizeof(err_cfg->etsrec));
 	/* Coverity warns the return code of ice_pf_dcb_cfg() is not checked
 	 * here as is done for other calls to that function. That check is
 	 * not necessary since this is in this function's error cleanup path.
 	 * Suppress the Coverity warning with the following comment...
 	 */
 	/* coverity[check_return] */
-	ice_pf_dcb_cfg(pf, prev_cfg, false);
-	kfree(prev_cfg);
+	ice_pf_dcb_cfg(pf, err_cfg, false);
+	kfree(err_cfg);
+
+	mutex_unlock(&pf->tc_mutex);
 }
 
 /**
@@ -842,6 +820,8 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 		}
 	}
 
+	mutex_lock(&pf->tc_mutex);
+
 	/* store the old configuration */
 	tmp_dcbx_cfg = pf->hw.port_info->local_dcbx_cfg;
 
@@ -852,20 +832,20 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 	ret = ice_get_dcb_cfg(pf->hw.port_info);
 	if (ret) {
 		dev_err(dev, "Failed to get DCB config\n");
-		return;
+		goto out;
 	}
 
 	/* No change detected in DCBX configs */
 	if (!memcmp(&tmp_dcbx_cfg, &pi->local_dcbx_cfg, sizeof(tmp_dcbx_cfg))) {
 		dev_dbg(dev, "No change detected in DCBX configuration.\n");
-		return;
+		goto out;
 	}
 
 	need_reconfig = ice_dcb_need_recfg(pf, &tmp_dcbx_cfg,
 					   &pi->local_dcbx_cfg);
 	ice_dcbnl_flush_apps(pf, &tmp_dcbx_cfg, &pi->local_dcbx_cfg);
 	if (!need_reconfig)
-		return;
+		goto out;
 
 	/* Enable DCB tagging only when more than one TC */
 	if (ice_dcb_get_num_tc(&pi->local_dcbx_cfg) > 1) {
@@ -879,7 +859,7 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 	pf_vsi = ice_get_main_vsi(pf);
 	if (!pf_vsi) {
 		dev_dbg(dev, "PF VSI doesn't exist\n");
-		return;
+		goto out;
 	}
 
 	rtnl_lock();
@@ -888,13 +868,15 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 	ret = ice_query_port_ets(pf->hw.port_info, &buf, sizeof(buf), NULL);
 	if (ret) {
 		dev_err(dev, "Query Port ETS failed\n");
-		rtnl_unlock();
-		return;
+		goto unlock_rtnl;
 	}
 
 	/* changes in configuration update VSI */
 	ice_pf_dcb_recfg(pf);
 
 	ice_ena_vsi(pf_vsi, true);
+unlock_rtnl:
 	rtnl_unlock();
+out:
+	mutex_unlock(&pf->tc_mutex);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 6ce422789df7..d4bc6fd3321c 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -844,6 +844,7 @@ ice_link_event(struct ice_pf *pf, struct ice_port_info *pi, bool link_up,
 		}
 	}
 
+	ice_dcb_rebuild(pf);
 	ice_vsi_link_event(vsi, link_up);
 	ice_print_link_msg(vsi, link_up);
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
