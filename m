Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DBFA359C3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Feb 2025 10:09:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F379F41707;
	Fri, 14 Feb 2025 09:09:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 15PgsBcXjNTZ; Fri, 14 Feb 2025 09:09:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 016284170F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739524153;
	bh=SmjTUcxbBspRC4U9HZYtgI4Uechi1N+akmuiR7P7MJ4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=J7oQqsNndU8sq6jc/o5TyCPvWrfmmSD61W6YN9oh3KjE4Yi7i+WyES1luYQwRJk0O
	 LxEZFrjiQw/TC/ldI3wBWhUM+ayutflVcsxcROhbpwf+cnIg5aRuphL2yDRdEFdZBI
	 wWbt655bnGNUynf4O9avGkwOFCY5LKpDe2bD9tbN51B9XJNfiG5BWVUCkKBzg3bNs7
	 /ExF+anVHGbF/kqEarMmxVmqngsgB6JH6Jmvlygpc6ri5w1T8eTCEbb/bB1zqUKAz1
	 853h0Stt1Wt+218DeH/MtnQ0KeL52baJf0l07yWTfnGq0WVUdhI+dO2RyC/x8u/xX5
	 DhHM8QSZK4/Bw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 016284170F;
	Fri, 14 Feb 2025 09:09:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1C63CC2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 09:09:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F1EE58491F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 09:09:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xt4jc_ZjQRu6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Feb 2025 09:09:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D9A5F84923
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D9A5F84923
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D9A5F84923
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 09:09:09 +0000 (UTC)
X-CSE-ConnectionGUID: WkyHqkU0QP+mNxxhET2klg==
X-CSE-MsgGUID: 3GnUXZkIQXqGjIysp28bvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="65617750"
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="65617750"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 01:09:09 -0800
X-CSE-ConnectionGUID: smnr3q/9Sjm06MadYZh2+g==
X-CSE-MsgGUID: GkpymaT+TqKnqa4R5gUB9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="113145513"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa009.jf.intel.com with ESMTP; 14 Feb 2025 01:09:05 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id CBE5337B89;
 Fri, 14 Feb 2025 09:09:03 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: Larysa Zaremba <larysa.zaremba@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Date: Fri, 14 Feb 2025 09:50:40 +0100
Message-ID: <20250214085215.2846063-7-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250214085215.2846063-1-larysa.zaremba@intel.com>
References: <20250214085215.2846063-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739524150; x=1771060150;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=68/Jk4xV/c3sVNf26I9VB33Hvr4yFq8ddNlxR37O2Xw=;
 b=J711bDYXiqmfajxMfceiFydjcOo0NQR8mrMga6hDScVQrQP8F9DxSsuh
 4/fCSBUgNXAd+lT3CcR6lBDtmnQ9AhgduYZqWM4Gb579T47HCvr53yeE+
 CZFOHpMBJ4ui6wWi1jdQlDw5LkzEGu2369zqDrCqrYpDXvQ8vOUyZ0meG
 Nirx45hOoVKsrsjnk/C46WDbXgVE4ZY1fKUjrQuG6e5AJoTW2e4G5BGl7
 IXKPvcz9KqI9UcpeEKNfZh6lrEjzFz1vf7nfamROvzOcn/Z5AZi3gaHZq
 s5A08ZCR7/WLiUllDR0qvtS2JscLBXq+sJylB1mQ3EkOEOyqJ4N8xl1Cr
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J711bDYX
Subject: [Intel-wired-lan] [PATCH iwl-next v4 6/6] ice: enable LLDP TX for
 VFs through tc
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Only a single VSI can be in charge of sending LLDP frames, sometimes it is
beneficial to assign this function to a VF, that is possible to do with tc
capabilities in the switchdev mode. It requires first blocking the PF from
sending the LLDP frames with a following command:

tc filter add dev <ifname> egress protocol lldp flower skip_sw action drop

Then it becomes possible to configure a forward rule from a VF port
representor to uplink instead.

