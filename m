Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C1696B4E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2019 23:19:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C454F88634;
	Tue, 20 Aug 2019 21:19:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mJwJn9dcjPOx; Tue, 20 Aug 2019 21:19:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B93F78862D;
	Tue, 20 Aug 2019 21:19:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 202F51BF3A3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2019 21:19:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1881C22CB0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2019 21:19:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q-pnScu33WGI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Aug 2019 21:19:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 1313022C6B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2019 21:19:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 14:19:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,410,1559545200"; d="scan'208";a="353739174"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.244.172])
 by orsmga005.jf.intel.com with ESMTP; 20 Aug 2019 14:19:22 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 20 Aug 2019 14:19:21 -0700
Message-Id: <20190820211921.9058-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.23.0.245.gf157bbb9169d
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2] fm10k: add support for
 ndo_get_vf_stats operation
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

Support capturing and reporting statistics for all of the VFs associated
with a given PF device via the ndo_get_vf_stats callback.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Fixed the patch author.

 drivers/net/ethernet/intel/fm10k/fm10k.h      |  3 ++
 drivers/net/ethernet/intel/fm10k/fm10k_iov.c  | 48 +++++++++++++++++++
 .../net/ethernet/intel/fm10k/fm10k_netdev.c   |  1 +
 drivers/net/ethernet/intel/fm10k/fm10k_pci.c  |  3 ++
 drivers/net/ethernet/intel/fm10k/fm10k_type.h |  1 +
 5 files changed, 56 insertions(+)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k.h b/drivers/net/ethernet/intel/fm10k/fm10k.h
index b14441944b4b..f306084ca12c 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k.h
+++ b/drivers/net/ethernet/intel/fm10k/fm10k.h
@@ -534,6 +534,7 @@ void fm10k_iov_suspend(struct pci_dev *pdev);
 int fm10k_iov_resume(struct pci_dev *pdev);
 void fm10k_iov_disable(struct pci_dev *pdev);
 int fm10k_iov_configure(struct pci_dev *pdev, int num_vfs);
+void fm10k_iov_update_stats(struct fm10k_intfc *interface);
 s32 fm10k_iov_update_pvid(struct fm10k_intfc *interface, u16 glort, u16 pvid);
 int fm10k_ndo_set_vf_mac(struct net_device *netdev, int vf_idx, u8 *mac);
 int fm10k_ndo_set_vf_vlan(struct net_device *netdev,
@@ -542,6 +543,8 @@ int fm10k_ndo_set_vf_bw(struct net_device *netdev, int vf_idx,
 			int __always_unused min_rate, int max_rate);
 int fm10k_ndo_get_vf_config(struct net_device *netdev,
 			    int vf_idx, struct ifla_vf_info *ivi);
+int fm10k_ndo_get_vf_stats(struct net_device *netdev,
+			   int vf_idx, struct ifla_vf_stats *stats);
 
 /* DebugFS */
 #ifdef CONFIG_DEBUG_FS
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_iov.c b/drivers/net/ethernet/intel/fm10k/fm10k_iov.c
index afe1fafd2447..8c50a128df29 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_iov.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_iov.c
@@ -520,6 +520,27 @@ int fm10k_iov_configure(struct pci_dev *pdev, int num_vfs)
 	return num_vfs;
 }
 
