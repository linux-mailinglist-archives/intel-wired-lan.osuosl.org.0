Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEF07EE9F6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Nov 2023 00:26:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 233B96FAFC;
	Thu, 16 Nov 2023 23:26:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 233B96FAFC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700177215;
	bh=CPXpYLt2rRaa7RDZy6NDQ1qXFsjpF3G5KEv+T3i1bWg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fzNJO6xY5gqdVsh9roYHkq1PWZf9KDb6nmNdfgxvgd6xvF0g0Nm1n1KGi2bChl+pU
	 cibjVNvLOnvYBkhCgFV385vvyBQOUurUH7yJskIFFAD2BbOYIarDnuoyH+A+fEwATX
	 e9UJ9NnPFYJG5jW3Nto3KDM8DJPXAx/Nb4hy7Ra6omrQN3gzGBqE8UjACVDiY3eqn6
	 pLJVO//2+c8s55GLAbB80gAPwx14xe2RrjdEYFpXmRvnoptgq9ffHvLtqGvOy3/+8L
	 eJ0gqvQIGZXwlV6W+7hYiz8YfmC06KQ+Bz/G1VAaXUsdQPmtBUvq1LAp7719YzQfVO
	 jAwxJFyQUvUGg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N2I-kfABFLr3; Thu, 16 Nov 2023 23:26:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5FB256122C;
	Thu, 16 Nov 2023 23:26:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5FB256122C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1FE181BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 23:26:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0058B83A82
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 23:26:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0058B83A82
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0CWw9ZII_nQD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Nov 2023 23:26:43 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AA02483BCD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 23:26:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA02483BCD
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="422300968"
X-IronPort-AV: E=Sophos;i="6.04,205,1695711600"; d="scan'208";a="422300968"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 15:26:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="909269749"
X-IronPort-AV: E=Sophos;i="6.04,205,1695711600"; d="scan'208";a="909269749"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 15:26:42 -0800
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 16 Nov 2023 15:28:42 -0800
Message-Id: <20231116232842.1999143-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700177203; x=1731713203;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3gOvykU6JpzzqHTaTOJ1LUI5DosO2tb5gutlNyZ4dn0=;
 b=afPn+SAAyD6FOenUCzY76bA9ooBz+QzkG+rmrSlTKOgbGiGbNx6bugaa
 OxiauwwPAn51GKiWDeaFMjGUZWqYgdAXj8RqIOoybi0ZfBA9OTbIePPyF
 C7DGPr5cG4jTBaw3HFfEcERQT0EZ7D4yDFfzTCgCnEYbr65+epyA0T4Fn
 /QM+aLaOOoHAryZswPTA+raUz7yFejlgtK/4NZnX+aQvHl1PMG9hmBaIg
 4g0xkDeV8XfmTOuLAQYr1ygFv9chsO3yWhNQPVGO+li9FeA8ozNVthxPi
 YeEvYPFq2ZYpeMMRcoXUHbzQk4FakaH9bD47A49wsBWXrSZFEt8APXdCk
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=afPn+SAA
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: Fix VF Reset paths when
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
 drivers/net/ethernet/intel/ice/ice_lag.c      | 122 +++++++++++-------
 drivers/net/ethernet/intel/ice/ice_lag.h      |   1 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  20 +++
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  25 ++++
 4 files changed, 118 insertions(+), 50 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 57226f70c6e8..8843d7a5e179 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -569,6 +569,50 @@ ice_lag_move_vf_node_tc(struct ice_lag *lag, u8 oldport, u8 newport,
 		dev_dbg(dev, "Problem restarting traffic for LAG node move\n");
 }
 
