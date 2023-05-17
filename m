Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9D17075B7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 May 2023 00:59:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CCEE78435D;
	Wed, 17 May 2023 22:59:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CCEE78435D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684364367;
	bh=XCmLr3LhAYF5iOVtgaC7suu7DiW0aEmWK47DVGl62xI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0reDKOk/08u3c8SoVt/mvDSbNvYXrVvXXHTsnxXogyA5JUGhqLejVsUXe8Jk5Ctuc
	 +9CrHm4tCGMzV20KvPfkSEAsGM7aVn+yC0IC4ezO0ykMh1Ut3gl3yNRHIGKELbZCWx
	 MG7vUX7uP7QTFoVw5dNe7N6P+2XfHjEbq+aE4Ci4BJDP2zNl1BRyp8n10UlERkL9wD
	 +7PVviJX8xnwFTOXwm8UQ+l+Ut3kjNL3snsO3KS4ZROELWaVLBs3eKmWpXuk0Kl9W3
	 JUA6MEszWShg8TU4sB9l7OYZfBaZixGJAj15p9Z/C3rzcSg+5xk8c/u3oSgxt0vfLe
	 jCHMF5TGaPy2g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wTs1-BiZHgxu; Wed, 17 May 2023 22:59:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5875C81DEB;
	Wed, 17 May 2023 22:59:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5875C81DEB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 887501BF21A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 22:59:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5676542A45
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 22:58:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5676542A45
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mQAytJaVN6Uo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 May 2023 22:58:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E63042A3D
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5E63042A3D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 22:58:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="355078644"
X-IronPort-AV: E=Sophos;i="5.99,283,1677571200"; d="scan'208";a="355078644"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 15:58:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="876201328"
X-IronPort-AV: E=Sophos;i="5.99,283,1677571200"; d="scan'208";a="876201328"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 15:58:49 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 17 May 2023 16:00:26 -0700
Message-Id: <20230517230028.321350-9-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230517230028.321350-1-david.m.ertman@intel.com>
References: <20230517230028.321350-1-david.m.ertman@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684364334; x=1715900334;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=MwpESHpKZeeWDd3O96FPIJts/xWviM38xJdiu64co4M=;
 b=G+TTM3c6PGE9Cw9/OHoarh4hAXjyphXJapLjoqijW453XB9+h7jBm2JS
 L25mz5KvmdLriv3sf6xeSkt8YDwR2A7nCHuwkEy3aAh+2cAs9JQSpGjFN
 sTe4rYo/9MSJ0uCNAAymkBYNjJSvNCfoeMXz893OKf9NV7SIgQ8fGizDG
 PV4UU6N5zA4sb9uUdTBcj3q0uPjQx9ecP9GmTXkxoyTCWin7a6K0GUbZ/
 wTyWhzsyeJLRUffhI4RScePzUcHFzEhtekFkFi6B065D20NBUJvAqUsv7
 McU/oM+VVAd+7m5O9RTUn52rO0iCRUbyTBpZX2K6dYalDwNPIfHCP5nVn
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G+TTM3c6
Subject: [Intel-wired-lan] [PATCH iwl-next v6 08/10] ice: enforce interface
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
aggegate as not supporting SRIOV LAG for the time they are in the
non-compliant aggregate.

Once an aggregate has been flagged as non-compliant, only unpopulating the
aggregate and re-populating it will return SRIOV LAG functionality.

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lag.c | 88 ++++++++++++++++++++++--
 1 file changed, 83 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 522d9e121e0a..9d186b1ee9b8 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -924,6 +924,7 @@ static void ice_lag_link(struct ice_lag *lag)
 
 	lag->bonded = true;
 	lag->role = ICE_LAG_UNSET;
+	netdev_info(lag->netdev, "Shared SR-IOV resources in bond are active\n");
 }
 
 /**
@@ -1369,6 +1370,7 @@ ice_lag_chk_comp(struct ice_lag *lag, void *ptr)
 	struct netdev_notifier_bonding_info *info;
 	struct netdev_bonding_info *bonding_info;
 	struct list_head *tmp;
+	struct device *dev;
 	int count = 0;
 
 	if (!lag->primary)
@@ -1381,11 +1383,21 @@ ice_lag_chk_comp(struct ice_lag *lag, void *ptr)
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
 
@@ -1397,17 +1409,19 @@ ice_lag_chk_comp(struct ice_lag *lag, void *ptr)
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
 
@@ -1416,7 +1430,8 @@ ice_lag_chk_comp(struct ice_lag *lag, void *ptr)
 		peer_vsi = peer_np->vsi;
 		if (lag->pf->pdev->bus != peer_vsi->back->pdev->bus ||
 		    lag->pf->pdev->slot != peer_vsi->back->pdev->slot) {
-			netdev_info(lag->netdev, "Found netdev on different device in LAG\n");
+			dev_info(dev, "Found %s on different device in LAG - VF LAG disabled\n",
+				 netdev_name(peer_netdev));
 			return false;
 		}
 
@@ -1425,11 +1440,18 @@ ice_lag_chk_comp(struct ice_lag *lag, void *ptr)
 		peer_dcb_cfg = &peer_vsi->port_info->qos_cfg.local_dcbx_cfg;
 		if (memcmp(dcb_cfg, peer_dcb_cfg,
 			   sizeof(struct ice_dcbx_cfg))) {
-			netdev_info(lag->netdev, "Found netdev with different DCB config in LAG\n");
+			dev_info(dev, "Found %s with different DCB in LAG - VF LAG disabled\n",
+				 netdev_name(peer_netdev));
 			return false;
 		}
 
 #endif /* !NO_DCB_SUPPORT || ADQ_SUPPORT */
+		peer_pf = peer_vsi->back;
+		if (test_bit(ICE_FLAG_FW_LLDP_AGENT, peer_pf->flags)) {
+			dev_warn(dev, "Found %s with FW LLDP agent active - VF LAG disabled\n",
+				 netdev_name(peer_netdev));
+			return false;
+		}
 	}
 
 	return true;
@@ -1477,6 +1499,58 @@ ice_lag_unregister(struct ice_lag *lag, struct net_device *event_netdev)
 		ice_lag_set_swid(0, lag, false);
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
+		ice_lag_check_nvm_support(lag->pf);
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
@@ -1498,6 +1572,7 @@ static void ice_lag_process_event(struct work_struct *work)
 	switch (lag_work->event) {
 	case NETDEV_CHANGEUPPER:
 		info = &lag_work->info.changeupper_info;
+		ice_lag_chk_disabled_bond(lag_work->lag, info);
 		if (ice_is_feature_supported(pf, ICE_F_SRIOV_LAG)) {
 			ice_lag_monitor_link(lag_work->lag, info);
 			ice_lag_changeupper_event(lag_work->lag, info);
@@ -1508,6 +1583,9 @@ static void ice_lag_process_event(struct work_struct *work)
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