tc filter add dev <vf_ifname> ingress protocol lldp flower skip_sw
action mirred egress redirect dev <ifname>

How LLDP exclusivity was done previously is LLDP traffic was blocked for a
whole port by a single rule and PF was bypassing that. Now at least in the
switchdev mode, every separate VSI has to have its own drop rule. Another
complication is the fact that tc does not respect when the driver refuses
to delete a rule, so returning an error results in a HW rule still present
with no way to reference it through tc. This is addressed by allowing the
PF rule to be deleted at any time, but making the VF forward rule "dormant"
in such case, this means it is deleted from HW but stays in tc and driver's
bookkeeping to be restored when drop rule is added back to the PF.

Implement tc configuration handling which enables the user to transmit LLDP
packets from VF instead of PF.

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c |   2 +
 drivers/net/ethernet/intel/ice/ice_repr.c    |   7 +
 drivers/net/ethernet/intel/ice/ice_tc_lib.c  | 159 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_tc_lib.h  |   2 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.h  |   4 +
 5 files changed, 174 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 70a523e962d8..40547ff65e25 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -29,6 +29,7 @@ static int ice_eswitch_setup_env(struct ice_pf *pf)
 			return -ENODEV;
 
 	ice_remove_vsi_fltr(&pf->hw, uplink_vsi->idx);
+	ice_vsi_cfg_sw_lldp(uplink_vsi, true, false);
 
 	netif_addr_lock_bh(netdev);
 	__dev_uc_unsync(netdev, NULL);
@@ -283,6 +284,7 @@ static void ice_eswitch_release_env(struct ice_pf *pf)
 	ice_fltr_add_mac_and_broadcast(uplink_vsi,
 				       uplink_vsi->port_info->mac.perm_addr,
 				       ICE_FWD_TO_VSI);
