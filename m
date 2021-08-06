Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4953E3151
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Aug 2021 23:45:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3AEC940409;
	Fri,  6 Aug 2021 21:45:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4DhPeLXPFnkT; Fri,  6 Aug 2021 21:45:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 93746402A3;
	Fri,  6 Aug 2021 21:45:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6A8761BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 21:45:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 58AAC40140
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 21:45:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CIsTDbsYj86u for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Aug 2021 21:45:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 036E1400DF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 21:45:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10068"; a="214476021"
X-IronPort-AV: E=Sophos;i="5.84,301,1620716400"; d="scan'208";a="214476021"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2021 14:45:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,301,1620716400"; d="scan'208";a="637859742"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by orsmga005.jf.intel.com with ESMTP; 06 Aug 2021 14:45:03 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  6 Aug 2021 14:31:47 -0700
Message-Id: <20210806213147.20581-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] ice: Add support for VF rate
 limiting
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

From: Brett Creeley <brett.creeley@intel.com>

Implement ndo_set_vf_rate to support setting of min_tx_rate and
max_tx_rate; set the appropriate bandwidth in the scheduler for the
node representing the specified VF VSI.

Co-developed-by: Tarun Singh <tarun.k.singh@intel.com>
Signed-off-by: Tarun Singh <tarun.k.singh@intel.com>
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c      | 174 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_lib.h      |   4 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |   1 +
 drivers/net/ethernet/intel/ice/ice_sched.c    | 129 +++++++++++++
 drivers/net/ethernet/intel/ice/ice_sched.h    |  10 +
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 160 +++++++++++++++-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  15 +-
 7 files changed, 489 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 5906783344d0..4c77ee5a1984 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3592,6 +3592,180 @@ int ice_clear_dflt_vsi(struct ice_sw *sw)
 	return 0;
 }
 
