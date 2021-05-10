Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B749F377B91
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 May 2021 07:36:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CACC0405BC;
	Mon, 10 May 2021 05:36:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qxc4MPfqmZXT; Mon, 10 May 2021 05:36:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4121E405A4;
	Mon, 10 May 2021 05:36:40 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B57DD1BF471
 for <intel-wired-lan@osuosl.org>; Mon, 10 May 2021 05:36:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AFF97405A4
 for <intel-wired-lan@osuosl.org>; Mon, 10 May 2021 05:36:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oUKbFqlRvdue for <intel-wired-lan@osuosl.org>;
 Mon, 10 May 2021 05:36:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0EA4D4053D
 for <intel-wired-lan@osuosl.org>; Mon, 10 May 2021 05:36:32 +0000 (UTC)
IronPort-SDR: 98L3Ob0vJG+S/zqdxxpymcrLpFwqDHZ9X43CfPggXtM/js8+KmeZT5sBL1GCHkcdpJeCcaB6Do
 s1JBihfo/6xg==
X-IronPort-AV: E=McAfee;i="6200,9189,9979"; a="178705775"
X-IronPort-AV: E=Sophos;i="5.82,286,1613462400"; d="scan'208";a="178705775"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2021 22:36:30 -0700
IronPort-SDR: drzFL/WRu0L8mmO2XXErzmvD9miVp581ExJse4COQCjOGF5w1LgQRKF7YiwEi6bVu9McicuOAh
 +/zo5a5IEYFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,286,1613462400"; d="scan'208";a="470669585"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.114])
 by orsmga001.jf.intel.com with ESMTP; 09 May 2021 22:36:28 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon, 10 May 2021 13:36:12 +0800
Message-Id: <20210510053612.14163-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH v1] igc: Enable HW VLAN Insertion and HW
 VLAN Stripping
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
Cc: muhammad.husaini.zulkifli@intel.com, mallikarjuna.chilakala@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add HW VLAN acceleration protocol handling. In case of HW VLAN tagging,
we need that protocol available in the ndo_start_xmit(), so that it will be
stored in a new fields in the skb.

HW offloading is set to OFF by default.
Users are allow to turn on/off rx/tx HW vlan acceleration via ethtool.

Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  1 +
 drivers/net/ethernet/intel/igc/igc_defines.h |  5 ++
 drivers/net/ethernet/intel/igc/igc_main.c    | 73 +++++++++++++++++++-
 drivers/net/ethernet/intel/igc/igc_regs.h    |  1 +
 4 files changed, 78 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index b6d3277c6f52..9e0bbb2e55e3 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -372,6 +372,7 @@ extern char igc_driver_name[];
 
 /* VLAN info */
 #define IGC_TX_FLAGS_VLAN_MASK	0xffff0000
+#define IGC_TX_FLAGS_VLAN_SHIFT	16
 
 /* igc_test_staterr - tests bits within Rx descriptor status and error fields */
 static inline __le32 igc_test_staterr(union igc_adv_rx_desc *rx_desc,
diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 7cc48321bb70..8f6ba2b8d9e6 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -94,6 +94,7 @@
 #define IGC_CTRL_SLU		0x00000040  /* Set link up (Force Link) */
 #define IGC_CTRL_FRCSPD		0x00000800  /* Force Speed */
 #define IGC_CTRL_FRCDPX		0x00001000  /* Force Duplex */
+#define IGC_CTRL_VME		0x40000000  /* IEEE VLAN mode enable */
 
 #define IGC_CTRL_RFCE		0x08000000  /* Receive Flow Control enable */
 #define IGC_CTRL_TFCE		0x10000000  /* Transmit flow control enable */
@@ -187,6 +188,7 @@
 #define IGC_STATUS_SPEED_100	0x00000040      /* Speed 100Mb/s */
 #define IGC_STATUS_SPEED_1000	0x00000080      /* Speed 1000Mb/s */
 #define IGC_STATUS_SPEED_2500	0x00400000	/* Speed 2.5Gb/s */
+#define IGC_STATUS_VME		0x40000000	/* IEEE VLAN mode enable */
 
 #define SPEED_10		10
 #define SPEED_100		100
@@ -322,6 +324,9 @@
 #define IGC_RXD_STAT_IXSM	0x04	/* Ignore checksum */
 #define IGC_RXD_STAT_UDPCS	0x10	/* UDP xsum calculated */
 #define IGC_RXD_STAT_TCPCS	0x20	/* TCP xsum calculated */
+#define IGC_RXD_STAT_VP		0x08	/* IEEE VLAN Packet */
+
+#define IGC_RXDEXT_STATERR_LB	0x00040000
 
 /* Advanced Receive Descriptor bit definitions */
 #define IGC_RXDADV_STAT_TSIP	0x08000 /* timestamp in packet */
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 5d1617961adb..e4a82606dd1c 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -111,6 +111,9 @@ void igc_reset(struct igc_adapter *adapter)
 	if (!netif_running(adapter->netdev))
 		igc_power_down_phy_copper_base(&adapter->hw);
 
+	/* Enable H/W to recognize an 802.1Q VLAN Ethernet packet */
+	wr32(IGC_VET, ETH_P_8021Q);
+
 	/* Re-enable PTP, where applicable. */
 	igc_ptp_reset(adapter);
 
@@ -1123,13 +1126,17 @@ static inline int igc_maybe_stop_tx(struct igc_ring *tx_ring, const u16 size)
 	 ((u32)((_input) & (_flag)) * ((_result) / (_flag))) :	\
 	 ((u32)((_input) & (_flag)) / ((_flag) / (_result))))
 
