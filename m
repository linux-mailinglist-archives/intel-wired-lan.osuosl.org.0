Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D1C621EC0
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Nov 2022 22:57:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BEF67416C8;
	Tue,  8 Nov 2022 21:57:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BEF67416C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667944638;
	bh=qfCcsaaopg7+NlY3P0vYBf+5JVDC4Lg3hJ4UhZHaCFg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=3I5H6ZFQf0lEvFH+sH1pmBgGV2dijeqaBwBVywtNMLLvCUAK91N60Y2kbqWBiNIHM
	 T5/vSGTL7j+geIieoal9o2bFF+1/r0kzjnk9SX1fD04RYSJFQ+DtpKuFpuMHG6VC3O
	 NIN+1mko9lnpTihblF72oiYZYRK72awBKFfq0Zv4oxOBjIQMMvCTXp6RaabW/Y6uIc
	 dVhf67SuLyBqUn77XE05CgaDvfkDKMvb/x4EIUWMIt4RMD8KdnME3ja0WRGYHRiRQN
	 7AWANxpjxi4MSM9190ytyX4HleJPJK89h1WsNoQac5Gu0H8XOlalrHIvcL2xaJArU+
	 P9MwrTmBE6FfA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UoGHHBFpND4S; Tue,  8 Nov 2022 21:57:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 68DEB41682;
	Tue,  8 Nov 2022 21:57:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68DEB41682
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 631741BF5EA
 for <intel-wired-lan@osuosl.org>; Tue,  8 Nov 2022 21:57:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 49311404F0
 for <intel-wired-lan@osuosl.org>; Tue,  8 Nov 2022 21:57:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 49311404F0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YfQPlgJTgcsn for <intel-wired-lan@osuosl.org>;
 Tue,  8 Nov 2022 21:57:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4465640502
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4465640502
 for <intel-wired-lan@osuosl.org>; Tue,  8 Nov 2022 21:57:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="375091836"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="375091836"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 13:57:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="667748327"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="667748327"
Received: from anambiarhost.jf.intel.com ([10.166.29.163])
 by orsmga008.jf.intel.com with ESMTP; 08 Nov 2022 13:57:10 -0800
From: Amritha Nambiar <amritha.nambiar@intel.com>
To: intel-wired-lan@osuosl.org
Date: Tue, 08 Nov 2022 14:08:12 -0800
Message-ID: <166794529250.21494.1449975741002040158.stgit@anambiarhost.jf.intel.com>
User-Agent: StGit/unknown-version
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667944631; x=1699480631;
 h=subject:from:to:cc:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XVb4cQI4uroI6cMfwLjv0rtF4gScvdHZrdK3DczNsvE=;
 b=Suqb3XLZ/2ix9exuP/gafNIJlZV2jNmOtyZCE+gOheRE/dNTF6Osm/bf
 pnbue9vuRmY/5RWBIBh6a/zd3MDpX3g97ErBm47XhIaOmu3NJuiWjN9D+
 V3QwIAQkY/hV3RTfAuBLx6WZQGRYdriFlfEkj5GVyBxU+q3GHOgItB7Gi
 LJvBWfE2C5wULUsbiP/OViXsGgL/wLEaAw5s1Hd7l9LknX34L2XOf+vfe
 60Xc7mXZrhZiEaT/njACQMNPubYUBj9Md52krZC+ueBEPiKlafCoA04dK
 dydPlAwV2nxyL5Uk87c3WdB96cZpNSr1LABcw8KBbbnNnLLgY/Ijp8VPJ
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Suqb3XLZ
Subject: [Intel-wired-lan] [net-next PATCH v1] ice: Support drop action
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently the drop action is supported only in switchdev mode.
Add support for offloading receive filters with action drop
in ADQ/non-ADQ modes. This is in addition to other actions
such as forwarding to a VSI (ADQ) or a queue (ADQ/non-ADQ).