+/**
+ * ice_get_link_speed_mbps - get link speed in Mbps
+ * @vsi: the VSI whose link speed is being queried
+ *
+ * Return current VSI link speed and 0 if the speed is unknown.
+ */
+int ice_get_link_speed_mbps(struct ice_vsi *vsi)
+{
+	switch (vsi->port_info->phy.link_info.link_speed) {
+	case ICE_AQ_LINK_SPEED_100GB:
+		return SPEED_100000;
+	case ICE_AQ_LINK_SPEED_50GB:
+		return SPEED_50000;
+	case ICE_AQ_LINK_SPEED_40GB:
+		return SPEED_40000;
+	case ICE_AQ_LINK_SPEED_25GB:
+		return SPEED_25000;
+	case ICE_AQ_LINK_SPEED_20GB:
+		return SPEED_20000;
+	case ICE_AQ_LINK_SPEED_10GB:
+		return SPEED_10000;
+	case ICE_AQ_LINK_SPEED_5GB:
+		return SPEED_5000;
+	case ICE_AQ_LINK_SPEED_2500MB:
+		return SPEED_2500;
+	case ICE_AQ_LINK_SPEED_1000MB:
+		return SPEED_1000;
+	case ICE_AQ_LINK_SPEED_100MB:
+		return SPEED_100;
+	case ICE_AQ_LINK_SPEED_10MB:
+		return SPEED_10;
+	case ICE_AQ_LINK_SPEED_UNKNOWN:
+	default:
+		return 0;
+	}
+}
+
+/**
+ * ice_get_link_speed_kbps - get link speed in Kbps
+ * @vsi: the VSI whose link speed is being queried
+ *
+ * Return current VSI link speed and 0 if the speed is unknown.
+ */
+static int ice_get_link_speed_kbps(struct ice_vsi *vsi)
+{
+	int speed_mbps;
+
+	speed_mbps = ice_get_link_speed_mbps(vsi);
+
+	return speed_mbps * 1000;
+}
+
+/**
+ * ice_set_min_bw_limit - setup minimum BW limit for Tx based on min_tx_rate
+ * @vsi: VSI to be configured
+ * @min_tx_rate: min Tx rate in Kbps to be configured as BW limit
+ *
+ * If the min_tx_rate is specified as 0 that means to clear the minimum BW limit
+ * profile, otherwise a non-zero value will force a minimum BW limit for the VSI
+ * on TC 0.
+ */
+int ice_set_min_bw_limit(struct ice_vsi *vsi, u64 min_tx_rate)
+{
+	struct ice_pf *pf = vsi->back;
+	enum ice_status status;
+	struct device *dev;
+	int speed;
+
+	dev = ice_pf_to_dev(pf);
+	if (!vsi->port_info) {
+		dev_dbg(dev, "VSI %d, type %u specified doesn't have valid port_info\n",
+			vsi->idx, vsi->type);
+		return -EINVAL;
+	}
+
+	speed = ice_get_link_speed_kbps(vsi);
+	if (min_tx_rate > (u64)speed) {
+		dev_err(dev, "invalid min Tx rate %llu Kbps specified for %s %d is greater than current link speed %u Kbps\n",
+			min_tx_rate, ice_vsi_type_str(vsi->type), vsi->idx,
+			speed);
+		return -EINVAL;
+	}
+
+	/* Configure min BW for VSI limit */
+	if (min_tx_rate) {
+		status = ice_cfg_vsi_bw_lmt_per_tc(vsi->port_info, vsi->idx, 0,
+						   ICE_MIN_BW, min_tx_rate);
+		if (status) {
+			dev_err(dev, "failed to set min Tx rate(%llu Kbps) for %s %d\n",
+				min_tx_rate, ice_vsi_type_str(vsi->type),
+				vsi->idx);
+			return -EIO;
+		}
+
+		dev_dbg(dev, "set min Tx rate(%llu Kbps) for %s\n",
+			min_tx_rate, ice_vsi_type_str(vsi->type));
+	} else {
+		status = ice_cfg_vsi_bw_dflt_lmt_per_tc(vsi->port_info,
+							vsi->idx, 0,
+							ICE_MIN_BW);
+		if (status) {
+			dev_err(dev, "failed to clear min Tx rate configuration for %s %d\n",
+				ice_vsi_type_str(vsi->type), vsi->idx);
+			return -EIO;
+		}
+
+		dev_dbg(dev, "cleared min Tx rate configuration for %s %d\n",
+			ice_vsi_type_str(vsi->type), vsi->idx);
+	}
+
+	return 0;
+}
+
+/**
+ * ice_set_max_bw_limit - setup maximum BW limit for Tx based on max_tx_rate
+ * @vsi: VSI to be configured
+ * @max_tx_rate: max Tx rate in Kbps to be configured as BW limit
+ *
+ * If the max_tx_rate is specified as 0 that means to clear the maximum BW limit
+ * profile, otherwise a non-zero value will force a maximum BW limit for the VSI
+ * on TC 0.
+ */
+int ice_set_max_bw_limit(struct ice_vsi *vsi, u64 max_tx_rate)
+{
+	struct ice_pf *pf = vsi->back;
+	enum ice_status status;
+	struct device *dev;
+	int speed;
+
+	dev = ice_pf_to_dev(pf);
+	if (!vsi->port_info) {
+		dev_dbg(dev, "VSI %d, type %u specified doesn't have valid port_info\n",
+			vsi->idx, vsi->type);
+		return -EINVAL;
+	}
+
+	speed = ice_get_link_speed_kbps(vsi);
+	if (max_tx_rate > (u64)speed) {
+		dev_err(dev, "invalid max Tx rate %llu Kbps specified for %s %d is greater than current link speed %u Kbps\n",
+			max_tx_rate, ice_vsi_type_str(vsi->type), vsi->idx,
+			speed);
+		return -EINVAL;
+	}
+
+	/* Configure max BW for VSI limit */
+	if (max_tx_rate) {
+		status = ice_cfg_vsi_bw_lmt_per_tc(vsi->port_info, vsi->idx, 0,
+						   ICE_MAX_BW, max_tx_rate);
+		if (status) {
+			dev_err(dev, "failed setting max Tx rate(%llu Kbps) for %s %d\n",
+				max_tx_rate, ice_vsi_type_str(vsi->type),
+				vsi->idx);
+			return -EIO;
+		}
+
+		dev_dbg(dev, "set max Tx rate(%llu Kbps) for %s %d\n",
+			max_tx_rate, ice_vsi_type_str(vsi->type), vsi->idx);
+	} else {
+		status = ice_cfg_vsi_bw_dflt_lmt_per_tc(vsi->port_info,
+							vsi->idx, 0,
+							ICE_MAX_BW);
+		if (status) {
+			dev_err(dev, "failed clearing max Tx rate configuration for %s %d\n",
+				ice_vsi_type_str(vsi->type), vsi->idx);
+			return -EIO;
+		}
+
+		dev_dbg(dev, "cleared max Tx rate configuration for %s %d\n",
+			ice_vsi_type_str(vsi->type), vsi->idx);
+	}
+
+	return 0;
+}
+
 /**
  * ice_set_link - turn on/off physical link
  * @vsi: VSI to modify physical link on
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index b443ea46274f..0cef9b665d8c 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -116,7 +116,9 @@ bool ice_is_vsi_dflt_vsi(struct ice_sw *sw, struct ice_vsi *vsi);
 int ice_set_dflt_vsi(struct ice_sw *sw, struct ice_vsi *vsi);
 
 int ice_clear_dflt_vsi(struct ice_sw *sw);
-
+int ice_set_min_bw_limit(struct ice_vsi *vsi, u64 min_tx_rate);
+int ice_set_max_bw_limit(struct ice_vsi *vsi, u64 max_tx_rate);
+int ice_get_link_speed_mbps(struct ice_vsi *vsi);
 int ice_vsi_update_security(struct ice_vsi *vsi,
 			    void (*fill)(struct ice_vsi_ctx *));
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 62326f7e6a48..2ae76c3a7c01 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -7443,6 +7443,7 @@ static const struct net_device_ops ice_netdev_ops = {
 	.ndo_set_vf_vlan = ice_set_vf_port_vlan,
 	.ndo_set_vf_link_state = ice_set_vf_link_state,
 	.ndo_get_vf_stats = ice_get_vf_stats,
+	.ndo_set_vf_rate = ice_set_vf_bw,
 	.ndo_vlan_rx_add_vid = ice_vlan_rx_add_vid,
 	.ndo_vlan_rx_kill_vid = ice_vlan_rx_kill_vid,
 	.ndo_setup_tc = ice_setup_tc,
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index 2d9b10277186..8f2f25f2cbf8 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -3011,6 +3011,45 @@ static void ice_set_clear_shared_bw(struct ice_bw_type_info *bw_t_info, u32 bw)
 	}
 }
 
+/**
+ * ice_cfg_vsi_bw_lmt_per_tc - configure VSI BW limit per TC
+ * @pi: port information structure
+ * @vsi_handle: software VSI handle
+ * @tc: traffic class
+ * @rl_type: min or max
+ * @bw: bandwidth in Kbps
+ *
+ * This function configures BW limit of VSI scheduling node based on TC
+ * information.
+ */
+enum ice_status
+ice_cfg_vsi_bw_lmt_per_tc(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
+			  enum ice_rl_type rl_type, u32 bw)
+{
+	return ice_sched_set_node_bw_lmt_per_tc(pi, vsi_handle,
+						ICE_AGG_TYPE_VSI, tc, rl_type,
+						bw);
+}
+
+/**
+ * ice_cfg_vsi_bw_dflt_lmt_per_tc - configure default VSI BW limit per TC
+ * @pi: port information structure
+ * @vsi_handle: software VSI handle
+ * @tc: traffic class
+ * @rl_type: min or max
+ *
+ * This function configures default BW limit of VSI scheduling node based on TC
+ * information.
+ */
+enum ice_status
+ice_cfg_vsi_bw_dflt_lmt_per_tc(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
+			       enum ice_rl_type rl_type)
+{
+	return ice_sched_set_node_bw_lmt_per_tc(pi, vsi_handle,
+						ICE_AGG_TYPE_VSI, tc, rl_type,
+						ICE_SCHED_DFLT_BW);
+}
+
 /**
  * ice_sched_calc_wakeup - calculate RL profile wakeup parameter
  * @hw: pointer to the HW struct
@@ -3783,6 +3822,96 @@ ice_cfg_q_bw_dflt_lmt(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 				      ICE_SCHED_DFLT_BW);
 }
 
+/**
+ * ice_sched_get_node_by_id_type - get node from ID type
+ * @pi: port information structure
+ * @id: identifier
+ * @agg_type: type of aggregator
+ * @tc: traffic class
+ *
+ * This function returns node identified by ID of type aggregator, and
+ * based on traffic class (TC). This function needs to be called with
+ * the scheduler lock held.
+ */
+static struct ice_sched_node *
+ice_sched_get_node_by_id_type(struct ice_port_info *pi, u32 id,
+			      enum ice_agg_type agg_type, u8 tc)
+{
+	struct ice_sched_node *node = NULL;
+
+	switch (agg_type) {
+	case ICE_AGG_TYPE_VSI: {
+		struct ice_vsi_ctx *vsi_ctx;
+		u16 vsi_handle = (u16)id;
+
+		if (!ice_is_vsi_valid(pi->hw, vsi_handle))
+			break;
+		/* Get sched_vsi_info */
+		vsi_ctx = ice_get_vsi_ctx(pi->hw, vsi_handle);
+		if (!vsi_ctx)
+			break;
+		node = vsi_ctx->sched.vsi_node[tc];
+		break;
+	}
+
+	case ICE_AGG_TYPE_AGG: {
+		struct ice_sched_node *tc_node;
+
+		tc_node = ice_sched_get_tc_node(pi, tc);
+		if (tc_node)
+			node = ice_sched_get_agg_node(pi, tc_node, id);
+		break;
+	}
+
+	default:
+		break;
+	}
+
+	return node;
+}
+
+/**
+ * ice_sched_set_node_bw_lmt_per_tc - set node BW limit per TC
+ * @pi: port information structure
+ * @id: ID (software VSI handle or AGG ID)
+ * @agg_type: aggregator type (VSI or AGG type node)
+ * @tc: traffic class
+ * @rl_type: min or max
+ * @bw: bandwidth in Kbps
+ *
+ * This function sets BW limit of VSI or Aggregator scheduling node
+ * based on TC information from passed in argument BW.
+ */
+enum ice_status
+ice_sched_set_node_bw_lmt_per_tc(struct ice_port_info *pi, u32 id,
+				 enum ice_agg_type agg_type, u8 tc,
+				 enum ice_rl_type rl_type, u32 bw)
+{
+	enum ice_status status = ICE_ERR_PARAM;
+	struct ice_sched_node *node;
+
+	if (!pi)
+		return status;
+
+	if (rl_type == ICE_UNKNOWN_BW)
+		return status;
+
+	mutex_lock(&pi->sched_lock);
+	node = ice_sched_get_node_by_id_type(pi, id, agg_type, tc);
+	if (!node) {
+		ice_debug(pi->hw, ICE_DBG_SCHED, "Wrong id, agg type, or tc\n");
+		goto exit_set_node_bw_lmt_per_tc;
+	}
+	if (bw == ICE_SCHED_DFLT_BW)
+		status = ice_sched_set_node_bw_dflt_lmt(pi, node, rl_type);
+	else
+		status = ice_sched_set_node_bw_lmt(pi, node, rl_type, bw);
+
+exit_set_node_bw_lmt_per_tc:
+	mutex_unlock(&pi->sched_lock);
+	return status;
+}
+
 /**
  * ice_cfg_rl_burst_size - Set burst size value
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.h b/drivers/net/ethernet/intel/ice/ice_sched.h
index fdf7a5882f07..7c0b1d424707 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.h
+++ b/drivers/net/ethernet/intel/ice/ice_sched.h
@@ -104,6 +104,16 @@ ice_cfg_q_bw_lmt(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 enum ice_status
 ice_cfg_q_bw_dflt_lmt(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 		      u16 q_handle, enum ice_rl_type rl_type);
+enum ice_status
+ice_cfg_vsi_bw_lmt_per_tc(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
+			  enum ice_rl_type rl_type, u32 bw);
+enum ice_status
+ice_cfg_vsi_bw_dflt_lmt_per_tc(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
+			       enum ice_rl_type rl_type);
+enum ice_status
+ice_sched_set_node_bw_lmt_per_tc(struct ice_port_info *pi, u32 id,
+				 enum ice_agg_type agg_type, u8 tc,
+				 enum ice_rl_type rl_type, u32 bw);
 enum ice_status ice_cfg_rl_burst_size(struct ice_hw *hw, u32 bytes);
 void ice_sched_replay_agg_vsi_preinit(struct ice_hw *hw);
 void ice_sched_replay_agg(struct ice_hw *hw);
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 9779519639c1..0ed7f1ec6172 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -5,6 +5,7 @@
 #include "ice_base.h"
 #include "ice_lib.h"
 #include "ice_fltr.h"
+#include "ice_dcb_lib.h"
 #include "ice_flow.h"
 #include "ice_eswitch.h"
 #include "ice_virtchnl_allowlist.h"
@@ -768,6 +769,40 @@ static int ice_calc_vf_first_vector_idx(struct ice_pf *pf, struct ice_vf *vf)
 	return pf->sriov_base_vector + vf->vf_id * pf->num_msix_per_vf;
 }
 
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
 /**
  * ice_vf_rebuild_host_vlan_cfg - add VLAN 0 filter or rebuild the Port VLAN
  * @vf: VF to add MAC filters for
@@ -1309,6 +1344,11 @@ static void ice_vf_rebuild_host_cfg(struct ice_vf *vf)
 	if (ice_vf_rebuild_host_vlan_cfg(vf))
 		dev_err(dev, "failed to rebuild VLAN configuration for VF %u\n",
 			vf->vf_id);
+
+	if (ice_vf_rebuild_host_tx_rate_cfg(vf))
+		dev_err(dev, "failed to rebuild Tx rate limiting configuration for VF %u\n",
+			vf->vf_id);
+
 	/* rebuild aggregator node config for main VF VSI */
 	ice_vf_rebuild_aggregator_node_cfg(vsi);
 }
