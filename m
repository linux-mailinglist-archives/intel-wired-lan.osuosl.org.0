Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9942BBB43
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Nov 2020 01:47:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3D5F320346;
	Sat, 21 Nov 2020 00:47:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z0EcK1Mdkz1f; Sat, 21 Nov 2020 00:47:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 75B262E140;
	Sat, 21 Nov 2020 00:47:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 11C4D1BF475
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:46:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0C2E42E13A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:46:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5BlqVWakDHkk for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Nov 2020 00:46:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id 6DF012E140
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:46:36 +0000 (UTC)
IronPort-SDR: 9It7oVuGSs5qBWq7v3uY7JkTd/1DIwEuzzsabYNaR5hu2cwre78smm7xFxg4N+jFQcz8omQhwQ
 yGIag9o9+AOw==
X-IronPort-AV: E=McAfee;i="6000,8403,9811"; a="235707871"
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="235707871"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 16:46:34 -0800
IronPort-SDR: M31Y9aaGzmibeFshishLQl++lpscuBIKEv54JItKtQxqj3Qm0OBl7pB+8rrXllOLeQG/rrNUQU
 hxzyJcjfHzZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="331520166"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga006.jf.intel.com with ESMTP; 20 Nov 2020 16:46:33 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Nov 2020 16:39:35 -0800
Message-Id: <20201121003938.48514-11-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201121003938.48514-1-anthony.l.nguyen@intel.com>
References: <20201121003938.48514-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S54 11/14] ice: Refactor DCB related
 variables out of the ice_port_info struct
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

From: Chinh T Cao <chinh.t.cao@intel.com>

Refactor the DCB related variables out of the ice_port_info_struct. The
goal is to make the ice_port_info struct cleaner.

Signed-off-by: Chinh T Cao <chinh.t.cao@intel.com>
Co-developed-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb.c     | 40 ++++++++--------
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 47 +++++++++---------
 drivers/net/ethernet/intel/ice/ice_dcb_nl.c  | 50 ++++++++++----------
 drivers/net/ethernet/intel/ice/ice_ethtool.c |  4 +-
 drivers/net/ethernet/intel/ice/ice_lib.c     |  2 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c    |  2 +-
 drivers/net/ethernet/intel/ice/ice_type.h    | 16 ++++---
 7 files changed, 83 insertions(+), 78 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.c b/drivers/net/ethernet/intel/ice/ice_dcb.c
index 2a3147ee0bbb..e42727941ef5 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb.c
@@ -850,9 +850,9 @@ ice_get_ieee_or_cee_dcb_cfg(struct ice_port_info *pi, u8 dcbx_mode)
 		return ICE_ERR_PARAM;
 
 	if (dcbx_mode == ICE_DCBX_MODE_IEEE)
-		dcbx_cfg = &pi->local_dcbx_cfg;
+		dcbx_cfg = &pi->qos_cfg.local_dcbx_cfg;
 	else if (dcbx_mode == ICE_DCBX_MODE_CEE)
-		dcbx_cfg = &pi->desired_dcbx_cfg;
+		dcbx_cfg = &pi->qos_cfg.desired_dcbx_cfg;
 
 	/* Get Local DCB Config in case of ICE_DCBX_MODE_IEEE
 	 * or get CEE DCB Desired Config in case of ICE_DCBX_MODE_CEE
@@ -863,7 +863,7 @@ ice_get_ieee_or_cee_dcb_cfg(struct ice_port_info *pi, u8 dcbx_mode)
 		goto out;
 
 	/* Get Remote DCB Config */
-	dcbx_cfg = &pi->remote_dcbx_cfg;
+	dcbx_cfg = &pi->qos_cfg.remote_dcbx_cfg;
 	ret = ice_aq_get_dcb_cfg(pi->hw, ICE_AQ_LLDP_MIB_REMOTE,
 				 ICE_AQ_LLDP_BRID_TYPE_NEAREST_BRID, dcbx_cfg);
 	/* Don't treat ENOENT as an error for Remote MIBs */