+	ice_vsi_cfg_sw_lldp(uplink_vsi, true, true);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index f81bf60f8365..cb08746556a6 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -337,6 +337,7 @@ void ice_repr_destroy(struct ice_repr *repr)
 static void ice_repr_rem_vf(struct ice_repr *repr)
 {
 	ice_eswitch_decfg_vsi(repr->src_vsi, repr->parent_mac);
+	ice_pass_vf_tx_lldp(repr->src_vsi, true);
 	unregister_netdev(repr->netdev);
 	ice_devlink_destroy_vf_port(repr->vf);
 	ice_virtchnl_set_dflt_ops(repr->vf);
@@ -418,6 +419,10 @@ static int ice_repr_add_vf(struct ice_repr *repr)
 	if (err)
 		goto err_netdev;
 
+	err = ice_drop_vf_tx_lldp(repr->src_vsi, true);
+	if (err)
+		goto err_drop_lldp;
+
 	err = ice_eswitch_cfg_vsi(repr->src_vsi, repr->parent_mac);
 	if (err)
 		goto err_cfg_vsi;
@@ -430,6 +435,8 @@ static int ice_repr_add_vf(struct ice_repr *repr)
 	return 0;
 
 err_cfg_vsi:
+	ice_pass_vf_tx_lldp(repr->src_vsi, true);
+err_drop_lldp:
 	unregister_netdev(repr->netdev);
 err_netdev:
 	ice_devlink_destroy_vf_port(vf);
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 229cd29ff92a..39798732a2c7 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -762,6 +762,153 @@ static int ice_eswitch_tc_parse_action(struct net_device *filter_dev,
 	return 0;
 }
 
+static bool ice_is_fltr_lldp(struct ice_tc_flower_fltr *fltr)
+{
+	return fltr->outer_headers.l2_key.n_proto == htons(ETH_P_LLDP);
+}
+
+static bool ice_is_fltr_pf_tx_lldp(struct ice_tc_flower_fltr *fltr)
+{
+	struct ice_vsi *vsi = fltr->src_vsi, *uplink;
+
+	if (!ice_is_switchdev_running(vsi->back))
+		return false;
+
+	uplink = vsi->back->eswitch.uplink_vsi;
+	return vsi == uplink && fltr->action.fltr_act == ICE_DROP_PACKET &&
+	       ice_is_fltr_lldp(fltr) &&
+	       fltr->direction == ICE_ESWITCH_FLTR_EGRESS &&
+	       fltr->flags == ICE_TC_FLWR_FIELD_ETH_TYPE_ID;
+}
+
+static bool ice_is_fltr_vf_tx_lldp(struct ice_tc_flower_fltr *fltr)
+{
+	struct ice_vsi *vsi = fltr->src_vsi, *uplink;
+
+	uplink = vsi->back->eswitch.uplink_vsi;
+	return fltr->src_vsi->type == ICE_VSI_VF && ice_is_fltr_lldp(fltr) &&
+	       fltr->direction == ICE_ESWITCH_FLTR_EGRESS &&
+	       fltr->dest_vsi == uplink;
+}
+
+static struct ice_tc_flower_fltr *
+ice_find_pf_tx_lldp_fltr(struct ice_pf *pf)
+{
+	struct ice_tc_flower_fltr *fltr;
+
+	hlist_for_each_entry(fltr, &pf->tc_flower_fltr_list, tc_flower_node)
+		if (ice_is_fltr_pf_tx_lldp(fltr))
+			return fltr;
+
+	return NULL;
+}
+
+static bool ice_any_vf_lldp_tx_ena(struct ice_pf *pf)
+{
+	struct ice_vf *vf;
+	unsigned int bkt;
+
+	ice_for_each_vf(pf, bkt, vf)
+		if (vf->lldp_tx_ena)
+			return true;
+
+	return false;
+}
+
+int ice_pass_vf_tx_lldp(struct ice_vsi *vsi, bool deinit)
+{
+	struct ice_rule_query_data remove_entry = {
+		.rid = vsi->vf->lldp_recipe_id,
+		.rule_id = vsi->vf->lldp_rule_id,
+		.vsi_handle = vsi->idx,
+	};
+	struct ice_pf *pf = vsi->back;
+	int err;
+
+	if (vsi->vf->lldp_tx_ena)
+		return 0;
+
+	if (!deinit && !ice_find_pf_tx_lldp_fltr(vsi->back))
+		return -EINVAL;
+
+	if (!deinit && ice_any_vf_lldp_tx_ena(pf))
+		return -EINVAL;
+
+	err = ice_rem_adv_rule_by_id(&pf->hw, &remove_entry);
+	if (!err)
+		vsi->vf->lldp_tx_ena = true;
+
+	return err;
+}
+
+int ice_drop_vf_tx_lldp(struct ice_vsi *vsi, bool init)
+{
+	struct ice_rule_query_data rule_added;
+	struct ice_adv_rule_info rinfo = {
+		.priority = 7,
+		.src_vsi = vsi->idx,
+		.sw_act = {
+			.src = vsi->idx,
+			.flag = ICE_FLTR_TX,
+			.fltr_act = ICE_DROP_PACKET,
+			.vsi_handle = vsi->idx,
+		},
+		.flags_info.act_valid = true,
+	};
+	struct ice_adv_lkup_elem list[3];
+	struct ice_pf *pf = vsi->back;
+	int err;
+
+	if (!init && !vsi->vf->lldp_tx_ena)
+		return 0;
+
+	ice_rule_add_direction_metadata(&list[0]);
+	ice_rule_add_src_vsi_metadata(&list[1]);
+	list[2].type = ICE_ETYPE_OL;
+	list[2].h_u.ethertype.ethtype_id = htons(ETH_P_LLDP);
+	list[2].m_u.ethertype.ethtype_id = htons(0xFFFF);
+
+	err = ice_add_adv_rule(&pf->hw, list, ARRAY_SIZE(list), &rinfo,
+			       &rule_added);
+	if (err) {
+		dev_err(&pf->pdev->dev,
+			"Failed to add an LLDP rule to VSI 0x%X: %d\n",
+			vsi->idx, err);
+	} else {
+		vsi->vf->lldp_recipe_id = rule_added.rid;
+		vsi->vf->lldp_rule_id = rule_added.rule_id;
+		vsi->vf->lldp_tx_ena = false;
+	}
+
+	return err;
+}
+
+static void ice_handle_add_pf_lldp_drop_rule(struct ice_vsi *vsi)
+{
+	struct ice_tc_flower_fltr *fltr;
+	struct ice_pf *pf = vsi->back;
+
+	hlist_for_each_entry(fltr, &pf->tc_flower_fltr_list, tc_flower_node) {
+		if (!ice_is_fltr_vf_tx_lldp(fltr))
+			continue;
+		ice_pass_vf_tx_lldp(fltr->src_vsi, true);
+		break;
+	}
+}
+
+static void ice_handle_del_pf_lldp_drop_rule(struct ice_pf *pf)
+{
+	int i;
+
+	/* Make the VF LLDP fwd to uplink rule dormant */
+	ice_for_each_vsi(pf, i) {
+		struct ice_vsi *vf_vsi = pf->vsi[i];
+
+		if (vf_vsi && vf_vsi->type == ICE_VSI_VF)
+			ice_drop_vf_tx_lldp(vf_vsi, false);
+	}
+}
+
 static int
 ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 {
@@ -779,6 +926,9 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 		return -EOPNOTSUPP;
 	}
 
+	if (ice_is_fltr_vf_tx_lldp(fltr))
+		return ice_pass_vf_tx_lldp(vsi, false);
+
 	lkups_cnt = ice_tc_count_lkups(flags, fltr);
 	list = kcalloc(lkups_cnt, sizeof(*list), GFP_ATOMIC);
 	if (!list)
@@ -850,6 +1000,9 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 		goto exit;
 	}
 
