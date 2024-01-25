Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 737BD83C2CF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jan 2024 13:49:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1617C832B3;
	Thu, 25 Jan 2024 12:49:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1617C832B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706186992;
	bh=7lMiR0LuyNEd+zaDA5PiiYF+Rn/JuQiZOmtgIco1UTw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=igPkoo941TeM6UObZGVoFJ6IZ/H0UKawppJc0fuO1mM3uEncRmC48Ip9KkSVXg/BT
	 nAtx6523woJT429SLjRaxZ4Iuu1ygwUYP9WPIsPogWpygz3o8UVwatsEiGr+kjwYlU
	 flVrS2HbOHJeEPaJ86+7HCEQ2XpU9y5m4clSKqmoaRd7Quz1P9GZ8THZQKTVQItGX2
	 qInvtXCLXXlZx96ZaENC0qn5kwmaLstx3dZ3m6LHaQtHBSp8zBwcBqZI7N84TrrV5w
	 5cfsN6Tx9v1xka/dI0hm0KZFnF4A47rHElFHdMY2Vp5WkioWV7+tMtI5hsxAeVKAQE
	 uGY/yrdQQoHQw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wcWcw1mCf3NL; Thu, 25 Jan 2024 12:49:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DCB5A82446;
	Thu, 25 Jan 2024 12:49:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DCB5A82446
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0BC481BF387
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 12:49:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E3DCC40242
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 12:49:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E3DCC40242
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id upH2UDfNmSRv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jan 2024 12:49:25 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 99538400D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 12:49:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 99538400D1
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="399313545"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="399313545"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2024 04:49:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="905956695"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="905956695"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmsmga002.fm.intel.com with ESMTP; 25 Jan 2024 04:49:23 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jan 2024 13:53:13 +0100
Message-ID: <20240125125314.852914-8-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240125125314.852914-1-michal.swiatkowski@linux.intel.com>
References: <20240125125314.852914-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706186965; x=1737722965;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VQdVFoi0gt9nEkcTJn4vcT1uCfZwtfWsRDWT0A0xvIM=;
 b=Ed8QUXISiyOIsgeY151E0GzuTM6MAJttt8j4u9oxwRFE/mGSpr7poGe/
 BNj4uIWpvNI5TpMt/lTKJ7+AUKeeIlJP88ETKtthXusPtk8LcIo8gKyGf
 G9kXHo0Aj1VllLRU1rHLVldcHm/ZuIJy5pqBMauDPgcGJhLjK9V5o1ylN
 ID3QJdCY1KiGis//R+YpiH9uHx8DKSNcC1heV+MTey65T6xaHQikU3roT
 htPx5E10ZalgDTZMCX8wGRMZQkguXBpAVAU8lGUxI+5qR57FnxEapo4xl
 Nrs/qY0nLLueWJE+zM0oGGfq958N/pUMKMswez4BTPq8U2jSEOo1I3QSE
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ed8QUXIS
Subject: [Intel-wired-lan] [iwl-next v1 7/8] ice: do switchdev slow-path Rx
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
 sridhar.samudrala@intel.com, netdev@vger.kernel.org,
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
index 81081258bf13..df2e3eb87b2e 100644
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
index b3379ff73674..4c57f5c0b979 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -364,6 +364,7 @@ struct ice_rx_ring {
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

