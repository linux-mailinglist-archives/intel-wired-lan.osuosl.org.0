Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 077AD77E470
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 16:59:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8CC2C42066;
	Wed, 16 Aug 2023 14:59:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8CC2C42066
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692197969;
	bh=da5FHyBis1EkoE/o23gfeWlHwYbFxFqdXmPhfDFBVtY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gFdGP/KLV3/vUUy76uCz1J01qHR6+hkpUOcMQXm4lPMOWadrKCo5RMaaMxWCdgvaA
	 lYr+/I91pDmSN7fLAQ7wiuJLJHMPqI2dXCK/8Ly0nTC57PVLdzu+gOoGImd0g4+d1Q
	 XBxNzmKqABS3g41QnMexLkA94jYword0rMwqJ6DzPR1u3xNutBuv6zzA8gxAmaFOE8
	 +YFmshy/R1xRVEuldLBKJzSFd8b4gZZak4dljsM3aK+sP9sYS7b64ZFfhm3PJi/79z
	 s+KENQyyC8Wwi1aNs1L8R6gqQqLVQupDVHWNaBMOvH6qmvqEaDTO7d5ui5Lkraab5W
	 sIcMX9CTaiY6g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zwVKePJinHwV; Wed, 16 Aug 2023 14:59:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8228142065;
	Wed, 16 Aug 2023 14:59:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8228142065
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4F0141BF4DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 03:29:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 28D1482157
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 03:29:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28D1482157
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vEEjHQtevvrE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 03:29:49 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DF82C8211A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 03:29:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DF82C8211A
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="372427794"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="372427794"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 20:29:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="710958659"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="710958659"
Received: from dpdk-wuwenjun-icelake-ii.sh.intel.com ([10.67.110.152])
 by orsmga006.jf.intel.com with ESMTP; 15 Aug 2023 20:29:45 -0700
From: Wenjun Wu <wenjun1.wu@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	netdev@vger.kernel.org
Date: Wed, 16 Aug 2023 11:33:53 +0800
Message-Id: <20230816033353.94565-6-wenjun1.wu@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230816033353.94565-1-wenjun1.wu@intel.com>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230816033353.94565-1-wenjun1.wu@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 16 Aug 2023 14:58:57 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692156588; x=1723692588;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gyXmiazhK0lS4Mi2GSq5dcAu9HOPmkNnnNrBHe5ODaw=;
 b=U3kwnT5Y8T0W0VpTfnMLLDQXmTqaIJUD7+7jT1+UwNRTfkeKlzDpfK7i
 m/psHwHnAYO1dm3EQ6p7t/NP98QWfeALpO7Z8+EvAtmfk8M14KLGR+Gra
 geWCol79BC8stMBRJW2/Io2JHjM1lrXBtn2kc1HmQc3wuOzXaK2IniNbA
 4M2Ww+g4AXquvhr0KAulMf3CMOstUPyTKEptAvd+MXwhyKAr9rDX5cfOs
 xv685quk8C/Om6CTx3jx98ni7AvDt1oHKlV+v3fRBYUlg16J3RF9MWqn7
 Oi/J4DAOoTT7wgIcaxYOwbe3AIyd5mcIq47im4Lh7jV+RUs36x9SLksvN
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U3kwnT5Y
Subject: [Intel-wired-lan] [PATCH iwl-next v3 5/5] iavf: Add VIRTCHNL
 Opcodes Support for Queue bw Setting
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
Cc: anthony.l.nguyen@intel.com, qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jun Zhang <xuejun.zhang@intel.com>

iavf rate tree with root node and queue nodes is created and registered
with devlink rate when iavf adapter is configured.

