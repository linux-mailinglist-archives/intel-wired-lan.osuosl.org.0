Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EAD0731DBF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 18:28:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 72D65818A2;
	Thu, 15 Jun 2023 16:28:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 72D65818A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686846513;
	bh=cTY/A/P4tuEfj0j4jK2HruaWilwIig9Qy+6XL9sfKpk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RDyM8l8SmlCoDpqj7tG/9Vc0y5irQjmTY6qGiyNHE6pbwnkbkHPSceXlveJ11JL72
	 xFesNGbtQRiYeuOIbaF+T/rhnBuUDQ3YPtZhD6mo1hlL7F78XxVQ8kawIqtYOozAcM
	 m5U3OQ7MF9/eonLCPAepicuM4L3gBgBk0zdjiNsM/lO5o9k+sq572MJx6vX4PU1WIo
	 J9n9CF0dUyVb1Mi0yCfggmBRaylZqV4z8BMdf4xny2ch5kcrKz9PIm2Y5V9KJQaawK
	 vre+hxOFP9gF/r6wbO6P4aJP1JiEXP2ZpYJc5iMoaqnNZtqI78pXxiwSbSxl1bOrBv
	 9O8xgelQd82Ng==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RnU9hmNJXlcZ; Thu, 15 Jun 2023 16:28:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E1FAE83F1E;
	Thu, 15 Jun 2023 16:28:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E1FAE83F1E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5369E1BF969
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 16:27:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2CE1A60BE8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 16:27:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2CE1A60BE8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IlSYFXXRgTT8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jun 2023 16:27:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 596F460C2F
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 596F460C2F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 16:27:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="445336203"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="445336203"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 09:27:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="712513719"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="712513719"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 09:27:52 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 15 Jun 2023 09:29:30 -0700
Message-Id: <20230615162932.762756-9-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230615162932.762756-1-david.m.ertman@intel.com>
References: <20230615162932.762756-1-david.m.ertman@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686846477; x=1718382477;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gihpf9yH2dldkkeDrGiSbYIBAbtHKVzSl310bV63NFE=;
 b=DO2QgW0BNcRNsm3gnd9JzVJK2NFy6xZn/eeMpdUnP7cpGy/y5tlOdZbl
 VUuqEdXgJA1FQaGwzRjwAoZ7irRLqnLJ3//jPLoZ4PEjvi3lwkyT27opO
 KdfHfQORSz5KhD7EmepHn5dEZwHe+yZv/c+d09UxkDNGS2wrkH3cdLdl5
 c8evn5pF3Wfjpc0zz7ov7Aw45Q2OPoF4Wb4jN5v8qMC6OUfwiBnvpFqWI
 AekwG+UejiIaBgggCMmyC2YZgPmIRHpa7Sl80TrNmp5z6PlGOlTzUmA9f
 rlVeWCKgUY+V4BNeM+kKliknng55xxKJGr6mOrdMJXuKKy4kI0+LDi22m
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DO2QgW0B
Subject: [Intel-wired-lan] [PATCH iwl-next v5 08/10] ice: enforce interface
 eligibility and add messaging for SRIOV LAG
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

Implement checks on what interfaces are eligible for supporting SRIOV VFs
when a member of an aggregate interface.

Implement unwind path for interfaces that become ineligible.

checks for the SRIOV LAG feature bit wrap most of the functional code for
manipulating resources that apply to this feature.  Utilize this bit
to track compliant aggregates.  Also flag any new entries into the
aggregate as not supporting SRIOV LAG for the time they are in the
non-compliant aggregate.

Once an aggregate has been flagged as non-compliant, only unpopulating the
aggregate and re-populating it will return SRIOV LAG functionality.

Reviewed-by: Daniel Machon <daniel.machon@microchip.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lag.c | 88 ++++++++++++++++++++++--
 1 file changed, 83 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 6b77a29a54ef..0054d4e1056b 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -885,6 +885,7 @@ static void ice_lag_link(struct ice_lag *lag)
 
 	lag->bonded = true;
 	lag->role = ICE_LAG_UNSET;
