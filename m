Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 847857775F3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Aug 2023 12:38:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F3AC83B38;
	Thu, 10 Aug 2023 10:38:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F3AC83B38
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691663936;
	bh=eg9dEPxvEEgKwIcwzp6iBSJZODNtdbmlmGzuQVyGuFw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qDxXftHnvVhw16ebOPtp1gY6f/CC5w6/lCGHyIg8d2EQ3q1MIjSyvr8vlexVE7RcC
	 j0krczD0Cpb3N/ECUrPuYGkyHyMoRlhBmLtoBBPAJR9XMFqeVgySrTLO8lpJ8QLl/T
	 qV81SE0oAVmWC0lP4s6bC6D3wAvIdDp+p5xupeNOdbooVs+7m/uJyBtP4Yc4KGFVUr
	 0199lU6WRX/phDvd/4xnGjdvHiDFXHITs1xgDcEMhus35o+V9GxFeVaFFPiMkXkWhg
	 nDNSj4m/Lba/hAEiMIbYqJN4PTtEynf+WlK8G6lEOspTr+/gSVgDAJt4J2yi5FD6nz
	 XdQuSN7E2Zuww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IUZTkkt_qxyr; Thu, 10 Aug 2023 10:38:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E9BC4813F8;
	Thu, 10 Aug 2023 10:38:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9BC4813F8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A00331BF982
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 10:38:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 798D481411
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 10:38:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 798D481411
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E_O4eIHUy6b4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Aug 2023 10:38:44 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BFF61813F8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 10:38:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BFF61813F8
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="370260811"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="370260811"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 03:38:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="767237169"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="767237169"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga001.jf.intel.com with ESMTP; 10 Aug 2023 03:38:41 -0700
Received: from pelor.igk.intel.com (pelor.igk.intel.com [10.123.220.13])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id BEE92332CA;
 Thu, 10 Aug 2023 11:38:40 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: Kees Cook <keescook@chromium.org>,
	netdev@vger.kernel.org
Date: Thu, 10 Aug 2023 06:35:04 -0400
Message-Id: <20230810103509.163225-3-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230810103509.163225-1-przemyslaw.kitszel@intel.com>
References: <20230810103509.163225-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691663924; x=1723199924;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Lii3vJl6q5Ll+MMaAZXSQnEUHHsnPOBszMTEKBGsRMA=;
 b=C5A5iPoVG4LCjIWaL7RfVX1UEBPRixBd+s/vkjkCdNypwLZ48vt9kZgL
 0eTo7KmWl8NDUvHeITUFgr3QiTxkEYMWZxrPngtWA7mNuh6D7v+b3zXud
 yWeuRXEEsojxoFR2mLtTmAplqJuPn9iShmeFs2QAMLwqgTY7FnZMDluzJ
 7xXxlDKhqHfkWj3vsasl2v2JzJfzDZpOaA22NylsnNGrjq3lLBSJw3cG4
 9dP0VF3uyPq8QLaAXyKx2uFsmIlegm9PPs7URb790NTLaZJX7zAX2u0xh
 +0e98qCH5JdDQ8o3JNqnNsK2ure+Qj6n6cS9TdX7aisMitHtP6uup99Ju
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C5A5iPoV
Subject: [Intel-wired-lan] [PATCH net-next v1 2/7] ice:
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
index f4677704b95e..02b3a34b7698 100644
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
+	u16 buf_size = const_flex_size(buf);
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
