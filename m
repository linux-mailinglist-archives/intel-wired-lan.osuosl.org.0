Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2717C3F2408
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Aug 2021 02:06:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6939060B4D;
	Fri, 20 Aug 2021 00:06:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hlgzFl23qCXT; Fri, 20 Aug 2021 00:06:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 34A5B60B5A;
	Fri, 20 Aug 2021 00:06:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E4CBB1BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 00:05:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D16BD4023F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 00:05:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KFqEOeULJK1p for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Aug 2021 00:05:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E014A400C3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 00:05:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10081"; a="280413591"
X-IronPort-AV: E=Sophos;i="5.84,336,1620716400"; d="scan'208";a="280413591"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 17:05:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,336,1620716400"; d="scan'208";a="512317505"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
 by fmsmga004.fm.intel.com with ESMTP; 19 Aug 2021 17:05:32 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 19 Aug 2021 17:08:59 -0700
Message-Id: <20210820000859.680522-13-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210820000859.680522-1-anthony.l.nguyen@intel.com>
References: <20210820000859.680522-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue v4 12/12] ice: add port representor
 ethtool ops and stats
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

From: Wojciech Drewek <wojciech.drewek@intel.com>

Introduce the following ethtool operations for VF's representor:
	-get_drvinfo
	-get_strings
	-get_ethtool_stats
	-get_sset_count
	-get_link

In all cases, existing operations were used with minor
changes which allow us to detect if ethtool op was called for
representor. Only VF VSI stats will be available for representor.

Implement ndo_get_stats64 for port representor. This will update
VF VSI stats and read them.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          | 14 +++++
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |  5 ++
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 55 +++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_repr.c     | 33 +++++++++++
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  4 +-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  | 13 +++++
 6 files changed, 117 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 2afe803b67f9..f65eea726076 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -606,6 +606,19 @@ static inline struct ice_vsi *ice_get_main_vsi(struct ice_pf *pf)
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
@@ -661,6 +674,7 @@ int ice_vsi_setup_rx_rings(struct ice_vsi *vsi);
 int ice_vsi_open_ctrl(struct ice_vsi *vsi);
 int ice_vsi_open(struct ice_vsi *vsi);
 void ice_set_ethtool_ops(struct net_device *netdev);
+void ice_set_ethtool_repr_ops(struct net_device *netdev);
 void ice_set_ethtool_safe_mode_ops(struct net_device *netdev);
 u16 ice_get_avail_txq_count(struct ice_pf *pf);
 u16 ice_get_avail_rxq_count(struct ice_pf *pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 926cf748c5ec..7952c383b872 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -683,6 +683,11 @@ void ice_pf_dcb_recfg(struct ice_pf *pf)
 				vsi->idx);
 			continue;
 		}
+		/* no need to proceed with remaining cfg if it is switchdev
+		 * VSI
+		 */
+		if (vsi->type == ICE_VSI_SWITCHDEV_CTRL)
+			continue;
 
 		ice_vsi_map_rings_to_vectors(vsi);
 		if (vsi->type == ICE_VSI_PF)
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index d95a5daca114..1abe756f9f46 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -170,10 +170,9 @@ static const struct ice_priv_flag ice_gstrings_priv_flags[] = {
 #define ICE_PRIV_FLAG_ARRAY_SIZE	ARRAY_SIZE(ice_gstrings_priv_flags)
 
 static void
-ice_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *drvinfo)
+__ice_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *drvinfo,
+		  struct ice_vsi *vsi)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
 	struct ice_orom_info *orom;
@@ -196,6 +195,26 @@ ice_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *drvinfo)
 	drvinfo->n_priv_flags = ICE_PRIV_FLAG_ARRAY_SIZE;
 }
 
