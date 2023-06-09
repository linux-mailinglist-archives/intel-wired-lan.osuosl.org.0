Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A644172A532
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Jun 2023 23:15:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3D00861665;
	Fri,  9 Jun 2023 21:15:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D00861665
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686345337;
	bh=CGbgnLYMdofBbhrOCB0ahQZ8rpypdaF6mVq89dawEFw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1PbhgtEKtdzpxDMf8NpKxwKwyflvRhOYV6xLUonksKsR5prGDMw87B0UGC2Yl705j
	 oebx+CajfGkv9hkqltfLvFozWmaClEBZ1toXs5dAAMMzjWAqI3C2eYFcwRcHSThIa2
	 snS/uif41AImHzInYXlLXkqpTtmf9Mreq3p4CXHnbbZPx7U5dsDnrVonKsWF/s+o5g
	 BD4buwRvetNWf7uwgz3cGQ71PAK6/sAOYGsVOYFMazo+xlYIbD3QD6wiPmMVMthnsx
	 mm0COzZLrBytANCMGh4E0KrCxbcbpCQORVpSvEhBcrNDhdJmsfoJHPVFf6Lv5Se8uD
	 buoCurEAUCMQg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bqQ86dAGEL-R; Fri,  9 Jun 2023 21:15:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 93B3C60B74;
	Fri,  9 Jun 2023 21:15:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 93B3C60B74
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 136701BF420
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 21:14:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D310F42591
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 21:14:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D310F42591
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mhQaEXodSotk for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jun 2023 21:14:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 229F24259E
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 229F24259E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 21:14:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="356583204"
X-IronPort-AV: E=Sophos;i="6.00,230,1681196400"; d="scan'208";a="356583204"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 14:14:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="823194642"
X-IronPort-AV: E=Sophos;i="6.00,230,1681196400"; d="scan'208";a="823194642"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 14:14:49 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  9 Jun 2023 14:16:26 -0700
Message-Id: <20230609211626.621968-11-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230609211626.621968-1-david.m.ertman@intel.com>
References: <20230609211626.621968-1-david.m.ertman@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686345290; x=1717881290;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Hwo7TBIc23t9NmGsQCwz7xWiGLnZOu6fZaBG9OSb2Wg=;
 b=lcYUnPJtHDQob5D99DF4iU3DmBp4dmbqP4g9A5ylzCCHEOZ2F+uH8vEQ
 Y1cJSdJRF68wfR3A0SS/mSPkmmPPgsqIw9v8v9m5HoBVRyxEkgpH1FAU/
 B6JCst4zYBrYAjteq3v11e7Gd+qz9myd0uW1SifhXb3Z3JTiEtaPp/NL+
 Ww/sLmE8STXitlhLOZhAnyga6aDlS3SKhP8A5Ih5o98g9RvsGP6HzesqM
 XQlehQZlXAEtzJQQoKrQH0NO4uvBuEZtp+gSXD2ZpZR26jCHMm1UPR79+
 WJlgBqjrNZKXHgYNQCA8BulRf+EY2nFXAzt4kwQDGVTWnfKgk5K6zukX8
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lcYUnPJt
Subject: [Intel-wired-lan] [PATCH iwl-next v4 10/10] ice: update reset path
 for SRIOV LAG support
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
Cc: simon.horman@corigine.com, daniel.machon@microchip.com,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add code to rebuild the LAG resources when rebuilding the state of the
interface after a reset.

Also added in a function for building per-queue information into the buffer
used to configure VF queues for LAG fail-over.  This improves code reuse.

Due to differences in timing per interface for recovering from a reset, add
in the ability to retry on non-local dependencies where needed.

Reviewed-by: Daniel Machon <daniel.machon@microchip.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lag.c  | 231 +++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_lag.h  |   3 +
 drivers/net/ethernet/intel/ice/ice_main.c |  14 +-
 3 files changed, 244 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index d08217c04727..e636b0259e0e 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -954,6 +954,7 @@ static void ice_lag_link_unlink(struct ice_lag *lag, void *ptr)
  * @link: Is this a linking activity
  *
  * If link is false, then primary_swid should be expected to not be valid
