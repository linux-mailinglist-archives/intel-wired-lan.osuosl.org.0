Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B2F3F2404
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Aug 2021 02:06:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F18281022;
	Fri, 20 Aug 2021 00:06:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bqVyov40mI0u; Fri, 20 Aug 2021 00:06:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6365F817BA;
	Fri, 20 Aug 2021 00:06:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D9BCD1BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 00:05:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B8D9B4023F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 00:05:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ivG6mBv4Dp2q for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Aug 2021 00:05:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 54932401D8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 00:05:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10081"; a="280413582"
X-IronPort-AV: E=Sophos;i="5.84,336,1620716400"; d="scan'208";a="280413582"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 17:05:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,336,1620716400"; d="scan'208";a="512317481"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
 by fmsmga004.fm.intel.com with ESMTP; 19 Aug 2021 17:05:30 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 19 Aug 2021 17:08:54 -0700
Message-Id: <20210820000859.680522-8-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210820000859.680522-1-anthony.l.nguyen@intel.com>
References: <20210820000859.680522-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue v4 07/12] ice: set and release
 switchdev environment
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

From: Grzegorz Nitka <grzegorz.nitka@intel.com>

Switchdev environment has to be set up when user create VFs
and eswitch mode is switchdev. Release is done when user
delete all VFs.

Data path in this implementation is based on control plane VSI.
This VSI is used to pass traffic from port representors to
coresponfing VFs and vice versa. Default TX rule has to be
added to forward packet to control plane VSI. This will redirect
packets from VFs which don't match other rules to control plane
VSI.

On RX site default rule is added on uplink VSI to receive all
traffic that doesn't match other rules. When setting switchdev
environment all other rules from VFs should be removed. Packet to
VFs will be forwarded by control plane VSI.

As VF without any mac rules can't send any packet because of
antispoof mechanism, VSI antispoof should be turned off on each VFs.

To send packet from representor to correct VSI, destintion VSI
field in TX descriptor will have to be filled. Allow that by
setting destination override bit in control plane VSI security config.

Packet from VFs will be received on control plane VSI. Driver
should decide to which netdev forward the packet. Decision is
made based on src_vsi field from descriptor. There is a target
netdev list in control plane VSI struct which choose netdev
based on src_vsi number.

