Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1631425FB9
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Oct 2021 00:16:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6AD3E40207;
	Thu,  7 Oct 2021 22:16:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3HFqqkVz9k-d; Thu,  7 Oct 2021 22:16:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3F567400E5;
	Thu,  7 Oct 2021 22:16:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6A6671BF368
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Oct 2021 22:16:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 591B26080B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Oct 2021 22:16:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vVS6WiW5euoO for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Oct 2021 22:16:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AEACD60796
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Oct 2021 22:16:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="226331564"
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="226331564"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 15:16:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="590327190"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.133])
 by orsmga004.jf.intel.com with ESMTP; 07 Oct 2021 15:16:23 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 Oct 2021 15:01:27 -0700
Message-Id: <20211007220127.70514-8-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211007220127.70514-1-anthony.l.nguyen@intel.com>
References: <20211007220127.70514-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 7/7] ice: Propagate error codes
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

As all functions now return Linux error codes, propagate the values being
returned instead of converting them to more generic values.

Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c     |  4 +-
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 13 ++--
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 37 ++++-------
 drivers/net/ethernet/intel/ice/ice_lib.c      | 23 +++----
 drivers/net/ethernet/intel/ice/ice_main.c     | 63 ++++++-------------
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   |  1 -
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  4 +-
 7 files changed, 48 insertions(+), 97 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index b7869c510cba..5cfc36b5572b 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -791,7 +791,7 @@ ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_tx_ring *ring,
 	if (status) {
 		dev_err(ice_pf_to_dev(pf), "Failed to set LAN Tx queue context, error: %d\n",
 			status);
-		return -ENODEV;
+		return status;
 	}
 
 	/* Add Tx Queue TEID into the VSI Tx ring from the
@@ -949,7 +949,7 @@ ice_vsi_stop_tx_ring(struct ice_vsi *vsi, enum ice_disq_rst_src rst_src,
 	} else if (status) {
 		dev_dbg(ice_pf_to_dev(vsi->back), "Failed to disable LAN Tx queues, error: %d\n",
 			status);
-		return -ENODEV;
+		return status;
 	}
 
 	return 0;
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 3b50d1f6d18d..d48ff08c3e92 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -270,7 +270,6 @@ static int ice_devlink_info_get(struct devlink *devlink,
 		dev_dbg(dev, "Failed to discover device capabilities, status %d aq_err %s\n",
 			err, ice_aq_str(hw->adminq.sq_last_status));
 		NL_SET_ERR_MSG_MOD(extack, "Unable to discover device capabilities");
-		err = -EIO;
 		goto out_free_ctx;
 	}
 
@@ -421,7 +420,7 @@ ice_devlink_reload_down(struct devlink *devlink, bool netns_change,
 			dev_err(dev, "Failed to trigger EMP device reset to reload firmware, err %d aq_err %s\n",
 				err, ice_aq_str(hw->adminq.sq_last_status));
 			NL_SET_ERR_MSG_MOD(extack, "Failed to trigger EMP device reset to reload firmware");
-			return -EIO;
+			return err;
 		}
 
 		break;
@@ -797,7 +796,7 @@ static int ice_devlink_nvm_snapshot(struct devlink *devlink,
 			status, hw->adminq.sq_last_status);
 		NL_SET_ERR_MSG_MOD(extack, "Failed to acquire NVM semaphore");
 		vfree(nvm_data);
-		return -EIO;
+		return status;
 	}
 
 	status = ice_read_flat_nvm(hw, 0, &nvm_size, nvm_data, false);
@@ -807,7 +806,7 @@ static int ice_devlink_nvm_snapshot(struct devlink *devlink,
 		NL_SET_ERR_MSG_MOD(extack, "Failed to read NVM contents");
 		ice_release_nvm(hw);
 		vfree(nvm_data);
-		return -EIO;
+		return status;
 	}
 
 	ice_release_nvm(hw);
@@ -855,7 +854,7 @@ ice_devlink_sram_snapshot(struct devlink *devlink,
 			status, hw->adminq.sq_last_status);
 		NL_SET_ERR_MSG_MOD(extack, "Failed to acquire NVM semaphore");
 		vfree(sram_data);
-		return -EIO;
+		return status;
 	}
 
 	/* Read from the Shadow RAM, rather than directly from NVM */
