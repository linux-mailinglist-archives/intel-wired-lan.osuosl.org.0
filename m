Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB1157F9D4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Jul 2022 09:05:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 053564185C;
	Mon, 25 Jul 2022 07:05:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 053564185C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658732701;
	bh=Cvav15JX4+/x/UGZySwC+saTDVrF1CVJAPc7doYr4wY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ktgXvi1/RQRR29ln5UIR1LgvV0zog+xG9s4UChSmecEp49f6EprNxdMVlyk+EhKuD
	 /UBda6A73p+1oviY4pkxxVjRC5+X5KcPGQurYRXQOFlhEXFbU3VCCnyjKlhAarS6+l
	 Ngdz6qibSfv1oJmKq+jF4MXFANX4HEC1rMTvv1L5pjECiLoUJ7aYAXNLYZCNOxZCNI
	 1tv77YGECrWW8qTGIpJUKgsjS01Of2wDoey61g/ElJ7bQ0u8Dh9zLusJ64gGBOA1Yz
	 1ELk8miNDs4UqakYmFPAE2H2ka/m8+hHflz1eW7vkGizTZT5J+dvikhcG20X8GfSuE
	 dJn+xBknFX5Zw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M-Qc_jwELSKa; Mon, 25 Jul 2022 07:04:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 34020417D3;
	Mon, 25 Jul 2022 07:04:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 34020417D3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D2D961BF379
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 07:04:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BB8F440CB0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 07:04:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB8F440CB0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ugHC7xGKftRj for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Jul 2022 07:04:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD9A0401C2
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CD9A0401C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 07:04:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10418"; a="287641897"
X-IronPort-AV: E=Sophos;i="5.93,192,1654585200"; d="scan'208";a="287641897"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2022 00:04:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,192,1654585200"; d="scan'208";a="658058754"
Received: from propan.igk.intel.com ([10.211.8.82])
 by fmsmga008.fm.intel.com with ESMTP; 25 Jul 2022 00:04:50 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 25 Jul 2022 09:02:09 +0200
Message-Id: <20220725070210.488309-2-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220725070210.488309-1-anatolii.gerasymenko@intel.com>
References: <20220725070210.488309-1-anatolii.gerasymenko@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658732691; x=1690268691;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QG65UMFRTZsWo+fkspW2yY4b2NIohCEu7seovFoGeFQ=;
 b=ZEWamNx4pQax9eWqCxzFS1OvuibkNABPrBnj/w7BGlK8U1mO0TNnSizX
 RQNrFvRLwSZPvscIpTBrwrAPwGZkKGHG2edzp+gp7dMOM6p5HNpnxL/32
 mJ8zh4CnpTJxENmR4BGdCKWVFo7GXUc8WxBJAvHvAOesiXuguccJQmEhB
 OU08VpaLEKkX8tDgiByGP/uzataa5/C1y51UXPrAqtUF9wFj+NNpL5Jh0
 9azlrTxtLwSSaJ8ayi1tXidEqs8PN8CFVI20AFS4KYTjdBqhz6+QqUj9U
 6q4WxnWFswG+y1XWREhRlX9IqV8d9XhDDYpNIpY6Ke7vHvXh1W34qia7B
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZEWamNx4
Subject: [Intel-wired-lan] [PATCH net-next v3 1/2] ice: Implement control of
 FCS/CRC stripping
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
Cc: Benjamin Mikailenko <benjamin.mikailenko@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

The driver can allow the user to configure whether the CRC aka the FCS
(Frame Check Sequence) is DMA'd to the host as part of the receive
buffer.  The driver usually wants this feature disabled so that the
hardware checks the FCS and strips it in order to save PCI bandwidth.

Control the reception of FCS to the host using the command:
ethtool -K eth0 rx-fcs <on|off>

The default shown in ethtool -k eth0 | grep fcs; should be "off", as the
hardware will drop any frame with a bad checksum, and DMA of the
checksum is useless overhead especially for small packets.

