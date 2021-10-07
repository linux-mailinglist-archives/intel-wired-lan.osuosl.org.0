Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 081F0425FB8
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Oct 2021 00:16:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A20AC84340;
	Thu,  7 Oct 2021 22:16:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HhzhFzEQxw74; Thu,  7 Oct 2021 22:16:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 417E884334;
	Thu,  7 Oct 2021 22:16:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9C9F11BF368
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Oct 2021 22:16:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8EBE44068C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Oct 2021 22:16:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 99ZRLYQxxGlv for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Oct 2021 22:16:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7EECF40A06
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Oct 2021 22:16:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="289878255"
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="289878255"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 15:16:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="590327168"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.133])
 by orsmga004.jf.intel.com with ESMTP; 07 Oct 2021 15:16:16 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 Oct 2021 15:01:22 -0700
Message-Id: <20211007220127.70514-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211007220127.70514-1-anthony.l.nguyen@intel.com>
References: <20211007220127.70514-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 2/7] ice: Remove string printing
 for ice_status
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

Remove the ice_stat_str() function which prints the string
representation of the ice_status error code. With upcoming changes
moving away from ice_status, there will be no need for this function.

Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |   1 -
 drivers/net/ethernet/intel/ice/ice_base.c     |   8 +-
 drivers/net/ethernet/intel/ice/ice_devlink.c  |  24 +--
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  28 +--
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |   8 +-
 .../net/ethernet/intel/ice/ice_fw_update.c    |  24 +--
 drivers/net/ethernet/intel/ice/ice_lib.c      |  96 +++++------
 drivers/net/ethernet/intel/ice/ice_main.c     | 162 +++++-------------
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  48 +++---
 9 files changed, 163 insertions(+), 236 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index e75be7b55a22..5da21546aed7 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -749,7 +749,6 @@ void ice_print_link_msg(struct ice_vsi *vsi, bool isup);
 int ice_plug_aux_dev(struct ice_pf *pf);
 void ice_unplug_aux_dev(struct ice_pf *pf);
 int ice_init_rdma(struct ice_pf *pf);
-const char *ice_stat_str(enum ice_status stat_err);
 const char *ice_aq_str(enum ice_aq_err aq_err);
 bool ice_is_wol_supported(struct ice_hw *hw);
 int
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index b185306ef77e..fdb5e9c47b48 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -789,8 +789,8 @@ ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_tx_ring *ring,
 	status = ice_ena_vsi_txq(vsi->port_info, vsi->idx, tc, ring->q_handle,
 				 1, qg_buf, buf_len, NULL);
 	if (status) {
-		dev_err(ice_pf_to_dev(pf), "Failed to set LAN Tx queue context, error: %s\n",
-			ice_stat_str(status));
+		dev_err(ice_pf_to_dev(pf), "Failed to set LAN Tx queue context, error: %d\n",
+			status);
 		return -ENODEV;
 	}
 
@@ -947,8 +947,8 @@ ice_vsi_stop_tx_ring(struct ice_vsi *vsi, enum ice_disq_rst_src rst_src,
 	} else if (status == ICE_ERR_DOES_NOT_EXIST) {
 		dev_dbg(ice_pf_to_dev(vsi->back), "LAN Tx queues do not exist, nothing to disable\n");
 	} else if (status) {
-		dev_dbg(ice_pf_to_dev(vsi->back), "Failed to disable LAN Tx queues, error: %s\n",
-			ice_stat_str(status));
+		dev_dbg(ice_pf_to_dev(vsi->back), "Failed to disable LAN Tx queues, error: %d\n",
+			status);
 		return -ENODEV;
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 8f20233338cb..6ac4c69a1bf5 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -44,8 +44,8 @@ static void ice_info_pba(struct ice_pf *pf, struct ice_info_ctx *ctx)
 	status = ice_read_pba_string(hw, (u8 *)ctx->buf, sizeof(ctx->buf));
 	if (status)
 		/* We failed to locate the PBA, so just skip this entry */
-		dev_dbg(ice_pf_to_dev(pf), "Failed to read Product Board Assembly string, status %s\n",
-			ice_stat_str(status));
+		dev_dbg(ice_pf_to_dev(pf), "Failed to read Product Board Assembly string, status %d\n",
+			status);
 }
 
 static void ice_info_fw_mgmt(struct ice_pf *pf, struct ice_info_ctx *ctx)
