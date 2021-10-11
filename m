Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FE542978A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Oct 2021 21:27:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 87FCB404CE;
	Mon, 11 Oct 2021 19:27:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gn79CZ0x5yJk; Mon, 11 Oct 2021 19:27:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0139F4033A;
	Mon, 11 Oct 2021 19:27:33 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 187601BF2A6
 for <intel-wired-lan@osuosl.org>; Mon, 11 Oct 2021 19:27:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4FA3840367
 for <intel-wired-lan@osuosl.org>; Mon, 11 Oct 2021 19:27:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V8KqBlIPO6NH for <intel-wired-lan@osuosl.org>;
 Mon, 11 Oct 2021 19:27:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0BDB340363
 for <intel-wired-lan@osuosl.org>; Mon, 11 Oct 2021 19:27:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10134"; a="214100408"
X-IronPort-AV: E=Sophos;i="5.85,365,1624345200"; d="scan'208";a="214100408"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 12:27:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,365,1624345200"; d="scan'208";a="460084366"
Received: from msu-dell.jf.intel.com ([10.166.233.5])
 by orsmga002.jf.intel.com with ESMTP; 11 Oct 2021 12:27:17 -0700
From: sudheer.mogilappagari@intel.com
To: intel-wired-lan@osuosl.org
Date: Mon, 11 Oct 2021 12:25:16 -0700
Message-Id: <20211011192518.1867431-2-sudheer.mogilappagari@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211011192518.1867431-1-sudheer.mogilappagari@intel.com>
References: <20211011192518.1867431-1-sudheer.mogilappagari@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 1/3] ice: Add infrastructure for
 mqprio support via ndo_setup_tc
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

Add infrastruture required for "ndo_setup_tc:qdisc_mqprio".
ice_vsi_setup is modified to configure traffic classes based
on mqprio data received from the stack. This includes low-level
functions to configure min,max rate-limit parameters in hardware
for traffic classes. Each traffic class gets mapped to a hardware
channel (VSI) which can be individually configured with different
banwidth parameters.

Signed-off-by: Kiran Patil <kiran.patil@intel.com>
Signed-off-by: Tarun Singh <tarun.k.singh@intel.com>
Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |  78 +++-
 drivers/net/ethernet/intel/ice/ice_base.c     |  31 +-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  | 201 ++++++---
 drivers/net/ethernet/intel/ice/ice_dcb_lib.h  |  10 +-
 drivers/net/ethernet/intel/ice/ice_eswitch.c  |   2 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      | 384 +++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_lib.h      |  15 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |   6 +-
 drivers/net/ethernet/intel/ice/ice_sched.c    |  68 +++-
 drivers/net/ethernet/intel/ice/ice_sched.h    |   2 +
 drivers/net/ethernet/intel/ice/ice_txrx.h     |   7 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   3 +
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |   4 +-
 13 files changed, 673 insertions(+), 138 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 5da21546aed7..463ba57a3561 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -38,6 +38,7 @@
 #include <linux/avf/virtchnl.h>
 #include <linux/cpu_rmap.h>
 #include <linux/dim.h>
+#include <net/pkt_cls.h>
 #include <net/devlink.h>
 #include <net/ipv6.h>
 #include <net/xdp_sock.h>
@@ -105,6 +106,10 @@
 #define ICE_INVAL_VFID		256
 
 #define ICE_MAX_RXQS_PER_TC		256	/* Used when setting VSI context per TC Rx queues */
+
+#define ICE_CHNL_START_TC		1
+#define ICE_CHNL_MAX_TC			16
+
 #define ICE_MAX_RESET_WAIT		20
 
 #define ICE_VSIQF_HKEY_ARRAY_SIZE	((VSIQF_HKEY_MAX_INDEX + 1) *	4)
@@ -146,6 +151,9 @@
 #define ice_for_each_q_vector(vsi, i) \
 	for ((i) = 0; (i) < (vsi)->num_q_vectors; (i)++)
 
+#define ice_for_each_chnl_tc(i)	\
+	for ((i) = ICE_CHNL_START_TC; (i) < ICE_CHNL_MAX_TC; (i)++)
+
 #define ICE_UCAST_PROMISC_BITS (ICE_PROMISC_UCAST_TX | ICE_PROMISC_UCAST_RX)
 
 #define ICE_UCAST_VLAN_PROMISC_BITS (ICE_PROMISC_UCAST_TX | \