+static void
+ice_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *drvinfo)
+{
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+
+	__ice_get_drvinfo(netdev, drvinfo, np->vsi);
+}
+
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
 static int ice_get_regs_len(struct net_device __always_unused *netdev)
 {
 	return sizeof(ice_regs_dump_list);
@@ -869,7 +888,7 @@ ice_self_test(struct net_device *netdev, struct ethtool_test *eth_test,
 static void ice_get_strings(struct net_device *netdev, u32 stringset, u8 *data)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_vsi *vsi = np->vsi;
+	struct ice_vsi *vsi = ice_get_netdev_priv_vsi(np);
 	unsigned int i;
 	u8 *p = data;
 
@@ -879,6 +898,9 @@ static void ice_get_strings(struct net_device *netdev, u32 stringset, u8 *data)
 			ethtool_sprintf(&p,
 					ice_gstrings_vsi_stats[i].stat_string);
 
+		if (ice_is_port_repr_netdev(netdev))
+			return;
+
 		ice_for_each_alloc_txq(vsi, i) {
 			ethtool_sprintf(&p, "tx_queue_%u_packets", i);
 			ethtool_sprintf(&p, "tx_queue_%u_bytes", i);
@@ -1301,6 +1323,9 @@ static int ice_get_sset_count(struct net_device *netdev, int sset)
 		 * order of strings will suffer from race conditions and are
 		 * not safe.
 		 */
+		if (ice_is_port_repr_netdev(netdev))
+			return ICE_VSI_STATS_LEN;
+
 		return ICE_ALL_STATS_LEN(netdev);
 	case ETH_SS_TEST:
 		return ICE_TEST_LEN;
@@ -1316,7 +1341,7 @@ ice_get_ethtool_stats(struct net_device *netdev,
 		      struct ethtool_stats __always_unused *stats, u64 *data)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_vsi *vsi = np->vsi;
+	struct ice_vsi *vsi = ice_get_netdev_priv_vsi(np);
 	struct ice_pf *pf = vsi->back;
 	struct ice_ring *ring;
 	unsigned int j;
@@ -1332,6 +1357,9 @@ ice_get_ethtool_stats(struct net_device *netdev,
 			     sizeof(u64)) ? *(u64 *)p : *(u32 *)p;
 	}
 
+	if (ice_is_port_repr_netdev(netdev))
+		return;
+
 	/* populate per queue stats */
 	rcu_read_lock();
 
@@ -4051,6 +4079,23 @@ void ice_set_ethtool_safe_mode_ops(struct net_device *netdev)
 	netdev->ethtool_ops = &ice_ethtool_safe_mode_ops;
 }
 
+static const struct ethtool_ops ice_ethtool_repr_ops = {
+	.get_drvinfo		= ice_repr_get_drvinfo,
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
index ee11bfc7bee1..cb83f58d7c71 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -39,6 +39,37 @@ ice_repr_get_phys_port_name(struct net_device *netdev, char *buf, size_t len)
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
+	struct ice_eth_stats *eth_stats;
+	struct ice_vsi *vsi;
+
+	if (ice_is_vf_disabled(np->repr->vf))
+		return;
+	vsi = np->repr->src_vsi;
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
@@ -112,6 +143,7 @@ ice_repr_get_devlink_port(struct net_device *netdev)
 
 static const struct net_device_ops ice_repr_netdev_ops = {
 	.ndo_get_phys_port_name = ice_repr_get_phys_port_name,
+	.ndo_get_stats64 = ice_repr_get_stats64,
 	.ndo_open = ice_repr_open,
 	.ndo_stop = ice_repr_stop,
 	.ndo_start_xmit = ice_eswitch_port_start_xmit,
@@ -136,6 +168,7 @@ ice_repr_reg_netdev(struct net_device *netdev)
 {
 	eth_hw_addr_random(netdev);
 	netdev->netdev_ops = &ice_repr_netdev_ops;
+	ice_set_ethtool_repr_ops(netdev);
 
 	netif_carrier_off(netdev);
 	netif_tx_stop_all_queues(netdev);
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 3a584eec8fd1..9ba3f9ca77c9 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -1579,7 +1579,7 @@ bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
  *
  * Returns true if the PF or VF is disabled, false otherwise.
  */
-static bool ice_is_vf_disabled(struct ice_vf *vf)
+bool ice_is_vf_disabled(struct ice_vf *vf)
 {
 	struct ice_pf *pf = vf->pf;
 
@@ -2818,7 +2818,7 @@ static void ice_wait_on_vf_reset(struct ice_vf *vf)
  * disabled, and initialized so it can be configured and/or queried by a host
  * administrator.
  */
-static int ice_check_vf_ready_for_cfg(struct ice_vf *vf)
+int ice_check_vf_ready_for_cfg(struct ice_vf *vf)
 {
 	struct ice_pf *pf;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index 6bad277d16fc..825f58e7245f 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -176,6 +176,10 @@ int ice_set_vf_trust(struct net_device *netdev, int vf_id, bool trusted);
 
 int ice_set_vf_link_state(struct net_device *netdev, int vf_id, int link_state);
 
+int ice_check_vf_ready_for_cfg(struct ice_vf *vf);
+
+bool ice_is_vf_disabled(struct ice_vf *vf);
+
 int ice_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool ena);
 
 int ice_calc_vf_reg_idx(struct ice_vf *vf, struct ice_q_vector *q_vector);
@@ -203,6 +207,15 @@ static inline void ice_vc_notify_link_state(struct ice_pf *pf) { }
 static inline void ice_vc_notify_reset(struct ice_pf *pf) { }
 static inline void ice_vc_notify_vf_link_state(struct ice_vf *vf) { }
 static inline void ice_vc_change_ops_to_repr(struct ice_vc_vf_ops *ops) { }
+static inline int ice_check_vf_ready_for_cfg(struct ice_vf *vf)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline bool ice_is_vf_disabled(struct ice_vf *vf)
+{
+	return true;
+}
 static inline void ice_vc_set_dflt_vf_ops(struct ice_vc_vf_ops *ops) { }
 static inline void ice_set_vf_state_qs_dis(struct ice_vf *vf) { }
 static inline
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
