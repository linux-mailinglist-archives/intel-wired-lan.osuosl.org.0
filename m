Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AACED847255
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Feb 2024 15:56:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 441D44377E;
	Fri,  2 Feb 2024 14:56:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 441D44377E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706885766;
	bh=h5VbbrVhVUl8DxKVV70Y6ukSGlQu2gP+7sPVrzmAXBc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bw4I3JIs/EPnQjF0/1srNjnLTLLTHawn8+o9ki6hLXnJ9lo7PNFaYVFbOlXII/QhN
	 IWOySOSgPjpmTvrHDYN1yI34LOKcizhloHj9t43pOVP4gsuwPq1l5O2cFp1NMjTZ2j
	 Mh2W8xSGX77+6aRWMMvT+eEnpNI1mV8umvAqiY8Lz2HVGPUbGTJFCyYYRwiqUke5o0
	 qgEpa8lhPuaZc8oHBCyRFYoC2d/hhM1+nT+nzSfIO8jx81q/sSmVrFhawKFQXQBBBC
	 0zkNAnQI2LDVA3ilCSb7fJGHDevcIYh+WYmork2pwOqgqUeywmN3KLw1N51kb7md1m
	 6sVK054T2UQGw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5VhH82a77RxF; Fri,  2 Feb 2024 14:56:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EDD5143774;
	Fri,  2 Feb 2024 14:56:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EDD5143774
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9891C1BF423
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 14:55:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6C3A883FBB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 14:55:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C3A883FBB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qDtj2GAAKv0y for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Feb 2024 14:55:41 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7C86083F61
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 14:55:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C86083F61
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="10823056"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="10823056"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 06:55:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="98545"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa009.jf.intel.com with ESMTP; 02 Feb 2024 06:55:39 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  2 Feb 2024 15:59:28 +0100
Message-ID: <20240202145929.12444-9-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240202145929.12444-1-michal.swiatkowski@linux.intel.com>
References: <20240202145929.12444-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706885742; x=1738421742;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qx02p/OBto5t8aN5avbfF+bu6wYPKDtl0eryOrBIeXQ=;
 b=jOIYfeTKrZUeGOIe3i48C628duFc94MsSkzaUAReto/5WJJLA+A0ew3W
 XQM8o2L4LkVvV+HOXje2jotCW4ObuZpzltZWDIo9gMFFsMj22mV8pce7n
 fNJeBu+292k7Hkks7MeJ0oznd5RM8PZyyYuZrz9JMPyzutAJXOCdkEXaO
 ipOOxZYm3BDiBse/bJlEvQfbLQVQmAe2FbnyGl3j3u2UK/l08OV6MLD68
 lgcg8KRIKivn9uzbICJ/dXX7HDnYeJA3jY1IL508ZYkgJ+ZH40X/oXv4F
 Mq+aMjrkndaVhoGen5hkuanVR6ojBB7Ns0IcrK0wyLzp4K27r76EUOvO0
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jOIYfeTK
Subject: [Intel-wired-lan] [iwl-next v2 8/8] ice: count representor stats
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>, przemyslaw.kitszel@intel.com,
 sridhar.samudrala@intel.com, horms@kernel.org, netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Removing control plane VSI result in no information about slow-path
statistic. In current solution statistics need to be counted in driver.

Patch is based on similar implementation done by Simon Horman in nfp:
commit eadfa4c3be99 ("nfp: add stats and xmit helpers for representors")

