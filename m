Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD4121A49E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jul 2020 18:20:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0353588258;
	Thu,  9 Jul 2020 16:20:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jSTUQvgaARUD; Thu,  9 Jul 2020 16:20:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 27A0487B7B;
	Thu,  9 Jul 2020 16:20:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D15371BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CD88D228F1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WFc7bV-LVW32 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jul 2020 16:20:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id ED50C2CA28
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:14 +0000 (UTC)
IronPort-SDR: 9PsfWmGsIVnJfGst8ugLXUYdk/9FCzvM568mak6kM9KHRRSXy7dI2m5mbgvH6WKTwXN7NRDWUm
 A1nUcYav1JTQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="232906027"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="232906027"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 09:20:10 -0700
IronPort-SDR: R/DPLTK2F8RDpH71G4G5hd3FU2aqRmXHDoAlB89X3Zs0u77DEgRwC8fWgObjqm+JaCYNtajkDY
 X9hzfU0+1Bqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="280352062"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga003.jf.intel.com with ESMTP; 09 Jul 2020 09:20:06 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  9 Jul 2020 09:16:04 -0700
Message-Id: <20200709161614.61098-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
References: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S49 05/15] ice: refactor FC functions
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

From: Paul Greenwalt <paul.greenwalt@intel.com>

Create a helper function for configuring requested flow control so that it
can be utilized by other functions looking to configure flow control
settings. Utilize the existing helper ice_copy_phy_caps_to_cfg() to copy a
PHY capability to configuration instead duplicating the code for it.

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 75 +++++++++++++--------
 1 file changed, 46 insertions(+), 29 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index cb9e6b8ef830..556fa1c9aee2 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2515,28 +2515,19 @@ enum ice_status ice_update_link_info(struct ice_port_info *pi)
 }
 
 /**
- * ice_set_fc
- * @pi: port information structure
- * @aq_failures: pointer to status code, specific to ice_set_fc routine
- * @ena_auto_link_update: enable automatic link update
- *
- * Set the requested flow control mode.
+ * ice_cfg_phy_fc - Configure PHY FC data based on FC mode
+ * @cfg: PHY configuration data to set FC mode
+ * @req_mode: FC mode to configure
  */
-enum ice_status
-ice_set_fc(struct ice_port_info *pi, u8 *aq_failures, bool ena_auto_link_update)
+static enum ice_status
+ice_cfg_phy_fc(struct ice_aqc_set_phy_cfg_data *cfg, enum ice_fc_mode req_mode)
 {
-	struct ice_aqc_set_phy_cfg_data cfg = { 0 };
-	struct ice_aqc_get_phy_caps_data *pcaps;
-	enum ice_status status;
 	u8 pause_mask = 0x0;
-	struct ice_hw *hw;
 
-	if (!pi)
-		return ICE_ERR_PARAM;
-	hw = pi->hw;
-	*aq_failures = ICE_SET_FC_AQ_FAIL_NONE;
+	if (!cfg)
+		return ICE_ERR_BAD_PTR;
 
-	switch (pi->fc.req_mode) {
+	switch (req_mode) {
 	case ICE_FC_FULL:
 		pause_mask |= ICE_AQC_PHY_EN_TX_LINK_PAUSE;
 		pause_mask |= ICE_AQC_PHY_EN_RX_LINK_PAUSE;
@@ -2551,6 +2542,38 @@ ice_set_fc(struct ice_port_info *pi, u8 *aq_failures, bool ena_auto_link_update)
 		break;
 	}
 
+	/* clear the old pause settings */
+	cfg->caps &= ~(ICE_AQC_PHY_EN_TX_LINK_PAUSE |
+		ICE_AQC_PHY_EN_RX_LINK_PAUSE);
+
+	/* set the new capabilities */
+	cfg->caps |= pause_mask;
+
+	return 0;
+}
+
+/**
+ * ice_set_fc
+ * @pi: port information structure
+ * @aq_failures: pointer to status code, specific to ice_set_fc routine
+ * @ena_auto_link_update: enable automatic link update
+ *
+ * Set the requested flow control mode.
+ */
+enum ice_status
+ice_set_fc(struct ice_port_info *pi, u8 *aq_failures, bool ena_auto_link_update)
+{
+	struct ice_aqc_set_phy_cfg_data  cfg = { 0 };
+	struct ice_aqc_get_phy_caps_data *pcaps;
+	enum ice_status status;
+	struct ice_hw *hw;
+
+	if (!pi)
+		return ICE_ERR_BAD_PTR;
+
+	*aq_failures = 0;
+	hw = pi->hw;
+
 	pcaps = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*pcaps), GFP_KERNEL);
 	if (!pcaps)
 		return ICE_ERR_NO_MEMORY;
@@ -2563,12 +2586,12 @@ ice_set_fc(struct ice_port_info *pi, u8 *aq_failures, bool ena_auto_link_update)
 		goto out;
 	}
 
-	/* clear the old pause settings */
-	cfg.caps = pcaps->caps & ~(ICE_AQC_PHY_EN_TX_LINK_PAUSE |
-				   ICE_AQC_PHY_EN_RX_LINK_PAUSE);
+	ice_copy_phy_caps_to_cfg(pcaps, &cfg);
 
-	/* set the new capabilities */
-	cfg.caps |= pause_mask;
+	/* Configure the set PHY data */
+	status = ice_cfg_phy_fc(&cfg, pi->fc.req_mode);
+	if (status)
+		goto out;
 
 	/* If the capabilities have changed, then set the new config */
 	if (cfg.caps != pcaps->caps) {
@@ -2577,13 +2600,6 @@ ice_set_fc(struct ice_port_info *pi, u8 *aq_failures, bool ena_auto_link_update)
 		/* Auto restart link so settings take effect */
 		if (ena_auto_link_update)
 			cfg.caps |= ICE_AQ_PHY_ENA_AUTO_LINK_UPDT;
-		/* Copy over all the old settings */
-		cfg.phy_type_high = pcaps->phy_type_high;
-		cfg.phy_type_low = pcaps->phy_type_low;
-		cfg.low_power_ctrl = pcaps->low_power_ctrl;
-		cfg.eee_cap = pcaps->eee_cap;
-		cfg.eeer_value = pcaps->eeer_value;
-		cfg.link_fec_opt = pcaps->link_fec_options;
 
 		status = ice_aq_set_phy_cfg(hw, pi->lport, &cfg, NULL);
 		if (status) {
@@ -2629,6 +2645,7 @@ ice_copy_phy_caps_to_cfg(struct ice_aqc_get_phy_caps_data *caps,
 	if (!caps || !cfg)
 		return;
 
+	memset(cfg, 0, sizeof(*cfg));
 	cfg->phy_type_low = caps->phy_type_low;
 	cfg->phy_type_high = caps->phy_type_high;
 	cfg->caps = caps->caps;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