@@ -4702,8 +4742,8 @@ ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_info *ivi)
 		ivi->linkstate = IFLA_VF_LINK_STATE_ENABLE;
 	else
 		ivi->linkstate = IFLA_VF_LINK_STATE_DISABLE;
-	ivi->max_tx_rate = vf->tx_rate;
-	ivi->min_tx_rate = 0;
+	ivi->max_tx_rate = vf->max_tx_rate;
+	ivi->min_tx_rate = vf->min_tx_rate;
 	return 0;
 }
 
@@ -4882,6 +4922,122 @@ int ice_set_vf_link_state(struct net_device *netdev, int vf_id, int link_state)
 	return 0;
 }
 
+/**
+ * ice_calc_all_vfs_min_tx_rate - calculate cumulative min Tx rate on all VFs
+ * @pf: PF associated with VFs
+ */
+static int ice_calc_all_vfs_min_tx_rate(struct ice_pf *pf)
+{
+	int rate = 0, i;
+
+	ice_for_each_vf(pf, i)
+		rate += pf->vf[i].min_tx_rate;
+
+	return rate;
+}
+
+/**
+ * ice_min_tx_rate_oversubscribed - check if min Tx rate causes oversubscription
+ * @vf: VF trying to configure min_tx_rate
+ * @min_tx_rate: min Tx rate in Mbps
+ *
+ * Check if the min_tx_rate being passed in will cause oversubscription of total
+ * min_tx_rate based on the current link speed and all other VFs configured
+ * min_tx_rate
+ *
+ * Return true if the passed min_tx_rate would cause oversubscription, else
+ * return false
+ */
+static bool
+ice_min_tx_rate_oversubscribed(struct ice_vf *vf, int min_tx_rate)
+{
+	int link_speed_mbps = ice_get_link_speed_mbps(ice_get_vf_vsi(vf));
+	int all_vfs_min_tx_rate = ice_calc_all_vfs_min_tx_rate(vf->pf);
+
+	/* this VF's previous rate is being overwritten */
+	all_vfs_min_tx_rate -= vf->min_tx_rate;
+
+	if (all_vfs_min_tx_rate + min_tx_rate > link_speed_mbps) {
+		dev_err(ice_pf_to_dev(vf->pf), "min_tx_rate of %d Mbps on VF %u would cause oversubscription of %d Mbps based on the current link speed %d Mbps\n",
+			min_tx_rate, vf->vf_id,
+			all_vfs_min_tx_rate + min_tx_rate - link_speed_mbps,
+			link_speed_mbps);
+		return true;
+	}
+
+	return false;
+}
+
+/**
+ * ice_set_vf_bw - set min/max VF bandwidth
+ * @netdev: network interface device structure
+ * @vf_id: VF identifier
+ * @min_tx_rate: Minimum Tx rate in Mbps
+ * @max_tx_rate: Maximum Tx rate in Mbps
+ */
+int
+ice_set_vf_bw(struct net_device *netdev, int vf_id, int min_tx_rate,
+	      int max_tx_rate)
+{
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
+	struct ice_vsi *vsi;
+	struct device *dev;
+	struct ice_vf *vf;
+	int ret;
+
+	dev = ice_pf_to_dev(pf);
+	if (ice_validate_vf_id(pf, vf_id))
+		return -EINVAL;
+
+	vf = &pf->vf[vf_id];
+	ret = ice_check_vf_ready_for_cfg(vf);
+	if (ret)
+		return ret;
+
+	vsi = ice_get_vf_vsi(vf);
+
+	/* when max_tx_rate is zero that means no max Tx rate limiting, so only
+	 * check if max_tx_rate is non-zero
+	 */
+	if (max_tx_rate && min_tx_rate > max_tx_rate) {
+		dev_err(dev, "Cannot set min Tx rate %d Mbps greater than max Tx rate %d Mbps\n",
+			min_tx_rate, max_tx_rate);
+		return -EINVAL;
+	}
+
+	if (min_tx_rate && ice_is_dcb_active(pf)) {
+		dev_err(dev, "DCB on PF is currently enabled. VF min Tx rate limiting not allowed on this PF.\n");
+		return -EOPNOTSUPP;
+	}
+
+	if (ice_min_tx_rate_oversubscribed(vf, min_tx_rate))
+		return -EINVAL;
+
+	if (vf->min_tx_rate != (unsigned int)min_tx_rate) {
+		ret = ice_set_min_bw_limit(vsi, (u64)min_tx_rate * 1000);
+		if (ret) {
+			dev_err(dev, "Unable to set min-tx-rate for VF %d\n",
+				vf->vf_id);
+			return ret;
+		}
+
+		vf->min_tx_rate = min_tx_rate;
+	}
+
+	if (vf->max_tx_rate != (unsigned int)max_tx_rate) {
+		ret = ice_set_max_bw_limit(vsi, (u64)max_tx_rate * 1000);
+		if (ret) {
+			dev_err(dev, "Unable to set max-tx-rate for VF %d\n",
+				vf->vf_id);
+			return ret;
+		}
+
+		vf->max_tx_rate = max_tx_rate;
+	}
+
+	return 0;
+}
+
 /**
  * ice_get_vf_stats - populate some stats for the VF
  * @netdev: the netdev of the PF
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index 4be4eb816d70..9c2cad78231f 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -125,7 +125,8 @@ struct ice_vf {
 	 * the main LAN VSI for the PF.
 	 */
 	u16 lan_vsi_num;		/* ID as used by firmware */
