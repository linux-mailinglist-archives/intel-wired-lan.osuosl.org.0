Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08906349C7D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Mar 2021 23:45:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AD43140002;
	Thu, 25 Mar 2021 22:45:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aZf1h6AwNTKU; Thu, 25 Mar 2021 22:45:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A1EDF401F4;
	Thu, 25 Mar 2021 22:45:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C2D171C1173
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3FBCE40003
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IxzlCWTdwzmP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Mar 2021 22:45:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7949540213
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:04 +0000 (UTC)
IronPort-SDR: T3jRUv2MRxS11YbfrJC3d8GeFizww+ViRR4eqSVK5O1VX+mBYzqkDHm5qBAITj5bl8yxInRou1
 hBlbFdxTD2ew==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="255031236"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="255031236"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 15:45:01 -0700
IronPort-SDR: jxcQ2qcgaUWmrh/Mu5MfhQcFP/2eIocOb3HBeDMZ5duMUs/UXEUGqZn76KUW3jfT7vnJ2MYSRf
 fvMWWEBcU+EA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="375251363"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga003.jf.intel.com with ESMTP; 25 Mar 2021 15:45:01 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Mar 2021 15:35:05 -0700
Message-Id: <20210325223517.17722-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
References: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S57 02/14] ice: Modify recursive way of
 adding nodes
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

Remove the recursive way of adding the nodes to the layer in order
to reduce the stack usage. Instead the algorithm is modified to use
a while loop.

The previous code was scanning recursively the nodes horizontally.
The total stack consumption will be based on number of nodes present
on that layer. In some cases it can consume more stack.

Signed-off-by: Victor Raj <victor.raj@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sched.c | 130 ++++++++++++---------
 1 file changed, 77 insertions(+), 53 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index f890337cc24a..97562051fe14 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -919,7 +919,7 @@ ice_sched_add_elems(struct ice_port_info *pi, struct ice_sched_node *tc_node,
 }
 
 /**
- * ice_sched_add_nodes_to_layer - Add nodes to a given layer
+ * ice_sched_add_nodes_to_hw_layer - Add nodes to HW layer
  * @pi: port information structure
  * @tc_node: pointer to TC node
  * @parent: pointer to parent node
@@ -928,82 +928,106 @@ ice_sched_add_elems(struct ice_port_info *pi, struct ice_sched_node *tc_node,
  * @first_node_teid: pointer to the first node TEID
  * @num_nodes_added: pointer to number of nodes added
  *
- * This function add nodes to a given layer.
+ * Add nodes into specific HW layer.
  */
 static enum ice_status