@@ -171,6 +179,21 @@ enum ice_feature {
 
 DECLARE_STATIC_KEY_FALSE(ice_xdp_locking_key);
 
+struct ice_channel {
+	struct list_head list;
+	u8 type;
+	u16 sw_id;
+	u16 base_q;
+	u16 num_rxq;
+	u16 num_txq;
+	u16 vsi_num;
+	u8 ena_tc;
+	struct ice_aqc_vsi_props info;
+	u64 max_tx_rate;
+	u64 min_tx_rate;
+	struct ice_vsi *ch_vsi;
+};
+
 struct ice_txq_meta {
 	u32 q_teid;	/* Tx-scheduler element identifier */
 	u16 q_id;	/* Entry in VSI's txq_map bitmap */
@@ -188,7 +211,7 @@ struct ice_tc_info {
 
 struct ice_tc_cfg {
 	u8 numtc; /* Total number of enabled TCs */
-	u8 ena_tc; /* Tx map */
+	u16 ena_tc; /* Tx map */
 	struct ice_tc_info tc_info[ICE_MAX_TRAFFIC_CLASS];
 };
 
@@ -360,6 +383,34 @@ struct ice_vsi {
 
 	struct net_device **target_netdevs;
 
+	struct tc_mqprio_qopt_offload mqprio_qopt; /* queue parameters */
+
+	/* Channel Specific Fields */
+	struct ice_vsi *tc_map_vsi[ICE_CHNL_MAX_TC];
+	u16 cnt_q_avail;
+	u16 next_base_q;	/* next queue to be used for channel setup */
+	struct list_head ch_list;
+	u16 num_chnl_rxq;
+	u16 num_chnl_txq;
+	u16 ch_rss_size;
+	/* store away rss size info before configuring ADQ channels so that,
+	 * it can be used after tc-qdisc delete, to get back RSS setting as
+	 * they were before
+	 */
+	u16 orig_rss_size;
+	/* this keeps tracks of all enabled TC with and without DCB
+	 * and inclusive of ADQ, vsi->mqprio_opt keeps track of queue
+	 * information
+	 */
+	u8 all_numtc;
+	u16 all_enatc;
+
+	/* store away TC info, to be used for rebuild logic */
+	u8 old_numtc;
+	u16 old_ena_tc;
+
+	struct ice_channel *ch;
+
 	/* setup back reference, to which aggregator node this VSI
 	 * corresponds to
 	 */
@@ -405,6 +456,7 @@ enum ice_pf_flags {
 	ICE_FLAG_PTP_SUPPORTED,		/* PTP is supported by NVM */
 	ICE_FLAG_PTP,			/* PTP is enabled by software */
 	ICE_FLAG_ADV_FEATURES,
+	ICE_FLAG_TC_MQPRIO,		/* support for Multi queue TC */
 	ICE_FLAG_CLS_FLOWER,
 	ICE_FLAG_LINK_DOWN_ON_CLOSE_ENA,
 	ICE_FLAG_TOTAL_PORT_SHUTDOWN_ENA,
@@ -716,6 +768,30 @@ static inline void ice_clear_sriov_cap(struct ice_pf *pf)
 			((base_idx) * ICE_FD_STAT_CTR_BLOCK_COUNT)
 #define ICE_FD_SB_STAT_IDX(base_idx) ICE_FD_STAT_PF_IDX(base_idx)
 
+/**
+ * ice_is_adq_active - any active ADQs
+ * @pf: pointer to PF
+ *
+ * This function returns true if there are any ADQs configured (which is
+ * determined by looking at VSI type (which should be VSI_PF), numtc, and
+ * TC_MQPRIO flag) otherwise return false
+ */
+static inline bool ice_is_adq_active(struct ice_pf *pf)
+{
+	struct ice_vsi *vsi;
+
+	vsi = ice_get_main_vsi(pf);
+	if (!vsi)
+		return false;
+
+	/* is ADQ configured */
+	if (vsi->tc_cfg.numtc > ICE_CHNL_START_TC &&
+	    test_bit(ICE_FLAG_TC_MQPRIO, pf->flags))
+		return true;
+
+	return false;
+}
+
 bool netif_is_ice(struct net_device *dev);
 int ice_vsi_setup_tx_rings(struct ice_vsi *vsi);
 int ice_vsi_setup_rx_rings(struct ice_vsi *vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 5cfc36b5572b..ab86f78eb262 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -213,6 +213,9 @@ static u16 ice_calc_txq_handle(struct ice_vsi *vsi, struct ice_tx_ring *ring, u8
 {
 	WARN_ONCE(ice_ring_is_xdp(ring) && tc, "XDP ring can't belong to TC other than 0\n");
 
+	if (ring->ch)
+		return ring->q_index - ring->ch->base_q;
+
 	/* Idea here for calculation is that we subtract the number of queue
 	 * count from TC that ring belongs to from it's absolute queue index
 	 * and as a result we get the queue's index within TC.
@@ -301,7 +304,10 @@ ice_setup_tx_ctx(struct ice_tx_ring *ring, struct ice_tlan_ctx *tlan_ctx, u16 pf
 	case ICE_VSI_LB:
 	case ICE_VSI_CTRL:
 	case ICE_VSI_PF:
-		tlan_ctx->vmvf_type = ICE_TLAN_CTX_VMVF_TYPE_PF;
+		if (ring->ch)
+			tlan_ctx->vmvf_type = ICE_TLAN_CTX_VMVF_TYPE_VMQ;
+		else
+			tlan_ctx->vmvf_type = ICE_TLAN_CTX_VMVF_TYPE_PF;
 		break;
 	case ICE_VSI_VF:
 		/* Firmware expects vmvf_num to be absolute VF ID */
@@ -316,7 +322,10 @@ ice_setup_tx_ctx(struct ice_tx_ring *ring, struct ice_tlan_ctx *tlan_ctx, u16 pf
 	}
 
 	/* make sure the context is associated with the right VSI */
-	tlan_ctx->src_vsi = ice_get_hw_vsi_num(hw, vsi->idx);
+	if (ring->ch)
+		tlan_ctx->src_vsi = ring->ch->vsi_num;
+	else
+		tlan_ctx->src_vsi = ice_get_hw_vsi_num(hw, vsi->idx);
 
 	/* Restrict Tx timestamps to the PF VSI */
 	switch (vsi->type) {
@@ -748,6 +757,7 @@ ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_tx_ring *ring,
 	u8 buf_len = struct_size(qg_buf, txqs, 1);
 	struct ice_tlan_ctx tlan_ctx = { 0 };
 	struct ice_aqc_add_txqs_perq *txq;
+	struct ice_channel *ch = ring->ch;
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
 	int status;
@@ -786,8 +796,11 @@ ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_tx_ring *ring,
 		ring->q_handle = ice_calc_txq_handle(vsi, ring, tc);
 	}
 
-	status = ice_ena_vsi_txq(vsi->port_info, vsi->idx, tc, ring->q_handle,
-				 1, qg_buf, buf_len, NULL);
+	status = (ch ?
+		  ice_ena_vsi_txq(vsi->port_info, ch->ch_vsi->idx, 0,
+				  ring->q_handle, 1, qg_buf, buf_len, NULL) :
+		  ice_ena_vsi_txq(vsi->port_info, vsi->idx, tc,
+				  ring->q_handle, 1, qg_buf, buf_len, NULL));
 	if (status) {
 		dev_err(ice_pf_to_dev(pf), "Failed to set LAN Tx queue context, error: %d\n",
 			status);
@@ -968,6 +981,7 @@ void
 ice_fill_txq_meta(struct ice_vsi *vsi, struct ice_tx_ring *ring,
 		  struct ice_txq_meta *txq_meta)
 {
+	struct ice_channel *ch = ring->ch;
 	u8 tc;
 
 	if (IS_ENABLED(CONFIG_DCB))
@@ -978,6 +992,11 @@ ice_fill_txq_meta(struct ice_vsi *vsi, struct ice_tx_ring *ring,
 	txq_meta->q_id = ring->reg_idx;
 	txq_meta->q_teid = ring->txq_teid;
 	txq_meta->q_handle = ring->q_handle;
-	txq_meta->vsi_idx = vsi->idx;
-	txq_meta->tc = tc;
+	if (ch) {
+		txq_meta->vsi_idx = ch->ch_vsi->idx;
+		txq_meta->tc = 0;
+	} else {
+		txq_meta->vsi_idx = vsi->idx;
+		txq_meta->tc = tc;
+	}
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 856385dd476a..b94d8daeaa58 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -4,53 +4,11 @@
 #include "ice_dcb_lib.h"
 #include "ice_dcb_nl.h"
 
-/**
- * ice_vsi_cfg_netdev_tc - Setup the netdev TC configuration
- * @vsi: the VSI being configured
- * @ena_tc: TC map to be enabled
- */
-void ice_vsi_cfg_netdev_tc(struct ice_vsi *vsi, u8 ena_tc)
-{
-	struct net_device *netdev = vsi->netdev;
-	struct ice_pf *pf = vsi->back;
-	struct ice_dcbx_cfg *dcbcfg;
-	u8 netdev_tc;
-	int i;
-
-	if (!netdev)
-		return;
-
-	if (!ena_tc) {
-		netdev_reset_tc(netdev);
-		return;
-	}
-
-	if (netdev_set_num_tc(netdev, vsi->tc_cfg.numtc))
-		return;
-
-	dcbcfg = &pf->hw.port_info->qos_cfg.local_dcbx_cfg;
-
-	ice_for_each_traffic_class(i)
-		if (vsi->tc_cfg.ena_tc & BIT(i))
-			netdev_set_tc_queue(netdev,
-					    vsi->tc_cfg.tc_info[i].netdev_tc,
-					    vsi->tc_cfg.tc_info[i].qcount_tx,
-					    vsi->tc_cfg.tc_info[i].qoffset);
-
-	for (i = 0; i < ICE_MAX_USER_PRIORITY; i++) {
-		u8 ets_tc = dcbcfg->etscfg.prio_table[i];
-
-		/* Get the mapped netdev TC# for the UP */
-		netdev_tc = vsi->tc_cfg.tc_info[ets_tc].netdev_tc;
-		netdev_set_prio_tc_map(netdev, i, netdev_tc);
-	}
-}
-
 /**
  * ice_dcb_get_ena_tc - return bitmap of enabled TCs
  * @dcbcfg: DCB config to evaluate for enabled TCs
  */
-u8 ice_dcb_get_ena_tc(struct ice_dcbx_cfg *dcbcfg)
+static u8 ice_dcb_get_ena_tc(struct ice_dcbx_cfg *dcbcfg)
 {
 	u8 i, num_tc, ena_tc = 1;
 
@@ -178,6 +136,67 @@ u8 ice_dcb_get_num_tc(struct ice_dcbx_cfg *dcbcfg)
 	return ret;
 }
 
+/**
+ * ice_get_first_droptc - returns number of first droptc
+ * @vsi: used to find the first droptc
+ *
+ * This function returns the value of first_droptc.
+ * When DCB is enabled, first droptc information is derived from enabled_tc
+ * and PFC enabled bits. otherwise this function returns 0 as there is one
+ * TC without DCB (tc0)
+ */
+static u8 ice_get_first_droptc(struct ice_vsi *vsi)
+{
+	struct ice_dcbx_cfg *cfg = &vsi->port_info->qos_cfg.local_dcbx_cfg;
+	struct device *dev = ice_pf_to_dev(vsi->back);
+	u8 num_tc, ena_tc_map, pfc_ena_map;
+	u8 i;
+
+	num_tc = ice_dcb_get_num_tc(cfg);
+
+	/* get bitmap of enabled TCs */
+	ena_tc_map = ice_dcb_get_ena_tc(cfg);
+
+	/* get bitmap of PFC enabled TCs */
+	pfc_ena_map = cfg->pfc.pfcena;
+
+	/* get first TC that is not PFC enabled */
+	for (i = 0; i < num_tc; i++) {
+		if ((ena_tc_map & BIT(i)) && (!(pfc_ena_map & BIT(i)))) {
+			dev_dbg(dev, "first drop tc = %d\n", i);
+			return i;
+		}
+	}
+
+	dev_dbg(dev, "first drop tc = 0\n");
+	return 0;
+}
+
+/**
+ * ice_vsi_set_dcb_tc_cfg - Set VSI's TC based on DCB configuration
+ * @vsi: pointer to the VSI instance
+ */
+void ice_vsi_set_dcb_tc_cfg(struct ice_vsi *vsi)
+{
+	struct ice_dcbx_cfg *cfg = &vsi->port_info->qos_cfg.local_dcbx_cfg;
+
+	switch (vsi->type) {
+	case ICE_VSI_PF:
+		vsi->tc_cfg.ena_tc = ice_dcb_get_ena_tc(cfg);
+		vsi->tc_cfg.numtc = ice_dcb_get_num_tc(cfg);
+		break;
+	case ICE_VSI_CHNL:
+		vsi->tc_cfg.ena_tc = BIT(ice_get_first_droptc(vsi));
+		vsi->tc_cfg.numtc = 1;
+		break;
+	case ICE_VSI_CTRL:
+	case ICE_VSI_LB:
+	default:
+		vsi->tc_cfg.ena_tc = ICE_DFLT_TRAFFIC_CLASS;
+		vsi->tc_cfg.numtc = 1;
+	}
+}
+
 /**
  * ice_dcb_get_tc - Get the TC associated with the queue
  * @vsi: ptr to the VSI
@@ -218,11 +237,68 @@ void ice_vsi_cfg_dcb_rings(struct ice_vsi *vsi)
 
 		qoffset = vsi->tc_cfg.tc_info[n].qoffset;
 		qcount = vsi->tc_cfg.tc_info[n].qcount_tx;
-		for (i = qoffset; i < (qoffset + qcount); i++) {
-			tx_ring = vsi->tx_rings[i];
-			rx_ring = vsi->rx_rings[i];
-			tx_ring->dcb_tc = n;
-			rx_ring->dcb_tc = n;
+		for (i = qoffset; i < (qoffset + qcount); i++)
+			vsi->tx_rings[i]->dcb_tc = n;
+
+		qcount = vsi->tc_cfg.tc_info[n].qcount_rx;
+		for (i = qoffset; i < (qoffset + qcount); i++)
+			vsi->rx_rings[i]->dcb_tc = n;
+	}
+	/* applicable only if "all_enatc" is set, which will be set from
+	 * setup_tc method as part of configuring channels
+	 */
+	if (vsi->all_enatc) {
+		u8 first_droptc = ice_get_first_droptc(vsi);
+
+		/* When DCB is configured, TC for ADQ queues (which are really
+		 * PF queues) should be the first drop TC of the main VSI
+		 */
+		ice_for_each_chnl_tc(n) {
+			if (!(vsi->all_enatc & BIT(n)))
+				break;
+
+			qoffset = vsi->mqprio_qopt.qopt.offset[n];
+			qcount = vsi->mqprio_qopt.qopt.count[n];
+			for (i = qoffset; i < (qoffset + qcount); i++) {
+				vsi->tx_rings[i]->dcb_tc = first_droptc;
+				vsi->rx_rings[i]->dcb_tc = first_droptc;
+			}
+		}
+	}
+}
+
+/**
+ * ice_dcb_ena_dis_vsi - disable certain VSIs for DCB config/reconfig
+ * @pf: pointer to the PF instance
+ * @ena: true to enable VSIs, false to disable
+ * @locked: true if caller holds RTNL lock, false otherwise
+ *
+ * Before a new DCB configuration can be applied, VSIs of type PF, SWITCHDEV
+ * and CHNL need to be brought down. Following completion of DCB configuration
+ * the VSIs that were downed need to be brought up again. This helper function
+ * does both.
+ */
+static void ice_dcb_ena_dis_vsi(struct ice_pf *pf, bool ena, bool locked)
+{
+	int i;
+
+	ice_for_each_vsi(pf, i) {
+		struct ice_vsi *vsi = pf->vsi[i];
+
+		if (!vsi)
+			continue;
+
+		switch (vsi->type) {
+		case ICE_VSI_CHNL:
+		case ICE_VSI_SWITCHDEV_CTRL:
+		case ICE_VSI_PF:
+			if (ena)
+				ice_ena_vsi(vsi, locked);
+			else
+				ice_dis_vsi(vsi, locked);
+			break;
+		default:
+			continue;
 		}
 	}
 }
@@ -331,7 +407,9 @@ int ice_pf_dcb_cfg(struct ice_pf *pf, struct ice_dcbx_cfg *new_cfg, bool locked)
 	 */
 	if (!locked)
 		rtnl_lock();
-	ice_dis_vsi(pf_vsi, true);
+
+	/* disable VSIs affected by DCB changes */
+	ice_dcb_ena_dis_vsi(pf, false, true);
 
 	memcpy(curr_cfg, new_cfg, sizeof(*curr_cfg));
 	memcpy(&curr_cfg->etsrec, &curr_cfg->etscfg, sizeof(curr_cfg->etsrec));
@@ -359,7 +437,8 @@ int ice_pf_dcb_cfg(struct ice_pf *pf, struct ice_dcbx_cfg *new_cfg, bool locked)
 	ice_pf_dcb_recfg(pf);
 
 out:
-	ice_ena_vsi(pf_vsi, true);
+	/* enable previously downed VSIs */
+	ice_dcb_ena_dis_vsi(pf, true, true);
 	if (!locked)
 		rtnl_unlock();
 free_cfg:
@@ -674,6 +753,8 @@ void ice_pf_dcb_recfg(struct ice_pf *pf)
 				tc_map = ICE_DFLT_TRAFFIC_CLASS;
 				ice_dcb_noncontig_cfg(pf);
 			}
+		} else if (vsi->type == ICE_VSI_CHNL) {
+			tc_map = BIT(ice_get_first_droptc(vsi));
 		} else {
 			tc_map = ICE_DFLT_TRAFFIC_CLASS;
 		}
@@ -684,10 +765,11 @@ void ice_pf_dcb_recfg(struct ice_pf *pf)
 				vsi->idx);
 			continue;
 		}
-		/* no need to proceed with remaining cfg if it is switchdev
-		 * VSI
+		/* no need to proceed with remaining cfg if it is CHNL
+		 * or switchdev VSI
 		 */
-		if (vsi->type == ICE_VSI_SWITCHDEV_CTRL)
+		if (vsi->type == ICE_VSI_CHNL ||
+		    vsi->type == ICE_VSI_SWITCHDEV_CTRL)
 			continue;
 
 		ice_vsi_map_rings_to_vectors(vsi);
@@ -862,7 +944,6 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 	struct ice_dcbx_cfg tmp_dcbx_cfg;
 	bool need_reconfig = false;
 	struct ice_port_info *pi;
-	struct ice_vsi *pf_vsi;
 	u8 mib_type;
 	int ret;
 
@@ -938,14 +1019,9 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 		clear_bit(ICE_FLAG_DCB_ENA, pf->flags);
 	}
 
-	pf_vsi = ice_get_main_vsi(pf);
-	if (!pf_vsi) {
-		dev_dbg(dev, "PF VSI doesn't exist\n");
-		goto out;
-	}
-
 	rtnl_lock();
-	ice_dis_vsi(pf_vsi, true);
+	/* disable VSIs affected by DCB changes */
+	ice_dcb_ena_dis_vsi(pf, false, true);
 
 	ret = ice_query_port_ets(pf->hw.port_info, &buf, sizeof(buf), NULL);
 	if (ret) {
@@ -956,7 +1032,8 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 	/* changes in configuration update VSI */
 	ice_pf_dcb_recfg(pf);
 
-	ice_ena_vsi(pf_vsi, true);
+	/* enable previously downed VSIs */
+	ice_dcb_ena_dis_vsi(pf, true, true);
 unlock_rtnl:
 	rtnl_unlock();
 out:
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.h b/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
index 6700e97b3b51..4c421c842a13 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
@@ -16,7 +16,6 @@
 
 void ice_dcb_rebuild(struct ice_pf *pf);
 int ice_dcb_sw_dflt_cfg(struct ice_pf *pf, bool ets_willing, bool locked);
-u8 ice_dcb_get_ena_tc(struct ice_dcbx_cfg *dcbcfg);
 u8 ice_dcb_get_num_tc(struct ice_dcbx_cfg *dcbcfg);
 void ice_vsi_set_dcb_tc_cfg(struct ice_vsi *vsi);
 bool ice_is_pfc_causing_hung_q(struct ice_pf *pf, unsigned int txqueue);
@@ -34,8 +33,6 @@ ice_tx_prepare_vlan_flags_dcb(struct ice_tx_ring *tx_ring,
 void
 ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 				    struct ice_rq_event_info *event);
-void ice_vsi_cfg_netdev_tc(struct ice_vsi *vsi, u8 ena_tc);
-
 /**
  * ice_find_q_in_range
  * @low: start of queue range for a TC i.e. offset of TC
@@ -69,6 +66,12 @@ static inline u8 ice_get_pfc_mode(struct ice_pf *pf)
 #else
 static inline void ice_dcb_rebuild(struct ice_pf *pf) { }
 
+static inline void ice_vsi_set_dcb_tc_cfg(struct ice_vsi *vsi)
+{
+	vsi->tc_cfg.ena_tc = ICE_DFLT_TRAFFIC_CLASS;
+	vsi->tc_cfg.numtc = 1;
+}
+
 static inline u8 ice_dcb_get_ena_tc(struct ice_dcbx_cfg __always_unused *dcbcfg)
 {
 	return ICE_DFLT_TRAFFIC_CLASS;
@@ -130,7 +133,6 @@ static inline void ice_vsi_cfg_dcb_rings(struct ice_vsi *vsi) { }
 static inline void ice_update_dcb_stats(struct ice_pf *pf) { }
 static inline void
 ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf, struct ice_rq_event_info *event) { }
-static inline void ice_vsi_cfg_netdev_tc(struct ice_vsi *vsi, u8 ena_tc) { }
 static inline void ice_set_cgd_num(struct ice_tlan_ctx *tlan_ctx, u8 dcb_tc) { }
 #endif /* CONFIG_DCB */
 #endif /* _ICE_DCB_LIB_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index f10d1fe63de4..51250ec2544e 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -329,7 +329,7 @@ ice_eswitch_release_env(struct ice_pf *pf)
 static struct ice_vsi *
 ice_eswitch_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
 {
-	return ice_vsi_setup(pf, pi, ICE_VSI_SWITCHDEV_CTRL, ICE_INVAL_VFID);
+	return ice_vsi_setup(pf, pi, ICE_VSI_SWITCHDEV_CTRL, ICE_INVAL_VFID, NULL);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index afd04f7f7caa..d76e5f752ead 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -22,6 +22,8 @@ const char *ice_vsi_type_str(enum ice_vsi_type vsi_type)
 		return "ICE_VSI_VF";
 	case ICE_VSI_CTRL:
 		return "ICE_VSI_CTRL";
+	case ICE_VSI_CHNL:
+		return "ICE_VSI_CHNL";
 	case ICE_VSI_LB:
 		return "ICE_VSI_LB";
 	case ICE_VSI_SWITCHDEV_CTRL:
@@ -73,6 +75,8 @@ static int ice_vsi_alloc_arrays(struct ice_vsi *vsi)
 	struct device *dev;
 
 	dev = ice_pf_to_dev(pf);
+	if (vsi->type == ICE_VSI_CHNL)
+		return 0;
 
 	/* allocate memory for both Tx and Rx ring pointers */
 	vsi->tx_rings = devm_kcalloc(dev, vsi->alloc_txq,
@@ -229,6 +233,10 @@ static void ice_vsi_set_num_qs(struct ice_vsi *vsi, u16 vf_id)
 		vsi->alloc_rxq = 1;
 		vsi->num_q_vectors = 1;
 		break;
+	case ICE_VSI_CHNL:
+		vsi->alloc_txq = 0;
+		vsi->alloc_rxq = 0;
+		break;
 	case ICE_VSI_LB:
 		vsi->alloc_txq = 1;
 		vsi->alloc_rxq = 1;
@@ -274,7 +282,7 @@ static int ice_get_free_slot(void *array, int size, int curr)
  * ice_vsi_delete - delete a VSI from the switch
  * @vsi: pointer to VSI being removed
  */
-static void ice_vsi_delete(struct ice_vsi *vsi)
+void ice_vsi_delete(struct ice_vsi *vsi)
 {
 	struct ice_pf *pf = vsi->back;
 	struct ice_vsi_ctx *ctxt;
@@ -345,7 +353,7 @@ static void ice_vsi_free_arrays(struct ice_vsi *vsi)
  *
  * Returns 0 on success, negative on failure
  */
-static int ice_vsi_clear(struct ice_vsi *vsi)
+int ice_vsi_clear(struct ice_vsi *vsi)
 {
 	struct ice_pf *pf = NULL;
 	struct device *dev;
@@ -438,12 +446,14 @@ static irqreturn_t ice_eswitch_msix_clean_rings(int __always_unused irq, void *d
  * ice_vsi_alloc - Allocates the next available struct VSI in the PF
  * @pf: board private structure
  * @vsi_type: type of VSI
+ * @ch: ptr to channel
  * @vf_id: ID of the VF being configured
  *
  * returns a pointer to a VSI on success, NULL on failure.
  */
 static struct ice_vsi *
-ice_vsi_alloc(struct ice_pf *pf, enum ice_vsi_type vsi_type, u16 vf_id)
+ice_vsi_alloc(struct ice_pf *pf, enum ice_vsi_type vsi_type,
+	      struct ice_channel *ch, u16 vf_id)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_vsi *vsi = NULL;
@@ -470,7 +480,7 @@ ice_vsi_alloc(struct ice_pf *pf, enum ice_vsi_type vsi_type, u16 vf_id)
 
 	if (vsi_type == ICE_VSI_VF)
 		ice_vsi_set_num_qs(vsi, vf_id);
-	else
+	else if (vsi_type != ICE_VSI_CHNL)
 		ice_vsi_set_num_qs(vsi, ICE_INVAL_VFID);
 
 	switch (vsi->type) {
@@ -499,6 +509,13 @@ ice_vsi_alloc(struct ice_pf *pf, enum ice_vsi_type vsi_type, u16 vf_id)
 		if (ice_vsi_alloc_arrays(vsi))
 			goto err_rings;
 		break;
+	case ICE_VSI_CHNL:
+		if (!ch)
+			goto err_rings;
+		vsi->num_rxq = ch->num_rxq;
+		vsi->num_txq = ch->num_txq;
+		vsi->next_base_q = ch->base_q;
+		break;
 	case ICE_VSI_LB:
 		if (ice_vsi_alloc_arrays(vsi))
 			goto err_rings;
@@ -615,6 +632,9 @@ static int ice_vsi_get_qs(struct ice_vsi *vsi)
 	};
 	int ret;
 
+	if (vsi->type == ICE_VSI_CHNL)
+		return 0;
+
 	ret = __ice_vsi_get_qs(&tx_qs_cfg);
 	if (ret)
 		return ret;
@@ -733,11 +753,16 @@ static void ice_vsi_set_rss_params(struct ice_vsi *vsi)
 
 	cap = &pf->hw.func_caps.common_cap;
 	switch (vsi->type) {
+	case ICE_VSI_CHNL:
 	case ICE_VSI_PF:
 		/* PF VSI will inherit RSS instance of PF */
 		vsi->rss_table_size = (u16)cap->rss_table_size;
-		vsi->rss_size = min_t(u16, num_online_cpus(),
-				      BIT(cap->rss_table_entry_width));
+		if (vsi->type == ICE_VSI_CHNL)
+			vsi->rss_size = min_t(u16, vsi->num_rxq,
+					      BIT(cap->rss_table_entry_width));
+		else
+			vsi->rss_size = min_t(u16, num_online_cpus(),
+					      BIT(cap->rss_table_entry_width));
 		vsi->rss_lut_type = ICE_AQC_GSET_RSS_LUT_TABLE_TYPE_PF;
 		break;
 	case ICE_VSI_SWITCHDEV_CTRL:
@@ -814,21 +839,13 @@ static void ice_vsi_setup_q_map(struct ice_vsi *vsi, struct ice_vsi_ctx *ctxt)
 	u16 num_txq_per_tc, num_rxq_per_tc;
 	u16 qcount_tx = vsi->alloc_txq;
 	u16 qcount_rx = vsi->alloc_rxq;
-	bool ena_tc0 = false;
 	u8 netdev_tc = 0;
 	int i;
 
-	/* at least TC0 should be enabled by default */
-	if (vsi->tc_cfg.numtc) {
-		if (!(vsi->tc_cfg.ena_tc & BIT(0)))
-			ena_tc0 = true;
-	} else {
-		ena_tc0 = true;
-	}
-
-	if (ena_tc0) {
-		vsi->tc_cfg.numtc++;
-		vsi->tc_cfg.ena_tc |= 1;
+	if (!vsi->tc_cfg.numtc) {
+		/* at least TC0 should be enabled by default */
+		vsi->tc_cfg.numtc = 1;
+		vsi->tc_cfg.ena_tc = 1;
 	}
 
 	num_rxq_per_tc = min_t(u16, qcount_rx / vsi->tc_cfg.numtc, ICE_MAX_RXQS_PER_TC);
@@ -970,6 +987,7 @@ static void ice_set_rss_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
 	dev = ice_pf_to_dev(pf);
 
 	switch (vsi->type) {
+	case ICE_VSI_CHNL:
 	case ICE_VSI_PF:
 		/* PF VSI will inherit RSS instance of PF */
 		lut_type = ICE_AQ_VSI_Q_OPT_RSS_LUT_PF;
@@ -992,6 +1010,28 @@ static void ice_set_rss_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
 				 ICE_AQ_VSI_Q_OPT_RSS_HASH_M);
 }
 
+static void
+ice_chnl_vsi_setup_q_map(struct ice_vsi *vsi, struct ice_vsi_ctx *ctxt)
+{
+	struct ice_pf *pf = vsi->back;
+	u16 qcount, qmap;
+	u8 offset = 0;
+	int pow;
+
+	qcount = min_t(int, vsi->num_rxq, pf->num_lan_msix);
+
+	pow = order_base_2(qcount);
+	qmap = ((offset << ICE_AQ_VSI_TC_Q_OFFSET_S) &
+		 ICE_AQ_VSI_TC_Q_OFFSET_M) |
+		 ((pow << ICE_AQ_VSI_TC_Q_NUM_S) &
+		   ICE_AQ_VSI_TC_Q_NUM_M);
+
+	ctxt->info.tc_mapping[0] = cpu_to_le16(qmap);
+	ctxt->info.mapping_flags |= cpu_to_le16(ICE_AQ_VSI_Q_MAP_CONTIG);
+	ctxt->info.q_mapping[0] = cpu_to_le16(vsi->next_base_q);
+	ctxt->info.q_mapping[1] = cpu_to_le16(qcount);
+}
+
 /**
  * ice_vsi_init - Create and initialize a VSI
  * @vsi: the VSI being configured
@@ -1020,6 +1060,7 @@ static int ice_vsi_init(struct ice_vsi *vsi, bool init_vsi)
 		ctxt->flags = ICE_AQ_VSI_TYPE_PF;
 		break;
 	case ICE_VSI_SWITCHDEV_CTRL:
+	case ICE_VSI_CHNL:
 		ctxt->flags = ICE_AQ_VSI_TYPE_VMDQ2;
 		break;
 	case ICE_VSI_VF:
@@ -1032,6 +1073,21 @@ static int ice_vsi_init(struct ice_vsi *vsi, bool init_vsi)
 		goto out;
 	}
 
+	/* Handle VLAN pruning for channel VSI if main VSI has VLAN
+	 * prune enabled
+	 */
+	if (vsi->type == ICE_VSI_CHNL) {
+		struct ice_vsi *main_vsi;
+
+		main_vsi = ice_get_main_vsi(pf);
+		if (main_vsi && ice_vsi_is_vlan_pruning_ena(main_vsi))
+			ctxt->info.sw_flags2 |=
+				ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA;
+		else
+			ctxt->info.sw_flags2 &=
+				~ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA;
+	}
+
 	ice_set_dflt_vsi_ctx(ctxt);
 	if (test_bit(ICE_FLAG_FD_ENA, pf->flags))
 		ice_set_fd_vsi_ctx(ctxt, vsi);
@@ -1052,13 +1108,17 @@ static int ice_vsi_init(struct ice_vsi *vsi, bool init_vsi)
 	}
 
 	ctxt->info.sw_id = vsi->port_info->sw_id;
-	ice_vsi_setup_q_map(vsi, ctxt);
-	if (!init_vsi) /* means VSI being updated */
-		/* must to indicate which section of VSI context are
-		 * being modified
-		 */
-		ctxt->info.valid_sections |=
-			cpu_to_le16(ICE_AQ_VSI_PROP_RXQ_MAP_VALID);
+	if (vsi->type == ICE_VSI_CHNL) {
+		ice_chnl_vsi_setup_q_map(vsi, ctxt);
+	} else {
+		ice_vsi_setup_q_map(vsi, ctxt);
+		if (!init_vsi) /* means VSI being updated */
+			/* must to indicate which section of VSI context are
+			 * being modified
+			 */
+			ctxt->info.valid_sections |=
+				cpu_to_le16(ICE_AQ_VSI_PROP_RXQ_MAP_VALID);
+	}
 
 	/* enable/disable MAC and VLAN anti-spoof when spoofchk is on/off
 	 * respectively
@@ -1237,6 +1297,8 @@ static int ice_vsi_setup_vector_base(struct ice_vsi *vsi)
 	/* SRIOV doesn't grab irq_tracker entries for each VSI */
 	if (vsi->type == ICE_VSI_VF)
 		return 0;
+	if (vsi->type == ICE_VSI_CHNL)
+		return 0;
 
 	if (vsi->base_vector) {
 		dev_dbg(dev, "VSI %d has non-zero base vector %d\n",
@@ -1403,7 +1465,7 @@ void ice_vsi_manage_rss_lut(struct ice_vsi *vsi, bool ena)
  * ice_vsi_cfg_rss_lut_key - Configure RSS params for a VSI
  * @vsi: VSI to be configured
  */
-static int ice_vsi_cfg_rss_lut_key(struct ice_vsi *vsi)
+int ice_vsi_cfg_rss_lut_key(struct ice_vsi *vsi)
 {
 	struct ice_pf *pf = vsi->back;
 	struct device *dev;
@@ -1411,7 +1473,25 @@ static int ice_vsi_cfg_rss_lut_key(struct ice_vsi *vsi)
 	int err;
 
 	dev = ice_pf_to_dev(pf);
-	vsi->rss_size = min_t(u16, vsi->rss_size, vsi->num_rxq);
+	if (vsi->type == ICE_VSI_PF && vsi->ch_rss_size &&
+	    (test_bit(ICE_FLAG_TC_MQPRIO, pf->flags))) {
+		vsi->rss_size = min_t(u16, vsi->rss_size, vsi->ch_rss_size);
+	} else {
+		vsi->rss_size = min_t(u16, vsi->rss_size, vsi->num_rxq);
+
+		/* If orig_rss_size is valid and it is less than determined
+		 * main VSI's rss_size, update main VSI's rss_size to be
+		 * orig_rss_size so that when tc-qdisc is deleted, main VSI
+		 * RSS table gets programmed to be correct (whatever it was
+		 * to begin with (prior to setup-tc for ADQ config)
+		 */
+		if (vsi->orig_rss_size && vsi->rss_size < vsi->orig_rss_size &&
+		    vsi->orig_rss_size <= vsi->num_rxq) {
+			vsi->rss_size = vsi->orig_rss_size;
+			/* now orig_rss_size is used, reset it to zero */
+			vsi->orig_rss_size = 0;
+		}
+	}
 
 	lut = kzalloc(vsi->rss_table_size, GFP_KERNEL);
 	if (!lut)
@@ -2248,10 +2328,14 @@ int ice_cfg_vlan_pruning(struct ice_vsi *vsi, bool ena)
 
 static void ice_vsi_set_tc_cfg(struct ice_vsi *vsi)
 {
-	struct ice_dcbx_cfg *cfg = &vsi->port_info->qos_cfg.local_dcbx_cfg;
+	if (!test_bit(ICE_FLAG_DCB_ENA, vsi->back->flags)) {
+		vsi->tc_cfg.ena_tc = ICE_DFLT_TRAFFIC_CLASS;
+		vsi->tc_cfg.numtc = 1;
+		return;
+	}
 
-	vsi->tc_cfg.ena_tc = ice_dcb_get_ena_tc(cfg);
-	vsi->tc_cfg.numtc = ice_dcb_get_num_tc(cfg);
+	/* set VSI TC information based on DCB config */
+	ice_vsi_set_dcb_tc_cfg(vsi);
 }
 
 /**
@@ -2364,6 +2448,7 @@ static void ice_set_agg_vsi(struct ice_vsi *vsi)
 
 	switch (vsi->type) {
 	case ICE_VSI_CTRL:
+	case ICE_VSI_CHNL:
 	case ICE_VSI_LB:
 	case ICE_VSI_PF:
 	case ICE_VSI_SWITCHDEV_CTRL:
@@ -2463,6 +2548,7 @@ static void ice_set_agg_vsi(struct ice_vsi *vsi)
  * @vf_id: defines VF ID to which this VSI connects. This field is meant to be
  *         used only for ICE_VSI_VF VSI type. For other VSI types, should
  *         fill-in ICE_INVAL_VFID as input.
+ * @ch: ptr to channel
  *
  * This allocates the sw VSI structure and its queue resources.
  *
@@ -2471,17 +2557,19 @@ static void ice_set_agg_vsi(struct ice_vsi *vsi)
  */
 struct ice_vsi *
 ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
-	      enum ice_vsi_type vsi_type, u16 vf_id)
+	      enum ice_vsi_type vsi_type, u16 vf_id, struct ice_channel *ch)
 {
 	u16 max_txqs[ICE_MAX_TRAFFIC_CLASS] = { 0 };
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_vsi *vsi;
 	int ret, i;
 
-	if (vsi_type == ICE_VSI_VF || vsi_type == ICE_VSI_CTRL)
-		vsi = ice_vsi_alloc(pf, vsi_type, vf_id);
+	if (vsi_type == ICE_VSI_CHNL)
+		vsi = ice_vsi_alloc(pf, vsi_type, ch, ICE_INVAL_VFID);
+	else if (vsi_type == ICE_VSI_VF || vsi_type == ICE_VSI_CTRL)
+		vsi = ice_vsi_alloc(pf, vsi_type, NULL, vf_id);
 	else
-		vsi = ice_vsi_alloc(pf, vsi_type, ICE_INVAL_VFID);
+		vsi = ice_vsi_alloc(pf, vsi_type, NULL, ICE_INVAL_VFID);
 
 	if (!vsi) {
 		dev_err(dev, "could not allocate VSI\n");
@@ -2498,10 +2586,12 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 
 	ice_alloc_fd_res(vsi);
 
-	if (ice_vsi_get_qs(vsi)) {
-		dev_err(dev, "Failed to allocate queues. vsi->idx = %d\n",
-			vsi->idx);
-		goto unroll_vsi_alloc;
+	if (vsi_type != ICE_VSI_CHNL) {
+		if (ice_vsi_get_qs(vsi)) {
+			dev_err(dev, "Failed to allocate queues. vsi->idx = %d\n",
+				vsi->idx);
+			goto unroll_vsi_alloc;
+		}
 	}
 
 	/* set RSS capabilities */
@@ -2560,6 +2650,12 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 			}
 		ice_init_arfs(vsi);
 		break;
+	case ICE_VSI_CHNL:
+		if (test_bit(ICE_FLAG_RSS_ENA, pf->flags)) {
+			ice_vsi_cfg_rss_lut_key(vsi);
+			ice_vsi_set_rss_flow_fld(vsi);
+		}
+		break;
 	case ICE_VSI_VF:
 		/* VF driver will take care of creating netdev for this type and
 		 * map queues to vectors through Virtchnl, PF driver only
@@ -2598,9 +2694,21 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 	}
 
 	/* configure VSI nodes based on number of queues and TC's */
-	for (i = 0; i < vsi->tc_cfg.numtc; i++)
-		max_txqs[i] = vsi->alloc_txq;
+	ice_for_each_traffic_class(i) {
+		if (!(vsi->tc_cfg.ena_tc & BIT(i)))
+			continue;
+
+		if (vsi->type == ICE_VSI_CHNL) {
+			if (!vsi->alloc_txq && vsi->num_txq)
+				max_txqs[i] = vsi->num_txq;
+			else
+				max_txqs[i] = pf->num_lan_tx;
+		} else {
+			max_txqs[i] = vsi->alloc_txq;
+		}
+	}
 
+	dev_dbg(dev, "vsi->tc_cfg.ena_tc = %d\n", vsi->tc_cfg.ena_tc);
 	ret = ice_cfg_vsi_lan(vsi->port_info, vsi->idx, vsi->tc_cfg.ena_tc,
 			      max_txqs);
 	if (ret) {
@@ -3264,6 +3372,12 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 		if (ret)
 			goto err_vectors;
 
+		break;
+	case ICE_VSI_CHNL:
+		if (test_bit(ICE_FLAG_RSS_ENA, pf->flags)) {
+			ice_vsi_cfg_rss_lut_key(vsi);
+			ice_vsi_set_rss_flow_fld(vsi);
+		}
 		break;
 	default:
 		break;
@@ -3271,14 +3385,30 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 
 	/* configure VSI nodes based on number of queues and TC's */
 	for (i = 0; i < vsi->tc_cfg.numtc; i++) {
-		max_txqs[i] = vsi->alloc_txq;
+		/* configure VSI nodes based on number of queues and TC's.
+		 * ADQ creates VSIs for each TC/Channel but doesn't
+		 * allocate queues instead it reconfigures the PF queues
+		 * as per the TC command. So max_txqs should point to the
+		 * PF Tx queues.
+		 */
+		if (vtype == ICE_VSI_CHNL)
+			max_txqs[i] = pf->num_lan_tx;
+		else
+			max_txqs[i] = vsi->alloc_txq;
 
 		if (ice_is_xdp_ena_vsi(vsi))
 			max_txqs[i] += vsi->num_xdp_txq;
 	}
 
-	ret = ice_cfg_vsi_lan(vsi->port_info, vsi->idx, vsi->tc_cfg.ena_tc,
-			      max_txqs);
+	if (test_bit(ICE_FLAG_TC_MQPRIO, pf->flags))
+		/* If MQPRIO is set, means channel code path, hence for main
+		 * VSI's, use TC as 1
+		 */
+		ret = ice_cfg_vsi_lan(vsi->port_info, vsi->idx, 1, max_txqs);
+	else
+		ret = ice_cfg_vsi_lan(vsi->port_info, vsi->idx,
+				      vsi->tc_cfg.ena_tc, max_txqs);
+
 	if (ret) {
 		dev_err(ice_pf_to_dev(pf), "VSI %d failed lan queue config, error %d\n",
 			vsi->vsi_num, ret);
@@ -3350,7 +3480,6 @@ int ice_wait_for_reset(struct ice_pf *pf, unsigned long timeout)
 		return 0;
 }
 
-#ifdef CONFIG_DCB
 /**
  * ice_vsi_update_q_map - update our copy of the VSI info with new queue map
  * @vsi: VSI being configured
@@ -3365,6 +3494,146 @@ static void ice_vsi_update_q_map(struct ice_vsi *vsi, struct ice_vsi_ctx *ctx)
 	       sizeof(vsi->info.tc_mapping));
 }
 
+/**
+ * ice_vsi_cfg_netdev_tc - Setup the netdev TC configuration
+ * @vsi: the VSI being configured
+ * @ena_tc: TC map to be enabled
+ */
+void ice_vsi_cfg_netdev_tc(struct ice_vsi *vsi, u8 ena_tc)
+{
+	struct net_device *netdev = vsi->netdev;
+	struct ice_pf *pf = vsi->back;
+	int numtc = vsi->tc_cfg.numtc;
+	struct ice_dcbx_cfg *dcbcfg;
+	u8 netdev_tc;
+	int i;
+
+	if (!netdev)
+		return;
+
+	/* CHNL VSI doesn't have it's own netdev, hence, no netdev_tc */
+	if (vsi->type == ICE_VSI_CHNL)
+		return;
+
+	if (!ena_tc) {
+		netdev_reset_tc(netdev);
+		return;
+	}
+
+	if (vsi->type == ICE_VSI_PF && ice_is_adq_active(pf))
+		numtc = vsi->all_numtc;
+
+	if (netdev_set_num_tc(netdev, numtc))
+		return;
+
+	dcbcfg = &pf->hw.port_info->qos_cfg.local_dcbx_cfg;
+
+	ice_for_each_traffic_class(i)
+		if (vsi->tc_cfg.ena_tc & BIT(i))
+			netdev_set_tc_queue(netdev,
+					    vsi->tc_cfg.tc_info[i].netdev_tc,
+					    vsi->tc_cfg.tc_info[i].qcount_tx,
+					    vsi->tc_cfg.tc_info[i].qoffset);
+	/* setup TC queue map for CHNL TCs */
+	ice_for_each_chnl_tc(i) {
+		if (!(vsi->all_enatc & BIT(i)))
+			break;
+		if (!vsi->mqprio_qopt.qopt.count[i])
+			break;
+		netdev_set_tc_queue(netdev, i,
+				    vsi->mqprio_qopt.qopt.count[i],
+				    vsi->mqprio_qopt.qopt.offset[i]);
+	}
+
+	if (test_bit(ICE_FLAG_TC_MQPRIO, pf->flags))
+		return;
+
+	for (i = 0; i < ICE_MAX_USER_PRIORITY; i++) {
+		u8 ets_tc = dcbcfg->etscfg.prio_table[i];
+
+		/* Get the mapped netdev TC# for the UP */
+		netdev_tc = vsi->tc_cfg.tc_info[ets_tc].netdev_tc;
+		netdev_set_prio_tc_map(netdev, i, netdev_tc);
+	}
+}
+
+/**
+ * ice_vsi_setup_q_map_mqprio - Prepares mqprio based tc_config
+ * @vsi: the VSI being configured,
+ * @ctxt: VSI context structure
+ * @ena_tc: number of traffic classes to enable
+ *
+ * Prepares VSI tc_config to have queue configurations based on MQPRIO options.
+ */
+static void
+ice_vsi_setup_q_map_mqprio(struct ice_vsi *vsi, struct ice_vsi_ctx *ctxt,
+			   u8 ena_tc)
+{
+	u16 pow, offset = 0, qcount_tx = 0, qcount_rx = 0, qmap;
+	u16 tc0_offset = vsi->mqprio_qopt.qopt.offset[0];
+	int tc0_qcount = vsi->mqprio_qopt.qopt.count[0];
+	u8 netdev_tc = 0;
+	int i;
+
+	vsi->tc_cfg.ena_tc = ena_tc ? ena_tc : 1;
+
+	pow = order_base_2(tc0_qcount);
+	qmap = ((tc0_offset << ICE_AQ_VSI_TC_Q_OFFSET_S) &
+		ICE_AQ_VSI_TC_Q_OFFSET_M) |
+		((pow << ICE_AQ_VSI_TC_Q_NUM_S) & ICE_AQ_VSI_TC_Q_NUM_M);
+
+	ice_for_each_traffic_class(i) {
+		if (!(vsi->tc_cfg.ena_tc & BIT(i))) {
+			/* TC is not enabled */
+			vsi->tc_cfg.tc_info[i].qoffset = 0;
+			vsi->tc_cfg.tc_info[i].qcount_rx = 1;
+			vsi->tc_cfg.tc_info[i].qcount_tx = 1;
+			vsi->tc_cfg.tc_info[i].netdev_tc = 0;
+			ctxt->info.tc_mapping[i] = 0;
+			continue;
+		}
+
+		offset = vsi->mqprio_qopt.qopt.offset[i];
+		qcount_rx = vsi->mqprio_qopt.qopt.count[i];
+		qcount_tx = vsi->mqprio_qopt.qopt.count[i];
+		vsi->tc_cfg.tc_info[i].qoffset = offset;
+		vsi->tc_cfg.tc_info[i].qcount_rx = qcount_rx;
+		vsi->tc_cfg.tc_info[i].qcount_tx = qcount_tx;
+		vsi->tc_cfg.tc_info[i].netdev_tc = netdev_tc++;
+	}
+
+	if (vsi->all_numtc && vsi->all_numtc != vsi->tc_cfg.numtc) {
+		ice_for_each_chnl_tc(i) {
+			if (!(vsi->all_enatc & BIT(i)))
+				continue;
+			offset = vsi->mqprio_qopt.qopt.offset[i];
+			qcount_rx = vsi->mqprio_qopt.qopt.count[i];
+			qcount_tx = vsi->mqprio_qopt.qopt.count[i];
+		}
+	}
+
+	/* Set actual Tx/Rx queue pairs */
+	vsi->num_txq = offset + qcount_tx;
+	vsi->num_rxq = offset + qcount_rx;
+
+	/* Setup queue TC[0].qmap for given VSI context */
+	ctxt->info.tc_mapping[0] = cpu_to_le16(qmap);
+	ctxt->info.q_mapping[0] = cpu_to_le16(vsi->rxq_map[0]);
+	ctxt->info.q_mapping[1] = cpu_to_le16(tc0_qcount);
+
+	/* Find queue count available for channel VSIs and starting offset
+	 * for channel VSIs
+	 */
+	if (tc0_qcount && tc0_qcount < vsi->num_rxq) {
+		vsi->cnt_q_avail = vsi->num_rxq - tc0_qcount;
+		vsi->next_base_q = tc0_qcount;
+	}
+	dev_dbg(ice_pf_to_dev(vsi->back), "vsi->num_txq = %d\n",  vsi->num_txq);
+	dev_dbg(ice_pf_to_dev(vsi->back), "vsi->num_rxq = %d\n",  vsi->num_rxq);
+	dev_dbg(ice_pf_to_dev(vsi->back), "all_numtc %u, all_enatc: 0x%04x, tc_cfg.numtc %u\n",
+		vsi->all_numtc, vsi->all_enatc, vsi->tc_cfg.numtc);
+}
+
 /**
  * ice_vsi_cfg_tc - Configure VSI Tx Sched for given TC map
  * @vsi: VSI to be configured
@@ -3378,10 +3647,13 @@ int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc)
 	struct ice_pf *pf = vsi->back;
 	struct ice_vsi_ctx *ctx;
 	struct device *dev;
+	int i, ret = 0;
 	u8 num_tc = 0;
-	int i, ret;
 
 	dev = ice_pf_to_dev(pf);
+	if (vsi->tc_cfg.ena_tc == ena_tc &&
+	    vsi->mqprio_qopt.mode != TC_MQPRIO_MODE_CHANNEL)
+		return ret;
 
 	ice_for_each_traffic_class(i) {
 		/* build bitmap of enabled TCs */
@@ -3389,6 +3661,12 @@ int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc)
 			num_tc++;
 		/* populate max_txqs per TC */
 		max_txqs[i] = vsi->alloc_txq;
+		/* Update max_txqs if it is CHNL VSI, because alloc_t[r]xq are
+		 * zero for CHNL VSI, hence use num_txq instead as max_txqs
+		 */
+		if (vsi->type == ICE_VSI_CHNL &&
+		    test_bit(ICE_FLAG_TC_MQPRIO, pf->flags))
+			max_txqs[i] = vsi->num_txq;
 	}
 
 	vsi->tc_cfg.ena_tc = ena_tc;
@@ -3401,7 +3679,11 @@ int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc)
 	ctx->vf_num = 0;
 	ctx->info = vsi->info;
 
-	ice_vsi_setup_q_map(vsi, ctx);
+	if (vsi->type == ICE_VSI_PF &&
+	    test_bit(ICE_FLAG_TC_MQPRIO, pf->flags))
+		ice_vsi_setup_q_map_mqprio(vsi, ctx, ena_tc);
+	else
+		ice_vsi_setup_q_map(vsi, ctx);
 
 	/* must to indicate which section of VSI context are being modified */
 	ctx->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_RXQ_MAP_VALID);
@@ -3411,8 +3693,13 @@ int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc)
 		goto out;
 	}
 
-	ret = ice_cfg_vsi_lan(vsi->port_info, vsi->idx, vsi->tc_cfg.ena_tc,
-			      max_txqs);
+	if (vsi->type == ICE_VSI_PF &&
+	    test_bit(ICE_FLAG_TC_MQPRIO, pf->flags))
+		ret = ice_cfg_vsi_lan(vsi->port_info, vsi->idx, 1,
+				      max_txqs);
+	else
+		ret = ice_cfg_vsi_lan(vsi->port_info, vsi->idx,
+				      vsi->tc_cfg.ena_tc, max_txqs);
 
 	if (ret) {
 		dev_err(dev, "VSI %d failed TC config, error %d\n",
@@ -3427,7 +3714,6 @@ int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc)
 	kfree(ctx);
 	return ret;
 }
-#endif /* CONFIG_DCB */
 
 /**
  * ice_update_ring_stats - Update ring statistics
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 29d72bbd7250..ec6f35e5e0a3 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -51,13 +51,18 @@ void ice_cfg_sw_lldp(struct ice_vsi *vsi, bool tx, bool create);
 
 int ice_set_link(struct ice_vsi *vsi, bool ena);
 
-#ifdef CONFIG_DCB
+void ice_vsi_delete(struct ice_vsi *vsi);
+int ice_vsi_clear(struct ice_vsi *vsi);
+
 int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc);
-#endif /* CONFIG_DCB */
+
+int ice_vsi_cfg_rss_lut_key(struct ice_vsi *vsi);
+
+void ice_vsi_cfg_netdev_tc(struct ice_vsi *vsi, u8 ena_tc);
 
 struct ice_vsi *
 ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
-	      enum ice_vsi_type vsi_type, u16 vf_id);
+	      enum ice_vsi_type vsi_type, u16 vf_id, struct ice_channel *ch);
 
 void ice_napi_del(struct ice_vsi *vsi);
 
@@ -130,4 +135,8 @@ void ice_vsi_ctx_clear_allow_override(struct ice_vsi_ctx *ctx);
 bool ice_is_feature_supported(struct ice_pf *pf, enum ice_feature f);
 void ice_clear_feature_support(struct ice_pf *pf, enum ice_feature f);
 void ice_init_feature_support(struct ice_pf *pf);
+
+int ice_set_min_bw_limit(struct ice_vsi *vsi, u64 min_tx_rate);
+
+int ice_set_max_bw_limit(struct ice_vsi *vsi, u64 max_tx_rate);
 #endif /* !_ICE_LIB_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index e4cfbcfa87c9..052f1f493e8e 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3277,7 +3277,7 @@ void ice_fill_rss_lut(u8 *lut, u16 rss_table_size, u16 rss_size)
 static struct ice_vsi *
 ice_pf_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
 {
-	return ice_vsi_setup(pf, pi, ICE_VSI_PF, ICE_INVAL_VFID);
+	return ice_vsi_setup(pf, pi, ICE_VSI_PF, ICE_INVAL_VFID, NULL);
 }
 
 /**
@@ -3291,7 +3291,7 @@ ice_pf_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
 static struct ice_vsi *
 ice_ctrl_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
 {
-	return ice_vsi_setup(pf, pi, ICE_VSI_CTRL, ICE_INVAL_VFID);
+	return ice_vsi_setup(pf, pi, ICE_VSI_CTRL, ICE_INVAL_VFID, NULL);
 }
 
 /**
@@ -3305,7 +3305,7 @@ ice_ctrl_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
 struct ice_vsi *
 ice_lb_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
 {
-	return ice_vsi_setup(pf, pi, ICE_VSI_LB, ICE_INVAL_VFID);
+	return ice_vsi_setup(pf, pi, ICE_VSI_LB, ICE_INVAL_VFID, NULL);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index 2d7a4bb757e0..4d42e6c5cbc9 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -3011,6 +3011,43 @@ static void ice_set_clear_shared_bw(struct ice_bw_type_info *bw_t_info, u32 bw)
 	}
 }
 
+/**
+ * ice_sched_save_vsi_bw - save VSI node's BW information
+ * @pi: port information structure
+ * @vsi_handle: sw VSI handle
+ * @tc: traffic class
+ * @rl_type: rate limit type min, max, or shared
+ * @bw: bandwidth in Kbps - Kilo bits per sec
+ *
+ * Save BW information of VSI type node for post replay use.
+ */
+static int
+ice_sched_save_vsi_bw(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
+		      enum ice_rl_type rl_type, u32 bw)
+{
+	struct ice_vsi_ctx *vsi_ctx;
+
+	if (!ice_is_vsi_valid(pi->hw, vsi_handle))
+		return -EINVAL;
+	vsi_ctx = ice_get_vsi_ctx(pi->hw, vsi_handle);
+	if (!vsi_ctx)
+		return -EINVAL;
+	switch (rl_type) {
+	case ICE_MIN_BW:
+		ice_set_clear_cir_bw(&vsi_ctx->sched.bw_t_info[tc], bw);
+		break;
+	case ICE_MAX_BW:
+		ice_set_clear_eir_bw(&vsi_ctx->sched.bw_t_info[tc], bw);
+		break;
+	case ICE_SHARED_BW:
+		ice_set_clear_shared_bw(&vsi_ctx->sched.bw_t_info[tc], bw);
+		break;
+	default:
+		return -EINVAL;
+	}
+	return 0;
+}
+
 /**
  * ice_sched_calc_wakeup - calculate RL profile wakeup parameter
  * @hw: pointer to the HW struct
@@ -3888,9 +3925,17 @@ int
 ice_cfg_vsi_bw_lmt_per_tc(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 			  enum ice_rl_type rl_type, u32 bw)
 {
-	return ice_sched_set_node_bw_lmt_per_tc(pi, vsi_handle,
-						ICE_AGG_TYPE_VSI,
-						tc, rl_type, bw);
+	int status;
+
+	status = ice_sched_set_node_bw_lmt_per_tc(pi, vsi_handle,
+						  ICE_AGG_TYPE_VSI,
+						  tc, rl_type, bw);
+	if (!status) {
+		mutex_lock(&pi->sched_lock);
+		status = ice_sched_save_vsi_bw(pi, vsi_handle, tc, rl_type, bw);
+		mutex_unlock(&pi->sched_lock);
+	}
+	return status;
 }
 
 /**
@@ -3907,10 +3952,19 @@ int
 ice_cfg_vsi_bw_dflt_lmt_per_tc(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 			       enum ice_rl_type rl_type)
 {
-	return ice_sched_set_node_bw_lmt_per_tc(pi, vsi_handle,
-						ICE_AGG_TYPE_VSI,
-						tc, rl_type,
-						ICE_SCHED_DFLT_BW);
+	int status;
+
+	status = ice_sched_set_node_bw_lmt_per_tc(pi, vsi_handle,
+						  ICE_AGG_TYPE_VSI,
+						  tc, rl_type,
+						  ICE_SCHED_DFLT_BW);
+	if (!status) {
+		mutex_lock(&pi->sched_lock);
+		status = ice_sched_save_vsi_bw(pi, vsi_handle, tc, rl_type,
+					       ICE_SCHED_DFLT_BW);
+		mutex_unlock(&pi->sched_lock);
+	}
+	return status;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.h b/drivers/net/ethernet/intel/ice/ice_sched.h
index ae46a489b373..6f21355ddd44 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.h
+++ b/drivers/net/ethernet/intel/ice/ice_sched.h
@@ -58,6 +58,8 @@ struct ice_sched_agg_info {
 	DECLARE_BITMAP(tc_bitmap, ICE_MAX_TRAFFIC_CLASS);
 	u32 agg_id;
 	enum ice_agg_type agg_type;
+	/* bw_t_info saves aggregator BW information */
+	struct ice_bw_type_info bw_t_info[ICE_MAX_TRAFFIC_CLASS];
 	/* save aggregator TC bitmap */
 	DECLARE_BITMAP(replay_tc_bitmap, ICE_MAX_TRAFFIC_CLASS);
 };
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index b88e873bf4dd..7b33c1dd51a2 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -286,6 +286,7 @@ struct ice_rx_ring {
 
 	struct rcu_head rcu;		/* to avoid race on free */
 	/* CL4 - 3rd cacheline starts here */
+	struct ice_channel *ch;
 	struct bpf_prog *xdp_prog;
 	struct ice_tx_ring *xdp_ring;
 	struct xsk_buff_pool *xsk_pool;
@@ -327,6 +328,7 @@ struct ice_tx_ring {
 	/* CL3 - 3rd cacheline starts here */
 	struct rcu_head rcu;		/* to avoid race on free */
 	DECLARE_BITMAP(xps_state, ICE_TX_NBITS);	/* XPS Config State */
+	struct ice_channel *ch;
 	struct ice_ptp_tx *tx_tstamps;
 	spinlock_t tx_lock;
 	u32 txq_teid;			/* Added Tx queue TEID */
@@ -351,6 +353,11 @@ static inline void ice_clear_ring_build_skb_ena(struct ice_rx_ring *ring)
 	ring->flags &= ~ICE_RX_FLAGS_RING_BUILD_SKB;
 }
 
+static inline bool ice_ring_ch_enabled(struct ice_tx_ring *ring)
+{
+	return !!(ring->ch);
+}
+
 static inline bool ice_ring_is_xdp(struct ice_tx_ring *ring)
 {
 	return !!(ring->flags & ICE_TX_FLAGS_RING_XDP);
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index a316d224fdc8..669702b16ef5 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -137,6 +137,7 @@ enum ice_vsi_type {
 	ICE_VSI_PF = 0,
 	ICE_VSI_VF = 1,
 	ICE_VSI_CTRL = 3,	/* equates to ICE_VSI_PF with 1 queue pair */
+	ICE_VSI_CHNL = 4,
 	ICE_VSI_LB = 6,
 	ICE_VSI_SWITCHDEV_CTRL = 7,
 };
@@ -573,6 +574,8 @@ struct ice_sched_vsi_info {
 	struct list_head list_entry;
 	u16 max_lanq[ICE_MAX_TRAFFIC_CLASS];
 	u16 max_rdmaq[ICE_MAX_TRAFFIC_CLASS];
+	/* bw_t_info saves VSI BW information */
+	struct ice_bw_type_info bw_t_info[ICE_MAX_TRAFFIC_CLASS];
 };
 
 /* driver defines the policy */
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 6d0ef1adb199..585e7b6812f6 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -714,7 +714,7 @@ static struct ice_vsi *ice_vf_vsi_setup(struct ice_vf *vf)
 	struct ice_pf *pf = vf->pf;
 	struct ice_vsi *vsi;
 
-	vsi = ice_vsi_setup(pf, pi, ICE_VSI_VF, vf->vf_id);
+	vsi = ice_vsi_setup(pf, pi, ICE_VSI_VF, vf->vf_id, NULL);
 
 	if (!vsi) {
 		dev_err(ice_pf_to_dev(pf), "Failed to create VF VSI\n");
@@ -741,7 +741,7 @@ struct ice_vsi *ice_vf_ctrl_vsi_setup(struct ice_vf *vf)
 	struct ice_pf *pf = vf->pf;
 	struct ice_vsi *vsi;
 
-	vsi = ice_vsi_setup(pf, pi, ICE_VSI_CTRL, vf->vf_id);
+	vsi = ice_vsi_setup(pf, pi, ICE_VSI_CTRL, vf->vf_id, NULL);
 	if (!vsi) {
 		dev_err(ice_pf_to_dev(pf), "Failed to create VF control VSI\n");
 		ice_vf_ctrl_invalidate_vsi(vf);
-- 
2.27.0


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

