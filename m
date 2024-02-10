Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 015BC850219
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Feb 2024 03:10:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7708B60878;
	Sat, 10 Feb 2024 02:10:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tN1wj2G_Zlut; Sat, 10 Feb 2024 02:10:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 231CB6087D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707531014;
	bh=yRkjLp7+NJQ25U61llSBie9gINcrkYfO9QW77vfi8ag=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=5aJ2BbHZss6JT98ITolh4+DZCCMETswV5laU6EZdZ2cY5rw9VCMiki0KCLur7DeG6
	 yPFTsBkpr3sB3+hbs29YyArrHgli1KwDh2m/2++HTCM6v5ctB0q1Q5UNcTa2mGYgmZ
	 Ta1n2R0lenz9UrneX2vH85Ly+a0R0FlWwr0DEk5mWKvXw3NmciIqByq1QCd2L1tl0F
	 RSqs4BU/M5J+1XljmqG+lLrxw6ZZSJksuT/m5Pj8a3sijtr+W3lroaAzf3mKDtuA7j
	 W3zarVTOgqTUaD+ilC/BVIMRNzC1IGbywg524+jr8Q2nP04f8sXycl8M73bL8WJeDB
	 oUDxeI+BG7/VQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 231CB6087D;
	Sat, 10 Feb 2024 02:10:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B36E41BF326
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Feb 2024 02:10:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9E98084290
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Feb 2024 02:10:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V12AdEdziY7W for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Feb 2024 02:10:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=jesse.brandeburg@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E6FE584277
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6FE584277
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E6FE584277
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Feb 2024 02:10:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10979"; a="12913553"
X-IronPort-AV: E=Sophos;i="6.05,258,1701158400"; d="scan'208";a="12913553"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 18:10:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,258,1701158400"; 
   d="scan'208";a="6739958"
Received: from jbrandeb-coyote30.jf.intel.com ([10.166.29.19])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 18:10:07 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  9 Feb 2024 18:09:57 -0800
Message-Id: <20240210021000.2011419-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707531011; x=1739067011;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fLgeJ7EXIuki7yDq2VZpQSWedocXdbs1uC+OWXjr+BA=;
 b=gBGoTAVGTsz4LyVy3wi+ldCUYE8ILDDn1S9mqWrJbdwQwTRamaNNJRik
 UutEEtJOj+yTNeUxwzGAQe1QaMCIsb4Ki9HijDO/QCZGwPb5bOfjH1Z40
 GGR5uDa4mlPjj4mvqL79DBpCsou38EtzZ1N0zpyuB465LiuRPd1xABfpU
 TnpYjb5lC6p3K+biDtn3tWf3M97LmxSQ7fE+wf4u4Q+FgLS1ZpWMOBM1t
 lgfOmqav7H15/yat7dj62S90iXKiRmOfvV54JOjeKShRUksEfXs65EvNW
 zVzwgKGMzrn6TcxUcbZJEF1GxA68sVF3e5w5e3goOBXdwVTSZXbsLdH3E
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gBGoTAVG
Subject: [Intel-wired-lan] [PATCH RFC net-next v1] net: rework FCOE and RFS
 ops
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
Cc: Kory Maincent <kory.maincent@bootlin.com>, Ariel Elior <aelior@marvell.com>,
 Manish Chopra <manishc@marvell.com>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Sudarsana Kalluru <skalluru@marvell.com>, Emeel Hakim <ehakim@nvidia.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Subbaraya Sundeep <sbhatta@marvell.com>, Raju Rangoju <rajur@chelsio.com>,
 Maxim Georgiev <glipus@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[ Sent as RFC to gauge whether this is better than what we have ]

As demonstrated with the macros in include/linux/pm.h, from commit
1a3c7bb08826 ("PM: core: Add new *_PM_OPS macros, deprecate old ones"),
the networking layer can benefit from some of the same logic to remove
ifdef CONFIG_FOO blocks from code and move the complicated management of
=y and =m variants causing "unused function" warnings from the
developer, and put them into the header file.