@@ -892,14 +892,14 @@ enum ice_status ice_get_dcb_cfg(struct ice_port_info *pi)
 	ret = ice_aq_get_cee_dcb_cfg(pi->hw, &cee_cfg, NULL);
 	if (!ret) {
 		/* CEE mode */
-		dcbx_cfg = &pi->local_dcbx_cfg;
+		dcbx_cfg = &pi->qos_cfg.local_dcbx_cfg;
 		dcbx_cfg->dcbx_mode = ICE_DCBX_MODE_CEE;
 		dcbx_cfg->tlv_status = le32_to_cpu(cee_cfg.tlv_status);
 		ice_cee_to_dcb_cfg(&cee_cfg, dcbx_cfg);
 		ret = ice_get_ieee_or_cee_dcb_cfg(pi, ICE_DCBX_MODE_CEE);
 	} else if (pi->hw->adminq.sq_last_status == ICE_AQ_RC_ENOENT) {
 		/* CEE mode not enabled try querying IEEE data */
-		dcbx_cfg = &pi->local_dcbx_cfg;
+		dcbx_cfg = &pi->qos_cfg.local_dcbx_cfg;
 		dcbx_cfg->dcbx_mode = ICE_DCBX_MODE_IEEE;
 		ret = ice_get_ieee_or_cee_dcb_cfg(pi, ICE_DCBX_MODE_IEEE);
 	}