-static u32 igc_tx_cmd_type(u32 tx_flags)
+static u32 igc_tx_cmd_type(struct sk_buff *skb, u32 tx_flags)
 {
 	/* set type for advanced descriptor with frame checksum insertion */
 	u32 cmd_type = IGC_ADVTXD_DTYP_DATA |
 		       IGC_ADVTXD_DCMD_DEXT |
 		       IGC_ADVTXD_DCMD_IFCS;
 
+	/* set HW vlan bit if vlan is present */
+	cmd_type |= IGC_SET_FLAG(tx_flags, IGC_TX_FLAGS_VLAN,
+				 (IGC_ADVTXD_DCMD_VLE));
+
 	/* set segmentation bits for TSO */
 	cmd_type |= IGC_SET_FLAG(tx_flags, IGC_TX_FLAGS_TSO,
 				 (IGC_ADVTXD_DCMD_TSE));
@@ -1138,6 +1145,9 @@ static u32 igc_tx_cmd_type(u32 tx_flags)
 	cmd_type |= IGC_SET_FLAG(tx_flags, IGC_TX_FLAGS_TSTAMP,
 				 (IGC_ADVTXD_MAC_TSTAMP));
 
+	/* insert frame checksum */
+	cmd_type ^= IGC_SET_FLAG(skb->no_fcs, 1, IGC_ADVTXD_DCMD_IFCS);
+
 	return cmd_type;
 }
 
@@ -1172,7 +1182,7 @@ static int igc_tx_map(struct igc_ring *tx_ring,
 	u16 i = tx_ring->next_to_use;
 	unsigned int data_len, size;
 	dma_addr_t dma;
-	u32 cmd_type = igc_tx_cmd_type(tx_flags);
+	u32 cmd_type = igc_tx_cmd_type(skb, tx_flags);
 
 	tx_desc = IGC_TX_DESC(tx_ring, i);
 
@@ -1445,6 +1455,11 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 		}
 	}
 
+	if (skb_vlan_tag_present(skb)) {
+		tx_flags |= IGC_TX_FLAGS_VLAN;
+		tx_flags |= (skb_vlan_tag_get(skb) << IGC_TX_FLAGS_VLAN_SHIFT);
+	}
+
 	/* record initial flags and protocol */
 	first->tx_flags = tx_flags;
 	first->protocol = protocol;
@@ -1544,6 +1559,25 @@ static inline void igc_rx_hash(struct igc_ring *ring,
 			     PKT_HASH_TYPE_L3);
 }
 
