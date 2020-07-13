Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FF921E1BD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2020 22:57:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0816689386;
	Mon, 13 Jul 2020 20:57:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O28HasUbVcQC; Mon, 13 Jul 2020 20:57:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 69EDE89347;
	Mon, 13 Jul 2020 20:57:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6C30B1BF344
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 695B8891AF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JSRTiH8b5OyH for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jul 2020 20:57:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C027A888F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:10 +0000 (UTC)
IronPort-SDR: z8iSE41FIFFHOIKypbKepmnA9H6D/Oeo+Gp2RbLwF6AN1l+mBpQKEU3lmxTyIG2xG744dAZ/WK
 2GUugrlH3GXg==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="213545915"
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="213545915"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2020 13:57:08 -0700
IronPort-SDR: LxB155S8pE7vw9dD8FsPcyrRPSxidCTwP0uDBKIVoP+h2LioSOhRVfhX05eoY4dDZNUP6I4b6E
 GpNPzE92mDNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="285526690"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga006.jf.intel.com with ESMTP; 13 Jul 2020 13:57:08 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Jul 2020 13:53:12 -0700
Message-Id: <20200713205318.32425-9-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
References: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S50 09/15] ice: distribute Tx queues evenly
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

Distribute the Tx queues evenly across all queue groups. This will
help the queues to get more equal sharing among the queues when all
are in use.

In the previous algorithm, the next queue group node will be picked up
only after the previous one filled with max children.
For example: if VSI is configured with 9 queues, the first 8 queues
will be assigned to queue group 1 and the 9th queue will be assigned to
queue group 2.

The 2 queue groups split the bandwidth between them equally (50:50).
The first queue group node will share the 50% bandwidth with all of
its children (8 queues). And the second queue group node will share
the entire 50% bandwidth with its only children.

The new algorithm will fix this issue.

Signed-off-by: Victor Raj <victor.raj@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sched.c | 55 ++++++++++++++++++++--
 1 file changed, 51 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index ac5b05bb978f..355f727563e4 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -1275,6 +1275,53 @@ ice_sched_find_node_in_subtree(struct ice_hw *hw, struct ice_sched_node *base,
 	return false;
 }
 
+/**
+ * ice_sched_get_free_qgrp - Scan all queue group siblings and find a free node
+ * @pi: port information structure
+ * @vsi_node: software VSI handle
+ * @qgrp_node: first queue group node identified for scanning
+ * @owner: LAN or RDMA
+ *
+ * This function retrieves a free LAN or RDMA queue group node by scanning
+ * qgrp_node and its siblings for the queue group with the fewest number
+ * of queues currently assigned.
+ */
+static struct ice_sched_node *
+ice_sched_get_free_qgrp(struct ice_port_info *pi,
+			struct ice_sched_node *vsi_node,
+			struct ice_sched_node *qgrp_node, u8 owner)
+{
+	struct ice_sched_node *min_qgrp;
+	u8 min_children;
+
+	if (!qgrp_node)
+		return qgrp_node;
+	min_children = qgrp_node->num_children;
+	if (!min_children)
+		return qgrp_node;
+	min_qgrp = qgrp_node;
+	/* scan all queue groups until find a node which has less than the
+	 * minimum number of children. This way all queue group nodes get
+	 * equal number of shares and active. The bandwidth will be equally
+	 * distributed across all queues.
+	 */
+	while (qgrp_node) {
+		/* make sure the qgroup node is part of the VSI subtree */
+		if (ice_sched_find_node_in_subtree(pi->hw, vsi_node, qgrp_node))
+			if (qgrp_node->num_children < min_children &&
+			    qgrp_node->owner == owner) {
+				/* replace the new min queue group node */
+				min_qgrp = qgrp_node;
+				min_children = min_qgrp->num_children;
+				/* break if it has no children, */
+				if (!min_children)
+					break;
+			}
+		qgrp_node = qgrp_node->sibling;
+	}
+	return min_qgrp;
+}
+
 /**
  * ice_sched_get_free_qparent - Get a free LAN or RDMA queue group node
  * @pi: port information structure
@@ -1288,7 +1335,7 @@ struct ice_sched_node *
 ice_sched_get_free_qparent(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 			   u8 owner)
 {
-	struct ice_sched_node *vsi_node, *qgrp_node = NULL;
+	struct ice_sched_node *vsi_node, *qgrp_node;
 	struct ice_vsi_ctx *vsi_ctx;
 	u16 max_children;
 	u8 qgrp_layer;
@@ -1302,7 +1349,7 @@ ice_sched_get_free_qparent(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 	vsi_node = vsi_ctx->sched.vsi_node[tc];
 	/* validate invalid VSI ID */
 	if (!vsi_node)
-		goto lan_q_exit;
+		return NULL;
 
 	/* get the first queue group node from VSI sub-tree */
 	qgrp_node = ice_sched_get_first_node(pi, vsi_node, qgrp_layer);
@@ -1315,8 +1362,8 @@ ice_sched_get_free_qparent(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 		qgrp_node = qgrp_node->sibling;
 	}
 
-lan_q_exit:
-	return qgrp_node;
+	/* Select the best queue group */
+	return ice_sched_get_free_qgrp(pi, vsi_node, qgrp_node, owner);
 }
 
 /**
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
