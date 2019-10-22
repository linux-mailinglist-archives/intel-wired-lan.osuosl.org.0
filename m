Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BCBE077D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2019 17:32:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 755BD227F7;
	Tue, 22 Oct 2019 15:32:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RoH2tWQVnpJM; Tue, 22 Oct 2019 15:32:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ECF502274E;
	Tue, 22 Oct 2019 15:32:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 649EB1BF5DB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2019 15:32:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 568DE857B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2019 15:32:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z0KlJs-tZW7h for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2019 15:32:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2725F84FA4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2019 15:32:23 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: bbeckett) with ESMTPSA id 8F26A28E66D
From: Robert Beckett <bob.beckett@collabora.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 22 Oct 2019 16:31:41 +0100
Message-Id: <20191022153155.9008-1-bob.beckett@collabora.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2] igb: dont drop packets if rx flow
 control is enabled
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
Cc: Robert Beckett <bob.beckett@collabora.com>, netdev@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If rx flow control has been enabled (via autoneg or forced), packets
should not be dropped due to rx descriptor ring exhaustion. Instead
pause frames should be used to apply back pressure. This only applies
if VFs are not in use.

Move SRRCTL setup to its own function for easy reuse and only set drop
enable bit if rx flow control is not enabled.

Since v1: always enable dropping of packets if VFs in use.

Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
---
 drivers/net/ethernet/intel/igb/igb.h         |  1 +
 drivers/net/ethernet/intel/igb/igb_ethtool.c |  8 ++++
 drivers/net/ethernet/intel/igb/igb_main.c    | 47 ++++++++++++++------
 3 files changed, 42 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
index ca54e268d157..49b5fa9d4783 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -661,6 +661,7 @@ void igb_configure_tx_ring(struct igb_adapter *, struct igb_ring *);
 void igb_configure_rx_ring(struct igb_adapter *, struct igb_ring *);
 void igb_setup_tctl(struct igb_adapter *);
 void igb_setup_rctl(struct igb_adapter *);
+void igb_setup_srrctl(struct igb_adapter *, struct igb_ring *);
 netdev_tx_t igb_xmit_frame_ring(struct sk_buff *, struct igb_ring *);
 void igb_alloc_rx_buffers(struct igb_ring *, u16);
 void igb_update_stats(struct igb_adapter *);
diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index 3182b059bf55..1107a1921b43 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -396,6 +396,7 @@ static int igb_set_pauseparam(struct net_device *netdev,
 	struct igb_adapter *adapter = netdev_priv(netdev);
 	struct e1000_hw *hw = &adapter->hw;
 	int retval = 0;
+	int i;
 
 	/* 100basefx does not support setting link flow control */
 	if (hw->dev_spec._82575.eth_flags.e100_base_fx)
@@ -428,6 +429,13 @@ static int igb_set_pauseparam(struct net_device *netdev,
 
 		retval = ((hw->phy.media_type == e1000_media_type_copper) ?
 			  igb_force_mac_fc(hw) : igb_setup_link(hw));
+
+		/* Make sure SRRCTL considers new fc settings for each ring */
+		for (i = 0; i < adapter->num_rx_queues; i++) {
+			struct igb_ring *ring = adapter->rx_ring[i];
+
+			igb_setup_srrctl(adapter, ring);
+		}
 	}
 
 	clear_bit(__IGB_RESETTING, &adapter->state);
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 105b0624081a..92c30aac0c28 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -4463,6 +4463,37 @@ static inline void igb_set_vmolr(struct igb_adapter *adapter,
 	wr32(E1000_VMOLR(vfn), vmolr);
 }
 
+/**
+ *  igb_setup_srrctl - configure the split and replication receive control
+ *  		       registers
+ *  @adapter: Board private structure
+ *  @ring: receive ring to be configured
+ **/
+void igb_setup_srrctl(struct igb_adapter *adapter, struct igb_ring *ring)
+{
+	struct e1000_hw *hw = &adapter->hw;
+	int reg_idx = ring->reg_idx;
+	u32 srrctl = 0;
+
+	srrctl = IGB_RX_HDR_LEN << E1000_SRRCTL_BSIZEHDRSIZE_SHIFT;
+	if (ring_uses_large_buffer(ring))
+		srrctl |= IGB_RXBUFFER_3072 >> E1000_SRRCTL_BSIZEPKT_SHIFT;
+	else
+		srrctl |= IGB_RXBUFFER_2048 >> E1000_SRRCTL_BSIZEPKT_SHIFT;
+	srrctl |= E1000_SRRCTL_DESCTYPE_ADV_ONEBUF;
+	if (hw->mac.type >= e1000_82580)
+		srrctl |= E1000_SRRCTL_TIMESTAMP;
+	/* Only set Drop Enable if VFs allocated, or we are supporting multiple
+	 * queues and rx flow control is disabled
+	 */
+	if (adapter->vfs_allocated_count ||
+	    (!(hw->fc.current_mode & e1000_fc_rx_pause) &&
+	     adapter->num_rx_queues > 1))
+		srrctl |= E1000_SRRCTL_DROP_EN;
+
+	wr32(E1000_SRRCTL(reg_idx), srrctl);
+}
+
 /**
  *  igb_configure_rx_ring - Configure a receive ring after Reset
  *  @adapter: board private structure
@@ -4477,7 +4508,7 @@ void igb_configure_rx_ring(struct igb_adapter *adapter,
 	union e1000_adv_rx_desc *rx_desc;
 	u64 rdba = ring->dma;
 	int reg_idx = ring->reg_idx;
-	u32 srrctl = 0, rxdctl = 0;
+	u32 rxdctl = 0;
 
 	/* disable the queue */
 	wr32(E1000_RXDCTL(reg_idx), 0);
@@ -4495,19 +4526,7 @@ void igb_configure_rx_ring(struct igb_adapter *adapter,
 	writel(0, ring->tail);
 
 	/* set descriptor configuration */
-	srrctl = IGB_RX_HDR_LEN << E1000_SRRCTL_BSIZEHDRSIZE_SHIFT;
-	if (ring_uses_large_buffer(ring))
-		srrctl |= IGB_RXBUFFER_3072 >> E1000_SRRCTL_BSIZEPKT_SHIFT;
-	else
-		srrctl |= IGB_RXBUFFER_2048 >> E1000_SRRCTL_BSIZEPKT_SHIFT;
-	srrctl |= E1000_SRRCTL_DESCTYPE_ADV_ONEBUF;
-	if (hw->mac.type >= e1000_82580)
-		srrctl |= E1000_SRRCTL_TIMESTAMP;
-	/* Only set Drop Enable if we are supporting multiple queues */
-	if (adapter->vfs_allocated_count || adapter->num_rx_queues > 1)
-		srrctl |= E1000_SRRCTL_DROP_EN;
-
-	wr32(E1000_SRRCTL(reg_idx), srrctl);
+	igb_setup_srrctl(adapter, ring);
 
 	/* set filtering for VMDQ pools */
 	igb_set_vmolr(adapter, reg_idx & 0x7, true);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
