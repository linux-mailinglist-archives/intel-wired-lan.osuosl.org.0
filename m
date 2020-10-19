Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B29293227
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Oct 2020 01:56:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B28CD86A1D;
	Mon, 19 Oct 2020 23:56:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CU_O9zdMzs78; Mon, 19 Oct 2020 23:56:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8E09E869FD;
	Mon, 19 Oct 2020 23:56:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 731B71BF969
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Oct 2020 23:56:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2B76484371
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Oct 2020 23:56:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UfKrRlrBjgxD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Oct 2020 23:56:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0A78187298
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Oct 2020 23:56:03 +0000 (UTC)
IronPort-SDR: oIDCldpxpNZ8MjCXOkWHFKE9ME/mZ/EwRMzL+e3aQiq9KHfEOM2DX2fQQow3NmVmFNNBYg9+Li
 T6fNu9qkC8dw==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="166351761"
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="166351761"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 16:56:02 -0700
IronPort-SDR: OlZdwy5SNRzs6H1ijqEl3efuMigGJrOFCsLCkg1pK51NWDYog/s4P3BMr0Zpfmr8zS4gcnu1J3
 FExKwkRVOh9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="465712647"
Received: from amlin-018-053.igk.intel.com ([10.102.18.53])
 by orsmga004.jf.intel.com with ESMTP; 19 Oct 2020 16:56:01 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 19 Oct 2020 23:50:29 +0000
Message-Id: <20201019235029.176050-4-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20201019235029.176050-1-arkadiusz.kubalewski@intel.com>
References: <20201019235029.176050-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 3/3] i40e: Add netlink callbacks
 support for software based DCB
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add callbacks used by software based LLDP agent, which allows to
configure DCB feature from userspace.

Update copyright dates as appropriate.

If LLDP agent is turned off in BIOS, or after setting private flag
("disable-fw-lldp on"). The driver initialized DCB functionality with
default values, one traffic class with 100% bandwidth allocated.

The new netlink callbacks are required for software LLDP agent, it
must be able to acquire current DCB configuration of a network port
and apply DCB configuration changes, if required.

Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c | 752 +++++++++++++++++-
 1 file changed, 745 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c b/drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c
index 9deae9a35423..137ec47968c4 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c
@@ -1,10 +1,14 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright(c) 2013 - 2018 Intel Corporation. */
+/* Copyright(c) 2013 - 2020 Intel Corporation. */
 
 #ifdef CONFIG_I40E_DCB
 #include "i40e.h"
 #include <net/dcbnl.h>
 