+/**
+ * fm10k_iov_update_stats - Update stats for all VFs
+ * @interface: device private structure
+ *
+ * Updates the VF statistics for all enabled VFs. Expects to be called by
+ * fm10k_update_stats and assumes that locking via the __FM10K_UPDATING_STATS
+ * bit is already handled.
+ */
+void fm10k_iov_update_stats(struct fm10k_intfc *interface)
+{
+	struct fm10k_iov_data *iov_data = interface->iov_data;
+	struct fm10k_hw *hw = &interface->hw;
+	int i;
+
+	if (!iov_data)
+		return;
+
+	for (i = 0; i < iov_data->num_vfs; i++)
+		hw->iov.ops.update_stats(hw, iov_data->vf_info[i].stats, i);
+}
+
 static inline void fm10k_reset_vf_info(struct fm10k_intfc *interface,
 				       struct fm10k_vf_info *vf_info)
 {
@@ -650,3 +671,30 @@ int fm10k_ndo_get_vf_config(struct net_device *netdev,
 
 	return 0;
 }
+
+int fm10k_ndo_get_vf_stats(struct net_device *netdev,
+			   int vf_idx, struct ifla_vf_stats *stats)
+{
+	struct fm10k_intfc *interface = netdev_priv(netdev);
+	struct fm10k_iov_data *iov_data = interface->iov_data;
+	struct fm10k_hw *hw = &interface->hw;
+	struct fm10k_hw_stats_q *hw_stats;
+	u32 idx, qpp;
+
+	/* verify SR-IOV is active and that vf idx is valid */
+	if (!iov_data || vf_idx >= iov_data->num_vfs)
+		return -EINVAL;
+
+	qpp = fm10k_queues_per_pool(hw);
+	hw_stats = iov_data->vf_info[vf_idx].stats;
+
+	for (idx = 0; idx < qpp; idx++) {
+		stats->rx_packets += hw_stats[idx].rx_packets.count;
+		stats->tx_packets += hw_stats[idx].tx_packets.count;
+		stats->rx_bytes += hw_stats[idx].rx_bytes.count;
+		stats->tx_bytes += hw_stats[idx].tx_bytes.count;
+		stats->rx_dropped += hw_stats[idx].rx_drops.count;
+	}
+
+	return 0;
+}
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_netdev.c b/drivers/net/ethernet/intel/fm10k/fm10k_netdev.c
index d3e85480f46d..2873e8283192 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_netdev.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_netdev.c
@@ -1644,6 +1644,7 @@ static const struct net_device_ops fm10k_netdev_ops = {
 	.ndo_set_vf_vlan	= fm10k_ndo_set_vf_vlan,
 	.ndo_set_vf_rate	= fm10k_ndo_set_vf_bw,
 	.ndo_get_vf_config	= fm10k_ndo_get_vf_config,
+	.ndo_get_vf_stats	= fm10k_ndo_get_vf_stats,
 	.ndo_udp_tunnel_add	= fm10k_udp_tunnel_add,
 	.ndo_udp_tunnel_del	= fm10k_udp_tunnel_del,
 	.ndo_dfwd_add_station	= fm10k_dfwd_add_station,
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_pci.c b/drivers/net/ethernet/intel/fm10k/fm10k_pci.c
index bb236fa44048..d122d0087191 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_pci.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_pci.c
@@ -630,6 +630,9 @@ void fm10k_update_stats(struct fm10k_intfc *interface)
 	net_stats->rx_errors = rx_errors;
 	net_stats->rx_dropped = interface->stats.nodesc_drop.count;
 
+	/* Update VF statistics */
+	fm10k_iov_update_stats(interface);
+
 	clear_bit(__FM10K_UPDATING_STATS, interface->state);
 }
 
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_type.h b/drivers/net/ethernet/intel/fm10k/fm10k_type.h
index 15ac1c7885bc..63968c5d7c5d 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_type.h
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_type.h
@@ -581,6 +581,7 @@ struct fm10k_vf_info {
 	 * at the same offset as the mailbox
 	 */
 	struct fm10k_mbx_info	mbx;		/* PF side of VF mailbox */
+	struct fm10k_hw_stats_q	stats[FM10K_MAX_QUEUES_POOL];
 	int			rate;		/* Tx BW cap as defined by OS */
 	u16			glort;		/* resource tag for this VF */
 	u16			sw_vid;		/* Switch API assigned VLAN */
-- 
2.23.0.245.gf157bbb9169d

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
