Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3557700362
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 11:08:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C47974021C;
	Fri, 12 May 2023 09:08:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C47974021C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683882484;
	bh=ipvRpVtbrqM8rdgsjwwqUNara0q0aOpH1eVAvrzntyY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=r8dngx5ODykjjQpIgTwNsNVmeKnU2QUrUqvYhBnBdG29I4DhKnplPxqmfvD07XINd
	 FkdsFPZxY/9nkanzDibxJjuNYBgTSd7IDiLCrnr0yCaWDtdFxkqrUZ5bB5z8kA5pHj
	 /TDEwNLcze6AUJWJoM7UxWxd09dj0lLqIbAp7Ua+GiGAgK9wdjKs1vfixmeKk1Jwa5
	 s37Wsj2q9i2DYqTLO3OkFfDqZpaSpjjE+5DxMDrRtp963qfgO05QPVPvzPq6HVMoYA
	 1l0rLPKqaewMNBXrjK9vp9NVULcIroJNNh4vtrq5f4iZkgp4zGSlVQERZxCsKWcLg1
	 2dYqBDFSrje1A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PnRo44XCEW-v; Fri, 12 May 2023 09:08:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 72D5A4015A;
	Fri, 12 May 2023 09:08:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 72D5A4015A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 86E8B1BF3E3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 09:07:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6C0A28483E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 09:07:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C0A28483E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B8gAYigG4xX9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 09:07:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9F688483C
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E9F688483C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 09:07:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="330363097"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="330363097"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 02:07:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="1030009584"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="1030009584"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga005.fm.intel.com with ESMTP; 12 May 2023 02:07:50 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 4CDC92FC7C;
 Fri, 12 May 2023 10:07:49 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 May 2023 11:06:52 +0200
Message-Id: <20230512090652.190058-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683882475; x=1715418475;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=n7IHBc1I9sghUbzFzhcPnTWaTamGCJRUfhHx9Gb//Sk=;
 b=oDq8hrogDF5HsLJew9CK2g6u77gQODPNLrWRjzbLK+Y7LYNoN16LeMtb
 8Zde2pTOnxoOyFypJHi6+6e4XSgzaAa4cBSJ/v77CyjpkhmmAIBVlO82a
 ai26xZNiFzjlUgrdxwzSC7iMbWTJ8GmINV8IFH2xeDNlc3LpNh7PHrutc
 HjheyOngL0dZ5k5sqV4j6ja4xfpWfrBNhWW079AIujmYw3yC48vCD4TE6
 ED2M/TOVZ+h4Z7zj5eo4t9stzcIYXAm+AjSnb1K/kSdPtPXZkcYuCL+Qa
 DoArWf/IY59h/Meui/yMWw7a4gB183Qs2D39KxRFsXylQQL+Fb7nxQbWM
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oDq8hrog
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: Remove LAG+SRIOV mutual
 exclusion
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

From: Dave Ertman <david.m.ertman@intel.com>

There was a change previously to stop SR-IOV and LAG from existing on the
same interface.  This was to prevent the violation of LACP (Link
Aggregation Control Protocol).  The method to achieve this was to add a
no-op Rx handler onto the netdev when SR-IOV VFs were present, thus
blocking bonding, bridging, etc from claiming the interface by adding
its own Rx handler.  Also, when an interface was added into a aggregate,
then the SR-IOV capability was set to false.

There are some users that have in house solutions using both SR-IOV and
bridging/bonding that this method interferes with (e.g. creating duplicate
VFs on the bonded interfaces and failing between them when the interface
fails over).

It makes more sense to provide the most functionality
possible, the restriction on co-existence of these features will be
removed.  No additional functionality is currently being provided beyond
what existed before the co-existence restriction was put into place.  It is
up to the end user to not implement a solution that would interfere with
existing network protocols.

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 .../device_drivers/ethernet/intel/ice.rst     | 18 -------
 drivers/net/ethernet/intel/ice/ice.h          | 19 -------
 drivers/net/ethernet/intel/ice/ice_lag.c      | 12 -----
 drivers/net/ethernet/intel/ice/ice_lag.h      | 53 -------------------
 drivers/net/ethernet/intel/ice/ice_lib.c      |  2 -
 drivers/net/ethernet/intel/ice/ice_sriov.c    |  4 --
 6 files changed, 108 deletions(-)

diff --git a/Documentation/networking/device_drivers/ethernet/intel/ice.rst b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
index 69695e5511f4..e4d065c55ea8 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/ice.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
@@ -84,24 +84,6 @@ Once the VM shuts down, or otherwise releases the VF, the command will
 complete.
 
 
-Important notes for SR-IOV and Link Aggregation
------------------------------------------------
-Link Aggregation is mutually exclusive with SR-IOV.
-
-- If Link Aggregation is active, SR-IOV VFs cannot be created on the PF.
-- If SR-IOV is active, you cannot set up Link Aggregation on the interface.
-
-Bridging and MACVLAN are also affected by this. If you wish to use bridging or
-MACVLAN with SR-IOV, you must set up bridging or MACVLAN before enabling
-SR-IOV. If you are using bridging or MACVLAN in conjunction with SR-IOV, and
-you want to remove the interface from the bridge or MACVLAN, you must follow
-these steps:
-
-1. Destroy SR-IOV VFs if they exist
-2. Remove the interface from the bridge or MACVLAN
-3. Recreate SRIOV VFs as needed
-
-
 Additional Features and Configurations
 ======================================
 
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 8b016511561f..b4bca1d964a9 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -814,25 +814,6 @@ static inline bool ice_is_switchdev_running(struct ice_pf *pf)
 	return pf->switchdev.is_running;
 }
 
