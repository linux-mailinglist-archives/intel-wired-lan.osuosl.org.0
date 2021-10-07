Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FCFC425FBB
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Oct 2021 00:16:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9892940207;
	Thu,  7 Oct 2021 22:16:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DXNdl4hVFoZ8; Thu,  7 Oct 2021 22:16:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B036740205;
	Thu,  7 Oct 2021 22:16:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 05EB51BF368
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Oct 2021 22:16:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0C8EB4068C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Oct 2021 22:16:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q4AO-Q_-ZOtM for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Oct 2021 22:16:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9576C40A10
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Oct 2021 22:16:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="226331562"
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="226331562"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 15:16:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="590327188"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.133])
 by orsmga004.jf.intel.com with ESMTP; 07 Oct 2021 15:16:23 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 Oct 2021 15:01:26 -0700
Message-Id: <20211007220127.70514-7-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211007220127.70514-1-anthony.l.nguyen@intel.com>
References: <20211007220127.70514-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 6/7] ice: Remove excess error
 variables
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

ice_status previously had a variable to contain these values where other
error codes had a variable as well. With ice_status now being an int,
there is no need for two variables to hold error values. In cases where
this occurs, remove one of the excess variables and use a single one.
Some initialization of variables are no longer needed and have been
removed.

Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c   |   9 +-
 drivers/net/ethernet/intel/ice/ice_devlink.c  |  32 +++--
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  79 ++++++------
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c |  44 +++----
 .../net/ethernet/intel/ice/ice_fw_update.c    |  31 ++---
 drivers/net/ethernet/intel/ice/ice_gnss.c     |  28 ++--
 drivers/net/ethernet/intel/ice/ice_lib.c      |  66 +++++-----
 drivers/net/ethernet/intel/ice/ice_main.c     | 120 ++++++++----------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |   5 +-
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   |   9 +-
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  24 ++--
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  44 +++----
 12 files changed, 210 insertions(+), 281 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 47191869284e..53c2fdc909ce 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -4458,7 +4458,6 @@ ice_ena_vsi_rdma_qset(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 	struct ice_sched_node *parent;
 	struct ice_hw *hw;
 	u16 i, buf_size;
-	int status;
 	int ret;
 
 	if (!pi || pi->port_state != ICE_SCHED_PORT_STATE_READY)
@@ -4507,12 +4506,10 @@ ice_ena_vsi_rdma_qset(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 	node.data.elem_type = ICE_AQC_ELEM_TYPE_LEAF;
 	for (i = 0; i < num_qsets; i++) {
 		node.node_teid = buf->rdma_qsets[i].qset_teid;
-		status = ice_sched_add_node(pi, hw->num_tx_sched_layers - 1,
-					    &node);
-		if (status) {
-			ret = status;
+		ret = ice_sched_add_node(pi, hw->num_tx_sched_layers - 1,
+					 &node);
+		if (ret)
 			break;
-		}
 		qset_teid[i] = le32_to_cpu(node.node_teid);
 	}
 rdma_error_exit:
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index def09061f4cc..3b50d1f6d18d 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -251,7 +251,6 @@ static int ice_devlink_info_get(struct devlink *devlink,
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
 	struct ice_info_ctx *ctx;
-	int status;
 	size_t i;
 	int err;
 
@@ -266,20 +265,20 @@ static int ice_devlink_info_get(struct devlink *devlink,
 		return -ENOMEM;
 
 	/* discover capabilities first */
-	status = ice_discover_dev_caps(hw, &ctx->dev_caps);
-	if (status) {
+	err = ice_discover_dev_caps(hw, &ctx->dev_caps);
+	if (err) {
 		dev_dbg(dev, "Failed to discover device capabilities, status %d aq_err %s\n",
-			status, ice_aq_str(hw->adminq.sq_last_status));
+			err, ice_aq_str(hw->adminq.sq_last_status));
 		NL_SET_ERR_MSG_MOD(extack, "Unable to discover device capabilities");
 		err = -EIO;
 		goto out_free_ctx;
 	}
 
 	if (ctx->dev_caps.common_cap.nvm_update_pending_orom) {
-		status = ice_get_inactive_orom_ver(hw, &ctx->pending_orom);
-		if (status) {
+		err = ice_get_inactive_orom_ver(hw, &ctx->pending_orom);
+		if (err) {
 			dev_dbg(dev, "Unable to read inactive Option ROM version data, status %d aq_err %s\n",
-				status, ice_aq_str(hw->adminq.sq_last_status));
+				err, ice_aq_str(hw->adminq.sq_last_status));
 
 			/* disable display of pending Option ROM */
 			ctx->dev_caps.common_cap.nvm_update_pending_orom = false;
@@ -287,10 +286,10 @@ static int ice_devlink_info_get(struct devlink *devlink,
 	}
 
 	if (ctx->dev_caps.common_cap.nvm_update_pending_nvm) {
-		status = ice_get_inactive_nvm_ver(hw, &ctx->pending_nvm);
-		if (status) {
+		err = ice_get_inactive_nvm_ver(hw, &ctx->pending_nvm);
+		if (err) {
 			dev_dbg(dev, "Unable to read inactive NVM version data, status %d aq_err %s\n",
-				status, ice_aq_str(hw->adminq.sq_last_status));
+				err, ice_aq_str(hw->adminq.sq_last_status));
 
 			/* disable display of pending Option ROM */
 			ctx->dev_caps.common_cap.nvm_update_pending_nvm = false;
@@ -298,10 +297,10 @@ static int ice_devlink_info_get(struct devlink *devlink,
 	}
 
 	if (ctx->dev_caps.common_cap.nvm_update_pending_netlist) {
-		status = ice_get_inactive_netlist_ver(hw, &ctx->pending_netlist);
-		if (status) {
+		err = ice_get_inactive_netlist_ver(hw, &ctx->pending_netlist);
+		if (err) {
 			dev_dbg(dev, "Unable to read inactive Netlist version data, status %d aq_err %s\n",
-				status, ice_aq_str(hw->adminq.sq_last_status));
+				err, ice_aq_str(hw->adminq.sq_last_status));
 
 			/* disable display of pending Option ROM */
 			ctx->dev_caps.common_cap.nvm_update_pending_netlist = false;
@@ -392,7 +391,6 @@ ice_devlink_reload_down(struct devlink *devlink, bool netns_change,
 	struct ice_pf *pf = devlink_priv(devlink);
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
-	int status;
 	u8 pending;
 	int err;
 
@@ -418,10 +416,10 @@ ice_devlink_reload_down(struct devlink *devlink, bool netns_change,
 	case ICE_FW_ACTIVATE_ON_EMPR:
 		dev_dbg(dev, "Issuing device EMP reset to activate firmware\n");
 
-		status = ice_aq_nvm_update_empr(hw);
-		if (status) {
+		err = ice_aq_nvm_update_empr(hw);
+		if (err) {
 			dev_err(dev, "Failed to trigger EMP device reset to reload firmware, err %d aq_err %s\n",
-				status, ice_aq_str(hw->adminq.sq_last_status));
+				err, ice_aq_str(hw->adminq.sq_last_status));
 			NL_SET_ERR_MSG_MOD(extack, "Failed to trigger EMP device reset to reload firmware");
 			return -EIO;
 		}
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index b354b0928af7..e54775aab31c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -281,8 +281,7 @@ ice_get_eeprom(struct net_device *netdev, struct ethtool_eeprom *eeprom,
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
 	struct device *dev;
-	int ret = 0;
-	int status;
+	int ret;
 	u8 *buf;
 
 	dev = ice_pf_to_dev(pf);
@@ -295,19 +294,19 @@ ice_get_eeprom(struct net_device *netdev, struct ethtool_eeprom *eeprom,
 	if (!buf)
 		return -ENOMEM;
 
-	status = ice_acquire_nvm(hw, ICE_RES_READ);
-	if (status) {
+	ret = ice_acquire_nvm(hw, ICE_RES_READ);
+	if (ret) {
 		dev_err(dev, "ice_acquire_nvm failed, err %d aq_err %s\n",
-			status, ice_aq_str(hw->adminq.sq_last_status));
+			ret, ice_aq_str(hw->adminq.sq_last_status));
 		ret = -EIO;
 		goto out;
 	}
 
-	status = ice_read_flat_nvm(hw, eeprom->offset, &eeprom->len, buf,
-				   false);
-	if (status) {
+	ret = ice_read_flat_nvm(hw, eeprom->offset, &eeprom->len, buf,
+				false);
+	if (ret) {
 		dev_err(dev, "ice_read_flat_nvm failed, err %d aq_err %s\n",
-			status, ice_aq_str(hw->adminq.sq_last_status));
+			ret, ice_aq_str(hw->adminq.sq_last_status));
 		ret = -EIO;
 		goto release;
 	}
@@ -1053,8 +1052,7 @@ ice_get_fecparam(struct net_device *netdev, struct ethtool_fecparam *fecparam)
 	struct ice_link_status *link_info;
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_port_info *pi;
-	int err = 0;
-	int status;
+	int err;
 
 	pi = vsi->port_info;
 
@@ -1080,9 +1078,9 @@ ice_get_fecparam(struct net_device *netdev, struct ethtool_fecparam *fecparam)
 	if (!caps)
 		return -ENOMEM;
 
-	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_MEDIA,
-				     caps, NULL);
-	if (status) {
+	err = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_MEDIA,
+				  caps, NULL);
+	if (err) {
 		err = -EAGAIN;
 		goto done;
 	}
@@ -1934,8 +1932,7 @@ ice_get_link_ksettings(struct net_device *netdev,
 	struct ice_aqc_get_phy_caps_data *caps;
 	struct ice_link_status *hw_link_info;
 	struct ice_vsi *vsi = np->vsi;
-	int err = 0;
-	int status;
+	int err;
 
 	ethtool_link_ksettings_zero_link_mode(ks, supported);
 	ethtool_link_ksettings_zero_link_mode(ks, advertising);
@@ -1986,9 +1983,9 @@ ice_get_link_ksettings(struct net_device *netdev,
 	if (!caps)
 		return -ENOMEM;
 
-	status = ice_aq_get_phy_caps(vsi->port_info, false,
-				     ICE_AQC_REPORT_ACTIVE_CFG, caps, NULL);
-	if (status) {
+	err = ice_aq_get_phy_caps(vsi->port_info, false,
+				  ICE_AQC_REPORT_ACTIVE_CFG, caps, NULL);
+	if (err) {
 		err = -EIO;
 		goto done;
 	}
@@ -2023,9 +2020,9 @@ ice_get_link_ksettings(struct net_device *netdev,
 	    caps->link_fec_options & ICE_AQC_PHY_FEC_25G_RS_544_REQ)
 		ethtool_link_ksettings_add_link_mode(ks, advertising, FEC_RS);
 
-	status = ice_aq_get_phy_caps(vsi->port_info, false,
-				     ICE_AQC_REPORT_TOPO_CAP_MEDIA, caps, NULL);
-	if (status) {
+	err = ice_aq_get_phy_caps(vsi->port_info, false,
+				  ICE_AQC_REPORT_TOPO_CAP_MEDIA, caps, NULL);
+	if (err) {
 		err = -EIO;
 		goto done;
 	}
@@ -2208,9 +2205,8 @@ ice_set_link_ksettings(struct net_device *netdev,
 	u8 autoneg_changed = 0;
 	u64 phy_type_high = 0;
 	u64 phy_type_low = 0;
-	int err = 0;
 	bool linkup;
-	int status;
+	int err;
 
 	pi = np->vsi->port_info;
 
@@ -2230,12 +2226,12 @@ ice_set_link_ksettings(struct net_device *netdev,
 
 	/* Get the PHY capabilities based on media */
 	if (ice_fw_supports_report_dflt_cfg(pi->hw))
-		status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_DFLT_CFG,
-					     phy_caps, NULL);
+		err = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_DFLT_CFG,
+					  phy_caps, NULL);
 	else
-		status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_MEDIA,
-					     phy_caps, NULL);
-	if (status) {
+		err = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_MEDIA,
+					  phy_caps, NULL);
+	if (err) {
 		err = -EIO;
 		goto done;
 	}
@@ -2304,8 +2300,8 @@ ice_set_link_ksettings(struct net_device *netdev,
 
 	/* Call to get the current link speed */
 	pi->phy.get_link_info = true;
-	status = ice_get_link_status(pi, &linkup);
-	if (status) {
+	err = ice_get_link_status(pi, &linkup);
+	if (err) {
 		err = -EIO;
 		goto done;
 	}
@@ -2377,8 +2373,8 @@ ice_set_link_ksettings(struct net_device *netdev,
 	}
 
 	/* make the aq call */
-	status = ice_aq_set_phy_cfg(&pf->hw, pi, &config, NULL);
-	if (status) {
+	err = ice_aq_set_phy_cfg(&pf->hw, pi, &config, NULL);
+	if (err) {
 		netdev_info(netdev, "Set phy config failed,\n");
 		err = -EIO;
 		goto done;
@@ -2997,9 +2993,8 @@ ice_set_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *pause)
 	struct ice_port_info *pi;
 	u8 aq_failures;
 	bool link_up;
-	int err = 0;
-	int status;
 	u32 is_an;
+	int err;
 
 	pi = vsi->port_info;
 	hw_link_info = &pi->phy.link_info;
@@ -3025,9 +3020,9 @@ ice_set_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *pause)
 		return -ENOMEM;
 
 	/* Get current PHY config */
-	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_ACTIVE_CFG, pcaps,
-				     NULL);
-	if (status) {
+	err = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_ACTIVE_CFG, pcaps,
+				  NULL);
+	if (err) {
 		kfree(pcaps);
 		return -EIO;
 	}
@@ -3065,19 +3060,19 @@ ice_set_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *pause)
 		return -EINVAL;
 
 	/* Set the FC mode and only restart AN if link is up */
-	status = ice_set_fc(pi, &aq_failures, link_up);
+	err = ice_set_fc(pi, &aq_failures, link_up);
 
 	if (aq_failures & ICE_SET_FC_AQ_FAIL_GET) {
 		netdev_info(netdev, "Set fc failed on the get_phy_capabilities call with err %d aq_err %s\n",
-			    status, ice_aq_str(hw->adminq.sq_last_status));
+			    err, ice_aq_str(hw->adminq.sq_last_status));
 		err = -EAGAIN;
 	} else if (aq_failures & ICE_SET_FC_AQ_FAIL_SET) {
 		netdev_info(netdev, "Set fc failed on the set_phy_config call with err %d aq_err %s\n",
-			    status, ice_aq_str(hw->adminq.sq_last_status));
+			    err, ice_aq_str(hw->adminq.sq_last_status));
 		err = -EAGAIN;
 	} else if (aq_failures & ICE_SET_FC_AQ_FAIL_UPDATE) {
 		netdev_info(netdev, "Set fc failed on the get_link_info call with err %d aq_err %s\n",
-			    status, ice_aq_str(hw->adminq.sq_last_status));
+			    err, ice_aq_str(hw->adminq.sq_last_status));
 		err = -EAGAIN;
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
index d19925ec979d..68ac0be68107 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
@@ -533,7 +533,6 @@ ice_fdir_set_hw_fltr_rule(struct ice_pf *pf, struct ice_flow_seg_info *seg,
 	u64 entry1_h = 0;
 	u64 entry2_h = 0;
 	u64 prof_id;
-	int status;
 	int err;
 
 	main_vsi = ice_get_main_vsi(pf);
@@ -581,24 +580,20 @@ ice_fdir_set_hw_fltr_rule(struct ice_pf *pf, struct ice_flow_seg_info *seg,
 	 * actions (NULL) and zero actions 0.
 	 */
 	prof_id = flow + tun * ICE_FLTR_PTYPE_MAX;
-	status = ice_flow_add_prof(hw, ICE_BLK_FD, ICE_FLOW_RX, prof_id, seg,
-				   TNL_SEG_CNT(tun), &prof);
-	if (status)
-		return status;
-	status = ice_flow_add_entry(hw, ICE_BLK_FD, prof_id, main_vsi->idx,
-				    main_vsi->idx, ICE_FLOW_PRIO_NORMAL,
-				    seg, &entry1_h);
-	if (status) {
-		err = status;
+	err = ice_flow_add_prof(hw, ICE_BLK_FD, ICE_FLOW_RX, prof_id, seg,
+				TNL_SEG_CNT(tun), &prof);
+	if (err)
+		return err;
+	err = ice_flow_add_entry(hw, ICE_BLK_FD, prof_id, main_vsi->idx,
+				 main_vsi->idx, ICE_FLOW_PRIO_NORMAL,
+				 seg, &entry1_h);
+	if (err)
 		goto err_prof;
-	}
-	status = ice_flow_add_entry(hw, ICE_BLK_FD, prof_id, main_vsi->idx,
-				    ctrl_vsi->idx, ICE_FLOW_PRIO_NORMAL,
-				    seg, &entry2_h);
-	if (status) {
-		err = status;
+	err = ice_flow_add_entry(hw, ICE_BLK_FD, prof_id, main_vsi->idx,
+				 ctrl_vsi->idx, ICE_FLOW_PRIO_NORMAL,
+				 seg, &entry2_h);
+	if (err)
 		goto err_entry;
-	}
 
 	hw_prof->fdir_seg[tun] = seg;
 	hw_prof->entry_h[0][tun] = entry1_h;
@@ -1192,7 +1187,6 @@ ice_fdir_write_fltr(struct ice_pf *pf, struct ice_fdir_fltr *input, bool add,
 	struct ice_vsi *ctrl_vsi;
 	u8 *pkt, *frag_pkt;
 	bool has_frag;
-	int status;
 	int err;
 
 	ctrl_vsi = ice_get_ctrl_vsi(pf);
@@ -1209,11 +1203,9 @@ ice_fdir_write_fltr(struct ice_pf *pf, struct ice_fdir_fltr *input, bool add,
 	}
 
 	ice_fdir_get_prgm_desc(hw, input, &desc, add);
-	status = ice_fdir_get_gen_prgm_pkt(hw, input, pkt, false, is_tun);
-	if (status) {
-		err = status;
+	err = ice_fdir_get_gen_prgm_pkt(hw, input, pkt, false, is_tun);
+	if (err)
 		goto err_free_all;
-	}
 	err = ice_prgm_fdir_fltr(ctrl_vsi, &desc, pkt);
 	if (err)
 		goto err_free_all;
@@ -1223,12 +1215,10 @@ ice_fdir_write_fltr(struct ice_pf *pf, struct ice_fdir_fltr *input, bool add,
 	if (has_frag) {
 		/* does not return error */
 		ice_fdir_get_prgm_desc(hw, input, &desc, add);
-		status = ice_fdir_get_gen_prgm_pkt(hw, input, frag_pkt, true,
-						   is_tun);
-		if (status) {
-			err = status;
+		err = ice_fdir_get_gen_prgm_pkt(hw, input, frag_pkt, true,
+						is_tun);
+		if (err)
 			goto err_frag;
-		}
 		err = ice_prgm_fdir_fltr(ctrl_vsi, &desc, frag_pkt);
 		if (err)
 			goto err_frag;
diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
index fcae1f7730b2..c8babf907532 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
@@ -283,7 +283,6 @@ ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
 	struct ice_rq_event_info event;
 	struct ice_hw *hw = &pf->hw;
 	u32 completion_offset;
-	int status;
 	int err;
 
 	memset(&event, 0, sizeof(event));
@@ -291,11 +290,11 @@ ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
 	dev_dbg(dev, "Writing block of %u bytes for module 0x%02x at offset %u\n",
 		block_size, module, offset);
 
-	status = ice_aq_update_nvm(hw, module, offset, block_size, block,
-				   last_cmd, 0, NULL);
-	if (status) {
+	err = ice_aq_update_nvm(hw, module, offset, block_size, block,
+				last_cmd, 0, NULL);
+	if (err) {
 		dev_err(dev, "Failed to flash module 0x%02x with block of size %u at offset %u, err %d aq_err %s\n",
-			module, block_size, offset, status,
+			module, block_size, offset, err,
 			ice_aq_str(hw->adminq.sq_last_status));
 		NL_SET_ERR_MSG_MOD(extack, "Failed to program flash module");
 		return -EIO;
@@ -462,7 +461,6 @@ ice_erase_nvm_module(struct ice_pf *pf, u16 module, const char *component,
 	struct ice_rq_event_info event;
 	struct ice_hw *hw = &pf->hw;
 	struct devlink *devlink;
-	int status;
 	int err;
 
 	dev_dbg(dev, "Beginning erase of flash component '%s', module 0x%02x\n", component, module);
@@ -473,10 +471,10 @@ ice_erase_nvm_module(struct ice_pf *pf, u16 module, const char *component,
 
 	devlink_flash_update_timeout_notify(devlink, "Erasing", component, ICE_FW_ERASE_TIMEOUT);
 
-	status = ice_aq_erase_nvm(hw, module, NULL);
-	if (status) {
+	err = ice_aq_erase_nvm(hw, module, NULL);
+	if (err) {
 		dev_err(dev, "Failed to erase %s (module 0x%02x), err %d aq_err %s\n",
-			component, module, status,
+			component, module, err,
 			ice_aq_str(hw->adminq.sq_last_status));
 		NL_SET_ERR_MSG_MOD(extack, "Failed to erase flash module");
 		err = -EIO;
@@ -544,15 +542,14 @@ ice_switch_flash_banks(struct ice_pf *pf, u8 activate_flags,
 	struct ice_rq_event_info event;
 	struct ice_hw *hw = &pf->hw;
 	u16 completion_retval;
-	int status;
 	int err;
 
 	memset(&event, 0, sizeof(event));
 
-	status = ice_nvm_write_activate(hw, activate_flags);
-	if (status) {
+	err = ice_nvm_write_activate(hw, activate_flags);
+	if (err) {
 		dev_err(dev, "Failed to switch active flash banks, err %d aq_err %s\n",
-			status, ice_aq_str(hw->adminq.sq_last_status));
+			err, ice_aq_str(hw->adminq.sq_last_status));
 		NL_SET_ERR_MSG_MOD(extack, "Failed to switch active flash banks");
 		return -EIO;
 	}
@@ -844,7 +841,6 @@ int ice_flash_pldm_image(struct devlink *devlink,
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
 	struct ice_fwu_priv priv;
-	int status;
 	u8 preservation;
 	int err;
 
@@ -884,11 +880,10 @@ int ice_flash_pldm_image(struct devlink *devlink,
 
 	devlink_flash_update_status_notify(devlink, "Preparing to flash", NULL, 0, 0);
 
-	status = ice_acquire_nvm(hw, ICE_RES_WRITE);
-	if (status) {
+	err = ice_acquire_nvm(hw, ICE_RES_WRITE);
+	if (err) {
 		dev_err(dev, "Failed to acquire device flash lock, err %d aq_err %s\n",
-			status,
-			ice_aq_str(hw->adminq.sq_last_status));
+			err, ice_aq_str(hw->adminq.sq_last_status));
 		NL_SET_ERR_MSG_MOD(extack, "Failed to acquire device flash lock");
 		return -EIO;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index 76f889ef91fb..51f558e4c0db 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -24,7 +24,7 @@ static void ice_gnss_read(struct kthread_work *work)
 	__be16 data_len_b;
 	char *buf = NULL;
 	u16 i, data_len;
-	int err = 0;
+	int err;
 
 	pf = gnss->back;
 	if (!pf || !&pf->hw || !gnss->tty || !gnss->tty->port) {
@@ -52,16 +52,11 @@ static void ice_gnss_read(struct kthread_work *work)
 
 	/* Read data length in a loop, when it's not 0 the data is ready */
 	for (i = 0; i < ICE_MAX_UBX_READ_TRIES; i++) {
-		int status;
-
-		status = ice_aq_read_i2c(hw, link_topo,
-					 ICE_GNSS_UBX_I2C_BUS_ADDR,
-					 cpu_to_le16(ICE_GNSS_UBX_DATA_LEN_H),
-					 i2c_params, (u8 *)&data_len_b, NULL);
-		if (status) {
-			err = status;
+		err = ice_aq_read_i2c(hw, link_topo, ICE_GNSS_UBX_I2C_BUS_ADDR,
+				      cpu_to_le16(ICE_GNSS_UBX_DATA_LEN_H),
+				      i2c_params, (u8 *)&data_len_b, NULL);
+		if (err)
 			goto exit_buf;
-		}
 
 		data_len = be16_to_cpu(data_len_b);
 		if (data_len != 0 && data_len != U16_MAX)
@@ -79,21 +74,16 @@ static void ice_gnss_read(struct kthread_work *work)
 
 	/* Read received data */
 	for (i = 0; i < data_len; i += bytes_read) {
-		int status;
-
 		u16 bytes_left = data_len - i;
 
 		bytes_read = bytes_left < ICE_MAX_I2C_DATA_SIZE ? bytes_left :
 					  ICE_MAX_I2C_DATA_SIZE;
 
-		status = ice_aq_read_i2c(hw, link_topo,
-					 ICE_GNSS_UBX_I2C_BUS_ADDR,
-					 cpu_to_le16(ICE_GNSS_UBX_EMPTY_DATA),
-					 bytes_read, &buf[i], NULL);
-		if (status) {
-			err = status;
+		err = ice_aq_read_i2c(hw, link_topo, ICE_GNSS_UBX_I2C_BUS_ADDR,
+				      cpu_to_le16(ICE_GNSS_UBX_EMPTY_DATA),
+				      bytes_read, &buf[i], NULL);
+		if (err)
 			goto exit_buf;
-		}
 	}
 
 	/* Send the data to the tty layer for users to read. This doesn't
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 8e2efaa14a63..c98c4e1050e3 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1665,20 +1665,19 @@ int ice_vsi_kill_vlan(struct ice_vsi *vsi, u16 vid)
 {
 	struct ice_pf *pf = vsi->back;
 	struct device *dev;
-	int err = 0;
-	int status;
+	int err;
 
 	dev = ice_pf_to_dev(pf);
 
-	status = ice_fltr_remove_vlan(vsi, vid, ICE_FWD_TO_VSI);
-	if (!status) {
+	err = ice_fltr_remove_vlan(vsi, vid, ICE_FWD_TO_VSI);
+	if (!err) {
 		vsi->num_vlan--;
-	} else if (status == -ENOENT) {
+	} else if (err == -ENOENT) {
 		dev_dbg(dev, "Failed to remove VLAN %d on VSI %i, it does not exist, error: %d\n",
-			vid, vsi->vsi_num, status);
+			vid, vsi->vsi_num, err);
 	} else {
 		dev_err(dev, "Error removing VLAN %d on vsi %i error: %d\n",
-			vid, vsi->vsi_num, status);
+			vid, vsi->vsi_num, err);
 		err = -EIO;
 	}
 
@@ -2019,8 +2018,7 @@ int ice_vsi_manage_vlan_insertion(struct ice_vsi *vsi)
 {
 	struct ice_hw *hw = &vsi->back->hw;
 	struct ice_vsi_ctx *ctxt;
-	int ret = 0;
-	int status;
+	int ret;
 
 	ctxt = kzalloc(sizeof(*ctxt), GFP_KERNEL);
 	if (!ctxt)
@@ -2038,11 +2036,10 @@ int ice_vsi_manage_vlan_insertion(struct ice_vsi *vsi)
 
 	ctxt->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_VLAN_VALID);
 
-	status = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
-	if (status) {
+	ret = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
+	if (ret) {
 		dev_err(ice_pf_to_dev(vsi->back), "update VSI for VLAN insert failed, err %d aq_err %s\n",
-			status,
-			ice_aq_str(hw->adminq.sq_last_status));
+			ret, ice_aq_str(hw->adminq.sq_last_status));
 		ret = -EIO;
 		goto out;
 	}
@@ -2062,8 +2059,7 @@ int ice_vsi_manage_vlan_stripping(struct ice_vsi *vsi, bool ena)
 {
 	struct ice_hw *hw = &vsi->back->hw;
 	struct ice_vsi_ctx *ctxt;
-	int status;
-	int ret = 0;
+	int ret;
 
 	/* do not allow modifying VLAN stripping when a port VLAN is configured
 	 * on this VSI
@@ -2091,11 +2087,10 @@ int ice_vsi_manage_vlan_stripping(struct ice_vsi *vsi, bool ena)
 
 	ctxt->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_VLAN_VALID);
 
-	status = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
-	if (status) {
+	ret = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
+	if (ret) {
 		dev_err(ice_pf_to_dev(vsi->back), "update VSI for VLAN strip failed, ena = %d err %d aq_err %s\n",
-			ena, status,
-			ice_aq_str(hw->adminq.sq_last_status));
+			ena, ret, ice_aq_str(hw->adminq.sq_last_status));
 		ret = -EIO;
 		goto out;
 	}
@@ -2485,7 +2480,6 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_vsi *vsi;
 	int ret, i;
-	int status;
 
 	if (vsi_type == ICE_VSI_VF || vsi_type == ICE_VSI_CTRL)
 		vsi = ice_vsi_alloc(pf, vsi_type, vf_id);
@@ -2610,11 +2604,11 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 	for (i = 0; i < vsi->tc_cfg.numtc; i++)
 		max_txqs[i] = vsi->alloc_txq;
 
-	status = ice_cfg_vsi_lan(vsi->port_info, vsi->idx, vsi->tc_cfg.ena_tc,
-				 max_txqs);
-	if (status) {
+	ret = ice_cfg_vsi_lan(vsi->port_info, vsi->idx, vsi->tc_cfg.ena_tc,
+			      max_txqs);
+	if (ret) {
 		dev_err(dev, "VSI %d failed lan queue config, error %d\n",
-			vsi->vsi_num, status);
+			vsi->vsi_num, ret);
 		goto unroll_clear_rings;
 	}
 
@@ -3160,7 +3154,6 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 	enum ice_vsi_type vtype;
 	struct ice_pf *pf;
 	int ret, i;
-	int status;
 
 	if (!vsi)
 		return -EINVAL;
@@ -3287,11 +3280,11 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 			max_txqs[i] += vsi->num_xdp_txq;
 	}
 
-	status = ice_cfg_vsi_lan(vsi->port_info, vsi->idx, vsi->tc_cfg.ena_tc,
-				 max_txqs);
-	if (status) {
+	ret = ice_cfg_vsi_lan(vsi->port_info, vsi->idx, vsi->tc_cfg.ena_tc,
+			      max_txqs);
+	if (ret) {
 		dev_err(ice_pf_to_dev(pf), "VSI %d failed lan queue config, error %d\n",
-			vsi->vsi_num, status);
+			vsi->vsi_num, ret);
 		if (init_vsi) {
 			ret = -EIO;
 			goto err_vectors;
@@ -3388,9 +3381,8 @@ int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc)
 	struct ice_pf *pf = vsi->back;
 	struct ice_vsi_ctx *ctx;
 	struct device *dev;
-	int i, ret = 0;
 	u8 num_tc = 0;
-	int status;
+	int i, ret;
 
 	dev = ice_pf_to_dev(pf);
 
@@ -3416,19 +3408,19 @@ int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc)
 
 	/* must to indicate which section of VSI context are being modified */
 	ctx->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_RXQ_MAP_VALID);
-	status = ice_update_vsi(&pf->hw, vsi->idx, ctx, NULL);
-	if (status) {
+	ret = ice_update_vsi(&pf->hw, vsi->idx, ctx, NULL);
+	if (ret) {
 		dev_info(dev, "Failed VSI Update\n");
 		ret = -EIO;
 		goto out;
 	}
 
-	status = ice_cfg_vsi_lan(vsi->port_info, vsi->idx, vsi->tc_cfg.ena_tc,
-				 max_txqs);
+	ret = ice_cfg_vsi_lan(vsi->port_info, vsi->idx, vsi->tc_cfg.ena_tc,
+			      max_txqs);
 
-	if (status) {
+	if (ret) {
 		dev_err(dev, "VSI %d failed TC config, error %d\n",
-			vsi->vsi_num, status);
+			vsi->vsi_num, ret);
 		ret = -EIO;
 		goto out;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 947c3558eb00..9336e3d701ad 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -284,9 +284,8 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
 	u32 changed_flags = 0;
-	int status = 0;
 	u8 promisc_m;
-	int err = 0;
+	int err;
 
 	if (!vsi->netdev)
 		return -EINVAL;
@@ -316,25 +315,23 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 	}
 
 	/* Remove MAC addresses in the unsync list */
-	status = ice_fltr_remove_mac_list(vsi, &vsi->tmp_unsync_list);
+	err = ice_fltr_remove_mac_list(vsi, &vsi->tmp_unsync_list);
 	ice_fltr_free_list(dev, &vsi->tmp_unsync_list);
-	if (status) {
+	if (err) {
 		netdev_err(netdev, "Failed to delete MAC filters\n");
 		/* if we failed because of alloc failures, just bail */
-		if (status == -ENOMEM) {
-			err = -ENOMEM;
+		if (err == -ENOMEM)
 			goto out;
-		}
 	}
 
 	/* Add MAC addresses in the sync list */
-	status = ice_fltr_add_mac_list(vsi, &vsi->tmp_sync_list);
+	err = ice_fltr_add_mac_list(vsi, &vsi->tmp_sync_list);
 	ice_fltr_free_list(dev, &vsi->tmp_sync_list);
 	/* If filter is added successfully or already exists, do not go into
 	 * 'if' condition and report it as error. Instead continue processing
 	 * rest of the function.
 	 */
-	if (status && status != -EEXIST) {
+	if (err && err != -EEXIST) {
 		netdev_err(netdev, "Failed to add MAC filters\n");
 		/* If there is no more space for new umac filters, VSI
 		 * should go into promiscuous mode. There should be some
@@ -1835,17 +1832,16 @@ static int ice_init_nvm_phy_type(struct ice_port_info *pi)
 {
 	struct ice_aqc_get_phy_caps_data *pcaps;
 	struct ice_pf *pf = pi->hw->back;
-	int err = 0;
-	int status;
+	int err;
 
 	pcaps = kzalloc(sizeof(*pcaps), GFP_KERNEL);
 	if (!pcaps)
 		return -ENOMEM;
 
-	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_NO_MEDIA, pcaps,
-				     NULL);
+	err = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_NO_MEDIA,
+				  pcaps, NULL);
 
-	if (status) {
+	if (err) {
 		dev_err(ice_pf_to_dev(pf), "Get PHY capability failed.\n");
 		err = -EIO;
 		goto out;
@@ -1946,8 +1942,7 @@ static int ice_init_phy_user_cfg(struct ice_port_info *pi)
 	struct ice_aqc_get_phy_caps_data *pcaps;
 	struct ice_phy_info *phy = &pi->phy;
 	struct ice_pf *pf = pi->hw->back;
-	int err = 0;
-	int status;
+	int err;
 
 	if (!(phy->link_info.link_info & ICE_AQ_MEDIA_AVAILABLE))
 		return -EIO;
@@ -1957,12 +1952,12 @@ static int ice_init_phy_user_cfg(struct ice_port_info *pi)
 		return -ENOMEM;
 
 	if (ice_fw_supports_report_dflt_cfg(pi->hw))
-		status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_DFLT_CFG,
-					     pcaps, NULL);
+		err = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_DFLT_CFG,
+					  pcaps, NULL);
 	else
-		status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_MEDIA,
-					     pcaps, NULL);
-	if (status) {
+		err = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_MEDIA,
+					  pcaps, NULL);
+	if (err) {
 		dev_err(ice_pf_to_dev(pf), "Get PHY capability failed.\n");
 		err = -EIO;
 		goto err_out;
@@ -2018,8 +2013,7 @@ static int ice_configure_phy(struct ice_vsi *vsi)
 	struct ice_aqc_set_phy_cfg_data *cfg;
 	struct ice_phy_info *phy = &pi->phy;
 	struct ice_pf *pf = vsi->back;
-	int err = 0;
-	int status;
+	int err;
 
 	/* Ensure we have media as we cannot configure a medialess port */
 	if (!(phy->link_info.link_info & ICE_AQ_MEDIA_AVAILABLE))
@@ -2039,11 +2033,11 @@ static int ice_configure_phy(struct ice_vsi *vsi)
 		return -ENOMEM;
 
 	/* Get current PHY config */
-	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_ACTIVE_CFG, pcaps,
-				     NULL);
-	if (status) {
+	err = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_ACTIVE_CFG, pcaps,
+				  NULL);
+	if (err) {
 		dev_err(dev, "Failed to get PHY configuration, VSI %d error %d\n",
-			vsi->vsi_num, status);
+			vsi->vsi_num, err);
 		err = -EIO;
 		goto done;
 	}
@@ -2058,14 +2052,14 @@ static int ice_configure_phy(struct ice_vsi *vsi)
 	/* Use PHY topology as baseline for configuration */
 	memset(pcaps, 0, sizeof(*pcaps));
 	if (ice_fw_supports_report_dflt_cfg(pi->hw))
-		status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_DFLT_CFG,
-					     pcaps, NULL);
+		err = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_DFLT_CFG,
+					  pcaps, NULL);
 	else
-		status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_MEDIA,
-					     pcaps, NULL);
-	if (status) {
+		err = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_MEDIA,
+					  pcaps, NULL);
+	if (err) {
 		dev_err(dev, "Failed to get PHY caps, VSI %d error %d\n",
-			vsi->vsi_num, status);
+			vsi->vsi_num, err);
 		err = -EIO;
 		goto done;
 	}
@@ -2119,10 +2113,10 @@ static int ice_configure_phy(struct ice_vsi *vsi)
 	/* Enable link and link update */
 	cfg->caps |= ICE_AQ_PHY_ENA_AUTO_LINK_UPDT | ICE_AQ_PHY_ENA_LINK;
 
-	status = ice_aq_set_phy_cfg(&pf->hw, pi, cfg, NULL);
-	if (status) {
+	err = ice_aq_set_phy_cfg(&pf->hw, pi, cfg, NULL);
+	if (err) {
 		dev_err(dev, "Failed to set phy config, VSI %d error %d\n",
-			vsi->vsi_num, status);
+			vsi->vsi_num, err);
 		err = -EIO;
 	}
 
@@ -3408,7 +3402,7 @@ ice_vlan_rx_kill_vid(struct net_device *netdev, __always_unused __be16 proto,
 static int ice_setup_pf_sw(struct ice_pf *pf)
 {
 	struct ice_vsi *vsi;
-	int status = 0;
+	int status;
 
 	if (ice_is_reset_in_progress(pf->state))
 		return -EBUSY;
@@ -3445,7 +3439,7 @@ static int ice_setup_pf_sw(struct ice_pf *pf)
 	if (status)
 		goto free_cpu_rx_map;
 
-	return status;
+	return 0;
 
 free_cpu_rx_map:
 	ice_free_cpu_rx_rmap(vsi);
@@ -5218,9 +5212,8 @@ static int ice_set_mac_address(struct net_device *netdev, void *pi)
 	struct sockaddr *addr = pi;
 	u8 old_mac[ETH_ALEN];
 	u8 flags = 0;
-	int err = 0;
-	int status;
 	u8 *mac;
+	int err;
 
 	mac = (u8 *)addr->sa_data;
 
@@ -5246,22 +5239,22 @@ static int ice_set_mac_address(struct net_device *netdev, void *pi)
 	netif_addr_unlock_bh(netdev);
 
 	/* Clean up old MAC filter. Not an error if old filter doesn't exist */
-	status = ice_fltr_remove_mac(vsi, old_mac, ICE_FWD_TO_VSI);
-	if (status && status != -ENOENT) {
+	err = ice_fltr_remove_mac(vsi, old_mac, ICE_FWD_TO_VSI);
+	if (err && err != -ENOENT) {
 		err = -EADDRNOTAVAIL;
 		goto err_update_filters;
 	}
 
 	/* Add filter for new MAC. If filter exists, return success */
-	status = ice_fltr_add_mac(vsi, mac, ICE_FWD_TO_VSI);
-	if (status == -EEXIST)
+	err = ice_fltr_add_mac(vsi, mac, ICE_FWD_TO_VSI);
+	if (err == -EEXIST)
 		/* Although this MAC filter is already present in hardware it's
 		 * possible in some cases (e.g. bonding) that dev_addr was
 		 * modified outside of the driver and needs to be restored back
 		 * to this value.
 		 */
 		netdev_dbg(netdev, "filter for MAC %pM already exists\n", mac);
-	else if (status)
+	else if (err)
 		/* error if the new filter addition failed */
 		err = -EADDRNOTAVAIL;
 
@@ -5280,10 +5273,10 @@ static int ice_set_mac_address(struct net_device *netdev, void *pi)
 
 	/* write new MAC address to the firmware */
 	flags = ICE_AQC_MAN_MAC_UPDATE_LAA_WOL;
-	status = ice_aq_manage_mac_write(hw, mac, flags, NULL);
-	if (status) {
+	err = ice_aq_manage_mac_write(hw, mac, flags, NULL);
+	if (err) {
 		netdev_err(netdev, "can't set MAC %pM. write to firmware failed error %d\n",
-			   mac, status);
+			   mac, err);
 	}
 	return 0;
 }
@@ -6361,7 +6354,6 @@ static void ice_vsi_release_all(struct ice_pf *pf)
 static int ice_vsi_rebuild_by_type(struct ice_pf *pf, enum ice_vsi_type type)
 {
 	struct device *dev = ice_pf_to_dev(pf);
-	int status;
 	int i, err;
 
 	ice_for_each_vsi(pf, i) {
@@ -6379,10 +6371,10 @@ static int ice_vsi_rebuild_by_type(struct ice_pf *pf, enum ice_vsi_type type)
 		}
 
 		/* replay filters for the VSI */
-		status = ice_replay_vsi(&pf->hw, vsi->idx);
-		if (status) {
+		err = ice_replay_vsi(&pf->hw, vsi->idx);
+		if (err) {
 			dev_err(dev, "replay VSI failed, error %d, VSI index %d, type %s\n",
-				status, vsi->idx, ice_vsi_type_str(type));
+				err, vsi->idx, ice_vsi_type_str(type));
 			return -EIO;
 		}
 
@@ -6910,8 +6902,7 @@ static int ice_vsi_update_bridge_mode(struct ice_vsi *vsi, u16 bmode)
 	struct ice_aqc_vsi_props *vsi_props;
 	struct ice_hw *hw = &vsi->back->hw;
 	struct ice_vsi_ctx *ctxt;
-	int ret = 0;
-	int status;
+	int ret;
 
 	vsi_props = &vsi->info;
 
@@ -6929,10 +6920,10 @@ static int ice_vsi_update_bridge_mode(struct ice_vsi *vsi, u16 bmode)
 		ctxt->info.sw_flags &= ~ICE_AQ_VSI_SW_FLAG_ALLOW_LB;
 	ctxt->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_SW_VALID);
 
-	status = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
-	if (status) {
+	ret = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
+	if (ret) {
 		dev_err(ice_pf_to_dev(vsi->back), "update VSI for bridge mode failed, bmode = %d err %d aq_err %s\n",
-			bmode, status, ice_aq_str(hw->adminq.sq_last_status));
+			bmode, ret, ice_aq_str(hw->adminq.sq_last_status));
 		ret = -EIO;
 		goto out;
 	}
@@ -6967,7 +6958,6 @@ ice_bridge_setlink(struct net_device *dev, struct nlmsghdr *nlh,
 	struct ice_hw *hw = &pf->hw;
 	struct ice_sw *pf_sw;
 	int rem, v, err = 0;
-	int status;
 
 	pf_sw = pf->first_sw;
 	/* find the attribute in the netlink message */
@@ -6999,10 +6989,10 @@ ice_bridge_setlink(struct net_device *dev, struct nlmsghdr *nlh,
 		/* Update the unicast switch filter rules for the corresponding
 		 * switch of the netdev
 		 */
-		status = ice_update_sw_rule_bridge_mode(hw);
-		if (status) {
+		err = ice_update_sw_rule_bridge_mode(hw);
+		if (err) {
 			netdev_err(dev, "switch rule update failed, mode = %d err %d aq_err %s\n",
-				   mode, status,
+				   mode, err,
 				   ice_aq_str(hw->adminq.sq_last_status));
 			/* revert hw->evb_veb */
 			hw->evb_veb = (pf_sw->bridge_mode == BRIDGE_MODE_VEB);
@@ -7203,7 +7193,6 @@ int ice_open_internal(struct net_device *netdev)
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
 	struct ice_port_info *pi;
-	int status;
 	int err;
 
 	if (test_bit(ICE_NEEDS_RESTART, pf->state)) {
@@ -7214,10 +7203,9 @@ int ice_open_internal(struct net_device *netdev)
 	netif_carrier_off(netdev);
 
 	pi = vsi->port_info;
-	status = ice_update_link_info(pi);
-	if (status) {
-		netdev_err(netdev, "Failed to get link info, error %d\n",
-			   status);
+	err = ice_update_link_info(pi);
+	if (err) {
+		netdev_err(netdev, "Failed to get link info, error %d\n", err);
 		return -EIO;
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 4d5cbc3d6766..f0b36b8324c4 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -798,7 +798,6 @@ int ice_read_pca9575_reg_e810t(struct ice_hw *hw, u8 offset, u8 *data)
 	struct ice_aqc_link_topo_addr link_topo;
 	__le16 addr;
 	u16 handle;
-	int status;
 	int err;
 
 	memset(&link_topo, 0, sizeof(link_topo));
@@ -814,8 +813,8 @@ int ice_read_pca9575_reg_e810t(struct ice_hw *hw, u8 offset, u8 *data)
 
 	addr = cpu_to_le16((u16)offset);
 
-	status = ice_aq_read_i2c(hw, link_topo, 0, addr, 1, data, NULL);
-	if (status)
+	err = ice_aq_read_i2c(hw, link_topo, 0, addr, 1, data, NULL);
+	if (err)
 		return -ENODEV;
 
 	return 0;
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 926b22cb40be..092b26d0de91 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -231,8 +231,7 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 	struct ice_adv_lkup_elem *list;
 	u32 flags = fltr->flags;
 	int lkups_cnt;
-	int ret = 0;
-	int status;
+	int ret;
 	int i;
 
 	if (!flags || (flags & (ICE_TC_FLWR_FIELD_ENC_DEST_IPV4 |
@@ -281,12 +280,12 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 	/* specify the cookie as filter_rule_id */
 	rule_info.fltr_rule_id = fltr->cookie;
 
-	status = ice_add_adv_rule(hw, list, lkups_cnt, &rule_info, &rule_added);
-	if (status == -EEXIST) {
+	ret = ice_add_adv_rule(hw, list, lkups_cnt, &rule_info, &rule_added);
+	if (ret == -EEXIST) {
 		NL_SET_ERR_MSG_MOD(fltr->extack, "Unable to add filter because it already exist");
 		ret = -EINVAL;
 		goto exit;
-	} else if (status) {
+	} else if (ret) {
 		NL_SET_ERR_MSG_MOD(fltr->extack, "Unable to add filter due to error");
 		ret = -EIO;
 		goto exit;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index 4ce30ff96a79..d64df81d4893 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -566,7 +566,6 @@ ice_vc_fdir_write_flow_prof(struct ice_vf *vf, enum ice_fltr_ptype flow,
 	u64 entry1_h = 0;
 	u64 entry2_h = 0;
 	u64 prof_id;
-	int status;
 	int ret;
 
 	pf = vf->pf;
@@ -603,29 +602,26 @@ ice_vc_fdir_write_flow_prof(struct ice_vf *vf, enum ice_fltr_ptype flow,
 	prof_id = ICE_FLOW_PROF_FD(vf_vsi->vsi_num, flow,
 				   tun ? ICE_FLTR_PTYPE_MAX : 0);
 
-	status = ice_flow_add_prof(hw, ICE_BLK_FD, ICE_FLOW_RX, prof_id, seg,
-				   tun + 1, &prof);
-	ret = status;
+	ret = ice_flow_add_prof(hw, ICE_BLK_FD, ICE_FLOW_RX, prof_id, seg,
+				tun + 1, &prof);
 	if (ret) {
 		dev_dbg(dev, "Could not add VSI flow 0x%x for VF %d\n",
 			flow, vf->vf_id);
 		goto err_exit;
 	}
 
-	status = ice_flow_add_entry(hw, ICE_BLK_FD, prof_id, vf_vsi->idx,
-				    vf_vsi->idx, ICE_FLOW_PRIO_NORMAL,
-				    seg, &entry1_h);
-	ret = status;
+	ret = ice_flow_add_entry(hw, ICE_BLK_FD, prof_id, vf_vsi->idx,
+				 vf_vsi->idx, ICE_FLOW_PRIO_NORMAL,
+				 seg, &entry1_h);
 	if (ret) {
 		dev_dbg(dev, "Could not add flow 0x%x VSI entry for VF %d\n",
 			flow, vf->vf_id);
 		goto err_prof;
 	}
 
-	status = ice_flow_add_entry(hw, ICE_BLK_FD, prof_id, vf_vsi->idx,
-				    ctrl_vsi->idx, ICE_FLOW_PRIO_NORMAL,
-				    seg, &entry2_h);
-	ret = status;
+	ret = ice_flow_add_entry(hw, ICE_BLK_FD, prof_id, vf_vsi->idx,
+				 ctrl_vsi->idx, ICE_FLOW_PRIO_NORMAL,
+				 seg, &entry2_h);
 	if (ret) {
 		dev_dbg(dev,
 			"Could not add flow 0x%x Ctrl VSI entry for VF %d\n",
@@ -1202,7 +1198,6 @@ static int ice_vc_fdir_write_fltr(struct ice_vf *vf,
 	struct device *dev;
 	struct ice_pf *pf;
 	struct ice_hw *hw;
-	int status;
 	int ret;
 	u8 *pkt;
 
@@ -1229,8 +1224,7 @@ static int ice_vc_fdir_write_fltr(struct ice_vf *vf,
 		return -ENOMEM;
 
 	ice_fdir_get_prgm_desc(hw, input, &desc, add);
-	status = ice_fdir_get_gen_prgm_pkt(hw, input, pkt, false, is_tun);
-	ret = status;
+	ret = ice_fdir_get_gen_prgm_pkt(hw, input, pkt, false, is_tun);
 	if (ret) {
 		dev_dbg(dev, "Gen training pkt for VF %d ptype %d failed\n",
 			vf->vf_id, input->flow_type);
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index b11b3014c46c..34ada576a9e2 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -654,8 +654,7 @@ static int ice_vsi_manage_pvid(struct ice_vsi *vsi, u16 pvid_info, bool enable)
 	struct ice_hw *hw = &vsi->back->hw;
 	struct ice_aqc_vsi_props *info;
 	struct ice_vsi_ctx *ctxt;
-	int ret = 0;
-	int status;
+	int ret;
 
 	ctxt = kzalloc(sizeof(*ctxt), GFP_KERNEL);
 	if (!ctxt)
@@ -678,10 +677,10 @@ static int ice_vsi_manage_pvid(struct ice_vsi *vsi, u16 pvid_info, bool enable)
 	info->valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_VLAN_VALID |
 					   ICE_AQ_VSI_PROP_SW_VALID);
 
-	status = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
-	if (status) {
+	ret = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
+	if (ret) {
 		dev_info(ice_hw_to_dev(hw), "update VSI for port VLAN failed, err %d aq_err %s\n",
-			 status, ice_aq_str(hw->adminq.sq_last_status));
+			 ret, ice_aq_str(hw->adminq.sq_last_status));
 		ret = -EIO;
 		goto out;
 	}
@@ -1736,7 +1735,6 @@ static int ice_init_vf_vsi_res(struct ice_vf *vf)
 	u8 broadcast[ETH_ALEN];
 	struct ice_vsi *vsi;
 	struct device *dev;
-	int status;
 	int err;
 
 	vf->first_vector_idx = ice_calc_vf_first_vector_idx(pf, vf);
@@ -1754,11 +1752,10 @@ static int ice_init_vf_vsi_res(struct ice_vf *vf)
 	}
 
 	eth_broadcast_addr(broadcast);
-	status = ice_fltr_add_mac(vsi, broadcast, ICE_FWD_TO_VSI);
-	if (status) {
+	err = ice_fltr_add_mac(vsi, broadcast, ICE_FWD_TO_VSI);
+	if (err) {
 		dev_err(dev, "Failed to add broadcast MAC filter for VF %d, error %d\n",
-			vf->vf_id, status);
-		err = status;
+			vf->vf_id, err);
 		goto release_vsi;
 	}
 
@@ -2003,7 +2000,6 @@ int ice_sriov_configure(struct pci_dev *pdev, int num_vfs)
 {
 	struct ice_pf *pf = pci_get_drvdata(pdev);
 	struct device *dev = ice_pf_to_dev(pf);
-	int status;
 	int err;
 
 	err = ice_check_sriov_allowed(pf);
@@ -2023,9 +2019,9 @@ int ice_sriov_configure(struct pci_dev *pdev, int num_vfs)
 		return -EBUSY;
 	}
 
-	status = ice_mbx_init_snapshot(&pf->hw, num_vfs);
-	if (status)
-		return status;
+	err = ice_mbx_init_snapshot(&pf->hw, num_vfs);
+	if (err)
+		return err;
 
 	err = ice_pci_sriov_ena(pf, num_vfs);
 	if (err) {
@@ -2899,7 +2895,6 @@ int ice_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool ena)
 	struct ice_vsi *vf_vsi;
 	struct device *dev;
 	struct ice_vf *vf;
-	int status;
 	int ret;
 
 	dev = ice_pf_to_dev(pf);
@@ -2947,11 +2942,10 @@ int ice_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool ena)
 			   ICE_AQ_VSI_SEC_TX_PRUNE_ENA_S));
 	}
 
-	status = ice_update_vsi(&pf->hw, vf_vsi->idx, ctx, NULL);
-	if (status) {
+	ret = ice_update_vsi(&pf->hw, vf_vsi->idx, ctx, NULL);
+	if (ret) {
 		dev_err(dev, "Failed to %sable spoofchk on VF %d VSI %d\n error %d\n",
-			ena ? "en" : "dis", vf->vf_id, vf_vsi->vsi_num,
-			status);
+			ena ? "en" : "dis", vf->vf_id, vf_vsi->vsi_num, ret);
 		ret = -EIO;
 		goto out;
 	}
@@ -3787,8 +3781,7 @@ ice_vc_add_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi,
 {
 	struct device *dev = ice_pf_to_dev(vf->pf);
 	u8 *mac_addr = vc_ether_addr->addr;
-	int ret = 0;
-	int status;
+	int ret;
 
 	/* device MAC already added */
 	if (ether_addr_equal(mac_addr, vf->dev_lan_addr.addr))
@@ -3799,17 +3792,16 @@ ice_vc_add_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi,
 		return -EPERM;
 	}
 
-	status = ice_fltr_add_mac(vsi, mac_addr, ICE_FWD_TO_VSI);
-	if (status == -EEXIST) {
+	ret = ice_fltr_add_mac(vsi, mac_addr, ICE_FWD_TO_VSI);
+	if (ret == -EEXIST) {
 		dev_dbg(dev, "MAC %pM already exists for VF %d\n", mac_addr,
 			vf->vf_id);
 		/* don't return since we might need to update
 		 * the primary MAC in ice_vfhw_mac_add() below
 		 */
-		ret = -EEXIST;
-	} else if (status) {
+	} else if (ret) {
 		dev_err(dev, "Failed to add MAC %pM for VF %d\n, error %d\n",
-			mac_addr, vf->vf_id, status);
+			mac_addr, vf->vf_id, ret);
 		return -EIO;
 	} else {
 		vf->num_mac++;
-- 
2.20.1


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