Testing Hints:
test the FCS/CRC arrives with received packets using
tcpdump -nnpi eth0 -xxxx
and it should show crc data as the last 4 bytes of the packet. Can also
use wireshark to turn on CRC checking and check the data is correct.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Co-Developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Co-Developed-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
Signed-off-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
Co-Developed-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
---
v2: rebase on top of Maciej Fijalkowski's patches
v3: fix vsi->netdev NULL pointer derreference in ice_vsi_rebuild()
---
 drivers/net/ethernet/intel/ice/ice.h         |  1 +
 drivers/net/ethernet/intel/ice/ice_base.c    |  2 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c |  5 +--
 drivers/net/ethernet/intel/ice/ice_lib.c     | 22 +++++++++++
 drivers/net/ethernet/intel/ice/ice_lib.h     |  2 +
 drivers/net/ethernet/intel/ice/ice_main.c    | 40 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_txrx.h    |  3 +-
 7 files changed, 69 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 60453b3b8d23..f04afce606b9 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -854,6 +854,7 @@ ice_fetch_u64_stats_per_ring(struct u64_stats_sync *syncp,
 			     struct ice_q_stats stats, u64 *pkts, u64 *bytes);
 int ice_up(struct ice_vsi *vsi);
 int ice_down(struct ice_vsi *vsi);
+int ice_down_up(struct ice_vsi *vsi);
 int ice_vsi_cfg(struct ice_vsi *vsi);
 struct ice_vsi *ice_lb_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi);
 int ice_vsi_determine_xdp_res(struct ice_vsi *vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 136d7911adb4..6f092e06054e 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -417,7 +417,7 @@ static int ice_setup_rx_ctx(struct ice_rx_ring *ring)
 	/* Strip the Ethernet CRC bytes before the packet is posted to host
 	 * memory.
 	 */
-	rlan_ctx.crcstrip = 1;
+	rlan_ctx.crcstrip = !(ring->flags & ICE_RX_FLAGS_CRC_STRIP_DIS);
 
 	/* L2TSEL flag defines the reported L2 Tags in the receive descriptor
 	 * and it needs to remain 1 for non-DVM capable configurations to not
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 4efa5e5846e0..1b66b22fd15a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1284,10 +1284,7 @@ static int ice_set_priv_flags(struct net_device *netdev, u32 flags)
 	}
 	if (test_bit(ICE_FLAG_LEGACY_RX, change_flags)) {
 		/* down and up VSI so that changes of Rx cfg are reflected. */
-		if (!test_and_set_bit(ICE_VSI_DOWN, vsi->state)) {
-			ice_down(vsi);
-			ice_up(vsi);
-		}
+		ice_down_up(vsi);
 	}
 	/* don't allow modification of this flag when a single VF is in
 	 * promiscuous mode because it's not supported
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index a6c4be5e5566..0828bdc52054 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1561,6 +1561,22 @@ void ice_vsi_manage_rss_lut(struct ice_vsi *vsi, bool ena)
 	kfree(lut);
 }
 
+/**
+ * ice_vsi_cfg_crc_strip - Configure CRC stripping for a VSI
+ * @vsi: VSI to be configured
+ * @disable: set to true to have FCS / CRC in the frame data
+ */
+void ice_vsi_cfg_crc_strip(struct ice_vsi *vsi, bool disable)
+{
+	int i;
+
+	ice_for_each_rxq(vsi, i)
+		if (disable)
+			vsi->rx_rings[i]->flags |= ICE_RX_FLAGS_CRC_STRIP_DIS;
+		else
+			vsi->rx_rings[i]->flags &= ~ICE_RX_FLAGS_CRC_STRIP_DIS;
+}
+
 /**
  * ice_vsi_cfg_rss_lut_key - Configure RSS params for a VSI
  * @vsi: VSI to be configured
@@ -3276,6 +3292,12 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 			 */
 			if (test_bit(ICE_FLAG_RSS_ENA, pf->flags))
 				ice_vsi_cfg_rss_lut_key(vsi);
