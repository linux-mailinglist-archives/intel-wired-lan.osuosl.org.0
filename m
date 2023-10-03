Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 255F57B6CA2
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Oct 2023 17:07:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 81ECB42039;
	Tue,  3 Oct 2023 15:07:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 81ECB42039
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696345663;
	bh=GdN7G5pAI2yeeXz20e+0A/E2PMJ6ofh6/EpuZnOr4RE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=bPWcupTm234QxObB6lqHhOliuYbS47mlB6jeu0NphPBdE0gHWsANCLc/2ik9XTSQe
	 61MM2cOQOm6ENYNJO6LVBr3i7z9FZW0Kyh3U6K4Fp8FL/TOnok4nBniI6p4HECLN2G
	 sFkdujyxe6BV7s/Fi++Lf05oLx6lr+D+nCbVU09Ge4Doc80mE/fdZ6e4Dim/gZVdrS
	 g2o8TADkOvLWX6OK9WDPfFCkLzXMA3pGm21Ad1q6tD1MTbuKvo11k8/7/uw23SBDsW
	 rwGY96LnkC6TyWpcUiTwWDOwdTJel6Dn7ns+IiatEcAgAlX6wMkgqi5APCRzfNrNHn
	 /R0QKXfILHSSw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2NqJFJrJkfXc; Tue,  3 Oct 2023 15:07:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C5B6342013;
	Tue,  3 Oct 2023 15:07:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C5B6342013
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5F0D11BF29D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 08:24:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 43813401CC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 08:24:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43813401CC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jagy97Mjr0uv for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Oct 2023 08:24:06 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 03 Oct 2023 08:24:05 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F24C640102
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F24C640102
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 08:24:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="4385007"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; 
   d="scan'208";a="4385007"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 01:16:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="700621518"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; d="scan'208";a="700621518"
Received: from unknown (HELO fedora.iind.intel.com) ([10.138.157.125])
 by orsmga003.jf.intel.com with ESMTP; 03 Oct 2023 01:16:55 -0700
From: Aniruddha Paul <aniruddha.paul@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  3 Oct 2023 13:46:39 +0530
Message-Id: <20231003081639.1915967-1-aniruddha.paul@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 03 Oct 2023 15:07:37 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696321446; x=1727857446;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UIqxt/Mlo7Zqs2pefZMZO2wJ2/bqH75N5KsuWpd4zGs=;
 b=XCnCFDOU+g36GG2GB4HYV85gEJKz0CNJsu1ycmPJWXQ1hwBlWFIbFXbV
 Cv172v1+bmRaDfCgPa6myZL4+rHSwC3GqQcVn/66NINBFtJlvBcrTuB+e
 68tjilclvK52gfVqdxMMVFpA2BTMPE2eXpwA9W00J7i15J0EzAECWUANd
 ottbtD5kcsphSRib8guP0SW59PofW/FIjnWrzGSv9R1zx44E2y1HhJOO2
 F03zAitcArLtXlFVRUL8Ue1SqKRxmXt4Jnf7GKZRiFqxEUn2IQ+RsfnGz
 Lq5mRWS9eYeE80y+zAjjJusb2JNIAlXA/GLSGdQu07yH9NHEfUlFbStan
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XCnCFDOU
Subject: [Intel-wired-lan] [PATCH iwl-net,
 v2] ice: Fix VF-VF filter rules in switchdev mode
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
v2:
-Fix rebase compilation error
-Change targeted to iwl-net

Links:
v1:
-https://lore.kernel.org/netdev/20230927104253.1729049-1-aniruddha.paul@intel.com/
---
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 91 ++++++++++++++-------
 1 file changed, 63 insertions(+), 28 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index db34df1890f7..de50dc831ea5 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -630,32 +630,62 @@ bool ice_is_tunnel_supported(struct net_device *dev)
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
+	struct ice_repr *repr;
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
 
@@ -709,10 +739,6 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 		goto exit;
 	}
 
-	/* egress traffic is always redirect to uplink */
-	if (fltr->direction == ICE_ESWITCH_FLTR_EGRESS)
-		fltr->dest_vsi = vsi->back->switchdev.uplink_vsi;
-
 	rule_info.sw_act.fltr_act = fltr->action.fltr_act;
 	if (fltr->action.fltr_act != ICE_DROP_PACKET)
 		rule_info.sw_act.vsi_handle = fltr->dest_vsi->idx;
@@ -726,13 +752,21 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
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
@@ -1758,16 +1792,17 @@ ice_tc_parse_action(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr,
 
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
@@ -1782,7 +1817,7 @@ ice_parse_tc_flower_actions(struct ice_vsi *vsi,
 
 	flow_action_for_each(i, act, flow_action) {
 		if (ice_is_eswitch_mode_switchdev(vsi->back))
-			err = ice_eswitch_tc_parse_action(fltr, act);
+			err = ice_eswitch_tc_parse_action(filter_dev, fltr, act);
 		else
 			err = ice_tc_parse_action(vsi, fltr, act);
 		if (err)
@@ -1869,7 +1904,7 @@ ice_add_tc_fltr(struct net_device *netdev, struct ice_vsi *vsi,
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
