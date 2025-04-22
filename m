Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A6087A97124
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Apr 2025 17:37:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5470181E4E;
	Tue, 22 Apr 2025 15:37:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lXgiFBQGOAI3; Tue, 22 Apr 2025 15:37:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E92881D70
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745336250;
	bh=Y7b+6Q8Hrr9gSXjWJttX1FwtVKeFn/LSlt6B9dNH8sY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KYHoMQd5/WjWrA7HdTPdtLWLpeJ2QWE53QWzDhrQwfzXhJ6FrlGiK+Z5OEAshMCvi
	 pB3nUTdJ+En363dSwIrDB3hewqqCq+ooYT1stn1lqJyPiVZNYeyPqYM0Lhi7Jyyl0f
	 ifvXw0Fr/hQNcu5WXJjXDmC87pRNxNEgcUShEEewcB70giyCTIGbPz4/BRBciLjIN1
	 7M0WckfabLStPMml1YDVhRP0OIcuyWLv5pEOFEjMNIRIfIC6yzEBySqkOKfRxsARnh
	 CTOT4Bbq8gX4KSAyQVOypoTltExpImAxlaWhj0Hg1bGhaFAcu27vvh9d+tSpofcAP0
	 VxGCJg6cThHtg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E92881D70;
	Tue, 22 Apr 2025 15:37:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 69ADA1BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 15:37:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4FFAB81D16
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 15:37:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XU7nCzUqCL40 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Apr 2025 15:37:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7E26081C58
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E26081C58
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7E26081C58
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 15:37:27 +0000 (UTC)
X-CSE-ConnectionGUID: aHDub52BTKSZ2Xx1Psl3iw==
X-CSE-MsgGUID: zycZyI8eR0WbPJFPmEDXsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="64312357"
X-IronPort-AV: E=Sophos;i="6.15,231,1739865600"; d="scan'208";a="64312357"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 08:37:24 -0700
X-CSE-ConnectionGUID: GjODENvjSxmCX/o41ONp/w==
X-CSE-MsgGUID: 2DV9VM5EQWiXxxv45sTGGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,231,1739865600"; d="scan'208";a="131947833"
Received: from gk3153-pr4-x299-22869.igk.intel.com (HELO
 localhost.igk.intel.com) ([10.102.21.130])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 08:37:21 -0700
From: Michal Kubiak <michal.kubiak@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: maciej.fijalkowski@intel.com, aleksander.lobakin@intel.com,
 przemyslaw.kitszel@intel.com, dawid.osuchowski@linux.intel.com,
 jacob.e.keller@intel.com, netdev@vger.kernel.org,
 Michal Kubiak <michal.kubiak@intel.com>
Date: Tue, 22 Apr 2025 17:36:59 +0200
Message-Id: <20250422153659.284868-4-michal.kubiak@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20250422153659.284868-1-michal.kubiak@intel.com>
References: <20250422153659.284868-1-michal.kubiak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745336248; x=1776872248;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RDucU3H5XAP8b9jMjhhYs8B6oOHkcNRqDggZs5GqKNo=;
 b=DydLGpbVAB4ECUg7exbCVWi+UmaYl6uzpDT+DxIqco/cIg7sju+mnBP7
 Oa3z27yM/5/shHzbLHNf2vRG+UHe0S+FDbR49fXPOxYNw+8gIeSQOa2xp
 2uP45LSFFuFHZUkuSrsNYtFNGeqyeBQ7fH8UHe/+jTC0uqQ/NU1B+/XJT
 1WEtIcNpxmTrhrPbF0d0XbffP+adZXe5z64vOsTW21/wWkHn601uPBNiF
 GtkG24WHf2Pa/9uOKNiE1FSjTETePMu1/C2ub9kCZ5v5RjivsB7LHqBGZ
 1NobQ8LZJlQyp21ZeVQwUHOPX7lKP/8sZKyHOtp4jyWjsQ85qu1wO4+4w
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DydLGpbV
Subject: [Intel-wired-lan] [PATCH iwl-net 3/3] ice: fix rebuilding the Tx
 scheduler tree for large queue counts
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