+	netdev_info(lag->netdev, "Shared SR-IOV resources in bond are active\n");
 }
 
 /**
@@ -1329,6 +1330,7 @@ ice_lag_chk_comp(struct ice_lag *lag, void *ptr)
 	struct netdev_notifier_bonding_info *info;
 	struct netdev_bonding_info *bonding_info;
 	struct list_head *tmp;
+	struct device *dev;
 	int count = 0;
 
 	if (!lag->primary)
@@ -1341,11 +1343,21 @@ ice_lag_chk_comp(struct ice_lag *lag, void *ptr)
 	if (event_upper != lag->upper_netdev)
 		return true;
 
+	dev = ice_pf_to_dev(lag->pf);
+
+	/* only supporting switchdev mode for SRIOV VF LAG.
+	 * primary interface has to be in switchdev mode
+	 */
+	if (!ice_is_switchdev_running(lag->pf)) {
+		dev_info(dev, "Primary interface not in switchdev mode - VF LAG disabled\n");
+		return false;
+	}
+
 	info = (struct netdev_notifier_bonding_info *)ptr;
 	bonding_info = &info->bonding_info;
 	lag->bond_mode = bonding_info->master.bond_mode;
 	if (lag->bond_mode != BOND_MODE_ACTIVEBACKUP) {
-		netdev_info(lag->netdev, "Bond Mode not ACTIVE-BACKUP\n");
+		dev_info(dev, "Bond Mode not ACTIVE-BACKUP - VF LAG disabled\n");
 		return false;
 	}
 
@@ -1355,17 +1367,19 @@ ice_lag_chk_comp(struct ice_lag *lag, void *ptr)
 		struct ice_netdev_priv *peer_np;
 		struct net_device *peer_netdev;
 		struct ice_vsi *vsi, *peer_vsi;
+		struct ice_pf *peer_pf;
 
 		entry = list_entry(tmp, struct ice_lag_netdev_list, node);
 		peer_netdev = entry->netdev;
 		if (!netif_is_ice(peer_netdev)) {
-			netdev_info(lag->netdev, "Found non-ice netdev in LAG\n");
+			dev_info(dev, "Found %s non-ice netdev in LAG - VF LAG disabled\n",
+				 netdev_name(peer_netdev));
 			return false;
 		}
 
 		count++;
 		if (count > 2) {
-			netdev_info(lag->netdev, "Found more than two netdevs in LAG\n");
+			dev_info(dev, "Found more than two netdevs in LAG - VF LAG disabled\n");
 			return false;
 		}
 
@@ -1374,7 +1388,8 @@ ice_lag_chk_comp(struct ice_lag *lag, void *ptr)
 		peer_vsi = peer_np->vsi;
 		if (lag->pf->pdev->bus != peer_vsi->back->pdev->bus ||
 		    lag->pf->pdev->slot != peer_vsi->back->pdev->slot) {
-			netdev_info(lag->netdev, "Found netdev on different device in LAG\n");
+			dev_info(dev, "Found %s on different device in LAG - VF LAG disabled\n",
+				 netdev_name(peer_netdev));
 			return false;
 		}
 
@@ -1382,10 +1397,17 @@ ice_lag_chk_comp(struct ice_lag *lag, void *ptr)
 		peer_dcb_cfg = &peer_vsi->port_info->qos_cfg.local_dcbx_cfg;
 		if (memcmp(dcb_cfg, peer_dcb_cfg,
 			   sizeof(struct ice_dcbx_cfg))) {
-			netdev_info(lag->netdev, "Found netdev with different DCB config in LAG\n");
+			dev_info(dev, "Found %s with different DCB in LAG - VF LAG disabled\n",
+				 netdev_name(peer_netdev));
 			return false;
 		}
 