Add const modifier to netdev parameter in ice_netdev_to_repr(). It isn't
(and shouldn't be) modified in the function.

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c  |   7 +-
 drivers/net/ethernet/intel/ice/ice_repr.c     | 103 +++++++++++++-----
 drivers/net/ethernet/intel/ice/ice_repr.h     |  16 ++-
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |   3 +
 4 files changed, 99 insertions(+), 30 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 86a6d58ad3ec..af4e9530eb48 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -192,13 +192,18 @@ netdev_tx_t
 ice_eswitch_port_start_xmit(struct sk_buff *skb, struct net_device *netdev)
 {
 	struct ice_repr *repr = ice_netdev_to_repr(netdev);
+	unsigned int len = skb->len;
+	int ret;
 
 	skb_dst_drop(skb);
 	dst_hold((struct dst_entry *)repr->dst);
 	skb_dst_set(skb, (struct dst_entry *)repr->dst);
 	skb->dev = repr->dst->u.port_info.lower_dev;
 
-	return dev_queue_xmit(skb);
+	ret = dev_queue_xmit(skb);
+	ice_repr_inc_tx_stats(repr, len, ret);
+
+	return ret;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index b4fb74271811..2429727d5562 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -41,6 +41,47 @@ ice_repr_get_phys_port_name(struct net_device *netdev, char *buf, size_t len)
 	return 0;
 }
 
+/**
+ * ice_repr_inc_tx_stats - increment Tx statistic by one packet
+ * @repr: repr to increment stats on
+ * @len: length of the packet
+ * @xmit_status: value returned by xmit function
+ */
+void ice_repr_inc_tx_stats(struct ice_repr *repr, unsigned int len,
+			   int xmit_status)
+{
+	struct ice_repr_pcpu_stats *stats;
+
+	if (unlikely(xmit_status != NET_XMIT_SUCCESS &&
+		     xmit_status != NET_XMIT_CN)) {
+		this_cpu_inc(repr->stats->tx_drops);
+		return;
+	}
+
+	stats = this_cpu_ptr(repr->stats);
+	u64_stats_update_begin(&stats->syncp);
+	stats->tx_packets++;
+	stats->tx_bytes += len;
+	u64_stats_update_end(&stats->syncp);
+}
+
+/**
+ * ice_repr_inc_rx_stats - increment Rx statistic by one packet
+ * @netdev: repr netdev to increment stats on
+ * @len: length of the packet
+ */
+void ice_repr_inc_rx_stats(struct net_device *netdev, unsigned int len)
+{
+	struct ice_repr *repr = ice_netdev_to_repr(netdev);
+	struct ice_repr_pcpu_stats *stats;
+
+	stats = this_cpu_ptr(repr->stats);
+	u64_stats_update_begin(&stats->syncp);
+	stats->rx_packets++;
+	stats->rx_bytes += len;
+	u64_stats_update_end(&stats->syncp);
+}
+
 /**
  * ice_repr_get_stats64 - get VF stats for VFPR use
  * @netdev: pointer to port representor netdev
@@ -76,7 +117,7 @@ ice_repr_get_stats64(struct net_device *netdev, struct rtnl_link_stats64 *stats)
  * ice_netdev_to_repr - Get port representor for given netdevice
  * @netdev: pointer to port representor netdev
  */
-struct ice_repr *ice_netdev_to_repr(struct net_device *netdev)
+struct ice_repr *ice_netdev_to_repr(const struct net_device *netdev)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 
@@ -139,38 +180,35 @@ static int ice_repr_stop(struct net_device *netdev)
  * ice_repr_sp_stats64 - get slow path stats for port representor
  * @dev: network interface device structure
  * @stats: netlink stats structure
- *
- * RX/TX stats are being swapped here to be consistent with VF stats. In slow
- * path, port representor receives data when the corresponding VF is sending it
- * (and vice versa), TX and RX bytes/packets are effectively swapped on port
- * representor.
  */
 static int
 ice_repr_sp_stats64(const struct net_device *dev,
 		    struct rtnl_link_stats64 *stats)
 {
-	struct ice_netdev_priv *np = netdev_priv(dev);
-	int vf_id = np->repr->vf->vf_id;
-	struct ice_tx_ring *tx_ring;
-	struct ice_rx_ring *rx_ring;
-	u64 pkts, bytes;
-
-	tx_ring = np->vsi->tx_rings[vf_id];
-	ice_fetch_u64_stats_per_ring(&tx_ring->ring_stats->syncp,
-				     tx_ring->ring_stats->stats,
-				     &pkts, &bytes);
-	stats->rx_packets = pkts;
-	stats->rx_bytes = bytes;
-
-	rx_ring = np->vsi->rx_rings[vf_id];
-	ice_fetch_u64_stats_per_ring(&rx_ring->ring_stats->syncp,
-				     rx_ring->ring_stats->stats,
-				     &pkts, &bytes);
-	stats->tx_packets = pkts;
-	stats->tx_bytes = bytes;
-	stats->tx_dropped = rx_ring->ring_stats->rx_stats.alloc_page_failed +
-			    rx_ring->ring_stats->rx_stats.alloc_buf_failed;
-
+	struct ice_repr *repr = ice_netdev_to_repr(dev);
+	int i;
+
+	for_each_possible_cpu(i) {
+		u64 tbytes, tpkts, tdrops, rbytes, rpkts;
+		struct ice_repr_pcpu_stats *repr_stats;
+		unsigned int start;
+
+		repr_stats = per_cpu_ptr(repr->stats, i);
+		do {
+			start = u64_stats_fetch_begin(&repr_stats->syncp);
+			tbytes = repr_stats->tx_bytes;
+			tpkts = repr_stats->tx_packets;
+			tdrops = repr_stats->tx_drops;
+			rbytes = repr_stats->rx_bytes;
+			rpkts = repr_stats->rx_packets;
+		} while (u64_stats_fetch_retry(&repr_stats->syncp, start));
+
+		stats->tx_bytes += tbytes;
+		stats->tx_packets += tpkts;
+		stats->tx_dropped += tdrops;
+		stats->rx_bytes += rbytes;
+		stats->rx_packets += rpkts;
+	}
 	return 0;
 }
 
@@ -291,6 +329,7 @@ static void ice_repr_remove_node(struct devlink_port *devlink_port)
  */
 static void ice_repr_rem(struct ice_repr *repr)
 {
+	free_percpu(repr->stats);
 	free_netdev(repr->netdev);
 	kfree(repr);
 }
@@ -344,6 +383,12 @@ ice_repr_add(struct ice_pf *pf, struct ice_vsi *src_vsi, const u8 *parent_mac)
 		goto err_alloc;
 	}
 
