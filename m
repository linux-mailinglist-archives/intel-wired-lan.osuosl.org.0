Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BB77C704C61
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 May 2023 13:32:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D8C8A4146F;
	Tue, 16 May 2023 11:32:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D8C8A4146F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684236736;
	bh=5e/8a+/WO5Y2PFC41BMIM8wVgjUyrOtUhvFne/VfGG4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=fw1pwSSt0C+SGxsbfuAPD5gjqjbzLKW65KzlI5ATMb3Bmfz6I54ZaVG3I156pwQFV
	 9svli4eQZCTZezZXG0/G0VJhrsf0ul6sQrR3Dmgd5eoltOPzXfQZQSVhYnDuqryuCC
	 OZ74NEUZZaNWXfufRAOcNZkXgpIbgPk9PTkCJp92OtXgfhMPe8UmnUKYVV6ITVS67x
	 Ok7yRkiq/zQYBjMmKpGSsN+XbI6QvfwMbvj8IscfsYqM9NB7pTERej1WLnNzev4nFt
	 K4iBjhZ7pD7f8I4lH47UBIZHhG4VsKLqSQWiCpK5inaz5RsXz9GDoHu1Xng3zFR3hb
	 Xzr1n2VN92EyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YK1IIxuZkkh0; Tue, 16 May 2023 11:32:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EDE91409DB;
	Tue, 16 May 2023 11:32:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EDE91409DB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3BA481BF3AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 11:32:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 134C583F0D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 11:32:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 134C583F0D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oh9TxqfCA3PC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 May 2023 11:32:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 030B183EC0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 030B183EC0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 11:32:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="331071655"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="331071655"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 04:32:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="791047304"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="791047304"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by FMSMGA003.fm.intel.com with ESMTP; 16 May 2023 04:32:05 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id B99D233741;
 Tue, 16 May 2023 12:32:04 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 16 May 2023 13:30:55 +0200
Message-Id: <20230516113055.7336-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684236728; x=1715772728;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yy+H6sf8Z1odWuK9uGbeOMJCaxt2CjLPeR46KgKfvzw=;
 b=HasAEl7rZ21iakV4TTvVeccQiaBxEV1nxvy0AK6in1fWT+an8b8e+bZb
 /itPfECuOClQ+JpU0GxLr9Uvwq2Z3q+EsnN8QGoA340jgwUhrCl5LnZ5E
 Ufyj6f58+4eEnIpji0FDu0Pl5hBP2Gq4hfS0Zh13j2THoa6YCpU/j/sZ4
 1vBhKl4DyS0+4mimwJdewWG643LjZIlWz0ILeZQ1zujsFYck1ll1BCOSI
 MOgcSoi+Ri28sdXGu3JGR3KXo0FUfaT+CyT4vhWGrlHr3Ly1l72rfmf1f
 /IRY1ClHCVF/EZt1e4pu9UKmrr50FfrS+UqUQplRIHDJ5LGMlBmzoOiNo
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HasAEl7r
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: Remove LAG+SRIOV mutual
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
Cc: netdev@vger.kernel.org, ihuguet@redhat.com
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
v2: remove ice_lag::handler
---
 .../device_drivers/ethernet/intel/ice.rst     | 18 -------
 drivers/net/ethernet/intel/ice/ice.h          | 19 -------
 drivers/net/ethernet/intel/ice/ice_lag.c      | 12 -----
 drivers/net/ethernet/intel/ice/ice_lag.h      | 54 -------------------
 drivers/net/ethernet/intel/ice/ice_lib.c      |  2 -
 drivers/net/ethernet/intel/ice/ice_sriov.c    |  4 --
 6 files changed, 109 deletions(-)

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
index 51b5cf467ce2..2c373676c42f 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.h
+++ b/drivers/net/ethernet/intel/ice/ice_lag.h
@@ -25,63 +25,9 @@ struct ice_lag {
 	struct notifier_block notif_block;
 	u8 bonded:1; /* currently bonded */
 	u8 primary:1; /* this is primary */
-	u8 handler:1; /* did we register a rx_netdev_handler */
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