+/**
+ * ice_lag_build_netdev_list - populate the lag struct's netdev list
+ * @lag: local lag struct
+ * @ndlist: pointer to netdev list to populate
+ */
+void ice_lag_build_netdev_list(struct ice_lag *lag,
+			       struct ice_lag_netdev_list *ndlist)
+{
+	struct ice_lag_netdev_list *nl;
+	struct net_device *tmp_nd;
+
+	INIT_LIST_HEAD(&ndlist->node);
+	rcu_read_lock();
+	for_each_netdev_in_bond_rcu(lag->upper_netdev, tmp_nd) {
+		nl = kzalloc(sizeof(*nl), GFP_ATOMIC);
+		if (!nl)
+			break;
+
+		nl->netdev = tmp_nd;
+		list_add(&nl->node, &ndlist->node);
+	}
+	rcu_read_unlock();
+	lag->netdev_head = &ndlist->node;
+}
+
+/**
+ * ice_lag_destroy_netdev_list - free lag struct's netdev list
+ * @lag: pointer to local lag struct
+ * @ndlist: pointer to lag struct netdev list
+ */
+void ice_lag_destroy_netdev_list(struct ice_lag *lag,
+				 struct ice_lag_netdev_list *ndlist)
+{
+	struct ice_lag_netdev_list *entry, *n;
+
+	rcu_read_lock();
+	list_for_each_entry_safe(entry, n, &ndlist->node, node) {
+		list_del(&entry->node);
+		kfree(entry);
+	}
+	rcu_read_unlock();
+	lag->netdev_head = NULL;
+}
+
 /**
  * ice_lag_move_single_vf_nodes - Move Tx scheduling nodes for single VF
  * @lag: primary interface LAG struct
@@ -597,7 +641,6 @@ ice_lag_move_single_vf_nodes(struct ice_lag *lag, u8 oldport, u8 newport,
 void ice_lag_move_new_vf_nodes(struct ice_vf *vf)
 {
 	struct ice_lag_netdev_list ndlist;
-	struct list_head *tmp, *n;
 	u8 pri_port, act_port;
 	struct ice_lag *lag;
 	struct ice_vsi *vsi;
@@ -621,38 +664,15 @@ void ice_lag_move_new_vf_nodes(struct ice_vf *vf)
 	pri_port = pf->hw.port_info->lport;
 	act_port = lag->active_port;
 
-	if (lag->upper_netdev) {
-		struct ice_lag_netdev_list *nl;
-		struct net_device *tmp_nd;
-
-		INIT_LIST_HEAD(&ndlist.node);
-		rcu_read_lock();
-		for_each_netdev_in_bond_rcu(lag->upper_netdev, tmp_nd) {
-			nl = kzalloc(sizeof(*nl), GFP_ATOMIC);
-			if (!nl)
-				break;
-
-			nl->netdev = tmp_nd;
-			list_add(&nl->node, &ndlist.node);
-		}
-		rcu_read_unlock();
-	}
-
-	lag->netdev_head = &ndlist.node;
+	if (lag->upper_netdev)
+		ice_lag_build_netdev_list(lag, &ndlist);
 
 	if (ice_is_feature_supported(pf, ICE_F_SRIOV_LAG) &&
 	    lag->bonded && lag->primary && pri_port != act_port &&
 	    !list_empty(lag->netdev_head))
 		ice_lag_move_single_vf_nodes(lag, pri_port, act_port, vsi->idx);
 
-	list_for_each_safe(tmp, n, &ndlist.node) {
-		struct ice_lag_netdev_list *entry;
-
-		entry = list_entry(tmp, struct ice_lag_netdev_list, node);
-		list_del(&entry->node);
-		kfree(entry);
-	}
-	lag->netdev_head = NULL;
+	ice_lag_destroy_netdev_list(lag, &ndlist);
 
 new_vf_unlock:
 	mutex_unlock(&pf->lag_mutex);
@@ -679,6 +699,29 @@ static void ice_lag_move_vf_nodes(struct ice_lag *lag, u8 oldport, u8 newport)
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
+	struct ice_lag_netdev_list ndlist;
+
+	ice_lag_build_netdev_list(lag, &ndlist);
+	ice_lag_move_vf_nodes(lag, src_prt, dst_prt);
+	ice_lag_destroy_netdev_list(lag, &ndlist);
+}
+
 #define ICE_LAG_SRIOV_CP_RECIPE		10
 #define ICE_LAG_SRIOV_TRAIN_PKT_LEN	16
 
@@ -2057,7 +2100,6 @@ void ice_lag_rebuild(struct ice_pf *pf)
 {
 	struct ice_lag_netdev_list ndlist;
 	struct ice_lag *lag, *prim_lag;
-	struct list_head *tmp, *n;
 	u8 act_port, loc_port;
 
 	if (!pf->lag || !pf->lag->bonded)
@@ -2069,21 +2111,7 @@ void ice_lag_rebuild(struct ice_pf *pf)
 	if (lag->primary) {
 		prim_lag = lag;
 	} else {
-		struct ice_lag_netdev_list *nl;
-		struct net_device *tmp_nd;
-
-		INIT_LIST_HEAD(&ndlist.node);
-		rcu_read_lock();
-		for_each_netdev_in_bond_rcu(lag->upper_netdev, tmp_nd) {
-			nl = kzalloc(sizeof(*nl), GFP_ATOMIC);
-			if (!nl)
-				break;
-
-			nl->netdev = tmp_nd;
-			list_add(&nl->node, &ndlist.node);
-		}
-		rcu_read_unlock();
-		lag->netdev_head = &ndlist.node;
+		ice_lag_build_netdev_list(lag, &ndlist);
 		prim_lag = ice_lag_find_primary(lag);
 	}
 
@@ -2113,13 +2141,7 @@ void ice_lag_rebuild(struct ice_pf *pf)
 
 	ice_clear_rdma_cap(pf);
 lag_rebuild_out:
-	list_for_each_safe(tmp, n, &ndlist.node) {
-		struct ice_lag_netdev_list *entry;
-
-		entry = list_entry(tmp, struct ice_lag_netdev_list, node);
-		list_del(&entry->node);
-		kfree(entry);
-	}
+	ice_lag_destroy_netdev_list(lag, &ndlist);
 	mutex_unlock(&pf->lag_mutex);
 }
 
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
