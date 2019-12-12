Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4780711D759
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Dec 2019 20:44:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EAC7D871A0;
	Thu, 12 Dec 2019 19:44:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mW5SfCuCqK6E; Thu, 12 Dec 2019 19:44:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 96DBA87169;
	Thu, 12 Dec 2019 19:44:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 36E3F1BF9BA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 29AB9882A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3bxRxhwuizEF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2019 19:44:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 27E67881BA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 11:44:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,306,1571727600"; d="scan'208";a="296698856"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga001.jf.intel.com with ESMTP; 12 Dec 2019 11:44:34 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 12 Dec 2019 03:13:01 -0800
Message-Id: <20191212111307.33566-9-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191212111307.33566-1-anthony.l.nguyen@intel.com>
References: <20191212111307.33566-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S35 09/15] ice: Fix VF link state when
 it's IFLA_VF_LINK_STATE_AUTO
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

From: Brett Creeley <brett.creeley@intel.com>

Currently the flow for ice_set_vf_link_state() is not configuring link
the same as all other VF link configuration flows. Fix this by only
setting the necessary VF members in ice_set_vf_link_state() and then
call ice_vc_notify_link_state() to actually configure link for the
VF. This made ice_set_pfe_link_forced() unnecessary, so it was
deleted. Also, this commonizes the link flows for the VF to all call
ice_vc_notify_link_state().

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c     |  3 +-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 56 ++++---------------
 2 files changed, 12 insertions(+), 47 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 9378a278206d..c2811b56f569 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -847,8 +847,7 @@ ice_link_event(struct ice_pf *pf, struct ice_port_info *pi, bool link_up,
 	ice_vsi_link_event(vsi, link_up);
 	ice_print_link_msg(vsi, link_up);
 
-	if (pf->num_alloc_vfs)
-		ice_vc_notify_link_state(pf);
+	ice_vc_notify_link_state(pf);
 
 	return result;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 54c576bb62ad..c1708eb7ee75 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -121,26 +121,6 @@ ice_set_pfe_link(struct ice_vf *vf, struct virtchnl_pf_event *pfe,
 	}
 }
 
-/**
- * ice_set_pfe_link_forced - Force the virtchnl_pf_event link speed/status
- * @vf: pointer to the VF structure
- * @pfe: pointer to the virtchnl_pf_event to set link speed/status for
- * @link_up: whether or not to set the link up/down
- */
-static void
-ice_set_pfe_link_forced(struct ice_vf *vf, struct virtchnl_pf_event *pfe,
-			bool link_up)
-{
-	u16 link_speed;
-
-	if (link_up)
-		link_speed = ICE_AQ_LINK_SPEED_100GB;
-	else
-		link_speed = ICE_AQ_LINK_SPEED_UNKNOWN;
-
-	ice_set_pfe_link(vf, pfe, link_speed, link_up);
-}
-
 /**
  * ice_vc_notify_vf_link_state - Inform a VF of link status
  * @vf: pointer to the VF structure
@@ -161,13 +141,17 @@ static void ice_vc_notify_vf_link_state(struct ice_vf *vf)
 	pfe.severity = PF_EVENT_SEVERITY_INFO;
 
 	/* Always report link is down if the VF queues aren't enabled */
-	if (!vf->num_qs_ena)
+	if (!vf->num_qs_ena) {
 		ice_set_pfe_link(vf, &pfe, ICE_AQ_LINK_SPEED_UNKNOWN, false);
-	else if (vf->link_forced)
-		ice_set_pfe_link_forced(vf, &pfe, vf->link_up);
-	else
-		ice_set_pfe_link(vf, &pfe, ls->link_speed, ls->link_info &
-				 ICE_AQ_LINK_UP);
+	} else if (vf->link_forced) {
+		u16 link_speed = vf->link_up ?
+			ls->link_speed : ICE_AQ_LINK_SPEED_UNKNOWN;
+
+		ice_set_pfe_link(vf, &pfe, link_speed, vf->link_up);
+	} else {
+		ice_set_pfe_link(vf, &pfe, ls->link_speed,
+				 ls->link_info & ICE_AQ_LINK_UP);
+	}
 
 	ice_aq_send_msg_to_vf(hw, vf->vf_id, VIRTCHNL_OP_EVENT,
 			      VIRTCHNL_STATUS_SUCCESS, (u8 *)&pfe,
@@ -3367,28 +3351,18 @@ int ice_set_vf_trust(struct net_device *netdev, int vf_id, bool trusted)
 int ice_set_vf_link_state(struct net_device *netdev, int vf_id, int link_state)
 {
 	struct ice_pf *pf = ice_netdev_to_pf(netdev);
-	struct virtchnl_pf_event pfe = { 0 };
-	struct ice_link_status *ls;
 	struct ice_vf *vf;
-	struct ice_hw *hw;
 
 	if (ice_validate_vf_id(pf, vf_id))
 		return -EINVAL;
 
 	vf = &pf->vf[vf_id];
-	hw = &pf->hw;
-	ls = &pf->hw.port_info->phy.link_info;
-
 	if (ice_check_vf_init(pf, vf))
 		return -EBUSY;
 
-	pfe.event = VIRTCHNL_EVENT_LINK_CHANGE;
-	pfe.severity = PF_EVENT_SEVERITY_INFO;
-
 	switch (link_state) {
 	case IFLA_VF_LINK_STATE_AUTO:
 		vf->link_forced = false;
-		vf->link_up = ls->link_info & ICE_AQ_LINK_UP;
 		break;
 	case IFLA_VF_LINK_STATE_ENABLE:
 		vf->link_forced = true;
@@ -3402,15 +3376,7 @@ int ice_set_vf_link_state(struct net_device *netdev, int vf_id, int link_state)
 		return -EINVAL;
 	}
 
-	if (vf->link_forced)
-		ice_set_pfe_link_forced(vf, &pfe, vf->link_up);
-	else
-		ice_set_pfe_link(vf, &pfe, ls->link_speed, vf->link_up);
-
-	/* Notify the VF of its new link state */
-	ice_aq_send_msg_to_vf(hw, vf->vf_id, VIRTCHNL_OP_EVENT,
-			      VIRTCHNL_STATUS_SUCCESS, (u8 *)&pfe,
-			      sizeof(pfe), NULL);
+	ice_vc_notify_vf_link_state(vf);
 
 	return 0;
 }
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
