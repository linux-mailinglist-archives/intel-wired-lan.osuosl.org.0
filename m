Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F2BB0463FE6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Nov 2021 22:23:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E7FC6086D;
	Tue, 30 Nov 2021 21:23:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ofURzGHh3SEN; Tue, 30 Nov 2021 21:23:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6318160737;
	Tue, 30 Nov 2021 21:23:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 58C551BF306
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 21:23:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3E47B4049D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 21:23:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 19HXW-tgS1LO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Nov 2021 21:23:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7B9254045F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 21:23:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="223550551"
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="223550551"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 13:23:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="499946564"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.133])
 by orsmga007.jf.intel.com with ESMTP; 30 Nov 2021 13:23:29 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 30 Nov 2021 13:21:43 -0800
Message-Id: <20211130212155.27852-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211130212155.27852-1-anthony.l.nguyen@intel.com>
References: <20211130212155.27852-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 02/14] ice: Add helper function
 for adding VLAN 0
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

There are multiple places where VLAN 0 is being added. Create a function
to be called in order to minimize changes as the implementation is expanded
to support double VLAN and avoid duplicated code.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c     |  4 ++--
 drivers/net/ethernet/intel/ice/ice_lib.c         | 11 ++++++++++-
 drivers/net/ethernet/intel/ice/ice_lib.h         |  2 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c |  2 +-
 4 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index a737c54c4895..291748553800 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -127,7 +127,7 @@ static int ice_eswitch_setup_env(struct ice_pf *pf)
 	__dev_mc_unsync(uplink_netdev, NULL);
 	netif_addr_unlock_bh(uplink_netdev);
 
-	if (ice_vsi_add_vlan(uplink_vsi, 0, ICE_FWD_TO_VSI))
+	if (ice_vsi_add_vlan_zero(uplink_vsi))
 		goto err_def_rx;
 
 	if (!ice_is_dflt_vsi_in_use(uplink_vsi->vsw)) {
@@ -231,7 +231,7 @@ static int ice_eswitch_setup_reprs(struct ice_pf *pf)
 			goto err;
 		}
 
-		if (ice_vsi_add_vlan(vsi, 0, ICE_FWD_TO_VSI)) {
+		if (ice_vsi_add_vlan_zero(vsi)) {
 			ice_fltr_add_mac_and_broadcast(vsi,
 						       vf->hw_lan_addr.addr,
 						       ICE_FWD_TO_VSI);
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 2db3cd6d8907..cc135792834e 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2621,7 +2621,7 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 		 * so this handles those cases (i.e. adding the PF to a bridge
 		 * without the 8021q module loaded).
 		 */
-		ret = ice_vsi_add_vlan(vsi, 0, ICE_FWD_TO_VSI);
+		ret = ice_vsi_add_vlan_zero(vsi);
 		if (ret)
 			goto unroll_clear_rings;
 
@@ -4069,6 +4069,15 @@ int ice_set_link(struct ice_vsi *vsi, bool ena)
 	return 0;
 }
 
+/**
+ * ice_vsi_add_vlan_zero - add VLAN 0 filter(s) for this VSI
+ * @vsi: VSI used to add VLAN filters
+ */
+int ice_vsi_add_vlan_zero(struct ice_vsi *vsi)
+{
+	return ice_vsi_add_vlan(vsi, 0, ICE_FWD_TO_VSI);
+}
+
 /**
  * ice_is_feature_supported
  * @pf: pointer to the struct ice_pf instance
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 9fdd95dd5a14..28e0f1147c82 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -133,7 +133,7 @@ void ice_vsi_ctx_clear_antispoof(struct ice_vsi_ctx *ctx);
 void ice_vsi_ctx_set_allow_override(struct ice_vsi_ctx *ctx);
 
 void ice_vsi_ctx_clear_allow_override(struct ice_vsi_ctx *ctx);
-
+int ice_vsi_add_vlan_zero(struct ice_vsi *vsi);
 bool ice_is_feature_supported(struct ice_pf *pf, enum ice_feature f);
 void ice_clear_feature_support(struct ice_pf *pf, enum ice_feature f);
 void ice_init_feature_support(struct ice_pf *pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index f947d936def3..ab03010c822d 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -1855,7 +1855,7 @@ static int ice_init_vf_vsi_res(struct ice_vf *vf)
 	if (!vsi)
 		return -ENOMEM;
 
-	err = ice_vsi_add_vlan(vsi, 0, ICE_FWD_TO_VSI);
+	err = ice_vsi_add_vlan_zero(vsi);
 	if (err) {
 		dev_warn(dev, "Failed to add VLAN 0 filter for VF %d\n",
 			 vf->vf_id);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