Also renamed 'ch_vsi' to 'dest_vsi' as it is valid for multiple
actions such as forward to vsi/queue which may/may not create a
channel vsi.

Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tc_lib.c |   50 ++++++++++++++++-----------
 drivers/net/ethernet/intel/ice/ice_tc_lib.h |   10 +++++
 2 files changed, 40 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index faba0f857cd9..80706f7330f4 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -792,7 +792,7 @@ static struct ice_vsi *
 ice_tc_forward_action(struct ice_vsi *vsi, struct ice_tc_flower_fltr *tc_fltr)
 {
 	struct ice_rx_ring *ring = NULL;
-	struct ice_vsi *ch_vsi = NULL;
+	struct ice_vsi *dest_vsi = NULL;
 	struct ice_pf *pf = vsi->back;
 	struct device *dev;
 	u32 tc_class;
@@ -810,7 +810,7 @@ ice_tc_forward_action(struct ice_vsi *vsi, struct ice_tc_flower_fltr *tc_fltr)
 			return ERR_PTR(-EOPNOTSUPP);
 		}
 		/* Locate ADQ VSI depending on hw_tc number */
-		ch_vsi = vsi->tc_map_vsi[tc_class];
+		dest_vsi = vsi->tc_map_vsi[tc_class];
 		break;
 	case ICE_FWD_TO_Q:
 		/* Locate the Rx queue */
@@ -824,7 +824,7 @@ ice_tc_forward_action(struct ice_vsi *vsi, struct ice_tc_flower_fltr *tc_fltr)
 		/* Determine destination VSI even though the action is
 		 * FWD_TO_QUEUE, because QUEUE is associated with VSI
 		 */
-		ch_vsi = tc_fltr->dest_vsi;
+		dest_vsi = tc_fltr->dest_vsi;
 		break;
 	default:
 		dev_err(dev,
@@ -832,13 +832,13 @@ ice_tc_forward_action(struct ice_vsi *vsi, struct ice_tc_flower_fltr *tc_fltr)
 			tc_fltr->action.fltr_act);
 		return ERR_PTR(-EINVAL);
 	}
-	/* Must have valid ch_vsi (it could be main VSI or ADQ VSI) */
-	if (!ch_vsi) {
+	/* Must have valid dest_vsi (it could be main VSI or ADQ VSI) */
+	if (!dest_vsi) {
 		dev_err(dev,
 			"Unable to add filter because specified destination VSI doesn't exist\n");
 		return ERR_PTR(-EINVAL);
 	}
-	return ch_vsi;
+	return dest_vsi;
 }
 
 /**
@@ -860,7 +860,7 @@ ice_add_tc_flower_adv_fltr(struct ice_vsi *vsi,
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
 	u32 flags = tc_fltr->flags;
-	struct ice_vsi *ch_vsi;
+	struct ice_vsi *dest_vsi;
 	struct device *dev;
 	u16 lkups_cnt = 0;
 	u16 l4_proto = 0;
@@ -883,9 +883,11 @@ ice_add_tc_flower_adv_fltr(struct ice_vsi *vsi,
 	}
 
 	/* validate forwarding action VSI and queue */
-	ch_vsi = ice_tc_forward_action(vsi, tc_fltr);
-	if (IS_ERR(ch_vsi))
-		return PTR_ERR(ch_vsi);
+	if (ice_is_forward_action(tc_fltr->action.fltr_act)) {
+		dest_vsi = ice_tc_forward_action(vsi, tc_fltr);
+		if (IS_ERR(dest_vsi))
+			return PTR_ERR(dest_vsi);
+	}
 
 	lkups_cnt = ice_tc_count_lkups(flags, headers, tc_fltr);
 	list = kcalloc(lkups_cnt, sizeof(*list), GFP_ATOMIC);
