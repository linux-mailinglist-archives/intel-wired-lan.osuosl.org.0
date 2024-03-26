Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7160588C55F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 15:40:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA8254084A;
	Tue, 26 Mar 2024 14:40:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y-YFVeqWvQa0; Tue, 26 Mar 2024 14:40:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D0652407F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711464016;
	bh=Me4Xk10atc4PR7t/I6qZ8lgrUTQGbBFPgI6Lcgl0e0g=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vw92X45S1dNB+s2vtkwEHrP5kJDdXp4mCy9yf+n40vVJ/ePSbqA8Xh0oJ2mvEXVD7
	 oEmaktu1kH2DRjGKaFbCJ+tTjT3b7ufYO5eM31rT8bJUKLQVpIP9aYBOxXsIfRRLw6
	 Wb9dgF8AT4UEMyySMEXcHjpT2cL2uVZ+YuX0SI50iPNVEC2638gqkUFj0u+Eklm8Bf
	 Bfc0McfHn5deL/KDsBnDEEOK0ro9FUDbk4P0/iucB4UmQ72aVp17huSHWo72zPSbCE
	 IHSyi4x3jJRKMTOoSAmB/9J8+LEWC8vk1ggr46fIN/Xi14+nEGgMuSmMsXFG0lt6rz
	 BTosuYFOtpphA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D0652407F9;
	Tue, 26 Mar 2024 14:40:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BACD31BF95F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 14:40:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AF47A40828
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 14:40:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hhTGnP9_QPTy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 14:40:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 68A854083D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68A854083D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 68A854083D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 14:40:13 +0000 (UTC)
X-CSE-ConnectionGUID: bxgVNQwgR9icJnIDjCYlkw==
X-CSE-MsgGUID: goJeo0ZATg28rXPqk8E4MQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="10296808"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="10296808"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 07:40:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="16412417"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa006.jf.intel.com with ESMTP; 26 Mar 2024 07:40:10 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 0177D284E3;
 Tue, 26 Mar 2024 14:40:07 +0000 (GMT)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Mar 2024 10:30:39 -0400
Message-Id: <20240326143042.9240-4-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240326143042.9240-1-mateusz.polchlopek@intel.com>
References: <20240326143042.9240-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711464014; x=1743000014;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hmvvG+IN0jDRAlrV0IJG7funIm+rGn7Eo2MgzVmVgLE=;
 b=moPub0/8vyuc50Tgtus13f1rO8rV+7/jZ86qaYxJJgqpB+eiVzQJ+njt
 Y0wRFemftL7hJGQZd+YuF8l96nE9ozhynRhz1CkKTAaBgZ1d8pp1BQ1kh
 FxDxGBVGzXCtvBqsmY0TCjjtUdYJJzsLvCGcPL5BBF3Q2pOgT6p5l3xjU
 Ym3JXDuF2o7GiUz63y2RorrH8120F7gFeR9wK+b1c4jxem4ZVuMiXQ/sG
 AOELR3u4zfKL0shIXAqKTiD8qErHAnHJ5GFVXF6moPsMACjk8vj72qsbD
 8oV2GF0YgXQ2JZNT6kAgfp82yqCKXZD+irR5JU2vwGsQA2FwtYlaVLyOQ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=moPub0/8
Subject: [Intel-wired-lan] [PATCH net-next v8 3/6] ice: Adjust the
 VSI/Aggregator layers
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
Cc: andrew@lunn.ch, jiri@resnulli.us, michal.wilczynski@intel.com,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>, netdev@vger.kernel.org,
 lukasz.czapnik@intel.com, victor.raj@intel.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, przemyslaw.kitszel@intel.com, kuba@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Raj Victor <victor.raj@intel.com>

Adjust the VSI/Aggregator layers based on the number of logical layers
supported by the FW. Currently the VSI and Aggregator layers are
fixed based on the 9 layer scheduler tree layout. Due to performance
reasons the number of layers of the scheduler tree is changing from
9 to 5. It requires a readjustment of these VSI/Aggregator layer values.

Signed-off-by: Raj Victor <victor.raj@intel.com>
Co-developed-by: Michal Wilczynski <michal.wilczynski@intel.com>
Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sched.c | 37 +++++++++++-----------
 1 file changed, 19 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index d174a4eeb899..1ac3686328ae 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -1128,12 +1128,11 @@ u8 ice_sched_get_vsi_layer(struct ice_hw *hw)
 	 *     5 or less       sw_entry_point_layer
 	 */
 	/* calculate the VSI layer based on number of layers. */