+		peer_pf = peer_vsi->back;
+		if (test_bit(ICE_FLAG_FW_LLDP_AGENT, peer_pf->flags)) {
+			dev_warn(dev, "Found %s with FW LLDP agent active - VF LAG disabled\n",
+				 netdev_name(peer_netdev));
+			return false;
+		}
 	}
 
 	return true;
@@ -1457,6 +1479,58 @@ ice_lag_monitor_rdma(struct ice_lag *lag, void *ptr)
 		ice_set_rdma_cap(pf);
 }
 
+/**
+ * ice_lag_chk_disabled_bond - monitor interfaces entering/leaving disabled bond
+ * @lag: lag info struct
+ * @ptr: opaque data containing event
+ *
+ * as interfaces enter a bond - determine if the bond is currently
+ * SRIOV LAG compliant and flag if not.  As interfaces leave the
+ * bond, reset their compliant status.
+ */
+static void ice_lag_chk_disabled_bond(struct ice_lag *lag, void *ptr)
+{
+	struct net_device *netdev = netdev_notifier_info_to_dev(ptr);
+	struct netdev_notifier_changeupper_info *info = ptr;
+	struct ice_lag *prim_lag;
+
+	if (netdev != lag->netdev)
+		return;
+
+	if (info->linking) {
+		prim_lag = ice_lag_find_primary(lag);
+		if (prim_lag &&
+		    !ice_is_feature_supported(prim_lag->pf, ICE_F_SRIOV_LAG)) {
+			ice_clear_feature_support(lag->pf, ICE_F_SRIOV_LAG);
+			netdev_info(netdev, "Interface added to non-compliant SRIOV LAG aggregate\n");
+		}
+	} else {
+		ice_lag_init_feature_support_flag(lag->pf);
+	}
+}
+
+/**
+ * ice_lag_disable_sriov_bond - set members of bond as not supporting SRIOV LAG
+ * @lag: primary interfaces lag struct
+ */
+static void ice_lag_disable_sriov_bond(struct ice_lag *lag)
+{
+	struct ice_lag_netdev_list *entry;
+	struct ice_netdev_priv *np;
+	struct net_device *netdev;
+	struct list_head *tmp;
+	struct ice_pf *pf;
+
+	list_for_each(tmp, lag->netdev_head) {
+		entry = list_entry(tmp, struct ice_lag_netdev_list, node);
+		netdev = entry->netdev;
+		np = netdev_priv(netdev);
+		pf = np->vsi->back;
+
+		ice_clear_feature_support(pf, ICE_F_SRIOV_LAG);
+	}
+}
+
 /**
  * ice_lag_process_event - process a task assigned to the lag_wq
  * @work: pointer to work_struct
@@ -1478,6 +1552,7 @@ static void ice_lag_process_event(struct work_struct *work)
 	switch (lag_work->event) {
 	case NETDEV_CHANGEUPPER:
 		info = &lag_work->info.changeupper_info;
+		ice_lag_chk_disabled_bond(lag_work->lag, info);
 		if (ice_is_feature_supported(pf, ICE_F_SRIOV_LAG)) {
 			ice_lag_monitor_link(lag_work->lag, info);
 			ice_lag_changeupper_event(lag_work->lag, info);
@@ -1489,6 +1564,9 @@ static void ice_lag_process_event(struct work_struct *work)
 		if (ice_is_feature_supported(pf, ICE_F_SRIOV_LAG)) {
 			if (!ice_lag_chk_comp(lag_work->lag,
 					      &lag_work->info.bonding_info)) {
+				netdev = lag_work->info.bonding_info.info.dev;
+				ice_lag_disable_sriov_bond(lag_work->lag);
+				ice_lag_unregister(lag_work->lag, netdev);
 				goto lag_cleanup;
 			}
 			ice_lag_monitor_active(lag_work->lag,
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
