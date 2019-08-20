Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B60C096822
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2019 19:57:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4375186B18;
	Tue, 20 Aug 2019 17:57:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xKe-2EBFNCnz; Tue, 20 Aug 2019 17:57:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B382386972;
	Tue, 20 Aug 2019 17:57:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C19611BF681
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2019 17:57:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BD06788354
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2019 17:57:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fw-mrB1xQjc6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Aug 2019 17:57:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7123C8832D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2019 17:57:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 10:57:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,408,1559545200"; d="scan'208";a="207451967"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.244.172])
 by fmsmga002.fm.intel.com with ESMTP; 20 Aug 2019 10:57:33 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 20 Aug 2019 10:57:31 -0700
Message-Id: <20190820175731.32609-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.23.0.245.gf157bbb9169d
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] fm10k: add support for ndo_get_vf_stats
 operation
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
Cc: "nosbuild \(Code Review\)" <nosbuild@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: "nosbuild (Code Review)" <nosbuild@intel.com>

Support capturing and reporting statistics for all of the VFs associated
with a given PF device via the ndo_get_vf_stats callback.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
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
