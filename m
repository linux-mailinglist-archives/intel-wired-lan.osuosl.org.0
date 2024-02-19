Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFD285A0D6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Feb 2024 11:21:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1442E40993;
	Mon, 19 Feb 2024 10:21:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5I8JcfI4qBSn; Mon, 19 Feb 2024 10:21:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F7FB40904
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708338085;
	bh=Me4Xk10atc4PR7t/I6qZ8lgrUTQGbBFPgI6Lcgl0e0g=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AjKmJJ36Jmqv0iFH32QrOE12jbFI9thT/ePeNhmPlTmSXEGQWoNiGgIRARPtmTN1R
	 Cx1DTTKx5QxLX4s+rT6j/JsqSgTf/d+XhoDoBXjBy3Fll1wd9PeWX7W8CoVgVB7EA/
	 Opvk4z+F3uoGxn/9Oe4Pl96avjMMfpxXBSnarOLXkysGCXU/ZVVUPReS/S3XqkC9KN
	 u+GQ+3tgDK4gW0TgS6Hz8x5gyR8JkcZaMF/T/PMphxBDlBPngNLQaQedlTrDCkjjkB
	 JqAha6JdIt/bmiHJ55+WkJmIxB4TFQAv0vhZjFtBEWHS911lnymyJZmJKGn9tt8M1R
	 Q/cRQV0iHnfkA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0F7FB40904;
	Mon, 19 Feb 2024 10:21:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BB0491BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 10:21:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A420740707
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 10:21:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8ypH4SU4kDOi for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Feb 2024 10:21:22 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 19 Feb 2024 10:21:21 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D179F403C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D179F403C8
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D179F403C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 10:21:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10988"; a="2514667"
X-IronPort-AV: E=Sophos;i="6.06,170,1705392000"; 
   d="scan'208";a="2514667"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2024 02:14:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,170,1705392000"; 
   d="scan'208";a="9107385"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa003.jf.intel.com with ESMTP; 19 Feb 2024 02:14:11 -0800
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 2049A125BD;
 Mon, 19 Feb 2024 10:14:09 +0000 (GMT)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 19 Feb 2024 05:05:53 -0500
Message-Id: <20240219100555.7220-3-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240219100555.7220-1-mateusz.polchlopek@intel.com>
References: <20240219100555.7220-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708338082; x=1739874082;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hmvvG+IN0jDRAlrV0IJG7funIm+rGn7Eo2MgzVmVgLE=;
 b=Q8YQFnxZHDTTO1e20B0HJY1etc4c/fQYqGNN4gHLpTiAe4NzjZYrtZo+
 DLbF6vATLNVXPRgW26oJrsucqeYbXrbf77hCeOzkaY5otbHBrWnFYztKK
 dBzVYtuEoSwZgfs3xqZkM4lR8LR2cVKyl+K3I1d9TGiIWYvPOT3DD6+4h
 gEvXA6ySEGe6oaI6eLoltAUAoemAUHnXXBh6Ge/RtRpoPrvGqzYo1jxn4
 ohcQF1x+nQ22efpDVbuaF6xO0jgCtlNj29TJErDfKFqszZ5NpJAc2lclK
 uT8asX1XuDneKGI+GnXDDbsbzV1M964nLrwRbuh+iuZmcT+vx/gK9hJoa
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q8YQFnxZ
Subject: [Intel-wired-lan] [PATCH iwl-next v4 2/5] ice: Adjust the
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
Cc: Michal Wilczynski <michal.wilczynski@intel.com>, netdev@vger.kernel.org,
 Raj Victor <victor.raj@intel.com>, horms@kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 przemyslaw.kitszel@intel.com
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

