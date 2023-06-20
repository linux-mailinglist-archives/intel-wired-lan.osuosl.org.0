Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A428737446
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 20:32:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E81D882B34;
	Tue, 20 Jun 2023 18:32:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E81D882B34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687285971;
	bh=Om1rg9ke8OTjwb4JSz0Tmv5pCUlwJ79mSyZA4ui2eMc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KirVhQUrwawZiWBbQsDak6p042zQccCgek/jUMs8kNjOJaxPFV/UumXX12HxlDCkZ
	 FdWEJAPT5slP3euhuZj2cTRej3KXWbml2lXGkgmgLx8sAWfFf36A4GjsgsmNVmnpKP
	 oCRZvWJR8gPkSnlwBdtMdgyLTZMIaa4KndvO1glSwTntNN3i0HgAUK0P33N+fFRSYd
	 aPsUCZ3ww37iPsmJrQrCs4ZNXmmlc8IbjQFKmCsU7PYqGLIjC/pSRbVKzyGNv0+Vh+
	 qxstbOiljafLEWQosl8/wN0Q+QMDMEFg6TLhS7DwC4kya+rn1aIjj+mVuvQPAnA0BL
	 miWx7BGxXlyDQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fcAWiiUTumCv; Tue, 20 Jun 2023 18:32:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E81082144;
	Tue, 20 Jun 2023 18:32:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E81082144
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 825A71BF4E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 18:32:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9FB6960F88
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 18:32:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9FB6960F88
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k6tXAMr6mvYB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 18:32:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 75D7460E80
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 75D7460E80
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 18:32:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="425907907"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="425907907"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 11:32:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="784204391"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="784204391"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 11:32:33 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Jun 2023 11:34:06 -0700
Message-Id: <20230620183414.848016-3-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230620183414.848016-1-david.m.ertman@intel.com>
References: <20230620183414.848016-1-david.m.ertman@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687285956; x=1718821956;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dV/7v05gzYe4XOWinuST06CoIhQI6duiE73ONLkz3RY=;
 b=kTbMK4DWcIwejgC/hyd3EoY1sQqiLw9NC1bjPp2DDlt7vEVqCMCUvCTP
 0qx9VJ9EocbspqlhJ1vJdDDdeUE3Cd9qMaLYTjDrKmG8lh5gqdpJ5qz4q
 jIDtu6djhh6ekQPqx9vzYPg4qmXHbEa0aJCFfiB86upxIIijG3JwTQUH8
 xiyi1xM78zFeoH7hfpdHkXUoI8KbsHdPzR72cEiLUBEvVrIUoV07JY7Rh
 /RjFNVRgjLljoeduUwHUs7xmxIhhU77as3F+Cu8LDEtXmdpWfjZWPIZDq
 wRie6UpT4U1G2wGwk+OR3SRRcKTorE7QjgLFc4sKyxam/T9/4MmEJRaVx
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kTbMK4DW
Subject: [Intel-wired-lan] [PATCH iwl-next v5 02/10] ice: Add driver support
 for firmware changes for LAG
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
Cc: netdev@vger.kernel.org, bcreeley@amd.com, daniel.machon@microchip.com,
 simon.horman@corigine.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add the defines, fields, and detection code for FW support of LAG for
SRIOV.  Also exposes some previously static functions to allow access
in the lag code.

Clean up code that is unused or not needed for LAG support.  Also add
an ordered workqueue for processing LAG events.

Reviewed-by: Daniel Machon <daniel.machon@microchip.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |  5 ++
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  3 ++
 drivers/net/ethernet/intel/ice/ice_common.c   |  8 +++
 drivers/net/ethernet/intel/ice/ice_lag.c      | 53 ++++++++++---------
 drivers/net/ethernet/intel/ice/ice_lib.c      |  2 +-
 drivers/net/ethernet/intel/ice/ice_lib.h      |  1 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 22 ++++++--
 drivers/net/ethernet/intel/ice/ice_type.h     |  2 +
 8 files changed, 66 insertions(+), 30 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 9109006336f0..5ac0ad12f9f1 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -200,6 +200,8 @@ enum ice_feature {
 	ICE_F_PTP_EXTTS,
 	ICE_F_SMA_CTRL,
 	ICE_F_GNSS,
+	ICE_F_ROCE_LAG,
+	ICE_F_SRIOV_LAG,
 	ICE_F_MAX
 };
 
