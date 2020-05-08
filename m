Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F05B1C9FC6
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 May 2020 02:43:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D74F3897BF;
	Fri,  8 May 2020 00:43:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nbHR+8Vw0LDo; Fri,  8 May 2020 00:43:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 76E50896C0;
	Fri,  8 May 2020 00:43:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4BA5D1BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2020 00:43:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 438F487871
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2020 00:43:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hkVJOy5b+FGx for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2020 00:43:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E5C47878B7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2020 00:43:34 +0000 (UTC)
IronPort-SDR: oecXlVFgIeAJ2oaaBk805oFqss0eXVL+k8wzheMviRwyZDW0HhOhFdIG21HspsU6jkOT5NjRgv
 7yo6a62r6sIQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 17:43:33 -0700
IronPort-SDR: m8D+f04/Oso+Nu4oTtIYACfJsgMsGnkJT0Q9E0fQjtpp7QxufYd/tLkrWUtZMgQYkOgfnwT/PR
 Yspi13WPMj7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,365,1583222400"; d="scan'208";a="249468771"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga007.jf.intel.com with ESMTP; 07 May 2020 17:43:33 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 May 2020 17:41:04 -0700
Message-Id: <20200508004113.39725-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
References: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S41 06/15] ice: Provide more meaningful
 error message
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

From: Lihong Yang <lihong.yang@intel.com>

When printing the ice status or AQ error codes, instead of printing out the
numerical value, provide the description of the error code. This provides
more info about the issue than a number.

Signed-off-by: Lihong Yang <lihong.yang@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |   2 +
 drivers/net/ethernet/intel/ice/ice_base.c     |   8 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  42 +++--
 drivers/net/ethernet/intel/ice/ice_lib.c      | 103 +++++-----
 drivers/net/ethernet/intel/ice/ice_main.c     | 177 +++++++++++++++---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  28 +--
 6 files changed, 247 insertions(+), 113 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 2dcbb60060f1..b9860b8350ca 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -542,6 +542,8 @@ int ice_init_peer_devices(struct ice_pf *pf);
 int
 ice_for_each_peer(struct ice_pf *pf, void *data,
 		  int (*fn)(struct ice_peer_dev_int *, void *));
+const char *ice_stat_str(enum ice_status stat_err);
+const char *ice_aq_str(enum ice_aq_err aq_err);
 int ice_open(struct net_device *netdev);
 int ice_stop(struct net_device *netdev);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index a19cd6f5436b..ee1c698ff056 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -662,8 +662,8 @@ ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_ring *ring,
 	status = ice_ena_vsi_txq(vsi->port_info, vsi->idx, tc, ring->q_handle,
 				 1, qg_buf, buf_len, NULL);
 	if (status) {
-		dev_err(ice_pf_to_dev(pf), "Failed to set LAN Tx queue context, error: %d\n",
-			status);
+		dev_err(ice_pf_to_dev(pf), "Failed to set LAN Tx queue context, error: %s\n",
+			ice_stat_str(status));
 		return -ENODEV;
 	}
 
