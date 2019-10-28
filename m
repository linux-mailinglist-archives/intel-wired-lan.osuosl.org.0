Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC76E7875
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Oct 2019 19:37:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D1918860BC;
	Mon, 28 Oct 2019 18:37:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 46k0EB7zr463; Mon, 28 Oct 2019 18:37:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DD7BF85AE2;
	Mon, 28 Oct 2019 18:37:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C155F1BF29A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2019 18:37:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B9366848A3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2019 18:37:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4bdQrg+FGDnZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Oct 2019 18:37:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 900208489C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2019 18:37:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 11:37:21 -0700
X-IronPort-AV: E=Sophos;i="5.68,240,1569308400"; d="scan'208";a="203345576"
Received: from jfsjbrandeb002.jf.intel.com ([10.166.28.116])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 11:37:21 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 28 Oct 2019 11:37:14 -0700
Message-Id: <20191028183714.50528-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.17.2
Subject: [Intel-wired-lan] [PATCH net-next v1] i40e: implement VF stats NDO
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implement the VF stats gathering via the kernel via ndo_get_vf_stats().
The driver will show per-VF stats in the output of the
ip -s link show dev <PF>
command.

Testing Hints (Required if no HSD): ip -s link show dev eth0,
will return non-zero VF stats.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  1 +
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 48 +++++++++++++++++++
 .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  2 +
 3 files changed, 51 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index a6f60e8a6026..56cf7bc8add3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -12870,6 +12870,7 @@ static const struct net_device_ops i40e_netdev_ops = {
 	.ndo_set_features	= i40e_set_features,
 	.ndo_set_vf_mac		= i40e_ndo_set_vf_mac,
 	.ndo_set_vf_vlan	= i40e_ndo_set_vf_port_vlan,
+	.ndo_get_vf_stats	= i40e_get_vf_stats,
 	.ndo_set_vf_rate	= i40e_ndo_set_vf_bw,
 	.ndo_get_vf_config	= i40e_ndo_get_vf_config,
 	.ndo_set_vf_link_state	= i40e_ndo_set_vf_link_state,
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 7787766d0eb8..84cf851cbbb7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -4527,3 +4527,51 @@ int i40e_ndo_set_vf_trust(struct net_device *netdev, int vf_id, bool setting)
 	clear_bit(__I40E_VIRTCHNL_OP_PENDING, pf->state);
 	return ret;
 }
+
+/**
+ * i40e_get_vf_stats - populate some stats for the VF
+ * @netdev: the netdev of the PF
+ * @vf_id: the host OS identifier (0-127)
+ * @vf_stats: pointer to the OS memory to be initialized
+ */
+int i40e_get_vf_stats(struct net_device *netdev, int vf_id,
+		      struct ifla_vf_stats *vf_stats)
+{
+	struct i40e_netdev_priv *np = netdev_priv(netdev);
+	struct i40e_pf *pf = np->vsi->back;
+	struct i40e_eth_stats *stats;
+	struct i40e_vsi *vsi;
+	struct i40e_vf *vf;
+
+	/* validate the request */
+	if (i40e_validate_vf(pf, vf_id))
+		return -EINVAL;
+
+	vf = &pf->vf[vf_id];
+	if (!test_bit(I40E_VF_STATE_INIT, &vf->vf_states)) {
+		dev_err(&pf->pdev->dev, "VF %d in reset. Try again.\n", vf_id);
+		return -EBUSY;
+	}
+
+	vsi = pf->vsi[vf->lan_vsi_idx];
+	if (!vsi)
+		return -EINVAL;
+
+	i40e_update_eth_stats(vsi);
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
+	vf_stats->broadcast  = stats->rx_broadcast + stats->tx_broadcast;
+	vf_stats->multicast  = stats->rx_multicast + stats->tx_multicast;
+	vf_stats->rx_dropped = stats->rx_discards;
+	vf_stats->tx_dropped = stats->tx_discards;
+
+	return 0;
+}
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
index 1ce06240a702..631248c0981a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
@@ -138,5 +138,7 @@ int i40e_ndo_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool enable);
 
 void i40e_vc_notify_link_state(struct i40e_pf *pf);
 void i40e_vc_notify_reset(struct i40e_pf *pf);
+int i40e_get_vf_stats(struct net_device *netdev, int vf_id,
+		      struct ifla_vf_stats *vf_stats);
 
 #endif /* _I40E_VIRTCHNL_PF_H_ */
-- 
2.17.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
