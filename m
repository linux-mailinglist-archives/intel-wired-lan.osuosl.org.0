Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D047CC9D9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Oct 2023 19:26:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 37032821D9;
	Tue, 17 Oct 2023 17:26:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37032821D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697563569;
	bh=VXxAk9h5zdsyWeLLFzpjk/F4qOOuSxbo4gVOY5GQ3Rs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=LCuBVzTB8WO//byEZSM/FKbB3jlZOpNON5pr0O/eAPomBHOeUnykYHf4HaXldnM9/
	 4W9kZxPt+7zga/i6RkF5U9UpkuJqrc4XHrTdCKVdgtwhg/mlz44uVtebbjfLgf9x/K
	 nCSzHIZtppRAPOKnRDDvm9B2uvHuY/PpSTZsEiltY6LrV1pYpbdXyTyjMBf9i3q/bS
	 fom/aw98wWy5jtQ3XelCI+P7ZqleOXO8UTMizut8X15Ei0X8jX/3/DbKpyoFYoMu6j
	 Q1UQ7nKmoQjBjdAgqvLRkI7+73F9p3eWZcFC8961VtFCQNSIS9vj/n7VQEGyjG/Thx
	 ZM+LvaV6hLXHg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aO3c8Sw44CGy; Tue, 17 Oct 2023 17:26:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4885820E4;
	Tue, 17 Oct 2023 17:26:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B4885820E4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 29EDA1BF995
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 13:44:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E9DFB60BA8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 13:44:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E9DFB60BA8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r1MDxQD1IyMP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Oct 2023 13:44:00 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 338F960B1F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 13:44:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 338F960B1F
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="416234587"
X-IronPort-AV: E=Sophos;i="6.03,222,1694761200"; d="scan'208";a="416234587"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 06:43:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="731374107"
X-IronPort-AV: E=Sophos;i="6.03,222,1694761200"; d="scan'208";a="731374107"
Received: from unknown (HELO fedora.iind.intel.com) ([10.138.157.125])
 by orsmga006.jf.intel.com with ESMTP; 13 Oct 2023 06:43:47 -0700
From: Aniruddha Paul <aniruddha.paul@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 13 Oct 2023 19:13:42 +0530
Message-Id: <20231013134342.2466512-1-aniruddha.paul@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 17 Oct 2023 17:25:58 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697204640; x=1728740640;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=g93uwdM5Fm0/B/ImXkOMRQI1ZwTld0ih4kQSke9XNiI=;
 b=XM/tfU/2swcGr/MYXiNVSegXZOjqsnJAcNE0lJ5FcTZ/khA1myF9Z47j
 dnlfdmIsEy7q7BZUxILiTK/mnZ3YDgjowF4bz1h9u6pdn8oA2fMWf2kbk
 EM8P2gsg07iI11NoVS9EPdD/Ksct/tngW4Tp80SzsXWagc6XEAExVBxrD
 wt0DgptA15NsAdjRhOdfYj+E9S1iwfAJoFO8inNp0yhfb5njXvyMyIRIk
 UDArDAsv5nV/BIRO2+6Z8LbNGxEfPcq2GXZNEr7XLd+lYdkam/VrbG4yc
 XhnPpdN5n4LeTJb7EkNQVhb+ZWCLiWu78uOnUly45ZrqR9O+wQSZ/t1mh
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XM/tfU/2
Subject: [Intel-wired-lan] [PATCH iwl-net,
 v3] ice: Fix VF-VF filter rules in switchdev mode
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org,
 Wojciech Drewek <wojciech.drewek@intel.com>, marcin.szycik@intel.com,
 Aniruddha Paul <aniruddha.paul@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Any packet leaving VSI i.e VF's VSI is considered as
egress traffic by HW, thus failing to match the added
rule.

Mark the direction for redirect rules as below:
1. VF-VF - Egress
2. Uplink-VF - Ingress
3. VF-Uplink - Egress
4. Link_Partner-Uplink - Ingress
5. Link_Partner-VF - Ingress

Fixes: 0960a27bd479 ("ice: Add direction metadata")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Aniruddha Paul <aniruddha.paul@intel.com>
---
Change Log:
v3:
-Removed the unused variable

Links:
v1:
-https://lore.kernel.org/netdev/20230927104253.1729049-1-aniruddha.paul@intel.com/
v2:
-https://lore.kernel.org/netdev/20231003081639.1915967-1-aniruddha.paul@intel.com/
---
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 90 ++++++++++++++-------
 1 file changed, 62 insertions(+), 28 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 37b54db91df2..0e75fc6b3c06 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -630,32 +630,61 @@ bool ice_is_tunnel_supported(struct net_device *dev)
 	return ice_tc_tun_get_type(dev) != TNL_LAST;
 }
 
