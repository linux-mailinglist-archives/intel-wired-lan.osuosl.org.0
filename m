Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 033FB3E2666
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Aug 2021 10:49:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A94A60ACA;
	Fri,  6 Aug 2021 08:49:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4m09zKFWRGXZ; Fri,  6 Aug 2021 08:49:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD0E4608B8;
	Fri,  6 Aug 2021 08:49:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 835111BF82F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 08:49:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 61DD0608B8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 08:49:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ozZs4iwcJXai for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Aug 2021 08:49:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3B018605E5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 08:49:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="212476400"
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="212476400"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2021 01:49:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="669339319"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga006.fm.intel.com with ESMTP; 06 Aug 2021 01:49:09 -0700
Received: from gklab-229-137.igk.intel.com (gklab-229-137.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 1768n6kY030013
 for <intel-wired-lan@lists.osuosl.org>; Fri, 6 Aug 2021 09:49:09 +0100
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  6 Aug 2021 10:49:06 +0200
Message-Id: <1628239746-17380-10-git-send-email-wojciech.drewek@intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1628239746-17380-1-git-send-email-wojciech.drewek@intel.com>
References: <1628239746-17380-1-git-send-email-wojciech.drewek@intel.com>
Subject: [Intel-wired-lan] [PATCH net-next v6 9/9] ice: ndo_setup_tc
 implementation for PR
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Swiatkowski <michal.swiatkowski@intel.com>

Add tc-flower support for VF port representor devices.

Implement ndo_setup_tc callback for TC HW offload on VF port representors
devices. Implemented both methods: add and delete tc-flower flows.

Mark NETIF_F_HW_TC bit in net device's feature set to enable offload TC
infrastructure for port representor.

Implement TC filters replay function required to restore filters settings
while switchdev configuration is rebuilt.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c |  3 ++
 drivers/net/ethernet/intel/ice/ice_repr.c    | 53 ++++++++++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_tc_lib.c  | 17 +++++++++
 drivers/net/ethernet/intel/ice/ice_tc_lib.h  |  1 +
 4 files changed, 74 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index ec2aa789e214..ef6ca61c9859 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -7,6 +7,7 @@
 #include "ice_fltr.h"
 #include "ice_repr.h"
 #include "ice_devlink.h"
+#include "ice_tc_lib.h"
 
 /**
  * ice_eswitch_setup_env - configure switchdev HW filters
@@ -644,6 +645,8 @@ int ice_eswitch_rebuild(struct ice_pf *pf)
 
 	ice_eswitch_remap_rings_to_vectors(pf);
 
+	ice_replay_tc_fltrs(pf);
+
 	status = ice_vsi_open(ctrl_vsi);
 	if (status)
 		return status;
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index 23e27bec4a16..8fd90ac661b1 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -5,6 +5,7 @@
 #include "ice_eswitch.h"
 #include "ice_devlink.h"
 #include "ice_virtchnl_pf.h"
+#include "ice_tc_lib.h"
 
 /**
  * ice_repr_get_sw_port_id - get port ID associated with representor
@@ -141,6 +142,55 @@ static int ice_repr_stop(struct net_device *netdev)
 	return &repr->vf->devlink_port;
 }
 
+static int
+ice_repr_setup_tc_cls_flower(struct ice_repr *repr,
+			     struct flow_cls_offload *flower)
+{
+	switch (flower->command) {
+	case FLOW_CLS_REPLACE:
+		return ice_add_cls_flower(repr->netdev, repr->src_vsi, flower);
+	case FLOW_CLS_DESTROY:
+		return ice_del_cls_flower(repr->src_vsi, flower);
+	default:
+		return -EINVAL;
+	}
+}
+
+static int
+ice_repr_setup_tc_block_cb(enum tc_setup_type type, void *type_data,
+			   void *cb_priv)
+{
+	struct flow_cls_offload *flower = (struct flow_cls_offload *)type_data;
+	struct ice_netdev_priv *np = (struct ice_netdev_priv *)cb_priv;
+
+	switch (type) {
+	case TC_SETUP_CLSFLOWER:
+		return ice_repr_setup_tc_cls_flower(np->repr, flower);
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
+static LIST_HEAD(ice_repr_block_cb_list);
+
+static int
+ice_repr_setup_tc(struct net_device *netdev, enum tc_setup_type type,
+		  void *type_data)
+{
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+
+	switch (type) {
+	case TC_SETUP_BLOCK:
+		return flow_block_cb_setup_simple((struct flow_block_offload *)
+						  type_data,
+						  &ice_repr_block_cb_list,
+						  ice_repr_setup_tc_block_cb,
+						  np, np, true);
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
 static const struct net_device_ops ice_repr_netdev_ops = {
 	.ndo_get_phys_port_name = ice_repr_get_phys_port_name,
 	.ndo_get_stats64 = ice_repr_get_stats64,
@@ -148,6 +198,7 @@ static int ice_repr_stop(struct net_device *netdev)
 	.ndo_stop = ice_repr_stop,
 	.ndo_start_xmit = ice_eswitch_port_start_xmit,
 	.ndo_get_devlink_port = ice_repr_get_devlink_port,
+	.ndo_setup_tc = ice_repr_setup_tc,
 };
 
 /**
@@ -170,6 +221,8 @@ bool ice_is_port_repr_netdev(struct net_device *netdev)
 	netdev->netdev_ops = &ice_repr_netdev_ops;
 	ice_set_ethtool_repr_ops(netdev);
 
+	netdev->hw_features |= NETIF_F_HW_TC;
+
 	netif_carrier_off(netdev);
 	netif_tx_stop_all_queues(netdev);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 6a61888f80aa..34fe725b4a53 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -836,3 +836,20 @@ static int ice_del_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 
 	return 0;
 }
+
+/**
+ * ice_replay_tc_fltrs - replay TC filters
+ * @pf: pointer to PF struct
+ */
+void ice_replay_tc_fltrs(struct ice_pf *pf)
+{
+	struct ice_tc_flower_fltr *fltr;
+	struct hlist_node *node;
+
+	hlist_for_each_entry_safe(fltr, node,
+				  &pf->tc_flower_fltr_list,
+				  tc_flower_node) {
+		fltr->extack = NULL;
+		ice_add_switch_fltr(fltr->src_vsi, fltr);
+	}
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.h b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
index 883d2891f92c..d90e9e37ae25 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
@@ -125,5 +125,6 @@ struct ice_tc_flower_fltr {
 		   struct flow_cls_offload *cls_flower);
 int
 ice_del_cls_flower(struct ice_vsi *vsi, struct flow_cls_offload *cls_flower);
+void ice_replay_tc_fltrs(struct ice_pf *pf);
 
 #endif /* _ICE_TC_LIB_H_ */
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
