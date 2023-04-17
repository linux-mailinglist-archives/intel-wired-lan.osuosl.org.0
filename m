Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFDF6E43FF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Apr 2023 11:36:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 288DA6143A;
	Mon, 17 Apr 2023 09:36:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 288DA6143A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681724177;
	bh=X80F1GlCZXkJA4k20wfG88eXziFBU0XXvoE1ouVh8uQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Qa9Zuz7GzjED/+p1ga8bTV0HEQDezc507ZReTuIvh86KxsAJEdTiJclU5BI7Kx61j
	 ByJKtcbZgGTjmydvfwL74BahrNAoGA6Zk+x48yHujlCmVKy4yC7JxveV+zkwSNtVez
	 8nKFoKLIdv3KQlQv25dZdCtVHgPLWdkxS5SDxSgNZhx4BwAqAmwd1HQm7jWRS90S+5
	 lUKspvnn7ytNl5TQJO/W6KrIjBDYQpWewOl/bZlV+bdCpfHLZrvIfJWDs/PeD0p4Ie
	 2W/DQGOyiC8+KesvuSDUCrD5OT4Hki8550cXBayoHMB8Y+lxoNmz1UJTzfpMFNdOJb
	 Ltu4nDGjrv8XQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lR8_L3oPWAmf; Mon, 17 Apr 2023 09:36:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CBCD66143F;
	Mon, 17 Apr 2023 09:36:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBCD66143F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 890601C40E1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 09:35:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4E86B401BF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 09:35:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4E86B401BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WrYVgPWsXTSp for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Apr 2023 09:35:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1EFC640238
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1EFC640238
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 09:35:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="333644101"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="333644101"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 02:35:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="640899270"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="640899270"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga003.jf.intel.com with ESMTP; 17 Apr 2023 02:35:24 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 52C5137F5F;
 Mon, 17 Apr 2023 10:35:23 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 17 Apr 2023 11:34:10 +0200
Message-Id: <20230417093412.12161-11-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230417093412.12161-1-wojciech.drewek@intel.com>
References: <20230417093412.12161-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681724127; x=1713260127;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hKiakbMbk1jaPrkPHRDrf6ifl6vMBglOlS3kB5035kA=;
 b=i/F8sK7WCGKFWFjC5LdMWGfrpgVL9QCrd+PdrYEkMRFiJLBCfXJHkIrK
 5pZU47zmnX6kq4GdCWqfsx4K/0VjUp+SsstUpjuEs4hx66x8Q2uHKN5J+
 mxcl1Y2TztGZnch0D/AIhaKuzJU9IUf9912BNjXr8j5qJ+bbq73Oo+3N/
 jnVzS5sqW1ZA/G969R7OKa0Yi4gGHbJyFMyXlIn6Z95EztMnYZRIGKEEs
 yy2RFAIWkojplWI+v+5saDcmQo/u8qfT9icHEHAZRKFN0m/7M+dxmTg8H
 KUbJHPqUyQcVkrGuRCjpz8DgWj9SF9Tw0tSYkYKt6XCCY/uUpDt7nSyXT
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i/F8sK7W
Subject: [Intel-wired-lan] [PATCH net-next 10/12] ice: implement static
 version of ageing
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
Cc: netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Remove fdb entries always when ageing time expired.

Allow user to set ageing time using port object attribute.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 .../net/ethernet/intel/ice/ice_eswitch_br.c   | 46 +++++++++++++++++++
 .../net/ethernet/intel/ice/ice_eswitch_br.h   | 11 +++++
 2 files changed, 57 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
index a21eca5088f7..6c3144f98100 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
@@ -8,6 +8,8 @@
 #include "ice_vlan.h"
 #include "ice_vf_vsi_vlan_ops.h"
 
