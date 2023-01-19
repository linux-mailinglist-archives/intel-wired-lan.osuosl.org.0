Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 546B5672DF7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 02:17:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D73D340C33;
	Thu, 19 Jan 2023 01:17:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D73D340C33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674091069;
	bh=0iodkYOlpqpELKdiYlMbZqKHKUZyjrU2pXrbF4sk/qU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kqfomDFTHlwM41rEGgUYOQwtq7r6N3HwuYXJTTSR70BaBHo1z9PaCPzc8ehwitQJP
	 TCPCz1vXptkQMDMrepbUVfEqOVQISsdhgAsMCWAZO2w/VahgS1XwXd1lvo0whIKcRE
	 W5sLGjt/HYZZqeTM4w4htauQwmML+fGtL9yVof8feOTpui4B9CmdxIz5nzp8VMeocx
	 tDJJ498+zRbbGMPunQYPXEZeoVnWN3yjUTuPlLjQe7irarzPvv5bydhaFeNTaGuppG
	 JZn9tnrHG18tTF/UNd9zHnbu/+flDG3xctaayM7GdvfoOsbdZ+AcKQtfaSEHnjkjub
	 GFrpXYGpJRRCw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LQXVHf1YrdCu; Thu, 19 Jan 2023 01:17:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 86C8440393;
	Thu, 19 Jan 2023 01:17:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 86C8440393
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8F10A1BF95F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5D80941924
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5D80941924
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JzzILvGRwGSs for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jan 2023 01:17:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA04041900
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AA04041900
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="304840733"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="304840733"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 17:17:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="783881895"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="783881895"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 17:17:03 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 18 Jan 2023 17:16:53 -0800
Message-Id: <20230119011653.311675-14-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.39.1.405.gd4c25cc71f83
In-Reply-To: <20230119011653.311675-1-jacob.e.keller@intel.com>
References: <20230119011653.311675-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674091025; x=1705627025;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B6GALKP0HmE7URLb4MXYQG3TvJb0l3RiJWcvpKhe8e8=;
 b=FgtWtKg3CCBCEjXYzNoIDTs8b1nslK2P+7miNXlL6NPoD5zgFO2GVqOY
 65/ZIfFLQwmbf8TKlR2q5amg7A1bHjGzDLsdcAGRoPtKY9mbAt9pFt97H
 W6fSF/UV3srcV+Ub49I6FH07ibt3tM4LBiUA+pZdmiEc9LdenBIOh3qFz
 9c1VAKkmfexY3bjcFIPfTCinxzJG7r6z2VZDc9hOo7UQKG52G+odM+W3Z
 D0cEYS3fVFnXsuxSMckVUy2giwOZwazvZvXhQ24XJEYjvYRmTwJLly6wT
 oZV21dztG40qQrykr8+rKeBQD33Hh1To2fk6cKRLnob7frpMGbjsyjGRk
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FgtWtKg3
Subject: [Intel-wired-lan] [PATCH net-next v2 13/13] ice: remove unnecessary
 virtchnl_ether_addr struct use
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The dev_lan_addr and hw_lan_addr members of ice_vf are used only to store
the MAC address for the VF. They are defined using virtchnl_ether_addr, but
only the .addr sub-member is actually used. Drop the use of
virtchnl_ether_addr and just use a u8 array of length [ETH_ALEN].

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
No changes since v1.

 drivers/net/ethernet/intel/ice/ice_eswitch.c  | 18 +++++++-------
 drivers/net/ethernet/intel/ice/ice_sriov.c    | 16 ++++++-------
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  8 +++----
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  4 ++--
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 24 +++++++++----------
 5 files changed, 35 insertions(+), 35 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index b86d173a20af..f6dd3f8fd936 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -71,17 +71,17 @@ void ice_eswitch_replay_vf_mac_rule(struct ice_vf *vf)
 	if (!ice_is_switchdev_running(vf->pf))
 		return;
 
-	if (is_valid_ether_addr(vf->hw_lan_addr.addr)) {
+	if (is_valid_ether_addr(vf->hw_lan_addr)) {
 		err = ice_eswitch_add_vf_mac_rule(vf->pf, vf,
-						  vf->hw_lan_addr.addr);
+						  vf->hw_lan_addr);
 		if (err) {
 			dev_err(ice_pf_to_dev(vf->pf), "Failed to add MAC %pM for VF %d\n, error %d\n",
-				vf->hw_lan_addr.addr, vf->vf_id, err);
+				vf->hw_lan_addr, vf->vf_id, err);
 			return;
 		}
 		vf->num_mac++;
 