@@ -832,8 +832,8 @@ ice_vsi_stop_tx_ring(struct ice_vsi *vsi, enum ice_disq_rst_src rst_src,
 	} else if (status == ICE_ERR_DOES_NOT_EXIST) {
 		dev_dbg(ice_pf_to_dev(vsi->back), "LAN Tx queues do not exist, nothing to disable\n");
 	} else if (status) {
-		dev_err(ice_pf_to_dev(vsi->back), "Failed to disable LAN Tx queues, error: %d\n",
-			status);
+		dev_err(ice_pf_to_dev(vsi->back), "Failed to disable LAN Tx queues, error: %s\n",
+			ice_stat_str(status));
 		return -ENODEV;
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index db547c0c7c6f..b814bc54f752 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -275,8 +275,9 @@ ice_get_eeprom(struct net_device *netdev, struct ethtool_eeprom *eeprom,
 
 	status = ice_acquire_nvm(hw, ICE_RES_READ);
 	if (status) {
-		dev_err(dev, "ice_acquire_nvm failed, err %d aq_err %d\n",
-			status, hw->adminq.sq_last_status);
+		dev_err(dev, "ice_acquire_nvm failed, err %s aq_err %s\n",
+			ice_stat_str(status),
+			ice_aq_str(hw->adminq.sq_last_status));
 		ret = -EIO;
 		goto out;
 	}
@@ -284,8 +285,9 @@ ice_get_eeprom(struct net_device *netdev, struct ethtool_eeprom *eeprom,
 	status = ice_read_flat_nvm(hw, eeprom->offset, &eeprom->len, buf,
 				   false);
 	if (status) {
-		dev_err(dev, "ice_read_flat_nvm failed, err %d aq_err %d\n",
-			status, hw->adminq.sq_last_status);
+		dev_err(dev, "ice_read_flat_nvm failed, err %s aq_err %s\n",
+			ice_stat_str(status),
+			ice_aq_str(hw->adminq.sq_last_status));
 		ret = -EIO;
 		goto release;
 	}
@@ -334,7 +336,8 @@ static u64 ice_link_test(struct net_device *netdev)
 	netdev_info(netdev, "link test\n");
 	status = ice_get_link_status(np->vsi->port_info, &link_up);
 	if (status) {
-		netdev_err(netdev, "link query error, status = %d\n", status);
+		netdev_err(netdev, "link query error, status = %s\n",
+			   ice_stat_str(status));
 		return 1;
 	}
 
@@ -1160,8 +1163,9 @@ static int ice_nway_reset(struct net_device *netdev)
 		status = ice_aq_set_link_restart_an(pi, false, NULL);
 
 	if (status) {
-		netdev_info(netdev, "link restart failed, err %d aq_err %d\n",
-			    status, pi->hw->adminq.sq_last_status);
+		netdev_info(netdev, "link restart failed, err %s aq_err %s\n",
+			    ice_stat_str(status),
+			    ice_aq_str(pi->hw->adminq.sq_last_status));
 		return -EIO;
 	}
 
@@ -2462,8 +2466,8 @@ ice_set_rss_hash_opt(struct ice_vsi *vsi, struct ethtool_rxnfc *nfc)
 
 	status = ice_add_rss_cfg(&pf->hw, vsi->idx, hashed_flds, hdrs);
 	if (status) {
-		dev_dbg(dev, "ice_add_rss_cfg failed, vsi num = %d, error = %d\n",
-			vsi->vsi_num, status);
+		dev_dbg(dev, "ice_add_rss_cfg failed, vsi num = %d, error = %s\n",
+			vsi->vsi_num, ice_stat_str(status));
 		return -EINVAL;
 	}
 
@@ -2964,16 +2968,19 @@ ice_set_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *pause)
 	status = ice_set_fc(pi, &aq_failures, link_up);
 
 	if (aq_failures & ICE_SET_FC_AQ_FAIL_GET) {
-		netdev_info(netdev, "Set fc failed on the get_phy_capabilities call with err %d aq_err %d\n",
-			    status, hw->adminq.sq_last_status);
+		netdev_info(netdev, "Set fc failed on the get_phy_capabilities call with err %s aq_err %s\n",
+			    ice_stat_str(status),
+			    ice_aq_str(hw->adminq.sq_last_status));
 		err = -EAGAIN;
 	} else if (aq_failures & ICE_SET_FC_AQ_FAIL_SET) {
-		netdev_info(netdev, "Set fc failed on the set_phy_config call with err %d aq_err %d\n",
-			    status, hw->adminq.sq_last_status);
+		netdev_info(netdev, "Set fc failed on the set_phy_config call with err %s aq_err %s\n",
+			    ice_stat_str(status),
+			    ice_aq_str(hw->adminq.sq_last_status));
 		err = -EAGAIN;
 	} else if (aq_failures & ICE_SET_FC_AQ_FAIL_UPDATE) {
-		netdev_info(netdev, "Set fc failed on the get_link_info call with err %d aq_err %d\n",
-			    status, hw->adminq.sq_last_status);
+		netdev_info(netdev, "Set fc failed on the get_link_info call with err %s aq_err %s\n",
+			    ice_stat_str(status),
+			    ice_aq_str(hw->adminq.sq_last_status));
 		err = -EAGAIN;
 	}
 
@@ -3227,8 +3234,9 @@ static int ice_vsi_set_dflt_rss_lut(struct ice_vsi *vsi, int req_rss_size)
 	status = ice_aq_set_rss_lut(hw, vsi->idx, vsi->rss_lut_type, lut,
 				    vsi->rss_table_size);
 	if (status) {
-		dev_err(dev, "Cannot set RSS lut, err %d aq_err %d\n",
-			status, hw->adminq.rq_last_status);
+		dev_err(dev, "Cannot set RSS lut, err %s aq_err %s\n",
+			ice_stat_str(status),
+			ice_aq_str(hw->adminq.rq_last_status));
 		err = -EIO;
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 34b41b1039f1..ae2528762b07 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -248,8 +248,8 @@ void ice_vsi_delete(struct ice_vsi *vsi)
 
 	status = ice_free_vsi(&pf->hw, vsi->idx, ctxt, false, NULL);
 	if (status)
-		dev_err(ice_pf_to_dev(pf), "Failed to delete VSI %i in FW - error: %d\n",
-			vsi->vsi_num, status);
+		dev_err(ice_pf_to_dev(pf), "Failed to delete VSI %i in FW - error: %s\n",
+			vsi->vsi_num, ice_stat_str(status));
 
 	kfree(ctxt);
 }
@@ -532,8 +532,8 @@ static void ice_vsi_clean_rss_flow_fld(struct ice_vsi *vsi)
 
 	status = ice_rem_vsi_rss_cfg(&pf->hw, vsi->idx);
 	if (status)
-		dev_dbg(ice_pf_to_dev(pf), "ice_rem_vsi_rss_cfg failed for vsi = %d, error = %d\n",
-			vsi->vsi_num, status);
+		dev_dbg(ice_pf_to_dev(pf), "ice_rem_vsi_rss_cfg failed for vsi = %d, error = %s\n",
+			vsi->vsi_num, ice_stat_str(status));
 }
 
 /**
@@ -1204,7 +1204,8 @@ static int ice_vsi_cfg_rss_lut_key(struct ice_vsi *vsi)
 				    vsi->rss_table_size);
 
 	if (status) {
-		dev_err(dev, "set_rss_lut failed, error %d\n", status);
+		dev_err(dev, "set_rss_lut failed, error %s\n",
+			ice_stat_str(status));
 		err = -EIO;
 		goto ice_vsi_cfg_rss_exit;
 	}
@@ -1226,7 +1227,8 @@ static int ice_vsi_cfg_rss_lut_key(struct ice_vsi *vsi)
 	status = ice_aq_set_rss_key(&pf->hw, vsi->idx, key);
 
 	if (status) {
-		dev_err(dev, "set_rss_key failed, error %d\n", status);
+		dev_err(dev, "set_rss_key failed, error %s\n",
+			ice_stat_str(status));
 		err = -EIO;
 	}
 
@@ -1259,8 +1261,8 @@ static void ice_vsi_set_vf_rss_flow_fld(struct ice_vsi *vsi)
 
 	status = ice_add_avf_rss_cfg(&pf->hw, vsi->idx, ICE_DEFAULT_RSS_HENA);
 	if (status)
-		dev_dbg(dev, "ice_add_avf_rss_cfg failed for vsi = %d, error = %d\n",
-			vsi->vsi_num, status);
+		dev_dbg(dev, "ice_add_avf_rss_cfg failed for vsi = %d, error = %s\n",
+			vsi->vsi_num, ice_stat_str(status));
 }
 
 /**
@@ -1292,57 +1294,57 @@ static void ice_vsi_set_rss_flow_fld(struct ice_vsi *vsi)
 	status = ice_add_rss_cfg(hw, vsi_handle, ICE_FLOW_HASH_IPV4,
 				 ICE_FLOW_SEG_HDR_IPV4);
 	if (status)
-		dev_dbg(dev, "ice_add_rss_cfg failed for ipv4 flow, vsi = %d, error = %d\n",
-			vsi_num, status);
+		dev_dbg(dev, "ice_add_rss_cfg failed for ipv4 flow, vsi = %d, error = %s\n",
+			vsi_num, ice_stat_str(status));
 
 	/* configure RSS for IPv6 with input set IPv6 src/dst */
 	status = ice_add_rss_cfg(hw, vsi_handle, ICE_FLOW_HASH_IPV6,
 				 ICE_FLOW_SEG_HDR_IPV6);
 	if (status)
-		dev_dbg(dev, "ice_add_rss_cfg failed for ipv6 flow, vsi = %d, error = %d\n",
-			vsi_num, status);
+		dev_dbg(dev, "ice_add_rss_cfg failed for ipv6 flow, vsi = %d, error = %s\n",
+			vsi_num, ice_stat_str(status));
 
 	/* configure RSS for tcp4 with input set IP src/dst, TCP src/dst */
 	status = ice_add_rss_cfg(hw, vsi_handle, ICE_HASH_TCP_IPV4,
 				 ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_IPV4);
 	if (status)
-		dev_dbg(dev, "ice_add_rss_cfg failed for tcp4 flow, vsi = %d, error = %d\n",
-			vsi_num, status);
+		dev_dbg(dev, "ice_add_rss_cfg failed for tcp4 flow, vsi = %d, error = %s\n",
+			vsi_num, ice_stat_str(status));
 
 	/* configure RSS for udp4 with input set IP src/dst, UDP src/dst */
 	status = ice_add_rss_cfg(hw, vsi_handle, ICE_HASH_UDP_IPV4,
 				 ICE_FLOW_SEG_HDR_UDP | ICE_FLOW_SEG_HDR_IPV4);
 	if (status)
-		dev_dbg(dev, "ice_add_rss_cfg failed for udp4 flow, vsi = %d, error = %d\n",
-			vsi_num, status);
+		dev_dbg(dev, "ice_add_rss_cfg failed for udp4 flow, vsi = %d, error = %s\n",
+			vsi_num, ice_stat_str(status));
 
 	/* configure RSS for sctp4 with input set IP src/dst */
 	status = ice_add_rss_cfg(hw, vsi_handle, ICE_FLOW_HASH_IPV4,
 				 ICE_FLOW_SEG_HDR_SCTP | ICE_FLOW_SEG_HDR_IPV4);
 	if (status)
-		dev_dbg(dev, "ice_add_rss_cfg failed for sctp4 flow, vsi = %d, error = %d\n",
-			vsi_num, status);
+		dev_dbg(dev, "ice_add_rss_cfg failed for sctp4 flow, vsi = %d, error = %s\n",
+			vsi_num, ice_stat_str(status));
 
 	/* configure RSS for tcp6 with input set IPv6 src/dst, TCP src/dst */
 	status = ice_add_rss_cfg(hw, vsi_handle, ICE_HASH_TCP_IPV6,
 				 ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_IPV6);
 	if (status)
-		dev_dbg(dev, "ice_add_rss_cfg failed for tcp6 flow, vsi = %d, error = %d\n",
-			vsi_num, status);
+		dev_dbg(dev, "ice_add_rss_cfg failed for tcp6 flow, vsi = %d, error = %s\n",
+			vsi_num, ice_stat_str(status));
 
 	/* configure RSS for udp6 with input set IPv6 src/dst, UDP src/dst */
 	status = ice_add_rss_cfg(hw, vsi_handle, ICE_HASH_UDP_IPV6,
 				 ICE_FLOW_SEG_HDR_UDP | ICE_FLOW_SEG_HDR_IPV6);
 	if (status)
-		dev_dbg(dev, "ice_add_rss_cfg failed for udp6 flow, vsi = %d, error = %d\n",
-			vsi_num, status);
+		dev_dbg(dev, "ice_add_rss_cfg failed for udp6 flow, vsi = %d, error = %s\n",
+			vsi_num, ice_stat_str(status));
 
 	/* configure RSS for sctp6 with input set IPv6 src/dst */
 	status = ice_add_rss_cfg(hw, vsi_handle, ICE_FLOW_HASH_IPV6,
 				 ICE_FLOW_SEG_HDR_SCTP | ICE_FLOW_SEG_HDR_IPV6);
 	if (status)
-		dev_dbg(dev, "ice_add_rss_cfg failed for sctp6 flow, vsi = %d, error = %d\n",
-			vsi_num, status);
+		dev_dbg(dev, "ice_add_rss_cfg failed for sctp6 flow, vsi = %d, error = %s\n",
+			vsi_num, ice_stat_str(status));
 }
 
 /**
@@ -1544,11 +1546,11 @@ int ice_vsi_kill_vlan(struct ice_vsi *vsi, u16 vid)
 	if (!status) {
 		vsi->num_vlan--;
 	} else if (status == ICE_ERR_DOES_NOT_EXIST) {
-		dev_dbg(dev, "Failed to remove VLAN %d on VSI %i, it does not exist, status: %d\n",
-			vid, vsi->vsi_num, status);
+		dev_dbg(dev, "Failed to remove VLAN %d on VSI %i, it does not exist, status: %s\n",
+			vid, vsi->vsi_num, ice_stat_str(status));
 	} else {
-		dev_err(dev, "Error removing VLAN %d on vsi %i error: %d\n",
-			vid, vsi->vsi_num, status);
+		dev_err(dev, "Error removing VLAN %d on vsi %i error: %s\n",
+			vid, vsi->vsi_num, ice_stat_str(status));
 		err = -EIO;
 	}
 
@@ -1772,8 +1774,9 @@ int ice_vsi_manage_vlan_insertion(struct ice_vsi *vsi)
 
 	status = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (status) {
-		dev_err(ice_pf_to_dev(vsi->back), "update VSI for VLAN insert failed, err %d aq_err %d\n",
-			status, hw->adminq.sq_last_status);
+		dev_err(ice_pf_to_dev(vsi->back), "update VSI for VLAN insert failed, err %s aq_err %s\n",
+			ice_stat_str(status),
+			ice_aq_str(hw->adminq.sq_last_status));
 		ret = -EIO;
 		goto out;
 	}
@@ -1818,8 +1821,9 @@ int ice_vsi_manage_vlan_stripping(struct ice_vsi *vsi, bool ena)
 
 	status = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (status) {
-		dev_err(ice_pf_to_dev(vsi->back), "update VSI for VLAN strip failed, ena = %d err %d aq_err %d\n",
-			ena, status, hw->adminq.sq_last_status);
+		dev_err(ice_pf_to_dev(vsi->back), "update VSI for VLAN strip failed, ena = %d err %s aq_err %s\n",
+			ena, ice_stat_str(status),
+			ice_aq_str(hw->adminq.sq_last_status));
 		ret = -EIO;
 		goto out;
 	}
@@ -1957,9 +1961,10 @@ int ice_cfg_vlan_pruning(struct ice_vsi *vsi, bool ena, bool vlan_promisc)
 
 	status = ice_update_vsi(&pf->hw, vsi->idx, ctxt, NULL);
 	if (status) {
-		netdev_err(vsi->netdev, "%sabling VLAN pruning on VSI handle: %d, VSI HW ID: %d failed, err = %d, aq_err = %d\n",
-			   ena ? "En" : "Dis", vsi->idx, vsi->vsi_num, status,
-			   pf->hw.adminq.sq_last_status);
+		netdev_err(vsi->netdev, "%sabling VLAN pruning on VSI handle: %d, VSI HW ID: %d failed, err = %s, aq_err = %s\n",
+			   ena ? "En" : "Dis", vsi->idx, vsi->vsi_num,
+			   ice_stat_str(status),
+			   ice_aq_str(pf->hw.adminq.sq_last_status));
 		goto err_out;
 	}
 
@@ -2060,8 +2065,8 @@ ice_vsi_add_rem_eth_mac(struct ice_vsi *vsi, bool add_rule)
 		status = ice_remove_eth_mac(&pf->hw, &tmp_add_list);
 
 	if (status)
-		dev_err(dev, "Failure Adding or Removing Ethertype on VSI %i error: %d\n",
-			vsi->vsi_num, status);
+		dev_err(dev, "Failure Adding or Removing Ethertype on VSI %i error: %s\n",
+			vsi->vsi_num, ice_stat_str(status));
 
 	ice_free_fltr_list(dev, &tmp_add_list);
 }
@@ -2108,9 +2113,9 @@ void ice_cfg_sw_lldp(struct ice_vsi *vsi, bool tx, bool create)
 		status = ice_remove_eth_mac(&pf->hw, &tmp_add_list);
 
 	if (status)
-		dev_err(dev, "Fail %s %s LLDP rule on VSI %i error: %d\n",
+		dev_err(dev, "Fail %s %s LLDP rule on VSI %i error: %s\n",
 			create ? "adding" : "removing", tx ? "TX" : "RX",
-			vsi->vsi_num, status);
+			vsi->vsi_num, ice_stat_str(status));
 
 	ice_free_fltr_list(dev, &tmp_add_list);
 }
@@ -2258,8 +2263,8 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 	status = ice_cfg_vsi_lan(vsi->port_info, vsi->idx, vsi->tc_cfg.ena_tc,
 				 max_txqs);
 	if (status) {
-		dev_err(dev, "VSI %d failed lan queue config, error %d\n",
-			vsi->vsi_num, status);
+		dev_err(dev, "VSI %d failed lan queue config, error %s\n",
+			vsi->vsi_num, ice_stat_str(status));
 		goto unroll_vector_base;
 	}
 
@@ -2864,8 +2869,8 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 	status = ice_cfg_vsi_lan(vsi->port_info, vsi->idx, vsi->tc_cfg.ena_tc,
 				 max_txqs);
 	if (status) {
-		dev_err(ice_pf_to_dev(pf), "VSI %d failed lan queue config, error %d\n",
-			vsi->vsi_num, status);
+		dev_err(ice_pf_to_dev(pf), "VSI %d failed lan queue config, error %s\n",
+			vsi->vsi_num, ice_stat_str(status));
 		if (init_vsi) {
 			ret = -EIO;
 			goto err_vectors;
@@ -2974,8 +2979,8 @@ int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc)
 				 max_txqs);
 
 	if (status) {
-		dev_err(dev, "VSI %d failed TC config, error %d\n",
-			vsi->vsi_num, status);
+		dev_err(dev, "VSI %d failed TC config, error %s\n",
+			vsi->vsi_num, ice_stat_str(status));
 		ret = -EIO;
 		goto out;
 	}
@@ -3129,8 +3134,8 @@ int ice_set_dflt_vsi(struct ice_sw *sw, struct ice_vsi *vsi)
 
 	status = ice_cfg_dflt_vsi(&vsi->back->hw, vsi->idx, true, ICE_FLTR_RX);
 	if (status) {
-		dev_err(dev, "Failed to set VSI %d as the default forwarding VSI, error %d\n",
-			vsi->vsi_num, status);
+		dev_err(dev, "Failed to set VSI %d as the default forwarding VSI, error %s\n",
+			vsi->vsi_num, ice_stat_str(status));
 		return -EIO;
 	}
 
@@ -3168,8 +3173,8 @@ int ice_clear_dflt_vsi(struct ice_sw *sw)
 	status = ice_cfg_dflt_vsi(&dflt_vsi->back->hw, dflt_vsi->idx, false,
 				  ICE_FLTR_RX);
 	if (status) {
-		dev_err(dev, "Failed to clear the default forwarding VSI %d, error %d\n",
-			dflt_vsi->vsi_num, status);
+		dev_err(dev, "Failed to clear the default forwarding VSI %d, error %s\n",
+			dflt_vsi->vsi_num, ice_stat_str(status));
 		return -EIO;
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index f6c2dd55553f..13cfdda7df97 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -164,8 +164,8 @@ static int ice_init_mac_fltr(struct ice_pf *pf)
 	 * had an error
 	 */
 	if (status && vsi->netdev->reg_state == NETREG_REGISTERED) {
-		dev_err(ice_pf_to_dev(pf), "Could not add MAC filters error %d. Unregistering device\n",
-			status);
+		dev_err(ice_pf_to_dev(pf), "Could not add MAC filters error %s. Unregistering device\n",
+			ice_stat_str(status));
 		unregister_netdev(vsi->netdev);
 		free_netdev(vsi->netdev);
 		vsi->netdev = NULL;
@@ -1021,8 +1021,8 @@ static int __ice_clean_ctrlq(struct ice_pf *pf, enum ice_ctl_q q_type)
 		if (ret == ICE_ERR_AQ_NO_WORK)
 			break;
 		if (ret) {
-			dev_err(dev, "%s Receive Queue event error %d\n", qtype,
-				ret);
+			dev_err(dev, "%s Receive Queue event error %s\n", qtype,
+				ice_stat_str(ret));
 			break;
 		}
 
@@ -1816,8 +1816,8 @@ int ice_prepare_xdp_rings(struct ice_vsi *vsi, struct bpf_prog *prog)
 	status = ice_cfg_vsi_lan(vsi->port_info, vsi->idx, vsi->tc_cfg.ena_tc,
 				 max_txqs);
 	if (status) {
-		dev_err(dev, "Failed VSI LAN queue config for XDP, error:%d\n",
-			status);
+		dev_err(dev, "Failed VSI LAN queue config for XDP, error: %s\n",
+			ice_stat_str(status));
 		goto clear_xdp_rings;
 	}
 	ice_vsi_assign_bpf_prog(vsi, prog);
@@ -3816,8 +3816,8 @@ static int ice_set_mac_address(struct net_device *netdev, void *pi)
 	flags = ICE_AQC_MAN_MAC_UPDATE_LAA_WOL;
 	status = ice_aq_manage_mac_write(hw, mac, flags, NULL);
 	if (status) {
-		netdev_err(netdev, "can't set MAC %pM. write to firmware failed error %d\n",
-			   mac, status);
+		netdev_err(netdev, "can't set MAC %pM. write to firmware failed error %s\n",
+			   mac, ice_stat_str(status));
 	}
 	return 0;
 }
