Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD1D7E472C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Nov 2023 18:36:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A14E46145F;
	Tue,  7 Nov 2023 17:36:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A14E46145F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699378596;
	bh=WLEjOBpglcnzxEZaeTtejwp5CvtKL6N/EAKfwzH7GH4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=EaZzLVFgD8jR3vDtAfw7p0CgG/NlWJlVIRT1JtVGD1C43JloSIsOXAOoK6bgcKeu5
	 mIWHhTZj5OPnEJm+woiZLjmkJRGVXdFNTyn2nG0k4KiZdiV1hf/yP6uhEm/I6xvtUQ
	 IBQ1NkHDYlcqsOqKytO7v1aAy9m9p4aRIWUjMK+LUCkEWHmbb3wrc2ENmTFgcfdKGn
	 /0w+IioXgbY9INlFTyOyEF8M+oY04Ufm90FrPqzs7qLN0x+clSDq1vufOIYaJxSuUs
	 zODh67uwrb1/AmXcqaqpJNUVjCRksaeat8lUUMu+TfmE4P+1jdMA65ZetvIQOulzBc
	 C8lRbbypeEFpg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z1iP1M5Wh4vH; Tue,  7 Nov 2023 17:36:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 17C2A611B4;
	Tue,  7 Nov 2023 17:36:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 17C2A611B4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DBF5F1BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Nov 2023 17:36:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B26A641840
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Nov 2023 17:36:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B26A641840
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uFyMBysffCrI for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Nov 2023 17:36:28 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DEDDD4187E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Nov 2023 17:36:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DEDDD4187E
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="369757847"
X-IronPort-AV: E=Sophos;i="6.03,284,1694761200"; d="scan'208";a="369757847"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2023 09:36:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="739213999"
X-IronPort-AV: E=Sophos;i="6.03,284,1694761200"; d="scan'208";a="739213999"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2023 09:36:26 -0800
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  7 Nov 2023 09:38:25 -0800
Message-Id: <20231107173825.1853492-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699378587; x=1730914587;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kf2dfYoUGr0ScZjdu6khqTDc59hw2kEXcudfbFf2ELQ=;
 b=VerhLh55vsFQLH5geqMT7hk4dJ+YH1Fj0hXovH9DZ4TmT0jtLjJOht8c
 tx/ory14xYpvWA6Bmj9sx3DGavLAkdFLpOHdzK3YplRv+YB2kXJIZx2d7
 uQFqvc16MLAxLBhEHAccSjaMNPesJSZj16wrUCPpCzklejnUr27cLs+xJ
 bT0xK3XaB9ZAAPug30j+1pA+TW10fnb7BS86gavZtpIbypOXWBzT4547Y
 bNrraNQbS2kqSIkJleWebWmS2ze5mQor4sCWft4D1FrgtJHGwStKswdpP
 FiJ29XtpnV+1BrXqm4xQZqE8qcZZHOi3VunvB+ovgqRpN0CQJ40GY4ntF
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VerhLh55
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Fix VF Reset paths when
 interface in a failed over aggregate
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

There is an error when an interface has the following conditions:
- PF is in an aggregate (bond)
- PF has VFs created on it
- bond is in a state where it is failed-over to the secondary interface
- A VF reset is issued on one or more of those VFs

The issue is generated by the originating PF trying to rebuild or
reconfigure the VF resources.  Since the bond is failed over to the
secondary interface the queue contexts are in a modified state.

To fix this issue, have the originating interface reclaim its resources
prior to the tear-down and rebuild or reconfigure.  Then after the process
is complete, move the resources back to the currently active interface.

There are multiple paths that can be used depending on what triggered the
event, so create a helper function to move the queues and use paired calls
to the helper (back to origin, process, then move back to active interface)
under the same lag_mutex lock.

Fixes: 1e0f9881ef79 ("ice: Flesh out implementation of support for SRIOV on bonded interface")
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lag.c      | 42 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_lag.h      |  1 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 20 +++++++++
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 25 +++++++++++
 4 files changed, 88 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 57226f70c6e8..737145b68380 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -679,6 +679,48 @@ static void ice_lag_move_vf_nodes(struct ice_lag *lag, u8 oldport, u8 newport)
 			ice_lag_move_single_vf_nodes(lag, oldport, newport, i);
 }
 
