Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 153E7426625
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Oct 2021 10:44:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A45B540460;
	Fri,  8 Oct 2021 08:44:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6w6heIfOy-kr; Fri,  8 Oct 2021 08:44:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8919240452;
	Fri,  8 Oct 2021 08:44:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BBEB41BF319
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Oct 2021 08:44:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B6A58404CC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Oct 2021 08:44:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mkly0oboU3lr for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Oct 2021 08:44:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8DBCF404A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Oct 2021 08:44:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="226416768"
X-IronPort-AV: E=Sophos;i="5.85,357,1624345200"; d="scan'208";a="226416768"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 01:44:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,357,1624345200"; d="scan'208";a="546145527"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga004.fm.intel.com with ESMTP; 08 Oct 2021 01:44:31 -0700
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 1988iUq3026463
 for <intel-wired-lan@lists.osuosl.org>; Fri, 8 Oct 2021 09:44:30 +0100
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  8 Oct 2021 10:44:03 +0200
Message-Id: <20211008084403.6075-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] ice: Refactor PR ethtool ops
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

This patch improves a few things:

- it fixes issue where ethtool -i reports that PR supports
  priv-flags and tests when in fact it does not support them
- instead of using the same functions for both PF and PR ethtool ops,
  this patch introduces separate ops for both cases and internal
  functions with core logic.
- prevent accessing VF VSI while VF is not ready by calling
  ice_check_vf_ready_for_cfg
- all PR specific functions in ethtool.c were moved to one place in
  file
- instead overwriting n_priv_flags in ice_repr_get_drvinfo,
  priv-flags code was moved from __ice_get_drvinfo to ice_get_drvinfo

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 99 +++++++++++++++-----
 1 file changed, 74 insertions(+), 25 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index f4b3c5b73c7d..8b3eef6632e9 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -192,7 +192,6 @@ __ice_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *drvinfo,
 
 	strscpy(drvinfo->bus_info, pci_name(pf->pdev),
 		sizeof(drvinfo->bus_info));
-	drvinfo->n_priv_flags = ICE_PRIV_FLAG_ARRAY_SIZE;
 }
 
 static void
@@ -201,18 +200,8 @@ ice_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *drvinfo)
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 
 	__ice_get_drvinfo(netdev, drvinfo, np->vsi);
-}
-
-static void
-ice_repr_get_drvinfo(struct net_device *netdev,
-		     struct ethtool_drvinfo *drvinfo)
-{
-	struct ice_repr *repr = ice_netdev_to_repr(netdev);
 
-	if (ice_check_vf_ready_for_cfg(repr->vf))
-		return;
-
-	__ice_get_drvinfo(netdev, drvinfo, repr->src_vsi);
+	drvinfo->n_priv_flags = ICE_PRIV_FLAG_ARRAY_SIZE;
 }
 
 static int ice_get_regs_len(struct net_device __always_unused *netdev)
@@ -886,10 +875,10 @@ ice_self_test(struct net_device *netdev, struct ethtool_test *eth_test,
 	netdev_info(netdev, "testing finished\n");
 }
 
-static void ice_get_strings(struct net_device *netdev, u32 stringset, u8 *data)
+static void
+__ice_get_strings(struct net_device *netdev, u32 stringset, u8 *data,
+		  struct ice_vsi *vsi)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_vsi *vsi = ice_get_netdev_priv_vsi(np);
 	unsigned int i;
 	u8 *p = data;
 
@@ -940,6 +929,13 @@ static void ice_get_strings(struct net_device *netdev, u32 stringset, u8 *data)
 	}
 }
 
+static void ice_get_strings(struct net_device *netdev, u32 stringset, u8 *data)
+{
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+
+	__ice_get_strings(netdev, stringset, data, np->vsi);
+}
+
 static int
 ice_set_phys_id(struct net_device *netdev, enum ethtool_phys_id_state state)
 {
@@ -1331,9 +1327,6 @@ static int ice_get_sset_count(struct net_device *netdev, int sset)
 		 * order of strings will suffer from race conditions and are
 		 * not safe.
 		 */
-		if (ice_is_port_repr_netdev(netdev))
-			return ICE_VSI_STATS_LEN;
-
 		return ICE_ALL_STATS_LEN(netdev);
 	case ETH_SS_TEST:
 		return ICE_TEST_LEN;
@@ -1345,11 +1338,10 @@ static int ice_get_sset_count(struct net_device *netdev, int sset)
 }
 
 static void
