Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0587432A95D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Mar 2021 19:26:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 97B974319D;
	Tue,  2 Mar 2021 18:26:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BClZVwpKklj2; Tue,  2 Mar 2021 18:26:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 52CBC43194;
	Tue,  2 Mar 2021 18:26:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 47A731BF255
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:25:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B2811606BD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:25:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2KMhZWjJLGMK for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Mar 2021 18:25:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9AD7260612
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:25:19 +0000 (UTC)
IronPort-SDR: 1PZPzgWznYy0Ex5QBQIgt/8btpp6HYKxqLxRABR0dCwI7IB8rY5JIb2fa8eY4P91e6SE9glEZL
 6H3uuU/xU0dQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="186263191"
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="186263191"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 10:25:18 -0800
IronPort-SDR: zYltGsf06Nt8PSokhecY/XN5tUpvH4+iglvxcxPo/dzixBzigoauBl/AeFvWMRuST1CVY/yfDk
 2S2ZEDDPPh7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="434915057"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Mar 2021 10:25:18 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Mar 2021 10:15:39 -0800
Message-Id: <20210302181545.51822-7-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
References: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S56 07/13] ice: Add helper function to get
 the VF's VSI
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

Currently, the driver gets the VF's VSI by using a long string of
dereferences (i.e. vf->pf->vsi[vf->lan_vsi_idx]). If the method to get
the VF's VSI were to change the driver would have to change it in every
location. Fix this by adding the helper ice_get_vf_vsi().

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 82 +++++++++----------
 1 file changed, 39 insertions(+), 43 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 2d4b39a9f788..7ffad4c8a64e 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -7,6 +7,15 @@
 #include "ice_fltr.h"
 #include "ice_virtchnl_allowlist.h"
 
+/**
+ * ice_get_vf_vsi - get VF's VSI based on the stored index
+ * @vf: VF used to get VSI
+ */
+static struct ice_vsi *ice_get_vf_vsi(struct ice_vf *vf)
+{
+	return vf->pf->vsi[vf->lan_vsi_idx];
+}
+
 /**
  * ice_validate_vf_id - helper to check if VF ID is valid
  * @pf: pointer to the PF structure
@@ -167,7 +176,7 @@ static void ice_vf_invalidate_vsi(struct ice_vf *vf)
  */
 static void ice_vf_vsi_release(struct ice_vf *vf)
 {
-	ice_vsi_release(vf->pf->vsi[vf->lan_vsi_idx]);
+	ice_vsi_release(ice_get_vf_vsi(vf));
 	ice_vf_invalidate_vsi(vf);
 }
 
@@ -243,7 +252,7 @@ static void ice_dis_vf_mappings(struct ice_vf *vf)
 	struct ice_hw *hw;
 
 	hw = &pf->hw;
-	vsi = pf->vsi[vf->lan_vsi_idx];
+	vsi = ice_get_vf_vsi(vf);
 
 	dev = ice_pf_to_dev(pf);
 	wr32(hw, VPINT_ALLOC(vf->vf_id), 0);
