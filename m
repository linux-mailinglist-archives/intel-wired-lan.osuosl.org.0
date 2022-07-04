Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 063B6565573
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Jul 2022 14:34:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9D23040607;
	Mon,  4 Jul 2022 12:34:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D23040607
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656938058;
	bh=ULVUlO+X4rRlBjISnPFtERIIbxNT0T0LRHpJOe6M1lI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MUuB4aIQbV69M8lf0LCv1VuruYq9wV4ysZsdzUG5k84N5Ac4DJTuAo8/LzijXct+e
	 Ae+6+5+6IIyOsPftE0pPlI27c/As2gtx6Od4gHaDaHdmn0I81oa5aYQYfP4v+7OGEp
	 kY4uLE8EK1sCb4ErbMWuoPEOmxOHnm01+ZY4cGAEiFEv4OXHkhXykhUrS/EjRMEl3R
	 ygchQfRJnH3ke7IFL1botdCDt95bNMHXVm83Ie+ofKk4Kc3kM7YikuKB0XgLDASRO/
	 IpiCw0+mivwYNaIl2XFCrJ7+uxDXjWUszk8eIqFdSoXkVpuqBCDk17vF6kMWmmJzbC
	 86XNg9cYujOhg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5uwCNIGadMLp; Mon,  4 Jul 2022 12:34:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6F402405F7;
	Mon,  4 Jul 2022 12:34:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6F402405F7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0D63A1BF368
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 12:34:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 26F7560E09
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 12:34:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 26F7560E09
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wyECx-Ny90nK for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Jul 2022 12:34:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A867C60E79
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A867C60E79
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 12:34:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10397"; a="369444158"
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="369444158"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2022 05:33:14 -0700
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="567212603"
Received: from moradin.igk.intel.com ([10.123.220.12])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2022 05:33:13 -0700
From: Michal Wilczynski <michal.wilczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 Jul 2022 14:32:51 +0200
Message-Id: <20220704123252.2962020-3-michal.wilczynski@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220704123252.2962020-1-michal.wilczynski@intel.com>
References: <20220704123252.2962020-1-michal.wilczynski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656938044; x=1688474044;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/yEchoS13uSP4a3CnIsgpAVg1zG+UI4pofXePwBwyaE=;
 b=AGjXG2Bcz9PrX3ah1pdW0qT+KWxn/0uS9yxk/NKsjC6L9SeN6x3C+w6V
 5CTRw8TnSdrqxD7VLExFij/bHGGbj60D7lrbhdbtsW2YWVw1924TI7BO1
 k9iJNBnGXbh1Hnf8CsbdtmogjvDInDzXg1X8F6auSHoqJkr0rZI9Ifujz
 qhV8oFKEXpixDL4in447ydbtuH6/Ljnu8O2C6w0aSF1w3tpnawhsi4dLW
 lWoa60nZOGaf5MkSltc9MgUagk+ThcE/J+WNEJbnz0R3ri1Iht+rLI2iH
 b1GrUhmspHwnKywvlKD32T+z5Ank6JrawBX8LUHH9P5tRX/DUjKEaGRGf
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AGjXG2Bc
Subject: [Intel-wired-lan] [PATCH net-next v4 2/3] ice: Adjust the
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
Cc: Raj Victor <victor.raj@intel.com>,
 Michal Wilczynski <michal.wilczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Raj Victor <victor.raj@intel.com>

Adjust the VSI/Aggregator layers based on the number of logical layers
supported by the FW. Currently the VSI and aggregator layers are
fixed based on the 9 layer scheduler tree layout. Due to performance
reasons the number of layers of the scheduler tree is changing from
9 to 5. It requires a readjustment of these VSI/Aggregator layer values.

Signed-off-by: Raj Victor <victor.raj@intel.com>
Co-developed-by: Michal Wilczynski <michal.wilczynski@intel.com>
Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sched.c | 35 +++++++++++-----------
 1 file changed, 18 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index 7947223536e3..4d9cd7aa9db4 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -1102,12 +1102,11 @@ static u8 ice_sched_get_vsi_layer(struct ice_hw *hw)
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
+	if (hw->num_tx_sched_layers == ICE_SCHED_5_LAYERS)
+		/* qgroup and VSI layers are same */
+		return hw->num_tx_sched_layers - ICE_QGRP_LAYER_OFFSET;
 	return hw->sw_entry_point_layer;
 }
 
@@ -1124,12 +1123,8 @@ static u8 ice_sched_get_agg_layer(struct ice_hw *hw)
 	 *     7 or less       sw_entry_point_layer
 	 */
 	/* calculate the aggregator layer based on number of layers. */
-	if (hw->num_tx_sched_layers > ICE_AGG_LAYER_OFFSET + 1) {
-		u8 layer = hw->num_tx_sched_layers - ICE_AGG_LAYER_OFFSET;
-
-		if (layer > hw->sw_entry_point_layer)
-			return layer;
-	}
+	if (hw->num_tx_sched_layers == ICE_SCHED_9_LAYERS)
+		return hw->num_tx_sched_layers - ICE_AGG_LAYER_OFFSET;
 	return hw->sw_entry_point_layer;
 }
 
@@ -1485,10 +1480,11 @@ ice_sched_get_free_qparent(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
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
@@ -1499,6 +1495,12 @@ ice_sched_get_free_qparent(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 	if (!vsi_node)
 		return NULL;
 
+	/* If the queue group and vsi layer are same then queues
+	 * are all attached directly to VSI
+	 */
+	if (qgrp_layer == vsi_layer)
+		return vsi_node;
+
 	/* get the first queue group node from VSI sub-tree */
 	qgrp_node = ice_sched_get_first_node(pi, vsi_node, qgrp_layer);
 	while (qgrp_node) {
@@ -3178,8 +3180,9 @@ ice_sched_add_rl_profile(struct ice_port_info *pi,
 	u8 profile_type;
 	int status;
 
-	if (layer_num >= ICE_AQC_TOPO_MAX_LEVEL_NUM)
+	if (!pi || layer_num >= pi->hw->num_tx_sched_layers)
 		return NULL;
+
 	switch (rl_type) {
 	case ICE_MIN_BW:
 		profile_type = ICE_AQC_RL_PROFILE_TYPE_CIR;
@@ -3194,8 +3197,6 @@ ice_sched_add_rl_profile(struct ice_port_info *pi,
 		return NULL;
 	}
 
-	if (!pi)
-		return NULL;
 	hw = pi->hw;
 	list_for_each_entry(rl_prof_elem, &pi->rl_prof_list[layer_num],
 			    list_entry)
@@ -3425,7 +3426,7 @@ ice_sched_rm_rl_profile(struct ice_port_info *pi, u8 layer_num, u8 profile_type,
 	struct ice_aqc_rl_profile_info *rl_prof_elem;
 	int status = 0;
 
-	if (layer_num >= ICE_AQC_TOPO_MAX_LEVEL_NUM)
+	if (layer_num >= pi->hw->num_tx_sched_layers)
 		return -EINVAL;
 	/* Check the existing list for RL profile */
 	list_for_each_entry(rl_prof_elem, &pi->rl_prof_list[layer_num],
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
