Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AF67F1CE9F0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2020 03:04:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F41E7875C8;
	Tue, 12 May 2020 01:04:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NdX792BdZkR0; Tue, 12 May 2020 01:04:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BFC3A875BF;
	Tue, 12 May 2020 01:04:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6BCAC1BF841
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2020 01:04:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 678F6875C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2020 01:04:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7wKLvkQbc3Un for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 May 2020 01:04:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5D819875C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2020 01:04:21 +0000 (UTC)
IronPort-SDR: Mzj6c7p41/yP0RfFeeHEC+qhU02vHGWF4Wnpkluvx665pN6bSv48WTe56C8GvvtEE7s9e6wLuO
 FKsyPDrGeJGQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 18:04:20 -0700
IronPort-SDR: aOSmS/99GBmxJvnR8jdox7e2eTK4yMcLAEGffudkLryeojhio3lJQKrMVw1VS1btDtchrEuhZQ
 Q/u8FKTxqyzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,381,1583222400"; d="scan'208";a="409116469"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga004.jf.intel.com with ESMTP; 11 May 2020 18:04:19 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 11 May 2020 18:01:45 -0700
Message-Id: <20200512010146.41303-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200512010146.41303-1-anthony.l.nguyen@intel.com>
References: <20200512010146.41303-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S42 6/7] ice: Restore filters following
 reset
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

From: Henry Tieman <henry.w.tieman@intel.com>

Following a reset, Flow Director filters are cleared from the hardware.
Rebuild the filters using the software structures containing the filter
rules.

Signed-off-by: Henry Tieman <henry.w.tieman@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |  2 +
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 65 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_lib.c      | 17 +++--
 drivers/net/ethernet/intel/ice/ice_main.c     | 31 +++++++++
 4 files changed, 109 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 97f95822fee1..4d011def973a 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -580,6 +580,8 @@ int
 ice_get_fdir_fltr_ids(struct ice_hw *hw, struct ethtool_rxnfc *cmd,
 		      u32 *rule_locs);
 void ice_fdir_release_flows(struct ice_hw *hw);
+void ice_fdir_replay_flows(struct ice_hw *hw);
+void ice_fdir_replay_fltrs(struct ice_pf *pf);
 int ice_fdir_create_dflt_rules(struct ice_pf *pf);
 int ice_open(struct net_device *netdev);
 int ice_stop(struct net_device *netdev);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
index 223a883f7796..aa353e96b30f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
@@ -348,6 +348,53 @@ void ice_fdir_release_flows(struct ice_hw *hw)
 		ice_fdir_erase_flow_from_hw(hw, ICE_BLK_FD, flow);
 }
 
+/**
+ * ice_fdir_replay_flows - replay HW Flow Director filter info
+ * @hw: pointer to HW instance
+ */
+void ice_fdir_replay_flows(struct ice_hw *hw)
+{
+	int flow;
+
+	for (flow = 0; flow < ICE_FLTR_PTYPE_MAX; flow++) {
+		int tun;
+
+		if (!hw->fdir_prof[flow] || !hw->fdir_prof[flow]->cnt)
+			continue;
+		for (tun = 0; tun < ICE_FD_HW_SEG_MAX; tun++) {
+			struct ice_flow_prof *hw_prof;
+			struct ice_fd_hw_prof *prof;
+			u64 prof_id;
+			int j;
+
+			prof = hw->fdir_prof[flow];
+			prof_id = flow + tun * ICE_FLTR_PTYPE_MAX;
+			ice_flow_add_prof(hw, ICE_BLK_FD, ICE_FLOW_RX, prof_id,
+					  prof->fdir_seg[tun], TNL_SEG_CNT(tun),
+					  &hw_prof);
+			for (j = 0; j < prof->cnt; j++) {
+				enum ice_flow_priority prio;
+				u64 entry_h = 0;
+				int err;
+
+				prio = ICE_FLOW_PRIO_NORMAL;
+				err = ice_flow_add_entry(hw, ICE_BLK_FD,
+							 prof_id,
+							 prof->vsi_h[0],
+							 prof->vsi_h[j],
+							 prio, prof->fdir_seg,
+							 &entry_h);
+				if (err) {
+					dev_err(ice_hw_to_dev(hw), "Could not replay Flow Director, flow type %d\n",
+						flow);
+					continue;
+				}
+				prof->entry_h[j][tun] = entry_h;
+			}
+		}
+	}
+}
+
 /**
  * ice_parse_rx_flow_user_data - deconstruct user-defined data
  * @fsp: pointer to ethtool Rx flow specification
@@ -1225,6 +1272,24 @@ ice_fdir_write_all_fltr(struct ice_pf *pf, struct ice_fdir_fltr *input,
 	return 0;
 }
 
+/**
+ * ice_fdir_replay_fltrs - replay filters from the HW filter list
+ * @pf: board private structure
+ */
+void ice_fdir_replay_fltrs(struct ice_pf *pf)
+{
+	struct ice_fdir_fltr *f_rule;
+	struct ice_hw *hw = &pf->hw;
+
+	list_for_each_entry(f_rule, &hw->fdir_list_head, fltr_node) {
+		int err = ice_fdir_write_all_fltr(pf, f_rule, true);
+
+		if (err)
+			dev_dbg(ice_pf_to_dev(pf), "Flow Director error %d, could not reprogram filter %d\n",
+				err, f_rule->fltr_id);
+	}
+}
+
 /**
  * ice_fdir_create_dflt_rules - create default perfect filters
  * @pf: PF data structure
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 7649ff2bf3e1..2bc260092f47 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2798,6 +2798,8 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 		goto err_vsi;
 
 	ice_vsi_get_qs(vsi);
+
+	ice_alloc_fd_res(vsi);
 	ice_vsi_set_tc_cfg(vsi);
 
 	/* Initialize VSI struct elements and create VSI in FW */
