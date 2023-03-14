Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C64F26B8FFD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Mar 2023 11:27:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6083840A4B;
	Tue, 14 Mar 2023 10:27:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6083840A4B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678789644;
	bh=Rkk8NmNOKqmcWPd8R01TJ5LnUlQWKSeGhcdNke2sYHU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BZV25318NsVOMGIJa2so/VeL1sfs1FF/MD9hKVNI6nmZznaeX+WB5rnHf742w9aHZ
	 o+l2gNas4x3NFrvkDiiQZdYsqwUa4Ja2I7GofjGkmvykprJKXklQ3e638mIpHgmp7l
	 stKO8NyqnhGBMUrC+tpAxRNfxUZU/Zw9s7NLXoaa+ytod1P6Plx60XJDhyf0tz1O1T
	 4W06YQ1h+3J3bxii5wLVY0EAYpVBbQRGUkbgsZ6iy8gBusBzsJC73FSdAc0g+bN+6H
	 GXTThsKKrYLkz4LH7VFuKtHfS0PvQfF/hoHGU1saQOPYJyV+YlF9F72srMAMROZlzs
	 0gA2OdutrMuKg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R6gj-wINlume; Tue, 14 Mar 2023 10:27:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2DA5F40525;
	Tue, 14 Mar 2023 10:27:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2DA5F40525
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8A4791BF33D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 10:27:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D9EAC408ED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 10:26:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D9EAC408ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BBSIvER1jYBK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Mar 2023 10:26:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C9AF40525
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5C9AF40525
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 10:26:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="325749561"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="325749561"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 03:25:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="656292583"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="656292583"
Received: from hextor.igk.intel.com ([10.123.220.6])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 03:25:32 -0700
From: Michal Wilczynski <michal.wilczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 14 Mar 2023 11:25:11 +0100
Message-Id: <20230314102514.46636-3-michal.wilczynski@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230314102514.46636-1-michal.wilczynski@intel.com>
References: <20230314102514.46636-1-michal.wilczynski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678789616; x=1710325616;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VB4peKre0mss4bKukCYJk8ToNGQpN0e8nPohOKBTlUQ=;
 b=fioW4oyt7GQg6anOFnNn3LmK2RYQx3k0WhK5buQY9Du1PwkEvOhyhJDM
 XWAhwXTLhxc6Tsw5nIYR6/lvyz6skrT2a3xXnqyxhxi92cBpvBM4OEdt6
 HpPL6FppcL4lIPMvtlakXSS6NWCQNDo0EOP2Tn68SXSHUpwuxCYInEu/r
 VoFhigcZkH/8BtgIzXbfBWgjJKXYqGFzhm6O6EjbUmpkQ8MWB0Jlga9pQ
 YJJs7IxKqpxRPJ61z3KWXaHUB1OYsXwfJrRLXCS5qlo4r6uq34xBfxgjL
 emXvXYp9qCLi2IfyP7NotlAJ42QuYnKAltOApn1xOI90jv7/XJXSxb+nm
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fioW4oyt
Subject: [Intel-wired-lan] [PATCH net-next v10 2/5] ice: Adjust the
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
Cc: Raj Victor <victor.raj@intel.com>
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
 drivers/net/ethernet/intel/ice/ice_sched.c | 34 +++++++++++-----------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index 4eca8d195ef0..c1b2f1a181c6 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -1132,12 +1132,11 @@ static u8 ice_sched_get_vsi_layer(struct ice_hw *hw)
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
 
@@ -1154,12 +1153,8 @@ static u8 ice_sched_get_agg_layer(struct ice_hw *hw)
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
 
@@ -1515,10 +1510,11 @@ ice_sched_get_free_qparent(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
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
@@ -1529,6 +1525,12 @@ ice_sched_get_free_qparent(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
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
@@ -3210,7 +3212,7 @@ ice_sched_add_rl_profile(struct ice_port_info *pi,
 	u8 profile_type;
 	int status;
 
-	if (layer_num >= ICE_AQC_TOPO_MAX_LEVEL_NUM)
+	if (!pi || layer_num >= pi->hw->num_tx_sched_layers)
 		return NULL;
 	switch (rl_type) {
 	case ICE_MIN_BW:
@@ -3226,8 +3228,6 @@ ice_sched_add_rl_profile(struct ice_port_info *pi,
 		return NULL;
 	}
 
-	if (!pi)
-		return NULL;
 	hw = pi->hw;
 	list_for_each_entry(rl_prof_elem, &pi->rl_prof_list[layer_num],
 			    list_entry)
@@ -3457,7 +3457,7 @@ ice_sched_rm_rl_profile(struct ice_port_info *pi, u8 layer_num, u8 profile_type,
 	struct ice_aqc_rl_profile_info *rl_prof_elem;
 	int status = 0;
 
-	if (layer_num >= ICE_AQC_TOPO_MAX_LEVEL_NUM)
+	if (layer_num >= pi->hw->num_tx_sched_layers)
 		return -EINVAL;
 	/* Check the existing list for RL profile */
 	list_for_each_entry(rl_prof_elem, &pi->rl_prof_list[layer_num],
-- 
2.37.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