+	if (ice_is_fltr_pf_tx_lldp(fltr))
+		ice_handle_add_pf_lldp_drop_rule(vsi);
+
 	/* store the output params, which are needed later for removing
 	 * advanced switch filter
 	 */
@@ -1969,6 +2122,12 @@ static int ice_del_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 	struct ice_pf *pf = vsi->back;
 	int err;
 
+	if (ice_is_fltr_pf_tx_lldp(fltr))
+		ice_handle_del_pf_lldp_drop_rule(pf);
+
+	if (ice_is_fltr_vf_tx_lldp(fltr))
+		return ice_drop_vf_tx_lldp(vsi, false);
+
 	rule_rem.rid = fltr->rid;
 	rule_rem.rule_id = fltr->rule_id;
 	rule_rem.vsi_handle = fltr->dest_vsi_handle;
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.h b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
index df9f90f793b9..8a3ab2f22af9 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
@@ -217,6 +217,8 @@ int ice_del_cls_flower(struct ice_vsi *vsi,
 		       struct flow_cls_offload *cls_flower);
 void ice_replay_tc_fltrs(struct ice_pf *pf);
 bool ice_is_tunnel_supported(struct net_device *dev);
+int ice_drop_vf_tx_lldp(struct ice_vsi *vsi, bool init);
+int ice_pass_vf_tx_lldp(struct ice_vsi *vsi, bool deinit);
 
 static inline bool ice_is_forward_action(enum ice_sw_fwd_act_type fltr_act)
 {
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index f4c9ca1f51ce..482f4285fd35 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -124,6 +124,7 @@ struct ice_vf {
 	u8 spoofchk:1;
 	u8 link_forced:1;
 	u8 link_up:1;			/* only valid if VF link is forced */
+	u8 lldp_tx_ena:1;
 
 	u32 ptp_caps;
 
@@ -150,6 +151,9 @@ struct ice_vf {
 	/* devlink port data */
 	struct devlink_port devlink_port;
 
+	u16 lldp_recipe_id;
+	u16 lldp_rule_id;
+
 	u16 num_msix;			/* num of MSI-X configured on this VF */
 	struct ice_vf_qs_bw qs_bw[ICE_MAX_RSS_QS_PER_VF];
 };
-- 
2.43.0

