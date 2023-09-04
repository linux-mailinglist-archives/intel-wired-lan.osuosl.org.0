Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 476E0791730
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Sep 2023 14:34:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C54B44092C;
	Mon,  4 Sep 2023 12:34:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C54B44092C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693830881;
	bh=pD8JSblRqUpxmz36jxoEc59pfA5fcQNl22DCfmGKUCM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mTte/ManE92HhK7WeB5tWJkO1zyTNFRBLiAU8iz0I0zUFfPzFCoU534G6b/ZMHiE0
	 9gcz+oju0zhRFSyroIAUCrH4BAfEpDvIfoSWN3m6CJ0ckXoByWD3T18aAT5Rqe7AV8
	 kV1EFqiX+ihc34HAL9b//jokLR3qRI3u1jjD5D0sntDcGtshTa2nfiLsIxxVbx4dEH
	 ATFjbqIohF/4glnA5f2Ig5XeIM5Nwyz5n1kichWzT1EXqJChPMpmmoCikw7frBcKZO
	 arC9uaq7NdGNH+ZwhES2OBm+t+JZM4KKQjHrgZfp4gW3NMaXXmQKhIXLGIibYmXzoF
	 /hWLfOfC9KEdw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iIP2wur_U4eR; Mon,  4 Sep 2023 12:34:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 03314408FF;
	Mon,  4 Sep 2023 12:34:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03314408FF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4CCAE1BF95F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 12:34:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2373A817A4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 12:34:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2373A817A4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gn8ee-KLYCoq for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Sep 2023 12:34:22 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 22C6D81746
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 12:34:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 22C6D81746
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="373977151"
X-IronPort-AV: E=Sophos;i="6.02,226,1688454000"; d="scan'208";a="373977151"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2023 05:34:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="740749760"
X-IronPort-AV: E=Sophos;i="6.02,226,1688454000"; d="scan'208";a="740749760"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga002.jf.intel.com with ESMTP; 04 Sep 2023 05:34:17 -0700
Received: from pelor.igk.intel.com (pelor.igk.intel.com [10.123.220.13])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 3F2B7340D5;
 Mon,  4 Sep 2023 13:34:16 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: netdev@vger.kernel.org
Date: Mon,  4 Sep 2023 08:31:03 -0400
Message-Id: <20230904123107.116381-4-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230904123107.116381-1-przemyslaw.kitszel@intel.com>
References: <20230904123107.116381-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693830862; x=1725366862;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XAuEVGtmYfOaURx7+IJq9knprmddw1Mq+7QU/J9DXgY=;
 b=J9Mx1qWsdGZ7g6CAI9ulnFcs5B2oNgvqhSmojX/5kkVaAWaL4x2W5gZW
 kg6ybPteMO/7/X1xFH+1VJTHQ4Jq+3VdAjIin2LW871Lg0LL8poH6Gu+i
 8v2OHkYjV0fXViQeLHrVkQ9+q0dQGGkzvHhmEHwyK4Al0mVKkt6MutTSX
 657cTbP8LFS8L5wCxA9zxB5CKZxvHj5uj+AxMin7FEM4Cuo/Vi8h44CDD
 wYBl9iH01ytpYW3ihEi6C2B876azVQ0Lt73hN7aGzK3Fll1smPXJ0UICt
 ar9Rj1phfdMOlqeShhpY5Yg8+rWFFBtbFhFAA+zrwYXICKQzzXmL2aX9R
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J9Mx1qWs
Subject: [Intel-wired-lan] [RFC net-next v4 3/7] ice: drop two params of
 ice_aq_move_sched_elems()
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
Cc: Kees Cook <keescook@chromium.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Steven Zou <steven.zou@intel.com>, Anthony Nguyen <anthony.l.nguyen@intel.com>,
 David Laight <David.Laight@ACULAB.COM>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Remove two arguments of ice_aq_move_sched_elems().
Last of them was always NULL, and @grps_req was always 1.

