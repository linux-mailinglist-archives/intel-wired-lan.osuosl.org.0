Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A51847257
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Feb 2024 15:56:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0BD6243783;
	Fri,  2 Feb 2024 14:56:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0BD6243783
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706885771;
	bh=EkgYYOYFWSnzRApxyS0rOcv4Wq5GG2lOMjGCuaUL1rk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=O83s790GGA3GY2MTUw4MUm0Y0RdhZw42H6fWHBd8N/1JHNq67dh6SLTVQizwU4CUp
	 1iRHDXHGx9fDGBkMLRoMulTAUUKUT/FHPWPs/gYYzyGRTYpnzakcwGcN86/+vN/V3D
	 RJCfyfKrgj+hvyuSt1zc6SkSx1TdaWyOHeZoPFnnayAFk3gXmTBpJXYpmAL4niPjrd
	 nlLXzVKa0/xmJVLGZrrUlbEH89yQtwCafN46lvUODayHG+keo3GQwcPdDo+ebxWK/+
	 GL8FWcyt0R4lLPFgIsUdDBtAUR8kMKVxV44cGEnYgZdJvxlNgsAgr/PFZsD/AhHpzS
	 dA+OuVP5011ig==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lEdEtahsMj-z; Fri,  2 Feb 2024 14:56:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B552643757;
	Fri,  2 Feb 2024 14:56:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B552643757
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1564B1BF423
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 14:55:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 269CB426DA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 14:55:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 269CB426DA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id njUfx_Ow8HGh for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Feb 2024 14:55:39 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 52679426EE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 14:55:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52679426EE
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="10823050"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="10823050"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 06:55:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="98499"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa009.jf.intel.com with ESMTP; 02 Feb 2024 06:55:36 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  2 Feb 2024 15:59:27 +0100
Message-ID: <20240202145929.12444-8-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240202145929.12444-1-michal.swiatkowski@linux.intel.com>
References: <20240202145929.12444-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706885739; x=1738421739;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0psNOMz/s1TKf+AoLJAHAeWJ4shAmWWDYFa4waI7HGI=;
 b=G5U+gxb3Yt5AmxerJ6SCw9PHF8ICRXVH3gFzSe3sCTGGQg3A20vCrzJc
 qKDItDb96f1+n7haGam72VzgKrKsXg3N6o3+YRtNMmL6MSkRcCsEGVSTZ
 Qvn/I4sd0Xs9yF5FX4nyflgy5sZ8DFZ7hvJc48/tsAa8W1kY9j5wOcEo7
 HkD5WLmEmjLiE4zoquwtRzUOlo1wXvH/3qTRa/B0TUA7zD03iI2KTIc1W
 XH+iRmpUbcFhpL7audIbrmLEa8r7gDPEYScnKski0F52SsEuHASwRbf86
 YvZ6Z39ZdtAIdYZ1TWZgG2O+bnNqNrjll9Wyqf0OTuOIJKiOQ4naLPGWz
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G5U+gxb3
Subject: [Intel-wired-lan] [iwl-next v2 7/8] ice: do switchdev slow-path Rx
 using PF VSI
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

Add an ICE_RX_FLAG_MULTIDEV flag to Rx ring.

If it is set try to find correct port representor. Do it based on
src_vsi value stored in flex descriptor. Ids of representor pointers
stored in xarray are equal to corresponding src_vsi value. Thanks to
that we can directly get correct representor if we have src_vsi value.

Set multidev flag during ring configuration.

If the mode is switchdev, change the ring descriptor to the one that
contains src_vsi value.

PF netdev should be reconfigured, do it by calling ice_down() and
ice_up() if the netdev was up before configuring switchdev.

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c     |  8 +++++
 drivers/net/ethernet/intel/ice/ice_eswitch.c  | 36 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_eswitch.h  |  9 +++++
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  1 +
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  8 ++++-
 5 files changed, 61 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 1d320ffda0c0..79485c944c9d 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -454,6 +454,14 @@ static int ice_setup_rx_ctx(struct ice_rx_ring *ring)
 	/* Rx queue threshold in units of 64 */
 	rlan_ctx.lrxqthresh = 1;
 