Co-developed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |  23 ++
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 396 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_eswitch.h |  16 +-
 drivers/net/ethernet/intel/ice/ice_main.c    |  19 +-
 drivers/net/ethernet/intel/ice/ice_repr.c    |  12 +
 drivers/net/ethernet/intel/ice/ice_repr.h    |   2 +
 6 files changed, 455 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index c3127076cf91..4acfee8728f7 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -343,6 +343,8 @@ struct ice_vsi {
 	u16 num_xdp_txq;		 /* Used XDP queues */
 	u8 xdp_mapping_mode;		 /* ICE_MAP_MODE_[CONTIG|SCATTER] */
 
+	struct net_device **target_netdevs;
+
 	/* setup back reference, to which aggregator node this VSI
 	 * corresponds to
 	 */
@@ -402,6 +404,12 @@ enum ice_pf_flags {
 	ICE_PF_FLAGS_NBITS		/* must be last */
 };
 
+struct ice_switchdev_info {
+	struct ice_vsi *control_vsi;
+	struct ice_vsi *uplink_vsi;
+	bool is_running;
+};
+
 struct ice_agg_node {
 	u32 agg_id;
 #define ICE_MAX_VSIS_IN_AGG_NODE	64
@@ -499,6 +507,8 @@ struct ice_pf {
 	struct ice_link_default_override_tlv link_dflt_override;
 	struct ice_lag *lag; /* Link Aggregation information */
 
+	struct ice_switchdev_info switchdev;
+
 #define ICE_INVALID_AGG_NODE_ID		0
 #define ICE_PF_AGG_NODE_ID_START	1
 #define ICE_MAX_PF_AGG_NODES		32
@@ -608,6 +618,18 @@ static inline struct ice_vsi *ice_get_ctrl_vsi(struct ice_pf *pf)
 	return pf->vsi[pf->ctrl_vsi_idx];
 }
 
+/**
+ * ice_is_switchdev_running - check if switchdev is configured
+ * @pf: pointer to PF structure
+ *
+ * Returns true if eswitch mode is set to DEVLINK_ESWITCH_MODE_SWITCHDEV
+ * and switchdev is configured, false otherwise.
+ */
+static inline bool ice_is_switchdev_running(struct ice_pf *pf)
+{
+	return pf->switchdev.is_running;
+}
+
 /**
  * ice_set_sriov_cap - enable SRIOV in PF flags
  * @pf: PF struct
@@ -636,6 +658,7 @@ bool netif_is_ice(struct net_device *dev);
 int ice_vsi_setup_tx_rings(struct ice_vsi *vsi);
 int ice_vsi_setup_rx_rings(struct ice_vsi *vsi);
 int ice_vsi_open_ctrl(struct ice_vsi *vsi);
+int ice_vsi_open(struct ice_vsi *vsi);
 void ice_set_ethtool_ops(struct net_device *netdev);
 void ice_set_ethtool_safe_mode_ops(struct net_device *netdev);
 u16 ice_get_avail_txq_count(struct ice_pf *pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 1370c41b77ab..094094125798 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -2,9 +2,373 @@
 /* Copyright (C) 2019-2021, Intel Corporation. */
 
 #include "ice.h"
+#include "ice_lib.h"
 #include "ice_eswitch.h"
+#include "ice_fltr.h"
+#include "ice_repr.h"
 #include "ice_devlink.h"
 
+/**
+ * ice_eswitch_setup_env - configure switchdev HW filters
+ * @pf: pointer to PF struct
+ *
+ * This function adds HW filters configuration specific for switchdev
+ * mode.
+ */
+static int ice_eswitch_setup_env(struct ice_pf *pf)
+{
+	struct ice_vsi *uplink_vsi = pf->switchdev.uplink_vsi;
+	struct ice_vsi *ctrl_vsi = pf->switchdev.control_vsi;
+	struct ice_port_info *pi = pf->hw.port_info;
+	bool rule_added = false;
+
+	ice_vsi_manage_vlan_stripping(ctrl_vsi, false);
+
+	ice_remove_vsi_fltr(&pf->hw, uplink_vsi->idx);
+
+	if (ice_vsi_add_vlan(uplink_vsi, 0, ICE_FWD_TO_VSI))
+		goto err_def_rx;
+
+	if (!ice_is_dflt_vsi_in_use(uplink_vsi->vsw)) {
+		if (ice_set_dflt_vsi(uplink_vsi->vsw, uplink_vsi))
+			goto err_def_rx;
+		rule_added = true;
+	}
+
+	if (ice_cfg_dflt_vsi(pi->hw, ctrl_vsi->idx, true, ICE_FLTR_TX))
+		goto err_def_tx;
+
+	if (ice_vsi_update_security(uplink_vsi, ice_vsi_ctx_set_allow_override))
+		goto err_override_uplink;
+
+	if (ice_vsi_update_security(ctrl_vsi, ice_vsi_ctx_set_allow_override))
+		goto err_override_control;
+
+	if (ice_fltr_update_flags_dflt_rule(ctrl_vsi, pi->dflt_tx_vsi_rule_id,
+					    ICE_FLTR_TX,
+					    ICE_SINGLE_ACT_LB_ENABLE))
+		goto err_update_action;
+
+	return 0;
+
+err_update_action:
+	ice_vsi_update_security(ctrl_vsi, ice_vsi_ctx_clear_allow_override);
+err_override_control:
+	ice_vsi_update_security(uplink_vsi, ice_vsi_ctx_clear_allow_override);
+err_override_uplink:
+	ice_cfg_dflt_vsi(pi->hw, ctrl_vsi->idx, false, ICE_FLTR_TX);
+err_def_tx:
+	if (rule_added)
+		ice_clear_dflt_vsi(uplink_vsi->vsw);
+err_def_rx:
+	ice_fltr_add_mac_and_broadcast(uplink_vsi,
+				       uplink_vsi->port_info->mac.perm_addr,
+				       ICE_FWD_TO_VSI);
+	return -ENODEV;
+}
+
+/**
+ * ice_eswitch_remap_ring - reconfigure ring of switchdev ctrl VSI
+ * @ring: pointer to ring
+ * @q_vector: pointer of q_vector which is connected with this ring
+ * @netdev: netdevice connected with this ring
+ */
+static void
+ice_eswitch_remap_ring(struct ice_ring *ring, struct ice_q_vector *q_vector,
+		       struct net_device *netdev)
+{
+	ring->q_vector = q_vector;
+	ring->next = NULL;
+	ring->netdev = netdev;
+}
+
+/**
+ * ice_eswitch_remap_rings_to_vectors - reconfigure rings of switchdev ctrl VSI
+ * @pf: pointer to PF struct
+ *
+ * In switchdev number of allocated Tx/Rx rings is equal.
+ *
+ * This function fills q_vectors structures associated with representator and
+ * move each ring pairs to port representator netdevs. Each port representor
+ * will have dedicated 1 Tx/Rx ring pair, so number of rings pair is equal to
+ * number of VFs.
+ */
+static void ice_eswitch_remap_rings_to_vectors(struct ice_pf *pf)
+{
+	struct ice_vsi *vsi = pf->switchdev.control_vsi;
+	int q_id;
+
+	ice_for_each_txq(vsi, q_id) {
+		struct ice_repr *repr = pf->vf[q_id].repr;
+		struct ice_q_vector *q_vector = repr->q_vector;
+		struct ice_ring *tx_ring = vsi->tx_rings[q_id];
+		struct ice_ring *rx_ring = vsi->rx_rings[q_id];
+
+		q_vector->vsi = vsi;
+		q_vector->reg_idx = vsi->q_vectors[0]->reg_idx;
+
+		q_vector->num_ring_tx = 1;
+		q_vector->tx.ring = tx_ring;
+		ice_eswitch_remap_ring(tx_ring, q_vector, repr->netdev);
+		/* In switchdev mode, from OS stack perspective, there is only
+		 * one queue for given netdev, so it needs to be indexed as 0.
+		 */
+		tx_ring->q_index = 0;
+
+		q_vector->num_ring_rx = 1;
+		q_vector->rx.ring = rx_ring;
+		ice_eswitch_remap_ring(rx_ring, q_vector, repr->netdev);
+	}
+}
+
+/**
+ * ice_eswitch_setup_reprs - configure port reprs to run in switchdev mode
+ * @pf: pointer to PF struct
+ */
+static int ice_eswitch_setup_reprs(struct ice_pf *pf)
+{
+	struct ice_vsi *ctrl_vsi = pf->switchdev.control_vsi;
+	int max_vsi_num = 0;
+	int i;
+
+	ice_for_each_vf(pf, i) {
+		struct ice_vsi *vsi = pf->vf[i].repr->src_vsi;
+		struct ice_vf *vf = &pf->vf[i];
+
+		ice_remove_vsi_fltr(&pf->hw, vsi->idx);
+		vf->repr->dst = metadata_dst_alloc(0, METADATA_HW_PORT_MUX,
+						   GFP_KERNEL);
+		if (!vf->repr->dst) {
+			ice_fltr_add_mac_and_broadcast(vsi,
+						       vf->hw_lan_addr.addr,
+						       ICE_FWD_TO_VSI);
+			goto err;
+		}
+
+		if (ice_vsi_update_security(vsi, ice_vsi_ctx_clear_antispoof)) {
+			ice_fltr_add_mac_and_broadcast(vsi,
+						       vf->hw_lan_addr.addr,
+						       ICE_FWD_TO_VSI);
+			metadata_dst_free(vf->repr->dst);
+			goto err;
+		}
+
+		if (ice_vsi_add_vlan(vsi, 0, ICE_FWD_TO_VSI)) {
+			ice_fltr_add_mac_and_broadcast(vsi,
+						       vf->hw_lan_addr.addr,
+						       ICE_FWD_TO_VSI);
+			metadata_dst_free(vf->repr->dst);
+			ice_vsi_update_security(vsi, ice_vsi_ctx_set_antispoof);
+			goto err;
+		}
+
+		if (max_vsi_num < vsi->vsi_num)
+			max_vsi_num = vsi->vsi_num;
+
+		netif_napi_add(vf->repr->netdev, &vf->repr->q_vector->napi, ice_napi_poll,
+			       NAPI_POLL_WEIGHT);
+
+		netif_keep_dst(vf->repr->netdev);
+	}
+
+	kfree(ctrl_vsi->target_netdevs);
+
+	ctrl_vsi->target_netdevs = kcalloc(max_vsi_num + 1,
+					   sizeof(*ctrl_vsi->target_netdevs),
+					   GFP_KERNEL);
+	if (!ctrl_vsi->target_netdevs)
+		goto err;
+
+	ice_for_each_vf(pf, i) {
+		struct ice_repr *repr = pf->vf[i].repr;
+		struct ice_vsi *vsi = repr->src_vsi;
+		struct metadata_dst *dst;
+
+		ctrl_vsi->target_netdevs[vsi->vsi_num] = repr->netdev;
+
+		dst = repr->dst;
+		dst->u.port_info.port_id = vsi->vsi_num;
+		dst->u.port_info.lower_dev = repr->netdev;
+		ice_repr_set_traffic_vsi(repr, ctrl_vsi);
+	}
+
+	return 0;
+
+err:
+	for (i = i - 1; i >= 0; i--) {
+		struct ice_vsi *vsi = pf->vf[i].repr->src_vsi;
+		struct ice_vf *vf = &pf->vf[i];
+
+		ice_vsi_update_security(vsi, ice_vsi_ctx_set_antispoof);
+		metadata_dst_free(vf->repr->dst);
+		ice_fltr_add_mac_and_broadcast(vsi, vf->hw_lan_addr.addr,
+					       ICE_FWD_TO_VSI);
+	}
+
+	return -ENODEV;
+}
+
+/**
+ * ice_eswitch_release_reprs - clear PR VSIs configuration
+ * @pf: poiner to PF struct
+ * @ctrl_vsi: pointer to switchdev control VSI
+ */
+static void ice_eswitch_release_reprs(struct ice_pf *pf,
+				      struct ice_vsi *ctrl_vsi)
+{
+	int i;
+
+	kfree(ctrl_vsi->target_netdevs);
+	ice_for_each_vf(pf, i) {
+		struct ice_vsi *vsi = pf->vf[i].repr->src_vsi;
+		struct ice_vf *vf = &pf->vf[i];
+
+		ice_vsi_update_security(vsi, ice_vsi_ctx_set_antispoof);
+		metadata_dst_free(vf->repr->dst);
+		ice_fltr_add_mac_and_broadcast(vsi, vf->hw_lan_addr.addr,
+					       ICE_FWD_TO_VSI);
+
+		netif_napi_del(&vf->repr->q_vector->napi);
+	}
+}
+
+/**
+ * ice_eswitch_release_env - clear switchdev HW filters
+ * @pf: pointer to PF struct
+ *
+ * This function removes HW filters configuration specific for switchdev
+ * mode and restores default legacy mode settings.
+ */
+static void
+ice_eswitch_release_env(struct ice_pf *pf)
+{
+	struct ice_vsi *uplink_vsi = pf->switchdev.uplink_vsi;
+	struct ice_vsi *ctrl_vsi = pf->switchdev.control_vsi;
+
+	ice_vsi_update_security(ctrl_vsi, ice_vsi_ctx_clear_allow_override);
+	ice_vsi_update_security(uplink_vsi, ice_vsi_ctx_clear_allow_override);
+	ice_cfg_dflt_vsi(&pf->hw, ctrl_vsi->idx, false, ICE_FLTR_TX);
+	ice_clear_dflt_vsi(uplink_vsi->vsw);
+	ice_fltr_add_mac_and_broadcast(uplink_vsi,
+				       uplink_vsi->port_info->mac.perm_addr,
+				       ICE_FWD_TO_VSI);
+}
+
+/**
+ * ice_eswitch_vsi_setup - configure switchdev control VSI
+ * @pf: pointer to PF structure
+ * @pi: pointer to port_info structure
+ */
+static struct ice_vsi *
+ice_eswitch_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
+{
+	return NULL;
+}
+
+/**
+ * ice_eswitch_napi_enable - enable NAPI for all port representors
+ * @pf: pointer to PF structure
+ */
+static void ice_eswitch_napi_enable(struct ice_pf *pf)
+{
+	int i;
+
+	ice_for_each_vf(pf, i)
+		napi_enable(&pf->vf[i].repr->q_vector->napi);
+}
+
+/**
+ * ice_eswitch_napi_disable - disable NAPI for all port representors
+ * @pf: pointer to PF structure
+ */
+static void ice_eswitch_napi_disable(struct ice_pf *pf)
+{
+	int i;
+
+	ice_for_each_vf(pf, i)
+		napi_disable(&pf->vf[i].repr->q_vector->napi);
+}
+
+/**
+ * ice_eswitch_set_rxdid - configure rxdid on all rx queues from VSI
+ * @vsi: VSI to setup rxdid on
+ * @rxdid: flex descriptor id
+ */
+static void ice_eswitch_set_rxdid(struct ice_vsi *vsi, u32 rxdid)
+{
+	struct ice_hw *hw = &vsi->back->hw;
+	int i;
+
+	ice_for_each_rxq(vsi, i) {
+		struct ice_ring *ring = vsi->rx_rings[i];
+		u16 pf_q = vsi->rxq_map[ring->q_index];
+
+		ice_write_qrxflxp_cntxt(hw, pf_q, rxdid, 0x3, true);
+	}
+}
+
+/**
+ * ice_eswitch_enable_switchdev - configure eswitch in switchdev mode
+ * @pf: pointer to PF structure
+ */
+static int
+ice_eswitch_enable_switchdev(struct ice_pf *pf)
+{
+	struct ice_vsi *ctrl_vsi;
+
+	pf->switchdev.control_vsi = ice_eswitch_vsi_setup(pf, pf->hw.port_info);
+	if (!pf->switchdev.control_vsi)
+		return -ENODEV;
+
+	ctrl_vsi = pf->switchdev.control_vsi;
+	pf->switchdev.uplink_vsi = ice_get_main_vsi(pf);
+	if (!pf->switchdev.uplink_vsi)
+		goto err_vsi;
+
+	if (ice_eswitch_setup_env(pf))
+		goto err_vsi;
+
+	if (ice_repr_add_for_all_vfs(pf))
+		goto err_repr_add;
+
+	if (ice_eswitch_setup_reprs(pf))
+		goto err_setup_reprs;
+
+	ice_eswitch_remap_rings_to_vectors(pf);
+
+	if (ice_vsi_open(ctrl_vsi))
+		goto err_setup_reprs;
+
+	ice_eswitch_napi_enable(pf);
+
+	ice_eswitch_set_rxdid(ctrl_vsi, ICE_RXDID_FLEX_NIC_2);
+
+	return 0;
+
+err_setup_reprs:
+	ice_repr_rem_from_all_vfs(pf);
+err_repr_add:
+	ice_eswitch_release_env(pf);
+err_vsi:
+	ice_vsi_release(ctrl_vsi);
+	return -ENODEV;
+}
+
+/**
+ * ice_eswitch_disable_switchdev - disable switchdev resources
+ * @pf: pointer to PF structure
+ */
+static void ice_eswitch_disable_switchdev(struct ice_pf *pf)
+{
+	struct ice_vsi *ctrl_vsi = pf->switchdev.control_vsi;
+
+	ice_eswitch_napi_disable(pf);
+	ice_eswitch_release_env(pf);
+	ice_vsi_release(ctrl_vsi);
+	ice_eswitch_release_reprs(pf, ctrl_vsi);
+	ice_repr_rem_from_all_vfs(pf);
+}
+
 /**
  * ice_eswitch_mode_set - set new eswitch mode
  * @devlink: pointer to devlink structure
@@ -60,3 +424,35 @@ int ice_eswitch_mode_get(struct devlink *devlink, u16 *mode)
 	*mode = pf->eswitch_mode;
 	return 0;
 }
+
+/**
+ * ice_eswitch_release - cleanup eswitch
+ * @pf: pointer to PF structure
+ */
+void ice_eswitch_release(struct ice_pf *pf)
+{
+	if (pf->eswitch_mode == DEVLINK_ESWITCH_MODE_LEGACY)
+		return;
+
+	ice_eswitch_disable_switchdev(pf);
+	pf->switchdev.is_running = false;
+}
+
+/**
+ * ice_eswitch_configure - configure eswitch
+ * @pf: pointer to PF structure
+ */
+int ice_eswitch_configure(struct ice_pf *pf)
+{
+	int status;
+
+	if (pf->eswitch_mode == DEVLINK_ESWITCH_MODE_LEGACY || pf->switchdev.is_running)
+		return 0;
+
+	status = ice_eswitch_enable_switchdev(pf);
+	if (status)
+		return status;
+
+	pf->switchdev.is_running = true;
+	return 0;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.h b/drivers/net/ethernet/intel/ice/ice_eswitch.h
index 0aa6fb7e0c4e..919eb0e051d5 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.h
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.h
@@ -6,14 +6,23 @@
 #include <net/devlink.h>
 
 #ifdef CONFIG_ICE_SWITCHDEV
+void ice_eswitch_release(struct ice_pf *pf);
+int ice_eswitch_configure(struct ice_pf *pf);
+
 int ice_eswitch_mode_get(struct devlink *devlink, u16 *mode);
 int
 ice_eswitch_mode_set(struct devlink *devlink, u16 mode,
 		     struct netlink_ext_ack *extack);
 bool ice_is_eswitch_mode_switchdev(struct ice_pf *pf);
 #else /* CONFIG_ICE_SWITCHDEV */
-static inline int
-ice_eswitch_mode_get(struct devlink *devlink, u16 *mode)
+static inline void ice_eswitch_release(struct ice_pf *pf) { }
+
+static inline int ice_eswitch_configure(struct ice_pf *pf)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline int ice_eswitch_mode_get(struct devlink *devlink, u16 *mode)
 {
 	return DEVLINK_ESWITCH_MODE_LEGACY;
 }
@@ -25,8 +34,7 @@ ice_eswitch_mode_set(struct devlink *devlink, u16 mode,
 	return -EOPNOTSUPP;
 }
 
-static inline bool
-ice_is_eswitch_mode_switchdev(struct ice_pf *pf)
+static inline bool ice_is_eswitch_mode_switchdev(struct ice_pf *pf)
 {
 	return false;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index ae04ca1888fa..73969ab4af99 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -46,7 +46,6 @@ static DEFINE_IDA(ice_aux_ida);
 static struct workqueue_struct *ice_wq;
 static const struct net_device_ops ice_netdev_safe_mode_ops;
 static const struct net_device_ops ice_netdev_ops;
-static int ice_vsi_open(struct ice_vsi *vsi);
 
 static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type);
 
@@ -6175,7 +6174,7 @@ int ice_vsi_open_ctrl(struct ice_vsi *vsi)
  *
  * Returns 0 on success, negative value on error
  */
-static int ice_vsi_open(struct ice_vsi *vsi)
+int ice_vsi_open(struct ice_vsi *vsi)
 {
 	char int_name[ICE_INT_NAME_STR_LEN];
 	struct ice_pf *pf = vsi->back;
@@ -6200,14 +6199,16 @@ static int ice_vsi_open(struct ice_vsi *vsi)
 	if (err)
 		goto err_setup_rx;
 
-	/* Notify the stack of the actual queue counts. */
-	err = netif_set_real_num_tx_queues(vsi->netdev, vsi->num_txq);
-	if (err)
-		goto err_set_qs;
+	if (vsi->type == ICE_VSI_PF) {
+		/* Notify the stack of the actual queue counts. */
+		err = netif_set_real_num_tx_queues(vsi->netdev, vsi->num_txq);
+		if (err)
+			goto err_set_qs;
 
-	err = netif_set_real_num_rx_queues(vsi->netdev, vsi->num_rxq);
-	if (err)
-		goto err_set_qs;
+		err = netif_set_real_num_rx_queues(vsi->netdev, vsi->num_rxq);
+		if (err)
+			goto err_set_qs;
+	}
 
 	err = ice_up_complete(vsi);
 	if (err)
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index d7fa1ff487a5..c88c5e65dc01 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -265,3 +265,15 @@ void ice_repr_rem_from_all_vfs(struct ice_pf *pf)
 		ice_vc_set_dflt_vf_ops(&vf->vc_ops);
 	}
 }
+
+/**
+ * ice_repr_set_traffic_vsi - set traffic VSI for port representor
+ * @repr: repr on with VSI will be set
+ * @vsi: pointer to VSI that will be used by port representor to pass traffic
+ */
+void ice_repr_set_traffic_vsi(struct ice_repr *repr, struct ice_vsi *vsi)
+{
+	struct ice_netdev_priv *np = netdev_priv(repr->netdev);
+
+	np->vsi = vsi;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.h b/drivers/net/ethernet/intel/ice/ice_repr.h
index 78b0419b9254..3c3388c995bf 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.h
+++ b/drivers/net/ethernet/intel/ice/ice_repr.h
@@ -17,6 +17,8 @@ struct ice_repr {
 int ice_repr_add_for_all_vfs(struct ice_pf *pf);
 void ice_repr_rem_from_all_vfs(struct ice_pf *pf);
 
+void ice_repr_set_traffic_vsi(struct ice_repr *repr, struct ice_vsi *vsi);
+
 struct ice_repr *ice_netdev_to_repr(struct net_device *netdev);
 bool ice_is_port_repr_netdev(struct net_device *netdev);
 #endif
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