@@ -268,8 +268,8 @@ static int ice_devlink_info_get(struct devlink *devlink,
 	/* discover capabilities first */
 	status = ice_discover_dev_caps(hw, &ctx->dev_caps);
 	if (status) {
-		dev_dbg(dev, "Failed to discover device capabilities, status %s aq_err %s\n",
-			ice_stat_str(status), ice_aq_str(hw->adminq.sq_last_status));
+		dev_dbg(dev, "Failed to discover device capabilities, status %d aq_err %s\n",
+			status, ice_aq_str(hw->adminq.sq_last_status));
 		NL_SET_ERR_MSG_MOD(extack, "Unable to discover device capabilities");
 		err = -EIO;
 		goto out_free_ctx;
@@ -278,8 +278,8 @@ static int ice_devlink_info_get(struct devlink *devlink,
 	if (ctx->dev_caps.common_cap.nvm_update_pending_orom) {
 		status = ice_get_inactive_orom_ver(hw, &ctx->pending_orom);
 		if (status) {
-			dev_dbg(dev, "Unable to read inactive Option ROM version data, status %s aq_err %s\n",
-				ice_stat_str(status), ice_aq_str(hw->adminq.sq_last_status));
+			dev_dbg(dev, "Unable to read inactive Option ROM version data, status %d aq_err %s\n",
+				status, ice_aq_str(hw->adminq.sq_last_status));
 
 			/* disable display of pending Option ROM */
 			ctx->dev_caps.common_cap.nvm_update_pending_orom = false;
@@ -289,8 +289,8 @@ static int ice_devlink_info_get(struct devlink *devlink,
 	if (ctx->dev_caps.common_cap.nvm_update_pending_nvm) {
 		status = ice_get_inactive_nvm_ver(hw, &ctx->pending_nvm);
 		if (status) {
-			dev_dbg(dev, "Unable to read inactive NVM version data, status %s aq_err %s\n",
-				ice_stat_str(status), ice_aq_str(hw->adminq.sq_last_status));
+			dev_dbg(dev, "Unable to read inactive NVM version data, status %d aq_err %s\n",
+				status, ice_aq_str(hw->adminq.sq_last_status));
 
 			/* disable display of pending Option ROM */
 			ctx->dev_caps.common_cap.nvm_update_pending_nvm = false;
@@ -300,8 +300,8 @@ static int ice_devlink_info_get(struct devlink *devlink,
 	if (ctx->dev_caps.common_cap.nvm_update_pending_netlist) {
 		status = ice_get_inactive_netlist_ver(hw, &ctx->pending_netlist);
 		if (status) {
-			dev_dbg(dev, "Unable to read inactive Netlist version data, status %s aq_err %s\n",
-				ice_stat_str(status), ice_aq_str(hw->adminq.sq_last_status));
+			dev_dbg(dev, "Unable to read inactive Netlist version data, status %d aq_err %s\n",
+				status, ice_aq_str(hw->adminq.sq_last_status));
 
 			/* disable display of pending Option ROM */
 			ctx->dev_caps.common_cap.nvm_update_pending_netlist = false;
@@ -420,8 +420,8 @@ ice_devlink_reload_down(struct devlink *devlink, bool netns_change,
 
 		status = ice_aq_nvm_update_empr(hw);
 		if (status) {
-			dev_err(dev, "Failed to trigger EMP device reset to reload firmware, err %s aq_err %s\n",
-				ice_stat_str(status),
+			dev_err(dev, "Failed to trigger EMP device reset to reload firmware, err %d aq_err %s\n",
+				status,
 				ice_aq_str(hw->adminq.sq_last_status));
 			NL_SET_ERR_MSG_MOD(extack, "Failed to trigger EMP device reset to reload firmware");
 			return -EIO;
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index f4b3c5b73c7d..434b9983ca73 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -297,8 +297,8 @@ ice_get_eeprom(struct net_device *netdev, struct ethtool_eeprom *eeprom,
 
 	status = ice_acquire_nvm(hw, ICE_RES_READ);
 	if (status) {
-		dev_err(dev, "ice_acquire_nvm failed, err %s aq_err %s\n",
-			ice_stat_str(status),
+		dev_err(dev, "ice_acquire_nvm failed, err %d aq_err %s\n",
+			status,
 			ice_aq_str(hw->adminq.sq_last_status));
 		ret = -EIO;
 		goto out;
@@ -307,8 +307,8 @@ ice_get_eeprom(struct net_device *netdev, struct ethtool_eeprom *eeprom,
 	status = ice_read_flat_nvm(hw, eeprom->offset, &eeprom->len, buf,
 				   false);
 	if (status) {
-		dev_err(dev, "ice_read_flat_nvm failed, err %s aq_err %s\n",
-			ice_stat_str(status),
+		dev_err(dev, "ice_read_flat_nvm failed, err %d aq_err %s\n",
+			status,
 			ice_aq_str(hw->adminq.sq_last_status));
 		ret = -EIO;
 		goto release;
@@ -358,8 +358,8 @@ static u64 ice_link_test(struct net_device *netdev)
 	netdev_info(netdev, "link test\n");
 	status = ice_get_link_status(np->vsi->port_info, &link_up);
 	if (status) {
-		netdev_err(netdev, "link query error, status = %s\n",
-			   ice_stat_str(status));
+		netdev_err(netdev, "link query error, status = %d\n",
+			   status);
 		return 1;
 	}
 
@@ -2548,8 +2548,8 @@ ice_set_rss_hash_opt(struct ice_vsi *vsi, struct ethtool_rxnfc *nfc)
 
 	status = ice_add_rss_cfg(&pf->hw, vsi->idx, hashed_flds, hdrs);
 	if (status) {
-		dev_dbg(dev, "ice_add_rss_cfg failed, vsi num = %d, error = %s\n",
-			vsi->vsi_num, ice_stat_str(status));
+		dev_dbg(dev, "ice_add_rss_cfg failed, vsi num = %d, error = %d\n",
+			vsi->vsi_num, status);
 		return -EINVAL;
 	}
 
@@ -3070,18 +3070,18 @@ ice_set_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *pause)
 	status = ice_set_fc(pi, &aq_failures, link_up);
 
 	if (aq_failures & ICE_SET_FC_AQ_FAIL_GET) {
-		netdev_info(netdev, "Set fc failed on the get_phy_capabilities call with err %s aq_err %s\n",
-			    ice_stat_str(status),
+		netdev_info(netdev, "Set fc failed on the get_phy_capabilities call with err %d aq_err %s\n",
+			    status,
 			    ice_aq_str(hw->adminq.sq_last_status));
 		err = -EAGAIN;
 	} else if (aq_failures & ICE_SET_FC_AQ_FAIL_SET) {
-		netdev_info(netdev, "Set fc failed on the set_phy_config call with err %s aq_err %s\n",
-			    ice_stat_str(status),
+		netdev_info(netdev, "Set fc failed on the set_phy_config call with err %d aq_err %s\n",
+			    status,
 			    ice_aq_str(hw->adminq.sq_last_status));
 		err = -EAGAIN;
 	} else if (aq_failures & ICE_SET_FC_AQ_FAIL_UPDATE) {
-		netdev_info(netdev, "Set fc failed on the get_link_info call with err %s aq_err %s\n",
-			    ice_stat_str(status),
+		netdev_info(netdev, "Set fc failed on the get_link_info call with err %d aq_err %s\n",
+			    status,
 			    ice_aq_str(hw->adminq.sq_last_status));
 		err = -EAGAIN;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index 19a2556f9370..54ac1360e7d3 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -2218,8 +2218,8 @@ int ice_udp_tunnel_set_port(struct net_device *netdev, unsigned int table,
 
 	status = ice_create_tunnel(&pf->hw, index, tnl_type, ntohs(ti->port));
 	if (status) {
-		netdev_err(netdev, "Error adding UDP tunnel - %s\n",
-			   ice_stat_str(status));
+		netdev_err(netdev, "Error adding UDP tunnel - %d\n",
+			   status);
 		return -EIO;
 	}
 
@@ -2241,8 +2241,8 @@ int ice_udp_tunnel_unset_port(struct net_device *netdev, unsigned int table,
 	status = ice_destroy_tunnel(&pf->hw, ti->hw_priv, tnl_type,
 				    ntohs(ti->port));
 	if (status) {
-		netdev_err(netdev, "Error removing UDP tunnel - %s\n",
-			   ice_stat_str(status));
+		netdev_err(netdev, "Error removing UDP tunnel - %d\n",
+			   status);
 		return -EIO;
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
index 2128e3d358bc..512bfada1f23 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
@@ -60,8 +60,8 @@ ice_send_package_data(struct pldmfw *context, const u8 *data, u16 length)
 	kfree(package_data);
 
 	if (status) {
-		dev_err(dev, "Failed to send record package data to firmware, err %s aq_err %s\n",
-			ice_stat_str(status),
+		dev_err(dev, "Failed to send record package data to firmware, err %d aq_err %s\n",
+			status,
 			ice_aq_str(hw->adminq.sq_last_status));
 		NL_SET_ERR_MSG_MOD(extack, "Failed to record package data to firmware");
 		return -EIO;
@@ -246,8 +246,8 @@ ice_send_component_table(struct pldmfw *context, struct pldmfw_component *compon
 	kfree(comp_tbl);
 
 	if (status) {
-		dev_err(dev, "Failed to transfer component table to firmware, err %s aq_err %s\n",
-			ice_stat_str(status),
+		dev_err(dev, "Failed to transfer component table to firmware, err %d aq_err %s\n",
+			status,
 			ice_aq_str(hw->adminq.sq_last_status));
 		NL_SET_ERR_MSG_MOD(extack, "Failed to transfer component table to firmware");
 		return -EIO;
@@ -296,8 +296,8 @@ ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
 	status = ice_aq_update_nvm(hw, module, offset, block_size, block,
 				   last_cmd, 0, NULL);
 	if (status) {
-		dev_err(dev, "Failed to flash module 0x%02x with block of size %u at offset %u, err %s aq_err %s\n",
-			module, block_size, offset, ice_stat_str(status),
+		dev_err(dev, "Failed to flash module 0x%02x with block of size %u at offset %u, err %d aq_err %s\n",
+			module, block_size, offset, status,
 			ice_aq_str(hw->adminq.sq_last_status));
 		NL_SET_ERR_MSG_MOD(extack, "Failed to program flash module");
 		return -EIO;
@@ -477,8 +477,8 @@ ice_erase_nvm_module(struct ice_pf *pf, u16 module, const char *component,
 
 	status = ice_aq_erase_nvm(hw, module, NULL);
 	if (status) {
-		dev_err(dev, "Failed to erase %s (module 0x%02x), err %s aq_err %s\n",
-			component, module, ice_stat_str(status),
+		dev_err(dev, "Failed to erase %s (module 0x%02x), err %d aq_err %s\n",
+			component, module, status,
 			ice_aq_str(hw->adminq.sq_last_status));
 		NL_SET_ERR_MSG_MOD(extack, "Failed to erase flash module");
 		err = -EIO;
@@ -553,8 +553,8 @@ ice_switch_flash_banks(struct ice_pf *pf, u8 activate_flags,
 
 	status = ice_nvm_write_activate(hw, activate_flags);
 	if (status) {
-		dev_err(dev, "Failed to switch active flash banks, err %s aq_err %s\n",
-			ice_stat_str(status),
+		dev_err(dev, "Failed to switch active flash banks, err %d aq_err %s\n",
+			status,
 			ice_aq_str(hw->adminq.sq_last_status));
 		NL_SET_ERR_MSG_MOD(extack, "Failed to switch active flash banks");
 		return -EIO;
@@ -889,8 +889,8 @@ int ice_flash_pldm_image(struct devlink *devlink,
 
 	status = ice_acquire_nvm(hw, ICE_RES_WRITE);
 	if (status) {
-		dev_err(dev, "Failed to acquire device flash lock, err %s aq_err %s\n",
-			ice_stat_str(status),
+		dev_err(dev, "Failed to acquire device flash lock, err %d aq_err %s\n",
+			status,
 			ice_aq_str(hw->adminq.sq_last_status));
 		NL_SET_ERR_MSG_MOD(extack, "Failed to acquire device flash lock");
 		return -EIO;
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index a8c20980d832..5ddb31580508 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -292,8 +292,8 @@ static void ice_vsi_delete(struct ice_vsi *vsi)
 
 	status = ice_free_vsi(&pf->hw, vsi->idx, ctxt, false, NULL);
 	if (status)
-		dev_err(ice_pf_to_dev(pf), "Failed to delete VSI %i in FW - error: %s\n",
-			vsi->vsi_num, ice_stat_str(status));
+		dev_err(ice_pf_to_dev(pf), "Failed to delete VSI %i in FW - error: %d\n",
+			vsi->vsi_num, status);
 
 	kfree(ctxt);
 }
@@ -691,8 +691,8 @@ static void ice_vsi_clean_rss_flow_fld(struct ice_vsi *vsi)
 
 	status = ice_rem_vsi_rss_cfg(&pf->hw, vsi->idx);
 	if (status)
-		dev_dbg(ice_pf_to_dev(pf), "ice_rem_vsi_rss_cfg failed for vsi = %d, error = %s\n",
-			vsi->vsi_num, ice_stat_str(status));
+		dev_dbg(ice_pf_to_dev(pf), "ice_rem_vsi_rss_cfg failed for vsi = %d, error = %d\n",
+			vsi->vsi_num, status);
 }
 
 /**
@@ -1472,8 +1472,8 @@ static void ice_vsi_set_vf_rss_flow_fld(struct ice_vsi *vsi)
 
 	status = ice_add_avf_rss_cfg(&pf->hw, vsi->idx, ICE_DEFAULT_RSS_HENA);
 	if (status)
-		dev_dbg(dev, "ice_add_avf_rss_cfg failed for vsi = %d, error = %s\n",
-			vsi->vsi_num, ice_stat_str(status));
+		dev_dbg(dev, "ice_add_avf_rss_cfg failed for vsi = %d, error = %d\n",
+			vsi->vsi_num, status);
 }
 
 /**
@@ -1505,57 +1505,57 @@ static void ice_vsi_set_rss_flow_fld(struct ice_vsi *vsi)
 	status = ice_add_rss_cfg(hw, vsi_handle, ICE_FLOW_HASH_IPV4,
 				 ICE_FLOW_SEG_HDR_IPV4);
 	if (status)
-		dev_dbg(dev, "ice_add_rss_cfg failed for ipv4 flow, vsi = %d, error = %s\n",
-			vsi_num, ice_stat_str(status));
+		dev_dbg(dev, "ice_add_rss_cfg failed for ipv4 flow, vsi = %d, error = %d\n",
+			vsi_num, status);
 
 	/* configure RSS for IPv6 with input set IPv6 src/dst */
 	status = ice_add_rss_cfg(hw, vsi_handle, ICE_FLOW_HASH_IPV6,
 				 ICE_FLOW_SEG_HDR_IPV6);
 	if (status)
-		dev_dbg(dev, "ice_add_rss_cfg failed for ipv6 flow, vsi = %d, error = %s\n",
-			vsi_num, ice_stat_str(status));
+		dev_dbg(dev, "ice_add_rss_cfg failed for ipv6 flow, vsi = %d, error = %d\n",
+			vsi_num, status);
 
 	/* configure RSS for tcp4 with input set IP src/dst, TCP src/dst */
 	status = ice_add_rss_cfg(hw, vsi_handle, ICE_HASH_TCP_IPV4,
 				 ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_IPV4);
 	if (status)
-		dev_dbg(dev, "ice_add_rss_cfg failed for tcp4 flow, vsi = %d, error = %s\n",
-			vsi_num, ice_stat_str(status));
+		dev_dbg(dev, "ice_add_rss_cfg failed for tcp4 flow, vsi = %d, error = %d\n",
+			vsi_num, status);
 
 	/* configure RSS for udp4 with input set IP src/dst, UDP src/dst */
 	status = ice_add_rss_cfg(hw, vsi_handle, ICE_HASH_UDP_IPV4,
 				 ICE_FLOW_SEG_HDR_UDP | ICE_FLOW_SEG_HDR_IPV4);
 	if (status)
-		dev_dbg(dev, "ice_add_rss_cfg failed for udp4 flow, vsi = %d, error = %s\n",
-			vsi_num, ice_stat_str(status));
+		dev_dbg(dev, "ice_add_rss_cfg failed for udp4 flow, vsi = %d, error = %d\n",
+			vsi_num, status);
 
 	/* configure RSS for sctp4 with input set IP src/dst */
 	status = ice_add_rss_cfg(hw, vsi_handle, ICE_FLOW_HASH_IPV4,
 				 ICE_FLOW_SEG_HDR_SCTP | ICE_FLOW_SEG_HDR_IPV4);
 	if (status)
-		dev_dbg(dev, "ice_add_rss_cfg failed for sctp4 flow, vsi = %d, error = %s\n",
-			vsi_num, ice_stat_str(status));
+		dev_dbg(dev, "ice_add_rss_cfg failed for sctp4 flow, vsi = %d, error = %d\n",
+			vsi_num, status);
 
 	/* configure RSS for tcp6 with input set IPv6 src/dst, TCP src/dst */
 	status = ice_add_rss_cfg(hw, vsi_handle, ICE_HASH_TCP_IPV6,
 				 ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_IPV6);
 	if (status)
-		dev_dbg(dev, "ice_add_rss_cfg failed for tcp6 flow, vsi = %d, error = %s\n",
-			vsi_num, ice_stat_str(status));
+		dev_dbg(dev, "ice_add_rss_cfg failed for tcp6 flow, vsi = %d, error = %d\n",
+			vsi_num, status);
 
 	/* configure RSS for udp6 with input set IPv6 src/dst, UDP src/dst */
 	status = ice_add_rss_cfg(hw, vsi_handle, ICE_HASH_UDP_IPV6,
 				 ICE_FLOW_SEG_HDR_UDP | ICE_FLOW_SEG_HDR_IPV6);
 	if (status)
-		dev_dbg(dev, "ice_add_rss_cfg failed for udp6 flow, vsi = %d, error = %s\n",
-			vsi_num, ice_stat_str(status));
+		dev_dbg(dev, "ice_add_rss_cfg failed for udp6 flow, vsi = %d, error = %d\n",
+			vsi_num, status);
 
 	/* configure RSS for sctp6 with input set IPv6 src/dst */
 	status = ice_add_rss_cfg(hw, vsi_handle, ICE_FLOW_HASH_IPV6,
 				 ICE_FLOW_SEG_HDR_SCTP | ICE_FLOW_SEG_HDR_IPV6);
 	if (status)
-		dev_dbg(dev, "ice_add_rss_cfg failed for sctp6 flow, vsi = %d, error = %s\n",
-			vsi_num, ice_stat_str(status));
+		dev_dbg(dev, "ice_add_rss_cfg failed for sctp6 flow, vsi = %d, error = %d\n",
+			vsi_num, status);
 }
 
 /**
@@ -1674,11 +1674,11 @@ int ice_vsi_kill_vlan(struct ice_vsi *vsi, u16 vid)
 	if (!status) {
 		vsi->num_vlan--;
 	} else if (status == ICE_ERR_DOES_NOT_EXIST) {
-		dev_dbg(dev, "Failed to remove VLAN %d on VSI %i, it does not exist, status: %s\n",
-			vid, vsi->vsi_num, ice_stat_str(status));
+		dev_dbg(dev, "Failed to remove VLAN %d on VSI %i, it does not exist, error: %d\n",
+			vid, vsi->vsi_num, status);
 	} else {
-		dev_err(dev, "Error removing VLAN %d on vsi %i error: %s\n",
-			vid, vsi->vsi_num, ice_stat_str(status));
+		dev_err(dev, "Error removing VLAN %d on vsi %i error: %d\n",
+			vid, vsi->vsi_num, status);
 		err = -EIO;
 	}
 
@@ -2040,8 +2040,8 @@ int ice_vsi_manage_vlan_insertion(struct ice_vsi *vsi)
 
 	status = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (status) {
-		dev_err(ice_pf_to_dev(vsi->back), "update VSI for VLAN insert failed, err %s aq_err %s\n",
-			ice_stat_str(status),
+		dev_err(ice_pf_to_dev(vsi->back), "update VSI for VLAN insert failed, err %d aq_err %s\n",
+			status,
 			ice_aq_str(hw->adminq.sq_last_status));
 		ret = -EIO;
 		goto out;
@@ -2093,8 +2093,8 @@ int ice_vsi_manage_vlan_stripping(struct ice_vsi *vsi, bool ena)
 
 	status = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (status) {
-		dev_err(ice_pf_to_dev(vsi->back), "update VSI for VLAN strip failed, ena = %d err %s aq_err %s\n",
-			ena, ice_stat_str(status),
+		dev_err(ice_pf_to_dev(vsi->back), "update VSI for VLAN strip failed, ena = %d err %d aq_err %s\n",
+			ena, status,
 			ice_aq_str(hw->adminq.sq_last_status));
 		ret = -EIO;
 		goto out;
@@ -2238,9 +2238,9 @@ int ice_cfg_vlan_pruning(struct ice_vsi *vsi, bool ena)
 
 	status = ice_update_vsi(&pf->hw, vsi->idx, ctxt, NULL);
 	if (status) {
-		netdev_err(vsi->netdev, "%sabling VLAN pruning on VSI handle: %d, VSI HW ID: %d failed, err = %s, aq_err = %s\n",
+		netdev_err(vsi->netdev, "%sabling VLAN pruning on VSI handle: %d, VSI HW ID: %d failed, err = %d, aq_err = %s\n",
 			   ena ? "En" : "Dis", vsi->idx, vsi->vsi_num,
-			   ice_stat_str(status),
+			   status,
 			   ice_aq_str(pf->hw.adminq.sq_last_status));
 		goto err_out;
 	}
@@ -2338,9 +2338,9 @@ void ice_cfg_sw_lldp(struct ice_vsi *vsi, bool tx, bool create)
 	}
 
 	if (status)
-		dev_dbg(dev, "Fail %s %s LLDP rule on VSI %i error: %s\n",
+		dev_dbg(dev, "Fail %s %s LLDP rule on VSI %i error: %d\n",
 			create ? "adding" : "removing", tx ? "TX" : "RX",
-			vsi->vsi_num, ice_stat_str(status));
+			vsi->vsi_num, status);
 }
 
 /**
@@ -2614,8 +2614,8 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 	status = ice_cfg_vsi_lan(vsi->port_info, vsi->idx, vsi->tc_cfg.ena_tc,
 				 max_txqs);
 	if (status) {
-		dev_err(dev, "VSI %d failed lan queue config, error %s\n",
-			vsi->vsi_num, ice_stat_str(status));
+		dev_err(dev, "VSI %d failed lan queue config, error %d\n",
+			vsi->vsi_num, status);
 		goto unroll_clear_rings;
 	}
 
@@ -3291,8 +3291,8 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 	status = ice_cfg_vsi_lan(vsi->port_info, vsi->idx, vsi->tc_cfg.ena_tc,
 				 max_txqs);
 	if (status) {
-		dev_err(ice_pf_to_dev(pf), "VSI %d failed lan queue config, error %s\n",
-			vsi->vsi_num, ice_stat_str(status));
+		dev_err(ice_pf_to_dev(pf), "VSI %d failed lan queue config, error %d\n",
+			vsi->vsi_num, status);
 		if (init_vsi) {
 			ret = -EIO;
 			goto err_vectors;
@@ -3428,8 +3428,8 @@ int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc)
 				 max_txqs);
 
 	if (status) {
-		dev_err(dev, "VSI %d failed TC config, error %s\n",
-			vsi->vsi_num, ice_stat_str(status));
+		dev_err(dev, "VSI %d failed TC config, error %d\n",
+			vsi->vsi_num, status);
 		ret = -EIO;
 		goto out;
 	}
@@ -3581,8 +3581,8 @@ int ice_set_dflt_vsi(struct ice_sw *sw, struct ice_vsi *vsi)
 
 	status = ice_cfg_dflt_vsi(&vsi->back->hw, vsi->idx, true, ICE_FLTR_RX);
 	if (status) {
-		dev_err(dev, "Failed to set VSI %d as the default forwarding VSI, error %s\n",
-			vsi->vsi_num, ice_stat_str(status));
+		dev_err(dev, "Failed to set VSI %d as the default forwarding VSI, error %d\n",
+			vsi->vsi_num, status);
 		return -EIO;
 	}
 
@@ -3620,8 +3620,8 @@ int ice_clear_dflt_vsi(struct ice_sw *sw)
 	status = ice_cfg_dflt_vsi(&dflt_vsi->back->hw, dflt_vsi->idx, false,
 				  ICE_FLTR_RX);
 	if (status) {
-		dev_err(dev, "Failed to clear the default forwarding VSI %d, error %s\n",
-			dflt_vsi->vsi_num, ice_stat_str(status));
+		dev_err(dev, "Failed to clear the default forwarding VSI %d, error %d\n",
+			dflt_vsi->vsi_num, status);
 		return -EIO;
 	}
 
@@ -3829,12 +3829,12 @@ int ice_set_link(struct ice_vsi *vsi, bool ena)
 	 */
 	if (status == ICE_ERR_AQ_ERROR) {
 		if (hw->adminq.sq_last_status == ICE_AQ_RC_EMODE)
-			dev_warn(dev, "can't set link to %s, err %s aq_err %s. not fatal, continuing\n",
-				 (ena ? "ON" : "OFF"), ice_stat_str(status),
+			dev_warn(dev, "can't set link to %s, err %d aq_err %s. not fatal, continuing\n",
+				 (ena ? "ON" : "OFF"), status,
 				 ice_aq_str(hw->adminq.sq_last_status));
 	} else if (status) {
-		dev_err(dev, "can't set link to %s, err %s aq_err %s\n",
-			(ena ? "ON" : "OFF"), ice_stat_str(status),
+		dev_err(dev, "can't set link to %s, err %d aq_err %s\n",
+			(ena ? "ON" : "OFF"), status,
 			ice_aq_str(hw->adminq.sq_last_status));
 		return -EIO;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index dc6557be001d..e6ba5b2a23ea 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1005,8 +1005,8 @@ ice_link_event(struct ice_pf *pf, struct ice_port_info *pi, bool link_up,
 	 */
 	status = ice_update_link_info(pi);
 	if (status)
-		dev_dbg(dev, "Failed to update link status on port %d, err %s aq_err %s\n",
-			pi->lport, ice_stat_str(status),
+		dev_dbg(dev, "Failed to update link status on port %d, err %d aq_err %s\n",
+			pi->lport, status,
 			ice_aq_str(pi->hw->adminq.sq_last_status));
 
 	ice_check_link_cfg_err(pf, pi->phy.link_info.link_cfg_err);
@@ -1383,8 +1383,8 @@ static int __ice_clean_ctrlq(struct ice_pf *pf, enum ice_ctl_q q_type)
 		if (ret == ICE_ERR_AQ_NO_WORK)
 			break;
 		if (ret) {
-			dev_err(dev, "%s Receive Queue event error %s\n", qtype,
-				ice_stat_str(ret));
+			dev_err(dev, "%s Receive Queue event error %d\n", qtype,
+				ret);
 			break;
 		}
 
@@ -2042,8 +2042,8 @@ static int ice_configure_phy(struct ice_vsi *vsi)
 	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_ACTIVE_CFG, pcaps,
 				     NULL);
 	if (status) {
-		dev_err(dev, "Failed to get PHY configuration, VSI %d error %s\n",
-			vsi->vsi_num, ice_stat_str(status));
+		dev_err(dev, "Failed to get PHY configuration, VSI %d error %d\n",
+			vsi->vsi_num, status);
 		err = -EIO;
 		goto done;
 	}
@@ -2064,8 +2064,8 @@ static int ice_configure_phy(struct ice_vsi *vsi)
 		status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_MEDIA,
 					     pcaps, NULL);
 	if (status) {
-		dev_err(dev, "Failed to get PHY caps, VSI %d error %s\n",
-			vsi->vsi_num, ice_stat_str(status));
+		dev_err(dev, "Failed to get PHY caps, VSI %d error %d\n",
+			vsi->vsi_num, status);
 		err = -EIO;
 		goto done;
 	}
@@ -2121,8 +2121,8 @@ static int ice_configure_phy(struct ice_vsi *vsi)
 
 	status = ice_aq_set_phy_cfg(&pf->hw, pi, cfg, NULL);
 	if (status) {
-		dev_err(dev, "Failed to set phy config, VSI %d error %s\n",
-			vsi->vsi_num, ice_stat_str(status));
+		dev_err(dev, "Failed to set phy config, VSI %d error %d\n",
+			vsi->vsi_num, status);
 		err = -EIO;
 	}
 
@@ -2574,8 +2574,8 @@ int ice_prepare_xdp_rings(struct ice_vsi *vsi, struct bpf_prog *prog)
 	status = ice_cfg_vsi_lan(vsi->port_info, vsi->idx, vsi->tc_cfg.ena_tc,
 				 max_txqs);
 	if (status) {
-		dev_err(dev, "Failed VSI LAN queue config for XDP, error: %s\n",
-			ice_stat_str(status));
+		dev_err(dev, "Failed VSI LAN queue config for XDP, error: %d\n",
+			status);
 		goto clear_xdp_rings;
 	}
 	ice_vsi_assign_bpf_prog(vsi, prog);
@@ -3928,8 +3928,8 @@ static void ice_set_safe_mode_vlan_cfg(struct ice_pf *pf)
 
 	status = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (status) {
-		dev_err(ice_pf_to_dev(vsi->back), "Failed to update VSI for safe mode VLANs, err %s aq_err %s\n",
-			ice_stat_str(status),
+		dev_err(ice_pf_to_dev(vsi->back), "Failed to update VSI for safe mode VLANs, err %d aq_err %s\n",
+			status,
 			ice_aq_str(hw->adminq.sq_last_status));
 	} else {
 		vsi->info.sec_flags = ctxt->info.sec_flags;
@@ -4679,8 +4679,8 @@ static void ice_setup_mc_magic_wake(struct ice_pf *pf)
 
 	status = ice_aq_manage_mac_write(hw, mac_addr, flags, NULL);
 	if (status)
-		dev_err(dev, "Failed to enable Multicast Magic Packet wake, err %s aq_err %s\n",
-			ice_stat_str(status),
+		dev_err(dev, "Failed to enable Multicast Magic Packet wake, err %d aq_err %s\n",
+			status,
 			ice_aq_str(hw->adminq.sq_last_status));
 }
 
@@ -5284,8 +5284,8 @@ static int ice_set_mac_address(struct net_device *netdev, void *pi)
 	flags = ICE_AQC_MAN_MAC_UPDATE_LAA_WOL;
 	status = ice_aq_manage_mac_write(hw, mac, flags, NULL);
 	if (status) {
-		netdev_err(netdev, "can't set MAC %pM. write to firmware failed error %s\n",
-			   mac, ice_stat_str(status));
+		netdev_err(netdev, "can't set MAC %pM. write to firmware failed error %d\n",
+			   mac, status);
 	}
 	return 0;
 }
@@ -5349,8 +5349,8 @@ ice_set_tx_maxrate(struct net_device *netdev, int queue_index, u32 maxrate)
 		status = ice_cfg_q_bw_lmt(vsi->port_info, vsi->idx, tc,
 					  q_handle, ICE_MAX_BW, maxrate * 1000);
 	if (status) {
-		netdev_err(netdev, "Unable to set Tx max rate, error %s\n",
-			   ice_stat_str(status));
+		netdev_err(netdev, "Unable to set Tx max rate, error %d\n",
+			   status);
 		return -EIO;
 	}
 
@@ -6383,8 +6383,8 @@ static int ice_vsi_rebuild_by_type(struct ice_pf *pf, enum ice_vsi_type type)
 		/* replay filters for the VSI */
 		status = ice_replay_vsi(&pf->hw, vsi->idx);
 		if (status) {
-			dev_err(dev, "replay VSI failed, status %s, VSI index %d, type %s\n",
-				ice_stat_str(status), vsi->idx,
+			dev_err(dev, "replay VSI failed, error %d, VSI index %d, type %s\n",
+				status, vsi->idx,
 				ice_vsi_type_str(type));
 			return -EIO;
 		}
@@ -6459,8 +6459,8 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 
 	ret = ice_init_all_ctrlq(hw);
 	if (ret) {
-		dev_err(dev, "control queues init failed %s\n",
-			ice_stat_str(ret));
+		dev_err(dev, "control queues init failed %d\n",
+			ret);
 		goto err_init_ctrlq;
 	}
 
@@ -6476,8 +6476,8 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 
 	ret = ice_clear_pf_cfg(hw);
 	if (ret) {
-		dev_err(dev, "clear PF configuration failed %s\n",
-			ice_stat_str(ret));
+		dev_err(dev, "clear PF configuration failed %d\n",
+			ret);
 		goto err_init_ctrlq;
 	}
 
@@ -6491,19 +6491,19 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 
 	ret = ice_init_nvm(hw);
 	if (ret) {
-		dev_err(dev, "ice_init_nvm failed %s\n", ice_stat_str(ret));
+		dev_err(dev, "ice_init_nvm failed %d\n", ret);
 		goto err_init_ctrlq;
 	}
 
 	ret = ice_get_caps(hw);
 	if (ret) {
-		dev_err(dev, "ice_get_caps failed %s\n", ice_stat_str(ret));
+		dev_err(dev, "ice_get_caps failed %d\n", ret);
 		goto err_init_ctrlq;
 	}
 
 	ret = ice_aq_set_mac_cfg(hw, ICE_AQ_SET_MAC_FRAME_SIZE_MAX, NULL);
 	if (ret) {
-		dev_err(dev, "set_mac_cfg failed %s\n", ice_stat_str(ret));
+		dev_err(dev, "set_mac_cfg failed %d\n", ret);
 		goto err_init_ctrlq;
 	}
 
@@ -6582,8 +6582,8 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 	/* tell the firmware we are up */
 	ret = ice_send_version(pf);
 	if (ret) {
-		dev_err(dev, "Rebuild failed due to error sending driver version: %s\n",
-			ice_stat_str(ret));
+		dev_err(dev, "Rebuild failed due to error sending driver version: %d\n",
+			ret);
 		goto err_vsi_rebuild;
 	}
 
@@ -6763,78 +6763,6 @@ const char *ice_aq_str(enum ice_aq_err aq_err)
 	return "ICE_AQ_RC_UNKNOWN";
 }
 
-/**
- * ice_stat_str - convert status err code to a string
- * @stat_err: the status error code to convert
- */
-const char *ice_stat_str(enum ice_status stat_err)
-{
-	switch (stat_err) {
-	case ICE_SUCCESS:
-		return "OK";
-	case ICE_ERR_PARAM:
-		return "ICE_ERR_PARAM";
-	case ICE_ERR_NOT_IMPL:
-		return "ICE_ERR_NOT_IMPL";
-	case ICE_ERR_NOT_READY:
-		return "ICE_ERR_NOT_READY";
-	case ICE_ERR_NOT_SUPPORTED:
-		return "ICE_ERR_NOT_SUPPORTED";
-	case ICE_ERR_BAD_PTR:
-		return "ICE_ERR_BAD_PTR";
-	case ICE_ERR_INVAL_SIZE:
-		return "ICE_ERR_INVAL_SIZE";
-	case ICE_ERR_DEVICE_NOT_SUPPORTED:
-		return "ICE_ERR_DEVICE_NOT_SUPPORTED";
-	case ICE_ERR_RESET_FAILED:
-		return "ICE_ERR_RESET_FAILED";
-	case ICE_ERR_FW_API_VER:
-		return "ICE_ERR_FW_API_VER";
-	case ICE_ERR_NO_MEMORY:
-		return "ICE_ERR_NO_MEMORY";
-	case ICE_ERR_CFG:
-		return "ICE_ERR_CFG";
-	case ICE_ERR_OUT_OF_RANGE:
-		return "ICE_ERR_OUT_OF_RANGE";
-	case ICE_ERR_ALREADY_EXISTS:
-		return "ICE_ERR_ALREADY_EXISTS";
-	case ICE_ERR_NVM:
-		return "ICE_ERR_NVM";
-	case ICE_ERR_NVM_CHECKSUM:
-		return "ICE_ERR_NVM_CHECKSUM";
-	case ICE_ERR_BUF_TOO_SHORT:
-		return "ICE_ERR_BUF_TOO_SHORT";
-	case ICE_ERR_NVM_BLANK_MODE:
-		return "ICE_ERR_NVM_BLANK_MODE";
-	case ICE_ERR_IN_USE:
-		return "ICE_ERR_IN_USE";
-	case ICE_ERR_MAX_LIMIT:
-		return "ICE_ERR_MAX_LIMIT";
-	case ICE_ERR_RESET_ONGOING:
-		return "ICE_ERR_RESET_ONGOING";
-	case ICE_ERR_HW_TABLE:
-		return "ICE_ERR_HW_TABLE";
-	case ICE_ERR_DOES_NOT_EXIST:
-		return "ICE_ERR_DOES_NOT_EXIST";
-	case ICE_ERR_FW_DDP_MISMATCH:
-		return "ICE_ERR_FW_DDP_MISMATCH";
-	case ICE_ERR_AQ_ERROR:
-		return "ICE_ERR_AQ_ERROR";
-	case ICE_ERR_AQ_TIMEOUT:
-		return "ICE_ERR_AQ_TIMEOUT";
-	case ICE_ERR_AQ_FULL:
-		return "ICE_ERR_AQ_FULL";
-	case ICE_ERR_AQ_NO_WORK:
-		return "ICE_ERR_AQ_NO_WORK";
-	case ICE_ERR_AQ_EMPTY:
-		return "ICE_ERR_AQ_EMPTY";
-	case ICE_ERR_AQ_FW_CRITICAL:
-		return "ICE_ERR_AQ_FW_CRITICAL";
-	}
-
-	return "ICE_ERR_UNKNOWN";
-}
-
 /**
  * ice_set_rss_lut - Set RSS LUT
  * @vsi: Pointer to VSI structure
@@ -6859,8 +6787,8 @@ int ice_set_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size)
 
 	status = ice_aq_set_rss_lut(hw, &params);
 	if (status) {
-		dev_err(ice_pf_to_dev(vsi->back), "Cannot set RSS lut, err %s aq_err %s\n",
-			ice_stat_str(status),
+		dev_err(ice_pf_to_dev(vsi->back), "Cannot set RSS lut, err %d aq_err %s\n",
+			status,
 			ice_aq_str(hw->adminq.sq_last_status));
 		return -EIO;
 	}
@@ -6885,8 +6813,8 @@ int ice_set_rss_key(struct ice_vsi *vsi, u8 *seed)
 
 	status = ice_aq_set_rss_key(hw, vsi->idx, (struct ice_aqc_get_set_rss_keys *)seed);
 	if (status) {
-		dev_err(ice_pf_to_dev(vsi->back), "Cannot set RSS key, err %s aq_err %s\n",
-			ice_stat_str(status),
+		dev_err(ice_pf_to_dev(vsi->back), "Cannot set RSS key, err %d aq_err %s\n",
+			status,
 			ice_aq_str(hw->adminq.sq_last_status));
 		return -EIO;
 	}
@@ -6918,8 +6846,8 @@ int ice_get_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size)
 
 	status = ice_aq_get_rss_lut(hw, &params);
 	if (status) {
-		dev_err(ice_pf_to_dev(vsi->back), "Cannot get RSS lut, err %s aq_err %s\n",
-			ice_stat_str(status),
+		dev_err(ice_pf_to_dev(vsi->back), "Cannot get RSS lut, err %d aq_err %s\n",
+			status,
 			ice_aq_str(hw->adminq.sq_last_status));
 		return -EIO;
 	}
@@ -6944,8 +6872,8 @@ int ice_get_rss_key(struct ice_vsi *vsi, u8 *seed)
 
 	status = ice_aq_get_rss_key(hw, vsi->idx, (struct ice_aqc_get_set_rss_keys *)seed);
 	if (status) {
-		dev_err(ice_pf_to_dev(vsi->back), "Cannot get RSS key, err %s aq_err %s\n",
-			ice_stat_str(status),
+		dev_err(ice_pf_to_dev(vsi->back), "Cannot get RSS key, err %d aq_err %s\n",
+			status,
 			ice_aq_str(hw->adminq.sq_last_status));
 		return -EIO;
 	}
@@ -7012,8 +6940,8 @@ static int ice_vsi_update_bridge_mode(struct ice_vsi *vsi, u16 bmode)
 
 	status = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (status) {
-		dev_err(ice_pf_to_dev(vsi->back), "update VSI for bridge mode failed, bmode = %d err %s aq_err %s\n",
-			bmode, ice_stat_str(status),
+		dev_err(ice_pf_to_dev(vsi->back), "update VSI for bridge mode failed, bmode = %d err %d aq_err %s\n",
+			bmode, status,
 			ice_aq_str(hw->adminq.sq_last_status));
 		ret = -EIO;
 		goto out;
@@ -7083,8 +7011,8 @@ ice_bridge_setlink(struct net_device *dev, struct nlmsghdr *nlh,
 		 */
 		status = ice_update_sw_rule_bridge_mode(hw);
 		if (status) {
-			netdev_err(dev, "switch rule update failed, mode = %d err %s aq_err %s\n",
-				   mode, ice_stat_str(status),
+			netdev_err(dev, "switch rule update failed, mode = %d err %d aq_err %s\n",
+				   mode, status,
 				   ice_aq_str(hw->adminq.sq_last_status));
 			/* revert hw->evb_veb */
 			hw->evb_veb = (pf_sw->bridge_mode == BRIDGE_MODE_VEB);
@@ -7298,8 +7226,8 @@ int ice_open_internal(struct net_device *netdev)
 	pi = vsi->port_info;
 	status = ice_update_link_info(pi);
 	if (status) {
-		netdev_err(netdev, "Failed to get link info, error %s\n",
-			   ice_stat_str(status));
+		netdev_err(netdev, "Failed to get link info, error %d\n",
+			   status);
 		return -EIO;
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 0cb8f66c9bc8..7afa6bf037c2 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -680,8 +680,8 @@ static int ice_vsi_manage_pvid(struct ice_vsi *vsi, u16 pvid_info, bool enable)
 
 	status = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (status) {
-		dev_info(ice_hw_to_dev(hw), "update VSI for port VLAN failed, err %s aq_err %s\n",
-			 ice_stat_str(status),
+		dev_info(ice_hw_to_dev(hw), "update VSI for port VLAN failed, err %d aq_err %s\n",
+			 status,
 			 ice_aq_str(hw->adminq.sq_last_status));
 		ret = -EIO;
 		goto out;
@@ -861,8 +861,8 @@ static int ice_vf_rebuild_host_mac_cfg(struct ice_vf *vf)
 	eth_broadcast_addr(broadcast);
 	status = ice_fltr_add_mac(vsi, broadcast, ICE_FWD_TO_VSI);
 	if (status) {
-		dev_err(dev, "failed to add broadcast MAC filter for VF %u, error %s\n",
-			vf->vf_id, ice_stat_str(status));
+		dev_err(dev, "failed to add broadcast MAC filter for VF %u, error %d\n",
+			vf->vf_id, status);
 		return ice_status_to_errno(status);
 	}
 
@@ -872,9 +872,9 @@ static int ice_vf_rebuild_host_mac_cfg(struct ice_vf *vf)
 		status = ice_fltr_add_mac(vsi, vf->hw_lan_addr.addr,
 					  ICE_FWD_TO_VSI);
 		if (status) {
-			dev_err(dev, "failed to add default unicast MAC filter %pM for VF %u, error %s\n",
+			dev_err(dev, "failed to add default unicast MAC filter %pM for VF %u, error %d\n",
 				&vf->hw_lan_addr.addr[0], vf->vf_id,
-				ice_stat_str(status));
+				status);
 			return ice_status_to_errno(status);
 		}
 		vf->num_mac++;
@@ -1241,8 +1241,8 @@ static int ice_vf_set_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 pro
 		status = ice_fltr_set_vsi_promisc(hw, vsi->idx, promisc_m, 0);
 
 	if (status && status != ICE_ERR_ALREADY_EXISTS) {
-		dev_err(ice_pf_to_dev(vsi->back), "enable Tx/Rx filter promiscuous mode on VF-%u failed, error: %s\n",
-			vf->vf_id, ice_stat_str(status));
+		dev_err(ice_pf_to_dev(vsi->back), "enable Tx/Rx filter promiscuous mode on VF-%u failed, error: %d\n",
+			vf->vf_id, status);
 		return ice_status_to_errno(status);
 	}
 
@@ -1263,8 +1263,8 @@ static int ice_vf_clear_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 p
 		status = ice_fltr_clear_vsi_promisc(hw, vsi->idx, promisc_m, 0);
 
 	if (status && status != ICE_ERR_DOES_NOT_EXIST) {
-		dev_err(ice_pf_to_dev(vsi->back), "disable Tx/Rx filter promiscuous mode on VF-%u failed, error: %s\n",
-			vf->vf_id, ice_stat_str(status));
+		dev_err(ice_pf_to_dev(vsi->back), "disable Tx/Rx filter promiscuous mode on VF-%u failed, error: %d\n",
+			vf->vf_id, status);
 		return ice_status_to_errno(status);
 	}
 
@@ -1757,8 +1757,8 @@ static int ice_init_vf_vsi_res(struct ice_vf *vf)
 	eth_broadcast_addr(broadcast);
 	status = ice_fltr_add_mac(vsi, broadcast, ICE_FWD_TO_VSI);
 	if (status) {
-		dev_err(dev, "Failed to add broadcast MAC filter for VF %d, status %s\n",
-			vf->vf_id, ice_stat_str(status));
+		dev_err(dev, "Failed to add broadcast MAC filter for VF %d, error %d\n",
+			vf->vf_id, status);
 		err = ice_status_to_errno(status);
 		goto release_vsi;
 	}
@@ -2194,8 +2194,8 @@ ice_vc_send_msg_to_vf(struct ice_vf *vf, u32 v_opcode,
 	aq_ret = ice_aq_send_msg_to_vf(&pf->hw, vf->vf_id, v_opcode, v_retval,
 				       msg, msglen, NULL);
 	if (aq_ret && pf->hw.mailboxq.sq_last_status != ICE_AQ_RC_ENOSYS) {
-		dev_info(dev, "Unable to send the message to VF %d ret %s aq_err %s\n",
-			 vf->vf_id, ice_stat_str(aq_ret),
+		dev_info(dev, "Unable to send the message to VF %d ret %d aq_err %s\n",
+			 vf->vf_id, aq_ret,
 			 ice_aq_str(pf->hw.mailboxq.sq_last_status));
 		return -EIO;
 	}
@@ -2702,8 +2702,8 @@ static int ice_vc_handle_rss_cfg(struct ice_vf *vf, u8 *msg, bool add)
 
 		status = ice_update_vsi(hw, vsi->idx, ctx, NULL);
 		if (status) {
-			dev_err(dev, "update VSI for RSS failed, err %s aq_err %s\n",
-				ice_stat_str(status),
+			dev_err(dev, "update VSI for RSS failed, err %d aq_err %s\n",
+				status,
 				ice_aq_str(hw->adminq.sq_last_status));
 			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		} else {
@@ -2740,8 +2740,8 @@ static int ice_vc_handle_rss_cfg(struct ice_vf *vf, u8 *msg, bool add)
 			 */
 			if (status && status != ICE_ERR_DOES_NOT_EXIST) {
 				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-				dev_err(dev, "ice_rem_rss_cfg failed for VF ID:%d, error:%s\n",
-					vf->vf_id, ice_stat_str(status));
+				dev_err(dev, "ice_rem_rss_cfg failed for VF ID:%d, error:%d\n",
+					vf->vf_id, status);
 			}
 		}
 	}
@@ -2951,9 +2951,9 @@ int ice_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool ena)
 
 	status = ice_update_vsi(&pf->hw, vf_vsi->idx, ctx, NULL);
 	if (status) {
-		dev_err(dev, "Failed to %sable spoofchk on VF %d VSI %d\n error %s\n",
+		dev_err(dev, "Failed to %sable spoofchk on VF %d VSI %d\n error %d\n",
 			ena ? "en" : "dis", vf->vf_id, vf_vsi->vsi_num,
-			ice_stat_str(status));
+			status);
 		ret = -EIO;
 		goto out;
 	}
@@ -3810,8 +3810,8 @@ ice_vc_add_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi,
 		 */
 		ret = -EEXIST;
 	} else if (status) {
-		dev_err(dev, "Failed to add MAC %pM for VF %d\n, error %s\n",
-			mac_addr, vf->vf_id, ice_stat_str(status));
+		dev_err(dev, "Failed to add MAC %pM for VF %d\n, error %d\n",
+			mac_addr, vf->vf_id, status);
 		return -EIO;
 	} else {
 		vf->num_mac++;
@@ -3901,8 +3901,8 @@ ice_vc_del_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi,
 			vf->vf_id);
 		return -ENOENT;
 	} else if (status) {
-		dev_err(dev, "Failed to delete MAC %pM for VF %d, error %s\n",
-			mac_addr, vf->vf_id, ice_stat_str(status));
+		dev_err(dev, "Failed to delete MAC %pM for VF %d, error %d\n",
+			mac_addr, vf->vf_id, status);
 		return -EIO;
 	}
 
-- 
2.20.1


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