+	/* PF acts as uplink for switchdev; set flex descriptor with src_vsi
+	 * metadata and flags to allow redirecting to PR netdev
+	 */
+	if (ice_is_eswitch_mode_switchdev(vsi->back)) {
+		ring->flags |= ICE_RX_FLAGS_MULTIDEV;
+		rxdid = ICE_RXDID_FLEX_NIC_2;
+	}
+
 	/* Enable Flexible Descriptors in the queue context which
 	 * allows this driver to select a specific receive descriptor format
 	 * increasing context priority to pick up profile ID; default is 0x01;
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 5eba8dec9f94..86a6d58ad3ec 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -21,8 +21,13 @@ static int ice_eswitch_setup_env(struct ice_pf *pf)
 {
 	struct ice_vsi *uplink_vsi = pf->eswitch.uplink_vsi;
 	struct net_device *netdev = uplink_vsi->netdev;
+	bool if_running = netif_running(netdev);
 	struct ice_vsi_vlan_ops *vlan_ops;
 
+	if (if_running && !test_and_set_bit(ICE_VSI_DOWN, uplink_vsi->state))
+		if (ice_down(uplink_vsi))
+			return -ENODEV;
+
 	ice_remove_vsi_fltr(&pf->hw, uplink_vsi->idx);
 
 	netif_addr_lock_bh(netdev);
@@ -51,8 +56,13 @@ static int ice_eswitch_setup_env(struct ice_pf *pf)
 	if (ice_vsi_update_local_lb(uplink_vsi, true))
 		goto err_override_local_lb;
 
+	if (if_running && ice_up(uplink_vsi))
+		goto err_up;
+
 	return 0;
 
+err_up:
+	ice_vsi_update_local_lb(uplink_vsi, false);
 err_override_local_lb:
 	ice_vsi_update_security(uplink_vsi, ice_vsi_ctx_clear_allow_override);
 err_override_uplink:
@@ -69,6 +79,9 @@ static int ice_eswitch_setup_env(struct ice_pf *pf)
 	ice_fltr_add_mac_and_broadcast(uplink_vsi,
 				       uplink_vsi->port_info->mac.perm_addr,
 				       ICE_FWD_TO_VSI);
+	if (if_running)
+		ice_up(uplink_vsi);
+
 	return -ENODEV;
 }
 
@@ -493,3 +506,26 @@ void ice_eswitch_rebuild(struct ice_pf *pf)
 	xa_for_each(&pf->eswitch.reprs, id, repr)
 		ice_eswitch_detach(pf, repr->vf);
 }
+
+/**
+ * ice_eswitch_get_target - get netdev based on src_vsi from descriptor
+ * @rx_ring: ring used to receive the packet
+ * @rx_desc: descriptor used to get src_vsi value
+ *
+ * Get src_vsi value from descriptor and load correct representor. If it isn't
+ * found return rx_ring->netdev.
+ */
+struct net_device *ice_eswitch_get_target(struct ice_rx_ring *rx_ring,
+					  union ice_32b_rx_flex_desc *rx_desc)
+{
+	struct ice_eswitch *eswitch = &rx_ring->vsi->back->eswitch;
+	struct ice_32b_rx_flex_desc_nic_2 *desc;
+	struct ice_repr *repr;
+
+	desc = (struct ice_32b_rx_flex_desc_nic_2 *)rx_desc;
+	repr = xa_load(&eswitch->reprs, le16_to_cpu(desc->src_vsi));
+	if (!repr)
+		return rx_ring->netdev;
+
+	return repr->netdev;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.h b/drivers/net/ethernet/intel/ice/ice_eswitch.h
index baad68507471..e2e5c0c75e7d 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.h
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.h
@@ -26,6 +26,8 @@ void ice_eswitch_set_target_vsi(struct sk_buff *skb,
 				struct ice_tx_offload_params *off);
 netdev_tx_t
 ice_eswitch_port_start_xmit(struct sk_buff *skb, struct net_device *netdev);
+struct net_device *ice_eswitch_get_target(struct ice_rx_ring *rx_ring,
+					  union ice_32b_rx_flex_desc *rx_desc);
 #else /* CONFIG_ICE_SWITCHDEV */
 static inline void ice_eswitch_detach(struct ice_pf *pf, struct ice_vf *vf) { }
 
@@ -76,5 +78,12 @@ ice_eswitch_port_start_xmit(struct sk_buff *skb, struct net_device *netdev)
 {
 	return NETDEV_TX_BUSY;
 }
+
+static inline struct net_device *
+ice_eswitch_get_target(struct ice_rx_ring *rx_ring,
+		       union ice_32b_rx_flex_desc *rx_desc)
+{
+	return rx_ring->netdev;
+}
 #endif /* CONFIG_ICE_SWITCHDEV */
 #endif /* _ICE_ESWITCH_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index af955b0e5dc5..feba314a3fe4 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -365,6 +365,7 @@ struct ice_rx_ring {
 	u8 ptp_rx;
 #define ICE_RX_FLAGS_RING_BUILD_SKB	BIT(1)
 #define ICE_RX_FLAGS_CRC_STRIP_DIS	BIT(2)
+#define ICE_RX_FLAGS_MULTIDEV		BIT(3)
 	u8 flags;
 	/* CL5 - 5th cacheline starts here */
 	struct xdp_rxq_info xdp_rxq;
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index f8f1d2bdc1be..0a6cdfd393b5 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -236,7 +236,13 @@ ice_process_skb_fields(struct ice_rx_ring *rx_ring,
 	ice_rx_hash_to_skb(rx_ring, rx_desc, skb, ptype);
 
 	/* modifies the skb - consumes the enet header */
-	skb->protocol = eth_type_trans(skb, rx_ring->netdev);
+	if (unlikely(rx_ring->flags & ICE_RX_FLAGS_MULTIDEV)) {
+		struct net_device *netdev = ice_eswitch_get_target(rx_ring,
+								   rx_desc);
+		skb->protocol = eth_type_trans(skb, netdev);
+	} else {
+		skb->protocol = eth_type_trans(skb, rx_ring->netdev);
+	}
 
 	ice_rx_csum(rx_ring, skb, rx_desc, ptype);
 
-- 
2.42.0

