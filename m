Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5A372A533
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Jun 2023 23:15:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 237FE60AE2;
	Fri,  9 Jun 2023 21:15:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 237FE60AE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686345343;
	bh=m+wAReCVZYAayJ9d/Qh1Bil15yTL3bRmnuWm1GR4nkw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VOnryqgoR07/zwKSDD8IYXYP1CSvfmERgs1gS9zL6ZV1U6dK1/djg7sZpgH4+JoYT
	 9zmgEyt+GCfi/LJ/GORPe75CZTzDKmEZOkK5kgnOD0k9aCRMjQAmvPsrrMASH3RcgK
	 X/0WySY7MA76vPejn9or+iSJopVcx7cgM54xoL5ZghsZORFTWo7iZdsRYKIgyr7AOZ
	 wyUX9k7rTEpMg0FlqgCiy4iqqdHhvVAvrZAw9Pdd0ItEMoJeFBmsmzidYekuMhqeNi
	 5qySzdhbFamIAYJ4EOk1Ve6EquQdNwx24jpXklSm1VEbzGn/p6XOeYiVuLjGR8zLsb
	 Gu1ZPAbeMQY5w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4JTzUPHgWIdd; Fri,  9 Jun 2023 21:15:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D94C60B74;
	Fri,  9 Jun 2023 21:15:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D94C60B74
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 173F41BF420
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 21:14:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E575A42592
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 21:14:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E575A42592
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ns5LnV8J_mp1 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jun 2023 21:14:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A495742594
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A495742594
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 21:14:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="356583187"
X-IronPort-AV: E=Sophos;i="6.00,230,1681196400"; d="scan'208";a="356583187"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 14:14:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="823194636"
X-IronPort-AV: E=Sophos;i="6.00,230,1681196400"; d="scan'208";a="823194636"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 14:14:48 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  9 Jun 2023 14:16:22 -0700
Message-Id: <20230609211626.621968-7-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230609211626.621968-1-david.m.ertman@intel.com>
References: <20230609211626.621968-1-david.m.ertman@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686345289; x=1717881289;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LYEYnkjFRsYnq8DhC1y7+1W9wigpUfQVKrhUhh9dQio=;
 b=FZN0rplGnuU42STCa8Y1Wo5aTyNFB8MlslDSAMVQF3fp5G8zUFBSBd9N
 HT/CFMwMS01v43vvTZCIFr1KvCXs1gZcrEEFx+c/ESErmVLKAy30fAHCF
 Fz4pqpXH+KAecx8ZJGomwy8vQnfrz8YRVDcmX9a1uLlgWv4LXq5FP8geK
 kS3UodFYO1XN+ASsaKGR01BchSjK9iFlr6Fqt2IQh6s//4/2C5XhaZILB
 2DvS2DCSs2a6nUJpwjZmFqbo7PBaQjAJPeOQ8YpuxzwQ01U5FsOc8F3I8
 BbmhCHRgVrxTvzzHlhrdM84T7/oBGJ/1wn/Uk/EAkTMfDlVwkXekYO8Zz
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FZN0rplG
Subject: [Intel-wired-lan] [PATCH iwl-next v4 06/10] ice: Flesh out
 implementation of support for SRIOV on bonded interface
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

Add in the functions that will allow a VF created on the primary interface
of a bond to "fail-over" to another PF interface in the bond and continue
to Tx and Rx.

Add in an ordered take-down path for the bonded interface.

Reviewed-by: Daniel Machon <daniel.machon@microchip.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lag.c | 821 ++++++++++++++++++++++-
 1 file changed, 811 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index e66f1129027a..1faf4343935e 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -10,6 +10,11 @@
 #define ICE_LAG_RES_SHARED	BIT(14)
 #define ICE_LAG_RES_VALID	BIT(15)
 
+#define LACP_TRAIN_PKT_LEN		16
+static const u8 lacp_train_pkt[LACP_TRAIN_PKT_LEN] = { 0, 0, 0, 0, 0, 0,
+						       0, 0, 0, 0, 0, 0,
+						       0x88, 0x09, 0, 0 };
+
 #define ICE_RECIPE_LEN			64
 static const u8 ice_dflt_vsi_rcp[ICE_RECIPE_LEN] = {
 	0x05, 0, 0, 0, 0x20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
@@ -57,6 +62,39 @@ static void ice_lag_set_backup(struct ice_lag *lag)
 	lag->role = ICE_LAG_BACKUP;
 }
 