+ * This function should never be called in interrupt context.
  */
 static void
 ice_lag_set_swid(u16 primary_swid, struct ice_lag *local_lag,
@@ -963,7 +964,7 @@ ice_lag_set_swid(u16 primary_swid, struct ice_lag *local_lag,
 	struct ice_aqc_set_port_params *cmd;
 	struct ice_aq_desc desc;
 	u16 buf_len, swid;
-	int status;
+	int status, i;
 
 	buf_len = struct_size(buf, elem, 1);
 	buf = kzalloc(buf_len, GFP_KERNEL);
@@ -1014,7 +1015,20 @@ ice_lag_set_swid(u16 primary_swid, struct ice_lag *local_lag,
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_port_params);
 
 	cmd->swid = cpu_to_le16(ICE_AQC_PORT_SWID_VALID | swid);
-	status = ice_aq_send_cmd(&local_lag->pf->hw, &desc, NULL, 0, NULL);
+	/* If this is happening in reset context, it is possible that the
+	 * primary interface has not finished setting its SWID to SHARED
+	 * yet.  Allow retries to account for this timing issue between
+	 * interfaces.
+	 */
+	for (i = 0; i < ICE_LAG_RESET_RETRIES; i++) {
+		status = ice_aq_send_cmd(&local_lag->pf->hw, &desc, NULL, 0,
+					 NULL);
+		if (!status)
+			break;
+
+		usleep_range(1000, 2000);
+	}
+
 	if (status)
 		dev_err(ice_pf_to_dev(local_lag->pf), "Error setting SWID in port params %d\n",
 			status);
@@ -1022,7 +1036,7 @@ ice_lag_set_swid(u16 primary_swid, struct ice_lag *local_lag,
 
 /**
  * ice_lag_primary_swid - set/clear the SHARED attrib of primary's SWID
- * @lag: primary interfaces lag struct
+ * @lag: primary interface's lag struct
  * @link: is this a linking activity
  *
  * Implement setting primary SWID as shared using 0x020B
@@ -1745,6 +1759,135 @@ static int ice_create_lag_recipe(struct ice_hw *hw, u16 *rid,
 	return err;
 }
 
+/**
+ * ice_lag_move_vf_nodes_tc_sync - move a VF's nodes for a tc during reset
+ * @lag: primary interfaces lag struct
+ * @dest_hw: HW struct for destination's interface
+ * @vsi_num: VSI index in PF space
+ * @tc: traffic class to move
+ */
+static void
+ice_lag_move_vf_nodes_tc_sync(struct ice_lag *lag, struct ice_hw *dest_hw,
+			      u16 vsi_num, u8 tc)
+{
+	u16 numq, valq, buf_size, num_moved, qbuf_size;
+	struct device *dev = ice_pf_to_dev(lag->pf);
+	struct ice_aqc_cfg_txqs_buf *qbuf;
+	struct ice_aqc_move_elem *buf;
+	struct ice_sched_node *n_prt;
+	__le32 teid, parent_teid;
+	struct ice_vsi_ctx *ctx;
+	struct ice_hw *hw;
+	u32 tmp_teid;
+
+	hw = &lag->pf->hw;
+	ctx = ice_get_vsi_ctx(hw, vsi_num);
+	if (!ctx) {
+		dev_warn(dev, "LAG rebuild failed after reset due to VSI Context failure\n");
+		return;
+	}
+
+	if (!ctx->sched.vsi_node[tc])
+		return;
+
+	numq = ctx->num_lan_q_entries[tc];
+	teid = ctx->sched.vsi_node[tc]->info.node_teid;
+	tmp_teid = le32_to_cpu(teid);
+	parent_teid = ctx->sched.vsi_node[tc]->info.parent_teid;
+
+	if (!tmp_teid || !numq)
+		return;
+
+	if (ice_sched_suspend_resume_elems(hw, 1, &tmp_teid, true))
+		dev_dbg(dev, "Problem suspending traffic during reset rebuild\n");
+
+	/* reconfig queues for new port */
+	qbuf_size = struct_size(qbuf, queue_info, numq);
+	qbuf = kzalloc(qbuf_size, GFP_KERNEL);
+	if (!qbuf) {
+		dev_warn(dev, "Failure allocating VF queue recfg buffer for reset rebuild\n");
+		goto resume_sync;
+	}
+
+	/* add the per queue info for the reconfigure command buffer */
+	valq = ice_lag_qbuf_recfg(hw, qbuf, vsi_num, numq, tc);
+	if (!valq) {
+		dev_warn(dev, "Failure to reconfig queues for LAG reset rebuild\n");
+		goto sync_none;
+	}
+
+	if (ice_aq_cfg_lan_txq(hw, qbuf, qbuf_size, numq, hw->port_info->lport,
+			       dest_hw->port_info->lport, NULL)) {
+		dev_warn(dev, "Failure to configure queues for LAG reset rebuild\n");
+		goto sync_qerr;
+	}
+
+sync_none:
+	kfree(qbuf);
+
+	/* find parent in destination tree */
+	n_prt = ice_lag_get_sched_parent(dest_hw, tc);
+	if (!n_prt)
+		goto resume_sync;
+
+	/* Move node to new parent */
+	buf_size = struct_size(buf, teid, 1);
+	buf = kzalloc(buf_size, GFP_KERNEL);
+	if (!buf) {
+		dev_warn(dev, "Failure to alloc for VF node move in reset rebuild\n");
+		goto resume_sync;
+	}
+
+	buf->hdr.src_parent_teid = parent_teid;
+	buf->hdr.dest_parent_teid = n_prt->info.node_teid;
+	buf->hdr.num_elems = cpu_to_le16(1);
+	buf->hdr.mode = ICE_AQC_MOVE_ELEM_MODE_KEEP_OWN;
+	buf->teid[0] = teid;
+
+	if (ice_aq_move_sched_elems(&lag->pf->hw, 1, buf, buf_size, &num_moved,
+				    NULL))
+		dev_warn(dev, "Failure to move VF nodes for LAG reset rebuild\n");
+	else
+		ice_sched_update_parent(n_prt, ctx->sched.vsi_node[tc]);
+
+	kfree(buf);
+	goto resume_sync;
+
+sync_qerr:
+	kfree(qbuf);
+
+resume_sync:
+	if (ice_sched_suspend_resume_elems(hw, 1, &tmp_teid, false))
+		dev_warn(dev, "Problem restarting traffic for LAG node reset rebuild\n");
+}
+
+/**
+ * ice_lag_move_vf_nodes_sync - move vf nodes to active interface
+ * @lag: primary interfaces lag struct
+ * @dest_hw: lport value for currently active port
+ *
+ * This function is used in a reset context, outside of event handling,
+ * to move the VF nodes to the secondary interface when that interface
+ * is the active interface during a reset rebuild
+ */
+static void
+ice_lag_move_vf_nodes_sync(struct ice_lag *lag, struct ice_hw *dest_hw)
+{
+	struct ice_pf *pf;
+	int i, tc;
+
+	if (!lag->primary || !dest_hw)
+		return;
+
+	pf = lag->pf;
+	ice_for_each_vsi(pf, i)
+		if (pf->vsi[i] && (pf->vsi[i]->type == ICE_VSI_VF ||
+				   pf->vsi[i]->type == ICE_VSI_SWITCHDEV_CTRL))
+			ice_for_each_traffic_class(tc)
+				ice_lag_move_vf_nodes_tc_sync(lag, dest_hw, i,
+							      tc);
+}
+
 /**
  * ice_init_lag - initialize support for LAG
  * @pf: PF struct
@@ -1846,3 +1989,85 @@ void ice_deinit_lag(struct ice_pf *pf)
 
 	pf->lag = NULL;
 }
+
+/**
+ * ice_lag_rebuild - rebuild lag resources after reset
+ * @pf: pointer to local pf struct
+ *
+ * PF resets are promoted to CORER resets when interface in an aggregate.  This
+ * means that we need to rebuild the PF resources for the interface.  Since
+ * this will happen outside the normal event processing, need to acquire the lag
+ * lock.
+ *
+ * This function will also evaluate the VF resources if this is the primary
+ * interface.
+ */
+void ice_lag_rebuild(struct ice_pf *pf)
+{
+	struct ice_lag_netdev_list ndlist;
+	struct ice_lag *lag, *prim_lag;
+	struct list_head *tmp, *n;
+	u8 act_port, loc_port;
+
+	if (!pf->lag || !pf->lag->bonded)
+		return;
+
+	mutex_lock(&pf->lag_mutex);
+
+	lag = pf->lag;
+	if (lag->primary) {
+		prim_lag = lag;
+	} else {
+		struct ice_lag_netdev_list *nl;
+		struct net_device *tmp_nd;
+
+		INIT_LIST_HEAD(&ndlist.node);
+		rcu_read_lock();
+		for_each_netdev_in_bond_rcu(lag->upper_netdev, tmp_nd) {
+			nl = kzalloc(sizeof(*nl), GFP_KERNEL);
+			if (!nl)
+				break;
+
+			nl->netdev = tmp_nd;
+			list_add(&nl->node, &ndlist.node);
+		}
+		rcu_read_unlock();
+		lag->netdev_head = &ndlist.node;
+		prim_lag = ice_lag_find_primary(lag);
+	}
+
+	if (!prim_lag) {
+		dev_dbg(ice_pf_to_dev(pf), "No primary interface in aggregate, can't rebuild\n");
+		goto lag_rebuild_out;
+	}
+
+	act_port = prim_lag->active_port;
+	loc_port = lag->pf->hw.port_info->lport;
+
+	/* configure SWID for this port */
+	if (lag->primary) {
+		ice_lag_primary_swid(lag, true);
+	} else {
+		ice_lag_set_swid(prim_lag->pf->hw.port_info->sw_id, lag, true);
+		ice_lag_add_prune_list(prim_lag, pf);
+		if (act_port == loc_port)
+			ice_lag_move_vf_nodes_sync(prim_lag, &pf->hw);
+	}
+
+	ice_lag_cfg_cp_fltr(lag, true);
+
+	if (lag->pf_rule_id)
+		if (ice_lag_cfg_dflt_fltr(lag, true))
+			dev_err(ice_pf_to_dev(pf), "Error adding default VSI rule in rebuild\n");
+
+	ice_clear_rdma_cap(pf);
+lag_rebuild_out:
+	list_for_each_safe(tmp, n, &ndlist.node) {
+		struct ice_lag_netdev_list *entry;
+
+		entry = list_entry(tmp, struct ice_lag_netdev_list, node);
+		list_del(&entry->node);
+		kfree(entry);
+	}
+	mutex_unlock(&pf->lag_mutex);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_lag.h b/drivers/net/ethernet/intel/ice/ice_lag.h
index df4af5184a75..18075b82485a 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.h
+++ b/drivers/net/ethernet/intel/ice/ice_lag.h
@@ -16,6 +16,8 @@ enum ice_lag_role {
 
 #define ICE_LAG_INVALID_PORT 0xFF
 
+#define ICE_LAG_RESET_RETRIES		5
+
 struct ice_pf;
 struct ice_vf;
 
@@ -59,4 +61,5 @@ struct ice_lag_work {
 void ice_lag_move_new_vf_nodes(struct ice_vf *vf);
 int ice_init_lag(struct ice_pf *pf);
 void ice_deinit_lag(struct ice_pf *pf);
+void ice_lag_rebuild(struct ice_pf *pf);
 #endif /* _ICE_LAG_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index e01834d0417e..af57102538d1 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -636,6 +636,11 @@ static void ice_do_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 
 	dev_dbg(dev, "reset_type 0x%x requested\n", reset_type);
 
+	if (pf->lag && pf->lag->bonded && reset_type == ICE_RESET_PFR) {
+		dev_dbg(dev, "PFR on a bonded interface, promoting to CORER\n");
+		reset_type = ICE_RESET_CORER;
+	}
+
 	ice_prepare_for_reset(pf, reset_type);
 
 	/* trigger the reset */
@@ -719,8 +724,13 @@ static void ice_reset_subtask(struct ice_pf *pf)
 	}
 
 	/* No pending resets to finish processing. Check for new resets */
-	if (test_bit(ICE_PFR_REQ, pf->state))
+	if (test_bit(ICE_PFR_REQ, pf->state)) {
 		reset_type = ICE_RESET_PFR;
+		if (pf->lag && pf->lag->bonded) {
+			dev_dbg(ice_pf_to_dev(pf), "PFR on a bonded interface, promoting to CORER\n");
+			reset_type = ICE_RESET_CORER;
+		}
+	}
 	if (test_bit(ICE_CORER_REQ, pf->state))
 		reset_type = ICE_RESET_CORER;
 	if (test_bit(ICE_GLOBR_REQ, pf->state))
@@ -7361,6 +7371,8 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 	clear_bit(ICE_RESET_FAILED, pf->state);
 
 	ice_plug_aux_dev(pf);
+	if (ice_is_feature_supported(pf, ICE_F_SRIOV_LAG))
+		ice_lag_rebuild(pf);
 	return;
 
 err_vsi_rebuild:
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