@@ -3881,8 +3881,8 @@ ice_set_tx_maxrate(struct net_device *netdev, int queue_index, u32 maxrate)
 		status = ice_cfg_q_bw_lmt(vsi->port_info, vsi->idx, tc,
 					  q_handle, ICE_MAX_BW, maxrate * 1000);
 	if (status) {
-		netdev_err(netdev, "Unable to set Tx max rate, error %d\n",
-			   status);
+		netdev_err(netdev, "Unable to set Tx max rate, error %s\n",
+			   ice_stat_str(status));
 		return -EIO;
 	}
 
@@ -4680,8 +4680,9 @@ static int ice_vsi_rebuild_by_type(struct ice_pf *pf, enum ice_vsi_type type)
 		/* replay filters for the VSI */
 		status = ice_replay_vsi(&pf->hw, vsi->idx);
 		if (status) {
-			dev_err(dev, "replay VSI failed, status %d, VSI index %d, type %s\n",
-				status, vsi->idx, ice_vsi_type_str(type));
+			dev_err(dev, "replay VSI failed, status %s, VSI index %d, type %s\n",
+				ice_stat_str(status), vsi->idx,
+				ice_vsi_type_str(type));
 			return -EIO;
 		}
 
@@ -4750,7 +4751,8 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 
 	ret = ice_init_all_ctrlq(hw);
 	if (ret) {
-		dev_err(dev, "control queues init failed %d\n", ret);
+		dev_err(dev, "control queues init failed %s\n",
+			ice_stat_str(ret));
 		goto err_init_ctrlq;
 	}
 
