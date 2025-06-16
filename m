Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DAB1ADB949
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Jun 2025 21:03:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 82624608B1;
	Mon, 16 Jun 2025 19:03:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DkkQNOAk8MSF; Mon, 16 Jun 2025 19:03:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D26F1608A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750100585;
	bh=DbQ6Z8UW7jJAudWegBR+8jTkEmioYEEzKFiNEVqPRmE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1meGmU4orZhr+az4XwzoF4YGeBJOMYu/ovP+tH5YIsIk4Um+pb8tLf+YjkiORO1cD
	 /x9wuF+yXeEYWKeYpQlIBgvPW4uhv5X54P6Inm9iwLdIXyyEUT2JZs3XTKE9+Rb4aJ
	 K3I3rq37QEi2C5/nvDoo9lt4c9Y3hHFp7t/1T9pvhspnifCtAv3L2EtqZmeOrZ0MpC
	 x+ltDhGzyEQmVt95OXiKr1y0k42b95jo149IlxQEVIy+9zR+9VBzuqh3qxsptLxyee
	 4R+Uug+juruV+4laufLDsml2jQMll69TXEUl91Q/SIY82fFLL8Gj6KOvzbO0Pp9u0p
	 AChfJhwZxqjnw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D26F1608A2;
	Mon, 16 Jun 2025 19:03:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1481C16B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 19:03:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 43E458089C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 19:02:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iSW4F7nPtTbg for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jun 2025 19:02:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8C1658087E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C1658087E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8C1658087E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 19:02:58 +0000 (UTC)
X-CSE-ConnectionGUID: 5/2a552EQpK1Y8g6r8oLRw==
X-CSE-MsgGUID: EvowRjkkRAiUn9cH6XaTFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="52122670"
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="52122670"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 12:02:56 -0700
X-CSE-ConnectionGUID: a9SZ+RSoS3OchgxIpdweog==
X-CSE-MsgGUID: a5zpPRwWRMKDwqTkd2FZKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="153513112"
Received: from dmert-mdev.jf.intel.com ([10.166.5.145])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 12:02:56 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Mon, 16 Jun 2025 13:03:20 +0200
Message-ID: <20250616110323.788970-6-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250616110323.788970-1-david.m.ertman@intel.com>
References: <20250616110323.788970-1-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750100578; x=1781636578;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2bZ2/lwrF2v7o+4RVDT5j7+eRKnfyaswaj6pAag2nPc=;
 b=nU5fUOpPAcYMf2NWJ6XQ2ICqNPTmbuJ5vas2qZyGGzJOJ4jR+N0ke+6o
 gbNMjsSyanTZSPmD23h/chheVol2NGn9tZ9R2h/adk1eri5LRtLIyALlS
 ykVc8YDP0UzHaMabx0rcr5SIsqQ3vPgNxhmyJwDQjbE9bFQ41gILSY1Qm
 7VLsSsZfZn6NrEDxSTtNPCQHveh5TAsyMWGFK06imKLhErSgLTb4a5qxY
 oy8CiqMybNSrIc6fmxB1t25o7HTFXffmmvDF39K9EQpWSoxcrGNNIRMEQ
 EAQlh3Zt14R3axjGCNG7Lqj6bTPp+U5WeIuRoTJk75DBTwWv9wt6ZAWVs
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nU5fUOpP
Subject: [Intel-wired-lan] [PATCH iwl-next v4 5/8] [PATCH iwl-next v3 5/8]
 ice: Cleanup variable initialization in LAG
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

code

In preparation for implementing SRIOV Active-Active LAG support,
cleanup several unneeded variable initializations in declaration
blocks.