+/**
+ * ice_lag_move_vf_nodes_cfg - move vf nodes outside LAG netdev event context
+ * @lag: local lag struct
+ * @src_prt: lport value for source port
+ * @dst_prt: lport value for destination port
+ *
+ * This function is used to move nodes during an out-of-netdev-event situation,
+ * primarily when the driver needs to reconfigure or recreate resources.
+ *
+ * Must be called while holding the lag_mutex to avoid lag events from
+ * processing while out-of-sync moves are happening.  Also, paired moves,
+ * such as used in a reset flow, should both be called under the same mutex
+ * lock to avoid changes between start of reset and end of reset.
+ */
+void ice_lag_move_vf_nodes_cfg(struct ice_lag *lag, u8 src_prt, u8 dst_prt)
+{
+	struct ice_lag_netdev_list ndlist, *nl;
+	struct list_head *tmp, *n;
+	struct net_device *tmp_nd;
+
+	INIT_LIST_HEAD(&ndlist.node);
+	rcu_read_lock();
+	for_each_netdev_in_bond_rcu(lag->upper_netdev, tmp_nd) {
+		nl = kzalloc(sizeof(*nl), GFP_ATOMIC);
+		if (!nl)
+			break;
+
+		nl->netdev = tmp_nd;
+		list_add(&nl->node, &ndlist.node);
+	}
+	rcu_read_unlock();
+	lag->netdev_head = &ndlist.node;
+	ice_lag_move_vf_nodes(lag, src_prt, dst_prt);
+
+	list_for_each_safe(tmp, n, &ndlist.node) {
+		nl = list_entry(tmp, struct ice_lag_netdev_list, node);
+		list_del(&nl->node);
+		kfree(nl);
+	}
+	lag->netdev_head = NULL;
+}
+
 #define ICE_LAG_SRIOV_CP_RECIPE		10
 #define ICE_LAG_SRIOV_TRAIN_PKT_LEN	16
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lag.h b/drivers/net/ethernet/intel/ice/ice_lag.h
index 9557e8605a07..ede833dfa658 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.h
+++ b/drivers/net/ethernet/intel/ice/ice_lag.h
@@ -65,4 +65,5 @@ int ice_init_lag(struct ice_pf *pf);
 void ice_deinit_lag(struct ice_pf *pf);
 void ice_lag_rebuild(struct ice_pf *pf);
 bool ice_lag_is_switchdev_running(struct ice_pf *pf);
+void ice_lag_move_vf_nodes_cfg(struct ice_lag *lag, u8 src_prt, u8 dst_prt);
 #endif /* _ICE_LAG_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index aca1f2ea5034..b7ae09952156 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -829,12 +829,16 @@ static void ice_notify_vf_reset(struct ice_vf *vf)
 int ice_reset_vf(struct ice_vf *vf, u32 flags)
 {
 	struct ice_pf *pf = vf->pf;
+	struct ice_lag *lag;
 	struct ice_vsi *vsi;
+	u8 act_prt, pri_prt;
 	struct device *dev;
 	int err = 0;
 	bool rsd;
 
 	dev = ice_pf_to_dev(pf);
+	act_prt = ICE_LAG_INVALID_PORT;
+	pri_prt = pf->hw.port_info->lport;
 
 	if (flags & ICE_VF_RESET_NOTIFY)
 		ice_notify_vf_reset(vf);
@@ -845,6 +849,17 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 		return 0;
 	}
 
+	lag = pf->lag;
+	mutex_lock(&pf->lag_mutex);
+	if (lag && lag->bonded && lag->primary) {
+		act_prt = lag->active_port;
+		if (act_prt != pri_prt && act_prt != ICE_LAG_INVALID_PORT &&
+		    lag->upper_netdev)
+			ice_lag_move_vf_nodes_cfg(lag, act_prt, pri_prt);
+		else
+			act_prt = ICE_LAG_INVALID_PORT;
+	}
+
 	if (flags & ICE_VF_RESET_LOCK)
 		mutex_lock(&vf->cfg_lock);
 	else
@@ -937,6 +952,11 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 	if (flags & ICE_VF_RESET_LOCK)
 		mutex_unlock(&vf->cfg_lock);
 
+	if (lag && lag->bonded && lag->primary &&
+	    act_prt != ICE_LAG_INVALID_PORT)
+		ice_lag_move_vf_nodes_cfg(lag, pri_prt, act_prt);
+	mutex_unlock(&pf->lag_mutex);
+
 	return err;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index cdf17b1e2f25..de11b3186bd7 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -1603,9 +1603,24 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 	    (struct virtchnl_vsi_queue_config_info *)msg;
 	struct virtchnl_queue_pair_info *qpi;
 	struct ice_pf *pf = vf->pf;
+	struct ice_lag *lag;
 	struct ice_vsi *vsi;
+	u8 act_prt, pri_prt;
 	int i = -1, q_idx;
 
+	lag = pf->lag;
+	mutex_lock(&pf->lag_mutex);
+	act_prt = ICE_LAG_INVALID_PORT;
+	pri_prt = pf->hw.port_info->lport;
+	if (lag && lag->bonded && lag->primary) {
+		act_prt = lag->active_port;
+		if (act_prt != pri_prt && act_prt != ICE_LAG_INVALID_PORT &&
+		    lag->upper_netdev)
+			ice_lag_move_vf_nodes_cfg(lag, act_prt, pri_prt);
+		else
+			act_prt = ICE_LAG_INVALID_PORT;
+	}
+
 	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states))
 		goto error_param;
 
@@ -1729,6 +1744,11 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 		}
 	}
 
+	if (lag && lag->bonded && lag->primary &&
+	    act_prt != ICE_LAG_INVALID_PORT)
+		ice_lag_move_vf_nodes_cfg(lag, pri_prt, act_prt);
+	mutex_unlock(&pf->lag_mutex);
+
 	/* send the response to the VF */
 	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_VSI_QUEUES,
 				     VIRTCHNL_STATUS_SUCCESS, NULL, 0);
@@ -1743,6 +1763,11 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 				vf->vf_id, i);
 	}
 
+	if (lag && lag->bonded && lag->primary &&
+	    act_prt != ICE_LAG_INVALID_PORT)
+		ice_lag_move_vf_nodes_cfg(lag, pri_prt, act_prt);
+	mutex_unlock(&pf->lag_mutex);
+
 	ice_lag_move_new_vf_nodes(vf);
 
 	/* send the response to the VF */
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