-		ether_addr_copy(vf->dev_lan_addr.addr, vf->hw_lan_addr.addr);
+		ether_addr_copy(vf->dev_lan_addr, vf->hw_lan_addr);
 	}
 }
 
@@ -237,7 +237,7 @@ ice_eswitch_release_reprs(struct ice_pf *pf, struct ice_vsi *ctrl_vsi)
 		ice_vsi_update_security(vsi, ice_vsi_ctx_set_antispoof);
 		metadata_dst_free(vf->repr->dst);
 		vf->repr->dst = NULL;
-		ice_fltr_add_mac_and_broadcast(vsi, vf->hw_lan_addr.addr,
+		ice_fltr_add_mac_and_broadcast(vsi, vf->hw_lan_addr,
 					       ICE_FWD_TO_VSI);
 
 		netif_napi_del(&vf->repr->q_vector->napi);
@@ -265,14 +265,14 @@ static int ice_eswitch_setup_reprs(struct ice_pf *pf)
 						   GFP_KERNEL);
 		if (!vf->repr->dst) {
 			ice_fltr_add_mac_and_broadcast(vsi,
-						       vf->hw_lan_addr.addr,
+						       vf->hw_lan_addr,
 						       ICE_FWD_TO_VSI);
 			goto err;
 		}
 
 		if (ice_vsi_update_security(vsi, ice_vsi_ctx_clear_antispoof)) {
 			ice_fltr_add_mac_and_broadcast(vsi,
-						       vf->hw_lan_addr.addr,
+						       vf->hw_lan_addr,
 						       ICE_FWD_TO_VSI);
 			metadata_dst_free(vf->repr->dst);
 			vf->repr->dst = NULL;
@@ -281,7 +281,7 @@ static int ice_eswitch_setup_reprs(struct ice_pf *pf)
 
 		if (ice_vsi_add_vlan_zero(vsi)) {
 			ice_fltr_add_mac_and_broadcast(vsi,
-						       vf->hw_lan_addr.addr,
+						       vf->hw_lan_addr,
 						       ICE_FWD_TO_VSI);
 			metadata_dst_free(vf->repr->dst);
 			vf->repr->dst = NULL;
@@ -338,7 +338,7 @@ void ice_eswitch_update_repr(struct ice_vsi *vsi)
 
 	ret = ice_vsi_update_security(vsi, ice_vsi_ctx_clear_antispoof);
 	if (ret) {
-		ice_fltr_add_mac_and_broadcast(vsi, vf->hw_lan_addr.addr, ICE_FWD_TO_VSI);
+		ice_fltr_add_mac_and_broadcast(vsi, vf->hw_lan_addr, ICE_FWD_TO_VSI);
 		dev_err(ice_pf_to_dev(pf), "Failed to update VF %d port representor",
 			vsi->vf->vf_id);
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 356ac76ef90f..96a64c25e2ef 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1242,7 +1242,7 @@ ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_info *ivi)
 		goto out_put_vf;
 
 	ivi->vf = vf_id;
-	ether_addr_copy(ivi->mac, vf->hw_lan_addr.addr);
+	ether_addr_copy(ivi->mac, vf->hw_lan_addr);
 
 	/* VF configuration for VLAN and applicable QoS */
 	ivi->vlan = ice_vf_get_port_vlan_id(vf);
@@ -1290,8 +1290,8 @@ int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
 		return -EINVAL;
 
 	/* nothing left to do, unicast MAC already set */
-	if (ether_addr_equal(vf->dev_lan_addr.addr, mac) &&
-	    ether_addr_equal(vf->hw_lan_addr.addr, mac)) {
+	if (ether_addr_equal(vf->dev_lan_addr, mac) &&
+	    ether_addr_equal(vf->hw_lan_addr, mac)) {
 		ret = 0;
 		goto out_put_vf;
 	}
@@ -1305,8 +1305,8 @@ int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
 	/* VF is notified of its new MAC via the PF's response to the
 	 * VIRTCHNL_OP_GET_VF_RESOURCES message after the VF has been reset
 	 */
-	ether_addr_copy(vf->dev_lan_addr.addr, mac);
-	ether_addr_copy(vf->hw_lan_addr.addr, mac);
+	ether_addr_copy(vf->dev_lan_addr, mac);
+	ether_addr_copy(vf->hw_lan_addr, mac);
 	if (is_zero_ether_addr(mac)) {
 		/* VF will send VIRTCHNL_OP_ADD_ETH_ADDR message with its MAC */
 		vf->pf_set_mac = false;
@@ -1707,7 +1707,7 @@ void ice_print_vf_rx_mdd_event(struct ice_vf *vf)
 
 	dev_info(dev, "%d Rx Malicious Driver Detection events detected on PF %d VF %d MAC %pM. mdd-auto-reset-vfs=%s\n",
 		 vf->mdd_rx_events.count, pf->hw.pf_id, vf->vf_id,
-		 vf->dev_lan_addr.addr,
+		 vf->dev_lan_addr,
 		 test_bit(ICE_FLAG_MDD_AUTO_RESET_VF, pf->flags)
 			  ? "on" : "off");
 }
@@ -1751,7 +1751,7 @@ void ice_print_vfs_mdd_events(struct ice_pf *pf)
 
 			dev_info(dev, "%d Tx Malicious Driver Detection events detected on PF %d VF %d MAC %pM.\n",
 				 vf->mdd_tx_events.count, hw->pf_id, vf->vf_id,
-				 vf->dev_lan_addr.addr);
+				 vf->dev_lan_addr);
 		}
 	}
 	mutex_unlock(&pf->vfs.table_lock);