+/**
+ * netif_is_same_ice - determine if netdev is on the same ice NIC as local PF
+ * @pf: local PF struct
+ * @netdev: netdev we are evaluating
+ */
+static bool netif_is_same_ice(struct ice_pf *pf, struct net_device *netdev)
+{
+	struct ice_netdev_priv *np;
+	struct ice_pf *test_pf;
+	struct ice_vsi *vsi;
+
+	if (!netif_is_ice(netdev))
+		return false;
+
+	np = netdev_priv(netdev);
+	if (!np)
+		return false;
+
+	vsi = np->vsi;
+	if (!vsi)
+		return false;
+
+	test_pf = vsi->back;
+	if (!test_pf)
+		return false;
+
+	if (pf->pdev->bus != test_pf->pdev->bus ||
+	    pf->pdev->slot != test_pf->pdev->slot)
+		return false;
+
+	return true;
+}
+
 /**
  * ice_netdev_to_lag - return pointer to associated lag struct from netdev
  * @netdev: pointer to net_device struct to query
@@ -80,6 +118,38 @@ static struct ice_lag *ice_netdev_to_lag(struct net_device *netdev)
 	return vsi->back->lag;
 }
 
+/**
+ * ice_lag_find_hw_by_lport - return an hw struct from bond members lport
+ * @lag: lag struct
+ * @lport: lport value to search for
+ */
+static struct ice_hw *
+ice_lag_find_hw_by_lport(struct ice_lag *lag, u8 lport)
+{
+	struct ice_lag_netdev_list *entry;
+	struct net_device *tmp_netdev;
+	struct ice_netdev_priv *np;
+	struct list_head *tmp;
+	struct ice_hw *hw;
+
+	list_for_each(tmp, lag->netdev_head) {
+		entry = list_entry(tmp, struct ice_lag_netdev_list, node);
+		tmp_netdev = entry->netdev;
+		if (!tmp_netdev || !netif_is_ice(tmp_netdev))
+			continue;
+
+		np = netdev_priv(tmp_netdev);
+		if (!np || !np->vsi)
+			continue;
+
+		hw = &np->vsi->back->hw;
+		if (hw->port_info->lport == lport)
+			return hw;
+	}
+
+	return NULL;
+}
+
 /**
  * ice_lag_find_primary - returns pointer to primary interfaces lag struct
  * @lag: local interfaces lag struct
@@ -233,6 +303,113 @@ static void ice_display_lag_info(struct ice_lag *lag)
 		upper, role, primary);
 }
 
+/**
+ * ice_lag_qbuf_recfg - generate a buffer of queues for a reconfigure command
+ * @hw: HW struct that contains the queue contexts
+ * @qbuf: pointer to buffer to populate
+ * @vsi_num: index of the VSI in PF space
+ * @numq: number of queues to search for
+ * @tc: traffic class that contains the queues
+ *
+ * function returns the number of valid queues in buffer
+ */
+static u16
+ice_lag_qbuf_recfg(struct ice_hw *hw, struct ice_aqc_cfg_txqs_buf *qbuf,
+		   u16 vsi_num, u16 numq, u8 tc)
+{
+	struct ice_q_ctx *q_ctx;
+	u16 qid, count = 0;
+	struct ice_pf *pf;
+	int i;
+
+	pf = hw->back;
+	for (i = 0; i < numq; i++) {
+		q_ctx = ice_get_lan_q_ctx(hw, vsi_num, tc, i);
+		if (!q_ctx || q_ctx->q_handle == ICE_INVAL_Q_HANDLE) {
+			dev_dbg(ice_hw_to_dev(hw), "%s queue %d %s\n", __func__,
+				i, q_ctx ? "INVAL Q HANDLE" : "NO Q CONTEXT");
+			continue;
+		}
+
+		qid = pf->vsi[vsi_num]->txq_map[q_ctx->q_handle];
+		qbuf->queue_info[count].q_handle = cpu_to_le16(qid);
+		qbuf->queue_info[count].tc = tc;
+		qbuf->queue_info[count].q_teid = cpu_to_le32(q_ctx->q_teid);
+		count++;
+	}
+
+	return count;
+}
+
+/**
+ * ice_lag_get_sched_parent - locate or create a sched node parent
+ * @hw: HW struct for getting parent in
+ * @tc: traffic class on parent/node
+ */
+static struct ice_sched_node *
+ice_lag_get_sched_parent(struct ice_hw *hw, u8 tc)
+{
+	struct ice_sched_node *tc_node, *aggnode, *parent = NULL;
+	u16 num_nodes[ICE_AQC_TOPO_MAX_LEVEL_NUM] = { 0 };
+	struct ice_port_info *pi = hw->port_info;
+	struct device *dev;
+	u8 aggl, vsil;
+	int n;
+
+	dev = ice_hw_to_dev(hw);
+
+	tc_node = ice_sched_get_tc_node(pi, tc);
+	if (!tc_node) {
+		dev_warn(dev, "Failure to find TC node in for LAG move\n");
+		return parent;
+	}
+
+	aggnode = ice_sched_get_agg_node(pi, tc_node, ICE_DFLT_AGG_ID);
+	if (!aggnode) {
+		dev_warn(dev, "Failure to find aggregate node for LAG move\n");
+		return parent;
+	}
+
+	aggl = ice_sched_get_agg_layer(hw);
+	vsil = ice_sched_get_vsi_layer(hw);
+
+	for (n = aggl + 1; n < vsil; n++)
+		num_nodes[n] = 1;
+
+	for (n = 0; n < aggnode->num_children; n++) {
+		parent = ice_sched_get_free_vsi_parent(hw, aggnode->children[n],
+						       num_nodes);
+		if (parent)
+			return parent;
+	}
+
+	/* if free parent not found - add one */
+	parent = aggnode;
+	for (n = aggl + 1; n < vsil; n++) {
+		u16 num_nodes_added;
+		u32 first_teid;
+		int err;
+
+		err = ice_sched_add_nodes_to_layer(pi, tc_node, parent, n,
+						   num_nodes[n], &first_teid,
+						   &num_nodes_added);
+		if (err || num_nodes[n] != num_nodes_added)
+			return NULL;
+
+		if (num_nodes_added)
+			parent = ice_sched_find_node_by_teid(tc_node,
+							     first_teid);
+		else
+			parent = parent->children[0];
+		if (!parent) {
+			dev_warn(dev, "Failure to add new parent for LAG move\n");
+			return parent;
+		}
+	}
+
+	return parent;
+}
+
 /**
  * ice_lag_move_vf_node_tc - move scheduling nodes for one VF on one TC
  * @lag: lag info struct
@@ -245,6 +422,110 @@ static void
 ice_lag_move_vf_node_tc(struct ice_lag *lag, u8 oldport, u8 newport,
 			u16 vsi_num, u8 tc)
 {
+	u16 numq, valq, buf_size, num_moved, qbuf_size;
+	struct device *dev = ice_pf_to_dev(lag->pf);
+	struct ice_aqc_cfg_txqs_buf *qbuf;
+	struct ice_aqc_move_elem *buf;
+	struct ice_sched_node *n_prt;
+	struct ice_hw *new_hw = NULL;
+	__le32 teid, parent_teid;
+	struct ice_vsi_ctx *ctx;
+	u32 tmp_teid;
+
+	ctx = ice_get_vsi_ctx(&lag->pf->hw, vsi_num);
+	if (!ctx) {
+		dev_warn(dev, "Unable to locate VSI context for LAG failover\n");
+		return;
+	}
+
+	/* check to see if this VF is enabled on this TC */
+	if (!ctx->sched.vsi_node[tc])
+		return;
+
+	/* locate HW struct for destination port */
+	new_hw = ice_lag_find_hw_by_lport(lag, newport);
+	if (!new_hw) {
+		dev_warn(dev, "Unable to locate HW struct for LAG node destination\n");
+		return;
+	}
+
+	numq = ctx->num_lan_q_entries[tc];
+	teid = ctx->sched.vsi_node[tc]->info.node_teid;
+	tmp_teid = le32_to_cpu(teid);
+	parent_teid = ctx->sched.vsi_node[tc]->info.parent_teid;
+	/* if no teid assigned or numq == 0, then this TC is not active */
+	if (!tmp_teid || !numq)
+		return;
+
+	/* suspend VSI subtree for Traffic Class "tc" on
+	 * this VF's VSI
+	 */
+	if (ice_sched_suspend_resume_elems(&lag->pf->hw, 1, &tmp_teid, true))
+		dev_dbg(dev, "Problem suspending traffic for LAG node move\n");
+
+	/* reconfigure all VF's queues on this Traffic Class
+	 * to new port
+	 */
+	qbuf_size = struct_size(qbuf, queue_info, numq);
+	qbuf = kzalloc(qbuf_size, GFP_KERNEL);
+	if (!qbuf) {
+		dev_warn(dev, "Failure allocating memory for VF queue recfg buffer\n");
+		goto resume_traffic;
+	}
+
+	/* add the per queue info for the reconfigure command buffer */
+	valq = ice_lag_qbuf_recfg(&lag->pf->hw, qbuf, vsi_num, numq, tc);
+	if (!valq) {
+		dev_dbg(dev, "No valid queues found for LAG failover\n");
+		goto qbuf_none;
+	}
+
+	if (ice_aq_cfg_lan_txq(&lag->pf->hw, qbuf, qbuf_size, valq, oldport,
+			       newport, NULL)) {
+		dev_warn(dev, "Failure to configure queues for LAG failover\n");
+		goto qbuf_err;
+	}
+
+qbuf_none:
+	kfree(qbuf);
+
+	/* find new parent in destination port's tree for VF VSI node on this
+	 * Traffic Class
+	 */
+	n_prt = ice_lag_get_sched_parent(new_hw, tc);
+	if (!n_prt)
+		goto resume_traffic;
+
+	/* Move Vf's VSI node for this TC to newport's scheduler tree */
+	buf_size = struct_size(buf, teid, 1);
+	buf = kzalloc(buf_size, GFP_KERNEL);
+	if (!buf) {
+		dev_warn(dev, "Failure to alloc memory for VF node failover\n");
+		goto resume_traffic;
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
+		dev_warn(dev, "Failure to move VF nodes for failover\n");
+	else
+		ice_sched_update_parent(n_prt, ctx->sched.vsi_node[tc]);
+
+	kfree(buf);
+	goto resume_traffic;
+
+qbuf_err:
+	kfree(qbuf);
+
+resume_traffic:
+	/* restart traffic for VSI node */
+	if (ice_sched_suspend_resume_elems(&lag->pf->hw, 1, &tmp_teid, false))
+		dev_dbg(dev, "Problem restarting traffic for LAG node move\n");
 }
 
 /**
@@ -274,6 +555,66 @@ ice_lag_move_single_vf_nodes(struct ice_lag *lag, u8 oldport, u8 newport,
  */
 void ice_lag_move_new_vf_nodes(struct ice_vf *vf)
 {
+	struct ice_lag_netdev_list ndlist;
+	struct list_head *tmp, *n;
+	u8 pri_port, act_port;
+	struct ice_lag *lag;
+	struct ice_vsi *vsi;
+	struct ice_pf *pf;
+
+	vsi = ice_get_vf_vsi(vf);
+
+	if (WARN_ON(!vsi))
+		return;
+
+	if (WARN_ON(vsi->type != ICE_VSI_VF))
+		return;
+
+	pf = vf->pf;
+	lag = pf->lag;
+
+	mutex_lock(&pf->lag_mutex);
+	if (!lag->bonded)
+		goto new_vf_unlock;
+
+	pri_port = pf->hw.port_info->lport;
+	act_port = lag->active_port;
+
+	if (lag->upper_netdev) {
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
+	}
+
+	lag->netdev_head = &ndlist.node;
+
+	if (ice_is_feature_supported(pf, ICE_F_SRIOV_LAG) &&
+	    lag->bonded && lag->primary && pri_port != act_port &&
+	    !list_empty(lag->netdev_head))
+		ice_lag_move_single_vf_nodes(lag, pri_port, act_port, vsi->idx);
+
+	list_for_each_safe(tmp, n, &ndlist.node) {
+		struct ice_lag_netdev_list *entry;
+
+		entry = list_entry(tmp, struct ice_lag_netdev_list, node);
+		list_del(&entry->node);
+		kfree(entry);
+	}
+	lag->netdev_head = NULL;
+
+new_vf_unlock:
+	mutex_unlock(&pf->lag_mutex);
 }
 
 /**
@@ -308,6 +649,50 @@ static void ice_lag_move_vf_nodes(struct ice_lag *lag, u8 oldport, u8 newport)
 static void
 ice_lag_cfg_cp_fltr(struct ice_lag *lag, bool add)
 {
+	struct ice_sw_rule_lkup_rx_tx *s_rule = NULL;
+	struct ice_vsi *vsi;
+	u16 buf_len, opc;
+
+	vsi = lag->pf->vsi[0];
+
+	buf_len = ICE_SW_RULE_RX_TX_HDR_SIZE(s_rule,
+					     ICE_LAG_SRIOV_TRAIN_PKT_LEN);
+	s_rule = kzalloc(buf_len, GFP_KERNEL);
+	if (!s_rule) {
+		netdev_warn(lag->netdev, "-ENOMEM error configuring CP filter\n");
+		return;
+	}
+
+	if (add) {
+		s_rule->hdr.type = cpu_to_le16(ICE_AQC_SW_RULES_T_LKUP_RX);
+		s_rule->recipe_id = cpu_to_le16(ICE_LAG_SRIOV_CP_RECIPE);
+		s_rule->src = cpu_to_le16(vsi->port_info->lport);
+		s_rule->act = cpu_to_le32(ICE_FWD_TO_VSI |
+					  ICE_SINGLE_ACT_LAN_ENABLE |
+					  ICE_SINGLE_ACT_VALID_BIT |
+					  ((vsi->vsi_num <<
+					    ICE_SINGLE_ACT_VSI_ID_S) &
+					   ICE_SINGLE_ACT_VSI_ID_M));
+		s_rule->hdr_len = cpu_to_le16(ICE_LAG_SRIOV_TRAIN_PKT_LEN);
+		memcpy(s_rule->hdr_data, lacp_train_pkt, LACP_TRAIN_PKT_LEN);
+		opc = ice_aqc_opc_add_sw_rules;
+	} else {
+		opc = ice_aqc_opc_remove_sw_rules;
+		s_rule->index = cpu_to_le16(lag->cp_rule_idx);
+	}
+	if (ice_aq_sw_rules(&lag->pf->hw, s_rule, buf_len, 1, opc, NULL)) {
+		netdev_warn(lag->netdev, "Error %s CP rule for fail-over\n",
+			    add ? "ADDING" : "REMOVING");
+		goto cp_free;
+	}
+
+	if (add)
+		lag->cp_rule_idx = le16_to_cpu(s_rule->index);
+	else
+		lag->cp_rule_idx = 0;
+
+cp_free:
+	kfree(s_rule);
 }
 
 /**
@@ -362,6 +747,100 @@ static void
 ice_lag_reclaim_vf_tc(struct ice_lag *lag, struct ice_hw *src_hw, u16 vsi_num,
 		      u8 tc)
 {
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
+		dev_warn(dev, "Unable to locate VSI context for LAG reclaim\n");
+		return;
+	}
+
+	/* check to see if this VF is enabled on this TC */
+	if (!ctx->sched.vsi_node[tc])
+		return;
+
+	numq = ctx->num_lan_q_entries[tc];
+	teid = ctx->sched.vsi_node[tc]->info.node_teid;
+	tmp_teid = le32_to_cpu(teid);
+	parent_teid = ctx->sched.vsi_node[tc]->info.parent_teid;
+
+	/* if !teid or !numq, then this TC is not active */
+	if (!tmp_teid || !numq)
+		return;
+
+	/* suspend traffic */
+	if (ice_sched_suspend_resume_elems(hw, 1, &tmp_teid, true))
+		dev_dbg(dev, "Problem suspending traffic for LAG node move\n");
+
+	/* reconfig queues for new port */
+	qbuf_size = struct_size(qbuf, queue_info, numq);
+	qbuf = kzalloc(qbuf_size, GFP_KERNEL);
+	if (!qbuf) {
+		dev_warn(dev, "Failure allocating memory for VF queue recfg buffer\n");
+		goto resume_reclaim;
+	}
+
+	/* add the per queue info for the reconfigure command buffer */
+	valq = ice_lag_qbuf_recfg(hw, qbuf, vsi_num, numq, tc);
+	if (!valq) {
+		dev_dbg(dev, "No valid queues found for LAG reclaim\n");
+		goto reclaim_none;
+	}
+
+	if (ice_aq_cfg_lan_txq(hw, qbuf, qbuf_size, numq,
+			       src_hw->port_info->lport, hw->port_info->lport,
+			       NULL)) {
+		dev_warn(dev, "Failure to configure queues for LAG failover\n");
+		goto reclaim_qerr;
+	}
+
+reclaim_none:
+	kfree(qbuf);
+
+	/* find parent in primary tree */
+	n_prt = ice_lag_get_sched_parent(hw, tc);
+	if (!n_prt)
+		goto resume_reclaim;
+
+	/* Move node to new parent */
+	buf_size = struct_size(buf, teid, 1);
+	buf = kzalloc(buf_size, GFP_KERNEL);
+	if (!buf) {
+		dev_warn(dev, "Failure to alloc memory for VF node failover\n");
+		goto resume_reclaim;
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
+		dev_warn(dev, "Failure to move VF nodes for LAG reclaim\n");
+	else
+		ice_sched_update_parent(n_prt, ctx->sched.vsi_node[tc]);
+
+	kfree(buf);
+	goto resume_reclaim;
+
+reclaim_qerr:
+	kfree(qbuf);
+
+resume_reclaim:
+	/* restart traffic */
+	if (ice_sched_suspend_resume_elems(hw, 1, &tmp_teid, false))
+		dev_warn(dev, "Problem restarting traffic for LAG node reclaim\n");
 }
 
 /**
@@ -479,6 +958,65 @@ static void
 ice_lag_set_swid(u16 primary_swid, struct ice_lag *local_lag,
 		 bool link)
 {
+	struct ice_aqc_alloc_free_res_elem *buf;
+	struct ice_aqc_set_port_params *cmd;
+	struct ice_aq_desc desc;
+	u16 buf_len, swid;
+	int status;
+
+	buf_len = struct_size(buf, elem, 1);
+	buf = kzalloc(buf_len, GFP_KERNEL);
+	if (!buf) {
+		dev_err(ice_pf_to_dev(local_lag->pf), "-ENOMEM error setting SWID\n");
+		return;
+	}
+
+	buf->num_elems = cpu_to_le16(1);
+	buf->res_type = cpu_to_le16(ICE_AQC_RES_TYPE_SWID);
+	/* if unlinnking need to free the shared resource */
+	if (!link && local_lag->bond_swid) {
+		buf->elem[0].e.sw_resp = cpu_to_le16(local_lag->bond_swid);
+		status = ice_aq_alloc_free_res(&local_lag->pf->hw, 1, buf,
+					       buf_len, ice_aqc_opc_free_res,
+					       NULL);
+		if (status)
+			dev_err(ice_pf_to_dev(local_lag->pf), "Error freeing SWID during LAG unlink\n");
+		local_lag->bond_swid = 0;
+	}
+
+	if (link) {
+		buf->res_type |=  cpu_to_le16(ICE_LAG_RES_SHARED |
+					      ICE_LAG_RES_VALID);
+		/* store the primary's SWID in case it leaves bond first */
+		local_lag->bond_swid = primary_swid;
+		buf->elem[0].e.sw_resp = cpu_to_le16(local_lag->bond_swid);
+	} else {
+		buf->elem[0].e.sw_resp =
+			cpu_to_le16(local_lag->pf->hw.port_info->sw_id);
+	}
+
+	status = ice_aq_alloc_free_res(&local_lag->pf->hw, 1, buf, buf_len,
+				       ice_aqc_opc_alloc_res, NULL);
+	if (status)
+		dev_err(ice_pf_to_dev(local_lag->pf), "Error subscribing to SWID 0x%04X\n",
+			local_lag->bond_swid);
+
+	kfree(buf);
+
+	/* Configure port param SWID to correct value */
+	if (link)
+		swid = primary_swid;
+	else
+		swid = local_lag->pf->hw.port_info->sw_id;
+
+	cmd = &desc.params.set_port_params;
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_port_params);
+
+	cmd->swid = cpu_to_le16(ICE_AQC_PORT_SWID_VALID | swid);
+	status = ice_aq_send_cmd(&local_lag->pf->hw, &desc, NULL, 0, NULL);
+	if (status)
+		dev_err(ice_pf_to_dev(local_lag->pf), "Error setting SWID in port params %d\n",
+			status);
 }
 
 /**
@@ -507,6 +1045,38 @@ static void ice_lag_primary_swid(struct ice_lag *lag, bool link)
  */
 static void ice_lag_add_prune_list(struct ice_lag *lag, struct ice_pf *event_pf)
 {
+	u16 num_vsi, rule_buf_sz, vsi_list_id, event_vsi_num, prim_vsi_idx;
+	struct ice_sw_rule_vsi_list *s_rule = NULL;
+	struct device *dev;
+
+	num_vsi = 1;
+
+	dev = ice_pf_to_dev(lag->pf);
+	event_vsi_num = event_pf->vsi[0]->vsi_num;
+	prim_vsi_idx = lag->pf->vsi[0]->idx;
+
+	if (!ice_find_vsi_list_entry(&lag->pf->hw, ICE_SW_LKUP_VLAN,
+				     prim_vsi_idx, &vsi_list_id)) {
+		dev_warn(dev, "Could not locate prune list when setting up SRIOV LAG\n");
+		return;
+	}
+
+	rule_buf_sz = (u16)ICE_SW_RULE_VSI_LIST_SIZE(s_rule, num_vsi);
+	s_rule = kzalloc(rule_buf_sz, GFP_KERNEL);
+	if (!s_rule) {
+		dev_warn(dev, "Error allocating space for prune list when configuring SRIOV LAG\n");
+		return;
+	}
+
+	s_rule->hdr.type = cpu_to_le16(ICE_AQC_SW_RULES_T_PRUNE_LIST_SET);
+	s_rule->index = cpu_to_le16(vsi_list_id);
+	s_rule->number_vsi = cpu_to_le16(num_vsi);
+	s_rule->vsi[0] = cpu_to_le16(event_vsi_num);
+
+	if (ice_aq_sw_rules(&event_pf->hw, s_rule, rule_buf_sz, 1,
+			    ice_aqc_opc_update_sw_rules, NULL))
+		dev_warn(dev, "Error adding VSI prune list\n");
+	kfree(s_rule);
 }
 
 /**
@@ -516,6 +1086,39 @@ static void ice_lag_add_prune_list(struct ice_lag *lag, struct ice_pf *event_pf)
  */
 static void ice_lag_del_prune_list(struct ice_lag *lag, struct ice_pf *event_pf)
 {
+	u16 num_vsi, vsi_num, vsi_idx, rule_buf_sz, vsi_list_id;
+	struct ice_sw_rule_vsi_list *s_rule = NULL;
+	struct device *dev;
+
+	num_vsi = 1;
+
+	dev = ice_pf_to_dev(lag->pf);
+	vsi_num = event_pf->vsi[0]->vsi_num;
+	vsi_idx = lag->pf->vsi[0]->idx;
+
+	if (!ice_find_vsi_list_entry(&lag->pf->hw, ICE_SW_LKUP_VLAN,
+				     vsi_idx, &vsi_list_id)) {
+		dev_warn(dev, "Could not locate prune list when unwinding SRIOV LAG\n");
+		return;
+	}
+
+	rule_buf_sz = (u16)ICE_SW_RULE_VSI_LIST_SIZE(s_rule, num_vsi);
+	s_rule = kzalloc(rule_buf_sz, GFP_KERNEL);
+	if (!s_rule) {
+		dev_warn(dev, "Error allocating prune list when unwinding SRIOV LAG\n");
+		return;
+	}
+
+	s_rule->hdr.type = cpu_to_le16(ICE_AQC_SW_RULES_T_PRUNE_LIST_CLEAR);
+	s_rule->index = cpu_to_le16(vsi_list_id);
+	s_rule->number_vsi = cpu_to_le16(num_vsi);
+	s_rule->vsi[0] = cpu_to_le16(vsi_num);
+
+	if (ice_aq_sw_rules(&event_pf->hw, (struct ice_aqc_sw_rules *)s_rule,
+			    rule_buf_sz, 1, ice_aqc_opc_update_sw_rules, NULL))
+		dev_warn(dev, "Error clearing VSI prune list\n");
+
+	kfree(s_rule);
 }
 
 /**
@@ -542,8 +1145,6 @@ static void ice_lag_check_nvm_support(struct ice_pf *pf)
  * ice_lag_changeupper_event - handle LAG changeupper event
  * @lag: LAG info struct
  * @ptr: opaque pointer data
- *
- * ptr is to be cast into netdev_notifier_changeupper_info
  */
 static void ice_lag_changeupper_event(struct ice_lag *lag, void *ptr)
 {
@@ -603,6 +1204,40 @@ static void ice_lag_changeupper_event(struct ice_lag *lag, void *ptr)
  */
 static void ice_lag_monitor_link(struct ice_lag *lag, void *ptr)
 {
+	struct netdev_notifier_changeupper_info *info;
+	struct ice_hw *prim_hw, *active_hw;
+	struct net_device *event_netdev;
+	struct ice_pf *pf;
+	u8 prim_port;
+
+	if (!lag->primary)
+		return;
+
+	event_netdev = netdev_notifier_info_to_dev(ptr);
+	if (!netif_is_same_ice(lag->pf, event_netdev))
+		return;
+
+	pf = lag->pf;
+	prim_hw = &pf->hw;
+	prim_port = prim_hw->port_info->lport;
+
+	info = (struct netdev_notifier_changeupper_info *)ptr;
+	if (info->upper_dev != lag->upper_netdev)
+		return;
+
+	if (!info->linking) {
+		/* Since there are only two interfaces allowed in SRIOV+LAG, if
+		 * one port is leaving, then nodes need to be on primary
+		 * interface.
+		 */
+		if (prim_port != lag->active_port &&
+		    lag->active_port != ICE_LAG_INVALID_PORT) {
+			active_hw = ice_lag_find_hw_by_lport(lag,
+							     lag->active_port);
+			ice_lag_reclaim_vf_nodes(lag, active_hw);
+			lag->active_port = ICE_LAG_INVALID_PORT;
+		}
+	}
 }
 
 /**
@@ -615,6 +1250,67 @@ static void ice_lag_monitor_link(struct ice_lag *lag, void *ptr)
  */
 static void ice_lag_monitor_active(struct ice_lag *lag, void *ptr)
 {
+	struct net_device *event_netdev, *event_upper;
+	struct netdev_notifier_bonding_info *info;
+	struct netdev_bonding_info *bonding_info;
+	struct ice_netdev_priv *event_np;
+	struct ice_pf *pf, *event_pf;
+	u8 prim_port, event_port;
+
+	if (!lag->primary)
+		return;
+
+	pf = lag->pf;
+	if (!pf)
+		return;
+
+	event_netdev = netdev_notifier_info_to_dev(ptr);
+	rcu_read_lock();
+	event_upper = netdev_master_upper_dev_get_rcu(event_netdev);
+	rcu_read_unlock();
+	if (!netif_is_ice(event_netdev) || event_upper != lag->upper_netdev)
+		return;
+
+	event_np = netdev_priv(event_netdev);
+	event_pf = event_np->vsi->back;
+	event_port = event_pf->hw.port_info->lport;
+	prim_port = pf->hw.port_info->lport;
+
+	info = (struct netdev_notifier_bonding_info *)ptr;
+	bonding_info = &info->bonding_info;
+
+	if (!bonding_info->slave.state) {
+		/* if no port is currently active, then nodes and filters exist
+		 * on primary port, check if we need to move them
+		 */
+		if (lag->active_port == ICE_LAG_INVALID_PORT) {
+			if (event_port != prim_port)
+				ice_lag_move_vf_nodes(lag, prim_port,
+						      event_port);
+			lag->active_port = event_port;
+			return;
+		}
+
+		/* active port is already set and is current event port */
+		if (lag->active_port == event_port)
+			return;
+		/* new active port */
+		ice_lag_move_vf_nodes(lag, lag->active_port, event_port);
+		lag->active_port = event_port;
+	} else {
+		/* port not set as currently active (e.g. new active port
+		 * has already claimed the nodes and filters
+		 */
+		if (lag->active_port != event_port)
+			return;
+		/* This is the case when neither port is active (both link down)
+		 * Link down on the bond - set active port to invalid and move
+		 * nodes and filters back to primary if not already there
+		 */
+		if (event_port != prim_port)
+			ice_lag_move_vf_nodes(lag, event_port, prim_port);
+		lag->active_port = ICE_LAG_INVALID_PORT;
+	}
 }
 
 /**
@@ -625,6 +1321,73 @@ static void ice_lag_monitor_active(struct ice_lag *lag, void *ptr)
 static bool
 ice_lag_chk_comp(struct ice_lag *lag, void *ptr)
 {
+	struct net_device *event_netdev, *event_upper;
+	struct netdev_notifier_bonding_info *info;
+	struct netdev_bonding_info *bonding_info;
+	struct list_head *tmp;
+	int count = 0;
+
+	if (!lag->primary)
+		return true;
+
+	event_netdev = netdev_notifier_info_to_dev(ptr);
+	rcu_read_lock();
+	event_upper = netdev_master_upper_dev_get_rcu(event_netdev);
+	rcu_read_unlock();
+	if (event_upper != lag->upper_netdev)
+		return true;
+
+	info = (struct netdev_notifier_bonding_info *)ptr;
+	bonding_info = &info->bonding_info;
+	lag->bond_mode = bonding_info->master.bond_mode;
+	if (lag->bond_mode != BOND_MODE_ACTIVEBACKUP) {
+		netdev_info(lag->netdev, "Bond Mode not ACTIVE-BACKUP\n");
+		return false;
+	}
+
+	list_for_each(tmp, lag->netdev_head) {
+#if !defined(NO_DCB_SUPPORT) || defined(ADQ_SUPPORT)
+		struct ice_dcbx_cfg *dcb_cfg, *peer_dcb_cfg;
+#endif /* !NO_DCB_SUPPORT || ADQ_SUPPORT */
+		struct ice_lag_netdev_list *entry;
+		struct ice_netdev_priv *peer_np;
+		struct net_device *peer_netdev;
+		struct ice_vsi *vsi, *peer_vsi;
+
+		entry = list_entry(tmp, struct ice_lag_netdev_list, node);
+		peer_netdev = entry->netdev;
+		if (!netif_is_ice(peer_netdev)) {
+			netdev_info(lag->netdev, "Found non-ice netdev in LAG\n");
+			return false;
+		}
+
+		count++;
+		if (count > 2) {
+			netdev_info(lag->netdev, "Found more than two netdevs in LAG\n");
+			return false;
+		}
+
+		peer_np = netdev_priv(peer_netdev);
+		vsi = ice_get_main_vsi(lag->pf);
+		peer_vsi = peer_np->vsi;
+		if (lag->pf->pdev->bus != peer_vsi->back->pdev->bus ||
+		    lag->pf->pdev->slot != peer_vsi->back->pdev->slot) {
+			netdev_info(lag->netdev, "Found netdev on different device in LAG\n");
+			return false;
+		}
+
+#if !defined(NO_DCB_SUPPORT) || defined(ADQ_SUPPORT)
+		dcb_cfg = &vsi->port_info->qos_cfg.local_dcbx_cfg;
+		peer_dcb_cfg = &peer_vsi->port_info->qos_cfg.local_dcbx_cfg;
+		if (memcmp(dcb_cfg, peer_dcb_cfg,
+			   sizeof(struct ice_dcbx_cfg))) {
+			netdev_info(lag->netdev, "Found netdev with different DCB config in LAG\n");
+			return false;
+		}
+
+#endif /* !NO_DCB_SUPPORT || ADQ_SUPPORT */
+	}
+
 	return true;
 }
 
