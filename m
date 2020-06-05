Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A88981EFE91
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Jun 2020 19:12:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3D72D88933;
	Fri,  5 Jun 2020 17:12:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8B+x0WikYolm; Fri,  5 Jun 2020 17:12:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 31B7588A0D;
	Fri,  5 Jun 2020 17:12:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 150FA1BF30B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2020 17:12:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E489120461
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2020 17:12:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rEbySLZXZeOt for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Jun 2020 17:12:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id C0E5C20371
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2020 17:12:15 +0000 (UTC)
IronPort-SDR: OwH9JtYCV/66fsqIxCxjyBqnucZl7SZj0dRMkvghd/fY/8YpsmZ6DBFaqTWXCkDvUzKCdFe+JG
 0Tf6EPyRQelg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2020 10:12:15 -0700
IronPort-SDR: UskvVIUhDjPyWCd1rgXqKK/p7b+4v5nY/+iQNf9nV34mzSlvvqtHr3AQuZateHRPTJbvsO+F7o
 lVTJn44IWBkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,477,1583222400"; d="scan'208";a="273530621"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga006.jf.intel.com with ESMTP; 05 Jun 2020 10:12:14 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  5 Jun 2020 10:09:43 -0700
Message-Id: <20200605170946.23494-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 1/4] iavf: fix speed reporting over
 virtchnl
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

Link speeds are communicated over virtchnl using an enum
virtchnl_link_speed. Currently, the highest link speed is 40Gbps which
leaves us unable to reflect some speeds that an ice VF is capable of.
This causes link speed to be misreported on the iavf driver.

Allow for communicating link speeds using Mbps so that the proper speed can
be reported for an ice VF. Moving away from the enum allows us to
communicate future speed changes without requiring a new enum to be added.

In order to support communicating link speeds over virtchnl in Mbps the
following functionality was added:
    - Added u32 link_speed_mbps in the iavf_adapter structure.
    - Added the macro ADV_LINK_SUPPORT(_a) to determine if the VF
      driver supports communicating link speeds in Mbps.
    - Added the function iavf_get_vpe_link_status() to fill the
      correct link_status in the event_data union based on the
      ADV_LINK_SUPPORT(_a) macro.
    - Added the function iavf_set_adapter_link_speed_from_vpe()
      to determine whether or not to fill the u32 link_speed_mbps or
      enum virtchnl_link_speed link_speed field in the iavf_adapter
      structure based on the ADV_LINK_SUPPORT(_a) macro.
    - Do not free vf_res in iavf_init_get_resources() as vf_res will be
      accessed in iavf_get_link_ksettings(); memset to 0 instead. This
      memory is subsequently freed in iavf_remove().

Fixes: 7c710869d64e ("ice: Add handlers for VF netdevice operations")
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Sergey Nemov <sergey.nemov@intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        | 14 +++
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 14 ++-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 25 ++++--
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 88 ++++++++++++++++---
 4 files changed, 120 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 563da1f95b67..56cd1a39a4b5 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -87,6 +87,10 @@ struct iavf_vsi {
 #define IAVF_HLUT_ARRAY_SIZE ((IAVF_VFQF_HLUT_MAX_INDEX + 1) * 4)
 #define IAVF_MBPS_DIVISOR	125000 /* divisor to convert to Mbps */
 
+#define IAVF_VIRTCHNL_VF_RESOURCE_SIZE (sizeof(struct virtchnl_vf_resource) + \
+					(IAVF_MAX_VF_VSI * \
+					 sizeof(struct virtchnl_vsi_resource)))
+
 /* MAX_MSIX_Q_VECTORS of these are allocated,
  * but we only use one per queue-specific vector.
  */
@@ -306,6 +310,14 @@ struct iavf_adapter {
 	bool netdev_registered;
 	bool link_up;
 	enum virtchnl_link_speed link_speed;
+	/* This is only populated if the VIRTCHNL_VF_CAP_ADV_LINK_SPEED is set
+	 * in vf_res->vf_cap_flags. Use ADV_LINK_SUPPORT macro to determine if
+	 * this field is valid. This field should be used going forward and the
+	 * enum virtchnl_link_speed above should be considered the legacy way of
+	 * storing/communicating link speeds.
+	 */
+	u32 link_speed_mbps;
+
 	enum virtchnl_ops current_op;
 #define CLIENT_ALLOWED(_a) ((_a)->vf_res ? \
 			    (_a)->vf_res->vf_cap_flags & \
@@ -322,6 +334,8 @@ struct iavf_adapter {
 			VIRTCHNL_VF_OFFLOAD_RSS_PF)))
 #define VLAN_ALLOWED(_a) ((_a)->vf_res->vf_cap_flags & \
 			  VIRTCHNL_VF_OFFLOAD_VLAN)
