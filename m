Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94DC83F2407
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Aug 2021 02:06:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0B3F7401D8;
	Fri, 20 Aug 2021 00:06:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D3wJttchJqWi; Fri, 20 Aug 2021 00:06:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B5AED404BD;
	Fri, 20 Aug 2021 00:06:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 175211BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 00:05:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A519E60B57
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 00:05:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c0rVob4VXXrN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Aug 2021 00:05:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D78DE60B51
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 00:05:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10081"; a="280413587"
X-IronPort-AV: E=Sophos;i="5.84,336,1620716400"; d="scan'208";a="280413587"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 17:05:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,336,1620716400"; d="scan'208";a="512317495"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
 by fmsmga004.fm.intel.com with ESMTP; 19 Aug 2021 17:05:31 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 19 Aug 2021 17:08:57 -0700
Message-Id: <20210820000859.680522-11-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210820000859.680522-1-anthony.l.nguyen@intel.com>
References: <20210820000859.680522-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue v4 10/12] ice: rebuild switchdev when
 resetting all VFs
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

As resetting all VFs behaves mostly like creating new VFs also
eswitch infrastructure has to be recreated. The easiest way to
do that is to rebuild eswitch after resetting VFs.

Implement helper functions to start and stop all representors
queues. This is used to disable traffic on port representors.

In rebuild path:
- NAPI has to be disabled
- eswitch environment has to be set up
- new port representors have to be created, because the old
one had pointer to not exsisting VFs
- new control plane VSI ring should be remaped
- NAPI hast to be enabled
- rxdid has to be set to FLEX_NIC_2, because this descriptor id
support source_vsi, which is needed on control plane VSI queues
- port representors queues have to be started

Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c  | 83 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_eswitch.h  | 10 +++
 drivers/net/ethernet/intel/ice/ice_main.c     | 11 ++-
 drivers/net/ethernet/intel/ice/ice_repr.c     | 20 +++++
 drivers/net/ethernet/intel/ice/ice_repr.h     |  3 +
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  4 +
 6 files changed, 130 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 79877787f17c..c329fc364d03 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -291,6 +291,18 @@ ice_eswitch_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
 	return ice_vsi_setup(pf, pi, ICE_VSI_SWITCHDEV_CTRL, ICE_INVAL_VFID);
 }
 