-	unsigned int tx_rate;		/* Tx bandwidth limit in Mbps */
+	unsigned int min_tx_rate;	/* Minimum Tx bandwidth limit in Mbps */
+	unsigned int max_tx_rate;	/* Maximum Tx bandwidth limit in Mbps */
 	DECLARE_BITMAP(vf_states, ICE_VF_STATES_NBITS);	/* VF runtime states */
 
 	u64 num_inval_msgs;		/* number of continuous invalid msgs */
@@ -172,6 +173,10 @@ int
 ice_set_vf_port_vlan(struct net_device *netdev, int vf_id, u16 vlan_id, u8 qos,
 		     __be16 vlan_proto);
 
+int
+ice_set_vf_bw(struct net_device *netdev, int vf_id, int min_tx_rate,
+	      int max_tx_rate);
+
 int ice_set_vf_trust(struct net_device *netdev, int vf_id, bool trusted);
 
 int ice_set_vf_link_state(struct net_device *netdev, int vf_id, int link_state);
@@ -297,6 +302,14 @@ ice_set_vf_link_state(struct net_device __always_unused *netdev,
 	return -EOPNOTSUPP;
 }
 
+static inline int
+ice_set_vf_bw(struct net_device __always_unused *netdev,
+	      int __always_unused vf_id, int __always_unused min_tx_rate,
+	      int __always_unused max_tx_rate)
+{
+	return -EOPNOTSUPP;
+}
+
 static inline int
 ice_calc_vf_reg_idx(struct ice_vf __always_unused *vf,
 		    struct ice_q_vector __always_unused *q_vector)
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