The current implementation of the Tx scheduler allows the tree to be
rebuilt as the user adds more Tx queues to the VSI. In such a case,
additional child nodes are added to the tree to support the new number
of queues.
Unfortunately, this algorithm does not take into account that the limit
of the VSI support node may be exceeded, so an additional node in the
VSI layer may be required to handle all the requested queues.

Such a scenario occurs when adding XDP Tx queues on machines with many
CPUs. Although the driver still respects the queue limit returned by
the FW, the Tx scheduler was unable to add those queues to its tree
and returned one of the errors below.

Such a scenario occurs when adding XDP Tx queues on machines with many
CPUs (e.g. at least 321 CPUs, if there is already 128 Tx/Rx queue pairs).
Although the driver still respects the queue limit returned by the FW,
the Tx scheduler was unable to add those queues to its tree and returned
the following errors:

     Failed VSI LAN queue config for XDP, error: -5
or:
     Failed to set LAN Tx queue context, error: -22

Fix this problem by extending the tree rebuild algorithm to check if the
current VSI node can support the requested number of queues. If it
cannot, create as many additional VSI support nodes as necessary to
handle all the required Tx queues.
Also, make the search for the next free VSI node more restrictive. That is,
add queue group nodes only to the VSI support nodes that have a matching
VSI handle.
Finally, fix the comment describing the tree update algorithm to better
reflect the current scenario.

Fixes: b0153fdd7e8a ("ice: update VSI config dynamically")
Reviewed-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sched.c | 92 ++++++++++++++++++++--
 1 file changed, 87 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index 6524875b34d3..9d1f8db4c503 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -84,6 +84,27 @@ ice_sched_find_node_by_teid(struct ice_sched_node *start_node, u32 teid)
 	return NULL;
 }
 
+/**
+ * ice_sched_find_next_vsi_node - find the next node for a given VSI
+ * @vsi_node: VSI support node to start search with
+ *
+ * Return: Next VSI support node, or NULL.
+ *
+ * The function returns a pointer to the next node from the VSI layer
+ * assigned to the given VSI, or NULL if there is no such a node.
+ */
+static struct ice_sched_node *
+ice_sched_find_next_vsi_node(struct ice_sched_node *vsi_node)
+{
+	unsigned int vsi_handle = vsi_node->vsi_handle;
+
+	while ((vsi_node = vsi_node->sibling) != NULL)
+		if (vsi_node->vsi_handle == vsi_handle)
+			break;
+
+	return vsi_node;
+}
+
 /**
  * ice_aqc_send_sched_elem_cmd - send scheduling elements cmd
  * @hw: pointer to the HW struct
@@ -1084,8 +1105,10 @@ ice_sched_add_nodes_to_layer(struct ice_port_info *pi,
 		if (parent->num_children < max_child_nodes) {
 			new_num_nodes = max_child_nodes - parent->num_children;
 		} else {
-			/* This parent is full, try the next sibling */
-			parent = parent->sibling;
+			/* This parent is full,
+			 * try the next available sibling.
+			 */
+			parent = ice_sched_find_next_vsi_node(parent);
 			/* Don't modify the first node TEID memory if the
 			 * first node was added already in the above call.
 			 * Instead send some temp memory for all other
@@ -1528,12 +1551,23 @@ ice_sched_get_free_qparent(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 	/* get the first queue group node from VSI sub-tree */
 	qgrp_node = ice_sched_get_first_node(pi, vsi_node, qgrp_layer);
 	while (qgrp_node) {
+		struct ice_sched_node *next_vsi_node;
+
 		/* make sure the qgroup node is part of the VSI subtree */
 		if (ice_sched_find_node_in_subtree(pi->hw, vsi_node, qgrp_node))
 			if (qgrp_node->num_children < max_children &&
 			    qgrp_node->owner == owner)
 				break;
 		qgrp_node = qgrp_node->sibling;
+		if (qgrp_node)
+			continue;
+
+		next_vsi_node = ice_sched_find_next_vsi_node(vsi_node);
+		if (!next_vsi_node)
+			break;
+
+		vsi_node = next_vsi_node;
+		qgrp_node = ice_sched_get_first_node(pi, vsi_node, qgrp_layer);
 	}
 
 	/* Select the best queue group */
