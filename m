Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5581576B3C6
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 13:49:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E864340BAF;
	Tue,  1 Aug 2023 11:49:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E864340BAF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690890589;
	bh=Zn60e5b/fivtVdWp909zCEk9jHI126I/ykOK7am1qUw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oc3nQCKNKl6SRAsn5CLXm8vhzLz2PBjEC9BRTjcE3gpPkyL62yo2d8JsGpLeDvLzL
	 J4zjXvg5sXhmjVP5Un8F4EZ7ajoL2SaiLAt+Ve+2P0GVMDwKVbuwviQ8iOO57117Rl
	 MAQPYOxz0GYRmyJ52/XnXSdrWXPt3nGwlxNIJIdgf/BWlCWNaQNvl/8aKyjCZQ2NSm
	 n5mvQkTomhraN6lBv6aUxB8Fyq+La4k4XwixVLFgzF53G21peL/eEby5aydi61tvgs
	 L1tQVA4q/IX3zlFymZdx9G7xb26dJ8htQTK+9S6z8fpv150QAKkpww3j8ps7MOEMcO
	 YJIfIggDr6HNA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kKiVt7nkLLN3; Tue,  1 Aug 2023 11:49:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E8161401A1;
	Tue,  1 Aug 2023 11:49:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E8161401A1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2C5951BF290
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 11:49:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9AF6340201
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 11:49:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9AF6340201
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xakFjjJ8REpi for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 11:49:25 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 538A8401C9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 11:49:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 538A8401C9
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="433112518"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="433112518"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 04:49:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="902528652"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="902528652"
Received: from s240.igk.intel.com (HELO DevelopmentVM.nql.local)
 ([10.102.18.202])
 by orsmga005.jf.intel.com with ESMTP; 01 Aug 2023 04:49:23 -0700
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  1 Aug 2023 13:53:07 +0200
Message-Id: <20230801115309.697331-5-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230801115309.697331-1-jan.sokolowski@intel.com>
References: <20230801115309.697331-1-jan.sokolowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690890565; x=1722426565;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y4uBhRV/1W6brjYQWsFs7cqbdsaaL9JSZmNyCgkp9Qo=;
 b=EoL6EZ5uxh/Rh4gC7KuXmHB+cicnbW29Ba0xUjtnnobap8nycRHyNeKe
 Pt0Mza2/UEsPVaHvXQ+7zkJhc/I+pbjTQHvIZf6Nr5Yv/prxGsP/n+egm
 VFOvTb3wEvSx+bu6/rfNSbHpQz243t0llu8NfrJ7ey7apxA6D4QTYJMFK
 uOQfDlfQ4wtX/SXQc5h6QnGhk9RncUSD3MUh5H7yfmYbFCAQd/67sSSll
 DA5KGSsewDZ1WCPPlxQEtOWRSHsDCyHOqD+xVzLTeivkT6xeJ/uwGiygI
 OxCRsh65nDT9ppSgyso2TQHBHHafqdxNOu2adJ4aJq0umSOka3/i60yTt
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EoL6EZ5u
Subject: [Intel-wired-lan] [PATCH iwl-next v2 4/6] ice: refactor ice_vf_lib
 to make functions static
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

Refactor ice_vf_lib.c/_private.h in order to make as many methods
as possible static.

Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 468 +++++++++---------
 .../ethernet/intel/ice/ice_vf_lib_private.h   |   2 -
 2 files changed, 234 insertions(+), 236 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index b26ce4425f45..20c4beaa05d8 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -322,6 +322,240 @@ static int ice_vf_rebuild_vsi(struct ice_vf *vf)
 	return 0;
 }
 
