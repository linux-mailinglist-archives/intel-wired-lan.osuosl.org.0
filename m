Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E3C3F2406
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Aug 2021 02:06:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 753D060B4D;
	Fri, 20 Aug 2021 00:06:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HH8Q5X4M46k9; Fri, 20 Aug 2021 00:06:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E963A60B51;
	Fri, 20 Aug 2021 00:06:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D4AF61BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 00:05:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 36849401D8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 00:05:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3n-MmZykaaI8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Aug 2021 00:05:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A6A4340240
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 00:05:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10081"; a="280413584"
X-IronPort-AV: E=Sophos;i="5.84,336,1620716400"; d="scan'208";a="280413584"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 17:05:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,336,1620716400"; d="scan'208";a="512317492"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
 by fmsmga004.fm.intel.com with ESMTP; 19 Aug 2021 17:05:31 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 19 Aug 2021 17:08:56 -0700
Message-Id: <20210820000859.680522-10-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210820000859.680522-1-anthony.l.nguyen@intel.com>
References: <20210820000859.680522-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue v4 09/12] ice: enable/disable
 switchdev when managing VFs
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

From: Grzegorz Nitka <grzegorz.nitka@intel.com>

Only way to enable switchdev is to create VFs when the eswitch
mode is set to switchdev. Check if correct mode is set and
enable switchdev in function which creating VFs.

Disable switchdev when user change number of VFs to 0. Changing
eswitch mode back to legacy when VFs are created in switchdev
mode isn't allowed.

As switchdev takes care of managing filter rules, adding new
rules on VF is blocked.

In case of resetting VF driver has to update pointer in ice_repr
struct, because after reset VSI related things can change.

Co-developed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c  | 38 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_eswitch.h  |  4 ++
 drivers/net/ethernet/intel/ice/ice_main.c     |  6 ++-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 18 +++++++++
 4 files changed, 64 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index c7340ce1a9ba..79877787f17c 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -232,6 +232,32 @@ static void ice_eswitch_release_reprs(struct ice_pf *pf,
 	}
 }
 
+/**
+ * ice_eswitch_update_repr - reconfigure VF port representor
+ * @vsi: VF VSI for which port representor is configured
+ */
+void ice_eswitch_update_repr(struct ice_vsi *vsi)
+{
+	struct ice_pf *pf = vsi->back;
+	struct ice_repr *repr;
+	struct ice_vf *vf;
+	int ret;
+
+	if (!ice_is_switchdev_running(pf))
+		return;
+
+	vf = &pf->vf[vsi->vf_id];
+	repr = vf->repr;
+	repr->src_vsi = vsi;
+	repr->dst->u.port_info.port_id = vsi->vsi_num;
+
+	ret = ice_vsi_update_security(vsi, ice_vsi_ctx_clear_antispoof);
+	if (ret) {
+		ice_fltr_add_mac_and_broadcast(vsi, vf->hw_lan_addr.addr, ICE_FWD_TO_VSI);
+		dev_err(ice_pf_to_dev(pf), "Failed to update VF %d port representor", vsi->vf_id);
+	}
+}
+
 /**
  * ice_eswitch_release_env - clear switchdev HW filters
  * @pf: pointer to PF struct
@@ -425,6 +451,18 @@ int ice_eswitch_mode_get(struct devlink *devlink, u16 *mode)
 	return 0;
 }
 
+/**
+ * ice_is_eswitch_mode_switchdev - check if eswitch mode is set to switchdev
+ * @pf: pointer to PF structure
+ *
+ * Returns true if eswitch mode is set to DEVLINK_ESWITCH_MODE_SWITCHDEV,
+ * false otherwise.
+ */
+bool ice_is_eswitch_mode_switchdev(struct ice_pf *pf)
+{
+	return pf->eswitch_mode == DEVLINK_ESWITCH_MODE_SWITCHDEV;
+}
+
 /**
  * ice_eswitch_release - cleanup eswitch
  * @pf: pointer to PF structure
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.h b/drivers/net/ethernet/intel/ice/ice_eswitch.h
index 919eb0e051d5..c27cd8d8c743 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.h
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.h
@@ -14,9 +14,13 @@ int
 ice_eswitch_mode_set(struct devlink *devlink, u16 mode,
 		     struct netlink_ext_ack *extack);
 bool ice_is_eswitch_mode_switchdev(struct ice_pf *pf);
+
+void ice_eswitch_update_repr(struct ice_vsi *vsi);
 #else /* CONFIG_ICE_SWITCHDEV */
 static inline void ice_eswitch_release(struct ice_pf *pf) { }
 