+#define ADV_LINK_SUPPORT(_a) ((_a)->vf_res->vf_cap_flags & \
+			      VIRTCHNL_VF_CAP_ADV_LINK_SPEED)
 	struct virtchnl_vf_resource *vf_res; /* incl. all VSIs */
 	struct virtchnl_vsi_resource *vsi_res; /* our LAN VSI */
 	struct virtchnl_version_info pf_version;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 032cc590292d..60a3519713d4 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -278,7 +278,18 @@ static int iavf_get_link_ksettings(struct net_device *netdev,
 	ethtool_link_ksettings_zero_link_mode(cmd, supported);
 	cmd->base.autoneg = AUTONEG_DISABLE;
 	cmd->base.port = PORT_NONE;
-	/* Set speed and duplex */
+	cmd->base.duplex = DUPLEX_FULL;
+
+	if (ADV_LINK_SUPPORT(adapter)) {
+		if (adapter->link_speed_mbps &&
+		    adapter->link_speed_mbps < U32_MAX)
+			cmd->base.speed = adapter->link_speed_mbps;
+		else
+			cmd->base.speed = SPEED_UNKNOWN;
+
+		return 0;
+	}
+
 	switch (adapter->link_speed) {
 	case IAVF_LINK_SPEED_40GB:
 		cmd->base.speed = SPEED_40000;
@@ -306,7 +317,6 @@ static int iavf_get_link_ksettings(struct net_device *netdev,
 	default:
 		break;
 	}
-	cmd->base.duplex = DUPLEX_FULL;
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 6d0174b88954..0e2be56081e1 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1745,17 +1745,17 @@ static int iavf_init_get_resources(struct iavf_adapter *adapter)
 	struct net_device *netdev = adapter->netdev;
 	struct pci_dev *pdev = adapter->pdev;
 	struct iavf_hw *hw = &adapter->hw;
-	int err = 0, bufsz;
+	int err;
 
 	WARN_ON(adapter->state != __IAVF_INIT_GET_RESOURCES);
 	/* aq msg sent, awaiting reply */
 	if (!adapter->vf_res) {
-		bufsz = sizeof(struct virtchnl_vf_resource) +
-			(IAVF_MAX_VF_VSI *
-			sizeof(struct virtchnl_vsi_resource));
-		adapter->vf_res = kzalloc(bufsz, GFP_KERNEL);
-		if (!adapter->vf_res)
+		adapter->vf_res = kzalloc(IAVF_VIRTCHNL_VF_RESOURCE_SIZE,
+					  GFP_KERNEL);
+		if (!adapter->vf_res) {
+			err = -ENOMEM;
 			goto err;
+		}
 	}
 	err = iavf_get_vf_config(adapter);
 	if (err == IAVF_ERR_ADMIN_QUEUE_NO_WORK) {
@@ -2025,7 +2025,7 @@ static void iavf_disable_vf(struct iavf_adapter *adapter)
 	iavf_reset_interrupt_capability(adapter);
 	iavf_free_queues(adapter);
 	iavf_free_q_vectors(adapter);
-	kfree(adapter->vf_res);
+	memset(adapter->vf_res, 0, IAVF_VIRTCHNL_VF_RESOURCE_SIZE);
 	iavf_shutdown_adminq(&adapter->hw);
 	adapter->netdev->flags &= ~IFF_UP;
 	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
@@ -2476,6 +2476,16 @@ static int iavf_validate_tx_bandwidth(struct iavf_adapter *adapter,
 {
 	int speed = 0, ret = 0;
 
+	if (ADV_LINK_SUPPORT(adapter)) {
+		if (adapter->link_speed_mbps < U32_MAX) {
+			speed = adapter->link_speed_mbps;
+			goto validate_bw;
+		} else {
+			dev_err(&adapter->pdev->dev, "Unknown link speed\n");
+			return -EINVAL;
+		}
+	}
+
 	switch (adapter->link_speed) {
 	case IAVF_LINK_SPEED_40GB:
 		speed = 40000;
@@ -2499,6 +2509,7 @@ static int iavf_validate_tx_bandwidth(struct iavf_adapter *adapter,
 		break;
 	}
 
+validate_bw:
 	if (max_tx_rate > speed) {
 		dev_err(&adapter->pdev->dev,
 			"Invalid tx rate specified\n");
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index d58374c2c33d..ca79bec4ebd9 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -139,7 +139,8 @@ int iavf_send_vf_config_msg(struct iavf_adapter *adapter)
 	       VIRTCHNL_VF_OFFLOAD_ENCAP |
 	       VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM |
 	       VIRTCHNL_VF_OFFLOAD_REQ_QUEUES |
-	       VIRTCHNL_VF_OFFLOAD_ADQ;
+	       VIRTCHNL_VF_OFFLOAD_ADQ |
+	       VIRTCHNL_VF_CAP_ADV_LINK_SPEED;
 
 	adapter->current_op = VIRTCHNL_OP_GET_VF_RESOURCES;
 	adapter->aq_required &= ~IAVF_FLAG_AQ_GET_CONFIG;
@@ -891,6 +892,8 @@ void iavf_disable_vlan_stripping(struct iavf_adapter *adapter)
 	iavf_send_pf_msg(adapter, VIRTCHNL_OP_DISABLE_VLAN_STRIPPING, NULL, 0);
 }
 
+#define IAVF_MAX_SPEED_STRLEN	13
+
 /**
  * iavf_print_link_message - print link up or down
  * @adapter: adapter structure
@@ -900,37 +903,99 @@ void iavf_disable_vlan_stripping(struct iavf_adapter *adapter)
 static void iavf_print_link_message(struct iavf_adapter *adapter)
 {
 	struct net_device *netdev = adapter->netdev;
-	char *speed = "Unknown ";
+	int link_speed_mbps;
+	char *speed;
 
 	if (!adapter->link_up) {
 		netdev_info(netdev, "NIC Link is Down\n");
 		return;
 	}
 
+	speed = kcalloc(1, IAVF_MAX_SPEED_STRLEN, GFP_KERNEL);
+	if (!speed)
+		return;
+
+	if (ADV_LINK_SUPPORT(adapter)) {
+		link_speed_mbps = adapter->link_speed_mbps;
+		goto print_link_msg;
+	}
+
 	switch (adapter->link_speed) {
 	case IAVF_LINK_SPEED_40GB:
-		speed = "40 G";
+		link_speed_mbps = SPEED_40000;
 		break;
 	case IAVF_LINK_SPEED_25GB:
-		speed = "25 G";
+		link_speed_mbps = SPEED_25000;
 		break;
 	case IAVF_LINK_SPEED_20GB:
-		speed = "20 G";
+		link_speed_mbps = SPEED_20000;
 		break;
 	case IAVF_LINK_SPEED_10GB:
-		speed = "10 G";
+		link_speed_mbps = SPEED_10000;
 		break;
 	case IAVF_LINK_SPEED_1GB:
-		speed = "1000 M";
+		link_speed_mbps = SPEED_1000;
 		break;
 	case IAVF_LINK_SPEED_100MB:
-		speed = "100 M";
+		link_speed_mbps = SPEED_100;
 		break;
 	default:
+		link_speed_mbps = SPEED_UNKNOWN;
 		break;
 	}
 
-	netdev_info(netdev, "NIC Link is Up %sbps Full Duplex\n", speed);
+print_link_msg:
+	if (link_speed_mbps > SPEED_1000) {
+		if (link_speed_mbps == SPEED_2500)
+			snprintf(speed, IAVF_MAX_SPEED_STRLEN, "2.5 Gbps");
+		else
+			/* convert to Gbps inline */
+			snprintf(speed, IAVF_MAX_SPEED_STRLEN, "%d %s",
+				 link_speed_mbps / 1000, "Gbps");
+	} else if (link_speed_mbps == SPEED_UNKNOWN) {
+		snprintf(speed, IAVF_MAX_SPEED_STRLEN, "%s", "Unknown Mbps");
+	} else {
+		snprintf(speed, IAVF_MAX_SPEED_STRLEN, "%u %s",
+			 link_speed_mbps, "Mbps");
+	}
+
+	netdev_info(netdev, "NIC Link is Up Speed is %s Full Duplex\n", speed);
+	kfree(speed);
+}
+
+/**
+ * iavf_get_vpe_link_status
+ * @adapter: adapter structure
+ * @vpe: virtchnl_pf_event structure
+ *
+ * Helper function for determining the link status
+ **/
+static bool
+iavf_get_vpe_link_status(struct iavf_adapter *adapter,
+			 struct virtchnl_pf_event *vpe)
+{
+	if (ADV_LINK_SUPPORT(adapter))
+		return vpe->event_data.link_event_adv.link_status;
+	else
+		return vpe->event_data.link_event.link_status;
+}
+
+/**
+ * iavf_set_adapter_link_speed_from_vpe
+ * @adapter: adapter structure for which we are setting the link speed
+ * @vpe: virtchnl_pf_event structure that contains the link speed we are setting
+ *
+ * Helper function for setting iavf_adapter link speed
+ **/
+static void
+iavf_set_adapter_link_speed_from_vpe(struct iavf_adapter *adapter,
+				     struct virtchnl_pf_event *vpe)
+{
+	if (ADV_LINK_SUPPORT(adapter))
+		adapter->link_speed_mbps =
+			vpe->event_data.link_event_adv.link_speed;
+	else
+		adapter->link_speed = vpe->event_data.link_event.link_speed;
 }
 
 /**
@@ -1160,12 +1225,11 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 	if (v_opcode == VIRTCHNL_OP_EVENT) {
 		struct virtchnl_pf_event *vpe =
 			(struct virtchnl_pf_event *)msg;
-		bool link_up = vpe->event_data.link_event.link_status;
+		bool link_up = iavf_get_vpe_link_status(adapter, vpe);
 
 		switch (vpe->event) {
 		case VIRTCHNL_EVENT_LINK_CHANGE:
-			adapter->link_speed =
-				vpe->event_data.link_event.link_speed;
+			iavf_set_adapter_link_speed_from_vpe(adapter, vpe);
 
 			/* we've already got the right link status, bail */
 			if (adapter->link_up == link_up)
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
