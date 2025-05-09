Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2730CAB0F6D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 May 2025 11:43:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C882541587;
	Fri,  9 May 2025 09:43:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5BmhvJ6kmm3O; Fri,  9 May 2025 09:43:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C281A4157B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746783791;
	bh=IixENHxN386A9XS8RDzLHjKT0QV1NbJcUVPgo98ZJB4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CEz9NQ/ddZXKktTIVrrR6W7+SslsoMcpPTpLWc3uXv3MWs8DbAAEMF97bN3WTvbyy
	 6aRQsq+/UuTreWwuc9ZJKuHcFe7p3uudF5zGwPOBWjLl/8Vxi4xNnZFPS8S5NpSeR5
	 RmxiCVxiMMKKzRs1Bxzc09VE5bO1ZaNMI3hPrCFKvLmxZBaKcANVvYxfDNtHQFzNlM
	 jfRmAUmKU2CdHemV79LNfsFqMKULNKrgunQHWIzm8VYDsaPS3wXlJLdbk1+jP0gvTS
	 5FGDoFxIQj2BktmBELOrjQ7NUllujfFF/kiQW70jDWvJiP488KXdhd9n71re7g8aXi
	 w4WIz7F2y0Q9w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C281A4157B;
	Fri,  9 May 2025 09:43:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0A4D7E2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 09:43:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EEF2C60B26
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 09:43:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mKJPt6Ip6IC4 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 May 2025 09:43:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D548260B19
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D548260B19
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D548260B19
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 09:43:08 +0000 (UTC)
X-CSE-ConnectionGUID: zCGgvAN/RoeLENNwGLYBsg==
X-CSE-MsgGUID: FEwvx3olRhm6DSyGkIxpCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="73985818"
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="73985818"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 02:43:09 -0700
X-CSE-ConnectionGUID: KUJ5Zi/HRvS1awoLZeXWXg==
X-CSE-MsgGUID: 9NO8SjIcSEOXaDd8uFzXWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="136266724"
Received: from gk3153-pr4-x299-22869.igk.intel.com (HELO
 localhost.igk.intel.com) ([10.102.21.130])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 02:43:06 -0700
From: Michal Kubiak <michal.kubiak@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: maciej.fijalkowski@intel.com, aleksander.lobakin@intel.com,
 przemyslaw.kitszel@intel.com, dawid.osuchowski@linux.intel.com,
 jacob.e.keller@intel.com, jbrandeburg@cloudflare.com,
 netdev@vger.kernel.org, Michal Kubiak <michal.kubiak@intel.com>
Date: Fri,  9 May 2025 11:42:33 +0200
Message-ID: <20250509094233.197245-4-michal.kubiak@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250509094233.197245-1-michal.kubiak@intel.com>
References: <20250509094233.197245-1-michal.kubiak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746783789; x=1778319789;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mR9jFxIUxWdK761bPJ+imdug06RsNrQQuDXn7tGZm5Y=;
 b=SIh2pvtkCsC1LeU9QdmLDhDQVEDRBtjhESfaWdgAkP36WRosZ6zj4x6a
 xdIsiGhhU3bnNgFaOUlBGVBpoJKmqD4diSVvkRZr8nEyyrxQepMZSopKQ
 WlmFVi4IFwnGEx49PrPv2X27743vAHncJGAqPDmLXKvAkqxpnD3k8GSKT
 DEFopslNRrWTsTOhFxWzBsNV9Gppg1KiB5NS9IuRk7l+Y6cvF2TJ1QnYi
 Yb1hw/GEZDJiZH5LWlBQRereRJMreLq5WosX9X1GFD2CnFwum0eYFd4hc
 5ZWEcoUQt1TVl0uMWP333VQPPSMI3jLZshATCSRdTxdeXCFc5D6SncYrd
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SIh2pvtk
Subject: [Intel-wired-lan] [PATCH iwl-net v2 3/3] ice: fix rebuilding the Tx
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
handle all the required Tx queues. Symmetrically, adjust the VSI node removal
algorithm to remove all nodes associated with the given VSI.
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
 drivers/net/ethernet/intel/ice/ice_sched.c | 176 +++++++++++++++++----
 1 file changed, 148 insertions(+), 28 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index 6524875b34d3..51da7186e402 100644
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
@@ -2013,6 +2095,64 @@ static bool ice_sched_is_leaf_node_present(struct ice_sched_node *node)
 	return (node->info.data.elem_type == ICE_AQC_ELEM_TYPE_LEAF);
 }
 
