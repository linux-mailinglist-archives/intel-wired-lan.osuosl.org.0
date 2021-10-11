Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C25AB429789
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Oct 2021 21:27:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0FA8C80EA4;
	Mon, 11 Oct 2021 19:27:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RwE4nnJ8Asw9; Mon, 11 Oct 2021 19:27:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C2C0080E96;
	Mon, 11 Oct 2021 19:27:29 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1FA011BF2A6
 for <intel-wired-lan@osuosl.org>; Mon, 11 Oct 2021 19:27:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0D2B640368
 for <intel-wired-lan@osuosl.org>; Mon, 11 Oct 2021 19:27:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TrNrYN2bgoNf for <intel-wired-lan@osuosl.org>;
 Mon, 11 Oct 2021 19:27:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 522DE40367
 for <intel-wired-lan@osuosl.org>; Mon, 11 Oct 2021 19:27:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10134"; a="214100409"
X-IronPort-AV: E=Sophos;i="5.85,365,1624345200"; d="scan'208";a="214100409"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 12:27:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,365,1624345200"; d="scan'208";a="460084368"
Received: from msu-dell.jf.intel.com ([10.166.233.5])
 by orsmga002.jf.intel.com with ESMTP; 11 Oct 2021 12:27:17 -0700
From: sudheer.mogilappagari@intel.com
To: intel-wired-lan@osuosl.org
Date: Mon, 11 Oct 2021 12:25:17 -0700
Message-Id: <20211011192518.1867431-3-sudheer.mogilappagari@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211011192518.1867431-1-sudheer.mogilappagari@intel.com>
References: <20211011192518.1867431-1-sudheer.mogilappagari@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 2/3] ice: enable ndo_setup_tc
 support for mqprio_qdisc
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

From: Kiran Patil <kiran.patil@intel.com>

Add support in driver for TC_QDISC_SETUP_MQPRIO. This support
enables instantiation of channels in HW using existing MQPRIO
infrastructure which is extended to be offloadable. This
provides a mechanism to configure dedicated set of queues for
each TC.

Configuring channels using "tc mqprio":
--------------------------------------
tc qdisc add dev <ethX> root mqprio num_tc 3 map 0 1 2 \
	queues 4@0 4@4 4@8  hw 1 mode channel

Above command configures 3 TCs having 4 queues each. "hw 1 mode channel"
implies offload of channel configuration to HW. When driver processes
configuration received via "ndo_setup_tc: QDISC_SETUP_MQPRIO", each
TC maps to HW VSI with specified queues.

User can optionally specify bandwidth min and max rate limit per TC
(see example below). If shaper params like min and/or max bandwidth
rate limit are specified, driver configures VSI specific rate limiter
in HW.

Configuring channels and bandwidth shaper parameters using "tc mqprio":
----------------------------------------------------------------
tc qdisc add dev <ethX> root mqprio \
	num_tc 4 map 0 1 2 3 queues 4@0 4@4 4@8 4@12 hw 1 mode channel \
	shaper bw_rlimit min_rate 1Gbit 2Gbit 3Gbit 4Gbit \
	max_rate 4Gbit 5Gbit 6Gbit 7Gbit

Command to view configured TCs:
-----------------------------
tc qdisc show dev <ethX>

Deleting TCs:
------------
tc qdisc del dev <ethX> root mqprio

Signed-off-by: Kiran Patil <kiran.patil@intel.com>
Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |  21 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c |  10 +
 drivers/net/ethernet/intel/ice/ice_lib.c     |   2 +-
 drivers/net/ethernet/intel/ice/ice_lib.h     |   2 +
 drivers/net/ethernet/intel/ice/ice_main.c    | 894 ++++++++++++++++++-
 5 files changed, 919 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 463ba57a3561..ce7ebbc510dd 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -56,6 +56,7 @@
 #include "ice_dcb.h"
 #include "ice_switch.h"
 #include "ice_common.h"
+#include "ice_flow.h"
 #include "ice_sched.h"
 #include "ice_idc_int.h"
 #include "ice_virtchnl_pf.h"
@@ -127,6 +128,13 @@
 #define ICE_TX_CTX_DESC(R, i) (&(((struct ice_tx_ctx_desc *)((R)->desc))[i]))
 #define ICE_TX_FDIRDESC(R, i) (&(((struct ice_fltr_desc *)((R)->desc))[i]))
 
+/* Minimum BW limit is 500 Kbps for any scheduler node */
+#define ICE_MIN_BW_LIMIT		500
+/* User can specify BW in either Kbit/Mbit/Gbit and OS converts it in bytes.
+ * use it to convert user specified BW limit into Kbps
+ */
+#define ICE_BW_KBPS_DIVISOR		125
+
 /* Macro for each VSI in a PF */
 #define ice_for_each_vsi(pf, i) \
 	for ((i) = 0; (i) < (pf)->num_alloc_vsi; (i)++)