@@ -904,7 +906,7 @@ ice_add_tc_flower_adv_fltr(struct ice_vsi *vsi,
 
 	switch (tc_fltr->action.fltr_act) {
 	case ICE_FWD_TO_VSI:
-		rule_info.sw_act.vsi_handle = ch_vsi->idx;
+		rule_info.sw_act.vsi_handle = dest_vsi->idx;
 		rule_info.priority = ICE_SWITCH_FLTR_PRIO_VSI;
 		rule_info.sw_act.src = hw->pf_id;
 		rule_info.rx = true;
@@ -915,7 +917,7 @@ ice_add_tc_flower_adv_fltr(struct ice_vsi *vsi,
 	case ICE_FWD_TO_Q:
 		/* HW queue number in global space */
 		rule_info.sw_act.fwd_id.q_id = tc_fltr->action.fwd.q.hw_queue;
-		rule_info.sw_act.vsi_handle = ch_vsi->idx;
+		rule_info.sw_act.vsi_handle = dest_vsi->idx;
 		rule_info.priority = ICE_SWITCH_FLTR_PRIO_QUEUE;
 		rule_info.sw_act.src = hw->pf_id;
 		rule_info.rx = true;
@@ -923,14 +925,15 @@ ice_add_tc_flower_adv_fltr(struct ice_vsi *vsi,
 			tc_fltr->action.fwd.q.queue,
 			tc_fltr->action.fwd.q.hw_queue, lkups_cnt);
 		break;
-	default:
-		rule_info.sw_act.flag |= ICE_FLTR_TX;
-		/* In case of Tx (LOOKUP_TX), src needs to be src VSI */
-		rule_info.sw_act.src = vsi->idx;
-		/* 'Rx' is false, direction of rule(LOOKUPTRX) */
-		rule_info.rx = false;
+	case ICE_DROP_PACKET:
+		rule_info.sw_act.flag |= ICE_FLTR_RX;
+		rule_info.sw_act.src = hw->pf_id;
+		rule_info.rx = true;
 		rule_info.priority = ICE_SWITCH_FLTR_PRIO_VSI;
 		break;
+	default:
+		ret = -EOPNOTSUPP;
+		goto exit;
 	}
 
 	ret = ice_add_adv_rule(hw, list, lkups_cnt, &rule_info, &rule_added);
@@ -953,11 +956,11 @@ ice_add_tc_flower_adv_fltr(struct ice_vsi *vsi,
 	tc_fltr->dest_vsi_handle = rule_added.vsi_handle;
 	if (tc_fltr->action.fltr_act == ICE_FWD_TO_VSI ||
 	    tc_fltr->action.fltr_act == ICE_FWD_TO_Q) {
-		tc_fltr->dest_vsi = ch_vsi;
+		tc_fltr->dest_vsi = dest_vsi;
 		/* keep track of advanced switch filter for
 		 * destination VSI
 		 */
-		ch_vsi->num_chnl_fltr++;
+		dest_vsi->num_chnl_fltr++;
 
 		/* keeps track of channel filters for PF VSI */
 		if (vsi->type == ICE_VSI_PF &&
@@ -978,6 +981,10 @@ ice_add_tc_flower_adv_fltr(struct ice_vsi *vsi,
 			tc_fltr->action.fwd.q.hw_queue, rule_added.rid,
 			rule_added.rule_id);
 		break;
+	case ICE_DROP_PACKET:
+		dev_dbg(dev, "added switch rule (lkups_cnt %u, flags 0x%x), action is drop, rid %u, rule_id %u\n",
+			lkups_cnt, flags, rule_added.rid, rule_added.rule_id);
+		break;
 	default:
 		break;
 	}
@@ -1712,6 +1719,9 @@ ice_tc_parse_action(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr,
 	case FLOW_ACTION_RX_QUEUE_MAPPING:
 		/* forward to queue */
 		return ice_tc_forward_to_queue(vsi, fltr, act);
+	case FLOW_ACTION_DROP:
+		fltr->action.fltr_act = ICE_DROP_PACKET;
+		return 0;
 	default:
 		NL_SET_ERR_MSG_MOD(fltr->extack, "Unsupported TC action");
 		return -EOPNOTSUPP;
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.h b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
index d916d1e92aa3..8d5e22ac7023 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
@@ -211,4 +211,14 @@ ice_del_cls_flower(struct ice_vsi *vsi, struct flow_cls_offload *cls_flower);
 void ice_replay_tc_fltrs(struct ice_pf *pf);
 bool ice_is_tunnel_supported(struct net_device *dev);
 
+static inline bool ice_is_forward_action(enum ice_sw_fwd_act_type fltr_act)
+{
+	switch (fltr_act) {
+	case ICE_FWD_TO_VSI:
+	case ICE_FWD_TO_Q:
+		return true;
+	default:
+		return false;
+	}
+}
 #endif /* _ICE_TC_LIB_H_ */

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
