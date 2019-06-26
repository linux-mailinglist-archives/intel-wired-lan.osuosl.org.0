Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3021156FD5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jun 2019 19:48:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C5C55861BC;
	Wed, 26 Jun 2019 17:48:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LxQ0Llvjk7OA; Wed, 26 Jun 2019 17:47:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6B7D886194;
	Wed, 26 Jun 2019 17:47:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B47531BF326
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 17:47:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ABBBB8618F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 17:47:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ie1-nVlZElWj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jun 2019 17:47:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 327A886132
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 17:47:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 10:47:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,420,1557212400"; d="scan'208";a="183218123"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga001.fm.intel.com with ESMTP; 26 Jun 2019 10:47:52 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 26 Jun 2019 02:20:17 -0700
Message-Id: <20190626092027.52845-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190626092027.52845-1-anthony.l.nguyen@intel.com>
References: <20190626092027.52845-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S22 06/16] ice: Do not configure port with
 no media
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

The firmware reports an error when trying to configure a port with no
media. Instead of always configuring the port, check for media before
attempting to configure it. In the absence of media, turn off link and
poll for media to become available before re-enabling link.

Move ice_force_phys_link_state() up to avoid forward declaration.

Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      |   1 +
 drivers/net/ethernet/intel/ice/ice_main.c | 239 ++++++++++++++--------
 2 files changed, 158 insertions(+), 82 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 3639cf8c75ac..ff750c23cb75 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -349,6 +349,7 @@ enum ice_pf_flags {
 	ICE_FLAG_DCB_CAPABLE,
 	ICE_FLAG_DCB_ENA,
 	ICE_FLAG_LINK_DOWN_ON_CLOSE_ENA,
+	ICE_FLAG_NO_MEDIA,
 	ICE_FLAG_ENABLE_FW_LLDP,
 	ICE_FLAG_ETHTOOL_CTXT,		/* set when ethtool holds RTNL lock */
 	ICE_PF_FLAGS_NBITS		/* must be last */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 40df672befe4..4e5a92dbbf32 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -810,6 +810,20 @@ ice_link_event(struct ice_pf *pf, struct ice_port_info *pi, bool link_up,
 	if (!vsi || !vsi->port_info)
 		return -EINVAL;
 
+	/* turn off PHY if media was removed */
+	if (!test_bit(ICE_FLAG_NO_MEDIA, pf->flags) &&
+	    !(pi->phy.link_info.link_info & ICE_AQ_MEDIA_AVAILABLE)) {
+		set_bit(ICE_FLAG_NO_MEDIA, pf->flags);
+
+		result = ice_aq_set_link_restart_an(pi, false, NULL);
+		if (result) {
+			dev_dbg(&pf->pdev->dev,
+				"Failed to set link down, VSI %d error %d\n",
+			       vsi->vsi_num, result);
+			return result;
+		}
+	}
+
 	ice_vsi_link_event(vsi, link_up);
 	ice_print_link_msg(vsi, link_up);
 
@@ -1314,6 +1328,124 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 	}
 }
 
