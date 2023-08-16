Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6BB77E33E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 16:09:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6016641E53;
	Wed, 16 Aug 2023 14:09:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6016641E53
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692194987;
	bh=YFWnhOUrQ7WeIGqPHlyzSoKWasBI530YVO1sxckOcSQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Q5cHtGDe3nmbxhCUO1mcl1kVdHxEh7e8G3tYYn31bchYDn3HJ72sIojTN8s+0dc7O
	 OvWYs3QEppmjefgML3sltJ+E8kq4y3GxGW7jdFY0xHeimnvnQu9yDAjbs8Yvlxmumv
	 bMUQsGgiwXo6hgHpsk0i3jzhj2Be+7GtJpVmn3luyoDbshM5qn73VJ9OYIs1eNV108
	 2GLWmrGSyZB1DD2B1bOsdaC1vbZPZ2+DT0Qw3uo92YF98JZZ8nHkpASY40q5hSBXdC
	 AIj0CPFr7wdQMMjqY/4U9SSmKKg3kDjGilKjZx9dkeH1hHU9uu9PV/M/QFMSdV21tX
	 jLsyocVrm/oZA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L_HlVZQ0N8a9; Wed, 16 Aug 2023 14:09:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8845541B66;
	Wed, 16 Aug 2023 14:09:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8845541B66
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2427F1BF41B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 14:09:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8796B82077
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 14:09:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8796B82077
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KINSYY061VD9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 14:09:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8B0878212E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 14:09:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B0878212E
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="375312768"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="375312768"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 07:09:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="980753065"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="980753065"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga006.fm.intel.com with ESMTP; 16 Aug 2023 07:09:23 -0700
Received: from pelor.igk.intel.com (pelor.igk.intel.com [10.123.220.13])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 05C9934EEB;
 Wed, 16 Aug 2023 15:09:21 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: Kees Cook <keescook@chromium.org>,
	netdev@vger.kernel.org
Date: Wed, 16 Aug 2023 10:06:19 -0400
Message-Id: <20230816140623.452869-4-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230816140623.452869-1-przemyslaw.kitszel@intel.com>
References: <20230816140623.452869-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692194966; x=1723730966;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JX5ggi6RopO9eGq59k+g+sNgdBXg9+xRXxintgM5SpA=;
 b=AEiiJnrbL5Guw91XdTpF2WWpPBUW3xLWhR05Lwp2EElxHjPM1/KJki/M
 oVhLPLyfci+/WP8hK2MOdjtHRHWhYbvR3ZzkIvxGRwyspOwootF22s3sX
 Z5DRUW6SHAs27Wfu4jhr9H9J4y78Bq21arkCvgZehgv6yJGhKlItx3u1G
 pyBeqpJlwkSMB2gRnbdWdvii+S4gD6VjjeENsAhNlaLe560XzyS9qbNdR
 idN6tUxbfoxhmdd49zTI6oWNDoX4jEH2/iPjAy/uH2gNqv6nvKHnOP+7i
 38ITrf5afQIra+NOdiQymsar4lFcYG/8h1Fntf2Nu90bIUZz8Ibyqo8ln
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AEiiJnrb
Subject: [Intel-wired-lan] [PATCH net-next v3 3/7] ice: drop two params of
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Steven Zou <steven.zou@intel.com>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org
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
index 36b7044717e8..0f3d01765c05 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -432,10 +432,11 @@ static void
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
@@ -507,26 +508,17 @@ ice_lag_move_vf_node_tc(struct ice_lag *lag, u8 oldport, u8 newport,
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
@@ -757,10 +749,11 @@ static void
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
@@ -822,26 +815,17 @@ ice_lag_reclaim_vf_tc(struct ice_lag *lag, struct ice_hw *src_hw, u16 vsi_num,
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
@@ -1797,10 +1781,11 @@ static void
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
@@ -1858,26 +1843,17 @@ ice_lag_move_vf_nodes_tc_sync(struct ice_lag *lag, struct ice_hw *dest_hw,
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
index ca37252cac03..df3d6e279de6 100644
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
index 8bd26353d76a..dc24bf55ff05 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.h
+++ b/drivers/net/ethernet/intel/ice/ice_sched.h
@@ -165,10 +165,8 @@ ice_sched_add_nodes_to_layer(struct ice_port_info *pi,
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