+static inline void ice_eswitch_update_repr(struct ice_vsi *vsi) { }
+
 static inline int ice_eswitch_configure(struct ice_pf *pf)
 {
 	return -EOPNOTSUPP;
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index ad9971539e0f..933a50b2a1f7 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6077,7 +6077,8 @@ int ice_vsi_setup_tx_rings(struct ice_vsi *vsi)
 		if (!ring)
 			return -EINVAL;
 
-		ring->netdev = vsi->netdev;
+		if (vsi->netdev)
+			ring->netdev = vsi->netdev;
 		err = ice_setup_tx_ring(ring);
 		if (err)
 			break;
@@ -6108,7 +6109,8 @@ int ice_vsi_setup_rx_rings(struct ice_vsi *vsi)
 		if (!ring)
 			return -EINVAL;
 
-		ring->netdev = vsi->netdev;
+		if (vsi->netdev)
+			ring->netdev = vsi->netdev;
 		err = ice_setup_rx_ring(ring);
 		if (err)
 			break;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 43a545e23501..195a0839f866 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -6,6 +6,7 @@
 #include "ice_lib.h"
 #include "ice_fltr.h"
 #include "ice_flow.h"
+#include "ice_eswitch.h"
 #include "ice_virtchnl_allowlist.h"
 
 #define FIELD_SELECTOR(proto_hdr_field) \
@@ -589,6 +590,8 @@ void ice_free_vfs(struct ice_pf *pf)
 	if (!pf->vf)
 		return;
 
+	ice_eswitch_release(pf);
+
 	while (test_and_set_bit(ICE_VF_DIS, pf->state))
 		usleep_range(1000, 2000);
 
@@ -902,6 +905,9 @@ static int ice_vf_rebuild_host_mac_cfg(struct ice_vf *vf)
 	enum ice_status status;
 	u8 broadcast[ETH_ALEN];
 
+	if (ice_is_eswitch_mode_switchdev(vf->pf))
+		return 0;
+
 	eth_broadcast_addr(broadcast);
 	status = ice_fltr_add_mac(vsi, broadcast, ICE_FWD_TO_VSI);
 	if (status) {
@@ -1688,6 +1694,8 @@ bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 	}
 
 	ice_vf_post_vsi_rebuild(vf);
+	vsi = ice_get_vf_vsi(vf);
+	ice_eswitch_update_repr(vsi);
 
 	/* if the VF has been reset allow it to come up again */
 	if (ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->malvfs, ICE_MAX_VF_COUNT, vf->vf_id))
@@ -1939,6 +1947,10 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
 	}
 
 	clear_bit(ICE_VF_DIS, pf->state);
+
+	if (ice_eswitch_configure(pf))
+		goto err_unroll_sriov;
+
 	return 0;
 
 err_unroll_sriov:
@@ -4805,6 +4817,12 @@ int ice_set_vf_trust(struct net_device *netdev, int vf_id, bool trusted)
 	struct ice_vf *vf;
 	int ret;
 
+	if (ice_is_eswitch_mode_switchdev(pf)) {
+		dev_info(ice_pf_to_dev(pf),
+			 "Trusted VF is forbidden in switchdev mode\n");
+		return -EOPNOTSUPP;
+	}
+
 	if (ice_validate_vf_id(pf, vf_id))
 		return -EINVAL;
 
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