+/**
+ * ice_force_phys_link_state - Force the physical link state
+ * @vsi: VSI to force the physical link state to up/down
+ * @link_up: true/false indicates to set the physical link to up/down
+ *
+ * Force the physical link state by getting the current PHY capabilities from
+ * hardware and setting the PHY config based on the determined capabilities. If
+ * link changes a link event will be triggered because both the Enable Automatic
+ * Link Update and LESM Enable bits are set when setting the PHY capabilities.
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int ice_force_phys_link_state(struct ice_vsi *vsi, bool link_up)
+{
+	struct ice_aqc_get_phy_caps_data *pcaps;
+	struct ice_aqc_set_phy_cfg_data *cfg;
+	struct ice_port_info *pi;
+	struct device *dev;
+	int retcode;
+
+	if (!vsi || !vsi->port_info || !vsi->back)
+		return -EINVAL;
+	if (vsi->type != ICE_VSI_PF)
+		return 0;
+
+	dev = &vsi->back->pdev->dev;
+
+	pi = vsi->port_info;
+
+	pcaps = devm_kzalloc(dev, sizeof(*pcaps), GFP_KERNEL);
+	if (!pcaps)
+		return -ENOMEM;
+
+	retcode = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_SW_CFG, pcaps,
+				      NULL);
+	if (retcode) {
+		dev_err(dev,
+			"Failed to get phy capabilities, VSI %d error %d\n",
+			vsi->vsi_num, retcode);
+		retcode = -EIO;
+		goto out;
+	}
+
+	/* No change in link */
+	if (link_up == !!(pcaps->caps & ICE_AQC_PHY_EN_LINK) &&
+	    link_up == !!(pi->phy.link_info.link_info & ICE_AQ_LINK_UP))
+		goto out;
+
+	cfg = devm_kzalloc(dev, sizeof(*cfg), GFP_KERNEL);
+	if (!cfg) {
+		retcode = -ENOMEM;
+		goto out;
+	}
+
+	cfg->phy_type_low = pcaps->phy_type_low;
+	cfg->phy_type_high = pcaps->phy_type_high;
+	cfg->caps = pcaps->caps | ICE_AQ_PHY_ENA_AUTO_LINK_UPDT;
+	cfg->low_power_ctrl = pcaps->low_power_ctrl;
+	cfg->eee_cap = pcaps->eee_cap;
+	cfg->eeer_value = pcaps->eeer_value;
+	cfg->link_fec_opt = pcaps->link_fec_options;
+	if (link_up)
+		cfg->caps |= ICE_AQ_PHY_ENA_LINK;
+	else
+		cfg->caps &= ~ICE_AQ_PHY_ENA_LINK;
+
+	retcode = ice_aq_set_phy_cfg(&vsi->back->hw, pi->lport, cfg, NULL);
+	if (retcode) {
+		dev_err(dev, "Failed to set phy config, VSI %d error %d\n",
+			vsi->vsi_num, retcode);
+		retcode = -EIO;
+	}
+
+	devm_kfree(dev, cfg);
+out:
+	devm_kfree(dev, pcaps);
+	return retcode;
+}
+
+/**
+ * ice_check_media_subtask - Check for media; bring link up if detected.
+ * @pf: pointer to PF struct
+ */
+static void ice_check_media_subtask(struct ice_pf *pf)
+{
+	struct ice_port_info *pi;
+	struct ice_vsi *vsi;
+	int err;
+
+	vsi = ice_find_vsi_by_type(pf, ICE_VSI_PF);
+	if (!vsi)
+		return;
+
+	/* No need to check for media if it's already present or the interface
+	 * is down
+	 */
+	if (!test_bit(ICE_FLAG_NO_MEDIA, pf->flags) ||
+	    test_bit(__ICE_DOWN, vsi->state))
+		return;
+
+	/* Refresh link info and check if media is present */
+	pi = vsi->port_info;
+	err = ice_update_link_info(pi);
+	if (err)
+		return;
+
+	if (pi->phy.link_info.link_info & ICE_AQ_MEDIA_AVAILABLE) {
+		err = ice_force_phys_link_state(vsi, true);
+		if (err)
+			return;
+		clear_bit(ICE_FLAG_NO_MEDIA, pf->flags);
+
+		/* A Link Status Event will be generated; the event handler
+		 * will complete bringing the interface up
+		 */
+	}
+}
+
 /**
  * ice_service_task - manage and run subtasks
  * @work: pointer to work_struct contained by the PF struct
@@ -1336,6 +1468,7 @@ static void ice_service_task(struct work_struct *work)
 		return;
 	}
 
+	ice_check_media_subtask(pf);
 	ice_check_for_hang_subtask(pf);
 	ice_sync_fltr_subtask(pf);
 	ice_handle_mdd_event(pf);
@@ -3669,85 +3802,6 @@ static void ice_napi_disable_all(struct ice_vsi *vsi)
 	}
 }
 
-/**
- * ice_force_phys_link_state - Force the physical link state
- * @vsi: VSI to force the physical link state to up/down
- * @link_up: true/false indicates to set the physical link to up/down
- *
- * Force the physical link state by getting the current PHY capabilities from
- * hardware and setting the PHY config based on the determined capabilities. If
- * link changes a link event will be triggered because both the Enable Automatic
- * Link Update and LESM Enable bits are set when setting the PHY capabilities.
- *
- * Returns 0 on success, negative on failure
- */
-static int ice_force_phys_link_state(struct ice_vsi *vsi, bool link_up)
-{
-	struct ice_aqc_get_phy_caps_data *pcaps;
-	struct ice_aqc_set_phy_cfg_data *cfg;
-	struct ice_port_info *pi;
-	struct device *dev;
-	int retcode;
-
-	if (!vsi || !vsi->port_info || !vsi->back)
-		return -EINVAL;
-	if (vsi->type != ICE_VSI_PF)
-		return 0;
-
-	dev = &vsi->back->pdev->dev;
-
-	pi = vsi->port_info;
-
-	pcaps = devm_kzalloc(dev, sizeof(*pcaps), GFP_KERNEL);
-	if (!pcaps)
-		return -ENOMEM;
-
-	retcode = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_SW_CFG, pcaps,
-				      NULL);
-	if (retcode) {
-		dev_err(dev,
-			"Failed to get phy capabilities, VSI %d error %d\n",
-			vsi->vsi_num, retcode);
-		retcode = -EIO;
-		goto out;
-	}
-
-	/* No change in link */
-	if (link_up == !!(pcaps->caps & ICE_AQC_PHY_EN_LINK) &&
-	    link_up == !!(pi->phy.link_info.link_info & ICE_AQ_LINK_UP))
-		goto out;
-
-	cfg = devm_kzalloc(dev, sizeof(*cfg), GFP_KERNEL);
-	if (!cfg) {
-		retcode = -ENOMEM;
-		goto out;
-	}
-
-	cfg->phy_type_low = pcaps->phy_type_low;
-	cfg->phy_type_high = pcaps->phy_type_high;
-	cfg->caps = pcaps->caps | ICE_AQ_PHY_ENA_AUTO_LINK_UPDT;
-	cfg->low_power_ctrl = pcaps->low_power_ctrl;
-	cfg->eee_cap = pcaps->eee_cap;
-	cfg->eeer_value = pcaps->eeer_value;
-	cfg->link_fec_opt = pcaps->link_fec_options;
-	if (link_up)
-		cfg->caps |= ICE_AQ_PHY_ENA_LINK;
-	else
-		cfg->caps &= ~ICE_AQ_PHY_ENA_LINK;
-
-	retcode = ice_aq_set_phy_cfg(&vsi->back->hw, pi->lport, cfg, NULL);
-	if (retcode) {
-		dev_err(dev, "Failed to set phy config, VSI %d error %d\n",
-			vsi->vsi_num, retcode);
-		retcode = -EIO;
-	}
-
-	devm_kfree(dev, cfg);
-out:
-	devm_kfree(dev, pcaps);
-	return retcode;
-}
-
 /**
  * ice_down - Shutdown the connection
  * @vsi: The VSI being stopped
@@ -4610,6 +4664,7 @@ int ice_open(struct net_device *netdev)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
+	struct ice_port_info *pi;
 	int err;
 
 	if (test_bit(__ICE_NEEDS_RESTART, vsi->back->state)) {
@@ -4619,13 +4674,33 @@ int ice_open(struct net_device *netdev)
 
 	netif_carrier_off(netdev);
 
-	err = ice_force_phys_link_state(vsi, true);
+	pi = vsi->port_info;
+	err = ice_update_link_info(pi);
 	if (err) {
-		netdev_err(netdev,
-			   "Failed to set physical link up, error %d\n", err);
+		netdev_err(netdev, "Failed to get link info, error %d\n",
+			   err);
 		return err;
 	}
 
+	/* Set PHY if there is media, otherwise, turn off PHY */
+	if (pi->phy.link_info.link_info & ICE_AQ_MEDIA_AVAILABLE) {
+		err = ice_force_phys_link_state(vsi, true);
+		if (err) {
+			netdev_err(netdev,
+				   "Failed to set physical link up, error %d\n",
+				   err);
+			return err;
+		}
+	} else {
+		err = ice_aq_set_link_restart_an(pi, false, NULL);
+		if (err) {
+			netdev_err(netdev, "Failed to set PHY state, VSI %d error %d\n",
+				   vsi->vsi_num, err);
+			return err;
+		}
+		set_bit(ICE_FLAG_NO_MEDIA, vsi->back->flags);
+	}
+
 	err = ice_vsi_open(vsi);
 	if (err)
 		netdev_err(netdev, "Failed to open VSI 0x%04X on switch 0x%04X\n",
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
