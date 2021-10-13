Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E73542B718
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Oct 2021 08:27:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1FB39829FE;
	Wed, 13 Oct 2021 06:27:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ULlnX7WAuvLc; Wed, 13 Oct 2021 06:27:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA12A829FD;
	Wed, 13 Oct 2021 06:27:46 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D15B21BF36F
 for <intel-wired-lan@osuosl.org>; Wed, 13 Oct 2021 06:27:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C9803829FD
 for <intel-wired-lan@osuosl.org>; Wed, 13 Oct 2021 06:27:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HUvbHijnTjLy for <intel-wired-lan@osuosl.org>;
 Wed, 13 Oct 2021 06:27:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 98CE8829F2
 for <intel-wired-lan@osuosl.org>; Wed, 13 Oct 2021 06:27:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="288231410"
X-IronPort-AV: E=Sophos;i="5.85,369,1624345200"; d="scan'208";a="288231410"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 23:27:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,369,1624345200"; d="scan'208";a="547728332"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga004.fm.intel.com with ESMTP; 12 Oct 2021 23:27:38 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed, 13 Oct 2021 08:27:07 +0200
Message-Id: <20211013062707.353095-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] ice: send correct vc status in
 switchdev
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

Part of virtchannel messages are treated in different way in switchdev
mode to block configuring VFs from iavf driver side. This blocking was
done by doing nothing and returning succes, event without sending
response.

Not sending response for opcodes that aren't supported in switchdev mode
leads to block iavf driver message handling. This happens for example
when vlan is configured at VF config time (VLAN module is already
loaded).

To get rid of it ice driver should answer for each VF message. In
switchdev mode:
- for adding/deleting VLAN driver should answer success without doing
  anything to allow creating vlan device on VFs
- for enabling/disabling VLAN stripping  and promiscuous mode driver
  should answer not supported, this feature in switchdev can be only
  set from host side

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 63 ++++++++++++++-----
 1 file changed, 49 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 3e7fdd7f2e1d..e6748a83466d 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -4463,13 +4463,6 @@ void ice_vc_set_dflt_vf_ops(struct ice_vc_vf_ops *ops)
 	*ops = ice_vc_vf_dflt_ops;
 }
 
-static int
-ice_vc_repr_no_action_msg(struct ice_vf __always_unused *vf,
-			  u8 __always_unused *msg)
-{
-	return 0;
-}
-
 /**
  * ice_vc_repr_add_mac
  * @vf: pointer to VF
@@ -4545,20 +4538,62 @@ ice_vc_repr_del_mac(struct ice_vf __always_unused *vf, u8 __always_unused *msg)
 				     VIRTCHNL_STATUS_SUCCESS, NULL, 0);
 }
 
-static int ice_vc_repr_no_action(struct ice_vf __always_unused *vf)
+static int ice_vc_repr_add_vlan(struct ice_vf *vf, u8 __always_unused *msg)
 {
-	return 0;
+	dev_dbg(ice_pf_to_dev(vf->pf),
+		"Can't add VLAN in switchdev mode for VF %d\n", vf->vf_id);
+	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ADD_VLAN,
+				     VIRTCHNL_STATUS_SUCCESS, NULL, 0);
+}
+
+static int ice_vc_repr_del_vlan(struct ice_vf *vf, u8 __always_unused *msg)
+{
+	dev_dbg(ice_pf_to_dev(vf->pf),
+		"Can't delete VLAN in switchdev mode for VF %d\n", vf->vf_id);
+	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DEL_VLAN,
+				     VIRTCHNL_STATUS_SUCCESS, NULL, 0);
+}
+
+static int ice_vc_repr_ena_vlan_stripping(struct ice_vf *vf)
+{
+	dev_dbg(ice_pf_to_dev(vf->pf),
+		"Can't enable VLAN stripping in switchdev mode for VF %d\n",
+		vf->vf_id);
+	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ENABLE_VLAN_STRIPPING,
+				     VIRTCHNL_STATUS_ERR_NOT_SUPPORTED,
+				     NULL, 0);
+}
+
+static int ice_vc_repr_dis_vlan_stripping(struct ice_vf *vf)
+{
+	dev_dbg(ice_pf_to_dev(vf->pf),
+		"Can't disable VLAN stripping in switchdev mode for VF %d\n",
+		vf->vf_id);
+	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DISABLE_VLAN_STRIPPING,
+				     VIRTCHNL_STATUS_ERR_NOT_SUPPORTED,
+				     NULL, 0);
+}
+
+static int
+ice_vc_repr_cfg_promiscuous_mode(struct ice_vf *vf, u8 __always_unused *msg)
+{
+	dev_dbg(ice_pf_to_dev(vf->pf),
+		"Can't config promiscuous mode in switchdev mode for VF %d\n",
+		vf->vf_id);
+	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE,
+				     VIRTCHNL_STATUS_ERR_NOT_SUPPORTED,
+				     NULL, 0);
 }
 
 void ice_vc_change_ops_to_repr(struct ice_vc_vf_ops *ops)
 {
 	ops->add_mac_addr_msg = ice_vc_repr_add_mac;
 	ops->del_mac_addr_msg = ice_vc_repr_del_mac;
-	ops->add_vlan_msg = ice_vc_repr_no_action_msg;
-	ops->remove_vlan_msg = ice_vc_repr_no_action_msg;
-	ops->ena_vlan_stripping = ice_vc_repr_no_action;
-	ops->dis_vlan_stripping = ice_vc_repr_no_action;
-	ops->cfg_promiscuous_mode_msg = ice_vc_repr_no_action_msg;
+	ops->add_vlan_msg = ice_vc_repr_add_vlan;
+	ops->remove_vlan_msg = ice_vc_repr_del_vlan;
+	ops->ena_vlan_stripping = ice_vc_repr_ena_vlan_stripping;
+	ops->dis_vlan_stripping = ice_vc_repr_dis_vlan_stripping;
+	ops->cfg_promiscuous_mode_msg = ice_vc_repr_cfg_promiscuous_mode;
 }
 
 /**
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