@@ -835,17 +1598,40 @@ static void ice_unregister_lag_handler(struct ice_lag *lag)
 /**
  * ice_create_lag_recipe
  * @hw: pointer to HW struct
+ * @rid: pointer to u16 to pass back recipe index
  * @base_recipe: recipe to base the new recipe on
  * @prio: priority for new recipe
  *
  * function returns 0 on error
  */
-static u16 ice_create_lag_recipe(struct ice_hw *hw, const u8 *base_recipe,
-				 u8 prio)
+static int ice_create_lag_recipe(struct ice_hw *hw, u16 *rid,
+				 const u8 *base_recipe, u8 prio)
 {
-	u16 rid = 0;
+	struct ice_aqc_recipe_data_elem *new_rcp;
+	int err;
+
+	err = ice_alloc_recipe(hw, rid);
+	if (err)
+		return err;
+
+	new_rcp = kzalloc(ICE_RECIPE_LEN * ICE_MAX_NUM_RECIPES, GFP_KERNEL);
+	if (!new_rcp)
+		return -ENOMEM;
+
+	memcpy(new_rcp, base_recipe, ICE_RECIPE_LEN);
+	new_rcp->content.act_ctrl_fwd_priority = prio;
+	new_rcp->content.rid = *rid | ICE_AQ_RECIPE_ID_IS_ROOT;
+	new_rcp->recipe_indx = *rid;
+	bitmap_zero((unsigned long *)new_rcp->recipe_bitmap,
+		    ICE_MAX_NUM_RECIPES);
+	set_bit(*rid, (unsigned long *)new_rcp->recipe_bitmap);
 
-	return rid;
+	err = ice_aq_add_recipe(hw, new_rcp, 1, NULL);
+	if (err)
+		*rid = 0;
+
+	kfree(new_rcp);
+	return err;
 }
 
 /**
@@ -860,7 +1646,8 @@ int ice_init_lag(struct ice_pf *pf)
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_lag *lag;
 	struct ice_vsi *vsi;
-	int err;
+	u64 recipe_bits = 0;
+	int n, err;
 
 	ice_lag_check_nvm_support(pf);
 
@@ -879,6 +1666,7 @@ int ice_init_lag(struct ice_pf *pf)
 	lag->pf = pf;
 	lag->netdev = vsi->netdev;
 	lag->role = ICE_LAG_NONE;
+	lag->active_port = ICE_LAG_INVALID_PORT;
 	lag->bonded = false;
 	lag->upper_netdev = NULL;
 	lag->notif_block.notifier_call = NULL;
@@ -889,10 +1677,23 @@ int ice_init_lag(struct ice_pf *pf)
 		goto lag_error;
 	}
 
-	lag->pf_recipe = ice_create_lag_recipe(&pf->hw, ice_dflt_vsi_rcp, 1);
-	if (!lag->pf_recipe) {
-		err = -EINVAL;
+	err = ice_create_lag_recipe(&pf->hw, &lag->pf_recipe, ice_dflt_vsi_rcp,
+				    1);
+	if (err)
 		goto lag_error;
+
+	/* associate recipes to profiles */
+	for (n = 0; n < ICE_PROFID_IPV6_GTPU_IPV6_TCP_INNER; n++) {
+		err = ice_aq_get_recipe_to_profile(&pf->hw, n,
+						   (u8 *)&recipe_bits, NULL);
+		if (err)
+			continue;
+
+		if (recipe_bits & BIT(ICE_SW_LKUP_DFLT)) {
+			recipe_bits |= BIT(lag->pf_recipe);
+			ice_aq_map_recipe_to_profile(&pf->hw, n,
+						     (u8 *)&recipe_bits, NULL);
+		}
 	}
 
 	ice_display_lag_info(lag);
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
