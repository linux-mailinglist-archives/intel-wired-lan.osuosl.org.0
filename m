Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 457037A6F78
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Sep 2023 01:35:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8AF0C417D4;
	Tue, 19 Sep 2023 23:35:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8AF0C417D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695166526;
	bh=g1qYrSy7XKUvf8j0n6NpRyM8OEo2Gx5ZkntIxIACYDA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=av0PdjG1EFkGz8nHqgaPEwvizsNmjyur7T18ckjg9FeaOi7kcq3AQlvICNbYEobQp
	 NojKy4YlVIsy/lV+qXZ88IyGM3mi4lVBhiT1GnH5ev+Jf4Fuk+i18G0QR9f1mEy+Vl
	 0F5rqqEHA11bSmpi6zGM+e6/cehrhwwt654pdB/y6s2rs0EwoJ0Ob/gUJTEZggcAKr
	 pB9VRIOX7chxbwPbE0VuiEORGqdAgRO4W4IpvL2u1OGzQ1lAc9CV/VeLuZhX/ugiPT
	 yXje52PYjQd9Wnqx2B/CtLhG72dOrCcp0Py/hE66dGm2UK6ccz7p1VUPXEZh0jSMIq
	 g0lYrkRjiW1dA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4FXmPq8Xus8Z; Tue, 19 Sep 2023 23:35:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 68693417A0;
	Tue, 19 Sep 2023 23:35:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 68693417A0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E97291BF407
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 23:35:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8E29141E41
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 23:35:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E29141E41
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dRrchxVwIsnv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Sep 2023 23:35:07 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3B5BD41E3D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 23:35:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B5BD41E3D
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="444172129"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="444172129"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 16:34:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="749668109"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="749668109"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.1])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 16:34:50 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 19 Sep 2023 16:34:35 -0700
Message-ID: <20230919233435.518620-5-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
In-Reply-To: <20230919233435.518620-1-jacob.e.keller@intel.com>
References: <20230919233435.518620-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695166507; x=1726702507;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EFMz6veJ9D+gC/S6rZwPQjM26t/fhHOzhx0qGpUDEPo=;
 b=WZHt/clMAlPrxrnUD7OpK9Gfwp/A5Q5tRnu13x0zKME8rNcP5QZvpLdD
 qM/EARWZKZBPX1GWeii/dasPQ7t535nIfzDAla/YyqHsLYhbm4hMdr1Wv
 wdO3JbYZsWWWUjx1T+vwLe5MMa5c5ZtCIyNmP+U5vb9554YIi/WemUVnt
 iyfQXZUtaxbyuBlpe0iKnNn7xviJv9ySsWi0kN19+xc8MEiAElpFuJ94b
 +STlVzfnjgWRwDvpztp64u0h465ep8MNYGoGxTvgn5sox8FDvA8TZB1w6
 TykeAgAYFBuluRsgzxguAMV7wlE4y/uJdGOr9FO1phnRchB/gWyElcK3P
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WZHt/clM
Subject: [Intel-wired-lan] [PATCH iwl-next 4/4] ice: cleanup
 ice_find_netlist_node
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice_find_netlist_node function was introduced in commit 8a3a565ff210
("ice: add admin commands to access cgu configuration"). Variations of this
function were reviewed concurrently on both intel-wired-lan[1][2], and
netdev [3][4]

[1]: https://lore.kernel.org/intel-wired-lan/20230913204943.1051233-7-vadim.fedorenko@linux.dev/
[2]: https://lore.kernel.org/intel-wired-lan/20230817000058.2433236-5-jacob.e.keller@intel.com/
[3]: https://lore.kernel.org/netdev/20230918212814.435688-1-anthony.l.nguyen@intel.com/
[4]: https://lore.kernel.org/netdev/20230913204943.1051233-7-vadim.fedorenko@linux.dev/

The variant I posted had a few changes due to review feedback which were
never incorporated into the DPLL series:

* Replace the references to ancient and long removed ICE_SUCCESS and
  ICE_ERR_DOES_NOT_EXIST status codes in the function comment.

* Return -ENOENT instead of -ENOTBLK, as a more common way to indicate that
  an entry doesn't exist.

* Avoid the use of memset() and use simple static initialization for the
  cmd variable.

* Use FIELD_PREP to assign the node_type_ctx.

* Remove an unnecessary local variable to keep track of rec_node_handle,
  just pass the node_handle pointer directly into ice_aq_get_netlist_node.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 30 ++++++++++-----------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 12c09374c2be..d4e259b816b9 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -473,41 +473,41 @@ ice_aq_get_netlist_node(struct ice_hw *hw, struct ice_aqc_get_link_topo *cmd,
  * @node_part_number: node part number to look for
  * @node_handle: output parameter if node found - optional
  *
- * Find and return the node handle for a given node type and part number in the
- * netlist. When found ICE_SUCCESS is returned, ICE_ERR_DOES_NOT_EXIST
- * otherwise. If node_handle provided, it would be set to found node handle.
+ * Scan the netlist for a node handle of the given node type and part number.
+ *
+ * If node_handle is non-NULL it will be modified on function exit. It is only
+ * valid if the function returns zero, and should be ignored on any non-zero
+ * return value.
+ *
+ * Returns: 0 if the node is found, -ENOENT if no handle was found, and
+ * a negative error code on failure to access the AQ.
  */
 static int ice_find_netlist_node(struct ice_hw *hw, u8 node_type_ctx,
 				 u8 node_part_number, u16 *node_handle)
 {
-	struct ice_aqc_get_link_topo cmd;
-	u8 rec_node_part_number;
-	u16 rec_node_handle;
 	u8 idx;
 
 	for (idx = 0; idx < ICE_MAX_NETLIST_SIZE; idx++) {
+		struct ice_aqc_get_link_topo cmd = {};
+		u8 rec_node_part_number;
 		int status;
 
-		memset(&cmd, 0, sizeof(cmd));
-
 		cmd.addr.topo_params.node_type_ctx =
-			(node_type_ctx << ICE_AQC_LINK_TOPO_NODE_TYPE_S);
+			FIELD_PREP(ICE_AQC_LINK_TOPO_NODE_TYPE_M,
+				   node_type_ctx);
 		cmd.addr.topo_params.index = idx;
 
 		status = ice_aq_get_netlist_node(hw, &cmd,
 						 &rec_node_part_number,
-						 &rec_node_handle);
+						 node_handle);
 		if (status)
 			return status;
 
-		if (rec_node_part_number == node_part_number) {
-			if (node_handle)
-				*node_handle = rec_node_handle;
+		if (rec_node_part_number == node_part_number)
 			return 0;
-		}
 	}
 
-	return -ENOTBLK;
+	return -ENOENT;
 }
 
 /**
-- 
2.41.0.1.g9857a21e0017.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