Also move a couple of variable initializations into declaration
block that shouold be there.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lag.c | 54 ++++++++----------------
 1 file changed, 17 insertions(+), 37 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 0c6dbf712897..f73536d696b4 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -234,13 +234,12 @@ ice_lag_cfg_fltr(struct ice_lag *lag, u32 act, u16 recipe_id, u16 *rule_idx,
 		 u8 direction, bool add)
 {
 	struct ice_sw_rule_lkup_rx_tx *s_rule;
+	struct ice_hw *hw = &lag->pf->hw;
 	u16 s_rule_sz, vsi_num;
-	struct ice_hw *hw;
 	u8 *eth_hdr;
 	u32 opc;
 	int err;
 
-	hw = &lag->pf->hw;
 	vsi_num = ice_get_hw_vsi_num(hw, 0);
 
 	s_rule_sz = ICE_SW_RULE_RX_TX_ETH_HDR_SIZE(s_rule);
@@ -384,12 +383,10 @@ ice_lag_cfg_pf_fltrs(struct ice_lag *lag, void *ptr)
 static void
 ice_lag_cfg_cp_fltr(struct ice_lag *lag, bool add)
 {
-	struct ice_sw_rule_lkup_rx_tx *s_rule = NULL;
-	struct ice_vsi *vsi;
+	struct ice_sw_rule_lkup_rx_tx *s_rule;
+	struct ice_vsi *vsi = lag->pf->vsi[0];
 	u16 buf_len, opc;
 
-	vsi = lag->pf->vsi[0];
-
 	buf_len = ICE_SW_RULE_RX_TX_HDR_SIZE(s_rule, ICE_TRAIN_PKT_LEN);
 	s_rule = kzalloc(buf_len, GFP_KERNEL);
 	if (!s_rule) {
@@ -477,12 +474,11 @@ static u16
 ice_lag_qbuf_recfg(struct ice_hw *hw, struct ice_aqc_cfg_txqs_buf *qbuf,
 		   u16 vsi_num, u16 numq, u8 tc)
 {
+	struct ice_pf *pf = hw->back;
 	struct ice_q_ctx *q_ctx;
 	u16 qid, count = 0;
-	struct ice_pf *pf;
 	int i;
 
-	pf = hw->back;
 	for (i = 0; i < numq; i++) {
 		q_ctx = ice_get_lan_q_ctx(hw, vsi_num, tc, i);
 		if (!q_ctx) {
@@ -898,13 +894,12 @@ ice_lag_reclaim_vf_tc(struct ice_lag *lag, struct ice_hw *src_hw, u16 vsi_num,
 	u16 numq, valq, num_moved, qbuf_size;
 	u16 buf_size = __struct_size(buf);
 	struct ice_aqc_cfg_txqs_buf *qbuf;
+	struct ice_hw *hw = &lag->pf->hw;
 	struct ice_sched_node *n_prt;
 	__le32 teid, parent_teid;
 	struct ice_vsi_ctx *ctx;
-	struct ice_hw *hw;
 	u32 tmp_teid;
 
-	hw = &lag->pf->hw;
 	ctx = ice_get_vsi_ctx(hw, vsi_num);
 	if (!ctx) {
 		dev_warn(dev, "Unable to locate VSI context for LAG reclaim\n");
@@ -1179,11 +1174,8 @@ ice_lag_set_swid(u16 primary_swid, struct ice_lag *local_lag,
  */
 static void ice_lag_primary_swid(struct ice_lag *lag, bool link)
 {
-	struct ice_hw *hw;
-	u16 swid;
-
-	hw = &lag->pf->hw;
-	swid = hw->port_info->sw_id;
+	struct ice_hw *hw = &lag->pf->hw;
+	u16 swid = hw->port_info->sw_id;
 
 	if (ice_share_res(hw, ICE_AQC_RES_TYPE_SWID, link, swid))
 		dev_warn(ice_pf_to_dev(lag->pf), "Failure to set primary interface shared status\n");
@@ -1196,12 +1188,10 @@ static void ice_lag_primary_swid(struct ice_lag *lag, bool link)
  */
 static void ice_lag_add_prune_list(struct ice_lag *lag, struct ice_pf *event_pf)
 {
-	u16 num_vsi, rule_buf_sz, vsi_list_id, event_vsi_num, prim_vsi_idx;
-	struct ice_sw_rule_vsi_list *s_rule = NULL;
+	u16 rule_buf_sz, vsi_list_id, event_vsi_num, prim_vsi_idx, num_vsi = 1;
+	struct ice_sw_rule_vsi_list *s_rule;
 	struct device *dev;
 
-	num_vsi = 1;
-
 	dev = ice_pf_to_dev(lag->pf);
 	event_vsi_num = event_pf->vsi[0]->vsi_num;
 	prim_vsi_idx = lag->pf->vsi[0]->idx;
@@ -1237,12 +1227,10 @@ static void ice_lag_add_prune_list(struct ice_lag *lag, struct ice_pf *event_pf)
  */
 static void ice_lag_del_prune_list(struct ice_lag *lag, struct ice_pf *event_pf)
 {
-	u16 num_vsi, vsi_num, vsi_idx, rule_buf_sz, vsi_list_id;
-	struct ice_sw_rule_vsi_list *s_rule = NULL;
+	u16 vsi_num, vsi_idx, rule_buf_sz, vsi_list_id, num_vsi = 1;
+	struct ice_sw_rule_vsi_list *s_rule;
 	struct device *dev;
 
-	num_vsi = 1;
-
 	dev = ice_pf_to_dev(lag->pf);
 	vsi_num = event_pf->vsi[0]->vsi_num;
 	vsi_idx = lag->pf->vsi[0]->idx;
@@ -1665,11 +1653,9 @@ static void ice_lag_chk_disabled_bond(struct ice_lag *lag, void *ptr)
  */
 static void ice_lag_disable_sriov_bond(struct ice_lag *lag)
 {
-	struct ice_netdev_priv *np;
-	struct ice_pf *pf;
+	struct ice_netdev_priv *np = netdev_priv(lag->netdev);
+	struct ice_pf *pf = np->vsi->back;
 
-	np = netdev_priv(lag->netdev);
-	pf = np->vsi->back;
 	ice_clear_feature_support(pf, ICE_F_SRIOV_LAG);
 }
 
@@ -1838,10 +1824,8 @@ ice_lag_event_handler(struct notifier_block *notif_blk, unsigned long event,
  */
 static int ice_register_lag_handler(struct ice_lag *lag)
 {
+	struct notifier_block *notif_blk = &lag->notif_block;
 	struct device *dev = ice_pf_to_dev(lag->pf);
-	struct notifier_block *notif_blk;
-
-	notif_blk = &lag->notif_block;
 
 	if (!notif_blk->notifier_call) {
 		notif_blk->notifier_call = ice_lag_event_handler;
@@ -1861,10 +1845,9 @@ static int ice_register_lag_handler(struct ice_lag *lag)
  */
 static void ice_unregister_lag_handler(struct ice_lag *lag)
 {
+	struct notifier_block *notif_blk = &lag->notif_block;
 	struct device *dev = ice_pf_to_dev(lag->pf);
-	struct notifier_block *notif_blk;
 
-	notif_blk = &lag->notif_block;
 	if (notif_blk->notifier_call) {
 		unregister_netdevice_notifier(notif_blk);
 		dev_dbg(dev, "LAG event handler unregistered\n");
@@ -1926,13 +1909,12 @@ ice_lag_move_vf_nodes_tc_sync(struct ice_lag *lag, struct ice_hw *dest_hw,
 	u16 numq, valq, num_moved, qbuf_size;
 	u16 buf_size = __struct_size(buf);
 	struct ice_aqc_cfg_txqs_buf *qbuf;
+	struct ice_hw *hw = &lag->pf->hw;
 	struct ice_sched_node *n_prt;
 	__le32 teid, parent_teid;
 	struct ice_vsi_ctx *ctx;
-	struct ice_hw *hw;
 	u32 tmp_teid;
 
-	hw = &lag->pf->hw;
 	ctx = ice_get_vsi_ctx(hw, vsi_num);
 	if (!ctx) {
 		dev_warn(dev, "LAG rebuild failed after reset due to VSI Context failure\n");
@@ -2123,9 +2105,7 @@ int ice_init_lag(struct ice_pf *pf)
  */
 void ice_deinit_lag(struct ice_pf *pf)
 {
-	struct ice_lag *lag;
-
-	lag = pf->lag;
+	struct ice_lag *lag = pf->lag;
 
 	if (!lag)
 		return;
-- 
2.49.0