+
+		/* disable or enable CRC stripping */
+		if (vsi->netdev)
+			ice_vsi_cfg_crc_strip(vsi, !!(vsi->netdev->features &
+					      NETIF_F_RXFCS));
+
 		break;
 	case ICE_VSI_VF:
 		ret = ice_vsi_alloc_q_vectors(vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 0095329949d4..d22f4b062c4f 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -89,6 +89,8 @@ void ice_vsi_free_tx_rings(struct ice_vsi *vsi);
 
 void ice_vsi_manage_rss_lut(struct ice_vsi *vsi, bool ena);
 
+void ice_vsi_cfg_crc_strip(struct ice_vsi *vsi, bool disable);
+
 void ice_update_tx_ring_stats(struct ice_tx_ring *ring, u64 pkts, u64 bytes);
 
 void ice_update_rx_ring_stats(struct ice_rx_ring *ring, u64 pkts, u64 bytes);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index ec1de9d59172..0f9c4463eb50 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3374,6 +3374,11 @@ static void ice_set_netdev_features(struct net_device *netdev)
 	if (is_dvm_ena)
 		netdev->hw_features |= NETIF_F_HW_VLAN_STAG_RX |
 			NETIF_F_HW_VLAN_STAG_TX;
+
+	/* Leave CRC / FCS stripping enabled by default, but allow the value to
+	 * be changed at runtime
+	 */
+	netdev->hw_features |= NETIF_F_RXFCS;
 }
 
 /**
@@ -5981,6 +5986,16 @@ ice_set_features(struct net_device *netdev, netdev_features_t features)
 	if (ret)
 		return ret;
 
+	/* Turn on receive of FCS aka CRC, and after setting this
+	 * flag the packet data will have the 4 byte CRC appended
+	 */
+	if (changed & NETIF_F_RXFCS) {
+		ice_vsi_cfg_crc_strip(vsi, !!(features & NETIF_F_RXFCS));
+		ret = ice_down_up(vsi);
+		if (ret)
+			return ret;
+	}
+
 	if (changed & NETIF_F_NTUPLE) {
 		bool ena = !!(features & NETIF_F_NTUPLE);
 
@@ -6684,6 +6699,31 @@ int ice_down(struct ice_vsi *vsi)
 	return 0;
 }
 
+/**
+ * ice_down_up - shutdown the VSI connection and bring it up
+ * @vsi: the VSI to be reconnected
+ */
+int ice_down_up(struct ice_vsi *vsi)
+{
+	int ret;
+
+	/* if DOWN already set, nothing to do */
+	if (test_and_set_bit(ICE_VSI_DOWN, vsi->state))
+		return 0;
+
+	ret = ice_down(vsi);
+	if (ret)
+		return ret;
+
+	ret = ice_up(vsi);
+	if (ret) {
+		netdev_err(vsi->netdev, "reallocating resources failed during netdev features change, may need to reload driver\n");
+		return ret;
+	}
+
+	return 0;
+}
+
 /**
  * ice_vsi_setup_tx_rings - Allocate VSI Tx queue resources
  * @vsi: VSI having resources allocated
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index ca902af54bb4..932b5661ec4d 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -295,10 +295,11 @@ struct ice_rx_ring {
 	struct xsk_buff_pool *xsk_pool;
 	struct sk_buff *skb;
 	dma_addr_t dma;			/* physical address of ring */
-#define ICE_RX_FLAGS_RING_BUILD_SKB	BIT(1)
 	u64 cached_phctime;
 	u8 dcb_tc;			/* Traffic class of ring */
 	u8 ptp_rx;
+#define ICE_RX_FLAGS_RING_BUILD_SKB	BIT(1)
+#define ICE_RX_FLAGS_CRC_STRIP_DIS	BIT(2)
 	u8 flags;
 } ____cacheline_internodealigned_in_smp;
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
