Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C868D26E688
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Sep 2020 22:19:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 87AA28774E;
	Thu, 17 Sep 2020 20:19:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5sSKkYFlb3Kb; Thu, 17 Sep 2020 20:19:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2590187736;
	Thu, 17 Sep 2020 20:19:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D855D1BF37B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 20:19:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C60342E13F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 20:19:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oNwSRhZiaY7Z for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Sep 2020 20:19:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id 193BB20438
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 20:19:16 +0000 (UTC)
IronPort-SDR: z8R1uMp3+wQH+SbNz3dErtVs/YPoPX23YcnLDAyIWNBXjGlbtWhvtPt04PgxF10ToO/ij9owux
 U/3jfCoRs/uw==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="147535885"
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="147535885"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 13:19:14 -0700
IronPort-SDR: 2F+6ic76a+8PWMD0sFuKSj5OakLmMIgIWVAPkd97k0kpY/QKdxZzlbh7cL8DSgEhPFlmMVgsCn
 CqCcTd7ohC7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="508574679"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by fmsmga005.fm.intel.com with ESMTP; 17 Sep 2020 13:19:13 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Sep 2020 13:13:36 -0700
Message-Id: <20200917201347.81570-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200917201347.81570-1-anthony.l.nguyen@intel.com>
References: <20200917201347.81570-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S53 04/15] ice: log message when trusted
 VF goes in/out of promisc mode
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

Currently there is no message printed on the host when a VF goes in and
out of promiscuous mode. This is causing confusion because this is the
expected behavior based on i40e. Fix this.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 32 +++++++++++--------
 1 file changed, 19 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index ed5cca603949..35ed71694d44 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -2314,12 +2314,12 @@ bool ice_is_any_vf_in_promisc(struct ice_pf *pf)
 static int ice_vc_cfg_promiscuous_mode_msg(struct ice_vf *vf, u8 *msg)
 {
 	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
+	bool rm_promisc, alluni = false, allmulti = false;
 	struct virtchnl_promisc_info *info =
 	    (struct virtchnl_promisc_info *)msg;
 	struct ice_pf *pf = vf->pf;
 	struct ice_vsi *vsi;
 	struct device *dev;
-	bool rm_promisc;
 	int ret = 0;
 
 	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
@@ -2346,8 +2346,13 @@ static int ice_vc_cfg_promiscuous_mode_msg(struct ice_vf *vf, u8 *msg)
 		goto error_param;
 	}
 
-	rm_promisc = !(info->flags & FLAG_VF_UNICAST_PROMISC) &&
-		!(info->flags & FLAG_VF_MULTICAST_PROMISC);
+	if (info->flags & FLAG_VF_UNICAST_PROMISC)
+		alluni = true;
+
+	if (info->flags & FLAG_VF_MULTICAST_PROMISC)
+		allmulti = true;
+
+	rm_promisc = !allmulti && !alluni;
 
 	if (vsi->num_vlan || vf->port_vlan_info) {
 		struct ice_vsi *pf_vsi = ice_get_main_vsi(pf);
@@ -2401,12 +2406,12 @@ static int ice_vc_cfg_promiscuous_mode_msg(struct ice_vf *vf, u8 *msg)
 		enum ice_status status;
 		u8 promisc_m;
 
-		if (info->flags & FLAG_VF_UNICAST_PROMISC) {
+		if (alluni) {
 			if (vf->port_vlan_info || vsi->num_vlan)
 				promisc_m = ICE_UCAST_VLAN_PROMISC_BITS;
 			else
 				promisc_m = ICE_UCAST_PROMISC_BITS;
-		} else if (info->flags & FLAG_VF_MULTICAST_PROMISC) {
+		} else if (allmulti) {
 			if (vf->port_vlan_info || vsi->num_vlan)
 				promisc_m = ICE_MCAST_VLAN_PROMISC_BITS;
 			else
@@ -2434,15 +2439,16 @@ static int ice_vc_cfg_promiscuous_mode_msg(struct ice_vf *vf, u8 *msg)
 		}
 	}
 
-	if (info->flags & FLAG_VF_MULTICAST_PROMISC)
-		set_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states);
-	else
-		clear_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states);
+	if (allmulti &&
+	    !test_and_set_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states))
+		dev_info(dev, "VF %u successfully set multicast promiscuous mode\n", vf->vf_id);
+	else if (!allmulti && test_and_clear_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states))
+		dev_info(dev, "VF %u successfully unset multicast promiscuous mode\n", vf->vf_id);
 
-	if (info->flags & FLAG_VF_UNICAST_PROMISC)
-		set_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states);
-	else
-		clear_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states);
+	if (alluni && !test_and_set_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states))
+		dev_info(dev, "VF %u successfully set unicast promiscuous mode\n", vf->vf_id);
+	else if (!alluni && test_and_clear_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states))
+		dev_info(dev, "VF %u successfully unset unicast promiscuous mode\n", vf->vf_id);
 
 error_param:
 	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE,
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