+#define ICE_ESW_BRIDGE_UPDATE_INTERVAL_MS 1000
+
 static const struct rhashtable_params ice_fdb_ht_params = {
 	.key_offset = offsetof(struct ice_esw_br_fdb_entry, data),
 	.key_len = sizeof(struct ice_esw_br_fdb_data),
@@ -440,6 +442,7 @@ ice_eswitch_br_fdb_entry_create(struct net_device *netdev,
 	fdb_entry->br_port = br_port;
 	fdb_entry->flow = flow;
 	fdb_entry->dev = netdev;
+	fdb_entry->last_use = jiffies;
 	event = SWITCHDEV_FDB_ADD_TO_BRIDGE;
 
 	if (added_by_user) {
@@ -838,6 +841,10 @@ ice_eswitch_br_port_obj_attr_set(struct net_device *netdev, const void *ctx,
 		ice_eswitch_br_vlan_filtering_set(br_port->bridge,
 						  attr->u.vlan_filtering);
 		break;
+	case SWITCHDEV_ATTR_ID_BRIDGE_AGEING_TIME:
+		br_port->bridge->ageing_time =
+			clock_t_to_jiffies(attr->u.ageing_time);
+		break;
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -1011,6 +1018,7 @@ ice_eswitch_br_init(struct ice_esw_br_offloads *br_offloads, int ifindex)
 	INIT_LIST_HEAD(&bridge->fdb_list);
 	bridge->br_offloads = br_offloads;
 	bridge->ifindex = ifindex;
+	bridge->ageing_time = clock_t_to_jiffies(BR_DEFAULT_AGEING_TIME);
 	xa_init(&bridge->ports);
 	br_offloads->bridge = bridge;
 
@@ -1210,6 +1218,7 @@ ice_eswitch_br_offloads_deinit(struct ice_pf *pf)
 	if (!br_offloads)
 		return;
 
+	cancel_delayed_work_sync(&br_offloads->update_work);
 	unregister_netdevice_notifier(&br_offloads->netdev_nb);
 	unregister_switchdev_blocking_notifier(&br_offloads->switchdev_blk);
 	unregister_switchdev_notifier(&br_offloads->switchdev_nb);
@@ -1224,6 +1233,38 @@ ice_eswitch_br_offloads_deinit(struct ice_pf *pf)
 	rtnl_unlock();
 }
 
+static void ice_eswitch_br_update(struct ice_esw_br_offloads *br_offloads)
+{
+	struct ice_esw_br *bridge = br_offloads->bridge;
+	struct ice_esw_br_fdb_entry *entry, *tmp;
+
+	if (!bridge)
+		return;
+
+	rtnl_lock();
+	list_for_each_entry_safe(entry, tmp, &bridge->fdb_list, list) {
+		if (entry->flags & ICE_ESWITCH_BR_FDB_ADDED_BY_USER)
+			continue;
+
+		if (time_is_before_jiffies(entry->last_use +
+					   bridge->ageing_time))
+			ice_eswitch_br_fdb_entry_notify_and_cleanup(bridge,
+								    entry);
+	}
+	rtnl_unlock();
+}
+
+static void ice_eswitch_br_update_work(struct work_struct *work)
+{
+	struct ice_esw_br_offloads *br_offloads =
+		ice_work_to_br_offloads(work);
+
+	ice_eswitch_br_update(br_offloads);
+
+	queue_delayed_work(br_offloads->wq, &br_offloads->update_work,
+			   msecs_to_jiffies(ICE_ESW_BRIDGE_UPDATE_INTERVAL_MS));
+}
+
 int
 ice_eswitch_br_offloads_init(struct ice_pf *pf)
 {
@@ -1272,6 +1313,11 @@ ice_eswitch_br_offloads_init(struct ice_pf *pf)
 		goto err_reg_netdev_nb;
 	}
 
+	INIT_DELAYED_WORK(&br_offloads->update_work,
+			  ice_eswitch_br_update_work);
+	queue_delayed_work(br_offloads->wq, &br_offloads->update_work,
+			   msecs_to_jiffies(ICE_ESW_BRIDGE_UPDATE_INTERVAL_MS));
+
 	return 0;
 
 err_reg_netdev_nb:
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.h b/drivers/net/ethernet/intel/ice/ice_eswitch_br.h
index b6eef068ea81..42fff681fb71 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.h
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.h
@@ -5,6 +5,7 @@
 #define _ICE_ESWITCH_BR_H_
 
 #include <linux/rhashtable.h>
+#include <linux/workqueue.h>
 
 struct ice_esw_br_fdb_data {
 	unsigned char addr[ETH_ALEN];
@@ -30,6 +31,8 @@ struct ice_esw_br_fdb_entry {
 	struct net_device *dev;
 	struct ice_esw_br_port *br_port;
 	struct ice_esw_br_flow *flow;
+
+	unsigned long last_use;
 };
 
 enum ice_esw_br_port_type {
@@ -58,6 +61,8 @@ struct ice_esw_br {
 	struct xarray ports;
 	struct rhashtable fdb_ht;
 	struct list_head fdb_list;
+
+	unsigned long ageing_time;
 };
 
 struct ice_esw_br_offloads {
@@ -68,6 +73,7 @@ struct ice_esw_br_offloads {
 	struct notifier_block switchdev_nb;
 
 	struct workqueue_struct *wq;
+	struct delayed_work update_work;
 };
 
 struct ice_esw_br_fdb_work {
@@ -88,6 +94,11 @@ struct ice_esw_br_vlan {
 		     struct ice_esw_br_offloads, \
 		     nb_name)
 
+#define ice_work_to_br_offloads(w) \
+	container_of(w, \
+		     struct ice_esw_br_offloads, \
+		     update_work.work)
+
 #define ice_work_to_fdb_work(w) \
 	container_of(w, \
 		     struct ice_esw_br_fdb_work, \
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