This adds several new helpers for drivers to use instead of ifdefs
SET_FCOE_OPS()
SET_FCOE_GET_WWN_OPS()
SET_RFS_ACCEL_OPS()

And the idea is that you can get rid of #ifdef CONFIG_BLAH around the
declarations of these functions that are only called from an ops
pointer, and you can declare the population of the ops members with the
new macros which avoid filling in values when the ifdef is not enabled.

NOTE:
There is a bunch of code in ixgbe under IXGBE_FCOE defines which is only
defined when CONFIG_FCOE is defined, but I didn't want to fix hundreds
of those so just left most of them.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 .../net/ethernet/broadcom/bnx2x/bnx2x_cmn.c   |  2 --
 .../net/ethernet/broadcom/bnx2x/bnx2x_cmn.h   |  2 --
 .../net/ethernet/broadcom/bnx2x/bnx2x_main.c  |  5 +--
 .../net/ethernet/chelsio/cxgb4/cxgb4_main.c   |  4 +--
 drivers/net/ethernet/intel/ice/ice_arfs.h     |  8 -----
 drivers/net/ethernet/intel/ice/ice_main.c     |  4 +--
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  7 ----
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 21 +++++-------
 .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    |  8 ++---
 include/linux/netdevice.h                     | 34 +++++++++++++++++--
 net/8021q/vlan_dev.c                          | 18 +++-------
 11 files changed, 49 insertions(+), 64 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_cmn.c b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_cmn.c
index e9c1e1bb5580..0300e40c7ca6 100644
--- a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_cmn.c
+++ b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_cmn.c
@@ -4860,7 +4860,6 @@ int bnx2x_get_link_cfg_idx(struct bnx2x *bp)
 	return LINK_CONFIG_IDX(sel_phy_idx);
 }
 
-#ifdef NETDEV_FCOE_WWNN
 int bnx2x_fcoe_get_wwn(struct net_device *dev, u64 *wwn, int type)
 {
 	struct bnx2x *bp = netdev_priv(dev);
@@ -4882,7 +4881,6 @@ int bnx2x_fcoe_get_wwn(struct net_device *dev, u64 *wwn, int type)
 
 	return 0;
 }
-#endif
 
 /* called with rtnl_lock */
 int bnx2x_change_mtu(struct net_device *dev, int new_mtu)
diff --git a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_cmn.h b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_cmn.h
index d8b1824c334d..afcef4a4d680 100644
--- a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_cmn.h
+++ b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_cmn.h
@@ -594,7 +594,6 @@ void bnx2x_free_mem_bp(struct bnx2x *bp);
  */
 int bnx2x_change_mtu(struct net_device *dev, int new_mtu);
 
-#ifdef NETDEV_FCOE_WWNN
 /**
  * bnx2x_fcoe_get_wwn - return the requested WWN value for this port
  *
@@ -604,7 +603,6 @@ int bnx2x_change_mtu(struct net_device *dev, int new_mtu);
  *
  */
 int bnx2x_fcoe_get_wwn(struct net_device *dev, u64 *wwn, int type);
-#endif
 
 netdev_features_t bnx2x_fix_features(struct net_device *dev,
 				     netdev_features_t features);
