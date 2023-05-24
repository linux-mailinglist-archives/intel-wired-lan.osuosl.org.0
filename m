Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E984270F639
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 May 2023 14:23:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 70C73615B9;
	Wed, 24 May 2023 12:23:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 70C73615B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684931004;
	bh=B5SXuSGBz5VmHR0cvUUS5+JQUHsbx+YZVA2+93F/C5k=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j7oansF4WmmYuzko42ZbGtg4lnngnQ4b8m+L8hZnTz9sKOFHv+DvORiSVgYSSbFUo
	 5KHGN12qTWVi4GmpdrYtHVzc/fDE38kWY5ffTKy+T0IQGr5QvXqM0Ez402oVXlhS3X
	 rLfSyUKJssN+g4HkCtj50anl2vyhkPXqwST9wrC9z8FEUlBHHk80VLLXnSfPV//MVp
	 SXLgRamvlwjT3mrJvCPX/ytlO4reZLZ6qGRxsUURPzSWFCiUjla7oN2a0s2SWepGcZ
	 K34emZFvaBmdRyTkWrw4xkKIpWsmCUtSTJE6I+HHqPm1zYuKkMtQZCQ9d9SOgxb+Hw
	 9r4Vjr609IUeg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Aeh2t2s5VDA9; Wed, 24 May 2023 12:23:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1BCC5611C2;
	Wed, 24 May 2023 12:23:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1BCC5611C2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 14BFA1BF95F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 12:22:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8764161190
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 12:22:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8764161190
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hvydPp3t9H4C for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 May 2023 12:22:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B6C3D611BD
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B6C3D611BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 12:22:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="417005132"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="417005132"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 05:22:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="794168577"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="794168577"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by FMSMGA003.fm.intel.com with ESMTP; 24 May 2023 05:22:41 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 9760837854;
 Wed, 24 May 2023 13:22:40 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 May 2023 14:21:20 +0200
Message-Id: <20230524122121.15012-13-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230524122121.15012-1-wojciech.drewek@intel.com>
References: <20230524122121.15012-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684930963; x=1716466963;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vD6xqBlwbSxP35m9sWQZD7aKYRGxaeAphBvjEdipI9k=;
 b=NkZbyL0Q1nkCp/GVgfsYlgqarFooHRpIrnO1qkqml8iqsoGOSnxll5P5
 cCj/NbB1ED2vfqobgSs/sL232gCsEiWjS69PPmODy1ZcKicWBZ00Mn7Pq
 F24e1Kv+tOpSdlTfvtpYhFL8pmANvMgih2cZ8mARkxXHawCbY+81EFV0R
 HJvzxhrcZhnZ6ZaaNmqMpQ9yM3U9G77cjcv2jaRLuCscbfTcXDxaxCGs5
 wlwLQ9dn6lS7Z8Cm5NpJbhSSGbb/ghR3TPWL+8oFhRhNIvI+L5Jkp/oDe
 sGRaPhgKuVliJNEhZ25Y0go45oO+YcrKPxt/1y+czV+KxtLgu8Czb4pow
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NkZbyL0Q
Subject: [Intel-wired-lan] [PATCH iwl-next v4 12/13] ice: implement static
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, simon.horman@corigine.com,
 dan.carpenter@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Remove fdb entries always when ageing time expired.

Allow user to set ageing time using port object attribute.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
v2: use msecs_to_jiffies upon definition of
    ICE_ESW_BRIDGE_UPDATE_INTERVAL
---
 .../net/ethernet/intel/ice/ice_eswitch_br.c   | 48 +++++++++++++++++++
 .../net/ethernet/intel/ice/ice_eswitch_br.h   | 10 ++++
 2 files changed, 58 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
index 6352bd04348b..d92bb99978af 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
@@ -8,6 +8,8 @@
 #include "ice_vlan.h"
 #include "ice_vf_vsi_vlan_ops.h"
 