@@ -867,7 +866,7 @@ ice_devlink_sram_snapshot(struct devlink *devlink,
 				   "Failed to read Shadow RAM contents");
 		ice_release_nvm(hw);
 		vfree(sram_data);
-		return -EIO;
+		return status;
 	}
 
 	ice_release_nvm(hw);
@@ -913,7 +912,7 @@ ice_devlink_devcaps_snapshot(struct devlink *devlink,
 			status, hw->adminq.sq_last_status);
 		NL_SET_ERR_MSG_MOD(extack, "Failed to read device capabilities");
 		vfree(devcaps);
-		return -EIO;
+		return status;
 	}
 
 	*data = (u8 *)devcaps;
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index e54775aab31c..f6c4c476b62d 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -298,7 +298,6 @@ ice_get_eeprom(struct net_device *netdev, struct ethtool_eeprom *eeprom,
 	if (ret) {
 		dev_err(dev, "ice_acquire_nvm failed, err %d aq_err %s\n",
 			ret, ice_aq_str(hw->adminq.sq_last_status));
-		ret = -EIO;
 		goto out;
 	}
 
@@ -307,7 +306,6 @@ ice_get_eeprom(struct net_device *netdev, struct ethtool_eeprom *eeprom,
 	if (ret) {
 		dev_err(dev, "ice_read_flat_nvm failed, err %d aq_err %s\n",
 			ret, ice_aq_str(hw->adminq.sq_last_status));
-		ret = -EIO;
 		goto release;
 	}
 
@@ -1080,10 +1078,8 @@ ice_get_fecparam(struct net_device *netdev, struct ethtool_fecparam *fecparam)
 
 	err = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_MEDIA,
 				  caps, NULL);
-	if (err) {
-		err = -EAGAIN;
+	if (err)
 		goto done;
-	}
 
 	/* Set supported/configured FEC modes based on PHY capability */
 	if (caps->caps & ICE_AQC_PHY_EN_AUTO_FEC)
@@ -1985,10 +1981,8 @@ ice_get_link_ksettings(struct net_device *netdev,
 
 	err = ice_aq_get_phy_caps(vsi->port_info, false,
 				  ICE_AQC_REPORT_ACTIVE_CFG, caps, NULL);
-	if (err) {
-		err = -EIO;
+	if (err)
 		goto done;
-	}
 
 	/* Set the advertised flow control based on the PHY capability */
 	if ((caps->caps & ICE_AQC_PHY_EN_TX_LINK_PAUSE) &&
@@ -2022,10 +2016,8 @@ ice_get_link_ksettings(struct net_device *netdev,
 
 	err = ice_aq_get_phy_caps(vsi->port_info, false,
 				  ICE_AQC_REPORT_TOPO_CAP_MEDIA, caps, NULL);
-	if (err) {
-		err = -EIO;
+	if (err)
 		goto done;
-	}
 
 	/* Set supported FEC modes based on PHY capability */
 	ethtool_link_ksettings_add_link_mode(ks, supported, FEC_NONE);
@@ -2231,10 +2223,8 @@ ice_set_link_ksettings(struct net_device *netdev,
 	else
 		err = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_MEDIA,
 					  phy_caps, NULL);
-	if (err) {
-		err = -EIO;
+	if (err)
 		goto done;
-	}
 
 	/* save autoneg out of ksettings */
 	autoneg = copy_ks.base.autoneg;
@@ -2301,10 +2291,8 @@ ice_set_link_ksettings(struct net_device *netdev,
 	/* Call to get the current link speed */
 	pi->phy.get_link_info = true;
 	err = ice_get_link_status(pi, &linkup);
-	if (err) {
-		err = -EIO;
+	if (err)
 		goto done;
-	}
 
 	curr_link_speed = pi->phy.link_info.link_speed;
 	adv_link_speed = ice_ksettings_find_adv_link_speed(ks);
@@ -2376,7 +2364,6 @@ ice_set_link_ksettings(struct net_device *netdev,
 	err = ice_aq_set_phy_cfg(&pf->hw, pi, &config, NULL);
 	if (err) {
 		netdev_info(netdev, "Set phy config failed,\n");
-		err = -EIO;
 		goto done;
 	}
 
@@ -2544,7 +2531,7 @@ ice_set_rss_hash_opt(struct ice_vsi *vsi, struct ethtool_rxnfc *nfc)
 	if (status) {
 		dev_dbg(dev, "ice_add_rss_cfg failed, vsi num = %d, error = %d\n",
 			vsi->vsi_num, status);
-		return -EINVAL;
+		return status;
 	}
 
 	return 0;
@@ -3024,7 +3011,7 @@ ice_set_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *pause)
 				  NULL);
 	if (err) {
 		kfree(pcaps);
-		return -EIO;
+		return err;
 	}
 
 	is_an = ice_is_phy_caps_an_enabled(pcaps) ? AUTONEG_ENABLE :
@@ -3863,7 +3850,7 @@ ice_get_module_info(struct net_device *netdev,
 	status = ice_aq_sff_eeprom(hw, 0, ICE_I2C_EEPROM_DEV_ADDR, 0x00, 0x00,
 				   0, &value, 1, 0, NULL);
 	if (status)
-		return -EIO;
+		return status;
 
 	switch (value) {
 	case ICE_MODULE_TYPE_SFP:
@@ -3871,12 +3858,12 @@ ice_get_module_info(struct net_device *netdev,
 					   ICE_MODULE_SFF_8472_COMP, 0x00, 0,
 					   &sff8472_comp, 1, 0, NULL);
 		if (status)
-			return -EIO;
+			return status;
 		status = ice_aq_sff_eeprom(hw, 0, ICE_I2C_EEPROM_DEV_ADDR,
 					   ICE_MODULE_SFF_8472_SWAP, 0x00, 0,
 					   &sff8472_swap, 1, 0, NULL);
 		if (status)
-			return -EIO;
+			return status;
 
 		if (sff8472_swap & ICE_MODULE_SFF_ADDR_MODE) {
 			modinfo->type = ETH_MODULE_SFF_8079;
@@ -3896,7 +3883,7 @@ ice_get_module_info(struct net_device *netdev,
 					   ICE_MODULE_REVISION_ADDR, 0x00, 0,
 					   &sff8636_rev, 1, 0, NULL);
 		if (status)
-			return -EIO;
+			return status;
 		/* Check revision compliance */
 		if (sff8636_rev > 0x02) {
 			/* Module is SFF-8636 compliant */
@@ -3943,7 +3930,7 @@ ice_get_module_eeprom(struct net_device *netdev,
 	status = ice_aq_sff_eeprom(hw, 0, addr, offset, page, 0, value, 1, 0,
 				   NULL);
 	if (status)
-		return -EIO;
+		return status;
 
 	if (value[0] == ICE_MODULE_TYPE_SFP)
 		is_sfp = true;
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index c98c4e1050e3..afd04f7f7caa 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1670,16 +1670,14 @@ int ice_vsi_kill_vlan(struct ice_vsi *vsi, u16 vid)
 	dev = ice_pf_to_dev(pf);
 
 	err = ice_fltr_remove_vlan(vsi, vid, ICE_FWD_TO_VSI);
-	if (!err) {
+	if (!err)
 		vsi->num_vlan--;
-	} else if (err == -ENOENT) {
+	else if (err == -ENOENT)
 		dev_dbg(dev, "Failed to remove VLAN %d on VSI %i, it does not exist, error: %d\n",
 			vid, vsi->vsi_num, err);
-	} else {
+	else
 		dev_err(dev, "Error removing VLAN %d on vsi %i error: %d\n",
 			vid, vsi->vsi_num, err);
-		err = -EIO;
-	}
 
 	return err;
 }
@@ -2040,7 +2038,6 @@ int ice_vsi_manage_vlan_insertion(struct ice_vsi *vsi)
 	if (ret) {
 		dev_err(ice_pf_to_dev(vsi->back), "update VSI for VLAN insert failed, err %d aq_err %s\n",
 			ret, ice_aq_str(hw->adminq.sq_last_status));
-		ret = -EIO;
 		goto out;
 	}
 
@@ -3411,7 +3408,6 @@ int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc)
 	ret = ice_update_vsi(&pf->hw, vsi->idx, ctx, NULL);
 	if (ret) {
 		dev_info(dev, "Failed VSI Update\n");
-		ret = -EIO;
 		goto out;
 	}
 
@@ -3421,7 +3417,6 @@ int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc)
 	if (ret) {
 		dev_err(dev, "VSI %d failed TC config, error %d\n",
 			vsi->vsi_num, ret);
-		ret = -EIO;
 		goto out;
 	}
 	ice_vsi_update_q_map(vsi, ctx);
@@ -3541,7 +3536,7 @@ int ice_set_dflt_vsi(struct ice_sw *sw, struct ice_vsi *vsi)
 	if (status) {
 		dev_err(dev, "Failed to set VSI %d as the default forwarding VSI, error %d\n",
 			vsi->vsi_num, status);
-		return -EIO;
+		return status;
 	}
 
 	sw->dflt_vsi = vsi;
@@ -3680,7 +3675,7 @@ int ice_set_min_bw_limit(struct ice_vsi *vsi, u64 min_tx_rate)
 			dev_err(dev, "failed to set min Tx rate(%llu Kbps) for %s %d\n",
 				min_tx_rate, ice_vsi_type_str(vsi->type),
 				vsi->idx);
-			return -EIO;
+			return status;
 		}
 
 		dev_dbg(dev, "set min Tx rate(%llu Kbps) for %s\n",
@@ -3692,7 +3687,7 @@ int ice_set_min_bw_limit(struct ice_vsi *vsi, u64 min_tx_rate)
 		if (status) {
 			dev_err(dev, "failed to clear min Tx rate configuration for %s %d\n",
 				ice_vsi_type_str(vsi->type), vsi->idx);
-			return -EIO;
+			return status;
 		}
 
 		dev_dbg(dev, "cleared min Tx rate configuration for %s %d\n",
@@ -3741,7 +3736,7 @@ int ice_set_max_bw_limit(struct ice_vsi *vsi, u64 max_tx_rate)
 			dev_err(dev, "failed setting max Tx rate(%llu Kbps) for %s %d\n",
 				max_tx_rate, ice_vsi_type_str(vsi->type),
 				vsi->idx);
-			return -EIO;
+			return status;
 		}
 
 		dev_dbg(dev, "set max Tx rate(%llu Kbps) for %s %d\n",
@@ -3753,7 +3748,7 @@ int ice_set_max_bw_limit(struct ice_vsi *vsi, u64 max_tx_rate)
 		if (status) {
 			dev_err(dev, "failed clearing max Tx rate configuration for %s %d\n",
 				ice_vsi_type_str(vsi->type), vsi->idx);
-			return -EIO;
+			return status;
 		}
 
 		dev_dbg(dev, "cleared max Tx rate configuration for %s %d\n",
@@ -3794,7 +3789,7 @@ int ice_set_link(struct ice_vsi *vsi, bool ena)
 		dev_err(dev, "can't set link to %s, err %d aq_err %s\n",
 			(ena ? "ON" : "OFF"), status,
 			ice_aq_str(hw->adminq.sq_last_status));
-		return -EIO;
+		return status;
 	}
 
 	return 0;
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 9336e3d701ad..e4cfbcfa87c9 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -152,7 +152,7 @@ static int ice_init_mac_fltr(struct ice_pf *pf)
 	perm_addr = vsi->port_info->mac.perm_addr;
 	status = ice_fltr_add_mac_and_broadcast(vsi, perm_addr, ICE_FWD_TO_VSI);
 	if (status)
-		return -EIO;
+		return status;
 
 	return 0;
 }
@@ -240,10 +240,7 @@ static int ice_set_promisc(struct ice_vsi *vsi, u8 promisc_m)
 	else
 		status = ice_fltr_set_vsi_promisc(&vsi->back->hw, vsi->idx, promisc_m, 0);
 
-	if (status)
-		return -EIO;
-
-	return 0;
+	return status;
 }
 
 /**
@@ -264,10 +261,7 @@ static int ice_clear_promisc(struct ice_vsi *vsi, u8 promisc_m)
 	else
 		status = ice_fltr_clear_vsi_promisc(&vsi->back->hw, vsi->idx, promisc_m, 0);
 
-	if (status)
-		return -EIO;
-
-	return 0;
+	return status;
 }
 
 /**
@@ -344,7 +338,6 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 			netdev_warn(netdev, "Reached MAC filter limit, forcing promisc mode on VSI %d\n",
 				    vsi->vsi_num);
 		} else {
-			err = -EIO;
 			goto out;
 		}
 	}
@@ -1843,7 +1836,6 @@ static int ice_init_nvm_phy_type(struct ice_port_info *pi)
 
 	if (err) {
 		dev_err(ice_pf_to_dev(pf), "Get PHY capability failed.\n");
-		err = -EIO;
 		goto out;
 	}
 
@@ -1959,7 +1951,6 @@ static int ice_init_phy_user_cfg(struct ice_port_info *pi)
 					  pcaps, NULL);
 	if (err) {
 		dev_err(ice_pf_to_dev(pf), "Get PHY capability failed.\n");
-		err = -EIO;
 		goto err_out;
 	}
 
@@ -2038,7 +2029,6 @@ static int ice_configure_phy(struct ice_vsi *vsi)
 	if (err) {
 		dev_err(dev, "Failed to get PHY configuration, VSI %d error %d\n",
 			vsi->vsi_num, err);
-		err = -EIO;
 		goto done;
 	}
 
@@ -2060,7 +2050,6 @@ static int ice_configure_phy(struct ice_vsi *vsi)
 	if (err) {
 		dev_err(dev, "Failed to get PHY caps, VSI %d error %d\n",
 			vsi->vsi_num, err);
-		err = -EIO;
 		goto done;
 	}
 
@@ -2114,11 +2103,9 @@ static int ice_configure_phy(struct ice_vsi *vsi)
 	cfg->caps |= ICE_AQ_PHY_ENA_AUTO_LINK_UPDT | ICE_AQ_PHY_ENA_LINK;
 
 	err = ice_aq_set_phy_cfg(&pf->hw, pi, cfg, NULL);
-	if (err) {
+	if (err)
 		dev_err(dev, "Failed to set phy config, VSI %d error %d\n",
 			vsi->vsi_num, err);
-		err = -EIO;
-	}
 
 	kfree(cfg);
 done:
@@ -3412,10 +3399,8 @@ static int ice_setup_pf_sw(struct ice_pf *pf)
 		return -ENOMEM;
 
 	status = ice_cfg_netdev(vsi);
-	if (status) {
-		status = -ENODEV;
+	if (status)
 		goto unroll_vsi_setup;
-	}
 	/* netdev has to be configured before setting frame size */
 	ice_vsi_cfg_frame_size(vsi);
 
@@ -3432,7 +3417,6 @@ static int ice_setup_pf_sw(struct ice_pf *pf)
 	if (status) {
 		dev_err(ice_pf_to_dev(pf), "Failed to set CPU Rx map VSI %d error %d\n",
 			vsi->vsi_num, status);
-		status = -EINVAL;
 		goto unroll_napi_add;
 	}
 	status = ice_init_mac_fltr(pf);
@@ -5339,13 +5323,11 @@ ice_set_tx_maxrate(struct net_device *netdev, int queue_index, u32 maxrate)
 	else
 		status = ice_cfg_q_bw_lmt(vsi->port_info, vsi->idx, tc,
 					  q_handle, ICE_MAX_BW, maxrate * 1000);
-	if (status) {
+	if (status)
 		netdev_err(netdev, "Unable to set Tx max rate, error %d\n",
 			   status);
-		return -EIO;
-	}
 
-	return 0;
+	return status;
 }
 
 /**
@@ -6375,7 +6357,7 @@ static int ice_vsi_rebuild_by_type(struct ice_pf *pf, enum ice_vsi_type type)
 		if (err) {
 			dev_err(dev, "replay VSI failed, error %d, VSI index %d, type %s\n",
 				err, vsi->idx, ice_vsi_type_str(type));
-			return -EIO;
+			return err;
 		}
 
 		/* Re-map HW VSI number, using VSI handle that has been
@@ -6773,13 +6755,11 @@ int ice_set_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size)
 	params.lut = lut;
 
 	status = ice_aq_set_rss_lut(hw, &params);
-	if (status) {
+	if (status)
 		dev_err(ice_pf_to_dev(vsi->back), "Cannot set RSS lut, err %d aq_err %s\n",
 			status, ice_aq_str(hw->adminq.sq_last_status));
-		return -EIO;
-	}
 
-	return 0;
+	return status;
 }
 
 /**
@@ -6798,13 +6778,11 @@ int ice_set_rss_key(struct ice_vsi *vsi, u8 *seed)
 		return -EINVAL;
 
 	status = ice_aq_set_rss_key(hw, vsi->idx, (struct ice_aqc_get_set_rss_keys *)seed);
-	if (status) {
+	if (status)
 		dev_err(ice_pf_to_dev(vsi->back), "Cannot set RSS key, err %d aq_err %s\n",
 			status, ice_aq_str(hw->adminq.sq_last_status));
-		return -EIO;
-	}
 
-	return 0;
+	return status;
 }
 
 /**
@@ -6830,13 +6808,11 @@ int ice_get_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size)
 	params.lut = lut;
 
 	status = ice_aq_get_rss_lut(hw, &params);
-	if (status) {
+	if (status)
 		dev_err(ice_pf_to_dev(vsi->back), "Cannot get RSS lut, err %d aq_err %s\n",
 			status, ice_aq_str(hw->adminq.sq_last_status));
-		return -EIO;
-	}
 
-	return 0;
+	return status;
 }
 
 /**
@@ -6855,13 +6831,11 @@ int ice_get_rss_key(struct ice_vsi *vsi, u8 *seed)
 		return -EINVAL;
 
 	status = ice_aq_get_rss_key(hw, vsi->idx, (struct ice_aqc_get_set_rss_keys *)seed);
-	if (status) {
+	if (status)
 		dev_err(ice_pf_to_dev(vsi->back), "Cannot get RSS key, err %d aq_err %s\n",
 			status, ice_aq_str(hw->adminq.sq_last_status));
-		return -EIO;
-	}
 
-	return 0;
+	return status;
 }
 
 /**
@@ -6924,7 +6898,6 @@ static int ice_vsi_update_bridge_mode(struct ice_vsi *vsi, u16 bmode)
 	if (ret) {
 		dev_err(ice_pf_to_dev(vsi->back), "update VSI for bridge mode failed, bmode = %d err %d aq_err %s\n",
 			bmode, ret, ice_aq_str(hw->adminq.sq_last_status));
-		ret = -EIO;
 		goto out;
 	}
 	/* Update sw flags for book keeping */
@@ -6996,7 +6969,7 @@ ice_bridge_setlink(struct net_device *dev, struct nlmsghdr *nlh,
 				   ice_aq_str(hw->adminq.sq_last_status));
 			/* revert hw->evb_veb */
 			hw->evb_veb = (pf_sw->bridge_mode == BRIDGE_MODE_VEB);
-			return -EIO;
+			return err;
 		}
 
 		pf_sw->bridge_mode = mode;
@@ -7206,7 +7179,7 @@ int ice_open_internal(struct net_device *netdev)
 	err = ice_update_link_info(pi);
 	if (err) {
 		netdev_err(netdev, "Failed to get link info, error %d\n", err);
-		return -EIO;
+		return err;
 	}
 
 	ice_check_link_cfg_err(pf, pi->phy.link_info.link_cfg_err);
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 092b26d0de91..dc6672bd4613 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -287,7 +287,6 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 		goto exit;
 	} else if (ret) {
 		NL_SET_ERR_MSG_MOD(fltr->extack, "Unable to add filter due to error");
-		ret = -EIO;
 		goto exit;
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 34ada576a9e2..6d0ef1adb199 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -681,7 +681,6 @@ static int ice_vsi_manage_pvid(struct ice_vsi *vsi, u16 pvid_info, bool enable)
 	if (ret) {
 		dev_info(ice_hw_to_dev(hw), "update VSI for port VLAN failed, err %d aq_err %s\n",
 			 ret, ice_aq_str(hw->adminq.sq_last_status));
-		ret = -EIO;
 		goto out;
 	}
 
@@ -2946,7 +2945,6 @@ int ice_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool ena)
 	if (ret) {
 		dev_err(dev, "Failed to %sable spoofchk on VF %d VSI %d\n error %d\n",
 			ena ? "en" : "dis", vf->vf_id, vf_vsi->vsi_num, ret);
-		ret = -EIO;
 		goto out;
 	}
 
@@ -3802,7 +3800,7 @@ ice_vc_add_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi,
 	} else if (ret) {
 		dev_err(dev, "Failed to add MAC %pM for VF %d\n, error %d\n",
 			mac_addr, vf->vf_id, ret);
-		return -EIO;
+		return ret;
 	} else {
 		vf->num_mac++;
 	}
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