+#define I40E_DCBNL_STATUS_SUCCESS	0
+#define I40E_DCBNL_STATUS_ERROR		1
+static bool i40e_dcbnl_find_app(struct i40e_dcbx_config *cfg,
+				struct i40e_dcb_app_priority_table *app);
 /**
  * i40e_get_pfc_delay - retrieve PFC Link Delay
  * @hw: pointer to hardware struct
@@ -33,14 +37,13 @@ static int i40e_dcbnl_ieee_getets(struct net_device *dev,
 {
 	struct i40e_pf *pf = i40e_netdev_to_pf(dev);
 	struct i40e_dcbx_config *dcbxcfg;
-	struct i40e_hw *hw = &pf->hw;
 
 	if (!(pf->dcbx_cap & DCB_CAP_DCBX_VER_IEEE))
 		return -EINVAL;
 
-	dcbxcfg = &hw->local_dcbx_config;
+	dcbxcfg = &pf->hw.local_dcbx_config;
 	ets->willing = dcbxcfg->etscfg.willing;
-	ets->ets_cap = dcbxcfg->etscfg.maxtcs;
+	ets->ets_cap = I40E_MAX_TRAFFIC_CLASS;
 	ets->cbs = dcbxcfg->etscfg.cbs;
 	memcpy(ets->tc_tx_bw, dcbxcfg->etscfg.tcbwtable,
 		sizeof(ets->tc_tx_bw));
@@ -84,7 +87,7 @@ static int i40e_dcbnl_ieee_getpfc(struct net_device *dev,
 	pfc->mbc = dcbxcfg->pfc.mbc;
 	i40e_get_pfc_delay(hw, &pfc->delay);
 
-	/* Get Requests/Indicatiosn */
+	/* Get Requests/Indications */
 	for (i = 0; i < I40E_MAX_TRAFFIC_CLASS; i++) {
 		pfc->requests[i] = pf->stats.priority_xoff_tx[i];
 		pfc->indications[i] = pf->stats.priority_xoff_rx[i];
@@ -93,6 +96,713 @@ static int i40e_dcbnl_ieee_getpfc(struct net_device *dev,
 	return 0;
 }
 
+/**
+ * i40e_dcbnl_ieee_setets - set IEEE ETS configuration
+ * @netdev: the corresponding netdev
+ * @ets: structure to hold the ETS information
+ *
+ * Set IEEE ETS configuration
+ **/
+static int i40e_dcbnl_ieee_setets(struct net_device *netdev,
+				  struct ieee_ets *ets)
+{
+	struct i40e_pf *pf = i40e_netdev_to_pf(netdev);
+	struct i40e_dcbx_config *old_cfg;
+	int i, ret;
+
+	if (!(pf->dcbx_cap & DCB_CAP_DCBX_VER_IEEE) ||
+	    (pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED))
+		return -EINVAL;
+
+	old_cfg = &pf->hw.local_dcbx_config;
+	/* Copy current config into temp */
+	pf->tmp_cfg = *old_cfg;
+
+	/* Update the ETS configuration for temp */
+	pf->tmp_cfg.etscfg.willing = ets->willing;
+	pf->tmp_cfg.etscfg.maxtcs = I40E_MAX_TRAFFIC_CLASS;
+	pf->tmp_cfg.etscfg.cbs = ets->cbs;
+	for (i = 0; i < I40E_MAX_TRAFFIC_CLASS; i++) {
+		pf->tmp_cfg.etscfg.tcbwtable[i] = ets->tc_tx_bw[i];
+		pf->tmp_cfg.etscfg.tsatable[i] = ets->tc_tsa[i];
+		pf->tmp_cfg.etscfg.prioritytable[i] = ets->prio_tc[i];
+		pf->tmp_cfg.etsrec.tcbwtable[i] = ets->tc_reco_bw[i];
+		pf->tmp_cfg.etsrec.tsatable[i] = ets->tc_reco_tsa[i];
+		pf->tmp_cfg.etsrec.prioritytable[i] = ets->reco_prio_tc[i];
+	}
+
+	/* Commit changes to HW */
+	ret = i40e_hw_dcb_config(pf, &pf->tmp_cfg);
+	if (ret) {
+		dev_info(&pf->pdev->dev,
+			 "Failed setting DCB ETS configuration err %s aq_err %s\n",
+			 i40e_stat_str(&pf->hw, ret),
+			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+/**
+ * i40e_dcbnl_ieee_setpfc - set local IEEE PFC configuration
+ * @netdev: the corresponding netdev
+ * @pfc: structure to hold the PFC information
+ *
+ * Sets local IEEE PFC configuration
+ **/
+static int i40e_dcbnl_ieee_setpfc(struct net_device *netdev,
+				  struct ieee_pfc *pfc)
+{
+	struct i40e_pf *pf = i40e_netdev_to_pf(netdev);
+	struct i40e_dcbx_config *old_cfg;
+	int ret;
+
+	if (!(pf->dcbx_cap & DCB_CAP_DCBX_VER_IEEE) ||
+	    (pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED))
+		return -EINVAL;
+
+	old_cfg = &pf->hw.local_dcbx_config;
+	/* Copy current config into temp */
+	pf->tmp_cfg = *old_cfg;
+	if (pfc->pfc_cap)
+		pf->tmp_cfg.pfc.pfccap = pfc->pfc_cap;
+	else
+		pf->tmp_cfg.pfc.pfccap = I40E_MAX_TRAFFIC_CLASS;
+	pf->tmp_cfg.pfc.pfcenable = pfc->pfc_en;
+
+	ret = i40e_hw_dcb_config(pf, &pf->tmp_cfg);
+	if (ret) {
+		dev_info(&pf->pdev->dev,
+			 "Failed setting DCB PFC configuration err %s aq_err %s\n",
+			 i40e_stat_str(&pf->hw, ret),
+			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+/**
+ * i40e_dcbnl_ieee_setapp - set local IEEE App configuration
+ * @netdev: the corresponding netdev
+ * @app: structure to hold the Application information
+ *
+ * Sets local IEEE App configuration
+ **/
+static int i40e_dcbnl_ieee_setapp(struct net_device *netdev,
+				  struct dcb_app *app)
+{
+	struct i40e_pf *pf = i40e_netdev_to_pf(netdev);
+	struct i40e_dcb_app_priority_table new_app;
+	struct i40e_dcbx_config *old_cfg;
+	int ret;
+
+	if (!(pf->dcbx_cap & DCB_CAP_DCBX_VER_IEEE) ||
+	    (pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED))
+		return -EINVAL;
+
+	old_cfg = &pf->hw.local_dcbx_config;
+	if (old_cfg->numapps == I40E_DCBX_MAX_APPS)
+		return -EINVAL;
+
+	ret = dcb_ieee_setapp(netdev, app);
+	if (ret)
+		return ret;
+
+	new_app.selector = app->selector;
+	new_app.protocolid = app->protocol;
+	new_app.priority = app->priority;
+	/* Already internally available */
+	if (i40e_dcbnl_find_app(old_cfg, &new_app))
+		return 0;
+
+	/* Copy current config into temp */
+	pf->tmp_cfg = *old_cfg;
+	/* Add the app */
+	pf->tmp_cfg.app[pf->tmp_cfg.numapps++] = new_app;
+
+	ret = i40e_hw_dcb_config(pf, &pf->tmp_cfg);
+	if (ret) {
+		dev_info(&pf->pdev->dev,
+			 "Failed setting DCB configuration err %s aq_err %s\n",
+			 i40e_stat_str(&pf->hw, ret),
+			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+/**
+ * i40e_dcbnl_ieee_delapp - delete local IEEE App configuration
+ * @netdev: the corresponding netdev
+ * @app: structure to hold the Application information
+ *
+ * Deletes local IEEE App configuration other than the first application
+ * required by firmware
+ **/
+static int i40e_dcbnl_ieee_delapp(struct net_device *netdev,
+				  struct dcb_app *app)
+{
+	struct i40e_pf *pf = i40e_netdev_to_pf(netdev);
+	struct i40e_dcbx_config *old_cfg;
+	int i, j, ret;
+
+	if (!(pf->dcbx_cap & DCB_CAP_DCBX_VER_IEEE) ||
+	    (pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED))
+		return -EINVAL;
+
+	ret = dcb_ieee_delapp(netdev, app);
+	if (ret)
+		return ret;
+
+	old_cfg = &pf->hw.local_dcbx_config;
+	/* Need one app for FW so keep it */
+	if (old_cfg->numapps == 1)
+		return 0;
+
+	/* Copy current config into temp */
+	pf->tmp_cfg = *old_cfg;
+
+	/* Find and reset the app */
+	for (i = 1; i < pf->tmp_cfg.numapps; i++) {
+		if (app->selector == pf->tmp_cfg.app[i].selector &&
+		    app->protocol == pf->tmp_cfg.app[i].protocolid &&
+		    app->priority == pf->tmp_cfg.app[i].priority) {
+			/* Reset the app data */
+			pf->tmp_cfg.app[i].selector = 0;
+			pf->tmp_cfg.app[i].protocolid = 0;
+			pf->tmp_cfg.app[i].priority = 0;
+			break;
+		}
+	}
+
+	/* If the specific DCB app not found */
+	if (i == pf->tmp_cfg.numapps)
+		return -EINVAL;
+
+	pf->tmp_cfg.numapps--;
+	/* Overwrite the tmp_cfg app */
+	for (j = i; j < pf->tmp_cfg.numapps; j++)
+		pf->tmp_cfg.app[j] = old_cfg->app[j + 1];
+
+	ret = i40e_hw_dcb_config(pf, &pf->tmp_cfg);
+	if (ret) {
+		dev_info(&pf->pdev->dev,
+			 "Failed setting DCB configuration err %s aq_err %s\n",
+			 i40e_stat_str(&pf->hw, ret),
+			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+/**
+ * i40e_dcbnl_getstate - Get DCB enabled state
+ * @netdev: the corresponding netdev
+ *
+ * Get the current DCB enabled state
+ **/
+static u8 i40e_dcbnl_getstate(struct net_device *netdev)
+{
+	struct i40e_pf *pf = i40e_netdev_to_pf(netdev);
+
+	dev_dbg(&pf->pdev->dev, "DCB state=%d\n",
+		!!(pf->flags & I40E_FLAG_DCB_ENABLED));
+	return !!(pf->flags & I40E_FLAG_DCB_ENABLED);
+}
+
+/**
+ * i40e_dcbnl_setstate - Set DCB state
+ * @netdev: the corresponding netdev
+ * @state: enable or disable
+ *
+ * Set the DCB state
+ **/
+static u8 i40e_dcbnl_setstate(struct net_device *netdev, u8 state)
+{
+	struct i40e_pf *pf = i40e_netdev_to_pf(netdev);
+	int ret = I40E_DCBNL_STATUS_SUCCESS;
+
+	if (!(pf->dcbx_cap & DCB_CAP_DCBX_VER_CEE) ||
+	    (pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED))
+		return ret;
+
+	dev_dbg(&pf->pdev->dev, "new state=%d current state=%d\n",
+		state, (pf->flags & I40E_FLAG_DCB_ENABLED) ? 1 : 0);
+	/* Nothing to do */
+	if (!state == !(pf->flags & I40E_FLAG_DCB_ENABLED))
+		return ret;
+
+	if (i40e_is_sw_dcb(pf)) {
+		if (state) {
+			pf->flags |= I40E_FLAG_DCB_ENABLED;
+			memcpy(&pf->hw.desired_dcbx_config,
+			       &pf->hw.local_dcbx_config,
+			       sizeof(struct i40e_dcbx_config));
+		} else {
+			pf->flags &= ~I40E_FLAG_DCB_ENABLED;
+		}
+	} else {
+		/* Cannot directly manipulate FW LLDP Agent */
+		ret = I40E_DCBNL_STATUS_ERROR;
+	}
+	return ret;
+}
+
+/**
+ * i40e_dcbnl_set_pg_tc_cfg_tx - Set CEE PG Tx config
+ * @netdev: the corresponding netdev
+ * @tc: the corresponding traffic class
+ * @prio_type: the traffic priority type
+ * @bwg_id: the BW group id the traffic class belongs to
+ * @bw_pct: the BW percentage for the corresponding BWG
+ * @up_map: prio mapped to corresponding tc
+ *
+ * Set Tx PG settings for CEE mode
+ **/
+static void i40e_dcbnl_set_pg_tc_cfg_tx(struct net_device *netdev, int tc,
+					u8 prio_type, u8 bwg_id, u8 bw_pct,
+					u8 up_map)
+{
+	struct i40e_pf *pf = i40e_netdev_to_pf(netdev);
+	int i;
+
+	if (!(pf->dcbx_cap & DCB_CAP_DCBX_VER_CEE) ||
+	    (pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED))
+		return;
+
+	/* LLTC not supported yet */
+	if (tc >= I40E_MAX_TRAFFIC_CLASS)
+		return;
+
+	/* prio_type, bwg_id and bw_pct per UP are not supported */
+
+	/* Use only up_map to map tc */
+	for (i = 0; i < I40E_MAX_TRAFFIC_CLASS; i++) {
+		if (up_map & BIT(i))
+			pf->tmp_cfg.etscfg.prioritytable[i] = tc;
+	}
+	pf->tmp_cfg.etscfg.tsatable[tc] = I40E_IEEE_TSA_ETS;
+	dev_dbg(&pf->pdev->dev,
+		"Set PG config tc=%d bwg_id=%d prio_type=%d bw_pct=%d up_map=%d\n",
+		tc, bwg_id, prio_type, bw_pct, up_map);
+}
+
+/**
+ * i40e_dcbnl_set_pg_tc_cfg_tx - Set CEE PG Tx BW config
+ * @netdev: the corresponding netdev
+ * @pgid: the corresponding traffic class
+ * @bw_pct: the BW percentage for the specified traffic class
+ *
+ * Set Tx BW settings for CEE mode
+ **/
+static void i40e_dcbnl_set_pg_bwg_cfg_tx(struct net_device *netdev, int pgid,
+					 u8 bw_pct)
+{
+	struct i40e_pf *pf = i40e_netdev_to_pf(netdev);
+
+	if (!(pf->dcbx_cap & DCB_CAP_DCBX_VER_CEE) ||
+	    (pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED))
+		return;
+
+	/* LLTC not supported yet */
+	if (pgid >= I40E_MAX_TRAFFIC_CLASS)
+		return;
+
+	pf->tmp_cfg.etscfg.tcbwtable[pgid] = bw_pct;
+	dev_dbg(&pf->pdev->dev, "Set PG BW config tc=%d bw_pct=%d\n",
+		pgid, bw_pct);
+}
+
+/**
+ * i40e_dcbnl_set_pg_tc_cfg_rx - Set CEE PG Rx config
+ * @netdev: the corresponding netdev
+ * @prio: the corresponding traffic class
+ * @prio_type: the traffic priority type
+ * @pgid: the BW group id the traffic class belongs to
+ * @bw_pct: the BW percentage for the corresponding BWG
+ * @up_map: prio mapped to corresponding tc
+ *
+ * Set Rx BW settings for CEE mode. The hardware does not support this
+ * so we won't allow setting of this parameter.
+ **/
+static void i40e_dcbnl_set_pg_tc_cfg_rx(struct net_device *netdev,
+					int __always_unused prio,
+					u8 __always_unused prio_type,
+					u8 __always_unused pgid,
+					u8 __always_unused bw_pct,
+					u8 __always_unused up_map)
+{
+	struct i40e_pf *pf = i40e_netdev_to_pf(netdev);
+
+	dev_dbg(&pf->pdev->dev, "Rx TC PG Config Not Supported.\n");
+}
+
+/**
+ * i40e_dcbnl_set_pg_bwg_cfg_rx - Set CEE PG Rx config
+ * @netdev: the corresponding netdev
+ * @pgid: the corresponding traffic class
+ * @bw_pct: the BW percentage for the specified traffic class
+ *
+ * Set Rx BW settings for CEE mode. The hardware does not support this
+ * so we won't allow setting of this parameter.
+ **/
+static void i40e_dcbnl_set_pg_bwg_cfg_rx(struct net_device *netdev, int pgid,
+					 u8 bw_pct)
+{
+	struct i40e_pf *pf = i40e_netdev_to_pf(netdev);
+
+	dev_dbg(&pf->pdev->dev, "Rx BWG PG Config Not Supported.\n");
+}
+
+/**
+ * i40e_dcbnl_get_pg_tc_cfg_tx - Get CEE PG Tx config
+ * @netdev: the corresponding netdev
+ * @prio: the corresponding user priority
+ * @prio_type: traffic priority type
+ * @pgid: the BW group ID the traffic class belongs to
+ * @bw_pct: BW percentage for the corresponding BWG
+ * @up_map: prio mapped to corresponding TC
+ *
+ * Get Tx PG settings for CEE mode
+ **/
+static void i40e_dcbnl_get_pg_tc_cfg_tx(struct net_device *netdev, int prio,
+					u8 __always_unused *prio_type,
+					u8 *pgid,
+					u8 __always_unused *bw_pct,
+					u8 __always_unused *up_map)
+{
+	struct i40e_pf *pf = i40e_netdev_to_pf(netdev);
+
+	if (!(pf->dcbx_cap & DCB_CAP_DCBX_VER_CEE) ||
+	    (pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED))
+		return;
+
+	if (prio >= I40E_MAX_USER_PRIORITY)
+		return;
+
+	*pgid = pf->hw.local_dcbx_config.etscfg.prioritytable[prio];
+	dev_dbg(&pf->pdev->dev, "Get PG config prio=%d tc=%d\n",
+		prio, *pgid);
+}
+
+/**
+ * i40e_dcbnl_get_pg_bwg_cfg_tx - Get CEE PG BW config
+ * @netdev: the corresponding netdev
+ * @pgid: the corresponding traffic class
+ * @bw_pct: the BW percentage for the corresponding TC
+ *
+ * Get Tx BW settings for given TC in CEE mode
+ **/
+static void i40e_dcbnl_get_pg_bwg_cfg_tx(struct net_device *netdev, int pgid,
+					 u8 *bw_pct)
+{
+	struct i40e_pf *pf = i40e_netdev_to_pf(netdev);
+
+	if (!(pf->dcbx_cap & DCB_CAP_DCBX_VER_CEE) ||
+	    (pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED))
+		return;
+
+	if (pgid >= I40E_MAX_TRAFFIC_CLASS)
+		return;
+
+	*bw_pct = pf->hw.local_dcbx_config.etscfg.tcbwtable[pgid];
+	dev_dbg(&pf->pdev->dev, "Get PG BW config tc=%d bw_pct=%d\n",
+		pgid, *bw_pct);
+}
+
+/**
+ * i40e_dcbnl_get_pg_tc_cfg_rx - Get CEE PG Rx config
+ * @netdev: the corresponding netdev
+ * @prio: the corresponding user priority
+ * @prio_type: the traffic priority type
+ * @pgid: the PG ID
+ * @bw_pct: the BW percentage for the corresponding BWG
+ * @up_map: prio mapped to corresponding TC
+ *
+ * Get Rx PG settings for CEE mode. The UP2TC map is applied in same
+ * manner for Tx and Rx (symmetrical) so return the TC information for
+ * given priority accordingly.
+ **/
+static void i40e_dcbnl_get_pg_tc_cfg_rx(struct net_device *netdev, int prio,
+					u8 *prio_type, u8 *pgid, u8 *bw_pct,
+					u8 *up_map)
+{
+	struct i40e_pf *pf = i40e_netdev_to_pf(netdev);
+
+	if (!(pf->dcbx_cap & DCB_CAP_DCBX_VER_CEE) ||
+	    (pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED))
+		return;
+
+	if (prio >= I40E_MAX_USER_PRIORITY)
+		return;
+
+	*pgid = pf->hw.local_dcbx_config.etscfg.prioritytable[prio];
+}
+
+/**
+ * i40e_dcbnl_get_pg_bwg_cfg_rx - Get CEE PG BW Rx config
+ * @netdev: the corresponding netdev
+ * @pgid: the corresponding traffic class
+ * @bw_pct: the BW percentage for the corresponding TC
+ *
+ * Get Rx BW settings for given TC in CEE mode
+ * The adapter doesn't support Rx ETS and runs in strict priority
+ * mode in Rx path and hence just return 0.
+ **/
+static void i40e_dcbnl_get_pg_bwg_cfg_rx(struct net_device *netdev, int pgid,
+					 u8 *bw_pct)
+{
+	struct i40e_pf *pf = i40e_netdev_to_pf(netdev);
+
+	if (!(pf->dcbx_cap & DCB_CAP_DCBX_VER_CEE) ||
+	    (pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED))
+		return;
+	*bw_pct = 0;
+}
+
+/**
+ * i40e_dcbnl_set_pfc_cfg - Set CEE PFC configuration
+ * @netdev: the corresponding netdev
+ * @prio: the corresponding user priority
+ * @setting: the PFC setting for given priority
+ *
+ * Set the PFC enabled/disabled setting for given user priority
+ **/
+static void i40e_dcbnl_set_pfc_cfg(struct net_device *netdev, int prio,
+				   u8 setting)
+{
+	struct i40e_pf *pf = i40e_netdev_to_pf(netdev);
+
+	if (!(pf->dcbx_cap & DCB_CAP_DCBX_VER_CEE) ||
+	    (pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED))
+		return;
+
+	if (prio >= I40E_MAX_USER_PRIORITY)
+		return;
+
+	pf->tmp_cfg.pfc.pfccap = I40E_MAX_TRAFFIC_CLASS;
+	if (setting)
+		pf->tmp_cfg.pfc.pfcenable |= BIT(prio);
+	else
+		pf->tmp_cfg.pfc.pfcenable &= ~BIT(prio);
+	dev_dbg(&pf->pdev->dev,
+		"Set PFC Config up=%d setting=%d pfcenable=0x%x\n",
+		prio, setting, pf->tmp_cfg.pfc.pfcenable);
+}
+
+/**
+ * i40e_dcbnl_get_pfc_cfg - Get CEE PFC configuration
+ * @netdev: the corresponding netdev
+ * @prio: the corresponding user priority
+ * @setting: the PFC setting for given priority
+ *
+ * Get the PFC enabled/disabled setting for given user priority
+ **/
+static void i40e_dcbnl_get_pfc_cfg(struct net_device *netdev, int prio,
+				   u8 *setting)
+{
+	struct i40e_pf *pf = i40e_netdev_to_pf(netdev);
+
+	if (!(pf->dcbx_cap & DCB_CAP_DCBX_VER_CEE) ||
+	    (pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED))
+		return;
+
+	if (prio >= I40E_MAX_USER_PRIORITY)
+		return;
+
+	*setting = (pf->hw.local_dcbx_config.pfc.pfcenable >> prio) & 0x1;
+	dev_dbg(&pf->pdev->dev,
+		"Get PFC Config up=%d setting=%d pfcenable=0x%x\n",
+		prio, *setting, pf->hw.local_dcbx_config.pfc.pfcenable);
+}
+
+/**
+ * i40e_dcbnl_cee_set_all - Commit CEE DCB settings to hardware
+ * @netdev: the corresponding netdev
+ *
+ * Commit the current DCB configuration to hardware
+ **/
+static u8 i40e_dcbnl_cee_set_all(struct net_device *netdev)
+{
+	struct i40e_pf *pf = i40e_netdev_to_pf(netdev);
+	int err;
+
+	if (!(pf->dcbx_cap & DCB_CAP_DCBX_VER_CEE) ||
+	    (pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED))
+		return I40E_DCBNL_STATUS_ERROR;
+
+	dev_dbg(&pf->pdev->dev, "Commit DCB Configuration to the hardware\n");
+	err = i40e_hw_dcb_config(pf, &pf->tmp_cfg);
+
+	return err ? I40E_DCBNL_STATUS_ERROR : I40E_DCBNL_STATUS_SUCCESS;
+}
+
+/**
+ * i40e_dcbnl_get_cap - Get DCBX capabilities of adapter
+ * @netdev: the corresponding netdev
+ * @capid: the capability type
+ * @cap: the capability value
+ *
+ * Return the capability value for a given capability type
+ **/
+static u8 i40e_dcbnl_get_cap(struct net_device *netdev, int capid, u8 *cap)
+{
+	struct i40e_pf *pf = i40e_netdev_to_pf(netdev);
+
+	if (!(pf->flags & I40E_FLAG_DCB_CAPABLE))
+		return I40E_DCBNL_STATUS_ERROR;
+
+	switch (capid) {
+	case DCB_CAP_ATTR_PG:
+	case DCB_CAP_ATTR_PFC:
+		*cap = true;
+		break;
+	case DCB_CAP_ATTR_PG_TCS:
+	case DCB_CAP_ATTR_PFC_TCS:
+		*cap = 0x80;
+		break;
+	case DCB_CAP_ATTR_DCBX:
+		*cap = pf->dcbx_cap;
+		break;
+	case DCB_CAP_ATTR_UP2TC:
+	case DCB_CAP_ATTR_GSP:
+	case DCB_CAP_ATTR_BCN:
+	default:
+		*cap = false;
+		break;
+	}
+
+	dev_dbg(&pf->pdev->dev, "Get Capability cap=%d capval=0x%x\n",
+		capid, *cap);
+	return I40E_DCBNL_STATUS_SUCCESS;
+}
+
+/**
+ * i40e_dcbnl_getnumtcs - Get max number of traffic classes supported
+ * @netdev: the corresponding netdev
+ * @tcid: the TC id
+ * @num: total number of TCs supported by the device
+ *
+ * Return the total number of TCs supported by the adapter
+ **/
+static int i40e_dcbnl_getnumtcs(struct net_device *netdev, int tcid, u8 *num)
+{
+	struct i40e_pf *pf = i40e_netdev_to_pf(netdev);
+
+	if (!(pf->flags & I40E_FLAG_DCB_CAPABLE))
+		return -EINVAL;
+
+	*num = I40E_MAX_TRAFFIC_CLASS;
+	return 0;
+}
+
+/**
+ * i40e_dcbnl_setnumtcs - Set CEE number of traffic classes
+ * @netdev: the corresponding netdev
+ * @tcid: the TC id
+ * @num: total number of TCs
+ *
+ * Set the total number of TCs (Unsupported)
+ **/
+static int i40e_dcbnl_setnumtcs(struct net_device *netdev, int tcid, u8 num)
+{
+	return -EINVAL;
+}
+
+/**
+ * i40e_dcbnl_getpfcstate - Get CEE PFC mode
+ * @netdev: the corresponding netdev
+ *
+ * Get the current PFC enabled state
+ **/
+static u8 i40e_dcbnl_getpfcstate(struct net_device *netdev)
+{
+	struct i40e_pf *pf = i40e_netdev_to_pf(netdev);
+
+	/* Return enabled if any PFC enabled UP */
+	if (pf->hw.local_dcbx_config.pfc.pfcenable)
+		return 1;
+	else
+		return 0;
+}
+
+/**
+ * i40e_dcbnl_setpfcstate - Set CEE PFC mode
+ * @netdev: the corresponding netdev
+ * @state: required state
+ *
+ * The PFC state to be set; this is enabled/disabled based on the PFC
+ * priority settings and not via this call for i40e driver
+ **/
+static void i40e_dcbnl_setpfcstate(struct net_device *netdev, u8 state)
+{
+	struct i40e_pf *pf = i40e_netdev_to_pf(netdev);
+
+	dev_dbg(&pf->pdev->dev, "PFC State is modified via PFC config.\n");
+}
+
+/**
+ * i40e_dcbnl_getapp - Get CEE APP
+ * @netdev: the corresponding netdev
+ * @idtype: the App selector
+ * @id: the App ethtype or port number
+ *
+ * Return the CEE mode app for the given idtype and id
+ **/
+static int i40e_dcbnl_getapp(struct net_device *netdev, u8 idtype, u16 id)
+{
+	struct i40e_pf *pf = i40e_netdev_to_pf(netdev);
+	struct dcb_app app = {
+				.selector = idtype,
+				.protocol = id,
+			     };
+
+	if (!(pf->dcbx_cap & DCB_CAP_DCBX_VER_CEE) ||
+	    (pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED))
+		return -EINVAL;
+
+	return dcb_getapp(netdev, &app);
+}
+
+/**
+ * i40e_dcbnl_setdcbx - set required DCBx capability
+ * @netdev: the corresponding netdev
+ * @mode: new DCB mode managed or CEE+IEEE
+ *
+ * Set DCBx capability features
+ **/
+static u8 i40e_dcbnl_setdcbx(struct net_device *netdev, u8 mode)
+{
+	struct i40e_pf *pf = i40e_netdev_to_pf(netdev);
+
+	/* Do not allow to set mode if managed by Firmware */
+	if (pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED)
+		return I40E_DCBNL_STATUS_ERROR;
+
+	/* No support for LLD_MANAGED modes or CEE+IEEE */
+	if ((mode & DCB_CAP_DCBX_LLD_MANAGED) ||
+	    ((mode & DCB_CAP_DCBX_VER_IEEE) && (mode & DCB_CAP_DCBX_VER_CEE)) ||
+	    !(mode & DCB_CAP_DCBX_HOST))
+		return I40E_DCBNL_STATUS_ERROR;
+
+	/* Already set to the given mode no change */
+	if (mode == pf->dcbx_cap)
+		return I40E_DCBNL_STATUS_SUCCESS;
+
+	pf->dcbx_cap = mode;
+	if (mode & DCB_CAP_DCBX_VER_CEE)
+		pf->hw.local_dcbx_config.dcbx_mode = I40E_DCBX_MODE_CEE;
+	else
+		pf->hw.local_dcbx_config.dcbx_mode = I40E_DCBX_MODE_IEEE;
+
+	dev_dbg(&pf->pdev->dev, "mode=%d\n", mode);
+	return I40E_DCBNL_STATUS_SUCCESS;
+}
+
 /**
  * i40e_dcbnl_getdcbx - retrieve current DCBx capability
  * @dev: the corresponding netdev
@@ -132,7 +842,31 @@ static const struct dcbnl_rtnl_ops dcbnl_ops = {
 	.ieee_getets	= i40e_dcbnl_ieee_getets,
 	.ieee_getpfc	= i40e_dcbnl_ieee_getpfc,
 	.getdcbx	= i40e_dcbnl_getdcbx,
-	.getpermhwaddr  = i40e_dcbnl_get_perm_hw_addr,
+	.getpermhwaddr	= i40e_dcbnl_get_perm_hw_addr,
+	.ieee_setets	= i40e_dcbnl_ieee_setets,
+	.ieee_setpfc	= i40e_dcbnl_ieee_setpfc,
+	.ieee_setapp	= i40e_dcbnl_ieee_setapp,
+	.ieee_delapp	= i40e_dcbnl_ieee_delapp,
+	.getstate	= i40e_dcbnl_getstate,
+	.setstate	= i40e_dcbnl_setstate,
+	.setpgtccfgtx	= i40e_dcbnl_set_pg_tc_cfg_tx,
+	.setpgbwgcfgtx	= i40e_dcbnl_set_pg_bwg_cfg_tx,
+	.setpgtccfgrx	= i40e_dcbnl_set_pg_tc_cfg_rx,
+	.setpgbwgcfgrx	= i40e_dcbnl_set_pg_bwg_cfg_rx,
+	.getpgtccfgtx	= i40e_dcbnl_get_pg_tc_cfg_tx,
+	.getpgbwgcfgtx	= i40e_dcbnl_get_pg_bwg_cfg_tx,
+	.getpgtccfgrx	= i40e_dcbnl_get_pg_tc_cfg_rx,
+	.getpgbwgcfgrx	= i40e_dcbnl_get_pg_bwg_cfg_rx,
+	.setpfccfg	= i40e_dcbnl_set_pfc_cfg,
+	.getpfccfg	= i40e_dcbnl_get_pfc_cfg,
+	.setall		= i40e_dcbnl_cee_set_all,
+	.getcap		= i40e_dcbnl_get_cap,
+	.getnumtcs	= i40e_dcbnl_getnumtcs,
+	.setnumtcs	= i40e_dcbnl_setnumtcs,
+	.getpfcstate	= i40e_dcbnl_getpfcstate,
+	.setpfcstate	= i40e_dcbnl_setpfcstate,
+	.getapp		= i40e_dcbnl_getapp,
+	.setdcbx	= i40e_dcbnl_setdcbx,
 };
 
 /**
@@ -152,12 +886,16 @@ void i40e_dcbnl_set_all(struct i40e_vsi *vsi)
 	u8 prio, tc_map;
 	int i;
 
+	/* SW DCB taken care by DCBNL set calls */
+	if (pf->dcbx_cap & DCB_CAP_DCBX_HOST)
+		return;
+
 	/* DCB not enabled */
 	if (!(pf->flags & I40E_FLAG_DCB_ENABLED))
 		return;
 
 	/* MFP mode but not an iSCSI PF so return */
-	if ((pf->flags & I40E_FLAG_MFP_ENABLED) && !(pf->hw.func_caps.iscsi))
+	if ((pf->flags & I40E_FLAG_MFP_ENABLED) && !(hw->func_caps.iscsi))
 		return;
 
 	dcbxcfg = &hw->local_dcbx_config;
-- 
2.18.4

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