@@ -569,6 +571,7 @@ struct ice_pf {
 	struct mutex sw_mutex;		/* lock for protecting VSI alloc flow */
 	struct mutex tc_mutex;		/* lock to protect TC changes */
 	struct mutex adev_mutex;	/* lock to protect aux device access */
+	struct mutex lag_mutex;		/* protect ice_lag struct in PF */
 	u32 msg_enable;
 	struct ice_ptp ptp;
 	struct gnss_serial *gnss_serial;
@@ -639,6 +642,8 @@ struct ice_pf {
 	struct ice_agg_node vf_agg_node[ICE_MAX_VF_AGG_NODES];
 };
 
+extern struct workqueue_struct *ice_lag_wq;
+
 struct ice_netdev_priv {
 	struct ice_vsi *vsi;
 	struct ice_repr *repr;
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 6ea0d4c017f0..6b5ba9a02bad 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -120,6 +120,9 @@ struct ice_aqc_list_caps_elem {
 #define ICE_AQC_CAPS_PCIE_RESET_AVOIDANCE		0x0076
 #define ICE_AQC_CAPS_POST_UPDATE_RESET_RESTRICT		0x0077
 #define ICE_AQC_CAPS_NVM_MGMT				0x0080
+#define ICE_AQC_CAPS_FW_LAG_SUPPORT			0x0092
+#define ICE_AQC_BIT_ROCEV2_LAG				0x01
+#define ICE_AQC_BIT_SRIOV_LAG				0x02
 
 	u8 major_ver;
 	u8 minor_ver;
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 09e2e38d538e..6ddf607d2edf 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2241,6 +2241,14 @@ ice_parse_common_caps(struct ice_hw *hw, struct ice_hw_common_caps *caps,
 			  "%s: reset_restrict_support = %d\n", prefix,
 			  caps->reset_restrict_support);
 		break;
+	case ICE_AQC_CAPS_FW_LAG_SUPPORT:
+		caps->roce_lag = !!(number & ICE_AQC_BIT_ROCEV2_LAG);
+		ice_debug(hw, ICE_DBG_INIT, "%s: roce_lag = %u\n",
+			  prefix, caps->roce_lag);
+		caps->sriov_lag = !!(number & ICE_AQC_BIT_SRIOV_LAG);
+		ice_debug(hw, ICE_DBG_INIT, "%s: sriov_lag = %u\n",
+			  prefix, caps->sriov_lag);
+		break;
 	default:
 		/* Not one of the recognized common capabilities */
 		found = false;
diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 5a7753bda324..d018e68f5a6d 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -4,8 +4,12 @@
 /* Link Aggregation code */
 
 #include "ice.h"
+#include "ice_lib.h"
 #include "ice_lag.h"
 
+#define ICE_LAG_RES_SHARED	BIT(14)
+#define ICE_LAG_RES_VALID	BIT(15)
+
 /**
  * ice_lag_set_primary - set PF LAG state as Primary
  * @lag: LAG info struct
@@ -225,6 +229,26 @@ static void ice_lag_unregister(struct ice_lag *lag, struct net_device *netdev)
 	lag->role = ICE_LAG_NONE;
 }
 
+/**
+ * ice_lag_init_feature_support_flag - Check for NVM support for LAG
+ * @pf: PF struct
+ */
+static void ice_lag_init_feature_support_flag(struct ice_pf *pf)
+{
+	struct ice_hw_common_caps *caps;
+
+	caps = &pf->hw.dev_caps.common_cap;
+	if (caps->roce_lag)
+		ice_set_feature_support(pf, ICE_F_ROCE_LAG);
+	else
+		ice_clear_feature_support(pf, ICE_F_ROCE_LAG);
+
+	if (caps->sriov_lag)
+		ice_set_feature_support(pf, ICE_F_SRIOV_LAG);
+	else
+		ice_clear_feature_support(pf, ICE_F_SRIOV_LAG);
+}
+
 /**
  * ice_lag_changeupper_event - handle LAG changeupper event
  * @lag: LAG info struct
@@ -264,26 +288,6 @@ static void ice_lag_changeupper_event(struct ice_lag *lag, void *ptr)
 	ice_display_lag_info(lag);
 }
 
-/**
- * ice_lag_changelower_event - handle LAG changelower event
- * @lag: LAG info struct
- * @ptr: opaque data pointer
- *
- * ptr to be cast to netdev_notifier_changelowerstate_info
- */
-static void ice_lag_changelower_event(struct ice_lag *lag, void *ptr)
-{
-	struct net_device *netdev = netdev_notifier_info_to_dev(ptr);
-
-	if (netdev != lag->netdev)
-		return;
-
-	netdev_dbg(netdev, "bonding info\n");
-
-	if (!netif_is_lag_port(netdev))
-		netdev_dbg(netdev, "CHANGELOWER rcvd, but netdev not in LAG. Bail\n");
-}
-
 /**
  * ice_lag_event_handler - handle LAG events from netdev
  * @notif_blk: notifier block registered by this netdev
@@ -310,9 +314,6 @@ ice_lag_event_handler(struct notifier_block *notif_blk, unsigned long event,
 	case NETDEV_CHANGEUPPER:
 		ice_lag_changeupper_event(lag, ptr);
 		break;
-	case NETDEV_CHANGELOWERSTATE:
-		ice_lag_changelower_event(lag, ptr);
-		break;
 	case NETDEV_BONDING_INFO:
 		ice_lag_info_event(lag, ptr);
 		break;
@@ -379,6 +380,8 @@ int ice_init_lag(struct ice_pf *pf)
 	struct ice_vsi *vsi;
 	int err;
 
+	ice_lag_init_feature_support_flag(pf);
+
 	pf->lag = kzalloc(sizeof(*lag), GFP_KERNEL);
 	if (!pf->lag)
 		return -ENOMEM;
@@ -435,9 +438,7 @@ void ice_deinit_lag(struct ice_pf *pf)
 	if (lag->pf)
 		ice_unregister_lag_handler(lag);
 
-	dev_put(lag->upper_netdev);
-
-	dev_put(lag->peer_netdev);
+	flush_workqueue(ice_lag_wq);
 
 	kfree(lag);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 984b381386ff..cdb352e0fa07 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3997,7 +3997,7 @@ bool ice_is_feature_supported(struct ice_pf *pf, enum ice_feature f)
  * @pf: pointer to the struct ice_pf instance
  * @f: feature enum to set
  */
-static void ice_set_feature_support(struct ice_pf *pf, enum ice_feature f)
+void ice_set_feature_support(struct ice_pf *pf, enum ice_feature f)
 {
 	if (f < 0 || f >= ICE_F_MAX)
 		return;
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 1628385a9672..dd53fe968ad8 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -163,6 +163,7 @@ int ice_vsi_del_vlan_zero(struct ice_vsi *vsi);
 bool ice_vsi_has_non_zero_vlans(struct ice_vsi *vsi);
 u16 ice_vsi_num_non_zero_vlans(struct ice_vsi *vsi);
 bool ice_is_feature_supported(struct ice_pf *pf, enum ice_feature f);
+void ice_set_feature_support(struct ice_pf *pf, enum ice_feature f);
 void ice_clear_feature_support(struct ice_pf *pf, enum ice_feature f);
 void ice_init_feature_support(struct ice_pf *pf);
 bool ice_vsi_is_rx_queue_active(struct ice_vsi *vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index f358018337af..23f5af5c7537 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -64,6 +64,7 @@ struct device *ice_hw_to_dev(struct ice_hw *hw)
 }
 
 static struct workqueue_struct *ice_wq;
+struct workqueue_struct *ice_lag_wq;
 static const struct net_device_ops ice_netdev_safe_mode_ops;
 static const struct net_device_ops ice_netdev_ops;
 
@@ -3795,6 +3796,7 @@ u16 ice_get_avail_rxq_count(struct ice_pf *pf)
 static void ice_deinit_pf(struct ice_pf *pf)
 {
 	ice_service_task_stop(pf);
+	mutex_destroy(&pf->lag_mutex);
 	mutex_destroy(&pf->adev_mutex);
 	mutex_destroy(&pf->sw_mutex);
 	mutex_destroy(&pf->tc_mutex);
@@ -3875,6 +3877,7 @@ static int ice_init_pf(struct ice_pf *pf)
 	mutex_init(&pf->sw_mutex);
 	mutex_init(&pf->tc_mutex);
 	mutex_init(&pf->adev_mutex);
+	mutex_init(&pf->lag_mutex);
 
 	INIT_HLIST_HEAD(&pf->aq_wait_list);
 	spin_lock_init(&pf->aq_wait_lock);
@@ -5565,7 +5568,7 @@ static struct pci_driver ice_driver = {
  */
 static int __init ice_module_init(void)
 {
-	int status;
+	int status = -ENOMEM;
 
 	pr_info("%s\n", ice_driver_string);
 	pr_info("%s\n", ice_copyright);
@@ -5573,15 +5576,27 @@ static int __init ice_module_init(void)
 	ice_wq = alloc_workqueue("%s", 0, 0, KBUILD_MODNAME);
 	if (!ice_wq) {
 		pr_err("Failed to create workqueue\n");
-		return -ENOMEM;
+		return status;
+	}
+
+	ice_lag_wq = alloc_ordered_workqueue("ice_lag_wq", 0);
+	if (!ice_lag_wq) {
+		pr_err("Failed to create LAG workqueue\n");
+		goto err_dest_wq;
 	}
 
 	status = pci_register_driver(&ice_driver);
 	if (status) {
 		pr_err("failed to register PCI driver, err %d\n", status);
-		destroy_workqueue(ice_wq);
+		goto err_dest_lag_wq;
 	}
 
+	return 0;
+
+err_dest_lag_wq:
+	destroy_workqueue(ice_lag_wq);
+err_dest_wq:
+	destroy_workqueue(ice_wq);
 	return status;
 }
 module_init(ice_module_init);
@@ -5596,6 +5611,7 @@ static void __exit ice_module_exit(void)
 {
 	pci_unregister_driver(&ice_driver);
 	destroy_workqueue(ice_wq);
+	destroy_workqueue(ice_lag_wq);
 	pr_info("module unloaded\n");
 }
 module_exit(ice_module_exit);
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index a073616671ef..5e353b0cbe6f 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -277,6 +277,8 @@ struct ice_hw_common_caps {
 	u8 dcb;
 	u8 ieee_1588;
 	u8 rdma;
+	u8 roce_lag;
+	u8 sriov_lag;
 
 	bool nvm_update_pending_nvm;
 	bool nvm_update_pending_orom;
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