@@ -916,26 +916,26 @@ enum ice_status ice_get_dcb_cfg(struct ice_port_info *pi)
  */
 enum ice_status ice_init_dcb(struct ice_hw *hw, bool enable_mib_change)
 {
-	struct ice_port_info *pi = hw->port_info;
+	struct ice_qos_cfg *qos_cfg = &hw->port_info->qos_cfg;
 	enum ice_status ret = 0;
 
 	if (!hw->func_caps.common_cap.dcb)
 		return ICE_ERR_NOT_SUPPORTED;
 
-	pi->is_sw_lldp = true;
+	qos_cfg->is_sw_lldp = true;
 
 	/* Get DCBX status */
-	pi->dcbx_status = ice_get_dcbx_status(hw);
+	qos_cfg->dcbx_status = ice_get_dcbx_status(hw);
 
-	if (pi->dcbx_status == ICE_DCBX_STATUS_DONE ||
-	    pi->dcbx_status == ICE_DCBX_STATUS_IN_PROGRESS ||
-	    pi->dcbx_status == ICE_DCBX_STATUS_NOT_STARTED) {
+	if (qos_cfg->dcbx_status == ICE_DCBX_STATUS_DONE ||
+	    qos_cfg->dcbx_status == ICE_DCBX_STATUS_IN_PROGRESS ||
+	    qos_cfg->dcbx_status == ICE_DCBX_STATUS_NOT_STARTED) {
 		/* Get current DCBX configuration */
-		ret = ice_get_dcb_cfg(pi);
+		ret = ice_get_dcb_cfg(hw->port_info);
 		if (ret)
 			return ret;
-		pi->is_sw_lldp = false;
-	} else if (pi->dcbx_status == ICE_DCBX_STATUS_DIS) {
+		qos_cfg->is_sw_lldp = false;
+	} else if (qos_cfg->dcbx_status == ICE_DCBX_STATUS_DIS) {
 		return ICE_ERR_NOT_READY;
 	}
 
@@ -943,7 +943,7 @@ enum ice_status ice_init_dcb(struct ice_hw *hw, bool enable_mib_change)
 	if (enable_mib_change) {
 		ret = ice_aq_cfg_lldp_mib_change(hw, true, NULL);
 		if (ret)
-			pi->is_sw_lldp = true;
+			qos_cfg->is_sw_lldp = true;
 	}
 
 	return ret;
@@ -958,21 +958,21 @@ enum ice_status ice_init_dcb(struct ice_hw *hw, bool enable_mib_change)
  */
 enum ice_status ice_cfg_lldp_mib_change(struct ice_hw *hw, bool ena_mib)
 {
-	struct ice_port_info *pi = hw->port_info;
+	struct ice_qos_cfg *qos_cfg = &hw->port_info->qos_cfg;
 	enum ice_status ret;
 
 	if (!hw->func_caps.common_cap.dcb)
 		return ICE_ERR_NOT_SUPPORTED;
 
 	/* Get DCBX status */
-	pi->dcbx_status = ice_get_dcbx_status(hw);
+	qos_cfg->dcbx_status = ice_get_dcbx_status(hw);
 
-	if (pi->dcbx_status == ICE_DCBX_STATUS_DIS)
+	if (qos_cfg->dcbx_status == ICE_DCBX_STATUS_DIS)
 		return ICE_ERR_NOT_READY;
 
 	ret = ice_aq_cfg_lldp_mib_change(hw, ena_mib, NULL);
 	if (!ret)
-		pi->is_sw_lldp = !ena_mib;
+		qos_cfg->is_sw_lldp = !ena_mib;
 
 	return ret;
 }
@@ -1270,7 +1270,7 @@ enum ice_status ice_set_dcb_cfg(struct ice_port_info *pi)
 	hw = pi->hw;
 
 	/* update the HW local config */
-	dcbcfg = &pi->local_dcbx_cfg;
+	dcbcfg = &pi->qos_cfg.local_dcbx_cfg;
 	/* Allocate the LLDPDU */
 	lldpmib = devm_kzalloc(ice_hw_to_dev(hw), ICE_LLDPDU_SIZE, GFP_KERNEL);
 	if (!lldpmib)
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 36abd6b7280c..1e8f71ffc8ce 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -28,7 +28,7 @@ void ice_vsi_cfg_netdev_tc(struct ice_vsi *vsi, u8 ena_tc)
 	if (netdev_set_num_tc(netdev, vsi->tc_cfg.numtc))
 		return;
 
-	dcbcfg = &pf->hw.port_info->local_dcbx_cfg;
+	dcbcfg = &pf->hw.port_info->qos_cfg.local_dcbx_cfg;
 
 	ice_for_each_traffic_class(i)
 		if (vsi->tc_cfg.ena_tc & BIT(i))
@@ -134,7 +134,7 @@ static u8 ice_dcb_get_mode(struct ice_port_info *port_info, bool host)
 	else
 		mode = DCB_CAP_DCBX_LLD_MANAGED;
 
-	if (port_info->local_dcbx_cfg.dcbx_mode & ICE_DCBX_MODE_CEE)
+	if (port_info->qos_cfg.local_dcbx_cfg.dcbx_mode & ICE_DCBX_MODE_CEE)
 		return mode | DCB_CAP_DCBX_VER_CEE;
 	else
 		return mode | DCB_CAP_DCBX_VER_IEEE;
@@ -277,10 +277,10 @@ int ice_pf_dcb_cfg(struct ice_pf *pf, struct ice_dcbx_cfg *new_cfg, bool locked)
 	int ret = ICE_DCB_NO_HW_CHG;
 	struct ice_vsi *pf_vsi;
 
-	curr_cfg = &pf->hw.port_info->local_dcbx_cfg;
+	curr_cfg = &pf->hw.port_info->qos_cfg.local_dcbx_cfg;
 
 	/* FW does not care if change happened */
-	if (!pf->hw.port_info->is_sw_lldp)
+	if (!pf->hw.port_info->qos_cfg.is_sw_lldp)
 		ret = ICE_DCB_HW_CHG_RST;
 
 	/* Enable DCB tagging only when more than one TC */
@@ -327,7 +327,7 @@ int ice_pf_dcb_cfg(struct ice_pf *pf, struct ice_dcbx_cfg *new_cfg, bool locked)
 	/* Only send new config to HW if we are in SW LLDP mode. Otherwise,
 	 * the new config came from the HW in the first place.
 	 */
-	if (pf->hw.port_info->is_sw_lldp) {
+	if (pf->hw.port_info->qos_cfg.is_sw_lldp) {
 		ret = ice_set_dcb_cfg(pf->hw.port_info);
 		if (ret) {
 			dev_err(dev, "Set DCB Config failed\n");
@@ -360,7 +360,7 @@ int ice_pf_dcb_cfg(struct ice_pf *pf, struct ice_dcbx_cfg *new_cfg, bool locked)
  */
 static void ice_cfg_etsrec_defaults(struct ice_port_info *pi)
 {
-	struct ice_dcbx_cfg *dcbcfg = &pi->local_dcbx_cfg;
+	struct ice_dcbx_cfg *dcbcfg = &pi->qos_cfg.local_dcbx_cfg;
 	u8 i;
 
 	/* Ensure ETS recommended DCB configuration is not already set */
@@ -446,7 +446,7 @@ void ice_dcb_rebuild(struct ice_pf *pf)
 
 	mutex_lock(&pf->tc_mutex);
 
-	if (!pf->hw.port_info->is_sw_lldp)
+	if (!pf->hw.port_info->qos_cfg.is_sw_lldp)
 		ice_cfg_etsrec_defaults(pf->hw.port_info);
 
 	ret = ice_set_dcb_cfg(pf->hw.port_info);
@@ -455,9 +455,9 @@ void ice_dcb_rebuild(struct ice_pf *pf)
 		goto dcb_error;
 	}
 
-	if (!pf->hw.port_info->is_sw_lldp) {
+	if (!pf->hw.port_info->qos_cfg.is_sw_lldp) {
 		ret = ice_cfg_lldp_mib_change(&pf->hw, true);
-		if (ret && !pf->hw.port_info->is_sw_lldp) {
+		if (ret && !pf->hw.port_info->qos_cfg.is_sw_lldp) {
 			dev_err(dev, "Failed to register for MIB changes\n");
 			goto dcb_error;
 		}
@@ -510,11 +510,12 @@ static int ice_dcb_init_cfg(struct ice_pf *pf, bool locked)
 	int ret = 0;
 
 	pi = pf->hw.port_info;
-	newcfg = kmemdup(&pi->local_dcbx_cfg, sizeof(*newcfg), GFP_KERNEL);
+	newcfg = kmemdup(&pi->qos_cfg.local_dcbx_cfg, sizeof(*newcfg),
+			 GFP_KERNEL);
 	if (!newcfg)
 		return -ENOMEM;
 
-	memset(&pi->local_dcbx_cfg, 0, sizeof(*newcfg));
+	memset(&pi->qos_cfg.local_dcbx_cfg, 0, sizeof(*newcfg));
 
 	dev_info(ice_pf_to_dev(pf), "Configuring initial DCB values\n");
 	if (ice_pf_dcb_cfg(pf, newcfg, locked))
@@ -545,7 +546,7 @@ static int ice_dcb_sw_dflt_cfg(struct ice_pf *pf, bool ets_willing, bool locked)
 	if (!dcbcfg)
 		return -ENOMEM;
 
-	memset(&pi->local_dcbx_cfg, 0, sizeof(*dcbcfg));
+	memset(&pi->qos_cfg.local_dcbx_cfg, 0, sizeof(*dcbcfg));
 
 	dcbcfg->etscfg.willing = ets_willing ? 1 : 0;
 	dcbcfg->etscfg.maxtcs = hw->func_caps.common_cap.maxtc;
@@ -608,7 +609,7 @@ static bool ice_dcb_tc_contig(u8 *prio_table)
  */
 static int ice_dcb_noncontig_cfg(struct ice_pf *pf)
 {
-	struct ice_dcbx_cfg *dcbcfg = &pf->hw.port_info->local_dcbx_cfg;
+	struct ice_dcbx_cfg *dcbcfg = &pf->hw.port_info->qos_cfg.local_dcbx_cfg;
 	struct device *dev = ice_pf_to_dev(pf);
 	int ret;
 
@@ -638,7 +639,7 @@ static int ice_dcb_noncontig_cfg(struct ice_pf *pf)
  */
 void ice_pf_dcb_recfg(struct ice_pf *pf)
 {
-	struct ice_dcbx_cfg *dcbcfg = &pf->hw.port_info->local_dcbx_cfg;
+	struct ice_dcbx_cfg *dcbcfg = &pf->hw.port_info->qos_cfg.local_dcbx_cfg;
 	u8 tc_map = 0;
 	int v, ret;
 
@@ -691,7 +692,7 @@ int ice_init_pf_dcb(struct ice_pf *pf, bool locked)
 	port_info = hw->port_info;
 
 	err = ice_init_dcb(hw, false);
-	if (err && !port_info->is_sw_lldp) {
+	if (err && !port_info->qos_cfg.is_sw_lldp) {
 		dev_err(dev, "Error initializing DCB %d\n", err);
 		goto dcb_init_err;
 	}
@@ -858,7 +859,7 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 		/* Update the remote cached instance and return */
 		ret = ice_aq_get_dcb_cfg(pi->hw, ICE_AQ_LLDP_MIB_REMOTE,
 					 ICE_AQ_LLDP_BRID_TYPE_NEAREST_BRID,
-					 &pi->remote_dcbx_cfg);
+					 &pi->qos_cfg.remote_dcbx_cfg);
 		if (ret) {
 			dev_err(dev, "Failed to get remote DCB config\n");
 			return;
@@ -868,10 +869,11 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 	mutex_lock(&pf->tc_mutex);
 
 	/* store the old configuration */
-	tmp_dcbx_cfg = pf->hw.port_info->local_dcbx_cfg;
+	tmp_dcbx_cfg = pf->hw.port_info->qos_cfg.local_dcbx_cfg;
 
 	/* Reset the old DCBX configuration data */
-	memset(&pi->local_dcbx_cfg, 0, sizeof(pi->local_dcbx_cfg));
+	memset(&pi->qos_cfg.local_dcbx_cfg, 0,
+	       sizeof(pi->qos_cfg.local_dcbx_cfg));
 
 	/* Get updated DCBX data from firmware */
 	ret = ice_get_dcb_cfg(pf->hw.port_info);
@@ -881,7 +883,8 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 	}
 
 	/* No change detected in DCBX configs */
-	if (!memcmp(&tmp_dcbx_cfg, &pi->local_dcbx_cfg, sizeof(tmp_dcbx_cfg))) {
+	if (!memcmp(&tmp_dcbx_cfg, &pi->qos_cfg.local_dcbx_cfg,
+		    sizeof(tmp_dcbx_cfg))) {
 		dev_dbg(dev, "No change detected in DCBX configuration.\n");
 		goto out;
 	}
@@ -889,13 +892,13 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 	pf->dcbx_cap = ice_dcb_get_mode(pi, false);
 
 	need_reconfig = ice_dcb_need_recfg(pf, &tmp_dcbx_cfg,
-					   &pi->local_dcbx_cfg);
-	ice_dcbnl_flush_apps(pf, &tmp_dcbx_cfg, &pi->local_dcbx_cfg);
+					   &pi->qos_cfg.local_dcbx_cfg);
+	ice_dcbnl_flush_apps(pf, &tmp_dcbx_cfg, &pi->qos_cfg.local_dcbx_cfg);
 	if (!need_reconfig)
 		goto out;
 
 	/* Enable DCB tagging only when more than one TC */
-	if (ice_dcb_get_num_tc(&pi->local_dcbx_cfg) > 1) {
+	if (ice_dcb_get_num_tc(&pi->qos_cfg.local_dcbx_cfg) > 1) {
 		dev_dbg(dev, "DCB tagging enabled (num TC > 1)\n");
 		set_bit(ICE_FLAG_DCB_ENA, pf->flags);
 	} else {
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
index 842d44b63480..299bf7edbf82 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
@@ -34,12 +34,10 @@ static void ice_dcbnl_devreset(struct net_device *netdev)
 static int ice_dcbnl_getets(struct net_device *netdev, struct ieee_ets *ets)
 {
 	struct ice_dcbx_cfg *dcbxcfg;
-	struct ice_port_info *pi;
 	struct ice_pf *pf;
 
 	pf = ice_netdev_to_pf(netdev);
-	pi = pf->hw.port_info;
-	dcbxcfg = &pi->local_dcbx_cfg;
+	dcbxcfg = &pf->hw.port_info->qos_cfg.local_dcbx_cfg;
 
 	ets->willing = dcbxcfg->etscfg.willing;
 	ets->ets_cap = dcbxcfg->etscfg.maxtcs;
@@ -74,7 +72,7 @@ static int ice_dcbnl_setets(struct net_device *netdev, struct ieee_ets *ets)
 	    !(pf->dcbx_cap & DCB_CAP_DCBX_VER_IEEE))
 		return -EINVAL;
 
-	new_cfg = &pf->hw.port_info->desired_dcbx_cfg;
+	new_cfg = &pf->hw.port_info->qos_cfg.desired_dcbx_cfg;
 
 	mutex_lock(&pf->tc_mutex);
 
@@ -159,6 +157,7 @@ static u8 ice_dcbnl_getdcbx(struct net_device *netdev)
 static u8 ice_dcbnl_setdcbx(struct net_device *netdev, u8 mode)
 {
 	struct ice_pf *pf = ice_netdev_to_pf(netdev);
+	struct ice_qos_cfg *qos_cfg;
 
 	/* No support for LLD_MANAGED modes or CEE+IEEE */
 	if ((mode & DCB_CAP_DCBX_LLD_MANAGED) ||
@@ -171,10 +170,11 @@ static u8 ice_dcbnl_setdcbx(struct net_device *netdev, u8 mode)
 		return ICE_DCB_NO_HW_CHG;
 
 	pf->dcbx_cap = mode;
+	qos_cfg = &pf->hw.port_info->qos_cfg;
 	if (mode & DCB_CAP_DCBX_VER_CEE)
-		pf->hw.port_info->local_dcbx_cfg.dcbx_mode = ICE_DCBX_MODE_CEE;
+		qos_cfg->local_dcbx_cfg.dcbx_mode = ICE_DCBX_MODE_CEE;
 	else
-		pf->hw.port_info->local_dcbx_cfg.dcbx_mode = ICE_DCBX_MODE_IEEE;
+		qos_cfg->local_dcbx_cfg.dcbx_mode = ICE_DCBX_MODE_IEEE;
 
 	dev_info(ice_pf_to_dev(pf), "DCBx mode = 0x%x\n", mode);
 	return ICE_DCB_HW_CHG_RST;
@@ -225,7 +225,7 @@ static int ice_dcbnl_getpfc(struct net_device *netdev, struct ieee_pfc *pfc)
 	struct ice_dcbx_cfg *dcbxcfg;
 	int i;
 
-	dcbxcfg = &pi->local_dcbx_cfg;
+	dcbxcfg = &pi->qos_cfg.local_dcbx_cfg;
 	pfc->pfc_cap = dcbxcfg->pfc.pfccap;
 	pfc->pfc_en = dcbxcfg->pfc.pfcena;
 	pfc->mbc = dcbxcfg->pfc.mbc;
@@ -256,7 +256,7 @@ static int ice_dcbnl_setpfc(struct net_device *netdev, struct ieee_pfc *pfc)
 
 	mutex_lock(&pf->tc_mutex);
 
-	new_cfg = &pf->hw.port_info->desired_dcbx_cfg;
+	new_cfg = &pf->hw.port_info->qos_cfg.desired_dcbx_cfg;
 
 	if (pfc->pfc_cap)
 		new_cfg->pfc.pfccap = pfc->pfc_cap;
@@ -293,9 +293,9 @@ ice_dcbnl_get_pfc_cfg(struct net_device *netdev, int prio, u8 *setting)
 	if (prio >= ICE_MAX_USER_PRIORITY)
 		return;
 
-	*setting = (pi->local_dcbx_cfg.pfc.pfcena >> prio) & 0x1;
+	*setting = (pi->qos_cfg.local_dcbx_cfg.pfc.pfcena >> prio) & 0x1;
 	dev_dbg(ice_pf_to_dev(pf), "Get PFC Config up=%d, setting=%d, pfcenable=0x%x\n",
-		prio, *setting, pi->local_dcbx_cfg.pfc.pfcena);
+		prio, *setting, pi->qos_cfg.local_dcbx_cfg.pfc.pfcena);
 }
 
 /**
@@ -316,7 +316,7 @@ static void ice_dcbnl_set_pfc_cfg(struct net_device *netdev, int prio, u8 set)
 	if (prio >= ICE_MAX_USER_PRIORITY)
 		return;
 
-	new_cfg = &pf->hw.port_info->desired_dcbx_cfg;
+	new_cfg = &pf->hw.port_info->qos_cfg.desired_dcbx_cfg;
 
 	new_cfg->pfc.pfccap = pf->hw.func_caps.common_cap.maxtc;
 	if (set)
@@ -338,7 +338,7 @@ static u8 ice_dcbnl_getpfcstate(struct net_device *netdev)
 	struct ice_port_info *pi = pf->hw.port_info;
 
 	/* Return enabled if any UP enabled for PFC */
-	if (pi->local_dcbx_cfg.pfc.pfcena)
+	if (pi->qos_cfg.local_dcbx_cfg.pfc.pfcena)
 		return 1;
 
 	return 0;
@@ -378,8 +378,8 @@ static u8 ice_dcbnl_setstate(struct net_device *netdev, u8 state)
 
 	if (state) {
 		set_bit(ICE_FLAG_DCB_ENA, pf->flags);
-		memcpy(&pf->hw.port_info->desired_dcbx_cfg,
-		       &pf->hw.port_info->local_dcbx_cfg,
+		memcpy(&pf->hw.port_info->qos_cfg.desired_dcbx_cfg,
+		       &pf->hw.port_info->qos_cfg.local_dcbx_cfg,
 		       sizeof(struct ice_dcbx_cfg));
 	} else {
 		clear_bit(ICE_FLAG_DCB_ENA, pf->flags);
@@ -413,7 +413,7 @@ ice_dcbnl_get_pg_tc_cfg_tx(struct net_device *netdev, int prio,
 	if (prio >= ICE_MAX_USER_PRIORITY)
 		return;
 
-	*pgid = pi->local_dcbx_cfg.etscfg.prio_table[prio];
+	*pgid = pi->qos_cfg.local_dcbx_cfg.etscfg.prio_table[prio];
 	dev_dbg(ice_pf_to_dev(pf), "Get PG config prio=%d tc=%d\n", prio,
 		*pgid);
 }
@@ -444,7 +444,7 @@ ice_dcbnl_set_pg_tc_cfg_tx(struct net_device *netdev, int tc,
 	if (tc >= ICE_MAX_TRAFFIC_CLASS)
 		return;
 
-	new_cfg = &pf->hw.port_info->desired_dcbx_cfg;
+	new_cfg = &pf->hw.port_info->qos_cfg.desired_dcbx_cfg;
 
 	/* prio_type, bwg_id and bw_pct per UP are not supported */
 
@@ -474,7 +474,7 @@ ice_dcbnl_get_pg_bwg_cfg_tx(struct net_device *netdev, int pgid, u8 *bw_pct)
 	if (pgid >= ICE_MAX_TRAFFIC_CLASS)
 		return;
 
-	*bw_pct = pi->local_dcbx_cfg.etscfg.tcbwtable[pgid];
+	*bw_pct = pi->qos_cfg.local_dcbx_cfg.etscfg.tcbwtable[pgid];
 	dev_dbg(ice_pf_to_dev(pf), "Get PG BW config tc=%d bw_pct=%d\n",
 		pgid, *bw_pct);
 }
@@ -498,7 +498,7 @@ ice_dcbnl_set_pg_bwg_cfg_tx(struct net_device *netdev, int pgid, u8 bw_pct)
 	if (pgid >= ICE_MAX_TRAFFIC_CLASS)
 		return;
 
-	new_cfg = &pf->hw.port_info->desired_dcbx_cfg;
+	new_cfg = &pf->hw.port_info->qos_cfg.desired_dcbx_cfg;
 
 	new_cfg->etscfg.tcbwtable[pgid] = bw_pct;
 }
@@ -528,7 +528,7 @@ ice_dcbnl_get_pg_tc_cfg_rx(struct net_device *netdev, int prio,
 	if (prio >= ICE_MAX_USER_PRIORITY)
 		return;
 
-	*pgid = pi->local_dcbx_cfg.etscfg.prio_table[prio];
+	*pgid = pi->qos_cfg.local_dcbx_cfg.etscfg.prio_table[prio];
 }
 
 /**
@@ -699,9 +699,9 @@ static int ice_dcbnl_setapp(struct net_device *netdev, struct dcb_app *app)
 
 	mutex_lock(&pf->tc_mutex);
 
-	new_cfg = &pf->hw.port_info->desired_dcbx_cfg;
+	new_cfg = &pf->hw.port_info->qos_cfg.desired_dcbx_cfg;
 
-	old_cfg = &pf->hw.port_info->local_dcbx_cfg;
+	old_cfg = &pf->hw.port_info->qos_cfg.local_dcbx_cfg;
 
 	if (old_cfg->numapps == ICE_DCBX_MAX_APPS) {
 		ret = -EINVAL;
@@ -751,7 +751,7 @@ static int ice_dcbnl_delapp(struct net_device *netdev, struct dcb_app *app)
 		return -EINVAL;
 
 	mutex_lock(&pf->tc_mutex);
-	old_cfg = &pf->hw.port_info->local_dcbx_cfg;
+	old_cfg = &pf->hw.port_info->qos_cfg.local_dcbx_cfg;
 
 	if (old_cfg->numapps <= 1)
 		goto delapp_out;
@@ -760,7 +760,7 @@ static int ice_dcbnl_delapp(struct net_device *netdev, struct dcb_app *app)
 	if (ret)
 		goto delapp_out;
 
-	new_cfg = &pf->hw.port_info->desired_dcbx_cfg;
+	new_cfg = &pf->hw.port_info->qos_cfg.desired_dcbx_cfg;
 
 	for (i = 1; i < new_cfg->numapps; i++) {
 		if (app->selector == new_cfg->app[i].selector &&
@@ -813,7 +813,7 @@ static u8 ice_dcbnl_cee_set_all(struct net_device *netdev)
 	    !(pf->dcbx_cap & DCB_CAP_DCBX_VER_CEE))
 		return ICE_DCB_NO_HW_CHG;
 
-	new_cfg = &pf->hw.port_info->desired_dcbx_cfg;
+	new_cfg = &pf->hw.port_info->qos_cfg.desired_dcbx_cfg;
 
 	mutex_lock(&pf->tc_mutex);
 
@@ -884,7 +884,7 @@ void ice_dcbnl_set_all(struct ice_vsi *vsi)
 	if (!test_bit(ICE_FLAG_DCB_ENA, pf->flags))
 		return;
 
-	dcbxcfg = &pi->local_dcbx_cfg;
+	dcbxcfg = &pi->qos_cfg.local_dcbx_cfg;
 
 	for (i = 0; i < dcbxcfg->numapps; i++) {
 		u8 prio, tc_map;
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 771cb22b6b1b..704c094f1469 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -2988,7 +2988,7 @@ ice_get_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *pause)
 	pause->rx_pause = 0;
 	pause->tx_pause = 0;
 
-	dcbx_cfg = &pi->local_dcbx_cfg;
+	dcbx_cfg = &pi->qos_cfg.local_dcbx_cfg;
 
 	pcaps = kzalloc(sizeof(*pcaps), GFP_KERNEL);
 	if (!pcaps)
@@ -3040,7 +3040,7 @@ ice_set_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *pause)
 
 	pi = vsi->port_info;
 	hw_link_info = &pi->phy.link_info;
-	dcbx_cfg = &pi->local_dcbx_cfg;
+	dcbx_cfg = &pi->qos_cfg.local_dcbx_cfg;
 	link_up = hw_link_info->link_info & ICE_AQ_LINK_UP;
 
 	/* Changing the port's flow control is not supported if this isn't the
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index baf90abc19d3..0b74a07f9062 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2081,7 +2081,7 @@ int ice_cfg_vlan_pruning(struct ice_vsi *vsi, bool ena, bool vlan_promisc)
 
 static void ice_vsi_set_tc_cfg(struct ice_vsi *vsi)
 {
-	struct ice_dcbx_cfg *cfg = &vsi->port_info->local_dcbx_cfg;
+	struct ice_dcbx_cfg *cfg = &vsi->port_info->qos_cfg.local_dcbx_cfg;
 
 	vsi->tc_cfg.ena_tc = ice_dcb_get_ena_tc(cfg);
 	vsi->tc_cfg.numtc = ice_dcb_get_num_tc(cfg);
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index e608d9cf0300..7b0e948760ea 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -2408,7 +2408,7 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct ice_ring *tx_ring)
 	/* allow CONTROL frames egress from main VSI if FW LLDP disabled */
 	if (unlikely(skb->priority == TC_PRIO_CONTROL &&
 		     vsi->type == ICE_VSI_PF &&
-		     vsi->port_info->is_sw_lldp))
+		     vsi->port_info->qos_cfg.is_sw_lldp))
 		offload.cd_qw1 |= (u64)(ICE_TX_DESC_DTYPE_CTX |
 					ICE_TX_CTX_DESC_SWTCH_UPLINK <<
 					ICE_TXD_CTX_QW1_CMD_S);
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 8893092bfd54..269c8399ff98 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -567,6 +567,14 @@ struct ice_dcbx_cfg {
 #define ICE_DCBX_APPS_NON_WILLING	0x1
 };
 
+struct ice_qos_cfg {
+	struct ice_dcbx_cfg local_dcbx_cfg;	/* Oper/Local Cfg */
+	struct ice_dcbx_cfg desired_dcbx_cfg;	/* CEE Desired Cfg */
+	struct ice_dcbx_cfg remote_dcbx_cfg;	/* Peer Cfg */
+	u8 dcbx_status : 3;			/* see ICE_DCBX_STATUS_DIS */
+	u8 is_sw_lldp : 1;
+};
+
 struct ice_port_info {
 	struct ice_sched_node *root;	/* Root Node per Port */
 	struct ice_hw *hw;		/* back pointer to HW instance */
@@ -590,13 +598,7 @@ struct ice_port_info {
 		sib_head[ICE_MAX_TRAFFIC_CLASS][ICE_AQC_TOPO_MAX_LEVEL_NUM];
 	/* List contain profile ID(s) and other params per layer */
 	struct list_head rl_prof_list[ICE_AQC_TOPO_MAX_LEVEL_NUM];
-	struct ice_dcbx_cfg local_dcbx_cfg;	/* Oper/Local Cfg */
-	/* DCBX info */
-	struct ice_dcbx_cfg remote_dcbx_cfg;	/* Peer Cfg */
-	struct ice_dcbx_cfg desired_dcbx_cfg;	/* CEE Desired Cfg */
-	/* LLDP/DCBX Status */
-	u8 dcbx_status:3;		/* see ICE_DCBX_STATUS_DIS */
-	u8 is_sw_lldp:1;
+	struct ice_qos_cfg qos_cfg;
 	u8 is_vf:1;
 };
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