User can configure the tx_max and tx_share of each queue. If any one of
the queues have been fully updated by user, i.e. both tx_max and
tx_share have been updated for that queue, VIRTCHNL opcodes of
VIRTCHNL_OP_CONFIG_QUEUE_BW and VIRTCHNL_OP_CONFIG_QUANTA will be sent
to PF to configure queues allocated to VF if PF indicates support of
VIRTCHNL_VF_OFFLOAD_QOS through VF Resource / Capability Exchange.

Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |  14 ++
 .../net/ethernet/intel/iavf/iavf_devlink.c    |  29 +++
 .../net/ethernet/intel/iavf/iavf_devlink.h    |   1 +
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  45 +++-
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 230 +++++++++++++++++-
 5 files changed, 315 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index eec294b5a426..27a230f58816 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -252,6 +252,9 @@ struct iavf_cloud_filter {
 #define IAVF_RESET_WAIT_DETECTED_COUNT 500
 #define IAVF_RESET_WAIT_COMPLETE_COUNT 2000
 
+#define IAVF_MAX_QOS_TC_NUM		8
+#define IAVF_DEFAULT_QUANTA_SIZE	1024
+
 /* board specific private data structure */
 struct iavf_adapter {
 	struct workqueue_struct *wq;
@@ -351,6 +354,9 @@ struct iavf_adapter {
 #define IAVF_FLAG_AQ_DISABLE_CTAG_VLAN_INSERTION	BIT_ULL(36)
 #define IAVF_FLAG_AQ_ENABLE_STAG_VLAN_INSERTION		BIT_ULL(37)
 #define IAVF_FLAG_AQ_DISABLE_STAG_VLAN_INSERTION	BIT_ULL(38)
+#define IAVF_FLAG_AQ_CONFIGURE_QUEUES_BW		BIT_ULL(39)
+#define IAVF_FLAG_AQ_CONFIGURE_QUEUES_QUANTA_SIZE	BIT_ULL(40)
+#define IAVF_FLAG_AQ_GET_QOS_CAPS			BIT_ULL(41)
 
 	/* flags for processing extended capability messages during
 	 * __IAVF_INIT_EXTENDED_CAPS. Each capability exchange requires
@@ -374,6 +380,7 @@ struct iavf_adapter {
 	/* devlink & port data */
 	struct devlink *devlink;
 	struct devlink_port devlink_port;
+	bool devlink_update;
 
 	struct iavf_hw hw; /* defined in iavf_type.h */
 
@@ -423,6 +430,8 @@ struct iavf_adapter {
 			       VIRTCHNL_VF_OFFLOAD_FDIR_PF)
 #define ADV_RSS_SUPPORT(_a) ((_a)->vf_res->vf_cap_flags & \
 			     VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF)
+#define QOS_ALLOWED(_a) ((_a)->vf_res->vf_cap_flags & \
+			 VIRTCHNL_VF_OFFLOAD_QOS)
 	struct virtchnl_vf_resource *vf_res; /* incl. all VSIs */
 	struct virtchnl_vsi_resource *vsi_res; /* our LAN VSI */
 	struct virtchnl_version_info pf_version;
@@ -431,6 +440,7 @@ struct iavf_adapter {
 	struct virtchnl_vlan_caps vlan_v2_caps;
 	u16 msg_enable;
 	struct iavf_eth_stats current_stats;
+	struct virtchnl_qos_cap_list *qos_caps;
 	struct iavf_vsi vsi;
 	u32 aq_wait_count;
 	/* RSS stuff */
@@ -577,6 +587,10 @@ void iavf_notify_client_message(struct iavf_vsi *vsi, u8 *msg, u16 len);
 void iavf_notify_client_l2_params(struct iavf_vsi *vsi);
 void iavf_notify_client_open(struct iavf_vsi *vsi);
 void iavf_notify_client_close(struct iavf_vsi *vsi, bool reset);
+void iavf_update_queue_config(struct iavf_adapter *adapter);
+void iavf_configure_queues_bw(struct iavf_adapter *adapter);
+void iavf_configure_queues_quanta_size(struct iavf_adapter *adapter);
+void iavf_get_qos_caps(struct iavf_adapter *adapter);
 void iavf_enable_channels(struct iavf_adapter *adapter);
 void iavf_disable_channels(struct iavf_adapter *adapter);
 void iavf_add_cloud_filter(struct iavf_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_devlink.c b/drivers/net/ethernet/intel/iavf/iavf_devlink.c
index 24ba3744859a..0ab9a0a9823e 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_devlink.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_devlink.c
@@ -96,6 +96,30 @@ void iavf_devlink_rate_deinit_rate_tree(struct iavf_adapter *adapter)
 	devl_unlock(adapter->devlink);
 }
 
+/**
+ * iavf_notify_queue_config_complete - notify updating queue completion
+ * @adapter: iavf adapter struct instance
+ *
+ * This function sets the queue configuration update status when all
+ * queue parameters have been sent to PF
+ */
+void iavf_notify_queue_config_complete(struct iavf_adapter *adapter)
+{
+	struct iavf_devlink *dl_priv = devlink_priv(adapter->devlink);
+	int q_num = adapter->num_active_queues;
+	int i;
+
+	/* clean up rate tree update flags*/
+	for (i = 0; i < q_num; i++)
+		if (dl_priv->queue_nodes[i].tx_update_flag ==
+		    (IAVF_FLAG_TX_MAX_UPDATED | IAVF_FLAG_TX_SHARE_UPDATED)) {
+			dl_priv->queue_nodes[i].tx_update_flag = 0;
+			break;
+		}
+
+	dl_priv->update_in_progress = false;
+}
+
 /**
  * iavf_check_update_config - check if updating queue parameters needed
  * @adapter: iavf adapter struct instance
@@ -107,6 +131,8 @@ void iavf_devlink_rate_deinit_rate_tree(struct iavf_adapter *adapter)
 static int iavf_check_update_config(struct iavf_adapter *adapter,
 				    struct iavf_dev_rate_node *node)
 {
+	struct iavf_devlink *dl_priv = devlink_priv(adapter->devlink);
+
 	/* Update queue bw if any one of the queues have been fully updated by
 	 * user, the other queues either use the default value or the last
 	 * fully updated value
@@ -123,6 +149,8 @@ static int iavf_check_update_config(struct iavf_adapter *adapter,
 	if (adapter->state != __IAVF_RUNNING)
 		return -EBUSY;
 
+	dl_priv->update_in_progress = true;
+	iavf_update_queue_config(adapter);
 	return 0;
 }
 
@@ -282,6 +310,7 @@ int iavf_devlink_register(struct iavf_adapter *adapter)
 
 	/* Init iavf adapter devlink */
 	adapter->devlink = devlink;
+	adapter->devlink_update = false;
 	ref = devlink_priv(devlink);
 	ref->devlink_ref = adapter;
 	ref->iavf_dev_rate_initialized = false;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_devlink.h b/drivers/net/ethernet/intel/iavf/iavf_devlink.h
index 897ff5fc87af..a8a41f343f56 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_devlink.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_devlink.h
@@ -34,5 +34,6 @@ int iavf_devlink_port_register(struct iavf_adapter *adapter);
 void iavf_devlink_port_unregister(struct iavf_adapter *adapter);
 void iavf_devlink_rate_init_rate_tree(struct iavf_adapter *adapter);
 void iavf_devlink_rate_deinit_rate_tree(struct iavf_adapter *adapter);
+void iavf_notify_queue_config_complete(struct iavf_adapter *adapter);
 
 #endif /* _IAVF_DEVLINK_H_ */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 2aec6427d5e2..58795a15c09b 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2131,6 +2131,21 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
 		return 0;
 	}
 
+	if (adapter->aq_required & IAVF_FLAG_AQ_CONFIGURE_QUEUES_BW) {
+		iavf_configure_queues_bw(adapter);
+		return 0;
+	}
+
+	if (adapter->aq_required & IAVF_FLAG_AQ_GET_QOS_CAPS) {
+		iavf_get_qos_caps(adapter);
+		return 0;
+	}
+
+	if (adapter->aq_required & IAVF_FLAG_AQ_CONFIGURE_QUEUES_QUANTA_SIZE) {
+		iavf_configure_queues_quanta_size(adapter);
+		return 0;
+	}
+
 	if (adapter->aq_required & IAVF_FLAG_AQ_CONFIGURE_QUEUES) {
 		iavf_configure_queues(adapter);
 		return 0;
@@ -2713,7 +2728,9 @@ static void iavf_init_config_adapter(struct iavf_adapter *adapter)
 
 	if (!adapter->netdev_registered) {
 		iavf_devlink_port_register(adapter);
-		iavf_devlink_rate_init_rate_tree(adapter);
+
+		if (QOS_ALLOWED(adapter))
+			iavf_devlink_rate_init_rate_tree(adapter);
 	}
 
 	netif_carrier_off(netdev);
@@ -3136,6 +3153,19 @@ static void iavf_reset_task(struct work_struct *work)
 		err = iavf_reinit_interrupt_scheme(adapter, running);
 		if (err)
 			goto reset_err;
+
+		if (QOS_ALLOWED(adapter)) {
+			iavf_devlink_rate_deinit_rate_tree(adapter);
+			iavf_devlink_rate_init_rate_tree(adapter);
+		}
+	}
+
+	if (adapter->devlink_update) {
+		adapter->aq_required |= IAVF_FLAG_AQ_CONFIGURE_QUEUES_BW;
+		adapter->aq_required |= IAVF_FLAG_AQ_GET_QOS_CAPS;
+		adapter->aq_required |=
+				IAVF_FLAG_AQ_CONFIGURE_QUEUES_QUANTA_SIZE;
+		adapter->devlink_update = false;
 	}
 
 	if (RSS_AQ(adapter)) {
@@ -4901,7 +4931,7 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	struct net_device *netdev;
 	struct iavf_adapter *adapter = NULL;
 	struct iavf_hw *hw = NULL;
-	int err;
+	int err, len;
 
 	err = pci_enable_device(pdev);
 	if (err)
@@ -5005,10 +5035,18 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* Setup the wait queue for indicating virtchannel events */
 	init_waitqueue_head(&adapter->vc_waitqueue);
 
+	len = struct_size(adapter->qos_caps, cap, IAVF_MAX_QOS_TC_NUM);
+	adapter->qos_caps = kzalloc(len, GFP_KERNEL);
+	if (!adapter->qos_caps)
+		goto err_ioremap;
+
 	/* Register iavf adapter with devlink */
 	err = iavf_devlink_register(adapter);
-	if (err)
+	if (err) {
 		dev_err(&pdev->dev, "devlink registration failed: %d\n", err);
+		kfree(adapter->qos_caps);
+		goto err_ioremap;
+	}
 
 	/* Keep driver interface even on devlink registration failure */
 	return 0;
@@ -5158,6 +5196,7 @@ static void iavf_remove(struct pci_dev *pdev)
 	iavf_devlink_rate_deinit_rate_tree(adapter);
 	iavf_devlink_port_unregister(adapter);
 	iavf_devlink_unregister(adapter);
+	kfree(adapter->qos_caps);
 
 	mutex_lock(&adapter->crit_lock);
 	dev_info(&adapter->pdev->dev, "Removing device\n");
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index f9727e9c3d63..146f06831bd3 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -148,7 +148,8 @@ int iavf_send_vf_config_msg(struct iavf_adapter *adapter)
 	       VIRTCHNL_VF_OFFLOAD_USO |
 	       VIRTCHNL_VF_OFFLOAD_FDIR_PF |
 	       VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF |
-	       VIRTCHNL_VF_CAP_ADV_LINK_SPEED;
+	       VIRTCHNL_VF_CAP_ADV_LINK_SPEED |
+	       VIRTCHNL_VF_OFFLOAD_QOS;
 
 	adapter->current_op = VIRTCHNL_OP_GET_VF_RESOURCES;
 	adapter->aq_required &= ~IAVF_FLAG_AQ_GET_CONFIG;
@@ -1465,6 +1466,209 @@ iavf_set_adapter_link_speed_from_vpe(struct iavf_adapter *adapter,
 		adapter->link_speed = vpe->event_data.link_event.link_speed;
 }
 
+/**
+ * iavf_get_qos_caps - get qos caps support
+ * @adapter: iavf adapter struct instance
+ *
+ * This function requests PF for Supported QoS Caps.
+ */
+void iavf_get_qos_caps(struct iavf_adapter *adapter)
+{
+	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
+		/* bail because we already have a command pending */
+		dev_err(&adapter->pdev->dev,
+			"Cannot get qos caps, command %d pending\n",
+			adapter->current_op);
+		return;
+	}
+
+	adapter->current_op = VIRTCHNL_OP_GET_QOS_CAPS;
+	adapter->aq_required &= ~IAVF_FLAG_AQ_GET_QOS_CAPS;
+	iavf_send_pf_msg(adapter, VIRTCHNL_OP_GET_QOS_CAPS, NULL, 0);
+}
+
+/**
+ * iavf_set_quanta_size - set quanta size of queue chunk
+ * @adapter: iavf adapter struct instance
+ * @quanta_size: quanta size in bytes
+ * @queue_index: starting index of queue chunk
+ * @num_queues: number of queues in the queue chunk
+ *
+ * This function requests PF to set quanta size of queue chunk
+ * starting at queue_index.
+ */
+static void
+iavf_set_quanta_size(struct iavf_adapter *adapter, u16 quanta_size,
+		     u16 queue_index, u16 num_queues)
+{
+	struct virtchnl_quanta_cfg quanta_cfg;
+
+	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
+		/* bail because we already have a command pending */
+		dev_err(&adapter->pdev->dev,
+			"Cannot set queue quanta size, command %d pending\n",
+			adapter->current_op);
+		return;
+	}
+
+	adapter->current_op = VIRTCHNL_OP_CONFIG_QUANTA;
+	quanta_cfg.quanta_size = quanta_size;
+	quanta_cfg.queue_select.type = VIRTCHNL_QUEUE_TYPE_TX;
+	quanta_cfg.queue_select.start_queue_id = queue_index;
+	quanta_cfg.queue_select.num_queues = num_queues;
+	adapter->aq_required &= ~IAVF_FLAG_AQ_CONFIGURE_QUEUES_QUANTA_SIZE;
+	iavf_send_pf_msg(adapter, VIRTCHNL_OP_CONFIG_QUANTA,
+			 (u8 *)&quanta_cfg, sizeof(quanta_cfg));
+}
+
+/**
+ * iavf_set_queue_bw - set bw of allocated queues
+ * @adapter: iavf adapter struct instance
+ *
+ * This function requests PF to set queue bw of tc0 queues
+ */
+static void iavf_set_queue_bw(struct iavf_adapter *adapter)
+{
+	struct iavf_devlink *dl_priv = devlink_priv(adapter->devlink);
+	struct virtchnl_queues_bw_cfg *queues_bw_cfg;
+	struct iavf_dev_rate_node *queue_rate;
+	size_t len;
+	int i;
+
+	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
+		/* bail because we already have a command pending */
+		dev_err(&adapter->pdev->dev,
+			"Cannot set tc queue bw, command %d pending\n",
+			adapter->current_op);
+		return;
+	}
+
+	len = struct_size(queues_bw_cfg, cfg, adapter->num_active_queues);
+	queues_bw_cfg = kzalloc(len, GFP_KERNEL);
+	if (!queues_bw_cfg)
+		return;
+
+	queue_rate = dl_priv->queue_nodes;
+	queues_bw_cfg->vsi_id = adapter->vsi.id;
+	queues_bw_cfg->num_queues = adapter->num_active_queues;
+
+	for (i = 0; i < queues_bw_cfg->num_queues; i++) {
+		queues_bw_cfg->cfg[i].queue_id = i;
+		queues_bw_cfg->cfg[i].shaper.peak = queue_rate[i].tx_max;
+		queues_bw_cfg->cfg[i].shaper.committed =
+						    queue_rate[i].tx_share;
+		queues_bw_cfg->cfg[i].tc = 0;
+	}
+
+	adapter->current_op = VIRTCHNL_OP_CONFIG_QUEUE_BW;
+	adapter->aq_required &= ~IAVF_FLAG_AQ_CONFIGURE_QUEUES_BW;
+	iavf_send_pf_msg(adapter, VIRTCHNL_OP_CONFIG_QUEUE_BW,
+			 (u8 *)queues_bw_cfg, len);
+	kfree(queues_bw_cfg);
+}
+
+/**
+ * iavf_set_tc_queue_bw - set bw of allocated tc/queues
+ * @adapter: iavf adapter struct instance
+ *
+ * This function requests PF to set queue bw of multiple tc(s)
+ */
+static void iavf_set_tc_queue_bw(struct iavf_adapter *adapter)
+{
+	struct iavf_devlink *dl_priv = devlink_priv(adapter->devlink);
+	struct virtchnl_queues_bw_cfg *queues_bw_cfg;
+	struct iavf_dev_rate_node *queue_rate;
+	u16 queue_to_tc[256];
+	size_t len;
+	int q_idx;
+	int i, j;
+	u16 tc;
+
+	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
+		/* bail because we already have a command pending */
+		dev_err(&adapter->pdev->dev,
+			"Cannot set tc queue bw, command %d pending\n",
+			adapter->current_op);
+		return;
+	}
+
+	len = struct_size(queues_bw_cfg, cfg, adapter->num_active_queues);
+	queues_bw_cfg = kzalloc(len, GFP_KERNEL);
+	if (!queues_bw_cfg)
+		return;
+
+	queue_rate = dl_priv->queue_nodes;
+	queues_bw_cfg->vsi_id = adapter->vsi.id;
+	queues_bw_cfg->num_queues = adapter->ch_config.total_qps;
+
+	/* build tc[queue] */
+	for (i = 0; i < adapter->num_tc; i++) {
+		for (j = 0; j < adapter->ch_config.ch_info[i].count; ++j) {
+			q_idx = j + adapter->ch_config.ch_info[i].offset;
+			queue_to_tc[q_idx] = i;
+		}
+	}
+
+	for (i = 0; i < queues_bw_cfg->num_queues; i++) {
+		tc = queue_to_tc[i];
+		queues_bw_cfg->cfg[i].queue_id = i;
+		queues_bw_cfg->cfg[i].shaper.peak = queue_rate[i].tx_max;
+		queues_bw_cfg->cfg[i].shaper.committed =
+						    queue_rate[i].tx_share;
+		queues_bw_cfg->cfg[i].tc = tc;
+	}
+
+	adapter->current_op = VIRTCHNL_OP_CONFIG_QUEUE_BW;
+	adapter->aq_required &= ~IAVF_FLAG_AQ_CONFIGURE_QUEUES_BW;
+	iavf_send_pf_msg(adapter, VIRTCHNL_OP_CONFIG_QUEUE_BW,
+			 (u8 *)queues_bw_cfg, len);
+	kfree(queues_bw_cfg);
+}
+
+/**
+ * iavf_configure_queues_bw - configure bw of allocated tc/queues
+ * @adapter: iavf adapter struct instance
+ *
+ * This function requests PF to configure queue bw of allocated
+ * tc/queues
+ */
+void iavf_configure_queues_bw(struct iavf_adapter *adapter)
+{
+	/* Set Queue bw */
+	if (adapter->ch_config.state == __IAVF_TC_INVALID)
+		iavf_set_queue_bw(adapter);
+	else
+		iavf_set_tc_queue_bw(adapter);
+}
+
+/**
+ * iavf_configure_queues_quanta_size - configure quanta size of queues
+ * @adapter: adapter structure
+ *
+ * Request that the PF configure quanta size of allocated queues.
+ **/
+void iavf_configure_queues_quanta_size(struct iavf_adapter *adapter)
+{
+	int quanta_size = IAVF_DEFAULT_QUANTA_SIZE;
+
+	/* Set Queue Quanta Size to default */
+	iavf_set_quanta_size(adapter, quanta_size, 0,
+			     adapter->num_active_queues);
+}
+
+/**
+ * iavf_update_queue_config - request queue configuration update
+ * @adapter: adapter structure
+ *
+ * Request that the PF configure queue quanta size and queue bw
+ * of allocated queues.
+ **/
+void iavf_update_queue_config(struct iavf_adapter *adapter)
+{
+	adapter->devlink_update = true;
+	iavf_schedule_reset(adapter, IAVF_FLAG_RESET_NEEDED);
+}
+
 /**
  * iavf_enable_channels
  * @adapter: adapter structure
@@ -2124,6 +2328,18 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 			dev_warn(&adapter->pdev->dev, "Failed to add VLAN filter, error %s\n",
 				 iavf_stat_str(&adapter->hw, v_retval));
 			break;
+		case VIRTCHNL_OP_GET_QOS_CAPS:
+			dev_warn(&adapter->pdev->dev, "Failed to Get Qos CAPs, error %s\n",
+				 iavf_stat_str(&adapter->hw, v_retval));
+			break;
+		case VIRTCHNL_OP_CONFIG_QUANTA:
+			dev_warn(&adapter->pdev->dev, "Failed to Config Quanta, error %s\n",
+				 iavf_stat_str(&adapter->hw, v_retval));
+			break;
+		case VIRTCHNL_OP_CONFIG_QUEUE_BW:
+			dev_warn(&adapter->pdev->dev, "Failed to Config Queue BW, error %s\n",
+				 iavf_stat_str(&adapter->hw, v_retval));
+			break;
 		default:
 			dev_err(&adapter->pdev->dev, "PF returned error %d (%s) to our request %d\n",
 				v_retval, iavf_stat_str(&adapter->hw, v_retval),
@@ -2456,6 +2672,18 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		if (!v_retval)
 			iavf_netdev_features_vlan_strip_set(netdev, false);
 		break;
+	case VIRTCHNL_OP_GET_QOS_CAPS: {
+		u16 len = struct_size(adapter->qos_caps, cap,
+				      IAVF_MAX_QOS_TC_NUM);
+
+		memcpy(adapter->qos_caps, msg, min(msglen, len));
+		}
+		break;
+	case VIRTCHNL_OP_CONFIG_QUANTA:
+		iavf_notify_queue_config_complete(adapter);
+		break;
+	case VIRTCHNL_OP_CONFIG_QUEUE_BW:
+		break;
 	default:
 		if (adapter->current_op && (v_opcode != adapter->current_op))
 			dev_warn(&adapter->pdev->dev, "Expected response %d from PF, received %d\n",
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
