Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6EE756CB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2019 20:22:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 261C58746D;
	Thu, 25 Jul 2019 18:22:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RitVofrJgZI3; Thu, 25 Jul 2019 18:22:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D48E48746B;
	Thu, 25 Jul 2019 18:22:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 60C8A1BF988
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 18:22:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5E93886582
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 18:22:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PXrswkE_PWTB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2019 18:22:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6DE4E86594
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 18:22:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 11:22:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,307,1559545200"; d="scan'208";a="193897604"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga004.fm.intel.com with ESMTP; 25 Jul 2019 11:22:17 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jul 2019 02:53:54 -0700
Message-Id: <20190725095401.24590-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190725095401.24590-1-anthony.l.nguyen@intel.com>
References: <20190725095401.24590-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S25 05/12] ice: added sibling head to
 parse nodes
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

From: Victor Raj <victor.raj@intel.com>

There was a bug in the previous code which never traverses all the
children to get the first node of the requested layer. Add a sibling
head pointer to point the first node of each layer per TC. This helps
traverse easier and quicker and also removes the recursion.

Signed-off-by: Victor Raj <victor.raj@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sched.c | 57 ++++++++--------------
 drivers/net/ethernet/intel/ice/ice_type.h  |  2 +
 2 files changed, 23 insertions(+), 36 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index 2a232504379d..79d64f9ed609 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -260,33 +260,17 @@ ice_sched_remove_elems(struct ice_hw *hw, struct ice_sched_node *parent,
 
 /**
  * ice_sched_get_first_node - get the first node of the given layer
- * @hw: pointer to the HW struct
+ * @pi: port information structure
  * @parent: pointer the base node of the subtree
  * @layer: layer number
  *
  * This function retrieves the first node of the given layer from the subtree
  */
 static struct ice_sched_node *
-ice_sched_get_first_node(struct ice_hw *hw, struct ice_sched_node *parent,
-			 u8 layer)
+ice_sched_get_first_node(struct ice_port_info *pi,
+			 struct ice_sched_node *parent, u8 layer)
 {
-	u8 i;
-
-	if (layer < hw->sw_entry_point_layer)
-		return NULL;
-	for (i = 0; i < parent->num_children; i++) {
-		struct ice_sched_node *node = parent->children[i];
-
-		if (node) {
-			if (node->tx_sched_layer == layer)
-				return node;
-			/* this recursion is intentional, and wouldn't
-			 * go more than 9 calls
-			 */
-			return ice_sched_get_first_node(hw, node, layer);
-		}
-	}
-	return NULL;
+	return pi->sib_head[parent->tc_num][layer];
 }
 
 /**
@@ -342,7 +326,7 @@ void ice_free_sched_node(struct ice_port_info *pi, struct ice_sched_node *node)
 	parent = node->parent;
 	/* root has no parent */
 	if (parent) {
-		struct ice_sched_node *p, *tc_node;
+		struct ice_sched_node *p;
 
 		/* update the parent */
 		for (i = 0; i < parent->num_children; i++)
@@ -354,16 +338,7 @@ void ice_free_sched_node(struct ice_port_info *pi, struct ice_sched_node *node)
 				break;
 			}
 
-		/* search for previous sibling that points to this node and
-		 * remove the reference
-		 */
-		tc_node = ice_sched_get_tc_node(pi, node->tc_num);
-		if (!tc_node) {
-			ice_debug(hw, ICE_DBG_SCHED,
-				  "Invalid TC number %d\n", node->tc_num);
-			goto err_exit;
-		}
-		p = ice_sched_get_first_node(hw, tc_node, node->tx_sched_layer);
+		p = ice_sched_get_first_node(pi, node, node->tx_sched_layer);
 		while (p) {
 			if (p->sibling == node) {
 				p->sibling = node->sibling;
@@ -371,8 +346,13 @@ void ice_free_sched_node(struct ice_port_info *pi, struct ice_sched_node *node)
 			}
 			p = p->sibling;
 		}
+
+		/* update the sibling head if head is getting removed */
+		if (pi->sib_head[node->tc_num][node->tx_sched_layer] == node)
+			pi->sib_head[node->tc_num][node->tx_sched_layer] =
+				node->sibling;
 	}
-err_exit:
+
 	/* leaf nodes have no children */
 	if (node->children)
 		devm_kfree(ice_hw_to_dev(hw), node->children);
@@ -743,13 +723,17 @@ ice_sched_add_elems(struct ice_port_info *pi, struct ice_sched_node *tc_node,
 
 		/* add it to previous node sibling pointer */
 		/* Note: siblings are not linked across branches */
-		prev = ice_sched_get_first_node(hw, tc_node, layer);
+		prev = ice_sched_get_first_node(pi, tc_node, layer);
 		if (prev && prev != new_node) {
 			while (prev->sibling)
 				prev = prev->sibling;
 			prev->sibling = new_node;
 		}
 
+		/* initialize the sibling head */
+		if (!pi->sib_head[tc_node->tc_num][layer])
+			pi->sib_head[tc_node->tc_num][layer] = new_node;
+
 		if (i == 0)
 			*first_node_teid = teid;
 	}
@@ -1160,7 +1144,7 @@ ice_sched_get_free_qparent(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 		goto lan_q_exit;
 
 	/* get the first queue group node from VSI sub-tree */
-	qgrp_node = ice_sched_get_first_node(pi->hw, vsi_node, qgrp_layer);
+	qgrp_node = ice_sched_get_first_node(pi, vsi_node, qgrp_layer);
 	while (qgrp_node) {
 		/* make sure the qgroup node is part of the VSI subtree */
 		if (ice_sched_find_node_in_subtree(pi->hw, vsi_node, qgrp_node))
@@ -1191,7 +1175,7 @@ ice_sched_get_vsi_node(struct ice_hw *hw, struct ice_sched_node *tc_node,
 	u8 vsi_layer;
 
 	vsi_layer = ice_sched_get_vsi_layer(hw);
-	node = ice_sched_get_first_node(hw, tc_node, vsi_layer);
+	node = ice_sched_get_first_node(hw->port_info, tc_node, vsi_layer);
 
 	/* Check whether it already exists */
 	while (node) {
@@ -1316,7 +1300,8 @@ ice_sched_calc_vsi_support_nodes(struct ice_hw *hw,
 			/* If intermediate nodes are reached max children
 			 * then add a new one.
 			 */
-			node = ice_sched_get_first_node(hw, tc_node, (u8)i);
+			node = ice_sched_get_first_node(hw->port_info, tc_node,
+							(u8)i);
 			/* scan all the siblings */
 			while (node) {
 				if (node->num_children < hw->max_children[i])
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 24bbef8bbe69..d76e0cb7ef46 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -347,6 +347,8 @@ struct ice_port_info {
 	struct ice_mac_info mac;
 	struct ice_phy_info phy;
 	struct mutex sched_lock;	/* protect access to TXSched tree */
+	struct ice_sched_node *
+		sib_head[ICE_MAX_TRAFFIC_CLASS][ICE_AQC_TOPO_MAX_LEVEL_NUM];
 	struct ice_dcbx_cfg local_dcbx_cfg;	/* Oper/Local Cfg */
 	/* DCBX info */
 	struct ice_dcbx_cfg remote_dcbx_cfg;	/* Peer Cfg */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