@@ -318,10 +327,7 @@ void ice_set_vf_state_qs_dis(struct ice_vf *vf)
  */
 static void ice_dis_vf_qs(struct ice_vf *vf)
 {
-	struct ice_pf *pf = vf->pf;
-	struct ice_vsi *vsi;
-
-	vsi = pf->vsi[vf->lan_vsi_idx];
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
 
 	ice_vsi_stop_lan_tx_rings(vsi, ICE_NO_RESET, vf->vf_id);
 	ice_vsi_stop_all_rx_rings(vsi);
@@ -609,8 +615,8 @@ static int ice_calc_vf_first_vector_idx(struct ice_pf *pf, struct ice_vf *vf)
  */
 static int ice_vf_rebuild_host_vlan_cfg(struct ice_vf *vf)
 {
-	struct ice_vsi *vsi = vf->pf->vsi[vf->lan_vsi_idx];
 	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
 	u16 vlan_id = 0;
 	int err;
 
@@ -646,8 +652,8 @@ static int ice_vf_rebuild_host_vlan_cfg(struct ice_vf *vf)
  */
 static int ice_vf_rebuild_host_mac_cfg(struct ice_vf *vf)
 {
-	struct ice_vsi *vsi = vf->pf->vsi[vf->lan_vsi_idx];
 	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
 	enum ice_status status;
 	u8 broadcast[ETH_ALEN];
 
@@ -750,8 +756,8 @@ static void ice_ena_vf_msix_mappings(struct ice_vf *vf)
  */
 static void ice_ena_vf_q_mappings(struct ice_vf *vf, u16 max_txq, u16 max_rxq)
 {
-	struct ice_vsi *vsi = vf->pf->vsi[vf->lan_vsi_idx];
 	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
 	struct ice_hw *hw = &vf->pf->hw;
 	u32 reg;
 
@@ -798,7 +804,7 @@ static void ice_ena_vf_q_mappings(struct ice_vf *vf, u16 max_txq, u16 max_rxq)
  */
 static void ice_ena_vf_mappings(struct ice_vf *vf)
 {
-	struct ice_vsi *vsi = vf->pf->vsi[vf->lan_vsi_idx];
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
 
 	ice_ena_vf_msix_mappings(vf);
 	ice_ena_vf_q_mappings(vf, vsi->alloc_txq, vsi->alloc_rxq);
@@ -1064,7 +1070,7 @@ static int ice_vf_clear_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 p
 
 static void ice_vf_clear_counters(struct ice_vf *vf)
 {
-	struct ice_vsi *vsi = vf->pf->vsi[vf->lan_vsi_idx];
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
 
 	vf->num_mac = 0;
 	vsi->num_vlan = 0;
@@ -1124,8 +1130,8 @@ static void ice_vf_rebuild_aggregator_node_cfg(struct ice_vsi *vsi)
  */
 static void ice_vf_rebuild_host_cfg(struct ice_vf *vf)
 {
-	struct ice_vsi *vsi = vf->pf->vsi[vf->lan_vsi_idx];
 	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
 
 	ice_vf_set_host_trust_cfg(vf);
 
@@ -1165,10 +1171,8 @@ static int ice_vf_rebuild_vsi_with_release(struct ice_vf *vf)
  */
 static int ice_vf_rebuild_vsi(struct ice_vf *vf)
 {
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
 	struct ice_pf *pf = vf->pf;
-	struct ice_vsi *vsi;
-
-	vsi = pf->vsi[vf->lan_vsi_idx];
 
 	if (ice_vsi_rebuild(vsi, true)) {
 		dev_err(ice_pf_to_dev(pf), "failed to rebuild VF %d VSI\n",
@@ -1367,7 +1371,7 @@ bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 	set_bit(ICE_VF_STATE_DIS, vf->vf_states);
 	ice_trigger_vf_reset(vf, is_vflr, false);
 
-	vsi = pf->vsi[vf->lan_vsi_idx];
+	vsi = ice_get_vf_vsi(vf);
 
 	if (test_bit(ICE_VF_STATE_QS_ENA, vf->vf_states))
 		ice_dis_vf_qs(vf);
@@ -1416,7 +1420,7 @@ bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 		else
 			promisc_m = ICE_UCAST_PROMISC_BITS;
 
-		vsi = pf->vsi[vf->lan_vsi_idx];
+		vsi = ice_get_vf_vsi(vf);
 		if (ice_vf_clear_vsi_promisc(vf, vsi, promisc_m))
 			dev_err(dev, "disabling promiscuous mode failed\n");
 	}
@@ -1867,7 +1871,7 @@ static struct ice_vf *ice_get_vf_from_pfq(struct ice_pf *pf, u16 pfq)
 		struct ice_vsi *vsi;
 		u16 rxq_idx;
 
-		vsi = pf->vsi[vf->lan_vsi_idx];
+		vsi = ice_get_vf_vsi(vf);
 
 		ice_for_each_rxq(vsi, rxq_idx)
 			if (vsi->rxq_map[rxq_idx] == pfq)
@@ -2007,8 +2011,7 @@ static int ice_vc_get_ver_msg(struct ice_vf *vf, u8 *msg)
  */
 static u16 ice_vc_get_max_frame_size(struct ice_vf *vf)
 {
-	struct ice_vsi *vsi = vf->pf->vsi[vf->lan_vsi_idx];
-	struct ice_port_info *pi = vsi->port_info;
+	struct ice_port_info *pi = ice_vf_get_port_info(vf);
 	u16 max_frame_size;
 
 	max_frame_size = pi->phy.link_info.max_frame_size;
@@ -2056,7 +2059,7 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 				  VIRTCHNL_VF_OFFLOAD_VLAN;
 
 	vfres->vf_cap_flags = VIRTCHNL_VF_OFFLOAD_L2;
-	vsi = pf->vsi[vf->lan_vsi_idx];
+	vsi = ice_get_vf_vsi(vf);
 	if (!vsi) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		goto err;
@@ -2223,7 +2226,6 @@ static int ice_vc_config_rss_key(struct ice_vf *vf, u8 *msg)
 	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
 	struct virtchnl_rss_key *vrk =
 		(struct virtchnl_rss_key *)msg;
-	struct ice_pf *pf = vf->pf;
 	struct ice_vsi *vsi;
 
 	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
@@ -2246,7 +2248,7 @@ static int ice_vc_config_rss_key(struct ice_vf *vf, u8 *msg)
 		goto error_param;
 	}
 
-	vsi = pf->vsi[vf->lan_vsi_idx];
+	vsi = ice_get_vf_vsi(vf);
 	if (!vsi) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		goto error_param;
@@ -2270,7 +2272,6 @@ static int ice_vc_config_rss_lut(struct ice_vf *vf, u8 *msg)
 {
 	struct virtchnl_rss_lut *vrl = (struct virtchnl_rss_lut *)msg;
 	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
-	struct ice_pf *pf = vf->pf;
 	struct ice_vsi *vsi;
 
 	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
@@ -2293,7 +2294,7 @@ static int ice_vc_config_rss_lut(struct ice_vf *vf, u8 *msg)
 		goto error_param;
 	}
 
-	vsi = pf->vsi[vf->lan_vsi_idx];
+	vsi = ice_get_vf_vsi(vf);
 	if (!vsi) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		goto error_param;
@@ -2376,7 +2377,7 @@ int ice_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool ena)
 	if (ret)
 		return ret;
 
-	vf_vsi = pf->vsi[vf->lan_vsi_idx];
+	vf_vsi = ice_get_vf_vsi(vf);
 	if (!vf_vsi) {
 		netdev_err(netdev, "VSI %d for VF %d is null\n",
 			   vf->lan_vsi_idx, vf->vf_id);
@@ -2482,7 +2483,7 @@ static int ice_vc_cfg_promiscuous_mode_msg(struct ice_vf *vf, u8 *msg)
 		goto error_param;
 	}
 
-	vsi = pf->vsi[vf->lan_vsi_idx];
+	vsi = ice_get_vf_vsi(vf);
 	if (!vsi) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		goto error_param;
@@ -2614,7 +2615,6 @@ static int ice_vc_get_stats_msg(struct ice_vf *vf, u8 *msg)
 	struct virtchnl_queue_select *vqs =
 		(struct virtchnl_queue_select *)msg;
 	struct ice_eth_stats stats = { 0 };
-	struct ice_pf *pf = vf->pf;
 	struct ice_vsi *vsi;
 
 	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
@@ -2627,7 +2627,7 @@ static int ice_vc_get_stats_msg(struct ice_vf *vf, u8 *msg)
 		goto error_param;
 	}
 
-	vsi = pf->vsi[vf->lan_vsi_idx];
+	vsi = ice_get_vf_vsi(vf);
 	if (!vsi) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		goto error_param;
@@ -2717,7 +2717,6 @@ static int ice_vc_ena_qs_msg(struct ice_vf *vf, u8 *msg)
 	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
 	struct virtchnl_queue_select *vqs =
 	    (struct virtchnl_queue_select *)msg;
-	struct ice_pf *pf = vf->pf;
 	struct ice_vsi *vsi;
 	unsigned long q_map;
 	u16 vf_q_id;
@@ -2737,7 +2736,7 @@ static int ice_vc_ena_qs_msg(struct ice_vf *vf, u8 *msg)
 		goto error_param;
 	}
 
-	vsi = pf->vsi[vf->lan_vsi_idx];
+	vsi = ice_get_vf_vsi(vf);
 	if (!vsi) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		goto error_param;
@@ -2807,7 +2806,6 @@ static int ice_vc_dis_qs_msg(struct ice_vf *vf, u8 *msg)
 	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
 	struct virtchnl_queue_select *vqs =
 	    (struct virtchnl_queue_select *)msg;
-	struct ice_pf *pf = vf->pf;
 	struct ice_vsi *vsi;
 	unsigned long q_map;
 	u16 vf_q_id;
@@ -2828,7 +2826,7 @@ static int ice_vc_dis_qs_msg(struct ice_vf *vf, u8 *msg)
 		goto error_param;
 	}
 
-	vsi = pf->vsi[vf->lan_vsi_idx];
+	vsi = ice_get_vf_vsi(vf);
 	if (!vsi) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		goto error_param;
@@ -2993,7 +2991,7 @@ static int ice_vc_cfg_irq_map_msg(struct ice_vf *vf, u8 *msg)
 		goto error_param;
 	}
 
-	vsi = pf->vsi[vf->lan_vsi_idx];
+	vsi = ice_get_vf_vsi(vf);
 	if (!vsi) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		goto error_param;
@@ -3070,7 +3068,7 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 		goto error_param;
 	}
 
-	vsi = pf->vsi[vf->lan_vsi_idx];
+	vsi = ice_get_vf_vsi(vf);
 	if (!vsi) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		goto error_param;
@@ -3422,7 +3420,7 @@ ice_vc_handle_mac_addr_msg(struct ice_vf *vf, u8 *msg, bool set)
 		goto handle_mac_exit;
 	}
 
-	vsi = pf->vsi[vf->lan_vsi_idx];
+	vsi = ice_get_vf_vsi(vf);
 	if (!vsi) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		goto handle_mac_exit;
@@ -3654,7 +3652,7 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 	}
 
 	hw = &pf->hw;
-	vsi = pf->vsi[vf->lan_vsi_idx];
+	vsi = ice_get_vf_vsi(vf);
 	if (!vsi) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		goto error_param;
@@ -3821,7 +3819,6 @@ static int ice_vc_remove_vlan_msg(struct ice_vf *vf, u8 *msg)
 static int ice_vc_ena_vlan_stripping(struct ice_vf *vf)
 {
 	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
-	struct ice_pf *pf = vf->pf;
 	struct ice_vsi *vsi;
 
 	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
@@ -3834,7 +3831,7 @@ static int ice_vc_ena_vlan_stripping(struct ice_vf *vf)
 		goto error_param;
 	}
 
-	vsi = pf->vsi[vf->lan_vsi_idx];
+	vsi = ice_get_vf_vsi(vf);
 	if (ice_vsi_manage_vlan_stripping(vsi, true))
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 
@@ -3852,7 +3849,6 @@ static int ice_vc_ena_vlan_stripping(struct ice_vf *vf)
 static int ice_vc_dis_vlan_stripping(struct ice_vf *vf)
 {
 	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
-	struct ice_pf *pf = vf->pf;
 	struct ice_vsi *vsi;
 
 	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
@@ -3865,7 +3861,7 @@ static int ice_vc_dis_vlan_stripping(struct ice_vf *vf)
 		goto error_param;
 	}
 
-	vsi = pf->vsi[vf->lan_vsi_idx];
+	vsi = ice_get_vf_vsi(vf);
 	if (!vsi) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		goto error_param;
@@ -3891,7 +3887,7 @@ static int ice_vc_dis_vlan_stripping(struct ice_vf *vf)
  */
 static int ice_vf_init_vlan_stripping(struct ice_vf *vf)
 {
-	struct ice_vsi *vsi = vf->pf->vsi[vf->lan_vsi_idx];
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
 
 	if (!vsi)
 		return -EINVAL;
@@ -4281,7 +4277,7 @@ int ice_get_vf_stats(struct net_device *netdev, int vf_id,
 	if (ret)
 		return ret;
 
-	vsi = pf->vsi[vf->lan_vsi_idx];
+	vsi = ice_get_vf_vsi(vf);
 	if (!vsi)
 		return -EINVAL;
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