-ice_get_ethtool_stats(struct net_device *netdev,
-		      struct ethtool_stats __always_unused *stats, u64 *data)
+__ice_get_ethtool_stats(struct net_device *netdev,
+			struct ethtool_stats __always_unused *stats, u64 *data,
+			struct ice_vsi *vsi)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_vsi *vsi = ice_get_netdev_priv_vsi(np);
 	struct ice_pf *pf = vsi->back;
 	struct ice_tx_ring *tx_ring;
 	struct ice_rx_ring *rx_ring;
@@ -1416,6 +1408,15 @@ ice_get_ethtool_stats(struct net_device *netdev,
 	}
 }
 
+static void
+ice_get_ethtool_stats(struct net_device *netdev,
+		      struct ethtool_stats __always_unused *stats, u64 *data)
+{
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+
+	__ice_get_ethtool_stats(netdev, stats, data, np->vsi);
+}
+
 #define ICE_PHY_TYPE_LOW_MASK_MIN_1G	(ICE_PHY_TYPE_LOW_100BASE_TX | \
 					 ICE_PHY_TYPE_LOW_100M_SGMII)
 
@@ -3839,6 +3840,54 @@ ice_set_per_q_coalesce(struct net_device *netdev, u32 q_num,
 	return __ice_set_coalesce(netdev, ec, q_num);
 }
 
+static void
+ice_repr_get_drvinfo(struct net_device *netdev,
+		     struct ethtool_drvinfo *drvinfo)
+{
+	struct ice_repr *repr = ice_netdev_to_repr(netdev);
+
+	if (ice_check_vf_ready_for_cfg(repr->vf))
+		return;
+
+	__ice_get_drvinfo(netdev, drvinfo, repr->src_vsi);
+}
+
+static void
+ice_repr_get_strings(struct net_device *netdev, u32 stringset, u8 *data)
+{
+	struct ice_repr *repr = ice_netdev_to_repr(netdev);
+
+	/* for port representors only ETH_SS_STATS is supported */
+	if (ice_check_vf_ready_for_cfg(repr->vf) ||
+	    stringset != ETH_SS_STATS)
+		return;
+
+	__ice_get_strings(netdev, stringset, data, repr->src_vsi);
+}
+
+static void
+ice_repr_get_ethtool_stats(struct net_device *netdev,
+			   struct ethtool_stats __always_unused *stats,
+			   u64 *data)
+{
+	struct ice_repr *repr = ice_netdev_to_repr(netdev);
+
+	if (ice_check_vf_ready_for_cfg(repr->vf))
+		return;
+
+	__ice_get_ethtool_stats(netdev, stats, data, repr->src_vsi);
+}
+
+static int ice_repr_get_sset_count(struct net_device *netdev, int sset)
+{
+	switch (sset) {
+	case ETH_SS_STATS:
+		return ICE_VSI_STATS_LEN;
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
 #define ICE_I2C_EEPROM_DEV_ADDR		0xA0
 #define ICE_I2C_EEPROM_DEV_ADDR2	0xA2
 #define ICE_MODULE_TYPE_SFP		0x03
@@ -4093,9 +4142,9 @@ void ice_set_ethtool_safe_mode_ops(struct net_device *netdev)
 static const struct ethtool_ops ice_ethtool_repr_ops = {
 	.get_drvinfo		= ice_repr_get_drvinfo,
 	.get_link		= ethtool_op_get_link,
-	.get_strings		= ice_get_strings,
-	.get_ethtool_stats      = ice_get_ethtool_stats,
-	.get_sset_count		= ice_get_sset_count,
+	.get_strings		= ice_repr_get_strings,
+	.get_ethtool_stats      = ice_repr_get_ethtool_stats,
+	.get_sset_count		= ice_repr_get_sset_count,
 };
 
 /**
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