@@ -439,6 +447,8 @@ struct ice_q_vector {
 	cpumask_t affinity_mask;
 	struct irq_affinity_notify affinity_notify;
 
+	struct ice_channel *ch;
+
 	char name[ICE_INT_NAME_STR_LEN];
 
 	u16 total_events;	/* net_dim(): number of interrupts processed */
@@ -607,6 +617,17 @@ struct ice_netdev_priv {
 	struct ice_repr *repr;
 };
 
+/**
+ * ice_vector_ch_enabled
+ * @qv: pointer to q_vector, can be NULL
+ *
+ * This function returns true if vector is channel enabled otherwise false
+ */
+static inline bool ice_vector_ch_enabled(struct ice_q_vector *qv)
+{
+	return !!qv->ch; /* Enable it to run with TC */
+}
+
 /**
  * ice_irq_dynamic_ena - Enable default interrupt generation settings
  * @hw: pointer to HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index f6c4c476b62d..cbff77954fbe 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3170,6 +3170,11 @@ ice_set_rxfh(struct net_device *netdev, const u32 *indir, const u8 *key,
 		return -EIO;
 	}
 
+	if (ice_is_adq_active(pf)) {
+		netdev_err(netdev, "Cannot change RSS params with ADQ configured.\n");
+		return -EOPNOTSUPP;
+	}
+
 	if (key) {
 		if (!vsi->rss_hkey_user) {
 			vsi->rss_hkey_user =
@@ -3380,6 +3385,11 @@ static int ice_set_channels(struct net_device *dev, struct ethtool_channels *ch)
 	if (ch->other_count != (test_bit(ICE_FLAG_FD_ENA, pf->flags) ? 1U : 0U))
 		return -EINVAL;
 
+	if (ice_is_adq_active(pf)) {
+		netdev_err(dev, "Cannot set channels with ADQ configured.\n");
+		return -EOPNOTSUPP;
+	}
+
 	if (test_bit(ICE_FLAG_FD_ENA, pf->flags) && pf->hw.fdir_active_fltr) {
 		netdev_err(dev, "Cannot set channels when Flow Director filters are active\n");
 		return -EOPNOTSUPP;
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index d76e5f752ead..0356d18e27f1 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3913,7 +3913,7 @@ int ice_get_link_speed_mbps(struct ice_vsi *vsi)
  *
  * Return current VSI link speed and 0 if the speed is unknown.
  */
-static int ice_get_link_speed_kbps(struct ice_vsi *vsi)
+int ice_get_link_speed_kbps(struct ice_vsi *vsi)
 {
 	int speed_mbps;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index ec6f35e5e0a3..9914b96798af 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -139,4 +139,6 @@ void ice_init_feature_support(struct ice_pf *pf);
 int ice_set_min_bw_limit(struct ice_vsi *vsi, u64 min_tx_rate);
 
 int ice_set_max_bw_limit(struct ice_vsi *vsi, u64 max_tx_rate);
+
+int ice_get_link_speed_kbps(struct ice_vsi *vsi);
 #endif /* !_ICE_LIB_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 052f1f493e8e..ad8cc87401a6 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -55,6 +55,9 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type);
 
 static void ice_vsi_release_all(struct ice_pf *pf);
 
+static int ice_rebuild_channels(struct ice_pf *pf);
+static void ice_remove_q_channels(struct ice_vsi *vsi, bool rem_adv_fltr);
+
 bool netif_is_ice(struct net_device *dev)
 {
 	return dev && (dev->netdev_ops == &ice_netdev_ops);
@@ -106,7 +109,12 @@ static void ice_check_for_hang_subtask(struct ice_pf *pf)
 	ice_for_each_txq(vsi, i) {
 		struct ice_tx_ring *tx_ring = vsi->tx_rings[i];
 
-		if (tx_ring && tx_ring->desc) {
+		if (!tx_ring)
+			continue;
+		if (ice_ring_ch_enabled(tx_ring))
+			continue;
+
+		if (tx_ring->desc) {
 			/* If packet counter has not changed the queue is
 			 * likely stalled, so force an interrupt for this
 			 * queue.
@@ -463,17 +471,21 @@ static void ice_pf_dis_all_vsi(struct ice_pf *pf, bool locked)
 }
 
 /**
- * ice_prepare_for_reset - prep for the core to reset
+ * ice_prepare_for_reset - prep for reset
  * @pf: board private structure
+ * @reset_type: reset type requested
  *
  * Inform or close all dependent features in prep for reset.
  */
 static void
-ice_prepare_for_reset(struct ice_pf *pf)
+ice_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 {
 	struct ice_hw *hw = &pf->hw;
+	struct ice_vsi *vsi;
 	unsigned int i;
 
+	dev_dbg(ice_pf_to_dev(pf), "reset_type=%d\n", reset_type);
+
 	/* already prepared for reset */
 	if (test_bit(ICE_PREPARED_FOR_RESET, pf->state))
 		return;
@@ -488,6 +500,38 @@ ice_prepare_for_reset(struct ice_pf *pf)
 	ice_for_each_vf(pf, i)
 		ice_set_vf_state_qs_dis(&pf->vf[i]);
 
+	/* release ADQ specific HW and SW resources */
+	vsi = ice_get_main_vsi(pf);
+	if (!vsi)
+		goto skip;
+
+	/* to be on safe side, reset orig_rss_size so that normal flow
+	 * of deciding rss_size can take precedence
+	 */
+	vsi->orig_rss_size = 0;
+
+	if (test_bit(ICE_FLAG_TC_MQPRIO, pf->flags)) {
+		if (reset_type == ICE_RESET_PFR) {
+			vsi->old_ena_tc = vsi->all_enatc;
+			vsi->old_numtc = vsi->all_numtc;
+		} else {
+			ice_remove_q_channels(vsi, true);
+
+			/* for other reset type, do not support channel rebuild
+			 * hence reset needed info
+			 */
+			vsi->old_ena_tc = 0;
+			vsi->all_enatc = 0;
+			vsi->old_numtc = 0;
+			vsi->all_numtc = 0;
+			vsi->req_txq = 0;
+			vsi->req_rxq = 0;
+			clear_bit(ICE_FLAG_TC_MQPRIO, pf->flags);
+			memset(&vsi->mqprio_qopt, 0, sizeof(vsi->mqprio_qopt));
+		}
+	}
+skip:
+
 	/* clear SW filtering DB */
 	ice_clear_hw_tbls(hw);
 	/* disable the VSIs and their queues that are not already DOWN */
@@ -510,8 +554,7 @@ ice_prepare_for_reset(struct ice_pf *pf)
 /**
  * ice_do_reset - Initiate one of many types of resets
  * @pf: board private structure
- * @reset_type: reset type requested
- * before this function was called.
+ * @reset_type: reset type requested before this function was called.
  */
 static void ice_do_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 {
@@ -520,7 +563,7 @@ static void ice_do_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 
 	dev_dbg(dev, "reset_type 0x%x requested\n", reset_type);
 
-	ice_prepare_for_reset(pf);
+	ice_prepare_for_reset(pf, reset_type);
 
 	/* trigger the reset */
 	if (ice_reset(hw, reset_type)) {
@@ -578,7 +621,7 @@ static void ice_reset_subtask(struct ice_pf *pf)
 		/* return if no valid reset type requested */
 		if (reset_type == ICE_RESET_INVAL)
 			return;
-		ice_prepare_for_reset(pf);
+		ice_prepare_for_reset(pf, reset_type);
 
 		/* make sure we are ready to rebuild */
 		if (ice_check_reset(&pf->hw)) {
@@ -3203,6 +3246,7 @@ static void ice_set_netdev_features(struct net_device *netdev)
 				   tso_features;
 	netdev->vlan_features |= dflt_features | csumo_features |
 				 tso_features;
+	netdev->hw_features |= NETIF_F_HW_TC;
 }
 
 /**
@@ -3280,6 +3324,13 @@ ice_pf_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
 	return ice_vsi_setup(pf, pi, ICE_VSI_PF, ICE_INVAL_VFID, NULL);
 }
 
+static struct ice_vsi *
+ice_chnl_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
+		   struct ice_channel *ch)
+{
+	return ice_vsi_setup(pf, pi, ICE_VSI_CHNL, ICE_INVAL_VFID, ch);
+}
+
 /**
  * ice_ctrl_vsi_setup - Set up a control VSI
  * @pf: board private structure
@@ -3398,6 +3449,9 @@ static int ice_setup_pf_sw(struct ice_pf *pf)
 	if (!vsi)
 		return -ENOMEM;
 
+	/* init channel list */
+	INIT_LIST_HEAD(&vsi->ch_list);
+
 	status = ice_cfg_netdev(vsi);
 	if (status)
 		goto unroll_vsi_setup;
@@ -4971,7 +5025,7 @@ ice_pci_err_detected(struct pci_dev *pdev, pci_channel_state_t err)
 
 		if (!test_bit(ICE_PREPARED_FOR_RESET, pf->state)) {
 			set_bit(ICE_PFR_REQ, pf->state);
-			ice_prepare_for_reset(pf);
+			ice_prepare_for_reset(pf, ICE_RESET_PFR);
 		}
 	}
 
@@ -5063,7 +5117,7 @@ static void ice_pci_err_reset_prepare(struct pci_dev *pdev)
 
 		if (!test_bit(ICE_PREPARED_FOR_RESET, pf->state)) {
 			set_bit(ICE_PFR_REQ, pf->state);
-			ice_prepare_for_reset(pf);
+			ice_prepare_for_reset(pf, ICE_RESET_PFR);
 		}
 	}
 }
@@ -5465,6 +5519,11 @@ ice_set_features(struct net_device *netdev, netdev_features_t features)
 		ice_clear_arfs(vsi);
 	}
 
+	/* don't turn off hw_tc_offload when ADQ is already enabled */
+	if (!(features & NETIF_F_HW_TC) && ice_is_adq_active(pf)) {
+		dev_err(ice_pf_to_dev(pf), "ADQ is active, can't turn hw_tc_offload off\n");
+		return -EACCES;
+	}
 	return ret;
 }
 
@@ -6319,6 +6378,9 @@ static void ice_vsi_release_all(struct ice_pf *pf)
 		if (!pf->vsi[i])
 			continue;
 
+		if (pf->vsi[i]->type == ICE_VSI_CHNL)
+			continue;
+
 		err = ice_vsi_release(pf->vsi[i]);
 		if (err)
 			dev_dbg(ice_pf_to_dev(pf), "Failed to release pf->vsi[%d], err %d, vsi_num = %d\n",
@@ -6528,6 +6590,15 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 		goto err_vsi_rebuild;
 	}
 
+	if (reset_type == ICE_RESET_PFR) {
+		err = ice_rebuild_channels(pf);
+		if (err) {
+			dev_err(dev, "failed to rebuild and replay ADQ VSIs, err %d\n",
+				err);
+			goto err_vsi_rebuild;
+		}
+	}
+
 	/* If Flow Director is active */
 	if (test_bit(ICE_FLAG_FD_ENA, pf->flags)) {
 		err = ice_vsi_rebuild_by_type(pf, ICE_VSI_CTRL);
@@ -7106,6 +7177,803 @@ ice_setup_tc_block_cb(enum tc_setup_type type, void *type_data, void *cb_priv)
 	}
 }
 
+/**
+ * ice_validate_mqprio_qopt - Validate TCF input parameters
+ * @vsi: Pointer to VSI
+ * @mqprio_qopt: input parameters for mqprio queue configuration
+ *
+ * This function validates MQPRIO params, such as qcount (power of 2 wherever
+ * needed), and make sure user doesn't specify qcount and BW rate limit
+ * for TCs, which are more than "num_tc"
+ */
+static int
+ice_validate_mqprio_qopt(struct ice_vsi *vsi,
+			 struct tc_mqprio_qopt_offload *mqprio_qopt)
+{
+	u64 sum_max_rate = 0, sum_min_rate = 0;
+	int non_power_of_2_qcount = 0;
+	struct ice_pf *pf = vsi->back;
+	int max_rss_q_cnt = 0;
+	struct device *dev;
+	int i, speed;
+	u8 num_tc;
+
+	if (vsi->type != ICE_VSI_PF)
+		return -EINVAL;
+
+	if (mqprio_qopt->qopt.offset[0] != 0 ||
+	    mqprio_qopt->qopt.num_tc < 1 ||
+	    mqprio_qopt->qopt.num_tc > ICE_CHNL_MAX_TC)
+		return -EINVAL;
+
+	dev = ice_pf_to_dev(pf);
+	vsi->ch_rss_size = 0;
+	num_tc = mqprio_qopt->qopt.num_tc;
+
+	for (i = 0; num_tc; i++) {
+		int qcount = mqprio_qopt->qopt.count[i];
+		u64 max_rate, min_rate, rem;
+
+		if (!qcount)
+			return -EINVAL;
+
+		if (is_power_of_2(qcount)) {
+			if (non_power_of_2_qcount &&
+			    qcount > non_power_of_2_qcount) {
+				dev_err(dev, "qcount[%d] cannot be greater than non power of 2 qcount[%d]\n",
+					qcount, non_power_of_2_qcount);
+				return -EINVAL;
+			}
+			if (qcount > max_rss_q_cnt)
+				max_rss_q_cnt = qcount;
+		} else {
+			if (non_power_of_2_qcount &&
+			    qcount != non_power_of_2_qcount) {
+				dev_err(dev, "Only one non power of 2 qcount allowed[%d,%d]\n",
+					qcount, non_power_of_2_qcount);
+				return -EINVAL;
+			}
+			if (qcount < max_rss_q_cnt) {
+				dev_err(dev, "non power of 2 qcount[%d] cannot be less than other qcount[%d]\n",
+					qcount, max_rss_q_cnt);
+				return -EINVAL;
+			}
+			max_rss_q_cnt = qcount;
+			non_power_of_2_qcount = qcount;
+		}
+
+		/* TC command takes input in K/N/Gbps or K/M/Gbit etc but
+		 * converts the bandwidth rate limit into Bytes/s when
+		 * passing it down to the driver. So convert input bandwidth
+		 * from Bytes/s to Kbps
+		 */
+		max_rate = mqprio_qopt->max_rate[i];
+		max_rate = div_u64(max_rate, ICE_BW_KBPS_DIVISOR);
+		sum_max_rate += max_rate;
+
+		/* min_rate is minimum guaranteed rate and it can't be zero */
+		min_rate = mqprio_qopt->min_rate[i];
+		min_rate = div_u64(min_rate, ICE_BW_KBPS_DIVISOR);
+		sum_min_rate += min_rate;
+
+		if (min_rate && min_rate < ICE_MIN_BW_LIMIT) {
+			dev_err(dev, "TC%d: min_rate(%llu Kbps) < %u Kbps\n", i,
+				min_rate, ICE_MIN_BW_LIMIT);
+			return -EINVAL;
+		}
+
+		iter_div_u64_rem(min_rate, ICE_MIN_BW_LIMIT, &rem);
+		if (rem) {
+			dev_err(dev, "TC%d: Min Rate not multiple of %u Kbps",
+				i, ICE_MIN_BW_LIMIT);
+			return -EINVAL;
+		}
+
+		iter_div_u64_rem(max_rate, ICE_MIN_BW_LIMIT, &rem);
+		if (rem) {
+			dev_err(dev, "TC%d: Max Rate not multiple of %u Kbps",
+				i, ICE_MIN_BW_LIMIT);
+			return -EINVAL;
+		}
+
+		/* min_rate can't be more than max_rate, except when max_rate
+		 * is zero (implies max_rate sought is max line rate). In such
+		 * a case min_rate can be more than max.
+		 */
+		if (max_rate && min_rate > max_rate) {
+			dev_err(dev, "min_rate %llu Kbps can't be more than max_rate %llu Kbps\n",
+				min_rate, max_rate);
+			return -EINVAL;
+		}
+
+		if (i >= mqprio_qopt->qopt.num_tc - 1)
+			break;
+		if (mqprio_qopt->qopt.offset[i + 1] !=
+		    (mqprio_qopt->qopt.offset[i] + qcount))
+			return -EINVAL;
+	}
+	if (vsi->num_rxq <
+	    (mqprio_qopt->qopt.offset[i] + mqprio_qopt->qopt.count[i]))
+		return -EINVAL;
+	if (vsi->num_txq <
+	    (mqprio_qopt->qopt.offset[i] + mqprio_qopt->qopt.count[i]))
+		return -EINVAL;
+
+	speed = ice_get_link_speed_kbps(vsi);
+	if (sum_max_rate && sum_max_rate > (u64)speed) {
+		dev_err(dev, "Invalid max Tx rate(%llu) Kbps > speed(%u) Kbps specified\n",
+			sum_max_rate, speed);
+		return -EINVAL;
+	}
+	if (sum_min_rate && sum_min_rate > (u64)speed) {
+		dev_err(dev, "Invalid min Tx rate(%llu) Kbps > speed (%u) Kbps specified\n",
+			sum_min_rate, speed);
+		return -EINVAL;
+	}
+
+	/* make sure vsi->ch_rss_size is set correctly based on TC's qcount */
+	vsi->ch_rss_size = max_rss_q_cnt;
+
+	return 0;
+}
+
+/**
+ * ice_add_channel - add a channel by adding VSI
+ * @pf: ptr to PF device
+ * @sw_id: underlying HW switching element ID
+ * @ch: ptr to channel structure
+ *
+ * Add a channel (VSI) using add_vsi and queue_map
+ */
+static int ice_add_channel(struct ice_pf *pf, u16 sw_id, struct ice_channel *ch)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_vsi *vsi;
+
+	if (ch->type != ICE_VSI_CHNL) {
+		dev_err(dev, "add new VSI failed, ch->type %d\n", ch->type);
+		return -EINVAL;
+	}
+
+	vsi = ice_chnl_vsi_setup(pf, pf->hw.port_info, ch);
+	if (!vsi || vsi->type != ICE_VSI_CHNL) {
+		dev_err(dev, "create chnl VSI failure\n");
+		return -EINVAL;
+	}
+
+	ch->sw_id = sw_id;
+	ch->vsi_num = vsi->vsi_num;
+	ch->info.mapping_flags = vsi->info.mapping_flags;
+	ch->ch_vsi = vsi;
+	/* set the back pointer of channel for newly created VSI */
+	vsi->ch = ch;
+
+	memcpy(&ch->info.q_mapping, &vsi->info.q_mapping,
+	       sizeof(vsi->info.q_mapping));
+	memcpy(&ch->info.tc_mapping, vsi->info.tc_mapping,
+	       sizeof(vsi->info.tc_mapping));
+
+	return 0;
+}
+
+/**
+ * ice_chnl_cfg_res
+ * @vsi: the VSI being setup
+ * @ch: ptr to channel structure
+ *
+ * Configure channel specific resources such as rings, vector.
+ */
+static void ice_chnl_cfg_res(struct ice_vsi *vsi, struct ice_channel *ch)
+{
+	int i;
+
+	for (i = 0; i < ch->num_txq; i++) {
+		struct ice_q_vector *tx_q_vector, *rx_q_vector;
+		struct ice_ring_container *rc;
+		struct ice_tx_ring *tx_ring;
+		struct ice_rx_ring *rx_ring;
+
+		tx_ring = vsi->tx_rings[ch->base_q + i];
+		rx_ring = vsi->rx_rings[ch->base_q + i];
+		if (!tx_ring || !rx_ring)
+			continue;
+
+		/* setup ring being channel enabled */
+		tx_ring->ch = ch;
+		rx_ring->ch = ch;
+
+		/* following code block sets up vector specific attributes */
+		tx_q_vector = tx_ring->q_vector;
+		rx_q_vector = rx_ring->q_vector;
+		if (!tx_q_vector && !rx_q_vector)
+			continue;
+
+		if (tx_q_vector) {
+			tx_q_vector->ch = ch;
+			/* setup Tx and Rx ITR setting if DIM is off */
+			rc = &tx_q_vector->tx;
+			if (!ITR_IS_DYNAMIC(rc))
+				ice_write_itr(rc, rc->itr_setting);
+		}
+		if (rx_q_vector) {
+			rx_q_vector->ch = ch;
+			/* setup Tx and Rx ITR setting if DIM is off */
+			rc = &rx_q_vector->rx;
+			if (!ITR_IS_DYNAMIC(rc))
+				ice_write_itr(rc, rc->itr_setting);
+		}
+	}
+
+	/* it is safe to assume that, if channel has non-zero num_t[r]xq, then
+	 * GLINT_ITR register would have written to perform in-context
+	 * update, hence perform flush
+	 */
+	if (ch->num_txq || ch->num_rxq)
+		ice_flush(&vsi->back->hw);
+}
+
+/**
+ * ice_cfg_chnl_all_res - configure channel resources
+ * @vsi: pte to main_vsi
+ * @ch: ptr to channel structure
+ *
+ * This function configures channel specific resources such as flow-director
+ * counter index, and other resources such as queues, vectors, ITR settings
+ */
+static void
+ice_cfg_chnl_all_res(struct ice_vsi *vsi, struct ice_channel *ch)
+{
+	/* configure channel (aka ADQ) resources such as queues, vectors,
+	 * ITR settings for channel specific vectors and anything else
+	 */
+	ice_chnl_cfg_res(vsi, ch);
+}
+
+/**
+ * ice_setup_hw_channel - setup new channel
+ * @pf: ptr to PF device
+ * @vsi: the VSI being setup
+ * @ch: ptr to channel structure
+ * @sw_id: underlying HW switching element ID
+ * @type: type of channel to be created (VMDq2/VF)
+ *
+ * Setup new channel (VSI) based on specified type (VMDq2/VF)
+ * and configures Tx rings accordingly
+ */
+static int
+ice_setup_hw_channel(struct ice_pf *pf, struct ice_vsi *vsi,
+		     struct ice_channel *ch, u16 sw_id, u8 type)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	int ret;
+
+	ch->base_q = vsi->next_base_q;
+	ch->type = type;
+
+	ret = ice_add_channel(pf, sw_id, ch);
+	if (ret) {
+		dev_err(dev, "failed to add_channel using sw_id %u\n", sw_id);
+		return ret;
+	}
+
+	/* configure/setup ADQ specific resources */
+	ice_cfg_chnl_all_res(vsi, ch);
+
+	/* make sure to update the next_base_q so that subsequent channel's
+	 * (aka ADQ) VSI queue map is correct
+	 */
+	vsi->next_base_q = vsi->next_base_q + ch->num_rxq;
+	dev_dbg(dev, "added channel: vsi_num %u, num_rxq %u\n", ch->vsi_num,
+		ch->num_rxq);
+
+	return 0;
+}
+
+/**
+ * ice_setup_channel - setup new channel using uplink element
+ * @pf: ptr to PF device
+ * @vsi: the VSI being setup
+ * @ch: ptr to channel structure
+ *
+ * Setup new channel (VSI) based on specified type (VMDq2/VF)
+ * and uplink switching element
+ */
+static bool
+ice_setup_channel(struct ice_pf *pf, struct ice_vsi *vsi,
+		  struct ice_channel *ch)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	u16 sw_id;
+	int ret;
+
+	if (vsi->type != ICE_VSI_PF) {
+		dev_err(dev, "unsupported parent VSI type(%d)\n", vsi->type);
+		return false;
+	}
+
+	sw_id = pf->first_sw->sw_id;
+
+	/* create channel (VSI) */
+	ret = ice_setup_hw_channel(pf, vsi, ch, sw_id, ICE_VSI_CHNL);
+	if (ret) {
+		dev_err(dev, "failed to setup hw_channel\n");
+		return false;
+	}
+	dev_dbg(dev, "successfully created channel()\n");
+
+	return ch->ch_vsi ? true : false;
+}
+
+/**
+ * ice_set_bw_limit - setup BW limit for Tx traffic based on max_tx_rate
+ * @vsi: VSI to be configured
+ * @max_tx_rate: max Tx rate in Kbps to be configured as maximum BW limit
+ * @min_tx_rate: min Tx rate in Kbps to be configured as mimimum BW limit
+ */
+static int
+ice_set_bw_limit(struct ice_vsi *vsi, u64 max_tx_rate, u64 min_tx_rate)
+{
+	int err;
+
+	err = ice_set_min_bw_limit(vsi, min_tx_rate);
+	if (err)
+		return err;
+
+	err = ice_set_max_bw_limit(vsi, max_tx_rate);
+	if (err)
+		return err;
+
+	return 0;
+}
+
+/**
+ * ice_create_q_channel - function to create channel
+ * @vsi: VSI to be configured
+ * @ch: ptr to channel (it contains channel specific params)
+ *
+ * This function creates channel (VSI) using num_queues specified by user,
+ * reconfigs RSS if needed.
+ */
+static int ice_create_q_channel(struct ice_vsi *vsi, struct ice_channel *ch)
+{
+	struct ice_pf *pf = vsi->back;
+	struct device *dev;
+
+	if (!ch)
+		return -EINVAL;
+
+	dev = ice_pf_to_dev(pf);
+	if (!ch->num_txq || !ch->num_rxq) {
+		dev_err(dev, "Invalid num_queues requested: %d\n", ch->num_rxq);
+		return -EINVAL;
+	}
+
+	if (!vsi->cnt_q_avail || vsi->cnt_q_avail < ch->num_txq) {
+		dev_err(dev, "cnt_q_avail (%u) less than num_queues %d\n",
+			vsi->cnt_q_avail, ch->num_txq);
+		return -EINVAL;
+	}
+
+	if (!ice_setup_channel(pf, vsi, ch)) {
+		dev_info(dev, "Failed to setup channel\n");
+		return -EINVAL;
+	}
+	/* configure BW rate limit */
+	if (ch->ch_vsi && (ch->max_tx_rate || ch->min_tx_rate)) {
+		int ret;
+
+		ret = ice_set_bw_limit(ch->ch_vsi, ch->max_tx_rate,
+				       ch->min_tx_rate);
+		if (ret)
+			dev_err(dev, "failed to set Tx rate of %llu Kbps for VSI(%u)\n",
+				ch->max_tx_rate, ch->ch_vsi->vsi_num);
+		else
+			dev_dbg(dev, "set Tx rate of %llu Kbps for VSI(%u)\n",
+				ch->max_tx_rate, ch->ch_vsi->vsi_num);
+	}
+
+	vsi->cnt_q_avail -= ch->num_txq;
+
+	return 0;
+}
+
+/**
+ * ice_remove_q_channels - Remove queue channels for the TCs
+ * @vsi: VSI to be configured
+ * @rem_fltr: delete advanced switch filter or not
+ *
+ * Remove queue channels for the TCs
+ */
+static void ice_remove_q_channels(struct ice_vsi *vsi, bool __maybe_unused rem_fltr)
+{
+	struct ice_channel *ch, *ch_tmp;
+	int i;
+
+	/* perform cleanup for channels if they exist */
+	list_for_each_entry_safe(ch, ch_tmp, &vsi->ch_list, list) {
+		struct ice_vsi *ch_vsi;
+
+		list_del(&ch->list);
+		ch_vsi = ch->ch_vsi;
+		if (!ch_vsi) {
+			kfree(ch);
+			continue;
+		}
+
+		/* Reset queue contexts */
+		for (i = 0; i < ch->num_rxq; i++) {
+			struct ice_tx_ring *tx_ring;
+			struct ice_rx_ring *rx_ring;
+
+			tx_ring = vsi->tx_rings[ch->base_q + i];
+			rx_ring = vsi->rx_rings[ch->base_q + i];
+			if (tx_ring) {
+				tx_ring->ch = NULL;
+				if (tx_ring->q_vector)
+					tx_ring->q_vector->ch = NULL;
+			}
+			if (rx_ring) {
+				rx_ring->ch = NULL;
+				if (rx_ring->q_vector)
+					rx_ring->q_vector->ch = NULL;
+			}
+		}
+
+		/* clear the VSI from schedular tree */
+		ice_rm_vsi_lan_cfg(ch->ch_vsi->port_info, ch->ch_vsi->idx);
+
+		/* Delete VSI from FW */
+		ice_vsi_delete(ch->ch_vsi);
+
+		/* Delete VSI from PF and HW VSI arrays */
+		ice_vsi_clear(ch->ch_vsi);
+
+		/* free the channel */
+		kfree(ch);
+	}
+
+	/* clear the channel VSI map which is stored in main VSI */
+	ice_for_each_chnl_tc(i)
+		vsi->tc_map_vsi[i] = NULL;
+
+	/* reset main VSI's all TC information */
+	vsi->all_enatc = 0;
+	vsi->all_numtc = 0;
+}
+
+/**
+ * ice_rebuild_channels - rebuild channel
+ * @pf: ptr to PF
+ *
+ * Recreate channel VSIs and replay filters
+ */
+static int ice_rebuild_channels(struct ice_pf *pf)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_vsi *main_vsi;
+	bool rem_adv_fltr = true;
+	struct ice_channel *ch;
+	struct ice_vsi *vsi;
+	int tc_idx = 1;
+	int i, err;
+
+	main_vsi = ice_get_main_vsi(pf);
+	if (!main_vsi)
+		return 0;
+
+	if (!test_bit(ICE_FLAG_TC_MQPRIO, pf->flags) ||
+	    main_vsi->old_numtc == 1)
+		return 0; /* nothing to be done */
+
+	/* reconfigure main VSI based on old value of TC and cached values
+	 * for MQPRIO opts
+	 */
+	err = ice_vsi_cfg_tc(main_vsi, main_vsi->old_ena_tc);
+	if (err) {
+		dev_err(dev, "failed configuring TC(ena_tc:0x%02x) for HW VSI=%u\n",
+			main_vsi->old_ena_tc, main_vsi->vsi_num);
+		return err;
+	}
+
+	/* rebuild ADQ VSIs */
+	ice_for_each_vsi(pf, i) {
+		enum ice_vsi_type type;
+
+		vsi = pf->vsi[i];
+		if (!vsi || vsi->type != ICE_VSI_CHNL)
+			continue;
+
+		type = vsi->type;
+
+		/* rebuild ADQ VSI */
+		err = ice_vsi_rebuild(vsi, true);
+		if (err) {
+			dev_err(dev, "VSI (type:%s) at index %d rebuild failed, err %d\n",
+				ice_vsi_type_str(type), vsi->idx, err);
+			goto cleanup;
+		}
+
+		/* Re-map HW VSI number, using VSI handle that has been
+		 * previously validated in ice_replay_vsi() call above
+		 */
+		vsi->vsi_num = ice_get_hw_vsi_num(&pf->hw, vsi->idx);
+
+		/* replay filters for the VSI */
+		err = ice_replay_vsi(&pf->hw, vsi->idx);
+		if (err) {
+			dev_err(dev, "VSI (type:%s) replay failed, err %d, VSI index %d\n",
+				ice_vsi_type_str(type), err, vsi->idx);
+			rem_adv_fltr = false;
+			goto cleanup;
+		}
+		dev_info(dev, "VSI (type:%s) at index %d rebuilt successfully\n",
+			 ice_vsi_type_str(type), vsi->idx);
+
+		/* store ADQ VSI at correct TC index in main VSI's
+		 * map of TC to VSI
+		 */
+		main_vsi->tc_map_vsi[tc_idx++] = vsi;
+	}
+
+	/* ADQ VSI(s) has been rebuilt successfully, so setup
+	 * channel for main VSI's Tx and Rx rings
+	 */
+	list_for_each_entry(ch, &main_vsi->ch_list, list) {
+		struct ice_vsi *ch_vsi;
+
+		ch_vsi = ch->ch_vsi;
+		if (!ch_vsi)
+			continue;
+
+		/* reconfig channel resources */
+		ice_cfg_chnl_all_res(main_vsi, ch);
+
+		/* replay BW rate limit if it is non-zero */
+		if (!ch->max_tx_rate && !ch->min_tx_rate)
+			continue;
+
+		err = ice_set_bw_limit(ch_vsi, ch->max_tx_rate,
+				       ch->min_tx_rate);
+		if (err)
+			dev_err(dev, "failed (err:%d) to rebuild BW rate limit, max_tx_rate: %llu Kbps, min_tx_rate: %llu Kbps for VSI(%u)\n",
+				err, ch->max_tx_rate, ch->min_tx_rate,
+				ch_vsi->vsi_num);
+		else
+			dev_dbg(dev, "successfully rebuild BW rate limit, max_tx_rate: %llu Kbps, min_tx_rate: %llu Kbps for VSI(%u)\n",
+				ch->max_tx_rate, ch->min_tx_rate,
+				ch_vsi->vsi_num);
+	}
+
+	/* reconfig RSS for main VSI */
+	if (main_vsi->ch_rss_size)
+		ice_vsi_cfg_rss_lut_key(main_vsi);
+
+	return 0;
+
+cleanup:
+	ice_remove_q_channels(main_vsi, rem_adv_fltr);
+	return err;
+}
+
+/**
+ * ice_create_q_channels - Add queue channel for the given TCs
+ * @vsi: VSI to be configured
+ *
+ * Configures queue channel mapping to the given TCs
+ */
+static int ice_create_q_channels(struct ice_vsi *vsi)
+{
+	struct ice_pf *pf = vsi->back;
+	struct ice_channel *ch;
+	int ret = 0, i;
+
+	ice_for_each_chnl_tc(i) {
+		if (!(vsi->all_enatc & BIT(i)))
+			continue;
+
+		ch = kzalloc(sizeof(*ch), GFP_KERNEL);
+		if (!ch) {
+			ret = -ENOMEM;
+			goto err_free;
+		}
+		INIT_LIST_HEAD(&ch->list);
+		ch->num_rxq = vsi->mqprio_qopt.qopt.count[i];
+		ch->num_txq = vsi->mqprio_qopt.qopt.count[i];
+		ch->base_q = vsi->mqprio_qopt.qopt.offset[i];
+		ch->max_tx_rate = vsi->mqprio_qopt.max_rate[i];
+		ch->min_tx_rate = vsi->mqprio_qopt.min_rate[i];
+
+		/* convert to Kbits/s */
+		if (ch->max_tx_rate)
+			ch->max_tx_rate = div_u64(ch->max_tx_rate,
+						  ICE_BW_KBPS_DIVISOR);
+		if (ch->min_tx_rate)
+			ch->min_tx_rate = div_u64(ch->min_tx_rate,
+						  ICE_BW_KBPS_DIVISOR);
+
+		ret = ice_create_q_channel(vsi, ch);
+		if (ret) {
+			dev_err(ice_pf_to_dev(pf),
+				"failed creating channel TC:%d\n", i);
+			kfree(ch);
+			goto err_free;
+		}
+		list_add_tail(&ch->list, &vsi->ch_list);
+		vsi->tc_map_vsi[i] = ch->ch_vsi;
+		dev_dbg(ice_pf_to_dev(pf),
+			"successfully created channel: VSI %pK\n", ch->ch_vsi);
+	}
+	return 0;
+
+err_free:
+	ice_remove_q_channels(vsi, false);
+
+	return ret;
+}
+
+/**
+ * ice_setup_tc_mqprio_qdisc - configure multiple traffic classes
+ * @netdev: net device to configure
+ * @type_data: TC offload data
+ */
+static int ice_setup_tc_mqprio_qdisc(struct net_device *netdev, void *type_data)
+{
+	struct tc_mqprio_qopt_offload *mqprio_qopt = type_data;
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_vsi *vsi = np->vsi;
+	struct ice_pf *pf = vsi->back;
+	u16 mode, ena_tc_qdisc = 0;
+	int cur_txq, cur_rxq;
+	u8 hw = 0, num_tcf;
+	struct device *dev;
+	int ret, i;
+
+	dev = ice_pf_to_dev(pf);
+	num_tcf = mqprio_qopt->qopt.num_tc;
+	hw = mqprio_qopt->qopt.hw;
+	mode = mqprio_qopt->mode;
+	if (!hw) {
+		clear_bit(ICE_FLAG_TC_MQPRIO, pf->flags);
+		vsi->ch_rss_size = 0;
+		memcpy(&vsi->mqprio_qopt, mqprio_qopt, sizeof(*mqprio_qopt));
+		goto config_tcf;
+	}
+
+	/* Generate queue region map for number of TCF requested */
+	for (i = 0; i < num_tcf; i++)
+		ena_tc_qdisc |= BIT(i);
+
+	switch (mode) {
+	case TC_MQPRIO_MODE_CHANNEL:
+
+		ret = ice_validate_mqprio_qopt(vsi, mqprio_qopt);
+		if (ret) {
+			netdev_err(netdev, "failed to validate_mqprio_qopt(), ret %d\n",
+				   ret);
+			return ret;
+		}
+		memcpy(&vsi->mqprio_qopt, mqprio_qopt, sizeof(*mqprio_qopt));
+		set_bit(ICE_FLAG_TC_MQPRIO, pf->flags);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+config_tcf:
+
+	/* Requesting same TCF configuration as already enabled */
+	if (ena_tc_qdisc == vsi->tc_cfg.ena_tc &&
+	    mode != TC_MQPRIO_MODE_CHANNEL)
+		return 0;
+
+	/* Pause VSI queues */
+	ice_dis_vsi(vsi, true);
+
+	if (!hw && !test_bit(ICE_FLAG_TC_MQPRIO, pf->flags))
+		ice_remove_q_channels(vsi, true);
+
+	if (!hw && !test_bit(ICE_FLAG_TC_MQPRIO, pf->flags)) {
+		vsi->req_txq = min_t(int, ice_get_avail_txq_count(pf),
+				     num_online_cpus());
+		vsi->req_rxq = min_t(int, ice_get_avail_rxq_count(pf),
+				     num_online_cpus());
+	} else {
+		/* logic to rebuild VSI, same like ethtool -L */
+		u16 offset = 0, qcount_tx = 0, qcount_rx = 0;
+
+		for (i = 0; i < num_tcf; i++) {
+			if (!(ena_tc_qdisc & BIT(i)))
+				continue;
+
+			offset = vsi->mqprio_qopt.qopt.offset[i];
+			qcount_rx = vsi->mqprio_qopt.qopt.count[i];
+			qcount_tx = vsi->mqprio_qopt.qopt.count[i];
+		}
+		vsi->req_txq = offset + qcount_tx;
+		vsi->req_rxq = offset + qcount_rx;
+
+		/* store away original rss_size info, so that it gets reused
+		 * form ice_vsi_rebuild during tc-qdisc delete stage - to
+		 * determine, what should be the rss_sizefor main VSI
+		 */
+		vsi->orig_rss_size = vsi->rss_size;
+	}
+
+	/* save current values of Tx and Rx queues before calling VSI rebuild
+	 * for fallback option
+	 */
+	cur_txq = vsi->num_txq;
+	cur_rxq = vsi->num_rxq;
+
+	/* proceed with rebuild main VSI using correct number of queues */
+	ret = ice_vsi_rebuild(vsi, false);
+	if (ret) {
+		/* fallback to current number of queues */
+		dev_info(dev, "Rebuild failed with new queues, try with current number of queues\n");
+		vsi->req_txq = cur_txq;
+		vsi->req_rxq = cur_rxq;
+		clear_bit(ICE_RESET_FAILED, pf->state);
+		if (ice_vsi_rebuild(vsi, false)) {
+			dev_err(dev, "Rebuild of main VSI failed again\n");
+			return ret;
+		}
+	}
+
+	vsi->all_numtc = num_tcf;
+	vsi->all_enatc = ena_tc_qdisc;
+	ret = ice_vsi_cfg_tc(vsi, ena_tc_qdisc);
+	if (ret) {
+		netdev_err(netdev, "failed configuring TC for VSI id=%d\n",
+			   vsi->vsi_num);
+		goto exit;
+	}
+
+	if (test_bit(ICE_FLAG_TC_MQPRIO, pf->flags)) {
+		u64 max_tx_rate = vsi->mqprio_qopt.max_rate[0];
+		u64 min_tx_rate = vsi->mqprio_qopt.min_rate[0];
+
+		/* set TC0 rate limit if specified */
+		if (max_tx_rate || min_tx_rate) {
+			/* convert to Kbits/s */
+			if (max_tx_rate)
+				max_tx_rate = div_u64(max_tx_rate, ICE_BW_KBPS_DIVISOR);
+			if (min_tx_rate)
+				min_tx_rate = div_u64(min_tx_rate, ICE_BW_KBPS_DIVISOR);
+
+			ret = ice_set_bw_limit(vsi, max_tx_rate, min_tx_rate);
+			if (!ret) {
+				dev_dbg(dev, "set Tx rate max %llu min %llu for VSI(%u)\n",
+					max_tx_rate, min_tx_rate, vsi->vsi_num);
+			} else {
+				dev_err(dev, "failed to set Tx rate max %llu min %llu for VSI(%u)\n",
+					max_tx_rate, min_tx_rate, vsi->vsi_num);
+				goto exit;
+			}
+		}
+		ret = ice_create_q_channels(vsi);
+		if (ret) {
+			netdev_err(netdev, "failed configuring queue channels\n");
+			goto exit;
+		} else {
+			netdev_dbg(netdev, "successfully configured channels\n");
+		}
+	}
+
+	if (vsi->ch_rss_size)
+		ice_vsi_cfg_rss_lut_key(vsi);
+
+exit:
+	/* if error, reset the all_numtc and all_enatc */
+	if (ret) {
+		vsi->all_numtc = 0;
+		vsi->all_enatc = 0;
+	}
+	/* resume VSI */
+	ice_ena_vsi(vsi, true);
+
+	return ret;
+}
+
 static LIST_HEAD(ice_block_cb_list);
 
 static int
@@ -7113,6 +7981,8 @@ ice_setup_tc(struct net_device *netdev, enum tc_setup_type type,
 	     void *type_data)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_pf *pf = np->vsi->back;
+	int err;
 
 	switch (type) {
 	case TC_SETUP_BLOCK:
@@ -7120,6 +7990,12 @@ ice_setup_tc(struct net_device *netdev, enum tc_setup_type type,
 						  &ice_block_cb_list,
 						  ice_setup_tc_block_cb,
 						  np, np, true);
+	case TC_SETUP_QDISC_MQPRIO:
+		/* setup traffic classifier for receive side */
+		mutex_lock(&pf->tc_mutex);
+		err = ice_setup_tc_mqprio_qdisc(netdev, type_data);
+		mutex_unlock(&pf->tc_mutex);
+		return err;
 	default:
 		return -EOPNOTSUPP;
 	}
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
