Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE8D778EC1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Aug 2023 14:11:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C051983BEE;
	Fri, 11 Aug 2023 12:11:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C051983BEE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691755891;
	bh=iHOZu8FA72GPuBjPK/NQ1IUbTALBLxXwgKFOyWUOuAQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=B5MqP2TE2NrfBTUabo0Za2hKPEmJvcM3qZAdqmxHul5VgnJ9WFXRvm2WuwQOAUWvo
	 VgGbdVTRlpI4wjCMYDF1zCd3uzmxjEJu4BZZrajct4zGQZLFXapnynOKgj/klt27XU
	 C8ltZ3pC58k8vSAgwkz3b2yGniGiMceqbSztgQ5szn7OPn7iucijJaA/WO5Ca7caV7
	 XIZmTw3vizVOZUg4HTVhlqz4zn1wlxfv6VTOn3g+VQGKqMDowZTXBdv5tOIvEM2dmb
	 cNO8FRNDYZ/7NqDQxlvZ8TASFQzyLlTK7v2dqbgUPsppn3dCPGwUsFZmgJGPJQArfH
	 qY4afHX+NQZCA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yhxnVSHGJy3I; Fri, 11 Aug 2023 12:11:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9194783F35;
	Fri, 11 Aug 2023 12:11:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9194783F35
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E42F91BF990
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 12:11:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BA63741E3D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 12:11:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA63741E3D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cPFEO79FMX9r for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Aug 2023 12:11:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 616B641E35
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 12:11:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 616B641E35
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="438002116"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="438002116"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2023 05:11:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="906421883"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="906421883"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga005.jf.intel.com with ESMTP; 11 Aug 2023 05:11:09 -0700
Received: from pelor.igk.intel.com (pelor.igk.intel.com [10.123.220.13])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id B583432C87;
 Fri, 11 Aug 2023 13:11:08 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: Kees Cook <keescook@chromium.org>,
	netdev@vger.kernel.org
Date: Fri, 11 Aug 2023 08:08:09 -0400
Message-Id: <20230811120814.169952-3-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230811120814.169952-1-przemyslaw.kitszel@intel.com>
References: <20230811120814.169952-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691755873; x=1723291873;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k8mMHW1ClToQ0LS6qdM8DwDV08LjeONeCq4rhNzFj+E=;
 b=metL+T4xFfLQ+XA+jAFu8LbnNNcenyGnZB/jcJ4cNFI2P4o5EUMDrQxq
 L6Rq4uedPzA7rknVqaYnhBST4KPdpcB+0Gnt3SQmxaRBNpH+TH8g2eAMD
 CE7LSieelPLtxsTRn4x936HRbyAuRT7+kRhzkKj9p02L+NvtdGOlMYqw/
 09dWKNPL04CCCWQmSDq8LffJ0UaSp+tnz+njNrWTT1NTYIp5T/bUFs2ZI
 /i8f84fuul/yce/ZsSkNp6cM9cZ/q4KNLeQ2OWUwMGxPVYtqGRMS45x0j
 Owl+LPtzY7vo7ezPnK/rPc2KbouS+xC8Q9Uf0m8xNZMUtSVD42r4qPWUt
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=metL+T4x
Subject: [Intel-wired-lan] [PATCH net-next v2 2/7] ice:
 ice_sched_remove_elems: replace 1 elem array param by u32
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Steven Zou <steven.zou@intel.com>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Replace array+size params of ice_sched_remove_elems:() by just single u32,
as all callers are using it with "1".

This enables moving from heap-based, to stack-based allocation, what is also
more elegant thanks to DEFINE_FLEX() macro.

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
add/remove: 2/2 grow/shrink: 0/2 up/down: 252/-388 (-136)
---
 drivers/net/ethernet/intel/ice/ice_sched.c | 26 ++++++++--------------
 1 file changed, 9 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index f4677704b95e..ca37252cac03 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -229,37 +229,29 @@ ice_aq_delete_sched_elems(struct ice_hw *hw, u16 grps_req,
  * ice_sched_remove_elems - remove nodes from HW
  * @hw: pointer to the HW struct
  * @parent: pointer to the parent node
- * @num_nodes: number of nodes
- * @node_teids: array of node teids to be deleted
+ * @node_teid: node teid to be deleted
  *
  * This function remove nodes from HW
  */
 static int
 ice_sched_remove_elems(struct ice_hw *hw, struct ice_sched_node *parent,
-		       u16 num_nodes, u32 *node_teids)
+		       u32 node_teid)
 {
-	struct ice_aqc_delete_elem *buf;
-	u16 i, num_groups_removed = 0;
-	u16 buf_size;
+	DEFINE_FLEX(struct ice_aqc_delete_elem, buf, teid, 1);
+	u16 buf_size = __struct_size(buf);
+	u16 num_groups_removed = 0;
 	int status;
 
-	buf_size = struct_size(buf, teid, num_nodes);
-	buf = devm_kzalloc(ice_hw_to_dev(hw), buf_size, GFP_KERNEL);
-	if (!buf)
-		return -ENOMEM;
-
 	buf->hdr.parent_teid = parent->info.node_teid;
-	buf->hdr.num_elems = cpu_to_le16(num_nodes);
-	for (i = 0; i < num_nodes; i++)
-		buf->teid[i] = cpu_to_le32(node_teids[i]);
+	buf->hdr.num_elems = cpu_to_le16(1);
+	buf->teid[0] = cpu_to_le32(node_teid);
 
 	status = ice_aq_delete_sched_elems(hw, 1, buf, buf_size,
 					   &num_groups_removed, NULL);
 	if (status || num_groups_removed != 1)
 		ice_debug(hw, ICE_DBG_SCHED, "remove node failed FW error %d\n",
 			  hw->adminq.sq_last_status);
 
-	devm_kfree(ice_hw_to_dev(hw), buf);
 	return status;
 }
 
@@ -326,7 +318,7 @@ void ice_free_sched_node(struct ice_port_info *pi, struct ice_sched_node *node)
 	    node->info.data.elem_type != ICE_AQC_ELEM_TYPE_LEAF) {
 		u32 teid = le32_to_cpu(node->info.node_teid);
 
-		ice_sched_remove_elems(hw, node->parent, 1, &teid);
+		ice_sched_remove_elems(hw, node->parent, teid);
 	}
 	parent = node->parent;
 	/* root has no parent */
@@ -1193,7 +1185,7 @@ static void ice_rm_dflt_leaf_node(struct ice_port_info *pi)
 		int status;
 
 		/* remove the default leaf node */
-		status = ice_sched_remove_elems(pi->hw, node->parent, 1, &teid);
+		status = ice_sched_remove_elems(pi->hw, node->parent, teid);
 		if (!status)
 			ice_free_sched_node(pi, node);
 	}
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
