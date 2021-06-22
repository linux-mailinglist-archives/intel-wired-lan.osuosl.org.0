Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB813B1313
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jun 2021 06:56:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E1DC0403D2;
	Wed, 23 Jun 2021 04:56:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 26EmviptsXuo; Wed, 23 Jun 2021 04:56:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D404E403DC;
	Wed, 23 Jun 2021 04:56:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 301061BF364
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 04:55:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 982A86069C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 04:55:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kCkKHM28Q3Hz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jun 2021 04:55:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D77FC60670
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 04:55:48 +0000 (UTC)
IronPort-SDR: eGYi+Wh5pzwzIdn20HWgQnM3/4Blxo/8aZf9guT/OXGUvb1pWM9DNrHM0SYm1cXa9QTIl0Qb9U
 cq0b6odfzc9g==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="204186000"
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="204186000"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 21:55:48 -0700
IronPort-SDR: ydxM74Hp9vmgN97mgNXoT+YU7e7FeSN7C/J9Iv7wWAiVG34FLJDqR40d1T5OTeWAGb2+OK7XYn
 Fptffar49EiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="490547928"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga002.fm.intel.com with ESMTP; 22 Jun 2021 21:55:47 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 22 Jun 2021 23:21:35 +0200
Message-Id: <20210622212134.341728-13-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210622212134.341728-1-michal.swiatkowski@linux.intel.com>
References: <20210622212134.341728-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 12/12] ice: add port
 representor ethtool ops and stats
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>

Introduce the following ethtool operations for VF's representor:
	-get_drvinfo
	-get_strings
	-get_ethtool_stats
	-get_sset_count
	-get_link

In all cases, exsisting operations were used with minor
changes which allow us to detect if ethtool op was called for
representor. Only VF VSI stats will be available for representor.

Implement ndo_get_stats64 for port representor. This will update
VF VSI stats and read them.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         | 14 +++++++++
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 32 ++++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_repr.c    | 29 ++++++++++++++++++
 3 files changed, 72 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index fcddec1c1849..7ea539d47ae3 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -605,6 +605,19 @@ static inline struct ice_vsi *ice_get_main_vsi(struct ice_pf *pf)
 	return NULL;
 }
 
+/**
+ * ice_get_netdev_priv_vsi - return VSI associated with netdev priv.
+ * @np: private netdev structure
+ */
+static inline struct ice_vsi *ice_get_netdev_priv_vsi(struct ice_netdev_priv *np)
+{
+	/* In case of port representor return source port VSI. */
+	if (np->repr)
+		return np->repr->src_vsi;
+	else
+		return np->vsi;
+}
+
 /**
  * ice_get_ctrl_vsi - Get the control VSI
  * @pf: PF instance
@@ -660,6 +673,7 @@ int ice_vsi_setup_rx_rings(struct ice_vsi *vsi);
 int ice_vsi_open_ctrl(struct ice_vsi *vsi);
 int ice_vsi_open(struct ice_vsi *vsi);
 void ice_set_ethtool_ops(struct net_device *netdev);
+void ice_set_ethtool_repr_ops(struct net_device *netdev);
 void ice_set_ethtool_safe_mode_ops(struct net_device *netdev);
 u16 ice_get_avail_txq_count(struct ice_pf *pf);
 u16 ice_get_avail_rxq_count(struct ice_pf *pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index d95a5daca114..2858805cdeea 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -173,7 +173,7 @@ static void
 ice_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *drvinfo)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_vsi *vsi = np->vsi;
+	struct ice_vsi *vsi = ice_get_netdev_priv_vsi(np);
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
 	struct ice_orom_info *orom;
@@ -869,7 +869,7 @@ ice_self_test(struct net_device *netdev, struct ethtool_test *eth_test,
 static void ice_get_strings(struct net_device *netdev, u32 stringset, u8 *data)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_vsi *vsi = np->vsi;
+	struct ice_vsi *vsi = ice_get_netdev_priv_vsi(np);
 	unsigned int i;
 	u8 *p = data;
 
@@ -879,6 +879,9 @@ static void ice_get_strings(struct net_device *netdev, u32 stringset, u8 *data)
 			ethtool_sprintf(&p,
 					ice_gstrings_vsi_stats[i].stat_string);
 
+		if (ice_is_port_repr_netdev(netdev))
+			return;
+
 		ice_for_each_alloc_txq(vsi, i) {
 			ethtool_sprintf(&p, "tx_queue_%u_packets", i);
 			ethtool_sprintf(&p, "tx_queue_%u_bytes", i);
@@ -1301,6 +1304,9 @@ static int ice_get_sset_count(struct net_device *netdev, int sset)
 		 * order of strings will suffer from race conditions and are
 		 * not safe.
 		 */
