Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B02349E572
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jan 2022 16:08:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B7F4C40240;
	Thu, 27 Jan 2022 15:07:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gKNEex3WOjHj; Thu, 27 Jan 2022 15:07:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA50D4018C;
	Thu, 27 Jan 2022 15:07:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2D1221BF40A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jan 2022 15:07:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 28B7A60BDE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jan 2022 15:07:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id voetvDMidT3Y for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jan 2022 15:07:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1536760BDB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jan 2022 15:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643296072; x=1674832072;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tw943RD0sz/E1vZeeH3c2syi8HrhEgH5XJsndxxF6pI=;
 b=fVRFlkYja0fUxlQIAb8Jare7LnxpNwzLgJ2aSeZeBsaJ1H4vrrncUlEC
 jKy5Aqp8S7kLJXTyyDLDthfi/kAQzvOUfs4ssTqQ2YCCKZCqRHDiUj9Bi
 mjhX6nB0p+kSRK9/AMXyF2j5bbBjnlROq6n2MDMX3MY9rVmWTPXRsaEZH
 phGN3QKpwkYw3i0P7TKnJU+ZCOQtde+A7KRa8rEerxgHJL+84ETsTPkPi
 2QncNirnragUNuEvKpm81m6KP1pT691M3xsqiPYHMxRJ9jf7jlYu+kNSx
 COgPkE/LCnSg115PDUC2FtErEvvezOgko51N5w97qpu5nk7nZFnQ1a9YT w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="244482181"
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; d="scan'208";a="244482181"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 07:07:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; d="scan'208";a="563816518"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga001.jf.intel.com with ESMTP; 27 Jan 2022 07:07:22 -0800
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 20RF7LA8019579; Thu, 27 Jan 2022 15:07:21 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jan 2022 16:04:26 +0100
Message-Id: <20220127150426.368315-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] ice: Add slow path offload stats
 on port representor in switchdev
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

Implement callbacks to check for stats and fetch port representor stats.
Stats are taken from RX/TX ring corresponding to port representor and show
the number of bytes/packets that were not offloaded.

To see slow path stats run:
ifstat -x cpu_hits -a

Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      |  3 ++
 drivers/net/ethernet/intel/ice/ice_main.c |  6 +--
 drivers/net/ethernet/intel/ice/ice_repr.c | 55 +++++++++++++++++++++++
 3 files changed, 61 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index bf792523830c..f158620442fb 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -843,6 +843,9 @@ u16 ice_get_avail_rxq_count(struct ice_pf *pf);
 int ice_vsi_recfg_qs(struct ice_vsi *vsi, int new_rx, int new_tx);
 void ice_update_vsi_stats(struct ice_vsi *vsi);
 void ice_update_pf_stats(struct ice_pf *pf);
+void
+ice_fetch_u64_stats_per_ring(struct u64_stats_sync *syncp,
+			     struct ice_q_stats stats, u64 *pkts, u64 *bytes);
 int ice_up(struct ice_vsi *vsi);
 int ice_down(struct ice_vsi *vsi);
 int ice_vsi_cfg(struct ice_vsi *vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 303c5943dcda..3bfd1be99a26 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6103,9 +6103,9 @@ int ice_up(struct ice_vsi *vsi)
  * This function fetches stats from the ring considering the atomic operations
  * that needs to be performed to read u64 values in 32 bit machine.
  */
-static void
-ice_fetch_u64_stats_per_ring(struct u64_stats_sync *syncp, struct ice_q_stats stats,
-			     u64 *pkts, u64 *bytes)
+void
+ice_fetch_u64_stats_per_ring(struct u64_stats_sync *syncp,
+			     struct ice_q_stats stats, u64 *pkts, u64 *bytes)
 {
 	unsigned int start;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index dcc310e29300..3f4af6a168d5 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -142,6 +142,59 @@ ice_repr_get_devlink_port(struct net_device *netdev)
 	return &repr->vf->devlink_port;
 }
 
+/**
+ * ice_repr_sp_stats64 - get slow path stats for port representor
+ * @dev: network interface device structure
+ * @stats: netlink stats structure
+ *
+ * RX/TX stats are being swapped here to be consistent with VF stats. In slow
+ * path, port representor receives data when the corresponding VF is sending it
+ * (and vice versa), TX and RX bytes/packets are effectively swapped on port
+ * representor.
+ */
+static int
+ice_repr_sp_stats64(const struct net_device *dev,
+		    struct rtnl_link_stats64 *stats)
+{
+	struct ice_netdev_priv *np = netdev_priv(dev);
+	int vf_id = np->repr->vf->vf_id;
+	struct ice_tx_ring *tx_ring;
+	struct ice_rx_ring *rx_ring;
+	u64 pkts, bytes;
+
+	tx_ring = np->vsi->tx_rings[vf_id];
+	ice_fetch_u64_stats_per_ring(&tx_ring->syncp, tx_ring->stats,
+				     &pkts, &bytes);
+	stats->rx_packets = pkts;
+	stats->rx_bytes = bytes;
+
+	rx_ring = np->vsi->rx_rings[vf_id];
+	ice_fetch_u64_stats_per_ring(&rx_ring->syncp, rx_ring->stats,
+				     &pkts, &bytes);
+	stats->tx_packets = pkts;
+	stats->tx_bytes = bytes;
+	stats->tx_dropped = rx_ring->rx_stats.alloc_page_failed +
+			    rx_ring->rx_stats.alloc_buf_failed;
+
+	return 0;
+}
+
+static bool
+ice_repr_ndo_has_offload_stats(const struct net_device *dev, int attr_id)
+{
+	return attr_id == IFLA_OFFLOAD_XSTATS_CPU_HIT;
+}
+
+static int
+ice_repr_ndo_get_offload_stats(int attr_id, const struct net_device *dev,
+			       void *sp)
+{
+	if (attr_id == IFLA_OFFLOAD_XSTATS_CPU_HIT)
+		return ice_repr_sp_stats64(dev, (struct rtnl_link_stats64 *)sp);
+
+	return -EINVAL;
+}
+
 static int
 ice_repr_setup_tc_cls_flower(struct ice_repr *repr,
 			     struct flow_cls_offload *flower)
@@ -199,6 +252,8 @@ static const struct net_device_ops ice_repr_netdev_ops = {
 	.ndo_start_xmit = ice_eswitch_port_start_xmit,
 	.ndo_get_devlink_port = ice_repr_get_devlink_port,
 	.ndo_setup_tc = ice_repr_setup_tc,
+	.ndo_has_offload_stats = ice_repr_ndo_has_offload_stats,
+	.ndo_get_offload_stats = ice_repr_ndo_get_offload_stats,
 };
 
 /**
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