Assuming @grps_req to be one, allows us to use DEFINE_FLEX() macro,
what removes some need for heap allocations.

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
add/remove: 0/0 grow/shrink: 1/6 up/down: 46/-261 (-215)
---
 drivers/net/ethernet/intel/ice/ice_lag.c   | 48 ++++++----------------
 drivers/net/ethernet/intel/ice/ice_sched.c | 30 ++++----------
 drivers/net/ethernet/intel/ice/ice_sched.h |  6 +--
 3 files changed, 23 insertions(+), 61 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 4f39863b5537..2c96d1883e19 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -430,10 +430,11 @@ static void
 ice_lag_move_vf_node_tc(struct ice_lag *lag, u8 oldport, u8 newport,
 			u16 vsi_num, u8 tc)
 {
-	u16 numq, valq, buf_size, num_moved, qbuf_size;
+	DEFINE_FLEX(struct ice_aqc_move_elem, buf, teid, 1);
 	struct device *dev = ice_pf_to_dev(lag->pf);
+	u16 numq, valq, num_moved, qbuf_size;
+	u16 buf_size = __struct_size(buf);
 	struct ice_aqc_cfg_txqs_buf *qbuf;
-	struct ice_aqc_move_elem *buf;
 	struct ice_sched_node *n_prt;
 	struct ice_hw *new_hw = NULL;
 	__le32 teid, parent_teid;
@@ -505,26 +506,17 @@ ice_lag_move_vf_node_tc(struct ice_lag *lag, u8 oldport, u8 newport,
 		goto resume_traffic;
 
 	/* Move Vf's VSI node for this TC to newport's scheduler tree */
-	buf_size = struct_size(buf, teid, 1);
-	buf = kzalloc(buf_size, GFP_KERNEL);
-	if (!buf) {
-		dev_warn(dev, "Failure to alloc memory for VF node failover\n");
-		goto resume_traffic;
-	}
-
 	buf->hdr.src_parent_teid = parent_teid;
 	buf->hdr.dest_parent_teid = n_prt->info.node_teid;
 	buf->hdr.num_elems = cpu_to_le16(1);
 	buf->hdr.mode = ICE_AQC_MOVE_ELEM_MODE_KEEP_OWN;
 	buf->teid[0] = teid;
 
-	if (ice_aq_move_sched_elems(&lag->pf->hw, 1, buf, buf_size, &num_moved,
-				    NULL))
+	if (ice_aq_move_sched_elems(&lag->pf->hw, buf, buf_size, &num_moved))
 		dev_warn(dev, "Failure to move VF nodes for failover\n");
 	else
 		ice_sched_update_parent(n_prt, ctx->sched.vsi_node[tc]);
 
-	kfree(buf);
 	goto resume_traffic;
 
 qbuf_err:
@@ -755,10 +747,11 @@ static void
 ice_lag_reclaim_vf_tc(struct ice_lag *lag, struct ice_hw *src_hw, u16 vsi_num,
 		      u8 tc)
 {
-	u16 numq, valq, buf_size, num_moved, qbuf_size;
+	DEFINE_FLEX(struct ice_aqc_move_elem, buf, teid, 1);
 	struct device *dev = ice_pf_to_dev(lag->pf);
+	u16 numq, valq, num_moved, qbuf_size;
+	u16 buf_size = __struct_size(buf);
 	struct ice_aqc_cfg_txqs_buf *qbuf;
-	struct ice_aqc_move_elem *buf;
 	struct ice_sched_node *n_prt;
 	__le32 teid, parent_teid;
 	struct ice_vsi_ctx *ctx;
@@ -820,26 +813,17 @@ ice_lag_reclaim_vf_tc(struct ice_lag *lag, struct ice_hw *src_hw, u16 vsi_num,
 		goto resume_reclaim;
 
 	/* Move node to new parent */
-	buf_size = struct_size(buf, teid, 1);
-	buf = kzalloc(buf_size, GFP_KERNEL);
-	if (!buf) {
-		dev_warn(dev, "Failure to alloc memory for VF node failover\n");
-		goto resume_reclaim;
-	}
-
 	buf->hdr.src_parent_teid = parent_teid;
 	buf->hdr.dest_parent_teid = n_prt->info.node_teid;
 	buf->hdr.num_elems = cpu_to_le16(1);
 	buf->hdr.mode = ICE_AQC_MOVE_ELEM_MODE_KEEP_OWN;
 	buf->teid[0] = teid;
 
-	if (ice_aq_move_sched_elems(&lag->pf->hw, 1, buf, buf_size, &num_moved,
-				    NULL))
+	if (ice_aq_move_sched_elems(&lag->pf->hw, buf, buf_size, &num_moved))
 		dev_warn(dev, "Failure to move VF nodes for LAG reclaim\n");
 	else
 		ice_sched_update_parent(n_prt, ctx->sched.vsi_node[tc]);
 
-	kfree(buf);
 	goto resume_reclaim;
 
 reclaim_qerr:
@@ -1792,10 +1776,11 @@ static void
 ice_lag_move_vf_nodes_tc_sync(struct ice_lag *lag, struct ice_hw *dest_hw,
 			      u16 vsi_num, u8 tc)
 {
-	u16 numq, valq, buf_size, num_moved, qbuf_size;
+	DEFINE_FLEX(struct ice_aqc_move_elem, buf, teid, 1);
 	struct device *dev = ice_pf_to_dev(lag->pf);
+	u16 numq, valq, num_moved, qbuf_size;
+	u16 buf_size = __struct_size(buf);
 	struct ice_aqc_cfg_txqs_buf *qbuf;
-	struct ice_aqc_move_elem *buf;
 	struct ice_sched_node *n_prt;
 	__le32 teid, parent_teid;
 	struct ice_vsi_ctx *ctx;
@@ -1853,26 +1838,17 @@ ice_lag_move_vf_nodes_tc_sync(struct ice_lag *lag, struct ice_hw *dest_hw,
 		goto resume_sync;
 
 	/* Move node to new parent */
-	buf_size = struct_size(buf, teid, 1);
-	buf = kzalloc(buf_size, GFP_KERNEL);
-	if (!buf) {
-		dev_warn(dev, "Failure to alloc for VF node move in reset rebuild\n");
-		goto resume_sync;
-	}
-
 	buf->hdr.src_parent_teid = parent_teid;
 	buf->hdr.dest_parent_teid = n_prt->info.node_teid;
 	buf->hdr.num_elems = cpu_to_le16(1);
 	buf->hdr.mode = ICE_AQC_MOVE_ELEM_MODE_KEEP_OWN;
 	buf->teid[0] = teid;
 
-	if (ice_aq_move_sched_elems(&lag->pf->hw, 1, buf, buf_size, &num_moved,
-				    NULL))
+	if (ice_aq_move_sched_elems(&lag->pf->hw, buf, buf_size, &num_moved))
 		dev_warn(dev, "Failure to move VF nodes for LAG reset rebuild\n");
 	else
 		ice_sched_update_parent(n_prt, ctx->sched.vsi_node[tc]);
 
-	kfree(buf);
 	goto resume_sync;
 
 sync_qerr:
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index efa5cb202eac..2f4a621254e8 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -429,24 +429,20 @@ ice_aq_cfg_sched_elems(struct ice_hw *hw, u16 elems_req,
 }
 
 /**
- * ice_aq_move_sched_elems - move scheduler elements
+ * ice_aq_move_sched_elems - move scheduler element (just 1 group)
  * @hw: pointer to the HW struct
- * @grps_req: number of groups to move
  * @buf: pointer to buffer
  * @buf_size: buffer size in bytes
  * @grps_movd: returns total number of groups moved
- * @cd: pointer to command details structure or NULL
  *
  * Move scheduling elements (0x0408)
  */
 int
-ice_aq_move_sched_elems(struct ice_hw *hw, u16 grps_req,
-			struct ice_aqc_move_elem *buf, u16 buf_size,
-			u16 *grps_movd, struct ice_sq_cd *cd)
+ice_aq_move_sched_elems(struct ice_hw *hw, struct ice_aqc_move_elem *buf,
+			u16 buf_size, u16 *grps_movd)
 {
 	return ice_aqc_send_sched_elem_cmd(hw, ice_aqc_opc_move_sched_elems,
-					   grps_req, (void *)buf, buf_size,
-					   grps_movd, cd);
+					   1, buf, buf_size, grps_movd, NULL);
 }
 
 /**
@@ -2224,12 +2220,12 @@ int
 ice_sched_move_nodes(struct ice_port_info *pi, struct ice_sched_node *parent,
 		     u16 num_items, u32 *list)
 {
-	struct ice_aqc_move_elem *buf;
+	DEFINE_FLEX(struct ice_aqc_move_elem, buf, teid, 1);
+	u16 buf_len = __struct_size(buf);
 	struct ice_sched_node *node;
 	u16 i, grps_movd = 0;
 	struct ice_hw *hw;
 	int status = 0;
-	u16 buf_len;
 
 	hw = pi->hw;
 
@@ -2241,35 +2237,27 @@ ice_sched_move_nodes(struct ice_port_info *pi, struct ice_sched_node *parent,
 	    hw->max_children[parent->tx_sched_layer])
 		return -ENOSPC;
 
-	buf_len = struct_size(buf, teid, 1);
-	buf = kzalloc(buf_len, GFP_KERNEL);
-	if (!buf)
-		return -ENOMEM;
-
 	for (i = 0; i < num_items; i++) {
 		node = ice_sched_find_node_by_teid(pi->root, list[i]);
 		if (!node) {
 			status = -EINVAL;
-			goto move_err_exit;
+			break;
 		}
 
 		buf->hdr.src_parent_teid = node->info.parent_teid;
 		buf->hdr.dest_parent_teid = parent->info.node_teid;
 		buf->teid[0] = node->info.node_teid;
 		buf->hdr.num_elems = cpu_to_le16(1);
-		status = ice_aq_move_sched_elems(hw, 1, buf, buf_len,
-						 &grps_movd, NULL);
+		status = ice_aq_move_sched_elems(hw, buf, buf_len, &grps_movd);
 		if (status && grps_movd != 1) {
 			status = -EIO;
-			goto move_err_exit;
+			break;
 		}
 
 		/* update the SW DB */
 		ice_sched_update_parent(parent, node);
 	}
 
-move_err_exit:
-	kfree(buf);
 	return status;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.h b/drivers/net/ethernet/intel/ice/ice_sched.h
index 0055d9330c07..1aef05ea5a57 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.h
+++ b/drivers/net/ethernet/intel/ice/ice_sched.h
@@ -161,10 +161,8 @@ ice_sched_add_nodes_to_layer(struct ice_port_info *pi,
 			     u16 *num_nodes_added);
 void ice_sched_replay_agg_vsi_preinit(struct ice_hw *hw);
 void ice_sched_replay_agg(struct ice_hw *hw);
-int
-ice_aq_move_sched_elems(struct ice_hw *hw, u16 grps_req,
-			struct ice_aqc_move_elem *buf, u16 buf_size,
-			u16 *grps_movd, struct ice_sq_cd *cd);
+int ice_aq_move_sched_elems(struct ice_hw *hw, struct ice_aqc_move_elem *buf,
+			    u16 buf_size, u16 *grps_movd);
 int ice_replay_vsi_agg(struct ice_hw *hw, u16 vsi_handle);
 int ice_sched_replay_q_bw(struct ice_port_info *pi, struct ice_q_ctx *q_ctx);
 #endif /* _ICE_SCHED_H_ */
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
