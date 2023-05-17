Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 057C57075BB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 May 2023 00:59:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9BD538438D;
	Wed, 17 May 2023 22:59:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9BD538438D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684364383;
	bh=H03f24EviTDD1Lb22ULdEMqeVSN2FQYfQPQ9IGTCrP0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CAR49LgSuyPsz1V2fn4Bwh/j6EWr8cYUTyn8IE/hblfxoGyFk831/PrvyZbQ0BgeI
	 UaisPH1LBqamKOSSjgD7bTa/rRGrrlnECVsZrdRn2mB0JmvJAghRthBIB4U8OnVTKQ
	 zjcjB+AzuxvROnViX/M+EkL6mAERlJXQscFPDcnWhXfeDdTB5LPCdago/Q6SuMGUFc
	 Y6W3iWuft+7fVkMZFUnoTD1ypLM9llzsxH8j4UtpY4HBpLSlzQoLG94UyJSxMg370H
	 //BF58gwAR9xZPF5WVOzvmcr4rVTET2+rLbXmlTAUvsPCZPVnTlvitnujXmbYurBMJ
	 cEa7qyKJ/zCSg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MOLiTntT70aA; Wed, 17 May 2023 22:59:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EAEB982089;
	Wed, 17 May 2023 22:59:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EAEB982089
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 67EFB1BF21A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 22:59:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 12DF742A48
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 22:58:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12DF742A48
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QksgQfz5u_fk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 May 2023 22:58:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 02A6642A4B
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 02A6642A4B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 22:58:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="355078638"
X-IronPort-AV: E=Sophos;i="5.99,283,1677571200"; d="scan'208";a="355078638"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 15:58:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="876201324"
X-IronPort-AV: E=Sophos;i="5.99,283,1677571200"; d="scan'208";a="876201324"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 15:58:49 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 17 May 2023 16:00:22 -0700
Message-Id: <20230517230028.321350-5-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230517230028.321350-1-david.m.ertman@intel.com>
References: <20230517230028.321350-1-david.m.ertman@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684364334; x=1715900334;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=5BdzdOtqSrLWLX05vhwUA9qoHpH2emJ4znp2SEUH1WQ=;
 b=fwVPs8wyOFBNTTzhjhe3DPMCXQQa9+1nLD0HvGSCSEvGNBPOv2crCR4X
 sNjpfbrL5Xb8JosU4jDt9oatL8T498yTWvvArYhZ5XyVmAREaQVmFtTo4
 KqKK1aX+oDp8f7ShQZ3RJz9//oichmZEAKxd/8IC8hVw65nhH9B/m0ai6
 WuQwzpx6/reUDWeq0ef27DyBvdDXqAQZVJ1JfQSaT7T64wyIqCAcp9C/G
 GOC++36LdpoJeb2QQwrS5GvYsx7FppucopkV/2jkSLN62J9qMX0o4m73m
 /gZzMOuX4DwpizlqC8gaRnLmXGAeW6Rc4aOOvgTRNY6d3OGQk9tsDV7I4
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fwVPs8wy
Subject: [Intel-wired-lan] [PATCH iwl-next v6 04/10] ice: implement lag
 netdev event handler
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

The event handler for LAG will create a work item to place on the ordered
workqueue to be processed.

Add in defines for training packets and new recipes to be used by the
switching block of the HW for LAG packet steering.

Update the ice_lag struct to reflect the new processing methodology.

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lag.c      | 125 ++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_lag.h      |  31 ++++-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |   2 +
 3 files changed, 144 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 73bfc5cd8b37..529abfb904d0 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -56,11 +56,10 @@ static void ice_lag_set_backup(struct ice_lag *lag)
  */
 static void ice_display_lag_info(struct ice_lag *lag)
 {
-	const char *name, *peer, *upper, *role, *bonded, *primary;
+	const char *name, *upper, *role, *bonded, *primary;
 	struct device *dev = &lag->pf->pdev->dev;
 
 	name = lag->netdev ? netdev_name(lag->netdev) : "unset";
-	peer = lag->peer_netdev ? netdev_name(lag->peer_netdev) : "unset";
 	upper = lag->upper_netdev ? netdev_name(lag->upper_netdev) : "unset";
 	primary = lag->primary ? "TRUE" : "FALSE";
 	bonded = lag->bonded ? "BONDED" : "UNBONDED";
@@ -82,8 +81,8 @@ static void ice_display_lag_info(struct ice_lag *lag)
 		role = "ERROR";
 	}
 