+static void igc_rx_vlan(struct igc_ring *rx_ring,
+			union igc_adv_rx_desc *rx_desc,
+			struct sk_buff *skb)
+{
+	struct net_device *dev = rx_ring->netdev;
+	u16 vid;
+
+	if ((dev->features & NETIF_F_HW_VLAN_CTAG_RX) &&
+	    igc_test_staterr(rx_desc, IGC_RXD_STAT_VP)) {
+		if (igc_test_staterr(rx_desc, IGC_RXDEXT_STATERR_LB) &&
+		    test_bit(IGC_RING_FLAG_RX_LB_VLAN_BSWAP, &rx_ring->flags))
+			vid = be16_to_cpu(rx_desc->wb.upper.vlan);
+		else
+			vid = le16_to_cpu(rx_desc->wb.upper.vlan);
+
+		__vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), vid);
+	}
+}
+
 /**
  * igc_process_skb_fields - Populate skb header fields from Rx descriptor
  * @rx_ring: rx descriptor ring packet is being transacted on
@@ -1562,11 +1596,37 @@ static void igc_process_skb_fields(struct igc_ring *rx_ring,
 
 	igc_rx_checksum(rx_ring, rx_desc, skb);
 
+	igc_rx_vlan(rx_ring, rx_desc, skb);
+
 	skb_record_rx_queue(skb, rx_ring->queue_index);
 
 	skb->protocol = eth_type_trans(skb, rx_ring->netdev);
 }
 
+static void igc_vlan_mode(struct net_device *netdev, netdev_features_t features)
+{
+	struct igc_adapter *adapter = netdev_priv(netdev);
+	struct igc_hw *hw = &adapter->hw;
+	u32 ctrl;
+	bool enable = !!(features & NETIF_F_HW_VLAN_CTAG_RX);
+
+	ctrl = rd32(IGC_CTRL);
+
+	if (enable) {
+		/* enable VLAN tag insert/strip */
+		ctrl |= IGC_CTRL_VME;
+	} else {
+		/* disable VLAN tag insert/strip */
+		ctrl &= ~IGC_CTRL_VME;
+	}
+	wr32(IGC_CTRL, ctrl);
+}
+
+static void igc_restore_vlan(struct igc_adapter *adapter)
+{
+	igc_vlan_mode(adapter->netdev, adapter->netdev->features);
+}
+
 static struct igc_rx_buffer *igc_get_rx_buffer(struct igc_ring *rx_ring,
 					       const unsigned int size,
 					       int *rx_buffer_pgcnt)
@@ -3254,6 +3314,8 @@ static void igc_configure(struct igc_adapter *adapter)
 	igc_get_hw_control(adapter);
 	igc_set_rx_mode(netdev);
 
+	igc_restore_vlan(adapter);
+
 	igc_setup_tctl(adapter);
 	igc_setup_mrqc(adapter);
 	igc_setup_rctl(adapter);
@@ -4553,6 +4615,9 @@ static int igc_set_features(struct net_device *netdev,
 	netdev_features_t changed = netdev->features ^ features;
 	struct igc_adapter *adapter = netdev_priv(netdev);
 
+	if (changed & NETIF_F_HW_VLAN_CTAG_RX)
+		igc_vlan_mode(netdev, features);
+
 	/* Add VLAN support */
 	if (!(changed & (NETIF_F_RXALL | NETIF_F_NTUPLE)))
 		return 0;
@@ -5882,11 +5947,15 @@ static int igc_probe(struct pci_dev *pdev,
 
 	/* copy netdev features into list of user selectable features */
 	netdev->hw_features |= NETIF_F_NTUPLE;
+	netdev->hw_features |= NETIF_F_HW_VLAN_CTAG_TX;
+	netdev->hw_features |= NETIF_F_HW_VLAN_CTAG_RX;
 	netdev->hw_features |= netdev->features;
 
 	if (pci_using_dac)
 		netdev->features |= NETIF_F_HIGHDMA;
 
+	netdev->vlan_features |= netdev->features;
+
 	/* MTU range: 68 - 9216 */
 	netdev->min_mtu = ETH_MIN_MTU;
 	netdev->max_mtu = MAX_STD_JUMBO_FRAME_SIZE;
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index 2491d565d758..0f82990567d9 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -11,6 +11,7 @@
 #define IGC_CTRL_EXT		0x00018  /* Extended Device Control - RW */
 #define IGC_MDIC		0x00020  /* MDI Control - RW */
 #define IGC_CONNSW		0x00034  /* Copper/Fiber switch control - RW */
+#define IGC_VET			0x00038  /* VLAN Ether Type - RW */
 #define IGC_I225_PHPM		0x00E14  /* I225 PHY Power Management */
 #define IGC_GPHY_VERSION	0x0001E  /* I225 gPHY Firmware Version */
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