@@ -1779,7 +1813,11 @@ ice_sched_add_vsi_support_nodes(struct ice_port_info *pi, u16 vsi_handle,
 		if (!parent)
 			return -EIO;
 
-		if (i == vsil)
+		/* Do not modify the VSI handle for already existing VSI nodes,
+		 * (if no new VSI node was added to the tree).
+		 * Assign the VSI handle only to newly added VSI nodes.
+		 */
+		if (i == vsil && num_added)
 			parent->vsi_handle = vsi_handle;
 	}
 
@@ -1812,6 +1850,41 @@ ice_sched_add_vsi_to_topo(struct ice_port_info *pi, u16 vsi_handle, u8 tc)
 					       num_nodes);
 }
 
+/**
+ * ice_sched_recalc_vsi_support_nodes - recalculate VSI support nodes count
+ * @hw: pointer to the HW struct
+ * @vsi_node: pointer to the leftmost VSI node that needs to be extended
+ * @new_numqs: new number of queues that has to be handled by the VSI
+ * @new_num_nodes: pointer to nodes count table to modify the VSI layer entry
+ *
+ * This function recalculates the number of supported nodes that need to
+ * be added after adding more Tx queues for a given VSI.
+ * The number of new VSI support nodes that shall be added will be saved
+ * to the @new_num_nodes table for the VSI layer.
+ */
+static void
+ice_sched_recalc_vsi_support_nodes(struct ice_hw *hw,
+				   struct ice_sched_node *vsi_node,
+				   unsigned int new_numqs, u16 *new_num_nodes)
+{
+	u32 vsi_nodes_cnt = 1;
+	u32 max_queue_cnt = 1;
+	u32 qgl, vsil;
+
+	qgl = ice_sched_get_qgrp_layer(hw);
+	vsil = ice_sched_get_vsi_layer(hw);
+
+	for (u32 i = vsil; i <= qgl; i++)
+		max_queue_cnt *= hw->max_children[i];
+
+	while ((vsi_node = ice_sched_find_next_vsi_node(vsi_node)) != NULL)
+		vsi_nodes_cnt++;
+
+	if (new_numqs > (max_queue_cnt * vsi_nodes_cnt))
+		new_num_nodes[vsil] = DIV_ROUND_UP(new_numqs, max_queue_cnt) -
+				      vsi_nodes_cnt;
+}
+
 /**
  * ice_sched_update_vsi_child_nodes - update VSI child nodes
  * @pi: port information structure
@@ -1863,16 +1936,25 @@ ice_sched_update_vsi_child_nodes(struct ice_port_info *pi, u16 vsi_handle,
 			return status;
 	}
 
+	ice_sched_recalc_vsi_support_nodes(hw, vsi_node,
+					   new_numqs, new_num_nodes);
 	ice_sched_calc_vsi_child_nodes(hw, new_numqs - prev_numqs,
 				       new_num_nodes);
 
-	/* Keep the max number of queue configuration all the time. Update the
-	 * tree only if number of queues > previous number of queues. This may
+	/* Never decrease the number of queues in the tree. Update the tree
+	 * only if number of queues > previous number of queues. This may
 	 * leave some extra nodes in the tree if number of queues < previous
 	 * number but that wouldn't harm anything. Removing those extra nodes
 	 * may complicate the code if those nodes are part of SRL or
 	 * individually rate limited.
+	 * Also, add the required VSI support nodes if the existing ones cannot
+	 * handle the requested new number of queues.
 	 */
+	status = ice_sched_add_vsi_support_nodes(pi, vsi_handle, tc_node,
+						 new_num_nodes);
+	if (status)
+		return status;
+
 	status = ice_sched_add_vsi_child_nodes(pi, vsi_handle, tc_node,
 					       new_num_nodes, owner);
 	if (status)
-- 
2.45.2

