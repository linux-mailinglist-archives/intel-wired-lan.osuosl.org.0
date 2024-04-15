Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5718A4AC2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Apr 2024 10:47:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8AD804069A;
	Mon, 15 Apr 2024 08:47:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eciRsoPycqq9; Mon, 15 Apr 2024 08:47:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 50C224069D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713170863;
	bh=BdokHnXmnKarMSAxkOnno9m7bvJluhFZ4SF5Uq77Y2M=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=0yQfpGi8sU6+7krXkCyyovojNlUIdkOC2f6PvKaPYzIjVB/Q3wYPMa50jlEgUyZcq
	 Bux/W0ovdBw2Rn69MG03Wsaz3TCL7tvpYmT2ziHp53rjWrAczH/fkuIIllkc9vI+ez
	 86W8qwDrruWE/S5kL81FFMw1M2msvefCv8+cpL/9ln1sR9z+Oj+dVIynBpZNZZ4gXF
	 yNiT84vLuc+ShxsnrueTahkqNqfmCLb/pgrRkMyBjqcPcIKjhMLjRNZf3yGUKDasuk
	 0Bg6o1h1Ph+TKW5w9ZaMto9cxC3MuyxV/TrbC/S2CNVOO6ViGM4ce43j5QhzyfSVqH
	 WZpAjRdgE8Z7A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 50C224069D;
	Mon, 15 Apr 2024 08:47:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B30DB1BF589
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 08:47:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ABCE340198
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 08:47:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gppx2zCbDzIC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Apr 2024 08:47:39 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4FC3540124
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4FC3540124
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4FC3540124
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 08:47:39 +0000 (UTC)
X-CSE-ConnectionGUID: O04dVcYtSG6Mb2/I+T8+NQ==
X-CSE-MsgGUID: BM6WGCAVTQe/pzbflE5GKw==
X-IronPort-AV: E=McAfee;i="6600,9927,11044"; a="26060916"
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; d="scan'208";a="26060916"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:47:38 -0700
X-CSE-ConnectionGUID: WrdgePshRwKa8wfoiPu/5g==
X-CSE-MsgGUID: pPj1y73nR1OmmRavqfrIvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; d="scan'208";a="45123757"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa002.fm.intel.com with ESMTP; 15 Apr 2024 01:47:37 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id D38CC332D3;
 Mon, 15 Apr 2024 09:47:35 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 15 Apr 2024 10:49:07 +0200
Message-ID: <20240415084907.613777-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713170859; x=1744706859;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2xJuMIvGTn/SBOqzXflc1BZxI4dzGrpiZz4Zzy+4fFY=;
 b=ABLyS7XCfJJ73JJ9dd1pCim2E7YJijX3+58YU6D0VY52V4/yECW3nwyt
 P+JZVQtOe4K3lNRvRwic+ky+EJiE8SBZ+tIcrcP1DNFzkn42AbmMsWOe0
 nWt2vOUY+i9ew5b3qnufJ4ZSnAvKuQzVvj4XcBR4pvnxvdyhfH0SEj1UD
 nsONJo/Brb4/yrSfdgM5JXOi+V/Z3QwCPI63i7XBDQXLamfrBSpFse1Jz
 5WT+1PFKP3h1iSzZ4XAO8T3+aZs4Jfmvk0FALkYJZ7vTO1kMxmh8YB+jL
 V4qy1JIYMP1FvE3UTlLxbPwE/GD31WA1hC27HJAUD9YYQxDGxP5Bg0cHk
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ABLyS7XC
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: Deduplicate tc action setup
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
Cc: Mateusz Polchlopek <mateusz.polchlopek@intel.com>, netdev@vger.kernel.org,
 Marcin Szycik <marcin.szycik@linux.intel.com>, andrii.staikov@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ice_tc_setup_redirect_action() and ice_tc_setup_mirror_action() are almost