-	dev_dbg(dev, "%s %s, peer:%s, upper:%s, role:%s, primary:%s\n", name,
-		bonded, peer, upper, role, primary);
+	dev_dbg(dev, "%s %s, upper:%s, role:%s, primary:%s\n", name, bonded,
+		upper, role, primary);
 }
 
 /**
@@ -198,7 +197,6 @@ ice_lag_unlink(struct ice_lag *lag,
 		lag->upper_netdev = NULL;
 	}
 
-	lag->peer_netdev = NULL;
 	ice_set_rdma_cap(pf);
 	lag->bonded = false;
 	lag->role = ICE_LAG_NONE;
@@ -288,6 +286,60 @@ static void ice_lag_changeupper_event(struct ice_lag *lag, void *ptr)
 	ice_display_lag_info(lag);
 }
 
+/**
+ * ice_lag_process_event - process a task assigned to the lag_wq
+ * @work: pointer to work_struct
+ */
+static void ice_lag_process_event(struct work_struct *work)
+{
+	struct netdev_notifier_changeupper_info *info;
+	struct ice_lag_work *lag_work;
+	struct net_device *netdev;
+	struct list_head *tmp, *n;
+	struct ice_pf *pf;
+
+	lag_work = container_of(work, struct ice_lag_work, lag_task);
+	pf = lag_work->lag->pf;
+
+	mutex_lock(&pf->lag_mutex);
+	lag_work->lag->netdev_head = &lag_work->netdev_list.node;
+
+	switch (lag_work->event) {
+	case NETDEV_CHANGEUPPER:
+		info = &lag_work->info.changeupper_info;
+		if (ice_is_feature_supported(pf, ICE_F_SRIOV_LAG))
+			ice_lag_changeupper_event(lag_work->lag, info);
+		break;
+	case NETDEV_BONDING_INFO:
+		ice_lag_info_event(lag_work->lag, &lag_work->info.bonding_info);
+		break;
+	case NETDEV_UNREGISTER:
+		if (ice_is_feature_supported(pf, ICE_F_SRIOV_LAG)) {
+			netdev = lag_work->info.bonding_info.info.dev;
+			if ((netdev == lag_work->lag->netdev ||
+			     lag_work->lag->primary) && lag_work->lag->bonded)
+				ice_lag_unregister(lag_work->lag, netdev);
+		}
+		break;
+	default:
+		break;
+	}
+
+	/* cleanup resources allocated for this work item */
+	list_for_each_safe(tmp, n, &lag_work->netdev_list.node) {
+		struct ice_lag_netdev_list *entry;
+
+		entry = list_entry(tmp, struct ice_lag_netdev_list, node);
+		list_del(&entry->node);
+		kfree(entry);
+	}
+	lag_work->lag->netdev_head = NULL;
+
+	mutex_unlock(&pf->lag_mutex);
+
+	kfree(work);
+}
+
 /**
  * ice_lag_event_handler - handle LAG events from netdev
  * @notif_blk: notifier block registered by this netdev
@@ -299,31 +351,79 @@ ice_lag_event_handler(struct notifier_block *notif_blk, unsigned long event,
 		      void *ptr)
 {
 	struct net_device *netdev = netdev_notifier_info_to_dev(ptr);
+	struct net_device *upper_netdev;
+	struct ice_lag_work *lag_work;
 	struct ice_lag *lag;
 
-	lag = container_of(notif_blk, struct ice_lag, notif_block);
+	if (!netif_is_ice(netdev))
+		return NOTIFY_DONE;
+
+	if (event != NETDEV_CHANGEUPPER && event != NETDEV_BONDING_INFO &&
+	    event != NETDEV_UNREGISTER)
+		return NOTIFY_DONE;
 
+	if (!(netdev->priv_flags & IFF_BONDING))
+		return NOTIFY_DONE;
+
+	lag = container_of(notif_blk, struct ice_lag, notif_block);
 	if (!lag->netdev)
 		return NOTIFY_DONE;
 
-	/* Check that the netdev is in the working namespace */
 	if (!net_eq(dev_net(netdev), &init_net))
 		return NOTIFY_DONE;
 