+		if (ice_is_port_repr_netdev(netdev))
+			return ICE_VSI_STATS_LEN;
+
 		return ICE_ALL_STATS_LEN(netdev);
 	case ETH_SS_TEST:
 		return ICE_TEST_LEN;
@@ -1316,7 +1322,7 @@ ice_get_ethtool_stats(struct net_device *netdev,
 		      struct ethtool_stats __always_unused *stats, u64 *data)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_vsi *vsi = np->vsi;
+	struct ice_vsi *vsi = ice_get_netdev_priv_vsi(np);
 	struct ice_pf *pf = vsi->back;
 	struct ice_ring *ring;
 	unsigned int j;
@@ -1332,6 +1338,9 @@ ice_get_ethtool_stats(struct net_device *netdev,
 			     sizeof(u64)) ? *(u64 *)p : *(u32 *)p;
 	}
 
+	if (ice_is_port_repr_netdev(netdev))
+		return;
+
 	/* populate per queue stats */
 	rcu_read_lock();
 
@@ -4051,6 +4060,23 @@ void ice_set_ethtool_safe_mode_ops(struct net_device *netdev)
 	netdev->ethtool_ops = &ice_ethtool_safe_mode_ops;
 }
 
+static const struct ethtool_ops ice_ethtool_repr_ops = {
+	.get_drvinfo		= ice_get_drvinfo,
+	.get_link		= ethtool_op_get_link,
+	.get_strings		= ice_get_strings,
+	.get_ethtool_stats      = ice_get_ethtool_stats,
+	.get_sset_count		= ice_get_sset_count,
+};
+
+/**
+ * ice_set_ethtool_repr_ops - setup VF's port representor ethtool ops
+ * @netdev: network interface device structure
+ */
+void ice_set_ethtool_repr_ops(struct net_device *netdev)
+{
+	netdev->ethtool_ops = &ice_ethtool_repr_ops;
+}
+
 /**
  * ice_set_ethtool_ops - setup netdev ethtool ops
  * @netdev: network interface device structure
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index 76d8086278c6..ababed89f25a 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -39,6 +39,33 @@ ice_repr_get_phys_port_name(struct net_device *netdev, char *buf, size_t len)
 	return 0;
 }
 
+/**
+ * ice_repr_get_stats64 - get VF stats for VFPR use
+ * @netdev: pointer to port representor netdev
+ * @stats: pointer to struct where stats can be stored
+ */
+static void
+ice_repr_get_stats64(struct net_device *netdev, struct rtnl_link_stats64 *stats)
+{
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_vsi *vsi = np->repr->src_vsi;
+	struct ice_eth_stats *eth_stats;
+
+	ice_update_vsi_stats(vsi);
+	eth_stats = &vsi->eth_stats;
+
+	stats->tx_packets = eth_stats->tx_unicast + eth_stats->tx_broadcast +
+			    eth_stats->tx_multicast;
+	stats->rx_packets = eth_stats->rx_unicast + eth_stats->rx_broadcast +
+			    eth_stats->rx_multicast;
+	stats->tx_bytes = eth_stats->tx_bytes;
+	stats->rx_bytes = eth_stats->rx_bytes;
+	stats->multicast = eth_stats->rx_multicast;
+	stats->tx_errors = eth_stats->tx_errors;
+	stats->tx_dropped = eth_stats->tx_discards;
+	stats->rx_dropped = eth_stats->rx_discards;
+}
+
 /**
  * ice_netdev_to_repr - Get port representor for given netdevice
  * @netdev: pointer to port representor netdev
@@ -112,6 +139,7 @@ ice_repr_get_devlink_port(struct net_device *netdev)
 
 static const struct net_device_ops ice_repr_netdev_ops = {
 	.ndo_get_phys_port_name = ice_repr_get_phys_port_name,
+	.ndo_get_stats64 = ice_repr_get_stats64,
 	.ndo_open = ice_repr_open,
 	.ndo_stop = ice_repr_stop,
 	.ndo_start_xmit = ice_eswitch_port_start_xmit,
@@ -136,6 +164,7 @@ ice_repr_reg_netdev(struct net_device *netdev)
 {
 	eth_hw_addr_random(netdev);
 	netdev->netdev_ops = &ice_repr_netdev_ops;
+	ice_set_ethtool_repr_ops(netdev);
 
 	netif_carrier_off(netdev);
 	netif_tx_stop_all_queues(netdev);
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
