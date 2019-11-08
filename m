Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4C8F5B62
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Nov 2019 23:54:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A403A88075;
	Fri,  8 Nov 2019 22:54:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fiE6nddbpK5F; Fri,  8 Nov 2019 22:54:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D0EF388084;
	Fri,  8 Nov 2019 22:54:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CEFF71BF995
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 22:54:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CC58D864EE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 22:54:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dTZtAIXS5qEi for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Nov 2019 22:54:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3415C864EC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 22:54:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 14:54:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,283,1569308400"; d="scan'208";a="201478838"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga008.fm.intel.com with ESMTP; 08 Nov 2019 14:54:17 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  8 Nov 2019 06:23:28 -0800
Message-Id: <20191108142331.10221-12-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108142331.10221-1-anthony.l.nguyen@intel.com>
References: <20191108142331.10221-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S33 12/15] ice: implement VF stats NDO
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

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

Implement the VF stats gathering via the kernel via ndo_get_vf_stats().
The driver will show per-VF stats in the output of the
ip -s link show dev <PF> command.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c     |  1 +
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 45 +++++++++++++++++++
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  | 11 +++++
 3 files changed, 57 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index ea577588b274..d282eb05c2e0 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5219,6 +5219,7 @@ static const struct net_device_ops ice_netdev_ops = {
 	.ndo_set_vf_trust = ice_set_vf_trust,
 	.ndo_set_vf_vlan = ice_set_vf_port_vlan,
 	.ndo_set_vf_link_state = ice_set_vf_link_state,
+	.ndo_get_vf_stats = ice_get_vf_stats,
 	.ndo_vlan_rx_add_vid = ice_vlan_rx_add_vid,
 	.ndo_vlan_rx_kill_vid = ice_vlan_rx_kill_vid,
 	.ndo_set_features = ice_set_features,
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index aa99d7cb7d8e..edb374296d1f 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -3391,3 +3391,48 @@ int ice_set_vf_link_state(struct net_device *netdev, int vf_id, int link_state)
 
 	return 0;
 }
+
+/**
+ * ice_get_vf_stats - populate some stats for the VF
+ * @netdev: the netdev of the PF
+ * @vf_id: the host OS identifier (0-255)
+ * @vf_stats: pointer to the OS memory to be initialized
+ */
+int ice_get_vf_stats(struct net_device *netdev, int vf_id,
+		     struct ifla_vf_stats *vf_stats)
+{
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
+	struct ice_eth_stats *stats;
+	struct ice_vsi *vsi;
+	struct ice_vf *vf;
+
+	if (ice_validate_vf_id(pf, vf_id))
+		return -EINVAL;
+
+	vf = &pf->vf[vf_id];
+
+	if (ice_check_vf_init(pf, vf))
+		return -EBUSY;
+
+	vsi = pf->vsi[vf->lan_vsi_idx];
+	if (!vsi)
+		return -EINVAL;
+
+	ice_update_eth_stats(vsi);
+	stats = &vsi->eth_stats;
+
+	memset(vf_stats, 0, sizeof(*vf_stats));
+
+	vf_stats->rx_packets = stats->rx_unicast + stats->rx_broadcast +
+		stats->rx_multicast;
+	vf_stats->tx_packets = stats->tx_unicast + stats->tx_broadcast +
+		stats->tx_multicast;
+	vf_stats->rx_bytes   = stats->rx_bytes;
+	vf_stats->tx_bytes   = stats->tx_bytes;
+	vf_stats->broadcast  = stats->rx_broadcast;
+	vf_stats->multicast  = stats->rx_multicast;
+	vf_stats->rx_dropped = stats->rx_discards;
+	vf_stats->tx_dropped = stats->tx_discards;
+
+	return 0;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index 2e867ad2e81d..88aa65d5cb31 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -122,6 +122,9 @@ int ice_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool ena);
 int ice_calc_vf_reg_idx(struct ice_vf *vf, struct ice_q_vector *q_vector);
 
 void ice_set_vf_state_qs_dis(struct ice_vf *vf);
+int
+ice_get_vf_stats(struct net_device *netdev, int vf_id,
+		 struct ifla_vf_stats *vf_stats);
 #else /* CONFIG_PCI_IOV */
 #define ice_process_vflr_event(pf) do {} while (0)
 #define ice_free_vfs(pf) do {} while (0)
@@ -194,5 +197,13 @@ ice_calc_vf_reg_idx(struct ice_vf __always_unused *vf,
 {
 	return 0;
 }
+
+static inline int
+ice_get_vf_stats(struct net_device __always_unused *netdev,
+		 int __always_unused vf_id,
+		 struct ifla_vf_stats __always_unused *vf_stats)
+{
+	return -EOPNOTSUPP;
+}
 #endif /* CONFIG_PCI_IOV */
 #endif /* _ICE_VIRTCHNL_PF_H_ */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