identical, except for setting filter action. Reduce them to one function
with an extra param, which handles both cases.

Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 56 ++++++---------------
 1 file changed, 15 insertions(+), 41 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 4d8f808f4898..8553c56dc95d 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -669,13 +669,19 @@ static bool ice_tc_is_dev_uplink(struct net_device *dev)
 	return netif_is_ice(dev) || ice_is_tunnel_supported(dev);
 }
 
-static int ice_tc_setup_redirect_action(struct net_device *filter_dev,
-					struct ice_tc_flower_fltr *fltr,
-					struct net_device *target_dev)
+static int ice_tc_setup_action(struct net_device *filter_dev,
+			       struct ice_tc_flower_fltr *fltr,
+			       struct net_device *target_dev,
+			       enum ice_sw_fwd_act_type action)
 {
 	struct ice_repr *repr;
 
-	fltr->action.fltr_act = ICE_FWD_TO_VSI;
+	if (action != ICE_FWD_TO_VSI && action != ICE_MIRROR_PACKET) {
+		NL_SET_ERR_MSG_MOD(fltr->extack, "Unsupported action to setup provided");
+		return -EINVAL;
+	}
+
+	fltr->action.fltr_act = action;
 
 	if (ice_is_port_repr_netdev(filter_dev) &&
 	    ice_is_port_repr_netdev(target_dev)) {
@@ -723,41 +729,6 @@ ice_tc_setup_drop_action(struct net_device *filter_dev,
 	return 0;
 }
 
-static int ice_tc_setup_mirror_action(struct net_device *filter_dev,
-				      struct ice_tc_flower_fltr *fltr,
-				      struct net_device *target_dev)
-{
-	struct ice_repr *repr;
-
-	fltr->action.fltr_act = ICE_MIRROR_PACKET;
-
-	if (ice_is_port_repr_netdev(filter_dev) &&
-	    ice_is_port_repr_netdev(target_dev)) {
-		repr = ice_netdev_to_repr(target_dev);
-
-		fltr->dest_vsi = repr->src_vsi;
-		fltr->direction = ICE_ESWITCH_FLTR_EGRESS;
-	} else if (ice_is_port_repr_netdev(filter_dev) &&
-		   ice_tc_is_dev_uplink(target_dev)) {
-		repr = ice_netdev_to_repr(filter_dev);
-
-		fltr->dest_vsi = repr->src_vsi->back->eswitch.uplink_vsi;
-		fltr->direction = ICE_ESWITCH_FLTR_EGRESS;
-	} else if (ice_tc_is_dev_uplink(filter_dev) &&
-		   ice_is_port_repr_netdev(target_dev)) {
-		repr = ice_netdev_to_repr(target_dev);
-
-		fltr->dest_vsi = repr->src_vsi;
-		fltr->direction = ICE_ESWITCH_FLTR_INGRESS;
-	} else {
-		NL_SET_ERR_MSG_MOD(fltr->extack,
-				   "Unsupported netdevice in switchdev mode");
-		return -EINVAL;
-	}
-
-	return 0;
-}
-
 static int ice_eswitch_tc_parse_action(struct net_device *filter_dev,
 				       struct ice_tc_flower_fltr *fltr,
 				       struct flow_action_entry *act)
@@ -773,16 +744,19 @@ static int ice_eswitch_tc_parse_action(struct net_device *filter_dev,
 		break;
 
 	case FLOW_ACTION_REDIRECT:
-		err = ice_tc_setup_redirect_action(filter_dev, fltr, act->dev);
+		err = ice_tc_setup_action(filter_dev, fltr,
+					  act->dev, ICE_FWD_TO_VSI);
 		if (err)
 			return err;
 
 		break;
 
 	case FLOW_ACTION_MIRRED:
-		err = ice_tc_setup_mirror_action(filter_dev, fltr, act->dev);
+		err = ice_tc_setup_action(filter_dev, fltr,
+					  act->dev, ICE_MIRROR_PACKET);
 		if (err)
 			return err;
+
 		break;
 
 	default:
-- 
2.41.0

