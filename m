Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D01AAD287E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Jun 2025 23:11:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2441D61562;
	Mon,  9 Jun 2025 21:11:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C7hMGoWlmFML; Mon,  9 Jun 2025 21:11:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6769461553
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749503476;
	bh=T/xMR8p8MbAsiwd4ov6LeHO1IrJRsqOLrz5YhntevOU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rf+f0Y01ty+EwVOh/u6yf5OjbYqQhERAcpg8hdNaZM+PuEXoLSPLmKTyCH9HaaXBA
	 eQ4SMBl4u3IW2qgG4qCIw1TZEUVzRumagp2VCxR2eR2eHLc64igmBYRk8/hkORD+C3
	 ISAwbYqe2n3hHn+uSN4Hs6+nziz+xkYhd5R0DZiJxK+Jt7cUiFyJ1MU+8/GodDDKtM
	 BU4WTPCl9v0cuj1yj+iRlEGN+K8L4qbQ6SgQbhf6fWC62viVWKxSCAM6ZM+olD1YZr
	 YYS2LRn6E2m3Of0CtvzSQOdQurR2v8dDUsUgcSiZ1qNc5yZbl3e5Cna8MYRjSZG+UC
	 UTuyhD6CYxC5A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6769461553;
	Mon,  9 Jun 2025 21:11:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 59A981A4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 21:11:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 735DF41D97
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 21:11:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b24rTgHAZ_V2 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Jun 2025 21:11:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BBCF541DBC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBCF541DBC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BBCF541DBC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 21:11:10 +0000 (UTC)
X-CSE-ConnectionGUID: 4lK7rKpWQrWyuZn/UHT0KA==
X-CSE-MsgGUID: LVZXmAB7SReK4kWeQniNEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="50703106"
X-IronPort-AV: E=Sophos;i="6.16,223,1744095600"; d="scan'208";a="50703106"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 14:11:08 -0700
X-CSE-ConnectionGUID: Q841yZ88Qa6Y239CbI8u8Q==
X-CSE-MsgGUID: 6lFc2R1rTlO6FrsNUtPF/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,223,1744095600"; d="scan'208";a="146540446"
Received: from dmert-mdev.jf.intel.com ([10.166.5.145])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 14:11:08 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Mon,  9 Jun 2025 15:11:37 +0200
Message-ID: <20250609131141.758051-6-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250609131141.758051-1-david.m.ertman@intel.com>
References: <20250609131141.758051-1-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749503471; x=1781039471;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nQSyt5cTHUGrG0sXSUL8h309qif6mygJyvBao5iN/wM=;
 b=esxLR7mHEdCYY1XVDyfhtMYHsKirwuXrABf8SekTCYp1b1a/eRrreehi
 bG07FblpfbtynHxNlXPx0TWIiVlH5fg+Q/4RPYXjfXYpsa5sIc8IQmSr5
 2Fa8nWb9oC+lzVCULH3Faa5HblAA3+dJxEFTb78SWk1aceidov/LUcRyp
 fI9Cy7PUA0DD58eA1OmXUjcKz8b6bSHVvgiO7fbaEo5UB6WHNqH9uFa5/
 s6pbvpCeuS61QMusXAvwKkCGVZbtStkwzvF1Ku6Zj+4FBFHOJGnasRX1d
 PM31YzEwLtA4QHI7Wp0b+m1W9qY+9MNxoVBiaJFjyObkkeDWDB7pVXS8o
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=esxLR7mH
Subject: [Intel-wired-lan] [PATCH iwl-next v3 5/8] ice: Cleanup variable
 initialization in LAG code
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
index 182b3d6964e6..40d23ed170ea 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -212,13 +212,12 @@ ice_lag_cfg_fltr(struct ice_lag *lag, u32 act, u16 recipe_id, u16 *rule_idx,
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
@@ -362,12 +361,10 @@ ice_lag_cfg_pf_fltrs(struct ice_lag *lag, void *ptr)
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
@@ -455,12 +452,11 @@ static u16
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
@@ -876,13 +872,12 @@ ice_lag_reclaim_vf_tc(struct ice_lag *lag, struct ice_hw *src_hw, u16 vsi_num,
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