+	/* This memory will be freed at the end of ice_lag_process_event */
+	lag_work = kzalloc(sizeof(*lag_work), GFP_KERNEL);
+	if (!lag_work)
+		return -ENOMEM;
+
+	lag_work->event_netdev = netdev;
+	lag_work->lag = lag;
+	lag_work->event = event;
+	if (event == NETDEV_CHANGEUPPER) {
+		struct netdev_notifier_changeupper_info *info;
+
+		info = ptr;
+		upper_netdev = info->upper_dev;
+	} else {
+		upper_netdev = netdev_master_upper_dev_get(netdev);
+	}
+
+	INIT_LIST_HEAD(&lag_work->netdev_list.node);
+	if (upper_netdev) {
+		struct ice_lag_netdev_list *nd_list;
+		struct net_device *tmp_nd;
+
+		rcu_read_lock();
+		for_each_netdev_in_bond_rcu(upper_netdev, tmp_nd) {
+			nd_list = kzalloc(sizeof(*nd_list), GFP_KERNEL);
+			if (!nd_list)
+				break;
+
+			nd_list->netdev = tmp_nd;
+			list_add(&nd_list->node, &lag_work->netdev_list.node);
+		}
+		rcu_read_unlock();
+	}
+
 	switch (event) {
 	case NETDEV_CHANGEUPPER:
-		ice_lag_changeupper_event(lag, ptr);
+		lag_work->info.changeupper_info =
+			*((struct netdev_notifier_changeupper_info *)ptr);
 		break;
 	case NETDEV_BONDING_INFO:
-		ice_lag_info_event(lag, ptr);
-		break;
-	case NETDEV_UNREGISTER:
-		ice_lag_unregister(lag, netdev);
+		lag_work->info.bonding_info =
+			*((struct netdev_notifier_bonding_info *)ptr);
 		break;
 	default:
+		lag_work->info.notifier_info =
+			*((struct netdev_notifier_info *)ptr);
 		break;
 	}
 
+	INIT_WORK(&lag_work->lag_task, ice_lag_process_event);
+	queue_work(ice_lag_wq, &lag_work->lag_task);
+
 	return NOTIFY_DONE;
 }
 
@@ -398,7 +498,6 @@ int ice_init_lag(struct ice_pf *pf)
 	lag->netdev = vsi->netdev;
 	lag->role = ICE_LAG_NONE;
 	lag->bonded = false;
-	lag->peer_netdev = NULL;
 	lag->upper_netdev = NULL;
 	lag->notif_block.notifier_call = NULL;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lag.h b/drivers/net/ethernet/intel/ice/ice_lag.h
index 2c373676c42f..df4af5184a75 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.h
+++ b/drivers/net/ethernet/intel/ice/ice_lag.h
@@ -14,20 +14,49 @@ enum ice_lag_role {
 	ICE_LAG_UNSET
 };
 
+#define ICE_LAG_INVALID_PORT 0xFF
+
 struct ice_pf;
+struct ice_vf;
+
+struct ice_lag_netdev_list {
+	struct list_head node;
+	struct net_device *netdev;
+};
 
 /* LAG info struct */
 struct ice_lag {
 	struct ice_pf *pf; /* backlink to PF struct */
 	struct net_device *netdev; /* this PF's netdev */
-	struct net_device *peer_netdev;
 	struct net_device *upper_netdev; /* upper bonding netdev */
+	struct list_head *netdev_head;
 	struct notifier_block notif_block;
+	s32 bond_mode;
+	u16 bond_swid; /* swid for primary interface */
+	u8 active_port; /* lport value for the current active port */
 	u8 bonded:1; /* currently bonded */
 	u8 primary:1; /* this is primary */
+	u16 pf_recipe;
+	u16 pf_rule_id;
+	u16 cp_rule_idx;
 	u8 role;
 };
 
+/* LAG workqueue struct */
+struct ice_lag_work {
+	struct work_struct lag_task;
+	struct ice_lag_netdev_list netdev_list;
+	struct ice_lag *lag;
+	unsigned long event;
+	struct net_device *event_netdev;
+	union {
+		struct netdev_notifier_changeupper_info changeupper_info;
+		struct netdev_notifier_bonding_info bonding_info;
+		struct netdev_notifier_info notifier_info;
+	} info;
+};
+
+void ice_lag_move_new_vf_nodes(struct ice_vf *vf);
 int ice_init_lag(struct ice_pf *pf);
 void ice_deinit_lag(struct ice_pf *pf);
 #endif /* _ICE_LAG_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index efbc2968a7bf..625da88e7965 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -1724,6 +1724,8 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 				vf->vf_id, i);
 	}
 
+	ice_lag_move_new_vf_nodes(vf);
+
 	/* send the response to the VF */
 	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_VSI_QUEUES,
 				     VIRTCHNL_STATUS_ERR_PARAM, NULL, 0);
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