-	if (hw->num_tx_sched_layers > ICE_VSI_LAYER_OFFSET + 1) {
-		u8 layer = hw->num_tx_sched_layers - ICE_VSI_LAYER_OFFSET;
-
-		if (layer > hw->sw_entry_point_layer)
-			return layer;
-	}
+	if (hw->num_tx_sched_layers == ICE_SCHED_9_LAYERS)
+		return hw->num_tx_sched_layers - ICE_VSI_LAYER_OFFSET;
+	else if (hw->num_tx_sched_layers == ICE_SCHED_5_LAYERS)
+		/* qgroup and VSI layers are same */
+		return hw->num_tx_sched_layers - ICE_QGRP_LAYER_OFFSET;
 	return hw->sw_entry_point_layer;
 }
 
@@ -1150,13 +1149,10 @@ u8 ice_sched_get_agg_layer(struct ice_hw *hw)
 	 *     7 or less       sw_entry_point_layer
 	 */
 	/* calculate the aggregator layer based on number of layers. */
-	if (hw->num_tx_sched_layers > ICE_AGG_LAYER_OFFSET + 1) {
-		u8 layer = hw->num_tx_sched_layers - ICE_AGG_LAYER_OFFSET;
-
-		if (layer > hw->sw_entry_point_layer)
-			return layer;
-	}
-	return hw->sw_entry_point_layer;
+	if (hw->num_tx_sched_layers == ICE_SCHED_9_LAYERS)
+		return hw->num_tx_sched_layers - ICE_AGG_LAYER_OFFSET;
+	else
+		return hw->sw_entry_point_layer;
 }
 
 /**
@@ -1510,10 +1506,11 @@ ice_sched_get_free_qparent(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 {
 	struct ice_sched_node *vsi_node, *qgrp_node;
 	struct ice_vsi_ctx *vsi_ctx;
+	u8 qgrp_layer, vsi_layer;
 	u16 max_children;
-	u8 qgrp_layer;
 
 	qgrp_layer = ice_sched_get_qgrp_layer(pi->hw);
+	vsi_layer = ice_sched_get_vsi_layer(pi->hw);
 	max_children = pi->hw->max_children[qgrp_layer];
 
 	vsi_ctx = ice_get_vsi_ctx(pi->hw, vsi_handle);
@@ -1524,6 +1521,12 @@ ice_sched_get_free_qparent(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 	if (!vsi_node)
 		return NULL;
 
+	/* If the queue group and VSI layer are same then queues
+	 * are all attached directly to VSI
+	 */
+	if (qgrp_layer == vsi_layer)
+		return vsi_node;
+
 	/* get the first queue group node from VSI sub-tree */
 	qgrp_node = ice_sched_get_first_node(pi, vsi_node, qgrp_layer);
 	while (qgrp_node) {
@@ -3199,7 +3202,7 @@ ice_sched_add_rl_profile(struct ice_port_info *pi,
 	u8 profile_type;
 	int status;
 
-	if (layer_num >= ICE_AQC_TOPO_MAX_LEVEL_NUM)
+	if (!pi || layer_num >= pi->hw->num_tx_sched_layers)
 		return NULL;
 	switch (rl_type) {
 	case ICE_MIN_BW:
@@ -3215,8 +3218,6 @@ ice_sched_add_rl_profile(struct ice_port_info *pi,
 		return NULL;
 	}
 
-	if (!pi)
-		return NULL;
 	hw = pi->hw;
 	list_for_each_entry(rl_prof_elem, &pi->rl_prof_list[layer_num],
 			    list_entry)
@@ -3446,7 +3447,7 @@ ice_sched_rm_rl_profile(struct ice_port_info *pi, u8 layer_num, u8 profile_type,
 	struct ice_aqc_rl_profile_info *rl_prof_elem;
 	int status = 0;
 
-	if (layer_num >= ICE_AQC_TOPO_MAX_LEVEL_NUM)
+	if (layer_num >= pi->hw->num_tx_sched_layers)
 		return -EINVAL;
 	/* Check the existing list for RL profile */
 	list_for_each_entry(rl_prof_elem, &pi->rl_prof_list[layer_num],
-- 
2.38.1

