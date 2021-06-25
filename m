Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3943B416B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Jun 2021 12:19:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F016405C9;
	Fri, 25 Jun 2021 10:19:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qiAGiVTa5Zu1; Fri, 25 Jun 2021 10:19:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ED7A74052F;
	Fri, 25 Jun 2021 10:19:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A25B21BF2A4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 10:18:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B815760632
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 10:18:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XpzgjdJSsSjv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Jun 2021 10:18:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0063B6070F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 10:18:52 +0000 (UTC)
IronPort-SDR: 6SlDWMh5LM3LMgFg0iinemzQSDhc/nAUxWJniGCdSFDmCVXu9rgyFGlzau2ngEH3EsWNZKOmTp
 c7Uv/ak+dL1A==
X-IronPort-AV: E=McAfee;i="6200,9189,10025"; a="188026853"
X-IronPort-AV: E=Sophos;i="5.83,298,1616482800"; d="scan'208";a="188026853"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 03:18:52 -0700
IronPort-SDR: 4W2fkwNZ+JJq3bZudSOlecSahJeVKWs2aDMRXilk9hHE1MCCk/k6N3H4JbQlnfkYbVM/Q1j2l4
 /g5ZGK8xLTbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,298,1616482800"; d="scan'208";a="474832814"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga004.fm.intel.com with ESMTP; 25 Jun 2021 03:18:52 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 25 Jun 2021 04:44:58 +0200
Message-Id: <20210625024501.6126-10-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210625024501.6126-1-michal.swiatkowski@linux.intel.com>
References: <20210625024501.6126-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v3 09/12] ice: enable/disable
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
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c  | 38 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_eswitch.h  |  4 ++
 drivers/net/ethernet/intel/ice/ice_main.c     |  6 ++-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 18 +++++++++
 4 files changed, 64 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index d8299f34245e..0be6ee996860 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -230,6 +230,32 @@ static void ice_eswitch_release_reprs(struct ice_pf *pf,
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
@@ -423,6 +449,18 @@ int ice_eswitch_mode_get(struct devlink *devlink, u16 *mode)
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
index 0c17134ae5dc..82b5fb9d6a89 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6065,7 +6065,8 @@ int ice_vsi_setup_tx_rings(struct ice_vsi *vsi)
 		if (!ring)
 			return -EINVAL;
 
-		ring->netdev = vsi->netdev;
+		if (vsi->netdev)
+			ring->netdev = vsi->netdev;
 		err = ice_setup_tx_ring(ring);
 		if (err)
 			break;
@@ -6096,7 +6097,8 @@ int ice_vsi_setup_rx_rings(struct ice_vsi *vsi)
 		if (!ring)
 			return -EINVAL;
 
-		ring->netdev = vsi->netdev;
+		if (vsi->netdev)
+			ring->netdev = vsi->netdev;
 		err = ice_setup_rx_ring(ring);
 		if (err)
 			break;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index f8a0a0b7a361..dce068af3882 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -6,6 +6,7 @@
 #include "ice_lib.h"
 #include "ice_fltr.h"
 #include "ice_flow.h"
+#include "ice_eswitch.h"
 #include "ice_virtchnl_allowlist.h"
 
 #define FIELD_SELECTOR(proto_hdr_field) \
@@ -587,6 +588,8 @@ void ice_free_vfs(struct ice_pf *pf)
 	if (!pf->vf)
 		return;
 
+	ice_eswitch_release(pf);
+
 	while (test_and_set_bit(ICE_VF_DIS, pf->state))
 		usleep_range(1000, 2000);
 
@@ -899,6 +902,9 @@ static int ice_vf_rebuild_host_mac_cfg(struct ice_vf *vf)
 	enum ice_status status;
 	u8 broadcast[ETH_ALEN];
 
+	if (ice_is_eswitch_mode_switchdev(vf->pf))
+		return 0;
+
 	eth_broadcast_addr(broadcast);
 	status = ice_fltr_add_mac(vsi, broadcast, ICE_FWD_TO_VSI);
 	if (status) {
@@ -1685,6 +1691,8 @@ bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 	}
 
 	ice_vf_post_vsi_rebuild(vf);
+	vsi = ice_get_vf_vsi(vf);
+	ice_eswitch_update_repr(vsi);
 
 	/* if the VF has been reset allow it to come up again */
 	if (ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->malvfs, ICE_MAX_VF_COUNT, vf->vf_id))
@@ -1936,6 +1944,10 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
 	}
 
 	clear_bit(ICE_VF_DIS, pf->state);
+
+	if (ice_eswitch_configure(pf))
+		goto err_unroll_sriov;
+
 	return 0;
 
 err_unroll_sriov:
@@ -4781,6 +4793,12 @@ int ice_set_vf_trust(struct net_device *netdev, int vf_id, bool trusted)
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
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