+#define ICE_ESW_BRIDGE_UPDATE_INTERVAL msecs_to_jiffies(1000)
+
 static const struct rhashtable_params ice_fdb_ht_params = {
 	.key_offset = offsetof(struct ice_esw_br_fdb_entry, data),
 	.key_len = sizeof(struct ice_esw_br_fdb_data),
@@ -443,6 +445,7 @@ ice_eswitch_br_fdb_entry_create(struct net_device *netdev,
 	fdb_entry->br_port = br_port;
 	fdb_entry->flow = flow;
 	fdb_entry->dev = netdev;
+	fdb_entry->last_use = jiffies;
 	event = SWITCHDEV_FDB_ADD_TO_BRIDGE;
 
 	if (added_by_user) {
@@ -837,6 +840,10 @@ ice_eswitch_br_port_obj_attr_set(struct net_device *netdev, const void *ctx,
 		ice_eswitch_br_vlan_filtering_set(br_port->bridge,
 						  attr->u.vlan_filtering);
 		return 0;
+	case SWITCHDEV_ATTR_ID_BRIDGE_AGEING_TIME:
+		br_port->bridge->ageing_time =
+			clock_t_to_jiffies(attr->u.ageing_time);
+		return 0;
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -1008,6 +1015,7 @@ ice_eswitch_br_init(struct ice_esw_br_offloads *br_offloads, int ifindex)
 	INIT_LIST_HEAD(&bridge->fdb_list);
 	bridge->br_offloads = br_offloads;
 	bridge->ifindex = ifindex;
+	bridge->ageing_time = clock_t_to_jiffies(BR_DEFAULT_AGEING_TIME);
 	xa_init(&bridge->ports);
 	br_offloads->bridge = bridge;
 
@@ -1214,6 +1222,7 @@ ice_eswitch_br_offloads_deinit(struct ice_pf *pf)
 	if (!br_offloads)
 		return;
 
+	cancel_delayed_work_sync(&br_offloads->update_work);
 	unregister_netdevice_notifier(&br_offloads->netdev_nb);
 	unregister_switchdev_blocking_notifier(&br_offloads->switchdev_blk);
 	unregister_switchdev_notifier(&br_offloads->switchdev_nb);
@@ -1228,6 +1237,40 @@ ice_eswitch_br_offloads_deinit(struct ice_pf *pf)
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
+		if (time_is_after_eq_jiffies(entry->last_use +
+					     bridge->ageing_time))
+			continue;
+
+		ice_eswitch_br_fdb_entry_notify_and_cleanup(bridge, entry);
+	}
+	rtnl_unlock();
+}
+
+static void ice_eswitch_br_update_work(struct work_struct *work)
+{
+	struct ice_esw_br_offloads *br_offloads;
+
+	br_offloads = ice_work_to_br_offloads(work);
+
+	ice_eswitch_br_update(br_offloads);
+
+	queue_delayed_work(br_offloads->wq, &br_offloads->update_work,
+			   ICE_ESW_BRIDGE_UPDATE_INTERVAL);
+}
+
 int
 ice_eswitch_br_offloads_init(struct ice_pf *pf)
 {
@@ -1276,6 +1319,11 @@ ice_eswitch_br_offloads_init(struct ice_pf *pf)
 		goto err_reg_netdev_nb;
 	}
 
+	INIT_DELAYED_WORK(&br_offloads->update_work,
+			  ice_eswitch_br_update_work);
+	queue_delayed_work(br_offloads->wq, &br_offloads->update_work,
+			   ICE_ESW_BRIDGE_UPDATE_INTERVAL);
+
 	return 0;
 
 err_reg_netdev_nb:
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.h b/drivers/net/ethernet/intel/ice/ice_eswitch_br.h
index 72316ba8ff4d..93a8c23aa089 100644
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
@@ -59,6 +62,7 @@ struct ice_esw_br {
 
 	int ifindex;
 	u32 flags;
+	unsigned long ageing_time;
 };
 
 struct ice_esw_br_offloads {
@@ -69,6 +73,7 @@ struct ice_esw_br_offloads {
 	struct notifier_block switchdev_nb;
 
 	struct workqueue_struct *wq;
+	struct delayed_work update_work;
 };
 
 struct ice_esw_br_fdb_work {
@@ -89,6 +94,11 @@ struct ice_esw_br_vlan {
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
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