-ice_sched_add_nodes_to_layer(struct ice_port_info *pi,
-			     struct ice_sched_node *tc_node,
-			     struct ice_sched_node *parent, u8 layer,
-			     u16 num_nodes, u32 *first_node_teid,
-			     u16 *num_nodes_added)
+ice_sched_add_nodes_to_hw_layer(struct ice_port_info *pi,
+				struct ice_sched_node *tc_node,
+				struct ice_sched_node *parent, u8 layer,
+				u16 num_nodes, u32 *first_node_teid,
+				u16 *num_nodes_added)
 {
-	u32 *first_teid_ptr = first_node_teid;
-	u16 new_num_nodes, max_child_nodes;
-	enum ice_status status = 0;
-	struct ice_hw *hw = pi->hw;
-	u16 num_added = 0;
-	u32 temp;
+	u16 max_child_nodes;
 
 	*num_nodes_added = 0;
 
 	if (!num_nodes)
-		return status;
+		return 0;
 
-	if (!parent || layer < hw->sw_entry_point_layer)
+	if (!parent || layer < pi->hw->sw_entry_point_layer)
 		return ICE_ERR_PARAM;
 
 	/* max children per node per layer */
-	max_child_nodes = hw->max_children[parent->tx_sched_layer];
+	max_child_nodes = pi->hw->max_children[parent->tx_sched_layer];
 
-	/* current number of children + required nodes exceed max children ? */
+	/* current number of children + required nodes exceed max children */
 	if ((parent->num_children + num_nodes) > max_child_nodes) {
 		/* Fail if the parent is a TC node */
 		if (parent == tc_node)
 			return ICE_ERR_CFG;
+		return ICE_ERR_MAX_LIMIT;
+	}
+
+	return ice_sched_add_elems(pi, tc_node, parent, layer, num_nodes,
+				   num_nodes_added, first_node_teid);
+}
+
+/**
+ * ice_sched_add_nodes_to_layer - Add nodes to a given layer
+ * @pi: port information structure
+ * @tc_node: pointer to TC node
+ * @parent: pointer to parent node
+ * @layer: layer number to add nodes
+ * @num_nodes: number of nodes to be added
+ * @first_node_teid: pointer to the first node TEID
+ * @num_nodes_added: pointer to number of nodes added
+ *
+ * This function add nodes to a given layer.
+ */
+static enum ice_status
+ice_sched_add_nodes_to_layer(struct ice_port_info *pi,
+			     struct ice_sched_node *tc_node,
+			     struct ice_sched_node *parent, u8 layer,
+			     u16 num_nodes, u32 *first_node_teid,
+			     u16 *num_nodes_added)
+{
+	u32 *first_teid_ptr = first_node_teid;
+	u16 new_num_nodes = num_nodes;
+	enum ice_status status = 0;
 
+	*num_nodes_added = 0;
+	while (*num_nodes_added < num_nodes) {
+		u16 max_child_nodes, num_added = 0;
+		u32 temp;
+
+		status = ice_sched_add_nodes_to_hw_layer(pi, tc_node, parent,
+							 layer,	new_num_nodes,
+							 first_teid_ptr,
+							 &num_added);
+		if (!status)
+			*num_nodes_added += num_added;
+		/* added more nodes than requested ? */
+		if (*num_nodes_added > num_nodes) {
+			ice_debug(pi->hw, ICE_DBG_SCHED, "added extra nodes %d %d\n", num_nodes,
+				  *num_nodes_added);
+			status = ICE_ERR_CFG;
+			break;
+		}
+		/* break if all the nodes are added successfully */
+		if (!status && (*num_nodes_added == num_nodes))
+			break;
+		/* break if the error is not max limit */
+		if (status && status != ICE_ERR_MAX_LIMIT)
+			break;
+		/* Exceeded the max children */
+		max_child_nodes = pi->hw->max_children[parent->tx_sched_layer];
 		/* utilize all the spaces if the parent is not full */
 		if (parent->num_children < max_child_nodes) {
 			new_num_nodes = max_child_nodes - parent->num_children;
-			/* this recursion is intentional, and wouldn't
-			 * go more than 2 calls
+		} else {
+			/* This parent is full, try the next sibling */
+			parent = parent->sibling;
+			/* Don't modify the first node TEID memory if the
+			 * first node was added already in the above call.
+			 * Instead send some temp memory for all other
+			 * recursive calls.
 			 */
-			status = ice_sched_add_nodes_to_layer(pi, tc_node,
-							      parent, layer,
-							      new_num_nodes,
-							      first_node_teid,
-							      &num_added);
-			if (status)
-				return status;
+			if (num_added)
+				first_teid_ptr = &temp;
 
-			*num_nodes_added += num_added;
+			new_num_nodes = num_nodes - *num_nodes_added;
 		}
-		/* Don't modify the first node TEID memory if the first node was
-		 * added already in the above call. Instead send some temp
-		 * memory for all other recursive calls.
-		 */
-		if (num_added)
-			first_teid_ptr = &temp;
-
-		new_num_nodes = num_nodes - num_added;
-
-		/* This parent is full, try the next sibling */
-		parent = parent->sibling;
-
-		/* this recursion is intentional, for 1024 queues
-		 * per VSI, it goes max of 16 iterations.
-		 * 1024 / 8 = 128 layer 8 nodes
-		 * 128 /8 = 16 (add 8 nodes per iteration)
-		 */
-		status = ice_sched_add_nodes_to_layer(pi, tc_node, parent,
-						      layer, new_num_nodes,
-						      first_teid_ptr,
-						      &num_added);
-		*num_nodes_added += num_added;
-		return status;
 	}
-
-	status = ice_sched_add_elems(pi, tc_node, parent, layer, num_nodes,
-				     num_nodes_added, first_node_teid);
 	return status;
 }
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