-/**
- * ice_set_sriov_cap - enable SRIOV in PF flags
- * @pf: PF struct
- */
-static inline void ice_set_sriov_cap(struct ice_pf *pf)
-{
-	if (pf->hw.func_caps.common_cap.sr_iov_1_1)
-		set_bit(ICE_FLAG_SRIOV_CAPABLE, pf->flags);
-}
-
-/**
- * ice_clear_sriov_cap - disable SRIOV in PF flags
- * @pf: PF struct
- */
-static inline void ice_clear_sriov_cap(struct ice_pf *pf)
-{
-	clear_bit(ICE_FLAG_SRIOV_CAPABLE, pf->flags);
-}
-
 #define ICE_FD_STAT_CTR_BLOCK_COUNT	256
 #define ICE_FD_STAT_PF_IDX(base_idx) \
 			((base_idx) * ICE_FD_STAT_CTR_BLOCK_COUNT)
diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index ee5b36941ba3..5a7753bda324 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -6,15 +6,6 @@
 #include "ice.h"
 #include "ice_lag.h"
 
-/**
- * ice_lag_nop_handler - no-op Rx handler to disable LAG
- * @pskb: pointer to skb pointer
- */
-rx_handler_result_t ice_lag_nop_handler(struct sk_buff __always_unused **pskb)
-{
-	return RX_HANDLER_PASS;
-}
-
 /**
  * ice_lag_set_primary - set PF LAG state as Primary
  * @lag: LAG info struct
@@ -158,7 +149,6 @@ ice_lag_link(struct ice_lag *lag, struct netdev_notifier_changeupper_info *info)
 		lag->upper_netdev = upper;
 	}
 
-	ice_clear_sriov_cap(pf);
 	ice_clear_rdma_cap(pf);
 
 	lag->bonded = true;
@@ -205,7 +195,6 @@ ice_lag_unlink(struct ice_lag *lag,
 	}
 
 	lag->peer_netdev = NULL;
-	ice_set_sriov_cap(pf);
 	ice_set_rdma_cap(pf);
 	lag->bonded = false;
 	lag->role = ICE_LAG_NONE;
@@ -229,7 +218,6 @@ static void ice_lag_unregister(struct ice_lag *lag, struct net_device *netdev)
 	if (lag->upper_netdev) {
 		dev_put(lag->upper_netdev);
 		lag->upper_netdev = NULL;
-		ice_set_sriov_cap(pf);
 		ice_set_rdma_cap(pf);
 	}
 	/* perform some cleanup in case we come back */
diff --git a/drivers/net/ethernet/intel/ice/ice_lag.h b/drivers/net/ethernet/intel/ice/ice_lag.h
index 51b5cf467ce2..54d6663fe586 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.h
+++ b/drivers/net/ethernet/intel/ice/ice_lag.h
@@ -26,62 +26,9 @@ struct ice_lag {
 	u8 bonded:1; /* currently bonded */
 	u8 primary:1; /* this is primary */
 	u8 handler:1; /* did we register a rx_netdev_handler */
-	/* each thing blocking bonding will increment this value by one.
-	 * If this value is zero, then bonding is allowed.
-	 */
-	u16 dis_lag;
 	u8 role;
 };
 
 int ice_init_lag(struct ice_pf *pf);
 void ice_deinit_lag(struct ice_pf *pf);
-rx_handler_result_t ice_lag_nop_handler(struct sk_buff **pskb);
-
-/**
- * ice_disable_lag - increment LAG disable count
- * @lag: LAG struct
- */
-static inline void ice_disable_lag(struct ice_lag *lag)
-{
-	/* If LAG this PF is not already disabled, disable it */
-	rtnl_lock();
-	if (!netdev_is_rx_handler_busy(lag->netdev)) {
-		if (!netdev_rx_handler_register(lag->netdev,
-						ice_lag_nop_handler,
-						NULL))
-			lag->handler = true;
-	}
-	rtnl_unlock();
-	lag->dis_lag++;
-}
-
-/**
- * ice_enable_lag - decrement disable count for a PF
- * @lag: LAG struct
- *
- * Decrement the disable counter for a port, and if that count reaches
- * zero, then remove the no-op Rx handler from that netdev
- */
-static inline void ice_enable_lag(struct ice_lag *lag)
-{
-	if (lag->dis_lag)
-		lag->dis_lag--;
-	if (!lag->dis_lag && lag->handler) {
-		rtnl_lock();
-		netdev_rx_handler_unregister(lag->netdev);
-		rtnl_unlock();
-		lag->handler = false;
-	}
-}
-
-/**
- * ice_is_lag_dis - is LAG disabled
- * @lag: LAG struct
- *
- * Return true if bonding is disabled
- */
-static inline bool ice_is_lag_dis(struct ice_lag *lag)
-{
-	return !!(lag->dis_lag);
-}
 #endif /* _ICE_LAG_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index d9731476cd7f..5ddb95d1073a 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2712,8 +2712,6 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_vsi_cfg_params *params)
 	return vsi;
 
 err_vsi_cfg:
-	if (params->type == ICE_VSI_VF)
-		ice_enable_lag(pf->lag);
 	ice_vsi_free(vsi);
 
 	return NULL;
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 9788f363e9dc..a222cd702fd5 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -960,8 +960,6 @@ int ice_sriov_configure(struct pci_dev *pdev, int num_vfs)
 	if (!num_vfs) {
 		if (!pci_vfs_assigned(pdev)) {
 			ice_free_vfs(pf);
-			if (pf->lag)
-				ice_enable_lag(pf->lag);
 			return 0;
 		}
 
@@ -973,8 +971,6 @@ int ice_sriov_configure(struct pci_dev *pdev, int num_vfs)
 	if (err)
 		return err;
 
-	if (pf->lag)
-		ice_disable_lag(pf->lag);
 	return num_vfs;
 }
 
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