diff --git a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c
index 0d8e61c63c7c..e2795a6047b8 100644
--- a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c
+++ b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c
@@ -13030,10 +13030,7 @@ static const struct net_device_ops bnx2x_netdev_ops = {
 	.ndo_get_vf_config	= bnx2x_get_vf_config,
 	.ndo_set_vf_spoofchk	= bnx2x_set_vf_spoofchk,
 #endif
-#ifdef NETDEV_FCOE_WWNN
-	.ndo_fcoe_get_wwn	= bnx2x_fcoe_get_wwn,
-#endif
-
+	SET_FCOE_GET_WWN_OPS(bnx2x_fcoe_get_wwn)
 	.ndo_get_phys_port_id	= bnx2x_get_phys_port_id,
 	.ndo_set_vf_link_state	= bnx2x_set_vf_link_state,
 	.ndo_features_check	= bnx2x_features_check,
diff --git a/drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c b/drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c
index 2eb33a727bba..48dd7c89374d 100644
--- a/drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c
+++ b/drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c
@@ -3877,8 +3877,8 @@ static const struct net_device_ops cxgb4_netdev_ops = {
 	.ndo_poll_controller  = cxgb_netpoll,
 #endif
 #ifdef CONFIG_CHELSIO_T4_FCOE
-	.ndo_fcoe_enable      = cxgb_fcoe_enable,
-	.ndo_fcoe_disable     = cxgb_fcoe_disable,
+	SET_FCOE_OPS(cxgb_fcoe_enable, cxgb_fcoe_disable,
+		     NULL, NULL, NULL, NULL)
 #endif /* CONFIG_CHELSIO_T4_FCOE */
 	.ndo_set_tx_maxrate   = cxgb_set_tx_maxrate,
 	.ndo_setup_tc         = cxgb_setup_tc,
diff --git a/drivers/net/ethernet/intel/ice/ice_arfs.h b/drivers/net/ethernet/intel/ice/ice_arfs.h
index 9669ad9bf7b5..e09fff33fcdd 100644
--- a/drivers/net/ethernet/intel/ice/ice_arfs.h
+++ b/drivers/net/ethernet/intel/ice/ice_arfs.h
@@ -67,14 +67,6 @@ static inline int ice_set_cpu_rx_rmap(struct ice_vsi __always_unused *vsi)
 	return 0;
 }
 
-static inline int
-ice_rx_flow_steer(struct net_device __always_unused *netdev,
-		  const struct sk_buff __always_unused *skb,
-		  u16 __always_unused rxq_idx, u32 __always_unused flow_id)
-{
-	return -EOPNOTSUPP;
-}
-
 static inline bool
 ice_is_arfs_using_perfect_flow(struct ice_hw __always_unused *hw,
 			       enum ice_fltr_ptype __always_unused flow_type)
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index dd4a9bc0dfdc..970bf53b4823 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -9516,11 +9516,9 @@ static const struct net_device_ops ice_netdev_ops = {
 	.ndo_bridge_setlink = ice_bridge_setlink,
 	.ndo_fdb_add = ice_fdb_add,
 	.ndo_fdb_del = ice_fdb_del,
-#ifdef CONFIG_RFS_ACCEL
-	.ndo_rx_flow_steer = ice_rx_flow_steer,
-#endif
 	.ndo_tx_timeout = ice_tx_timeout,
 	.ndo_bpf = ice_xdp,
 	.ndo_xdp_xmit = ice_xdp_xmit,
 	.ndo_xsk_wakeup = ice_xsk_wakeup,
+	SET_RFS_ACCEL_OPS(ice_rx_flow_steer)
 };
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index b6f0376e42f4..1459dced175e 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -406,10 +406,7 @@ enum ixgbe_ring_f_enum {
 	RING_F_VMDQ,  /* SR-IOV uses the same ring feature */
 	RING_F_RSS,
 	RING_F_FDIR,
-#ifdef IXGBE_FCOE
 	RING_F_FCOE,
-#endif /* IXGBE_FCOE */
-
 	RING_F_ARRAY_SIZE      /* must be last in enum set */
 };
 
@@ -567,10 +564,8 @@ static inline u16 ixgbe_desc_unused(struct ixgbe_ring *ring)
 	(&(((struct ixgbe_adv_tx_context_desc *)((R)->desc))[i]))
 
 #define IXGBE_MAX_JUMBO_FRAME_SIZE	9728 /* Maximum Supported Size 9.5KB */
-#ifdef IXGBE_FCOE
 /* Use 3K as the baby jumbo frame size for FCoE */
 #define IXGBE_FCOE_JUMBO_FRAME_SIZE       3072
-#endif /* IXGBE_FCOE */
 
 #define OTHER_VECTOR 1
 #define NON_Q_VECTORS (OTHER_VECTOR)
@@ -980,7 +975,6 @@ void ixgbe_do_reset(struct net_device *netdev);
 void ixgbe_sysfs_exit(struct ixgbe_adapter *adapter);
 int ixgbe_sysfs_init(struct ixgbe_adapter *adapter);
 #endif /* CONFIG_IXGBE_HWMON */
-#ifdef IXGBE_FCOE
 void ixgbe_configure_fcoe(struct ixgbe_adapter *adapter);
 int ixgbe_fso(struct ixgbe_ring *tx_ring, struct ixgbe_tx_buffer *first,
 	      u8 *hdr_len);
@@ -999,7 +993,6 @@ int ixgbe_fcoe_get_wwn(struct net_device *netdev, u64 *wwn, int type);
 int ixgbe_fcoe_get_hbainfo(struct net_device *netdev,
 			   struct netdev_fcoe_hbainfo *info);
 u8 ixgbe_fcoe_get_tc(struct ixgbe_adapter *adapter);
-#endif /* IXGBE_FCOE */
 #ifdef CONFIG_DEBUG_FS
 void ixgbe_dbg_adapter_init(struct ixgbe_adapter *adapter);
 void ixgbe_dbg_adapter_exit(struct ixgbe_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index bd541527c8c7..8c9265a04dc6 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -10416,14 +10416,11 @@ static const struct net_device_ops ixgbe_netdev_ops = {
 	.ndo_setup_tc		= __ixgbe_setup_tc,
 #ifdef IXGBE_FCOE
 	.ndo_select_queue	= ixgbe_select_queue,
-	.ndo_fcoe_ddp_setup = ixgbe_fcoe_ddp_get,
-	.ndo_fcoe_ddp_target = ixgbe_fcoe_ddp_target,
-	.ndo_fcoe_ddp_done = ixgbe_fcoe_ddp_put,
-	.ndo_fcoe_enable = ixgbe_fcoe_enable,
-	.ndo_fcoe_disable = ixgbe_fcoe_disable,
-	.ndo_fcoe_get_wwn = ixgbe_fcoe_get_wwn,
-	.ndo_fcoe_get_hbainfo = ixgbe_fcoe_get_hbainfo,
 #endif /* IXGBE_FCOE */
+	SET_FCOE_OPS(ixgbe_fcoe_enable, ixgbe_fcoe_disable,
+		     ixgbe_fcoe_ddp_target, ixgbe_fcoe_ddp_get,
+		     ixgbe_fcoe_ddp_put, ixgbe_fcoe_get_hbainfo)
+	SET_FCOE_GET_WWN_OPS(ixgbe_fcoe_get_wwn)
 	.ndo_set_features = ixgbe_set_features,
 	.ndo_fix_features = ixgbe_fix_features,
 	.ndo_fdb_add		= ixgbe_ndo_fdb_add,
@@ -10761,9 +10758,6 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	u8 part_str[IXGBE_PBANUM_LENGTH];
 	int i, err, expected_gts;
 	bool disable_dev = false;
-#ifdef IXGBE_FCOE
-	u16 device_caps;
-#endif
 	u32 eec;
 
 	/* Catch broken hardware that put the wrong VF device ID in
@@ -11012,9 +11006,10 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		netdev->dcbnl_ops = &ixgbe_dcbnl_ops;
 #endif
 
-#ifdef IXGBE_FCOE
-	if (adapter->flags & IXGBE_FLAG_FCOE_CAPABLE) {
+	if (IS_ENABLED(CONFIG_FCOE) &&
+	    adapter->flags & IXGBE_FLAG_FCOE_CAPABLE) {
 		unsigned int fcoe_l;
+		u16 device_caps;
 
 		if (hw->mac.ops.get_device_caps) {
 			hw->mac.ops.get_device_caps(hw, &device_caps);
@@ -11033,7 +11028,7 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 					 NETIF_F_FCOE_CRC |
 					 NETIF_F_FCOE_MTU;
 	}
-#endif /* IXGBE_FCOE */
+
 	if (adapter->flags2 & IXGBE_FLAG2_RSC_CAPABLE)
 		netdev->hw_features |= NETIF_F_LRO;
 	if (adapter->flags2 & IXGBE_FLAG2_RSC_ENABLED)
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
index 7299a830f6e4..683a68a43bd2 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
@@ -494,12 +494,10 @@ static int ixgbe_set_vf_lpe(struct ixgbe_adapter *adapter, u32 max_frame, u32 vf
 		u32 reg_offset, vf_shift, vfre;
 		s32 err = 0;
 
-#ifdef CONFIG_FCOE
-		if (dev->features & NETIF_F_FCOE_MTU)
+		if (IS_ENABLED(CONFIG_FCOE) && dev->features & NETIF_F_FCOE_MTU)
 			pf_max_frame = max_t(int, pf_max_frame,
 					     IXGBE_FCOE_JUMBO_FRAME_SIZE);
 
-#endif /* CONFIG_FCOE */
 		switch (adapter->vfinfo[vf].vf_api) {
 		case ixgbe_mbox_api_11:
 		case ixgbe_mbox_api_12:
@@ -856,11 +854,9 @@ static void ixgbe_set_vf_rx_tx(struct ixgbe_adapter *adapter, int vf)
 		struct net_device *dev = adapter->netdev;
 		int pf_max_frame = dev->mtu + ETH_HLEN;
 
-#if IS_ENABLED(CONFIG_FCOE)
-		if (dev->features & NETIF_F_FCOE_MTU)
+		if (IS_ENABLED(CONFIG_FCOE) && dev->features & NETIF_F_FCOE_MTU)
 			pf_max_frame = max_t(int, pf_max_frame,
 					     IXGBE_FCOE_JUMBO_FRAME_SIZE);
-#endif /* CONFIG_FCOE */
 
 		if (pf_max_frame > ETH_FRAME_LEN)
 			reg_req_rx = reg_cur_rx & ~(1 << vf_shift);
diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 118c40258d07..22ae80271e57 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -869,7 +869,6 @@ struct netdev_tc_txq {
 	u16 offset;
 };
 
-#if defined(CONFIG_FCOE) || defined(CONFIG_FCOE_MODULE)
 /*
  * This structure is to hold information about the device
  * configured to run FCoE protocol stack.
@@ -884,7 +883,6 @@ struct netdev_fcoe_hbainfo {
 	char	model[256];
 	char	model_description[256];
 };
-#endif
 
 #define MAX_PHYS_ITEM_ID_LEN 32
 
@@ -1549,9 +1547,9 @@ struct net_device_ops {
 							struct netdev_fcoe_hbainfo *hbainfo);
 #endif
 
-#if IS_ENABLED(CONFIG_LIBFCOE)
 #define NETDEV_FCOE_WWNN 0
 #define NETDEV_FCOE_WWPN 1
+#if IS_ENABLED(CONFIG_LIBFCOE)
 	int			(*ndo_fcoe_get_wwn)(struct net_device *dev,
 						    u64 *wwn, int type);
 #endif
@@ -1681,6 +1679,36 @@ struct net_device_ops {
 						    struct netlink_ext_ack *extack);
 };
 
+#define rfs_accel_ptr(_ptr) PTR_IF(IS_ENABLED(CONFIG_RFS_ACCEL), (_ptr))
+
+#if IS_ENABLED(CONFIG_RFS_ACCEL)
+#define SET_RFS_ACCEL_OPS(flow_fn) \
+	.ndo_rx_flow_steer = rfs_accel_ptr(flow_fn),
+#else
+#define SET_RFS_ACCEL_OPS(flow_fn)
+#endif
+
+#define fcoe_ptr(_ptr) PTR_IF(IS_ENABLED(CONFIG_FCOE), (_ptr))
+#if IS_ENABLED(CONFIG_FCOE)
+#define SET_FCOE_OPS(enable_fn, disable_fn, ddp_target_fn, ddp_setup_fn, ddp_done_fn, get_hbainfo_fn) \
+	.ndo_fcoe_enable = fcoe_ptr(enable_fn), \
+	.ndo_fcoe_disable = fcoe_ptr(disable_fn), \
+	.ndo_fcoe_ddp_target = fcoe_ptr(ddp_target_fn), \
+	.ndo_fcoe_ddp_setup = fcoe_ptr(ddp_setup_fn), \
+	.ndo_fcoe_ddp_done = fcoe_ptr(ddp_done_fn), \
+	.ndo_fcoe_get_hbainfo = fcoe_ptr(get_hbainfo_fn),
+#else
+#define SET_FCOE_OPS(enable_fn, disable_fn, ddp_setup_fn, ddp_done_fn, ddp_target_fn, get_hbainfo_fn)
+#endif /* CONFIG_FCOE */
+
+#define fcoe_wwn_ptr(_ptr) PTR_IF(IS_ENABLED(CONFIG_LIBFCOE), (_ptr))
+#if IS_ENABLED(CONFIG_LIBFCOE)
+#define SET_FCOE_GET_WWN_OPS(get_wwn_fn) \
+	.ndo_fcoe_get_wwn = fcoe_wwn_ptr(get_wwn_fn),
+#else
+#define SET_FCOE_GET_WWN_OPS(get_wwn_fn)
+#endif /* CONFIG_LIBFCOE */
+
 /**
  * enum netdev_priv_flags - &struct net_device priv_flags
  *
diff --git a/net/8021q/vlan_dev.c b/net/8021q/vlan_dev.c
index 407b2335f091..7b5cb64a839a 100644
--- a/net/8021q/vlan_dev.c
+++ b/net/8021q/vlan_dev.c
@@ -411,7 +411,6 @@ static int vlan_dev_neigh_setup(struct net_device *dev, struct neigh_parms *pa)
 	return err;
 }
 
-#if IS_ENABLED(CONFIG_FCOE)
 static int vlan_dev_fcoe_ddp_setup(struct net_device *dev, u16 xid,
 				   struct scatterlist *sgl, unsigned int sgc)
 {
@@ -471,9 +470,7 @@ static int vlan_dev_fcoe_ddp_target(struct net_device *dev, u16 xid,
 
 	return rc;
 }
-#endif
 
-#ifdef NETDEV_FCOE_WWNN
 static int vlan_dev_fcoe_get_wwn(struct net_device *dev, u64 *wwn, int type)
 {
 	struct net_device *real_dev = vlan_dev_priv(dev)->real_dev;
@@ -484,7 +481,6 @@ static int vlan_dev_fcoe_get_wwn(struct net_device *dev, u64 *wwn, int type)
 		rc = ops->ndo_fcoe_get_wwn(real_dev, wwn, type);
 	return rc;
 }
-#endif
 
 static void vlan_dev_change_rx_flags(struct net_device *dev, int change)
 {
@@ -1065,16 +1061,10 @@ static const struct net_device_ops vlan_netdev_ops = {
 	.ndo_eth_ioctl		= vlan_dev_ioctl,
 	.ndo_neigh_setup	= vlan_dev_neigh_setup,
 	.ndo_get_stats64	= vlan_dev_get_stats64,
-#if IS_ENABLED(CONFIG_FCOE)
-	.ndo_fcoe_ddp_setup	= vlan_dev_fcoe_ddp_setup,
-	.ndo_fcoe_ddp_done	= vlan_dev_fcoe_ddp_done,
-	.ndo_fcoe_enable	= vlan_dev_fcoe_enable,
-	.ndo_fcoe_disable	= vlan_dev_fcoe_disable,
-	.ndo_fcoe_ddp_target	= vlan_dev_fcoe_ddp_target,
-#endif
-#ifdef NETDEV_FCOE_WWNN
-	.ndo_fcoe_get_wwn	= vlan_dev_fcoe_get_wwn,
-#endif
+	SET_FCOE_OPS(vlan_dev_fcoe_enable, vlan_dev_fcoe_disable,
+		     vlan_dev_fcoe_ddp_target, vlan_dev_fcoe_ddp_setup,
+		     vlan_dev_fcoe_ddp_done, NULL)
+	SET_FCOE_GET_WWN_OPS(vlan_dev_fcoe_get_wwn)
 #ifdef CONFIG_NET_POLL_CONTROLLER
 	.ndo_poll_controller	= vlan_dev_poll_controller,
 	.ndo_netpoll_setup	= vlan_dev_netpoll_setup,
-- 
2.39.3