@@ -2806,6 +2808,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 		goto err_vsi;
 
 	switch (vsi->type) {
+	case ICE_VSI_CTRL:
 	case ICE_VSI_PF:
 		ret = ice_vsi_alloc_q_vectors(vsi);
 		if (ret)
@@ -2830,12 +2833,14 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 			if (ret)
 				goto err_vectors;
 		}
-		/* Do not exit if configuring RSS had an issue, at least
-		 * receive traffic on first queue. Hence no need to capture
-		 * return value
-		 */
-		if (test_bit(ICE_FLAG_RSS_ENA, pf->flags))
-			ice_vsi_cfg_rss_lut_key(vsi);
+		/* ICE_VSI_CTRL does not need RSS so skip RSS processing */
+		if (vsi->type != ICE_VSI_CTRL)
+			/* Do not exit if configuring RSS had an issue, at
+			 * least receive traffic on first queue. Hence no
+			 * need to capture return value
+			 */
+			if (test_bit(ICE_FLAG_RSS_ENA, pf->flags))
+				ice_vsi_cfg_rss_lut_key(vsi);
 		break;
 	case ICE_VSI_VF:
 		ret = ice_vsi_alloc_q_vectors(vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index bf7d070eaba1..0eca14a1702e 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4957,6 +4957,21 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 		goto err_sched_init_port;
 	}
 
+	if (test_bit(ICE_FLAG_FD_ENA, pf->flags)) {
+		wr32(hw, PFQF_FD_ENA, PFQF_FD_ENA_FD_ENA_M);
+		if (!rd32(hw, PFQF_FD_SIZE)) {
+			u16 unused, guar, b_effort;
+
+			guar = hw->func_caps.fd_fltr_guar;
+			b_effort = hw->func_caps.fd_fltr_best_effort;
+
+			/* force guaranteed filter pool for PF */
+			ice_alloc_fd_guar_item(hw, &unused, guar);
+			/* force shared filter pool for PF */
+			ice_alloc_fd_shrd_item(hw, &unused, b_effort);
+		}
+	}
+
 	if (test_bit(ICE_FLAG_DCB_ENA, pf->flags))
 		ice_dcb_rebuild(pf);
 
@@ -4983,6 +4998,22 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 		}
 	}
 
+	/* If Flow Director is active */
+	if (test_bit(ICE_FLAG_FD_ENA, pf->flags)) {
+		err = ice_vsi_rebuild_by_type(pf, ICE_VSI_CTRL);
+		if (err) {
+			dev_err(dev, "control VSI rebuild failed: %d\n", err);
+			goto err_vsi_rebuild;
+		}
+
+		/* replay HW Flow Director recipes */
+		if (hw->fdir_prof)
+			ice_fdir_replay_flows(hw);
+
+		/* replay Flow Director filters */
+		ice_fdir_replay_fltrs(pf);
+	}
+
 	ice_update_pf_netdev_link(pf);
 
 	/* tell the firmware we are up */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