@@ -4766,7 +4768,8 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 
 	ret = ice_clear_pf_cfg(hw);
 	if (ret) {
-		dev_err(dev, "clear PF configuration failed %d\n", ret);
+		dev_err(dev, "clear PF configuration failed %s\n",
+			ice_stat_str(ret));
 		goto err_init_ctrlq;
 	}
 
@@ -4780,7 +4783,7 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 
 	ret = ice_get_caps(hw);
 	if (ret) {
-		dev_err(dev, "ice_get_caps failed %d\n", ret);
+		dev_err(dev, "ice_get_caps failed %s\n", ice_stat_str(ret));
 		goto err_init_ctrlq;
 	}
 
@@ -4830,8 +4833,8 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 	/* tell the firmware we are up */
 	ret = ice_send_version(pf);
 	if (ret) {
-		dev_err(dev, "Rebuild failed due to error sending driver version: %d\n",
-			ret);
+		dev_err(dev, "Rebuild failed due to error sending driver version: %s\n",
+			ice_stat_str(ret));
 		goto err_vsi_rebuild;
 	}
 
@@ -4957,6 +4960,112 @@ static int ice_change_mtu(struct net_device *netdev, int new_mtu)
 	return err;
 }
 
+/**
+ * ice_aq_str - convert AQ err code to a string
+ * @aq_err: the AQ error code to convert
+ */
+const char *ice_aq_str(enum ice_aq_err aq_err)
+{
+	switch (aq_err) {
+	case ICE_AQ_RC_OK:
+		return "OK";
+	case ICE_AQ_RC_EPERM:
+		return "ICE_AQ_RC_EPERM";
+	case ICE_AQ_RC_ENOENT:
+		return "ICE_AQ_RC_ENOENT";
+	case ICE_AQ_RC_ENOMEM:
+		return "ICE_AQ_RC_ENOMEM";
+	case ICE_AQ_RC_EBUSY:
+		return "ICE_AQ_RC_EBUSY";
+	case ICE_AQ_RC_EEXIST:
+		return "ICE_AQ_RC_EEXIST";
+	case ICE_AQ_RC_EINVAL:
+		return "ICE_AQ_RC_EINVAL";
+	case ICE_AQ_RC_ENOSPC:
+		return "ICE_AQ_RC_ENOSPC";
+	case ICE_AQ_RC_ENOSYS:
+		return "ICE_AQ_RC_ENOSYS";
+	case ICE_AQ_RC_ENOSEC:
+		return "ICE_AQ_RC_ENOSEC";
+	case ICE_AQ_RC_EBADSIG:
+		return "ICE_AQ_RC_EBADSIG";
+	case ICE_AQ_RC_ESVN:
+		return "ICE_AQ_RC_ESVN";
+	case ICE_AQ_RC_EBADMAN:
+		return "ICE_AQ_RC_EBADMAN";
+	case ICE_AQ_RC_EBADBUF:
+		return "ICE_AQ_RC_EBADBUF";
+	}
+
+	return "ICE_AQ_RC_UNKNOWN";
+}
+
+/**
+ * ice_stat_str - convert status err code to a string
+ * @stat_err: the status error code to convert
+ */
+const char *ice_stat_str(enum ice_status stat_err)
+{
+	switch (stat_err) {
+	case ICE_SUCCESS:
+		return "OK";
+	case ICE_ERR_PARAM:
+		return "ICE_ERR_PARAM";
+	case ICE_ERR_NOT_IMPL:
+		return "ICE_ERR_NOT_IMPL";
+	case ICE_ERR_NOT_READY:
+		return "ICE_ERR_NOT_READY";
+	case ICE_ERR_NOT_SUPPORTED:
+		return "ICE_ERR_NOT_SUPPORTED";
+	case ICE_ERR_BAD_PTR:
+		return "ICE_ERR_BAD_PTR";
+	case ICE_ERR_INVAL_SIZE:
+		return "ICE_ERR_INVAL_SIZE";
+	case ICE_ERR_DEVICE_NOT_SUPPORTED:
+		return "ICE_ERR_DEVICE_NOT_SUPPORTED";
+	case ICE_ERR_RESET_FAILED:
+		return "ICE_ERR_RESET_FAILED";
+	case ICE_ERR_FW_API_VER:
+		return "ICE_ERR_FW_API_VER";
+	case ICE_ERR_NO_MEMORY:
+		return "ICE_ERR_NO_MEMORY";
+	case ICE_ERR_CFG:
+		return "ICE_ERR_CFG";
+	case ICE_ERR_OUT_OF_RANGE:
+		return "ICE_ERR_OUT_OF_RANGE";
+	case ICE_ERR_ALREADY_EXISTS:
+		return "ICE_ERR_ALREADY_EXISTS";
+	case ICE_ERR_NVM_CHECKSUM:
+		return "ICE_ERR_NVM_CHECKSUM";
+	case ICE_ERR_BUF_TOO_SHORT:
+		return "ICE_ERR_BUF_TOO_SHORT";
+	case ICE_ERR_NVM_BLANK_MODE:
+		return "ICE_ERR_NVM_BLANK_MODE";
+	case ICE_ERR_IN_USE:
+		return "ICE_ERR_IN_USE";
+	case ICE_ERR_MAX_LIMIT:
+		return "ICE_ERR_MAX_LIMIT";
+	case ICE_ERR_RESET_ONGOING:
+		return "ICE_ERR_RESET_ONGOING";
+	case ICE_ERR_HW_TABLE:
+		return "ICE_ERR_HW_TABLE";
+	case ICE_ERR_DOES_NOT_EXIST:
+		return "ICE_ERR_DOES_NOT_EXIST";
+	case ICE_ERR_AQ_ERROR:
+		return "ICE_ERR_AQ_ERROR";
+	case ICE_ERR_AQ_TIMEOUT:
+		return "ICE_ERR_AQ_TIMEOUT";
+	case ICE_ERR_AQ_FULL:
+		return "ICE_ERR_AQ_FULL";
+	case ICE_ERR_AQ_NO_WORK:
+		return "ICE_ERR_AQ_NO_WORK";
+	case ICE_ERR_AQ_EMPTY:
+		return "ICE_ERR_AQ_EMPTY";
+	}
+
+	return "ICE_ERR_UNKNOWN";
+}
+
 /**
  * ice_set_rss - Set RSS keys and lut
  * @vsi: Pointer to VSI structure
@@ -4981,8 +5090,9 @@ int ice_set_rss(struct ice_vsi *vsi, u8 *seed, u8 *lut, u16 lut_size)
 		status = ice_aq_set_rss_key(hw, vsi->idx, buf);
 
 		if (status) {
-			dev_err(dev, "Cannot set RSS key, err %d aq_err %d\n",
-				status, hw->adminq.rq_last_status);
+			dev_err(dev, "Cannot set RSS key, err %s aq_err %s\n",
+				ice_stat_str(status),
+				ice_aq_str(hw->adminq.rq_last_status));
 			return -EIO;
 		}
 	}
@@ -4991,8 +5101,9 @@ int ice_set_rss(struct ice_vsi *vsi, u8 *seed, u8 *lut, u16 lut_size)
 		status = ice_aq_set_rss_lut(hw, vsi->idx, vsi->rss_lut_type,
 					    lut, lut_size);
 		if (status) {
-			dev_err(dev, "Cannot set RSS lut, err %d aq_err %d\n",
-				status, hw->adminq.rq_last_status);
+			dev_err(dev, "Cannot set RSS lut, err %s aq_err %s\n",
+				ice_stat_str(status),
+				ice_aq_str(hw->adminq.rq_last_status));
 			return -EIO;
 		}
 	}
@@ -5023,8 +5134,9 @@ int ice_get_rss(struct ice_vsi *vsi, u8 *seed, u8 *lut, u16 lut_size)
 
 		status = ice_aq_get_rss_key(hw, vsi->idx, buf);
 		if (status) {
-			dev_err(dev, "Cannot get RSS key, err %d aq_err %d\n",
-				status, hw->adminq.rq_last_status);
+			dev_err(dev, "Cannot get RSS key, err %s aq_err %s\n",
+				ice_stat_str(status),
+				ice_aq_str(hw->adminq.rq_last_status));
 			return -EIO;
 		}
 	}
@@ -5033,8 +5145,9 @@ int ice_get_rss(struct ice_vsi *vsi, u8 *seed, u8 *lut, u16 lut_size)
 		status = ice_aq_get_rss_lut(hw, vsi->idx, vsi->rss_lut_type,
 					    lut, lut_size);
 		if (status) {
-			dev_err(dev, "Cannot get RSS lut, err %d aq_err %d\n",
-				status, hw->adminq.rq_last_status);
+			dev_err(dev, "Cannot get RSS lut, err %s aq_err %s\n",
+				ice_stat_str(status),
+				ice_aq_str(hw->adminq.rq_last_status));
 			return -EIO;
 		}
 	}
@@ -5101,8 +5214,9 @@ static int ice_vsi_update_bridge_mode(struct ice_vsi *vsi, u16 bmode)
 
 	status = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (status) {
-		dev_err(ice_pf_to_dev(vsi->back), "update VSI for bridge mode failed, bmode = %d err %d aq_err %d\n",
-			bmode, status, hw->adminq.sq_last_status);
+		dev_err(ice_pf_to_dev(vsi->back), "update VSI for bridge mode failed, bmode = %d err %s aq_err %s\n",
+			bmode, ice_stat_str(status),
+			ice_aq_str(hw->adminq.sq_last_status));
 		ret = -EIO;
 		goto out;
 	}
@@ -5171,8 +5285,9 @@ ice_bridge_setlink(struct net_device *dev, struct nlmsghdr *nlh,
 		 */
 		status = ice_update_sw_rule_bridge_mode(hw);
 		if (status) {
-			netdev_err(dev, "switch rule update failed, mode = %d err %d aq_err %d\n",
-				   mode, status, hw->adminq.sq_last_status);
+			netdev_err(dev, "switch rule update failed, mode = %d err %s aq_err %s\n",
+				   mode, ice_stat_str(status),
+				   ice_aq_str(hw->adminq.sq_last_status));
 			/* revert hw->evb_veb */
 			hw->evb_veb = (pf_sw->bridge_mode == BRIDGE_MODE_VEB);
 			return -EIO;
@@ -5298,8 +5413,8 @@ ice_udp_tunnel_add(struct net_device *netdev, struct udp_tunnel_info *ti)
 		netdev_info(netdev, "Max tunneled UDP ports reached, port %d not added\n",
 			    port);
 	else if (status)
-		netdev_err(netdev, "Error adding UDP tunnel - %d\n",
-			   status);
+		netdev_err(netdev, "Error adding UDP tunnel - %s\n",
+			   ice_stat_str(status));
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 8a909b9df342..c8b8741a3b47 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -491,8 +491,9 @@ static int ice_vsi_manage_pvid(struct ice_vsi *vsi, u16 pvid_info, bool enable)
 
 	status = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (status) {
-		dev_info(ice_hw_to_dev(hw), "update VSI for port VLAN failed, err %d aq_err %d\n",
-			 status, hw->adminq.sq_last_status);
+		dev_info(ice_hw_to_dev(hw), "update VSI for port VLAN failed, err %s aq_err %s\n",
+			 ice_stat_str(status),
+			 ice_aq_str(hw->adminq.sq_last_status));
 		ret = -EIO;
 		goto out;
 	}
@@ -1634,8 +1635,9 @@ ice_vc_send_msg_to_vf(struct ice_vf *vf, u32 v_opcode,
 	aq_ret = ice_aq_send_msg_to_vf(&pf->hw, vf->vf_id, v_opcode, v_retval,
 				       msg, msglen, NULL);
 	if (aq_ret && pf->hw.mailboxq.sq_last_status != ICE_AQ_RC_ENOSYS) {
-		dev_info(dev, "Unable to send the message to VF %d ret %d aq_err %d\n",
-			 vf->vf_id, aq_ret, pf->hw.mailboxq.sq_last_status);
+		dev_info(dev, "Unable to send the message to VF %d ret %s aq_err %s\n",
+			 vf->vf_id, ice_stat_str(aq_ret),
+			 ice_aq_str(pf->hw.mailboxq.sq_last_status));
 		return -EIO;
 	}
 
@@ -2050,8 +2052,9 @@ int ice_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool ena)
 
 	status = ice_update_vsi(&pf->hw, vf_vsi->idx, ctx, NULL);
 	if (status) {
-		dev_err(dev, "Failed to %sable spoofchk on VF %d VSI %d\n error %d\n",
-			ena ? "en" : "dis", vf->vf_id, vf_vsi->vsi_num, status);
+		dev_err(dev, "Failed to %sable spoofchk on VF %d VSI %d\n error %s\n",
+			ena ? "en" : "dis", vf->vf_id, vf_vsi->vsi_num,
+			ice_stat_str(status));
 		ret = -EIO;
 		goto out;
 	}
@@ -2207,8 +2210,9 @@ static int ice_vc_cfg_promiscuous_mode_msg(struct ice_vf *vf, u8 *msg)
 		 */
 		status = ice_vf_set_vsi_promisc(vf, vsi, promisc_m, rm_promisc);
 		if (status) {
-			dev_err(dev, "%sable Tx/Rx filter promiscuous mode on VF-%d failed, error: %d\n",
-				rm_promisc ? "dis" : "en", vf->vf_id, status);
+			dev_err(dev, "%sable Tx/Rx filter promiscuous mode on VF-%d failed, error: %s\n",
+				rm_promisc ? "dis" : "en", vf->vf_id,
+				ice_stat_str(status));
 			v_ret = ice_err_to_virt_err(status);
 			goto error_param;
 		} else {
@@ -2782,8 +2786,8 @@ ice_vc_add_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi, u8 *mac_addr)
 			vf->vf_id);
 		return -EEXIST;
 	} else if (status) {
-		dev_err(dev, "Failed to add MAC %pM for VF %d\n, error %d\n",
-			mac_addr, vf->vf_id, status);
+		dev_err(dev, "Failed to add MAC %pM for VF %d\n, error %s\n",
+			mac_addr, vf->vf_id, ice_stat_str(status));
 		return -EIO;
 	}
 
@@ -2819,8 +2823,8 @@ ice_vc_del_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi, u8 *mac_addr)
 			vf->vf_id);
 		return -ENOENT;
 	} else if (status) {
-		dev_err(dev, "Failed to delete MAC %pM for VF %d, error %d\n",
-			mac_addr, vf->vf_id, status);
+		dev_err(dev, "Failed to delete MAC %pM for VF %d, error %s\n",
+			mac_addr, vf->vf_id, ice_stat_str(status));
 		return -EIO;
 	}
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