+/**
+ * ice_sched_rm_vsi_subtree - remove all nodes assigned to a given VSI
+ * @pi: port information structure
+ * @vsi_handle: software VSI handle
+ * @owner: LAN or RDMA
+ * @tc: TC number
+ *
+ * Return: Zero in case of success, or -EBUSY if the VSI has leaf nodes in TC.
+ *
+ * This function removes all the VSI support nodes associated with a given VSI
+ * and its LAN or RDMA children nodes from the scheduler tree.
+ */
+static int
+ice_sched_rm_vsi_subtree(struct ice_port_info *pi,
+			 struct ice_sched_node *vsi_node, u8 owner, u8 tc)
+{
+	u16 vsi_handle = vsi_node->vsi_handle;
+	bool all_vsi_nodes_removed = true;
+	int j = 0;
+
+	while (vsi_node) {
+		struct ice_sched_node *next_vsi_node;
+
+		if (ice_sched_is_leaf_node_present(vsi_node)) {
+			ice_debug(pi->hw, ICE_DBG_SCHED, "VSI has leaf nodes in TC %d\n", tc);
+			return -EBUSY;
+		}
+		while (j < vsi_node->num_children) {
+			if (vsi_node->children[j]->owner == owner) {
+				ice_free_sched_node(pi, vsi_node->children[j]);
+
+				/* reset the counter again since the num
+				 * children will be updated after node removal
+				 */
+				j = 0;
+			} else {
+				j++;
+			}
+		}
+
+		next_vsi_node = ice_sched_find_next_vsi_node(vsi_node);
+
+		/* remove the VSI if it has no children */
+		if (!vsi_node->num_children)
+			ice_free_sched_node(pi, vsi_node);
+		else
+			all_vsi_nodes_removed = false;
+
+		vsi_node = next_vsi_node;
+	}
+
+	/* clean up aggregator related VSI info if any */
+	if (all_vsi_nodes_removed)
+		ice_sched_rm_agg_vsi_info(pi, vsi_handle);
+
+	return 0;
+}
+
 /**
  * ice_sched_rm_vsi_cfg - remove the VSI and its children nodes
  * @pi: port information structure
@@ -2039,7 +2179,6 @@ ice_sched_rm_vsi_cfg(struct ice_port_info *pi, u16 vsi_handle, u8 owner)
 
 	ice_for_each_traffic_class(i) {
 		struct ice_sched_node *vsi_node, *tc_node;
-		u8 j = 0;
 
 		tc_node = ice_sched_get_tc_node(pi, i);
 		if (!tc_node)
@@ -2049,31 +2188,12 @@ ice_sched_rm_vsi_cfg(struct ice_port_info *pi, u16 vsi_handle, u8 owner)
 		if (!vsi_node)
 			continue;
 
-		if (ice_sched_is_leaf_node_present(vsi_node)) {
-			ice_debug(pi->hw, ICE_DBG_SCHED, "VSI has leaf nodes in TC %d\n", i);
-			status = -EBUSY;
+		status = ice_sched_rm_vsi_subtree(pi, vsi_node, owner, i);
+		if (status)
 			goto exit_sched_rm_vsi_cfg;
-		}
-		while (j < vsi_node->num_children) {
-			if (vsi_node->children[j]->owner == owner) {
-				ice_free_sched_node(pi, vsi_node->children[j]);
 
-				/* reset the counter again since the num
-				 * children will be updated after node removal
-				 */
-				j = 0;
-			} else {
-				j++;
-			}
-		}
-		/* remove the VSI if it has no children */
-		if (!vsi_node->num_children) {
-			ice_free_sched_node(pi, vsi_node);
-			vsi_ctx->sched.vsi_node[i] = NULL;
+		vsi_ctx->sched.vsi_node[i] = NULL;
 
-			/* clean up aggregator related VSI info if any */
-			ice_sched_rm_agg_vsi_info(pi, vsi_handle);
-		}
 		if (owner == ICE_SCHED_NODE_OWNER_LAN)
 			vsi_ctx->sched.max_lanq[i] = 0;
 		else
-- 
2.45.2