+/**
+ * ice_vf_rebuild_host_vlan_cfg - add VLAN 0 filter or rebuild the Port VLAN
+ * @vf: VF to add MAC filters for
+ * @vsi: Pointer to VSI
+ *
+ * Called after a VF VSI has been re-added/rebuilt during reset. The PF driver
+ * always re-adds either a VLAN 0 or port VLAN based filter after reset.
+ */
+static int ice_vf_rebuild_host_vlan_cfg(struct ice_vf *vf, struct ice_vsi *vsi)
+{
+	struct ice_vsi_vlan_ops *vlan_ops = ice_get_compat_vsi_vlan_ops(vsi);
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	int err;
+
+	if (ice_vf_is_port_vlan_ena(vf)) {
+		err = vlan_ops->set_port_vlan(vsi, &vf->port_vlan_info);
+		if (err) {
+			dev_err(dev, "failed to configure port VLAN via VSI parameters for VF %u, error %d\n",
+				vf->vf_id, err);
+			return err;
+		}
+
+		err = vlan_ops->add_vlan(vsi, &vf->port_vlan_info);
+	} else {
+		err = ice_vsi_add_vlan_zero(vsi);
+	}
+
+	if (err) {
+		dev_err(dev, "failed to add VLAN %u filter for VF %u during VF rebuild, error %d\n",
+			ice_vf_is_port_vlan_ena(vf) ?
+			ice_vf_get_port_vlan_id(vf) : 0, vf->vf_id, err);
+		return err;
+	}
+
+	err = vlan_ops->ena_rx_filtering(vsi);
+	if (err)
+		dev_warn(dev, "failed to enable Rx VLAN filtering for VF %d VSI %d during VF rebuild, error %d\n",
+			 vf->vf_id, vsi->idx, err);
+
+	return 0;
+}
+
+/**
+ * ice_vf_rebuild_host_tx_rate_cfg - re-apply the Tx rate limiting configuration
+ * @vf: VF to re-apply the configuration for
+ *
+ * Called after a VF VSI has been re-added/rebuild during reset. The PF driver
+ * needs to re-apply the host configured Tx rate limiting configuration.
+ */
+static int ice_vf_rebuild_host_tx_rate_cfg(struct ice_vf *vf)
+{
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
+	int err;
+
+	if (WARN_ON(!vsi))
+		return -EINVAL;
+
+	if (vf->min_tx_rate) {
+		err = ice_set_min_bw_limit(vsi, (u64)vf->min_tx_rate * 1000);
+		if (err) {
+			dev_err(dev, "failed to set min Tx rate to %d Mbps for VF %u, error %d\n",
+				vf->min_tx_rate, vf->vf_id, err);
+			return err;
+		}
+	}
+
+	if (vf->max_tx_rate) {
+		err = ice_set_max_bw_limit(vsi, (u64)vf->max_tx_rate * 1000);
+		if (err) {
+			dev_err(dev, "failed to set max Tx rate to %d Mbps for VF %u, error %d\n",
+				vf->max_tx_rate, vf->vf_id, err);
+			return err;
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * ice_vf_set_host_trust_cfg - set trust setting based on pre-reset value
+ * @vf: VF to configure trust setting for
+ */
+static void ice_vf_set_host_trust_cfg(struct ice_vf *vf)
+{
+	if (vf->trusted)
+		set_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
+	else
+		clear_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
+}
+
+/**
+ * ice_vf_rebuild_host_mac_cfg - add broadcast and the VF's perm_addr/LAA
+ * @vf: VF to add MAC filters for
+ *
+ * Called after a VF VSI has been re-added/rebuilt during reset. The PF driver
+ * always re-adds a broadcast filter and the VF's perm_addr/LAA after reset.
+ */
+static int ice_vf_rebuild_host_mac_cfg(struct ice_vf *vf)
+{
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
+	u8 broadcast[ETH_ALEN];
+	int status;
+
+	if (WARN_ON(!vsi))
+		return -EINVAL;
+
+	if (ice_is_eswitch_mode_switchdev(vf->pf))
+		return 0;
+
+	eth_broadcast_addr(broadcast);
+	status = ice_fltr_add_mac(vsi, broadcast, ICE_FWD_TO_VSI);
+	if (status) {
+		dev_err(dev, "failed to add broadcast MAC filter for VF %u, error %d\n",
+			vf->vf_id, status);
+		return status;
+	}
+
+	vf->num_mac++;
+
+	if (is_valid_ether_addr(vf->hw_lan_addr)) {
+		status = ice_fltr_add_mac(vsi, vf->hw_lan_addr,
+					  ICE_FWD_TO_VSI);
+		if (status) {
+			dev_err(dev, "failed to add default unicast MAC filter %pM for VF %u, error %d\n",
+				&vf->hw_lan_addr[0], vf->vf_id,
+				status);
+			return status;
+		}
+		vf->num_mac++;
+
+		ether_addr_copy(vf->dev_lan_addr, vf->hw_lan_addr);
+	}
+
+	return 0;
+}
+
+/**
+ * ice_vf_rebuild_aggregator_node_cfg - rebuild aggregator node config
+ * @vsi: Pointer to VSI
+ *
+ * This function moves VSI into corresponding scheduler aggregator node
+ * based on cached value of "aggregator node info" per VSI
+ */
+static void ice_vf_rebuild_aggregator_node_cfg(struct ice_vsi *vsi)
+{
+	struct ice_pf *pf = vsi->back;
+	struct device *dev;
+	int status;
+
+	if (!vsi->agg_node)
+		return;
+
+	dev = ice_pf_to_dev(pf);
+	if (vsi->agg_node->num_vsis == ICE_MAX_VSIS_IN_AGG_NODE) {
+		dev_dbg(dev,
+			"agg_id %u already has reached max_num_vsis %u\n",
+			vsi->agg_node->agg_id, vsi->agg_node->num_vsis);
+		return;
+	}
+
+	status = ice_move_vsi_to_agg(pf->hw.port_info, vsi->agg_node->agg_id,
+				     vsi->idx, vsi->tc_cfg.ena_tc);
+	if (status)
+		dev_dbg(dev, "unable to move VSI idx %u into aggregator %u node",
+			vsi->idx, vsi->agg_node->agg_id);
+	else
+		vsi->agg_node->num_vsis++;
+}
+
+/**
+ * ice_vf_rebuild_host_cfg - host admin configuration is persistent across reset
+ * @vf: VF to rebuild host configuration on
+ */
+static void ice_vf_rebuild_host_cfg(struct ice_vf *vf)
+{
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
+
+	if (WARN_ON(!vsi))
+		return;
+
+	ice_vf_set_host_trust_cfg(vf);
+
+	if (ice_vf_rebuild_host_mac_cfg(vf))
+		dev_err(dev, "failed to rebuild default MAC configuration for VF %d\n",
+			vf->vf_id);
+
+	if (ice_vf_rebuild_host_vlan_cfg(vf, vsi))
+		dev_err(dev, "failed to rebuild VLAN configuration for VF %u\n",
+			vf->vf_id);
+
+	if (ice_vf_rebuild_host_tx_rate_cfg(vf))
+		dev_err(dev, "failed to rebuild Tx rate limiting configuration for VF %u\n",
+			vf->vf_id);
+
+	if (ice_vsi_apply_spoofchk(vsi, vf->spoofchk))
+		dev_err(dev, "failed to rebuild spoofchk configuration for VF %d\n",
+			vf->vf_id);
+
+	/* rebuild aggregator node config for main VF VSI */
+	ice_vf_rebuild_aggregator_node_cfg(vsi);
+}
+
+/**
+ * ice_set_vf_state_qs_dis - Set VF queues state to disabled
+ * @vf: pointer to the VF structure
+ */
+static void ice_set_vf_state_qs_dis(struct ice_vf *vf)
+{
+	/* Clear Rx/Tx enabled queues flag */
+	bitmap_zero(vf->txq_ena, ICE_MAX_RSS_QS_PER_VF);
+	bitmap_zero(vf->rxq_ena, ICE_MAX_RSS_QS_PER_VF);
+	clear_bit(ICE_VF_STATE_QS_ENA, vf->vf_states);
+}
+
+/**
+ * ice_vf_set_initialized - VF is ready for VIRTCHNL communication
+ * @vf: VF to set in initialized state
+ *
+ * After this function the VF will be ready to receive/handle the
+ * VIRTCHNL_OP_GET_VF_RESOURCES message
+ */
+static void ice_vf_set_initialized(struct ice_vf *vf)
+{
+	ice_set_vf_state_qs_dis(vf);
+	clear_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states);
+	clear_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states);
+	clear_bit(ICE_VF_STATE_DIS, vf->vf_states);
+	set_bit(ICE_VF_STATE_INIT, vf->vf_states);
+	memset(&vf->vlan_v2_caps, 0, sizeof(vf->vlan_v2_caps));
+}
+
 /**
  * ice_vf_post_vsi_rebuild - Reset tasks that occur after VSI rebuild
  * @vf: the VF being reset
@@ -725,18 +959,6 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 	return err;
 }
 
-/**
- * ice_set_vf_state_qs_dis - Set VF queues state to disabled
- * @vf: pointer to the VF structure
- */
-static void ice_set_vf_state_qs_dis(struct ice_vf *vf)
-{
-	/* Clear Rx/Tx enabled queues flag */
-	bitmap_zero(vf->txq_ena, ICE_MAX_RSS_QS_PER_VF);
-	bitmap_zero(vf->rxq_ena, ICE_MAX_RSS_QS_PER_VF);
-	clear_bit(ICE_VF_STATE_QS_ENA, vf->vf_states);
-}
-
 /**
  * ice_set_vf_state_dis - Set VF state to disabled
  * @vf: pointer to the VF structure
@@ -977,211 +1199,6 @@ bool ice_is_vf_link_up(struct ice_vf *vf)
 			ICE_AQ_LINK_UP;
 }
 
-/**
- * ice_vf_set_host_trust_cfg - set trust setting based on pre-reset value
- * @vf: VF to configure trust setting for
- */
-static void ice_vf_set_host_trust_cfg(struct ice_vf *vf)
-{
-	if (vf->trusted)
-		set_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
-	else
-		clear_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
-}
-
-/**
- * ice_vf_rebuild_host_mac_cfg - add broadcast and the VF's perm_addr/LAA
- * @vf: VF to add MAC filters for
- *
- * Called after a VF VSI has been re-added/rebuilt during reset. The PF driver
- * always re-adds a broadcast filter and the VF's perm_addr/LAA after reset.
- */
-static int ice_vf_rebuild_host_mac_cfg(struct ice_vf *vf)
-{
-	struct device *dev = ice_pf_to_dev(vf->pf);
-	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
-	u8 broadcast[ETH_ALEN];
-	int status;
-
-	if (WARN_ON(!vsi))
-		return -EINVAL;
-
-	if (ice_is_eswitch_mode_switchdev(vf->pf))
-		return 0;
-
-	eth_broadcast_addr(broadcast);
-	status = ice_fltr_add_mac(vsi, broadcast, ICE_FWD_TO_VSI);
-	if (status) {
-		dev_err(dev, "failed to add broadcast MAC filter for VF %u, error %d\n",
-			vf->vf_id, status);
-		return status;
-	}
-
-	vf->num_mac++;
-
-	if (is_valid_ether_addr(vf->hw_lan_addr)) {
-		status = ice_fltr_add_mac(vsi, vf->hw_lan_addr,
-					  ICE_FWD_TO_VSI);
-		if (status) {
-			dev_err(dev, "failed to add default unicast MAC filter %pM for VF %u, error %d\n",
-				&vf->hw_lan_addr[0], vf->vf_id,
-				status);
-			return status;
-		}
-		vf->num_mac++;
-
-		ether_addr_copy(vf->dev_lan_addr, vf->hw_lan_addr);
-	}
-
-	return 0;
-}
-
-/**
- * ice_vf_rebuild_host_vlan_cfg - add VLAN 0 filter or rebuild the Port VLAN
- * @vf: VF to add MAC filters for
- * @vsi: Pointer to VSI
- *
- * Called after a VF VSI has been re-added/rebuilt during reset. The PF driver
- * always re-adds either a VLAN 0 or port VLAN based filter after reset.
- */
-static int ice_vf_rebuild_host_vlan_cfg(struct ice_vf *vf, struct ice_vsi *vsi)
-{
-	struct ice_vsi_vlan_ops *vlan_ops = ice_get_compat_vsi_vlan_ops(vsi);
-	struct device *dev = ice_pf_to_dev(vf->pf);
-	int err;
-
-	if (ice_vf_is_port_vlan_ena(vf)) {
-		err = vlan_ops->set_port_vlan(vsi, &vf->port_vlan_info);
-		if (err) {
-			dev_err(dev, "failed to configure port VLAN via VSI parameters for VF %u, error %d\n",
-				vf->vf_id, err);
-			return err;
-		}
-
-		err = vlan_ops->add_vlan(vsi, &vf->port_vlan_info);
-	} else {
-		err = ice_vsi_add_vlan_zero(vsi);
-	}
-
-	if (err) {
-		dev_err(dev, "failed to add VLAN %u filter for VF %u during VF rebuild, error %d\n",
-			ice_vf_is_port_vlan_ena(vf) ?
-			ice_vf_get_port_vlan_id(vf) : 0, vf->vf_id, err);
-		return err;
-	}
-
-	err = vlan_ops->ena_rx_filtering(vsi);
-	if (err)
-		dev_warn(dev, "failed to enable Rx VLAN filtering for VF %d VSI %d during VF rebuild, error %d\n",
-			 vf->vf_id, vsi->idx, err);
-
-	return 0;
-}
-
-/**
- * ice_vf_rebuild_host_tx_rate_cfg - re-apply the Tx rate limiting configuration
- * @vf: VF to re-apply the configuration for
- *
- * Called after a VF VSI has been re-added/rebuild during reset. The PF driver
- * needs to re-apply the host configured Tx rate limiting configuration.
- */
-static int ice_vf_rebuild_host_tx_rate_cfg(struct ice_vf *vf)
-{
-	struct device *dev = ice_pf_to_dev(vf->pf);
-	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
-	int err;
-
-	if (WARN_ON(!vsi))
-		return -EINVAL;
-
-	if (vf->min_tx_rate) {
-		err = ice_set_min_bw_limit(vsi, (u64)vf->min_tx_rate * 1000);
-		if (err) {
-			dev_err(dev, "failed to set min Tx rate to %d Mbps for VF %u, error %d\n",
-				vf->min_tx_rate, vf->vf_id, err);
-			return err;
-		}
-	}
-
-	if (vf->max_tx_rate) {
-		err = ice_set_max_bw_limit(vsi, (u64)vf->max_tx_rate * 1000);
-		if (err) {
-			dev_err(dev, "failed to set max Tx rate to %d Mbps for VF %u, error %d\n",
-				vf->max_tx_rate, vf->vf_id, err);
-			return err;
-		}
-	}
-
-	return 0;
-}
-
-/**
- * ice_vf_rebuild_aggregator_node_cfg - rebuild aggregator node config
- * @vsi: Pointer to VSI
- *
- * This function moves VSI into corresponding scheduler aggregator node
- * based on cached value of "aggregator node info" per VSI
- */
-static void ice_vf_rebuild_aggregator_node_cfg(struct ice_vsi *vsi)
-{
-	struct ice_pf *pf = vsi->back;
-	struct device *dev;
-	int status;
-
-	if (!vsi->agg_node)
-		return;
-
-	dev = ice_pf_to_dev(pf);
-	if (vsi->agg_node->num_vsis == ICE_MAX_VSIS_IN_AGG_NODE) {
-		dev_dbg(dev,
-			"agg_id %u already has reached max_num_vsis %u\n",
-			vsi->agg_node->agg_id, vsi->agg_node->num_vsis);
-		return;
-	}
-
-	status = ice_move_vsi_to_agg(pf->hw.port_info, vsi->agg_node->agg_id,
-				     vsi->idx, vsi->tc_cfg.ena_tc);
-	if (status)
-		dev_dbg(dev, "unable to move VSI idx %u into aggregator %u node",
-			vsi->idx, vsi->agg_node->agg_id);
-	else
-		vsi->agg_node->num_vsis++;
-}
-
-/**
- * ice_vf_rebuild_host_cfg - host admin configuration is persistent across reset
- * @vf: VF to rebuild host configuration on
- */
-void ice_vf_rebuild_host_cfg(struct ice_vf *vf)
-{
-	struct device *dev = ice_pf_to_dev(vf->pf);
-	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
-
-	if (WARN_ON(!vsi))
-		return;
-
-	ice_vf_set_host_trust_cfg(vf);
-
-	if (ice_vf_rebuild_host_mac_cfg(vf))
-		dev_err(dev, "failed to rebuild default MAC configuration for VF %d\n",
-			vf->vf_id);
-
-	if (ice_vf_rebuild_host_vlan_cfg(vf, vsi))
-		dev_err(dev, "failed to rebuild VLAN configuration for VF %u\n",
-			vf->vf_id);
-
-	if (ice_vf_rebuild_host_tx_rate_cfg(vf))
-		dev_err(dev, "failed to rebuild Tx rate limiting configuration for VF %u\n",
-			vf->vf_id);
-
-	if (ice_vsi_apply_spoofchk(vsi, vf->spoofchk))
-		dev_err(dev, "failed to rebuild spoofchk configuration for VF %d\n",
-			vf->vf_id);
-
-	/* rebuild aggregator node config for main VF VSI */
-	ice_vf_rebuild_aggregator_node_cfg(vsi);
-}
-
 /**
  * ice_vf_ctrl_invalidate_vsi - invalidate ctrl_vsi_idx to remove VSI access
  * @vf: VF that control VSI is being invalidated on
@@ -1310,23 +1327,6 @@ void ice_vf_vsi_release(struct ice_vf *vf)
 	ice_vf_invalidate_vsi(vf);
 }
 
-/**
- * ice_vf_set_initialized - VF is ready for VIRTCHNL communication
- * @vf: VF to set in initialized state
- *
- * After this function the VF will be ready to receive/handle the
- * VIRTCHNL_OP_GET_VF_RESOURCES message
- */
-void ice_vf_set_initialized(struct ice_vf *vf)
-{
-	ice_set_vf_state_qs_dis(vf);
-	clear_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states);
-	clear_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states);
-	clear_bit(ICE_VF_STATE_DIS, vf->vf_states);
-	set_bit(ICE_VF_STATE_INIT, vf->vf_states);
-	memset(&vf->vlan_v2_caps, 0, sizeof(vf->vlan_v2_caps));
-}
-
 /**
  * ice_get_vf_ctrl_vsi - Get first VF control VSI pointer
  * @pf: the PF private structure
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h b/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
index 6f3293b793b5..0c7e77c0a09f 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
@@ -32,13 +32,11 @@ int ice_vsi_apply_spoofchk(struct ice_vsi *vsi, bool enable);
 bool ice_is_vf_trusted(struct ice_vf *vf);
 bool ice_vf_has_no_qs_ena(struct ice_vf *vf);
 bool ice_is_vf_link_up(struct ice_vf *vf);
-void ice_vf_rebuild_host_cfg(struct ice_vf *vf);
 void ice_vf_ctrl_invalidate_vsi(struct ice_vf *vf);
 void ice_vf_ctrl_vsi_release(struct ice_vf *vf);
 struct ice_vsi *ice_vf_ctrl_vsi_setup(struct ice_vf *vf);
 int ice_vf_init_host_cfg(struct ice_vf *vf, struct ice_vsi *vsi);
 void ice_vf_invalidate_vsi(struct ice_vf *vf);
 void ice_vf_vsi_release(struct ice_vf *vf);
-void ice_vf_set_initialized(struct ice_vf *vf);
 
 #endif /* _ICE_VF_LIB_PRIVATE_H_ */
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