-static int
-ice_eswitch_tc_parse_action(struct ice_tc_flower_fltr *fltr,
-			    struct flow_action_entry *act)
+static bool ice_tc_is_dev_uplink(struct net_device *dev)
+{
+	return netif_is_ice(dev) || ice_is_tunnel_supported(dev);
+}
+
+static int ice_tc_setup_redirect_action(struct net_device *filter_dev,
+					struct ice_tc_flower_fltr *fltr,
+					struct net_device *target_dev)
 {
 	struct ice_repr *repr;
 
+	fltr->action.fltr_act = ICE_FWD_TO_VSI;
+
+	if (ice_is_port_repr_netdev(filter_dev) &&
+	    ice_is_port_repr_netdev(target_dev)) {
+		repr = ice_netdev_to_repr(target_dev);
+
+		fltr->dest_vsi = repr->src_vsi;
+		fltr->direction = ICE_ESWITCH_FLTR_EGRESS;
+	} else if (ice_is_port_repr_netdev(filter_dev) &&
+		   ice_tc_is_dev_uplink(target_dev)) {
+		repr = ice_netdev_to_repr(filter_dev);
+
+		fltr->dest_vsi = repr->src_vsi->back->switchdev.uplink_vsi;
+		fltr->direction = ICE_ESWITCH_FLTR_EGRESS;
+	} else if (ice_tc_is_dev_uplink(filter_dev) &&
+		   ice_is_port_repr_netdev(target_dev)) {
+		repr = ice_netdev_to_repr(target_dev);
+
+		fltr->dest_vsi = repr->src_vsi;
+		fltr->direction = ICE_ESWITCH_FLTR_INGRESS;
+	} else {
+		NL_SET_ERR_MSG_MOD(fltr->extack,
+				   "Unsupported netdevice in switchdev mode");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int ice_eswitch_tc_parse_action(struct net_device *filter_dev,
+				       struct ice_tc_flower_fltr *fltr,
+				       struct flow_action_entry *act)
+{
+	int err;
+
 	switch (act->id) {
 	case FLOW_ACTION_DROP:
 		fltr->action.fltr_act = ICE_DROP_PACKET;
 		break;
 
 	case FLOW_ACTION_REDIRECT:
-		fltr->action.fltr_act = ICE_FWD_TO_VSI;
-
-		if (ice_is_port_repr_netdev(act->dev)) {
-			repr = ice_netdev_to_repr(act->dev);
-
-			fltr->dest_vsi = repr->src_vsi;
-			fltr->direction = ICE_ESWITCH_FLTR_INGRESS;
-		} else if (netif_is_ice(act->dev) ||
-			   ice_is_tunnel_supported(act->dev)) {
-			fltr->direction = ICE_ESWITCH_FLTR_EGRESS;
-		} else {
-			NL_SET_ERR_MSG_MOD(fltr->extack, "Unsupported netdevice in switchdev mode");
-			return -EINVAL;
-		}
+		err = ice_tc_setup_redirect_action(filter_dev, fltr, act->dev);
+		if (err)
+			return err;
 
 		break;
 
@@ -696,10 +725,6 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 		goto exit;
 	}
 
-	/* egress traffic is always redirect to uplink */
-	if (fltr->direction == ICE_ESWITCH_FLTR_EGRESS)
-		fltr->dest_vsi = vsi->back->switchdev.uplink_vsi;
-
 	rule_info.sw_act.fltr_act = fltr->action.fltr_act;
 	if (fltr->action.fltr_act != ICE_DROP_PACKET)
 		rule_info.sw_act.vsi_handle = fltr->dest_vsi->idx;
@@ -713,13 +738,21 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 	rule_info.flags_info.act_valid = true;
 
 	if (fltr->direction == ICE_ESWITCH_FLTR_INGRESS) {
+		/* Uplink to VF */
 		rule_info.sw_act.flag |= ICE_FLTR_RX;
 		rule_info.sw_act.src = hw->pf_id;
 		rule_info.flags_info.act = ICE_SINGLE_ACT_LB_ENABLE;
-	} else {
+	} else if (fltr->direction == ICE_ESWITCH_FLTR_EGRESS &&
+		   fltr->dest_vsi == vsi->back->switchdev.uplink_vsi) {
+		/* VF to Uplink */
 		rule_info.sw_act.flag |= ICE_FLTR_TX;
 		rule_info.sw_act.src = vsi->idx;
 		rule_info.flags_info.act = ICE_SINGLE_ACT_LAN_ENABLE;
+	} else {
+		/* VF to VF */
+		rule_info.sw_act.flag |= ICE_FLTR_TX;
+		rule_info.sw_act.src = vsi->idx;
+		rule_info.flags_info.act = ICE_SINGLE_ACT_LB_ENABLE;
 	}
 
 	/* specify the cookie as filter_rule_id */
@@ -1745,16 +1778,17 @@ ice_tc_parse_action(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr,
 
 /**
  * ice_parse_tc_flower_actions - Parse the actions for a TC filter
+ * @filter_dev: Pointer to device on which filter is being added
  * @vsi: Pointer to VSI
  * @cls_flower: Pointer to TC flower offload structure
  * @fltr: Pointer to TC flower filter structure
  *
  * Parse the actions for a TC filter
  */
-static int
-ice_parse_tc_flower_actions(struct ice_vsi *vsi,
-			    struct flow_cls_offload *cls_flower,
-			    struct ice_tc_flower_fltr *fltr)
+static int ice_parse_tc_flower_actions(struct net_device *filter_dev,
+				       struct ice_vsi *vsi,
+				       struct flow_cls_offload *cls_flower,
+				       struct ice_tc_flower_fltr *fltr)
 {
 	struct flow_rule *rule = flow_cls_offload_flow_rule(cls_flower);
 	struct flow_action *flow_action = &rule->action;
@@ -1769,7 +1803,7 @@ ice_parse_tc_flower_actions(struct ice_vsi *vsi,
 
 	flow_action_for_each(i, act, flow_action) {
 		if (ice_is_eswitch_mode_switchdev(vsi->back))
-			err = ice_eswitch_tc_parse_action(fltr, act);
+			err = ice_eswitch_tc_parse_action(filter_dev, fltr, act);
 		else
 			err = ice_tc_parse_action(vsi, fltr, act);
 		if (err)
@@ -1856,7 +1890,7 @@ ice_add_tc_fltr(struct net_device *netdev, struct ice_vsi *vsi,
 	if (err < 0)
 		goto err;
 
-	err = ice_parse_tc_flower_actions(vsi, f, fltr);
+	err = ice_parse_tc_flower_actions(netdev, vsi, f, fltr);
 	if (err < 0)
 		goto err;
 
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