+/**
+ * ice_eswitch_napi_del - remove NAPI handle for all port representors
+ * @pf: pointer to PF structure
+ */
+static void ice_eswitch_napi_del(struct ice_pf *pf)
+{
+	int i;
+
+	ice_for_each_vf(pf, i)
+		netif_napi_del(&pf->vf[i].repr->q_vector->napi);
+}
+
 /**
  * ice_eswitch_napi_enable - enable NAPI for all port representors
  * @pf: pointer to PF structure
@@ -494,3 +506,74 @@ int ice_eswitch_configure(struct ice_pf *pf)
 	pf->switchdev.is_running = true;
 	return 0;
 }
+
+/**
+ * ice_eswitch_start_all_tx_queues - start Tx queues of all port representors
+ * @pf: pointer to PF structure
+ */
+static void ice_eswitch_start_all_tx_queues(struct ice_pf *pf)
+{
+	struct ice_repr *repr;
+	int i;
+
+	if (test_bit(ICE_DOWN, pf->state))
+		return;
+
+	ice_for_each_vf(pf, i) {
+		repr = pf->vf[i].repr;
+		if (repr)
+			ice_repr_start_tx_queues(repr);
+	}
+}
+
+/**
+ * ice_eswitch_stop_all_tx_queues - stop Tx queues of all port representors
+ * @pf: pointer to PF structure
+ */
+void ice_eswitch_stop_all_tx_queues(struct ice_pf *pf)
+{
+	struct ice_repr *repr;
+	int i;
+
+	if (test_bit(ICE_DOWN, pf->state))
+		return;
+
+	ice_for_each_vf(pf, i) {
+		repr = pf->vf[i].repr;
+		if (repr)
+			ice_repr_stop_tx_queues(repr);
+	}
+}
+
+/**
+ * ice_eswitch_rebuild - rebuild eswitch
+ * @pf: pointer to PF structure
+ */
+int ice_eswitch_rebuild(struct ice_pf *pf)
+{
+	struct ice_vsi *ctrl_vsi = pf->switchdev.control_vsi;
+	int status;
+
+	ice_eswitch_napi_disable(pf);
+	ice_eswitch_napi_del(pf);
+
+	status = ice_eswitch_setup_env(pf);
+	if (status)
+		return status;
+
+	status = ice_eswitch_setup_reprs(pf);
+	if (status)
+		return status;
+
+	ice_eswitch_remap_rings_to_vectors(pf);
+
+	status = ice_vsi_open(ctrl_vsi);
+	if (status)
+		return status;
+
+	ice_eswitch_napi_enable(pf);
+	ice_eswitch_set_rxdid(ctrl_vsi, ICE_RXDID_FLEX_NIC_2);
+	ice_eswitch_start_all_tx_queues(pf);
+
+	return 0;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.h b/drivers/net/ethernet/intel/ice/ice_eswitch.h
index c27cd8d8c743..b4d8ec219a80 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.h
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.h
@@ -8,6 +8,7 @@
 #ifdef CONFIG_ICE_SWITCHDEV
 void ice_eswitch_release(struct ice_pf *pf);
 int ice_eswitch_configure(struct ice_pf *pf);
+int ice_eswitch_rebuild(struct ice_pf *pf);
 
 int ice_eswitch_mode_get(struct devlink *devlink, u16 *mode);
 int
@@ -16,9 +17,13 @@ ice_eswitch_mode_set(struct devlink *devlink, u16 mode,
 bool ice_is_eswitch_mode_switchdev(struct ice_pf *pf);
 
 void ice_eswitch_update_repr(struct ice_vsi *vsi);
+
+void ice_eswitch_stop_all_tx_queues(struct ice_pf *pf);
 #else /* CONFIG_ICE_SWITCHDEV */
 static inline void ice_eswitch_release(struct ice_pf *pf) { }
 
+static inline void ice_eswitch_stop_all_tx_queues(struct ice_pf *pf) { }
+
 static inline void ice_eswitch_update_repr(struct ice_vsi *vsi) { }
 
 static inline int ice_eswitch_configure(struct ice_pf *pf)
@@ -26,6 +31,11 @@ static inline int ice_eswitch_configure(struct ice_pf *pf)
 	return -EOPNOTSUPP;
 }
 
+static inline int ice_eswitch_rebuild(struct ice_pf *pf)
+{
+	return -EOPNOTSUPP;
+}
+
 static inline int ice_eswitch_mode_get(struct devlink *devlink, u16 *mode)
 {
 	return DEVLINK_ESWITCH_MODE_LEGACY;
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 933a50b2a1f7..639573f89fdc 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -19,6 +19,7 @@
  */
 #define CREATE_TRACE_POINTS
 #include "ice_trace.h"
+#include "ice_eswitch.h"
 
 #define DRV_SUMMARY	"Intel(R) Ethernet Connection E800 Series Linux Driver"
 static const char ice_driver_string[] = DRV_SUMMARY;
@@ -6008,9 +6009,11 @@ int ice_down(struct ice_vsi *vsi)
 	/* Caller of this function is expected to set the
 	 * vsi->state ICE_DOWN bit
 	 */
-	if (vsi->netdev) {
+	if (vsi->netdev && vsi->type == ICE_VSI_PF) {
 		netif_carrier_off(vsi->netdev);
 		netif_tx_disable(vsi->netdev);
+	} else if (vsi->type == ICE_VSI_SWITCHDEV_CTRL) {
+		ice_eswitch_stop_all_tx_queues(vsi->back);
 	}
 
 	ice_vsi_dis_irq(vsi);
@@ -6456,6 +6459,12 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 		goto err_vsi_rebuild;
 	}
 
+	err = ice_vsi_rebuild_by_type(pf, ICE_VSI_SWITCHDEV_CTRL);
+	if (err) {
+		dev_err(dev, "Switchdev CTRL VSI rebuild failed: %d\n", err);
+		goto err_vsi_rebuild;
+	}
+
 	/* If Flow Director is active */
 	if (test_bit(ICE_FLAG_FD_ENA, pf->flags)) {
 		err = ice_vsi_rebuild_by_type(pf, ICE_VSI_CTRL);
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index c88c5e65dc01..c558fb583e97 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -266,6 +266,26 @@ void ice_repr_rem_from_all_vfs(struct ice_pf *pf)
 	}
 }
 
+/**
+ * ice_repr_start_tx_queues - start Tx queues of port representor
+ * @repr: pointer to repr structure
+ */
+void ice_repr_start_tx_queues(struct ice_repr *repr)
+{
+	netif_carrier_on(repr->netdev);
+	netif_tx_start_all_queues(repr->netdev);
+}
+
+/**
+ * ice_repr_stop_tx_queues - stop Tx queues of port representor
+ * @repr: pointer to repr structure
+ */
+void ice_repr_stop_tx_queues(struct ice_repr *repr)
+{
+	netif_carrier_off(repr->netdev);
+	netif_tx_stop_all_queues(repr->netdev);
+}
+
 /**
  * ice_repr_set_traffic_vsi - set traffic VSI for port representor
  * @repr: repr on with VSI will be set
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.h b/drivers/net/ethernet/intel/ice/ice_repr.h
index 3c3388c995bf..12db25a174f7 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.h
+++ b/drivers/net/ethernet/intel/ice/ice_repr.h
@@ -17,6 +17,9 @@ struct ice_repr {
 int ice_repr_add_for_all_vfs(struct ice_pf *pf);
 void ice_repr_rem_from_all_vfs(struct ice_pf *pf);
 
+void ice_repr_start_tx_queues(struct ice_repr *repr);
+void ice_repr_stop_tx_queues(struct ice_repr *repr);
+
 void ice_repr_set_traffic_vsi(struct ice_repr *repr, struct ice_vsi *vsi);
 
 struct ice_repr *ice_netdev_to_repr(struct net_device *netdev);
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 195a0839f866..3a584eec8fd1 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -1563,6 +1563,10 @@ bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
 		ice_vf_post_vsi_rebuild(vf);
 	}
 
+	if (ice_is_eswitch_mode_switchdev(pf))
+		if (ice_eswitch_rebuild(pf))
+			dev_warn(dev, "eswitch rebuild failed\n");
+
 	ice_flush(hw);
 	clear_bit(ICE_VF_DIS, pf->state);
 
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