@@ -1841,7 +1841,7 @@ ice_is_malicious_vf(struct ice_pf *pf, struct ice_rq_event_info *event,
 
 			if (pf_vsi)
 				dev_warn(dev, "VF MAC %pM on PF MAC %pM is generating asynchronous messages and may be overflowing the PF message queue. Please see the Adapter User Guide for more information\n",
-					 &vf->dev_lan_addr.addr[0],
+					 &vf->dev_lan_addr[0],
 					 pf_vsi->netdev->dev_addr);
 		}
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index d16c2ea83873..0e57bd1b85fd 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -1008,18 +1008,18 @@ static int ice_vf_rebuild_host_mac_cfg(struct ice_vf *vf)
 
 	vf->num_mac++;
 
-	if (is_valid_ether_addr(vf->hw_lan_addr.addr)) {
-		status = ice_fltr_add_mac(vsi, vf->hw_lan_addr.addr,
+	if (is_valid_ether_addr(vf->hw_lan_addr)) {
+		status = ice_fltr_add_mac(vsi, vf->hw_lan_addr,
 					  ICE_FWD_TO_VSI);
 		if (status) {
 			dev_err(dev, "failed to add default unicast MAC filter %pM for VF %u, error %d\n",
-				&vf->hw_lan_addr.addr[0], vf->vf_id,
+				&vf->hw_lan_addr[0], vf->vf_id,
 				status);
 			return status;
 		}
 		vf->num_mac++;
 
-		ether_addr_copy(vf->dev_lan_addr.addr, vf->hw_lan_addr.addr);
+		ether_addr_copy(vf->dev_lan_addr, vf->hw_lan_addr);
 	}
 
 	return 0;
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index b4e6480f30a7..ef30f05b5d02 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -98,8 +98,8 @@ struct ice_vf {
 	struct ice_sw *vf_sw_id;	/* switch ID the VF VSIs connect to */
 	struct virtchnl_version_info vf_ver;
 	u32 driver_caps;		/* reported by VF driver */
-	struct virtchnl_ether_addr dev_lan_addr;
-	struct virtchnl_ether_addr hw_lan_addr;
+	u8 dev_lan_addr[ETH_ALEN];
+	u8 hw_lan_addr[ETH_ALEN];
 	struct ice_time_mac legacy_last_added_umac;
 	DECLARE_BITMAP(txq_ena, ICE_MAX_RSS_QS_PER_VF);
 	DECLARE_BITMAP(rxq_ena, ICE_MAX_RSS_QS_PER_VF);
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index dab3cd5d300e..e24e3f5017ca 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -507,7 +507,7 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 	vfres->vsi_res[0].vsi_type = VIRTCHNL_VSI_SRIOV;
 	vfres->vsi_res[0].num_queue_pairs = vsi->num_txq;
 	ether_addr_copy(vfres->vsi_res[0].default_mac_addr,
-			vf->hw_lan_addr.addr);
+			vf->hw_lan_addr);
 
 	/* match guest capabilities */
 	vf->driver_caps = vfres->vf_cap_flags;
@@ -1802,10 +1802,10 @@ ice_vfhw_mac_add(struct ice_vf *vf, struct virtchnl_ether_addr *vc_ether_addr)
 	 * was correctly specified over VIRTCHNL
 	 */
 	if ((ice_is_vc_addr_legacy(vc_ether_addr) &&
-	     is_zero_ether_addr(vf->hw_lan_addr.addr)) ||
+	     is_zero_ether_addr(vf->hw_lan_addr)) ||
 	    ice_is_vc_addr_primary(vc_ether_addr)) {
-		ether_addr_copy(vf->dev_lan_addr.addr, mac_addr);
-		ether_addr_copy(vf->hw_lan_addr.addr, mac_addr);
+		ether_addr_copy(vf->dev_lan_addr, mac_addr);
+		ether_addr_copy(vf->hw_lan_addr, mac_addr);
 	}
 
 	/* hardware and device MACs are already set, but its possible that the
@@ -1836,7 +1836,7 @@ ice_vc_add_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi,
 	int ret;
 
 	/* device MAC already added */
-	if (ether_addr_equal(mac_addr, vf->dev_lan_addr.addr))
+	if (ether_addr_equal(mac_addr, vf->dev_lan_addr))
 		return 0;
 
 	if (is_unicast_ether_addr(mac_addr) && !ice_can_vf_change_mac(vf)) {
@@ -1891,8 +1891,8 @@ ice_update_legacy_cached_mac(struct ice_vf *vf,
 	    ice_is_legacy_umac_expired(&vf->legacy_last_added_umac))
 		return;
 
-	ether_addr_copy(vf->dev_lan_addr.addr, vf->legacy_last_added_umac.addr);
-	ether_addr_copy(vf->hw_lan_addr.addr, vf->legacy_last_added_umac.addr);
+	ether_addr_copy(vf->dev_lan_addr, vf->legacy_last_added_umac.addr);
+	ether_addr_copy(vf->hw_lan_addr, vf->legacy_last_added_umac.addr);
 }
 
 /**
@@ -1906,15 +1906,15 @@ ice_vfhw_mac_del(struct ice_vf *vf, struct virtchnl_ether_addr *vc_ether_addr)
 	u8 *mac_addr = vc_ether_addr->addr;
 
 	if (!is_valid_ether_addr(mac_addr) ||
-	    !ether_addr_equal(vf->dev_lan_addr.addr, mac_addr))
+	    !ether_addr_equal(vf->dev_lan_addr, mac_addr))
 		return;
 
 	/* allow the device MAC to be repopulated in the add flow and don't
-	 * clear the hardware MAC (i.e. hw_lan_addr.addr) here as that is meant
+	 * clear the hardware MAC (i.e. hw_lan_addr) here as that is meant
 	 * to be persistent on VM reboot and across driver unload/load, which
 	 * won't work if we clear the hardware MAC here
 	 */
-	eth_zero_addr(vf->dev_lan_addr.addr);
+	eth_zero_addr(vf->dev_lan_addr);
 
 	ice_update_legacy_cached_mac(vf, vc_ether_addr);
 }
@@ -1934,7 +1934,7 @@ ice_vc_del_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi,
 	int status;
 
 	if (!ice_can_vf_change_mac(vf) &&
-	    ether_addr_equal(vf->dev_lan_addr.addr, mac_addr))
+	    ether_addr_equal(vf->dev_lan_addr, mac_addr))
 		return 0;
 
 	status = ice_fltr_remove_mac(vsi, mac_addr, ICE_FWD_TO_VSI);
@@ -3733,7 +3733,7 @@ static int ice_vc_repr_add_mac(struct ice_vf *vf, u8 *msg)
 		int result;
 
 		if (!is_unicast_ether_addr(mac_addr) ||
-		    ether_addr_equal(mac_addr, vf->hw_lan_addr.addr))
+		    ether_addr_equal(mac_addr, vf->hw_lan_addr))
 			continue;
 
 		if (vf->pf_set_mac) {
-- 
2.39.1.405.gd4c25cc71f83

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
