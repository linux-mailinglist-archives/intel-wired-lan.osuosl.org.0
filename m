Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9CE94A5B3
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Aug 2024 12:37:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E00880EA5;
	Wed,  7 Aug 2024 10:37:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CAfoZOeGFQ6t; Wed,  7 Aug 2024 10:37:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B134812CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723027060;
	bh=FNSXFEM7CYtviT8E+wqPZE+i6eKTlKNRPjgGZo0y5NA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=8dUoivp1D3McHvaf3WpBalkP88Lx0821M6bSCZz4u7grKOH82n1uzaMvn/ar00Wrh
	 lqUpvN6UDDui5dAJ0UQhcc7wZLL6q5O45cGhrxSmzZbXJshwiY3dDh5HHzL8XH75PD
	 RF6ifFSyn1oiIy7O4gs6LamBibBedZ42Wm0NfkM+qzC0p2bxNco4jJSaGV/GDaeXb7
	 7JJZ6vZNd8GSdkqgHGn2tvQ9ReLHXCK/UAkaDqkGW4rcNynKWzWXivvSyVqI05bKsf
	 +tLO3L9n2ztecWjwaLe/CVfWk9NMzRhcBPAkk/oatw4bcjJEpfjPoBZldwhbWsKeUz
	 P3d6RBTRb47xw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6B134812CA;
	Wed,  7 Aug 2024 10:37:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 14DF61BF97F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 10:37:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0D739405A2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 10:37:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W6mhD7oCC-GD for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2024 10:37:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E0A02405A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0A02405A0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E0A02405A0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 10:37:36 +0000 (UTC)
X-CSE-ConnectionGUID: o2/NjIdkQOu6UG2+6qGNEA==
X-CSE-MsgGUID: dkT/WHQNSU269fwJNDAzCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="21061364"
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="21061364"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 03:37:35 -0700
X-CSE-ConnectionGUID: u3disdMhRSS37LB7ztinqw==
X-CSE-MsgGUID: 4HgT/+geR5+UthpF1rdXbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="61694712"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa005.jf.intel.com with ESMTP; 07 Aug 2024 03:37:34 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 2E9E228763;
 Wed,  7 Aug 2024 11:37:32 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: netdev@vger.kernel.org
Date: Wed,  7 Aug 2024 12:35:05 +0200
Message-Id: <20240807103505.208650-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723027057; x=1754563057;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0XEm14Tl2rJzO8ff+7cL4TIM6tCXDLraeADPofWpbhk=;
 b=kElohdj2j+H23GKvtp3B+DCmqYb44gY/o6Ka1mkiIHTjoad7n1CdKO0N
 852hf/+EsosK5i7HY27x7RqVbrQYSvYNKWbgaTASQQIR0T5fdUCbeSPKA
 +eKiBIUm4cj4lJJi0Ei7fZKVS8IwjMIN4j33edQ5lATbPpJxhl1zkpPRF
 1rnkAVMWIfU0tBFrGB4uKGqDn8nvOtnuLdcFkp62/l3k6OQL26SIpcCha
 bg0ntKjR4Gd/20hC3/krvHf/Dss9zLCRbdei0BYLxw+SCG+3RAkyXNJr0
 PtJRT2hBRobjLvq2gIspWBqD8wUK5Ic5dPuz3PxOWUAIC9RVAs4VFQXic
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kElohdj2
Subject: [Intel-wired-lan] [PATCH iwl-next v3] ice: Implement ethtool reset
 support
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
Cc: anthony.l.nguyen@intel.com, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Enable ethtool reset support. Ethtool reset flags are mapped to the
E810 reset type:
PF reset:
  $ ethtool --reset <ethX> irq dma filter offload
CORE reset:
  $ ethtool --reset <ethX> irq-shared dma-shared filter-shared \
    offload-shared ram-shared
GLOBAL reset:
  $ ethtool --reset <ethX> irq-shared dma-shared filter-shared \
    offload-shared mac-shared phy-shared ram-shared

Calling the same set of flags as in PF reset case on port representor
triggers VF reset.

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Acked-by: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
v2: remap ethtool flags to ice resets
v3: resend, add changelog, rebase, fix doc
---
 .../device_drivers/ethernet/intel/ice.rst     | 31 ++++++++
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 77 +++++++++++++++++++
 2 files changed, 108 insertions(+)

diff --git a/Documentation/networking/device_drivers/ethernet/intel/ice.rst b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
index 934752f675ba..3c46a48d99ba 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/ice.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
@@ -101,6 +101,37 @@ example, if Rx packets are 10 and Netdev (software statistics) displays
 rx_bytes as "X", then ethtool (hardware statistics) will display rx_bytes as
 "X+40" (4 bytes CRC x 10 packets).
 