+	repr->stats = netdev_alloc_pcpu_stats(struct ice_repr_pcpu_stats);
+	if (!repr->stats) {
+		err = -ENOMEM;
+		goto err_stats;
+	}
+
 	repr->src_vsi = src_vsi;
 	repr->id = src_vsi->vsi_num;
 	np = netdev_priv(repr->netdev);
@@ -353,6 +398,8 @@ ice_repr_add(struct ice_pf *pf, struct ice_vsi *src_vsi, const u8 *parent_mac)
 
 	return repr;
 
+err_stats:
+	free_netdev(repr->netdev);
 err_alloc:
 	kfree(repr);
 	return ERR_PTR(err);
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.h b/drivers/net/ethernet/intel/ice/ice_repr.h
index eb8dec1f7de4..cff730b15ca0 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.h
+++ b/drivers/net/ethernet/intel/ice/ice_repr.h
@@ -6,12 +6,22 @@
 
 #include <net/dst_metadata.h>
 
+struct ice_repr_pcpu_stats {
+	struct u64_stats_sync syncp;
+	u64 rx_packets;
+	u64 rx_bytes;
+	u64 tx_packets;
+	u64 tx_bytes;
+	u64 tx_drops;
+};
+
 struct ice_repr {
 	struct ice_vsi *src_vsi;
 	struct ice_vf *vf;
 	struct net_device *netdev;
 	struct metadata_dst *dst;
 	struct ice_esw_br_port *br_port;
+	struct ice_repr_pcpu_stats __percpu *stats;
 	u32 id;
 	u8 parent_mac[ETH_ALEN];
 };
@@ -22,8 +32,12 @@ void ice_repr_rem_vf(struct ice_repr *repr);
 void ice_repr_start_tx_queues(struct ice_repr *repr);
 void ice_repr_stop_tx_queues(struct ice_repr *repr);
 
-struct ice_repr *ice_netdev_to_repr(struct net_device *netdev);
+struct ice_repr *ice_netdev_to_repr(const struct net_device *netdev);
 bool ice_is_port_repr_netdev(const struct net_device *netdev);
 
 struct ice_repr *ice_repr_get_by_vsi(struct ice_vsi *vsi);
+
+void ice_repr_inc_tx_stats(struct ice_repr *repr, unsigned int len,
+			   int xmit_status);
+void ice_repr_inc_rx_stats(struct net_device *netdev, unsigned int len);
 #endif
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index 0a6cdfd393b5..df072ce767b1 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -239,6 +239,9 @@ ice_process_skb_fields(struct ice_rx_ring *rx_ring,
 	if (unlikely(rx_ring->flags & ICE_RX_FLAGS_MULTIDEV)) {
 		struct net_device *netdev = ice_eswitch_get_target(rx_ring,
 								   rx_desc);
+
+		if (ice_is_port_repr_netdev(netdev))
+			ice_repr_inc_rx_stats(netdev, skb->len);
 		skb->protocol = eth_type_trans(skb, netdev);
 	} else {
 		skb->protocol = eth_type_trans(skb, rx_ring->netdev);
-- 
2.42.0

