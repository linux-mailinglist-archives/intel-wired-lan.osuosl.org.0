Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F2C750586
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jul 2023 13:05:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0E98041594;
	Wed, 12 Jul 2023 11:05:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0E98041594
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689159958;
	bh=HbqG3skhV2u6yfyiRBHWk2eXJVI3BGODBZfVB+poUSo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4jzudmmEWtRB4L+dJwQN/2WA9g0La0ZuoJHaa64rLG+mE7Fph4Wl1LN495ZPJvq3s
	 Q6K7NAhneMF+nSB7amCuoqLQ1r03kBXeLK1p8efKz0MGcWSAaqI1tp2cjtUVkr7Mwy
	 L5sgoOdtIP7c8rIr3/Jg43E6AmT/8iGWBR+m9/V4FifYbpsX2YmfGNapHgCF9FSRk6
	 l7kJkSdIvrq9g5uhMo+d4A6tZrJrvREFJ+CcsNmHbK5pq8zfHsOPeEDdHEqgKWZI03
	 rHMNs0uRafLPAii+F5JuaABRTdJgJe/MQLjQyNedTrU51c3MAYN9pCVi1xkLMUCVa1
	 mIukYrHQkwCtA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hla-UtM3p37q; Wed, 12 Jul 2023 11:05:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E46E741561;
	Wed, 12 Jul 2023 11:05:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E46E741561
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1EC611BF3C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 11:05:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4493140136
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 11:05:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4493140136
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jc4Id4O8YNmg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jul 2023 11:05:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0858540514
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0858540514
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 11:05:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="430993844"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="430993844"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 04:05:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="835093806"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="835093806"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga002.fm.intel.com with ESMTP; 12 Jul 2023 04:05:04 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 3C93E369EF;
 Wed, 12 Jul 2023 12:05:03 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 12 Jul 2023 13:03:36 +0200
Message-Id: <20230712110337.8030-12-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230712110337.8030-1-wojciech.drewek@intel.com>
References: <20230712110337.8030-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689159913; x=1720695913;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sQxsEgsoiBbj0OZ5yKcpijsR9PTbP+sYvkMrlykovDM=;
 b=ASIkI6WkknSMejkySvzuatNy+2qhEZiGWjyAC3VChfBHIKFgARPk+jAP
 w9lRnU4Gcixak8i58+o7fhRTcuZ27d4+nGrqg62oSk+bQ4bOkCv2S1bv1
 NsActf4c8Fhwl8B4HjItjN0AAb1D3afStgIUhLr9hXUxckZ7a7AXJhhOG
 Jqg15T+guoGZoJRlA/I29HYzVXxYI9oAzfuOzYKoby/a7te37b/27zEMB
 17w5u92meI/+RRqtyJyvGjGFE4f9WmkH92pZl8+f7rYv1I3sqHeq5ZrqL
 +JrVzW72FNed7BQ48cEF7Ms2lcTf6IQ+ywgcxdTfHMHDgI6XfbYKPO84d
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ASIkI6Wk
Subject: [Intel-wired-lan] [PATCH iwl-next v6 11/12] ice: implement static
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, vladbu@nvidia.com,
 kuba@kernel.org, simon.horman@corigine.com, dan.carpenter@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Remove fdb entries always when ageing time expired.

Allow user to set ageing time using port object attribute.

Reviewed-by: Simon Horman <simon.horman@corigine.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
v2: use msecs_to_jiffies upon definition of
    ICE_ESW_BRIDGE_UPDATE_INTERVA
---
 .../net/ethernet/intel/ice/ice_eswitch_br.c   | 48 +++++++++++++++++++
 .../net/ethernet/intel/ice/ice_eswitch_br.h   | 10 ++++
 2 files changed, 58 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
index 20355c633000..9ccd082f9ac4 100644
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
@@ -406,6 +408,7 @@ ice_eswitch_br_fdb_entry_create(struct net_device *netdev,
 	fdb_entry->br_port = br_port;
 	fdb_entry->flow = flow;
 	fdb_entry->dev = netdev;
+	fdb_entry->last_use = jiffies;
 	event = SWITCHDEV_FDB_ADD_TO_BRIDGE;
 
 	if (added_by_user) {
@@ -805,6 +808,10 @@ ice_eswitch_br_port_obj_attr_set(struct net_device *netdev, const void *ctx,
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
@@ -976,6 +983,7 @@ ice_eswitch_br_init(struct ice_esw_br_offloads *br_offloads, int ifindex)
 	INIT_LIST_HEAD(&bridge->fdb_list);
 	bridge->br_offloads = br_offloads;
 	bridge->ifindex = ifindex;
+	bridge->ageing_time = clock_t_to_jiffies(BR_DEFAULT_AGEING_TIME);
 	xa_init(&bridge->ports);
 	br_offloads->bridge = bridge;
 
@@ -1171,6 +1179,7 @@ ice_eswitch_br_offloads_deinit(struct ice_pf *pf)
 	if (!br_offloads)
 		return;
 
+	cancel_delayed_work_sync(&br_offloads->update_work);
 	unregister_netdevice_notifier(&br_offloads->netdev_nb);
 	unregister_switchdev_blocking_notifier(&br_offloads->switchdev_blk);
 	unregister_switchdev_notifier(&br_offloads->switchdev_nb);
@@ -1185,6 +1194,40 @@ ice_eswitch_br_offloads_deinit(struct ice_pf *pf)
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
@@ -1233,6 +1276,11 @@ ice_eswitch_br_offloads_init(struct ice_pf *pf)
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
index 978e9ce8e277..85a8fadb2928 100644
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
@@ -88,6 +93,11 @@ struct ice_esw_br_vlan {
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