+ethtool reset
+-------------
+The driver supports 3 types of resets:
+
+- PF reset - resets only components associated with the given PF, does not
+  impact other PFs
+
+- CORE reset - whole adapter is affected, reset all PFs
+
+- GLOBAL reset - same as CORE but mac and phy components are also reinitialized
+
+These are mapped to ethtool reset flags as follow:
+
+- PF reset:
+
+  # ethtool --reset <ethX> irq dma filter offload
+
+- CORE reset:
+
+  # ethtool --reset <ethX> irq-shared dma-shared filter-shared offload-shared \
+  ram-shared
+
+- GLOBAL reset:
+
+  # ethtool --reset <ethX> irq-shared dma-shared filter-shared offload-shared \
+  mac-shared phy-shared ram-shared
+
+In switchdev mode you can reset a VF using port representor:
+
+  # ethtool --reset <repr> irq dma filter offload
+
 
 Viewing Link Messages
 ---------------------
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index b877002d549b..a981da8caf76 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -4718,6 +4718,81 @@ static void ice_get_fec_stats(struct net_device *netdev,
 			    pi->lport, err);
 }
 
+#define ICE_ETHTOOL_PFR (ETH_RESET_IRQ | ETH_RESET_DMA | \
+	ETH_RESET_FILTER | ETH_RESET_OFFLOAD)
+
+#define ICE_ETHTOOL_CORER ((ICE_ETHTOOL_PFR | ETH_RESET_RAM) << \
+	ETH_RESET_SHARED_SHIFT)
+
+#define ICE_ETHTOOL_GLOBR (ICE_ETHTOOL_CORER | \
+	(ETH_RESET_MAC << ETH_RESET_SHARED_SHIFT) | \
+	(ETH_RESET_PHY << ETH_RESET_SHARED_SHIFT))
+
+#define ICE_ETHTOOL_VFR ICE_ETHTOOL_PFR
+
+/**
+ * ice_ethtool_reset - triggers a given type of reset
+ * @dev: network interface device structure
+ * @flags: set of reset flags
+ *
+ * Return: 0 on success, -EOPNOTSUPP when using unsupported set of flags.
+ */
+static int ice_ethtool_reset(struct net_device *dev, u32 *flags)
+{
+	struct ice_netdev_priv *np = netdev_priv(dev);
+	struct ice_pf *pf = np->vsi->back;
+	enum ice_reset_req reset;
+
+	switch (*flags) {
+	case ICE_ETHTOOL_CORER:
+		reset = ICE_RESET_CORER;
+		break;
+	case ICE_ETHTOOL_GLOBR:
+		reset = ICE_RESET_GLOBR;
+		break;
+	case ICE_ETHTOOL_PFR:
+		reset = ICE_RESET_PFR;
+		break;
+	default:
+		netdev_info(dev, "Unsupported set of ethtool flags");
+		return -EOPNOTSUPP;
+	}
+
+	ice_schedule_reset(pf, reset);
+
+	*flags = 0;
+
+	return 0;
+}
+
+/**
+ * ice_repr_ethtool_reset - triggers a VF reset
+ * @dev: network interface device structure
+ * @flags: set of reset flags
+ *
+ * Return: 0 on success,
+ * -EOPNOTSUPP when using unsupported set of flags
+ * -EBUSY when VF is not ready for reset.
+ */
+static int ice_repr_ethtool_reset(struct net_device *dev, u32 *flags)
+{
+	struct ice_repr *repr = ice_netdev_to_repr(dev);
+	struct ice_vf *vf;
+
+	if (repr->type != ICE_REPR_TYPE_VF ||
+	    *flags != ICE_ETHTOOL_VFR)
+		return -EOPNOTSUPP;
+
+	vf = repr->vf;
+
+	if (ice_check_vf_ready_for_cfg(vf))
+		return -EBUSY;
+
+	*flags = 0;
+
+	return ice_reset_vf(vf, ICE_VF_RESET_VFLR | ICE_VF_RESET_LOCK);
+}
+
 static const struct ethtool_ops ice_ethtool_ops = {
 	.cap_rss_ctx_supported  = true,
 	.supported_coalesce_params = ETHTOOL_COALESCE_USECS |
@@ -4753,6 +4828,7 @@ static const struct ethtool_ops ice_ethtool_ops = {
 	.nway_reset		= ice_nway_reset,
 	.get_pauseparam		= ice_get_pauseparam,
 	.set_pauseparam		= ice_set_pauseparam,
+	.reset			= ice_ethtool_reset,
 	.get_rxfh_key_size	= ice_get_rxfh_key_size,
 	.get_rxfh_indir_size	= ice_get_rxfh_indir_size,
 	.get_rxfh		= ice_get_rxfh,
@@ -4805,6 +4881,7 @@ static const struct ethtool_ops ice_ethtool_repr_ops = {
 	.get_strings		= ice_repr_get_strings,
 	.get_ethtool_stats      = ice_repr_get_ethtool_stats,
 	.get_sset_count		= ice_repr_get_sset_count,
+	.reset			= ice_repr_ethtool_reset,
 };
 
 /**
-- 
2.40.1

